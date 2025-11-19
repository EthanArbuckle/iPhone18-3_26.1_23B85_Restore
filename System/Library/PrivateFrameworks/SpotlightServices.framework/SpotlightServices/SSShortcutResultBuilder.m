@interface SSShortcutResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (BOOL)buildButtonItemsAreTrailing;
- (BOOL)resultShadowsSettingResult;
- (SSShortcutResultBuilder)initWithResult:(id)a3;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)a3;
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

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SSShortcutResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 resultBundleId];
    v7 = [objc_opt_class() bundleId];
    v5 = [v6 isEqualToString:v7];
  }

  return v5;
}

- (SSShortcutResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SSShortcutResultBuilder;
  v5 = [(SSResultBuilder *)&v32 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963C08] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x1E6963D28] withType:objc_opt_class()];
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

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setName:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setNumberOfActionsString:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6964950] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setPunchoutLabel:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x1E6964A80] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setSettingsPreference:v13];

    v14 = [v4 valueForAttribute:*MEMORY[0x1E6964A78] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setActionIdentifier:v14];

    v15 = [v4 valueForAttribute:*MEMORY[0x1E6963F88] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setDomainIdentifier:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x1E6964AC0] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setLnPropertyIdentifier:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x1E6964AC8] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setPrimaryPhrase:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x1E6964A88] withType:objc_opt_class()];
    [(SSShortcutResultBuilder *)v5 setBiomeStreamIdentifier:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x1E6964AA0] withType:objc_opt_class()];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 unsignedIntegerValue];
    }

    else
    {
      v21 = 0;
    }

    [(SSShortcutResultBuilder *)v5 setEntityThumbnailDisplayStyle:v21];
    v22 = [v4 valueForAttribute:*MEMORY[0x1E6964AD0] withType:objc_opt_class()];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 unsignedIntegerValue];
    }

    else
    {
      v24 = 0;
    }

    [(SSShortcutResultBuilder *)v5 setEntityBadgeType:v24];
    v25 = [(SSResultBuilder *)v5 relatedAppBundleIdentifier];
    if ([v25 isEqualToString:@"com.apple.mobiletimer"])
    {
      v26 = [(SSShortcutResultBuilder *)v5 domainIdentifier];
      v27 = MEMORY[0x1E69E0D90];
      v28 = [(SSResultBuilder *)v5 relatedAppBundleIdentifier];
      v29 = [v27 spotlightDomainIdentifierForBundleIdentifier:v28];
      -[SSShortcutResultBuilder setIsAlarmResult:](v5, "setIsAlarmResult:", [v26 isEqual:v29]);
    }

    else
    {
      [(SSShortcutResultBuilder *)v5 setIsAlarmResult:0];
    }

    v30 = [(SSShortcutResultBuilder *)v5 domainIdentifier];
    -[SSShortcutResultBuilder setIsCustomAppAttributedShortcut:](v5, "setIsCustomAppAttributedShortcut:", [v30 isEqualToString:*MEMORY[0x1E69E0FC0]]);
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SSShortcutResultBuilder;
  v3 = [(SSResultBuilder *)&v6 buildResult];
  v4 = [(SSShortcutResultBuilder *)self userActivityRequiredString];
  [v3 setUserActivityRequiredString:v4];

  [v3 setType:20];

  return v3;
}

- (id)buildTitle
{
  v3 = [(SSResultBuilder *)self result];
  if (![v3 shouldUseCompactDisplay] || -[SSShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = SSShortcutResultBuilder;
    v4 = [(SSResultBuilder *)&v10 buildTitle];
    [v4 setMaxLines:2];
    goto LABEL_5;
  }

  v6 = [(SSShortcutResultBuilder *)self primaryPhrase];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x1E69CA3A0];
  v9 = [(SSShortcutResultBuilder *)self primaryPhrase];
  v4 = [v8 textWithString:v9];

LABEL_5:

  return v4;
}

- (id)buildStandardThumbnail
{
  v3 = [(SSShortcutResultBuilder *)self lnPropertyIdentifier];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SSShortcutResultBuilder *)self lnPropertyIdentifier];
    [v4 setLnPropertyIdentifier:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SSShortcutResultBuilder;
    v4 = [(SSResultBuilder *)&v7 buildThumbnail];
  }

  [v4 setCornerRoundingStyle:{4 * (-[SSShortcutResultBuilder entityThumbnailDisplayStyle](self, "entityThumbnailDisplayStyle") == 1)}];

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = a3;
  v5 = [(SSShortcutResultBuilder *)self biomeStreamIdentifier];
  if ([v5 length])
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
  v7 = [(SSResultBuilder *)&v9 buildBadgingImageWithThumbnail:v4];
LABEL_5:

  return v7;
}

- (id)buildCompactThumbnail
{
  v3 = objc_opt_new();
  v4 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:v4];

  return v3;
}

