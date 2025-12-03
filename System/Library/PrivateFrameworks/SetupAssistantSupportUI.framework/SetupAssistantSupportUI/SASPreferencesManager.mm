@interface SASPreferencesManager
+ (SASPreferencesManager)shared;
- (BOOL)_canAccessKey:(unint64_t)key;
- (__CFString)_userForKey:(unint64_t)key;
- (id)_nameForKey:(unint64_t)key;
- (id)readValueForKey:(unint64_t)key;
- (void)removeValueForKey:(unint64_t)key;
- (void)setValue:(id)value forKey:(unint64_t)key;
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

- (id)readValueForKey:(unint64_t)key
{
  if ([(SASPreferencesManager *)self _canAccessKey:?])
  {
    v5 = [(SASPreferencesManager *)self _nameForKey:key];
    v6 = [(SASPreferencesManager *)self _domainForKey:key];
    v7 = [(SASPreferencesManager *)self _userForKey:key];
    v8 = CFPreferencesCopyValue(v5, v6, v7, *MEMORY[0x277CBF030]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeValueForKey:(unint64_t)key
{
  if ([(SASPreferencesManager *)self _canAccessKey:?])
  {
    key = [(SASPreferencesManager *)self _nameForKey:key];
    v5 = [(SASPreferencesManager *)self _domainForKey:key];
    v6 = [(SASPreferencesManager *)self _userForKey:key];
    CFPreferencesSetValue(key, 0, v5, v6, *MEMORY[0x277CBF030]);
  }
}

- (void)setValue:(id)value forKey:(unint64_t)key
{
  value = value;
  if ([(SASPreferencesManager *)self _canAccessKey:key])
  {
    if (value)
    {
      v6 = [(SASPreferencesManager *)self _nameForKey:key];
      v7 = [(SASPreferencesManager *)self _domainForKey:key];
      v8 = [(SASPreferencesManager *)self _userForKey:key];
      CFPreferencesSetValue(v6, value, v7, v8, *MEMORY[0x277CBF030]);
    }

    else
    {
      [(SASPreferencesManager *)self removeValueForKey:key];
    }
  }
}

- (id)_nameForKey:(unint64_t)key
{
  if (key - 1 > 4)
  {
    return @"animateWithLogoOverride";
  }

  else
  {
    return off_279BB2C50[key - 1];
  }
}

- (__CFString)_userForKey:(unint64_t)key
{
  if (key - 2 >= 4)
  {
    return @"root";
  }

  else
  {
    return @"mobile";
  }
}

- (BOOL)_canAccessKey:(unint64_t)key
{
  if (key > 5)
  {
    return 0;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [bundleIdentifier UTF8String];
  has_internal_ui = os_variant_has_internal_ui();

  return has_internal_ui;
}

@end