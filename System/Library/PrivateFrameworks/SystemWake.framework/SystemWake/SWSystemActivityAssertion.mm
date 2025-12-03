@interface SWSystemActivityAssertion
- (BOOL)isActive;
- (NSString)description;
- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier configurator:(id)configurator;
- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier internalConfigurator:(id)configurator;
- (void)_checkIfCompleteForAction:(uint64_t)action;
- (void)acquireWithTimeout:(double)timeout handler:(id)handler;
- (void)callbackAcquisitionHandlerWithError:(uint64_t)error;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateWithReason:(uint64_t)reason;
- (void)setAcquireWaitsToAbortSleepImminent:(BOOL)imminent;
- (void)setAcquireWaitsToAbortSleepRequested:(BOOL)requested;
- (void)setSleepMonitor:(id)monitor;
- (void)setSystemActivityProvider:(id)provider;
@end

@implementation SWSystemActivityAssertion

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier"];
  v4 = [v3 appendUnsignedInteger:self->_lock_state withName:@"state"];
  v5 = [v3 appendBool:self->_acquireWaitsToAbortSleepRequested withName:@"waitsForAbortSleep" ifEqualTo:1];
  v6 = [v3 appendBool:self->_lock_acquisitionHandler != 0 withName:@"pendingAcquisition" ifEqualTo:1];
  v7 = [v3 appendUnsignedInt:self->_lock_assertionID withName:@"assertionID"];
  build = [v3 build];

  return build;
}

void __48__SWSystemActivityAssertion_initWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setAcquireWaitsToAbortSleepRequested:0];
  [v4 setAcquireWaitsToAbortSleepImminent:0];
  v2 = +[SWSystemSleepMonitor monitorUsingMainQueue];
  [v4 setSleepMonitor:v2];

  v3 = +[SWSystemActivityProvider sharedProvider];
  [v4 setSystemActivityProvider:v3];
}

- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier configurator:(id)configurator
{
  configuratorCopy = configurator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SWSystemActivityAssertion_initWithIdentifier_configurator___block_invoke;
  v10[3] = &unk_279D432E0;
  v11 = configuratorCopy;
  v7 = configuratorCopy;
  v8 = [(SWSystemActivityAssertion *)self initWithIdentifier:identifier internalConfigurator:v10];

  return v8;
}

void __61__SWSystemActivityAssertion_initWithIdentifier_configurator___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  v4 = +[SWSystemSleepMonitor monitorUsingMainQueue];
  [v6 setSleepMonitor:v4];

  v5 = +[SWSystemActivityProvider sharedProvider];
  [v6 setSystemActivityProvider:v5];
}

