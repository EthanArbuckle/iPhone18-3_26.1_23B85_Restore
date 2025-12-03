@interface WFWidgetConfigurationRequest
- (BOOL)isWidgetExtensionInformationLoaded;
- (CGRect)initialCardFrame;
- (CGSize)defaultCardSize;
- (NSString)appBundleIdentifier;
- (NSString)fallbackDisplayName;
- (UIColor)widgetTintColor;
- (WFWidgetConfigurationRequest)initWithCoder:(id)coder;
- (WFWidgetConfigurationRequest)initWithIntent:(id)intent bundleIdentifier:(id)identifier intentLocalizationTableBundleURL:(id)l widgetBundleScopedURL:(id)rL family:(int64_t)family widgetConfigurationStyle:(unint64_t)style widgetConfigurationType:(unint64_t)type defaultCardSize:(CGSize)self0 initialCardFrame:(CGRect)self1 widgetDisplayName:(id)self2 widgetDescription:(id)self3 usesWidgetAccentColor:(BOOL)self4 remoteDeviceIdentifier:(id)self5 remoteAppLocalizedName:(id)self6 remoteAppIcon:(id)self7;
- (WFWidgetConfigurationRequest)initWithIntent:(id)intent bundleIdentifier:(id)identifier intentLocalizationTableBundleURL:(id)l widgetBundleScopedURL:(id)rL family:(int64_t)family widgetConfigurationStyle:(unint64_t)style widgetConfigurationType:(unint64_t)type defaultCardSize:(CGSize)self0 initialCardFrame:(CGRect)self1 widgetDisplayName:(id)self2 widgetDescription:(id)self3 widgetPrimaryColor:(id)self4 widgetTintColor:(id)self5 usesWidgetAccentColor:(BOOL)self6 remoteDeviceIdentifier:(id)self7 remoteAppLocalizedName:(id)self8 remoteAppIcon:(id)self9;
- (WFWidgetConfigurationRequest)initWithOptions:(id)options;
- (unint64_t)resolvedWidgetConfigurationStyle;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadWidgetExtensionInformationWithCompletion:(id)completion;
- (void)startAccessingSecurityScopedBundleResource;
@end

@implementation WFWidgetConfigurationRequest

- (CGRect)initialCardFrame
{
  x = self->_initialCardFrame.origin.x;
  y = self->_initialCardFrame.origin.y;
  width = self->_initialCardFrame.size.width;
  height = self->_initialCardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)defaultCardSize
{
  width = self->_defaultCardSize.width;
  height = self->_defaultCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = INIntentWithTypedIntent();
  [coderCopy encodeObject:v4 forKey:@"intent"];

  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_intentLocalizationTableBundleURL forKey:@"intentLocalizationTableBundleURL"];
  [coderCopy encodeObject:self->_widgetBundleScopedURL forKey:@"widgetBundleScopedURL"];
  [coderCopy encodeInteger:self->_family forKey:@"family"];
  [coderCopy encodeInteger:self->_widgetConfigurationStyle forKey:@"widgetConfigurationStyle"];
  [coderCopy encodeInteger:self->_widgetConfigurationType forKey:@"widgetConfigurationType"];
  v5 = [MEMORY[0x1E696B098] value:&self->_defaultCardSize withObjCType:"{CGSize=dd}"];
  [coderCopy encodeObject:v5 forKey:@"defaultCardSize"];

  v6 = [MEMORY[0x1E696B098] value:&self->_initialCardFrame withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [coderCopy encodeObject:v6 forKey:@"initialCardFrame"];

  [coderCopy encodeObject:self->_widgetDisplayName forKey:@"widgetDisplayName"];
  [coderCopy encodeObject:self->_widgetDescription forKey:@"widgetDescription"];
  [coderCopy encodeBool:self->_usesWidgetAccentColor forKey:@"usesWidgetAccentColor"];
  [coderCopy encodeObject:self->_remoteDeviceIdentifier forKey:@"remoteDeviceIdentifier"];
  [coderCopy encodeObject:self->_remoteAppLocalizedName forKey:@"remoteAppLocalizedName"];
  [coderCopy encodeObject:self->_remoteAppIcon forKey:@"remoteAppIcon"];
  v7 = INIntentWithTypedIntent();
  [coderCopy encodeObject:v7 forKey:@"remoteLocalizedIntent"];

  [coderCopy encodeObject:self->_remoteLanguageCode forKey:@"remoteLanguageCode"];
}

