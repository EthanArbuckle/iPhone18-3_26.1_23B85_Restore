@interface PRSPosterUpdate
+ (id)posterUpdateAmbientConfigurationForCreation:(id)creation deletion:(id)deletion editingBehavior:(id)behavior supportedDataLayout:(id)layout;
+ (id)posterUpdateAmbientWidgets:(id)widgets;
+ (id)posterUpdateAssociateWithChargerIdentifier:(id)identifier;
+ (id)posterUpdateComplications:(id)complications;
+ (id)posterUpdateDisassociateFromChargerIdentifier:(id)identifier;
+ (id)posterUpdateHomeScreenAppearance:(unint64_t)appearance;
+ (id)posterUpdateHomeScreenColor:(id)color;
+ (id)posterUpdateHomeScreenGradient:(id)gradient;
+ (id)posterUpdateHomeScreenIconTintSource:(id)source;
+ (id)posterUpdateHomeScreenIconUserInterfaceStyle:(id)style;
+ (id)posterUpdateHomeScreenIconUserInterfaceStyleVariant:(id)variant;
+ (id)posterUpdateHomeScreenPosterProvider:(id)provider sessionInfo:(id)info;
+ (id)posterUpdateHomeScreenPosterWithImageAtURL:(id)l;
+ (id)posterUpdateHomeScreenSuggestedTintColor:(id)color;
+ (id)posterUpdateHomeScreenTintForColor:(id)color;
+ (id)posterUpdateHomeScreenTintWithVariation:(id)variation saturation:(id)saturation luminance:(id)luminance alpha:(id)alpha;
+ (id)posterUpdateInlineComplication:(id)complication;
+ (id)posterUpdateLockScreenPosterWithImageAtURL:(id)l;
+ (id)posterUpdatePosterWithSessionInfo:(id)info;
+ (id)posterUpdateShouldUseLargeHomeScreenIcons:(id)icons;
+ (id)posterUpdateSidebarComplications:(id)complications;
+ (id)posterUpdateUserInfo:(id)info;
+ (id)posterUpdateUserSelectedHomeScreenIconStyleVariantsForTypes:(id)types;
+ (id)posterUpdatesForDecoratedSessionInfo:(id)info;
+ (id)posterUpdatesForWFWallpaperConfiguration:(id)configuration;
+ (id)posterUpdatesForWFWallpaperConfiguration:(id)configuration sessionInfo:(id)info;
- (PRSPosterUpdate)initWithCoder:(id)coder;
- (id)_initWithUpdateType:(unint64_t)type payload:(id)payload;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSPosterUpdate

- (id)_initWithUpdateType:(unint64_t)type payload:(id)payload
{
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = PRSPosterUpdate;
  v7 = [(PRSPosterUpdate *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [payloadCopy copy];
    payload = v8->_payload;
    v8->_payload = v9;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  payload = self->_payload;
  coderCopy = coder;
  [coderCopy encodeObject:payload forKey:@"_payload"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
}

- (PRSPosterUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PRSPosterUpdate;
  v5 = [(PRSPosterUpdate *)&v17 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = objc_opt_self();
    v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, 0}];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_payload"];
    payload = v5->_payload;
    v5->_payload = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = NSStringFromPRSPosterUpdateType(self->_type);
  [v3 appendString:v4 withName:@"type"];

  v5 = [v3 appendObject:self->_payload withName:@"payload"];
  if (self->_type == 9)
  {
    payload = self->_payload;
    v7 = objc_opt_class();
    v8 = payload;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __30__PRSPosterUpdate_description__block_invoke;
      v16 = &unk_1E818CF88;
      v17 = v3;
      v18 = v10;
      [v17 appendBodySectionWithName:@"ambientWidgets" multilinePrefix:@"\n" block:&v13];
    }

    else
    {
      [v3 appendString:@"unable to read property list payload for ambient widget update" withName:@"ambientWidget update payload error"];
    }
  }

  build = [v3 build];

  return build;
}

void __30__PRSPosterUpdate_description__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) propertyListRoot];
  v2 = PRSPosterUpdateAmbientWidgetsIdentifiers(v4);
  v3 = [v1 appendObject:v2 withName:@"ambientWidgetDebugInfo"];
}

