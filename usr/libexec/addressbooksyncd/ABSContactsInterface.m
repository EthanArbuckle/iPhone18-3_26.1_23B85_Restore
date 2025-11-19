@interface ABSContactsInterface
+ (id)sharedInstance;
- (ABSContactsInterface)init;
- (void)_decrementInUse;
- (void)_incrementInUseForMutation:(BOOL)a3;
- (void)accessAssert:(id)a3;
- (void)accessAsync:(id)a3;
- (void)accessSync:(id)a3;
- (void)decrementInUse;
- (void)incrementInUse;
- (void)mutateAssert:(id)a3;
- (void)mutateAsync:(id)a3;
- (void)mutateSync:(id)a3;
- (void)registerPostSaveBlock:(id)a3;
@end

@implementation ABSContactsInterface

+ (id)sharedInstance
{
  if (qword_100071BC0 != -1)
  {
    sub_10003A0EC();
  }

  v3 = qword_100071BC8;

  return v3;
}

- (ABSContactsInterface)init
{
  v8.receiver = self;
  v8.super_class = ABSContactsInterface;
  v2 = [(ABSContactsInterface *)&v8 init];
  if (v2)
  {
    v3 = sub_10002AD40("ABSContactsInterface");
    q = v2->_q;
    v2->_q = v3;

    v5 = objc_opt_new();
    postSaveActions = v2->_postSaveActions;
    v2->_postSaveActions = v5;
  }

  return v2;
}

- (void)accessSync:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001151C;
  v7[3] = &unk_10005CF58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(q, v7);
}

- (void)accessAsync:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011648;
  block[3] = &unk_10005CF80;
  v10 = v5;
  v11 = v4;
  block[4] = self;
  v7 = v5;
  v8 = v4;
  dispatch_async(q, block);
}

- (void)accessAssert:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_q);
  [(ABSContactsInterface *)self _incrementInUseForMutation:0];
  v4 = objc_autoreleasePoolPush();
  v5[2](v5, self->_cnStore);
  objc_autoreleasePoolPop(v4);
  [(ABSContactsInterface *)self _decrementInUse];
}

- (void)mutateSync:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000117CC;
  v7[3] = &unk_10005CF58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(q, v7);
}

- (void)mutateAsync:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011920;
  block[3] = &unk_10005CF80;
  v10 = v5;
  v11 = v4;
  block[4] = self;
  v7 = v5;
  v8 = v4;
  dispatch_async(q, block);
}

- (void)mutateAssert:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_q);
  [(ABSContactsInterface *)self _incrementInUseForMutation:1];
  v4 = objc_autoreleasePoolPush();
  if (v6[2](v6, self->_cnStore, self->_cnSaveRequest))
  {
    cnSaveRequest = self->_cnSaveRequest;
    self->_cnSaveRequest = 0;

    self->_didSave = 1;
  }

  objc_autoreleasePoolPop(v4);
  [(ABSContactsInterface *)self _decrementInUse];
}

- (void)incrementInUse
{
  if (self->_inDecrementInUse)
  {

    [(ABSContactsInterface *)self _incrementInUseForMutation:0];
  }

  else
  {
    block[5] = v2;
    block[6] = v3;
    q = self->_q;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011AE8;
    block[3] = &unk_10005CDF0;
    block[4] = self;
    dispatch_sync(q, block);
  }
}

- (void)decrementInUse
{
  if (self->_inDecrementInUse)
  {

    [(ABSContactsInterface *)self _decrementInUse];
  }

  else
  {
    block[5] = v2;
    block[6] = v3;
    q = self->_q;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011B84;
    block[3] = &unk_10005CDF0;
    block[4] = self;
    dispatch_sync(q, block);
  }
}

- (void)_incrementInUseForMutation:(BOOL)a3
{
  v3 = a3;
  ++self->_inUse;
  v5 = objc_autoreleasePoolPush();
  if (self->_inUse == 1)
  {
    v6 = objc_alloc_init(CNContactStore);
    cnStore = self->_cnStore;
    self->_cnStore = v6;

    self->_didSave = 0;
  }

  if (v3 && !self->_cnSaveRequest)
  {
    v8 = +[CNSaveRequest abs_new];
    cnSaveRequest = self->_cnSaveRequest;
    self->_cnSaveRequest = v8;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_decrementInUse
{
  v2 = self->_inUse - 1;
  self->_inUse = v2;
  if (!v2)
  {
    v4 = objc_autoreleasePoolPush();
    if (self->_cnSaveRequest)
    {
      [(ABSContactsInterface *)self _sendMultisaveBegin];
      kdebug_trace();
      cnStore = self->_cnStore;
      cnSaveRequest = self->_cnSaveRequest;
      v21 = 0;
      v7 = [(CNContactStore *)cnStore ABSexecuteSaveRequest:cnSaveRequest error:&v21];
      v8 = v21;
      if (v7)
      {
        self->_didSave = 1;
      }

      else
      {
        v9 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10003A100(v8, v9);
        }
      }

      kdebug_trace();
      v10 = self->_cnSaveRequest;
      self->_cnSaveRequest = 0;
    }

    v11 = self->_cnStore;
    self->_cnStore = 0;

    objc_autoreleasePoolPop(v4);
    if (self->_didSave && !self->_inDecrementInUse)
    {
      self->_inDecrementInUse = 1;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = self->_postSaveActions;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(v12);
            }

            (*(*(*(&v17 + 1) + 8 * i) + 16))(*(*(&v17 + 1) + 8 * i));
          }

          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v14);
      }

      self->_inDecrementInUse = 0;
    }
  }
}

- (void)registerPostSaveBlock:(id)a3
{
  postSaveActions = self->_postSaveActions;
  v4 = [a3 copy];
  [(NSMutableArray *)postSaveActions addObject:v4];
}

@end