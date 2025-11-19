@interface WFWidgetConfigurationRequest
- (BOOL)isWidgetExtensionInformationLoaded;
- (CGRect)initialCardFrame;
- (CGSize)defaultCardSize;
- (NSString)appBundleIdentifier;
- (NSString)fallbackDisplayName;
- (UIColor)widgetTintColor;
- (WFWidgetConfigurationRequest)initWithCoder:(id)a3;
- (WFWidgetConfigurationRequest)initWithIntent:(id)a3 bundleIdentifier:(id)a4 intentLocalizationTableBundleURL:(id)a5 widgetBundleScopedURL:(id)a6 family:(int64_t)a7 widgetConfigurationStyle:(unint64_t)a8 widgetConfigurationType:(unint64_t)a9 defaultCardSize:(CGSize)a10 initialCardFrame:(CGRect)a11 widgetDisplayName:(id)a12 widgetDescription:(id)a13 usesWidgetAccentColor:(BOOL)a14 remoteDeviceIdentifier:(id)a15 remoteAppLocalizedName:(id)a16 remoteAppIcon:(id)a17;
- (WFWidgetConfigurationRequest)initWithIntent:(id)a3 bundleIdentifier:(id)a4 intentLocalizationTableBundleURL:(id)a5 widgetBundleScopedURL:(id)a6 family:(int64_t)a7 widgetConfigurationStyle:(unint64_t)a8 widgetConfigurationType:(unint64_t)a9 defaultCardSize:(CGSize)a10 initialCardFrame:(CGRect)a11 widgetDisplayName:(id)a12 widgetDescription:(id)a13 widgetPrimaryColor:(id)a14 widgetTintColor:(id)a15 usesWidgetAccentColor:(BOOL)a16 remoteDeviceIdentifier:(id)a17 remoteAppLocalizedName:(id)a18 remoteAppIcon:(id)a19;
- (WFWidgetConfigurationRequest)initWithOptions:(id)a3;
- (unint64_t)resolvedWidgetConfigurationStyle;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadWidgetExtensionInformationWithCompletion:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = INIntentWithTypedIntent();
  [v8 encodeObject:v4 forKey:@"intent"];

  [v8 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v8 encodeObject:self->_intentLocalizationTableBundleURL forKey:@"intentLocalizationTableBundleURL"];
  [v8 encodeObject:self->_widgetBundleScopedURL forKey:@"widgetBundleScopedURL"];
  [v8 encodeInteger:self->_family forKey:@"family"];
  [v8 encodeInteger:self->_widgetConfigurationStyle forKey:@"widgetConfigurationStyle"];
  [v8 encodeInteger:self->_widgetConfigurationType forKey:@"widgetConfigurationType"];
  v5 = [MEMORY[0x1E696B098] value:&self->_defaultCardSize withObjCType:"{CGSize=dd}"];
  [v8 encodeObject:v5 forKey:@"defaultCardSize"];

  v6 = [MEMORY[0x1E696B098] value:&self->_initialCardFrame withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v8 encodeObject:v6 forKey:@"initialCardFrame"];

  [v8 encodeObject:self->_widgetDisplayName forKey:@"widgetDisplayName"];
  [v8 encodeObject:self->_widgetDescription forKey:@"widgetDescription"];
  [v8 encodeBool:self->_usesWidgetAccentColor forKey:@"usesWidgetAccentColor"];
  [v8 encodeObject:self->_remoteDeviceIdentifier forKey:@"remoteDeviceIdentifier"];
  [v8 encodeObject:self->_remoteAppLocalizedName forKey:@"remoteAppLocalizedName"];
  [v8 encodeObject:self->_remoteAppIcon forKey:@"remoteAppIcon"];
  v7 = INIntentWithTypedIntent();
  [v8 encodeObject:v7 forKey:@"remoteLocalizedIntent"];

  [v8 encodeObject:self->_remoteLanguageCode forKey:@"remoteLanguageCode"];
}

