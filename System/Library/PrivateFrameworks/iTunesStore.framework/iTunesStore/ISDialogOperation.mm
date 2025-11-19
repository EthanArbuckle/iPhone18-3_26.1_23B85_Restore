@interface ISDialogOperation
+ (id)operationWithDialog:(id)a3;
+ (id)operationWithError:(id)a3;
- (ISDialogOperation)init;
- (NSArray)textFieldValues;
- (void)_handleResponseForNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4;
- (void)_run;
- (void)_showUserNotification:(id)a3;
- (void)_waitForUserNotificationResponse:(__CFUserNotification *)a3;
- (void)cancel;
- (void)dealloc;
- (void)handleButtonSelected:(int64_t)a3 withResponseDictionary:(id)a4;
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
  v3 = [(ISDialogOperation *)self userNotification];
  if (v3)
  {
    CFUserNotificationCancel(v3);
  }

  [(ISDialogOperation *)self setUserNotification:0];

  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  [(ISDialogOperation *)&v4 dealloc];
}

+ (id)operationWithDialog:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDialog:a3];

  return v4;
}

+ (id)operationWithError:(id)a3
{
  v4 = [[ISDialog alloc] initWithError:a3];
  v5 = [a1 operationWithDialog:v4];

  return v5;
}

- (void)handleButtonSelected:(int64_t)a3 withResponseDictionary:(id)a4
{
  v7 = [(ISOperation *)self delegate];
  v8 = [[(ISDialogOperation *)self dialog] buttons];
  if ([(NSArray *)v8 count]<= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSArray *)v8 objectAtIndex:a3];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ISOperationDelegate *)v7 operation:self selectedButton:v9];
  }

  else if ([(ISDialogOperation *)self performDefaultActions])
  {
    [v9 performDefaultActionForDialog:{-[ISDialogOperation dialog](self, "dialog")}];
  }

  [(ISDialogOperation *)self setSelectedButton:v9];
  [(ISOperation *)self lock];
  v10 = [a4 objectForKey:*MEMORY[0x277CBF238]];

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
  v3 = [(ISDialogOperation *)self userNotification];
  if (v3)
  {
    CFUserNotificationCancel(v3);
  }

  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  [(ISOperation *)&v4 cancel];
}

- (void)run
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(ISOperation *)self copySerializationLocks];
  v4 = v3;
  if (v3)
  {
    [v3 makeObjectsPerformSelector:sel_lock];
    v5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = [(ISOperation *)self serializationLockIdentifiers];
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
    v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v12 = [v11 shouldLog];
    v13 = [v11 shouldLogToDisk];
    v14 = [v11 OSLogObject];
    if (v13)
    {
      v12 |= 2u;
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v15 = objc_opt_class();
      v16 = [(ISOperation *)self serializationLockIdentifiers];
      v23 = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
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

- (void)_handleResponseForNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4
{
  v7 = [(NSArray *)[[(ISDialogOperation *)self dialog] buttons] count];
  if (v7 == 3)
  {
    v8 = [ISDialog buttonTitleKeyForCFUserNotificationButtonTag:a4 & 3];
    if (v8)
    {
      v9 = [-[ISDialog orderedButtonTitleKeysForCFUserNotification](-[ISDialogOperation dialog](self "dialog")];
      goto LABEL_14;
    }
  }

  else if (a4 != 3)
  {
    v10 = v7;
    if (a4 == 2)
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

    else if (a4)
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
  ResponseDictionary = CFUserNotificationGetResponseDictionary(a3);

  [(ISDialogOperation *)self handleButtonSelected:v9 withResponseDictionary:ResponseDictionary];
}

- (void)_run
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(ISDialogOperation *)self dialog];
  if (v3 && (v4 = v3, [(ISDialog *)v3 isDisplayable]))
  {
    v5 = NSClassFromString(&cfstr_Dialogmanager.isa);
    v6 = [(ISDialog *)v4 copyUserNotification];
    if (v6)
    {
      if (!v5 || ([(objc_class *)v5 checkInDialog:v4]& 1) != 0 || [(ISDialog *)v4 allowDuplicates])
      {
        v7 = +[ISDevice sharedInstance];
        v8 = [(ISOperation *)self copyActivePowerAssertionIdentifiers];
        v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v47 = 138412546;
          v48 = objc_opt_class();
          v49 = 2048;
          v50 = [v8 count];
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
        v15 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:{16, v35}];
        if (v15)
        {
          v16 = *v42;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(v8);
              }

              [(ISDevice *)v7 releasePowerAssertion:*(*(&v41 + 1) + 8 * i)];
            }

            v15 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v15);
        }

        v18 = [NSClassFromString(&cfstr_Daemon.isa) daemon];
        [v18 beginShowingDialog];
        [(ISDialogOperation *)self _showUserNotification:v6];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v19)
        {
          v20 = *v38;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v38 != v20)
              {
                objc_enumerationMutation(v8);
              }

              [(ISDevice *)v7 takePowerAssertion:*(*(&v37 + 1) + 8 * j)];
            }

            v19 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v19);
        }

        [(objc_class *)v5 checkOutDialog:v4];
        [v18 endShowingDialog];
      }

      else
      {
        v28 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v28)
        {
          v28 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v29 = [v28 shouldLog];
        if ([v28 shouldLogToDisk])
        {
          v30 = v29 | 2;
        }

        else
        {
          v30 = v29;
        }

        if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_INFO))
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
    v22 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v22)
    {
      v22 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_INFO))
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

- (void)_showUserNotification:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [a3 copyUserNotification];
  if (v5)
  {
    v6 = v5;
    [(ISDialogOperation *)self setUserNotification:v5];
    [(ISDialogOperation *)self _waitForUserNotificationResponse:v6];
    [(ISDialogOperation *)self setUserNotification:0];
    v7 = *MEMORY[0x277D85DE8];

    CFRelease(v6);
  }

  else
  {
    v8 = [a3 currentRetryCount];
    v9 = [a3 allowedRetryCount];
    v10 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    v11 = v10;
    if (v8 >= v9)
    {
      if (!v10)
      {
        v11 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v17 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v18 = v17 | 2;
      }

      else
      {
        v18 = v17;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      if (!v10)
      {
        v11 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

      [a3 setCurrentRetryCount:{objc_msgSend(a3, "currentRetryCount", v22) + 1}];
      [MEMORY[0x277CCACC8] sleepForTimeInterval:3.0];
      [(ISDialogOperation *)self _showUserNotification:a3];
    }

    v21 = *MEMORY[0x277D85DE8];
  }
}

- (void)_waitForUserNotificationResponse:(__CFUserNotification *)a3
{
  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(a3, 0.0, &responseFlags))
  {
    [(ISDialogOperation *)self _handleResponseForNotification:a3 responseFlags:responseFlags];
    [[(ISDialogOperation *)self dialog] incrementDisplayCount];
    [(ISOperation *)self setSuccess:1];
  }
}

@end