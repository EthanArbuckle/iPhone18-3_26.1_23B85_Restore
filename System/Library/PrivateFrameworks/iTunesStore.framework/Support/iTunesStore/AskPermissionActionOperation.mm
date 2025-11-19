@interface AskPermissionActionOperation
- (AskPermissionActionOperation)initWithURL:(id)a3 account:(id)a4;
- (void)run;
@end

@implementation AskPermissionActionOperation

- (AskPermissionActionOperation)initWithURL:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AskPermissionActionOperation;
  v9 = [(AskPermissionActionOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    objc_storeStrong(&v10->_account, a4);
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
  v3 = [(AskPermissionActionOperation *)self account];
  v4 = [v3 backingAccount];

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
  [v6 addRequestWithURL:v7 account:v4 completion:&v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  [(AskPermissionActionOperation *)self setSuccess:v16[5] == 0, v9, v10, v11, v12];
  [(AskPermissionActionOperation *)self setError:v16[5]];

  _Block_object_dispose(&v15, 8);
}

@end