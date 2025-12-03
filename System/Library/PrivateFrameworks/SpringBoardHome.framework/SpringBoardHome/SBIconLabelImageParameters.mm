@interface SBIconLabelImageParameters
- (BOOL)isColorspaceGrayscale;
- (BOOL)isEqual:(id)equal;
- (CGSize)maxSize;
- (SBIconLabelImageMetrics)metrics;
- (SBIconLabelImageParameters)init;
- (SBIconLabelImageParameters)initWithParameters:(id)parameters;
- (SBIconLabelImageParameters)initWithText:(id)text maxSize:(CGSize)size font:(id)font scale:(double)scale canTruncate:(BOOL)truncate canTighten:(BOOL)tighten containsEmoji:(BOOL)emoji legibilityStyle:(unint64_t)self0 textColor:(id)self1 accessibilityReduceTransparencyEnabled:(BOOL)self2 contentSizeCategory:(id)self3 focusHighlightColor:(id)self4 textInsets:(UIEdgeInsets)self5 fontLanguageInsets:(UIEdgeInsets)self6 overrideTraitCollection:(id)self7 colorspaceGrayscale:(BOOL)self8;
- (UIEdgeInsets)fontLanguageInsets;
- (UIEdgeInsets)textInsets;
- (id)_init;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)markDirty;
@end

@implementation SBIconLabelImageParameters

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBIconLabelImageParameters;
  result = [(SBIconLabelImageParameters *)&v3 init];
  if (result)
  {
    *(result + 48) = 0;
    *(result + 168) = 1;
  }

  return result;
}

- (SBIconLabelImageMetrics)metrics
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_recalculateHash)
  {
    lock_metrics = self->_lock_metrics;
    self->_lock_metrics = 0;
  }

  v4 = self->_lock_metrics;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [SBIconLabelImage metricsForParameters:self];
    objc_storeStrong(&self->_lock_metrics, v5);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (UIEdgeInsets)textInsets
{
  top = self->_textInsets.top;
  left = self->_textInsets.left;
  bottom = self->_textInsets.bottom;
  right = self->_textInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)fontLanguageInsets
{
  top = self->_fontLanguageInsets.top;
  left = self->_fontLanguageInsets.left;
  bottom = self->_fontLanguageInsets.bottom;
  right = self->_fontLanguageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isColorspaceGrayscale
{
  if (self->_colorspaceGrayscaleSet)
  {
    return self->_colorspaceGrayscale;
  }

  else
  {
    v3 = 0;
    if (!self->_containsEmoji)
    {
      textColor = self->_textColor;
      if (!textColor || [(UIColor *)textColor sbh_isGrayscale])
      {
        focusHighlightColor = self->_focusHighlightColor;
        if (!focusHighlightColor || [(UIColor *)focusHighlightColor sbh_isGrayscale])
        {
          return 1;
        }
      }
    }
  }

  return v3;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_recalculateHash)
  {
    scale = self->_scale;
    v4 = self->_maxSize.height + self->_maxSize.width + self->_textInsets.top + self->_textInsets.bottom + self->_textInsets.left + self->_textInsets.right + self->_fontLanguageInsets.top + self->_fontLanguageInsets.bottom + self->_fontLanguageInsets.left + self->_fontLanguageInsets.right;
    self->_lock_recalculateHash = 0;
    v5 = self->_canTighten + self->_canTruncate;
    v6 = (v4 + scale);
    v7 = v5 + [(NSString *)self->_text hash];
    v8 = v7 + [(UIFont *)self->_font hash]+ self->_legibilityStyle;
    v9 = v8 + [(UIColor *)self->_textColor hash];
    v10 = v9 + [(UIColor *)self->_focusHighlightColor hash]+ self->_accessibilityReduceTransparencyEnabled;
    lock_hash = v6 + v10 + [(NSString *)self->_contentSizeCategory hash]+ self->_colorspaceGrayscale + self->_colorspaceGrayscaleSet;
    self->_lock_hash = lock_hash;
  }

  else
  {
    lock_hash = self->_lock_hash;
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_hash;
}

- (SBIconLabelImageParameters)initWithText:(id)text maxSize:(CGSize)size font:(id)font scale:(double)scale canTruncate:(BOOL)truncate canTighten:(BOOL)tighten containsEmoji:(BOOL)emoji legibilityStyle:(unint64_t)self0 textColor:(id)self1 accessibilityReduceTransparencyEnabled:(BOOL)self2 contentSizeCategory:(id)self3 focusHighlightColor:(id)self4 textInsets:(UIEdgeInsets)self5 fontLanguageInsets:(UIEdgeInsets)self6 overrideTraitCollection:(id)self7 colorspaceGrayscale:(BOOL)self8
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  textCopy = text;
  fontCopy = font;
  colorCopy = color;
  categoryCopy = category;
  highlightColorCopy = highlightColor;
  collectionCopy = collection;
  _init = [(SBIconLabelImageParameters *)self _init];
  if (_init)
  {
    v32 = [textCopy copy];
    text = _init->_text;
    _init->_text = v32;

    _init->_maxSize.width = width;
    _init->_maxSize.height = height;
    objc_storeStrong(&_init->_font, font);
    _init->_scale = scale;
    _init->_canTruncate = truncate;
    _init->_containsEmoji = emoji;
    _init->_legibilityStyle = style;
    objc_storeStrong(&_init->_textColor, color);
    _init->_accessibilityReduceTransparencyEnabled = enabled;
    objc_storeStrong(&_init->_contentSizeCategory, category);
    objc_storeStrong(&_init->_focusHighlightColor, highlightColor);
    _init->_textInsets.top = top;
    _init->_textInsets.left = left;
    _init->_textInsets.bottom = bottom;
    _init->_textInsets.right = right;
    _init->_fontLanguageInsets = languageInsets;
    objc_storeStrong(&_init->_overrideTraitCollection, collection);
    _init->_colorspaceGrayscale = grayscale;
    _init->_colorspaceGrayscaleSet = grayscale;
  }

  return _init;
}

