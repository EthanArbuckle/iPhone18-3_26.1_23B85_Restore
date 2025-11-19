@interface RBProcess
+ (id)processStateApplicationQueue;
+ (void)_runOnDiagnosticQueue:(uint64_t)a1;
- (BOOL)_sendSignal:(int)a3;
- (BOOL)isContainerized;
- (BOOL)isTestApp;
- (BOOL)terminateWithContext:(id)a3;
- (RBJetsamProperties)memoryLimits;
- (RBProcess)init;
- (RBSProcessExitContext)lastExitContext;
- (double)processStartTime;
- (id)_allowedLockedFilePaths;
- (id)_initWithInstance:(void *)a3 auditToken:(void *)a4 bundleProperties:(void *)a5 jetsamProperties:(void *)a6 initialState:(void *)a7 hostProcess:(void *)a8 properties:(char)a9 systemPreventsIdleSleep:(char)a10 cache:;
- (id)_lock_lockedFilePathsIgnoring:(uint64_t)a1;
- (id)createRBSTarget;
- (uint64_t)_generateStackshotWithDescription:(int)a3 domain:(uint64_t)a4 code:(void *)a5 additionalPayload:;
- (uint64_t)_generateTailspin;
- (uint64_t)_lock_terminateWithContext:(uint64_t)a1;
- (uint64_t)_memoryStatusControl:(uint64_t)a1 flags:;
- (void)_applyJetsamLenientModeState:(uint64_t)a1;
- (void)_applyState:(id)a3;
- (void)_generateTailspin;
- (void)_lock_applyCPULimits;
- (void)_lock_applyCarPlayMode;
- (void)_lock_applyCurrentStateIfPossible;
- (void)_lock_applyGPU;
- (void)_lock_applyJetsamLenientMode;
- (void)_lock_applyJetsamPriority;
- (void)_lock_applyMemoryLimits;
- (void)_lock_applyRole;
- (void)_lock_applySuspendState;
- (void)_lock_disableCPULimits;
- (void)_lock_logVisibility;
- (void)_lock_restoreCPULimitDefaults;
- (void)_lock_resume;
- (void)_lock_resumeCPUMonitoring;
- (void)_lock_setCPULimits:(uint64_t)a1 violationPolicy:(unsigned int *)a2;
- (void)_lock_shutdownSocketsAndLog:(uint64_t)a1;
- (void)_lock_suspend;
- (void)_setMemoryStatusFlags:(uint64_t)a1;
- (void)_systemPreventIdleSleepStateDidChange:(BOOL)a3;
- (void)collectDiagnostic:(unint64_t)a3 description:(id)a4 domain:(unsigned int)a5 code:(unint64_t)a6 additionalPayload:(id)a7 completion:(id)a8;
- (void)invalidate;
- (void)invokeHandlerOnProcessDeath:(id)a3 onQueue:(id)a4;
- (void)memoryLimits;
- (void)processStartTime;
- (void)setAuditToken:(id)a3;
- (void)setLastExitContext:(id)a3;
- (void)setLaunchAssertionIdentifier:(id)a3;
- (void)setTerminating:(BOOL)a3;
@end

@implementation RBProcess

- (BOOL)isTestApp
{
  isTestApp = self->_isTestApp;
  if (!isTestApp)
  {
    if (os_variant_has_internal_content())
    {
      [(RBProcess *)self rbs_pid];
      v4 = RBSExecutablePathForPID();
      if ([v4 hasPrefix:@"/AppleInternal/Tests/RunningBoard/"])
      {
        v5 = 1;
      }

      else
      {
        v5 = -1;
      }

      self->_isTestApp = v5;

      isTestApp = self->_isTestApp;
    }

    else
    {
      isTestApp = -1;
      self->_isTestApp = -1;
    }
  }

  return isTestApp == 1;
}

- (void)_lock_applyRole
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_20(a1);
  if ((v3 & 2) == 0 && ([*(v1 + 64) forceRoleManage] & 1) == 0)
  {
    v30 = rbs_process_log();
    if (!OUTLINED_FUNCTION_21(v30))
    {
LABEL_24:

      goto LABEL_25;
    }

    v31 = *(v1 + 32);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4_1();
LABEL_19:
    _os_log_impl(v32, v33, v34, v35, v36, v37);
    goto LABEL_24;
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    v2 = [v4 role];
  }

  else
  {
    v2 = 1;
  }

  v5 = [*(v1 + 64) role];
  v6 = v5;
  if (*(v1 + 56) && v2 == v5)
  {
    goto LABEL_25;
  }

  v7 = RBSDarwinRoleFromRBSRole();
  if (!setpriority(6, *(v1 + 8), v7))
  {
    v38 = rbs_ttl_log();
    if (OUTLINED_FUNCTION_21(v38))
    {
      v39 = *(v1 + 32);
      v40 = NSStringFromRBSRole();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    }

    goto LABEL_24;
  }

  v8 = __error();
  OUTLINED_FUNCTION_11(v8);
  if (v9)
  {
    goto LABEL_25;
  }

  v10 = rbs_process_log();
  if (OUTLINED_FUNCTION_21(v10))
  {
    v11 = *(v1 + 32);
    v12 = *__error();
    v13 = NSStringFromRBSRole();
    v14 = __error();
    strerror(*v14);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0x26u);
  }

  if (!setpriority(4, *(v1 + 8), (v6 < 3) << 12))
  {
    v46 = rbs_ttl_log();
    if (!OUTLINED_FUNCTION_21(v46))
    {
      goto LABEL_24;
    }

    v47 = *(v1 + 32);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_5_0();
    v37 = 22;
    goto LABEL_19;
  }

  v20 = __error();
  OUTLINED_FUNCTION_11(v20);
  if (!v9)
  {
    v21 = rbs_process_log();
    if (OUTLINED_FUNCTION_26(v21))
    {
      v22 = *(v1 + 32);
      v23 = *__error();
      v24 = __error();
      strerror(*v24);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10();
      _os_log_error_impl(v25, v26, v27, v28, v29, 0x26u);
    }

    goto LABEL_24;
  }

LABEL_25:
  v48 = *MEMORY[0x277D85DE8];
}

- (void)_lock_applyGPU
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_20(a1);
  if ((v3 & 4) == 0)
  {
    v4 = rbs_process_log();
    if (OUTLINED_FUNCTION_21(v4))
    {
      v5 = *(v1 + 32);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_4_1();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_8;
  }

  v12 = [*(v1 + 64) gpuRole];
  v13 = *(v1 + 56);
  if (v13)
  {
    if ([v13 gpuRole] == v12)
    {
LABEL_8:
      v14 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v16 = +[RBXNUWrapper sharedWrapper];
  [v16 setGPURole:v12 forPid:*(v1 + 8)];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_lock_applyCurrentStateIfPossible
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 48));
    if (*(a1 + 136) == 1)
    {
      v2 = rbs_process_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        _os_log_debug_impl(&dword_262485000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ ignoring process state change because process is terminating", v20, 0xCu);
      }
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 == *(a1 + 64))
      {
        goto LABEL_7;
      }

      if (([v3 isEqualToProcessStateIgnoringInheritances:?] & 1) == 0)
      {
        v6 = rbs_sp_state_log();
        v7 = os_signpost_id_generate(v6);

        v8 = rbs_sp_assertion_log();
        v9 = v8;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          v10 = *(a1 + 32);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_18();
          _os_signpost_emit_with_name_impl(v11, v12, v13, v7, v14, v15, v16, 0xCu);
        }

        [(RBProcess *)a1 _lock_applyJetsamPriority];
        [(RBProcess *)a1 _lock_applySuspendState];
        [(RBProcess *)a1 _lock_applyRole];
        [(RBProcess *)a1 _lock_applyJetsamLenientMode];
        [(RBProcess *)a1 _lock_applyGPU];
        [(RBProcess *)a1 _lock_applyCPULimits];
        [(RBProcess *)a1 _lock_applyMemoryLimits];
        [(RBProcess *)a1 _lock_applyCarPlayMode];
        v17 = rbs_sp_assertion_log();
        v18 = v17;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *v20 = 0;
          _os_signpost_emit_with_name_impl(&dword_262485000, v18, OS_SIGNPOST_INTERVAL_END, v7, "StateApplication", "", v20, 2u);
        }
      }

      [(RBProcess *)a1 _lock_logVisibility];
      v19 = *(a1 + 64);
      v2 = *(a1 + 56);
      *(a1 + 56) = v19;
    }
  }

LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)processStateApplicationQueue
{
  if (processStateApplicationQueue_onceToken != -1)
  {
    +[RBProcess processStateApplicationQueue];
  }

  v3 = processStateApplicationQueue_queue;

  return v3;
}

