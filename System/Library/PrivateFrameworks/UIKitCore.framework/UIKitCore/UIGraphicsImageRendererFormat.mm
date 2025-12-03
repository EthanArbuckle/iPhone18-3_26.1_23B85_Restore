@interface UIGraphicsImageRendererFormat
+ (UIGraphicsImageRendererFormat)formatForTraitCollection:(UITraitCollection *)traitCollection;
+ (id)defaultFormat;
- (BOOL)prefersExtendedRange;
- (UIGraphicsImageRendererFormat)init;
- (double)_contextScale;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setGrayscale:(BOOL)grayscale;
- (void)_setOverrideColorSpace:(CGColorSpace *)space;
- (void)_setWantsAlphaMask:(BOOL)mask;
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
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
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
  v7.receiver = self;
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

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen _maximumSupportedScale];
    [v2 setScale:?];
  }

  return v2;
}

- (BOOL)prefersExtendedRange
{
  preferredRange = [(UIGraphicsImageRendererFormat *)self preferredRange];
  result = 1;
  if (preferredRange > UIGraphicsImageRendererFormatRangeExtended)
  {
    if ((preferredRange - 100) < 2)
    {
      return result;
    }

    return 0;
  }

  if (preferredRange == UIGraphicsImageRendererFormatRangeUnspecified)
  {
    return 0;
  }

  if (preferredRange)
  {
    if (preferredRange == UIGraphicsImageRendererFormatRangeExtended)
    {
      return result;
    }

    return 0;
  }

  mainScreen = [objc_opt_self() mainScreen];
  traitCollection = [mainScreen traitCollection];
  displayGamut = [traitCollection displayGamut];

  if (displayGamut != -1)
  {
    return displayGamut != 0;
  }

  v7 = +[UIDevice currentDevice];
  _supportsDeepColor = [v7 _supportsDeepColor];

  return _supportsDeepColor;
}

+ (UIGraphicsImageRendererFormat)formatForTraitCollection:(UITraitCollection *)traitCollection
{
  v5 = traitCollection;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIGraphicsImageRenderer.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"traitCollection"}];
  }

  preferredFormat = [self preferredFormat];
  [(UITraitCollection *)v5 displayScale];
  if (fabs(v7) >= 2.22044605e-16)
  {
    [preferredFormat setScale:?];
  }

  displayGamut = [(UITraitCollection *)v5 displayGamut];
  if (displayGamut != -1)
  {
    [preferredFormat setPrefersExtendedRange:displayGamut != 0];
  }

  return preferredFormat;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIGraphicsImageRendererFormat;
  v4 = [(UIGraphicsRendererFormat *)&v6 copyWithZone:zone];
  [v4 setOpaque:{-[UIGraphicsImageRendererFormat opaque](self, "opaque")}];
  [(UIGraphicsImageRendererFormat *)self scale];
  [v4 setScale:?];
  v4[9] = self->_preferredRange;
  [v4 _setOverrideColorSpace:{-[UIGraphicsImageRendererFormat _overrideColorSpace](self, "_overrideColorSpace")}];
  [v4 _setOverrideBitsPerComponent:{-[UIGraphicsImageRendererFormat _overrideBitsPerComponent](self, "_overrideBitsPerComponent")}];
  return v4;
}

- (void)_setOverrideColorSpace:(CGColorSpace *)space
{
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    if (space)
    {
      self->_preferredRange = -1;
    }

    CGColorSpaceRetain(space);
    CGColorSpaceRelease(self->_overrideColorSpace);
    self->_overrideColorSpace = space;
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
    selfCopy = self;
    [(UIGraphicsImageRendererFormat *)selfCopy _setOverrideColorSpace:0];
    [(UIGraphicsImageRendererFormat *)selfCopy _setOverrideBitsPerComponent:0];

    self->_preferredRange = preferredRange;
  }
}

- (void)_setWantsAlphaMask:(BOOL)mask
{
  maskCopy = mask;
  if ([(UIGraphicsImageRendererFormat *)self _wantsAlphaMask]!= mask)
  {
    if (maskCopy)
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

- (void)_setGrayscale:(BOOL)grayscale
{
  grayscaleCopy = grayscale;
  if ([(UIGraphicsImageRendererFormat *)self _grayscale]!= grayscale)
  {
    if (grayscaleCopy)
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