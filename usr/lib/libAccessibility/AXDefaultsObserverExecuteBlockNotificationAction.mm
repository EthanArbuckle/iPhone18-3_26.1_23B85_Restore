@interface AXDefaultsObserverExecuteBlockNotificationAction
- (AXDefaultsObserverExecuteBlockNotificationAction)initWithBlock:(id)block;
- (void)performForChangedDefault:(id)default;
@end

@implementation AXDefaultsObserverExecuteBlockNotificationAction

- (AXDefaultsObserverExecuteBlockNotificationAction)initWithBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AXDefaultsObserverExecuteBlockNotificationAction;
  v5 = [(AXDefaultsObserverExecuteBlockNotificationAction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXDefaultsObserverExecuteBlockNotificationAction *)v5 setBlock:blockCopy];
  }

  return v6;
}

- (void)performForChangedDefault:(id)default
{
  block = [(AXDefaultsObserverExecuteBlockNotificationAction *)self block];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end