- (WFWidgetConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v31 = INTypedIntentWithIntent();

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentLocalizationTableBundleURL"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetBundleScopedURL"];
  v27 = [coderCopy decodeIntegerForKey:@"family"];
  v26 = [coderCopy decodeIntegerForKey:@"widgetConfigurationStyle"];
  v24 = [coderCopy decodeIntegerForKey:@"widgetConfigurationType"];
  v34 = *MEMORY[0x1E695F060];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultCardSize"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 getValue:&v34 size:16];
  v8 = *(MEMORY[0x1E695F050] + 16);
  v32 = *MEMORY[0x1E695F050];
  v33 = v8;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialCardFrame"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 getValue:&v32 size:32];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescription"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetDisplayName"];
  v12 = [coderCopy decodeBoolForKey:@"usesWidgetAccentColor"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceIdentifier"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteAppLocalizedName"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteAppIcon"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteLocalizedIntent"];
  v16 = INTypedIntentWithIntent();

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteLanguageCode"];
  LOBYTE(v20) = v12;
  v18 = [(WFWidgetConfigurationRequest *)self initWithIntent:v31 bundleIdentifier:v30 intentLocalizationTableBundleURL:v29 widgetBundleScopedURL:v28 family:v27 widgetConfigurationStyle:v26 widgetConfigurationType:v34 defaultCardSize:v32 initialCardFrame:v33 widgetDisplayName:v24 widgetDescription:v22 usesWidgetAccentColor:v23 remoteDeviceIdentifier:v20 remoteAppLocalizedName:v13 remoteAppIcon:v21, v14];
  [(WFWidgetConfigurationRequest *)v18 setRemoteLocalizedIntent:v16];
  [(WFWidgetConfigurationRequest *)v18 setRemoteLanguageCode:v17];

  return v18;
}

- (void)startAccessingSecurityScopedBundleResource
{
  intentLocalizationTableBundleURL = [(WFWidgetConfigurationRequest *)self intentLocalizationTableBundleURL];
  v2 = [intentLocalizationTableBundleURL url];
  [v2 startAccessingSecurityScopedResource];
}

- (void)loadWidgetExtensionInformationWithCompletion:(id)completion
{
  v53[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(WFWidgetConfigurationRequest *)self isWidgetExtensionInformationLoaded])
  {
    goto LABEL_6;
  }

  intent = [(WFWidgetConfigurationRequest *)self intent];
  v6 = objc_alloc_init(WFShortcutsWidgetConfigurationIntent);
  v7 = objc_alloc_init(WFShortcutsSmallWidgetConfigurationIntent);
  v8 = softLinkDOCCreateDefaultHomeScreenWidgetIntent();
  _className = [intent _className];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if ([_className isEqualToString:v11])
  {
    goto LABEL_5;
  }

  selfCopy = self;
  _className2 = [intent _className];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if ([_className2 isEqualToString:v14])
  {

LABEL_5:
LABEL_6:
    completionCopy[2](completionCopy, 0);
    goto LABEL_7;
  }

  _className3 = [intent _className];
  v16 = objc_opt_class();
  NSStringFromClass(v16);
  v17 = v47 = completionCopy;
  v46 = [_className3 isEqualToString:v17];

  completionCopy = v47;
  if (v46)
  {
    goto LABEL_6;
  }

  mEMORY[0x1E696EAE0] = [MEMORY[0x1E696EAE0] sharedProvider];
  intent2 = [(WFWidgetConfigurationRequest *)selfCopy intent];
  v20 = [mEMORY[0x1E696EAE0] descriptorForIntent:intent2];

  extensionBundleIdentifier = [v20 extensionBundleIdentifier];
  if (!extensionBundleIdentifier)
  {
    intent3 = [(WFWidgetConfigurationRequest *)selfCopy intent];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      intent4 = [(WFWidgetConfigurationRequest *)selfCopy intent];
      _asMigratedAppIntent = [intent4 _asMigratedAppIntent];

      if (_asMigratedAppIntent)
      {
        extensionBundleId = [_asMigratedAppIntent extensionBundleId];
        v27 = extensionBundleId;
        if (extensionBundleId)
        {
          launchId = extensionBundleId;
        }

        else
        {
          launchId = [_asMigratedAppIntent launchId];
        }

        extensionBundleIdentifier = launchId;
      }

      else
      {
        extensionBundleIdentifier = 0;
      }
    }

    else
    {
      extensionBundleIdentifier = 0;
    }
  }

  v51 = 0;
  v29 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:extensionBundleIdentifier error:&v51];
  v30 = v51;
  if (v29)
  {
    v31 = objc_alloc(MEMORY[0x1E696AE98]);
    v32 = [v29 URL];
    v33 = [v31 initWithURL:v32 readonly:1];
    widgetBundleScopedURL = selfCopy->_widgetBundleScopedURL;
    selfCopy->_widgetBundleScopedURL = v33;

    v35 = [v29 URL];
    v49 = 0;
    v50 = 0;
    WFWidgetColorsFromBundle(v35, &v50, &v49);
    v36 = v50;
    v37 = v49;

    widgetPrimaryColor = selfCopy->_widgetPrimaryColor;
    selfCopy->_widgetPrimaryColor = v36;
    v39 = v36;

    widgetTintColor = selfCopy->_widgetTintColor;
    selfCopy->_widgetTintColor = v37;

    v41 = 0;
  }

  else
  {
    v42 = objc_alloc(MEMORY[0x1E695DF90]);
    v43 = *MEMORY[0x1E696A578];
    v52[0] = *MEMORY[0x1E696A588];
    v52[1] = v43;
    v53[0] = @"Widget Extension Not found";
    v53[1] = @"The associated Widget Extension is not found.";
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v45 = [v42 initWithDictionary:v44];

    [v45 if_setObjectIfNonNil:v30 forKey:*MEMORY[0x1E696AA08]];
    v41 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v45];
    v39 = v41;
    v30 = v45;
  }

  completionCopy = v47;
  v47[2](v47, v41);

