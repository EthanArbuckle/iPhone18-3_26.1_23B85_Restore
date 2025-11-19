@interface _UIListSeparatorConfiguration
+ (id)_configurationForAppearanceStyle:(int64_t)a3 inLayoutEnvironment:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)_insets;
- (NSDirectionalEdgeInsets)_insetsForBoundarySeparators;
- (UIColor)_color;
- (UIColor)_multipleSelectionColor;
- (_UIListSeparatorConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setColor:(id)a3;
- (void)_setInsets:(NSDirectionalEdgeInsets)a3;
- (void)_setMultipleSelectionColor:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (id)_configurationForAppearanceStyle:(int64_t)a3 inLayoutEnvironment:(id)a4
{
  v5 = [a1 alloc];
  if ((a3 - 1) >= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  v7 = [v5 initWithListAppearance:v6];

  return v7;
}

- (void)_setInsets:(NSDirectionalEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v3 setBottomSeparatorInsets:a3.top, a3.leading, a3.bottom, a3.trailing];
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

- (void)_setColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v3 setColor:a3];
}

- (UIColor)_color
{
  v4.receiver = self;
  v4.super_class = _UIListSeparatorConfiguration;
  v2 = [(UIListSeparatorConfiguration *)&v4 color];

  return v2;
}

- (void)_setMultipleSelectionColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v3 setMultipleSelectionColor:a3];
}

- (UIColor)_multipleSelectionColor
{
  v4.receiver = self;
  v4.super_class = _UIListSeparatorConfiguration;
  v2 = [(UIListSeparatorConfiguration *)&v4 multipleSelectionColor];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIListSeparatorConfiguration;
  result = [(UIListSeparatorConfiguration *)&v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
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
  if (![(UIListSeparatorConfiguration *)&v8 isEqual:a3])
  {
    return 0;
  }

  v5 = a3;
  v6 = self->_hidingBehavior == *(v5 + 16) && self->_insetAdjustmentBehavior == *(v5 + 17) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insetsForBoundarySeparators.top, *(v5 + 9)), vceqq_f64(*&self->_insetsForBoundarySeparators.bottom, *(v5 + 10))))) & 1) != 0;

  return v6;
}

- (_UIListSeparatorConfiguration)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIListSeparatorConfiguration;
  v4 = [(UIListSeparatorConfiguration *)&v10 initWithCoder:?];
  if (v4)
  {
    v4->_hidingBehavior = [a3 decodeIntegerForKey:@"hidingBehavior"];
    v4->_insetAdjustmentBehavior = [a3 decodeIntegerForKey:@"insetAdjustmentBehavior"];
    [a3 decodeDirectionalEdgeInsetsForKey:@"insetsForBoundarySeparators"];
    v4->_insetsForBoundarySeparators.top = v5;
    v4->_insetsForBoundarySeparators.leading = v6;
    v4->_insetsForBoundarySeparators.bottom = v7;
    v4->_insetsForBoundarySeparators.trailing = v8;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIListSeparatorConfiguration;
  [(UIListSeparatorConfiguration *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_hidingBehavior forKey:@"hidingBehavior"];
  [a3 encodeInteger:self->_insetAdjustmentBehavior forKey:@"insetAdjustmentBehavior"];
  [a3 encodeDirectionalEdgeInsets:@"insetsForBoundarySeparators" forKey:{self->_insetsForBoundarySeparators.top, self->_insetsForBoundarySeparators.leading, self->_insetsForBoundarySeparators.bottom, self->_insetsForBoundarySeparators.trailing}];
}

@end