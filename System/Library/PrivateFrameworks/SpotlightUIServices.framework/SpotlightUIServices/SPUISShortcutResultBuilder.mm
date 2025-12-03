@interface SPUISShortcutResultBuilder
+ (BOOL)supportsResult:(id)result;
- (BOOL)buildButtonItemsAreTrailing;
- (BOOL)resultShadowsSettingResult;
- (SPUISShortcutResultBuilder)initWithResult:(id)result;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildCompactThumbnail;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildFootnote;
- (id)buildResult;
- (id)buildStandardThumbnail;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)buildTrailingThumbnail;
@end

@implementation SPUISShortcutResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SPUISShortcutResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    resultBundleId = [resultCopy resultBundleId];
    bundleId = [objc_opt_class() bundleId];
    v5 = [resultBundleId isEqualToString:bundleId];
  }

  return v5;
}

- (SPUISShortcutResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v32.receiver = self;
  v32.super_class = SPUISShortcutResultBuilder;
  v5 = [(SPUISResultBuilder *)&v32 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2408] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC24F0] withType:objc_opt_class()];
    -[SPUISShortcutResultBuilder setIsBackgroundRunnable:](v5, "setIsBackgroundRunnable:", [v7 BOOLValue]);

    v8 = [v6 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    [(SPUISShortcutResultBuilder *)v5 setAlternateNames:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setName:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setNumberOfActionsString:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2FE8] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setPunchoutLabel:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC3088] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setSettingsPreference:v13];

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC3080] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setActionIdentifier:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC2770] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setDomainIdentifier:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC30C0] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setLnPropertyIdentifier:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x277CC30C8] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setPrimaryPhrase:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x277CC3090] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setBiomeStreamIdentifier:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC30A8] withType:objc_opt_class()];
    v20 = v19;
    if (v19)
    {
      unsignedIntegerValue = [v19 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    [(SPUISShortcutResultBuilder *)v5 setEntityThumbnailDisplayStyle:unsignedIntegerValue];
    v22 = [resultCopy valueForAttribute:*MEMORY[0x277CC30D0] withType:objc_opt_class()];
    v23 = v22;
    if (v22)
    {
      unsignedIntegerValue2 = [v22 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0;
    }

    [(SPUISShortcutResultBuilder *)v5 setEntityBadgeType:unsignedIntegerValue2];
    relatedAppBundleIdentifier = [(SPUISResultBuilder *)v5 relatedAppBundleIdentifier];
    if ([relatedAppBundleIdentifier isEqualToString:@"com.apple.mobiletimer"])
    {
      domainIdentifier = [(SPUISShortcutResultBuilder *)v5 domainIdentifier];
      v27 = MEMORY[0x277D7A180];
      relatedAppBundleIdentifier2 = [(SPUISResultBuilder *)v5 relatedAppBundleIdentifier];
      v29 = [v27 spotlightDomainIdentifierForBundleIdentifier:relatedAppBundleIdentifier2];
      -[SPUISShortcutResultBuilder setIsAlarmResult:](v5, "setIsAlarmResult:", [domainIdentifier isEqual:v29]);
    }

    else
    {
      [(SPUISShortcutResultBuilder *)v5 setIsAlarmResult:0];
    }

    domainIdentifier2 = [(SPUISShortcutResultBuilder *)v5 domainIdentifier];
    -[SPUISShortcutResultBuilder setIsCustomAppAttributedShortcut:](v5, "setIsCustomAppAttributedShortcut:", [domainIdentifier2 isEqualToString:*MEMORY[0x277D7A350]]);
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SPUISShortcutResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v6 buildResult];
  userActivityRequiredString = [(SPUISShortcutResultBuilder *)self userActivityRequiredString];
  [buildResult setUserActivityRequiredString:userActivityRequiredString];

  [buildResult setType:20];

  return buildResult;
}

- (id)buildTitle
{
  result = [(SPUISResultBuilder *)self result];
  if (![result shouldUseCompactDisplay] || -[SPUISShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = SPUISShortcutResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v10 buildTitle];
    [buildTitle setMaxLines:2];
    goto LABEL_5;
  }

  primaryPhrase = [(SPUISShortcutResultBuilder *)self primaryPhrase];
  v7 = [primaryPhrase length];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x277D4C598];
  primaryPhrase2 = [(SPUISShortcutResultBuilder *)self primaryPhrase];
  buildTitle = [v8 textWithString:primaryPhrase2];

LABEL_5:

  return buildTitle;
}