- (void)_lock_resume
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_20(a1);
    if ((v3 & 1) == 0)
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v4))
      {
        v5 = *(v1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_1();
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }

      goto LABEL_20;
    }

    v12 = rbs_ttl_log();
    if (OUTLINED_FUNCTION_21(v12))
    {
      v13 = *(v1 + 32);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_1();
      _os_log_impl(v14, v15, v16, v17, v18, v19);
    }

    RBPowerlogEvent(4, *(v1 + 16), 0xFFFFFFFFLL, *(v1 + 8));
    if (MEMORY[0x2822399B8] && (*(v1 + 77) & 1) != 0 && MEMORY[0x266729FD0](*(v1 + 8)) == 5)
    {
      v20 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v20))
      {
        v38 = *(v1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_10();
        _os_log_error_impl(v39, v40, v41, v42, v43, 0xCu);
      }
    }

    *(v1 + 137) = 0;
    v21 = *(v1 + 8);
    if (pid_resume())
    {
      v22 = __error();
      OUTLINED_FUNCTION_11(v22);
      if (!v23)
      {
        if (!*(v1 + 56))
        {
          if (*__error() == 1)
          {
            goto LABEL_21;
          }

          v28 = rbs_process_log();
          if (!OUTLINED_FUNCTION_26(v28))
          {
            goto LABEL_20;
          }

          goto LABEL_24;
        }

        v24 = rbs_process_log();
        if (OUTLINED_FUNCTION_26(v24))
        {
LABEL_24:
          v29 = *(v1 + 32);
          v30 = *__error();
          v31 = __error();
          strerror(*v31);
          OUTLINED_FUNCTION_1_6();
          OUTLINED_FUNCTION_10();
          v37 = 28;
LABEL_26:
          _os_log_error_impl(v32, v33, v34, v35, v36, v37);
        }

LABEL_20:
      }
    }

    else
    {
      v25 = *(v1 + 8);
      if (notify_resume_pid())
      {
        v26 = rbs_process_log();
        if (OUTLINED_FUNCTION_26(v26))
        {
          v44 = *(v1 + 32);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10();
          v37 = 18;
          goto LABEL_26;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_lock_applyJetsamPriority
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((*(a1 + 109) & 8) == 0)
    {
      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v3))
      {
        v4 = *(a1 + 32);
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_8();
LABEL_13:
        _os_log_impl(v5, v6, v7, v8, v9, v10);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v11 = [*(a1 + 64) explicitJetsamBand];
    if (!*(a1 + 56) || *(a1 + 72) != v11)
    {
      *(a1 + 72) = v11;
      v24 = v11;
      v12 = *(a1 + 8);
      if (!memorystatus_control())
      {
        v19 = rbs_process_log();
        if (OUTLINED_FUNCTION_23(v19))
        {
          v20 = *(a1 + 32);
          OUTLINED_FUNCTION_33();
          v27 = 1024;
          v28 = v21;
          v29 = 2048;
          v30 = v22;
          v31 = 1024;
          LODWORD(v32) = 1;
          v5 = &dword_262485000;
          v8 = "%{public}@ Set jetsam priority to %d [%#llx] flag[%d]";
          v9 = buf;
          v6 = v1;
          v7 = OS_LOG_TYPE_DEFAULT;
          v10 = 34;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      v13 = __error();
      OUTLINED_FUNCTION_11(v13);
      if (!v14)
      {
        v15 = rbs_process_log();
        if (OUTLINED_FUNCTION_27(v15))
        {
          v16 = *(a1 + 32);
          v17 = __error();
          v18 = strerror(*v17);
          *buf = 138544130;
          v26 = v16;
          v27 = 1024;
          v28 = v24;
          v29 = 2048;
          v30 = 0;
          v31 = 2080;
          v32 = v18;
          _os_log_error_impl(&dword_262485000, v1, OS_LOG_TYPE_ERROR, "%{public}@ Error setting jetsam priority to %d [%#llx]: %s", buf, 0x26u);
        }

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_lock_applySuspendState
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_11:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  OUTLINED_FUNCTION_20(a1);
  if ((v3 & 1) == 0)
  {
    v4 = rbs_process_log();
    if (OUTLINED_FUNCTION_21(v4))
    {
      v5 = *(v1 + 32);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_1();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_11;
  }

  v12 = *(v1 + 56);
  if (v12)
  {
    v13 = [v12 preventSuspend];
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(v1 + 64) preventSuspend];
  if (*(v1 + 56) && v13 == v14)
  {
    goto LABEL_11;
  }

  if (v14)
  {
    v16 = *MEMORY[0x277D85DE8];

    [(RBProcess *)v1 _lock_resume];
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    [(RBProcess *)v1 _lock_suspend];
  }
}

- (RBJetsamProperties)memoryLimits
{
  os_unfair_lock_lock(&self->_dataLock);
  if (!self->_memoryLimits)
  {
    if ((self->_manageFlags & 8) != 0)
    {
      v5 = rbs_assertion_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(RBProcess *)self memoryLimits];
      }
    }

    else
    {
      v3 = objc_opt_new();
      memoryLimits = self->_memoryLimits;
      self->_memoryLimits = v3;
    }
  }

  os_unfair_lock_unlock(&self->_dataLock);
  v6 = self->_memoryLimits;

  return v6;
}

- (void)_lock_applyJetsamLenientMode
{
  if (a1)
  {
    v2 = [*(a1 + 56) effectiveJetsamLenientMode];
    v3 = [*(a1 + 64) effectiveJetsamLenientMode];
    if (v2 != v3)
    {

      [(RBProcess *)a1 _applyJetsamLenientModeState:v3];
    }
  }
}

- (void)_lock_applyCPULimits
{
  v26[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_20(a1);
    if ((v2 & 0x10) != 0)
    {
      v5 = [*(v1 + 56) effectiveMaxCPUPercentage];
      v6 = [*(v1 + 56) effectiveMaxCPUDuration];
      v7 = [*(v1 + 56) effectiveMinCPUPercentage];
      v8 = [*(v1 + 56) effectiveMinCPUDuration];
      if (v8 <= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      if (v7 <= v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = v7;
      }

      v11 = [*(v1 + 64) effectiveMaxCPUPercentage];
      v12 = [*(v1 + 64) effectiveMaxCPUDuration];
      LODWORD(v13) = [*(v1 + 64) effectiveMinCPUPercentage];
      v14 = [*(v1 + 64) effectiveMinCPUDuration];
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      if (v13 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v13;
      }

      v16 = [*(v1 + 56) effectiveMaxCPUUsageViolationPolicy];
      v17 = [*(v1 + 64) effectiveMaxCPUUsageViolationPolicy];
      v19 = v10 < 1 || v9 < 1;
      v20 = v13 < 1 || v15 < 1;
      v21 = v20;
      if (!v20)
      {
        v19 = 0;
      }

      if (v10 == v13 && v9 == v15 && v16 == v17)
      {
        v19 = 1;
      }

      if (!v19 || *(v1 + 56) == 0)
      {
        [(RBProcess *)v1 _lock_disableCPULimits];
        if (v21)
        {
          [(RBProcess *)v1 _lock_restoreCPULimitDefaults];
        }

        else
        {
          [RBProcess _lock_setCPULimits:v1 violationPolicy:v26];
        }

        [(RBProcess *)v1 _lock_resumeCPUMonitoring];
      }
    }

    else
    {
      v3 = rbs_process_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v1 + 32);
        OUTLINED_FUNCTION_6();
        _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_INFO, "%{public}@ Ignoring CPU limits because this process is not CPU limit managed", v26, 0xCu);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_lock_disableCPULimits
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *__error() = 0;
    v2 = *(a1 + 8);
    v3 = proc_disable_cpumon();
    v4 = rbs_process_log();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = *__error();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_0();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_lock_restoreCPULimitDefaults
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *__error() = 0;
    v3 = *(a1 + 8);
    if (!proc_set_cpumon_defaults())
    {
      v14 = rbs_process_log();
      if (OUTLINED_FUNCTION_29(v14))
      {
        v15 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      }

      goto LABEL_8;
    }

    v4 = __error();
    OUTLINED_FUNCTION_11(v4);
    if (!v5)
    {
      v6 = rbs_process_log();
      if (OUTLINED_FUNCTION_27(v6))
      {
        v7 = *(a1 + 32);
        v8 = *__error();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
      }

LABEL_8:
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_lock_resumeCPUMonitoring
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *__error() = 0;
    v3 = *(a1 + 8);
    if (!proc_resume_cpumon())
    {
      v14 = rbs_process_log();
      if (OUTLINED_FUNCTION_29(v14))
      {
        v15 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      }

      goto LABEL_8;
    }

    v4 = __error();
    OUTLINED_FUNCTION_11(v4);
    if (!v5)
    {
      v6 = rbs_process_log();
      if (OUTLINED_FUNCTION_27(v6))
      {
        v7 = *(a1 + 32);
        v8 = *__error();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
      }

LABEL_8:
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_lock_applyMemoryLimits
{
  v88 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((*(a1 + 109) & 8) != 0)
    {
      if ([*(a1 + 88) isValid])
      {
        v77 = 0;
        v78 = 0;
        [a1 rbs_pid];
        v1 = [*(a1 + 64) memoryLimitCategory];
        v76 = [*(a1 + 64) memoryLimitStrength];
        if (memorystatus_control())
        {
          v5 = __error();
          OUTLINED_FUNCTION_11(v5);
          if (!v6)
          {
            v7 = rbs_process_log();
            if (OUTLINED_FUNCTION_39(v7))
            {
              v41 = [a1 shortDescription];
              v42 = __error();
              v43 = strerror(*v42);
              v44 = *__error();
              v79 = 138543874;
              v80 = v41;
              v81 = 2080;
              *v82 = v43;
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_16();
              _os_log_error_impl(v45, v46, v47, v48, v49, v50);
            }
          }
        }

        v8 = [*(a1 + 64) memoryLimit];
        if (![*(a1 + 64) memoryLimit])
        {
          v8 = [*(a1 + 88) memoryLimitForCategory:v1 strength:&v76];
        }

        if (![*(a1 + 64) preventBaseMemoryLimitReduction] || (objc_msgSend(*(a1 + 64), "memoryLimit") ? (v8 = v8) : (v8 = v78), v8 >= *(a1 + 104)))
        {
          v26 = HIDWORD(v78) & 0xFFFFFFFE;
          if (v76 == 1)
          {
            ++v26;
          }

          v78 = __PAIR64__(v26, v8);
          v27 = HIDWORD(v77) & 0xFFFFFFFE;
          if (v76 == 1)
          {
            ++v27;
          }

          v77 = __PAIR64__(v27, v8);
          v28 = _os_feature_enabled_impl();
          if (v28)
          {
            if (memorystatus_control())
            {
              v29 = __error();
              OUTLINED_FUNCTION_11(v29);
              if (!v6)
              {
                v30 = rbs_process_log();
                if (OUTLINED_FUNCTION_39(v30))
                {
                  v66 = [a1 shortDescription];
                  v67 = __error();
                  v68 = strerror(*v67);
                  v69 = *__error();
                  v79 = 138543874;
                  v80 = v66;
                  v81 = 2080;
                  *v82 = v68;
                  OUTLINED_FUNCTION_25();
                  OUTLINED_FUNCTION_16();
                  _os_log_error_impl(v70, v71, v72, v73, v74, v75);
                }

                goto LABEL_23;
              }
            }
          }

          else
          {
            if (memorystatus_control() <= 0x17)
            {
              v31 = rbs_process_log();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v51 = [a1 shortDescription];
                v52 = __error();
                v53 = strerror(*v52);
                v54 = *__error();
                v79 = 138543874;
                v80 = v51;
                v81 = 2080;
                *v82 = v53;
                OUTLINED_FUNCTION_25();
                OUTLINED_FUNCTION_37();
                OUTLINED_FUNCTION_16();
                _os_log_error_impl(v55, v56, v57, v58, v59, v60);
              }
            }

            if (v8)
            {
              v32 = rbs_process_log();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v61 = [a1 shortDescription];
                v79 = 138543874;
                v80 = v61;
                v81 = 1024;
                *v82 = v8;
                *&v82[4] = 1024;
                *&v82[6] = 0;
                OUTLINED_FUNCTION_37();
                _os_log_error_impl(v62, v63, OS_LOG_TYPE_ERROR, v64, v65, 0x18u);
              }
            }
          }

          if (*(a1 + 104) != v8)
          {
            v33 = rbs_process_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1 + 32);
              if (v28)
              {
                v35 = &stru_287507640;
              }

              else
              {
                v35 = @"would ";
              }

              v36 = NSStringFromRBSMemoryLimitStrength();
              v79 = 138544386;
              v80 = v34;
              v81 = 2114;
              *v82 = v35;
              *&v82[8] = 2114;
              v83 = v36;
              v84 = 2114;
              v85 = v1;
              v86 = 1024;
              v87 = v8;
              OUTLINED_FUNCTION_37();
              _os_log_impl(v37, v38, OS_LOG_TYPE_DEFAULT, v39, v40, 0x30u);
            }

            *(a1 + 104) = v8;
          }

          goto LABEL_23;
        }

        v9 = rbs_process_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 104);
          OUTLINED_FUNCTION_19();
          v81 = 1024;
          *v82 = v12;
          *&v82[4] = 1024;
          *&v82[6] = v8;
          OUTLINED_FUNCTION_37();
          _os_log_impl(v13, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 0x18u);
        }
      }

      else
      {
        v17 = rbs_process_log();
        if (OUTLINED_FUNCTION_23(v17))
        {
LABEL_22:
          v18 = *(a1 + 32);
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_8();
          _os_log_impl(v19, v20, v21, v22, v23, v24);
        }
      }
    }

    else
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v4))
      {
        goto LABEL_22;
      }
    }

LABEL_23:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_lock_applyCarPlayMode
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((*(a1 + 109) & 1) == 0)
    {
      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_29(v3))
      {
        v4 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        v10 = 12;
LABEL_12:
        _os_log_impl(v5, v6, v7, v8, v9, v10);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v11 = [*(a1 + 64) carPlayMode];
    v12 = *(a1 + 56);
    if (!v12 || v11 != [v12 carPlayMode])
    {
      if (setpriority(8, *(a1 + 8), v11))
      {
        v13 = rbs_process_log();
        if (OUTLINED_FUNCTION_27(v13))
        {
          v14 = *(a1 + 32);
          v15 = *__error();
          v16 = __error();
          strerror(*v16);
          v26 = 138544130;
          v27 = v14;
          OUTLINED_FUNCTION_14();
          v29 = v15;
          v30 = 1026;
          v31 = v11;
          v32 = 2080;
          v33 = v17;
          OUTLINED_FUNCTION_5();
          _os_log_error_impl(v18, v19, v20, v21, v22, 0x22u);
        }

        goto LABEL_13;
      }

      v23 = rbs_ttl_log();
      if (OUTLINED_FUNCTION_23(v23))
      {
        v24 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        v28 = 1026;
        v29 = v11;
        v5 = &dword_262485000;
        v8 = "%{public}@ Set Carplay mode to: %{public}d";
        v9 = &v26;
        v6 = v1;
        v7 = OS_LOG_TYPE_DEFAULT;
        v10 = 18;
        goto LABEL_12;
      }

LABEL_13:
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_lock_logVisibility
{
  v1 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [*(a1 + 64) inheritances];
    v4 = [v3 allNamespaces];
    v5 = [v4 containsObject:*MEMORY[0x277D470D0]];

    if (*(a1 + 108) != v5)
    {
      v6 = rbs_ttl_log();
      v7 = OUTLINED_FUNCTION_32(v6);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else if (v7)
      {
LABEL_7:
        v8 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
        _os_log_impl(v9, v10, v11, v12, v13, v14);
      }

      *(a1 + 108) = v5;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessState *)self->_lock_state jetsamLenientMode])
  {
    [(RBProcess *)self _applyJetsamLenientModeState:?];
  }

  os_unfair_lock_lock(&self->_dataLock);
  lastExitContext = self->_lastExitContext;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(RBSProcessExitContext *)lastExitContext copyWithTimestamp:v4];
  v6 = self->_lastExitContext;
  self->_lastExitContext = v5;

  os_unfair_lock_unlock(&self->_dataLock);
  self->_appliedJetsamPriority = -1;
  self->_terminating = 1;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__RBProcess_invalidate__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  dispatch_async(v7, block);
}

