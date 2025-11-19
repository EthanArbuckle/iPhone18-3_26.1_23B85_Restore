@interface AXDefaultsObserverExecuteBlockNotificationAction
- (AXDefaultsObserverExecuteBlockNotificationAction)initWithBlock:(id)a3;
- (void)performForChangedDefault:(id)a3;
@end

@implementation AXDefaultsObserverExecuteBlockNotificationAction

- (AXDefaultsObserverExecuteBlockNotificationAction)initWithBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXDefaultsObserverExecuteBlockNotificationAction;
  v5 = [(AXDefaultsObserverExecuteBlockNotificationAction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXDefaultsObserverExecuteBlockNotificationAction *)v5 setBlock:v4];
  }

  return v6;
}

- (void)performForChangedDefault:(id)a3
{
  v3 = [(AXDefaultsObserverExecuteBlockNotificationAction *)self block];
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

@end