- (SWSystemActivityAssertion)initWithIdentifier:(id)identifier internalConfigurator:(id)configurator
{
  identifierCopy = identifier;
  configuratorCopy = configurator;
  v13.receiver = self;
  v13.super_class = SWSystemActivityAssertion;
  v9 = [(SWSystemActivityAssertion *)&v13 init];
  v10 = v9;
  if (v9)
  {
    *&v9->_lock_assertionID = 0;
    v9->_lock_state = 0;
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = configuratorCopy;
    v10->_initializing = 1;
    v11[2](v11, v10);
    v10->_initializing = 0;
  }

  return v10;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_clientDidInvalidate)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"SWSystemActivityAssertion.m";
      v19 = 1024;
      v20 = 96;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65DD74);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10.receiver = self;
  v10.super_class = SWSystemActivityAssertion;
  [(SWSystemActivityAssertion *)&v10 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state == 4;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)acquireWithTimeout:(double)timeout handler:(id)handler
{
  handlerCopy = handler;
  v7 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SWSystemActivityAssertion_acquireWithTimeout_handler___block_invoke;
  block[3] = &unk_279D43308;
  timeoutCopy = timeout;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

void __56__SWSystemActivityAssertion_acquireWithTimeout_handler___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_30;
  }

  v4 = SWLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v46 = *(v2 + 8);
    *buf = 134218498;
    *&buf[4] = v2;
    *&buf[12] = 2114;
    *&buf[14] = v46;
    *&buf[22] = 2048;
    *v90 = v1;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) will acquire with timeout:%lf", buf, 0x20u);
  }

  os_unfair_lock_lock((v2 + 44));
  *(v2 + 72) = v1;
  v5 = [v3 copy];
  v6 = *(v2 + 48);
  *(v2 + 48) = v5;

  *(v2 + 83) = [*(v2 + 24) isSleepImminent];
  *(v2 + 56) = [*(v2 + 32) getMachContinuousKernelWakeTime];
  if (!*(v2 + 64))
  {
    *(v2 + 64) = 1;
    os_unfair_lock_unlock((v2 + 44));
    v15 = SWLogPower();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v62 = *(v2 + 8);
      *buf = 134218242;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v62;
      _os_log_debug_impl(&dword_26C657000, v15, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) will declare system activity", buf, 0x16u);
    }

    os_unfair_lock_assert_not_owner((v2 + 44));
    v16 = [*(v2 + 32) declareSystemActivityWithName:*(v2 + 8)];
    if (!v16)
    {
      v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion - provider returned NULL declare result id:%@", v2, *(v2 + 8)];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v84 = NSStringFromSelector(sel__queue_declareSystemActivity);
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        *buf = 138544642;
        *&buf[4] = v84;
        *&buf[12] = 2114;
        *&buf[14] = v86;
        *&buf[22] = 2048;
        *v90 = v2;
        *&v90[8] = 2114;
        *&v90[10] = @"SWSystemActivityAssertion.m";
        *&v90[18] = 1024;
        *&v90[20] = 173;
        *&v90[24] = 2114;
        v91 = v83;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v87 = v83;
      [v83 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C65EB08);
    }

    v17 = SWLogPower();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(v2 + 8);
      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v63;
      *&buf[22] = 2112;
      *v90 = v16;
      _os_log_debug_impl(&dword_26C657000, v17, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) will system activity result:%@", buf, 0x20u);
    }

    os_unfair_lock_lock((v2 + 44));
    v18 = [v16 systemState];
    v19 = [*(v2 + 24) isSleepImminent];
    v20 = [*(v2 + 24) hasSleepBeenRequested];
    if (v20)
    {
      v21 = *(v2 + 81);
      if (!v19)
      {
LABEL_16:
        v22 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v21 = 0;
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    v22 = *(v2 + 82);
LABEL_24:
    v27 = (v18 == 1) | v21 | v22;
    *(v2 + 84) = (v18 == 1) | (v21 | v22) & 1;
    if ([v16 returnValue])
    {
      v28 = SWLogPower();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v68 = [v16 returnValue];
        v69 = *(v2 + 8);
        v70 = *(v2 + 64);
        *buf = 134218754;
        *&buf[4] = v2;
        *&buf[12] = 2048;
        *&buf[14] = v68;
        *&buf[22] = 2114;
        *v90 = v69;
        *&v90[8] = 1024;
        *&v90[10] = v70;
        _os_log_fault_impl(&dword_26C657000, v28, OS_LOG_TYPE_FAULT, "%p failed to start system activity (%ld) for id:%{public}@ state:%u", buf, 0x26u);
      }

      v29 = MEMORY[0x277CCA9B8];
      location = *MEMORY[0x277CCA450];
      v30 = MEMORY[0x277CCACA8];
      v31 = [v16 returnValue];
      v32 = *(v2 + 8);
      v33 = [v30 stringWithFormat:@"%p failed to start system activity (%ld) id:%@ state:%u", v2, v31, v32, *(v2 + 64)];;
      *buf = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&location count:1];
      v35 = [v29 errorWithDomain:@"BSSystemActivityDomain" code:4 userInfo:v34];

      *(v2 + 64) = 5;
      os_unfair_lock_unlock((v2 + 44));
LABEL_28:
      [(SWSystemActivityAssertion *)v2 callbackAcquisitionHandlerWithError:v35];
LABEL_29:

      goto LABEL_30;
    }

    v37 = *(v2 + 64);
    if (v37 != 1)
    {
      if (v37 == 5)
      {
        v53 = SWLogPower();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = *(v2 + 8);
          v55 = [v16 assertionID];
          v56 = *(v2 + 16);
          *buf = 134218754;
          *&buf[4] = v2;
          *&buf[12] = 2114;
          *&buf[14] = v54;
          *&buf[22] = 2048;
          *v90 = v55;
          *&v90[8] = 2114;
          *&v90[10] = v56;
          _os_log_impl(&dword_26C657000, v53, OS_LOG_TYPE_INFO, "%p system activity assertion invalidated while waiting on system acquisition (will immediately release); id:%{public}@ assertionID:%lu timer:%{public}@", buf, 0x2Au);
        }

        v35 = 0;
        v52 = 0;
      }

      else
      {
        if (v37 == 3)
        {
          goto LABEL_34;
        }

        v57 = SWLogPower();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          v79 = *(v2 + 64);
          v80 = *(v2 + 40);
          v81 = *(v2 + 8);
          v82 = *(v2 + 16);
          *buf = 134219010;
          *&buf[4] = v2;
          *&buf[12] = 2114;
          *&buf[14] = v81;
          *&buf[22] = 1024;
          *v90 = v79;
          *&v90[4] = 2048;
          *&v90[6] = v80;
          *&v90[14] = 2114;
          *&v90[16] = v82;
          _os_log_fault_impl(&dword_26C657000, v57, OS_LOG_TYPE_FAULT, "%p system activity assertion state mutated unexpectedly (will immediately release); id:%{public}@ state:%u assertionID:%lu timer:%{public}@", buf, 0x30u);
        }

        v58 = MEMORY[0x277CCA9B8];
        location = *MEMORY[0x277CCA450];
        v59 = *(v2 + 8);
        v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion state mutated unexpectedly id:%@ state:%u", v2, v59, *(v2 + 64)];;
        *buf = v60;
        v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&location count:1];
        v35 = [v58 errorWithDomain:@"BSSystemActivityDomain" code:3 userInfo:v61];

        *(v2 + 64) = 5;
        v52 = 1;
      }

      [*(v2 + 32) releaseAssertionID:{objc_msgSend(v16, "assertionID")}];
