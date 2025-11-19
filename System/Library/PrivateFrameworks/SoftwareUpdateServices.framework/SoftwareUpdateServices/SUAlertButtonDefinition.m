@interface SUAlertButtonDefinition
- (SUAlertButtonDefinition)initWithLabel:(id)a3 presentationStyle:(unint64_t)a4 isPreferredButton:(BOOL)a5 handler:(id)a6;
@end

@implementation SUAlertButtonDefinition

- (SUAlertButtonDefinition)initWithLabel:(id)a3 presentationStyle:(unint64_t)a4 isPreferredButton:(BOOL)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = SUAlertButtonDefinition;
  v13 = [(SUAlertButtonDefinition *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_label, a3);
    v14->_presentationStyle = a4;
    v14->_isPreferredButton = a5;
    v15 = MEMORY[0x26D668B30](v12);
    handler = v14->_handler;
    v14->_handler = v15;
  }

  return v14;
}

@end