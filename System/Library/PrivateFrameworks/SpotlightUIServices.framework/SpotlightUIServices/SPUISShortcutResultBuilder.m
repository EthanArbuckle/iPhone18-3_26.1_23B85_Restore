@interface SPUISShortcutResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (BOOL)buildButtonItemsAreTrailing;
- (BOOL)resultShadowsSettingResult;
- (SPUISShortcutResultBuilder)initWithResult:(id)a3;
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

@implementation SPUISShortcutResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SPUISShortcutResultBuilder;
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

- (SPUISShortcutResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SPUISShortcutResultBuilder;
  v5 = [(SPUISResultBuilder *)&v32 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2408] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC24F0] withType:objc_opt_class()];
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

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setName:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setNumberOfActionsString:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2FE8] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setPunchoutLabel:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x277CC3088] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setSettingsPreference:v13];

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC3080] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setActionIdentifier:v14];

    v15 = [v4 valueForAttribute:*MEMORY[0x277CC2770] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setDomainIdentifier:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x277CC30C0] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setLnPropertyIdentifier:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x277CC30C8] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setPrimaryPhrase:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x277CC3090] withType:objc_opt_class()];
    [(SPUISShortcutResultBuilder *)v5 setBiomeStreamIdentifier:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x277CC30A8] withType:objc_opt_class()];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 unsignedIntegerValue];
    }

    else
    {
      v21 = 0;
    }

    [(SPUISShortcutResultBuilder *)v5 setEntityThumbnailDisplayStyle:v21];
    v22 = [v4 valueForAttribute:*MEMORY[0x277CC30D0] withType:objc_opt_class()];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 unsignedIntegerValue];
    }

    else
    {
      v24 = 0;
    }

    [(SPUISShortcutResultBuilder *)v5 setEntityBadgeType:v24];
    v25 = [(SPUISResultBuilder *)v5 relatedAppBundleIdentifier];
    if ([v25 isEqualToString:@"com.apple.mobiletimer"])
    {
      v26 = [(SPUISShortcutResultBuilder *)v5 domainIdentifier];
      v27 = MEMORY[0x277D7A180];
      v28 = [(SPUISResultBuilder *)v5 relatedAppBundleIdentifier];
      v29 = [v27 spotlightDomainIdentifierForBundleIdentifier:v28];
      -[SPUISShortcutResultBuilder setIsAlarmResult:](v5, "setIsAlarmResult:", [v26 isEqual:v29]);
    }

    else
    {
      [(SPUISShortcutResultBuilder *)v5 setIsAlarmResult:0];
    }

    v30 = [(SPUISShortcutResultBuilder *)v5 domainIdentifier];
    -[SPUISShortcutResultBuilder setIsCustomAppAttributedShortcut:](v5, "setIsCustomAppAttributedShortcut:", [v30 isEqualToString:*MEMORY[0x277D7A350]]);
  }

  return v5;
}

- (id)buildResult
{
  v6.receiver = self;
  v6.super_class = SPUISShortcutResultBuilder;
  v3 = [(SPUISResultBuilder *)&v6 buildResult];
  v4 = [(SPUISShortcutResultBuilder *)self userActivityRequiredString];
  [v3 setUserActivityRequiredString:v4];

  [v3 setType:20];

  return v3;
}

- (id)buildTitle
{
  v3 = [(SPUISResultBuilder *)self result];
  if (![v3 shouldUseCompactDisplay] || -[SPUISShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = SPUISShortcutResultBuilder;
    v4 = [(SPUISResultBuilder *)&v10 buildTitle];
    [v4 setMaxLines:2];
    goto LABEL_5;
  }

  v6 = [(SPUISShortcutResultBuilder *)self primaryPhrase];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = MEMORY[0x277D4C598];
  v9 = [(SPUISShortcutResultBuilder *)self primaryPhrase];
  v4 = [v8 textWithString:v9];

LABEL_5:

  return v4;
}

- (id)buildStandardThumbnail
{
  v3 = [(SPUISShortcutResultBuilder *)self lnPropertyIdentifier];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SPUISShortcutResultBuilder *)self lnPropertyIdentifier];
    [v4 setLnPropertyIdentifier:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISShortcutResultBuilder;
    v4 = [(SPUISResultBuilder *)&v7 buildThumbnail];
  }

  [v4 setCornerRoundingStyle:{4 * (-[SPUISShortcutResultBuilder entityThumbnailDisplayStyle](self, "entityThumbnailDisplayStyle") == 1)}];

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = a3;
  v5 = [(SPUISShortcutResultBuilder *)self biomeStreamIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISShortcutResultBuilder;
    v7 = [(SPUISResultBuilder *)&v9 buildBadgingImageWithThumbnail:v4];
  }

  return v7;
}

- (id)buildCompactThumbnail
{
  v3 = objc_opt_new();
  v4 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v3 setBundleIdentifier:v4];

  return v3;
}

