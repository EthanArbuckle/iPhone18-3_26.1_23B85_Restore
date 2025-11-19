@interface DaemonProtocolDataProvider
- (BOOL)processDictionary:(id)a3 error:(id *)a4;
- (void)_presentDialog:(id)a3;
- (void)dealloc;
@end

@implementation DaemonProtocolDataProvider

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DaemonProtocolDataProvider;
  [(DaemonProtocolDataProvider *)&v3 dealloc];
}

- (void)_presentDialog:(id)a3
{
  v4 = [[DaemonDialogOperation alloc] initWithDialog:a3];
  -[DaemonDialogOperation setDisplaysOnLockscreen:](v4, "setDisplaysOnLockscreen:", [-[DaemonProtocolDataProvider authenticationContext](self "authenticationContext")]);
  [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
}

- (BOOL)processDictionary:(id)a3 error:(id *)a4
{
  v7 = [self->_willBeginProcessingDictionaryHandler copy];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();
  }

  v26 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v21.receiver = self;
  v21.super_class = DaemonProtocolDataProvider;
  v25 = [(DaemonProtocolDataProvider *)&v21 processDictionary:a3 error:&v26];
  v9 = SSErrorSessionPropertyFailureType;
  v10 = [a3 objectForKey:SSErrorSessionPropertyFailureType];
  if (v10)
  {
    v11 = objc_alloc_init(ErrorHandlerSession);
    [(ErrorHandlerSession *)v11 setValue:v10 forSessionProperty:v9];
    v12 = 0;
    v27[0] = SSErrorSessionPropertyCustomerMessage;
    v27[1] = SSErrorSessionPropertyCustomerMessageTitle;
    v27[2] = SSErrorSessionPropertyNextActionURL;
    v27[3] = SSErrorSessionPropertyFailureClientInfo;
    do
    {
      v13 = v27[v12];
      v14 = [a3 objectForKey:v13];
      if (v14)
      {
        [(ErrorHandlerSession *)v11 setValue:v14 forSessionProperty:v13];
      }

      ++v12;
    }

    while (v12 != 4);
    v15 = dispatch_semaphore_create(0);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002102D4;
    v20[3] = &unk_10032C530;
    v20[5] = v15;
    v20[6] = &v22;
    v20[4] = self;
    [+[ErrorHandlerManager errorHandlerManager](ErrorHandlerManager "errorHandlerManager")];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v15);
  }

  v16 = [(DaemonProtocolDataProvider *)self authenticatedAccountDSID];
  if (!v16)
  {
    v16 = [-[DaemonProtocolDataProvider authenticationContext](self "authenticationContext")];
    if (!v16)
    {
      v16 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    }
  }

  [SSVSubscriptionStatusCoordinator updateWithResponseDictionary:a3 accountIdentifier:v16];
  v17 = v23;
  v18 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v26;
    v18 = *(v17 + 24);
  }

  _Block_object_dispose(&v22, 8);
  return v18 & 1;
}

@end