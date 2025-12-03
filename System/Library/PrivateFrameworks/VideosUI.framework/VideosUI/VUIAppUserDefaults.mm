@interface VUIAppUserDefaults
+ (id)sharedUserDefaults;
- (id)dataForKey:(id)key;
- (void)removeDataForKey:(id)key;
- (void)setData:(id)data forKey:(id)key;
@end

@implementation VUIAppUserDefaults

+ (id)sharedUserDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VUIAppUserDefaults_sharedUserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedUserDefaults_onceToken != -1)
  {
    dispatch_once(&sharedUserDefaults_onceToken, block);
  }

  v2 = sharedUserDefaults_userDefaults;

  return v2;
}

void __40__VUIAppUserDefaults_sharedUserDefaults__block_invoke()
{
  objc_opt_class();
  v0 = objc_opt_new();
  v1 = sharedUserDefaults_userDefaults;
  sharedUserDefaults_userDefaults = v0;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  if ([(VUIAppUserDefaults *)self _isWLKDomain:keyCopy])
  {
    [MEMORY[0x1E695E000] wlk_userDefaults];
  }

  else
  {
    [MEMORY[0x1E695E000] standardUserDefaults];
  }
  v5 = ;
  v6 = [v5 objectForKey:keyCopy];

  return v6;
}

- (void)setData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  if ([(VUIAppUserDefaults *)self _isWLKDomain:keyCopy])
  {
    wlk_userDefaults = [MEMORY[0x1E695E000] wlk_userDefaults];
    [wlk_userDefaults setObject:dataCopy forKey:keyCopy];

    [MEMORY[0x1E695E000] wlk_userDefaults];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:dataCopy forKey:keyCopy];

    [MEMORY[0x1E695E000] standardUserDefaults];
  }
  v10 = ;
  [v10 synchronize];
}

- (void)removeDataForKey:(id)key
{
  keyCopy = key;
  if ([(VUIAppUserDefaults *)self _isWLKDomain:keyCopy])
  {
    wlk_userDefaults = [MEMORY[0x1E695E000] wlk_userDefaults];
    [wlk_userDefaults removeObjectForKey:keyCopy];

    [MEMORY[0x1E695E000] wlk_userDefaults];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:keyCopy];

    [MEMORY[0x1E695E000] standardUserDefaults];
  }
  v7 = ;
  [v7 synchronize];
}

@end