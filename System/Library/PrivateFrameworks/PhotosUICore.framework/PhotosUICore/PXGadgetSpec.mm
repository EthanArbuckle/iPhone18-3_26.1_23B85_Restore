@interface PXGadgetSpec
+ (PXLayoutMetricInterpolator)horizontalContentInsetsInterpolator;
+ (double)sectionHeaderHeightForStyle:(unint64_t)style dividerHidden:(BOOL)hidden;
+ (double)sectionHeaderTitleBottomSpacingForStyle:(unint64_t)style;
+ (double)sectionHeaderTitleHeightForStyle:(unint64_t)style dividerHidden:(BOOL)hidden;
+ (double)sectionHeaderTopSpacingForStyle:(unint64_t)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGadgetSpec:(id)spec;
- (BOOL)shouldInsetContentForTraitCollection:(id)collection;
- (PXExtendedTraitCollection)rootExtendedTraitCollection;
- (PXGadgetSpec)initWithTraitCollection:(id)collection scrollAxis:(int64_t)axis;
- (UIEdgeInsets)accessoryViewInset;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)layoutInsets;
- (double)columnSpacingForColumnSpan:(int64_t)span;
- (double)columnWidthForColumnSpan:(int64_t)span;
@end

@implementation PXGadgetSpec

- (BOOL)shouldInsetContentForTraitCollection:(id)collection
{
  traitCollection = [collection traitCollection];
  v4 = [traitCollection horizontalSizeClass] != 1 || objc_msgSend(traitCollection, "verticalSizeClass") != 2;

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

- (double)columnSpacingForColumnSpan:(int64_t)span
{
  shouldUseAccessibilityLayout = [(PXGadgetSpec *)self shouldUseAccessibilityLayout];
  v6 = 0;
  if (span <= 2)
  {
    if (!span)
    {
      v7 = off_1E7721798;
      if (!shouldUseAccessibilityLayout)
      {
        gadgetColumnSpacingSpanSingleSetAInterpolator = [off_1E7721798 gadgetColumnSpacingSpanSingleSetAInterpolator];
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (span != 1)
    {
      if (span == 2)
      {
        v7 = off_1E7721798;
        if (shouldUseAccessibilityLayout)
        {
          v8 = off_1E7721798;
LABEL_9:
          gadgetColumnSpacingSpanSingleSetAInterpolator = [v8 gadgetColumnSpacingSpanDoubleSetAInterpolator];
LABEL_17:
          v6 = gadgetColumnSpacingSpanSingleSetAInterpolator;
          goto LABEL_18;
        }

LABEL_15:
        gadgetColumnSpacingSpanSingleSetAInterpolator = [v7 gadgetColumnSpacingSpanDoubleSetBInterpolator];
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

  if ((span - 3) < 2)
  {
    goto LABEL_8;
  }

  if (span != 5)
  {
    goto LABEL_18;
  }

  [(PXGadgetSpec *)self interItemSpacing];
  return result;
}

- (double)columnWidthForColumnSpan:(int64_t)span
{
  shouldUseAccessibilityLayout = [(PXGadgetSpec *)self shouldUseAccessibilityLayout];
  v6 = 0.0;
  if (span <= 2)
  {
    if (!span)
    {
      v7 = off_1E7721798;
      if (!shouldUseAccessibilityLayout)
      {
        gadgetColumnWidthSpanSingleSetAInterpolator = [off_1E7721798 gadgetColumnWidthSpanSingleSetAInterpolator];
LABEL_23:
        v25 = gadgetColumnWidthSpanSingleSetAInterpolator;
        if (gadgetColumnWidthSpanSingleSetAInterpolator)
        {
          [(PXGadgetSpec *)self layoutReferenceWidth];
          [v25 valueForMetric:?];
          v6 = v26;
        }

        return v6;
      }

      goto LABEL_14;
    }

    if (span != 1)
    {
      if (span == 2)
      {
        v7 = off_1E7721798;
        if (shouldUseAccessibilityLayout)
        {
          v8 = off_1E7721798;
LABEL_21:
          gadgetColumnWidthSpanSingleSetAInterpolator = [v8 gadgetColumnWidthSpanDoubleSetAInterpolator];
          goto LABEL_23;
        }

LABEL_14:
        gadgetColumnWidthSpanSingleSetAInterpolator = [v7 gadgetColumnWidthSpanDoubleSetBInterpolator];
        goto LABEL_23;
      }

      return v6;
    }

LABEL_20:
    v8 = off_1E7721798;
    goto LABEL_21;
  }

  switch(span)
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

- (BOOL)isEqualToGadgetSpec:(id)spec
{
  specCopy = spec;
  [specCopy layoutReferenceWidth];
  if (v5 == self->_layoutReferenceWidth && self->_shouldInsetAllContent == [specCopy shouldInsetAllContent])
  {
    [specCopy interItemSpacing];
    if (v6 == self->_interItemSpacing && [specCopy scrollAxis] == self->_scrollAxis && objc_msgSend(specCopy, "layoutSizeClass") == self->_layoutSizeClass && objc_msgSend(specCopy, "layoutOrientation") == self->_layoutOrientation && objc_msgSend(specCopy, "layoutDirection") == self->_layoutDirection)
    {
      [specCopy fixedColumnWidth];
      if (v7 == self->_fixedColumnWidth && self->_shouldUseAccessibilityLayout == [specCopy shouldUseAccessibilityLayout])
      {
        [specCopy accessoryViewInset];
        PXEdgeInsetsApproximatelyEqualToEdgeInsets();
      }
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToGadgetSpec:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXExtendedTraitCollection)rootExtendedTraitCollection
{
  extendedTraitCollection = [(PXGadgetSpec *)self extendedTraitCollection];
  rootExtendedTraitCollection = [extendedTraitCollection rootExtendedTraitCollection];

  return rootExtendedTraitCollection;
}

- (PXGadgetSpec)initWithTraitCollection:(id)collection scrollAxis:(int64_t)axis
{
  collectionCopy = collection;
  if (!axis)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSpec.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"scrollAxis != PXAxisUndefined"}];
  }

  v16.receiver = self;
  v16.super_class = PXGadgetSpec;
  v9 = [(PXGadgetSpec *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extendedTraitCollection, collection);
    v10->_scrollAxis = axis;
    [collectionCopy layoutReferenceSize];
    v10->_layoutReferenceWidth = v11;
    [collectionCopy layoutReferenceSize];
    v10->_layoutReferenceHeight = v12;
    v13 = *(off_1E7721FA8 + 1);
    *&v10->_layoutInsets.top = *off_1E7721FA8;
    *&v10->_layoutInsets.bottom = v13;
    v10->_fixedColumnWidth = 164.0;
    [objc_opt_class() horizontalContentInsetsInterpolator];
    [objc_claimAutoreleasedReturnValue() valueForMetric:v10->_layoutReferenceWidth];
    [collectionCopy displayScale];
    PXFloatRoundToPixel();
  }

  return 0;
}

+ (double)sectionHeaderTitleBottomSpacingForStyle:(unint64_t)style
{
  if (style > 3)
  {
    if (style == 4 || style == 5)
    {
LABEL_7:
      PXScaledValueForTextStyleWithSymbolicTraits();
    }
  }

  else if (style - 2 < 2 || !style)
  {
    goto LABEL_7;
  }

  return 0.0;
}

+ (double)sectionHeaderTopSpacingForStyle:(unint64_t)style
{
  if (style < 4)
  {
    PXVisionScaledFloat();
  }

  if (style - 4 < 2)
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSpec.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"topSpacing > 0.0"}];

  return 0.0;
}

+ (double)sectionHeaderTitleHeightForStyle:(unint64_t)style dividerHidden:(BOOL)hidden
{
  if (style < 4)
  {
    PXVisionScaledFloat();
  }

  if (style == 4 || style == 5)
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetSpec.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"titleHeight > 0.0"}];

  return 0.0;
}

+ (double)sectionHeaderHeightForStyle:(unint64_t)style dividerHidden:(BOOL)hidden
{
  [PXGadgetSpec sectionHeaderTitleHeightForStyle:"sectionHeaderTitleHeightForStyle:dividerHidden:" dividerHidden:?];
  v7 = v6;
  [PXGadgetSpec sectionHeaderTitleBottomSpacingForStyle:style];
  v9 = v7 + v8;
  if (!hidden)
  {
    [PXGadgetSpec sectionHeaderTopSpacingForStyle:style];
    return v9 + v10;
  }

  return v9;
}

@end