- (SBIconLabelImageParameters)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  _init = [(SBIconLabelImageParameters *)self _init];
  if (_init)
  {
    v6 = [*(parametersCopy + 2) copy];
    v7 = *(_init + 2);
    *(_init + 2) = v6;

    _init[24] = parametersCopy[24];
    _init[25] = parametersCopy[25];
    _init[26] = parametersCopy[26];
    *(_init + 3) = *(parametersCopy + 3);
    objc_storeStrong(_init + 1, *(parametersCopy + 1));
    *(_init + 8) = *(parametersCopy + 8);
    *(_init + 5) = *(parametersCopy + 5);
    objc_storeStrong(_init + 9, *(parametersCopy + 9));
    _init[27] = parametersCopy[27];
    v8 = [*(parametersCopy + 4) copy];
    v9 = *(_init + 4);
    *(_init + 4) = v8;

    objc_storeStrong(_init + 10, *(parametersCopy + 10));
    v10 = *(parametersCopy + 88);
    *(_init + 104) = *(parametersCopy + 104);
    *(_init + 88) = v10;
    v11 = *(parametersCopy + 120);
    *(_init + 136) = *(parametersCopy + 136);
    *(_init + 120) = v11;
    _init[28] = parametersCopy[28];
    _init[29] = parametersCopy[29];
    os_unfair_lock_lock(parametersCopy + 48);
    v12 = parametersCopy[168];
    _init[168] = v12;
    if ((v12 & 1) == 0)
    {
      *(_init + 22) = *(parametersCopy + 22);
      v13 = [*(parametersCopy + 23) copy];
      v14 = *(_init + 23);
      *(_init + 23) = v13;
    }

    os_unfair_lock_unlock(parametersCopy + 48);
  }

  return _init;
}

- (SBIconLabelImageParameters)init
{
  [(SBIconLabelImageParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)markDirty
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_recalculateHash = 1;
  lock_metrics = self->_lock_metrics;
  self->_lock_hash = 0x7FFFFFFFFFFFFFFFLL;
  self->_lock_metrics = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      if (self->_legibilityStyle != v7->_legibilityStyle || !BSFloatEqualToFloat() || !SBFBoolEquals() || !SBFBoolEquals())
      {
        goto LABEL_21;
      }

      v8 = 0;
      if (self->_maxSize.width != v7->_maxSize.width || self->_maxSize.height != v7->_maxSize.height)
      {
        goto LABEL_22;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textInsets.top, *&v7->_textInsets.top), vceqq_f64(*&self->_textInsets.bottom, *&v7->_textInsets.bottom)))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fontLanguageInsets.top, *&v7->_fontLanguageInsets.top), vceqq_f64(*&self->_fontLanguageInsets.bottom, *&v7->_fontLanguageInsets.bottom)))) & 1) != 0 && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && SBFBoolEquals() && BSEqualObjects() && SBFBoolEquals())
      {
        v8 = SBFBoolEquals();
      }

      else
      {
LABEL_21:
        v8 = 0;
      }

LABEL_22:

      goto LABEL_23;
    }

    v8 = 0;
  }

LABEL_23:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_text withName:@"text"];
  v5 = [v3 appendObject:self->_font withName:@"font"];
  v6 = [v3 appendSize:@"maxSize" withName:{self->_maxSize.width, self->_maxSize.height}];
  v7 = NSStringFromUIEdgeInsets(self->_fontLanguageInsets);
  v8 = [v3 appendObject:v7 withName:@"fontLanguageInsets"];

  v9 = [v3 appendBool:self->_containsEmoji withName:@"containsEmoji"];
  v10 = [v3 appendBool:self->_canTruncate withName:@"canTruncate"];
  v11 = [v3 appendBool:self->_canTighten withName:@"canTighten"];
  v12 = [v3 appendInteger:self->_legibilityStyle withName:@"legibilityStyle"];
  v13 = [v3 appendFloat:@"scale" withName:self->_scale];
  v14 = [v3 appendBool:self->_accessibilityReduceTransparencyEnabled withName:@"accessibilityReduceTransparencyEnabled"];
  v15 = [v3 appendObject:self->_contentSizeCategory withName:@"contentSizeCategory"];
  if (self->_colorspaceGrayscaleSet)
  {
    v16 = [v3 appendBool:self->_colorspaceGrayscale withName:@"colorspaceGrayscale"];
  }

  v17 = [v3 appendObject:self->_overrideTraitCollection withName:@"overrideTraitCollection" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBMutableIconLabelImageParameters alloc];

  return [(SBIconLabelImageParameters *)v4 initWithParameters:self];
}

@end