@interface SUAlertButtonDefinition
- (SUAlertButtonDefinition)initWithLabel:(id)label presentationStyle:(unint64_t)style isPreferredButton:(BOOL)button handler:(id)handler;
@end

@implementation SUAlertButtonDefinition

- (SUAlertButtonDefinition)initWithLabel:(id)label presentationStyle:(unint64_t)style isPreferredButton:(BOOL)button handler:(id)handler
{
  labelCopy = label;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = SUAlertButtonDefinition;
  v13 = [(SUAlertButtonDefinition *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_label, label);
    v14->_presentationStyle = style;
    v14->_isPreferredButton = button;
    v15 = MEMORY[0x26D668B30](handlerCopy);
    handler = v14->_handler;
    v14->_handler = v15;
  }

  return v14;
}

@end