void __23__RBProcess_invalidate__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = rbs_process_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __23__RBProcess_invalidate__block_invoke_cold_1(v1);
    }
  }
}

- (RBSProcessExitContext)lastExitContext
{
  os_unfair_lock_lock(&self->_dataLock);
  if (self->_intendedExitStatus)
  {
    v3 = [(RBSProcessExitContext *)self->_lastExitContext copyWithStatus:?];
    lastExitContext = self->_lastExitContext;
    self->_lastExitContext = v3;
  }

  if (![(RBSProcessExitContext *)self->_lastExitContext type])
  {
    v5 = [(RBSProcessIdentity *)self->_identity consistentLaunchdJobLabel];
    if (v5)
    {
      v6 = [RBLaunchdJobManager lastExitStatusForLabel:v5 error:0];
      v7 = [(RBSProcessExitContext *)self->_lastExitContext copyWithStatus:v6];
      v8 = self->_lastExitContext;
      self->_lastExitContext = v7;
    }
  }

  v9 = self->_lastExitContext;
  os_unfair_lock_unlock(&self->_dataLock);

  return v9;
}

void __26__RBProcess__lock_suspend__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = [(RBProcess *)*(a1 + 32) _allowedLockedFilePaths];
  os_unfair_lock_lock((*v1 + 48));
  v3 = *v1;
  if (*(*v1 + 137) == 1 && (v3[34]._os_unfair_lock_opaque & 1) == 0)
  {
    v5 = rbs_process_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*v1 + 32);
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ check if suspended process is holding locks", buf, 0xCu);
    }

    v7 = [(RBProcess *)*v1 _lock_lockedFilePathsIgnoring:v2];
    if ([v7 count])
    {
      v8 = [v7 allObjects];
      v9 = [v8 componentsJoinedByString:@"\n"];

      v10 = [v2 allObjects];
      v11 = [v10 componentsJoinedByString:@"\n"];

      v12 = rbs_process_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __26__RBProcess__lock_suspend__block_invoke_cold_1(v1);
      }

      v13 = rbs_process_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __26__RBProcess__lock_suspend__block_invoke_cold_2(v1);
      }

      if ([*(*v1 + 16) platform] == 6)
      {
        v14 = rbs_process_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*v1 + 16);
          *buf = 138412290;
          v26 = v15;
          _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "Not emitting 0xdead10cc error for process %@ suspended with locked system files because it is a Mac Catalyst app. Mac Catalyst apps should always be terminated on suspension, regardless of whether the app holds a shared file lock.", buf, 0xCu);
        }
      }

      else
      {
        v16 = objc_alloc(MEMORY[0x277D47010]);
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"BUG IN %@: RunningBoard terminated %@ because it was suspended while holding a shared file lock:\n%@\nFile locks MUST be held in one of the following directories:\n%@", *(*v1 + 32), *(*v1 + 32), v9, v11];
        v14 = [v16 initWithExplanation:v17];

        [v14 setExceptionCode:3735883980];
        [v14 setExceptionDomain:15];
        [v14 setMaximumTerminationResistance:50];
        [v14 setReportType:1];
        v18 = rbs_sp_telemetry_log();
        if (os_signpost_enabled(v18))
        {
          v19 = [*(*v1 + 16) embeddedApplicationIdentifier];
          v20 = v19;
          if (v19)
          {
            v21 = 0;
            v22 = v19;
          }

          else
          {
            v23 = [*(*v1 + 16) xpcServiceIdentifier];
            if (v23)
            {
              v21 = 0;
              v24 = v23;
              v22 = v23;
            }

            else
            {
              v22 = [*(*v1 + 16) consistentLaunchdJobLabel];
              v24 = 0;
              v21 = 1;
            }
          }

          *buf = 138543362;
          v26 = v22;
          _os_signpost_emit_with_name_impl(&dword_262485000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SuspendedWithLockedFiles", "BundleIdOverride=%{public, signpost.description:attribute}@ enableTelemetry=YES ", buf, 0xCu);
          if (v21)
          {
          }

          if (!v20)
          {
          }
        }

        [(RBProcess *)*v1 _lock_terminateWithContext:v14];
      }
    }

    v3 = *v1;
  }

  os_unfair_lock_unlock(v3 + 12);

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_allowedLockedFilePaths
{
  v85 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    v2 = *(a1 + 16);
    v3 = *(a1 + 208);
    v4 = *(a1 + 216);
    v5 = *(a1 + 176);
    v6 = *(a1 + 32);
    v7 = *(a1 + 8);
    os_unfair_lock_unlock((a1 + 48));
    if ([v2 isXPCService])
    {
      v8 = 0;
LABEL_63:

      goto LABEL_64;
    }

    v9 = [MEMORY[0x277CBEB18] array];
    if (v3)
    {
      v10 = rbs_process_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_36(5.8382e-34);
        *v83 = v3;
        OUTLINED_FUNCTION_30(&dword_262485000, v59, v60, "%{public}@: home directory '%{public}@' allowed", &buffer);
      }

      [v9 addObject:v3];
    }

    if (v4)
    {
      v11 = rbs_process_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_36(5.8382e-34);
        *v83 = v4;
        OUTLINED_FUNCTION_30(&dword_262485000, v61, v62, "%{public}@: tmp directory '%{public}@' allowed", &buffer);
      }

      [v9 addObject:v4];
    }

    v12 = [v5 environmentVariables];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __36__RBProcess__allowedLockedFilePaths__block_invoke;
    v73[3] = &unk_279B332D0;
    v13 = v9;
    v74 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v73];

    if (([v2 isEmbeddedApplication] & 1) == 0 && !objc_msgSend(v2, "isAngel"))
    {
LABEL_55:
      v68 = v2;
      v47 = v5;
      v48 = v4;
      v49 = v3;
      v50 = v6;
      v8 = [MEMORY[0x277CBEB58] set];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v51 = v13;
      v52 = [v51 countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v70;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v70 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = [*(*(&v69 + 1) + 8 * i) stringByStandardizingPath];
            [v8 addObject:v56];
          }

          v53 = [v51 countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v53);
      }

      v6 = v50;
      v3 = v49;
      v4 = v48;
      v5 = v47;
      v2 = v68;
      goto LABEL_63;
    }

    v14 = [v5 dataContainerURL];
    v15 = [v14 path];

    if (v15 && [v15 length])
    {
      [v13 addObject:v15];
      v16 = rbs_process_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        buffer = 138543618;
        v81 = v6;
        v82 = 2114;
        *v83 = v15;
        _os_log_debug_impl(&dword_262485000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: adding allowed path from bundle %{public}@", &buffer, 0x16u);
      }

      goto LABEL_54;
    }

    bzero(&buffer, 0x88uLL);
    if (proc_pidinfo(*(a1 + 8), 3, 0, &buffer, 136) != 136)
    {
      v28 = rbs_process_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v77) = v7;
        _os_log_impl(&dword_262485000, v28, OS_LOG_TYPE_DEFAULT, "Could not get proc_pidinfo for pid %d to get ruid/euid", buf, 8u);
      }

      [@"/var/root" stringByAppendingPathComponent:@"/Library/Caches/"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
      objc_claimAutoreleasedReturnValue();
      v29 = [OUTLINED_FUNCTION_22() stringByAppendingPathComponent:?];

      if (v29 && [v29 length])
      {
        [v13 addObject:v29];
        v30 = rbs_process_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_9();
          *(v63 + 14) = v29;
          OUTLINED_FUNCTION_30(&dword_262485000, v64, v65, "%{public}@: adding fallback allowed path %{public}@", buf);
        }
      }

      [@"/var/mobile" stringByAppendingPathComponent:@"/Library/Caches/"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
      objc_claimAutoreleasedReturnValue();
      v15 = [OUTLINED_FUNCTION_22() stringByAppendingPathComponent:?];

      if (!v15 || ![v15 length])
      {
        goto LABEL_54;
      }

      [v13 addObject:v15];
      v31 = rbs_process_log();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_9();
      *(v32 + 14) = v15;
      v33 = "%{public}@: adding fallback allowed path %{public}@";
      goto LABEL_49;
    }

    v17 = v84;
    *__error() = 0;
    v66 = v17;
    v18 = getpwuid(v17);
    v19 = 0x277CCA000uLL;
    v20 = &off_26250B000;
    v67 = v13;
    if (v18)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18->pw_dir];
      [v21 stringByAppendingPathComponent:@"/Library/Caches/"];
      objc_claimAutoreleasedReturnValue();
      v22 = [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
      v23 = [0x277CCA000 stringByAppendingPathComponent:v22];

      v24 = v23;
      if (!v23)
      {
        v20 = &off_26250B000;
        v19 = 0x277CCA000uLL;
        goto LABEL_41;
      }

      v25 = [v23 length];
      v13 = v67;
      if (!v25)
      {
        v20 = &off_26250B000;
        v19 = 0x277CCA000;
        goto LABEL_42;
      }

      v26 = v24;
      [v67 addObject:v24];
      v27 = rbs_process_log();
      v20 = &off_26250B000;
      v19 = 0x277CCA000;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v77 = v6;
        v78 = 2114;
        *v79 = v26;
        _os_log_debug_impl(&dword_262485000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: adding allowed path from real uid %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v27 = rbs_process_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *__error();
        OUTLINED_FUNCTION_28();
        *(v35 + 14) = v66;
        *&v79[4] = v36;
        *&v79[6] = v37;
        _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: no passwd data for ruid %d (errno %d)", buf, 0x18u);
      }

      v26 = v15;
    }

    v24 = v26;