+ (id)posterUpdateUserInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterUpdate posterUpdateUserInfo:a2];
    }
  }

  v5 = [[PRSPosterUpdatePropertyListPayload alloc] initWithPropertyList:infoCopy];
  v6 = [[PRSPosterUpdate alloc] _initWithUpdateType:18 payload:v5];

  return v6;
}

+ (id)posterUpdateInlineComplication:(id)complication
{
  v12[1] = *MEMORY[0x1E69E9840];
  complicationCopy = complication;
  if (complicationCopy)
  {
    NSClassFromString(&cfstr_Prswidget.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterUpdate posterUpdateInlineComplication:a2];
    }
  }

  v5 = [PRSPosterUpdateComplicationPayload alloc];
  v6 = v5;
  if (complicationCopy)
  {
    v12[0] = complicationCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [(PRSPosterUpdateComplicationPayload *)v6 initWithComplications:v7];
  }

  else
  {
    v8 = [(PRSPosterUpdateComplicationPayload *)v5 initWithComplications:MEMORY[0x1E695E0F0]];
  }

  v9 = [[PRSPosterUpdate alloc] _initWithUpdateType:2 payload:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)posterUpdateComplications:(id)complications
{
  complicationsCopy = complications;
  if (complicationsCopy)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    v5 = complicationsCopy;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterUpdate posterUpdateComplications:a2];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [[PRSPosterUpdateComplicationPayload alloc] initWithComplications:v5];
  v7 = [[PRSPosterUpdate alloc] _initWithUpdateType:1 payload:v6];

  return v7;
}

+ (id)posterUpdateSidebarComplications:(id)complications
{
  complicationsCopy = complications;
  if (complicationsCopy)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    v5 = complicationsCopy;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterUpdate posterUpdateSidebarComplications:a2];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [[PRSPosterUpdateComplicationPayload alloc] initWithComplications:v5];
  v7 = [[PRSPosterUpdate alloc] _initWithUpdateType:8 payload:v6];

  return v7;
}

+ (id)posterUpdateAmbientWidgets:(id)widgets
{
  widgetsCopy = widgets;
  if (widgetsCopy)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterUpdate posterUpdateAmbientWidgets:a2];
    }
  }

  v5 = [[PRSPosterUpdatePropertyListPayload alloc] initWithPropertyList:widgetsCopy];
  v6 = PRSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(PRSPosterUpdate *)widgetsCopy posterUpdateAmbientWidgets:v6];
  }

  v7 = [[PRSPosterUpdate alloc] _initWithUpdateType:9 payload:v5];

  return v7;
}

+ (id)posterUpdateHomeScreenPosterProvider:(id)provider sessionInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  v8 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [PRSPosterUpdate posterUpdateHomeScreenPosterProvider:a2 sessionInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdateHomeScreenPosterProvider:a2 sessionInfo:?];
  }

  v9 = infoCopy;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!v9)
  {
    [PRSPosterUpdate posterUpdateHomeScreenPosterProvider:a2 sessionInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdateHomeScreenPosterProvider:a2 sessionInfo:?];
  }

  v10 = [[PRSPosterUpdateHomeScreenAppearancePayload alloc] initWithUpdatedAppearanceType:0 updateHomePoster:v9 homeProviderIdentifier:v8];
  v11 = [[PRSPosterUpdate alloc] _initWithUpdateType:6 payload:v10];

  return v11;
}

+ (id)posterUpdatePosterWithSessionInfo:(id)info
{
  infoCopy = info;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!infoCopy)
  {
    [PRSPosterUpdate posterUpdatePosterWithSessionInfo:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdatePosterWithSessionInfo:a2];
  }

  v5 = [[PRSPosterUpdateHomeScreenAppearancePayload alloc] initWithUpdatedAppearanceType:0 updateSwitcherPoster:infoCopy];
  v6 = [[PRSPosterUpdate alloc] _initWithUpdateType:7 payload:v5];

  return v6;
}

