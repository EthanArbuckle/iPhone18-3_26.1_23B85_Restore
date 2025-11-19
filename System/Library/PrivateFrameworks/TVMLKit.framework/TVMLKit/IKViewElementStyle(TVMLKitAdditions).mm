@interface IKViewElementStyle(TVMLKitAdditions)
- (BOOL)tv_hasFocusMargin;
- (BOOL)tv_hasHeight;
- (BOOL)tv_hasWidth;
- (TVViewElementStyle)tv_associatedViewElementStyle;
- (double)tv_borderWidths;
- (double)tv_columnPadding;
- (double)tv_focusMargin;
- (double)tv_focusSizeIncrease;
- (double)tv_fontSize;
- (double)tv_height;
- (double)tv_imageUpscaleFactor;
- (double)tv_interitemSpacing;
- (double)tv_lineSpacing;
- (double)tv_margin;
- (double)tv_maxHeight;
- (double)tv_maxWidth;
- (double)tv_minHeight;
- (double)tv_minWidth;
- (double)tv_minimumScaleFactor;
- (double)tv_padding;
- (double)tv_scrollableBoundsInset;
- (double)tv_symbolPointSize;
- (double)tv_transitionInterval;
- (double)tv_width;
- (id)tv_symbolTextStyle;
- (uint64_t)tv_acceptsFocus;
- (uint64_t)tv_adjustsFontSizeToFitWidth;
- (uint64_t)tv_alignment;
- (uint64_t)tv_borderContinuous;
- (uint64_t)tv_columnCount;
- (uint64_t)tv_contentAlignment;
- (uint64_t)tv_edgeFlagForStyle:()TVMLKitAdditions;
- (uint64_t)tv_fontStretch;
- (uint64_t)tv_indexDisplayMode;
- (uint64_t)tv_maxLines;
- (uint64_t)tv_maxTextLines;
- (uint64_t)tv_position;
- (uint64_t)tv_rowCount;
- (uint64_t)tv_symbolScale;
- (uint64_t)tv_symbolWeight;
- (uint64_t)tv_textAlignment;
- (void)tv_focusTransform;
- (void)tv_setStyleMetrics:()TVMLKitAdditions;
- (void)tv_textHyphenationFactor;
- (void)tv_transform;
@end

@implementation IKViewElementStyle(TVMLKitAdditions)

- (TVViewElementStyle)tv_associatedViewElementStyle
{
  v2 = objc_getAssociatedObject(a1, "TVAssociatedViewElementStyle");
  if (!v2)
  {
    v2 = [[TVViewElementStyle alloc] initWithStyle:a1];
    objc_setAssociatedObject(a1, "TVAssociatedViewElementStyle", v2, 0x301);
  }

  return v2;
}

- (void)tv_setStyleMetrics:()TVMLKitAdditions
{
  value = a3;
  v4 = [value valuesByStyle];
  [a1 setOverridingValuesByStyle:v4];

  objc_setAssociatedObject(a1, sel_tv_styleMetrics, value, 1);
}

