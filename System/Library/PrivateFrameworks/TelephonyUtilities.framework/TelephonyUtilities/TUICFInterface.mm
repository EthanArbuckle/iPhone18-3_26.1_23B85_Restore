@interface TUICFInterface
+ (id)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier;
+ (void)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler;
@end

@implementation TUICFInterface

+ (id)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = objc_alloc_init(TUICFQueryResult);
  v9 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__TUICFInterface_allowCallForDestinationID_providerIdentifier___block_invoke;
  v18[3] = &unk_1E74277E0;
  v10 = v8;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  [self allowCallForDestinationID:dCopy providerIdentifier:identifierCopy queue:0 completionHandler:v18];

  v12 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = TUDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 0;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Timed out waiting for ICFCallProviderShouldAllowIncomingCall(). Defaulting to allowCall=YES, fromBlockList=NO", v17, 2u);
    }

    [(TUICFQueryResult *)v10 setAllowCallForDestinationID:1];
    [(TUICFQueryResult *)v10 setFromBlockList:0];
  }

  v14 = v20;
  v15 = v10;

  return v10;
}

intptr_t __63__TUICFInterface_allowCallForDestinationID_providerIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setAllowCallForDestinationID:a2];
  [*(a1 + 32) setFromBlockList:a3];
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

+ (void)allowCallForDestinationID:(id)d providerIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  ICFCallProviderShouldAllowIncomingCallWithQueue();
}

@end