LABEL_7:
}

- (void)dealloc
{
  intentLocalizationTableBundleURL = [(WFWidgetConfigurationRequest *)self intentLocalizationTableBundleURL];
  v4 = [intentLocalizationTableBundleURL url];
  [v4 stopAccessingSecurityScopedResource];

  v5.receiver = self;
  v5.super_class = WFWidgetConfigurationRequest;
  [(WFWidgetConfigurationRequest *)&v5 dealloc];
}

- (NSString)appBundleIdentifier
{
  appBundleIdentifier = self->_appBundleIdentifier;
  if (!appBundleIdentifier)
  {
    intent = [(WFWidgetConfigurationRequest *)self intent];
    if (intent && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:0];
      _intents_bundleIdForLaunching = [intent _intents_bundleIdForLaunching];
      appIntentIdentifier = [intent appIntentIdentifier];
      v8 = [(NSString *)v5 actionsForBundleIdentifier:_intents_bundleIdForLaunching andActionIdentifier:appIntentIdentifier error:0];
      firstObject = [v8 firstObject];

      attributionBundleIdentifier = [firstObject attributionBundleIdentifier];
      v11 = attributionBundleIdentifier;
      if (attributionBundleIdentifier)
      {
        v12 = attributionBundleIdentifier;
        intent2 = self->_appBundleIdentifier;
        self->_appBundleIdentifier = v12;
      }

      else
      {
        intent2 = [(WFWidgetConfigurationRequest *)self intent];
        _intents_bundleIdForDisplay = [intent2 _intents_bundleIdForDisplay];
        v16 = self->_appBundleIdentifier;
        self->_appBundleIdentifier = _intents_bundleIdForDisplay;
      }
    }

    else
    {

      intent = [(WFWidgetConfigurationRequest *)self intent];
      _intents_bundleIdForDisplay2 = [intent _intents_bundleIdForDisplay];
      v5 = self->_appBundleIdentifier;
      self->_appBundleIdentifier = _intents_bundleIdForDisplay2;
    }

    appBundleIdentifier = self->_appBundleIdentifier;
  }

  return appBundleIdentifier;
}

- (BOOL)isWidgetExtensionInformationLoaded
{
  widgetBundleScopedURL = [(WFWidgetConfigurationRequest *)self widgetBundleScopedURL];
  v3 = widgetBundleScopedURL != 0;

  return v3;
}

