@interface PDUAppDisclosureStyle
+ (id)styleWithApplication:(id)application;
+ (id)styleWithBundle:(id)bundle;
- (PDUAppDisclosureStyle)initWithBundle:(id)bundle;
- (int64_t)_styleFromString:(id)string;
- (void)_fetchStyleWithBundle:(id)bundle;
@end

@implementation PDUAppDisclosureStyle

- (PDUAppDisclosureStyle)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = PDUAppDisclosureStyle;
  v5 = [(PDUAppDisclosureStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PDUAppDisclosureStyle *)v5 _fetchStyleWithBundle:bundleCopy];
    v7 = v6;
  }

  return v6;
}

+ (id)styleWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = styleWithBundle__styleCache;
  if (!styleWithBundle__styleCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v6 = styleWithBundle__styleCache;
    styleWithBundle__styleCache = v5;

    [styleWithBundle__styleCache setCountLimit:8];
    v4 = styleWithBundle__styleCache;
  }

  bundleIdentifier = [bundleCopy bundleIdentifier];
  v8 = [v4 objectForKey:bundleIdentifier];

  if (!v8)
  {
    v8 = [[PDUAppDisclosureStyle alloc] initWithBundle:bundleCopy];
    v9 = styleWithBundle__styleCache;
    bundleIdentifier2 = [bundleCopy bundleIdentifier];
    [v9 setObject:v8 forKey:bundleIdentifier2];
  }

  return v8;
}

+ (id)styleWithApplication:(id)application
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = [application URL];
  v6 = [v4 bundleWithURL:v5];

  v7 = [self styleWithBundle:v6];

  return v7;
}

- (int64_t)_styleFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString isEqualToString:@"dark"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [lowercaseString isEqualToString:@"light"];
  }

  return v4;
}

- (void)_fetchStyleWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = objc_alloc(MEMORY[0x277D75DE0]);
  bundleURL = [bundleCopy bundleURL];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v8 = [v5 initWithURL:bundleURL idiom:objc_msgSend(currentDevice error:{"userInterfaceIdiom"), 0}];

  v9 = [v8 colorNamed:@"PrivacyDisclosureTintColor" withTraitCollection:0];
  tintColor = self->_tintColor;
  self->_tintColor = v9;

  if (!self->_tintColor)
  {
    v11 = [v8 colorNamed:@"AccentColor" withTraitCollection:0];
    v12 = self->_tintColor;
    self->_tintColor = v11;

    if (!self->_tintColor)
    {
      infoDictionary = [bundleCopy infoDictionary];
      v14 = [infoDictionary objectForKeyedSubscript:@"NSAccentColorName"];

      if (v14)
      {
        v15 = [v8 colorNamed:v14 withTraitCollection:0];
        v16 = self->_tintColor;
        self->_tintColor = v15;
      }
    }
  }

  infoDictionary2 = [bundleCopy infoDictionary];
  v18 = [infoDictionary2 objectForKeyedSubscript:@"UIUserInterfaceStyle"];

  v19 = [(PDUAppDisclosureStyle *)self _styleFromString:v18];
  self->_interfaceStyle = v19;
  if (!self->_tintColor || !v19)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    v21 = PDUGetBundle();
    v22 = v21;
    if (v21)
    {
      v23 = [v21 URLForResource:@"AppDisclosureData" withExtension:@"json"];
      if (v23)
      {
        v40 = 0;
        v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v23 options:1 error:&v40];
        v25 = v40;
        v26 = v25;
        if (v24 && !v25)
        {
          v39 = 0;
          v27 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v24 options:0 error:&v39];
          v28 = v39;
          v26 = v28;
          if (v27 && !v28)
          {
            v38 = v27;
            v29 = [v27 objectForKeyedSubscript:bundleIdentifier];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = v29;
              v37 = v29;
              v30 = [v37 objectForKeyedSubscript:@"tint"];
              objc_opt_class();
              v36 = v30;
              if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_tintColor)
              {
                v31 = [MEMORY[0x277D75348] pdu_colorWithString:v30];
                v32 = self->_tintColor;
                self->_tintColor = v31;
              }

              v33 = [v37 objectForKeyedSubscript:{@"appearance", v34}];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_interfaceStyle)
              {
                self->_interfaceStyle = [(PDUAppDisclosureStyle *)self _styleFromString:v33];
              }

              v29 = v35;
            }

            v27 = v38;
          }
        }
      }
    }
  }
}

@end