LABEL_41:
    v13 = v67;
LABEL_42:
    v38 = *&v83[6];
    if (*&v83[6] == v66)
    {
      v15 = v24;
      goto LABEL_54;
    }

    *__error() = 0;
    v39 = getpwuid(v38);
    if (!v39)
    {
      v31 = rbs_process_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *__error();
        v43 = *(v20 + 333);
        OUTLINED_FUNCTION_28();
        *(v44 + 14) = v38;
        *&v79[4] = v45;
        *&v79[6] = v46;
        _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: no passwd data for euid %d (errno %d)", buf, 0x18u);
      }

      v15 = v24;
      goto LABEL_53;
    }

    v40 = [*(v19 + 3240) stringWithUTF8String:v39->pw_dir];
    [v40 stringByAppendingPathComponent:@"/Library/Caches/"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
    objc_claimAutoreleasedReturnValue();
    v15 = [OUTLINED_FUNCTION_22() stringByAppendingPathComponent:?];

    if (!v15)
    {
      v13 = v67;
      goto LABEL_54;
    }

    v13 = v67;
    if (![v15 length])
    {
LABEL_54:

      goto LABEL_55;
    }

    [v67 addObject:v15];
    v31 = rbs_process_log();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
LABEL_53:

      goto LABEL_54;
    }

    OUTLINED_FUNCTION_9();
    *(v41 + 14) = v15;
    v33 = "%{public}@: adding allowed path from effective uid %{public}@";
LABEL_49:
    _os_log_debug_impl(&dword_262485000, v31, OS_LOG_TYPE_DEBUG, v33, buf, 0x16u);
    goto LABEL_53;
  }

  v8 = 0;
LABEL_64:
  v57 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_lock_suspend
{
  v50 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_20(a1);
    if ((v3 & 1) == 0)
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v4))
      {
        v5 = *(v1 + 32);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_4_1();
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }

LABEL_17:

      goto LABEL_18;
    }

    v12 = rbs_ttl_log();
    if (OUTLINED_FUNCTION_21(v12))
    {
      v13 = *(v1 + 32);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_4_1();
      _os_log_impl(v14, v15, v16, v17, v18, v19);
    }

    RBPowerlogEvent(3, *(v1 + 16), 0xFFFFFFFFLL, *(v1 + 8));
    if (MEMORY[0x2822399B0] && (*(v1 + 77) & 1) != 0 && MEMORY[0x266729FC0](*(v1 + 8)) == 5)
    {
      v20 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v20))
      {
        v42 = *(v1 + 32);
        OUTLINED_FUNCTION_19();
        _os_log_error_impl(&dword_262485000, v2, OS_LOG_TYPE_ERROR, "%{public}@ spd_client_start_monitoring_all_sockets_for_pid() failed", buf, 0xCu);
      }
    }

    v21 = *(v1 + 8);
    if (pid_suspend())
    {
      v22 = __error();
      OUTLINED_FUNCTION_11(v22);
      if (!v23)
      {
        v24 = rbs_process_log();
        if (OUTLINED_FUNCTION_26(v24))
        {
          v32 = *(v1 + 32);
          v33 = *__error();
          v34 = __error();
          v35 = strerror(*v34);
          *buf = 138543874;
          v45 = v32;
          v46 = 1024;
          v47 = v33;
          v48 = 2080;
          v49 = v35;
          OUTLINED_FUNCTION_16();
          _os_log_error_impl(v36, v37, v38, v39, v40, v41);
        }

        goto LABEL_17;
      }
    }

    else
    {
      *(v1 + 137) = 1;
      v26 = *(v1 + 8);
      v27 = notify_suspend_pid();
      if (v27)
      {
        v28 = v27;
        v29 = rbs_process_log();
        if (OUTLINED_FUNCTION_26(v29))
        {
          v30 = *(v1 + 32);
          OUTLINED_FUNCTION_19();
          v46 = 1024;
          v47 = v28;
          _os_log_error_impl(&dword_262485000, v2, OS_LOG_TYPE_ERROR, "%{public}@ notify_suspend_pid() failed with error %d (see <notify.h>)", buf, 0x12u);
        }
      }

      v31 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __26__RBProcess__lock_suspend__block_invoke;
      block[3] = &unk_279B32CB0;
      block[4] = v1;
      dispatch_async(v31, block);

      [(RBProcess *)v1 _lock_shutdownSocketsAndLog:?];
    }
  }

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
}

