@interface PXGadgetSpec
+ (PXLayoutMetricInterpolator)horizontalContentInsetsInterpolator;
+ (double)sectionHeaderHeightForStyle:(unint64_t)a3 dividerHidden:(BOOL)a4;
+ (double)sectionHeaderTitleBottomSpacingForStyle:(unint64_t)a3;
+ (double)sectionHeaderTitleHeightForStyle:(unint64_t)a3 dividerHidden:(BOOL)a4;
+ (double)sectionHeaderTopSpacingForStyle:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGadgetSpec:(id)a3;
- (BOOL)shouldInsetContentForTraitCollection:(id)a3;
- (PXExtendedTraitCollection)rootExtendedTraitCollection;
- (PXGadgetSpec)initWithTraitCollection:(id)a3 scrollAxis:(int64_t)a4;
- (UIEdgeInsets)accessoryViewInset;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)layoutInsets;
- (double)columnSpacingForColumnSpan:(int64_t)a3;
- (double)columnWidthForColumnSpan:(int64_t)a3;
@end

@implementation PXGadgetSpec

- (BOOL)shouldInsetContentForTraitCollection:(id)a3
{
  v3 = [a3 traitCollection];
  v4 = [v3 horizontalSizeClass] != 1 || objc_msgSend(v3, "verticalSizeClass") != 2;

  return v4;
}

+ (PXLayoutMetricInterpolator)horizontalContentInsetsInterpolator
{
  if (horizontalContentInsetsInterpolator_onceToken != -1)
  {
    dispatch_once(&horizontalContentInsetsInterpolator_onceToken, &__block_literal_global_11111);
  }

  v3 = horizontalContentInsetsInterpolator_interpolator;

  return v3;
}

void __69__PXGadgetSpec_PlatformSpecific__horizontalContentInsetsInterpolator__block_invoke()
{
  v0 = [off_1E7721798 layoutMarginWidthInterpolator];
  v1 = horizontalContentInsetsInterpolator_interpolator;
  horizontalContentInsetsInterpolator_interpolator = v0;
}

- (UIEdgeInsets)accessoryViewInset
{
  top = self->_accessoryViewInset.top;
  left = self->_accessoryViewInset.left;
  bottom = self->_accessoryViewInset.bottom;
  right = self->_accessoryViewInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)layoutInsets
{
  top = self->_layoutInsets.top;
  left = self->_layoutInsets.left;
  bottom = self->_layoutInsets.bottom;
  right = self->_layoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)columnSpacingForColumnSpan:(int64_t)a3
{
  v5 = [(PXGadgetSpec *)self shouldUseAccessibilityLayout];
  v6 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v7 = off_1E7721798;
      if (!v5)
      {
        v9 = [off_1E7721798 gadgetColumnSpacingSpanSingleSetAInterpolator];
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v7 = off_1E7721798;
        if (v5)
        {
          v8 = off_1E7721798;
LABEL_9:
          v9 = [v8 gadgetColumnSpacingSpanDoubleSetAInterpolator];
LABEL_17:
          v6 = v9;
          goto LABEL_18;
        }

LABEL_15:
        v9 = [v7 gadgetColumnSpacingSpanDoubleSetBInterpolator];
        goto LABEL_17;
      }

LABEL_18:
      [(PXGadgetSpec *)self layoutReferenceWidth];
      [v6 valueForMetric:?];
      v12 = v11;

      return v12;
    }

LABEL_8:
    v8 = off_1E7721798;
    goto LABEL_9;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_8;
  }

  if (a3 != 5)
  {
    goto LABEL_18;
  }

  [(PXGadgetSpec *)self interItemSpacing];
  return result;
}

- (double)columnWidthForColumnSpan:(int64_t)a3
{
  v5 = [(PXGadgetSpec *)self shouldUseAccessibilityLayout];
  v6 = 0.0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v7 = off_1E7721798;
      if (!v5)
      {
        v10 = [off_1E7721798 gadgetColumnWidthSpanSingleSetAInterpolator];
LABEL_23:
        v25 = v10;
        if (v10)
        {
          [(PXGadgetSpec *)self layoutReferenceWidth];
          [v25 valueForMetric:?];
          v6 = v26;
        }

        return v6;
      }

      goto LABEL_14;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v7 = off_1E7721798;
        if (v5)
        {
          v8 = off_1E7721798;
LABEL_21:
          v10 = [v8 gadgetColumnWidthSpanDoubleSetAInterpolator];
          goto LABEL_23;
        }

LABEL_14:
        v10 = [v7 gadgetColumnWidthSpanDoubleSetBInterpolator];
        goto LABEL_23;
      }

      return v6;
    }