+ (id)posterUpdatesForDecoratedSessionInfo:(id)info
{
  v14[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!infoCopy)
  {
    [PRSPosterUpdate posterUpdatesForDecoratedSessionInfo:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdatesForDecoratedSessionInfo:a2];
  }

  v6 = objc_opt_new();
  shortcutsWallpaperConfiguration = [infoCopy shortcutsWallpaperConfiguration];

  if (shortcutsWallpaperConfiguration)
  {
    shortcutsWallpaperConfiguration2 = [infoCopy shortcutsWallpaperConfiguration];
    v9 = [self posterUpdatesForWFWallpaperConfiguration:shortcutsWallpaperConfiguration2 sessionInfo:infoCopy];
    [v6 addObjectsFromArray:v9];

    v10 = v6;
  }

  else
  {
    v11 = [PRSPosterUpdate posterUpdatePosterWithSessionInfo:infoCopy];
    v14[0] = v11;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)posterUpdatesForWFWallpaperConfiguration:(id)configuration sessionInfo:(id)info
{
  configurationCopy = configuration;
  infoCopy = info;
  v8 = configurationCopy;
  NSClassFromString(&cfstr_Wfwallpapercon.isa);
  if (!v8)
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2 sessionInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2 sessionInfo:?];
  }

  v9 = infoCopy;
  NSClassFromString(&cfstr_Prsposterupdat_23.isa);
  if (!v9)
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2 sessionInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2 sessionInfo:?];
  }

  shortcutsWallpaperConfiguration = [v9 shortcutsWallpaperConfiguration];
  v11 = [shortcutsWallpaperConfiguration isEqual:v8];

  if (v11)
  {
    location = [v8 location];
    v13 = objc_opt_new();
    v14 = objc_alloc_init(PRSPosterUpdateSessionInfo);
    [(PRSPosterUpdateSessionInfo *)v14 setShortcutsWallpaperConfiguration:v8];
    if (!location || location == 2)
    {
      v17 = [PRSPosterUpdate posterUpdatePosterWithSessionInfo:v14];
      [v13 addObject:v17];

      if (location == 2)
      {
        v16 = 1;
        goto LABEL_12;
      }
    }

    else if (location == 1)
    {
      v15 = [PRSPosterUpdate posterUpdateHomeScreenPosterProvider:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" sessionInfo:v14];
      [v13 addObject:v15];

      v16 = 4;
LABEL_12:
      v18 = [PRSPosterUpdate posterUpdateHomeScreenAppearance:v16];
      [v13 addObject:v18];
    }

    legibilityBlur = [v8 legibilityBlur];

    if (legibilityBlur)
    {
      if ((location & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        legibilityBlur2 = [v8 legibilityBlur];
        v21 = +[PRSPosterUpdate posterUpdateMirroredHomeScreenLegibilityBlurWithValue:](PRSPosterUpdate, "posterUpdateMirroredHomeScreenLegibilityBlurWithValue:", [legibilityBlur2 BOOLValue]);
        [v13 addObject:v21];
      }

      if (location == 1)
      {
        legibilityBlur3 = [v8 legibilityBlur];
        v23 = +[PRSPosterUpdate posterUpdateHomeScreenPosterLegibilityBlurWithValue:](PRSPosterUpdate, "posterUpdateHomeScreenPosterLegibilityBlurWithValue:", [legibilityBlur3 BOOLValue]);
        [v13 addObject:v23];
      }
    }

    return v13;
  }

  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"sessionInfo && [[sessionInfo shortcutsWallpaperConfiguration] isEqual:wallpaperConfiguration]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2 sessionInfo:?];
  }

  [v25 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)posterUpdatesForWFWallpaperConfiguration:(id)configuration
{
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Wfwallpapercon.isa);
  if (!configurationCopy)
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:a2];
  }

  v6 = objc_alloc_init(PRSPosterUpdateSessionInfo);
  [(PRSPosterUpdateSessionInfo *)v6 setShortcutsWallpaperConfiguration:configurationCopy];
  v7 = [self posterUpdatesForWFWallpaperConfiguration:configurationCopy sessionInfo:v6];

  return v7;
}

