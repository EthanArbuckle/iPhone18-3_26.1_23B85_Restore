@interface SUScriptNotificationObserver
- (SUScriptNotificationObserver)init;
- (id)_copySafariQueryDictionaryFromURL:(id)l;
- (void)_beginObservingNotifications;
- (void)_dispatchEvent:(id)event forName:(id)name;
- (void)_dispatchEventWithDictionary:(id)dictionary forName:(id)name;
- (void)_dispatchSafariEventWithDictionary:(id)dictionary andIdentifier:(id)identifier;
- (void)_endObservingNotifications;
- (void)_enumerateReceiversUsingBlock:(id)block;
- (void)_purchaseRequestDidSucceedNotification:(id)notification;
- (void)_safariViewControllerDataUpdate:(id)update;
- (void)_subscriptionStatusDidChangeNotification:(id)notification;
- (void)addEventReceiver:(id)receiver;
- (void)dealloc;
- (void)removeEventReceiver:(id)receiver;
@end

@implementation SUScriptNotificationObserver

- (SUScriptNotificationObserver)init
{
  v4.receiver = self;
  v4.super_class = SUScriptNotificationObserver;
  v2 = [(SUScriptNotificationObserver *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  [(SUScriptNotificationObserver *)self _endObservingNotifications];

  self->_lock = 0;
  receivers = self->_receivers;
  if (receivers)
  {
    CFRelease(receivers);
    self->_receivers = 0;
  }

  v4.receiver = self;
  v4.super_class = SUScriptNotificationObserver;
  [(SUScriptNotificationObserver *)&v4 dealloc];
}

- (void)addEventReceiver:(id)receiver
{
  [(NSLock *)self->_lock lock];
  receivers = self->_receivers;
  if (!receivers)
  {
    receivers = CFSetCreateMutable(0, 0, 0);
    self->_receivers = receivers;
  }

  CFSetAddValue(receivers, receiver);
  if (CFSetGetCount(self->_receivers) == 1)
  {
    [(SUScriptNotificationObserver *)self _beginObservingNotifications];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeEventReceiver:(id)receiver
{
  [(NSLock *)self->_lock lock];
  receivers = self->_receivers;
  if (receivers)
  {
    CFSetRemoveValue(receivers, receiver);
    if (!CFSetGetCount(self->_receivers))
    {
      [(SUScriptNotificationObserver *)self _endObservingNotifications];
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_purchaseRequestDidSucceedNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(notification "userInfo")];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 "URLResponse")];
    if (v6)
    {
      v7 = [objc_msgSend(MEMORY[0x1E69D4A28] "consumer")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 objectForKey:@"metrics"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
          shouldLog = [mEMORY[0x1E69D4938] shouldLog];
          if ([mEMORY[0x1E69D4938] shouldLogToDisk])
          {
            v11 = shouldLog | 2;
          }

          else
          {
            v11 = shouldLog;
          }

          if (os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 2;
          }

          if (v12)
          {
            *v31 = 138412290;
            *&v31[4] = self;
            LODWORD(v30) = 12;
            v29 = v31;
            v13 = _os_log_send_and_compose_impl();
            if (v13)
            {
              v14 = v13;
              v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v31, v30}];
              free(v14);
              v29 = v15;
              SSFileLog();
            }
          }

          [(SUScriptNotificationObserver *)self _dispatchEventWithDictionary:v8 forName:@"buyConfirmed", v29];
        }

        return;
      }

      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v26 = shouldLog2 | 2;
      }

      else
      {
        v26 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v26 &= 2u;
      }

      if (v26)
      {
        goto LABEL_36;
      }
    }

    else
    {
      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
      if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
      {
        v23 = shouldLog3 | 2;
      }

      else
      {
        v23 = shouldLog3;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v23 &= 2u;
      }

      if (v23)
      {
LABEL_36:
        *v31 = 138412546;
        *&v31[4] = objc_opt_class();
        *&v31[12] = 2112;
        *&v31[14] = v5;
        LODWORD(v30) = 22;
        v27 = _os_log_send_and_compose_impl();
        if (!v27)
        {
          return;
        }

        v28 = v27;
        [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, v31, v30, *v31, *&v31[16]}];
        free(v28);
        goto LABEL_38;
      }
    }
  }

  else
  {
    mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog4 = [mEMORY[0x1E69D4938]4 shouldLog];
    if ([mEMORY[0x1E69D4938]4 shouldLogToDisk])
    {
      v18 = shouldLog4 | 2;
    }

    else
    {
      v18 = shouldLog4;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]4 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      *v31 = 138412546;
      *&v31[4] = objc_opt_class();
      *&v31[12] = 2112;
      *&v31[14] = 0;
      LODWORD(v30) = 22;
      v19 = _os_log_send_and_compose_impl();
      if (v19)
      {
        v20 = v19;
        [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, v31, v30}];
        free(v20);
LABEL_38:
        SSFileLog();
      }
    }
  }
}

- (void)_subscriptionStatusDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v5 = [[SUScriptDictionary alloc] initWithDictionary:userInfo];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(SUScriptNotificationObserver *)self _dispatchEvent:v5 forName:@"subscriptionstatuschange"];
}