void __36__RBProcess__allowedLockedFilePaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualToString:@"CFFIXED_USER_HOME"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HOME") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"TMPDIR"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

void __41__RBProcess_processStateApplicationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.rbprocess-state-application", v2);
  v1 = processStateApplicationQueue_queue;
  processStateApplicationQueue_queue = v0;
}

+ (void)_runOnDiagnosticQueue:(uint64_t)a1
{
  block = a2;
  objc_opt_self();
  if (_runOnDiagnosticQueue__onceToken != -1)
  {
    +[RBProcess _runOnDiagnosticQueue:];
  }

  v2 = [MEMORY[0x277D47038] currentContext];
  v3 = v2;
  if (v2)
  {
    [v2 handoffToQueue:_runOnDiagnosticQueue__diagnosticQ block:block];
  }

  else
  {
    dispatch_async(_runOnDiagnosticQueue__diagnosticQ, block);
  }
}

void __35__RBProcess__runOnDiagnosticQueue___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.diagnostics", v2);
  v1 = _runOnDiagnosticQueue__diagnosticQ;
  _runOnDiagnosticQueue__diagnosticQ = v0;
}

- (RBProcess)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBProcess.m" lineNumber:208 description:@"-init is not allowed on RBProcess"];

  return 0;
}

- (id)_initWithInstance:(void *)a3 auditToken:(void *)a4 bundleProperties:(void *)a5 jetsamProperties:(void *)a6 initialState:(void *)a7 hostProcess:(void *)a8 properties:(char)a9 systemPreventsIdleSleep:(char)a10 cache:
{
  v88 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  v77 = a4;
  v76 = a5;
  v75 = a6;
  v74 = a7;
  v20 = a8;
  if (!a1)
  {
LABEL_6:
    v23 = v75;
    v22 = v76;
    v24 = v74;
    goto LABEL_7;
  }

  if (v18)
  {
    if (v19)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [RBProcess _initWithInstance:a1 auditToken:? bundleProperties:? jetsamProperties:? initialState:? hostProcess:? properties:? systemPreventsIdleSleep:? cache:?];
    if (v19)
    {
      goto LABEL_4;
    }
  }

  [RBProcess _initWithInstance:a1 auditToken:? bundleProperties:? jetsamProperties:? initialState:? hostProcess:? properties:? systemPreventsIdleSleep:? cache:?];
LABEL_4:
  v21 = [v18 identity];
  if ([v21 osServiceType] == 1)
  {
    [RBProcess _initWithInstance:auditToken:bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:];
  }

  v79.receiver = a1;
  v79.super_class = RBProcess;
  a1 = objc_msgSendSuper2(&v79, sel_init);
  if (!a1)
  {
    goto LABEL_6;
  }

  *(a1 + 2) = [v18 rbs_pid];
  objc_storeStrong(a1 + 19, a2);
  v27 = [v18 identifier];
  v28 = a1[18];
  a1[18] = v27;

  v29 = [v18 identity];
  v30 = a1[2];
  a1[2] = v29;

  a1[16] = 0;
  v31 = [v20 homeDirectory];
  v32 = a1[26];
  a1[26] = v31;

  v33 = [v20 tmpDirectory];
  v34 = a1[27];
  a1[27] = v33;

  *(a1 + 21) = [v19 pidversion];
  objc_storeStrong(a1 + 11, a5);
  if ([v20 doesOverrideManagement])
  {
    v35 = [v20 overrideManageFlags];
LABEL_16:
    *(a1 + 109) = v35;
    goto LABEL_20;
  }

  if (![a1[2] isExtension])
  {
    v35 = [a1[2] defaultManageFlags];
    goto LABEL_16;
  }

  v36 = [v77 extensionPointIdentifier];
  if (v36)
  {
    if ([MEMORY[0x277D46F60] shouldManageExtensionWithExtensionPoint:v36])
    {
      *(a1 + 109) = -1;
    }
  }

  else
  {
    v37 = rbs_process_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [RBProcess _initWithInstance:? auditToken:? bundleProperties:? jetsamProperties:? initialState:? hostProcess:? properties:? systemPreventsIdleSleep:? cache:?];
    }
  }

  v35 = *(a1 + 109);
LABEL_20:
  if ((v35 & 8) == 0)
  {
    v38 = objc_opt_new();
    v39 = a1[11];
    a1[11] = v38;
  }

  v40 = [v20 managedEndpointByLaunchIdentifier];
  v41 = [v40 copy];
  v42 = a1[28];
  a1[28] = v41;

  v73 = [v20 clientRestriction];
  v43 = [RBDomainRestriction domainRestrictionForDictionary:"domainRestrictionForDictionary:withError:" withError:?];
  v44 = a1[29];
  a1[29] = v43;

  objc_storeStrong(a1 + 22, a4);
  *(a1 + 77) = [v77 usesSocketMonitoring];
  v45 = objc_alloc_init(MEMORY[0x277D46F28]);
  v46 = a1[20];
  a1[20] = v45;

  a1[6] = 0;
  *(a1 + 78) = a9;
  objc_storeStrong(a1 + 5, a7);
  v47 = objc_alloc(MEMORY[0x277D46F48]);
  v48 = a1[19];
  v49 = *(a1 + 109);
  v50 = [v20 beforeTranslocationBundlePath];
  v51 = [v20 executablePath];
  LOBYTE(v72) = a10;
  v52 = [v47 initWithInstance:v48 auditToken:v19 bundleData:v77 manageFlags:v49 beforeTranslocationBundlePath:v50 executablePath:v51 cache:v72];
  v53 = a1[3];
  a1[3] = v52;

  objc_storeStrong(a1 + 23, a3);
  v54 = objc_alloc(MEMORY[0x277CCACA8]);
  v55 = [a1[2] shortDescription];
  v56 = [v54 initWithFormat:@"[%@:%d]", v55, objc_msgSend(a1[18], "rbs_pid")];
  v57 = a1[4];
  a1[4] = v56;

  v58 = [v20 underlyingAssertion];
  v59 = a1[24];
  a1[24] = v58;

  v78 = 2;
  v60 = [a1[11] memoryLimitForCategory:*MEMORY[0x277D47070] strength:&v78];
  v78 = 2;
  v61 = [a1[11] memoryLimitForCategory:*MEMORY[0x277D47078] strength:&v78];
  v62 = a1[11];
  objc_opt_class();
  LOBYTE(v62) = objc_opt_isKindOfClass();
  v63 = rbs_process_log();
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
  if (v62)
  {
    v23 = v75;
    v22 = v76;
    v24 = v74;
    if (v64)
    {
      v65 = a1[4];
      *buf = 138543362;
      v81 = v65;
      v66 = "%{public}@ is not RunningBoard jetsam managed.";
      v67 = v63;
      v68 = 12;
LABEL_27:
      _os_log_impl(&dword_262485000, v67, OS_LOG_TYPE_DEFAULT, v66, buf, v68);
    }
  }

  else
  {
    v23 = v75;
    v22 = v76;
    v24 = v74;
    if (v64)
    {
      v69 = a1[4];
      v70 = a1[11];
      *buf = 138544130;
      v81 = v69;
      v82 = 1024;
      v83 = v60;
      v84 = 1024;
      v85 = v61;
      v86 = 2112;
      v87 = v70;
      v66 = "%{public}@ Memory Limits: active %d inactive %d\n %@";
      v67 = v63;
      v68 = 34;
      goto LABEL_27;
    }
  }

  v71 = a1[23];
  if (v71)
  {
    [v71 realToken];
    *(a1 + 76) = RBSAuditTokenRepresentsPlatformBinary();
  }

  [(RBProcess *)a1 _setMemoryStatusFlags:v20];
  if (v23 && a1[24] && ![a1[8] memoryLimit])
  {
    [a1 _applyState:v23];
  }

LABEL_7:
  v25 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)setAuditToken:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [(RBSAuditToken *)v4 realToken];
  }

  v6 = RBSAuditTokenRepresentsPlatformBinary();
  os_unfair_lock_lock(&self->_dataLock);
  auditToken = self->_auditToken;
  self->_auditToken = v5;

  self->_platformBinary = v6;
  os_unfair_lock_unlock(&self->_dataLock);
}

