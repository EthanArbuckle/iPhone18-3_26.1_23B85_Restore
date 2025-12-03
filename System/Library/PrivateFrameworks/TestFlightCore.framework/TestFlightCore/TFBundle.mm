@interface TFBundle
+ (id)bundleIdentifierForBundleURL:(id)l;
+ (id)frameworkBundle;
+ (id)pathForResource:(id)resource ofType:(id)type;
@end

@implementation TFBundle

+ (id)frameworkBundle
{
  if (frameworkBundle_onceToken != -1)
  {
    +[TFBundle frameworkBundle];
  }

  v3 = frameworkBundle_frameworkBundle;

  return v3;
}

uint64_t __27__TFBundle_frameworkBundle__block_invoke()
{
  frameworkBundle_frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

+ (id)pathForResource:(id)resource ofType:(id)type
{
  typeCopy = type;
  resourceCopy = resource;
  frameworkBundle = [self frameworkBundle];
  v9 = [frameworkBundle pathForResource:resourceCopy ofType:typeCopy];

  return v9;
}

+ (id)bundleIdentifierForBundleURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:lCopy allowPlaceholder:1 error:&v12];
  v5 = v12;
  if (v4)
  {
    bundleIdentifier = [v4 bundleIdentifier];
  }

  else
  {
    v7 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger = [v7 generatedLogger];
    if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      *buf = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = lCopy;
      v17 = 2114;
      v18 = v5;
      v10 = v9;
      _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEBUG, "%{public}@: Cannot load application record for %{public}@: %{public}@", buf, 0x20u);
    }

    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

@end