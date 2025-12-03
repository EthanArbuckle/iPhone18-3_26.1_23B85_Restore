@interface UIContentSizeCategoryPreference
+ (id)system;
+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)category;
+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)category forBlock:(id)block;
+ (void)_populateUserDefaultsContentSizeCategory:(id *)category carPlay:(id *)play;
+ (void)_resetSystemPreferenceOverride;
+ (void)asyncOverrideSystemWithPreference:(id)preference;
+ (void)asyncResetSystemPreferenceOverride;
+ (void)overrideSystemWithPreference:(id)preference;
+ (void)overrideSystemWithPreference:(id)preference forBlock:(id)block;
+ (void)resetSystemPreferenceOverride;
- (BOOL)isEqual:(id)equal;
- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)category;
- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)category carPlay:(id)play;
- (UIContentSizeCategoryPreference)initWithRawUserDefaults;
- (id)description;
- (unint64_t)hash;
@end

@implementation UIContentSizeCategoryPreference

+ (id)system
{
  v2 = __preferences;
  if (!__preferences)
  {
    initAsSystem = [[_UIContentSizeCategoryPreferenceSystem alloc] initAsSystem];
    v4 = __preferences;
    __preferences = initAsSystem;

    [__preferences _readAndObservePreferences];
    v2 = __preferences;
  }

  return v2;
}

+ (void)overrideSystemWithPreference:(id)preference forBlock:(id)block
{
  preferenceCopy = preference;
  blockCopy = block;
  system = [self system];
  if (preferenceCopy)
  {
    overridePreferences = [__preferences overridePreferences];
    [__preferences setOverridePreferences:preferenceCopy];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    [__preferences setOverridePreferences:overridePreferences];
  }
}

+ (void)overrideSystemWithPreference:(id)preference
{
  preferenceCopy = preference;
  system = [self system];
  v5 = preferenceCopy;
  if (preferenceCopy)
  {
    [__preferences setOverridePreferences:preferenceCopy];
    v5 = preferenceCopy;
  }
}

+ (void)resetSystemPreferenceOverride
{
  system = [self system];
  v3 = __preferences;

  [v3 setOverridePreferences:0];
}

+ (void)asyncOverrideSystemWithPreference:(id)preference
{
  preferenceCopy = preference;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__UIContentSizeCategoryPreference_asyncOverrideSystemWithPreference___block_invoke;
  v6[3] = &unk_1E70F32F0;
  v7 = preferenceCopy;
  selfCopy = self;
  v5 = preferenceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)asyncResetSystemPreferenceOverride
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UIContentSizeCategoryPreference_asyncResetSystemPreferenceOverride__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (void)_resetSystemPreferenceOverride
{
  v2 = __preferences;
  __preferences = 0;
}

+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)category
{
  categoryCopy = category;
  v5 = [[UIContentSizeCategoryPreference alloc] initWithContentSizeCategory:categoryCopy];

  [self overrideSystemWithPreference:v5];
}

+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)category forBlock:(id)block
{
  blockCopy = block;
  categoryCopy = category;
  v8 = [[UIContentSizeCategoryPreference alloc] initWithContentSizeCategory:categoryCopy carPlay:@"_UICTContentSizeCategoryUnspecified"];

  [self overrideSystemWithPreference:v8 forBlock:blockCopy];
}

- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)category
{
  categoryCopy = category;
  v9.receiver = self;
  v9.super_class = UIContentSizeCategoryPreference;
  v5 = [(UIContentSizeCategoryPreference *)&v9 init];
  if (v5)
  {
    v6 = [categoryCopy copy];
    preferredContentSizeCategory = v5->_preferredContentSizeCategory;
    v5->_preferredContentSizeCategory = v6;

    objc_storeStrong(&v5->_preferredContentSizeCategoryCarPlay, @"_UICTContentSizeCategoryUnspecified");
  }

  return v5;
}

- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)category carPlay:(id)play
{
  categoryCopy = category;
  playCopy = play;
  v14.receiver = self;
  v14.super_class = UIContentSizeCategoryPreference;
  v8 = [(UIContentSizeCategoryPreference *)&v14 init];
  if (v8)
  {
    v9 = [categoryCopy copy];
    preferredContentSizeCategory = v8->_preferredContentSizeCategory;
    v8->_preferredContentSizeCategory = v9;

    v11 = [playCopy copy];
    preferredContentSizeCategoryCarPlay = v8->_preferredContentSizeCategoryCarPlay;
    v8->_preferredContentSizeCategoryCarPlay = v11;
  }

  return v8;
}

- (UIContentSizeCategoryPreference)initWithRawUserDefaults
{
  selfCopy = self;
  if (self)
  {
    v4 = 0;
    v5 = 0;
    [objc_opt_class() _populateUserDefaultsContentSizeCategory:&v5 carPlay:&v4];
    selfCopy = [(UIContentSizeCategoryPreference *)selfCopy initWithContentSizeCategory:v5 carPlay:v4];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    preferredContentSizeCategory = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
    preferredContentSizeCategory2 = [equalCopy preferredContentSizeCategory];
    if (preferredContentSizeCategory == preferredContentSizeCategory2 || (-[UIContentSizeCategoryPreference preferredContentSizeCategory](self, "preferredContentSizeCategory"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      preferredContentSizeCategoryCarPlay = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
      preferredContentSizeCategoryCarPlay2 = [equalCopy preferredContentSizeCategoryCarPlay];
      if (preferredContentSizeCategoryCarPlay == preferredContentSizeCategoryCarPlay2)
      {
        v8 = 1;
      }

      else
      {
        preferredContentSizeCategoryCarPlay3 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
        preferredContentSizeCategoryCarPlay4 = [equalCopy preferredContentSizeCategoryCarPlay];
        v8 = [preferredContentSizeCategoryCarPlay3 isEqualToString:preferredContentSizeCategoryCarPlay4];
      }

      if (preferredContentSizeCategory == preferredContentSizeCategory2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AEC0];
  preferredContentSizeCategory = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  preferredContentSizeCategoryCarPlay = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v6 = [v3 stringWithFormat:@"%@%@", preferredContentSizeCategory, preferredContentSizeCategoryCarPlay];
  v7 = [v6 hash];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  preferredContentSizeCategory = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  preferredContentSizeCategoryCarPlay = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v7 = [v3 stringWithFormat:@"<%@:%p %@ carplay=%@>", v4, self, preferredContentSizeCategory, preferredContentSizeCategoryCarPlay];

  return v7;
}

+ (void)_populateUserDefaultsContentSizeCategory:(id *)category carPlay:(id *)play
{
  v13 = _UIKitUserDefaults();
  [v13 synchronize];
  if (category)
  {
    v7 = v6 = _AXSCopyPreferredContentSizeCategoryName();
    v8 = *category;
    *category = v7;
  }

  v9 = v13;
  if (play)
  {
    v10 = [v13 objectForKey:@"UICarPlayPreferredContentSizeCategoryName"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"UICTContentSizeCategoryL";
    }

    objc_storeStrong(play, v12);

    v9 = v13;
  }
}

@end