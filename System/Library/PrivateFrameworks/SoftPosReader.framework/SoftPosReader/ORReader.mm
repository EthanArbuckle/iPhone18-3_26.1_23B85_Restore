@interface ORReader
- (BOOL)cancelProvisionAndReturnError:(id *)error;
- (ORProvisionDelegate)delegate;
- (ORReader)initWithConnector:(id)connector;
- (ORReader)initWithIsProduction:(BOOL)production error:(id *)error;
- (void)checkStatusWithCompletion:(id)completion;
- (void)provisionCardWithParameters:(id)parameters completion:(id)completion;
@end

@implementation ORReader

- (ORReader)initWithConnector:(id)connector
{
  v7.receiver = self;
  v7.super_class = ORReader;
  v3 = [(SPRObject *)&v7 initWithConnector:connector];
  if (v3)
  {
    v4 = dispatch_get_global_queue(25, 0);
    relayQueue = v3->_relayQueue;
    v3->_relayQueue = v4;
  }

  return v3;
}

- (ORReader)initWithIsProduction:(BOOL)production error:(id *)error
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26A946184;
  v12[3] = &unk_279CA5A10;
  productionCopy = production;
  v6 = objc_msgSend_initWithConnector_(self, a2, v12, error, v4);
  v10 = objc_msgSend_connectAndReturnError_(v6, v7, error, v8, v9);

  return v10;
}

- (void)provisionCardWithParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A946580;
  v18[3] = &unk_279CA57B8;
  v18[4] = self;
  v7 = completionCopy;
  v19 = v7;
  parametersCopy = parameters;
  v12 = objc_msgSend_asyncProxyWithErrorHandler_(self, v9, v18, v10, v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A946658;
  v16[3] = &unk_279CA5A38;
  v16[4] = self;
  v17 = v7;
  v14 = v7;
  objc_msgSend_provisionCardWithParameters_delegate_reply_(v12, v15, parametersCopy, WeakRetained, v16);
}

- (BOOL)cancelProvisionAndReturnError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A946388;
  v23 = sub_26A946398;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26A9468EC;
  v14[3] = &unk_279CA5428;
  v14[4] = &v19;
  v6 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v14, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26A9468FC;
  v13[3] = &unk_279CA5670;
  v13[4] = &v15;
  v13[5] = &v19;
  objc_msgSend_cancelProvisionWithReply_(v6, v7, v13, v8, v9);

  if (error)
  {
    v10 = v20[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (void)checkStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A946A30;
  v16[3] = &unk_279CA57B8;
  v16[4] = self;
  v5 = completionCopy;
  v17 = v5;
  v9 = objc_msgSend_asyncProxyWithErrorHandler_(self, v6, v16, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26A946B08;
  v14[3] = &unk_279CA5A60;
  v14[4] = self;
  v15 = v5;
  v10 = v5;
  objc_msgSend_checkStatusWithReply_(v9, v11, v14, v12, v13);
}

- (ORProvisionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end