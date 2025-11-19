@interface WFSlotTemplateVariableToken
- (WFSlotTemplateVariableToken)initWithVariable:(id)a3;
- (void)dealloc;
- (void)variableDidChange:(id)a3;
@end

@implementation WFSlotTemplateVariableToken

- (void)dealloc
{
  [(WFVariable *)self->_variable removeDelegate:self];
  v3.receiver = self;
  v3.super_class = WFSlotTemplateVariableToken;
  [(WFSlotTemplateVariableToken *)&v3 dealloc];
}

- (void)variableDidChange:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_variable, a3);
  v5 = objc_alloc(MEMORY[0x277D7D7B8]);
  v6 = [v10 propertyName];
  v7 = v6;
  if (!v6)
  {
    v7 = [v10 name];
  }

  v8 = [v10 icon];
  v9 = [v5 initWithDisplayName:v7 icon:v8 isAvailable:{objc_msgSend(v10, "isAvailable")}];

  if (!v6)
  {
  }

  [(WFSlotTemplateToken *)self updatePropertiesWithToken:v9];
}

- (WFSlotTemplateVariableToken)initWithVariable:(id)a3
{
  v5 = a3;
  v6 = [v5 propertyName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 name];
  }

  v9 = v8;

  v10 = [v5 icon];
  v14.receiver = self;
  v14.super_class = WFSlotTemplateVariableToken;
  v11 = -[WFSlotTemplateToken initWithDisplayName:icon:isAvailable:](&v14, sel_initWithDisplayName_icon_isAvailable_, v9, v10, [v5 isAvailable]);

  if (v11)
  {
    objc_storeStrong(&v11->_variable, a3);
    [(WFVariable *)v11->_variable addDelegate:v11];
    v12 = v11;
  }

  return v11;
}

@end