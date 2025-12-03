@interface WBSCloudKitOperationRetryManager
- (BOOL)_shouldRetryOperationWithError:(id)error isItemPartialError:(BOOL)partialError getRetryInterval:(double *)interval underlyingError:(id *)underlyingError;
- (OS_os_log)log;
- (WBSCloudKitOperationRetryManager)init;
- (WBSCloudKitOperationRetryManager)initWithLog:(id)log;
- (id)_logStringForOperationGroup;
- (int64_t)scheduleRetryIfNeededForError:(id)error usingBlock:(id)block;
- (void)setScheduleQueue:(id)queue;
@end

@implementation WBSCloudKitOperationRetryManager

- (WBSCloudKitOperationRetryManager)init
{
  v6.receiver = self;
  v6.super_class = WBSCloudKitOperationRetryManager;
  v2 = [(WBSCloudKitOperationRetryManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_timeout = 3600.0;
    objc_storeStrong(&v2->_scheduleQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (WBSCloudKitOperationRetryManager)initWithLog:(id)log
{
  logCopy = log;
  v6 = [(WBSCloudKitOperationRetryManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, log);
    v8 = v7;
  }

  return v7;
}

- (OS_os_log)log
{
  if (self->_log)
  {
    return self->_log;
  }

  else
  {
    return MEMORY[0x1E69E9C10];
  }
}

- (void)setScheduleQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v5 = MEMORY[0x1E69E96A0];
    queueCopy = MEMORY[0x1E69E96A0];
  }

  scheduleQueue = self->_scheduleQueue;
  p_scheduleQueue = &self->_scheduleQueue;
  if (scheduleQueue != queueCopy)
  {
    v8 = queueCopy;
    objc_storeStrong(p_scheduleQueue, queueCopy);
    queueCopy = v8;
  }
}

- (BOOL)_shouldRetryOperationWithError:(id)error isItemPartialError:(BOOL)partialError getRetryInterval:(double *)interval underlyingError:(id *)underlyingError
{
  errorCopy = error;
  if ([errorCopy safari_isInCloudKitErrorDomain])
  {
    v11 = errorCopy;
    *underlyingError = errorCopy;
    code = [v11 code];
    switch(code)
    {
      case 1:
      case 5:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 35:
      case 36:
        goto LABEL_8;
      case 2:
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 1;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__5;
        v30 = __Block_byref_object_dispose__5;
        v31 = 0;
        userInfo = [errorCopy userInfo];
        v19 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B7A0]];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __119__WBSCloudKitOperationRetryManager__shouldRetryOperationWithError_isItemPartialError_getRetryInterval_underlyingError___block_invoke;
        v21[3] = &unk_1E7FB8690;
        v21[4] = self;
        v23 = &v32;
        v24 = &v26;
        v22 = errorCopy;
        v25 = &v36;
        [v19 enumerateKeysAndObjectsUsingBlock:v21];

        *underlyingError = v27[5];
        *interval = v33[3];
        partialError = *(v37 + 24);

        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v36, 8);
        break;
      case 3:
      case 4:
      case 6:
      case 7:
      case 23:
      case 34:
        userInfo2 = [errorCopy userInfo];
        v14 = [userInfo2 safari_numberForKey:*MEMORY[0x1E695B750]];

        if (v14)
        {
          [v14 doubleValue];
        }

        else
        {
          v15 = 5.0;
        }

        *interval = v15;

        partialError = 1;
        break;
      case 22:
        break;
      default:
        v16 = code - 100;
        if ((code - 100) > 0x3D || ((1 << v16) & 0x30040001C1F06001) == 0 && ((1 << v16) & 0x10000009C00) == 0)
        {
          v20 = [(WBSCloudKitOperationRetryManager *)self log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [WBSCloudKitOperationRetryManager _shouldRetryOperationWithError:errorCopy isItemPartialError:v20 getRetryInterval:? underlyingError:?];
          }
        }

        goto LABEL_8;
    }
  }

  else
  {
LABEL_8:
    partialError = 0;
  }

  return partialError;
}

