@interface PRPosterLockPosterHomeScreenAppearance
- (BOOL)isEqual:(id)a3;
- (PRPosterLockPosterHomeScreenAppearance)initWithBSXPCCoder:(id)a3;
- (PRPosterLockPosterHomeScreenAppearance)initWithCoder:(id)a3;
- (PRPosterLockPosterHomeScreenAppearance)initWithLegibilityBlurEnabled:(BOOL)a3 allowsModifyingLegibilityBlur:(BOOL)a4;
- (id)copyByTogglingLegibilityBlurEnabled;
- (id)copyWithLegibilityBlurEnabled:(BOOL)a3;
- (id)description;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterLockPosterHomeScreenAppearance

- (PRPosterLockPosterHomeScreenAppearance)initWithLegibilityBlurEnabled:(BOOL)a3 allowsModifyingLegibilityBlur:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PRPosterLockPosterHomeScreenAppearance;
  result = [(PRPosterLockPosterHomeScreenAppearance *)&v7 init];
  if (result)
  {
    result->_legibilityBlurEnabled = a3;
    result->_allowsModifyingLegibilityBlur = a4;
  }

  return result;
}

- (id)copyWithLegibilityBlurEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PRPosterLockPosterHomeScreenAppearance *)self allowsModifyingLegibilityBlur];

  return [v5 initWithLegibilityBlurEnabled:v3 allowsModifyingLegibilityBlur:v6];
}

- (id)copyByTogglingLegibilityBlurEnabled
{
  v3 = [(PRPosterLockPosterHomeScreenAppearance *)self isLegibilityBlurEnabled]^ 1;

  return [(PRPosterLockPosterHomeScreenAppearance *)self copyWithLegibilityBlurEnabled:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && BSEqualBools())
    {
      v7 = BSEqualBools();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = 1;
  if (self->_legibilityBlurEnabled)
  {
    v2 = 2;
  }

  v3 = 10;
  if (self->_allowsModifyingLegibilityBlur)
  {
    v3 = 20;
  }

  return v3 ^ v2;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __53__PRPosterLockPosterHomeScreenAppearance_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[PRPosterLockPosterHomeScreenAppearance isLegibilityBlurEnabled](self forKey:{"isLegibilityBlurEnabled"), @"legibilityBlurEnabled"}];
  [v4 encodeBool:-[PRPosterLockPosterHomeScreenAppearance allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
}

- (PRPosterLockPosterHomeScreenAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"legibilityBlurEnabled"];
  if ([v4 containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v6 = [v4 decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PRPosterLockPosterHomeScreenAppearance *)self initWithLegibilityBlurEnabled:v5 allowsModifyingLegibilityBlur:v6];

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[PRPosterLockPosterHomeScreenAppearance isLegibilityBlurEnabled](self forKey:{"isLegibilityBlurEnabled"), @"legibilityBlurEnabled"}];
  [v4 encodeBool:-[PRPosterLockPosterHomeScreenAppearance allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
}

- (PRPosterLockPosterHomeScreenAppearance)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"legibilityBlurEnabled"];
  if ([v4 containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v6 = [v4 decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PRPosterLockPosterHomeScreenAppearance *)self initWithLegibilityBlurEnabled:v5 allowsModifyingLegibilityBlur:v6];

  return v7;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendBool:-[PRPosterLockPosterHomeScreenAppearance isLegibilityBlurEnabled](self withName:{"isLegibilityBlurEnabled"), @"legibilityBlurEnabled"}];
  v5 = [v6 appendBool:-[PRPosterLockPosterHomeScreenAppearance allowsModifyingLegibilityBlur](self withName:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
}

@end