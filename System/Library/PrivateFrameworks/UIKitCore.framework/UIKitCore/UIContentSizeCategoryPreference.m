@interface UIContentSizeCategoryPreference
+ (id)system;
+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)a3;
+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)a3 forBlock:(id)a4;
+ (void)_populateUserDefaultsContentSizeCategory:(id *)a3 carPlay:(id *)a4;
+ (void)_resetSystemPreferenceOverride;
+ (void)asyncOverrideSystemWithPreference:(id)a3;
+ (void)asyncResetSystemPreferenceOverride;
+ (void)overrideSystemWithPreference:(id)a3;
+ (void)overrideSystemWithPreference:(id)a3 forBlock:(id)a4;
+ (void)resetSystemPreferenceOverride;
- (BOOL)isEqual:(id)a3;
- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)a3;
- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)a3 carPlay:(id)a4;
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
    v3 = [[_UIContentSizeCategoryPreferenceSystem alloc] initAsSystem];
    v4 = __preferences;
    __preferences = v3;

    [__preferences _readAndObservePreferences];
    v2 = __preferences;
  }

  return v2;
}

+ (void)overrideSystemWithPreference:(id)a3 forBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 system];
  if (v9)
  {
    v8 = [__preferences overridePreferences];
    [__preferences setOverridePreferences:v9];
    if (v6)
    {
      v6[2](v6);
    }

    [__preferences setOverridePreferences:v8];
  }
}

+ (void)overrideSystemWithPreference:(id)a3
{
  v6 = a3;
  v4 = [a1 system];
  v5 = v6;
  if (v6)
  {
    [__preferences setOverridePreferences:v6];
    v5 = v6;
  }
}

+ (void)resetSystemPreferenceOverride
{
  v2 = [a1 system];
  v3 = __preferences;

  [v3 setOverridePreferences:0];
}

+ (void)asyncOverrideSystemWithPreference:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__UIContentSizeCategoryPreference_asyncOverrideSystemWithPreference___block_invoke;
  v6[3] = &unk_1E70F32F0;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)asyncResetSystemPreferenceOverride
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UIContentSizeCategoryPreference_asyncResetSystemPreferenceOverride__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (void)_resetSystemPreferenceOverride
{
  v2 = __preferences;
  __preferences = 0;
}

+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [[UIContentSizeCategoryPreference alloc] initWithContentSizeCategory:v4];

  [a1 overrideSystemWithPreference:v5];
}

+ (void)_overrideSystemPreferenceToContentSizeCategory:(id)a3 forBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UIContentSizeCategoryPreference alloc] initWithContentSizeCategory:v7 carPlay:@"_UICTContentSizeCategoryUnspecified"];

  [a1 overrideSystemWithPreference:v8 forBlock:v6];
}

- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIContentSizeCategoryPreference;
  v5 = [(UIContentSizeCategoryPreference *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    preferredContentSizeCategory = v5->_preferredContentSizeCategory;
    v5->_preferredContentSizeCategory = v6;

    objc_storeStrong(&v5->_preferredContentSizeCategoryCarPlay, @"_UICTContentSizeCategoryUnspecified");
  }

  return v5;
}

- (UIContentSizeCategoryPreference)initWithContentSizeCategory:(id)a3 carPlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UIContentSizeCategoryPreference;
  v8 = [(UIContentSizeCategoryPreference *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    preferredContentSizeCategory = v8->_preferredContentSizeCategory;
    v8->_preferredContentSizeCategory = v9;

    v11 = [v7 copy];
    preferredContentSizeCategoryCarPlay = v8->_preferredContentSizeCategoryCarPlay;
    v8->_preferredContentSizeCategoryCarPlay = v11;
  }

  return v8;
}

- (UIContentSizeCategoryPreference)initWithRawUserDefaults
{
  v2 = self;
  if (self)
  {
    v4 = 0;
    v5 = 0;
    [objc_opt_class() _populateUserDefaultsContentSizeCategory:&v5 carPlay:&v4];
    v2 = [(UIContentSizeCategoryPreference *)v2 initWithContentSizeCategory:v5 carPlay:v4];
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v9 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
    v10 = [v6 preferredContentSizeCategory];
    if (v9 == v10 || (-[UIContentSizeCategoryPreference preferredContentSizeCategory](self, "preferredContentSizeCategory"), v3 = objc_claimAutoreleasedReturnValue(), [v6 preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      v11 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
      v12 = [v6 preferredContentSizeCategoryCarPlay];
      if (v11 == v12)
      {
        v8 = 1;
      }

      else
      {
        v13 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
        v14 = [v6 preferredContentSizeCategoryCarPlay];
        v8 = [v13 isEqualToString:v14];
      }

      if (v9 == v10)
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
  v4 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  v5 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v6 = [v3 stringWithFormat:@"%@%@", v4, v5];
  v7 = [v6 hash];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategory];
  v6 = [(UIContentSizeCategoryPreference *)self preferredContentSizeCategoryCarPlay];
  v7 = [v3 stringWithFormat:@"<%@:%p %@ carplay=%@>", v4, self, v5, v6];

  return v7;
}

+ (void)_populateUserDefaultsContentSizeCategory:(id *)a3 carPlay:(id *)a4
{
  v13 = _UIKitUserDefaults();
  [v13 synchronize];
  if (a3)
  {
    v7 = v6 = _AXSCopyPreferredContentSizeCategoryName();
    v8 = *a3;
    *a3 = v7;
  }

  v9 = v13;
  if (a4)
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

    objc_storeStrong(a4, v12);

    v9 = v13;
  }
}

@end