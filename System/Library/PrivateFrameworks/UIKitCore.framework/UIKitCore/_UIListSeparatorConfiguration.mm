@interface _UIListSeparatorConfiguration
+ (id)_configurationForAppearanceStyle:(int64_t)style inLayoutEnvironment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)_insets;
- (NSDirectionalEdgeInsets)_insetsForBoundarySeparators;
- (UIColor)_color;
- (UIColor)_multipleSelectionColor;
- (_UIListSeparatorConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setColor:(id)color;
- (void)_setInsets:(NSDirectionalEdgeInsets)insets;
- (void)_setMultipleSelectionColor:(id)color;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIListSeparatorConfiguration

- (NSDirectionalEdgeInsets)_insetsForBoundarySeparators
{
  top = self->_insetsForBoundarySeparators.top;
  leading = self->_insetsForBoundarySeparators.leading;
  bottom = self->_insetsForBoundarySeparators.bottom;
  trailing = self->_insetsForBoundarySeparators.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

+ (id)_configurationForAppearanceStyle:(int64_t)style inLayoutEnvironment:(id)environment
{
  v5 = [self alloc];
  if ((style - 1) >= 4)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  v7 = [v5 initWithListAppearance:styleCopy];

  return v7;
}

- (void)_setInsets:(NSDirectionalEdgeInsets)insets
{
  v3.receiver = self;
  v3.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v3 setBottomSeparatorInsets:insets.top, insets.leading, insets.bottom, insets.trailing];
}

- (NSDirectionalEdgeInsets)_insets
{
  v6.receiver = self;
  v6.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v6 bottomSeparatorInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)_setColor:(id)color
{
  v3.receiver = self;
  v3.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v3 setColor:color];
}

- (UIColor)_color
{
  v4.receiver = self;
  v4.super_class = _UIListSeparatorConfiguration;
  color = [(UIListSeparatorConfiguration *)&v4 color];

  return color;
}

- (void)_setMultipleSelectionColor:(id)color
{
  v3.receiver = self;
  v3.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v3 setMultipleSelectionColor:color];
}

- (UIColor)_multipleSelectionColor
{
  v4.receiver = self;
  v4.super_class = _UIListSeparatorConfiguration;
  multipleSelectionColor = [(UIListSeparatorConfiguration *)&v4 multipleSelectionColor];

  return multipleSelectionColor;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIListSeparatorConfiguration;
  result = [(UIListSeparatorConfiguration *)&v6 copyWithZone:zone];
  if (result)
  {
    *(result + 16) = self->_hidingBehavior;
    *(result + 17) = self->_insetAdjustmentBehavior;
    v5 = *&self->_insetsForBoundarySeparators.bottom;
    *(result + 9) = *&self->_insetsForBoundarySeparators.top;
    *(result + 10) = v5;
  }

  return result;
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

  v8.receiver = self;
  v8.super_class = _UIListSeparatorConfiguration;
  if (![(UIListSeparatorConfiguration *)&v8 isEqual:equal])
  {
    return 0;
  }

  equalCopy = equal;
  v6 = self->_hidingBehavior == *(equalCopy + 16) && self->_insetAdjustmentBehavior == *(equalCopy + 17) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insetsForBoundarySeparators.top, *(equalCopy + 9)), vceqq_f64(*&self->_insetsForBoundarySeparators.bottom, *(equalCopy + 10))))) & 1) != 0;

  return v6;
}

- (_UIListSeparatorConfiguration)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = _UIListSeparatorConfiguration;
  v4 = [(UIListSeparatorConfiguration *)&v10 initWithCoder:?];
  if (v4)
  {
    v4->_hidingBehavior = [coder decodeIntegerForKey:@"hidingBehavior"];
    v4->_insetAdjustmentBehavior = [coder decodeIntegerForKey:@"insetAdjustmentBehavior"];
    [coder decodeDirectionalEdgeInsetsForKey:@"insetsForBoundarySeparators"];
    v4->_insetsForBoundarySeparators.top = v5;
    v4->_insetsForBoundarySeparators.leading = v6;
    v4->_insetsForBoundarySeparators.bottom = v7;
    v4->_insetsForBoundarySeparators.trailing = v8;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_hidingBehavior forKey:@"hidingBehavior"];
  [coder encodeInteger:self->_insetAdjustmentBehavior forKey:@"insetAdjustmentBehavior"];
  [coder encodeDirectionalEdgeInsets:@"insetsForBoundarySeparators" forKey:{self->_insetsForBoundarySeparators.top, self->_insetsForBoundarySeparators.leading, self->_insetsForBoundarySeparators.bottom, self->_insetsForBoundarySeparators.trailing}];
}

@end