@interface STSTapToProvisionReader
- (STSTapToProvisionDelegate)delegate;
- (STSTapToProvisionReader)init;
- (id)checkStatusWithError:(id *)error;
- (void)checkStatusWithCompletion:(id)completion;
- (void)onUpdateWithEvent:(int64_t)event;
- (void)provisionCardWithParameters:(id)parameters completion:(id)completion;
@end

@implementation STSTapToProvisionReader

- (STSTapToProvisionReader)init
{
  v21.receiver = self;
  v21.super_class = STSTapToProvisionReader;
  v2 = [(STSTapToProvisionReader *)&v21 init];
  if (v2)
  {
    v20 = 0;
    v3 = [objc_alloc(MEMORY[0x277D63FF8]) initWithIsProduction:1 error:&v20];
    v4 = v20;
    reader = v2->_reader;
    v2->_reader = v3;

    if (v4)
    {
      v8 = 1;
      do
      {
        code = [v4 code];
        if ((v8 & 1) == 0 || code != 14001)
        {
          goto LABEL_11;
        }

        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSTapToProvisionReader init]", 38, v2, @"Failed to create OR reader : %@, retrying..", v10, v11, 0);
        v12 = objc_alloc(MEMORY[0x277D63FF8]);
        v19 = 0;
        v13 = [v12 initWithIsProduction:1 error:&v19];
        v4 = v19;
        v14 = v2->_reader;
        v2->_reader = v13;

        v8 = 0;
      }

      while (v4);
    }

    v15 = v2->_reader;
    if (!v15)
    {
      v4 = 0;
LABEL_11:
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSTapToProvisionReader init]", 46, v2, @"Failed to create OR reader : %@", v6, v7, v4);
      v17 = v2->_reader;
      v2->_reader = 0;

      v16 = 0;
      goto LABEL_12;
    }

    [(ORReader *)v15 setDelegate:v2];
  }

  v16 = v2;
LABEL_12:

  return v16;
}

- (void)onUpdateWithEvent:(int64_t)event
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained onUpdateWithEvent:event];
}

- (void)checkStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  reader = self->_reader;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_26539E288;
  v7[3] = &unk_279B941B0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(ORReader *)reader checkStatusWithCompletion:v7];
}

- (id)checkStatusWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26539E4B0;
  v23 = sub_26539E4C0;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_26539E4B0;
  v17 = sub_26539E4C0;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26539E4C8;
  v9[3] = &unk_279B941D8;
  v11 = &v13;
  v12 = &v19;
  v6 = v5;
  v10 = v6;
  [(STSTapToProvisionReader *)self checkStatusWithCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v14[5];
  }

  v7 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

- (void)provisionCardWithParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  toOR = [parameters toOR];
  reader = self->_reader;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26539E61C;
  v10[3] = &unk_279B94200;
  v11 = completionCopy;
  v9 = completionCopy;
  [(ORReader *)reader provisionCardWithParameters:toOR completion:v10];
}

- (STSTapToProvisionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end