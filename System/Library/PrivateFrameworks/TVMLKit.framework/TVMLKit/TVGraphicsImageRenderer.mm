@interface TVGraphicsImageRenderer
+ (id)decodedImage:(id)image opaque:(BOOL)opaque;
+ (id)formatWithCGImage:(CGImage *)image;
+ (id)formatWithUIImage:(id)image;
+ (id)imageWithSize:(CGSize)size alpha:(BOOL)alpha actions:(id)actions;
+ (id)imageWithSize:(CGSize)size alpha:(BOOL)alpha cgContextActions:(id)actions;
+ (id)imageWithSize:(CGSize)size format:(id)format actions:(id)actions;
+ (id)imageWithSize:(CGSize)size format:(id)format cgContextActions:(id)actions;
+ (id)preferredFormat;
@end

@implementation TVGraphicsImageRenderer

+ (id)preferredFormat
{
  v2 = MEMORY[0x277D75568];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v5 = [v2 formatForTraitCollection:traitCollection];

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];

  return v5;
}

+ (id)formatWithCGImage:(CGImage *)image
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277D755B8] imageWithCGImage:image];
  v6 = [v4 formatWithUIImage:v5];

  return v6;
}

+ (id)formatWithUIImage:(id)image
{
  imageCopy = image;
  if (formatWithUIImage__onceToken != -1)
  {
    +[TVGraphicsImageRenderer formatWithUIImage:];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  _supportsDeepColor = [currentDevice _supportsDeepColor];

  if (!_supportsDeepColor)
  {
    imageRendererFormat = 0;
LABEL_9:
    v10 = +[TVGraphicsImageRenderer preferredFormat];

    imageRendererFormat = v10;
    goto LABEL_10;
  }

  imageRendererFormat = [imageCopy imageRendererFormat];
  [imageRendererFormat setScale:v6];
  if (!imageRendererFormat || formatWithUIImage__sOverrideDefault && formatWithUIImage__sPrefersExtendedRange)
  {
    goto LABEL_9;
  }

LABEL_10:

  return imageRendererFormat;
}

uint64_t __45__TVGraphicsImageRenderer_formatWithUIImage___block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"PrefersExtendedRange", @"com.apple.TVMLKit", &formatWithUIImage__sOverrideDefault);
  formatWithUIImage__sPrefersExtendedRange = result;
  return result;
}

+ (id)imageWithSize:(CGSize)size format:(id)format actions:(id)actions
{
  height = size.height;
  width = size.width;
  actionsCopy = actions;
  v9 = MEMORY[0x277D75560];
  formatCopy = format;
  v11 = [[v9 alloc] initWithSize:formatCopy format:{width, height}];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__TVGraphicsImageRenderer_imageWithSize_format_actions___block_invoke;
  v15[3] = &unk_279D706D0;
  v16 = actionsCopy;
  v12 = actionsCopy;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

void __56__TVGraphicsImageRenderer_imageWithSize_format_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSetInterpolationQuality([v3 CGContext], kCGInterpolationHigh);
  (*(*(a1 + 32) + 16))();
}

+ (id)imageWithSize:(CGSize)size format:(id)format cgContextActions:(id)actions
{
  height = size.height;
  width = size.width;
  actionsCopy = actions;
  v9 = MEMORY[0x277D75560];
  formatCopy = format;
  v11 = [[v9 alloc] initWithSize:formatCopy format:{width, height}];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__TVGraphicsImageRenderer_imageWithSize_format_cgContextActions___block_invoke;
  v15[3] = &unk_279D706F8;
  v17 = width;
  v18 = height;
  v16 = actionsCopy;
  v12 = actionsCopy;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

uint64_t __65__TVGraphicsImageRenderer_imageWithSize_format_cgContextActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetInterpolationQuality(v3, kCGInterpolationHigh);
  CGContextTranslateCTM(v3, 0.0, *(a1 + 48));
  CGContextScaleCTM(v3, 1.0, -1.0);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)imageWithSize:(CGSize)size alpha:(BOOL)alpha actions:(id)actions
{
  alphaCopy = alpha;
  height = size.height;
  width = size.width;
  actionsCopy = actions;
  v9 = +[TVGraphicsImageRenderer preferredFormat];
  [v9 setOpaque:!alphaCopy];
  v10 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v9 format:{width, height}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__TVGraphicsImageRenderer_imageWithSize_alpha_actions___block_invoke;
  v14[3] = &unk_279D706D0;
  v15 = actionsCopy;
  v11 = actionsCopy;
  v12 = [v10 imageWithActions:v14];

  return v12;
}

void __55__TVGraphicsImageRenderer_imageWithSize_alpha_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSetInterpolationQuality([v3 CGContext], kCGInterpolationHigh);
  (*(*(a1 + 32) + 16))();
}

+ (id)imageWithSize:(CGSize)size alpha:(BOOL)alpha cgContextActions:(id)actions
{
  alphaCopy = alpha;
  height = size.height;
  width = size.width;
  actionsCopy = actions;
  v9 = +[TVGraphicsImageRenderer preferredFormat];
  [v9 setOpaque:!alphaCopy];
  v10 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v9 format:{width, height}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__TVGraphicsImageRenderer_imageWithSize_alpha_cgContextActions___block_invoke;
  v14[3] = &unk_279D706F8;
  v16 = width;
  v17 = height;
  v15 = actionsCopy;
  v11 = actionsCopy;
  v12 = [v10 imageWithActions:v14];

  return v12;
}

uint64_t __64__TVGraphicsImageRenderer_imageWithSize_alpha_cgContextActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetInterpolationQuality(v3, kCGInterpolationHigh);
  CGContextTranslateCTM(v3, 0.0, *(a1 + 48));
  CGContextScaleCTM(v3, 1.0, -1.0);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)decodedImage:(id)image opaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  imageCopy = image;
  if (imageCopy)
  {
    v6 = [TVGraphicsImageRenderer formatWithUIImage:imageCopy];
    [v6 setScale:1.0];
    [v6 setOpaque:opaqueCopy];
    [imageCopy size];
    v8 = v7;
    v10 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__TVGraphicsImageRenderer_decodedImage_opaque___block_invoke;
    v13[3] = &unk_279D6F620;
    v14 = imageCopy;
    v11 = [TVGraphicsImageRenderer imageWithSize:v6 format:v13 actions:v8, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __47__TVGraphicsImageRenderer_decodedImage_opaque___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  [v1 size];

  return [v1 drawInRect:{v2, v3, v4, v5}];
}

@end