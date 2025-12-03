@interface SUAlertItemDefinition
- (SUAlertItemDefinition)initWithTitle:(id)title message:(id)message buttons:(id)buttons;
@end

@implementation SUAlertItemDefinition

- (SUAlertItemDefinition)initWithTitle:(id)title message:(id)message buttons:(id)buttons
{
  titleCopy = title;
  messageCopy = message;
  buttonsCopy = buttons;
  v15.receiver = self;
  v15.super_class = SUAlertItemDefinition;
  v12 = [(SUAlertItemDefinition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_message, message);
    objc_storeStrong(&v13->_buttons, buttons);
  }

  return v13;
}

@end