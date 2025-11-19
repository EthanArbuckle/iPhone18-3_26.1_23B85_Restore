@interface IntentRouter
- (IntentRouter)init;
- (id)existingHandlerForIntentIdentifier:(id)a3;
- (id)handlerForIntent:(id)a3;
- (void)registerForProvider;
- (void)transactionDidCompleteForIntentIdentifier:(id)a3;
- (void)updateRecentlyUsedHandlersWithHandler:(id)a3;
@end

@implementation IntentRouter

- (IntentRouter)init
{
  v7.receiver = self;
  v7.super_class = IntentRouter;
  v2 = [(IntentRouter *)&v7 init];
  if (v2)
  {
    v3 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FC90(v3);
    }

    v4 = objc_alloc_init(NSMutableArray);
    recentIntentHandlersAndIdentifiers = v2->_recentIntentHandlersAndIdentifiers;
    v2->_recentIntentHandlersAndIdentifiers = v4;
  }

  [(IntentRouter *)v2 registerForProvider];
  return v2;
}

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(IntentRouter *)self existingHandlerForIntentIdentifier:v5];

  if (v6)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = StartCallIntentHandler;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = IntentHandlerDefaultLog();
      v11 = os_signpost_id_generate(v10);

      v12 = IntentHandlerDefaultLog();
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v23) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HangUpIntentHandlerWaitForProvider", " enableTelemetry=YES ", &v23, 2u);
      }

      group = self->_group;
      v15 = dispatch_time(0, 1000000000);
      if (dispatch_group_wait(group, v15))
      {
        v16 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 134217984;
          v24 = 1;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "registerForCallbacksForProvider did not complete before the %ld second timeout.", &v23, 0xCu);
        }
      }

      v17 = IntentHandlerDefaultLog();
      v18 = v17;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        LOWORD(v23) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v11, "HangUpIntentHandlerWaitForProvider", "", &v23, 2u);
      }

      v9 = HangUpCallIntentHandler;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = PlayVoicemailIntentHandler;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = JoinCallIntentHandler;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = AddCallParticipantIntentHandler;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = SearchCallHistoryIntentHandler;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v9 = AnswerCallIntentHandler;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v22 = IntentHandlerDefaultLog();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    sub_10002FCD4();
                  }

                  goto LABEL_38;
                }

                v9 = IdentifyIncomingCallerIntentHandler;
              }
            }
          }
        }
      }
    }
  }

  v19 = objc_alloc_init(v9);
  if (!v19)
  {
LABEL_38:
    v6 = 0;
    goto LABEL_3;
  }

  v20 = [IntentHandlerAndIdentifier alloc];
  v21 = [v4 identifier];
  v6 = [(IntentHandlerAndIdentifier *)v20 initWithHandler:v19 intentIdentifier:v21];

  if (v6)
  {
LABEL_2:
    [(IntentRouter *)self updateRecentlyUsedHandlersWithHandler:v6];
  }

LABEL_3:
  v7 = [(IntentHandlerAndIdentifier *)v6 handler];

  return v7;
}

- (void)transactionDidCompleteForIntentIdentifier:(id)a3
{
  v4 = [(IntentRouter *)self existingHandlerForIntentIdentifier:a3];
  v3 = [v4 handler];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 endPlayback];
  }
}

- (id)existingHandlerForIntentIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v14 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Intent does not have an identifier set. Creating new handler.", buf, 2u);
    }

    v7 = 0;
    goto LABEL_20;
  }

  v5 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 intentIdentifier];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v13 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_10002FD48();
          }

          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  objc_sync_exit(v5);
  if (!v7)
  {
    v14 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FDBC();
    }

LABEL_20:
  }

  return v7;
}

- (void)updateRecentlyUsedHandlersWithHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 intentIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
    objc_sync_enter(v7);
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000D3EC;
    v19 = &unk_10004CED8;
    v9 = v4;
    v20 = v9;
    v21 = buf;
    [v8 enumerateObjectsUsingBlock:&v16];

    v10 = *(v23 + 3);
    if (v10)
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers:v16];
        [v11 removeObjectAtIndex:*(v23 + 3)];
      }

      v12 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers:v16];
      [v12 insertObject:v9 atIndex:0];

      v13 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
      v14 = [v13 count];

      if (v14 >= 6)
      {
        v15 = [(IntentRouter *)self recentIntentHandlersAndIdentifiers];
        [v15 removeLastObject];
      }
    }

    _Block_object_dispose(buf, 8);
    objc_sync_exit(v7);
  }

  else
  {
    v7 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Attempting to update recently used intent handler cache for an intent with no intentIdentifier. Ignoring.", buf, 2u);
    }
  }
}

- (void)registerForProvider
{
  v3 = objc_alloc_init(TUConversationProviderManager);
  conversationProviderManager = self->_conversationProviderManager;
  self->_conversationProviderManager = v3;

  v5 = dispatch_group_create();
  group = self->_group;
  self->_group = v5;

  dispatch_group_enter(self->_group);
  v7 = IntentHandlerDefaultLog();
  v8 = os_signpost_id_generate(v7);

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HangUpIntentHandlerRegisterForProvider", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering for drop-in calls", buf, 2u);
  }

  v12 = self->_conversationProviderManager;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D5EC;
  v13[3] = &unk_10004CF00;
  v13[4] = self;
  v13[5] = v8;
  [(TUConversationProviderManager *)v12 registerForCallbacksForProvider:@"com.apple.private.alloy.dropin.communication" completionHandler:v13];
}

@end