+ (id)posterUpdateHomeScreenGradient:(id)gradient
{
  gradientCopy = gradient;
  NSClassFromString(&cfstr_Bscolor.isa);
  if (!gradientCopy)
  {
    [PRSPosterUpdate posterUpdateHomeScreenGradient:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdateHomeScreenGradient:a2];
  }

  v5 = [PRSPosterUpdateHomeScreenAppearancePayload alloc];
  v6 = [[PRSPosterUpdateColorPayload alloc] initWithColor:gradientCopy];
  v7 = [(PRSPosterUpdateHomeScreenAppearancePayload *)v5 initWithUpdatedAppearanceType:0 gradientColorAppearance:v6];

  v8 = [[PRSPosterUpdate alloc] _initWithUpdateType:6 payload:v7];

  return v8;
}

+ (id)posterUpdateHomeScreenColor:(id)color
{
  colorCopy = color;
  NSClassFromString(&cfstr_Bscolor.isa);
  if (!colorCopy)
  {
    [PRSPosterUpdate posterUpdateHomeScreenColor:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterUpdate posterUpdateHomeScreenColor:a2];
  }

  v5 = [PRSPosterUpdateHomeScreenAppearancePayload alloc];
  v6 = [[PRSPosterUpdateColorPayload alloc] initWithColor:colorCopy];
  v7 = [(PRSPosterUpdateHomeScreenAppearancePayload *)v5 initWithUpdatedAppearanceType:0 solidColorAppearance:v6];

  v8 = [[PRSPosterUpdate alloc] _initWithUpdateType:6 payload:v7];

  return v8;
}

+ (id)posterUpdateHomeScreenAppearance:(unint64_t)appearance
{
  v3 = [[PRSPosterUpdateHomeScreenAppearancePayload alloc] initWithUpdatedAppearanceType:appearance];
  v4 = [[PRSPosterUpdate alloc] _initWithUpdateType:6 payload:v3];

  return v4;
}

+ (id)posterUpdateHomeScreenPosterWithImageAtURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(PRSPosterUpdateSessionInfo);
  v5 = objc_alloc(MEMORY[0x1E69E0DC8]);
  v6 = [v5 initWithURL:lCopy location:1 legibilityBlur:MEMORY[0x1E695E110] smartCrop:MEMORY[0x1E695E110] usePreview:MEMORY[0x1E695E110]];

  [(PRSPosterUpdateSessionInfo *)v4 setShortcutsWallpaperConfiguration:v6];
  v7 = [[PRSPosterUpdateHomeScreenAppearancePayload alloc] initWithUpdatedAppearanceType:4 updateHomePoster:v4 homeProviderIdentifier:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  v8 = [[PRSPosterUpdate alloc] _initWithUpdateType:6 payload:v7];

  return v8;
}

+ (id)posterUpdateLockScreenPosterWithImageAtURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(PRSPosterUpdateSessionInfo);
  v5 = objc_alloc(MEMORY[0x1E69E0DC8]);
  v6 = [v5 initWithURL:lCopy location:0 legibilityBlur:MEMORY[0x1E695E110] smartCrop:MEMORY[0x1E695E110] usePreview:MEMORY[0x1E695E110]];

  [(PRSPosterUpdateSessionInfo *)v4 setShortcutsWallpaperConfiguration:v6];
  v7 = [[PRSPosterUpdateHomeScreenAppearancePayload alloc] initWithUpdatedAppearanceType:0 updateSwitcherPoster:v4];
  v8 = [[PRSPosterUpdate alloc] _initWithUpdateType:7 payload:v7];

  return v8;
}

