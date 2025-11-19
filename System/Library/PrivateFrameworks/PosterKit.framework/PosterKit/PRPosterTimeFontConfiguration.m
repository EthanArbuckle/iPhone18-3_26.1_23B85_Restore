@interface PRPosterTimeFontConfiguration
+ (PRPosterTimeFontConfiguration)configurationWithTimeFontConfiguration:(id)a3 extensionBundleIdentifier:(id)a4 systemItem:(BOOL)a5;
+ (PRPosterTimeFontConfiguration)defaultConfiguration;
+ (id)configurationWithTimeFontConfiguration:(id)a3 extensionBundleURL:(id)a4 systemItem:(BOOL)a5;
- (NSString)description;
- (PRPosterTimeFontConfiguration)init;
- (PRPosterTimeFontConfiguration)timeFontConfigurationWithExtensionBundle:(id)a3;
- (PRPosterTimeFontConfiguration)timeFontConfigurationWithExtensionBundleIdentifier:(id)a3;
@end

@implementation PRPosterTimeFontConfiguration

+ (id)configurationWithTimeFontConfiguration:(id)a3 extensionBundleURL:(id)a4 systemItem:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[PRPosterTimeFontConfiguration configurationWithTimeFontConfiguration:extensionBundleURL:systemItem:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[PRPosterTimeFontConfiguration configurationWithTimeFontConfiguration:extensionBundleURL:systemItem:];
LABEL_3:
  v10 = [v7 timeFontIdentifier];
  [v7 weight];
  if (v10)
  {
    v12 = [[PRPosterSystemTimeFontConfiguration alloc] initWithTimeFontIdentifier:v10 weight:v5 systemItem:v11];
  }

  else
  {
    v13 = [v7 customFont];
    if (v13)
    {
      v12 = [[PRPosterCustomTimeFontConfiguration alloc] initWithFont:v13 extensionBundleURL:v9];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (PRPosterTimeFontConfiguration)configurationWithTimeFontConfiguration:(id)a3 extensionBundleIdentifier:(id)a4 systemItem:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = MEMORY[0x1E69635D0];
  v10 = a4;
  v11 = [[v9 alloc] initWithBundleIdentifier:v10 error:0];

  v12 = [v11 URL];
  if (v12)
  {
    v13 = [a1 configurationWithTimeFontConfiguration:v8 extensionBundleURL:v12 systemItem:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (PRPosterTimeFontConfiguration)defaultConfiguration
{
  v2 = objc_alloc_init(PRPosterSystemTimeFontConfiguration);

  return v2;
}

- (PRPosterTimeFontConfiguration)timeFontConfigurationWithExtensionBundle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PRPosterTimeFontConfiguration timeFontConfigurationWithExtensionBundle:];
  }

  v5 = [v4 bundleURL];
  v6 = [(PRPosterTimeFontConfiguration *)self timeFontConfigurationWithExtensionBundleURL:v5];

  return v6;
}

- (PRPosterTimeFontConfiguration)timeFontConfigurationWithExtensionBundleIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PRPosterTimeFontConfiguration timeFontConfigurationWithExtensionBundleIdentifier:];
  }

  v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v4 error:0];
  v6 = [v5 URL];
  if (v6)
  {
    v7 = [(PRPosterTimeFontConfiguration *)self timeFontConfigurationWithExtensionBundleURL:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PRPosterTimeFontConfiguration)init
{
  v3 = objc_opt_self();
  v4 = [(PRPosterTimeFontConfiguration *)self isMemberOfClass:v3];

  if (v4)
  {
    v5 = objc_alloc_init(PRPosterSystemTimeFontConfiguration);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PRPosterTimeFontConfiguration;
    v5 = [(PRPosterTimeFontConfiguration *)&v8 init];
    self = &v5->super;
  }

  p_super = &v5->super;

  return p_super;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__PRPosterTimeFontConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

+ (void)configurationWithTimeFontConfiguration:extensionBundleURL:systemItem:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"timeFontConfiguration != nil" object:? file:? lineNumber:? description:?];
}

+ (void)configurationWithTimeFontConfiguration:extensionBundleURL:systemItem:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundleURL != nil" object:? file:? lineNumber:? description:?];
}

- (void)timeFontConfigurationWithExtensionBundle:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundle != nil" object:? file:? lineNumber:? description:?];
}

- (void)timeFontConfigurationWithExtensionBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundleIdentifier != nil" object:? file:? lineNumber:? description:?];
}

@end