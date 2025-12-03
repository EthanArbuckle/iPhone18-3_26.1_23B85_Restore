@interface SSShortcutResultBuilder
+ (BOOL)supportsResult:(id)result;
- (BOOL)buildButtonItemsAreTrailing;
- (BOOL)resultShadowsSettingResult;
- (SSShortcutResultBuilder)initWithResult:(id)result;
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

@implementation SSShortcutResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SSShortcutResultBuilder;
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

- (SSShortcutResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v32.receiver = self;
  v32.super_class = SSShortcutResultBuilder;
  v5 = [(SSResultBuilder *)&v32 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C08] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D28] withType:objc_opt_class()];
    -[SSShortcutResultBuilder setIsBackgroundRunnable:](v5, "setIsBackgroundRunnable:", [v7 BOOLValue]);

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

    [(SSShortcutResultBuilder *)v5 setAlternateNames:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setName:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setNumberOfActionsString:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6964950] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setPunchoutLabel:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A80] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setSettingsPreference:v13];

    v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A78] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setActionIdentifier:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F88] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setDomainIdentifier:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6964AC0] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setLnPropertyIdentifier:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x1E6964AC8] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setPrimaryPhrase:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A88] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setBiomeStreamIdentifier:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x1E6964AA0] withType:objc_opt_class()];
    v20 = v19;
    if (v19)
    {
      unsignedIntegerValue = [v19 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    [(SSShortcutResultBuilder *)v5 setEntityThumbnailDisplayStyle:unsignedIntegerValue];
    v22 = [resultCopy valueForAttribute:*MEMORY[0x1E6964AD0] withType:objc_opt_class()];
    v23 = v22;
    if (v22)
    {
      unsignedIntegerValue2 = [v22 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0;
    }

    [(SSShortcutResultBuilder *)v5 setEntityBadgeType:unsignedIntegerValue2];
    relatedAppBundleIdentifier = [(SSResultBuilder *)v5 relatedAppBundleIdentifier];
    if ([relatedAppBundleIdentifier isEqualToString:@"com.apple.mobiletimer"])
    {
      domainIdentifier = [(SSShortcutResultBuilder *)v5 domainIdentifier];
      v27 = MEMORY[0x1E69E0D90];
      relatedAppBundleIdentifier2 = [(SSResultBuilder *)v5 relatedAppBundleIdentifier];
      v29 = [v27 spotlightDomainIdentifierForBundleIdentifier:relatedAppBundleIdentifier2];
      -[SSShortcutResultBuilder setIsAlarmResult:](v5, "setIsAlarmResult:", [domainIdentifier isEqual:v29]);
    }

    else
    {
      [(SSShortcutResultBuilder *)v5 setIsAlarmResult:0];
    }

    domainIdentifier2 = [(SSShortcutResultBuilder *)v5 domainIdentifier];
    -[SSShortcutResultBuilder setIsCustomAppAttributedShortcut:](v5, "setIsCustomAppAttributedShortcut:", [domainIdentifier2 isEqualToString:*MEMORY[0x1E69E0FC0]]);
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SSShortcutResultBuilder;
  buildResult = [(SSResultBuilder *)&v6 buildResult];
  userActivityRequiredString = [(SSShortcutResultBuilder *)self userActivityRequiredString];
  [buildResult setUserActivityRequiredString:userActivityRequiredString];

  [buildResult setType:20];

  return buildResult;
}

- (id)buildTitle
{
  result = [(SSResultBuilder *)self result];
  if (![result shouldUseCompactDisplay] || -[SSShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = SSShortcutResultBuilder;
    buildTitle = [(SSResultBuilder *)&v10 buildTitle];
    [buildTitle setMaxLines:2];
    goto LABEL_5;
  }

  primaryPhrase = [(SSShortcutResultBuilder *)self primaryPhrase];
  v7 = [primaryPhrase length];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x1E69CA3A0];
  primaryPhrase2 = [(SSShortcutResultBuilder *)self primaryPhrase];
  buildTitle = [v8 textWithString:primaryPhrase2];

LABEL_5:

  return buildTitle;
}

- (id)buildStandardThumbnail
{
  lnPropertyIdentifier = [(SSShortcutResultBuilder *)self lnPropertyIdentifier];

  if (lnPropertyIdentifier)
  {
    buildThumbnail = objc_opt_new();
    lnPropertyIdentifier2 = [(SSShortcutResultBuilder *)self lnPropertyIdentifier];
    [buildThumbnail setLnPropertyIdentifier:lnPropertyIdentifier2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SSShortcutResultBuilder;
    buildThumbnail = [(SSResultBuilder *)&v7 buildThumbnail];
  }

  [buildThumbnail setCornerRoundingStyle:{4 * (-[SSShortcutResultBuilder entityThumbnailDisplayStyle](self, "entityThumbnailDisplayStyle") == 1)}];

  return buildThumbnail;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  biomeStreamIdentifier = [(SSShortcutResultBuilder *)self biomeStreamIdentifier];
  if ([biomeStreamIdentifier length])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = SSShortcutResultBuilder;
  v7 = [(SSResultBuilder *)&v9 buildBadgingImageWithThumbnail:thumbnailCopy];
LABEL_5:

  return v7;
}

- (id)buildCompactThumbnail
{
  v3 = objc_opt_new();
  relatedAppBundleIdentifier = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:relatedAppBundleIdentifier];

  return v3;
}

- (id)buildThumbnail
{
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964C00] withType:objc_opt_class()];

  result2 = [(SSResultBuilder *)self result];
  if (![result2 shouldUseCompactDisplay] || -[SSShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    buildStandardThumbnail = [(SSShortcutResultBuilder *)self buildStandardThumbnail];
    goto LABEL_5;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  buildStandardThumbnail = [(SSShortcutResultBuilder *)self buildCompactThumbnail];
LABEL_5:
  v7 = buildStandardThumbnail;

  return v7;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69CA3A0];
  numberOfActionsString = [(SSShortcutResultBuilder *)self numberOfActionsString];
  v4 = [v2 textWithString:numberOfActionsString];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)buildFootnote
{
  result = [(SSResultBuilder *)self result];
  relatedAppIdentifier = [result relatedAppIdentifier];

  if (relatedAppIdentifier)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69CA3A0];
    alternateNames = [(SSShortcutResultBuilder *)self alternateNames];
    v8 = [alternateNames objectAtIndexedSubscript:0];
    v5 = [v6 textWithString:v8];
  }

  return v5;
}