- (id)buildStandardThumbnail
{
  lnPropertyIdentifier = [(SPUISShortcutResultBuilder *)self lnPropertyIdentifier];

  if (lnPropertyIdentifier)
  {
    buildThumbnail = objc_opt_new();
    lnPropertyIdentifier2 = [(SPUISShortcutResultBuilder *)self lnPropertyIdentifier];
    [buildThumbnail setLnPropertyIdentifier:lnPropertyIdentifier2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISShortcutResultBuilder;
    buildThumbnail = [(SPUISResultBuilder *)&v7 buildThumbnail];
  }

  [buildThumbnail setCornerRoundingStyle:{4 * (-[SPUISShortcutResultBuilder entityThumbnailDisplayStyle](self, "entityThumbnailDisplayStyle") == 1)}];

  return buildThumbnail;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  biomeStreamIdentifier = [(SPUISShortcutResultBuilder *)self biomeStreamIdentifier];
  v6 = [biomeStreamIdentifier length];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISShortcutResultBuilder;
    v7 = [(SPUISResultBuilder *)&v9 buildBadgingImageWithThumbnail:thumbnailCopy];
  }

  return v7;
}

- (id)buildCompactThumbnail
{
  v3 = objc_opt_new();
  relatedAppBundleIdentifier = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:relatedAppBundleIdentifier];

  return v3;
}

- (id)buildThumbnail
{
  result = [(SPUISResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x277CC31D8] withType:objc_opt_class()];

  result2 = [(SPUISResultBuilder *)self result];
  if (![result2 shouldUseCompactDisplay] || -[SPUISShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    buildStandardThumbnail = [(SPUISShortcutResultBuilder *)self buildStandardThumbnail];
    goto LABEL_5;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  buildStandardThumbnail = [(SPUISShortcutResultBuilder *)self buildCompactThumbnail];
LABEL_5:
  v7 = buildStandardThumbnail;

  return v7;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D4C598];
  numberOfActionsString = [(SPUISShortcutResultBuilder *)self numberOfActionsString];
  v4 = [v2 textWithString:numberOfActionsString];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)buildFootnote
{
  result = [(SPUISResultBuilder *)self result];
  relatedAppIdentifier = [result relatedAppIdentifier];

  if (relatedAppIdentifier)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D4C598];
    alternateNames = [(SPUISShortcutResultBuilder *)self alternateNames];
    v8 = [alternateNames objectAtIndexedSubscript:0];
    v5 = [v6 textWithString:v8];
  }

  return v5;
}