- (double)processStartTime
{
  v23 = *MEMORY[0x277D85DE8];
  result = self->_cachedProcessStartTime;
  if (result == 0.0)
  {
    v22 = 0;
    v21 = 0u;
    memset(buffer, 0, sizeof(buffer));
    p_pid = &self->_pid;
    if (proc_pidinfo(self->_pid, 3, 0, buffer, 136) == 136)
    {
      v5 = [MEMORY[0x277CCAC38] processInfo];
      [v5 systemUptime];
      v7 = v6;

      self->_cachedProcessStartTime = v7 - (CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD0]) + *(&v21 + 1) + v22 / 1000000.0;
      RBSMachAbsoluteTime();
      v9 = v8;
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        cachedProcessStartTime = self->_cachedProcessStartTime;
        v14 = 134218496;
        v15 = cachedProcessStartTime;
        v16 = 2048;
        v17 = v9;
        v18 = 2048;
        v19 = v9 - cachedProcessStartTime;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "processStartTime calculated start is %f (now:%f, diff%f)", &v14, 0x20u);
      }

      result = self->_cachedProcessStartTime;
    }

    else
    {
      v12 = rbs_assertion_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)p_pid processStartTime];
      }

      self->_cachedProcessStartTime = 0.0001;
      result = 0.0001;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isContainerized
{
  v8 = *MEMORY[0x277D85DE8];
  auditToken = self->_auditToken;
  if (auditToken)
  {
    [(RBSAuditToken *)auditToken realToken];
  }

  v4 = sandbox_check_by_audit_token();
  if (v4)
  {
    v5 = self->_auditToken;
    if (v5)
    {
      [(RBSAuditToken *)v5 realToken];
    }

    LOBYTE(v4) = sandbox_container_path_for_audit_token() == 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_systemPreventIdleSleepStateDidChange:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_systemPreventsIdleSleep = a3;
  if (!self->_terminating && !a3 && self->_suspended && [(RBProcess *)self isLifecycleManaged])
  {
    [(RBProcess *)self _lock_shutdownSocketsAndLog:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLastExitContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  lastExitContext = self->_lastExitContext;
  self->_lastExitContext = v4;

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)setLaunchAssertionIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  v5 = [(RBProcess *)self launchAssertionIdentifier];

  if (!v5)
  {
    v6 = [v4 copy];
    launchAssertionIdentifier = self->_launchAssertionIdentifier;
    self->_launchAssertionIdentifier = v6;

    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(RBProcess *)self description];
      v10 = [(RBProcess *)self rbs_pid];
      v11 = self->_launchAssertionIdentifier;
      v13 = 138412802;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "Process: %@ with pid: %d; launch assertion: %@", &v13, 0x1Cu);
    }
  }

  os_unfair_lock_unlock(&self->_dataLock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTerminating:(BOOL)a3
{
  if (!a3)
  {
    [(RBProcess *)a2 setTerminating:?];
  }

  self->_terminating = 1;
}

- (void)_applyState:(id)a3
{
  v4 = a3;
  v5 = +[RBProcess processStateApplicationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__RBProcess__applyState___block_invoke;
  v8[3] = &unk_279B32B80;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(v5, v7);
}

void __25__RBProcess__applyState___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  [(RBProcess *)*(a1 + 32) _lock_applyCurrentStateIfPossible];
  v2 = (*(a1 + 32) + 48);

  os_unfair_lock_unlock(v2);
}

- (void)collectDiagnostic:(unint64_t)a3 description:(id)a4 domain:(unsigned int)a5 code:(unint64_t)a6 additionalPayload:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  os_unfair_lock_lock(&self->_lock);
  self->_terminating = 1;
  diagnosticsStarted = self->_diagnosticsStarted;
  self->_diagnosticsStarted = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (diagnosticsStarted)
  {
    (*(v16 + 2))(v16, 0, 0);
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke;
    v33[3] = &unk_279B33280;
    v33[4] = self;
    v34 = v16;
    v18 = MEMORY[0x266729AD0](v33);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2;
    v26[3] = &unk_279B332A8;
    v30 = a3;
    v26[4] = self;
    v32 = a5;
    v27 = v14;
    v31 = a6;
    v28 = v15;
    v19 = v18;
    v29 = v19;
    [RBProcess _runOnDiagnosticQueue:v26];
    if (a3 == 3)
    {
      v20 = 20000000000;
    }

    else
    {
      v20 = 5000000000;
    }

    v21 = dispatch_time(0, v20);
    v22 = dispatch_get_global_queue(25, 0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_55;
    v24[3] = &unk_279B32F50;
    v25 = v19;
    v23 = v19;
    dispatch_after(v21, v22, v24);
  }
}

void __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

uint64_t __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2 == 3)
  {
    v3 = rbs_process_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 32);
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_INFO, "%{public}@ Taking tailspin...", &v11, 0xCu);
    }

    v5 = [(RBProcess *)*(a1 + 32) _generateTailspin];
    v6 = rbs_process_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 32) + 32);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "%{public}@ Tailspin complete", &v11, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2_cold_1(a1 + 32);
      }
    }
  }

  else if (v2 == 2)
  {
    [(RBProcess *)*(a1 + 32) _generateStackshotWithDescription:*(a1 + 80) domain:*(a1 + 72) code:*(a1 + 48) additionalPayload:?];
  }

  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_generateTailspin
{
  v1 = 0;
  if (a1 && MEMORY[0x2822399C8])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/com.apple.runningboardd/"];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v4 fileExistsAtPath:v3])
    {
      v5 = 0;
    }

    else
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)v3 _generateTailspin:v6];
      }

      v35 = 0;
      [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v35];
      v5 = v35;
    }

    if (([v4 fileExistsAtPath:v3] & 1) == 0)
    {
      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)v5 _generateTailspin:v13];
      }

      v1 = 0;
      goto LABEL_23;
    }

    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v14 = MEMORY[0x277CCACA8];
    v16 = *(a1 + 32);
    v15 = (a1 + 32);
    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = [v13 stringFromDate:v17];
    v19 = [v14 stringWithFormat:@"ts-%@-%@.tailspin", v16, v18];

    v20 = [v3 stringByAppendingPathComponent:v19];
    v21 = [v20 cStringUsingEncoding:1];

    v22 = open(v21, 514, 420);
    if (v22 == -1)
    {
      v32 = rbs_process_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)v15 _generateTailspin];
      }
    }

    else
    {
      v23 = v22;
      v24 = tailspin_config_create_with_default_config();
      if (v24)
      {
        v25 = v24;
        v1 = 1;
        tailspin_enabled_set();
        tailspin_dump_output_sync();
        MEMORY[0x26672A040](v25);
        close(v23);
LABEL_22:

LABEL_23:
        return v1;
      }

      v33 = rbs_process_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)v15 _generateTailspin];
      }

      close(v23);
    }

    v1 = 0;
    goto LABEL_22;
  }

  return v1;
}

- (BOOL)terminateWithContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBProcess *)self _lock_terminateWithContext:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (uint64_t)_lock_terminateWithContext:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = rbs_process_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Terminating with context: %{public}@", buf, 0x16u);
    }

    *(a1 + 136) = 1;
    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x277D47010]);
      [v3 setReportType:0];
      [v3 setMaximumTerminationResistance:40];
    }

    os_unfair_lock_lock((a1 + 52));
    v6 = [*(a1 + 160) copyWithTerminationContext:v3];
    v7 = *(a1 + 160);
    *(a1 + 160) = v6;

    os_unfair_lock_unlock((a1 + 52));
    [v3 reportType];
    [v3 exceptionDomain];
    v8 = *(a1 + 8);
    [v3 exceptionCode];
    v9 = [v3 description];
    [v9 UTF8String];
    v10 = terminate_with_reason();

    v11 = rbs_process_log();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [RBProcess _lock_terminateWithContext:a1];
      }

      v13 = [a1 _sendSignal:9];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v19 = v14;
        _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate_with_reason() success", buf, 0xCu);
      }

      v13 = 1;
    }

    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  result = v17;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_sendSignal:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = rbs_process_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = self->_shortDescription;
    v10 = 138543618;
    v11 = shortDescription;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending kill(%d)", &v10, 0x12u);
  }

  if (kill(self->_pid, a3) && *__error() != 3)
  {
    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBProcess _sendSignal:?];
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invokeHandlerOnProcessDeath:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_procSource)
  {
    [RBProcess invokeHandlerOnProcessDeath:onQueue:];
  }

  v8 = v7;
  pid = self->_pid;
  v10 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  v11 = dispatch_source_create(MEMORY[0x277D85D20], pid, 0xA0000000uLL, v10);
  procSource = self->_procSource;
  self->_procSource = v11;

  v13 = self->_procSource;
  dispatch_set_qos_class_fallback();
  v14 = self->_procSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke;
  handler[3] = &unk_279B32F78;
  handler[4] = self;
  v18 = v8;
  v19 = v6;
  v15 = v6;
  v16 = v8;
  dispatch_source_set_event_handler(v14, handler);
  dispatch_activate(self->_procSource);
}

void __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke_2;
  activity_block[3] = &unk_279B32F78;
  v2 = *(a1 + 40);
  activity_block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  _os_activity_initiate(&dword_262485000, "Process Event", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  data = dispatch_source_get_data(*(*(a1 + 32) + 120));
  if ((data & 0x20000000) != 0)
  {
    RBSMachAbsoluteTime();
    v4 = v3;
    [*(a1 + 32) processStartTime];
    v6 = v5;
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 32);
      v15 = 138543618;
      v16 = v14;
      v17 = 2048;
      v18 = v4 - v6;
      _os_log_error_impl(&dword_262485000, v7, OS_LOG_TYPE_ERROR, "NOTE: unexpected exec event for %{public}@ after %f seconds - hoping it is a delayed xpcproxy exec notification", &v15, 0x16u);
    }
  }

  if (data < 0)
  {
    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 32);
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ termination reported by proc_exit", &v15, 0xCu);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 120));
    v10 = *(a1 + 32);
    v11 = *(v10 + 120);
    *(v10 + 120) = 0;

    v12 = dispatch_time(0, 100000000);
    dispatch_after(v12, *(a1 + 40), *(a1 + 48));
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)createRBSTarget
{
  v2 = MEMORY[0x277D47008];
  v3 = [(RBProcess *)self rbs_pid];

  return [v2 targetWithPid:v3];
}

