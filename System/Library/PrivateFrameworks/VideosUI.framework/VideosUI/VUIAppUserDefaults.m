@interface VUIAppUserDefaults
+ (id)sharedUserDefaults;
- (id)dataForKey:(id)a3;
- (void)removeDataForKey:(id)a3;
- (void)setData:(id)a3 forKey:(id)a4;
@end

@implementation VUIAppUserDefaults

+ (id)sharedUserDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VUIAppUserDefaults_sharedUserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)dataForKey:(id)a3
{
  v4 = a3;
  if ([(VUIAppUserDefaults *)self _isWLKDomain:v4])
  {
    [MEMORY[0x1E695E000] wlk_userDefaults];
  }

  else
  {
    [MEMORY[0x1E695E000] standardUserDefaults];
  }
  v5 = ;
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(VUIAppUserDefaults *)self _isWLKDomain:v6])
  {
    v8 = [MEMORY[0x1E695E000] wlk_userDefaults];
    [v8 setObject:v7 forKey:v6];

    [MEMORY[0x1E695E000] wlk_userDefaults];
  }

  else
  {
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v9 setObject:v7 forKey:v6];

    [MEMORY[0x1E695E000] standardUserDefaults];
  }
  v10 = ;
  [v10 synchronize];
}

- (void)removeDataForKey:(id)a3
{
  v4 = a3;
  if ([(VUIAppUserDefaults *)self _isWLKDomain:v4])
  {
    v5 = [MEMORY[0x1E695E000] wlk_userDefaults];
    [v5 removeObjectForKey:v4];

    [MEMORY[0x1E695E000] wlk_userDefaults];
  }

  else
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:v4];

    [MEMORY[0x1E695E000] standardUserDefaults];
  }
  v7 = ;
  [v7 synchronize];
}

@end