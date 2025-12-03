@interface WFMediaPickerParameter
- (BOOL)parameterStateIsValid:(id)valid;
- (WFAction)action;
- (id)localizedLabelForState:(id)state;
- (void)setAction:(id)action;
@end

@implementation WFMediaPickerParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  variable = [validCopy variable];

  if (variable)
  {
    v8.receiver = self;
    v8.super_class = WFMediaPickerParameter;
    v6 = [(WFParameter *)&v8 parameterStateIsValid:validCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)localizedLabelForState:(id)state
{
  value = [state value];
  itemName = [value itemName];

  return itemName;
}

- (void)setAction:(id)action
{
  obj = action;
  WeakRetained = objc_loadWeakRetained(&self->_action);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_action, obj);
    v5 = obj;
  }
}

@end