- (uint64_t)tv_edgeFlagForStyle:()TVMLKitAdditions
{
  v4 = a3;
  if ([a1 typeForStyle:v4] == 7)
  {
    v5 = [a1 tv_styleMetrics];
    v6 = [v5 valueForStyle:v4];

    if (v6)
    {
      v7 = 15;
    }

    else
    {
      v7 = [a1 edgeFlagForStyle:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tv_transform
{
  v3 = [a1 tv_valueForStyle:@"transform"];
  if (v3)
  {
    v6 = v3;
    [v3 CGAffineTransformValue];
    v3 = v6;
  }

  else
  {
    v4 = MEMORY[0x277CBF2C0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *a2 = *MEMORY[0x277CBF2C0];
    a2[1] = v5;
    a2[2] = *(v4 + 32);
  }
}

- (void)tv_focusTransform
{
  v3 = [a1 tv_valueForStyle:@"tv-focus-transform"];
  if (v3)
  {
    v6 = v3;
    [v3 CGAffineTransformValue];
    v3 = v6;
  }

  else
  {
    v4 = MEMORY[0x277CBF2C0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *a2 = *MEMORY[0x277CBF2C0];
    a2[1] = v5;
    a2[2] = *(v4 + 32);
  }
}

- (double)tv_fontSize
{
  v1 = [a1 tv_valueForStyle:@"font-size"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_height
{
  v1 = [a1 tv_valueForStyle:@"height"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (BOOL)tv_hasHeight
{
  v1 = [a1 tv_valueForStyle:@"height"];
  v2 = v1 != 0;

  return v2;
}

- (double)tv_interitemSpacing
{
  v1 = [a1 tv_valueForStyle:@"tv-interitem-spacing"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_lineSpacing
{
  v1 = [a1 tv_valueForStyle:@"tv-line-spacing"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_maxHeight
{
  v1 = [a1 tv_valueForStyle:@"max-height"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_maxWidth
{
  v1 = [a1 tv_valueForStyle:@"max-width"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_minHeight
{
  v1 = [a1 tv_valueForStyle:@"min-height"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_minWidth
{
  v1 = [a1 tv_valueForStyle:@"min-width"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_transitionInterval
{
  v1 = [a1 tv_valueForStyle:@"tv-transition-interval"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_adjustsFontSizeToFitWidth
{
  v1 = [a1 tv_valueForStyle:@"tv-minimum-scale-factor"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (double)tv_minimumScaleFactor
{
  v1 = [a1 tv_valueForStyle:@"tv-minimum-scale-factor"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_width
{
  v1 = [a1 tv_valueForStyle:@"width"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (BOOL)tv_hasWidth
{
  v1 = [a1 tv_valueForStyle:@"width"];
  v2 = v1 != 0;

  return v2;
}

- (double)tv_columnPadding
{
  v1 = [a1 tv_valueForStyle:@"tv-column-padding"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_fontStretch
{
  v1 = [a1 tv_valueForStyle:@"font-stretch"];
  v2 = [v1 lowercaseString];

  if ([v2 isEqualToString:@"condensed"])
  {
    v3 = 64;
  }

  else if ([v2 isEqualToString:@"expanded"])
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)tv_textHyphenationFactor
{
  v2 = [a1 tv_valueForStyle:@"tv-text-hyphenation-factor"];

  if (v2)
  {
    v3 = [a1 tv_valueForStyle:@"tv-text-hyphenation-factor"];
    [v3 doubleValue];
  }

  else
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 preferredContentSizeCategory];
    _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  }
}

- (uint64_t)tv_textAlignment
{
  if (tv_textAlignment_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_textAlignment];
  }

  v2 = [a1 tv_valueForStyle:@"text-align"];
  if (v2)
  {
    v3 = [tv_textAlignment_sAlignmentKeysMap objectForKeyedSubscript:v2];
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (uint64_t)tv_columnCount
{
  v1 = [a1 tv_valueForStyle:@"column-count"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (uint64_t)tv_rowCount
{
  v1 = [a1 tv_valueForStyle:@"row-count"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (uint64_t)tv_maxTextLines
{
  v1 = [a1 tv_valueForStyle:@"tv-text-max-lines"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)tv_alignment
{
  if (tv_alignment_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_alignment];
  }

  v2 = [a1 tv_valueForStyle:@"tv-align"];
  if ([v2 length])
  {
    v3 = [tv_alignment_sAlignmentKeysMap objectForKeyedSubscript:v2];
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tv_position
{
  v1 = [a1 tv_valueForStyle:@"tv-position"];
  if (tv_position_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_position];
  }

  if ([v1 length])
  {
    v2 = [tv_position_sPositionKeysMap objectForKeyedSubscript:v1];
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)tv_borderWidths
{
  v1 = [a1 tv_valueForStyle:@"border-width"];
  [v1 UIEdgeInsetsValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_borderContinuous
{
  v1 = [a1 tv_valueForStyle:@"tv-border-continuous"];
  v2 = [v1 isEqualToString:@"true"];

  return v2;
}

- (double)tv_margin
{
  v1 = [a1 tv_valueForStyle:@"margin"];
  [v1 UIEdgeInsetsValue];
  v3 = v2;

  return v3;
}

- (BOOL)tv_hasFocusMargin
{
  v1 = [a1 tv_valueForStyle:@"tv-focus-margin"];
  v2 = v1 != 0;

  return v2;
}

- (double)tv_focusMargin
{
  v1 = [a1 tv_valueForStyle:@"tv-focus-margin"];
  [v1 UIEdgeInsetsValue];
  v3 = v2;

  return v3;
}

- (double)tv_padding
{
  v1 = [a1 tv_valueForStyle:@"padding"];
  [v1 UIEdgeInsetsValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_contentAlignment
{
  if (tv_contentAlignment_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_contentAlignment];
  }

  v2 = [a1 tv_valueForStyle:@"tv-content-align"];
  if ([v2 length])
  {
    v3 = [tv_contentAlignment_sAlignmentKeysMap objectForKeyedSubscript:v2];
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)tv_imageUpscaleFactor
{
  v1 = [a1 tv_valueForStyle:@"tv-img-upscale-factor"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)tv_focusSizeIncrease
{
  v1 = [a1 tv_valueForStyle:@"tv-focus-size-increase"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_acceptsFocus
{
  v1 = [a1 tv_valueForStyle:@"tv-accepts-focus"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)tv_scrollableBoundsInset
{
  v1 = [a1 tv_valueForStyle:@"tv-scrollable-bounds-inset"];
  [v1 UIEdgeInsetsValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_indexDisplayMode
{
  v1 = [a1 valueForStyle:@"tv-index-display"];
  if ([v1 isEqualToString:@"hidden"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"visible"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)tv_maxLines
{
  v1 = [a1 tv_valueForStyle:@"tv-max-lines"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (double)tv_symbolPointSize
{
  v1 = [a1 tv_valueForStyle:@"tv-symbol-point-size"];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)tv_symbolWeight
{
  if (tv_symbolWeight_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_symbolWeight];
  }

  v2 = [a1 tv_valueForStyle:@"tv-symbol-weight"];
  if ([v2 length])
  {
    v3 = [tv_symbolWeight_sSymbolWeightMap objectForKeyedSubscript:v2];
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)tv_symbolScale
{
  if (tv_symbolScale_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_symbolScale];
  }

  v2 = [a1 tv_valueForStyle:@"tv-symbol-scale"];
  if ([v2 length])
  {
    v3 = [tv_symbolScale_sSymbolScaleMap objectForKeyedSubscript:v2];
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tv_symbolTextStyle
{
  if (tv_symbolTextStyle_onceToken != -1)
  {
    [IKViewElementStyle(TVMLKitAdditions) tv_symbolTextStyle];
  }

  v2 = [a1 tv_valueForStyle:@"tv-symbol-text-style"];
  if ([v2 length])
  {
    v3 = [tv_symbolTextStyle_sSymbolTextStyleMap objectForKeyedSubscript:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end