- (uint64_t)_memoryStatusControl:(uint64_t)a1 flags:
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = memorystatus_control();
    if (v4)
    {
      v5 = __error();
      OUTLINED_FUNCTION_11(v5);
      if (!v6 && *__error() != 45)
      {
        v7 = rbs_process_log();
        if (OUTLINED_FUNCTION_26(v7))
        {
          v10 = *(a1 + 32);
          v11 = __error();
          strerror(*v11);
          v17 = *__error();
          OUTLINED_FUNCTION_10();
          _os_log_error_impl(v12, v13, v14, v15, v16, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_setMemoryStatusFlags:(uint64_t)a1
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 109);
    v6 = rbs_process_log();
    v7 = OUTLINED_FUNCTION_32(v6);
    if ((v5 & 8) != 0)
    {
      if (v7)
      {
        v16 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
        _os_log_impl(v17, v18, v19, v20, v21, v22);
      }

      [RBProcess _memoryStatusControl:a1 flags:?];
      if (([*(a1 + 88) isFreezerEligible] & 1) == 0)
      {
        v31 = rbs_process_log();
        if (OUTLINED_FUNCTION_32(v31))
        {
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_8();
          _os_log_impl(v32, v33, v34, v35, v36, v37);
        }

        [RBProcess _memoryStatusControl:a1 flags:?];
      }

      if ((_deviceSupportsAppSwapping & 1) == 0 && [*(a1 + 16) isApplication] && -[RBProcess _memoryStatusControl:flags:](a1) == 45)
      {
        v23 = rbs_process_log();
        if (OUTLINED_FUNCTION_32(v23))
        {
          v24 = *(a1 + 32);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_8();
          _os_log_impl(v25, v26, v27, v28, v29, v30);
        }

        _deviceSupportsAppSwapping = 1;
      }
    }

    else
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
        _os_log_impl(v9, v10, v11, v12, v13, v14);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_lock_shutdownSocketsAndLog:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = *(a1 + 8);
    *(a1 + 78);
    if (pid_shutdown_sockets())
    {
      v5 = __error();
      OUTLINED_FUNCTION_11(v5);
      if (!v6)
      {
        v7 = rbs_process_log();
        if (OUTLINED_FUNCTION_27(v7))
        {
          v8 = *(a1 + 32);
          v9 = __error();
          strerror(*v9);
          OUTLINED_FUNCTION_17();
          v21 = 2080;
          v22 = v10;
          OUTLINED_FUNCTION_5();
          _os_log_error_impl(v11, v12, v13, v14, v15, 0x16u);
        }

LABEL_9:
      }
    }

    else if (a2)
    {
      v16 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v16))
      {
        v17 = *(a1 + 32);
        *(a1 + 78);
        OUTLINED_FUNCTION_6();
        v21 = 2080;
        v22 = v18;
        _os_log_impl(&dword_262485000, a2, OS_LOG_TYPE_DEFAULT, "%{public}@ Shutdown sockets (%s)", v20, 0x16u);
      }

      goto LABEL_9;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_applyJetsamLenientModeState:(uint64_t)a1
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ((*(a1 + 109) & 8) == 0)
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v4))
      {
LABEL_4:
        v5 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
LABEL_16:
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }

LABEL_17:

      goto LABEL_18;
    }

    v2 = a2;
    os_unfair_lock_lock(&_MergedGlobals_0);
    v12 = qword_2814AA0F0;
    if (v2)
    {
      ++qword_2814AA0F0;
      os_unfair_lock_unlock(&_MergedGlobals_0);
      if (v12)
      {
        v13 = rbs_process_log();
        if (!OUTLINED_FUNCTION_29(v13))
        {
          goto LABEL_17;
        }

LABEL_15:
        v18 = *(a1 + 32);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        v11 = 22;
        goto LABEL_16;
      }

      if (!OUTLINED_FUNCTION_38())
      {
        v31 = rbs_process_log();
        if (!OUTLINED_FUNCTION_23(v31))
        {
          goto LABEL_17;
        }

        goto LABEL_4;
      }

      v20 = __error();
      OUTLINED_FUNCTION_11(v20);
      if (v15)
      {
        goto LABEL_18;
      }

      v21 = rbs_process_log();
      if (!OUTLINED_FUNCTION_27(v21))
      {
        goto LABEL_17;
      }

LABEL_22:
      v22 = *(a1 + 32);
      v23 = *__error();
      v24 = __error();
      strerror(*v24);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_5();
      _os_log_error_impl(v25, v26, v27, v28, v29, 0x1Cu);
      goto LABEL_17;
    }

    --qword_2814AA0F0;
    os_unfair_lock_unlock(&_MergedGlobals_0);
    if (v12 != 1)
    {
      v17 = rbs_process_log();
      if (!OUTLINED_FUNCTION_29(v17))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (!OUTLINED_FUNCTION_38())
    {
      v30 = rbs_process_log();
      if (!OUTLINED_FUNCTION_23(v30))
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }

    v14 = __error();
    OUTLINED_FUNCTION_11(v14);
    if (!v15)
    {
      v16 = rbs_process_log();
      if (!OUTLINED_FUNCTION_27(v16))
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_generateStackshotWithDescription:(int)a3 domain:(uint64_t)a4 code:(void *)a5 additionalPayload:
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v11 = rbs_process_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    OUTLINED_FUNCTION_33();
    _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_INFO, "%{public}@ Taking stackshot...", buf, 0xCu);
  }

  v28 = 0;
  *buf = a3;
  v27 = a4;
  if (a4 != 2343432205)
  {
    [a1 _sendSignal:17];
  }

  *(a1 + 8);
  if (v10)
  {
    if (WriteCrashReportWithStackshotWithPayload())
    {
      goto LABEL_8;
    }

LABEL_11:
    v13 = rbs_process_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
    }

    v14 = 0;
    goto LABEL_14;
  }

  if (!WriteCrashReportWithStackshot())
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = rbs_process_log();
  v14 = 1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    OUTLINED_FUNCTION_6();
    _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "%{public}@ Stackshot complete", v25, 0xCu);
  }

