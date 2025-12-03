@interface AskPermissionActionOperation
- (AskPermissionActionOperation)initWithURL:(id)l account:(id)account;
- (void)run;
@end

@implementation AskPermissionActionOperation

- (AskPermissionActionOperation)initWithURL:(id)l account:(id)account
{
  lCopy = l;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = AskPermissionActionOperation;
  v9 = [(AskPermissionActionOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    objc_storeStrong(&v10->_account, account);
  }

  return v10;
}

- (void)run
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001E3160;
  v19 = sub_1001E3170;
  v20 = 0;
  account = [(AskPermissionActionOperation *)self account];
  backingAccount = [account backingAccount];

  v5 = dispatch_semaphore_create(0);
  v6 = ISWeakLinkedClassForString();
  v7 = [(AskPermissionActionOperation *)self URL];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001E3178;
  v12 = &unk_10032B2D8;
  v14 = &v15;
  v8 = v5;
  v13 = v8;
  [v6 addRequestWithURL:v7 account:backingAccount completion:&v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  [(AskPermissionActionOperation *)self setSuccess:v16[5] == 0, v9, v10, v11, v12];
  [(AskPermissionActionOperation *)self setError:v16[5]];

  _Block_object_dispose(&v15, 8);
}

@end