- (id)buildThumbnail
{
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 valueForAttribute:*MEMORY[0x277CC31D8] withType:objc_opt_class()];

  v5 = [(SPUISResultBuilder *)self result];
  if (![v5 shouldUseCompactDisplay] || -[SPUISShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
  {

LABEL_4:
    v6 = [(SPUISShortcutResultBuilder *)self buildStandardThumbnail];
    goto LABEL_5;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = [(SPUISShortcutResultBuilder *)self buildCompactThumbnail];
LABEL_5:
  v7 = v6;

  return v7;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D4C598];
  v3 = [(SPUISShortcutResultBuilder *)self numberOfActionsString];
  v4 = [v2 textWithString:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)buildFootnote
{
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 relatedAppIdentifier];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D4C598];
    v7 = [(SPUISShortcutResultBuilder *)self alternateNames];
    v8 = [v7 objectAtIndexedSubscript:0];
    v5 = [v6 textWithString:v8];
  }

  return v5;
}

- (id)buildCommand
{
  if ([(SPUISShortcutResultBuilder *)self resultShadowsSettingResult])
  {
    v3 = objc_opt_new();
    v4 = [(SPUISShortcutResultBuilder *)self settingsPreference];
    [v3 setCoreSpotlightIdentifier:v4];

    [v3 setApplicationBundleIdentifier:@"com.apple.Preferences"];
  }

  else if ([(SPUISShortcutResultBuilder *)self isAlarmResult])
  {
    if (buildCommand_onceToken != -1)
    {
      [SPUISShortcutResultBuilder buildCommand];
    }

    v3 = objc_opt_new();
    v5 = [(SPUISResultBuilder *)self result];
    v6 = [v5 relatedAppIdentifier];
    [v3 setApplicationBundleIdentifier:v6];

    [v3 setUserActivityRequiredString:buildCommand_alarmToggleUserActivityString];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISShortcutResultBuilder;
    v3 = [(SPUISResultBuilder *)&v8 buildCommand];
  }

  return v3;
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
    v4 = [(SPUISResultBuilder *)&v13 buildCommand];
    [v3 setCommand:v4];

    v15[0] = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = v15;
LABEL_5:
    v8 = [v5 arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  if ([(SPUISShortcutResultBuilder *)self isAlarmResult])
  {
    v3 = objc_opt_new();
    v12.receiver = self;
    v12.super_class = SPUISShortcutResultBuilder;
    v7 = [(SPUISResultBuilder *)&v12 buildCommand];
    [v3 setCommand:v7];

    v14 = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v14;
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = SPUISShortcutResultBuilder;
  v8 = [(SPUISResultBuilder *)&v11 buildButtonItems];
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
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

  v4 = [(SPUISResultBuilder *)self result];
  v5 = [(SPUISShortcutResultBuilder *)self buildStandardThumbnail];
  v6 = [(SPUISResultBuilder *)self result];
  if ([v6 shouldUseCompactDisplay] && !-[SPUISShortcutResultBuilder isCustomAppAttributedShortcut](self, "isCustomAppAttributedShortcut"))
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
    v10 = [(SPUISResultBuilder *)self result];
    v11 = [v10 valueForAttribute:*MEMORY[0x277CC3078] withType:objc_opt_class()];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = [(SPUISShortcutResultBuilder *)self trailingThumbnailSymbol];
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
  v6.super_class = SPUISShortcutResultBuilder;
  v3 = [(SPUISResultBuilder *)&v6 buildDetailedRowCardSection];
  v4 = [(SPUISShortcutResultBuilder *)self actionIdentifier];
  [v3 setCommandDetail:v4];

  [v3 setButtonItemsAreTrailing:1];

  return v3;
}

- (id)buildAppTopHitEntityCardSection
{
  v16.receiver = self;
  v16.super_class = SPUISShortcutResultBuilder;
  v3 = [(SPUISResultBuilder *)&v16 buildAppTopHitEntityCardSection];
  v4 = [v3 thumbnail];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || [(SPUISShortcutResultBuilder *)self isCustomAppAttributedShortcut]&& (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(SPUISResultBuilder *)self result];
    v6 = [v5 valueForAttribute:*MEMORY[0x277CC3078] withType:objc_opt_class()];

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

  v11 = [(SPUISShortcutResultBuilder *)self entityBadgeType];
  if (v11 == 1)
  {
    v12 = @"com.apple.mobilephone";
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v12 = @"com.apple.facetime";
  }

  v13 = objc_opt_new();
  [v13 setBundleIdentifier:v12];
  [v4 setBadgingImage:v13];

LABEL_15:
  [v3 setThumbnail:v4];
  v14 = [(SPUISShortcutResultBuilder *)self actionIdentifier];
  [v3 setCommandDetail:v14];

  return v3;
}

- (BOOL)resultShadowsSettingResult
{
  v3 = [(SPUISShortcutResultBuilder *)self settingsPreference];
  if ([v3 length])
  {
    v4 = [(SPUISResultBuilder *)self result];
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