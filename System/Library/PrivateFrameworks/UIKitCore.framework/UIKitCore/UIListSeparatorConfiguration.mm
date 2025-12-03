@interface UIListSeparatorConfiguration
+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceGrouped;
+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceInsetGrouped;
+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearancePlain;
+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebar;
+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebarPlain;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)bottomSeparatorInsets;
- (NSDirectionalEdgeInsets)topSeparatorInsets;
- (UIListSeparatorConfiguration)initWithCoder:(id)coder;
- (UIListSeparatorConfiguration)initWithListAppearance:(UICollectionLayoutListAppearance)listAppearance;
- (id)__copyWithSubclass:(Class)subclass inZone:(_NSZone *)zone;
- (id)_multiselectSeparatorColorForListAppearance:(int64_t)appearance;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_replaceAutomaticValuesWithValuesFromConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIListSeparatorConfiguration

+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceInsetGrouped
{
  if (qword_1ED49F308 != -1)
  {
    dispatch_once(&qword_1ED49F308, &__block_literal_global_6_9);
  }

  v3 = qword_1ED49F300;

  return v3;
}

void __110__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceInsetGrouped__block_invoke()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __110__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceInsetGrouped__block_invoke_2;
  v2[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v2[4] = 2;
  v0 = [UIColor colorWithDynamicProvider:v2];
  v1 = qword_1ED49F300;
  qword_1ED49F300 = v0;
}

+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebarPlain
{
  if (qword_1ED49F328 != -1)
  {
    dispatch_once(&qword_1ED49F328, &__block_literal_global_10_8);
  }

  v3 = qword_1ED49F320;

  return v3;
}

void __110__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebarPlain__block_invoke()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __110__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebarPlain__block_invoke_2;
  v2[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v2[4] = 4;
  v0 = [UIColor colorWithDynamicProvider:v2];
  v1 = qword_1ED49F320;
  qword_1ED49F320 = v0;
}

+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearancePlain
{
  if (qword_1ED49F2E8 != -1)
  {
    dispatch_once(&qword_1ED49F2E8, &__block_literal_global_371);
  }

  v3 = _MergedGlobals_1184;

  return v3;
}

void __103__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearancePlain__block_invoke()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __103__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearancePlain__block_invoke_2;
  v2[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v2[4] = 0;
  v0 = [UIColor colorWithDynamicProvider:v2];
  v1 = _MergedGlobals_1184;
  _MergedGlobals_1184 = v0;
}

- (NSDirectionalEdgeInsets)bottomSeparatorInsets
{
  top = self->_bottomSeparatorInsets.top;
  leading = self->_bottomSeparatorInsets.leading;
  bottom = self->_bottomSeparatorInsets.bottom;
  trailing = self->_bottomSeparatorInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)topSeparatorInsets
{
  top = self->_topSeparatorInsets.top;
  leading = self->_topSeparatorInsets.leading;
  bottom = self->_topSeparatorInsets.bottom;
  trailing = self->_topSeparatorInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebar
{
  if (qword_1ED49F318 != -1)
  {
    dispatch_once(&qword_1ED49F318, &__block_literal_global_8_10);
  }

  v3 = qword_1ED49F310;

  return v3;
}

void __105__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebar__block_invoke()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __105__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebar__block_invoke_2;
  v2[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v2[4] = 3;
  v0 = [UIColor colorWithDynamicProvider:v2];
  v1 = qword_1ED49F310;
  qword_1ED49F310 = v0;
}

+ (id)_dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceGrouped
{
  if (qword_1ED49F2F8 != -1)
  {
    dispatch_once(&qword_1ED49F2F8, &__block_literal_global_4_8);
  }

  v3 = qword_1ED49F2F0;

  return v3;
}

void __105__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceGrouped__block_invoke()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __105__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceGrouped__block_invoke_2;
  v2[3] = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
  v2[4] = 1;
  v0 = [UIColor colorWithDynamicProvider:v2];
  v1 = qword_1ED49F2F0;
  qword_1ED49F2F0 = v0;
}

