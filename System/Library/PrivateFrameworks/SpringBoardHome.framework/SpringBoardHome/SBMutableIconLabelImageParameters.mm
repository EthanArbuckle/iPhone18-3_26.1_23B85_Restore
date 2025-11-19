@interface SBMutableIconLabelImageParameters
- (SBMutableIconLabelImageParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAccessibilityReduceTransparencyEnabled:(BOOL)a3;
- (void)setCanTighten:(BOOL)a3;
- (void)setCanTruncate:(BOOL)a3;
- (void)setColorspaceGrayscale:(BOOL)a3;
- (void)setContainsEmoji:(BOOL)a3;
- (void)setContentSizeCategory:(id)a3;
- (void)setFocusHighlightColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setFontLanguageInsets:(UIEdgeInsets)a3;
- (void)setLegibilityStyle:(unint64_t)a3;
- (void)setMaxSize:(CGSize)a3;
- (void)setOverrideTraitCollection:(id)a3;
- (void)setScale:(double)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextInsets:(UIEdgeInsets)a3;
@end

@implementation SBMutableIconLabelImageParameters

- (SBMutableIconLabelImageParameters)init
{
  v9.receiver = self;
  v9.super_class = SBMutableIconLabelImageParameters;
  v2 = [(SBIconLabelImageParameters *)&v9 _init];
  v3 = v2;
  if (v2)
  {
    text = v2->super._text;
    v2->super._text = &stru_1F3D472A8;

    v5 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] defaultFontSize];
    v6 = [v5 systemFontOfSize:?];
    font = v3->super._font;
    v3->super._font = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBIconLabelImageParameters allocWithZone:a3];

  return [(SBIconLabelImageParameters *)v4 initWithParameters:self];
}

- (void)setText:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    text = self->super._text;
    self->super._text = v4;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setMaxSize:(CGSize)a3
{
  if (self->super._maxSize.width != a3.width || self->super._maxSize.height != a3.height)
  {
    self->super._maxSize = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->super._font, a3);
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setCanTruncate:(BOOL)a3
{
  if (self->super._canTruncate != a3)
  {
    self->super._canTruncate = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setCanTighten:(BOOL)a3
{
  if (self->super._canTighten != a3)
  {
    self->super._canTighten = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setContainsEmoji:(BOOL)a3
{
  if (self->super._containsEmoji != a3)
  {
    self->super._containsEmoji = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setLegibilityStyle:(unint64_t)a3
{
  if (self->super._legibilityStyle != a3)
  {
    self->super._legibilityStyle = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->super._textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._textColor, a3);
    [(SBIconLabelImageParameters *)self markDirty];
    v5 = v6;
  }
}

- (void)setScale:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->super._scale = a3;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setAccessibilityReduceTransparencyEnabled:(BOOL)a3
{
  if (self->super._accessibilityReduceTransparencyEnabled != a3)
  {
    self->super._accessibilityReduceTransparencyEnabled = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setContentSizeCategory:(id)a3
{
  if (self->super._contentSizeCategory != a3)
  {
    v4 = [a3 copy];
    contentSizeCategory = self->super._contentSizeCategory;
    self->super._contentSizeCategory = v4;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setFocusHighlightColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->super._focusHighlightColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->super._focusHighlightColor, a3);
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setTextInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->super._textInsets.top, v3), vceqq_f64(*&self->super._textInsets.bottom, v4)))) & 1) == 0)
  {
    self->super._textInsets = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setFontLanguageInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->super._fontLanguageInsets.top, v3), vceqq_f64(*&self->super._fontLanguageInsets.bottom, v4)))) & 1) == 0)
  {
    self->super._fontLanguageInsets = a3;
    [(SBIconLabelImageParameters *)self markDirty];
  }
}

- (void)setColorspaceGrayscale:(BOOL)a3
{
  self->super._colorspaceGrayscale = a3;
  self->super._colorspaceGrayscaleSet = 1;
  [(SBIconLabelImageParameters *)self markDirty];
}

- (void)setOverrideTraitCollection:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    overrideTraitCollection = self->super._overrideTraitCollection;
    self->super._overrideTraitCollection = v4;

    [(SBIconLabelImageParameters *)self markDirty];
  }
}

@end