- (id)buildCommand
{
  if ([(SPUISShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    buildCommand = objc_opt_new();
    settingsPreference = [(SPUISShortcutResultBuilder *)self settingsPreference];
    [buildCommand setCoreSpotlightIdentifier:settingsPreference];

    [buildCommand setApplicationBundleIdentifier:@"com.apple.Preferences"];
  }

  else if ([(SPUISShortcutResultBuilder *)self isAlarmResult])
  {
    if (buildCommand_onceToken != -1)
    {
      [SPUISShortcutResultBuilder buildCommand];
    }

    buildCommand = objc_opt_new();
    result = [(SPUISResultBuilder *)self result];
    relatedAppIdentifier = [result relatedAppIdentifier];
    [buildCommand setApplicationBundleIdentifier:relatedAppIdentifier];

    [buildCommand setUserActivityRequiredString:buildCommand_alarmToggleUserActivityString];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISShortcutResultBuilder;
    buildCommand = [(SPUISResultBuilder *)&v8 buildCommand];
  }

  return buildCommand;
}

void __42__SPUISShortcutResultBuilder_buildCommand__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.clock.alarm"];
  [v0 _createUserActivityStringsWithOptions:0 completionHandler:&__block_literal_global_509];
}

- (id)buildButtonItems
{
  v15[1] = *MEMORY[0x277D85DE8];
  if ([(SPUISShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    v3 = objc_opt_new();
    v13.receiver = self;
    v13.super_class = SPUISShortcutResultBuilder;
    buildCommand = [(SPUISResultBuilder *)&v13 buildCommand];
    [v3 setCommand:buildCommand];

    v15[0] = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = v15;
LABEL_5:
    buildButtonItems = [v5 arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  if ([(SPUISShortcutResultBuilder *)self isAlarmResult])
  {
    v3 = objc_opt_new();
    v12.receiver = self;
    v12.super_class = SPUISShortcutResultBuilder;
    buildCommand2 = [(SPUISResultBuilder *)&v12 buildCommand];
    [v3 setCommand:buildCommand2];

    v14 = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v14;
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = SPUISShortcutResultBuilder;
  buildButtonItems = [(SPUISResultBuilder *)&v11 buildButtonItems];
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];

  return buildButtonItems;
}

- (BOOL)buildButtonItemsAreTrailing
{
  if ([(SPUISShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SPUISShortcutResultBuilder;
  return [(SPUISResultBuilder *)&v4 buildButtonItemsAreTrailing];
}

- (id)buildTrailingThumbnail
{
  if (SSSpotlightUIPlusEnabled())
  {
    v3 = 0;
    goto LABEL_21;
  }

  result = [(SPUISResultBuilder *)self result];
  buildStandardThumbnail = [(SPUISShortcutResultBuilder *)self buildStandardThumbnail];
  result2 = [(SPUISResultBuilder *)self result];
  if ([result2 shouldUseCompactDisplay] && !-[SPUISShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v3 = buildStandardThumbnail;
      if (v3)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
  }

  applicationBundleIdentifier = [result applicationBundleIdentifier];
  if ([applicationBundleIdentifier isEqualToString:@"com.apple.shortcuts"])
  {

LABEL_9:
    result3 = [(SPUISResultBuilder *)self result];
    v11 = [result3 valueForAttribute:*MEMORY[0x277CC3078] withType:objc_opt_class()];

    if (v11)
    {
      trailingThumbnailSymbol = v11;
    }

    else
    {
      trailingThumbnailSymbol = [(SPUISShortcutResultBuilder *)self trailingThumbnailSymbol];
    }

    v13 = trailingThumbnailSymbol;
    if ([trailingThumbnailSymbol length])
    {
      v3 = objc_opt_new();
      [v3 setSymbolName:v13];
      [v3 setIsTemplate:1];
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_20;
  }

  resultBundleId = [result resultBundleId];
  v9 = [resultBundleId isEqualToString:@"com.apple.shortcuts"];

  if (v9)
  {
    goto LABEL_9;
  }

  v3 = 0;
LABEL_20:

LABEL_21:

  return v3;
}

- (id)buildDetailedRowCardSection
{
  v6.receiver = self;
  v6.super_class = SPUISShortcutResultBuilder;
  buildDetailedRowCardSection = [(SPUISResultBuilder *)&v6 buildDetailedRowCardSection];
  actionIdentifier = [(SPUISShortcutResultBuilder *)self actionIdentifier];
  [buildDetailedRowCardSection setCommandDetail:actionIdentifier];

  [buildDetailedRowCardSection setButtonItemsAreTrailing:1];

  return buildDetailedRowCardSection;
}

- (id)buildAppTopHitEntityCardSection
{
  v16.receiver = self;
  v16.super_class = SPUISShortcutResultBuilder;
  buildAppTopHitEntityCardSection = [(SPUISResultBuilder *)&v16 buildAppTopHitEntityCardSection];
  thumbnail = [buildAppTopHitEntityCardSection thumbnail];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || [(SPUISShortcutResultBuilder *)self isCustomAppAttributedShortcut]&& (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    result = [(SPUISResultBuilder *)self result];
    v6 = [result valueForAttribute:*MEMORY[0x277CC3078] withType:objc_opt_class()];

    v7 = objc_opt_new();
    v8 = v7;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = @"app.2.stack.3d.fill";
    }

    [v7 setSymbolName:v9];

    thumbnail = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = thumbnail;
    [v10 setIsTemplate:1];
    [v10 setPunchThroughBackground:1];
    [v10 setPrimaryColor:7];
    [v10 setCornerRoundingStyle:4];
  }

  entityBadgeType = [(SPUISShortcutResultBuilder *)self entityBadgeType];
  if (entityBadgeType == 1)
  {
    v12 = @"com.apple.mobilephone";
  }

  else
  {
    if (entityBadgeType != 2)
    {
      goto LABEL_15;
    }

    v12 = @"com.apple.facetime";
  }

  v13 = objc_opt_new();
  [v13 setBundleIdentifier:v12];
  [thumbnail setBadgingImage:v13];

LABEL_15:
  [buildAppTopHitEntityCardSection setThumbnail:thumbnail];
  actionIdentifier = [(SPUISShortcutResultBuilder *)self actionIdentifier];
  [buildAppTopHitEntityCardSection setCommandDetail:actionIdentifier];

  return buildAppTopHitEntityCardSection;
}

- (BOOL)resultShadowsSettingResult
{
  settingsPreference = [(SPUISShortcutResultBuilder *)self settingsPreference];
  if ([settingsPreference length])
  {
    result = [(SPUISResultBuilder *)self result];
    relatedAppIdentifier = [result relatedAppIdentifier];
    v6 = [relatedAppIdentifier isEqualToString:@"com.apple.Preferences"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end