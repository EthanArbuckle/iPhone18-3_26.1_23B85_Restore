@interface WFINCodableEnumSwitchDisplayName
- (WFINCodableEnumSwitchDisplayName)initWithAttribute:(id)a3 toggleState:(int64_t)a4;
- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFINCodableEnumSwitchDisplayName

- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4
{
  v5 = a3;
  v6 = [(WFINCodableEnumSwitchDisplayName *)self attribute];
  v7 = [v6 codableEnum];
  v8 = [v7 values];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__WFINCodableEnumSwitchDisplayName_localizedStringWithContext_pluralizationNumber___block_invoke;
  v13[3] = &unk_1E8375B28;
  v13[4] = self;
  v9 = [v8 if_firstObjectPassingTest:v13];
  v10 = [v5 stringLocalizer];

  v11 = [v9 localizedDisplayNameWithLocalizer:v10];

  return v11;
}

- (WFINCodableEnumSwitchDisplayName)initWithAttribute:(id)a3 toggleState:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFINCodableEnumSwitchDisplayName;
  v8 = [(WFINCodableEnumSwitchDisplayName *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attribute, a3);
    v9->_toggleState = a4;
    v10 = v9;
  }

  return v9;
}

@end