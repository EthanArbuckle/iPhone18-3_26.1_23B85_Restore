@interface WFINCodableEnumValueLabelName
- (WFINCodableEnumValueLabelName)initWithValue:(id)value;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFINCodableEnumValueLabelName

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  contextCopy = context;
  value = [(WFINCodableEnumValueLabelName *)self value];
  localizedName = [value localizedName];
  v8 = localizedName;
  if (localizedName)
  {
    v9 = localizedName;
  }

  else
  {
    value2 = [(WFINCodableEnumValueLabelName *)self value];
    stringLocalizer = [contextCopy stringLocalizer];
    v9 = [value2 localizedDisplayNameWithLocalizer:stringLocalizer];
  }

  return v9;
}

- (WFINCodableEnumValueLabelName)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = WFINCodableEnumValueLabelName;
  v6 = [(WFINCodableEnumValueLabelName *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
    v8 = v7;
  }

  return v7;
}

@end