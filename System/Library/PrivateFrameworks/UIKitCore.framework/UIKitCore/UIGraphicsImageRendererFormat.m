@interface UIGraphicsImageRendererFormat
+ (UIGraphicsImageRendererFormat)formatForTraitCollection:(UITraitCollection *)traitCollection;
+ (id)defaultFormat;
- (BOOL)prefersExtendedRange;
- (UIGraphicsImageRendererFormat)init;
- (double)_contextScale;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setGrayscale:(BOOL)a3;
- (void)_setOverrideColorSpace:(CGColorSpace *)a3;
- (void)_setWantsAlphaMask:(BOOL)a3;
- (void)dealloc;
- (void)setPreferredRange:(UIGraphicsImageRendererFormatRange)preferredRange;
- (void)setPrefersExtendedRange:(BOOL)prefersExtendedRange;
@end

@implementation UIGraphicsImageRendererFormat

- (double)_contextScale
{
  [(UIGraphicsImageRendererFormat *)self scale];
  if (result == 0.0)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 scale];
    v5 = v4;

    return v5;
  }

  return result;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_overrideColorSpace);
  v3.receiver = self;
  v3.super_class = UIGraphicsImageRendererFormat;
  [(UIGraphicsImageRendererFormat *)&v3 dealloc];
}

- (UIGraphicsImageRendererFormat)init
{
  v5.receiver = self;
  v5.super_class = UIGraphicsImageRendererFormat;
  v2 = [(UIGraphicsImageRendererFormat *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_overrideColorSpace = 0;
    v2->_scale = _UIScreenForcedMainScreenScale(1);
  }

  return v3;
}

+ (id)defaultFormat
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___UIGraphicsImageRendererFormat;
  v2 = objc_msgSendSuper2(&v7, sel_defaultFormat);
  [v2 setOpaque:0];
  [v2 _setOverrideColorSpace:0];
  [v2 _setOverrideBitsPerComponent:0];
  if (dyld_program_sdk_at_least())
  {
    [v2 setPreferredRange:0];
  }

  else
  {
    v3 = +[UIDevice currentDevice];
    if ([v3 _supportsDeepColor])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [v2 setPreferredRange:v4];

    v5 = [objc_opt_self() mainScreen];
    [v5 _maximumSupportedScale];
    [v2 setScale:?];
  }

  return v2;
}

- (BOOL)prefersExtendedRange
{
  v2 = [(UIGraphicsImageRendererFormat *)self preferredRange];
  result = 1;
  if (v2 > UIGraphicsImageRendererFormatRangeExtended)
  {
    if ((v2 - 100) < 2)
    {
      return result;
    }

    return 0;
  }

  if (v2 == UIGraphicsImageRendererFormatRangeUnspecified)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == UIGraphicsImageRendererFormatRangeExtended)
    {
      return result;
    }

    return 0;
  }

  v4 = [objc_opt_self() mainScreen];
  v5 = [v4 traitCollection];
  v6 = [v5 displayGamut];

  if (v6 != -1)
  {
    return v6 != 0;
  }

  v7 = +[UIDevice currentDevice];
  v8 = [v7 _supportsDeepColor];

  return v8;
}

+ (UIGraphicsImageRendererFormat)formatForTraitCollection:(UITraitCollection *)traitCollection
{
  v5 = traitCollection;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"UIGraphicsImageRenderer.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"traitCollection"}];
  }

  v6 = [a1 preferredFormat];
  [(UITraitCollection *)v5 displayScale];
  if (fabs(v7) >= 2.22044605e-16)
  {
    [v6 setScale:?];
  }

  v8 = [(UITraitCollection *)v5 displayGamut];
  if (v8 != -1)
  {
    [v6 setPrefersExtendedRange:v8 != 0];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIGraphicsImageRendererFormat;
  v4 = [(UIGraphicsRendererFormat *)&v6 copyWithZone:a3];
  [v4 setOpaque:{-[UIGraphicsImageRendererFormat opaque](self, "opaque")}];
  [(UIGraphicsImageRendererFormat *)self scale];
  [v4 setScale:?];
  v4[9] = self->_preferredRange;
  [v4 _setOverrideColorSpace:{-[UIGraphicsImageRendererFormat _overrideColorSpace](self, "_overrideColorSpace")}];
  [v4 _setOverrideBitsPerComponent:{-[UIGraphicsImageRendererFormat _overrideBitsPerComponent](self, "_overrideBitsPerComponent")}];
  return v4;
}

- (void)_setOverrideColorSpace:(CGColorSpace *)a3
{
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    if (a3)
    {
      self->_preferredRange = -1;
    }

    CGColorSpaceRetain(a3);
    CGColorSpaceRelease(self->_overrideColorSpace);
    self->_overrideColorSpace = a3;
  }
}

- (void)setPrefersExtendedRange:(BOOL)prefersExtendedRange
{
  v3 = prefersExtendedRange;
  if ([(UIGraphicsImageRendererFormat *)self prefersExtendedRange]!= prefersExtendedRange || v3 && [(UIGraphicsImageRendererFormat *)self preferredRange]== UIGraphicsImageRendererFormatRangeAutomatic)
  {
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [(UIGraphicsImageRendererFormat *)self setPreferredRange:v5];
  }
}

- (void)setPreferredRange:(UIGraphicsImageRendererFormatRange)preferredRange
{
  if (self->_preferredRange != preferredRange)
  {
    v5 = self;
    [(UIGraphicsImageRendererFormat *)v5 _setOverrideColorSpace:0];
    [(UIGraphicsImageRendererFormat *)v5 _setOverrideBitsPerComponent:0];

    self->_preferredRange = preferredRange;
  }
}

- (void)_setWantsAlphaMask:(BOOL)a3
{
  v3 = a3;
  if ([(UIGraphicsImageRendererFormat *)self _wantsAlphaMask]!= a3)
  {
    if (v3)
    {
      v5 = 0x7FFFLL;
    }

    else
    {
      v5 = 0;
    }

    [(UIGraphicsImageRendererFormat *)self setPreferredRange:v5];
  }
}

- (void)_setGrayscale:(BOOL)a3
{
  v3 = a3;
  if ([(UIGraphicsImageRendererFormat *)self _grayscale]!= a3)
  {
    if (v3)
    {
      v5 = 32766;
    }

    else
    {
      v5 = 0;
    }

    [(UIGraphicsImageRendererFormat *)self setPreferredRange:v5];
  }
}

@end