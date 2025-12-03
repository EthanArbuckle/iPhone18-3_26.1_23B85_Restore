@interface SSObservable
+ (BOOL)_errorIsCanceledError:(id)error;
+ (id)observableWithObserver:(id)observer;
+ (id)observableWithObservers:(id)observers;
- (BOOL)_isComplete;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (BOOL)isComplete;
- (BOOL)sendCompletion;
- (BOOL)sendFailure:(id)failure;
- (BOOL)sendResult:(id)result;
- (SSObservable)init;
- (void)subscribe:(id)subscribe;
@end

@implementation SSObservable

- (SSObservable)init
{
  v14.receiver = self;
  v14.super_class = SSObservable;
  v2 = [(SSObservable *)&v14 init];
  if (v2)
  {
    v3 = SSGenerateLogCorrelationString();
    logKey = v2->_logKey;
    v2->_logKey = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queuedResults = v2->_queuedResults;
    v2->_queuedResults = v7;

    v9 = dispatch_queue_create("coma.apple.StoreServices.SSObservable.sendMessage", MEMORY[0x1E69E96A8]);
    sendMessageQueue = v2->_sendMessageQueue;
    v2->_sendMessageQueue = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v11;
  }

  return v2;
}

+ (id)observableWithObserver:(id)observer
{
  observerCopy = observer;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 subscribe:observerCopy];

  return v4;
}

+ (id)observableWithObservers:(id)observers
{
  v16 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v4 = objc_alloc_init(objc_opt_class());
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = observersCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 subscribe:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isCancelled
{
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  if ([(SSObservable *)self _isComplete])
  {
    v4 = objc_opt_class();
    failureError = [(SSObservable *)self failureError];
    v6 = [v4 _errorIsCanceledError:failureError];
  }

  else
  {
    v6 = 0;
  }

  stateLock2 = [(SSObservable *)self stateLock];
  [stateLock2 unlock];

  return v6;
}

- (BOOL)isComplete
{
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  LOBYTE(stateLock) = [(SSObservable *)self _isComplete];
  stateLock2 = [(SSObservable *)self stateLock];
  [stateLock2 unlock];

  return stateLock;
}

- (BOOL)cancel
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  LOBYTE(self) = [(SSObservable *)self sendFailure:v3];

  return self;
}

- (BOOL)sendCompletion
{
  v40 = *MEMORY[0x1E69E9840];
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v16 = SSObservableLogConfig();
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v21 = v20;
      [(SSObservable *)self logKey];
      v36 = 138543618;
      v37 = v20;
      v39 = v38 = 2114;
      LODWORD(v30) = 22;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_21:

        stateLock3 = [(SSObservable *)self stateLock];
        [stateLock3 unlock];
        goto LABEL_22;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v36, v30}];
      free(v22);
      SSFileLog(v16, @"%@", v23, v24, v25, v26, v27, v28, oSLogObject);
    }

    goto LABEL_21;
  }

  observers = [(SSObservable *)self observers];
  v7 = [observers copy];

  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlockWithCondition:1];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  stateLock3 = v7;
  v10 = [stateLock3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(stateLock3);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        sendMessageQueue = [(SSObservable *)self sendMessageQueue];
        [v14 _sendCompletionUsingQueue:sendMessageQueue];
      }

      v11 = [stateLock3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

LABEL_22:
  return condition != 1;
}

- (BOOL)sendFailure:(id)failure
{
  v42 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v18 = SSObservableLogConfig();
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v23 = v22;
      [(SSObservable *)self logKey];
      v38 = 138543618;
      v39 = v22;
      v41 = v40 = 2114;
      LODWORD(v32) = 22;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_21:

        stateLock3 = [(SSObservable *)self stateLock];
        [stateLock3 unlock];
        goto LABEL_22;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v38, v32}];
      free(v24);
      SSFileLog(v18, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject);
    }

    goto LABEL_21;
  }

  [(SSObservable *)self setFailureError:failureCopy];
  observers = [(SSObservable *)self observers];
  v9 = [observers copy];

  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlockWithCondition:1];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  stateLock3 = v9;
  v12 = [stateLock3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(stateLock3);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        sendMessageQueue = [(SSObservable *)self sendMessageQueue];
        [v16 _sendFailure:failureCopy usingQueue:sendMessageQueue];
      }

      v13 = [stateLock3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

LABEL_22:
  return condition != 1;
}

