@interface SUSUIAlertItemDefinition
- (SUSUIAlertItemDefinition)init;
- (SUSUIAlertItemDefinition)initWithTitle:(id)a3 message:(id)a4 buttons:(id)a5;
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

- (SUSUIAlertItemDefinition)initWithTitle:(id)a3 message:(id)a4 buttons:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = SUSUIAlertItemDefinition;
  v10 = [(SUSUIAlertItemDefinition *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    objc_storeStrong(&v15->_title, location[0]);
    objc_storeStrong(&v15->_message, v13);
    objc_storeStrong(&v15->_buttons, v12);
  }

  v7 = v15;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

@end