@interface SBIconLabelImageParameters
- (BOOL)isColorspaceGrayscale;
- (BOOL)isEqual:(id)a3;
- (CGSize)maxSize;
- (SBIconLabelImageMetrics)metrics;
- (SBIconLabelImageParameters)init;
- (SBIconLabelImageParameters)initWithParameters:(id)a3;
- (SBIconLabelImageParameters)initWithText:(id)a3 maxSize:(CGSize)a4 font:(id)a5 scale:(double)a6 canTruncate:(BOOL)a7 canTighten:(BOOL)a8 containsEmoji:(BOOL)a9 legibilityStyle:(unint64_t)a10 textColor:(id)a11 accessibilityReduceTransparencyEnabled:(BOOL)a12 contentSizeCategory:(id)a13 focusHighlightColor:(id)a14 textInsets:(UIEdgeInsets)a15 fontLanguageInsets:(UIEdgeInsets)a16 overrideTraitCollection:(id)a17 colorspaceGrayscale:(BOOL)a18;
- (UIEdgeInsets)fontLanguageInsets;
- (UIEdgeInsets)textInsets;
- (id)_init;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (SBIconLabelImageParameters)initWithText:(id)a3 maxSize:(CGSize)a4 font:(id)a5 scale:(double)a6 canTruncate:(BOOL)a7 canTighten:(BOOL)a8 containsEmoji:(BOOL)a9 legibilityStyle:(unint64_t)a10 textColor:(id)a11 accessibilityReduceTransparencyEnabled:(BOOL)a12 contentSizeCategory:(id)a13 focusHighlightColor:(id)a14 textInsets:(UIEdgeInsets)a15 fontLanguageInsets:(UIEdgeInsets)a16 overrideTraitCollection:(id)a17 colorspaceGrayscale:(BOOL)a18
{
  right = a15.right;
  bottom = a15.bottom;
  left = a15.left;
  top = a15.top;
  height = a4.height;
  width = a4.width;
  v28 = a3;
  v29 = a5;
  v30 = a11;
  v39 = a13;
  v38 = a14;
  v37 = a17;
  v31 = [(SBIconLabelImageParameters *)self _init];
  if (v31)
  {
    v32 = [v28 copy];
    text = v31->_text;
    v31->_text = v32;

    v31->_maxSize.width = width;
    v31->_maxSize.height = height;
    objc_storeStrong(&v31->_font, a5);
    v31->_scale = a6;
    v31->_canTruncate = a7;
    v31->_containsEmoji = a9;
    v31->_legibilityStyle = a10;
    objc_storeStrong(&v31->_textColor, a11);
    v31->_accessibilityReduceTransparencyEnabled = a12;
    objc_storeStrong(&v31->_contentSizeCategory, a13);
    objc_storeStrong(&v31->_focusHighlightColor, a14);
    v31->_textInsets.top = top;
    v31->_textInsets.left = left;
    v31->_textInsets.bottom = bottom;
    v31->_textInsets.right = right;
    v31->_fontLanguageInsets = a16;
    objc_storeStrong(&v31->_overrideTraitCollection, a17);
    v31->_colorspaceGrayscale = a18;
    v31->_colorspaceGrayscaleSet = a18;
  }

  return v31;
}

- (SBIconLabelImageParameters)initWithParameters:(id)a3
{
  v4 = a3;
  v5 = [(SBIconLabelImageParameters *)self _init];
  if (v5)
  {
    v6 = [*(v4 + 2) copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v5[24] = v4[24];
    v5[25] = v4[25];
    v5[26] = v4[26];
    *(v5 + 3) = *(v4 + 3);
    objc_storeStrong(v5 + 1, *(v4 + 1));
    *(v5 + 8) = *(v4 + 8);
    *(v5 + 5) = *(v4 + 5);
    objc_storeStrong(v5 + 9, *(v4 + 9));
    v5[27] = v4[27];
    v8 = [*(v4 + 4) copy];
    v9 = *(v5 + 4);
    *(v5 + 4) = v8;

    objc_storeStrong(v5 + 10, *(v4 + 10));
    v10 = *(v4 + 88);
    *(v5 + 104) = *(v4 + 104);
    *(v5 + 88) = v10;
    v11 = *(v4 + 120);
    *(v5 + 136) = *(v4 + 136);
    *(v5 + 120) = v11;
    v5[28] = v4[28];
    v5[29] = v4[29];
    os_unfair_lock_lock(v4 + 48);
    v12 = v4[168];
    v5[168] = v12;
    if ((v12 & 1) == 0)
    {
      *(v5 + 22) = *(v4 + 22);
      v13 = [*(v4 + 23) copy];
      v14 = *(v5 + 23);
      *(v5 + 23) = v13;
    }

    os_unfair_lock_unlock(v4 + 48);
  }

  return v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v18 = [v3 build];

  return v18;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBMutableIconLabelImageParameters alloc];

  return [(SBIconLabelImageParameters *)v4 initWithParameters:self];
}

@end