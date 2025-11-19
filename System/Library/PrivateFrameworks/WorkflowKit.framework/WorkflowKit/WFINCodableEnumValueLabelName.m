@interface WFINCodableEnumValueLabelName
- (WFINCodableEnumValueLabelName)initWithValue:(id)a3;
- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFINCodableEnumValueLabelName

- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4
{
  v5 = a3;
  v6 = [(WFINCodableEnumValueLabelName *)self value];
  v7 = [v6 localizedName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(WFINCodableEnumValueLabelName *)self value];
    v11 = [v5 stringLocalizer];
    v9 = [v10 localizedDisplayNameWithLocalizer:v11];
  }

  return v9;
}

- (WFINCodableEnumValueLabelName)initWithValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFINCodableEnumValueLabelName;
  v6 = [(WFINCodableEnumValueLabelName *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
    v8 = v7;
  }

  return v7;
}

@end