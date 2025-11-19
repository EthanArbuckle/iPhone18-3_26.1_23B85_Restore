@interface SASPreferencesManager
+ (SASPreferencesManager)shared;
- (BOOL)_canAccessKey:(unint64_t)a3;
- (__CFString)_userForKey:(unint64_t)a3;
- (id)_nameForKey:(unint64_t)a3;
- (id)readValueForKey:(unint64_t)a3;
- (void)removeValueForKey:(unint64_t)a3;
- (void)setValue:(id)a3 forKey:(unint64_t)a4;
@end

@implementation SASPreferencesManager

+ (SASPreferencesManager)shared
{
  if (shared_onceToken != -1)
  {
    +[SASPreferencesManager shared];
  }

  v3 = shared_instance;

  return v3;
}

void __31__SASPreferencesManager_shared__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 UTF8String];
  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    shared_instance = objc_alloc_init(SASPreferencesManager);

    MEMORY[0x2821F96F8]();
  }
}

- (id)readValueForKey:(unint64_t)a3
{
  if ([(SASPreferencesManager *)self _canAccessKey:?])
  {
    v5 = [(SASPreferencesManager *)self _nameForKey:a3];
    v6 = [(SASPreferencesManager *)self _domainForKey:a3];
    v7 = [(SASPreferencesManager *)self _userForKey:a3];
    v8 = CFPreferencesCopyValue(v5, v6, v7, *MEMORY[0x277CBF030]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeValueForKey:(unint64_t)a3
{
  if ([(SASPreferencesManager *)self _canAccessKey:?])
  {
    key = [(SASPreferencesManager *)self _nameForKey:a3];
    v5 = [(SASPreferencesManager *)self _domainForKey:a3];
    v6 = [(SASPreferencesManager *)self _userForKey:a3];
    CFPreferencesSetValue(key, 0, v5, v6, *MEMORY[0x277CBF030]);
  }
}

- (void)setValue:(id)a3 forKey:(unint64_t)a4
{
  value = a3;
  if ([(SASPreferencesManager *)self _canAccessKey:a4])
  {
    if (value)
    {
      v6 = [(SASPreferencesManager *)self _nameForKey:a4];
      v7 = [(SASPreferencesManager *)self _domainForKey:a4];
      v8 = [(SASPreferencesManager *)self _userForKey:a4];
      CFPreferencesSetValue(v6, value, v7, v8, *MEMORY[0x277CBF030]);
    }

    else
    {
      [(SASPreferencesManager *)self removeValueForKey:a4];
    }
  }
}

- (id)_nameForKey:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"animateWithLogoOverride";
  }

  else
  {
    return off_279BB2C50[a3 - 1];
  }
}

- (__CFString)_userForKey:(unint64_t)a3
{
  if (a3 - 2 >= 4)
  {
    return @"root";
  }

  else
  {
    return @"mobile";
  }
}

- (BOOL)_canAccessKey:(unint64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  [v4 UTF8String];
  has_internal_ui = os_variant_has_internal_ui();

  return has_internal_ui;
}

@end