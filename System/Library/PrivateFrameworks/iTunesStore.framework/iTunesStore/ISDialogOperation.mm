@interface ISDialogOperation
+ (id)operationWithDialog:(id)dialog;
+ (id)operationWithError:(id)error;
- (ISDialogOperation)init;
- (NSArray)textFieldValues;
- (void)_handleResponseForNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags;
- (void)_run;
- (void)_showUserNotification:(id)notification;
- (void)_waitForUserNotificationResponse:(__CFUserNotification *)response;
- (void)cancel;
- (void)dealloc;
- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary;
- (void)run;
@end

@implementation ISDialogOperation

- (ISDialogOperation)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  result = [(ISOperation *)&v4 init];
  if (result)
  {
    result->_performDefaultActions = 1;
  }

  return result;
}

- (void)dealloc
{
  [(ISDialogOperation *)self setDialog:0];
  [(ISDialogOperation *)self setSelectedButton:0];
  userNotification = [(ISDialogOperation *)self userNotification];
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
  }

  [(ISDialogOperation *)self setUserNotification:0];

  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  [(ISDialogOperation *)&v4 dealloc];
}

+ (id)operationWithDialog:(id)dialog
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDialog:dialog];

  return v4;
}

+ (id)operationWithError:(id)error
{
  v4 = [[ISDialog alloc] initWithError:error];
  v5 = [self operationWithDialog:v4];

  return v5;
}

- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary
{
  delegate = [(ISOperation *)self delegate];
  buttons = [[(ISDialogOperation *)self dialog] buttons];
  if ([(NSArray *)buttons count]<= selected)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSArray *)buttons objectAtIndex:selected];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ISOperationDelegate *)delegate operation:self selectedButton:v9];
  }

  else if ([(ISDialogOperation *)self performDefaultActions])
  {
    [v9 performDefaultActionForDialog:{-[ISDialogOperation dialog](self, "dialog")}];
  }

  [(ISDialogOperation *)self setSelectedButton:v9];
  [(ISOperation *)self lock];
  v10 = [dictionary objectForKey:*MEMORY[0x277CBF238]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
    }

    else
    {
      v11 = 0;
    }
  }

  self->_textFieldValues = v11;
  [(ISOperation *)self unlock];

  [(ISOperation *)self setSuccess:1];
}

- (NSArray)textFieldValues
{
  [(ISOperation *)self lock];
  v3 = self->_textFieldValues;
  [(ISOperation *)self unlock];
  return v3;
}

- (void)cancel
{
  userNotification = [(ISDialogOperation *)self userNotification];
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
  }

  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  [(ISOperation *)&v4 cancel];
}