id __103__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearancePlain__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [_UIListMetrics sharedMetrics:0];
  v5 = v4;
  if (v4)
  {
    [v4 metricsForSeparatorWithListStyle:*(a1 + 32) traitCollection:a2];
  }

  v6 = 0;

  return v6;
}

id __105__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceGrouped__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [_UIListMetrics sharedMetrics:0];
  v5 = v4;
  if (v4)
  {
    [v4 metricsForSeparatorWithListStyle:*(a1 + 32) traitCollection:a2];
  }

  v6 = 0;

  return v6;
}

id __110__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceInsetGrouped__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [_UIListMetrics sharedMetrics:0];
  v5 = v4;
  if (v4)
  {
    [v4 metricsForSeparatorWithListStyle:*(a1 + 32) traitCollection:a2];
  }

  v6 = 0;

  return v6;
}

id __105__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebar__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [_UIListMetrics sharedMetrics:0];
  v5 = v4;
  if (v4)
  {
    [v4 metricsForSeparatorWithListStyle:*(a1 + 32) traitCollection:a2];
  }

  v6 = 0;

  return v6;
}

id __110__UIListSeparatorConfiguration__dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebarPlain__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [_UIListMetrics sharedMetrics:0];
  v5 = v4;
  if (v4)
  {
    [v4 metricsForSeparatorWithListStyle:*(a1 + 32) traitCollection:a2];
  }

  v6 = 0;

  return v6;
}

