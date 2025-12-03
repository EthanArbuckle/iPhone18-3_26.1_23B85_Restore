@interface WFNFCTrigger
+ (BOOL)isSupportedOnThisDevice;
+ (id)localizedDisplayNameWithContext:(id)context;
- (BOOL)hasValidConfiguration;
- (WFNFCTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFNFCTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B560 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WFNFCTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:zone];
  tagIdentifier = [(WFNFCTrigger *)self tagIdentifier];
  [v4 setTagIdentifier:tagIdentifier];

  name = [(WFNFCTrigger *)self name];
  [v4 setName:name];

  return v4;
}

- (WFNFCTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFNFCTrigger;
  v5 = [(WFTrigger *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tagIdentifier"];
    tagIdentifier = v5->_tagIdentifier;
    v5->_tagIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFNFCTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFNFCTrigger *)self tagIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"tagIdentifier"];

  name = [(WFNFCTrigger *)self name];
  [coderCopy encodeObject:name forKey:@"name"];
}

- (id)localizedPastTenseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"“%@” detected");
  name = [(WFNFCTrigger *)self name];
  v6 = [v3 localizedStringWithFormat:v4, name];

  return v6;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"When “%@” is detected");
  name = [(WFNFCTrigger *)self name];
  v6 = [v3 localizedStringWithFormat:v4, name];

  return v6;
}

- (BOOL)hasValidConfiguration
{
  tagIdentifier = [(WFNFCTrigger *)self tagIdentifier];
  if (tagIdentifier)
  {
    name = [(WFNFCTrigger *)self name];
    v5 = [name length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NFC", @"NFC");
  v5 = [contextCopy localize:v4];

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
  sharedHardwareManager = [v2 sharedHardwareManager];
  isBackgroundTagReadingAvailable = [sharedHardwareManager isBackgroundTagReadingAvailable];

  return isBackgroundTagReadingAvailable;
}

@end