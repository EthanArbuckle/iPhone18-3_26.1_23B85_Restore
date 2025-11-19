@interface WFMediaPickerParameter
- (BOOL)parameterStateIsValid:(id)a3;
- (WFAction)action;
- (id)localizedLabelForState:(id)a3;
- (void)setAction:(id)a3;
@end

@implementation WFMediaPickerParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v4 = a3;
  v5 = [v4 variable];

  if (v5)
  {
    v8.receiver = self;
    v8.super_class = WFMediaPickerParameter;
    v6 = [(WFParameter *)&v8 parameterStateIsValid:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)localizedLabelForState:(id)a3
{
  v3 = [a3 value];
  v4 = [v3 itemName];

  return v4;
}

- (void)setAction:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_action);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_action, obj);
    v5 = obj;
  }
}

@end