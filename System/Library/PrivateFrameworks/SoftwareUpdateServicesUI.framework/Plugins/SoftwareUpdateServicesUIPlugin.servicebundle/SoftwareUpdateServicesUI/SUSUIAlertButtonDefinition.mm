@interface SUSUIAlertButtonDefinition
- (SUSUIAlertButtonDefinition)initWithLabel:(id)label presentationStyle:(unint64_t)style isPreferredButton:(BOOL)button handler:(id)handler;
@end

@implementation SUSUIAlertButtonDefinition

- (SUSUIAlertButtonDefinition)initWithLabel:(id)label presentationStyle:(unint64_t)style isPreferredButton:(BOOL)button handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  styleCopy = style;
  buttonCopy = button;
  v16 = 0;
  objc_storeStrong(&v16, handler);
  v6 = selfCopy;
  selfCopy = 0;
  v15.receiver = v6;
  v15.super_class = SUSUIAlertButtonDefinition;
  v14 = [(SUSUIAlertButtonDefinition *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_label, location[0]);
    selfCopy->_presentationStyle = styleCopy;
    selfCopy->_isPreferredButton = buttonCopy;
    v7 = objc_retainBlock(v16);
    handler = selfCopy->_handler;
    selfCopy->_handler = v7;
  }

  v10 = selfCopy;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

@end