- (void)_safariViewControllerDataUpdate:(id)update
{
  object = [update object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SUScriptNotificationObserver *)self _copySafariQueryDictionaryFromURL:object];
    v5 = [v6 objectForKey:@"safariid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUScriptNotificationObserver *)self _dispatchSafariEventWithDictionary:v6 andIdentifier:v5];
    }
  }
}

- (id)_copySafariQueryDictionaryFromURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name=%@", @"action"];
  v5 = [objc_msgSend(v3 "queryItems")];
  v6 = [objc_msgSend(v5 filteredArrayUsingPredicate:{v4), "firstObject"}];
  v7 = [MEMORY[0x1E695E0F8] mutableCopy];
  [v5 removeObject:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v5);
        }

        [v7 setObject:objc_msgSend(*(*(&v14 + 1) + 8 * v11) forKey:{"value"), objc_msgSend(*(*(&v14 + 1) + 8 * v11), "name")}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [v7 copy];
  return v12;
}

- (void)_dispatchSafariEventWithDictionary:(id)dictionary andIdentifier:(id)identifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__SUScriptNotificationObserver__dispatchSafariEventWithDictionary_andIdentifier___block_invoke;
  v4[3] = &unk_1E8165460;
  v4[4] = identifier;
  v4[5] = dictionary;
  v4[6] = self;
  [(SUScriptNotificationObserver *)self _enumerateReceiversUsingBlock:v4];
}

void __81__SUScriptNotificationObserver__dispatchSafariEventWithDictionary_andIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_msgSend(a2 "safariViewControllerIdentifier")])
    {
      v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:*(a1 + 40) options:0 error:0];
      if (v4)
      {
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
        v6 = [MEMORY[0x1E69D4938] sharedConfig];
        v7 = [v6 shouldLog];
        if ([v6 shouldLogToDisk])
        {
          v8 = v7 | 2;
        }

        else
        {
          v8 = v7;
        }

        if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 2;
        }

        if (v9)
        {
          v15 = 138412290;
          v16 = v5;
          LODWORD(v14) = 12;
          v13 = &v15;
          v10 = _os_log_send_and_compose_impl();
          if (v10)
          {
            v11 = v10;
            v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v15, v14}];
            free(v11);
            v13 = v12;
            SSFileLog();
          }
        }

        [*(a1 + 48) _dispatchEvent:v5 forName:{@"safariviewcontrollerdataupdate", v13}];
      }
    }
  }
}

- (void)_beginObservingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter addObserver:self selector:sel__networkTypeChangedNotification_ name:*MEMORY[0x1E69E46E0] object:0];
  [defaultCenter addObserver:self selector:sel__audioSessionsChangedNotification_ name:@"SUAudioPlayerSessionsChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__purchaseRequestDidSucceedNotification_ name:@"SUPurchaseRequestDidSucceedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__memoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];
  [defaultCenter addObserver:self selector:sel__storeBagDidChangeNotification_ name:@"SUScriptStoreBagDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__subscriptionStatusDidChangeNotification_ name:@"SUScriptSubscriptionStatusDidChangeNotification" object:{+[SUScriptSubscriptionStatusObserver sharedObserver](SUScriptSubscriptionStatusObserver, "sharedObserver")}];
  [defaultCenter addObserver:self selector:sel__safariViewControllerDataUpdate_ name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];
  [MEMORY[0x1E69E47D0] startObservingNotifications];
  v4 = *MEMORY[0x1E69E4700];

  [defaultCenter addObserver:self selector:sel__softwareMapChangedNotification_ name:v4 object:0];
}

- (void)_dispatchEvent:(id)event forName:(id)name
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SUScriptNotificationObserver__dispatchEvent_forName___block_invoke;
  v4[3] = &unk_1E8165488;
  v4[4] = event;
  v4[5] = name;
  [(SUScriptNotificationObserver *)self _enumerateReceiversUsingBlock:v4];
}

- (void)_dispatchEventWithDictionary:(id)dictionary forName:(id)name
{
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:?])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:0];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      [(SUScriptNotificationObserver *)self _dispatchEvent:v8 forName:name];
    }
  }

  else
  {
    NSLog(&cfstr_UnableToSerial_0.isa, name, dictionary);
  }
}

- (void)_endObservingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46E0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4700] object:0];
  [defaultCenter removeObserver:self name:@"SUAudioPlayerSessionsChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUPurchaseRequestDidSucceedNotification" object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];
  [defaultCenter removeObserver:self name:@"SUScriptStoreBagDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUScriptSubscriptionStatusDidChangeNotification" object:{+[SUScriptSubscriptionStatusObserver sharedObserver](SUScriptSubscriptionStatusObserver, "sharedObserver")}];

  [defaultCenter removeObserver:self name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];
}

- (void)_enumerateReceiversUsingBlock:(id)block
{
  [(NSLock *)self->_lock lock];
  if (self->_receivers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    CFSetApplyFunction(self->_receivers, __AddObjectToNSMutableSet, v7);
    [(NSLock *)self->_lock unlock];
    if (v7)
    {
      selfCopy = self;
      [v7 enumerateObjectsUsingBlock:block];
    }
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

@end