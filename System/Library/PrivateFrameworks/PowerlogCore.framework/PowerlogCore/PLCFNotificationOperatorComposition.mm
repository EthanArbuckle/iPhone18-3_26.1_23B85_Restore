@interface PLCFNotificationOperatorComposition
- (PLCFNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotification:(id)notification requireState:(BOOL)state withBlock:(id)block;
- (PLOperator)operator;
- (void)dealloc;
@end

@implementation PLCFNotificationOperatorComposition

- (PLCFNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotification:(id)notification requireState:(BOOL)state withBlock:(id)block
{
  queueCopy = queue;
  notificationCopy = notification;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = PLCFNotificationOperatorComposition;
  v14 = [(PLCFNotificationOperatorComposition *)&v20 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v14->_workQueue, queue);
  v16 = MEMORY[0x1DA71B0D0](blockCopy);
  operatorBlock = v15->_operatorBlock;
  v15->_operatorBlock = v16;

  objc_storeStrong(&v15->_notificationName, notification);
  v15->_isStateRequired = state;
  v15->_stateToken = 0;
  if (![(PLCFNotificationOperatorComposition *)v15 listenForNotifications:1])
  {
    [(PLCFNotificationOperatorComposition *)v15 listenForNotifications:0];
    v18 = 0;
  }

  else
  {
LABEL_3:
    v18 = v15;
  }

  return v18;
}

- (void)dealloc
{
  [(PLCFNotificationOperatorComposition *)self listenForNotifications:0];
  v3.receiver = self;
  v3.super_class = PLCFNotificationOperatorComposition;
  [(PLCFNotificationOperatorComposition *)&v3 dealloc];
}

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end