void __119__WBSCloudKitOperationRetryManager__shouldRetryOperationWithError_isItemPartialError_getRetryInterval_underlyingError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v19 = 0;
  v20 = 0.0;
  v9 = [*(a1 + 32) _shouldRetryOperationWithError:v8 isItemPartialError:1 getRetryInterval:&v20 underlyingError:&v19];
  v10 = v19;
  v11 = v19;
  if (v9)
  {
    v12 = *(*(a1 + 48) + 8);
    if (v20 > *(v12 + 24))
    {
      *(v12 + 24) = v20;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
    }
  }

  else
  {
    v13 = [*(a1 + 32) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 safari_privacyPreservingError];
      v15 = [v7 ckShortDescription];
      v16 = [*(a1 + 40) safari_privacyPreservingError];
      [*(a1 + 32) _logStringForOperationGroup];
      v17 = v18 = a4;
      *buf = 138544130;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Error %{public}@ for item ID %{public}@ blocks retry of partial error %{public}@%{public}@", buf, 0x2Au);

      a4 = v18;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (int64_t)scheduleRetryIfNeededForError:(id)error usingBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  blockCopy = block;
  if (self->_dateRetryWasFirstRequested)
  {
    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    dateRetryWasFirstRequested = self->_dateRetryWasFirstRequested;
    self->_dateRetryWasFirstRequested = date;

    if (errorCopy)
    {
LABEL_3:
      v36 = 0;
      v37 = 0.0;
      v8 = [(WBSCloudKitOperationRetryManager *)self _shouldRetryOperationWithError:errorCopy isItemPartialError:0 getRetryInterval:&v37 underlyingError:&v36];
      v9 = v36;
      if (!v8)
      {
        v23 = 3;
LABEL_22:

        goto LABEL_23;
      }

      numberOfRetries = self->_numberOfRetries;
      v11 = exp2(numberOfRetries) * 5.0;
      if (v11 <= v37)
      {
        v12 = v37;
      }

      else
      {
        v12 = v11;
      }

      v37 = v12;
      self->_numberOfRetries = numberOfRetries + 1;
      [(NSDate *)self->_dateRetryWasFirstRequested timeIntervalSinceNow];
      if (v12 - v13 > self->_timeout)
      {
        v14 = [(WBSCloudKitOperationRetryManager *)self log];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (v9 == errorCopy)
        {
          if (v15)
          {
            safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
            v31 = v37;
            timeout = self->_timeout;
            [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
            v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138544130;
            v39 = *&safari_privacyPreservingDescription;
            v40 = 2048;
            v41 = v31;
            v42 = 2048;
            v43 = timeout;
            v44 = 2114;
            v45 = v33;
            _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Operation failed due to error %{public}@; not retrying because retry interval (%f seconds) exceeds timeout (%f seconds)%{public}@", buf, 0x2Au);

            goto LABEL_25;
          }
        }

        else if (v15)
        {
          safari_privacyPreservingDescription = [v9 safari_privacyPreservingDescription];
          safari_privacyPreservingDescription2 = [errorCopy safari_privacyPreservingDescription];
          v18 = v37;
          v19 = self->_timeout;
          _logStringForOperationGroup = [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
          *buf = 138544386;
          v39 = *&safari_privacyPreservingDescription;
          v40 = 2114;
          v41 = *&safari_privacyPreservingDescription2;
          v42 = 2048;
          v43 = v18;
          v44 = 2048;
          v45 = v19;
          v46 = 2114;
          v47 = _logStringForOperationGroup;
          _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Operation failed due to error %{public}@, underlying error %{public}@; not retrying because retry interval (%f seconds) exceeds timeout (%f seconds)%{public}@", buf, 0x34u);

LABEL_25:
        }

        v23 = 2;
LABEL_21:

        goto LABEL_22;
      }

      v24 = dispatch_time(0, (v37 * 1000000000.0));
      dispatch_after(v24, self->_scheduleQueue, blockCopy);
      v14 = [(WBSCloudKitOperationRetryManager *)self log];
      v25 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v9 == errorCopy)
      {
        if (v25)
        {
          v34 = v37;
          safari_privacyPreservingDescription3 = [errorCopy safari_privacyPreservingDescription];
          [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
          v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 134218498;
          v39 = v34;
          v40 = 2114;
          v41 = *&safari_privacyPreservingDescription3;
          v42 = 2114;
          v43 = v35;
          _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Will retry operation in %f seconds due to error %{public}@%{public}@", buf, 0x20u);

          goto LABEL_27;
        }
      }

      else if (v25)
      {
        v26 = v37;
        safari_privacyPreservingDescription3 = [v9 safari_privacyPreservingDescription];
        [errorCopy safari_privacyPreservingDescription];
        v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
        v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134218754;
        v39 = v26;
        v40 = 2114;
        v41 = *&safari_privacyPreservingDescription3;
        v42 = 2114;
        v43 = v28;
        v44 = 2114;
        v45 = v29;
        _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Will retry operation in %f seconds due to error %{public}@, underlying error %{public}@%{public}@", buf, 0x2Au);

LABEL_27:
      }

      v23 = 1;
      goto LABEL_21;
    }
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (id)_logStringForOperationGroup
{
  operationGroup = self->_operationGroup;
  if (operationGroup)
  {
    v3 = MEMORY[0x1E696AEC0];
    safari_logDescription = [(CKOperationGroup *)operationGroup safari_logDescription];
    v5 = [v3 stringWithFormat:@" with %@", safari_logDescription];
  }

  else
  {
    v5 = &stru_1F3A5E418;
  }

  return v5;
}

- (void)_shouldRetryOperationWithError:(void *)a1 isItemPartialError:(NSObject *)a2 getRetryInterval:underlyingError:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 safari_privacyPreservingError];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_FAULT, "CKError %{public}@ is not handled, add the new value to the switch", &v4, 0xCu);
}

@end