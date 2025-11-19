@interface WBSCloudKitOperationRetryManager
- (BOOL)_shouldRetryOperationWithError:(id)a3 isItemPartialError:(BOOL)a4 getRetryInterval:(double *)a5 underlyingError:(id *)a6;
- (OS_os_log)log;
- (WBSCloudKitOperationRetryManager)init;
- (WBSCloudKitOperationRetryManager)initWithLog:(id)a3;
- (id)_logStringForOperationGroup;
- (int64_t)scheduleRetryIfNeededForError:(id)a3 usingBlock:(id)a4;
- (void)setScheduleQueue:(id)a3;
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

- (WBSCloudKitOperationRetryManager)initWithLog:(id)a3
{
  v5 = a3;
  v6 = [(WBSCloudKitOperationRetryManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
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

- (void)setScheduleQueue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  scheduleQueue = self->_scheduleQueue;
  p_scheduleQueue = &self->_scheduleQueue;
  if (scheduleQueue != v4)
  {
    v8 = v4;
    objc_storeStrong(p_scheduleQueue, v4);
    v4 = v8;
  }
}

- (BOOL)_shouldRetryOperationWithError:(id)a3 isItemPartialError:(BOOL)a4 getRetryInterval:(double *)a5 underlyingError:(id *)a6
{
  v10 = a3;
  if ([v10 safari_isInCloudKitErrorDomain])
  {
    v11 = v10;
    *a6 = v10;
    v12 = [v11 code];
    switch(v12)
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
        v18 = [v10 userInfo];
        v19 = [v18 objectForKeyedSubscript:*MEMORY[0x1E695B7A0]];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __119__WBSCloudKitOperationRetryManager__shouldRetryOperationWithError_isItemPartialError_getRetryInterval_underlyingError___block_invoke;
        v21[3] = &unk_1E7FB8690;
        v21[4] = self;
        v23 = &v32;
        v24 = &v26;
        v22 = v10;
        v25 = &v36;
        [v19 enumerateKeysAndObjectsUsingBlock:v21];

        *a6 = v27[5];
        *a5 = v33[3];
        a4 = *(v37 + 24);

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
        v13 = [v10 userInfo];
        v14 = [v13 safari_numberForKey:*MEMORY[0x1E695B750]];

        if (v14)
        {
          [v14 doubleValue];
        }

        else
        {
          v15 = 5.0;
        }

        *a5 = v15;

        a4 = 1;
        break;
      case 22:
        break;
      default:
        v16 = v12 - 100;
        if ((v12 - 100) > 0x3D || ((1 << v16) & 0x30040001C1F06001) == 0 && ((1 << v16) & 0x10000009C00) == 0)
        {
          v20 = [(WBSCloudKitOperationRetryManager *)self log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [WBSCloudKitOperationRetryManager _shouldRetryOperationWithError:v10 isItemPartialError:v20 getRetryInterval:? underlyingError:?];
          }
        }

        goto LABEL_8;
    }
  }

  else
  {
LABEL_8:
    a4 = 0;
  }

  return a4;
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

- (int64_t)scheduleRetryIfNeededForError:(id)a3 usingBlock:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_dateRetryWasFirstRequested)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E695DF00] date];
    dateRetryWasFirstRequested = self->_dateRetryWasFirstRequested;
    self->_dateRetryWasFirstRequested = v21;

    if (v6)
    {
LABEL_3:
      v36 = 0;
      v37 = 0.0;
      v8 = [(WBSCloudKitOperationRetryManager *)self _shouldRetryOperationWithError:v6 isItemPartialError:0 getRetryInterval:&v37 underlyingError:&v36];
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
        if (v9 == v6)
        {
          if (v15)
          {
            v16 = [v6 safari_privacyPreservingDescription];
            v31 = v37;
            timeout = self->_timeout;
            [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
            v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138544130;
            v39 = *&v16;
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
          v16 = [v9 safari_privacyPreservingDescription];
          v17 = [v6 safari_privacyPreservingDescription];
          v18 = v37;
          v19 = self->_timeout;
          v20 = [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
          *buf = 138544386;
          v39 = *&v16;
          v40 = 2114;
          v41 = *&v17;
          v42 = 2048;
          v43 = v18;
          v44 = 2048;
          v45 = v19;
          v46 = 2114;
          v47 = v20;
          _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Operation failed due to error %{public}@, underlying error %{public}@; not retrying because retry interval (%f seconds) exceeds timeout (%f seconds)%{public}@", buf, 0x34u);

LABEL_25:
        }

        v23 = 2;
LABEL_21:

        goto LABEL_22;
      }

      v24 = dispatch_time(0, (v37 * 1000000000.0));
      dispatch_after(v24, self->_scheduleQueue, v7);
      v14 = [(WBSCloudKitOperationRetryManager *)self log];
      v25 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v9 == v6)
      {
        if (v25)
        {
          v34 = v37;
          v27 = [v6 safari_privacyPreservingDescription];
          [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
          v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 134218498;
          v39 = v34;
          v40 = 2114;
          v41 = *&v27;
          v42 = 2114;
          v43 = v35;
          _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Will retry operation in %f seconds due to error %{public}@%{public}@", buf, 0x20u);

          goto LABEL_27;
        }
      }

      else if (v25)
      {
        v26 = v37;
        v27 = [v9 safari_privacyPreservingDescription];
        [v6 safari_privacyPreservingDescription];
        v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [(WBSCloudKitOperationRetryManager *)self _logStringForOperationGroup];
        v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134218754;
        v39 = v26;
        v40 = 2114;
        v41 = *&v27;
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
    v4 = [(CKOperationGroup *)operationGroup safari_logDescription];
    v5 = [v3 stringWithFormat:@" with %@", v4];
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