LABEL_20:
    v8 = off_1E7721798;
    goto LABEL_21;
  }

  switch(a3)
  {
    case 3:
      [(PXGadgetSpec *)self layoutReferenceWidth];
      v12 = v11;
      [(PXGadgetSpec *)self contentInsets];
      v14 = v12 - v13;
      [(PXGadgetSpec *)self contentInsets];
      return v14 - v15;
    case 4:
      if ([(PXGadgetSpec *)self userInterfaceIdiom]!= 1)
      {
        goto LABEL_20;
      }

      [(PXGadgetSpec *)self layoutReferenceWidth];
      v17 = v16;
      [(PXGadgetSpec *)self layoutReferenceHeight];
      v19 = v18;
      [(PXGadgetSpec *)self contentInsets];
      v21 = v20;
      [(PXGadgetSpec *)self contentInsets];
      v23 = v21 + v22;
      [(PXGadgetSpec *)self columnSpacingForColumnSpan:4];

      [off_1E7721798 locketGadgetColumnWidthForLayoutWidth:1 layoutMargins:v17 interSpacing:v19 isPhone:{v23, v24}];
      break;
    case 5:

      [(PXGadgetSpec *)self fixedColumnWidth];
      break;
    default:
      return v6;
  }

  return result;
}

- (BOOL)isEqualToGadgetSpec:(id)a3
{
  v4 = a3;
  [v4 layoutReferenceWidth];
  if (v5 == self->_layoutReferenceWidth && self->_shouldInsetAllContent == [v4 shouldInsetAllContent])
  {
    [v4 interItemSpacing];
    if (v6 == self->_interItemSpacing && [v4 scrollAxis] == self->_scrollAxis && objc_msgSend(v4, "layoutSizeClass") == self->_layoutSizeClass && objc_msgSend(v4, "layoutOrientation") == self->_layoutOrientation && objc_msgSend(v4, "layoutDirection") == self->_layoutDirection)
    {
      [v4 fixedColumnWidth];
      if (v7 == self->_fixedColumnWidth && self->_shouldUseAccessibilityLayout == [v4 shouldUseAccessibilityLayout])
      {
        [v4 accessoryViewInset];
        PXEdgeInsetsApproximatelyEqualToEdgeInsets();
      }
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToGadgetSpec:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXExtendedTraitCollection)rootExtendedTraitCollection
{
  v2 = [(PXGadgetSpec *)self extendedTraitCollection];
  v3 = [v2 rootExtendedTraitCollection];

  return v3;
}

- (PXGadgetSpec)initWithTraitCollection:(id)a3 scrollAxis:(int64_t)a4
{
  v8 = a3;
  if (!a4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXGadgetSpec.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"scrollAxis != PXAxisUndefined"}];
  }

  v16.receiver = self;
  v16.super_class = PXGadgetSpec;
  v9 = [(PXGadgetSpec *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extendedTraitCollection, a3);
    v10->_scrollAxis = a4;
    [v8 layoutReferenceSize];
    v10->_layoutReferenceWidth = v11;
    [v8 layoutReferenceSize];
    v10->_layoutReferenceHeight = v12;
    v13 = *(off_1E7721FA8 + 1);
    *&v10->_layoutInsets.top = *off_1E7721FA8;
    *&v10->_layoutInsets.bottom = v13;
    v10->_fixedColumnWidth = 164.0;
    [objc_opt_class() horizontalContentInsetsInterpolator];
    [objc_claimAutoreleasedReturnValue() valueForMetric:v10->_layoutReferenceWidth];
    [v8 displayScale];
    PXFloatRoundToPixel();
  }

  return 0;
}

+ (double)sectionHeaderTitleBottomSpacingForStyle:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 == 4 || a3 == 5)
    {
LABEL_7:
      PXScaledValueForTextStyleWithSymbolicTraits();
    }
  }

  else if (a3 - 2 < 2 || !a3)
  {
    goto LABEL_7;
  }

  return 0.0;
}

+ (double)sectionHeaderTopSpacingForStyle:(unint64_t)a3
{
  if (a3 < 4)
  {
    PXVisionScaledFloat();
  }

  if (a3 - 4 < 2)
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"PXGadgetSpec.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"topSpacing > 0.0"}];

  return 0.0;
}

+ (double)sectionHeaderTitleHeightForStyle:(unint64_t)a3 dividerHidden:(BOOL)a4
{
  if (a3 < 4)
  {
    PXVisionScaledFloat();
  }

  if (a3 == 4 || a3 == 5)
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"PXGadgetSpec.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"titleHeight > 0.0"}];

  return 0.0;
}

+ (double)sectionHeaderHeightForStyle:(unint64_t)a3 dividerHidden:(BOOL)a4
{
  [PXGadgetSpec sectionHeaderTitleHeightForStyle:"sectionHeaderTitleHeightForStyle:dividerHidden:" dividerHidden:?];
  v7 = v6;
  [PXGadgetSpec sectionHeaderTitleBottomSpacingForStyle:a3];
  v9 = v7 + v8;
  if (!a4)
  {
    [PXGadgetSpec sectionHeaderTopSpacingForStyle:a3];
    return v9 + v10;
  }

  return v9;
}

@end