@interface SBUIAction
- (SBUIAction)init;
- (SBUIAction)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 badgeView:(id)a6 handler:(id)a7;
- (SBUIAction)initWithTitle:(id)a3 subtitle:(id)a4 systemImageName:(id)a5 badgeView:(id)a6 handler:(id)a7;
@end

@implementation SBUIAction

- (SBUIAction)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 badgeView:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = SBUIAction;
  v17 = [(SBUIAction *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v13 copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v20;

    v22 = [v14 _imageThatSuppressesAccessibilityHairlineThickening];
    image = v17->_image;
    v17->_image = v22;

    objc_storeStrong(&v17->_badgeView, a6);
    v24 = [v16 copy];
    handler = v17->_handler;
    v17->_handler = v24;
  }

  return v17;
}

- (SBUIAction)initWithTitle:(id)a3 subtitle:(id)a4 systemImageName:(id)a5 badgeView:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = SBUIAction;
  v17 = [(SBUIAction *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v13 copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v20;

    v22 = [v14 copy];
    systemImageName = v17->_systemImageName;
    v17->_systemImageName = v22;

    objc_storeStrong(&v17->_badgeView, a6);
    v24 = [v16 copy];
    handler = v17->_handler;
    v17->_handler = v24;
  }

  return v17;
}

- (SBUIAction)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithTitle:subtitle:image:badgeView:handler:].", "-[SBUIAction init]", v6}];

  return [(SBUIAction *)self initWithTitle:0 subtitle:0 image:0 badgeView:0 handler:0];
}

@end