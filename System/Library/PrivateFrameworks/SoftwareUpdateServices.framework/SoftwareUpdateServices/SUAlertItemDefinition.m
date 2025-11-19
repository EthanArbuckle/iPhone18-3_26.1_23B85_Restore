@interface SUAlertItemDefinition
- (SUAlertItemDefinition)initWithTitle:(id)a3 message:(id)a4 buttons:(id)a5;
@end

@implementation SUAlertItemDefinition

- (SUAlertItemDefinition)initWithTitle:(id)a3 message:(id)a4 buttons:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SUAlertItemDefinition;
  v12 = [(SUAlertItemDefinition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_message, a4);
    objc_storeStrong(&v13->_buttons, a5);
  }

  return v13;
}

@end