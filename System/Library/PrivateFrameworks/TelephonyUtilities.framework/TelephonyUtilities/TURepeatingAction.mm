@interface TURepeatingAction
- (TURepeatingAction)initWithAction:(id)action;
@end

@implementation TURepeatingAction

- (TURepeatingAction)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = TURepeatingAction;
  v5 = [(TURepeatingAction *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(actionCopy);
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

@end