LABEL_61:
      os_unfair_lock_unlock((v2 + 44));
      if (!v52)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_34:
    *(v2 + 40) = [v16 assertionID];
    [*(v2 + 24) registerActiveSystemActivity:v2];
    if ((v27 & 1) == 0 || *(v2 + 64) != 1)
    {
      *(v2 + 64) = 4;
      v47 = SWLogPower();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = *(v2 + 8);
        v49 = [v16 systemState];
        v50 = [v16 assertionID];
        v51 = *(v2 + 83);
        *buf = 134219522;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v48;
        *&buf[22] = 1024;
        *v90 = v49;
        *&v90[4] = 2048;
        *&v90[6] = v50;
        *&v90[14] = 1024;
        *&v90[16] = v51;
        *&v90[20] = 1024;
        *&v90[22] = v19;
        LOWORD(v91) = 1024;
        *(&v91 + 2) = v20;
        _os_log_impl(&dword_26C657000, v47, OS_LOG_TYPE_INFO, "%p created system activity assertion; id:%{public}@ systemState:%u assertionID:%lu wasSleepImminent:%{BOOL}u isSleepImminent:%{BOOL}u hasSleepBeenRequested:%{BOOL}u", buf, 0x38u);
      }

      v52 = 1;
      goto LABEL_57;
    }

    v38 = SWLogPower();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v18 == 1)
    {
      if (v39)
      {
        v40 = *(v2 + 8);
        v41 = [v16 returnValue];
        v42 = *(v2 + 83);
        *buf = 134219010;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        *&buf[22] = 2048;
        *v90 = v41;
        *&v90[8] = 1024;
        *&v90[10] = v42;
        *&v90[14] = 1024;
        *&v90[16] = v19;
        v43 = "%p created system activity assertion too late, will wait for next system wake, id:%{public}@ err:%ld wasSleepImminent:%{BOOL}u isSleepImminent:%{BOOL}u";
        v44 = v38;
        v45 = 44;
LABEL_55:
        _os_log_impl(&dword_26C657000, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
      }

LABEL_56:

      v52 = 0;
      *(v2 + 64) = 2;
LABEL_57:
      if (*(v2 + 72) > 0.0)
      {
        [*(v2 + 16) invalidate];
        v75 = [*(v2 + 32) createTimerWithIdentifier:*(v2 + 8)];
        v76 = *(v2 + 16);
        *(v2 + 16) = v75;

        objc_initWeak(&location, v2);
        v77 = *(v2 + 16);
        v78 = *(v2 + 72);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __57__SWSystemActivityAssertion__queue_declareSystemActivity__block_invoke;
        *v90 = &unk_279D43330;
        objc_copyWeak(&v90[8], &location);
        [v77 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:buf queue:v78 handler:1.0];
        objc_destroyWeak(&v90[8]);
        objc_destroyWeak(&location);
        os_unfair_lock_unlock((v2 + 44));
        v35 = 0;
        if ((v52 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v35 = 0;
      goto LABEL_61;
    }

    if (v22)
    {
      if (!v39)
      {
        goto LABEL_56;
      }

      v71 = *(v2 + 8);
      v72 = [v16 returnValue];
      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v71;
      *&buf[22] = 2048;
      *v90 = v72;
      v43 = "%p created system activity assertion after prepareForSleep, will wait for next system wake, id:%{public}@ err:%ld";
    }

    else
    {
      if (!v39)
      {
        goto LABEL_56;
      }

      v73 = *(v2 + 8);
      v74 = [v16 returnValue];
      *buf = 134218498;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v73;
      *&buf[22] = 2048;
      *v90 = v74;
      v43 = "%p created system activity assertion after sleepRequested, will wait for next system wake, id:%{public}@ err:%ld";
    }

    v44 = v38;
    v45 = 32;
    goto LABEL_55;
  }

  os_unfair_lock_unlock((v2 + 44));
  os_unfair_lock_lock((v2 + 44));
  v7 = *(v2 + 64);
  v8 = SWLogPower();
  v9 = v8;
  if (v7 == 5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(v2 + 64);
      v11 = *(v2 + 40);
      v12 = *(v2 + 8);
      v13 = *(v2 + 16);
      *buf = 134219010;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 1024;
      *v90 = v10;
      *&v90[4] = 2048;
      *&v90[6] = v11;
      *&v90[14] = 2114;
      *&v90[16] = v13;
      _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_INFO, "%p system activity assertion invalidated before declaration; id:%{public}@ state:%u assertionID:%lu timer:%{public}@", buf, 0x30u);
    }

    os_unfair_lock_unlock((v2 + 44));
    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v64 = *(v2 + 64);
      v65 = *(v2 + 40);
      v66 = *(v2 + 8);
      v67 = *(v2 + 16);
      *buf = 134219010;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v66;
      *&buf[22] = 1024;
      *v90 = v64;
      *&v90[4] = 2048;
      *&v90[6] = v65;
      *&v90[14] = 2114;
      *&v90[16] = v67;
      _os_log_fault_impl(&dword_26C657000, v9, OS_LOG_TYPE_FAULT, "%p system activity assertion already acquired; id:%{public}@ state:%u assertionID:%lu timer:%{public}@", buf, 0x30u);
    }

    v23 = MEMORY[0x277CCA9B8];
    location = *MEMORY[0x277CCA450];
    v24 = *(v2 + 8);
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p twice tried to acquire system activity assertion id:%@ state:%u", v2, v24, *(v2 + 64)];;
    *buf = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&location count:1];
    v14 = [v23 errorWithDomain:@"BSSystemActivityDomain" code:2 userInfo:v26];

    os_unfair_lock_unlock((v2 + 44));
    if (v14)
    {
      [(SWSystemActivityAssertion *)v2 callbackAcquisitionHandlerWithError:v14];
    }
  }