- (UIColor)widgetTintColor
{
  if ([(WFWidgetConfigurationRequest *)self usesWidgetAccentColor])
  {
    v3 = self->_widgetTintColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)resolvedWidgetConfigurationStyle
{
  if ([(WFWidgetConfigurationRequest *)self widgetConfigurationStyle])
  {

    return [(WFWidgetConfigurationRequest *)self widgetConfigurationStyle];
  }

  else
  {
    [(WFWidgetConfigurationRequest *)self family];
    if (CHSWidgetFamilyIsAccessory())
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

- (NSString)fallbackDisplayName
{
  if ([(WFWidgetConfigurationRequest *)self widgetConfigurationType]== 1)
  {
    v2 = @"Control";
  }

  else
  {
    v2 = @"Widget";
  }

  v3 = WFLocalizedStringFromTable(v2, @"WidgetConfiguration");

  return v3;
}

- (WFWidgetConfigurationRequest)initWithIntent:(id)intent bundleIdentifier:(id)identifier intentLocalizationTableBundleURL:(id)l widgetBundleScopedURL:(id)rL family:(int64_t)family widgetConfigurationStyle:(unint64_t)style widgetConfigurationType:(unint64_t)type defaultCardSize:(CGSize)self0 initialCardFrame:(CGRect)self1 widgetDisplayName:(id)self2 widgetDescription:(id)self3 widgetPrimaryColor:(id)self4 widgetTintColor:(id)self5 usesWidgetAccentColor:(BOOL)self6 remoteDeviceIdentifier:(id)self7 remoteAppLocalizedName:(id)self8 remoteAppIcon:(id)self9
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26 = size.height;
  v27 = size.width;
  v82 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  identifierCopy = identifier;
  lCopy = l;
  lCopy2 = l;
  rLCopy = rL;
  rLCopy2 = rL;
  nameCopy = name;
  descriptionCopy = description;
  colorCopy = color;
  tintColorCopy = tintColor;
  deviceIdentifierCopy = deviceIdentifier;
  localizedNameCopy = localizedName;
  iconCopy = icon;
  v77.receiver = self;
  v77.super_class = WFWidgetConfigurationRequest;
  v34 = [(WFWidgetConfigurationRequest *)&v77 init];
  v35 = v34;
  if (v34)
  {
    v71 = lCopy2;
    objc_storeStrong(&v34->_intent, intent);
    v36 = identifierCopy;
    v37 = [identifierCopy copy];
    bundleIdentifier = v35->_bundleIdentifier;
    v35->_bundleIdentifier = v37;

    objc_storeStrong(&v35->_intentLocalizationTableBundleURL, lCopy);
    objc_storeStrong(&v35->_widgetBundleScopedURL, rLCopy);
    v35->_family = family;
    v35->_widgetConfigurationStyle = style;
    v35->_widgetConfigurationType = type;
    v35->_defaultCardSize.width = v27;
    v35->_defaultCardSize.height = v26;
    v35->_initialCardFrame.origin.x = x;
    v35->_initialCardFrame.origin.y = y;
    v35->_initialCardFrame.size.width = width;
    v35->_initialCardFrame.size.height = height;
    v39 = [nameCopy copy];
    widgetDisplayName = v35->_widgetDisplayName;
    v35->_widgetDisplayName = v39;

    v41 = [descriptionCopy copy];
    widgetDescription = v35->_widgetDescription;
    v35->_widgetDescription = v41;

    objc_storeStrong(&v35->_widgetPrimaryColor, color);
    objc_storeStrong(&v35->_widgetTintColor, tintColor);
    v35->_usesWidgetAccentColor = accentColor;
    v43 = [deviceIdentifierCopy copy];
    remoteDeviceIdentifier = v35->_remoteDeviceIdentifier;
    v35->_remoteDeviceIdentifier = v43;

    v45 = [localizedNameCopy copy];
    remoteAppLocalizedName = v35->_remoteAppLocalizedName;
    v35->_remoteAppLocalizedName = v45;

    v47 = deviceIdentifierCopy;
    v48 = iconCopy;
    v49 = [iconCopy copy];
    remoteAppIcon = v35->_remoteAppIcon;
    v35->_remoteAppIcon = v49;

    remoteLocalizedIntent = v35->_remoteLocalizedIntent;
    v35->_remoteLocalizedIntent = 0;

    remoteLanguageCode = v35->_remoteLanguageCode;
    v35->_remoteLanguageCode = 0;

    v53 = MEMORY[0x1E695F060];
    v54 = nameCopy;
    if (v35->_intent && (v35->_bundleIdentifier || v35->_remoteDeviceIdentifier) && (v35->_defaultCardSize.width != *MEMORY[0x1E695F060] || v35->_defaultCardSize.height != *(MEMORY[0x1E695F060] + 8)))
    {
      lCopy2 = v71;
      if (!v35->_family)
      {
        v63 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v79 = "[WFWidgetConfigurationRequest initWithIntent:bundleIdentifier:intentLocalizationTableBundleURL:widgetBundleScopedURL:family:widgetConfigurationStyle:widgetConfigurationType:defaultCardSize:initialCardFrame:widgetDisplayName:widgetDescription:widgetPrimaryColor:widgetTintColor:usesWidgetAccentColor:remoteDeviceIdentifier:remoteAppLocalizedName:remoteAppIcon:]";
          _os_log_impl(&dword_1C830A000, v63, OS_LOG_TYPE_DEBUG, "%s Widget Configuration UI was requested with undefined widget family", buf, 0xCu);
        }
      }

      v61 = v35;
    }

    else
    {
      v55 = objc_opt_new();
      v56 = v55;
      if (!v35->_intent)
      {
        [v55 addObject:@"Intent"];
      }

      if (!v35->_bundleIdentifier)
      {
        [v56 addObject:@"Bundle Identifier"];
      }

      v57 = descriptionCopy;
      if (v35->_defaultCardSize.width == *v53 && v35->_defaultCardSize.height == v53[1])
      {
        [v56 addObject:@"Default Card Size"];
      }

      v58 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        [v56 componentsJoinedByString:{@", "}];
        v60 = v59 = v47;
        *buf = 136315394;
        v79 = "[WFWidgetConfigurationRequest initWithIntent:bundleIdentifier:intentLocalizationTableBundleURL:widgetBundleScopedURL:family:widgetConfigurationStyle:widgetConfigurationType:defaultCardSize:initialCardFrame:widgetDisplayName:widgetDescription:widgetPrimaryColor:widgetTintColor:usesWidgetAccentColor:remoteDeviceIdentifier:remoteAppLocalizedName:remoteAppIcon:]";
        v80 = 2114;
        v81 = v60;
        _os_log_impl(&dword_1C830A000, v58, OS_LOG_TYPE_FAULT, "%s Invalid Widget Configuration Request with invalid %{public}@", buf, 0x16u);

        v47 = v59;
      }

      v61 = 0;
      lCopy2 = v71;
      descriptionCopy = v57;
      v36 = identifierCopy;
    }
  }

  else
  {
    v62 = deviceIdentifierCopy;
    v48 = iconCopy;
    v61 = 0;
    v36 = identifierCopy;
    v54 = nameCopy;
    v47 = v62;
  }

  return v61;
}

