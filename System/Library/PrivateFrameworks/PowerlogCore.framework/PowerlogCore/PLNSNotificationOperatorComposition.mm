@interface PLNSNotificationOperatorComposition
- (NSString)notificationName;
- (PLNSNotificationOperatorComposition)initWithOperator:(id)operator forNotification:(id)notification withBlock:(id)block;
- (PLNSNotificationOperatorComposition)initWithOperator:(id)operator forNotifications:(id)notifications withBlock:(id)block;
- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotification:(id)notification withBlock:(id)block;
- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotifications:(id)notifications withBlock:(id)block;
- (PLOperator)operator;
- (void)dealloc;
- (void)listenForNotifications:(BOOL)notifications;
- (void)notification:(id)notification;
@end

@implementation PLNSNotificationOperatorComposition

- (PLNSNotificationOperatorComposition)initWithOperator:(id)operator forNotification:(id)notification withBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v8 = MEMORY[0x1E695DEC8];
  blockCopy = block;
  notificationCopy2 = notification;
  operatorCopy = operator;
  v12 = [v8 arrayWithObjects:&notificationCopy count:1];

  v13 = [(PLNSNotificationOperatorComposition *)self initWithOperator:operatorCopy forNotifications:v12 withBlock:blockCopy, notificationCopy, v17];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (PLNSNotificationOperatorComposition)initWithOperator:(id)operator forNotifications:(id)notifications withBlock:(id)block
{
  operatorCopy = operator;
  blockCopy = block;
  notificationsCopy = notifications;
  workQueue = [operatorCopy workQueue];
  v12 = [(PLNSNotificationOperatorComposition *)self initWithWorkQueue:workQueue forNotifications:notificationsCopy withBlock:blockCopy];

  if (v12)
  {
    objc_storeWeak(&v12->_operator, operatorCopy);
  }

  return v12;
}

- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotification:(id)notification withBlock:(id)block
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PLNSNotificationOperatorComposition;
  blockCopy = block;
  notificationCopy = notification;
  queueCopy = queue;
  v10 = [(PLNSNotificationOperatorComposition *)&v15 init];
  v16[0] = notificationCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:{1, v15.receiver, v15.super_class}];

  v12 = [(PLNSNotificationOperatorComposition *)v10 initWithWorkQueue:queueCopy forNotifications:v11 withBlock:blockCopy];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (PLNSNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotifications:(id)notifications withBlock:(id)block
{
  queueCopy = queue;
  notificationsCopy = notifications;
  if (self)
  {
    self->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&self->_workQueue, queue);
    blockCopy = block;
    v12 = MEMORY[0x1DA71B0D0]();

    operatorBlock = self->_operatorBlock;
    self->_operatorBlock = v12;

    objc_storeStrong(&self->_notificationNames, notifications);
    array = [MEMORY[0x1E695DF70] array];
    notificationObservers = self->_notificationObservers;
    self->_notificationObservers = array;

    [(PLNSNotificationOperatorComposition *)self listenForNotifications:1];
  }

  return self;
}

- (NSString)notificationName
{
  notificationNames = [(PLNSNotificationOperatorComposition *)self notificationNames];
  v4 = [notificationNames count];

  if (v4)
  {
    notificationNames2 = [(PLNSNotificationOperatorComposition *)self notificationNames];
    v6 = [notificationNames2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)notification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo copy];

  name = [notificationCopy name];
  v8 = [name copy];

  object = [notificationCopy object];

  workQueue = self->_workQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__PLNSNotificationOperatorComposition_notification___block_invoke;
  v14[3] = &unk_1E851B4F0;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  v17 = object;
  v11 = object;
  v12 = v8;
  v13 = v6;
  dispatch_async(workQueue, v14);
}

void __52__PLNSNotificationOperatorComposition_notification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) operatorBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (void)listenForNotifications:(BOOL)notifications
{
  v32 = *MEMORY[0x1E69E9840];
  if (notifications)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    notificationNames = [(PLNSNotificationOperatorComposition *)self notificationNames];
    v5 = [notificationNames countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(notificationNames);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v11 = [defaultCenter _addObserver:self selector:sel_notification_ name:v9 object:0 options:1024];

          os_unfair_lock_lock(&self->_lock);
          notificationObservers = self->_notificationObservers;
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
          [(NSMutableArray *)notificationObservers addObject:v13];

          os_unfair_lock_unlock(&self->_lock);
        }

        v6 = [notificationNames countByEnumeratingWithState:&v26 objects:v31 count:16];
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
    notificationNames = v14;
    v15 = [notificationNames countByEnumeratingWithState:&v22 objects:v30 count:16];
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
            objc_enumerationMutation(notificationNames);
          }

          unsignedLongLongValue = [*(*(&v22 + 1) + 8 * j) unsignedLongLongValue];
          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 _removeObserver:unsignedLongLongValue];
        }

        v16 = [notificationNames countByEnumeratingWithState:&v22 objects:v30 count:16];
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