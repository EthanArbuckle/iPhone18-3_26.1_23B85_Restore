@interface _UIPickerViewStyle
- (CATransform3D)perspectiveTransform;
- (CATransform3D)transformForCellAtY:(SEL)y inBounds:(double)bounds rowHeight:(CGRect)height selectionBarRect:(double)rect;
- (CGSize)defaultSizeForTraitCollection:(id)collection;
- (CGSize)sizeThatFits:(CGSize)fits forTraitCollection:(id)collection;
- (UIEdgeInsets)columnContentEdgeInsets;
- (id)centerCellDigitFontWithTraitCollection:(id)collection;
- (id)centerCellFontWithTraitCollection:(id)collection;
- (id)nonCenterCellDigitFontWithTraitCollection:(id)collection;
- (id)nonCenterCellFontWithTraitCollection:(id)collection;
- (void)_resetFontCacheForLegibilityWeightIfNeeded:(int64_t)needed;
- (void)configureMaskGradientLayer:(id)layer;
@end

@implementation _UIPickerViewStyle

- (CGSize)defaultSizeForTraitCollection:(id)collection
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forTraitCollection:(id)collection
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

- (CATransform3D)perspectiveTransform
{
  v3 = MEMORY[0x1E69792E8];
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m33 = v4;
  v5 = v3[7];
  *&retstr->m41 = v3[6];
  *&retstr->m43 = v5;
  v6 = v3[1];
  *&retstr->m11 = *v3;
  *&retstr->m13 = v6;
  v7 = v3[3];
  *&retstr->m21 = v3[2];
  *&retstr->m23 = v7;
  return self;
}

- (CATransform3D)transformForCellAtY:(SEL)y inBounds:(double)bounds rowHeight:(CGRect)height selectionBarRect:(double)rect
{
  v7 = MEMORY[0x1E69792E8];
  v8 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m33 = v8;
  v9 = v7[7];
  *&retstr->m41 = v7[6];
  *&retstr->m43 = v9;
  v10 = v7[1];
  *&retstr->m11 = *v7;
  *&retstr->m13 = v10;
  v11 = v7[3];
  *&retstr->m21 = v7[2];
  *&retstr->m23 = v11;
  return self;
}

- (void)configureMaskGradientLayer:(id)layer
{
  layerCopy = layer;
  v5 = +[UIColor blackColor];
  v4 = v5;
  [layerCopy setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

- (UIEdgeInsets)columnContentEdgeInsets
{
  v2 = -1.0;
  v3 = -1.0;
  v4 = -1.0;
  v5 = -1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_resetFontCacheForLegibilityWeightIfNeeded:(int64_t)needed
{
  if (_MergedGlobals_1373 != needed)
  {
    v4 = qword_1ED4A2A10;
    _MergedGlobals_1373 = needed;
    qword_1ED4A2A10 = 0;

    v5 = qword_1ED4A2A18;
    qword_1ED4A2A18 = 0;

    v6 = qword_1ED4A2A20;
    qword_1ED4A2A20 = 0;

    v7 = qword_1ED4A2A28;
    qword_1ED4A2A28 = 0;
  }
}

- (id)centerCellFontWithTraitCollection:(id)collection
{
  -[_UIPickerViewStyle _resetFontCacheForLegibilityWeightIfNeeded:](self, "_resetFontCacheForLegibilityWeightIfNeeded:", [collection legibilityWeight]);
  v3 = qword_1ED4A2A10;
  if (!qword_1ED4A2A10)
  {
    v4 = [off_1E70ECC18 systemFontOfSize:23.5];
    v5 = qword_1ED4A2A10;
    qword_1ED4A2A10 = v4;

    v3 = qword_1ED4A2A10;
  }

  return v3;
}

- (id)nonCenterCellFontWithTraitCollection:(id)collection
{
  -[_UIPickerViewStyle _resetFontCacheForLegibilityWeightIfNeeded:](self, "_resetFontCacheForLegibilityWeightIfNeeded:", [collection legibilityWeight]);
  v3 = qword_1ED4A2A18;
  if (!qword_1ED4A2A18)
  {
    v4 = [off_1E70ECC18 systemFontOfSize:21.0];
    v5 = qword_1ED4A2A18;
    qword_1ED4A2A18 = v4;

    v3 = qword_1ED4A2A18;
  }

  return v3;
}

- (id)centerCellDigitFontWithTraitCollection:(id)collection
{
  -[_UIPickerViewStyle _resetFontCacheForLegibilityWeightIfNeeded:](self, "_resetFontCacheForLegibilityWeightIfNeeded:", [collection legibilityWeight]);
  v3 = qword_1ED4A2A20;
  if (!qword_1ED4A2A20)
  {
    v4 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:23.5 weight:*off_1E70ECD28];
    v5 = qword_1ED4A2A20;
    qword_1ED4A2A20 = v4;

    v3 = qword_1ED4A2A20;
  }

  return v3;
}

- (id)nonCenterCellDigitFontWithTraitCollection:(id)collection
{
  -[_UIPickerViewStyle _resetFontCacheForLegibilityWeightIfNeeded:](self, "_resetFontCacheForLegibilityWeightIfNeeded:", [collection legibilityWeight]);
  v3 = qword_1ED4A2A28;
  if (!qword_1ED4A2A28)
  {
    v4 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:21.0 weight:*off_1E70ECD28];
    v5 = qword_1ED4A2A28;
    qword_1ED4A2A28 = v4;

    v3 = qword_1ED4A2A28;
  }

  return v3;
}

@end