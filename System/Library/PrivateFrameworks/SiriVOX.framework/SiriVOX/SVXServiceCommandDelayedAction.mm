@interface SVXServiceCommandDelayedAction
- (SVXServiceCommandDelayedAction)initWithCommand:(id)command taskTracker:(id)tracker;
@end

@implementation SVXServiceCommandDelayedAction

- (SVXServiceCommandDelayedAction)initWithCommand:(id)command taskTracker:(id)tracker
{
  commandCopy = command;
  trackerCopy = tracker;
  v12.receiver = self;
  v12.super_class = SVXServiceCommandDelayedAction;
  v8 = [(SVXServiceCommandDelayedAction *)&v12 init];
  if (v8)
  {
    v9 = [commandCopy copy];
    command = v8->_command;
    v8->_command = v9;

    objc_storeStrong(&v8->_taskTracker, tracker);
  }

  return v8;
}

@end