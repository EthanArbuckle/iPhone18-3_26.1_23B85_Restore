@interface TFBundle
+ (id)bundleIdentifierForBundleURL:(id)a3;
+ (id)frameworkBundle;
+ (id)pathForResource:(id)a3 ofType:(id)a4;
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

+ (id)pathForResource:(id)a3 ofType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 frameworkBundle];
  v9 = [v8 pathForResource:v7 ofType:v6];

  return v9;
}

+ (id)bundleIdentifierForBundleURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v3 allowPlaceholder:1 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 bundleIdentifier];
  }

  else
  {
    v7 = +[TFLogConfiguration defaultConfiguration];
    v8 = [v7 generatedLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      *buf = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = v5;
      v10 = v9;
      _os_log_impl(&dword_26D2C7000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Cannot load application record for %{public}@: %{public}@", buf, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

@end