@interface WFINCodableBooleanAttributeDisplayName
- (WFINCodableBooleanAttributeDisplayName)initWithAttribute:(id)attribute isOn:(BOOL)on;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFINCodableBooleanAttributeDisplayName

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  contextCopy = context;
  isOn = [(WFINCodableBooleanAttributeDisplayName *)self isOn];
  attribute = [(WFINCodableBooleanAttributeDisplayName *)self attribute];
  stringLocalizer = [contextCopy stringLocalizer];

  if (isOn)
  {
    [attribute localizedTrueDisplayNameWithLocalizer:stringLocalizer];
  }

  else
  {
    [attribute localizedFalseDisplayNameWithLocalizer:stringLocalizer];
  }
  v9 = ;

  return v9;
}

- (WFINCodableBooleanAttributeDisplayName)initWithAttribute:(id)attribute isOn:(BOOL)on
{
  attributeCopy = attribute;
  v12.receiver = self;
  v12.super_class = WFINCodableBooleanAttributeDisplayName;
  v8 = [(WFINCodableBooleanAttributeDisplayName *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attribute, attribute);
    v9->_isOn = on;
    v10 = v9;
  }

  return v9;
}

@end