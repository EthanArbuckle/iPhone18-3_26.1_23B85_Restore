@interface SBMutableIconLabelImageParameters
- (SBMutableIconLabelImageParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAccessibilityReduceTransparencyEnabled:(BOOL)enabled;
- (void)setCanTighten:(BOOL)tighten;
- (void)setCanTruncate:(BOOL)truncate;
- (void)setColorspaceGrayscale:(BOOL)grayscale;
- (void)setContainsEmoji:(BOOL)emoji;
- (void)setContentSizeCategory:(id)category;
- (void)setFocusHighlightColor:(id)color;
- (void)setFont:(id)font;
- (void)setFontLanguageInsets:(UIEdgeInsets)insets;
- (void)setLegibilityStyle:(unint64_t)style;
- (void)setMaxSize:(CGSize)size;
- (void)setOverrideTraitCollection:(id)collection;
- (void)setScale:(double)scale;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setTextInsets:(UIEdgeInsets)insets;
@end

@implementation SBMutableIconLabelImageParameters

- (SBMutableIconLabelImageParameters)init
{
  v9.receiver = self;
  v9.super_class = SBMutableIconLabelImageParameters;
  _init = [(SBIconLabelImageParameters *)&v9 _init];
  v3 = _init;
  if (_init)
  {
    text = _init->super._text;
    _init->super._text = &stru_1F3D472A8;

    v5 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] defaultFontSize];
    v6 = [v5 systemFontOfSize:?];
    font = v3->super._font;
    v3->super._font = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBIconLabelImageParameters allocWithZone:zone];

  return [(SBIconLabelImageParameters *)v4 initWithParameters:self];
}

- (void)setText:(id)text
{
  textCopy = text;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [textCopy copy];
    text = self->super._text;
    self->super._text = v4;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setMaxSize:(CGSize)size
{
  if (self->super._maxSize.width != size.width || self->super._maxSize.height != size.height)
  {
    self->super._maxSize = size;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->super._font, font);
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setCanTruncate:(BOOL)truncate
{
  if (self->super._canTruncate != truncate)
  {
    self->super._canTruncate = truncate;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setCanTighten:(BOOL)tighten
{
  if (self->super._canTighten != tighten)
  {
    self->super._canTighten = tighten;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setContainsEmoji:(BOOL)emoji
{
  if (self->super._containsEmoji != emoji)
  {
    self->super._containsEmoji = emoji;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setLegibilityStyle:(unint64_t)style
{
  if (self->super._legibilityStyle != style)
  {
    self->super._legibilityStyle = style;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->super._textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->super._textColor, color);
    [(SBIconLabelImageParameters *)self markDirty];
    colorCopy = v6;
  }
}

- (void)setScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->super._scale = scale;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setAccessibilityReduceTransparencyEnabled:(BOOL)enabled
{
  if (self->super._accessibilityReduceTransparencyEnabled != enabled)
  {
    self->super._accessibilityReduceTransparencyEnabled = enabled;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setContentSizeCategory:(id)category
{
  if (self->super._contentSizeCategory != category)
  {
    v4 = [category copy];
    contentSizeCategory = self->super._contentSizeCategory;
    self->super._contentSizeCategory = v4;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setFocusHighlightColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->super._focusHighlightColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->super._focusHighlightColor, color);
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setTextInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->super._textInsets.top, v3), vceqq_f64(*&self->super._textInsets.bottom, v4)))) & 1) == 0)
  {
    self->super._textInsets = insets;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setFontLanguageInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->super._fontLanguageInsets.top, v3), vceqq_f64(*&self->super._fontLanguageInsets.bottom, v4)))) & 1) == 0)
  {
    self->super._fontLanguageInsets = insets;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setColorspaceGrayscale:(BOOL)grayscale
{
  self->super._colorspaceGrayscale = grayscale;
  self->super._colorspaceGrayscaleSet = 1;
  [(SBIconLabelImageParameters *)self markDirty];
}

- (void)setOverrideTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [collectionCopy copy];
    overrideTraitCollection = self->super._overrideTraitCollection;
    self->super._overrideTraitCollection = v4;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

@end