- (WFWidgetConfigurationRequest)initWithIntent:(id)intent bundleIdentifier:(id)identifier intentLocalizationTableBundleURL:(id)l widgetBundleScopedURL:(id)rL family:(int64_t)family widgetConfigurationStyle:(unint64_t)style widgetConfigurationType:(unint64_t)type defaultCardSize:(CGSize)self0 initialCardFrame:(CGRect)self1 widgetDisplayName:(id)self2 widgetDescription:(id)self3 usesWidgetAccentColor:(BOOL)self4 remoteDeviceIdentifier:(id)self5 remoteAppLocalizedName:(id)self6 remoteAppIcon:(id)self7
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24 = size.height;
  v25 = size.width;
  intentCopy = intent;
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  descriptionCopy = description;
  deviceIdentifierCopy = deviceIdentifier;
  localizedNameCopy = localizedName;
  iconCopy = icon;
  if (rLCopy)
  {
    v32 = [rLCopy url];
    [v32 startAccessingSecurityScopedResource];
    v44 = 0;
    v45[0] = 0;
    WFWidgetColorsFromBundle(v32, v45, &v44);
    v33 = v45[0];
    v34 = rLCopy;
    rLCopy = v44;
    [v32 stopAccessingSecurityScopedResource];
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  LOBYTE(v36) = color;
  iconCopy = [(WFWidgetConfigurationRequest *)self initWithIntent:intentCopy bundleIdentifier:identifierCopy intentLocalizationTableBundleURL:lCopy widgetBundleScopedURL:v34 family:family widgetConfigurationStyle:style widgetConfigurationType:v25 defaultCardSize:v24 initialCardFrame:x widgetDisplayName:y widgetDescription:width widgetPrimaryColor:height widgetTintColor:type usesWidgetAccentColor:nameCopy remoteDeviceIdentifier:descriptionCopy remoteAppLocalizedName:v33 remoteAppIcon:rLCopy, v36, deviceIdentifierCopy, localizedNameCopy, iconCopy];

  return iconCopy;
}

