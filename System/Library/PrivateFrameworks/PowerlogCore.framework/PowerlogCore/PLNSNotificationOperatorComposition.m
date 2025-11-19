@interface PLNSNotificationOperatorComposition
- (NSString)notificationName;
- (PLNSNotificationOperatorComposition)initWithOperator:(id)a3 forNotification:(id)a4 withBlock:(id)a5;
- (PLNSNotificationOperatorComposition)initWithOperator:(id)a3 forNotifications:(id)a4 withBlock:(id)a5;
- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)a3 forNotification:(id)a4 withBlock:(id)a5;
- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)a3 forNotifications:(id)a4 withBlock:(id)a5;
- (PLOperator)operator;
- (void)dealloc;
- (void)listenForNotifications:(BOOL)a3;
- (void)notification:(id)a3;
@end

@implementation PLNSNotificationOperatorComposition

- (PLNSNotificationOperatorComposition)initWithOperator:(id)a3 forNotification:(id)a4 withBlock:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v16 count:1];

  v13 = [(PLNSNotificationOperatorComposition *)self initWithOperator:v11 forNotifications:v12 withBlock:v9, v16, v17];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (PLNSNotificationOperatorComposition)initWithOperator:(id)a3 forNotifications:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 workQueue];
  v12 = [(PLNSNotificationOperatorComposition *)self initWithWorkQueue:v11 forNotifications:v10 withBlock:v9];

  if (v12)
  {
    objc_storeWeak(&v12->_operator, v8);
  }

  return v12;
}

- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)a3 forNotification:(id)a4 withBlock:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PLNSNotificationOperatorComposition;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(PLNSNotificationOperatorComposition *)&v15 init];
  v16[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:{1, v15.receiver, v15.super_class}];

  v12 = [(PLNSNotificationOperatorComposition *)v10 initWithWorkQueue:v9 forNotifications:v11 withBlock:v7];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)a3 forNotifications:(id)a4 withBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  if (self)
  {
    self->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&self->_workQueue, a3);
    v11 = a5;
    v12 = MEMORY[0x1DA71B0D0]();

    operatorBlock = self->_operatorBlock;
    self->_operatorBlock = v12;

    objc_storeStrong(&self->_notificationNames, a4);
    v14 = [MEMORY[0x1E695DF70] array];
    notificationObservers = self->_notificationObservers;
    self->_notificationObservers = v14;

    [(PLNSNotificationOperatorComposition *)self listenForNotifications:1];
  }

  return self;
}

- (NSString)notificationName
{
  v3 = [(PLNSNotificationOperatorComposition *)self notificationNames];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PLNSNotificationOperatorComposition *)self notificationNames];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)notification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 copy];

  v7 = [v4 name];
  v8 = [v7 copy];

  v9 = [v4 object];

  workQueue = self->_workQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__PLNSNotificationOperatorComposition_notification___block_invoke;
  v14[3] = &unk_1E851B4F0;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v6;
  dispatch_async(workQueue, v14);
}

void __52__PLNSNotificationOperatorComposition_notification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) operatorBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (void)listenForNotifications:(BOOL)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [(PLNSNotificationOperatorComposition *)self notificationNames];
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          v10 = [MEMORY[0x1E696AD88] defaultCenter];
          v11 = [v10 _addObserver:self selector:sel_notification_ name:v9 object:0 options:1024];

          os_unfair_lock_lock(&self->_lock);
          notificationObservers = self->_notificationObservers;
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
          [(NSMutableArray *)notificationObservers addObject:v13];

          os_unfair_lock_unlock(&self->_lock);
        }

        v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [(NSMutableArray *)self->_notificationObservers copy];
    os_unfair_lock_unlock(&self->_lock);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v14;
    v15 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v4);
          }

          v19 = [*(*(&v22 + 1) + 8 * j) unsignedLongLongValue];
          v20 = [MEMORY[0x1E696AD88] defaultCenter];
          [v20 _removeObserver:v19];
        }

        v16 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(PLNSNotificationOperatorComposition *)self listenForNotifications:0];
  v3.receiver = self;
  v3.super_class = PLNSNotificationOperatorComposition;
  [(PLNSNotificationOperatorComposition *)&v3 dealloc];
}

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end