+ (id)posterUpdateHomeScreenTintWithVariation:(id)variation saturation:(id)saturation luminance:(id)luminance alpha:(id)alpha
{
  alphaCopy = alpha;
  luminanceCopy = luminance;
  saturationCopy = saturation;
  variationCopy = variation;
  v13 = [PRSPosterUpdate alloc];
  v14 = [[PRSPosterUpdateDiscreteStylePayload alloc] initWithVariation:variationCopy saturation:saturationCopy luminance:luminanceCopy alpha:alphaCopy];

  v15 = [(PRSPosterUpdate *)v13 _initWithUpdateType:14 payload:v14];

  return v15;
}

+ (id)posterUpdateHomeScreenTintForColor:(id)color
{
  colorCopy = color;
  v4 = [PRSPosterUpdate alloc];
  v5 = [[PRSPosterUpdateColorPayload alloc] initWithColor:colorCopy];

  v6 = [(PRSPosterUpdate *)v4 _initWithUpdateType:14 payload:v5];

  return v6;
}

+ (id)posterUpdateHomeScreenSuggestedTintColor:(id)color
{
  colorCopy = color;
  v4 = [PRSPosterUpdate alloc];
  v5 = [[PRSPosterUpdateColorPayload alloc] initWithColor:colorCopy];

  v6 = [(PRSPosterUpdate *)v4 _initWithUpdateType:15 payload:v5];

  return v6;
}

+ (id)posterUpdateShouldUseLargeHomeScreenIcons:(id)icons
{
  iconsCopy = icons;
  v4 = [PRSPosterUpdate alloc];
  v5 = [[PRSPosterUpdateTristatePayload alloc] initWithState:iconsCopy];

  v6 = [(PRSPosterUpdate *)v4 _initWithUpdateType:16 payload:v5];

  return v6;
}

+ (id)posterUpdateHomeScreenIconUserInterfaceStyle:(id)style
{
  styleCopy = style;
  v4 = [PRSPosterUpdate alloc];
  v5 = [PRSPosterUpdatePropertyListPayload alloc];
  v6 = [styleCopy dataUsingEncoding:4];

  data = v6;
  if (!v6)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v8 = [(PRSPosterUpdatePropertyListPayload *)v5 initWithPropertyListData:data];
  v9 = [(PRSPosterUpdate *)v4 _initWithUpdateType:17 payload:v8];

  if (!v6)
  {
  }

  return v9;
}

+ (id)posterUpdateHomeScreenIconUserInterfaceStyleVariant:(id)variant
{
  variantCopy = variant;
  v4 = [PRSPosterUpdate alloc];
  v5 = [PRSPosterUpdatePropertyListPayload alloc];
  v6 = [variantCopy dataUsingEncoding:4];

  data = v6;
  if (!v6)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v8 = [(PRSPosterUpdatePropertyListPayload *)v5 initWithPropertyListData:data];
  v9 = [(PRSPosterUpdate *)v4 _initWithUpdateType:19 payload:v8];

  if (!v6)
  {
  }

  return v9;
}

+ (id)posterUpdateUserSelectedHomeScreenIconStyleVariantsForTypes:(id)types
{
  typesCopy = types;
  v4 = [PRSPosterUpdate alloc];
  v5 = [[PRSPosterUpdatePropertyListPayload alloc] initWithPropertyList:typesCopy];

  v6 = [(PRSPosterUpdate *)v4 _initWithUpdateType:20 payload:v5];

  return v6;
}

+ (id)posterUpdateHomeScreenIconTintSource:(id)source
{
  sourceCopy = source;
  v4 = [PRSPosterUpdate alloc];
  v5 = [PRSPosterUpdatePropertyListPayload alloc];
  v6 = [sourceCopy dataUsingEncoding:4];

  data = v6;
  if (!v6)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v8 = [(PRSPosterUpdatePropertyListPayload *)v5 initWithPropertyListData:data];
  v9 = [(PRSPosterUpdate *)v4 _initWithUpdateType:21 payload:v8];

  if (!v6)
  {
  }

  return v9;
}

+ (id)posterUpdateAssociateWithChargerIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [PRSPosterUpdatePropertyListPayload alloc];
  v5 = v4;
  if (identifierCopy)
  {
    v12 = @"chargerIdentifier";
    v13[0] = identifierCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [(PRSPosterUpdatePropertyListPayload *)v5 initWithPropertyList:v6];
  }

  else
  {
    v7 = [(PRSPosterUpdatePropertyListPayload *)v4 initWithPropertyList:MEMORY[0x1E695E0F8]];
  }

  v8 = [PRSPosterUpdate alloc];

  v9 = [(PRSPosterUpdate *)v8 _initWithUpdateType:10 payload:v7];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)posterUpdateDisassociateFromChargerIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [PRSPosterUpdatePropertyListPayload alloc];
  v5 = v4;
  if (identifierCopy)
  {
    v12 = @"chargerIdentifier";
    v13[0] = identifierCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [(PRSPosterUpdatePropertyListPayload *)v5 initWithPropertyList:v6];
  }

  else
  {
    v7 = [(PRSPosterUpdatePropertyListPayload *)v4 initWithPropertyList:MEMORY[0x1E695E0F8]];
  }

  v8 = [PRSPosterUpdate alloc];

  v9 = [(PRSPosterUpdate *)v8 _initWithUpdateType:11 payload:v7];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)posterUpdateAmbientConfigurationForCreation:(id)creation deletion:(id)deletion editingBehavior:(id)behavior supportedDataLayout:(id)layout
{
  creationCopy = creation;
  deletionCopy = deletion;
  behaviorCopy = behavior;
  layoutCopy = layout;
  v13 = objc_opt_new();
  v14 = v13;
  if (creationCopy)
  {
    [v13 setObject:creationCopy forKeyedSubscript:@"creationBehavior"];
  }

  if (deletionCopy)
  {
    [v14 setObject:deletionCopy forKeyedSubscript:@"deletionBehavior"];
  }

  if (behaviorCopy)
  {
    [v14 setObject:behaviorCopy forKeyedSubscript:@"editingBehavior"];
  }

  if (layoutCopy)
  {
    [v14 setObject:layoutCopy forKeyedSubscript:@"supportedDataLayout"];
  }

  v15 = [PRSPosterUpdatePropertyListPayload alloc];
  v16 = [v14 copy];
  v17 = [(PRSPosterUpdatePropertyListPayload *)v15 initWithPropertyList:v16];

  v18 = [[PRSPosterUpdate alloc] _initWithUpdateType:12 payload:v17];

  return v18;
}

+ (void)posterUpdateUserInfo:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateInlineComplication:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSWidgetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateComplications:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateSidebarComplications:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateAmbientWidgets:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateAmbientWidgets:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PRSPosterUpdateAmbientWidgetsIdentifiers(a1);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1C26FF000, a2, OS_LOG_TYPE_ERROR, "Building PRSPosterUpdate for ambient widgets: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)posterUpdateHomeScreenPosterProvider:(char *)a1 sessionInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenPosterProvider:(char *)a1 sessionInfo:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenPosterProvider:(char *)a1 sessionInfo:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenPosterProvider:(char *)a1 sessionInfo:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatePosterWithSessionInfo:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatePosterWithSessionInfo:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForDecoratedSessionInfo:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForDecoratedSessionInfo:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(char *)a1 sessionInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:WFWallpaperConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(char *)a1 sessionInfo:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(const char *)a1 sessionInfo:.cold.3(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(char *)a1 sessionInfo:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(char *)a1 sessionInfo:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:WFWallpaperConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdatesForWFWallpaperConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenGradient:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenGradient:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenColor:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUpdateHomeScreenColor:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end