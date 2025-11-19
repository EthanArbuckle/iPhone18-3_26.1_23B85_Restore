@interface TURepeatingAction
- (TURepeatingAction)initWithAction:(id)a3;
@end

@implementation TURepeatingAction

- (TURepeatingAction)initWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TURepeatingAction;
  v5 = [(TURepeatingAction *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

@end