- (WFWidgetConfigurationRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v31 = INTypedIntentWithIntent();

  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"intentLocalizationTableBundleURL"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"widgetBundleScopedURL"];
  v27 = [v3 decodeIntegerForKey:@"family"];
  v26 = [v3 decodeIntegerForKey:@"widgetConfigurationStyle"];
  v24 = [v3 decodeIntegerForKey:@"widgetConfigurationType"];
  v34 = *MEMORY[0x1E695F060];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"defaultCardSize"];
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
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"initialCardFrame"];
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
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescription"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"widgetDisplayName"];
  v12 = [v3 decodeBoolForKey:@"usesWidgetAccentColor"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceIdentifier"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remoteAppLocalizedName"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remoteAppIcon"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remoteLocalizedIntent"];
  v16 = INTypedIntentWithIntent();

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remoteLanguageCode"];
  LOBYTE(v20) = v12;
  v18 = [(WFWidgetConfigurationRequest *)self initWithIntent:v31 bundleIdentifier:v30 intentLocalizationTableBundleURL:v29 widgetBundleScopedURL:v28 family:v27 widgetConfigurationStyle:v26 widgetConfigurationType:v34 defaultCardSize:v32 initialCardFrame:v33 widgetDisplayName:v24 widgetDescription:v22 usesWidgetAccentColor:v23 remoteDeviceIdentifier:v20 remoteAppLocalizedName:v13 remoteAppIcon:v21, v14];
  [(WFWidgetConfigurationRequest *)v18 setRemoteLocalizedIntent:v16];
  [(WFWidgetConfigurationRequest *)v18 setRemoteLanguageCode:v17];

  return v18;
}

- (void)startAccessingSecurityScopedBundleResource
{
  v3 = [(WFWidgetConfigurationRequest *)self intentLocalizationTableBundleURL];
  v2 = [v3 url];
  [v2 startAccessingSecurityScopedResource];
}

- (void)loadWidgetExtensionInformationWithCompletion:(id)a3
{
  v53[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(WFWidgetConfigurationRequest *)self isWidgetExtensionInformationLoaded])
  {
    goto LABEL_6;
  }

  v5 = [(WFWidgetConfigurationRequest *)self intent];
  v6 = objc_alloc_init(WFShortcutsWidgetConfigurationIntent);
  v7 = objc_alloc_init(WFShortcutsSmallWidgetConfigurationIntent);
  v8 = softLinkDOCCreateDefaultHomeScreenWidgetIntent();
  v9 = [v5 _className];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if ([v9 isEqualToString:v11])
  {
    goto LABEL_5;
  }

  v48 = self;
  v12 = [v5 _className];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if ([v12 isEqualToString:v14])
  {

LABEL_5:
LABEL_6:
    v4[2](v4, 0);
    goto LABEL_7;
  }

  v15 = [v5 _className];
  v16 = objc_opt_class();
  NSStringFromClass(v16);
  v17 = v47 = v4;
  v46 = [v15 isEqualToString:v17];

  v4 = v47;
  if (v46)
  {
    goto LABEL_6;
  }

  v18 = [MEMORY[0x1E696EAE0] sharedProvider];
  v19 = [(WFWidgetConfigurationRequest *)v48 intent];
  v20 = [v18 descriptorForIntent:v19];

  v21 = [v20 extensionBundleIdentifier];
  if (!v21)
  {
    v22 = [(WFWidgetConfigurationRequest *)v48 intent];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [(WFWidgetConfigurationRequest *)v48 intent];
      v25 = [v24 _asMigratedAppIntent];

      if (v25)
      {
        v26 = [v25 extensionBundleId];
        v27 = v26;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = [v25 launchId];
        }

        v21 = v28;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  v51 = 0;
  v29 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v21 error:&v51];
  v30 = v51;
  if (v29)
  {
    v31 = objc_alloc(MEMORY[0x1E696AE98]);
    v32 = [v29 URL];
    v33 = [v31 initWithURL:v32 readonly:1];
    widgetBundleScopedURL = v48->_widgetBundleScopedURL;
    v48->_widgetBundleScopedURL = v33;

    v35 = [v29 URL];
    v49 = 0;
    v50 = 0;
    WFWidgetColorsFromBundle(v35, &v50, &v49);
    v36 = v50;
    v37 = v49;

    widgetPrimaryColor = v48->_widgetPrimaryColor;
    v48->_widgetPrimaryColor = v36;
    v39 = v36;

    widgetTintColor = v48->_widgetTintColor;
    v48->_widgetTintColor = v37;

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

  v4 = v47;
  v47[2](v47, v41);

LABEL_7:
}