- (id)buildCommand
{
  if ([(SSShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    buildCommand = objc_opt_new();
    settingsPreference = [(SSShortcutResultBuilder *)self settingsPreference];
    [buildCommand setCoreSpotlightIdentifier:settingsPreference];

    [buildCommand setApplicationBundleIdentifier:@"com.apple.Preferences"];
  }

  else if ([(SSShortcutResultBuilder *)self isAlarmResult])
  {
    if (buildCommand_onceToken != -1)
    {
      [SSShortcutResultBuilder buildCommand];
    }

    buildCommand = objc_opt_new();
    result = [(SSResultBuilder *)self result];
    relatedAppIdentifier = [result relatedAppIdentifier];
    [buildCommand setApplicationBundleIdentifier:relatedAppIdentifier];

    [buildCommand setUserActivityRequiredString:buildCommand_alarmToggleUserActivityString];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSShortcutResultBuilder;
    buildCommand = [(SSResultBuilder *)&v8 buildCommand];
  }

  return buildCommand;
}

void __39__SSShortcutResultBuilder_buildCommand__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.clock.alarm"];
  [v0 _createUserActivityStringsWithOptions:0 completionHandler:&__block_literal_global_86];
}

- (id)buildButtonItems
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ([(SSShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    v3 = objc_opt_new();
    v13.receiver = self;
    v13.super_class = SSShortcutResultBuilder;
    buildCommand = [(SSResultBuilder *)&v13 buildCommand];
    [v3 setCommand:buildCommand];

    v15[0] = v3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v15;
LABEL_5:
    buildButtonItems = [v5 arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  if ([(SSShortcutResultBuilder *)self isAlarmResult])
  {
    v3 = objc_opt_new();
    v12.receiver = self;
    v12.super_class = SSShortcutResultBuilder;
    buildCommand2 = [(SSResultBuilder *)&v12 buildCommand];
    [v3 setCommand:buildCommand2];

    v14 = v3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v14;
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = SSShortcutResultBuilder;
  buildButtonItems = [(SSResultBuilder *)&v11 buildButtonItems];
LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return buildButtonItems;
}

- (BOOL)buildButtonItemsAreTrailing
{
  if ([(SSShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SSShortcutResultBuilder;
  return [(SSResultBuilder *)&v4 buildButtonItemsAreTrailing];
}

- (id)buildTrailingThumbnail
{
  if (SSSpotlightUIPlusEnabled())
  {
    v3 = 0;
    goto LABEL_21;
  }

  result = [(SSResultBuilder *)self result];
  buildStandardThumbnail = [(SSShortcutResultBuilder *)self buildStandardThumbnail];
  result2 = [(SSResultBuilder *)self result];
  if ([result2 shouldUseCompactDisplay] && !-[SSShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
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
    result3 = [(SSResultBuilder *)self result];
    v11 = [result3 valueForAttribute:*MEMORY[0x1E6964A70] withType:objc_opt_class()];

    if (v11)
    {
      trailingThumbnailSymbol = v11;
    }

    else
    {
      trailingThumbnailSymbol = [(SSShortcutResultBuilder *)self trailingThumbnailSymbol];
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
  v6.super_class = SSShortcutResultBuilder;
  buildDetailedRowCardSection = [(SSResultBuilder *)&v6 buildDetailedRowCardSection];
  actionIdentifier = [(SSShortcutResultBuilder *)self actionIdentifier];
  [buildDetailedRowCardSection setCommandDetail:actionIdentifier];

  [buildDetailedRowCardSection setButtonItemsAreTrailing:1];

  return buildDetailedRowCardSection;
}

- (id)buildAppTopHitEntityCardSection
{
  v16.receiver = self;
  v16.super_class = SSShortcutResultBuilder;
  buildAppTopHitEntityCardSection = [(SSResultBuilder *)&v16 buildAppTopHitEntityCardSection];
  thumbnail = [buildAppTopHitEntityCardSection thumbnail];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || [(SSShortcutResultBuilder *)self isCustomAppAttributedShortcut]&& (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    result = [(SSResultBuilder *)self result];
    v6 = [result valueForAttribute:*MEMORY[0x1E6964A70] withType:objc_opt_class()];

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

  entityBadgeType = [(SSShortcutResultBuilder *)self entityBadgeType];
  if (entityBadgeType == 1)
  {
    v12 = SSPhoneBundleIdentifier;
  }

  else
  {
    if (entityBadgeType != 2)
    {
      goto LABEL_15;
    }

    v12 = SSFaceTimeBundleIdentifier;
  }

  v13 = objc_opt_new();
  [v13 setBundleIdentifier:*v12];
  [thumbnail setBadgingImage:v13];

LABEL_15:
  [buildAppTopHitEntityCardSection setThumbnail:thumbnail];
  actionIdentifier = [(SSShortcutResultBuilder *)self actionIdentifier];
  [buildAppTopHitEntityCardSection setCommandDetail:actionIdentifier];

  return buildAppTopHitEntityCardSection;
}

- (BOOL)resultShadowsSettingResult
{
  settingsPreference = [(SSShortcutResultBuilder *)self settingsPreference];
  if ([settingsPreference length])
  {
    result = [(SSResultBuilder *)self result];
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