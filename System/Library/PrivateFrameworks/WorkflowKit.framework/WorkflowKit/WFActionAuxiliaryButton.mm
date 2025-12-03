@interface WFActionAuxiliaryButton
+ (WFActionAuxiliaryButton)buttonWithTitle:(id)title symbolName:(id)name handler:(id)handler;
- (WFActionAuxiliaryButton)initWithTitle:(id)title symbolName:(id)name handler:(id)handler;
@end

@implementation WFActionAuxiliaryButton

- (WFActionAuxiliaryButton)initWithTitle:(id)title symbolName:(id)name handler:(id)handler
{
  titleCopy = title;
  nameCopy = name;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = WFActionAuxiliaryButton;
  v12 = [(WFActionAuxiliaryButton *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_symbolName, name);
    v14 = _Block_copy(handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    v16 = v13;
  }

  return v13;
}

+ (WFActionAuxiliaryButton)buttonWithTitle:(id)title symbolName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  titleCopy = title;
  v11 = [[self alloc] initWithTitle:titleCopy symbolName:nameCopy handler:handlerCopy];

  return v11;
}

@end