- (BOOL)sendResult:(id)result
{
  v98 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v8 = SSObservableLogConfig();
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = v12;
      [(SSObservable *)self logKey];
      v94 = 138543618;
      v95 = v12;
      v97 = v96 = 2114;
      LODWORD(v77) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        stateLock3 = [(SSObservable *)self stateLock];
        [stateLock3 unlock];
        v22 = 0;
        goto LABEL_58;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v94, v77}];
      free(v14);
      SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_13;
  }

  queuedResults = [(SSObservable *)self queuedResults];
  [queuedResults addObject:resultCopy];

  queuedResults2 = [(SSObservable *)self queuedResults];
  stateLock3 = [queuedResults2 copy];

  observers = [(SSObservable *)self observers];
  v26 = [observers copy];

  v82 = v26;
  v27 = [v26 count];
  v28 = SSObservableLogConfig();
  queuedResults3 = v28;
  if (!v27)
  {
    if (!v28)
    {
      queuedResults3 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [queuedResults3 shouldLog];
    if ([queuedResults3 shouldLogToDisk])
    {
      v47 = shouldLog2 | 2;
    }

    else
    {
      v47 = shouldLog2;
    }

    oSLogObject2 = [queuedResults3 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v49 = v47;
    }

    else
    {
      v49 = v47 & 2;
    }

    if (v49)
    {
      v50 = stateLock3;
      v51 = resultCopy;
      v52 = objc_opt_class();
      v53 = v52;
      logKey = [(SSObservable *)self logKey];
      v94 = 138543618;
      v95 = v52;
      v96 = 2114;
      v97 = logKey;
      LODWORD(v77) = 22;
      v76 = &v94;
      v55 = _os_log_send_and_compose_impl();

      if (v55)
      {
        v56 = [MEMORY[0x1E696AEC0] stringWithCString:v55 encoding:{4, &v94, v77}];
        free(v55);
        SSFileLog(queuedResults3, @"%@", v57, v58, v59, v60, v61, v62, v56);
      }

      resultCopy = v51;
      stateLock3 = v50;
    }

    else
    {
    }

    goto LABEL_41;
  }

  if (!v28)
  {
    queuedResults3 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [queuedResults3 shouldLog];
  if ([queuedResults3 shouldLogToDisk])
  {
    v31 = shouldLog3 | 2;
  }

  else
  {
    v31 = shouldLog3;
  }

  oSLogObject3 = [queuedResults3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    v33 = v31;
  }

  else
  {
    v33 = v31 & 2;
  }

  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = stateLock3;
  v35 = objc_opt_class();
  v36 = resultCopy;
  v37 = v35;
  logKey2 = [(SSObservable *)self logKey];
  v94 = 138543618;
  v95 = v35;
  stateLock3 = v34;
  v96 = 2114;
  v97 = logKey2;
  LODWORD(v77) = 22;
  v76 = &v94;
  v39 = _os_log_send_and_compose_impl();

  resultCopy = v36;
  if (v39)
  {
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:{4, &v94, v77}];
    free(v39);
    SSFileLog(queuedResults3, @"%@", v40, v41, v42, v43, v44, v45, oSLogObject3);
LABEL_26:
  }

  queuedResults3 = [(SSObservable *)self queuedResults];
  [queuedResults3 removeAllObjects];
LABEL_41:

  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlock];

  v64 = [v82 count];
  v22 = v64 != 0;
  if (v64)
  {
    v78 = stateLock3;
    v79 = resultCopy;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = stateLock3;
    v83 = [obj countByEnumeratingWithState:&v88 objects:v93 count:16];
    if (v83)
    {
      v81 = *v89;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v89 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v88 + 1) + 8 * i);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v67 = v82;
          v68 = [v67 countByEnumeratingWithState:&v84 objects:v92 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v85;
            do
            {
              for (j = 0; j != v69; ++j)
              {
                if (*v85 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = *(*(&v84 + 1) + 8 * j);
                v73 = [v66 copy];
                sendMessageQueue = [(SSObservable *)self sendMessageQueue];
                [v72 _sendResult:v73 usingQueue:sendMessageQueue];
              }

              v69 = [v67 countByEnumeratingWithState:&v84 objects:v92 count:16];
            }

            while (v69);
          }
        }

        v83 = [obj countByEnumeratingWithState:&v88 objects:v93 count:16];
      }

      while (v83);
    }

    stateLock3 = v78;
    resultCopy = v79;
    v22 = 1;
  }

