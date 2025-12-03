@interface _SBUIBiometricKitInterface
- (BOOL)enableBackgroundFingerDetection:(BOOL)detection error:(id *)error;
- (BOOL)isPeriocularMatchingEnabled;
- (_SBUIBiometricKitInterface)init;
- (id)_createPresenceDetectOperationsForDeviceTypes:(id)types error:(id *)error;
- (id)createFaceDetectOperationsWithError:(id *)error;
- (id)createFingerDetectOperationsWithError:(id *)error;
- (id)createMatchOperationsWithMode:(unint64_t)mode andCredentialSet:(id)set error:(id *)error;
- (id)createPearlDevice;
- (unint64_t)_biometricEventForFaceDetectFeedback:(int64_t)feedback;
- (unint64_t)_eventForLockoutState:(int64_t)state;
- (unint64_t)_matchOperationTriggerForWakeSource:(unint64_t)source;
- (unint64_t)lockoutState;
- (void)_sendDelegateEventForFaceOcclusionInfo:(id)info;
- (void)_sendDelegateEventForFaceWUPoseEligibilityInfo:(id)info;
- (void)_sendDelegateEventForFeedback:(int64_t)feedback;
- (void)_startFallbackIndicatorTimer;
- (void)dealloc;
- (void)device:(id)device pearlEventOccurred:(int64_t)occurred;
- (void)forceBioLockout;
- (void)matchOperation:(id)operation failedWithReason:(int64_t)reason;
- (void)matchOperation:(id)operation matchedWithResult:(id)result;
- (void)matchOperation:(id)operation providedFaceOcclusionInfo:(id)info;
- (void)matchOperation:(id)operation providedFaceWUPoseEligibilityInfo:(id)info;
- (void)matchOperation:(id)operation providedFeedback:(int64_t)feedback;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)operation:(id)operation presenceStateChanged:(BOOL)changed;
- (void)operation:(id)operation stateChanged:(int64_t)changed;
@end

@implementation _SBUIBiometricKitInterface

- (unint64_t)lockoutState
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = getuid();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_biometricDevices;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v14 = 0;
        v10 = [v9 bioLockoutState:&v14 forUser:v3 error:0];
        v11 = v14;
        if (v10)
        {
          v12 = v14 == 1;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {

          if ((v11 - 2) > 6)
          {
            return 10;
          }

          else
          {
            return qword_1A9B2A6E0[v11 - 2];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (_SBUIBiometricKitInterface)init
{
  v59 = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = _SBUIBiometricKitInterface;
  v2 = [(_SBUIBiometricKitInterface *)&v52 init];
  v3 = v2;
  if (v2)
  {
    v2->_enrolledIdentitiesCount = 0;
    if (__loadBiometricKitIfNecessary_onceToken != -1)
    {
      [_SBUIBiometricKitInterface init];
    }

    if (__loadBiometricKitIfNecessary_biometricKit && __loadBiometricKitIfNecessary_localAuthentication != 0)
    {
      serial = [MEMORY[0x1E698E698] serial];
      v6 = [serial serviceClass:25];
      v7 = BSDispatchQueueCreate();
      delegateQueue = v3->_delegateQueue;
      v3->_delegateQueue = v7;

      availableDevices = [(objc_class *)_SBUIEffectiveBiometricClassFromString(@"BKDeviceManager") availableDevices];
      v39 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(availableDevices, "count")}];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = availableDevices;
      v10 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v10)
      {
        v11 = *v49;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v49 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v48 + 1) + 8 * i);
            v14 = _SBUIEffectiveBiometricClassFromString(@"BKDevice");
            v47 = 0;
            v15 = [(objc_class *)v14 deviceWithDescriptor:v13 error:&v47];
            v16 = v47;
            if (v15)
            {
              [v39 addObject:v15];
            }

            else
            {
              v17 = SBLogBiometricResource();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v55 = v13;
                v56 = 2112;
                v57 = v16;
                _os_log_error_impl(&dword_1A9A79000, v17, OS_LOG_TYPE_ERROR, "Failed to create biometric device for descriptor %@: %@", buf, 0x16u);
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v10);
      }

      v18 = [v39 copy];
      biometricDevices = v3->_biometricDevices;
      v3->_biometricDevices = v18;

      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = v3->_biometricDevices;
      v21 = [(NSSet *)v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v21)
      {
        v23 = *v44;
        *&v22 = 138412546;
        v36 = v22;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v43 + 1) + 8 * j);
            v42 = 0;
            v26 = [v25 identitiesWithError:{&v42, v36}];
            v27 = v42;
            if (v26)
            {
              [v38 addObjectsFromArray:v26];
            }

            else
            {
              v28 = SBLogBiometricResource();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = v36;
                v55 = v25;
                v56 = 2112;
                v57 = v27;
                _os_log_error_impl(&dword_1A9A79000, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve identities from device %@: %@", buf, 0x16u);
              }
            }

            if (!v3->_mesaDevice)
            {
              mesaDevice = [v25 descriptor];
              if ([mesaDevice type] == 1)
              {
                _SBUIEffectiveBiometricClassFromString(@"BKDeviceTouchID");
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if ((isKindOfClass & 1) == 0)
                {
                  goto LABEL_35;
                }

                v31 = v25;
                mesaDevice = v3->_mesaDevice;
                v3->_mesaDevice = v31;
              }
            }