LABEL_14:

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_lock_lockedFilePathsIgnoring:(uint64_t)a1
{
  v198 = *MEMORY[0x277D85DE8];
  v178 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = proc_pidinfo(v4, 1, 0, 0, 0);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = v5;
      v177 = a1;
      HIDWORD(v170) = v4;
      v166 = malloc_type_malloc(v5, 0x339F2B4BuLL);
      v7 = (proc_pidinfo(v4, 1, 0, v166, v6) >> 3);
      v8 = [MEMORY[0x277CBEB58] set];
      v167 = [MEMORY[0x277CCAA00] defaultManager];
      if (v7 >= 1)
      {
        *&v9 = 138544130;
        *obj = v9;
        *&v9 = 138543362;
        v174 = v9;
        v10 = v166;
        while (v10[1] != 1)
        {
LABEL_19:
          v10 += 2;
          if (!--v7)
          {
            goto LABEL_20;
          }
        }

        bzero(&buffer, 0x200uLL);
        v11 = proc_pidfdinfo(SHIDWORD(v170), *v10, 2, &buffer, 1200);
        if (v11)
        {
          v12 = v11;
          if (v11 > 0x4AF)
          {
            v30 = strlen(v197);
            if (v30)
            {
              v31 = [v167 stringWithFileSystemRepresentation:v197 length:v30];
              v13 = v31;
              if (v31)
              {
                v32 = [v31 stringByStandardizingPath];
                [v8 addObject:v32];
              }

              goto LABEL_18;
            }

            v13 = rbs_process_log();
            v33 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
            if (v33)
            {
              OUTLINED_FUNCTION_13(v33, v34, v35, v36, v37, v38, v39, v40, v164, v165, v166, v167, v168, v170, v171, v173, v174, *(&v174 + 1), obj[0], obj[1], v177);
              *buf = v174;
              *&buf[4] = v41;
              v24 = v13;
              v25 = "%{public}@ nodeFDInfo.pvip.vip_path is empty for one fd";
              v26 = 12;
              goto LABEL_17;
            }
          }

          else
          {
            v13 = rbs_process_log();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
            if (v14)
            {
              OUTLINED_FUNCTION_13(v14, v15, v16, v17, v18, v19, v20, v21, v164, v165, v166, v167, v168, v170, v171, v173, v174, *(&v174 + 1), obj[0], obj[1], v177);
              v22 = *v10;
              *buf = obj[0];
              *&buf[4] = v23;
              *&buf[12] = 1024;
              *&buf[14] = v12;
              *&buf[18] = 2048;
              *&buf[20] = 1200;
              *&buf[28] = 1024;
              *&buf[30] = v22;
              v24 = v13;
              v25 = "%{public}@ Weird size (%d != %lu) for fd %d";
              v26 = 34;
LABEL_17:
              _os_log_error_impl(&dword_262485000, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
            }
          }
        }

        else
        {
          v13 = rbs_process_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v27 = *(v177 + 32);
            v28 = *v10;
            v29 = *__error();
            *buf = 138543874;
            *&buf[4] = v27;
            *&buf[12] = 1024;
            *&buf[14] = v28;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            v24 = v13;
            v25 = "%{public}@ proc_pidfdinfo failed for fd %d with errno %d";
            v26 = 24;
            goto LABEL_17;
          }
        }

LABEL_18:

        goto LABEL_19;
      }

LABEL_20:
      v169 = [MEMORY[0x277CBEB58] set];
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v2 = v8;
      v42 = [v2 countByEnumeratingWithState:&v185 objects:v194 count:16];
      if (!v42)
      {
        goto LABEL_72;
      }

      v44 = v42;
      v179 = *v186;
      *&v43 = 138543618;
      v175 = v43;
      *&v43 = 138543874;
      v172 = v43;
      obj[0] = v2;
LABEL_22:
      v45 = 0;
      while (1)
      {
        if (*v186 != v179)
        {
          objc_enumerationMutation(obj[0]);
        }

        v46 = *(*(&v185 + 1) + 8 * v45);
        v47 = [v46 UTF8String];
        bzero(&buffer, 0x90uLL);
        if (stat(v47, &buffer))
        {
          break;
        }

        if ((buffer.st_mode & 0xF000) == 0x8000)
        {
          goto LABEL_30;
        }

        v89 = rbs_process_log();
        v90 = OUTLINED_FUNCTION_31(v89);
        if (v90)
        {
          OUTLINED_FUNCTION_0_5(v90, v91, v92, v93, v94, v95, v96, v97, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v98, v175, *(&v175 + 1), obj[0]);
          OUTLINED_FUNCTION_18();
          v68 = "%{public}@ Not checking lock on special file: %{public}@";
          goto LABEL_49;
        }

LABEL_50:

LABEL_51:
        if (++v45 == v44)
        {
          v2 = obj[0];
          v150 = [obj[0] countByEnumeratingWithState:&v185 objects:v194 count:16];
          v44 = v150;
          if (!v150)
          {
LABEL_72:

            free(v166);
            goto LABEL_76;
          }

          goto LABEL_22;
        }
      }

      v48 = rbs_process_log();
      if (OUTLINED_FUNCTION_39(v48))
      {
        v109 = *(v177 + 32);
        v110 = __error();
        v111 = strerror(*v110);
        *buf = v172;
        *&buf[4] = v109;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        *&buf[22] = 2082;
        *&buf[24] = v111;
        _os_log_error_impl(&dword_262485000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Could not stat %{public}@: %{public}s", buf, 0x20u);
      }

LABEL_30:
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v2 = v178;
      v49 = [v2 countByEnumeratingWithState:&v181 objects:v193 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v182;
LABEL_32:
        v52 = 0;
        while (1)
        {
          if (*v182 != v51)
          {
            objc_enumerationMutation(v2);
          }

          v53 = *(*(&v181 + 1) + 8 * v52);
          if ([v46 hasPrefix:v53])
          {
            break;
          }

          if (v50 == ++v52)
          {
            v50 = [v2 countByEnumeratingWithState:&v181 objects:v193 count:16];
            if (v50)
            {
              goto LABEL_32;
            }

            goto LABEL_38;
          }
        }

        v69 = rbs_process_log();
        v70 = os_log_type_enabled(v69, OS_LOG_TYPE_INFO);
        if (v70)
        {
          OUTLINED_FUNCTION_13(v70, v71, v72, v73, v74, v75, v76, v77, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v175, *(&v175 + 1), obj[0], obj[1], v177);
          *buf = v172;
          *&buf[4] = v78;
          *&buf[12] = 2114;
          *&buf[14] = v46;
          *&buf[22] = 2114;
          *&buf[24] = v53;
          _os_log_impl(&dword_262485000, v69, OS_LOG_TYPE_INFO, "%{public}@: Ignoring file %{public}@ because it is in an allowed path:  %{public}@", buf, 0x20u);
        }

        v79 = rbs_process_log();
        v80 = OUTLINED_FUNCTION_31(v79);
        if (v80)
        {
          OUTLINED_FUNCTION_0_5(v80, v81, v82, v83, v84, v85, v86, v87, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v88, v175, *(&v175 + 1), obj[0]);
          OUTLINED_FUNCTION_18();
          v68 = "%{public}@: Ignoring file because it is in an allowed path: %{public}@";
          goto LABEL_49;
        }

        goto LABEL_50;
      }

LABEL_38:

      if (([v46 hasSuffix:@"-shm"] & 1) != 0 || (objc_msgSend(v46, "hasSuffix:", @"-wal") & 1) != 0 || objc_msgSend(v46, "hasSuffix:", @"-journal"))
      {
        v54 = rbs_process_log();
        v55 = OUTLINED_FUNCTION_31(v54);
        if (v55)
        {
          OUTLINED_FUNCTION_0_5(v55, v56, v57, v58, v59, v60, v61, v62, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v63, v175, *(&v175 + 1), obj[0]);
          OUTLINED_FUNCTION_18();
          v68 = "%{public}@ Ignoring SQLite journal file: %{public}@";
LABEL_49:
          _os_log_impl(v64, v65, v66, v68, v67, 0x16u);
          goto LABEL_50;
        }
      }

      else
      {
        value = 0;
        if (getxattr(v47, "com.apple.runningboard.can-suspend-locked", 0, 0, 0, 0) == 1)
        {
          getxattr(v47, "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
        }

        if (value)
        {
          v99 = rbs_process_log();
          v100 = OUTLINED_FUNCTION_31(v99);
          if (!v100)
          {
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_0_5(v100, v101, v102, v103, v104, v105, v106, v107, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v108, v175, *(&v175 + 1), obj[0]);
          OUTLINED_FUNCTION_18();
          v68 = "%{public}@ Ignoring file with can-suspend-locked: %{public}@";
          goto LABEL_49;
        }

        v112 = _sqlite3_lockstate();
        if (v112)
        {
          if (v112 == 1)
          {
            v113 = rbs_process_log();
            v114 = OUTLINED_FUNCTION_31(v113);
            if (v114)
            {
              OUTLINED_FUNCTION_0_5(v114, v115, v116, v117, v118, v119, v120, v121, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v122, v175, *(&v175 + 1), obj[0]);
              OUTLINED_FUNCTION_18();
              v127 = "%{public}@ Found locked SQLite database: %{public}@";
              goto LABEL_62;
            }
          }

          else
          {
            *&buf[8] = 0;
            *&buf[20] = 3;
            *buf = 0;
            *&buf[16] = HIDWORD(v170);
            v138 = open(v47, 0x20000);
            if (v138 < 1)
            {
              goto LABEL_51;
            }

            v2 = v138;
            v164 = buf;
            v139 = fcntl(v138, 66);
            close(v2);
            if (v139 == -1 || (*&buf[20] & 0xFFFD) != 1)
            {
              goto LABEL_51;
            }

            v140 = rbs_process_log();
            v141 = OUTLINED_FUNCTION_32(v140);
            if (v141)
            {
              OUTLINED_FUNCTION_13(v141, v142, v143, v144, v145, v146, v147, v148, buf, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v175, *(&v175 + 1), obj[0], obj[1], v177);
              v189 = v175;
              v190 = v149;
              v191 = 2114;
              v192 = v46;
              v126 = &v189;
              v123 = &dword_262485000;
              v124 = v2;
              v125 = OS_LOG_TYPE_DEFAULT;
              v127 = "%{public}@ Found locked file lock: %{public}@";
LABEL_62:
              _os_log_impl(v123, v124, v125, v127, v126, 0x16u);
            }
          }

          [v169 addObject:v46];
          goto LABEL_51;
        }

        v128 = rbs_process_log();
        v129 = OUTLINED_FUNCTION_31(v128);
        if (v129)
        {
          OUTLINED_FUNCTION_0_5(v129, v130, v131, v132, v133, v134, v135, v136, v164, v165, v166, v167, v169, v170, v172, *(&v172 + 1), v137, v175, *(&v175 + 1), obj[0]);
          OUTLINED_FUNCTION_18();
          v68 = "%{public}@ Ignoring unlocked SQLite database: %{public}@";
          goto LABEL_49;
        }
      }

      goto LABEL_50;
    }

    v151 = rbs_process_log();
    if (OUTLINED_FUNCTION_39(v151))
    {
      v154 = *(a1 + 32);
      v155 = *__error();
      v156 = __error();
      v157 = strerror(*v156);
      buffer.st_dev = 138543874;
      *&buffer.st_mode = v154;
      WORD2(buffer.st_ino) = 1024;
      *(&buffer.st_ino + 6) = v155;
      HIWORD(buffer.st_uid) = 2080;
      *&buffer.st_gid = v157;
      OUTLINED_FUNCTION_16();
      _os_log_error_impl(v158, v159, v160, v161, v162, v163);
    }

    v169 = 0;
LABEL_76:
  }

  else
  {
    v169 = 0;
  }

  v152 = *MEMORY[0x277D85DE8];

  return v169;
}

- (void)_lock_setCPULimits:(uint64_t)a1 violationPolicy:(unsigned int *)a2
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_11;
  }

  *__error() = 0;
  v5 = [*(a1 + 64) effectiveMaxCPUUsageViolationPolicy];
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = a2[1];
  if (v5 == 2)
  {
    if (proc_set_cpumon_params_fatal())
    {
      goto LABEL_4;
    }

LABEL_8:
    v19 = rbs_process_log();
    if (OUTLINED_FUNCTION_29(v19))
    {
      v20 = *(a1 + 32);
      v21 = *a2;
      v22 = a2[1];
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_7_0();
      _os_log_impl(v23, v24, v25, v26, v27, 0x18u);
    }

    goto LABEL_10;
  }

  if (!proc_set_cpumon_params())
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = __error();
  OUTLINED_FUNCTION_11(v9);
  if (!v10)
  {
    v11 = rbs_process_log();
    if (OUTLINED_FUNCTION_27(v11))
    {
      v12 = *(a1 + 32);
      v13 = *__error();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_5();
      _os_log_error_impl(v14, v15, v16, v17, v18, 0x12u);
    }

LABEL_10:
  }

LABEL_11:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_initWithInstance:(uint64_t)a1 auditToken:(uint64_t)a2 bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcess.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"instance"}];
}

- (void)_initWithInstance:(uint64_t)a1 auditToken:(uint64_t)a2 bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcess.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"auditToken"}];
}

- (void)_initWithInstance:(uint64_t *)a1 auditToken:bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:.cold.3(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v2, v3, "could not find extension point for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)memoryLimits
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "Memory Limits for process:%{public}@ unknown", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processStartTime
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Could not get proc_pidinfo for pid %d, using defaults", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setTerminating:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcess.m" lineNumber:560 description:{@"Cannot set a RBProcess terminating to NO, once terminating has started it cannot be stopped"}];
}

void __23__RBProcess_invalidate__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v1, v2, "RBProcess %{public}@ invalidated before invokeHandlerOnProcessDeath handler was invoked", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v1, v2, "%{public}@ Tailspin generation failed!", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_generateTailspin
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v2, v3, "%{public}@ Failed to create tailspin file descriptor.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_lock_terminateWithContext:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendSignal:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = __error();
  strerror(*v2);
  v9 = *__error();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

void __26__RBProcess__lock_suspend__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_24_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __26__RBProcess__lock_suspend__block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_24_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end