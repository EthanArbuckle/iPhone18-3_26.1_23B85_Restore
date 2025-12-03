@interface SBUIAction
- (SBUIAction)init;
- (SBUIAction)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image badgeView:(id)view handler:(id)handler;
- (SBUIAction)initWithTitle:(id)title subtitle:(id)subtitle systemImageName:(id)name badgeView:(id)view handler:(id)handler;
@end

@implementation SBUIAction

- (SBUIAction)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image badgeView:(id)view handler:(id)handler
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  viewCopy = view;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = SBUIAction;
  v17 = [(SBUIAction *)&v27 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [subtitleCopy copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v20;

    _imageThatSuppressesAccessibilityHairlineThickening = [imageCopy _imageThatSuppressesAccessibilityHairlineThickening];
    image = v17->_image;
    v17->_image = _imageThatSuppressesAccessibilityHairlineThickening;

    objc_storeStrong(&v17->_badgeView, view);
    v24 = [handlerCopy copy];
    handler = v17->_handler;
    v17->_handler = v24;
  }

  return v17;
}

- (SBUIAction)initWithTitle:(id)title subtitle:(id)subtitle systemImageName:(id)name badgeView:(id)view handler:(id)handler
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  viewCopy = view;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = SBUIAction;
  v17 = [(SBUIAction *)&v27 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [subtitleCopy copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v20;

    v22 = [nameCopy copy];
    systemImageName = v17->_systemImageName;
    v17->_systemImageName = v22;

    objc_storeStrong(&v17->_badgeView, view);
    v24 = [handlerCopy copy];
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