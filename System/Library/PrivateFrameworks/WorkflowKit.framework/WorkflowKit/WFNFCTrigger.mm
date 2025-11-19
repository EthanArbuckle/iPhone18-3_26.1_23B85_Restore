@interface WFNFCTrigger
+ (BOOL)isSupportedOnThisDevice;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (BOOL)hasValidConfiguration;
- (WFNFCTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFNFCTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B560 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WFNFCTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:a3];
  v5 = [(WFNFCTrigger *)self tagIdentifier];
  [v4 setTagIdentifier:v5];

  v6 = [(WFNFCTrigger *)self name];
  [v4 setName:v6];

  return v4;
}

- (WFNFCTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFNFCTrigger;
  v5 = [(WFTrigger *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tagIdentifier"];
    tagIdentifier = v5->_tagIdentifier;
    v5->_tagIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v9 = v8;
    if (!v8)
    {
      v9 = WFLocalizedString(@"NFC tag");
    }

    objc_storeStrong(&v5->_name, v9);
    if (!v8)
    {
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFNFCTrigger;
  v4 = a3;
  [(WFTrigger *)&v7 encodeWithCoder:v4];
  v5 = [(WFNFCTrigger *)self tagIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"tagIdentifier"];

  v6 = [(WFNFCTrigger *)self name];
  [v4 encodeObject:v6 forKey:@"name"];
}

- (id)localizedPastTenseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"“%@” detected");
  v5 = [(WFNFCTrigger *)self name];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"When “%@” is detected");
  v5 = [(WFNFCTrigger *)self name];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFNFCTrigger *)self tagIdentifier];
  if (v3)
  {
    v4 = [(WFNFCTrigger *)self name];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"NFC", @"NFC");
  v5 = [v3 localize:v4];

  return v5;
}

+ (BOOL)isSupportedOnThisDevice
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getNFHardwareManagerClass_softClass;
  v11 = getNFHardwareManagerClass_softClass;
  if (!getNFHardwareManagerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getNFHardwareManagerClass_block_invoke;
    v7[3] = &unk_1E837FAC0;
    v7[4] = &v8;
    __getNFHardwareManagerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [v2 sharedHardwareManager];
  v5 = [v4 isBackgroundTagReadingAvailable];

  return v5;
}

@end