- (void)run
{
  v27 = *MEMORY[0x277D85DE8];
  copySerializationLocks = [(ISOperation *)self copySerializationLocks];
  v4 = copySerializationLocks;
  if (copySerializationLocks)
  {
    [copySerializationLocks makeObjectsPerformSelector:sel_lock];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      serializationLockIdentifiers = [(ISOperation *)self serializationLockIdentifiers];
      LODWORD(v22) = 22;
      v21 = &v23;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v23, v22}];
        free(v9);
        v21 = v10;
        SSFileLog();
      }
    }

    [(ISOperation *)self sendDidTakeSerializationLocks];
  }

  [(ISDialogOperation *)self _run];
  if (v4)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v15 = objc_opt_class();
      serializationLockIdentifiers2 = [(ISOperation *)self serializationLockIdentifiers];
      v23 = 138412546;
      v24 = v15;
      v25 = 2112;
      serializationLockIdentifiers = serializationLockIdentifiers2;
      LODWORD(v22) = 22;
      v21 = &v23;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v23, v22}];
        free(v18);
        v21 = v19;
        SSFileLog();
      }
    }

    [v4 makeObjectsPerformSelector:{sel_unlock, v21}];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseForNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags
{
  v7 = [(NSArray *)[[(ISDialogOperation *)self dialog] buttons] count];
  if (v7 == 3)
  {
    v8 = [ISDialog buttonTitleKeyForCFUserNotificationButtonTag:flags & 3];
    if (v8)
    {
      v9 = [-[ISDialog orderedButtonTitleKeysForCFUserNotification](-[ISDialogOperation dialog](self "dialog")];
      goto LABEL_14;
    }
  }

  else if (flags != 3)
  {
    v10 = v7;
    if (flags == 2)
    {
      if ([MEMORY[0x277D69A80] deviceIsAppleTV] || !-[ISDialog noDefaultButton](self->_dialog, "noDefaultButton"))
      {
        v9 = v10 - 2;
      }

      else
      {
        v9 = v10 - 1;
      }
    }

    else if (flags)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 - 1;
    }

    goto LABEL_14;
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
  ResponseDictionary = CFUserNotificationGetResponseDictionary(notification);

  [(ISDialogOperation *)self handleButtonSelected:v9 withResponseDictionary:ResponseDictionary];
}

- (void)_run
{
  v51 = *MEMORY[0x277D85DE8];
  dialog = [(ISDialogOperation *)self dialog];
  if (dialog && (v4 = dialog, [(ISDialog *)dialog isDisplayable]))
  {
    v5 = NSClassFromString(&cfstr_Dialogmanager.isa);
    copyUserNotification = [(ISDialog *)v4 copyUserNotification];
    if (copyUserNotification)
    {
      if (!v5 || ([(objc_class *)v5 checkInDialog:v4]& 1) != 0 || [(ISDialog *)v4 allowDuplicates])
      {
        v7 = +[ISDevice sharedInstance];
        copyActivePowerAssertionIdentifiers = [(ISOperation *)self copyActivePowerAssertionIdentifiers];
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          v11 = shouldLog | 2;
        }

        else
        {
          v11 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v47 = 138412546;
          v48 = objc_opt_class();
          v49 = 2048;
          v50 = [copyActivePowerAssertionIdentifiers count];
          LODWORD(v36) = 22;
          v35 = &v47;
          v12 = _os_log_send_and_compose_impl();
          if (v12)
          {
            v13 = v12;
            v14 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v47, v36}];
            free(v13);
            v35 = v14;
            SSFileLog();
          }
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v15 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v41 objects:v46 count:{16, v35}];
        if (v15)
        {
          v16 = *v42;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(copyActivePowerAssertionIdentifiers);
              }

              [(ISDevice *)v7 releasePowerAssertion:*(*(&v41 + 1) + 8 * i)];
            }

            v15 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v15);
        }

        daemon = [NSClassFromString(&cfstr_Daemon.isa) daemon];
        [daemon beginShowingDialog];
        [(ISDialogOperation *)self _showUserNotification:copyUserNotification];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v19)
        {
          v20 = *v38;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v38 != v20)
              {
                objc_enumerationMutation(copyActivePowerAssertionIdentifiers);
              }

              [(ISDevice *)v7 takePowerAssertion:*(*(&v37 + 1) + 8 * j)];
            }

            v19 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v19);
        }

        [(objc_class *)v5 checkOutDialog:v4];
        [daemon endShowingDialog];
      }

      else
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
        if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
        {
          v30 = shouldLog2 | 2;
        }

        else
        {
          v30 = shouldLog2;
        }

        if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v30 &= 2u;
        }

        if (v30)
        {
          v47 = 138412290;
          v48 = objc_opt_class();
          LODWORD(v36) = 12;
          v35 = &v47;
          v31 = _os_log_send_and_compose_impl();
          if (v31)
          {
            v32 = v31;
            v33 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v47, v36}];
            free(v32);
            v35 = v33;
            SSFileLog();
          }
        }

        [(ISOperation *)self setSuccess:1, v35];
      }
    }

    else
    {
      [(ISOperation *)self setError:ISError(2, 0, 0)];
    }
  }

  else
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v24 = shouldLog3 | 2;
    }

    else
    {
      v24 = shouldLog3;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38]3 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v47 = 138412290;
      v48 = objc_opt_class();
      LODWORD(v36) = 12;
      v35 = &v47;
      v25 = _os_log_send_and_compose_impl();
      if (v25)
      {
        v26 = v25;
        v27 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, &v47, v36}];
        free(v26);
        v35 = v27;
        SSFileLog();
      }
    }

    [(ISOperation *)self setSuccess:1, v35];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_showUserNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  copyUserNotification = [notification copyUserNotification];
  if (copyUserNotification)
  {
    v6 = copyUserNotification;
    [(ISDialogOperation *)self setUserNotification:copyUserNotification];
    [(ISDialogOperation *)self _waitForUserNotificationResponse:v6];
    [(ISDialogOperation *)self setUserNotification:0];
    v7 = *MEMORY[0x277D85DE8];

    CFRelease(v6);
  }

  else
  {
    currentRetryCount = [notification currentRetryCount];
    allowedRetryCount = [notification allowedRetryCount];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
    if (currentRetryCount >= allowedRetryCount)
    {
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v18 = shouldLog | 2;
      }

      else
      {
        v18 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v24 = 138412290;
        v25 = objc_opt_class();
        LODWORD(v23) = 12;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v24, v23}];
          free(v20);
          SSFileLog();
        }
      }

      [(ISOperation *)self setError:ISError(2, 0, 0)];
    }

    else
    {
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v13 = shouldLog2 | 2;
      }

      else
      {
        v13 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x277D69B38]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v24 = 138412290;
        v25 = objc_opt_class();
        LODWORD(v23) = 12;
        v22 = &v24;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v24, v23}];
          free(v15);
          v22 = v16;
          SSFileLog();
        }
      }

      [notification setCurrentRetryCount:{objc_msgSend(notification, "currentRetryCount", v22) + 1}];
      [MEMORY[0x277CCACC8] sleepForTimeInterval:3.0];
      [(ISDialogOperation *)self _showUserNotification:notification];
    }

    v21 = *MEMORY[0x277D85DE8];
  }
}

- (void)_waitForUserNotificationResponse:(__CFUserNotification *)response
{
  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(response, 0.0, &responseFlags))
  {
    [(ISDialogOperation *)self _handleResponseForNotification:response responseFlags:responseFlags];
    [[(ISDialogOperation *)self dialog] incrementDisplayCount];
    [(ISOperation *)self setSuccess:1];
  }
}

@end