LABEL_35:
            if (!v3->_pearlDevice)
            {
              descriptor = [v25 descriptor];
              if ([descriptor type] == 2)
              {
                _SBUIEffectiveBiometricClassFromString(@"BKDevicePearl");
                objc_opt_class();
                v33 = objc_opt_isKindOfClass();

                if (v33)
                {
                  objc_storeStrong(&v3->_pearlDevice, v25);
                  [(BKDevicePearl *)v3->_pearlDevice setDelegate:v3];
                }
              }

              else
              {
              }
            }
          }

          v21 = [(NSSet *)v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v21);
      }

      v3->_enrolledIdentitiesCount = [v38 count];
      objc_initWeak(buf, v3);
      v34 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __34___SBUIBiometricKitInterface_init__block_invoke;
      handler[3] = &unk_1E789DCD0;
      objc_copyWeak(&v41, buf);
      notify_register_dispatch("com.apple.BiometricKit.enrollmentChanged", &v3->_enrollmentChangedNotifyToken, MEMORY[0x1E69E96A0], handler);

      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }
  }

  return v3;
}

- (void)dealloc
{
  notify_cancel(self->_enrollmentChangedNotifyToken);
  v3.receiver = self;
  v3.super_class = _SBUIBiometricKitInterface;
  [(_SBUIBiometricKitInterface *)&v3 dealloc];
}

