@interface _UINavigationBarTitleFontProvider
+ (id)providerForIdiom:(int64_t)a3;
+ (void)registerProviderClass:(Class)a3 forIdiom:(int64_t)a4;
- (id)defaultInlineTitleFont;
- (id)defaultTitleFont;
@end

@implementation _UINavigationBarTitleFontProvider

- (id)defaultInlineTitleFont
{
  if (_UISMCBarsEnabled())
  {
    v2 = off_1E70ECC18;
    v3 = @"UICTFontTextStyleHeadline";
LABEL_4:
    v5 = [v2 preferredFontForTextStyle:v3];
    goto LABEL_6;
  }

  v4 = _UIBarsUseDynamicType();
  v2 = off_1E70ECC18;
  v3 = @"UICTFontTextStyleShortEmphasizedBody";
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [off_1E70ECC18 defaultFontForTextStyle:@"UICTFontTextStyleShortEmphasizedBody"];
LABEL_6:

  return v5;
}

- (id)defaultTitleFont
{
  [off_1E70ECC18 defaultFontSize];

  return [off_1E70ECC18 boldSystemFontOfSize:?];
}

+ (void)registerProviderClass:(Class)a3 forIdiom:(int64_t)a4
{
  v6 = _register;
  if (!_register)
  {
    v7 = objc_opt_new();
    v8 = _register;
    _register = v7;

    v6 = _register;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v6 setObject:a3 forKeyedSubscript:v9];
}

+ (id)providerForIdiom:(int64_t)a3
{
  v4 = _register;
  if (!_register)
  {
    v5 = objc_opt_new();
    v6 = _register;
    _register = v5;

    v4 = _register;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v4 objectForKeyedSubscript:v7];

  v9 = objc_opt_new();
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  return v12;
}

@end