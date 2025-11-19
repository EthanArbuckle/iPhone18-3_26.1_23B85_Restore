@interface WFActionAuxiliaryButton
+ (WFActionAuxiliaryButton)buttonWithTitle:(id)a3 symbolName:(id)a4 handler:(id)a5;
- (WFActionAuxiliaryButton)initWithTitle:(id)a3 symbolName:(id)a4 handler:(id)a5;
@end

@implementation WFActionAuxiliaryButton

- (WFActionAuxiliaryButton)initWithTitle:(id)a3 symbolName:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WFActionAuxiliaryButton;
  v12 = [(WFActionAuxiliaryButton *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_symbolName, a4);
    v14 = _Block_copy(v11);
    handler = v13->_handler;
    v13->_handler = v14;

    v16 = v13;
  }

  return v13;
}

+ (WFActionAuxiliaryButton)buttonWithTitle:(id)a3 symbolName:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithTitle:v10 symbolName:v9 handler:v8];

  return v11;
}

@end