- (id)createPearlDevice
{
  v26 = *MEMORY[0x1E69E9840];
  availableDevices = [(objc_class *)_SBUIEffectiveBiometricClassFromString(@"BKDeviceManager") availableDevices];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [availableDevices countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v18;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(availableDevices);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          v10 = _SBUIEffectiveBiometricClassFromString(@"BKDevice");
          v16 = 0;
          v11 = [(objc_class *)v10 deviceWithDescriptor:v9 error:&v16];
          v12 = v16;
          if (v11)
          {
            v13 = v6;
            v6 = v11;
          }

          else
          {
            v13 = SBLogBiometricResource();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v22 = v9;
              v23 = 2112;
              v24 = v12;
              _os_log_error_impl(&dword_1A9A79000, v13, OS_LOG_TYPE_ERROR, "Failed to create biometric device for descriptor %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v5 = [availableDevices countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)enableBackgroundFingerDetection:(BOOL)detection error:(id *)error
{
  detectionCopy = detection;
  if (detection && !self->_mesaDevice)
  {
    [_SBUIBiometricKitInterface enableBackgroundFingerDetection:a2 error:self];
  }

  mesaDevice = self->_mesaDevice;

  return [(BKDeviceTouchID *)mesaDevice enableBackgroundFingerDetection:detectionCopy error:error];
}

- (id)createMatchOperationsWithMode:(unint64_t)mode andCredentialSet:(id)set error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if (!mode)
  {
    [_SBUIBiometricKitInterface createMatchOperationsWithMode:a2 andCredentialSet:self error:?];
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSSet count](self->_biometricDevices, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_biometricDevices;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 4;
    if (!setCopy)
    {
      v12 = 2;
    }

    v23 = v12;
    v13 = *v28;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [*(*(&v27 + 1) + 8 * i) createMatchOperationWithError:{error, v23}];
        if (!v15)
        {

          v9 = v8;
          v8 = 0;
          goto LABEL_30;
        }

        v16 = v15;
        [v15 setDelegate:self];
        [v16 setQueue:self->_delegateQueue];
        _SBUIEffectiveBiometricClassFromString(@"BKMatchPearlOperation");
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (mode > 1)
        {
          if (mode == 2)
          {
            [v16 setPurpose:5];
            [v16 setCaptureOnly:1];
          }

          else if (mode == 3)
          {
            [v16 setPurpose:v23];
            [v17 setShouldAutoRetry:1];
            if (SBUISupportsIndicatorSecureRendering())
            {
              [v17 setTrigger:{-[_SBUIBiometricKitInterface _matchOperationTriggerForWakeSource:](self, "_matchOperationTriggerForWakeSource:", -[_SBUIBiometricKitInterfaceDelegate wakeSourceForBiometricKitInterface:](self->_delegate, "wakeSourceForBiometricKitInterface:", self))}];
            }
          }
        }

        else if (mode)
        {
          if (mode == 1)
          {
            [v16 setPurpose:5];
          }
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_SBUIBiometricKitInterface.m" lineNumber:349 description:@"Invalid Match Mode"];
        }

        [v17 setLongTimeout:1];
        [v17 setStopOnSuccess:1];
        if (setCopy)
        {
          serializedCredentialSet = [setCopy serializedCredentialSet];
          [v16 setCredentialSet:serializedCredentialSet];
        }

        [(NSSet *)v8 addObject:v16];
        v20 = [[_SBUIBiometricKitInterfaceOperationStateTracker alloc] initWithState:0];
        [(_SBUIBiometricKitInterface *)self _setTracker:v20 forOperation:v16];
      }

      v9 = obj;
      v11 = [(NSSet *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  v21 = [(NSSet *)v8 copy];

  return v21;
}

- (id)createFingerDetectOperationsWithError:(id *)error
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F1DB5938];
  v6 = [(_SBUIBiometricKitInterface *)self _createPresenceDetectOperationsForDeviceTypes:v5 error:error];

  return v6;
}

- (id)createFaceDetectOperationsWithError:(id *)error
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F1DB5950];
  v6 = [(_SBUIBiometricKitInterface *)self _createPresenceDetectOperationsForDeviceTypes:v5 error:error];

  return v6;
}

- (void)forceBioLockout
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_biometricDevices;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = getuid();
        v9 = SBLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v7;
          _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_INFO, "Forcing Bio Lockout for device: %@", buf, 0xCu);
        }

        v13 = 0;
        v10 = [v7 forceBioLockoutForUser:v8 error:&v13];
        v11 = v13;
        if ((v10 & 1) == 0)
        {
          v12 = SBLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v19 = v7;
            v20 = 2114;
            v21 = v11;
            _os_log_error_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_ERROR, "Failed to force Bio Lockout for device: %{public}@ with error: %{public}@", buf, 0x16u);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }
}

- (BOOL)isPeriocularMatchingEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  pearlDevice = self->_pearlDevice;
  v8 = 0;
  v3 = [(BKDevicePearl *)pearlDevice protectedConfigurationForUser:getuid() error:&v8];
  v4 = v8;
  if (v4)
  {
    periocularFaceIDMatchEnabled = SBLogDashBoard();
    if (os_log_type_enabled(periocularFaceIDMatchEnabled, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1A9A79000, periocularFaceIDMatchEnabled, OS_LOG_TYPE_DEFAULT, "Could not get protected config: %@", buf, 0xCu);
    }

    bOOLValue = 0;
  }

  else
  {
    periocularFaceIDMatchEnabled = [v3 periocularFaceIDMatchEnabled];
    bOOLValue = [periocularFaceIDMatchEnabled BOOLValue];
  }

  return bOOLValue;
}

