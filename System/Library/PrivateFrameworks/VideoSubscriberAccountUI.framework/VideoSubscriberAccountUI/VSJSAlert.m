@interface VSJSAlert
- (VSJSAlert)init;
@end

@implementation VSJSAlert

- (VSJSAlert)init
{
  v3 = [MEMORY[0x277D1B028] currentAppContext];
  v9.receiver = self;
  v9.super_class = VSJSAlert;
  v4 = [(IKJSObject *)&v9 initWithAppContext:v3];

  if (v4)
  {
    title = v4->_title;
    v4->_title = @"Error";

    message = v4->_message;
    v4->_message = &stru_2880B8BB0;

    actions = v4->_actions;
    v4->_actions = 0;
  }

  return v4;
}

@end