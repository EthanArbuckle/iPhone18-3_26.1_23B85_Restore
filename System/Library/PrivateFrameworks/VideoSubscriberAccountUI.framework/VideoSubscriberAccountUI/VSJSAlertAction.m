@interface VSJSAlertAction
- (VSJSAlertAction)init;
@end

@implementation VSJSAlertAction

- (VSJSAlertAction)init
{
  v3 = [MEMORY[0x277D1B028] currentAppContext];
  v9.receiver = self;
  v9.super_class = VSJSAlertAction;
  v4 = [(IKJSObject *)&v9 initWithAppContext:v3];

  if (v4)
  {
    title = v4->_title;
    v4->_title = @"OK";

    style = v4->_style;
    v4->_style = @"default";

    callback = v4->_callback;
    v4->_callback = 0;
  }

  return v4;
}

@end