- (id)_multiselectSeparatorColorForListAppearance:(int64_t)appearance
{
  if (appearance <= 1)
  {
    if (!appearance)
    {
      v6 = +[UIListSeparatorConfiguration _dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearancePlain];
      goto LABEL_13;
    }

    if (appearance == 1)
    {
      v6 = +[UIListSeparatorConfiguration _dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceGrouped];
      goto LABEL_13;
    }
  }

  else
  {
    switch(appearance)
    {
      case 2:
        v6 = +[UIListSeparatorConfiguration _dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceInsetGrouped];
        goto LABEL_13;
      case 3:
        v6 = +[UIListSeparatorConfiguration _dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebar];
        goto LABEL_13;
      case 4:
        v6 = +[UIListSeparatorConfiguration _dynamicMultiselectSeparatorColor_UICollectionLayoutListAppearanceSidebarPlain];
        goto LABEL_13;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIListSeparatorConfiguration.m" lineNumber:63 description:{@"UICollectionView internal inconsistency: unknown list appearance style (%ld)", appearance}];

LABEL_13:

  return v6;
}

- (UIListSeparatorConfiguration)initWithListAppearance:(UICollectionLayoutListAppearance)listAppearance
{
  v15.receiver = self;
  v15.super_class = UIListSeparatorConfiguration;
  v4 = [(UIListSeparatorConfiguration *)&v15 init];
  if (v4)
  {
    *obj = 0u;
    v5 = +[_UIListMetrics sharedMetrics];
    v6 = +[UITraitCollection _fallbackTraitCollection];
    if (v5)
    {
      if ((listAppearance - 1) >= 4)
      {
        v7 = UICollectionLayoutListAppearancePlain;
      }

      else
      {
        v7 = listAppearance;
      }

      [v5 metricsForSeparatorWithListStyle:v7 traitCollection:v6];
    }

    else
    {
      *obj = 0u;
    }

    v4->_topSeparatorVisibility = 0;
    v4->_bottomSeparatorVisibility = 0;
    v4->_bottomSeparatorInsets = UIListSeparatorAutomaticInsets;
    v4->_topSeparatorInsets = UIListSeparatorAutomaticInsets;
    objc_storeStrong(&v4->_color, obj[1]);
    v8 = [(UIListSeparatorConfiguration *)v4 _multiselectSeparatorColorForListAppearance:listAppearance];
    multipleSelectionColor = v4->_multipleSelectionColor;
    v4->_multipleSelectionColor = v8;

    if (obj[0] != 0x8000000000000000)
    {
      v10 = [UIBlurEffect effectWithStyle:?];
      v11 = [UIVibrancyEffect effectForBlurEffect:v10 style:7];
      visualEffect = v4->_visualEffect;
      v4->_visualEffect = v11;
    }
  }

  return v4;
}

- (void)_replaceAutomaticValuesWithValuesFromConfiguration:(id)configuration
{
  if (!self->_topSeparatorVisibility)
  {
    self->_topSeparatorVisibility = [configuration topSeparatorVisibility];
  }

  if (!self->_bottomSeparatorVisibility)
  {
    self->_bottomSeparatorVisibility = [configuration bottomSeparatorVisibility];
  }

  [configuration topSeparatorInsets];
  leading = self->_topSeparatorInsets.leading;
  if (leading == 1.79769313e308)
  {
    leading = v5;
  }

  if (self->_topSeparatorInsets.trailing == 1.79769313e308)
  {
    trailing = v6;
  }

  else
  {
    trailing = self->_topSeparatorInsets.trailing;
  }

  self->_topSeparatorInsets.leading = leading;
  self->_topSeparatorInsets.trailing = trailing;
  [configuration bottomSeparatorInsets];
  v11 = self->_bottomSeparatorInsets.leading;
  if (v11 == 1.79769313e308)
  {
    v11 = v9;
  }

  if (self->_bottomSeparatorInsets.trailing == 1.79769313e308)
  {
    v12 = v10;
  }

  else
  {
    v12 = self->_bottomSeparatorInsets.trailing;
  }

  self->_bottomSeparatorInsets.leading = v11;
  self->_bottomSeparatorInsets.trailing = v12;
}

- (unint64_t)hash
{
  v3 = self->_bottomSeparatorVisibility ^ self->_topSeparatorVisibility;
  v4 = v3 ^ [(UIColor *)self->_color hash];
  return v4 ^ [(UIColor *)self->_multipleSelectionColor hash]^ (self->_bottomSeparatorInsets.trailing + self->_bottomSeparatorInsets.leading);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  equalCopy = equal;
  v6 = equalCopy;
  v7 = self->_topSeparatorVisibility == *(equalCopy + 2) && self->_bottomSeparatorVisibility == *(equalCopy + 3) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_bottomSeparatorInsets.top, *(equalCopy + 88)), vceqq_f64(*&self->_bottomSeparatorInsets.bottom, *(equalCopy + 104))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_topSeparatorInsets.top, *(equalCopy + 56)), vceqq_f64(*&self->_topSeparatorInsets.bottom, *(equalCopy + 72))))) & 1) != 0 && [(UIColor *)self->_color isEqual:*(equalCopy + 4)]&& [(UIColor *)self->_multipleSelectionColor isEqual:*(v6 + 5)]&& _deferringTokenEqualToToken(self->_visualEffect, *(v6 + 6)) && self->_ignoreTopSeparatorInsetsFromCell == v6[8] && self->_ignoreBottomSeparatorInsetsFromCell == v6[9];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  topSeparatorVisibility = self->_topSeparatorVisibility;
  if (topSeparatorVisibility > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E7115A60[topSeparatorVisibility];
  }

  bottomSeparatorVisibility = self->_bottomSeparatorVisibility;
  if (bottomSeparatorVisibility > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7115A60[bottomSeparatorVisibility];
  }

  leading = self->_bottomSeparatorInsets.leading;
  trailing = self->_bottomSeparatorInsets.trailing;
  v11 = MEMORY[0x1E696AEC0];
  if (leading == 1.79769313e308)
  {
    v12 = @"auto";
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bottomSeparatorInsets.leading];
  }

  if (trailing == 1.79769313e308)
  {
    v14 = [v11 stringWithFormat:@"{l: %@, t: %@}", v12, @"auto"];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:trailing];
    v14 = [v11 stringWithFormat:@"{l: %@, t: %@}", v12, v13];
  }

  if (leading != 1.79769313e308)
  {
  }

  v15 = [v3 stringWithFormat:@"<%@ %p visibility: {top: %@, bottom: %@}, bottom insets: %@>", v4, self, v6, v8, v14];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(UIListSeparatorConfiguration *)self __copyWithSubclass:v5 inZone:zone];
}