- (id)buildThumbnail
{
  v3 = [(SSResultBuilder *)self result];
  v4 = [v3 valueForAttribute:*MEMORY[0x1E6964C00] withType:objc_opt_class()];

  v5 = [(SSResultBuilder *)self result];
  if (![v5 shouldUseCompactDisplay] || -[SSShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    v6 = [(SSShortcutResultBuilder *)self buildStandardThumbnail];
    goto LABEL_5;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = [(SSShortcutResultBuilder *)self buildCompactThumbnail];
LABEL_5:
  v7 = v6;

  return v7;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69CA3A0];
  v3 = [(SSShortcutResultBuilder *)self numberOfActionsString];
  v4 = [v2 textWithString:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)buildFootnote
{
  v3 = [(SSResultBuilder *)self result];
  v4 = [v3 relatedAppIdentifier];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69CA3A0];
    v7 = [(SSShortcutResultBuilder *)self alternateNames];
    v8 = [v7 objectAtIndexedSubscript:0];
    v5 = [v6 textWithString:v8];
  }

  return v5;
}

- (id)buildCommand
{
  if ([(SSShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    v3 = objc_opt_new();
    v4 = [(SSShortcutResultBuilder *)self settingsPreference];
    [v3 setCoreSpotlightIdentifier:v4];

    [v3 setApplicationBundleIdentifier:@"com.apple.Preferences"];
  }

  else if ([(SSShortcutResultBuilder *)self isAlarmResult])
  {
    if (buildCommand_onceToken != -1)
    {
      [SSShortcutResultBuilder buildCommand];
    }

    v3 = objc_opt_new();
    v5 = [(SSResultBuilder *)self result];
    v6 = [v5 relatedAppIdentifier];
    [v3 setApplicationBundleIdentifier:v6];

    [v3 setUserActivityRequiredString:buildCommand_alarmToggleUserActivityString];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSShortcutResultBuilder;
    v3 = [(SSResultBuilder *)&v8 buildCommand];
  }

  return v3;
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
    v4 = [(SSResultBuilder *)&v13 buildCommand];
    [v3 setCommand:v4];

    v15[0] = v3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v15;
LABEL_5:
    v8 = [v5 arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  if ([(SSShortcutResultBuilder *)self isAlarmResult])
  {
    v3 = objc_opt_new();
    v12.receiver = self;
    v12.super_class = SSShortcutResultBuilder;
    v7 = [(SSResultBuilder *)&v12 buildCommand];
    [v3 setCommand:v7];

    v14 = v3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v14;
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = SSShortcutResultBuilder;
  v8 = [(SSResultBuilder *)&v11 buildButtonItems];
LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

  v4 = [(SSResultBuilder *)self result];
  v5 = [(SSShortcutResultBuilder *)self buildStandardThumbnail];
  v6 = [(SSResultBuilder *)self result];
  if ([v6 shouldUseCompactDisplay] && !-[SSShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v3 = v5;
      if (v3)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
  }

  v7 = [v4 applicationBundleIdentifier];
  if ([v7 isEqualToString:@"com.apple.shortcuts"])
  {

LABEL_9:
    v10 = [(SSResultBuilder *)self result];
    v11 = [v10 valueForAttribute:*MEMORY[0x1E6964A70] withType:objc_opt_class()];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [(SSShortcutResultBuilder *)self trailingThumbnailSymbol];
    }

    v13 = v12;
    if ([v12 length])
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

  v8 = [v4 resultBundleId];
  v9 = [v8 isEqualToString:@"com.apple.shortcuts"];

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
  v3 = [(SSResultBuilder *)&v6 buildDetailedRowCardSection];
  v4 = [(SSShortcutResultBuilder *)self actionIdentifier];
  [v3 setCommandDetail:v4];

  [v3 setButtonItemsAreTrailing:1];

  return v3;
}

- (id)buildAppTopHitEntityCardSection
{
  v16.receiver = self;
  v16.super_class = SSShortcutResultBuilder;
  v3 = [(SSResultBuilder *)&v16 buildAppTopHitEntityCardSection];
  v4 = [v3 thumbnail];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || [(SSShortcutResultBuilder *)self isCustomAppAttributedShortcut]&& (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(SSResultBuilder *)self result];
    v6 = [v5 valueForAttribute:*MEMORY[0x1E6964A70] withType:objc_opt_class()];

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

    v4 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
    [v10 setIsTemplate:1];
    [v10 setPunchThroughBackground:1];
    [v10 setPrimaryColor:7];
    [v10 setCornerRoundingStyle:4];
  }

  v11 = [(SSShortcutResultBuilder *)self entityBadgeType];
  if (v11 == 1)
  {
    v12 = SSPhoneBundleIdentifier;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v12 = SSFaceTimeBundleIdentifier;
  }

  v13 = objc_opt_new();
  [v13 setBundleIdentifier:*v12];
  [v4 setBadgingImage:v13];

LABEL_15:
  [v3 setThumbnail:v4];
  v14 = [(SSShortcutResultBuilder *)self actionIdentifier];
  [v3 setCommandDetail:v14];

  return v3;
}

- (BOOL)resultShadowsSettingResult
{
  v3 = [(SSShortcutResultBuilder *)self settingsPreference];
  if ([v3 length])
  {
    v4 = [(SSResultBuilder *)self result];
    v5 = [v4 relatedAppIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.Preferences"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end