LABEL_30:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)callbackAcquisitionHandlerWithError:(uint64_t)error
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SWLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(error + 8);
    v15 = 134218498;
    errorCopy = error;
    v17 = 2114;
    v18 = v14;
    v19 = 2114;
    v20 = v3;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p system activity assertion (%{public}@) callback with error:%{public}@", &v15, 0x20u);
  }

  os_unfair_lock_lock((error + 44));
  v5 = MEMORY[0x26D6A63C0](*(error + 48));
  v6 = *(error + 48);
  *(error + 48) = 0;

  v7 = *(error + 40);
  v8 = *(error + 83);
  v9 = *(error + 84);
  getMachContinuousKernelWakeTime = [*(error + 32) getMachContinuousKernelWakeTime];
  v11 = *(error + 56);
  os_unfair_lock_unlock((error + 44));
  if (v5)
  {
    v12 = [[SWSystemActivityAcquisitionDetails alloc] initWithAfterPendingSleepWasAlreadyInitiated:v8 afterFailingToRevertPendingSleep:v9 afterSleepOfNonZeroDuration:v11 != getMachContinuousKernelWakeTime];
    (v5)[2](v5, v7 != 0, v3, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__SWSystemActivityAssertion__queue_declareSystemActivity__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = SWLogPower();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = WeakRetained[1];
      *buf = 134218242;
      v6 = WeakRetained;
      v7 = 2114;
      v8 = v2;
      _os_log_impl(&dword_26C657000, v1, OS_LOG_TYPE_DEFAULT, "%p system activity assertion timed out: %{public}@", buf, 0x16u);
    }

    [(SWSystemActivityAssertion *)WeakRetained invalidateWithReason:?];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_clientDidInvalidate = 1;
  os_unfair_lock_unlock(&self->_lock);

  [(SWSystemActivityAssertion *)self invalidateWithReason:?];
}

