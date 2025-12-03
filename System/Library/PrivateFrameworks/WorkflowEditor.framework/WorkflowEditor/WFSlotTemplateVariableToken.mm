@interface WFSlotTemplateVariableToken
- (WFSlotTemplateVariableToken)initWithVariable:(id)variable;
- (void)dealloc;
- (void)variableDidChange:(id)change;
@end

@implementation WFSlotTemplateVariableToken

- (void)dealloc
{
  [(WFVariable *)self->_variable removeDelegate:self];
  v3.receiver = self;
  v3.super_class = WFSlotTemplateVariableToken;
  [(WFSlotTemplateVariableToken *)&v3 dealloc];
}

- (void)variableDidChange:(id)change
{
  changeCopy = change;
  objc_storeStrong(&self->_variable, change);
  v5 = objc_alloc(MEMORY[0x277D7D7B8]);
  propertyName = [changeCopy propertyName];
  name = propertyName;
  if (!propertyName)
  {
    name = [changeCopy name];
  }

  icon = [changeCopy icon];
  v9 = [v5 initWithDisplayName:name icon:icon isAvailable:{objc_msgSend(changeCopy, "isAvailable")}];

  if (!propertyName)
  {
  }

  [(WFSlotTemplateToken *)self updatePropertiesWithToken:v9];
}

- (WFSlotTemplateVariableToken)initWithVariable:(id)variable
{
  variableCopy = variable;
  propertyName = [variableCopy propertyName];
  v7 = propertyName;
  if (propertyName)
  {
    name = propertyName;
  }

  else
  {
    name = [variableCopy name];
  }

  v9 = name;

  icon = [variableCopy icon];
  v14.receiver = self;
  v14.super_class = WFSlotTemplateVariableToken;
  v11 = -[WFSlotTemplateToken initWithDisplayName:icon:isAvailable:](&v14, sel_initWithDisplayName_icon_isAvailable_, v9, icon, [variableCopy isAvailable]);

  if (v11)
  {
    objc_storeStrong(&v11->_variable, variable);
    [(WFVariable *)v11->_variable addDelegate:v11];
    v12 = v11;
  }

  return v11;
}

@end