@interface WFINCodableBooleanAttributeDisplayName
- (WFINCodableBooleanAttributeDisplayName)initWithAttribute:(id)a3 isOn:(BOOL)a4;
- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFINCodableBooleanAttributeDisplayName

- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4
{
  v5 = a3;
  v6 = [(WFINCodableBooleanAttributeDisplayName *)self isOn];
  v7 = [(WFINCodableBooleanAttributeDisplayName *)self attribute];
  v8 = [v5 stringLocalizer];

  if (v6)
  {
    [v7 localizedTrueDisplayNameWithLocalizer:v8];
  }

  else
  {
    [v7 localizedFalseDisplayNameWithLocalizer:v8];
  }
  v9 = ;

  return v9;
}

- (WFINCodableBooleanAttributeDisplayName)initWithAttribute:(id)a3 isOn:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFINCodableBooleanAttributeDisplayName;
  v8 = [(WFINCodableBooleanAttributeDisplayName *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attribute, a3);
    v9->_isOn = a4;
    v10 = v9;
  }

  return v9;
}

@end