LABEL_58:
  return v22;
}

- (void)subscribe:(id)subscribe
{
  v77 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v8 = SSObservableLogConfig();
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  observers = [(SSObservable *)self observers];
  v13 = [observers containsObject:subscribeCopy];

  if (v13)
  {
    v8 = SSObservableLogConfig();
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v15 = shouldLog2 | 2;
    }

    else
    {
      v15 = shouldLog2;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v15 &= 2u;
    }

    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_20:
    v16 = objc_opt_class();
    v17 = v16;
    [(SSObservable *)self logKey];
    v73 = 138543618;
    v74 = v16;
    v76 = v75 = 2114;
    LODWORD(v57) = 22;
    v18 = _os_log_send_and_compose_impl();

    if (!v18)
    {
LABEL_23:

      stateLock3 = [(SSObservable *)self stateLock];
      [stateLock3 unlock];
      goto LABEL_53;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v73, v57}];
    free(v18);
    SSFileLog(v8, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
LABEL_22:

    goto LABEL_23;
  }

  observers2 = [(SSObservable *)self observers];
  [observers2 addObject:subscribeCopy];

  queuedResults = [(SSObservable *)self queuedResults];
  v28 = [queuedResults copy];

  queuedResults2 = [(SSObservable *)self queuedResults];
  [queuedResults2 removeAllObjects];

  v58 = subscribeCopy;
  if (![v28 count])
  {
    v61 = 0;
    goto LABEL_38;
  }

  v30 = SSObservableLogConfig();
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    v32 = shouldLog3 | 2;
  }

  else
  {
    v32 = shouldLog3;
  }

  oSLogObject2 = [v30 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v32 &= 2u;
  }

  if (!v32)
  {
    goto LABEL_35;
  }

  v34 = objc_opt_class();
  v35 = v34;
  logKey = [(SSObservable *)self logKey];
  v73 = 138543618;
  v74 = v34;
  v75 = 2114;
  v76 = logKey;
  LODWORD(v57) = 22;
  v56 = &v73;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v73, v57}];
    free(v37);
    SSFileLog(v30, @"%@", v38, v39, v40, v41, v42, v43, oSLogObject2);
LABEL_35:
  }

  observers3 = [(SSObservable *)self observers];
  v61 = [observers3 copy];

LABEL_38:
  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlock];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  stateLock3 = v28;
  v62 = [stateLock3 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v62)
  {
    obj = stateLock3;
    v60 = *v68;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v68 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v67 + 1) + 8 * i);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v48 = v61;
        v49 = [v48 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v64;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v64 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v63 + 1) + 8 * j);
              v54 = [v47 copy];
              sendMessageQueue = [(SSObservable *)self sendMessageQueue];
              [v53 _sendResult:v54 usingQueue:sendMessageQueue];
            }

            v50 = [v48 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v50);
        }
      }

      stateLock3 = obj;
      v62 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v62);
  }

  subscribeCopy = v58;
LABEL_53:
}

+ (BOOL)_errorIsCanceledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isComplete
{
  stateLock = [(SSObservable *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

@end