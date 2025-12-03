@interface PRPosterHomePosterHomeScreenAppearance
- (BOOL)isEqual:(id)equal;
- (PRPosterHomePosterHomeScreenAppearance)initWithBSXPCCoder:(id)coder;
- (PRPosterHomePosterHomeScreenAppearance)initWithCoder:(id)coder;
- (PRPosterHomePosterHomeScreenAppearance)initWithLegibilityBlurEnabled:(BOOL)enabled allowsModifyingLegibilityBlur:(BOOL)blur;
- (id)copyByTogglingLegibilityBlurEnabled;
- (id)copyWithLegibilityBlurEnabled:(BOOL)enabled;
- (id)description;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterHomePosterHomeScreenAppearance

- (PRPosterHomePosterHomeScreenAppearance)initWithLegibilityBlurEnabled:(BOOL)enabled allowsModifyingLegibilityBlur:(BOOL)blur
{
  v7.receiver = self;
  v7.super_class = PRPosterHomePosterHomeScreenAppearance;
  result = [(PRPosterHomePosterHomeScreenAppearance *)&v7 init];
  if (result)
  {
    result->_legibilityBlurEnabled = enabled;
    result->_allowsModifyingLegibilityBlur = blur;
  }

  return result;
}

- (id)copyWithLegibilityBlurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = objc_alloc(objc_opt_class());
  allowsModifyingLegibilityBlur = [(PRPosterHomePosterHomeScreenAppearance *)self allowsModifyingLegibilityBlur];

  return [v5 initWithLegibilityBlurEnabled:enabledCopy allowsModifyingLegibilityBlur:allowsModifyingLegibilityBlur];
}

- (id)copyByTogglingLegibilityBlurEnabled
{
  v3 = [(PRPosterHomePosterHomeScreenAppearance *)self isLegibilityBlurEnabled]^ 1;

  return [(PRPosterHomePosterHomeScreenAppearance *)self copyWithLegibilityBlurEnabled:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  v9 = __53__PRPosterHomePosterHomeScreenAppearance_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[PRPosterHomePosterHomeScreenAppearance isLegibilityBlurEnabled](self forKey:{"isLegibilityBlurEnabled"), @"legibilityBlurEnabled"}];
  [coderCopy encodeBool:-[PRPosterHomePosterHomeScreenAppearance allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
}

- (PRPosterHomePosterHomeScreenAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"legibilityBlurEnabled"];
  if ([coderCopy containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v6 = [coderCopy decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PRPosterHomePosterHomeScreenAppearance *)self initWithLegibilityBlurEnabled:v5 allowsModifyingLegibilityBlur:v6];

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[PRPosterHomePosterHomeScreenAppearance isLegibilityBlurEnabled](self forKey:{"isLegibilityBlurEnabled"), @"legibilityBlurEnabled"}];
  [coderCopy encodeBool:-[PRPosterHomePosterHomeScreenAppearance allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
}

- (PRPosterHomePosterHomeScreenAppearance)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"legibilityBlurEnabled"];
  if ([coderCopy containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v6 = [coderCopy decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PRPosterHomePosterHomeScreenAppearance *)self initWithLegibilityBlurEnabled:v5 allowsModifyingLegibilityBlur:v6];

  return v7;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendBool:-[PRPosterHomePosterHomeScreenAppearance isLegibilityBlurEnabled](self withName:{"isLegibilityBlurEnabled"), @"legibilityBlurEnabled"}];
  v5 = [formatterCopy appendBool:-[PRPosterHomePosterHomeScreenAppearance allowsModifyingLegibilityBlur](self withName:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
}

@end