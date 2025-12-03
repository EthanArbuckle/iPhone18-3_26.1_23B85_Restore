@interface SUSUIAlertItemDefinition
- (SUSUIAlertItemDefinition)init;
- (SUSUIAlertItemDefinition)initWithTitle:(id)title message:(id)message buttons:(id)buttons;
@end

@implementation SUSUIAlertItemDefinition

- (SUSUIAlertItemDefinition)init
{
  v4 = 0;
  v4 = [(SUSUIAlertItemDefinition *)self initWithTitle:0 message:0 buttons:?];
  v3 = v4;
  objc_storeStrong(&v4, 0);
  return v3;
}

- (SUSUIAlertItemDefinition)initWithTitle:(id)title message:(id)message buttons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v13 = 0;
  objc_storeStrong(&v13, message);
  v12 = 0;
  objc_storeStrong(&v12, buttons);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUSUIAlertItemDefinition;
  v10 = [(SUSUIAlertItemDefinition *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_title, location[0]);
    objc_storeStrong(&selfCopy->_message, v13);
    objc_storeStrong(&selfCopy->_buttons, v12);
  }

  v7 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end