- (unint64_t)_matchOperationTriggerForWakeSource:(unint64_t)source
{
  if (source > 6)
  {
    return 3;
  }

  else
  {
    return qword_1A9B2A718[source];
  }
}

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  operationCopy = operation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___SBUIBiometricKitInterface_operation_finishedWithReason___block_invoke;
  block[3] = &unk_1E789DCF8;
  selfCopy = self;
  reasonCopy = reason;
  v9 = operationCopy;
  v7 = operationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)operation:(id)operation stateChanged:(int64_t)changed
{
  operationCopy = operation;
  if (([operationCopy isMemberOfClass:_SBUIEffectiveBiometricClassFromString(@"BKFaceDetectOperation")] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___SBUIBiometricKitInterface_operation_stateChanged___block_invoke;
    block[3] = &unk_1E789DCF8;
    block[4] = self;
    v8 = operationCopy;
    changedCopy = changed;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)matchOperation:(id)operation failedWithReason:(int64_t)reason
{
  operationCopy = operation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___SBUIBiometricKitInterface_matchOperation_failedWithReason___block_invoke;
  block[3] = &unk_1E789DCF8;
  selfCopy = self;
  reasonCopy = reason;
  v9 = operationCopy;
  v7 = operationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)operation:(id)operation presenceStateChanged:(BOOL)changed
{
  operationCopy = operation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___SBUIBiometricKitInterface_operation_presenceStateChanged___block_invoke;
  block[3] = &unk_1E789DD20;
  changedCopy = changed;
  v9 = operationCopy;
  selfCopy = self;
  v7 = operationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)matchOperation:(id)operation matchedWithResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___SBUIBiometricKitInterface_matchOperation_matchedWithResult___block_invoke;
  block[3] = &unk_1E789DD48;
  block[4] = self;
  v11 = operationCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = operationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)matchOperation:(id)operation providedFeedback:(int64_t)feedback
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62___SBUIBiometricKitInterface_matchOperation_providedFeedback___block_invoke;
  v4[3] = &unk_1E789DD70;
  v4[4] = self;
  v4[5] = feedback;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)matchOperation:(id)operation providedFaceOcclusionInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___SBUIBiometricKitInterface_matchOperation_providedFaceOcclusionInfo___block_invoke;
  v7[3] = &unk_1E789DD98;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)matchOperation:(id)operation providedFaceWUPoseEligibilityInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79___SBUIBiometricKitInterface_matchOperation_providedFaceWUPoseEligibilityInfo___block_invoke;
  v7[3] = &unk_1E789DD98;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)device:(id)device pearlEventOccurred:(int64_t)occurred
{
  if (self->_pearlDevice == device && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
  {
    if (occurred == 16)
    {
      [(_SBUIBiometricKitInterface *)self _sendDelegateEvent:34];

      [(_SBUIBiometricKitInterface *)self _startFallbackIndicatorTimer];
    }

    else if (occurred == 15)
    {
      [(NSTimer *)self->_fallbackIndicatorTimer invalidate];
      fallbackIndicatorTimer = self->_fallbackIndicatorTimer;
      self->_fallbackIndicatorTimer = 0;

      [(_SBUIBiometricKitInterface *)self _sendDelegateEvent:36];
    }
  }
}

- (void)_sendDelegateEventForFeedback:(int64_t)feedback
{
  v4 = [(_SBUIBiometricKitInterface *)self _biometricEventForFaceDetectFeedback:feedback];

  [(_SBUIBiometricKitInterface *)self _sendDelegateEvent:v4];
}

- (void)_sendDelegateEventForFaceOcclusionInfo:(id)info
{
  if ([info hasFaceOcclusion])
  {

    [(_SBUIBiometricKitInterface *)self _sendDelegateEvent:21];
  }
}

- (void)_sendDelegateEventForFaceWUPoseEligibilityInfo:(id)info
{
  if ([info isEligible])
  {

    [(_SBUIBiometricKitInterface *)self _sendDelegateEvent:29];
  }
}

- (unint64_t)_eventForLockoutState:(int64_t)state
{
  if ((state - 1) > 7)
  {
    return 5;
  }

  else
  {
    return qword_1A9B2A750[state - 1];
  }
}

- (unint64_t)_biometricEventForFaceDetectFeedback:(int64_t)feedback
{
  result = 16;
  if (feedback <= 7)
  {
    if (feedback > 4)
    {
      if (feedback != 5)
      {
        v4 = 20;
        v5 = 21;
        if (feedback != 7)
        {
          v5 = 16;
        }

        v6 = feedback == 6;
        goto LABEL_15;
      }
    }

    else if (feedback != 2)
    {
      v4 = 18;
      v5 = 17;
      if (feedback != 4)
      {
        v5 = 16;
      }

      v6 = feedback == 3;
LABEL_15:
      if (v6)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    return 22;
  }

  if (feedback <= 10)
  {
    if (feedback == 8)
    {
      return 19;
    }

    if (feedback != 9)
    {
      return 23;
    }

    return 22;
  }

  switch(feedback)
  {
    case 11:
      return 28;
    case 12:
      return 30;
    case 13:
      if (_SBUI_Private_PeriocularPoseOutOfRangeCoachingEnabled())
      {
        return 31;
      }

      else
      {
        return 16;
      }
  }

  return result;
}

- (id)_createPresenceDetectOperationsForDeviceTypes:(id)types error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSSet count](self->_biometricDevices, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_biometricDevices;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    obj = v7;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if (typesCopy)
        {
          v13 = v6;
          v14 = MEMORY[0x1E696AD98];
          descriptor = [*(*(&v24 + 1) + 8 * i) descriptor];
          v16 = [v14 numberWithInteger:{objc_msgSend(descriptor, "type")}];
          v17 = [typesCopy containsObject:v16];

          v6 = v13;
          if (!v17)
          {
            continue;
          }
        }

        v18 = [v12 createPresenceDetectOperationWithError:{error, obj}];
        if (!v18)
        {

          v7 = v6;
          v6 = 0;
          goto LABEL_14;
        }

        v19 = v18;
        [v18 setDelegate:self];
        [v19 setQueue:self->_delegateQueue];
        [(NSSet *)v6 addObject:v19];
      }

      v7 = obj;
      v9 = [(NSSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v20 = [(NSSet *)v6 copy];

  return v20;
}

- (void)_startFallbackIndicatorTimer
{
  fallbackIndicatorTimer = self->_fallbackIndicatorTimer;
  if (fallbackIndicatorTimer)
  {
    [(NSTimer *)fallbackIndicatorTimer invalidate];
    v4 = self->_fallbackIndicatorTimer;
    self->_fallbackIndicatorTimer = 0;
  }

  [(_SBUIBiometricKitInterfaceDelegate *)self->_delegate fallbackIndicatorMinimumDurationLeewayForBiometricKitInterface:self];
  v6 = v5 + 1.0;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E695DFF0];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __58___SBUIBiometricKitInterface__startFallbackIndicatorTimer__block_invoke;
  v14 = &unk_1E789DDC0;
  objc_copyWeak(&v15, &location);
  v8 = [v7 timerWithTimeInterval:0 repeats:&v11 block:v6];
  v9 = self->_fallbackIndicatorTimer;
  self->_fallbackIndicatorTimer = v8;

  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:self->_fallbackIndicatorTimer forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)enableBackgroundFingerDetection:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBUIBiometricKitInterface.m" lineNumber:325 description:@"can't enable background FDET without mesa"];
}

- (void)createMatchOperationsWithMode:(uint64_t)a1 andCredentialSet:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBUIBiometricKitInterface.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"matchMode != SBUIBiometricMatchModeNone"}];
}

@end