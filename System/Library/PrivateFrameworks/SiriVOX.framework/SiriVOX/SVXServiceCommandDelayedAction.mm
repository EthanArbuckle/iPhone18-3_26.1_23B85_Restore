@interface SVXServiceCommandDelayedAction
- (SVXServiceCommandDelayedAction)initWithCommand:(id)a3 taskTracker:(id)a4;
@end

@implementation SVXServiceCommandDelayedAction

- (SVXServiceCommandDelayedAction)initWithCommand:(id)a3 taskTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SVXServiceCommandDelayedAction;
  v8 = [(SVXServiceCommandDelayedAction *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    command = v8->_command;
    v8->_command = v9;

    objc_storeStrong(&v8->_taskTracker, a4);
  }

  return v8;
}

@end