- (void)dealloc
{
  v3 = [(WFWidgetConfigurationRequest *)self intentLocalizationTableBundleURL];
  v4 = [v3 url];
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
    v4 = [(WFWidgetConfigurationRequest *)self intent];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:0];
      v6 = [v4 _intents_bundleIdForLaunching];
      v7 = [v4 appIntentIdentifier];
      v8 = [(NSString *)v5 actionsForBundleIdentifier:v6 andActionIdentifier:v7 error:0];
      v9 = [v8 firstObject];

      v10 = [v9 attributionBundleIdentifier];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        v13 = self->_appBundleIdentifier;
        self->_appBundleIdentifier = v12;
      }

      else
      {
        v13 = [(WFWidgetConfigurationRequest *)self intent];
        v15 = [v13 _intents_bundleIdForDisplay];
        v16 = self->_appBundleIdentifier;
        self->_appBundleIdentifier = v15;
      }
    }

    else
    {

      v4 = [(WFWidgetConfigurationRequest *)self intent];
      v14 = [v4 _intents_bundleIdForDisplay];
      v5 = self->_appBundleIdentifier;
      self->_appBundleIdentifier = v14;
    }

    appBundleIdentifier = self->_appBundleIdentifier;
  }

  return appBundleIdentifier;
}

- (BOOL)isWidgetExtensionInformationLoaded
{
  v2 = [(WFWidgetConfigurationRequest *)self widgetBundleScopedURL];
  v3 = v2 != 0;

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

- (WFWidgetConfigurationRequest)initWithIntent:(id)a3 bundleIdentifier:(id)a4 intentLocalizationTableBundleURL:(id)a5 widgetBundleScopedURL:(id)a6 family:(int64_t)a7 widgetConfigurationStyle:(unint64_t)a8 widgetConfigurationType:(unint64_t)a9 defaultCardSize:(CGSize)a10 initialCardFrame:(CGRect)a11 widgetDisplayName:(id)a12 widgetDescription:(id)a13 widgetPrimaryColor:(id)a14 widgetTintColor:(id)a15 usesWidgetAccentColor:(BOOL)a16 remoteDeviceIdentifier:(id)a17 remoteAppLocalizedName:(id)a18 remoteAppIcon:(id)a19
{
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v26 = a10.height;
  v27 = a10.width;
  v82 = *MEMORY[0x1E69E9840];
  v75 = a3;
  v76 = a4;
  v66 = a5;
  v28 = a5;
  v67 = a6;
  v74 = a6;
  v29 = a12;
  v30 = a13;
  v73 = a14;
  v72 = a15;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v77.receiver = self;
  v77.super_class = WFWidgetConfigurationRequest;
  v34 = [(WFWidgetConfigurationRequest *)&v77 init];
  v35 = v34;
  if (v34)
  {
    v71 = v28;
    objc_storeStrong(&v34->_intent, a3);
    v36 = v76;
    v37 = [v76 copy];
    bundleIdentifier = v35->_bundleIdentifier;
    v35->_bundleIdentifier = v37;

    objc_storeStrong(&v35->_intentLocalizationTableBundleURL, v66);
    objc_storeStrong(&v35->_widgetBundleScopedURL, v67);
    v35->_family = a7;
    v35->_widgetConfigurationStyle = a8;
    v35->_widgetConfigurationType = a9;
    v35->_defaultCardSize.width = v27;
    v35->_defaultCardSize.height = v26;
    v35->_initialCardFrame.origin.x = x;
    v35->_initialCardFrame.origin.y = y;
    v35->_initialCardFrame.size.width = width;
    v35->_initialCardFrame.size.height = height;
    v39 = [v29 copy];
    widgetDisplayName = v35->_widgetDisplayName;
    v35->_widgetDisplayName = v39;

    v41 = [v30 copy];
    widgetDescription = v35->_widgetDescription;
    v35->_widgetDescription = v41;

    objc_storeStrong(&v35->_widgetPrimaryColor, a14);
    objc_storeStrong(&v35->_widgetTintColor, a15);
    v35->_usesWidgetAccentColor = a16;
    v43 = [v31 copy];
    remoteDeviceIdentifier = v35->_remoteDeviceIdentifier;
    v35->_remoteDeviceIdentifier = v43;

    v45 = [v32 copy];
    remoteAppLocalizedName = v35->_remoteAppLocalizedName;
    v35->_remoteAppLocalizedName = v45;

    v47 = v31;
    v48 = v33;
    v49 = [v33 copy];
    remoteAppIcon = v35->_remoteAppIcon;
    v35->_remoteAppIcon = v49;

    remoteLocalizedIntent = v35->_remoteLocalizedIntent;
    v35->_remoteLocalizedIntent = 0;

    remoteLanguageCode = v35->_remoteLanguageCode;
    v35->_remoteLanguageCode = 0;

    v53 = MEMORY[0x1E695F060];
    v54 = v29;
    if (v35->_intent && (v35->_bundleIdentifier || v35->_remoteDeviceIdentifier) && (v35->_defaultCardSize.width != *MEMORY[0x1E695F060] || v35->_defaultCardSize.height != *(MEMORY[0x1E695F060] + 8)))
    {
      v28 = v71;
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

      v57 = v30;
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
      v28 = v71;
      v30 = v57;
      v36 = v76;
    }
  }

  else
  {
    v62 = v31;
    v48 = v33;
    v61 = 0;
    v36 = v76;
    v54 = v29;
    v47 = v62;
  }

  return v61;
}

- (WFWidgetConfigurationRequest)initWithIntent:(id)a3 bundleIdentifier:(id)a4 intentLocalizationTableBundleURL:(id)a5 widgetBundleScopedURL:(id)a6 family:(int64_t)a7 widgetConfigurationStyle:(unint64_t)a8 widgetConfigurationType:(unint64_t)a9 defaultCardSize:(CGSize)a10 initialCardFrame:(CGRect)a11 widgetDisplayName:(id)a12 widgetDescription:(id)a13 usesWidgetAccentColor:(BOOL)a14 remoteDeviceIdentifier:(id)a15 remoteAppLocalizedName:(id)a16 remoteAppIcon:(id)a17
{
  height = a11.size.height;
  width = a11.size.width;
  y = a11.origin.y;
  x = a11.origin.x;
  v24 = a10.height;
  v25 = a10.width;
  v43 = a3;
  v40 = a4;
  v38 = a5;
  v26 = a6;
  v27 = a12;
  v28 = a13;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  if (v26)
  {
    v32 = [v26 url];
    [v32 startAccessingSecurityScopedResource];
    v44 = 0;
    v45[0] = 0;
    WFWidgetColorsFromBundle(v32, v45, &v44);
    v33 = v45[0];
    v34 = v26;
    v26 = v44;
    [v32 stopAccessingSecurityScopedResource];
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  LOBYTE(v36) = a14;
  v42 = [(WFWidgetConfigurationRequest *)self initWithIntent:v43 bundleIdentifier:v40 intentLocalizationTableBundleURL:v38 widgetBundleScopedURL:v34 family:a7 widgetConfigurationStyle:a8 widgetConfigurationType:v25 defaultCardSize:v24 initialCardFrame:x widgetDisplayName:y widgetDescription:width widgetPrimaryColor:height widgetTintColor:a9 usesWidgetAccentColor:v27 remoteDeviceIdentifier:v28 remoteAppLocalizedName:v33 remoteAppIcon:v26, v36, v29, v30, v31];

  return v42;
}

- (WFWidgetConfigurationRequest)initWithOptions:(id)a3
{
  v106 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v91 = [MEMORY[0x1E696AAA8] currentHandler];
    [v91 handleFailureInMethod:a2 object:self file:@"WFWidgetConfigurationRequest.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v100 = self;
  v6 = [v5 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = MEMORY[0x1E6963620];
    v9 = [v5 intent];
    v10 = [v9 launchId];
    v11 = [v8 bundleRecordWithBundleIdentifier:v10 allowPlaceholder:0 error:0];
  }

  else
  {
    v12 = [v5 intent];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 extensionBundleId];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x1E69635D0]);
        v16 = [v13 extensionBundleId];
        *buf = 0;
        v11 = [v15 initWithBundleIdentifier:v16 error:buf];
        v17 = *buf;
      }

      else
      {
        v17 = 0;
        v11 = 0;
      }

      v18 = [v11 intentDefinitionURLs];
      v19 = [v18 count];

      if (!v19)
      {
        v20 = [v13 launchId];
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

  v24 = [v11 bundleIdentifier];
  v25 = [v5 remoteDeviceIdentifier];
  v99 = v11;
  if (!v25 || (v26 = v25, [v5 intent], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "extensionBundleId"), v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v26, !v28))
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
  v31 = [v5 intent];
  v32 = [v31 extensionBundleId];
  v33 = [v30 initWithBundleIdentifier:v32 error:0];

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
  v44 = v24;
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

  v82 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v82 bounds];
  v84 = v83;
  v86 = v85;

  v87 = [MEMORY[0x1E69DCEB0] mainScreen];
  v88 = [v87 traitCollection];
  v89 = [v88 userInterfaceIdiom];

  if (v89)
  {
    if (v89 == 6)
    {
      v51 = 600.0;
      v50 = 386.0;
      goto LABEL_29;
    }

    if (v89 == 1)
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

  v52 = [v5 intent];
  objc_opt_class();
  v53 = objc_opt_isKindOfClass();

  if (v53)
  {
    v54 = MEMORY[0x1E6963620];
    v55 = [v5 intent];
    v56 = [v55 extensionBundleId];
    v57 = [v54 bundleRecordWithBundleIdentifier:v56 allowPlaceholder:0 error:0];
  }

  else
  {
    v58 = [v5 intent];
    v59 = [v58 _codableDescription];
    v60 = [v59 localizationBundleIdentifier];

    if (!v60)
    {
LABEL_35:
      v95 = 0;
      v96 = 0;
      goto LABEL_36;
    }

    v61 = MEMORY[0x1E6963620];
    v55 = [v5 intent];
    v56 = [v55 _codableDescription];
    v62 = [v56 localizationBundleIdentifier];
    v57 = [v61 bundleRecordWithBundleIdentifier:v62 allowPlaceholder:0 error:0];
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
  v65 = [v5 intent];
  v94 = [v5 family];
  v93 = [v5 widgetConfigurationStyle];
  v66 = [v5 widgetConfigurationType];
  [v5 initialConfigurationCardViewFrame];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = [v5 widgetDisplayName];
  v76 = [v5 widgetDescription];
  v77 = [v5 remoteDeviceIdentifier];
  v78 = [v5 remoteAppLocalizedName];
  v79 = [v5 remoteAppIcon];
  LOBYTE(v92) = 1;
  v101 = [(WFWidgetConfigurationRequest *)v100 initWithIntent:v65 bundleIdentifier:v97 intentLocalizationTableBundleURL:v95 widgetBundleScopedURL:v98 family:v94 widgetConfigurationStyle:v93 widgetConfigurationType:v50 defaultCardSize:v51 initialCardFrame:v68 widgetDisplayName:v70 widgetDescription:v72 usesWidgetAccentColor:v74 remoteDeviceIdentifier:v66 remoteAppLocalizedName:v75 remoteAppIcon:v76, v92, v77, v78, v79];

  return v101;
}

@end