- (WFWidgetConfigurationRequest)initWithOptions:(id)options
{
  v106 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWidgetConfigurationRequest.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  selfCopy = self;
  intent = [optionsCopy intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = MEMORY[0x1E6963620];
    intent2 = [optionsCopy intent];
    launchId = [intent2 launchId];
    v11 = [v8 bundleRecordWithBundleIdentifier:launchId allowPlaceholder:0 error:0];
  }

  else
  {
    intent3 = [optionsCopy intent];
    v13 = intent3;
    if (intent3)
    {
      extensionBundleId = [intent3 extensionBundleId];

      if (extensionBundleId)
      {
        v15 = objc_alloc(MEMORY[0x1E69635D0]);
        extensionBundleId2 = [v13 extensionBundleId];
        *buf = 0;
        v11 = [v15 initWithBundleIdentifier:extensionBundleId2 error:buf];
        v17 = *buf;
      }

      else
      {
        v17 = 0;
        v11 = 0;
      }

      intentDefinitionURLs = [v11 intentDefinitionURLs];
      v19 = [intentDefinitionURLs count];

      if (!v19)
      {
        launchId2 = [v13 launchId];
        v102[1] = 0;
        INExtractAppInfoFromSiriLaunchId();
        v21 = 0;

        v102[0] = v17;
        v22 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v21 allowPlaceholder:0 error:v102];
        v23 = v102[0];

        v17 = v23;
        v11 = v22;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  bundleIdentifier = [v11 bundleIdentifier];
  remoteDeviceIdentifier = [optionsCopy remoteDeviceIdentifier];
  v99 = v11;
  if (!remoteDeviceIdentifier || (v26 = remoteDeviceIdentifier, [optionsCopy intent], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "extensionBundleId"), v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v26, !v28))
  {
    v98 = 0;
    goto LABEL_26;
  }

  v29 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "[WFWidgetConfigurationRequest initWithOptions:]";
    _os_log_impl(&dword_1C830A000, v29, OS_LOG_TYPE_DEBUG, "%s widgetBundleScopedURL being set up due to remoteDeviceIdentifier being found", buf, 0xCu);
  }

  v30 = objc_alloc(MEMORY[0x1E69635D0]);
  intent4 = [optionsCopy intent];
  extensionBundleId3 = [intent4 extensionBundleId];
  v33 = [v30 initWithBundleIdentifier:extensionBundleId3 error:0];

  v34 = [v33 URL];

  v35 = objc_alloc(MEMORY[0x1E696AE98]);
  if (v34)
  {
    v36 = [v33 URL];
    v37 = [v35 initWithURL:v36 readonly:1];

    v38 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[WFWidgetConfigurationRequest initWithOptions:]";
      v104 = 2112;
      v105 = v37;
      v39 = "%s widgetBundleScopedURL was found: %@";
      v40 = v38;
      v41 = 22;
LABEL_24:
      _os_log_impl(&dword_1C830A000, v40, OS_LOG_TYPE_DEBUG, v39, buf, v41);
    }
  }

  else
  {
    v42 = [MEMORY[0x1E695DFF8] URLWithString:@"file:///tmp"];
    v37 = [v35 initWithURL:v42 readonly:1];

    v38 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[WFWidgetConfigurationRequest initWithOptions:]";
      v39 = "%s widgetBundleScopedURL was NOT found, returning fake URL";
      v40 = v38;
      v41 = 12;
      goto LABEL_24;
    }
  }

  v98 = v37;

