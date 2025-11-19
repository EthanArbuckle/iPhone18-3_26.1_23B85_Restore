@interface TCCDBundle
+ (TCCDBundle)bundleWithIdentifier:(id)a3;
+ (TCCDBundle)bundleWithURL:(id)a3;
- (BOOL)isASKCapable;
- (BOOL)isLSUIElement;
- (BOOL)isPathContainedWithin:(id)a3;
- (BOOL)isPathTheMainExecutable:(id)a3;
- (BOOL)isRunsIndependentlyOfCompanionApp;
- (BOOL)isWatchKitApp;
- (BOOL)isWatchOnly;
- (NSString)bundlePath;
- (NSString)bundleVersion;
- (NSString)executablePath;
- (NSString)extensionPointIdentifier;
- (NSURL)bundleURL;
- (NSURL)executableURL;
- (TCCDBundle)initWithIdentifier:(id)a3;
- (TCCDBundle)initWithURL:(id)a3;
- (id)description;
- (id)localizedUsageDescriptionForKey:(id)a3;
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
  v4 = [(TCCDBundle *)self bundleIdentifier];
  v5 = [(TCCDBundle *)self bundleVersion];
  v6 = [(TCCDBundle *)self bundlePath];
  v7 = [NSString stringWithFormat:@"<%@: bundleID=%@, version=%@, path=%@>", v3, v4, v5, v6];

  return v7;
}

- (NSString)bundleVersion
{
  v2 = [(TCCDBundle *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"CFBundleVersion"];

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
  v2 = [(TCCDBundle *)self bundleURL];
  v3 = [v2 path];

  return v3;
}

- (NSString)extensionPointIdentifier
{
  v3 = [(TCCDBundle *)self infoDictionary];
  v4 = [v3 objectForKeyedSubscript:@"EXAppExtensionAttributes"];

  if (v4)
  {
    v5 = @"EXExtensionPointIdentifier";
  }

  else
  {
    v6 = [(TCCDBundle *)self infoDictionary];
    v4 = [v6 objectForKeyedSubscript:@"NSExtension"];

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
      v12 = self;
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

- (TCCDBundle)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TCCDBundle;
  v5 = [(TCCDBundle *)&v10 init];
  if (v5 && (Unique = _CFBundleCreateUnique(), (v5->_cfBundle = Unique) == 0))
  {
    v8 = tcc_access_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100035430(v4, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (TCCDBundle)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [LSBundleRecord bundleRecordWithBundleIdentifier:v4 allowPlaceholder:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = tcc_access_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000354A8();
    }

    v8 = 0;
  }

  else
  {
    v7 = [v5 URL];
    self = [(TCCDBundle *)self initWithURL:v7];
    v8 = self;
  }

  return v8;
}

+ (TCCDBundle)bundleWithURL:(id)a3
{
  v3 = a3;
  v4 = [[TCCDBundle alloc] initWithURL:v3];

  return v4;
}

+ (TCCDBundle)bundleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[TCCDBundle alloc] initWithIdentifier:v3];

  return v4;
}

- (NSString)executablePath
{
  v2 = [(TCCDBundle *)self executableURL];
  v3 = [v2 path];

  return v3;
}

- (NSURL)executableURL
{
  v2 = CFBundleCopyExecutableURL(self->_cfBundle);

  return v2;
}

- (BOOL)isLSUIElement
{
  v2 = [(TCCDBundle *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"LSUIElement"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)localizedUsageDescriptionForKey:(id)a3
{
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(self->_cfBundle, a3);
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
  v2 = [(TCCDBundle *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"WKApplication"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isWatchOnly
{
  v2 = [(TCCDBundle *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"WKWatchOnly"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isRunsIndependentlyOfCompanionApp
{
  v2 = [(TCCDBundle *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isASKCapable
{
  v2 = [(TCCDBundle *)self infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];

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

- (BOOL)isPathTheMainExecutable:(id)a3
{
  v4 = a3;
  v5 = [(TCCDBundle *)self executablePath];
  v11 = 0;
  v6 = [v5 stringByResolvingRealPathWithError:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [v6 isEqualToString:v4];
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

- (BOOL)isPathContainedWithin:(id)a3
{
  v4 = a3;
  v5 = [(TCCDBundle *)self bundlePath];
  v11 = 0;
  v6 = [v5 stringByResolvingRealPathWithError:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [v4 hasPrefix:v6];
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