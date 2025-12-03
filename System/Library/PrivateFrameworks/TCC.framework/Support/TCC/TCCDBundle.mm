@interface TCCDBundle
+ (TCCDBundle)bundleWithIdentifier:(id)identifier;
+ (TCCDBundle)bundleWithURL:(id)l;
- (BOOL)isASKCapable;
- (BOOL)isLSUIElement;
- (BOOL)isPathContainedWithin:(id)within;
- (BOOL)isPathTheMainExecutable:(id)executable;
- (BOOL)isRunsIndependentlyOfCompanionApp;
- (BOOL)isWatchKitApp;
- (BOOL)isWatchOnly;
- (NSString)bundlePath;
- (NSString)bundleVersion;
- (NSString)executablePath;
- (NSString)extensionPointIdentifier;
- (NSURL)bundleURL;
- (NSURL)executableURL;
- (TCCDBundle)initWithIdentifier:(id)identifier;
- (TCCDBundle)initWithURL:(id)l;
- (id)description;
- (id)localizedUsageDescriptionForKey:(id)key;
- (void)dealloc;
@end

@implementation TCCDBundle

- (NSURL)bundleURL
{
  v2 = CFBundleCopyBundleURL(self->_cfBundle);

  return v2;
}

- (void)dealloc
{
  cfBundle = self->_cfBundle;
  if (cfBundle)
  {
    CFRelease(cfBundle);
  }

  v4.receiver = self;
  v4.super_class = TCCDBundle;
  [(TCCDBundle *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  bundleIdentifier = [(TCCDBundle *)self bundleIdentifier];
  bundleVersion = [(TCCDBundle *)self bundleVersion];
  bundlePath = [(TCCDBundle *)self bundlePath];
  v7 = [NSString stringWithFormat:@"<%@: bundleID=%@, version=%@, path=%@>", v3, bundleIdentifier, bundleVersion, bundlePath];

  return v7;
}

- (NSString)bundleVersion
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)bundlePath
{
  bundleURL = [(TCCDBundle *)self bundleURL];
  path = [bundleURL path];

  return path;
}

- (NSString)extensionPointIdentifier
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v4 = [infoDictionary objectForKeyedSubscript:@"EXAppExtensionAttributes"];

  if (v4)
  {
    v5 = @"EXExtensionPointIdentifier";
  }

  else
  {
    infoDictionary2 = [(TCCDBundle *)self infoDictionary];
    v4 = [infoDictionary2 objectForKeyedSubscript:@"NSExtension"];

    v5 = @"NSExtensionPointIdentifier";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v7;
      v8 = v7;
      goto LABEL_13;
    }

    v9 = tcc_access_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543874;
      selfCopy = self;
      v13 = 2112;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Info.plist is missing or has invalid value for %@ key: %{public}@", &v11, 0x20u);
    }
  }

  else
  {
    v7 = tcc_access_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100035514();
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (TCCDBundle)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = TCCDBundle;
  v5 = [(TCCDBundle *)&v10 init];
  if (v5 && (Unique = _CFBundleCreateUnique(), (v5->_cfBundle = Unique) == 0))
  {
    v8 = tcc_access_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100035430(lCopy, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (TCCDBundle)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v5 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = tcc_access_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000354A8();
    }

    selfCopy = 0;
  }

  else
  {
    v7 = [v5 URL];
    self = [(TCCDBundle *)self initWithURL:v7];
    selfCopy = self;
  }

  return selfCopy;
}

+ (TCCDBundle)bundleWithURL:(id)l
{
  lCopy = l;
  v4 = [[TCCDBundle alloc] initWithURL:lCopy];

  return v4;
}

+ (TCCDBundle)bundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[TCCDBundle alloc] initWithIdentifier:identifierCopy];

  return v4;
}

- (NSString)executablePath
{
  executableURL = [(TCCDBundle *)self executableURL];
  path = [executableURL path];

  return path;
}

- (NSURL)executableURL
{
  v2 = CFBundleCopyExecutableURL(self->_cfBundle);

  return v2;
}

- (BOOL)isLSUIElement
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"LSUIElement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)localizedUsageDescriptionForKey:(id)key
{
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(self->_cfBundle, key);
  if (ValueForInfoDictionaryKey)
  {
    v4 = ValueForInfoDictionaryKey;
    v5 = CFGetTypeID(ValueForInfoDictionaryKey);
    if (v5 == CFStringGetTypeID())
    {
      ValueForInfoDictionaryKey = v4;
    }

    else
    {
      ValueForInfoDictionaryKey = 0;
    }
  }

  return ValueForInfoDictionaryKey;
}

- (BOOL)isWatchKitApp
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"WKApplication"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isWatchOnly
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"WKWatchOnly"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isRunsIndependentlyOfCompanionApp
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isASKCapable
{
  infoDictionary = [(TCCDBundle *)self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 containsObject:@"Bluetooth"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPathTheMainExecutable:(id)executable
{
  executableCopy = executable;
  executablePath = [(TCCDBundle *)self executablePath];
  v11 = 0;
  v6 = [executablePath stringByResolvingRealPathWithError:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [v6 isEqualToString:executableCopy];
  }

  else
  {
    v9 = tcc_access_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100035580(self);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isPathContainedWithin:(id)within
{
  withinCopy = within;
  bundlePath = [(TCCDBundle *)self bundlePath];
  v11 = 0;
  v6 = [bundlePath stringByResolvingRealPathWithError:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [withinCopy hasPrefix:v6];
  }

  else
  {
    v9 = tcc_access_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100035614(self);
    }

    v8 = 0;
  }

  return v8;
}

@end