LABEL_26:
  v43 = MEMORY[0x1E69D4328];
  v44 = bundleIdentifier;
  v45 = objc_alloc_init(v43);
  v46 = [v45 previewMetricsSpecificationForBundleIdentifier:v44];
  v97 = v44;

  v47 = [v46 metricsForFamily:2];
  v48 = v47;
  if (v47)
  {
    [v47 size];
    v50 = v49;
LABEL_28:
    v51 = ceil(v50 * 0.7);
    goto LABEL_29;
  }

  v81 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "WFWidgetConfiugrationRequestDefaultCardSizeForBundleIdentifier";
    _os_log_impl(&dword_1C830A000, v81, OS_LOG_TYPE_FAULT, "%s Cannot load the widget metrics from SpringBoard Services", buf, 0xCu);
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v84 = v83;
  v86 = v85;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    if (userInterfaceIdiom == 6)
    {
      v51 = 600.0;
      v50 = 386.0;
      goto LABEL_29;
    }

    if (userInterfaceIdiom == 1)
    {
      if (fmax(v84, v86) <= 1024.0)
      {
LABEL_43:
        v51 = 230.0;
        v50 = 329.0;
        goto LABEL_29;
      }

      goto LABEL_54;
    }

    v51 = 300.0;
    v50 = 400.0;
  }

  else
  {
    v90 = fmax(v86, v84);
    if (v90 >= 926.0)
    {
LABEL_54:
      v51 = 255.0;
      v50 = 364.0;
      goto LABEL_29;
    }

    if (v90 >= 896.0)
    {
      v51 = 252.0;
      v50 = 360.0;
    }

    else if (v90 >= 844.0)
    {
      v51 = 237.0;
      v50 = 338.0;
    }

    else
    {
      if (v90 >= 812.0)
      {
        goto LABEL_43;
      }

      if (v90 >= 736.0)
      {
        v51 = 244.0;
        v50 = 348.0;
      }

      else
      {
        v51 = 205.0;
        v50 = 292.0;
        if (v90 < 693.0)
        {
          if (v90 >= 667.0)
          {
            v51 = 225.0;
            v50 = 321.0;
          }

          else if (v90 < 568.0)
          {
            v50 = fmin(v86, v84) + -28.0;
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_29:

  intent5 = [optionsCopy intent];
  objc_opt_class();
  v53 = objc_opt_isKindOfClass();

  if (v53)
  {
    v54 = MEMORY[0x1E6963620];
    intent6 = [optionsCopy intent];
    extensionBundleId4 = [intent6 extensionBundleId];
    v57 = [v54 bundleRecordWithBundleIdentifier:extensionBundleId4 allowPlaceholder:0 error:0];
  }

  else
  {
    intent7 = [optionsCopy intent];
    _codableDescription = [intent7 _codableDescription];
    localizationBundleIdentifier = [_codableDescription localizationBundleIdentifier];

    if (!localizationBundleIdentifier)
    {
LABEL_35:
      v95 = 0;
      v96 = 0;
      goto LABEL_36;
    }

    v61 = MEMORY[0x1E6963620];
    intent6 = [optionsCopy intent];
    extensionBundleId4 = [intent6 _codableDescription];
    localizationBundleIdentifier2 = [extensionBundleId4 localizationBundleIdentifier];
    v57 = [v61 bundleRecordWithBundleIdentifier:localizationBundleIdentifier2 allowPlaceholder:0 error:0];
  }

  if (!v57)
  {
    goto LABEL_35;
  }

  v63 = objc_alloc(MEMORY[0x1E696AE98]);
  v96 = v57;
  v64 = [v57 URL];
  v95 = [v63 initWithURL:v64 readonly:1];

LABEL_36:
  intent8 = [optionsCopy intent];
  family = [optionsCopy family];
  widgetConfigurationStyle = [optionsCopy widgetConfigurationStyle];
  widgetConfigurationType = [optionsCopy widgetConfigurationType];
  [optionsCopy initialConfigurationCardViewFrame];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  widgetDisplayName = [optionsCopy widgetDisplayName];
  widgetDescription = [optionsCopy widgetDescription];
  remoteDeviceIdentifier2 = [optionsCopy remoteDeviceIdentifier];
  remoteAppLocalizedName = [optionsCopy remoteAppLocalizedName];
  remoteAppIcon = [optionsCopy remoteAppIcon];
  LOBYTE(v92) = 1;
  v101 = [(WFWidgetConfigurationRequest *)selfCopy initWithIntent:intent8 bundleIdentifier:v97 intentLocalizationTableBundleURL:v95 widgetBundleScopedURL:v98 family:family widgetConfigurationStyle:widgetConfigurationStyle widgetConfigurationType:v50 defaultCardSize:v51 initialCardFrame:v68 widgetDisplayName:v70 widgetDescription:v72 usesWidgetAccentColor:v74 remoteDeviceIdentifier:widgetConfigurationType remoteAppLocalizedName:widgetDisplayName remoteAppIcon:widgetDescription, v92, remoteDeviceIdentifier2, remoteAppLocalizedName, remoteAppIcon];

  return v101;
}

@end