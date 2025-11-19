@interface PLCFNotificationOperatorComposition
- (PLCFNotificationOperatorComposition)initWithWorkQueue:(id)a3 forNotification:(id)a4 requireState:(BOOL)a5 withBlock:(id)a6;
- (PLOperator)operator;
- (void)dealloc;
@end

@implementation PLCFNotificationOperatorComposition

- (PLCFNotificationOperatorComposition)initWithWorkQueue:(id)a3 forNotification:(id)a4 requireState:(BOOL)a5 withBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PLCFNotificationOperatorComposition;
  v14 = [(PLCFNotificationOperatorComposition *)&v20 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v14->_workQueue, a3);
  v16 = MEMORY[0x1DA71B0D0](v13);
  operatorBlock = v15->_operatorBlock;
  v15->_operatorBlock = v16;

  objc_storeStrong(&v15->_notificationName, a4);
  v15->_isStateRequired = a5;
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