- (id)__copyWithSubclass:(Class)subclass inZone:(_NSZone *)zone
{
  v5 = [[(objc_class *)subclass allocWithZone:zone] init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = self->_topSeparatorVisibility;
    *(v5 + 3) = self->_bottomSeparatorVisibility;
    v7 = *&self->_bottomSeparatorInsets.top;
    *(v5 + 104) = *&self->_bottomSeparatorInsets.bottom;
    *(v5 + 88) = v7;
    v8 = *&self->_topSeparatorInsets.top;
    *(v5 + 72) = *&self->_topSeparatorInsets.bottom;
    *(v5 + 56) = v8;
    objc_storeStrong(v5 + 4, self->_color);
    objc_storeStrong(v6 + 5, self->_multipleSelectionColor);
    v9 = [(UIVisualEffect *)self->_visualEffect copy];
    v10 = *(v6 + 6);
    *(v6 + 6) = v9;

    *(v6 + 8) = self->_ignoreTopSeparatorInsetsFromCell;
    *(v6 + 9) = self->_ignoreBottomSeparatorInsetsFromCell;
  }

  return v6;
}

- (UIListSeparatorConfiguration)initWithCoder:(id)coder
{
  v4 = [(UIListSeparatorConfiguration *)self init];
  if (v4)
  {
    v4->_topSeparatorVisibility = [coder decodeIntegerForKey:@"topSepVisibility"];
    v4->_bottomSeparatorVisibility = [coder decodeIntegerForKey:@"bottomSepVisibility"];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v4->_color;
    v4->_color = v5;

    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"multiSelectColor"];
    multipleSelectionColor = v4->_multipleSelectionColor;
    v4->_multipleSelectionColor = v7;

    [coder decodeDirectionalEdgeInsetsForKey:@"topSepInsets"];
    v4->_topSeparatorInsets.top = v9;
    v4->_topSeparatorInsets.leading = v10;
    v4->_topSeparatorInsets.bottom = v11;
    v4->_topSeparatorInsets.trailing = v12;
    [coder decodeDirectionalEdgeInsetsForKey:@"insets"];
    v4->_bottomSeparatorInsets.top = v13;
    v4->_bottomSeparatorInsets.leading = v14;
    v4->_bottomSeparatorInsets.bottom = v15;
    v4->_bottomSeparatorInsets.trailing = v16;
    v17 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"visualEffect"];
    visualEffect = v4->_visualEffect;
    v4->_visualEffect = v17;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_topSeparatorVisibility forKey:@"topSepVisibility"];
  [coder encodeInteger:self->_bottomSeparatorVisibility forKey:@"bottomSepVisibility"];
  [coder encodeDirectionalEdgeInsets:@"topSepInsets" forKey:{self->_topSeparatorInsets.top, self->_topSeparatorInsets.leading, self->_topSeparatorInsets.bottom, self->_topSeparatorInsets.trailing}];
  [coder encodeDirectionalEdgeInsets:@"insets" forKey:{self->_bottomSeparatorInsets.top, self->_bottomSeparatorInsets.leading, self->_bottomSeparatorInsets.bottom, self->_bottomSeparatorInsets.trailing}];
  [coder encodeObject:self->_color forKey:@"color"];
  [coder encodeObject:self->_multipleSelectionColor forKey:@"multiSelectColor"];
  visualEffect = self->_visualEffect;

  [coder encodeObject:visualEffect forKey:@"visualEffect"];
}

@end