- (void)invalidateWithReason:(uint64_t)reason
{
  v52 = *MEMORY[0x277D85DE8];
  if (!reason)
  {
    goto LABEL_20;
  }

  os_unfair_lock_lock((reason + 44));
  [*(reason + 16) invalidate];
  v4 = *(reason + 16);
  *(reason + 16) = 0;

  v5 = *(reason + 48);
  v6 = SWLogPower();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(reason + 8);
    v8 = *(reason + 64);
    *buf = 134218754;
    reasonCopy2 = reason;
    v43 = 2114;
    v44 = v7;
    v45 = 1024;
    *v46 = v8;
    *&v46[4] = 1024;
    *&v46[6] = v5 != 0;
    _os_log_impl(&dword_26C657000, v6, OS_LOG_TYPE_INFO, "%p system activity assertion invalidated; id:%{public}@ state:%u hasUncalledAcquisitionHandler:%{BOOL}u", buf, 0x22u);
  }

  if (*(reason + 64) == 5)
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(reason + 8);
      *buf = 134218242;
      reasonCopy2 = reason;
      v43 = 2114;
      v44 = v23;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p system activity assertion already invalid; id:%{public}@", buf, 0x16u);
    }

    v10 = *(reason + 40);
    if (v10)
    {
      v24 = *(reason + 8);
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion marked invalid but has non-null asssertionID:%u id:%@ state:%u", reason, v10, v24, *(reason + 64)];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel_invalidateWithReason_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        reasonCopy2 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2048;
        *v46 = reason;
        *&v46[8] = 2114;
        v47 = @"SWSystemActivityAssertion.m";
        v48 = 1024;
        v49 = 289;
        v50 = 2114;
        v51 = v25;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C65F384);
    }

    if (v5)
    {
      v30 = *(reason + 8);
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion marked invalid but has hasUncalledAcquisitionHandler id:%@ state:%u", reason, v30, *(reason + 64)];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel_invalidateWithReason_);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        reasonCopy2 = v32;
        v43 = 2114;
        v44 = v34;
        v45 = 2048;
        *v46 = reason;
        *&v46[8] = 2114;
        v47 = @"SWSystemActivityAssertion.m";
        v48 = 1024;
        v49 = 290;
        v50 = 2114;
        v51 = v31;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v35 = v31;
      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C65F48CLL);
    }

    *(reason + 64) = 5;
    v11 = *(reason + 32);
    *(reason + 40) = 0;
    goto LABEL_12;
  }

  v12 = *(reason + 40);
  *(reason + 64) = 5;
  v11 = *(reason + 32);
  *(reason + 40) = 0;
  if (!v12)
  {
LABEL_12:
    v14 = 1;
    goto LABEL_13;
  }

  v13 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SWSystemActivityAssertion_invalidateWithReason___block_invoke;
  block[3] = &unk_279D43358;
  v11 = v11;
  v37 = v11;
  v38 = v12;
  dispatch_async(v13, block);

  v14 = 0;
