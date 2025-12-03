@interface WFINCodableEnumSwitchDisplayName
- (WFINCodableEnumSwitchDisplayName)initWithAttribute:(id)attribute toggleState:(int64_t)state;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFINCodableEnumSwitchDisplayName

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  contextCopy = context;
  attribute = [(WFINCodableEnumSwitchDisplayName *)self attribute];
  codableEnum = [attribute codableEnum];
  values = [codableEnum values];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__WFINCodableEnumSwitchDisplayName_localizedStringWithContext_pluralizationNumber___block_invoke;
  v13[3] = &unk_1E8375B28;
  v13[4] = self;
  v9 = [values if_firstObjectPassingTest:v13];
  stringLocalizer = [contextCopy stringLocalizer];

  v11 = [v9 localizedDisplayNameWithLocalizer:stringLocalizer];

  return v11;
}

- (WFINCodableEnumSwitchDisplayName)initWithAttribute:(id)attribute toggleState:(int64_t)state
{
  attributeCopy = attribute;
  v12.receiver = self;
  v12.super_class = WFINCodableEnumSwitchDisplayName;
  v8 = [(WFINCodableEnumSwitchDisplayName *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attribute, attribute);
    v9->_toggleState = state;
    v10 = v9;
  }

  return v9;
}

@end