LABEL_13:
  v15 = *(reason + 24);
  [v15 removeObserver:reason];
  v16 = *(reason + 24);
  *(reason + 24) = 0;

  os_unfair_lock_unlock((reason + 44));
  if ((v14 & 1) == 0)
  {
    [v15 unregisterInactiveSystemActivity:reason];
  }

  if (v5)
  {
    if (a2 == 1)
    {
      os_unfair_lock_lock((reason + 44));
      v17 = *(reason + 48);
      *(reason + 48) = 0;

      os_unfair_lock_unlock((reason + 44));
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system activity assertion timed out before acquisition id:%@", reason, *(reason + 8)];;
      v40 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v21 = [v18 errorWithDomain:@"BSSystemActivityDomain" code:1 userInfo:v20];

      [(SWSystemActivityAssertion *)reason callbackAcquisitionHandlerWithError:v21];
    }
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setAcquireWaitsToAbortSleepRequested:(BOOL)requested
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_initializing)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 stringWithFormat:@"%@ called after initialization", v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"SWSystemActivityAssertion.m";
      v21 = 1024;
      v22 = 351;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65F694);
  }

  self->_acquireWaitsToAbortSleepRequested = requested;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAcquireWaitsToAbortSleepImminent:(BOOL)imminent
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_initializing)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 stringWithFormat:@"%@ called after initialization", v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"SWSystemActivityAssertion.m";
      v21 = 1024;
      v22 = 356;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65F84CLL);
  }

  self->_acquireWaitsToAbortSleepImminent = imminent;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setSleepMonitor:(id)monitor
{
  v27 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  if (!self->_initializing)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = NSStringFromSelector(a2);
    v9 = [v7 stringWithFormat:@"%@ called after initialization", v8];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"SWSystemActivityAssertion.m";
      v23 = 1024;
      v24 = 361;
      v25 = 2114;
      v26 = v9;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65FA38);
  }

  objc_storeStrong(&self->_sleepMonitor, monitor);
  [monitorCopy addObserver:self];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSystemActivityProvider:(id)provider
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (!self->_initializing)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 stringWithFormat:@"%@ called after initialization", v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"SWSystemActivityAssertion.m";
      v23 = 1024;
      v24 = 367;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65FC28);
  }

  provider = self->_provider;
  self->_provider = providerCopy;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfCompleteForAction:(uint64_t)action
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!action)
  {
    goto LABEL_14;
  }

  os_unfair_lock_lock((action + 44));
  v4 = *(action + 64);
  if (v4 == 1)
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(action + 40);
      v13 = *(action + 8);
      v14 = *(action + 16);
      v19 = 134219010;
      actionCopy3 = action;
      v21 = 2114;
      *v22 = v3;
      *&v22[8] = 2114;
      *&v22[10] = v13;
      *&v22[18] = 2048;
      *&v22[20] = v12;
      *&v22[28] = 2114;
      *&v22[30] = v14;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p system activity assertion woke while still acquiring, waiting for acquisition to complete (%{public}@); id:%{public}@ assertionID:%lu timer:%{public}@", &v19, 0x34u);
    }

    *(action + 64) = 3;
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    v10 = SWLogPower();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(action + 64);
      v16 = *(action + 40);
      v17 = *(action + 8);
      v18 = *(action + 16);
      v19 = 134219266;
      actionCopy3 = action;
      v21 = 1024;
      *v22 = v15;
      *&v22[4] = 2114;
      *&v22[6] = v3;
      *&v22[14] = 2114;
      *&v22[16] = v17;
      *&v22[24] = 2048;
      *&v22[26] = v16;
      *&v22[34] = 2114;
      *&v22[36] = v18;
      _os_log_debug_impl(&dword_26C657000, v10, OS_LOG_TYPE_DEBUG, "%p system activity assertion not complete, state:%u (%{public}@); id:%{public}@ assertionID:%lu timer:%{public}@", &v19, 0x3Au);
    }

LABEL_13:
    os_unfair_lock_unlock((action + 44));
    goto LABEL_14;
  }

  *(action + 64) = 4;
  v5 = SWLogPower();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(action + 40);
    v7 = *(action + 8);
    v8 = *(action + 16);
    v19 = 134219010;
    actionCopy3 = action;
    v21 = 2114;
    *v22 = v3;
    *&v22[8] = 2114;
    *&v22[10] = v7;
    *&v22[18] = 2048;
    *&v22[20] = v6;
    *&v22[28] = 2114;
    *&v22[30] = v8;
    _os_log_impl(&dword_26C657000, v5, OS_LOG_TYPE_INFO, "%p system activity assertion now valid (%{public}@); id:%{public}@ assertionID:%lu timer:%{public}@", &v19, 0x34u);
  }

  os_unfair_lock_unlock((action + 44));
  [(SWSystemActivityAssertion *)action callbackAcquisitionHandlerWithError:?];
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

@end