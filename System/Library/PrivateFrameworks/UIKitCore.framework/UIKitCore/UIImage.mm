@interface UIImage
+ (BOOL)_isCGImageAlphaMask:(CGImage *)a3;
+ (CGSize)_applyOrientation:(int64_t)a3 toContentSizeInPixels:(CGSize)result;
+ (CGSize)_legibilityImageSizeForSize:(CGSize)a3 style:(int64_t)a4;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (UIEdgeInsets)_edgeInsetsForStylePresetNames:(id)a3 scale:(double)a4 traitCollection:(id)a5;
+ (UIImage)actionsImage;
+ (UIImage)addImage;
+ (UIImage)animatedImageWithImages:(NSArray *)images duration:(NSTimeInterval)duration;
+ (UIImage)checkmarkImage;
+ (UIImage)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (UIImage)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle variableValue:(double)value withConfiguration:(UIImageConfiguration *)configuration;
+ (UIImage)imageWithCGImage:(CGImageRef)cgImage;
+ (UIImage)imageWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation;
+ (UIImage)imageWithCIImage:(CIImage *)ciImage;
+ (UIImage)imageWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation;
+ (UIImage)imageWithContentsOfCPBitmapFile:(id)a3 flags:(int)a4;
+ (UIImage)imageWithContentsOfFile:(NSString *)path;
+ (UIImage)imageWithData:(NSData *)data;
+ (UIImage)imageWithData:(NSData *)data scale:(CGFloat)scale;
+ (UIImage)removeImage;
+ (UIImage)strokedCheckmarkImage;
+ (UIImage)systemImageNamed:(NSString *)name compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_ISImageDescriptorNameForUIApplicationIconFormat:(int)a3;
+ (id)_animatedImageNamed:(id)a3 inBundle:(id)a4 compatibleWithTraitCollection:(id)a5 duration:(double)a6;
+ (id)_animatedResizableImageNamed:(id)a3 inBundle:(id)a4 compatibleWithTraitCollection:(id)a5 capInsets:(UIEdgeInsets)a6 resizingMode:(int64_t)a7 duration:(double)a8;
+ (id)_applicationIconImageForBundleIdentifier:(id)a3 format:(int)a4;
+ (id)_applicationIconImageForBundleIdentifier:(id)a3 format:(int)a4 scale:(double)a5;
+ (id)_applicationIconImageForBundleIdentifier:(id)a3 format:(int)a4 scale:(double)a5 appearance:(id)a6 style:(int64_t)a7;
+ (id)_backgroundGradientWithStartColor:(id)a3 andEndColor:(id)a4;
+ (id)_baseImageDescriptorForUIApplicationIconFormat:(int)a3;
+ (id)_cachedImageForKey:(id)a3 fromBlock:(id)a4;
+ (id)_defaultBackgroundGradient;
+ (id)_deviceSpecificImageNamed:(id)a3;
+ (id)_deviceSpecificImageNamed:(id)a3 inBundle:(id)a4;
+ (id)_generateCompositedSymbolImageForAsset:(id)a3 usingLayers:(id)a4 configuration:(id)a5 alignUsingBaselines:(BOOL)a6;
+ (id)_iconForResourceProxy:(id)a3 format:(int)a4 options:(unint64_t)a5;
+ (id)_imageNamed:(id)a3 withTrait:(id)a4;
+ (id)_imageWithCGPDFPage:(CGPDFPage *)a3;
+ (id)_imageWithCGPDFPage:(CGPDFPage *)a3 scale:(double)a4 orientation:(int64_t)a5;
+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)a3;
+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)a3 scale:(double)a4 orientation:(int64_t)a5;
+ (id)_imageWithIcon:(void *)a3 descriptor:;
+ (id)_systemImageNamed:(id)a3 fallback:(id)a4 withConfiguration:(id)a5;
+ (id)_systemImageNamed:(id)a3 shape:(int64_t)a4;
+ (id)_systemImageNamed:(id)a3 shape:(int64_t)a4 fill:(int64_t)a5;
+ (id)_systemImageNamed:(id)a3 shape:(int64_t)a4 fill:(int64_t)a5 withConfiguration:(id)a6;
+ (id)_systemImageNamed:(id)a3 variableValue:(double)a4 withConfiguration:(id)a5 allowPrivate:(BOOL)a6;
+ (id)_systemImageNamed:(id)a3 variant:(unint64_t)a4;
+ (id)_systemImageNamed:(id)a3 variant:(unint64_t)a4 withConfiguration:(id)a5;
+ (id)_tintedImageForSize:(CGSize)a3 withTint:(id)a4 effectsImage:(id)a5 maskImage:(id)a6 style:(int)a7;
+ (id)_tintedImageForSize:(CGSize)a3 withTint:(id)a4 maskImage:(id)a5 effectsImage:(id)a6 style:(int)a7;
+ (id)_tintedImageForSize:(CGSize)a3 withTint:(id)a4 maskImage:(id)a5 effectsImage:(id)a6 style:(int)a7 edgeInsets:(UIEdgeInsets)a8;
+ (id)imageFromAlbumArtData:(id)a3 height:(int)a4 width:(int)a5 bytesPerRow:(int)a6 cache:(BOOL)a7;
+ (id)imageNamed:(id)a3 inBundle:(id)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)preferredSymbolImageNamed:(id)a3;
+ (id)preferredSymbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithTextStyle:(id)a5;
+ (id)preferredSymbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithTextStyle:(id)a5 traitCollection:(id)a6 inBundle:(id)a7;
+ (id)symbolImageNamed:(id)a3;
+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithFont:(id)a5;
+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithFont:(id)a5 traitCollection:(id)a6 inBundle:(id)a7;
+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 weight:(int64_t)a5 compatibleWithFontSize:(double)a6;
+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 weight:(int64_t)a5 compatibleWithFontSize:(double)a6 traitCollection:(id)a7 inBundle:(id)a8;
+ (int)_iconVariantForUIApplicationIconFormat:(int)a3 idiom:(int64_t)a4 scale:(double *)a5;
+ (int)_iconVariantForUIApplicationIconFormat:(int)a3 scale:(double *)a4;
+ (int64_t)_horizontallyFlippedOrientationForOrientation:(int64_t)a3;
+ (int64_t)_idiomDefinedByPath:(id)a3;
+ (unint64_t)_scaleDefinedByPath:(id)a3;
+ (void)_flushCache:(id)a3;
+ (void)_flushSharedImageCache;
+ (void)_loadImageFromURL:(id)a3 completionHandler:(id)a4;
+ (void)initialize;
- ($8452678F12DBC466148836A9D382CAFC)_calculateStatisticsOfEdge:(SEL)a3;
- (BOOL)_canEncodeAsCatalogData:(id)a3;
- (BOOL)_canEncodeWithName:(id)a3 coder:(id)a4;
- (BOOL)_hasContentInsets;
- (BOOL)_hasVisibleContentInRect:(CGRect)a3 atScale:(double)a4;
- (BOOL)_isAlphaMask;
- (BOOL)_isColoredSymbolImage;
- (BOOL)_isIconImage;
- (BOOL)_isInvisibleAndGetIsTranslucent:(BOOL *)a3;
- (BOOL)_isRTLImage;
- (BOOL)_isSameSymbolImageExceptVariableValue:(id)a3;
- (BOOL)_probeIsSeeThrough;
- (BOOL)_representsCIImageWhichSupportsIOSurfaceRendering;
- (BOOL)_representsLayeredImage;
- (BOOL)_suppressesAccessibilityHairlineThickening;
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToCPBitmapFile:(id)a3 flags:(int)a4;
- (CGColor)_tiledPatternColor;
- (CGRect)_contentRectInPixels;
- (CGRect)_contentStretchInPixels;
- (CGSize)_CGPDFPageSize;
- (CGSize)_CGSVGDocumentSize;
- (CGSize)_fullSize;
- (CGSize)_sizeInPixels;
- (CGSize)_sizeInPixelsFromPDF;
- (CGSize)_sizeWithHairlineThickening:(BOOL)a3 forTraitCollection:(id)a4;
- (UIEdgeInsets)_contentInsets;
- (UIEdgeInsets)_inverseAlignmentRectInsets;
- (UIEdgeInsets)_subimageInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)capInsets;
- (UIEdgeInsets)padding;
- (UIImage)imageByApplyingSymbolConfiguration:(UIImageSymbolConfiguration *)configuration;
- (UIImage)imageByPreparingForDisplay;
- (UIImage)imageByPreparingThumbnailOfSize:(CGSize)size;
- (UIImage)imageFlippedForRightToLeftLayoutDirection;
- (UIImage)imageRestrictedToStandardDynamicRange;
- (UIImage)imageWithAlignmentRectInsets:(UIEdgeInsets)alignmentInsets;
- (UIImage)imageWithBaselineOffsetFromBottom:(CGFloat)baselineOffset;
- (UIImage)imageWithConfiguration:(UIImageConfiguration *)configuration;
- (UIImage)imageWithHorizontallyFlippedOrientation;
- (UIImage)imageWithRenderingMode:(UIImageRenderingMode)renderingMode;
- (UIImage)imageWithTintColor:(UIColor *)color;
- (UIImage)imageWithoutBaseline;
- (UIImage)initWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation;
- (UIImage)initWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation;
- (UIImage)initWithCoder:(id)a3;
- (UIImage)initWithContentsOfFile:(id)a3 cache:(BOOL)a4;
- (UIImage)initWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (UIImage)resizableImageWithCapInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode;
- (UIImage)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight;
- (UIImageAsset)imageAsset;
- (UIImageOrientation)imageOrientation;
- (UIImageSymbolConfiguration)symbolConfiguration;
- (__IOSurface)_copyIOSurface;
- (double)_capHeight;
- (double)_scaleFromPDF;
- (id)_applicationIconImageForFormat:(int)a3 precomposed:(BOOL)a4;
- (id)_applicationIconImageForFormat:(int)a3 precomposed:(BOOL)a4 scale:(double)a5;
- (id)_applyBackdropViewSettings:(id)a3 allowImageResizing:(BOOL)a4;
- (id)_applyBackdropViewSettings:(id)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5 allowImageResizing:(BOOL)a6;
- (id)_applyBackdropViewStyle:(int64_t)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5;
- (id)_applyBackdropViewStyle:(int64_t)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5 graphicsQuality:(int64_t)a6;
- (id)_applyBackdropViewStyle:(int64_t)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5 graphicsQuality:(int64_t)a6 allowImageResizing:(BOOL)a7;
- (id)_bezeledImageWithShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 fillRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 drawShadow:(BOOL)a11;
- (id)_bundle;
- (id)_cachedRenditionForKey:(id)a3;
- (id)_colorForName:(id)a3 withTraitCollection:(id)a4;
- (id)_defaultConfiguration;
- (id)_descriptionOmittingSymbolConfiguration:(BOOL)a3;
- (id)_doubleBezeledImageWithExteriorShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 interiorShadowRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 fillRed:(double)a11 green:(double)a12 blue:(double)a13 alpha:(double)a14;
- (id)_existingIdentityDescription;
- (id)_flatImageWithColor:(id)a3;
- (id)_flatImageWithWhite:(double)a3 alpha:(double)a4;
- (id)_identityDescription;
- (id)_imageByApplyingSymbolVariant:(id)a3;
- (id)_imageByApplyingVariant:(unint64_t)a3 allowNone:(BOOL)a4;
- (id)_imageForLegibilitySettings:(id)a3 strength:(double)a4 alphaOnly:(BOOL)a5;
- (id)_imageForLegibilityStyle:(int64_t)a3;
- (id)_imagePaddedByInsets:(UIEdgeInsets)a3;
- (id)_imageScaledToProportion:(double)a3 interpolationQuality:(int)a4;
- (id)_imageThatSuppressesAccessibilityHairlineThickening;
- (id)_imageTintedWithColor:(id)a3 renderingMode:(int64_t)a4 withUpdatedCGImage:(BOOL)a5;
- (id)_imageWithBitmapRepresentation;
- (id)_imageWithBrightnessModifiedForLegibilityStyle:(int64_t)a3;
- (id)_imageWithContent:(id)a3;
- (id)_imageWithContentInsets:(UIEdgeInsets)a3 withUpdatedCGImage:(BOOL)a4;
- (id)_imageWithImageAsset:(id)a3;
- (id)_imageWithImageAsset:(id)a3 configuration:(id)a4;
- (id)_imageWithSize:(CGSize)a3;
- (id)_imageWithSize:(CGSize)a3 content:(id)a4;
- (id)_imageWithStylePresets:(id)a3 tintColor:(id)a4 traitCollection:(id)a5;
- (id)_imageWithSymbolMetricsFromNamedVectorGlyph:(id)a3;
- (id)_imageWithVariableValue:(double)a3;
- (id)_initWithCGPDFPage:(CGPDFPage *)a3 scale:(double)a4 orientation:(int64_t)a5;
- (id)_initWithCGSVGDocument:(CGSVGDocument *)a3 scale:(double)a4 orientation:(int64_t)a5;
- (id)_initWithCompositedSymbolImageLayers:(id)a3 name:(id)a4 alignUsingBaselines:(BOOL)a5;
- (id)_initWithContent:(id)a3 orientation:(int64_t)a4;
- (id)_initWithData:(id)a3 immediateLoadWithMaxSize:(CGSize)a4 scale:(double)a5 renderingIntent:(unint64_t)a6 cache:(BOOL)a7;
- (id)_initWithData:(id)a3 preserveScale:(BOOL)a4 cache:(BOOL)a5 scale:(double)a6;
- (id)_initWithFilledSystemImageNamed:(id)a3 fillColor:(id)a4 symbolColor:(id)a5 withName:(id)a6;
- (id)_initWithIOSurface:(__IOSurface *)a3 imageOrientation:(int64_t)a4;
- (id)_initWithOtherImage:(id)a3;
- (id)_initWithSDRIOSurface:(__IOSurface *)a3 HDRIOSurface:(__IOSurface *)a4 scale:(double)a5 orientation:(int64_t)a6;
- (id)_localRenditionCache:(BOOL)a3;
- (id)_metricsDescription;
- (id)_outlinePath;
- (id)_rasterizedCustomSymbolImageForFastXPCCoding;
- (id)_rasterizedImage;
- (id)_resizableImageWithSubimageInsets:(UIEdgeInsets)a3 resizeInsets:(UIEdgeInsets)a4;
- (id)_serializedData;
- (id)_stretchableImageWithCapInsets:(UIEdgeInsets)a3;
- (id)_swizzleContent:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (int64_t)_effectiveRenderingModeWithSymbolConfiguration:(id)a3;
- (int64_t)_imageOrientationConsideringRTL;
- (int64_t)_imageOrientationConsideringRTLForUserInterfaceLayoutDirection:(int64_t)a3;
- (int64_t)_imageOrientationForSymbolLayerConsideringRTLForUserInterfaceLayoutDirection:(int64_t)a3;
- (unint64_t)hash;
- (void)_cacheRendition:(id)a3 forKey:(id)a4;
- (void)_configureImage:(id)a3 assumePreconfigured:(BOOL)a4;
- (void)_drawImageForLegibilitySettings:(id)a3 strength:(double)a4 size:(CGSize)a5 alphaOnly:(BOOL)a6;
- (void)_drawImageForLegibilityStyle:(int64_t)a3 size:(CGSize)a4;
- (void)_drawInContext:(CGContext *)a3 rect:(CGRect)a4 layout:(id)a5;
- (void)_drawInContext:(CGContext *)a3 rect:(CGRect)a4 layout:(id)a5 scale:(double)a6 applyContentsTransform:(BOOL)a7;
- (void)_encodeDataWithCoder:(id)a3 imageName:(id)a4;
- (void)_encodePropertiesWithCoder:(id)a3;
- (void)_removeBaseline;
- (void)_setAlignmentRectInsets:(UIEdgeInsets)a3;
- (void)_setBaselineOffsetFromBottom:(double)a3;
- (void)_setCached:(BOOL)a3;
- (void)_setContentInsets:(UIEdgeInsets)a3;
- (void)_setContentInsetsExplicitly:(UIEdgeInsets)a3;
- (void)_setLocalRenditionCache:(id)a3;
- (void)_setSymbolMetricsFromNamedVectorGlyph:(id)a3;
- (void)compositeToPoint:(CGPoint)a3 fromRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6;
- (void)compositeToPoint:(CGPoint)a3 operation:(int)a4 fraction:(double)a5;
- (void)compositeToRect:(CGRect)a3 fromRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6;
- (void)dealloc;
- (void)draw1PartImageInRect:(CGRect)a3 fraction:(double)a4 operation:(int)a5;
- (void)draw3PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4;
- (void)draw3PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 fraction:(double)a5;
- (void)draw3PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6;
- (void)draw9PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4;
- (void)draw9PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 fraction:(double)a5;
- (void)draw9PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6;
- (void)drawAsPatternInRect:(CGRect)rect;
- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForDisplayWithCompletionHandler:(void *)completionHandler;
- (void)prepareThumbnailOfSize:(CGSize)size completionHandler:(void *)completionHandler;
- (void)setFlipsForRightToLeftLayoutDirection:(BOOL)a3;
@end

@implementation UIImage

- (id)_defaultConfiguration
{
  [(_UIImageContent *)self->_content scale];
  v2 = [UITraitCollection traitCollectionWithDisplayScale:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 imageConfiguration];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (CGSize)_fullSize
{
  if (!self->_content)
  {
    if (dyld_program_sdk_at_least())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"This UIImage instance unexpectedly has nil content. Did calling code create an image with [UIImage alloc] without also sending -init? That's unsupported. %p", self}];
    }

    if (self->_configuration)
    {
      v3 = +[_UIImageContent empty];
      content = self->_content;
      self->_content = v3;
    }

    else
    {
      v5 = self;
      content = [(UIImage *)v5 _initWithContent:0 orientation:[(UIImage *)v5 imageOrientation]];
    }
  }

  [(UIImage *)self _sizeInPixels];
  v7 = v6;
  v9 = v8;
  [(UIImage *)self scale];
  v11 = v9 / v10;
  v12 = v7 / v10;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)_sizeInPixels
{
  width = self->_sizeInPixels.width;
  height = self->_sizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_removeBaseline
{
  imageFlags = self->_imageFlags;
  if ((*&imageFlags & 0x2000) == 0)
  {
    self->_baselineOffsetFromBottom = 0.0;
    self->_imageFlags = (*&imageFlags & 0xFFFFCFFF);
  }
}

- (UIEdgeInsets)_contentInsets
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

- (BOOL)_suppressesAccessibilityHairlineThickening
{
  if (self && (*(&self->_imageFlags + 1) & 8) != 0)
  {
    return 1;
  }

  [(_UIImageContent *)self->_content scale];
  if (v3 == 1.0 || +[UIDevice _isWatchCompanion](UIDevice, "_isWatchCompanion") || +[UIDevice _isWatch])
  {
    return 1;
  }

  return [(UIImage *)self _isSymbolImage];
}

- (CGRect)_contentStretchInPixels
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  width = self->_sizeInPixels.width;
  height = self->_sizeInPixels.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIImageOrientation)imageOrientation
{
  imageFlags = self->_imageFlags;
  if ((imageFlags & 2) == 0)
  {
    return (imageFlags >> 2) & 7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:2034 description:{@"Don’t know how to obtain orientation from <%p:%@>", objc_opt_class(), self->_content}];
  }

  content = self->_content;

  return [(_UIImageContent *)content orientation];
}

- (BOOL)_representsCIImageWhichSupportsIOSurfaceRendering
{
  v3 = [(_UIImageContent *)self->_content isCIImage];
  if (v3)
  {
    v3 = [(_UIImageContent *)self->_content canRenderCIImage];
    if (v3)
    {
      LOBYTE(v3) = ![(UIImage *)self _isResizable];
    }
  }

  return v3;
}

- (UIImageSymbolConfiguration)symbolConfiguration
{
  configuration = self->_configuration;
  if (configuration)
  {
    v4 = configuration;
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        configuration = 0;
        goto LABEL_7;
      }
    }

    configuration = self->_configuration;
  }

LABEL_7:

  return configuration;
}

- (unint64_t)hash
{
  result = [(_UIImageContent *)self->_content hash];
  if (!result)
  {
    return 305441741;
  }

  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)dealloc
{
  _UISharedImageDealloc(self);
  if ((*&self->_imageFlags & 0x80) != 0)
  {
    SetCachedPatternColor(self, 0);
  }

  v3.receiver = self;
  v3.super_class = UIImage;
  [(UIImage *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:a1 selector:sel__flushCache_ name:@"UIApplicationDidReceiveMemoryWarningNotification" object:UIApp];
    [v3 addObserver:a1 selector:sel__flushCache_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
  }
}

- (UIImageAsset)imageAsset
{
  if (!self->_imageAsset && dyld_program_sdk_at_least() && ([(_UIImageContent *)self->_content isCGImage]|| dyld_program_sdk_at_least()) && ![(_UIImageContent *)self->_content isPreparedCGImage])
  {
    v3 = objc_alloc_init(UIImageAsset);
    imageAsset = self->_imageAsset;
    self->_imageAsset = v3;

    [(UIImageAsset *)self->_imageAsset _registerImage:self withConfiguration:self->_configuration];
  }

  v5 = self->_imageAsset;

  return v5;
}

- (id)_existingIdentityDescription
{
  if (!self->_imageAsset)
  {
    v6 = 0;
    goto LABEL_23;
  }

  v3 = _UIImageName(self);
  if (![v3 length])
  {
    v6 = 0;
    goto LABEL_22;
  }

  if (!_UIIsSystemSymbolImage(self))
  {
    if (_UIIsKitImage(self))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"UIKit(%@)", v3];
      v6 = LABEL_9:;
      goto LABEL_22;
    }

    v7 = [(UIImage *)self _isSymbolImage];
    v8 = _UIImageIsFromMainBundle(self);
    if (v7)
    {
      if (v8)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"symbol(main: %@)", v3];
        goto LABEL_9;
      }

      v9 = _UIImageIdentityBundleIdentifier(self);
      if ([v9 length])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"symbol(%@: %@)", v9, v3];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"symbol(%@)", v3, v11];
      }
    }

    else
    {
      if (v8)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"named(main: %@)", v3];
        goto LABEL_9;
      }

      v9 = _UIImageIdentityBundleIdentifier(self);
      if ([v9 length])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"named(%@: %@)", v9, v3];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"named(%@)", v3, v11];
      }
    }
    v6 = ;

    goto LABEL_22;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = _UIImageName(self);
  v6 = [v4 stringWithFormat:@"symbol(system: %@)", v5];

LABEL_22:
LABEL_23:

  return v6;
}

- (UIEdgeInsets)capInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)_representsLayeredImage
{
  v3 = [(UIImage *)self _primitiveImageAsset];
  if (v3)
  {
    v4 = [(UIImage *)self imageAsset];
    v5 = [v4 _layerStack];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIImage)imageFlippedForRightToLeftLayoutDirection
{
  if (*(&self->_imageFlags + 2))
  {
    v2 = self;
  }

  else
  {
    v2 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    [(UIImage *)v2 _setIsFlippedInRightToLeft];
  }

  return v2;
}

- (CGColor)_tiledPatternColor
{
  if (![(_UIImageContent *)self->_content isCGImage])
  {
    return 0;
  }

  if (!qword_1ED498D30 || (v3 = self, os_unfair_lock_lock(&stru_1ED498CF4), PatternColorFromImage = CFDictionaryGetValue(qword_1ED498D30, v3), v3, os_unfair_lock_unlock(&stru_1ED498CF4), !PatternColorFromImage))
  {
    [(UIImage *)self size];
    v22 = v6;
    v23 = v5;
    [(UIImage *)self scale];
    v8 = v7;
    if ((v23 & (v23 - 1)) != 0 || (v22 & (v22 - 1)) != 0)
    {
      [(UIImage *)self scale];
      if (v23 < v9 * 32.0 || ([(UIImage *)self scale], v22 < v10 * 32.0))
      {
        [(UIImage *)self scale];
        v20 = v11;
        [(UIImage *)self scale];
        v12.f64[0] = v20;
        v12.f64[1] = v13;
        v14.f64[0] = v23;
        v14.f64[1] = v22;
        v21 = vmulq_f64(v14, vrndpq_f64(vdivq_f64(vmulq_f64(v12, vdupq_n_s64(0x4040000000000000uLL)), v14)));
        v15 = [UIGraphicsImageRenderer alloc];
        v16 = [(UIImage *)self imageRendererFormat];
        v17 = [(UIGraphicsImageRenderer *)v15 initWithSize:v16 format:*&v21];

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __55__UIImage_UIImageDeprecatedPrivate___tiledPatternColor__block_invoke;
        v24[3] = &unk_1E710BFE0;
        v24[5] = 0;
        v24[6] = 0;
        v25 = v21;
        v24[4] = self;
        v26 = v23;
        v27 = v8;
        v28 = v22;
        v29 = 0;
        v30 = 0;
        v31 = v23;
        v32 = v22;
        v18 = [(UIGraphicsImageRenderer *)v17 imageWithActions:v24];
        PatternColorFromImage = createPatternColorFromImage(v18);

        if (!PatternColorFromImage)
        {
          return PatternColorFromImage;
        }

        goto LABEL_12;
      }
    }

    PatternColorFromImage = createPatternColorFromImage(self);
    if (PatternColorFromImage)
    {
LABEL_12:
      SetCachedPatternColor(self, PatternColorFromImage);
      CGColorRelease(PatternColorFromImage);
    }
  }

  return PatternColorFromImage;
}

- (id)_metricsDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if ([(UIImage *)self hasBaseline])
  {
    v4 = MEMORY[0x1E696AEC0];
    [(UIImage *)self baselineOffsetFromBottom];
    v6 = [v4 stringWithFormat:@"baseline=%g", v5];
    [v3 addObject:v6];
  }

  if ([(UIImage *)self _hasContentInsets])
  {
    v7 = MEMORY[0x1E696AEC0];
    [(UIImage *)self _contentInsets];
    v8 = NSStringFromUIEdgeInsets(v25);
    v9 = [v7 stringWithFormat:@"contentInsets=%@", v8];
    [v3 addObject:v9];
  }

  [(UIImage *)self alignmentRectInsets];
  if (v13 != 0.0 || v11 != 0.0 || v10 != 0.0 || v12 != 0.0)
  {
    v14 = MEMORY[0x1E696AEC0];
    [(UIImage *)self alignmentRectInsets];
    v15 = NSStringFromUIEdgeInsets(v26);
    v16 = [v14 stringWithFormat:@"alignmentRectInsets=%@", v15];
    [v3 addObject:v16];
  }

  if ([v3 count])
  {
    v17 = MEMORY[0x1E696AEC0];
    [(UIImage *)self size];
    v18 = NSStringFromCGSize(v23);
    v19 = [v3 componentsJoinedByString:{@", "}];
    v20 = [v17 stringWithFormat:@"%@ %@", v18, v19];
  }

  else
  {
    [(UIImage *)self size];
    v20 = NSStringFromCGSize(v24);
  }

  return v20;
}

- (BOOL)_hasContentInsets
{
  top = self->_contentInsets.top;
  result = 1;
  if (top == 0.0 && self->_contentInsets.bottom == 0.0 && self->_contentInsets.left == 0.0)
  {
    return self->_contentInsets.right != 0.0;
  }

  return result;
}

- (id)_identityDescription
{
  if (self->_imageAsset)
  {
    v2 = [(UIImage *)self _existingIdentityDescription];
    v3 = v2;
    v4 = @"?";
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  else
  {
    v5 = @"anonymous";
  }

  return v5;
}

- (UIImage)imageByPreparingForDisplay
{
  v3 = [(_UIImageContent *)self->_content contentPreparedForDisplay];
  v4 = v3;
  if (v3 == self->_content)
  {
    v5 = self;
    goto LABEL_5;
  }

  if (v3)
  {
    v5 = [(UIImage *)self _imageWithContent:v3];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_rasterizedImage
{
  if ([(_UIImageContent *)self->_content isCGImage]&& ([(UIImage *)self _contentInsets], v6 == 0.0) && v4 == 0.0 && v3 == 0.0 && v5 == 0.0)
  {
    v7 = self;
  }

  else
  {
    [(UIImage *)self size];
    v9 = v8;
    v11 = v10;
    v12 = +[UIGraphicsImageRendererFormat defaultFormat];
    [(UIImage *)self scale];
    [v12 setScale:?];
    v13 = [[UIGraphicsImageRenderer alloc] initWithSize:v12 format:v9, v11];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __27__UIImage__rasterizedImage__block_invoke;
    v17[3] = &unk_1E7106EC0;
    v17[4] = self;
    *&v17[5] = v9;
    *&v17[6] = v11;
    v14 = [(UIGraphicsImageRenderer *)v13 imageWithActions:v17];

    if (v14)
    {
      [(UIImage *)self _configureImage:v14 assumePreconfigured:0];
      v15 = *(v14 + 8);
      *(v14 + 8) = 0;

      *(v14 + 104) &= ~1u;
      v7 = [v14 _imageWithContentInsets:{0.0, 0.0, 0.0, 0.0}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (UIImage)imageWithoutBaseline
{
  v2 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v2 _removeBaselineExplicitly];

  return v2;
}

- (id)_imageThatSuppressesAccessibilityHairlineThickening
{
  if ([(UIImage *)self CGImage])
  {
    v3 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    if (v3)
    {
      *&v3->_imageFlags |= 0x800u;
    }
  }

  else
  {
    v3 = self;
  }

  return v3;
}

+ (void)_flushSharedImageCache
{
  _UISharedImageFlushAll();

  +[_UIOldCGImageDecompressor flushCaches];
}

- (BOOL)_probeIsSeeThrough
{
  v3 = objc_getAssociatedObject(self, &__imageSeeThroughKey);
  if (!v3)
  {
    [(UIImage *)self size];
    v5 = v4;
    v7 = v6;
    BitmapInfo = CGImageGetBitmapInfo([(UIImage *)self CGImage]);
    v9 = 1;
    if (v5 != 0.0 && v7 != 0.0)
    {
      if ((BitmapInfo & 0x1Fu) <= 6 && ((1 << (BitmapInfo & 0x1F)) & 0x61) != 0)
      {
        v9 = 0;
      }

      else
      {
        if (v5 > 50.0 || v7 > 50.0)
        {
          v10 = v5 / v7;
          if (v5 / v7 >= 1.0)
          {
            v5 = 50.0;
            v12 = 50.0 / v10;
            if (v12 >= 1.0)
            {
              v7 = v12;
            }

            else
            {
              v7 = 1.0;
            }
          }

          else
          {
            v7 = 50.0;
            v11 = v10 * 50.0;
            if (v11 >= 1.0)
            {
              v5 = v11;
            }

            else
            {
              v5 = 1.0;
            }
          }
        }

        v13 = v5 * 0.8;
        if (v5 * 0.8 < 1.0)
        {
          v13 = 1.0;
        }

        v14 = v7 * 0.8;
        if (v7 * 0.8 < 1.0)
        {
          v14 = 1.0;
        }

        v15 = (v5 - v13) * -0.5;
        v16 = (v7 - v14) * -0.5;
        _UIGraphicsBeginImageContextWithOptions(0, 1, v13, v14, 1.0);
        ContextStack = GetContextStack(0);
        if (*ContextStack < 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = ContextStack[3 * (*ContextStack - 1) + 1];
        }

        CGContextSetInterpolationQuality(v18, kCGInterpolationNone);
        [(UIImage *)self drawInRect:v15, v16, v5, v7];
        Data = CGBitmapContextGetData(v18);
        Width = CGBitmapContextGetWidth(v18);
        Height = CGBitmapContextGetHeight(v18);
        BytesPerRow = CGBitmapContextGetBytesPerRow(v18);
        if (Height < 1)
        {
LABEL_29:
          v9 = 0;
        }

        else
        {
          v23 = 0;
          v24 = Height & 0x7FFFFFFF;
          v9 = 1;
          while (1)
          {
            v25 = Width & 0x7FFFFFFF;
            v26 = Data;
            if (Width >= 1)
            {
              break;
            }

LABEL_28:
            ++v23;
            Data += BytesPerRow;
            v9 = v23 < v24;
            if (v23 == v24)
            {
              goto LABEL_29;
            }
          }

          while (1)
          {
            v27 = *v26++;
            if (v27 <= 0xE5)
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_28;
            }
          }
        }

        UIGraphicsEndImageContext();
      }
    }

    v3 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    objc_setAssociatedObject(self, &__imageSeeThroughKey, v3, 1);
  }

  v28 = [v3 BOOLValue];

  return v28;
}

+ (id)_imageNamed:(id)a3 withTrait:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [a4 imageConfiguration];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [a1 imageNamed:v6 inBundle:0 withConfiguration:v8];

  return v9;
}

+ (UIImage)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v8 = bundle;
  v9 = name;
  if (traitCollection)
  {
    v10 = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [a1 imageNamed:v9 inBundle:v8 withConfiguration:v11];

  return v12;
}

+ (UIImage)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle variableValue:(double)value withConfiguration:(UIImageConfiguration *)configuration
{
  v9 = name;
  v10 = bundle;
  v11 = configuration;
  os_unfair_lock_lock(&stru_1ED498CF0);
  if (!qword_1ED498D00)
  {
    v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
    v13 = qword_1ED498D00;
    qword_1ED498D00 = v12;
  }

  v14 = [UIImageConfiguration _completeConfiguration:v11 fromConfiguration:0];
  if (!v10)
  {
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v15 = [_UIImageCacheKey keyWithName:v9 configuration:v14 bundle:v10];
  v16 = [qword_1ED498D00 objectForKey:v15];
  os_unfair_lock_unlock(&stru_1ED498CF0);
  if (!v16)
  {
    if (v10)
    {
      v17 = [MEMORY[0x1E696AAE8] mainBundle];
      if (v10 == v17)
      {
        _UIKitGetApplicationAssetManager();
      }

      else
      {
        [_UIAssetManager assetManagerForBundle:v10];
      }
      v18 = ;
    }

    else
    {
      v18 = _UIKitGetApplicationAssetManager();
    }

    v19 = [v18 imageNamed:v9 configuration:v14];
    if (v19)
    {
      v16 = v19;
    }

    else
    {
      if (!v10)
      {
        v10 = [MEMORY[0x1E696AAE8] mainBundle];
      }

      if (dyld_program_sdk_at_least())
      {
        v27 = [_UIAssetManager newAssetNamed:v9 fromBundle:v10];
        v20 = [v27 _defaultTraitCollection];
        v21 = v20;
        if (v20)
        {
          v20 = [v20 imageConfiguration];
        }

        v22 = v20;
        v23 = [UIImageConfiguration _completeConfiguration:v11 fromConfiguration:v22];

        v16 = [v27 imageWithConfiguration:v23];

        v14 = v23;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v24 = _UIScreenForcedMainScreenScale(2) == 1.0;
        v16 = _UIImageAtPath(v9, v10, v24, 1);
        if (!v16)
        {
LABEL_23:

          goto LABEL_24;
        }
      }
    }

    os_unfair_lock_lock(&stru_1ED498CF0);
    [qword_1ED498D00 setObject:v16 forKey:v15];
    os_unfair_lock_unlock(&stru_1ED498CF0);
    goto LABEL_23;
  }

LABEL_24:
  v25 = [v16 _imageWithVariableValue:value];

  return v25;
}

+ (UIImage)systemImageNamed:(NSString *)name compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = name;
  if (traitCollection)
  {
    v7 = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [a1 systemImageNamed:v6 withConfiguration:v8];

  return v9;
}

+ (id)_systemImageNamed:(id)a3 variableValue:(double)a4 withConfiguration:(id)a5 allowPrivate:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [UIImageConfiguration _completeConfiguration:a5 fromConfiguration:0];
  v11 = v9;
  objc_opt_self();
  v12 = objc_opt_new();
  v13 = [v11 copy];

  v14 = *(v12 + 8);
  *(v12 + 8) = v13;

  v15 = *(v12 + 16);
  *(v12 + 16) = v10;
  v16 = v10;

  v17 = *(v12 + 24);
  *(v12 + 24) = 0;

  if (v6)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  *(v12 + 32) = *(v12 + 32) & 0xFC | v18;
  os_unfair_lock_lock(&stru_1ED498CF0);
  v19 = qword_1ED498D00;
  if (!qword_1ED498D00)
  {
    v20 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
    v21 = qword_1ED498D00;
    qword_1ED498D00 = v20;

    v19 = qword_1ED498D00;
  }

  v22 = [v19 objectForKey:v12];
  os_unfair_lock_unlock(&stru_1ED498CF0);
  if (!v22)
  {
    v23 = _UIKitCoreGlyphsManager();
    v22 = [v23 imageNamed:v11 configuration:v16];
    if (!v22)
    {
      if (!v6)
      {
        if (qword_1ED498D18 != -1)
        {
          dispatch_once(&qword_1ED498D18, &__block_literal_global_217_0);
        }

        if (byte_1ED498CE9 != 1)
        {
          v22 = 0;
          goto LABEL_16;
        }
      }

      v24 = _UIKitPrivateCoreGlyphsManager();
      v22 = [v24 imageNamed:v11 configuration:v16];
      if (v22 && (byte_1ED498CE9 & 1) != 0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v28 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            v29 = 138412290;
            v30 = v11;
          }
        }

        else
        {
          v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498D20) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v29 = 138412290;
            v30 = v11;
          }
        }
      }

      else
      {

        if (!v22)
        {
LABEL_16:

          goto LABEL_17;
        }
      }
    }

    os_unfair_lock_lock(&stru_1ED498CF0);
    [qword_1ED498D00 setObject:v22 forKey:v12];
    os_unfair_lock_unlock(&stru_1ED498CF0);
    goto LABEL_16;
  }

LABEL_17:
  v25 = [v22 _imageWithVariableValue:a4];

  return v25;
}

void __74__UIImage__systemImageNamed_variableValue_withConfiguration_allowPrivate___block_invoke()
{
  v0 = _UIKitPreferencesOnce();
  v3 = [v0 objectForKey:@"UIAllowPublicUseOfPrivateSystemSymbols"];

  v1 = v3;
  if (v3)
  {
    v2 = [v3 BOOLValue];
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  byte_1ED498CE9 = v2;
}

- (id)_imageWithVariableValue:(double)a3
{
  v4 = [(_UIImageContent *)self->_content contentWithVariableValue:a3];
  if (self->_content == v4)
  {
    v5 = self;
  }

  else
  {
    v5 = [(UIImage *)self _imageWithContent:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)_systemImageNamed:(id)a3 fallback:(id)a4 withConfiguration:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    goto LABEL_8;
  }

  v10 = dyld_program_sdk_at_least();
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v9)
  {
    [UIImage systemImageNamed:v7 withConfiguration:v9];
  }

  else
  {
    [UIImage systemImageNamed:v7];
  }
  v11 = ;
  if (!v11)
  {
LABEL_8:
    v11 = _UIImageWithName(v8);
  }

  return v11;
}

- (id)_initWithFilledSystemImageNamed:(id)a3 fillColor:(id)a4 symbolColor:(id)a5 withName:(id)a6
{
  v27[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [UIImage systemImageNamed:v10];
  if (!v14)
  {
    goto LABEL_21;
  }

  if ([v10 containsString:@".circle"])
  {
    v15 = @"circle.fill";
  }

  else if ([v10 containsString:@".square.stack"])
  {
    v15 = @"square.stack.fill";
  }

  else if ([v10 containsString:@".rectangle.stack"])
  {
    v15 = @"rectangle.stack.fill";
  }

  else if ([v10 containsString:@".square"])
  {
    v15 = @"square.fill";
  }

  else if ([v10 containsString:@".rectangle"])
  {
    v15 = @"rectangle.fill";
  }

  else
  {
    if (![v10 containsString:@".triangle"])
    {
LABEL_21:
      v24 = 0;
      goto LABEL_22;
    }

    v15 = @"arrowtriangle.up.fill";
  }

  v16 = [UIImage systemImageNamed:v15];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v26 = self;
  if ([v10 containsString:@".fill"])
  {
    v18 = 0.85;
  }

  else
  {
    v18 = 0.95;
  }

  v19 = *MEMORY[0x1E695EFF8];
  v20 = *(MEMORY[0x1E695EFF8] + 8);
  v21 = [_UIImageSymbolLayer _symbolLayerWithImage:v14 color:v12 offset:*MEMORY[0x1E695EFF8] scaleFactor:v20, 1.0];
  v27[0] = v21;
  v22 = [_UIImageSymbolLayer _symbolLayerWithImage:v17 color:v11 offset:v19 scaleFactor:v20, v18];
  v27[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  if (!v13)
  {
    v13 = [v10 stringByAppendingString:@".composite"];
  }

  v24 = [[UIImage alloc] _initWithCompositedSymbolImageLayers:v23 name:v13 alignUsingBaselines:0];

  self = v26;
LABEL_22:

  return v24;
}

- (id)_initWithCompositedSymbolImageLayers:(id)a3 name:(id)a4 alignUsingBaselines:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      v12 = [v11 stringByReplacingOccurrencesOfString:@"-" withString:@"."];
      v9 = [v12 lowercaseString];
    }

    v13 = [@"_." stringByAppendingString:v9];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __73__UIImage__initWithCompositedSymbolImageLayers_name_alignUsingBaselines___block_invoke;
    v28 = &unk_1E710BF38;
    v14 = v8;
    v29 = v14;
    v30 = a5;
    v15 = [UIImageAsset _dynamicAssetNamed:v13 generator:&v25];
    v16 = [v14 firstObject];
    v17 = [v16 content];
    [v17 scale];
    v19 = v18;

    v20 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    v21 = [UITraitCollection traitCollectionWithDisplayScale:v19];
    v22 = [v20 configurationWithTraitCollection:v21];

    v23 = [v15 imageWithConfiguration:v22];

    v9 = v13;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_generateCompositedSymbolImageForAsset:(id)a3 usingLayers:(id)a4 configuration:(id)a5 alignUsingBaselines:(BOOL)a6
{
  v106 = a6;
  v133 = *MEMORY[0x1E69E9840];
  v108 = a3;
  v8 = a5;
  v9 = [a4 reverseObjectEnumerator];
  v10 = [v9 allObjects];

  v112 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v107 = [v10 valueForKeyPath:@"color"];
  v14 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v10;
  v17 = [obj countByEnumeratingWithState:&v128 objects:v132 count:16];
  if (!v17)
  {
    v118.size.width = v15;
    v118.size.height = v16;
    v118.origin.x = v14;
    v118.origin.y = v13;
    goto LABEL_21;
  }

  v18 = v17;
  v19 = *v129;
  v110 = *(MEMORY[0x1E695EFF8] + 8);
  v111 = *MEMORY[0x1E695EFF8];
  v118.size.width = v15;
  v118.size.height = v16;
  v118.origin.x = v14;
  v118.origin.y = v13;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      v119 = v15;
      if (*v129 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v113 = v14;
      v114 = v13;
      v21 = *(*(&v128 + 1) + 8 * i);
      v22 = [v21 asset];
      v23 = [v22 imageWithConfiguration:v8];

      v24 = [v8 traitCollection];
      [v24 displayScale];
      v26 = v25;
      if (v25 == 0.0)
      {
        [v23 scale];
        v26 = v27;
      }

      v28 = [v23 content];
      v29 = [v23 content];
      [v112 addObject:v29];

      [v21 offset];
      v31 = v30;
      [v28 glyphScaleFactor];
      UICeilToScale(v31 * v32, v26);
      v34 = v33;
      [v21 offset];
      v36 = v35;
      [v28 glyphScaleFactor];
      UICeilToScale(v36 * v37, v26);
      v39 = v38;
      v40 = [MEMORY[0x1E696B098] valueWithCGPoint:{v34, v38}];
      [v11 addObject:v40];

      [v23 size];
      v122 = v42;
      v124 = v41;
      [v23 _contentInsets];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v21 scaleFactor];
      v52 = v51;
      r1 = v16;
      if (v51 >= 1.0)
      {
        v68 = v122;
        if (v51 <= 1.0)
        {
          goto LABEL_17;
        }

        v69.f64[0] = v124;
        v69.f64[1] = v122;
        __asm { FMOV            V3.2D, #2.0 }

        v71 = vaddq_f64(v69, _Q3);
        v72 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(2.0 / v26), 0), vmulq_n_f64(v69, v52));
        v73 = vdivq_f64(vbslq_s8(vcgtq_f64(v71, v72), v71, v72), v69);
        if (v73.f64[0] < v73.f64[1])
        {
          v73.f64[0] = v73.f64[1];
        }

        v126 = v73.f64[0];
        UICeilToScale(v124 * v73.f64[0], v26);
        v124 = v74;
        UICeilToScale(v122 * v126, v26);
        v122 = v75;
        UIFloorToScale(v44 * v126, v26);
        v44 = v76;
        UIFloorToScale(v48 * v126, v26);
        v48 = v77;
        UIFloorToScale(v46 * v126, v26);
        v46 = v78;
        UIFloorToScale(v50 * v126, v26);
      }

      else
      {
        v53.f64[0] = v124;
        v53.f64[1] = v122;
        __asm { FMOV            V3.2D, #-2.0 }

        v59 = vaddq_f64(v53, _Q3);
        v60 = vsubq_f64(vmulq_n_f64(v53, v52), vdupq_lane_s64(COERCE__INT64(2.0 / v26), 0));
        v61 = vdivq_f64(vbslq_s8(vcgtq_f64(v59, v60), v60, v59), v53);
        if (v61.f64[0] >= v61.f64[1])
        {
          v61.f64[0] = v61.f64[1];
        }

        v126 = v61.f64[0];
        UIFloorToScale(v124 * v61.f64[0], v26);
        v124 = v62;
        UIFloorToScale(v122 * v126, v26);
        v122 = v63;
        UICeilToScale(v44 * v126, v26);
        v44 = v64;
        UICeilToScale(v48 * v126, v26);
        v48 = v65;
        UICeilToScale(v46 * v126, v26);
        v46 = v66;
        UICeilToScale(v50 * v126, v26);
      }

      v52 = v126;
      v50 = v67;
LABEL_17:
      v79 = [MEMORY[0x1E696AD98] numberWithDouble:{v52, v68}];
      [v12 addObject:v79];

      UIRoundToScale(v34 + v124 * -0.5, v26);
      v81 = v80;
      [v23 baselineOffsetFromBottom];
      v83 = v82;
      [v23 size];
      UIRoundToScale(v39 + v83 - v84, v26);
      v86 = v85;
      v135.origin.y = v110;
      v135.origin.x = v111;
      v135.size.height = v122;
      v135.size.width = v124;
      v136 = CGRectOffset(v135, v81, v86);
      x = v136.origin.x;
      y = v136.origin.y;
      width = v136.size.width;
      height = v136.size.height;
      v118 = CGRectUnion(v118, v136);
      v143.origin.x = v46 + x;
      v143.origin.y = v44 + y;
      v143.size.width = width - (v50 + v46);
      v143.size.height = height - (v48 + v44);
      v137.origin.x = v113;
      v137.origin.y = v114;
      v137.size.width = v119;
      v137.size.height = r1;
      v138 = CGRectUnion(v137, v143);
      v14 = v138.origin.x;
      v13 = v138.origin.y;
      v15 = v138.size.width;
      v16 = v138.size.height;
    }

    v18 = [obj countByEnumeratingWithState:&v128 objects:v132 count:16];
  }

  while (v18);
LABEL_21:

  MinY = CGRectGetMinY(v118);
  v139.origin.x = v14;
  v139.origin.y = v13;
  v139.size.width = v15;
  v139.size.height = v16;
  v125 = CGRectGetMinY(v139);
  MinX = CGRectGetMinX(v118);
  v140.origin.x = v14;
  v140.origin.y = v13;
  v140.size.width = v15;
  v140.size.height = v16;
  r1a = CGRectGetMinX(v140);
  v141.origin.x = v14;
  v141.origin.y = v13;
  v141.size.width = v15;
  v141.size.height = v16;
  MaxY = CGRectGetMaxY(v141);
  v91 = MaxY - CGRectGetMaxY(v118);
  if (v91 < 0.0)
  {
    v91 = -v91;
  }

  v115 = v91;
  v142.origin.x = v14;
  v142.origin.y = v13;
  v121 = v15;
  v142.size.width = v15;
  v142.size.height = v16;
  MaxX = CGRectGetMaxX(v142);
  v93 = CGRectGetMaxX(v118);
  v94 = CGRectGetMaxY(v118);
  v95 = v94;
  if (v106)
  {
    v96 = v115;
    v97 = (v115 + v16 - v94) / v16;
    v99 = v107;
    v98 = v108;
  }

  else
  {
    v97 = 0.5;
    v99 = v107;
    v98 = v108;
    v96 = v115;
  }

  if (MaxX - v93 >= 0.0)
  {
    v100 = MaxX - v93;
  }

  else
  {
    v100 = -(MaxX - v93);
  }

  if (MinX - r1a >= 0.0)
  {
    v101 = MinX - r1a;
  }

  else
  {
    v101 = -(MinX - r1a);
  }

  if (MinY - v125 >= 0.0)
  {
    v102 = MinY - v125;
  }

  else
  {
    v102 = -(MinY - v125);
  }

  v103 = [[_UIImageMultiVectorGlyphContent alloc] initWithSize:v112 glyphs:v99 colors:v11 offsets:v12 scaleFactors:v121 anchorPoint:v16, 0.5, v97];
  v104 = [[UIImage alloc] _initWithContent:v103 orientation:0];
  [v104 _setRenderingMode:0];
  [v104 _setContentInsets:{v102, v101, v96, v100}];
  [v104 _setBaselineOffsetFromBottom:v95];
  [v104 _setConfiguration:v8];
  [v104 _setNamed:1];
  [v104 _setImageAsset:v98];

  return v104;
}

+ (UIImage)imageWithContentsOfFile:(NSString *)path
{
  v3 = path;
  v4 = [[UIImage alloc] initWithContentsOfFile:v3];

  return v4;
}

+ (UIImage)imageWithData:(NSData *)data
{
  v3 = data;
  v4 = [[UIImage alloc] initWithData:v3];

  return v4;
}

+ (UIImage)imageWithData:(NSData *)data scale:(CGFloat)scale
{
  v5 = data;
  v6 = [[UIImage alloc] initWithData:v5 scale:scale];

  return v6;
}

+ (UIImage)imageWithCGImage:(CGImageRef)cgImage
{
  v3 = [[UIImage alloc] initWithCGImage:cgImage];

  return v3;
}

+ (UIImage)imageWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
  v5 = [[UIImage alloc] initWithCGImage:cgImage scale:orientation orientation:scale];

  return v5;
}

+ (UIImage)imageWithCIImage:(CIImage *)ciImage
{
  v3 = ciImage;
  v4 = [[UIImage alloc] initWithCIImage:v3];

  return v4;
}

+ (UIImage)imageWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
  v7 = ciImage;
  v8 = [[UIImage alloc] initWithCIImage:v7 scale:orientation orientation:scale];

  return v8;
}

+ (void)_loadImageFromURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UIImage.m" lineNumber:1455 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v9 = [MEMORY[0x1E695AC78] sharedSession];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__UIImage__loadImageFromURL_completionHandler___block_invoke;
  v13[3] = &unk_1E710BF60;
  v14 = v8;
  v10 = v8;
  v11 = [v9 downloadTaskWithURL:v7 completionHandler:v13];

  [v11 resume];
}

void __47__UIImage__loadImageFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11 && [v11 isFileURL])
  {
    v9 = [v11 path];
    v10 = [UIImage imageWithContentsOfFile:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (UIImage)initWithCGImage:(CGImageRef)cgImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
  if (cgImage)
  {
    v7 = [[_UIImageCGImageContent alloc] initWithCGImage:cgImage scale:scale];
    v8 = [(UIImage *)self _initWithContent:v7 orientation:orientation];
    self = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIImage)initWithCIImage:(CIImage *)ciImage scale:(CGFloat)scale orientation:(UIImageOrientation)orientation
{
  v8 = ciImage;
  if (v8)
  {
    v9 = [[_UIImageCIImageContent alloc] initWithCIImage:v8 scale:scale];
    v10 = [(UIImage *)self _initWithContent:v9 orientation:orientation];
    self = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_initWithContent:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = UIImage;
  v7 = [(UIImage *)&v15 init];
  if (v7)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[_UIImageContent empty];
    }

    content = v7->_content;
    v7->_content = v8;

    v7->_imageFlags = (*&v7->_imageFlags & 0xFFFFFFE3 | (4 * (a4 & 7)));
    [(_UIImageContent *)v7->_content sizeInPixels];
    [UIImage _applyOrientation:a4 toContentSizeInPixels:?];
    v7->_sizeInPixels.width = v10;
    v7->_sizeInPixels.height = v11;
    v12 = [(UIImage *)v7 _defaultConfiguration];
    configuration = v7->_configuration;
    v7->_configuration = v12;
  }

  return v7;
}

- (id)_initWithOtherImage:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:1532 description:{@"Invalid parameter not satisfying: %@", @"otherImage != nil"}];
  }

  v6 = v5[2];
  if (v6)
  {
    v7 = -[UIImage _initWithContent:orientation:](self, "_initWithContent:orientation:", v6, [v5 imageOrientation]);
  }

  else
  {
    v7 = [(UIImage *)self init];
  }

  v8 = v7;
  if (v7)
  {
    [v5 _configureImage:v7 assumePreconfigured:0];
  }

  return v8;
}

- (void)_configureImage:(id)a3 assumePreconfigured:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  if (!v4)
  {
    v6 = [(UIImage *)self configuration];
    [v15 _setConfiguration:v6];
  }

  if ([(UIImage *)self _isSymbolImage]&& !*(v15 + 1))
  {
    [v15 _setImageAsset:self->_imageAsset];
    [v15 _setNamed:*&self->_imageFlags & 1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (![(UIImage *)self _hasExplicitBaseline])
  {
    goto LABEL_15;
  }

LABEL_9:
  if ([(UIImage *)self hasBaseline])
  {
    [(UIImage *)self baselineOffsetFromBottom];
    [v15 _setBaselineOffsetFromBottom:?];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [v15 _removeBaseline];
    if (!v4)
    {
LABEL_11:
      *(v15 + 12) = *&self->_capHeight;
      *(v15 + 26) = *(v15 + 26) & 0xFFFDFFFF | (((*&self->_imageFlags >> 17) & 1) << 17);
      *(v15 + 72) = self->_sizeInPixels;
      v7 = [(UIImage *)self _localRenditionCache:0];
      [v15 _setLocalRenditionCache:v7];

      if ([(UIImage *)self _hasExplicitContentInsets])
      {
        v8 = 0x4000;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_17;
    }
  }

LABEL_15:
  if (![(UIImage *)self _hasExplicitContentInsets])
  {
    goto LABEL_18;
  }

  v8 = 0x4000;
LABEL_17:
  [(UIImage *)self _contentInsets];
  *(v15 + 5) = v9;
  *(v15 + 6) = v10;
  *(v15 + 7) = v11;
  *(v15 + 8) = v12;
  *(v15 + 26) = *(v15 + 26) & 0xFFFFBFFF | v8;
  if (v4)
  {
LABEL_18:
    if (![(UIImage *)self _hasExplicitAlignmentRectInsets])
    {
      goto LABEL_20;
    }
  }

  [(UIImage *)self alignmentRectInsets];
  [v15 _setAlignmentRectInsets:?];
LABEL_20:
  if ([(UIImage *)self flipsForRightToLeftLayoutDirection])
  {
    [v15 _setIsFlippedInRightToLeft];
  }

  v13 = *(v15 + 26) & 0xFFFFF9FF | (([(UIImage *)self renderingMode]& 3) << 9);
  *(v15 + 26) = v13;
  *(v15 + 26) = v13 & 0xFFFFFFDF | (32 * ((*&self->_imageFlags >> 5) & 1));
  v14 = [(UIImage *)self _colorForFlattening];
  [v15 _setColorForFlattening:v14];

  *(v15 + 26) = *(v15 + 26) & 0xFFFFF7FF | (((*&self->_imageFlags >> 11) & 1) << 11);
}

- (id)_imageWithContent:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong((v6 + 16), a3);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_canEncodeWithName:(id)a3 coder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = (_UIIsSystemSymbolImage(self) & 1) != 0 || ([v7 _ui_isInterprocess] & 1) == 0 && -[UIImage _isNamed](self, "_isNamed") && objc_msgSend(v6, "length") != 0;

  return v8;
}

- (BOOL)_canEncodeAsCatalogData:(id)a3
{
  if (![(UIImage *)self isSymbolImage]|| (_UIIsSystemSymbolImage(self) & 1) != 0)
  {
    return 0;
  }

  v5 = [(UIImage *)self _primitiveImageAsset];
  v6 = [v5 _canProvideCatalogData];

  return v6;
}

- (void)_encodeDataWithCoder:(id)a3 imageName:(id)a4
{
  v5 = a3;
  v7 = UIImagePNGRepresentation(self);
  v6 = [v7 copy];
  [v5 encodeObject:v6 forKey:@"UIImageData"];
}

- (void)_encodePropertiesWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeBool:1 forKey:@"UIKitWantsProperties"];
  [(_UIImageContent *)self->_content scale];
  *&v4 = v4;
  [v10 encodeFloat:@"UIScale" forKey:v4];
  [v10 encodeCGSize:@"UIImageSizeInPixels" forKey:{self->_sizeInPixels.width, self->_sizeInPixels.height}];
  [v10 encodeInt:-[UIImage imageOrientation](self forKey:{"imageOrientation"), @"UIImageOrientation"}];
  [v10 encodeBool:(*&self->_imageFlags >> 7) & 1 forKey:@"UIHasPattern"];
  [v10 encodeInt:(*&self->_imageFlags >> 9) & 3 forKey:@"UIRenderingMode"];
  v5 = *&self->_alignmentRectInsets.top;
  v6 = *&self->_alignmentRectInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v5), vceqzq_f64(v6))))))
  {
    [v10 encodeUIEdgeInsets:@"UIImageAlignmentRectInsets" forKey:{*&v5, *&v6}];
  }

  if ([(UIImage *)self hasBaseline])
  {
    baselineOffsetFromBottom = self->_baselineOffsetFromBottom;
    *&baselineOffsetFromBottom = baselineOffsetFromBottom;
    [v10 encodeFloat:@"UIBaselineOffsetFromBottom" forKey:baselineOffsetFromBottom];
  }

  v8 = [(UIImage *)self symbolConfiguration];
  v9 = v8;
  if (v8 && ([v8 _isUnspecified] & 1) == 0)
  {
    [v10 encodeObject:v9 forKey:@"UIImageSymbolConfiguration"];
  }

  if ([(UIImage *)self _hasContentInsets])
  {
    [v10 encodeUIEdgeInsets:@"UIImageContentInsets" forKey:{self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right}];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  [v24 encodeBool:1 forKey:@"UIKitDidEncode"];
  v4 = _UIImageName(self);
  v5 = _UIIsKitImage(self);
  v6 = _UIIsSystemSymbolImage(self);
  v7 = [(UIImage *)self _canEncodeWithName:v4 coder:v24];
  v8 = v24;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    if (_UIIsPrivateSystemSymbolImage(self))
    {
      [v24 encodeBool:1 forKey:@"UIIsPrivateSystemImage"];
    }

    v9 = @"UIIsSystemImage";
    goto LABEL_8;
  }

  if (!v5)
  {
    if (!dyld_program_sdk_at_least())
    {
      v11 = _UIPathForImageWithCacheName(v4);
      [v24 encodeObject:v11 forKey:@"UIImageName"];
LABEL_21:

      goto LABEL_24;
    }

    v10 = [(UIImageAsset *)self->_imageAsset _assetManager];
    v11 = [v10 bundle];

    v12 = [v11 bundlePath];

    if (v12)
    {
      [v24 encodeObject:v4 forKey:@"UIImageName"];
      v13 = [v11 bundleIdentifier];
      [v24 encodeObject:v13 forKey:@"UIImageBundleIdentifier"];

      v14 = [v11 executablePath];
      v15 = [v14 lastPathComponent];
      [v24 encodeObject:v15 forKey:@"UIImageBundleLibraryName"];

LABEL_20:
      goto LABEL_21;
    }

    v14 = _UIPathForImageWithCacheName(v4);
    if ([v14 length])
    {
      v16 = @"UIImageName";
LABEL_19:
      [v24 encodeObject:v14 forKey:v16];
      goto LABEL_20;
    }

    v8 = v24;
LABEL_16:
    v17 = [(UIImage *)self _canEncodeAsCatalogData:v8];
    v18 = v24;
    if (v17)
    {
      v11 = _UIImageName(self);
      v19 = [(UIImage *)self _primitiveImageAsset];
      v14 = [v19 _catalogData];

      if (v14)
      {
        [v24 encodeObject:v11 forKey:@"UIImageCatalogAssetName"];
        v16 = @"UIImageCatalogData";
        goto LABEL_19;
      }

      v18 = v24;
    }

    [(UIImage *)self _encodeDataWithCoder:v18 imageName:v4];
    goto LABEL_24;
  }

  v9 = @"UIIsKitImage";
LABEL_8:
  [v24 encodeBool:1 forKey:v9];
  [v24 encodeObject:v4 forKey:@"UIImageName"];
LABEL_24:
  if (![(UIImage *)self _canEncodeWithName:v4 coder:v24]|| ![(UIImage *)self isMemberOfClass:objc_opt_class()]|| [(UIImage *)self _isSymbolImage])
  {
    [(UIImage *)self _encodePropertiesWithCoder:v24];
  }

  [v24 encodeObject:self->_configuration forKey:@"UIImageConfiguration"];
  v20 = [(UIImageConfiguration *)self->_configuration _effectiveTraitCollectionForImageLookup];
  [v24 encodeObject:v20 forKey:@"UIImageTraitCollection"];

  [(UIImage *)self variableValue];
  if (v21 != INFINITY)
  {
    [v24 encodeDouble:@"UIImageVariableValue" forKey:?];
  }

  [v24 encodeBool:HIWORD(*&self->_imageFlags) & 1 forKey:@"UIImageIsFlippedInRightToLeft"];
  v22 = [self accessibilityLabel];
  [v24 encodeObject:v22 forKey:@"UIImageAccessibilityLabel"];

  v23 = [self accessibilityLanguage];
  [v24 encodeObject:v23 forKey:@"UIImageAccessibilityLanguage"];
}

- (UIImage)initWithCoder:(id)a3
{
  v4 = a3;
  if (![v4 decodeBoolForKey:@"UIKitDidEncode"])
  {
    v9 = 0;
    goto LABEL_53;
  }

  if ([v4 containsValueForKey:@"UIImageData"] & 1) != 0 || (objc_msgSend(v4, "containsValueForKey:", @"UIImageCatalogData"))
  {
    goto LABEL_16;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageName"];
  if (![v5 length])
  {
    goto LABEL_15;
  }

  v6 = [v4 decodeBoolForKey:@"UIIsSystemImage"];
  v7 = [v4 decodeBoolForKey:@"UIIsKitImage"];
  if (v6)
  {
    v8 = +[UIImage _systemImageNamed:withConfiguration:allowPrivate:](UIImage, "_systemImageNamed:withConfiguration:allowPrivate:", v5, 0, [v4 decodeBoolForKey:@"UIIsPrivateSystemImage"]);
    goto LABEL_10;
  }

  if (v7)
  {
    v8 = _UIImageWithName(v5);
LABEL_10:
    v10 = v8;
    if (v8)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageBundleIdentifier"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageBundleLibraryName"];
  v14 = [MEMORY[0x1E696AAE8] _bundleWithIdentifier:v12 andLibraryName:v13];
  v10 = [UIImage imageNamed:v5 inBundle:v14 withConfiguration:0];

  if (!v10)
  {
LABEL_15:

LABEL_16:
    if (([v4 containsValueForKey:@"UIImageCatalogData"] & 1) == 0)
    {
      v9 = [(UIImage *)self init];
      v10 = 0;
      goto LABEL_34;
    }

    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageCatalogAssetName"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageCatalogData"];
    if ([v5 length] && v15)
    {
      v16 = [_UIAssetManager alloc];
      v17 = +[UIDevice currentDevice];
      v18 = -[_UIAssetManager initWithData:idiom:error:](v16, "initWithData:idiom:error:", v15, [v17 userInterfaceIdiom], 0);

      if (v18)
      {
        v10 = [(_UIAssetManager *)v18 imageNamed:v5 configuration:0];
        v19 = [(UIImage *)v10 _primitiveImageAsset];
        [v19 _setStronglyRetainsAssetManager:1];

        if (v10)
        {
          v20 = [(UIImage *)self isMemberOfClass:objc_opt_class()];

          if (!v20)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }
      }
    }

    v10 = 0;
LABEL_30:

    v9 = [(UIImage *)self init];
    if (!v10)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_11:
  if (![v5 length])
  {
    goto LABEL_30;
  }

  v11 = [(UIImage *)self isMemberOfClass:objc_opt_class()];

  if ((v11 & 1) == 0)
  {
LABEL_13:
    v9 = [(UIImage *)self init];
LABEL_31:
    if ([(_UIImageContent *)v10->_content isCGImage])
    {
      v26 = CGImageRetain([(UIImage *)v10 CGImage]);
      if (!v26)
      {
LABEL_33:
        v27 = +[_UIImageContent empty];
        content = v9->_content;
        v9->_content = v27;

        goto LABEL_36;
      }

LABEL_35:
      [v4 decodeFloatForKey:@"UIScale"];
      v31 = [[_UIImageCGImageContent alloc] initWithCGImage:v26 scale:v30];
      v32 = v9->_content;
      v9->_content = &v31->super;

      CGImageRelease(v26);
      goto LABEL_36;
    }

LABEL_34:
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageData"];
    v26 = _UIImageRefFromData(v29, 0, 0, 0);

    if (!v26)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_22:
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageConfigurationClass"];
  if (![v21 conformsToProtocol:&unk_1EFFF8ED0] || (objc_msgSend(v4, "decodeObjectOfClass:forKey:", v21, @"UIImageConfiguration"), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageSymbolConfiguration"];
    if (!v22)
    {
      v9 = v10;
      v10 = v9;
LABEL_50:

      self = v10;
      goto LABEL_51;
    }
  }

  v23 = v22;
  v24 = [objc_alloc(objc_opt_class()) _initWithOtherImage:v10];

  v9 = [(UIImage *)v24 imageWithConfiguration:v23];

  v25 = [v4 decodeBoolForKey:@"UIKitWantsProperties"];
  v10 = v24;
  self = v24;
  if (v25)
  {
LABEL_36:
    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFFFFE3 | (4 * ([v4 decodeIntForKey:@"UIImageOrientation"] & 7)));
    if ([v4 containsValueForKey:@"UIImageSizeInPixels"])
    {
      [v4 decodeCGSizeForKey:@"UIImageSizeInPixels"];
    }

    else
    {
      v35 = (v9->_imageFlags >> 2) & 7;
      [(_UIImageContent *)v9->_content sizeInPixels];
      [UIImage _applyOrientation:v35 toContentSizeInPixels:?];
    }

    v9->_sizeInPixels.width = v33;
    v9->_sizeInPixels.height = v34;
    if ([v4 decodeBoolForKey:@"UIHasPattern"])
    {
      v36 = 128;
    }

    else
    {
      v36 = 0;
    }

    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFFFF7F | v36);
    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFFF9FF | (([v4 decodeIntForKey:@"UIRenderingMode"] & 3) << 9));
    [v4 decodeUIEdgeInsetsForKey:@"UIImageAlignmentRectInsets"];
    v9->_alignmentRectInsets.top = v37;
    v9->_alignmentRectInsets.left = v38;
    v9->_alignmentRectInsets.bottom = v39;
    v9->_alignmentRectInsets.right = v40;
    if ([v4 containsValueForKey:@"UIImageContentInsets"])
    {
      [v4 decodeUIEdgeInsetsForKey:@"UIImageContentInsets"];
      v9->_contentInsets.top = v41;
      v9->_contentInsets.left = v42;
      v9->_contentInsets.bottom = v43;
      v9->_contentInsets.right = v44;
    }

    if ([v4 containsValueForKey:@"UIBaselineOffsetFromBottom"])
    {
      [v4 decodeFloatForKey:@"UIBaselineOffsetFromBottom"];
      v9->_baselineOffsetFromBottom = v45;
      *&v9->_imageFlags |= 0x1000u;
    }

    if ([v4 decodeBoolForKey:@"UIImageIsFlippedInRightToLeft"])
    {
      v46 = 0x10000;
    }

    else
    {
      v46 = 0;
    }

    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFEFFFF | v46);
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAccessibilityLabel"];
    [v9 setAccessibilityLabel:v47];

    self = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAccessibilityLanguage"];
    [v9 setAccessibilityLanguage:self];
    goto LABEL_50;
  }

LABEL_51:
  if ([v4 containsValueForKey:@"UIImageVariableValue"])
  {
    [v4 decodeDoubleForKey:@"UIImageVariableValue"];
    v48 = [(UIImage *)v9 _imageWithVariableValue:?];

    v9 = v48;
  }

LABEL_53:

  return v9;
}

+ (CGSize)_applyOrientation:(int64_t)a3 toContentSizeInPixels:(CGSize)result
{
  if ((a3 & 2) != 0)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if ((a3 & 2) != 0)
  {
    result.height = result.width;
  }

  v5 = height;
  result.width = v5;
  return result;
}

- (void)setFlipsForRightToLeftLayoutDirection:(BOOL)a3
{
  v3 = a3;
  [(UIImage *)self willChangeValueForKey:@"flipsForRightToLeftLayoutDirection"];
  if (v3)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  self->_imageFlags = (*&self->_imageFlags & 0xFFFEFFFF | v5);

  [(UIImage *)self didChangeValueForKey:@"flipsForRightToLeftLayoutDirection"];
}

- (int64_t)_imageOrientationConsideringRTL
{
  v3 = [UIApp userInterfaceLayoutDirection];

  return [(UIImage *)self _imageOrientationConsideringRTLForUserInterfaceLayoutDirection:v3];
}

- (int64_t)_imageOrientationConsideringRTLForUserInterfaceLayoutDirection:(int64_t)a3
{
  v5 = [(UIImage *)self imageOrientation];
  if ((*(&self->_imageFlags + 2) & 1) == 0)
  {
    return v5;
  }

  v7 = +[UIView _enableRTL];
  if (a3 != 1 || !v7 || [(UIImage *)self _isRTLImage])
  {
    return v5;
  }

  v8 = objc_opt_class();

  return [v8 _horizontallyFlippedOrientationForOrientation:v5];
}

- (int64_t)_imageOrientationForSymbolLayerConsideringRTLForUserInterfaceLayoutDirection:(int64_t)a3
{
  v4 = [(UIImage *)self _imageOrientationConsideringRTLForUserInterfaceLayoutDirection:a3];
  if (![(UIImage *)self isSymbolImage]|| (*&self->_imageFlags & 0x20) == 0)
  {
    return v4;
  }

  return [UIImage _horizontallyFlippedOrientationForOrientation:v4];
}

- (BOOL)_isRTLImage
{
  if (([(UIImage *)self imageOrientation]& 4) == 0)
  {
    return 0;
  }

  v4 = [(UIImage *)self configuration];
  v5 = [v4 traitCollection];
  v3 = [v5 layoutDirection] == 1;

  return v3;
}

+ (int64_t)_horizontallyFlippedOrientationForOrientation:(int64_t)a3
{
  if (a3 > 3)
  {
    if ((a3 - 4) >= 2)
    {
      if (a3 == 6)
      {
        return 3;
      }

      if (a3 == 7)
      {
        return 2;
      }

      return a3;
    }

    return [a1 _mirroredImageOrientationForOrientation:?];
  }

  if (a3 < 2)
  {
    return [a1 _mirroredImageOrientationForOrientation:?];
  }

  if (a3 == 2)
  {
    return 7;
  }

  if (a3 == 3)
  {
    return 6;
  }

  return a3;
}

- (UIImage)imageWithHorizontallyFlippedOrientation
{
  v2 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v2 _mirrorImageOrientation];

  return v2;
}

- (CGRect)_contentRectInPixels
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  width = self->_sizeInPixels.width;
  height = self->_sizeInPixels.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)_subimageInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)_bundle
{
  v2 = [(UIImage *)self _primitiveImageAsset];
  v3 = [v2 _assetManager];
  v4 = [v3 bundle];

  return v4;
}

+ (id)_imageWithCGPDFPage:(CGPDFPage *)a3
{
  v3 = [[a1 alloc] _initWithCGPDFPage:a3];

  return v3;
}

+ (id)_imageWithCGPDFPage:(CGPDFPage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v5 = [[a1 alloc] _initWithCGPDFPage:a3 scale:a5 orientation:a4];

  return v5;
}

- (id)_initWithCGPDFPage:(CGPDFPage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  if (a3)
  {
    v7 = [[_UIImageCGPDFPageContent alloc] initWithCGPDFPage:a3 scale:a4];
    v8 = [(UIImage *)self _initWithContent:v7 orientation:a5];
    self = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)_CGPDFPageSize
{
  [(_UIImageContent *)self->_content CGPDFPageSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_scaleFromPDF
{
  if (![(_UIImageContent *)self->_content isCGPDFPage])
  {
    return 1.0;
  }

  content = self->_content;

  [(_UIImageContent *)content scale];
  return result;
}

- (CGSize)_sizeInPixelsFromPDF
{
  if ([(_UIImageContent *)self->_content isCGPDFPage])
  {
    [(UIImage *)self scale];
    v4 = v3;
    [(UIImage *)self _contentInsets];
    v6 = v5;
    v8 = v7;
    [(_UIImageContent *)self->_content sizeInPixels];
    v9 = v4 * (v6 + v8);
    v11 = v10 + v9;
    v13 = v12 + v9;
  }

  else
  {
    v11 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v13;
  result.width = v11;
  return result;
}

+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)a3
{
  v3 = [[a1 alloc] _initWithCGSVGDocument:a3];

  return v3;
}

+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v5 = [[a1 alloc] _initWithCGSVGDocument:a3 scale:a5 orientation:a4];

  return v5;
}

- (id)_initWithCGSVGDocument:(CGSVGDocument *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  if (a3)
  {
    v7 = [[_UIImageCGSVGDocumentContent alloc] initWithCGSVGDocument:a3 scale:a4];
    v8 = [(UIImage *)self _initWithContent:v7 orientation:a5];
    self = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)_CGSVGDocumentSize
{
  [(_UIImageContent *)self->_content CGSVGDocumentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIImage)resizableImageWithCapInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode
{
  v5 = [[_UIResizableImage alloc] initWithImage:self capInsets:capInsets.top, capInsets.left, capInsets.bottom, capInsets.right];
  v6 = v5;
  if (resizingMode == UIImageResizingModeStretch)
  {
    [(_UIResizableImage *)v5 _setAlwaysStretches:1];
  }

  return v6;
}

- (UIImage)imageWithRenderingMode:(UIImageRenderingMode)renderingMode
{
  if (((self->_imageFlags >> 9) & 3) == renderingMode)
  {
    v4 = self;
  }

  else
  {
    os_unfair_lock_lock(&stru_1ED498CF0);
    v4 = [(NSMapTable *)self->_siblingImages objectForKey:renderingMode + 1];
    os_unfair_lock_unlock(&stru_1ED498CF0);
    if (!v4)
    {
      v4 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
      [(UIImage *)v4 _setRenderingMode:renderingMode];
      objc_storeStrong(&v4->_siblingImages, self->_siblingImages);
      os_unfair_lock_lock(&stru_1ED498CF0);
      siblingImages = self->_siblingImages;
      if (!siblingImages)
      {
        v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:256 valueOptions:5];
        v8 = self->_siblingImages;
        self->_siblingImages = v7;

        [(NSMapTable *)self->_siblingImages setObject:self forKey:((self->_imageFlags >> 9) & 3) + 1];
        siblingImages = self->_siblingImages;
      }

      [(NSMapTable *)siblingImages setObject:v4 forKey:renderingMode + 1];
      os_unfair_lock_unlock(&stru_1ED498CF0);
    }
  }

  return v4;
}

- (int64_t)_effectiveRenderingModeWithSymbolConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(UIImage *)self renderingMode];
  if (v5 == UIImageRenderingModeAutomatic)
  {
    if (-[UIImage _isMultiColorSymbolImage](self, "_isMultiColorSymbolImage") && ([v4 _prefersMulticolor] & 1) != 0)
    {
      v5 = UIImageRenderingModeAlwaysOriginal;
    }

    else if ([(UIImage *)self _isSymbolImage])
    {
      v5 = UIImageRenderingModeAlwaysTemplate;
    }

    else
    {
      v5 = UIImageRenderingModeAlwaysOriginal;
    }
  }

  return v5;
}

- (UIImage)imageRestrictedToStandardDynamicRange
{
  v2 = self;
  if ([(UIImage *)v2 isHighDynamicRange])
  {
    v3 = [(_UIImageContent *)v2->_content makeSDRVersion];
    v4 = [(UIImage *)v2 _imageWithContent:v3];

    v2 = v4;
  }

  return v2;
}

+ (UIEdgeInsets)_edgeInsetsForStylePresetNames:(id)a3 scale:(double)a4 traitCollection:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      v13 = *off_1E70ECA38;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          if (([v15 isEqualToString:v13] & 1) == 0 && !objc_msgSend(v15, "isEqualToString:", @"_UIKitBoldTintStyle"))
          {
            v23 = 0.0;
            v24 = 0.0;
            v25 = 0.0;
            v26 = 0.0;
            goto LABEL_23;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = v9;

    v9 = _UIKitGetTextEffectsCatalog();
    v17 = objc_alloc_init(MEMORY[0x1E6999430]);
    [v17 setState:0];
    [v17 setValue:0];
    v18 = [(UITraitCollection *)v8 _styleEffectAppearanceName];
    [v17 setAppearanceName:v18];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v9 styledInsetsForStylePresetName:*(*(&v36 + 1) + 8 * j) styleConfiguration:v17 foregroundColor:0 scale:{a4, v36}];
          v26 = v26 - v28 / a4;
          v25 = v25 - v29 / a4;
          v24 = v24 - v30 / a4;
          v23 = v23 - v31 / a4;
        }

        v21 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v21);
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
    }

LABEL_23:
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
  }

  v32 = v26;
  v33 = v25;
  v34 = v24;
  v35 = v23;
  result.right = v35;
  result.bottom = v34;
  result.left = v33;
  result.top = v32;
  return result;
}

- (id)_imageWithStylePresets:(id)a3 tintColor:(id)a4 traitCollection:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[UIImage renderingMode](self, "renderingMode") == UIImageRenderingModeAlwaysOriginal || (-[UIImage content](self, "content"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isCGImage], v11, (v12 & 1) == 0))
  {
    v35 = self;
  }

  else
  {
    v13 = _UIKitGetTextEffectsCatalog();
    if (v13)
    {
      v54 = v10;
      v14 = [(UITraitCollection *)v10 _styleEffectAppearanceName];
      v15 = [(UIImage *)self CGImage];
      v16 = objc_alloc_init(MEMORY[0x1E6999430]);
      [v16 setState:0];
      [v16 setValue:0];
      v52 = v14;
      [v16 setAppearanceName:v14];
      v53 = self;
      [(UIImage *)self scale];
      v18 = v17;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v55 = v8;
      obj = v8;
      v19 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v58;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        v26 = 0.0;
        v27 = -1.0 / v18;
        do
        {
          v28 = 0;
          v29 = v21;
          do
          {
            if (*v58 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v57 + 1) + 8 * v28);
            [v16 setForegroundColorShouldTintEffects:{objc_msgSend(v30, "isEqualToString:", @"_UIKitBoldTintStyle"}];
            v21 = [v13 imageByStylingImage:v15 stylePresetName:v30 styleConfiguration:v16 foregroundColor:objc_msgSend(v9 scale:{"CGColor"), v18}];

            if (v21)
            {
              v15 = [v21 image];
            }

            [v13 styledInsetsForStylePresetName:v30 styleConfiguration:v16 foregroundColor:0 scale:v18];
            v23 = v23 + v27 * v31;
            v24 = v24 + v27 * v32;
            v25 = v25 + v27 * v33;
            v26 = v26 + v27 * v34;
            ++v28;
            v29 = v21;
          }

          while (v20 != v28);
          v20 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v20);
      }

      else
      {
        v21 = 0;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        v26 = 0.0;
      }

      v36 = [v21 image];
      if (v36 && (v37 = [objc_alloc(objc_opt_class()) initWithCGImage:v36 scale:-[UIImage imageOrientation](v53 orientation:{"imageOrientation"), v18}]) != 0)
      {
        v35 = v37;
        *(v37 + 104) = *(v37 + 104) & 0xFFFFF9FF | 0x200;
        v10 = v54;
        v8 = v55;
        if ([(UIImage *)v53 _isResizable])
        {
          [(UIImage *)v53 capInsets];
          v42 = v38;
          if (v39 != 0.0 || v38 != 0.0 || v41 != 0.0 || (v43 = v23, v44 = v24, v45 = v25, v46 = v26, v40 != 0.0))
          {
            if (v42 == 0.0 && v40 == 0.0)
            {
              v44 = v24 + v39;
              v46 = v26 + v41;
              v43 = v42;
              v45 = v40;
            }

            else
            {
              v43 = v23 + v42;
              if (v39 == 0.0 && v41 == 0.0)
              {
                v45 = v25 + v40;
                v44 = v39;
                v46 = v41;
              }

              else
              {
                v44 = v24 + v39;
                v45 = v25 + v40;
                v46 = v26 + v41;
              }
            }
          }

          [(UIImage *)v35 _setCapInsets:v43, v44, v45, v46];
          if ([(UIImage *)v53 resizingMode]== UIImageResizingModeStretch)
          {
            [(UIImage *)v35 _setAlwaysStretches:1];
          }
        }

        [(UIImage *)v53 alignmentRectInsets];
        [(UIImage *)v35 _setAlignmentRectInsets:v23 + v47, v24 + v48, v25 + v49, v26 + v50];
      }

      else
      {
        NSLog(&cfstr_SUnexpectedlyF.isa, "[UIImage _imageWithStylePresets:tintColor:traitCollection:]");
        v35 = v53;
        v10 = v54;
        v8 = v55;
      }
    }

    else
    {
      if (_imageWithStylePresets_tintColor_traitCollection__once != -1)
      {
        dispatch_once(&_imageWithStylePresets_tintColor_traitCollection__once, &__block_literal_global_447_0);
      }

      v35 = self;
    }
  }

  return v35;
}

void __60__UIImage__imageWithStylePresets_tintColor_traitCollection___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "[UIImage _imageWithStylePresets:tintColor:traitCollection:]_block_invoke";
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "%s. Unexpectedly missing the text-effects catalog.", &v1, 0xCu);
  }
}

- (CGSize)_sizeWithHairlineThickening:(BOOL)a3 forTraitCollection:(id)a4
{
  v4 = a3;
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self;
  v8 = v7;
  if (v6)
  {
    imageAsset = v7->_imageAsset;
    if (imageAsset)
    {
      v10 = [(UIImageAsset *)imageAsset imageWithTraitCollection:v6];

      v8 = v10;
    }
  }

  [v8 size];
  v12 = v11;
  v14 = v13;
  v15 = [v8 _suppressesAccessibilityHairlineThickening];
  v16 = MEMORY[0x1E695E0F0];
  if (!v15 && v4)
  {
    v27[0] = @"_UIKitBoldTintStyle";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  [v8 scale];
  [UIImage _edgeInsetsForStylePresetNames:v16 scale:v6 traitCollection:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v12 + v20 + v24;
  v26 = v14 + v18 + v22;
  result.height = v26;
  result.width = v25;
  return result;
}

- (UIEdgeInsets)_inverseAlignmentRectInsets
{
  v2 = -self->_alignmentRectInsets.top;
  v3 = -self->_alignmentRectInsets.left;
  v4 = -self->_alignmentRectInsets.bottom;
  v5 = -self->_alignmentRectInsets.right;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_setAlignmentRectInsets:(UIEdgeInsets)a3
{
  if ((*(&self->_imageFlags + 1) & 0x80) == 0)
  {
    self->_alignmentRectInsets = a3;
  }
}

- (UIImage)imageWithAlignmentRectInsets:(UIEdgeInsets)alignmentInsets
{
  right = alignmentInsets.right;
  bottom = alignmentInsets.bottom;
  left = alignmentInsets.left;
  top = alignmentInsets.top;
  v7 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v7 _setAlignmentRectInsetsExplicitly:{top, left, bottom, right}];

  return v7;
}

- (BOOL)_isColoredSymbolImage
{
  if ([(UIImage *)self _isMultiColorSymbolImage]|| [(UIImage *)self _isHierarchicalColorSymbolImage])
  {
    return 1;
  }

  return [(UIImage *)self _isPaletteColorSymbolImage];
}

- (BOOL)_isIconImage
{
  v2 = [(UIImage *)self _primitiveImageAsset];
  v3 = [v2 _isIconAsset];

  return v3;
}

- (id)_outlinePath
{
  v3 = [(UIImage *)self content];
  v4 = [v3 outlinePath];

  [(UIImage *)self scale];
  CGAffineTransformMakeScale(&v7, 1.0 / v5, 1.0 / v5);
  [v4 applyTransform:&v7];

  return v4;
}

- (BOOL)_isSameSymbolImageExceptVariableValue:(id)a3
{
  content = self->_content;
  v4 = [a3 content];
  LOBYTE(content) = [(_UIImageContent *)content _isSameSymbolImageContentExceptVariableValue:v4];

  return content;
}

- (void)_setBaselineOffsetFromBottom:(double)a3
{
  imageFlags = self->_imageFlags;
  if ((*&imageFlags & 0x2000) == 0)
  {
    self->_baselineOffsetFromBottom = a3;
    self->_imageFlags = (*&imageFlags | 0x1000);
  }
}

- (double)_capHeight
{
  if ((*(&self->_imageFlags + 2) & 2) != 0)
  {
    return self->_capHeight;
  }

  [(UIImage *)self size];
  v4 = v3;
  [(UIImage *)self baselineOffsetFromBottom];
  return v4 - v5;
}

- (UIImage)imageWithBaselineOffsetFromBottom:(CGFloat)baselineOffset
{
  v4 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v4 _setBaselineOffsetFromBottomExplicitly:baselineOffset];

  return v4;
}

- (void)_cacheRendition:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Setting cached renditions from non-main thread is not safe!", buf, 2u);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &_cacheRendition_forKey____s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Setting cached renditions from non-main thread is not safe!", v13, 2u);
      }
    }
  }

  v8 = [(UIImage *)self _primitiveImageAsset];
  v9 = v8;
  if (v8)
  {
    [v8 _cacheRendition:v6 forKey:v7];
  }

  else
  {
    v10 = [(UIImage *)self _localRenditionCache:1];
    [v10 setObject:v6 forKey:v7];
  }
}

- (id)_cachedRenditionForKey:(id)a3
{
  v4 = a3;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Accessing cached renditions from non-main thread is not safe!", buf, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_cachedRenditionForKey____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Accessing cached renditions from non-main thread is not safe!", v11, 2u);
      }
    }
  }

  v5 = [(UIImage *)self _primitiveImageAsset];
  v6 = [v5 _cachedRenditionForKey:v4];

  if (!v6)
  {
    v7 = [(UIImage *)self _localRenditionCache:0];
    v6 = [v7 objectForKey:v4];
  }

  return v6;
}

- (id)_localRenditionCache:(BOOL)a3
{
  v3 = a3;
  if ((*(&self->_imageFlags + 2) & 8) != 0)
  {
    v5 = objc_getAssociatedObject(self, &_UIImageLocalRenditionCacheKey);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v5 = objc_opt_new();
    [(UIImage *)self _setLocalRenditionCache:v5];
  }

LABEL_6:

  return v5;
}

- (void)_setLocalRenditionCache:(id)a3
{
  if (a3 || (*&self->_imageFlags & 0x80000) != 0)
  {
    objc_setAssociatedObject(self, &_UIImageLocalRenditionCacheKey, a3, 1);
    self->_imageFlags = (*&self->_imageFlags & 0xFFF7FFFF | ((a3 != 0) << 19));
  }
}

- (id)_imageWithSymbolMetricsFromNamedVectorGlyph:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v5 _setSymbolMetricsFromNamedVectorGlyph:v4];

  return v5;
}

- (void)_setSymbolMetricsFromNamedVectorGlyph:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 scale];
    v40 = v5;
    [v4 contentBounds];
    v7 = v6;
    v9 = v8;
    rect = v10;
    v12 = v11;
    [v4 alignmentRect];
    x = v45.origin.x;
    width = v45.size.width;
    y = v45.origin.y;
    v38 = v45.origin.y;
    height = v45.size.height;
    v43 = v45.size.height;
    MinY = CGRectGetMinY(v45);
    v46.origin.x = v7;
    v46.origin.y = v9;
    v46.size.width = rect;
    v46.size.height = v12;
    v39 = MinY - CGRectGetMinY(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = v7;
    v48.origin.y = v9;
    v48.size.width = rect;
    v48.size.height = v12;
    v18 = MinX - CGRectGetMinX(v48);
    v49.origin.x = v7;
    v49.origin.y = v9;
    v49.size.width = rect;
    v49.size.height = v12;
    MaxY = CGRectGetMaxY(v49);
    v50.origin.x = x;
    v50.origin.y = v38;
    v50.size.width = width;
    v50.size.height = v43;
    v20 = MaxY - CGRectGetMaxY(v50);
    v51.origin.x = v7;
    v51.origin.y = v9;
    v51.size.width = rect;
    v51.size.height = v12;
    MaxX = CGRectGetMaxX(v51);
    v52.origin.x = x;
    v52.origin.y = v38;
    v52.size.width = width;
    v52.size.height = v43;
    v22 = MaxX - CGRectGetMaxX(v52);
    if (v18 >= 0.0)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0.0;
    }

    if (v18 >= 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = -v18;
    }

    if (v22 >= 0.0)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0.0;
    }

    if (v22 >= 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = -v22;
    }

    [(UIImage *)self _setContentInsets:v39, v23, v20, v25, *&v38];
    [v4 baselineOffset];
    v28 = v27;
    v29 = v20 + v27;
    UIRoundToScale(v20 + v27, v40);
    [(UIImage *)self _setBaselineOffsetFromBottom:?];
    [v4 capHeight];
    UIRoundToScale(v30, v40);
    [(UIImage *)self _setCapHeight:?];
    [v4 pointSize];
    CTFontGetAscentForSystemFontOfSize();
    v32 = v31;
    [v4 pointSize];

    CTFontGetDescentForSystemFontOfSize();
    v34 = -v33;
    UIRoundToScale(v32, v40);
    v36 = v35;
    UIRoundToScale(v34, v40);

    [(UIImage *)self _setAlignmentRectInsets:-(v36 - (v39 + v43 - v28)), v24, -(-v37 - v29), v26];
  }
}

- (UIImage)imageByApplyingSymbolConfiguration:(UIImageSymbolConfiguration *)configuration
{
  v4 = configuration;
  v5 = [(UIImage *)self symbolConfiguration];
  v6 = [v5 configurationByApplyingConfiguration:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = [(UIImage *)self imageWithConfiguration:v8];

  return v9;
}

- (UIImage)imageWithConfiguration:(UIImageConfiguration *)configuration
{
  v4 = [UIImageConfiguration _completeConfiguration:0 fromConfiguration:?];
  if ([(UIImage *)self _isSymbolImage])
  {
    v5 = [(UIImage *)self symbolConfiguration];
    v6 = v4;
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = objc_opt_class();
    if (v7 == objc_opt_class())
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_5:
        v9 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
        v10 = [v9 configurationByApplyingConfiguration:v6];

        if (!v10)
        {
          goto LABEL_22;
        }

LABEL_21:
        if ([v10 _isUnspecified])
        {
LABEL_22:
          v17 = 0;
LABEL_32:

          goto LABEL_33;
        }

        v10 = v10;
        v19 = v5;
        v20 = v19;
        if (v10 == v19)
        {

          v17 = 0;
          v23 = v10;
        }

        else
        {
          if (v19)
          {
            v21 = [v10 isEqual:v19];

            if (v21)
            {
              goto LABEL_22;
            }
          }

          else
          {
          }

          v23 = [(UIImage *)self _primitiveImageAsset];
          v17 = [v23 imageWithConfiguration:v10];
        }

        goto LABEL_32;
      }
    }

    v10 = v6;
    goto LABEL_21;
  }

  v11 = self->_configuration;
  v12 = v4;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

LABEL_16:
    v17 = 0;
    goto LABEL_39;
  }

  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
  }

  else
  {
    v16 = [(UIImageConfiguration *)v12 isEqual:v13];

    if (v16)
    {
      goto LABEL_16;
    }
  }

  v18 = [(UIImage *)self _primitiveImageAsset];
  v5 = v18;
  if (v18)
  {
    v17 = [v18 imageWithConfiguration:v12];
LABEL_33:
    v22 = 1;
    goto LABEL_34;
  }

  v17 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v17 _setConfiguration:v12];
  v22 = 0;
LABEL_34:

  if (v17 && ([v17 isEqual:self] & 1) == 0)
  {
    if (v22)
    {
      v24 = [objc_alloc(objc_opt_class()) _initWithOtherImage:v17];

      v17 = v24;
    }

    [(UIImage *)self variableValue];
    v25 = [v17 _imageWithVariableValue:?];

    [(UIImage *)self _configureImage:v25 assumePreconfigured:1];
    self = v25;
    v17 = v25;
  }

LABEL_39:
  v26 = self;

  return self;
}

- (UIImage)imageWithTintColor:(UIColor *)color
{
  v4 = color;
  v5 = [(UIImage *)self _imageTintedWithColor:v4 renderingMode:[(UIImage *)self renderingMode] withUpdatedCGImage:0];

  return v5;
}

- (id)_flatImageWithColor:(id)a3
{
  v4 = a3;
  v5 = [(UIImage *)self _imageTintedWithColor:v4 renderingMode:[(UIImage *)self renderingMode] withUpdatedCGImage:1];

  return v5;
}

- (id)_flatImageWithWhite:(double)a3 alpha:(double)a4
{
  v5 = [UIColor colorWithWhite:a3 alpha:a4];
  v6 = [(UIImage *)self _flatImageWithColor:v5];

  return v6;
}

- (id)_imageTintedWithColor:(id)a3 renderingMode:(int64_t)a4 withUpdatedCGImage:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [(UIImage *)self content];
    [v9 size];
    v11 = v10;
    v13 = v12;

    v14 = +[UIGraphicsImageRendererFormat defaultFormat];
    [(UIImage *)self scale];
    [v14 setScale:?];
    v15 = [[UIGraphicsImageRenderer alloc] initWithSize:v14 format:v11, v13];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __66__UIImage__imageTintedWithColor_renderingMode_withUpdatedCGImage___block_invoke;
    v26 = &unk_1E710BF90;
    v29 = v11;
    v30 = v13;
    v27 = v8;
    v28 = self;
    v16 = [(UIGraphicsImageRenderer *)v15 imageWithActions:&v23];

    v17 = v16;
    if ([v17 CGImage] && -[_UIImageContent isCGImage](self->_content, "isCGImage"))
    {
      v18 = -[_UIImageContent contentWithCGImage:](self->_content, "contentWithCGImage:", [v16 CGImage]);
      v19 = [(UIImage *)self _imageWithContent:v18];

      v16 = v19;
    }
  }

  else
  {
    v16 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  }

  [v16 _setColorForFlattening:v8];
  [v16 _setRenderingMode:a4];
  if ([(UIImage *)self _isResizable])
  {
    [(UIImage *)self capInsets];
    v20 = [v16 resizableImageWithCapInsets:?];

    v16 = v20;
  }

  if (*(&self->_imageFlags + 2))
  {
    v21 = [v16 imageFlippedForRightToLeftLayoutDirection];

    v16 = v21;
  }

  return v16;
}

uint64_t __66__UIImage__imageTintedWithColor_renderingMode_withUpdatedCGImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) set];
  UIRectFillUsingOperation(1, 0.0, 0.0, *(a1 + 48), *(a1 + 56));
  [*(a1 + 40) _contentInsets];
  v4 = *(a1 + 40);

  return [v4 drawAtPoint:22 blendMode:-v3 alpha:{-v2, 1.0}];
}

- (id)_colorForName:(id)a3 withTraitCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIImage *)self _primitiveImageAsset];
  v9 = [v8 _assetManager];
  v10 = [v9 colorNamed:v7 withTraitCollection:v6];

  return v10;
}

- (id)_imageWithContentInsets:(UIEdgeInsets)a3 withUpdatedCGImage:(BOOL)a4
{
  v4 = a4;
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(UIImage *)self _isResizable]|| ((v10 = fmax(top, 0.0), v11 = fmax(left, 0.0), v12 = fmax(bottom, 0.0), v13 = fmax(right, 0.0), [(UIImage *)self _contentInsets], v11 == v17) ? (v18 = v10 == v14) : (v18 = 0), v18 ? (v19 = v13 == v16) : (v19 = 0), v19 ? (v20 = v12 == v15) : (v20 = 0), v20))
  {
    v31 = self;
    goto LABEL_16;
  }

  if (v4)
  {
    v21 = v10 - self->_contentInsets.top;
    v22 = v11 - self->_contentInsets.left;
    v23 = v12 - self->_contentInsets.bottom;
    v24 = v13 - self->_contentInsets.right;
    [(_UIImageContent *)self->_content size];
    v27 = [[UIGraphicsImageRenderer alloc] initWithSize:v24 + v22 + v25, v23 + v21 + v26];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __54__UIImage__imageWithContentInsets_withUpdatedCGImage___block_invoke;
    v41[3] = &unk_1E70F6F38;
    v41[4] = self;
    *&v41[5] = v21;
    *&v41[6] = v22;
    *&v41[7] = v23;
    *&v41[8] = v24;
    v28 = [(UIGraphicsImageRenderer *)v27 imageWithActions:v41];

    v29 = [(UIImage *)self content];
    v30 = [v29 contentWithCGImage:{objc_msgSend(v28, "CGImage")}];
    v31 = [(UIImage *)self _imageWithContent:v30];

    if ([(_UIImageContent *)self->_content canScaleImageToTargetResolution])
    {
      goto LABEL_21;
    }

    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = v31;
  }

  else
  {
    v36 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    v31 = v36;
    v32 = v10;
    v33 = v11;
    v34 = v12;
    v35 = v13;
  }

  [(UIImage *)v36 _setContentInsetsExplicitly:v32, v33, v34, v35];
LABEL_21:
  if ([(UIImage *)self hasBaseline])
  {
    [(UIImage *)self baselineOffsetFromBottom];
    v39 = v38;
    [(UIImage *)self _contentInsets];
    [(UIImage *)v31 _setBaselineOffsetFromBottom:v12 + v39 + v40];
  }

LABEL_16:

  return v31;
}

- (void)_setContentInsets:(UIEdgeInsets)a3
{
  if ((*(&self->_imageFlags + 1) & 0x40) == 0)
  {
    content = self->_content;
    v7 = *&self->_contentInsets.bottom;
    v8 = *&self->_contentInsets.top;
    self->_contentInsets.top = fmax(a3.top, 0.0);
    self->_contentInsets.left = fmax(a3.left, 0.0);
    self->_contentInsets.bottom = fmax(a3.bottom, 0.0);
    self->_contentInsets.right = fmax(a3.right, 0.0);
    [(_UIImageContent *)content scale];
    v6 = vmulq_n_f64(vsubq_f64(vaddq_f64(*&self->_contentInsets.top, *&self->_contentInsets.bottom), vaddq_f64(v8, v7)), v5);
    self->_sizeInPixels = vaddq_f64(self->_sizeInPixels, vextq_s8(v6, v6, 8uLL));
  }
}

- (void)_setContentInsetsExplicitly:(UIEdgeInsets)a3
{
  self->_contentInsets.top = fmax(a3.top, 0.0);
  self->_contentInsets.left = fmax(a3.left, 0.0);
  self->_contentInsets.bottom = fmax(a3.bottom, 0.0);
  self->_contentInsets.right = fmax(a3.right, 0.0);
  [(_UIImageContent *)self->_content scale];
  v5 = v4 * self->_contentInsets.top;
  v6 = v4 * self->_contentInsets.left;
  v7 = v4 * self->_contentInsets.bottom;
  v8 = v4 * self->_contentInsets.right;
  [(_UIImageContent *)self->_content sizeInPixels];
  self->_sizeInPixels.width = v8 + v6 + v9;
  self->_sizeInPixels.height = v7 + v5 + v10;
  [UIImage _applyOrientation:(self->_imageFlags >> 2) & 7 toContentSizeInPixels:?];
  self->_sizeInPixels.width = v11;
  self->_sizeInPixels.height = v12;
  *&self->_imageFlags |= 0x4000u;
}

- (UIEdgeInsets)padding
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)_animatedImageNamed:(id)a3 inBundle:(id)a4 compatibleWithTraitCollection:(id)a5 duration:(double)a6
{
  v8 = LoadImageSequence(a3, a4, a5, 0, 0, 0.0, 0.0, 0.0, 0.0);
  if ([v8 count])
  {
    v9 = [a1 animatedImageWithImages:v8 duration:a6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_animatedResizableImageNamed:(id)a3 inBundle:(id)a4 compatibleWithTraitCollection:(id)a5 capInsets:(UIEdgeInsets)a6 resizingMode:(int64_t)a7 duration:(double)a8
{
  v10 = LoadImageSequence(a3, a4, a5, 1, a7, a6.top, a6.left, a6.bottom, a6.right);
  if ([v10 count])
  {
    v11 = [a1 animatedImageWithImages:v10 duration:a8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (UIImage)animatedImageWithImages:(NSArray *)images duration:(NSTimeInterval)duration
{
  v5 = images;
  if ([(NSArray *)v5 count])
  {
    v6 = [[_UIAnimatedImage alloc] initWithImages:v5 duration:duration];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
  v6 = *&blendMode;
  y = point.y;
  x = point.x;
  [(UIImage *)self size];

  [(UIImage *)self drawInRect:v6 blendMode:x alpha:y, v10, v11, alpha];
}

- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect))
  {
    [(UIImage *)self size];
    if (v13 > 0.0 && v12 > 0.0)
    {
      v14 = _UIGraphicsCurrentContextScale();
      if (v14 == 0.0)
      {
        [(UIImage *)self scale];
      }

      v15 = v14;
      v26 = [(_UIImageContentLayoutDrawingTarget *)width targetWithSize:v14 scale:?];
      v16 = [_UIImageContentLayout layoutForSource:self inTarget:width withSize:height];
      v17 = v16;
      if (v16 && (*(v16 + 8) & 1) != 0)
      {
        v18 = MEMORY[0x1E695EFF8];
        ContextStack = GetContextStack(0);
        if (*ContextStack < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = ContextStack[3 * (*ContextStack - 1) + 1];
        }

        v22 = *v18;
        v21 = v18[1];
        CGContextSaveGState(v20);
        CGContextSetBlendMode(v20, blendMode);
        CGContextSetAlpha(v20, alpha);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        MinX = CGRectGetMinX(v28);
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        MinY = CGRectGetMinY(v29);
        CGContextTranslateCTM(v20, MinX, MinY);
        v25 = [v17 contentsMultiplyColor];
        if ([(UIImage *)self renderingMode]== UIImageRenderingModeAlwaysTemplate || v25)
        {
          v30.origin.x = v22;
          v30.origin.y = v21;
          v30.size.width = width;
          v30.size.height = height;
          CGContextBeginTransparencyLayerWithRect(v20, v30, 0);
          [(UIImage *)self _drawInContext:v20 rect:v17 layout:1 scale:v22 applyContentsTransform:v21, width, height, v15];
          [v25 setFill];
          v31.origin.x = v22;
          v31.origin.y = v21;
          v31.size.width = width;
          v31.size.height = height;
          UIRectFillUsingBlendMode(v31, kCGBlendModeSourceIn);
          CGContextEndTransparencyLayer(v20);
        }

        else
        {
          [(UIImage *)self _drawInContext:v20 rect:v17 layout:1 scale:v22 applyContentsTransform:v21, width, height, v15];
        }

        CGContextRestoreGState(v20);
      }
    }
  }
}

- (void)_drawInContext:(CGContext *)a3 rect:(CGRect)a4 layout:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5;
  [(UIImage *)self scale];
  [(UIImage *)self _drawInContext:a3 rect:v12 layout:0 scale:x applyContentsTransform:y, width, height, v11];
}

- (void)_drawInContext:(CGContext *)a3 rect:(CGRect)a4 layout:(id)a5 scale:(double)a6 applyContentsTransform:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a5;
  [(UIImage *)self size];
  if (v16 > 0.0 && v17 > 0.0)
  {
    v18 = v16;
    v40 = x;
    v41 = y;
    v42 = v17;
    [(UIImage *)self capInsets];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(UIImage *)self _isTiledWhenStretchedToSize:width, height];
    v43 = v26;
    v28 = (fmax(v22, v26) > 0.0) | v27;
    if (v24 > 0.0)
    {
      v28 = 1;
    }

    if (v20 <= 0.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 1;
    }

    CGContextTranslateCTM(a3, 0.0, height);
    CGContextScaleCTM(a3, 1.0, -1.0);
    if (v7)
    {
      if (v15)
      {
        [v15 contentsTransform];
      }

      else
      {
        memset(&transform, 0, sizeof(transform));
      }

      CGContextConcatCTM(a3, &transform);
    }

    if (v29)
    {
      v30 = v15;
      if (v15)
      {
        [(_UIImageContentLayout *)v15 _materializeRenditionContents];
        v31 = v42;
        if (v15[1])
        {
          v32 = v15[4];
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
        v31 = v42;
      }

      v37 = a6;
      *&transform.a = *MEMORY[0x1E695EFF8];
      transform.c = width;
      transform.d = height;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      memset(&v45, 0, sizeof(v45));
      v48.origin.x = transform.a;
      v48.origin.y = transform.b;
      v48.size.width = width;
      v48.size.height = height;
      CGRectDivide(v48, &slice, &transform, v20, CGRectMaxYEdge);
      v49.origin.x = transform.a;
      v49.origin.y = transform.b;
      v49.size.width = transform.c;
      v49.size.height = transform.d;
      CGRectDivide(v49, &v45, &remainder, v24, CGRectMinYEdge);
      if (!CGRectIsEmpty(slice))
      {
        Draw3PartSlice(a3, v32, v37, v27, 0.0, 0.0, v18, v20, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, v20, v22, v24, v43);
      }

      Draw3PartSlice(a3, v32, v37, v27, 0.0, v20, v18, v31 - v20 - v24, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v20, v22, v24, v43);
      if (!CGRectIsEmpty(v45))
      {
        Draw3PartSlice(a3, v32, v37, v27, 0.0, v31 - v24, v18, v24, v45.origin.x, v45.origin.y, v45.size.width, v45.size.height, v20, v22, v24, v43);
      }
    }

    else if ([(UIImage *)self _shouldDrawVectorContentDirectly])
    {
      [v15 drawInContext:a3 withSize:{width, height}];
    }

    else
    {
      v33 = v15;
      if (v15)
      {
        [(_UIImageContentLayout *)v15 _materializeRenditionContents];
        v34 = v40;
        v35 = v41;
        if (v15[1])
        {
          v36 = v15[4];
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
        v34 = v40;
        v35 = v41;
      }

      v38 = width;
      v39 = height;
      CGContextDrawImage(a3, *&v34, v36);
    }
  }
}

- (void)drawAsPatternInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [UIColor colorWithPatternImage:self];
  if (v7)
  {
    v11 = v7;
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    v10 = v11;
    CGContextSetFillColorWithColor(v9, [v11 CGColor]);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    CGContextFillRect(v9, v13);
    v7 = v11;
  }
}

- (id)_imageWithImageAsset:(id)a3
{
  v5 = a3;
  if (dyld_program_sdk_at_least())
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:3484 description:@"This code path should not be taken when linked against iOS 14 or newer."];
  }

  v6 = [(UIImage *)self imageAsset];
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (v7 && v6)
  {
    v9 = [v6 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v10 = self;
    goto LABEL_12;
  }

LABEL_11:
  v10 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [(UIImage *)v10 _setImageAsset:v8];
LABEL_12:

  return v10;
}

- (id)_imageWithImageAsset:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIImage *)self _primitiveImageAsset];
  v9 = v6;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = v9;
    v12 = v8;
    if (!v9)
    {
      goto LABEL_15;
    }

    v11 = v9;
    v12 = v8;
    if (!v8)
    {
      goto LABEL_15;
    }

    v13 = [v8 isEqual:v9];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  v11 = [(UIImage *)self configuration];
  v14 = v7;
  v15 = v14;
  if (v11 == v14)
  {

    goto LABEL_13;
  }

  if (v14 && v11)
  {
    v16 = [v11 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_13:
    v17 = self;
    goto LABEL_18;
  }

  v12 = v11;
LABEL_15:

LABEL_16:
LABEL_17:
  v17 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [(UIImage *)v17 _setImageAsset:v10];
  [(UIImage *)v17 _setConfiguration:v7];
LABEL_18:

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIImage *)v5 content];
      content = self->_content;
      if (content == v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = ![(_UIImageContent *)content isEqual:v6];
      }

      v10 = [(UIImage *)v5 _primitiveImageAsset];
      v11 = dyld_program_sdk_at_least();
      imageAsset = self->_imageAsset;
      if (v11 && imageAsset == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = ![(UIImageAsset *)imageAsset isEqual:v10];
      }

      v14 = [(UIImage *)self hasBaseline];
      if (v14 == [(UIImage *)v5 hasBaseline])
      {
        if ([(UIImage *)self hasBaseline])
        {
          [(UIImage *)self baselineOffsetFromBottom];
          v17 = v16;
          [(UIImage *)v5 baselineOffsetFromBottom];
          v15 = vabdd_f64(v17, v18) > 0.0001;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }

      v19 = [(UIImage *)self hasMidline];
      if (v19 == [(UIImage *)v5 hasMidline])
      {
        if ([(UIImage *)self hasMidline])
        {
          [(UIImage *)self midlineOffsetFromCenter];
          v22 = v21;
          [(UIImage *)v5 midlineOffsetFromCenter];
          v24 = v22 != v23;
        }

        else
        {
          v24 = 0;
        }

        v9 = 0;
        if (((v8 | v13 | v15) & 1) != 0 || v24)
        {
          goto LABEL_19;
        }

        [(UIImage *)self scale];
        v26 = v25;
        [(UIImage *)v5 scale];
        if (v26 == v27)
        {
          v28 = [(UIImage *)self imageOrientation];
          if (v28 == [(UIImage *)v5 imageOrientation])
          {
            v29 = [(UIImage *)self renderingMode];
            if (v29 == [(UIImage *)v5 renderingMode])
            {
              v30 = [(UIImage *)self flipsForRightToLeftLayoutDirection];
              if (v30 == [(UIImage *)v5 flipsForRightToLeftLayoutDirection])
              {
                v31 = [(UIImage *)self _suppressesAccessibilityHairlineThickening];
                if (v31 == [(UIImage *)v5 _suppressesAccessibilityHairlineThickening])
                {
                  [(UIImage *)self alignmentRectInsets];
                  v33 = v32;
                  v35 = v34;
                  v37 = v36;
                  v39 = v38;
                  [(UIImage *)v5 alignmentRectInsets];
                  v9 = 0;
                  if (v35 == v43 && v33 == v40 && v39 == v42 && v37 == v41)
                  {
                    v44 = [(UIImage *)self _colorForFlattening];
                    v45 = [(UIImage *)v5 _colorForFlattening];
                    if (_deferringTokenEqualToToken(v44, v45))
                    {
                      v46 = [(UIImage *)self configuration];
                      v47 = [(UIImage *)v5 configuration];
                      v9 = _deferringTokenEqualToToken(v46, v47);
                    }

                    else
                    {
                      v9 = 0;
                    }
                  }

                  goto LABEL_19;
                }
              }
            }
          }
        }
      }

      v9 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v9 = 0;
  }

LABEL_20:

  return v9;
}

- (id)_descriptionOmittingSymbolConfiguration:(BOOL)a3
{
  v5 = [(UIImage *)self _metricsDescription];
  v6 = [(_UIImageContent *)self->_content description];
  if (a3 || ([(UIImage *)self symbolConfiguration], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v10 = &stru_1EFB14550;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(UIImage *)self symbolConfiguration];
    v10 = [v8 stringWithFormat:@" config=<%@>", v9];
  }

  if ([(UIImage *)self renderingMode])
  {
    v11 = [(UIImage *)self renderingMode];
    v12 = @"Unknown";
    if (v11 == UIImageRenderingModeAlwaysTemplate)
    {
      v12 = @"alwaysTemplate";
    }

    v13 = @"alwaysOriginal";
    v14 = v11 == UIImageRenderingModeAlwaysOriginal;
  }

  else
  {
    v15 = [(UIImage *)self symbolConfiguration];
    v16 = [(UIImage *)self _effectiveRenderingModeWithSymbolConfiguration:v15];

    v12 = @"automatic";
    if (v16 == 2)
    {
      v12 = @"automatic(template)";
    }

    v13 = @"automatic(original)";
    v14 = v16 == 1;
  }

  if (v14)
  {
    v17 = v13;
  }

  else
  {
    v17 = v12;
  }

  v18 = [@" renderingMode=" stringByAppendingString:v17];
  v19 = MEMORY[0x1E696AEC0];
  v20 = objc_opt_class();
  v21 = [(UIImage *)self _identityDescription];
  v22 = [v19 stringWithFormat:@"<%@:%p %@ %@%@%@>", v20, self, v21, v5, v10, v18];

  return v22;
}

+ (BOOL)_isCGImageAlphaMask:(CGImage *)a3
{
  IsMask = CGImageIsMask(a3);
  if (IsMask)
  {
    CGImageGetAlphaInfo(a3);
  }

  return IsMask;
}

- (BOOL)_isAlphaMask
{
  v2 = [(_UIImageContent *)self->_content CGImage];

  return [UIImage _isCGImageAlphaMask:v2];
}

+ (id)imageNamed:(id)a3 inBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIScreen _mainScreenThreadSafeTraitCollection];
  v9 = [a1 imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:v8];

  return v9;
}

+ (id)symbolImageNamed:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__UIImage_symbolImageNamed___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v4 = symbolImageNamed__once;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&symbolImageNamed__once, block);
  }

  v6 = [a1 systemImageNamed:v5];

  return v6;
}

void __28__UIImage_symbolImageNamed___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 weight:(int64_t)a5 compatibleWithFontSize:(double)a6
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UIImage_symbolImageNamed_size_weight_compatibleWithFontSize___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v10 = symbolImageNamed_size_weight_compatibleWithFontSize__once;
  v11 = a3;
  if (v10 != -1)
  {
    dispatch_once(&symbolImageNamed_size_weight_compatibleWithFontSize__once, block);
  }

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:a5 weight:a4 scale:a6];
  v13 = [a1 systemImageNamed:v11 withConfiguration:v12];

  return v13;
}

void __63__UIImage_symbolImageNamed_size_weight_compatibleWithFontSize___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 weight:(int64_t)a5 compatibleWithFontSize:(double)a6 traitCollection:(id)a7 inBundle:(id)a8
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__UIImage_symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle__once != -1)
  {
    dispatch_once(&symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle__once, block);
  }

  v18 = [UIImageSymbolConfiguration configurationWithPointSize:a5 weight:a4 scale:a6];
  if (v17)
  {
    [a1 imageNamed:v15 inBundle:v17 compatibleWithTraitCollection:v16];
  }

  else
  {
    [a1 systemImageNamed:v15 compatibleWithTraitCollection:v16];
  }
  v19 = ;
  v20 = [v19 imageWithConfiguration:v18];

  return v20;
}

void __88__UIImage_symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_4___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)preferredSymbolImageNamed:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__UIImage_preferredSymbolImageNamed___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v4 = preferredSymbolImageNamed__once;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&preferredSymbolImageNamed__once, block);
  }

  v6 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody"];
  v7 = [a1 systemImageNamed:v5 withConfiguration:v6];

  return v7;
}

void __37__UIImage_preferredSymbolImageNamed___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_5___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)preferredSymbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithTextStyle:(id)a5
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UIImage_preferredSymbolImageNamed_size_compatibleWithTextStyle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v8 = preferredSymbolImageNamed_size_compatibleWithTextStyle__once;
  v9 = a5;
  v10 = a3;
  if (v8 != -1)
  {
    dispatch_once(&preferredSymbolImageNamed_size_compatibleWithTextStyle__once, block);
  }

  v11 = [UIImageSymbolConfiguration configurationWithTextStyle:v9 scale:a4];

  v12 = [a1 systemImageNamed:v10 withConfiguration:v11];

  return v12;
}

void __66__UIImage_preferredSymbolImageNamed_size_compatibleWithTextStyle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_6___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)preferredSymbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithTextStyle:(id)a5 traitCollection:(id)a6 inBundle:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIImage_preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle__once != -1)
  {
    dispatch_once(&preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle__once, block);
  }

  v17 = [UIImageSymbolConfiguration configurationWithTextStyle:v14 scale:a4];
  if (v16)
  {
    [a1 imageNamed:v13 inBundle:v16 compatibleWithTraitCollection:v15];
  }

  else
  {
    [a1 systemImageNamed:v13 compatibleWithTraitCollection:v15];
  }
  v18 = ;
  v19 = [v18 imageWithConfiguration:v17];

  return v19;
}

void __91__UIImage_preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_7___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithFont:(id)a5
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIImage_symbolImageNamed_size_compatibleWithFont___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v8 = symbolImageNamed_size_compatibleWithFont__once;
  v9 = a5;
  v10 = a3;
  if (v8 != -1)
  {
    dispatch_once(&symbolImageNamed_size_compatibleWithFont__once, block);
  }

  v11 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:a4];

  v12 = [a1 systemImageNamed:v10 withConfiguration:v11];

  return v12;
}

void __52__UIImage_symbolImageNamed_size_compatibleWithFont___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_8___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

+ (id)symbolImageNamed:(id)a3 size:(int64_t)a4 compatibleWithFont:(id)a5 traitCollection:(id)a6 inBundle:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__UIImage_symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle__once != -1)
  {
    dispatch_once(&symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle__once, block);
  }

  v17 = [UIImageSymbolConfiguration configurationWithFont:v14 scale:a4];
  if (v16)
  {
    [a1 imageNamed:v13 inBundle:v16 compatibleWithTraitCollection:v15];
  }

  else
  {
    [a1 systemImageNamed:v13 compatibleWithTraitCollection:v15];
  }
  v18 = ;
  v19 = [v18 imageWithConfiguration:v17];

  return v19;
}

void __77__UIImage_symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &NSTextEffectBoldTintStyle_block_invoke_9___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "+%@ is deprecated. Please switch to +imageNamed: or +systemImageNamed:.", &v6, 0xCu);
  }
}

- (UIImage)initWithContentsOfFile:(id)a3 cache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v19 = 0.0;
  v20 = 0;
  v18 = 0;
  v7 = _UIImageSourceAtPath(v6, v4, &v20, &v19, &v18);
  v8 = v18;
  if (v7)
  {
    v9 = [_UIImageCGImageContent alloc];
    v10 = [(_UIImageCGImageContent *)v9 initWithCGImageSource:v7 scale:v19];
    CFRelease(v7);
    if (v10)
    {
      v11 = [(UIImage *)self _initWithContent:v10 orientation:v20];
      if (dyld_program_sdk_at_least())
      {
        v12 = v8;
      }

      else
      {
        v12 = v6;
      }

      v13 = v12;
      v14 = _UserInterfaceTraitFromPath(v13);
      v15 = v14;
      if (v14)
      {
        v16 = [v14 imageConfiguration];
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong(v11 + 4, v16);

      self = v11;
      v10 = self;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_initWithData:(id)a3 preserveScale:(BOOL)a4 cache:(BOOL)a5 scale:(double)a6
{
  v15 = a6;
  v14 = 0;
  if (a4)
  {
    v7 = &v15;
  }

  else
  {
    v7 = 0;
  }

  v8 = _UIImageRefFromData(a3, a5, &v14, v7);
  if (v8)
  {
    v9 = v8;
    v10 = [_UIImageCGImageContent alloc];
    v11 = [(_UIImageCGImageContent *)v10 initWithCGImage:v9 scale:v15];
    v12 = [(UIImage *)self _initWithContent:v11 orientation:v14];

    CGImageRelease(v9);
  }

  else
  {

    return 0;
  }

  return v12;
}

- (id)_initWithSDRIOSurface:(__IOSurface *)a3 HDRIOSurface:(__IOSurface *)a4 scale:(double)a5 orientation:(int64_t)a6
{
  if (a3)
  {
    v8 = [[_UIImageIOSurfaceContent alloc] initWithSDRIOSurface:a3 HDRIOSurface:a4 scale:a5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIImage *)self _initWithContent:v8 orientation:a6];

  return v9;
}

- (id)_initWithIOSurface:(__IOSurface *)a3 imageOrientation:(int64_t)a4
{
  Scale = _UIRenderingBufferGetScale(a3);
  if (Scale == 0.0)
  {
    Scale = 1.0;
  }

  return [(UIImage *)self _initWithIOSurface:a3 scale:a4 orientation:Scale];
}

- (__IOSurface)_copyIOSurface
{
  v21[3] = *MEMORY[0x1E69E9840];
  if ([(_UIImageContent *)self->_content isIOSurface])
  {
    return 0;
  }

  v4 = [(UIImage *)self CGImage];
  [(UIImage *)self scale];
  v6 = v5;
  [(UIImage *)self size];
  v8 = v6 * v7;
  [(UIImage *)self size];
  v10 = v6 * v9;
  v20[0] = @"dst-scale";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v21[0] = v11;
  v21[1] = &unk_1EFE30BB0;
  v20[1] = @"dst-gamut";
  v20[2] = @"dst-opaque";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:CGImageHasAlpha() ^ 1];
  v21[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v3 = _UIRenderingBufferCreate(v13, v8, v10);

  if (v3)
  {
    IOSurfaceLock(v3, 0, 0);
    CGImageGetColorSpace(v4);
    v14 = CGIOSurfaceContextCreate();
    if (v14)
    {
      v15 = v14;
      CGContextScaleCTM(v14, v6, v6);
      [(UIImage *)self size];
      v17 = v16;
      [(UIImage *)self size];
      v22.size.height = v18;
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = v17;
      CGContextDrawImage(v15, v22, v4);
      CGContextRelease(v15);
    }

    IOSurfaceUnlock(v3, 0, 0);
  }

  return v3;
}

+ (id)_backgroundGradientWithStartColor:(id)a3 andEndColor:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  _UIGraphicsBeginImageContextWithOptions(1, 0, 16.0, 1024.0, 0.0);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [v6 getRed:&components green:&v15 blue:&v16 alpha:&v17];

  [v5 getRed:&v18 green:&v19 blue:&v20 alpha:v21];
  v9 = +[UIColor clearColor];
  [v9 set];

  UIRectFillUsingOperation(1, 0.0, 0.0, 16.0, 1024.0);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CGGradientCreateWithColorComponents(DeviceRGB, &components, 0, 2uLL);
  v23.x = 0.0;
  v23.y = 0.0;
  v24.x = 0.0;
  v24.y = 1024.0;
  CGContextDrawLinearGradient(v8, v11, v23, v24, 0);
  CGGradientRelease(v11);
  CGColorSpaceRelease(DeviceRGB);
  v12 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v12;
}

+ (id)_defaultBackgroundGradient
{
  v3 = _defaultBackgroundGradient___defaultBackgroundGradient;
  if (!_defaultBackgroundGradient___defaultBackgroundGradient)
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = [UIColor colorWithRed:0.88627451 green:0.898039216 blue:0.917647059 alpha:1.0];
      v7 = 0.815686275;
      v8 = 0.823529412;
      v9 = 0.847058824;
    }

    else
    {
      v6 = [UIColor colorWithRed:0.843137255 green:0.862745098 blue:0.898039216 alpha:1.0];
      v7 = 0.784313725;
      v8 = 0.803921569;
      v9 = 0.839215686;
    }

    v10 = [UIColor colorWithRed:v7 green:v8 blue:v9 alpha:1.0];
    v11 = [a1 _backgroundGradientWithStartColor:v6 andEndColor:v10];
    v12 = _defaultBackgroundGradient___defaultBackgroundGradient;
    _defaultBackgroundGradient___defaultBackgroundGradient = v11;

    v3 = _defaultBackgroundGradient___defaultBackgroundGradient;
  }

  return v3;
}

+ (id)imageFromAlbumArtData:(id)a3 height:(int)a4 width:(int)a5 bytesPerRow:(int)a6 cache:(BOOL)a7
{
  v10 = a3;
  v11 = v10;
  if (a4 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if (v10 && a5 >= 1)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v14 = CGDataProviderCreateWithCFData(v11);
      v15 = CGImageCreate(a5, a4, 5uLL, 0x10uLL, a6, DeviceRGB, 0x1006u, v14, 0, 0, kCGRenderingIntentDefault);
      CGDataProviderRelease(v14);
      v16 = [UIImage alloc];
      v17 = [objc_opt_self() mainScreen];
      [v17 scale];
      v12 = [(UIImage *)v16 initWithCGImage:v15 scale:0 orientation:?];

      CGImageRelease(v15);
      CGColorSpaceRelease(DeviceRGB);
    }
  }

  return v12;
}

+ (UIImage)imageWithContentsOfCPBitmapFile:(id)a3 flags:(int)a4
{
  valuePtr = 1.0;
  MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
  if (MappedDataFromPath)
  {
    ImagesFromData = CPBitmapCreateImagesFromData();
    if (ImagesFromData)
    {
      v6 = ImagesFromData;
      ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
      v8 = CGImageRetain(ValueAtIndex);
      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(MappedDataFromPath);
    if (v8)
    {
      v9 = [UIImage alloc];
      MappedDataFromPath = [(UIImage *)v9 initWithCGImage:v8 scale:0 orientation:valuePtr];
      CGImageRelease(v8);
    }

    else
    {
      MappedDataFromPath = 0;
    }
  }

  return MappedDataFromPath;
}

- (BOOL)writeToCPBitmapFile:(id)a3 flags:(int)a4
{
  v5 = a3;
  v6 = [(_UIImageContent *)self->_content CGImage];
  v7 = 0;
  values = v6;
  if (v5 && v6)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (v9)
    {
      v10 = v9;
      CGImageHasAlpha();
      ColorSpace = CGImageGetColorSpace(values);
      CGColorSpaceGetNumberOfComponents(ColorSpace);
      CGImageGetBitsPerComponent(values);
      [(_UIImageContent *)self->_content scale];
      v16 = v12;
      if (v12 == 1.0)
      {
        v14 = CPBitmapWriteImagesToPath();
      }

      else
      {
        v13 = CFNumberCreate(v8, kCFNumberCGFloatType, &v16);
        v14 = CPBitmapWriteImagesToPath();
        if (v13)
        {
          CFRelease(v13);
        }
      }

      v7 = v14 != 0;
      CFRelease(v10);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_stretchableImageWithCapInsets:(UIEdgeInsets)a3
{
  v3 = [(UIImage *)self resizableImageWithCapInsets:a3.top, a3.left, a3.bottom, a3.right];
  [v3 _setAlwaysStretches:1];

  return v3;
}

- (id)_resizableImageWithSubimageInsets:(UIEdgeInsets)a3 resizeInsets:(UIEdgeInsets)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [[_UIResizableImage alloc] initWithImage:self capInsets:a4.top, a4.left, a4.bottom, a4.right];
  [(_UIResizableImage *)v8 _setSubimageInsets:top, left, bottom, right];

  return v8;
}

+ (id)_deviceSpecificImageNamed:(id)a3
{
  v4 = a3;
  v5 = _UIImageDeviceSpecificName();
  if (!v5 || ([v4 stringByAppendingString:v5], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "imageNamed:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [a1 imageNamed:v4];
  }

  return v7;
}

+ (id)_deviceSpecificImageNamed:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _UIImageDeviceSpecificName();
  if (!v8 || ([v6 stringByAppendingString:v8], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "imageNamed:inBundle:", v9, v7), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = [a1 imageNamed:v6 inBundle:v7];
  }

  return v10;
}

- ($8452678F12DBC466148836A9D382CAFC)_calculateStatisticsOfEdge:(SEL)a3
{
  v92[1] = *MEMORY[0x1E69E9840];
  retstr->var8 = 0.0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  [(UIImage *)self size];
  v8 = v7;
  v10 = v9;
  v11 = 4 * v7;
  v12 = [(UIImage *)self ioSurface];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_5;
  }

  IOSurfaceLock(v12, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v13);
  PixelFormat = IOSurfaceGetPixelFormat(v13);
  if (PixelFormat != 1999843442 && PixelFormat != 1647534392)
  {
    if (a4)
    {
      if (v10)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v49 = 0;
        v50 = BaseAddress + 3;
        do
        {
          if (v49 == v10 - 1 || v49 == 0)
          {
            v52 = 1;
          }

          else
          {
            v52 = v8 - 1;
          }

          if (v8)
          {
            v53 = 0;
            v54 = v50;
            do
            {
              v55 = *(v54 - 1);
              v21 += v55;
              v56 = *(v54 - 2);
              v22 += v56;
              v57 = *(v54 - 3);
              v23 += v57;
              v24 += *v54;
              v25 += (v55 * v55);
              v26 += (v56 * v56);
              v27 += (v57 * v57);
              ++v28;
              v53 += v52;
              v54 += 4 * v52;
            }

            while (v53 < v8);
          }

          ++v49;
          v50 += v11;
        }

        while (v49 != v10);
        v17 = 0;
        LODWORD(v39) = 0;
      }

      else
      {
        v17 = 0;
        LODWORD(v39) = 0;
        v28 = 0;
        v27 = 0;
        v26 = 0;
        v25 = 0;
        v24 = 0;
        v23 = 0;
        v22 = 0;
        v21 = 0;
      }

      LODWORD(v38) = 1;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v38 = 0;
      LOBYTE(v39) = 1;
      do
      {
        v58 = v39;
        v59 = qword_18A67CB10[v38];
        if (v59 < v10)
        {
          v60 = &BaseAddress[(v11 + 4) * v59 + 3];
          v61 = qword_18A67CB10[v38];
          do
          {
            v62 = v60;
            for (i = v59; i < v8; v62 += 4 * v59)
            {
              v64 = *(v62 - 1);
              v21 += v64;
              v65 = *(v62 - 2);
              v22 += v65;
              v66 = *(v62 - 3);
              v23 += v66;
              v24 += *v62;
              v25 += (v64 * v64);
              v26 += (v65 * v65);
              v27 += (v66 * v66);
              ++v28;
              i += v59;
            }

            v61 += v59;
            v60 += v11 * v59;
          }

          while (v61 < v10);
        }

        LODWORD(v39) = 0;
        v38 = 1;
      }

      while ((v58 & 1) != 0);
      v17 = 0;
    }

    goto LABEL_55;
  }

  v91 = *MEMORY[0x1E696D2B8];
  v92[0] = &unk_1EFE30BC8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
  v17 = CGImageCreateFromIOSurface();
  IOSurfaceUnlock(v13, 1u, 0);

  if (!v17)
  {
LABEL_5:
    result = CGImageRetain([(UIImage *)self CGImage]);
    if (!result)
    {
      return result;
    }

    v17 = result;
  }

  BaseAddress = malloc_type_malloc(v11 * v10, 0xDDED584CuLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = CGBitmapContextCreate(BaseAddress, v8, v10, 8uLL, v11, DeviceRGB, 0x4001u);
  v93.size.width = v8;
  v93.size.height = v10;
  v93.origin.x = 0.0;
  v93.origin.y = 0.0;
  CGContextDrawImage(v20, v93, v17);
  CGContextRelease(v20);
  CGColorSpaceRelease(DeviceRGB);
  if (a4)
  {
    if (v10)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = BaseAddress + 3;
      do
      {
        if (v29 == v10 - 1 || v29 == 0)
        {
          v32 = 1;
        }

        else
        {
          v32 = v8 - 1;
        }

        if (v8)
        {
          v33 = 0;
          v34 = v30;
          do
          {
            v35 = *(v34 - 3);
            v21 += v35;
            v36 = *(v34 - 2);
            v22 += v36;
            v37 = *(v34 - 1);
            v23 += v37;
            v24 += *v34;
            v25 += (v35 * v35);
            v26 += (v36 * v36);
            v27 += (v37 * v37);
            ++v28;
            v33 += v32;
            v34 += 4 * v32;
          }

          while (v33 < v8);
        }

        ++v29;
        v30 += v11;
      }

      while (v29 != v10);
      LODWORD(v38) = 0;
    }

    else
    {
      LODWORD(v38) = 0;
      v28 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
    }

    LODWORD(v39) = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v39 = 0;
    LOBYTE(v38) = 1;
    do
    {
      v40 = v38;
      v41 = qword_18A67CB10[v39];
      if (v41 < v10)
      {
        v42 = &BaseAddress[(v11 + 4) * v41 + 1];
        v43 = qword_18A67CB10[v39];
        do
        {
          v44 = v42;
          for (j = v41; j < v8; v44 += 4 * v41)
          {
            v46 = *(v44 - 1);
            v21 += v46;
            v47 = *v44;
            v22 += v47;
            v48 = v44[1];
            v23 += v48;
            v24 += v44[2];
            v25 += (v46 * v46);
            v26 += (v47 * v47);
            v27 += (v48 * v48);
            ++v28;
            j += v41;
          }

          v43 += v41;
          v42 += v11 * v41;
        }

        while (v43 < v10);
      }

      LODWORD(v38) = 0;
      v39 = 1;
    }

    while ((v40 & 1) != 0);
  }

LABEL_55:
  v67 = 1.0 / v28;
  v68 = (v67 * v21);
  v69 = (v67 * v22);
  v70 = v67 * v23;
  v71 = v67 * v24;
  v72 = fmax(v67 * v25 - (v68 * v68), 0.0);
  v73 = sqrtf(v72);
  v74 = fmax(v67 * v26 - (v69 * v69), 0.0);
  v75 = sqrtf(v74);
  *&v67 = fmax(v67 * v27 - (v70 * v70), 0.0);
  v76 = sqrtf(*&v67);
  v89 = 0.0;
  v90 = 0.0;
  v87 = 0;
  v88 = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v77 = v68 * 0.00392156863;
  v78 = v69 * 0.00392156863;
  v79 = v70 * 0.00392156863;
  __RGBtoHSV(&v90, &v89, &v88, v77, v78, v79);
  result = __RGBtoHSV(&v87, &v86, &v85, v73 * 0.00392156863, v75 * 0.00392156863, v76 * 0.00392156863);
  if (v13 && v38)
  {
    result = IOSurfaceUnlock(v13, 1u, 0);
  }

  if (v17)
  {
    v80 = v39;
  }

  else
  {
    v80 = 0;
  }

  if (v80 == 1)
  {
    free(BaseAddress);
    CGImageRelease(v17);
  }

  retstr->var0 = v77;
  retstr->var1 = v78;
  v81 = v89;
  v82 = v90;
  retstr->var2 = v79;
  retstr->var3 = v82;
  v83 = v88;
  retstr->var4 = v81;
  retstr->var5 = v83;
  v84 = v86;
  retstr->var7 = v85;
  retstr->var8 = v84;
  retstr->var6 = v71 * 0.00392156863;
  return result;
}

- (id)_imagePaddedByInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(UIImage *)self _isResizable])
  {
    NSLog(&cfstr_Imagepaddedbyi.isa);
    v8 = 0;
  }

  else
  {
    [(UIImage *)self _contentInsets];
    v8 = [(UIImage *)self _imageWithContentInsets:1 withUpdatedCGImage:top + v9, left + v10, bottom + v11, right + v12];
  }

  return v8;
}

- (id)_rasterizedCustomSymbolImageForFastXPCCoding
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((_UIImageIsCustomSymbol(a1) & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel__rasterizedCustomSymbolImageForFastXPCCoding object:a1 file:@"UIImage.m" lineNumber:4524 description:@"This should only ever be called for custom symbol images."];
    }

    v7 = [a1 _rasterizedImage];
    v8 = [a1 symbolConfiguration];
    if ([a1 _effectiveRenderingModeWithSymbolConfiguration:v8] != 2 || objc_msgSend(v8, "colorRenderingMode") == 2)
    {
      goto LABEL_37;
    }

    if ([v8 _hasSpecifiedHierarchicalColors] && objc_msgSend(a1, "_isHierarchicalColorSymbolImage"))
    {
      v9 = [v8 _colors];
      v22 = +[UIColor tintColor];
      v24[0] = v22;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v1 = v9;
      v11 = v10;
      v2 = v11;
      if (v1 == v11)
      {
      }

      else
      {
        if (!v1 || !v11)
        {

          goto LABEL_35;
        }

        v3 = [v1 isEqual:v11];

        if (!v3)
        {
          goto LABEL_35;
        }
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    if (![v8 _hasSpecifiedPaletteColors] || !objc_msgSend(a1, "_isPaletteColorSymbolImage"))
    {
      v18 = 0;
      goto LABEL_22;
    }

    v13 = [v8 _colors];
    v3 = +[UIColor tintColor];
    v23 = v3;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v4 = v13;
    v15 = v14;
    v5 = v15;
    if (v4 == v15)
    {

LABEL_32:
      v18 = 1;
LABEL_22:
      v19 = [a1 _colorForFlattening];
      v17 = v19 == 0;

      if (!v18)
      {
LABEL_24:
        if (v12)
        {

          if (!v17)
          {
            goto LABEL_37;
          }

          goto LABEL_28;
        }

        if (v17)
        {
LABEL_28:
          [v7 imageWithRenderingMode:2];
          v7 = v1 = v7;
LABEL_36:
        }

LABEL_37:

        goto LABEL_38;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (v4 && v15)
    {
      v16 = [v4 isEqual:v15];

      if (!v16)
      {
        v17 = 0;
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:

    goto LABEL_36;
  }

  v7 = 0;
LABEL_38:

  return v7;
}

- (id)_imageWithSize:(CGSize)a3
{
  v4 = 0;
  if (a3.width >= 0.0)
  {
    height = a3.height;
    if (a3.height >= 0.0)
    {
      width = a3.width;
      [(UIImage *)self size];
      if (width == v8 && height == v7)
      {
        v4 = self;
      }

      else
      {
        v4 = [(UIImage *)self _imageWithSize:self->_content content:width, height];
      }
    }
  }

  return v4;
}

- (id)_imageWithSize:(CGSize)a3 content:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(UIImage *)self size];
  v9 = v8;
  v11 = v10;
  v12 = v8 <= 0.0;
  v13 = 1.0;
  if (v12)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = v9;
  }

  v15 = width / v14;
  if (v11 > 0.0)
  {
    v13 = v11;
  }

  v16 = height / v13;
  v17 = [(UIImage *)self _imageWithContent:v7];
  [v7 scale];
  v19 = v18;

  v17[9] = width * v19;
  v17[10] = height * v19;
  v20 = v15 * 0.5;
  v21 = v16 * 0.5;
  [v17 _setContentInsets:{v16 * 0.5 * self->_contentInsets.top, v15 * 0.5 * self->_contentInsets.left, v16 * 0.5 * self->_contentInsets.bottom, v15 * 0.5 * self->_contentInsets.right}];
  if ([(UIImage *)self _isResizable])
  {
    [(UIImage *)self capInsets];
    [v17 _setCapInsets:{v21 * v24, v20 * v22, v21 * v25, v20 * v23}];
  }

  if ([(UIImage *)self _isSubimage])
  {
    [(UIImage *)self _subimageInsets];
    [v17 _setSubimageInsets:{v21 * v28, v20 * v26, v21 * v29, v20 * v27}];
  }

  if ([(UIImage *)self hasBaseline]&& v11 != 0.0)
  {
    [(UIImage *)self baselineOffsetFromBottom];
    [v17 _setBaselineOffsetFromBottom:v16 * v30];
  }

  if ([(UIImage *)self hasMidline]&& v9 != 0.0)
  {
    [(UIImage *)self midlineOffsetFromCenter];
    [v17 _setMidlineOffsetFromCenter:v15 * v31];
  }

  return v17;
}

- (void)prepareForDisplayWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  content = self->_content;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__UIImage_prepareForDisplayWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E710BFB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_UIImageContent *)content prepareContentForDisplayWithCompletionHandler:v7];
}

void __50__UIImage_prepareForDisplayWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4[2] == v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    if (v3)
    {
      v6 = [v4 _imageWithContent:v3];
      (*(v5 + 16))(v5, v6);
    }

    else
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

- (UIImage)imageByPreparingThumbnailOfSize:(CGSize)size
{
  v3 = 0;
  if (size.width >= 0.0 && size.height >= 0.0)
  {
    [UIImage _applyOrientation:[(UIImage *)self imageOrientation] toContentSizeInPixels:size.width, size.height];
    v5 = [(_UIImageContent *)self->_content contentOptimizedForImageSize:?];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIImage *)self imageOrientation];
      [v6 size];
      [UIImage _applyOrientation:v7 toContentSizeInPixels:?];
      v3 = [(UIImage *)self _imageWithSize:v6 content:?];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)prepareThumbnailOfSize:(CGSize)size completionHandler:(void *)completionHandler
{
  height = size.height;
  width = size.width;
  v7 = completionHandler;
  v8 = v7;
  if (width < 0.0 || height < 0.0)
  {
    (*(v7 + 2))(v7, 0);
  }

  else
  {
    [UIImage _applyOrientation:[(UIImage *)self imageOrientation] toContentSizeInPixels:width, height];
    v10 = v9;
    v12 = v11;
    content = self->_content;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__UIImage_prepareThumbnailOfSize_completionHandler___block_invoke;
    v14[3] = &unk_1E710BFB8;
    v14[4] = self;
    v15 = v8;
    [(_UIImageContent *)content optimizeContentForImageSize:v14 completionHandler:v10, v12];
  }
}

void __52__UIImage_prepareThumbnailOfSize_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) imageOrientation];
    [v6 size];
    [UIImage _applyOrientation:v3 toContentSizeInPixels:?];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _imageWithSize:v6 content:?];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_imageWithBitmapRepresentation
{
  v3 = [objc_opt_self() mainScreen];
  v4 = [(UIImage *)self _imagePreparedForScreen:v3];

  return v4;
}

- (id)_initWithData:(id)a3 immediateLoadWithMaxSize:(CGSize)a4 scale:(double)a5 renderingIntent:(unint64_t)a6 cache:(BOOL)a7
{
  v7 = a7;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = v13;
  if (v13 && [v13 length])
  {
    v15 = [[_UIImageAsyncCGImageContent alloc] initWithData:v14 immediateLoadWithMaxSize:a6 scale:v7 renderingIntent:width cache:height, a5];
    v16 = [(UIImage *)self _initWithContent:v15 orientation:0];
    if (v16)
    {
      v16[26] |= 2u;
    }

    self = v16;

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (UIImage)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight
{
  [(UIImage *)self size];
  v8 = leftCapWidth;
  v10 = v9 - topCapHeight + -1.0;
  if (topCapHeight)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v7 - v8 + -1.0;
  if (leftCapWidth)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  return [(UIImage *)self _stretchableImageWithCapInsets:topCapHeight, leftCapWidth, v11, v13, topCapHeight, v8];
}

- (void)compositeToRect:(CGRect)a3 fromRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6
{
  v6 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v34 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v33 = v11;
    [(UIImage *)self scale];
    v16 = v15;
    v17 = [(_UIImageContent *)self->_content CGImage];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    IsEmpty = CGRectIsEmpty(v36);
    v19 = v16 != 0.0 && v16 != 1.0;
    if (IsEmpty)
    {
      v20 = CGImageGetWidth(v17);
      v21 = v20;
      v22 = CGImageGetHeight(v17);
      v23 = v22;
      v24 = 0.0;
      if (v19)
      {
        v25 = 1.0;
        v24 = 1.0 / v16 * 0.0;
        if (v20 <= 1)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 1.0 / v16;
        }

        v21 = v26 * v21;
        if (v22 > 1)
        {
          v25 = 1.0 / v16;
        }

        v23 = v25 * v23;
      }

      v27 = [(UIImage *)self imageOrientation];

      compositeCGImageRefInRect(v17, v13, v12, v34, v33, v24, v24, v21, v23, v6, v27, a6);
    }

    else
    {
      if (v19)
      {
        v28 = x * v16;
        v29 = y * v16;
        v30 = width * v16;
        if (width <= 1.0)
        {
          v30 = width;
        }

        v31 = height * v16;
        if (height <= 1.0)
        {
          v31 = height;
        }
      }

      else
      {
        v31 = height;
        v30 = width;
        v29 = y;
        v28 = x;
      }

      v32 = CGImageCreateWithImageInRect(v17, *&v28);
      compositeCGImageRefInRect(v32, v13, v12, v34, v33, x, y, width, height, v6, [(UIImage *)self imageOrientation], a6);

      CGImageRelease(v32);
    }
  }
}

- (void)compositeToPoint:(CGPoint)a3 fromRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6
{
  v7 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3.y;
  v13 = a3.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    [(UIImage *)self scale];
    v16 = v15;
    v17 = [(_UIImageContent *)self->_content CGImage];
    v18 = width * v16;
    if (width <= 1.0)
    {
      v18 = width;
    }

    v19 = height * v16;
    if (height <= 1.0)
    {
      v19 = height;
    }

    if (v16 == 0.0)
    {
      v19 = height;
      v20 = width;
    }

    else
    {
      v20 = v18;
    }

    if (v16 == 0.0)
    {
      v21 = y;
    }

    else
    {
      v21 = y * v16;
    }

    if (v16 == 0.0)
    {
      v22 = x;
    }

    else
    {
      v22 = x * v16;
    }

    if (v16 == 1.0)
    {
      v23 = height;
    }

    else
    {
      v23 = v19;
    }

    if (v16 == 1.0)
    {
      v24 = width;
    }

    else
    {
      v24 = v20;
    }

    if (v16 == 1.0)
    {
      v25 = y;
    }

    else
    {
      v25 = v21;
    }

    if (v16 == 1.0)
    {
      v26 = x;
    }

    else
    {
      v26 = v22;
    }

    v27 = CGImageCreateWithImageInRect(v17, *(&v23 - 3));
    compositeCGImageRef(v27, v13, v12, x, y, width, height, a6, v7, [(UIImage *)self imageOrientation]);

    CGImageRelease(v27);
  }
}

- (void)compositeToPoint:(CGPoint)a3 operation:(int)a4 fraction:(double)a5
{
  v6 = *&a4;
  y = a3.y;
  x = a3.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v10 = [(_UIImageContent *)self->_content CGImage];
    Width = CGImageGetWidth(v10);
    v12 = Width;
    Height = CGImageGetHeight(v10);
    v14 = Height;
    [(UIImage *)self scale];
    v16 = 0.0;
    if (v15 != 1.0 && v15 != 0.0)
    {
      v17 = 1.0 / v15;
      v16 = v17 * 0.0;
      if (Width <= 1)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = v17;
      }

      v12 = v18 * v12;
      if (Height <= 1)
      {
        v17 = 1.0;
      }

      v14 = v17 * v14;
    }

    v19 = [(UIImage *)self imageOrientation];

    compositeCGImageRef(v10, x, y, v16, v16, v12, v14, a5, v6, v19);
  }
}

- (void)draw9PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  memcpy(v9, a3, sizeof(v9));
  [(UIImage *)self draw9PartImageWithSliceRects:v9 inRect:x fraction:y, width, height, 1.0];
}

- (void)draw9PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 fraction:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  memcpy(v11, a3, sizeof(v11));
  [(UIImage *)self draw9PartImageWithSliceRects:v11 inRect:2 operation:x fraction:y, width, height, a5];
}

- (void)draw9PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6
{
  v7 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    origin = a3->var0.var0.origin;
    v32.width = a3->var0.var0.size.width;
    v14 = a3->var0.var0.size.height;
    size = a3->var1.var1.size;
    v45 = a3->var1.var1.origin;
    v46 = size;
    v16 = a3->var1.var2.size;
    v47 = a3->var1.var2.origin;
    v48 = v16;
    v17 = a3->var0.var2.size;
    v41 = a3->var0.var2.origin;
    v42 = v17;
    v18 = a3->var1.var0.size;
    v43 = a3->var1.var0.origin;
    v44 = v18;
    v19 = a3->var0.var1.size;
    v39 = a3->var0.var1.origin;
    v40 = v19;
    v24 = a3->var2.var0.origin;
    v25 = a3->var2.var0.size.width;
    v20 = a3->var2.var0.size.height;
    v21 = a3->var2.var1.size;
    v27 = a3->var2.var1.origin;
    v28 = v21;
    v22 = a3->var2.var2.size;
    v29 = a3->var2.var2.origin;
    v30 = v22;
    remainder.origin.x = x;
    remainder.origin.y = y;
    remainder.size.width = width;
    remainder.size.height = height;
    memset(&slice, 0, sizeof(slice));
    v23 = self;
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    CGRectDivide(v50, &slice, &remainder, v14, CGRectMinYEdge);
    v32.height = v14;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    draw9PartSlice(v23, &origin.x, v7, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, a6);
    CGRectDivide(remainder, &slice, &remainder, v20, CGRectMaxYEdge);
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    origin = v43;
    v32 = v44;
    draw9PartSlice(v23, &origin.x, v7, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, a6);
    v26 = v20;
    draw9PartSlice(v23, &v24.x, v7, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, a6);
  }
}

- (void)draw3PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4
{
  size = a3->var1.size;
  v7[2] = a3->var1.origin;
  v7[3] = size;
  v5 = a3->var2.size;
  v7[4] = a3->var2.origin;
  v7[5] = v5;
  v6 = a3->var0.size;
  v7[0] = a3->var0.origin;
  v7[1] = v6;
  [(UIImage *)self draw3PartImageWithSliceRects:v7 inRect:a4.origin.x fraction:a4.origin.y, a4.size.width, a4.size.height, 1.0];
}

- (void)draw3PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 fraction:(double)a5
{
  size = a3->var1.size;
  v8[2] = a3->var1.origin;
  v8[3] = size;
  v6 = a3->var2.size;
  v8[4] = a3->var2.origin;
  v8[5] = v6;
  v7 = a3->var0.size;
  v8[0] = a3->var0.origin;
  v8[1] = v7;
  [(UIImage *)self draw3PartImageWithSliceRects:v8 inRect:2 operation:a4.origin.x fraction:a4.origin.y, a4.size.width, a4.size.height, a5];
}

- (void)draw3PartImageWithSliceRects:(id *)a3 inRect:(CGRect)a4 operation:(int)a5 fraction:(double)a6
{
  v7 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v26 = width;
    v27 = height;
    v14 = a3->var0.origin.x;
    v15 = a3->var0.size.width;
    v28 = a3->var0.size.height;
    v29 = a3->var1.origin.x;
    v17 = a3->var1.size.width;
    v16 = a3->var1.size.height;
    v18 = a3->var2.origin.x;
    v30 = a3->var1.origin.y;
    v31 = a3->var2.origin.y;
    v35 = a3->var2.size.width;
    v32 = a3->var0.origin.y;
    v34 = a3->var2.size.height;
    v36 = self;
    [(UIImage *)v36 compositeToPoint:v7 fromRect:x operation:y fraction:v14, v32, v15, v28, a6];
    v33 = v18;
    if (v17 > v16 && v14 == v18)
    {
      v23 = y + v28;
      v24 = y + v27 - v34;
      if (v16 <= 1.0 && v23 < v24)
      {
        [(UIImage *)v36 compositeToRect:v7 fromRect:x operation:v23 fraction:v17, v24 - v23, v29, v30, v17, v16, *&a6];
        v23 = v24;
      }

      else
      {
        for (; v23 < v24; v23 = v23 + v16)
        {
          if (v16 + v23 > v24)
          {
            v16 = v24 - v23;
          }

          [(UIImage *)v36 compositeToPoint:v7 fromRect:x operation:v23 fraction:v29, v30, v17, v16, a6];
        }
      }

      y = floor(v23);
    }

    else
    {
      v20 = x + v15;
      v21 = x + v26 - v35;
      if (v17 <= 1.0 && v20 < v21)
      {
        [(UIImage *)v36 compositeToRect:v7 fromRect:v20 operation:y fraction:v21 - v20, v16, v29, v30, v17, v16, *&a6];
        v20 = v21;
      }

      else
      {
        for (; v20 < v21; v20 = v20 + v17)
        {
          if (v17 + v20 > v21)
          {
            v17 = v21 - v20;
          }

          [(UIImage *)v36 compositeToPoint:v7 fromRect:v20 operation:y fraction:v29, v30, v17, v16, a6];
        }
      }

      x = floor(v20);
    }

    [(UIImage *)v36 compositeToPoint:v7 fromRect:x operation:y fraction:v33, v31, v35, v34, a6];
  }
}

- (void)draw1PartImageInRect:(CGRect)a3 fraction:(double)a4 operation:(int)a5
{
  v5 = *&a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v20 = height;
    v12 = self;
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    v21 = v12;
    [(UIImage *)v12 size];
    v17 = v15;
    v18 = v16;
    if (v15 <= 1.0)
    {
      [(UIImage *)v21 compositeToRect:v5 fromRect:x operation:y fraction:width, v20, v13, v14, v15, v16, *&a4];
    }

    else
    {
      v19 = x + width;
      while (x < v19)
      {
        if (x + v17 > v19)
        {
          v17 = v19 - x;
        }

        [(UIImage *)v21 compositeToPoint:v5 fromRect:x operation:y fraction:v13, v14, v17, v18, a4];
        x = x + v17;
      }
    }
  }
}

void __55__UIImage_UIImageDeprecatedPrivate___tiledPatternColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  MinX = CGRectGetMinX(*(a1 + 40));
  MaxY = CGRectGetMaxY(*(a1 + 40));
  CGContextTranslateCTM(v3, MinX, MaxY);
  CGContextScaleCTM(v3, 1.0, -1.0);
  v6 = [*(a1 + 32) imageOrientation];
  if (v6)
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 72) * v7;
    if (v8 > 0.0)
    {
      v9 = v7 * *(a1 + 88);
      if (v9 > 0.0)
      {
        v10 = xmmword_18A67CAC0;
        v11 = -1.0;
        if (v6 <= 3)
        {
          switch(v6)
          {
            case 1:
LABEL_18:
              v12 = 0.0;
              goto LABEL_22;
            case 2:
              v12 = v9 / v8;
              *(&v10 + 1) = 0;
              *&v10 = -v8 / v9;
              v9 = 0.0;
              goto LABEL_21;
            case 3:
              v12 = -v9 / v8;
              *(&v10 + 1) = 0;
              *&v10 = v8 / v9;
LABEL_15:
              v8 = 0.0;
LABEL_21:
              v11 = 0.0;
              goto LABEL_22;
          }
        }

        else
        {
          if (v6 <= 5)
          {
            if (v6 == 4)
            {
              v10 = xmmword_18A64B720;
              v9 = 0.0;
            }

            else
            {
              v11 = 1.0;
              v8 = 0.0;
            }

            goto LABEL_18;
          }

          if (v6 == 6)
          {
            v12 = -v9 / v8;
            *(&v10 + 1) = 0;
            *&v10 = -v8 / v9;
            goto LABEL_21;
          }

          if (v6 == 7)
          {
            v12 = v9 / v8;
            *(&v10 + 1) = 0;
            *&v10 = v8 / v9;
            v9 = 0.0;
            goto LABEL_15;
          }
        }

        v11 = *MEMORY[0x1E695EFD0];
        v12 = *(MEMORY[0x1E695EFD0] + 8);
        v10 = *(MEMORY[0x1E695EFD0] + 16);
        v8 = *(MEMORY[0x1E695EFD0] + 32);
        v9 = *(MEMORY[0x1E695EFD0] + 40);
LABEL_22:
        v13.a = v11;
        v13.b = v12;
        *&v13.c = v10;
        v13.tx = v8;
        v13.ty = v9;
        CGContextConcatCTM(v3, &v13);
      }
    }
  }

  CGContextDrawTiledImage(v3, *(a1 + 96), [*(a1 + 32) CGImage]);
}

+ (void)_flushCache:(id)a3
{
  _UISharedImageFlushAll();

  +[_UIOldCGImageDecompressor flushCaches];
}

- (id)_swizzleContent:(id)a3
{
  v4 = a3;
  content = self->_content;
  v6 = content;
  v7 = self->_content;
  self->_content = v4;
  v8 = v4;

  return content;
}

- (void)_setCached:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_imageFlags = (*&self->_imageFlags & 0xFFFFFFBF | v3);
  if (a3)
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  objc_setAssociatedObject(self, &_UIImageTableCachedRetainCycleAssociationKey, v4, 1);
}

- (BOOL)_isInvisibleAndGetIsTranslucent:(BOOL *)a3
{
  v5 = objc_getAssociatedObject(self, &unk_1ED498CEA);
  v6 = objc_getAssociatedObject(self, &unk_1ED498CEB);
  if (v5)
  {
    goto LABEL_35;
  }

  [(UIImage *)self size];
  v8 = v7;
  v10 = v9;
  BitmapInfo = CGImageGetBitmapInfo([(UIImage *)self CGImage]);
  LOBYTE(v12) = 1;
  if (v8 == 0.0)
  {
    LOBYTE(Data) = 1;
    goto LABEL_34;
  }

  LOBYTE(Data) = 1;
  if (v10 == 0.0)
  {
    goto LABEL_34;
  }

  v14 = BitmapInfo;
  v15 = BitmapInfo & 0x1F;
  if (v15 <= 6 && ((1 << v15) & 0x61) != 0)
  {
    LOBYTE(v12) = 0;
    LOBYTE(Data) = 0;
    goto LABEL_34;
  }

  [(UIImage *)self size];
  v17 = v16;
  v19 = v18;
  [(UIImage *)self scale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v17, v19, v20);
  [(UIImage *)self drawInRect:0.0, 0.0, v17, v19];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  Data = CGBitmapContextGetData(v22);
  Width = CGBitmapContextGetWidth(v22);
  Height = CGBitmapContextGetHeight(v22);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v22);
  v26 = v15 == 2 || v15 == 4;
  v27 = 3;
  if (v26)
  {
    v27 = 0;
  }

  if ((v14 & 0x7000) == 0x2000)
  {
    v28 = v27 ^ 3;
  }

  else
  {
    v28 = v27;
  }

  if (Height < 1)
  {
    LOBYTE(v12) = 0;
    LOBYTE(Data) = 1;
    goto LABEL_33;
  }

  v29 = 0;
  v12 = 0;
  v30 = &Data[v28];
  LOBYTE(Data) = 1;
  while (Width <= 0)
  {
    if (((v12 ^ 1) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_29:
    ++v29;
    v30 += BytesPerRow;
    if (v29 == (Height & 0x7FFFFFFF))
    {
      goto LABEL_33;
    }
  }

  v31 = v30;
  v32 = 1;
  do
  {
    v33 = *v31;
    v31 += 4;
    LODWORD(Data) = (v33 == 0) & Data;
    v12 |= v33 != 255;
    if (((v12 ^ 1 | Data) & 1) == 0)
    {
      break;
    }
  }

  while (v32++ < Width);
  if ((v12 ^ 1))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (Data)
  {
    goto LABEL_29;
  }

  LOBYTE(Data) = 0;
LABEL_33:
  UIGraphicsEndImageContext();
LABEL_34:
  v5 = [MEMORY[0x1E696AD98] numberWithBool:Data & 1];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:v12 & 1];

  objc_setAssociatedObject(self, &unk_1ED498CEA, v5, 1);
  objc_setAssociatedObject(self, &unk_1ED498CEB, v35, 1);
  v6 = v35;
LABEL_35:
  if (a3)
  {
    *a3 = [v6 BOOLValue];
  }

  v36 = [v5 BOOLValue];

  return v36;
}

- (BOOL)_hasVisibleContentInRect:(CGRect)a3 atScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    return 0;
  }

  v11 = [(UIImage *)self ioSurface];
  IOSurfaceLock(v11, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v11);
  v13 = IOSurfaceGetHeight(v11);
  v14 = IOSurfaceGetWidth(v11);
  BytesPerRow = IOSurfaceGetBytesPerRow(v11);
  BytesPerElement = IOSurfaceGetBytesPerElement(v11);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v17 = fmax(CGRectGetMinY(v28) * a4, 0.0);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v18 = CGRectGetMaxY(v29) * a4;
  if (v18 >= v13)
  {
    v18 = v13;
  }

  v19 = v18;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v21 = CGRectGetMaxX(v31) * a4;
  if (v21 >= v14)
  {
    v21 = v14;
  }

  if (v17 >= v19)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v22 = v21;
    v23 = fmax(MinX * a4, 0.0);
    v24 = &BaseAddress[BytesPerRow * v17];
    do
    {
      v25 = v22 - v23;
      v26 = BytesPerElement * v23 + 3;
      if (v22 > v23)
      {
        while (v24[v26] < 0x1Au)
        {
          v26 += BytesPerElement;
          if (!--v25)
          {
            goto LABEL_14;
          }
        }

        v10 = 1;
      }

LABEL_14:
      v24 += BytesPerRow;
      ++v17;
    }

    while (v17 != v19);
  }

  IOSurfaceUnlock(v11, 1u, 0);
  return v10;
}

- (id)_bezeledImageWithShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 fillRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 drawShadow:(BOOL)a11
{
  v11 = a11;
  v17 = [UIColor colorWithRed:a3 green:a4 blue:a5 alpha:a6];
  v18 = [UIColor colorWithRed:a7 green:a8 blue:a9 alpha:a10];
  [(UIImage *)self size];
  v21 = v20;
  v22 = v19;
  v23 = 0.0;
  if (v11)
  {
    v23 = 1.0;
  }

  v24 = v23 + v19;
  [(UIImage *)self scale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v21, v24, v25);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v27 = 0;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v27 = ContextStack[3 * (*ContextStack - 1) + 1];
    if (v11)
    {
LABEL_5:
      v28 = [v17 CGColor];
      v32.width = 0.0;
      v32.height = -1.0;
      CGContextSetShadowWithColor(v27, v32, 0.0, v28);
      CGContextBeginTransparencyLayer(v27, 0);
      [v18 set];
      UIRectFillUsingOperation(1, 0.0, 1.0, v21, v22);
      [(UIImage *)self drawInRect:22 blendMode:0.0 alpha:1.0, v21, v22, 1.0];
      CGContextEndTransparencyLayer(v27);
      goto LABEL_8;
    }
  }

  [v18 set];
  UIRectFillUsingOperation(1, 0.0, 0.0, v21, v22);
  [(UIImage *)self drawInRect:22 blendMode:0.0 alpha:0.0, v21, v22, 1.0];
LABEL_8:
  v29 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v29;
}

- (id)_doubleBezeledImageWithExteriorShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 interiorShadowRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 fillRed:(double)a11 green:(double)a12 blue:(double)a13 alpha:(double)a14
{
  v19 = [UIColor colorWithRed:a3 green:a4 blue:a5 alpha:a6];
  v20 = [UIColor colorWithRed:a11 green:a12 blue:a13 alpha:a14];
  v21 = [UIColor colorWithRed:a7 green:a8 blue:a9 alpha:a10];
  [(UIImage *)self size];
  v23 = v22;
  v25 = v24;
  v26 = v24 + 1.0;
  [(UIImage *)self scale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v23, v26, v27);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v30 = [v19 CGColor];
  v39.width = 0.0;
  v39.height = 1.0;
  CGContextSetShadowWithColor(v29, v39, 0.0, v30);
  CGContextBeginTransparencyLayer(v29, 0);
  [v20 set];
  UIRectFillUsingOperation(1, 0.0, 0.0, v23, v25);
  [(UIImage *)self drawInRect:22 blendMode:0.0 alpha:0.0, v23, v25, 1.0];
  CGContextEndTransparencyLayer(v29);
  v31 = [(UIImage *)self _bezeledImageWithShadowRed:0 green:1.0 blue:1.0 alpha:1.0 fillRed:1.0 green:0.0 blue:0.0 alpha:0.0 drawShadow:1.0];
  CGContextScaleCTM(v29, 1.0, -1.0);
  [v31 size];
  CGContextTranslateCTM(v29, 0.0, -v32);
  v33 = [v31 CGImage];
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v23;
  v41.size.height = v25;
  CGContextClipToMask(v29, v41, v33);
  [v31 size];
  CGContextTranslateCTM(v29, 0.0, v34);
  CGContextScaleCTM(v29, 1.0, -1.0);
  v35 = [v21 CGColor];
  v40.width = 0.0;
  v40.height = 1.0;
  CGContextSetShadowWithColor(v29, v40, 0.0, v35);
  CGContextBeginTransparencyLayer(v29, 0);
  [v20 set];
  UIRectFillUsingOperation(1, 0.0, -1.0, v23, v26 + 1.0);
  [(UIImage *)self drawInRect:23 blendMode:0.0 alpha:0.0, v23, v25, 1.0];
  CGContextEndTransparencyLayer(v29);
  v36 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v36;
}

- (id)_imageScaledToProportion:(double)a3 interpolationQuality:(int)a4
{
  [(UIImage *)self size];
  v8 = ceil(v7 * a3);
  v10 = ceil(v9 * a3);
  [(UIImage *)self scale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v8, v10, v11);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetInterpolationQuality(v13, a4);
  [(UIImage *)self drawInRect:0.0, 0.0, v8, v10];
  v14 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  v15 = [v14 imageWithRenderingMode:{-[UIImage renderingMode](self, "renderingMode")}];

  return v15;
}

- (id)_serializedData
{
  if (_UIIsKitImage(self) & 1) != 0 || (_UIIsSystemSymbolImage(self))
  {
    v3 = self;
  }

  else
  {
    v3 = [[_UIImageSerializationWrapper alloc] initWithImage:self];
  }

  v4 = v3;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];

  return v5;
}

+ (unint64_t)_scaleDefinedByPath:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"@" options:4];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 substringWithRange:{v4 + 1, 1}];
    v7 = [v6 integerValue];

    if (v7)
    {
      v5 = v7;
    }
  }

  return v5;
}

+ (int64_t)_idiomDefinedByPath:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"~" options:4];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 substringFromIndex:v4];
    if ([v6 rangeOfString:@"iphone"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v6 rangeOfString:@"ipad"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_imageByApplyingSymbolVariant:(id)a3
{
  v4 = a3;
  if ([(UIImage *)self isSymbolImage]&& v4)
  {
    v5 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 isUnspecified];

      if (!v6)
      {
        if (!_UIIsSystemSymbolImage(self))
        {
          v15 = 0;
LABEL_27:
          if (v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = self;
          }

          v13 = v20;

          goto LABEL_13;
        }

        v7 = _UIImageName(self);
        v8 = _UIIsPrivateSystemSymbolImage(self);
        v9 = MEMORY[0x1E69C8720];
        if (!v8)
        {
          v9 = MEMORY[0x1E69C8718];
        }

        v10 = *v9;
        v11 = [v4 fillVariant];
        if (v11 == 2)
        {
          v16 = [v10 allKeysForObject:v7];
          v12 = [v16 firstObject];
        }

        else
        {
          if (v11 != 1)
          {
            v12 = 0;
            goto LABEL_23;
          }

          v12 = [v10 objectForKeyedSubscript:v7];
        }

        if (v12 && ([v7 isEqualToString:v12] & 1) == 0)
        {
          [(UIImage *)self variableValue];
          v18 = v17;
          v19 = [(UIImage *)self configuration];
          if (v8)
          {
            [UIImage _systemImageNamed:v12 variableValue:v19 withConfiguration:v18];
          }

          else
          {
            [UIImage systemImageNamed:v12 variableValue:v19 withConfiguration:v18];
          }
          v15 = ;

          goto LABEL_26;
        }

LABEL_23:
        v15 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  v13 = self;
LABEL_13:

  return v13;
}

+ (int)_iconVariantForUIApplicationIconFormat:(int)a3 scale:(double *)a4
{
  v5 = *&a3;
  v7 = +[UIDevice currentDevice];
  LODWORD(a4) = [a1 _iconVariantForUIApplicationIconFormat:v5 idiom:objc_msgSend(v7 scale:"userInterfaceIdiom"), a4];

  return a4;
}

+ (int)_iconVariantForUIApplicationIconFormat:(int)a3 idiom:(int64_t)a4 scale:(double *)a5
{
  v6 = *a5;
  if (a3 <= 11)
  {
    switch(a3)
    {
      case 0:
        if (v6 < 3.0)
        {
          v7 = 17;
        }

        else
        {
          v7 = 34;
        }

        v8 = v6 < 2.0;
        v9 = 4;
        goto LABEL_48;
      case 5:
        if (v6 < 3.0)
        {
          v7 = 23;
        }

        else
        {
          v7 = 35;
        }

        v8 = v6 < 2.0;
        v9 = 22;
        goto LABEL_48;
      case 11:
        if (v6 < 3.0)
        {
          v7 = 56;
        }

        else
        {
          v7 = 57;
        }

        v8 = v6 < 2.0;
        v9 = 55;
        goto LABEL_48;
    }
  }

  else if (a3 > 14)
  {
    if (a3 == 15)
    {
      if (v6 < 3.0)
      {
        v7 = 74;
      }

      else
      {
        v7 = 75;
      }

      v8 = v6 < 2.0;
      v9 = 73;
      goto LABEL_48;
    }

    if (a3 == 16)
    {
      if (v6 < 3.0)
      {
        v7 = 77;
      }

      else
      {
        v7 = 78;
      }

      v8 = v6 < 2.0;
      v9 = 76;
      goto LABEL_48;
    }
  }

  else
  {
    if (a3 == 12)
    {
      v13 = v6 < 2.0;
      v14 = 58;
      v15 = 59;
      goto LABEL_37;
    }

    if (a3 == 13)
    {
      if (v6 < 3.0)
      {
        v7 = 61;
      }

      else
      {
        v7 = 62;
      }

      v8 = v6 < 2.0;
      v9 = 60;
LABEL_48:
      if (v8)
      {
        return v9;
      }

      else
      {
        return v7;
      }
    }
  }

  if (a4 == 1)
  {
    if (a3 <= 6)
    {
      if (a3 > 3)
      {
        v13 = v6 < 2.0;
        if (a3 == 4)
        {
          v14 = 7;
          v15 = 28;
        }

        else
        {
          v14 = 6;
          v15 = 27;
        }
      }

      else if (a3 == 1)
      {
        v13 = v6 < 2.0;
        v14 = 3;
        v15 = 25;
      }

      else
      {
        if (a3 != 3)
        {
LABEL_99:
          if (v6 < 2.0)
          {
            return 1;
          }

          v20 = [objc_opt_self() mainScreen];
          [v20 _referenceBounds];
          Height = CGRectGetHeight(v23);

          v13 = Height < 1366.0;
          v14 = 24;
          v15 = 63;
          goto LABEL_37;
        }

        v13 = v6 < 2.0;
        v14 = 5;
        v15 = 26;
      }
    }

    else
    {
      if (a3 > 8)
      {
        if (a3 != 9)
        {
          if (a3 == 10)
          {
            if (v6 < 2.0)
            {
              return 1;
            }

            else
            {
              return 24;
            }
          }

          if (a3 == 14)
          {
            v10 = 71;
            if (v6 >= 2.0)
            {
              v11 = [objc_opt_self() mainScreen];
              [v11 _referenceBounds];
              v12 = CGRectGetHeight(v22);

              if (v12 < 1366.0)
              {
                return 71;
              }

              else
              {
                return 72;
              }
            }

            return v10;
          }

          goto LABEL_99;
        }

        goto LABEL_86;
      }

      if (a3 != 7)
      {
LABEL_81:
        v13 = v6 < 3.0;
        v14 = 30;
        v15 = 53;
        goto LABEL_37;
      }

      v13 = v6 < 2.0;
      v14 = 8;
      v15 = 29;
    }

LABEL_37:
    if (v13)
    {
      return v14;
    }

    else
    {
      return v15;
    }
  }

  if (qword_1ED498D28 != -1)
  {
    dispatch_once(&qword_1ED498D28, &__block_literal_global_1014);
  }

  if (a3 > 6)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
LABEL_86:
        v13 = v6 < 3.0;
        v14 = 31;
        v15 = 54;
        goto LABEL_37;
      }

      if (a3 == 14)
      {
        if (v6 < 3.0)
        {
          v7 = 69;
        }

        else
        {
          v7 = 70;
        }

        v8 = v6 < 2.0;
        v9 = 68;
        goto LABEL_48;
      }

      goto LABEL_91;
    }

    if (a3 != 7)
    {
      goto LABEL_81;
    }

LABEL_82:
    if (v6 < 3.0)
    {
      v7 = 21;
    }

    else
    {
      v7 = 37;
    }

    v8 = v6 < 2.0;
    v9 = 20;
    goto LABEL_48;
  }

  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      if (v6 < 3.0)
      {
        v7 = 16;
      }

      else
      {
        v7 = 33;
      }

      v8 = v6 < 2.0;
      v9 = 2;
      goto LABEL_48;
    }

    if (a3 != 3)
    {
      goto LABEL_91;
    }

LABEL_68:
    if (v6 < 3.0)
    {
      v7 = 19;
    }

    else
    {
      v7 = 36;
    }

    v8 = v6 < 2.0;
    v9 = 18;
    goto LABEL_48;
  }

  if (a3 == 4)
  {
    goto LABEL_82;
  }

  if (a3 == 6)
  {
    goto LABEL_68;
  }

LABEL_91:
  if (v6 < 3.0)
  {
    if (v6 < 2.0)
    {
      return 0;
    }

    v17 = byte_1ED498CEC == 0;
    v18 = 15;
    v19 = 79;
  }

  else
  {
    v17 = byte_1ED498CEC == 0;
    v18 = 32;
    v19 = 80;
  }

  if (v17)
  {
    return v18;
  }

  else
  {
    return v19;
  }
}

void __88__UIImage_UIApplicationIconPrivate___iconVariantForUIApplicationIconFormat_idiom_scale___block_invoke()
{
  v0 = +[UIScreen _embeddedScreen];
  byte_1ED498CEC = _UIScreenIsPhyiscallyLargePhone([v0 _screenType]);
}

+ (id)_ISImageDescriptorNameForUIApplicationIconFormat:(int)a3
{
  if (a3 > 0x10)
  {
    v3 = MEMORY[0x1E69A8A78];
  }

  else
  {
    v3 = qword_1E710C0E8[a3];
  }

  return *v3;
}

+ (id)_baseImageDescriptorForUIApplicationIconFormat:(int)a3
{
  v4 = [UIImage _ISImageDescriptorNameForUIApplicationIconFormat:?];
  v5 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v4];
  [v5 setDrawBorder:(a3 < 0x11) & (0x1C001u >> a3)];

  return v5;
}

+ (id)_imageWithIcon:(void *)a3 descriptor:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 prepareImageForDescriptor:v4];

  v7 = [v6 CGImage];
  [v6 scale];
  v8 = [UIImage imageWithCGImage:v7 scale:0 orientation:?];

  return v8;
}

+ (id)_applicationIconImageForBundleIdentifier:(id)a3 format:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v8 = [a1 _applicationIconImageForBundleIdentifier:v6 format:v4 scale:?];

  return v8;
}

+ (id)_applicationIconImageForBundleIdentifier:(id)a3 format:(int)a4 scale:(double)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppIcon(bundleID=%@, format=%d, scale=%.1lf)", v8, v6, *&a5];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke;
  v17[3] = &unk_1E710C028;
  v19 = v8;
  v20 = a1;
  v18 = v10;
  v22 = v6;
  v21 = a5;
  v11 = v8;
  v12 = v10;
  v13 = [UIImageAsset _uncachedDynamicIconAssetNamed:v9 generator:v17];
  v14 = +[UIImageConfiguration _unspecifiedConfiguration];
  v15 = [v13 imageWithConfiguration:v14];

  return v15;
}

id __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__109;
  v27 = __Block_byref_object_dispose__109;
  v28 = [v8 _systemIconAppearance];
  if (!v24[5])
  {
    if (pthread_main_np() == 1)
    {
      v10 = __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke_1020();
      v11 = v24[5];
      v24[5] = v10;
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke_2;
      v20[3] = &unk_1E70FCF18;
      v21 = &__block_literal_global_1023;
      v22 = &v23;
      dispatch_sync(MEMORY[0x1E69E96A0], v20);
      v11 = v21;
    }
  }

  v12 = [v8 traitCollection];
  v13 = [v12 userInterfaceStyle];

  if (v13 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = v24[5];
  objc_opt_self();
  v16 = objc_opt_new();
  v17 = v16[1];
  v16[1] = v15;

  v16[2] = v14;
  v18 = [*(a1 + 32) objectForKeyedSubscript:v16];
  if (!v18)
  {
    v18 = [*(a1 + 48) _applicationIconImageForBundleIdentifier:*(a1 + 40) format:*(a1 + 64) scale:v24[5] appearance:v14 style:*(a1 + 56)];
    [*(a1 + 32) removeAllObjects];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:v16];
  }

  _Block_object_dispose(&v23, 8);

  return v18;
}

id __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke_1020()
{
  v0 = +[UIScene _mostActiveScene];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 _systemIconAppearanceSceneComponent];
    v3 = [(_UISystemIconAppearanceSceneComponent *)v2 appearance];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_applicationIconImageForBundleIdentifier:(id)a3 format:(int)a4 scale:(double)a5 appearance:(id)a6 style:(int64_t)a7
{
  v9 = *&a4;
  v12 = a6;
  v13 = MEMORY[0x1E69A8A00];
  v14 = a3;
  v15 = [[v13 alloc] initWithBundleIdentifier:v14];

  v16 = [a1 _baseImageDescriptorForUIApplicationIconFormat:v9];
  v17 = v16;
  if (v12)
  {
    [(_UISystemIconAppearance *)v12 applyAppearanceToDescriptor:v16 userInterfaceStyle:a7];
  }

  else
  {
    [v16 setAppearance:a7 == 2];
  }

  if (a5 > 0.0)
  {
    [v17 setScale:a5];
  }

  else
  {
    v18 = [objc_opt_self() mainScreen];
    [v18 scale];
    [v17 setScale:?];
  }

  v19 = [UIImage _imageWithIcon:v15 descriptor:v17];

  return v19;
}

+ (id)_iconForResourceProxy:(id)a3 format:(int)a4 options:(unint64_t)a5
{
  v5 = a5;
  v6 = *&a4;
  v8 = MEMORY[0x1E69A8A00];
  v9 = a3;
  v10 = [[v8 alloc] initWithResourceProxy:v9];

  v11 = [a1 _baseImageDescriptorForUIApplicationIconFormat:v6];
  v12 = [objc_opt_self() mainScreen];
  [v12 scale];
  [v11 setScale:?];

  if (v5)
  {
    [v11 setVariantOptions:{objc_msgSend(v11, "variantOptions") | 1}];
  }

  v13 = [UIImage _imageWithIcon:v10 descriptor:v11];

  return v13;
}

- (id)_applicationIconImageForFormat:(int)a3 precomposed:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v8 = [(UIImage *)self _applicationIconImageForFormat:v5 precomposed:v4 scale:?];

  return v8;
}

- (id)_applicationIconImageForFormat:(int)a3 precomposed:(BOOL)a4 scale:(double)a5
{
  v6 = *&a3;
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = objc_alloc(MEMORY[0x1E69A8988]);
  v9 = [(UIImage *)self CGImage];
  [(UIImage *)self scale];
  v10 = [v8 initWithCGImage:v9 scale:?];
  v11 = objc_alloc(MEMORY[0x1E69A8A00]);
  v19[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [v11 initWithImages:v12];

  v14 = [UIImage _baseImageDescriptorForUIApplicationIconFormat:v6];
  v15 = v14;
  if (a5 > 0.0)
  {
    [v14 setScale:a5];
  }

  else
  {
    v16 = [objc_opt_self() mainScreen];
    [v16 scale];
    [v15 setScale:?];
  }

  v17 = [UIImage _imageWithIcon:v13 descriptor:v15];

  return v17;
}

+ (UIImage)actionsImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  v3 = [(_UIImageSystemImageVisualStyle *)v2 actionsImage];

  return v3;
}

+ (UIImage)addImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  v3 = [(_UIImageSystemImageVisualStyle *)v2 addImage];

  return v3;
}

+ (UIImage)removeImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  v3 = [(_UIImageSystemImageVisualStyle *)v2 removeImage];

  return v3;
}

+ (UIImage)checkmarkImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  v3 = [(_UIImageSystemImageVisualStyle *)v2 checkmarkImage];

  return v3;
}

+ (UIImage)strokedCheckmarkImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  v3 = [(_UIImageSystemImageVisualStyle *)v2 strokedCheckmarkImage];

  return v3;
}

- (id)_imageByApplyingVariant:(unint64_t)a3 allowNone:(BOOL)a4
{
  if (!a3 && !a4 || (_UIImageName(self), v6 = objc_claimAutoreleasedReturnValue(), v7 = _UIImageVariantValueForName(v6), v6, (a3 & ~v7) == 0))
  {
    v8 = self;
    goto LABEL_17;
  }

  v9 = _UIImageName(self);
  if (![v9 length])
  {
    goto LABEL_15;
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__UIImage_UIImageVariant___imageByApplyingVariant_allowNone___block_invoke;
  v16 = &unk_1E710C050;
  v17 = v9;
  v18 = self;
  v10 = _Block_copy(&v13);
  v11 = v10[2](v10, a3);
  if (!v11)
  {
    v11 = v10[2](v10, a3 & 0xFFFFFFFFFFFEFFFFLL);
    if (!v11)
    {
      v11 = v10[2](v10, a3 & 0xFFFFFFFFBFFFFFFFLL);
      if (!v11)
      {
        v11 = v10[2](v10, a3 & 0xFFFFFFFFFFFFFFF1);
        if (!v11)
        {
          v11 = v10[2](v10, a3 & 0xFFFFFFFFBFFEFFFFLL);
          if (!v11)
          {
            v11 = v10[2](v10, a3 & 0xFFFFFFFFFFFEFFF1);
            if (!v11)
            {
              v11 = v10[2](v10, a3 & 0xFFFFFFFFBFFFFFF1);
              if (!v11)
              {

LABEL_15:
                v8 = self;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

  v8 = v11;
  [(UIImage *)self _configureImage:v11 assumePreconfigured:0, v13, v14, v15, v16];

LABEL_16:
LABEL_17:

  return v8;
}

id __61__UIImage_UIImageVariant___imageByApplyingVariant_allowNone___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _UIImageVariantName(*(a1 + 32), a2);
  v4 = _UIIsSystemSymbolImage(*(a1 + 40));
  v5 = [*(a1 + 40) configuration];
  if (v4)
  {
    [UIImage _systemImageNamed:v3 withConfiguration:v5];
  }

  else
  {
    [UIImage imageNamed:v3 withConfiguration:v5];
  }
  v6 = ;

  return v6;
}

+ (id)_systemImageNamed:(id)a3 variant:(unint64_t)a4
{
  v4 = _UIImageVariantName(a3, a4);
  v5 = [UIImage _systemImageNamed:v4 withConfiguration:0];

  return v5;
}

+ (id)_systemImageNamed:(id)a3 variant:(unint64_t)a4 withConfiguration:(id)a5
{
  v7 = a5;
  v8 = _UIImageVariantName(a3, a4);
  v9 = [UIImage _systemImageNamed:v8 withConfiguration:v7];

  return v9;
}

+ (id)_systemImageNamed:(id)a3 shape:(int64_t)a4
{
  if ((a4 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_18A67CB50[a4 - 1];
  }

  return [a1 _systemImageNamed:a3 variant:v4];
}

+ (id)_systemImageNamed:(id)a3 shape:(int64_t)a4 fill:(int64_t)a5
{
  if ((a4 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_18A67CB50[a4 - 1];
  }

  if (a5 == 1)
  {
    v6 = v5 | 0x40000000;
  }

  else
  {
    v6 = v5;
  }

  return [a1 _systemImageNamed:a3 variant:v6];
}

+ (id)_systemImageNamed:(id)a3 shape:(int64_t)a4 fill:(int64_t)a5 withConfiguration:(id)a6
{
  if ((a4 - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_18A67CB50[a4 - 1];
  }

  if (a5 == 1)
  {
    v7 = v6 | 0x40000000;
  }

  else
  {
    v7 = v6;
  }

  return [a1 _systemImageNamed:a3 variant:v7 withConfiguration:a6];
}

- (id)_applyBackdropViewSettings:(id)a3 allowImageResizing:(BOOL)a4
{
  v4 = a4;
  v144 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(UIImage *)self size];
  if (v7 < 1.0 || ([(UIImage *)self size], v8 < 1.0))
  {
    [(UIImage *)self size];
    v10 = v9;
    [(UIImage *)self size];
    NSLog(&cfstr_Applybackdropv.isa, v10, v11, self);
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  if (![(UIImage *)self CGImage])
  {
    NSLog(&cfstr_Applybackdropv_0.isa, self);
    goto LABEL_4;
  }

  v14 = [v6 grayscaleTintMaskImage];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 grayscaleTintMaskImage];
    v17 = [v16 CGImage];

    if (!v17)
    {
      v47 = [v6 grayscaleTintMaskImage];
      NSLog(&cfstr_Applybackdropv_1.isa, v47);
LABEL_31:

      goto LABEL_4;
    }
  }

  v18 = [v6 colorTintMaskImage];
  if (v18)
  {
    v19 = v18;
    v20 = [v6 colorTintMaskImage];
    v21 = [v20 CGImage];

    if (!v21)
    {
      v47 = [v6 colorTintMaskImage];
      NSLog(&cfstr_Applybackdropv_2.isa, v47);
      goto LABEL_31;
    }
  }

  v22 = [v6 filterMaskImage];
  if (v22)
  {
    v23 = v22;
    v24 = [v6 filterMaskImage];
    v25 = [v24 CGImage];

    if (!v25)
    {
      v47 = [v6 filterMaskImage];
      NSLog(&cfstr_Applybackdropv_3.isa, v47);
      goto LABEL_31;
    }
  }

  [v6 blurRadius];
  v27 = v26;
  [v6 saturationDeltaFactor];
  v29 = v28;
  v30 = [objc_opt_self() mainScreen];
  [v30 scale];
  v32 = v31;

  v33 = [v6 usesBackdropEffectView];
  v34 = fabs(v29 + -1.0);
  if (v27 > 0.00000011920929)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = 1.0;
  if ((v35 & v4) != 0)
  {
    v36 = 0.25;
  }

  v132.f64[0] = v36;
  [(UIImage *)self size];
  v131 = v37;
  [(UIImage *)self size];
  v130 = v38;
  v39 = self;
  v40 = [v6 usesBackdropEffectView];
  v41.f64[0] = v131.f64[0];
  *&v41.f64[1] = v130;
  v42 = vrndp_f32(vcvt_f32_f64(vmulq_n_f64(v41, v132.f64[0])));
  v132 = vcvtq_f64_f32(v42);
  v43 = v34 > 0.00000011920929 || v27 > 0.00000011920929;
  v44 = v39;
  if (v40)
  {
    v44 = v39;
    if (v43)
    {
      _UIGraphicsBeginImageContextWithOptions(0, 0, v132.f64[0], v132.f64[1], v32);
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      CGContextScaleCTM(v46, 1.0, -1.0);
      CGContextTranslateCTM(v46, 0.0, -v132.f64[1]);
      v48 = [(UIImage *)v39 CGImage];
      v146.origin.x = 0.0;
      v146.origin.y = 0.0;
      v146.size = v132;
      CGContextDrawImage(v46, v146, v48);
      src.data = CGBitmapContextGetData(v46);
      src.width = CGBitmapContextGetWidth(v46);
      src.height = CGBitmapContextGetHeight(v46);
      src.rowBytes = CGBitmapContextGetBytesPerRow(v46);
      _UIGraphicsBeginImageContextWithOptions(0, 0, v132.f64[0], v132.f64[1], v32);
      v49 = GetContextStack(0);
      if (*v49 < 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49[3 * (*v49 - 1) + 1];
      }

      dest.data = CGBitmapContextGetData(v50);
      dest.width = CGBitmapContextGetWidth(v50);
      dest.height = CGBitmapContextGetHeight(v50);
      dest.rowBytes = CGBitmapContextGetBytesPerRow(v50);
      if (v27 > 0.00000011920929)
      {
        [v6 blurRadius];
        v52 = v32 * (v51 * 0.25);
        if (v52 < 2.0)
        {
          v52 = 2.0;
        }

        v53 = vcvtmd_u64_f64(v52 * 3.0 * 2.50662827 * 0.25 + 0.5);
        v54 = v53 | 1;
        if (v4)
        {
          vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v53 | 1, v53 | 1, 0, 8u);
          vImageBoxConvolve_ARGB8888(&dest, &src, 0, 0, 0, v54, v54, 0, 8u);
          vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v54, v54, 0, 8u);
        }

        else
        {
          __asm { FMOV            V0.2S, #0.25 }

          v60 = vcvtq_f64_f32(vrndp_f32(vmul_f32(v42, _D0)));
          v61 = v60.f64[1];
          v131 = v60;
          _UIGraphicsBeginImageContextWithOptions(0, 0, v60.f64[0], v60.f64[1], v32);
          v62 = GetContextStack(0);
          if (*v62 < 1)
          {
            v63 = 0;
          }

          else
          {
            v63 = v62[3 * (*v62 - 1) + 1];
          }

          v136.data = CGBitmapContextGetData(v63);
          v136.width = CGBitmapContextGetWidth(v63);
          v136.height = CGBitmapContextGetHeight(v63);
          v136.rowBytes = CGBitmapContextGetBytesPerRow(v63);
          _UIGraphicsBeginImageContextWithOptions(0, 0, v131.f64[0], v61, v32);
          v64 = GetContextStack(0);
          if (*v64 < 1)
          {
            v65 = 0;
          }

          else
          {
            v65 = v64[3 * (*v64 - 1) + 1];
          }

          v133.data = CGBitmapContextGetData(v65);
          v133.width = CGBitmapContextGetWidth(v65);
          v133.height = CGBitmapContextGetHeight(v65);
          v133.rowBytes = CGBitmapContextGetBytesPerRow(v65);
          vImageScale_ARGB8888(&src, &v136, 0, 0);
          vImageBoxConvolve_ARGB8888(&v136, &v133, 0, 0, 0, v54, v54, 0, 8u);
          vImageBoxConvolve_ARGB8888(&v133, &v136, 0, 0, 0, v54, v54, 0, 8u);
          vImageBoxConvolve_ARGB8888(&v136, &v133, 0, 0, 0, v54, v54, 0, 8u);
          vImageScale_ARGB8888(&v133, &dest, 0, 0);
          UIGraphicsEndImageContext();
          UIGraphicsEndImageContext();
        }
      }

      if (v34 > 0.00000011920929)
      {
        v66 = [v6 saturationDeltaFactor];
        v68 = vmulq_n_f64(xmmword_18A67CAD0, v67);
        v69.f64[0] = 0.7152;
        *&v69.f64[0] = *&vsubq_f64(v69, v68);
        *&v136.data = v67 * 0.9278 + 0.0722;
        *&v136.height = 0.0722 - v67 * 0.0722;
        v138 = *&v69.f64[0];
        v69.f64[1] = vaddq_f64(v68, vdupq_n_s64(0x3FE6E2EB1C432CA5uLL)).f64[1];
        v136.width = v136.height;
        v137 = v69;
        v70.f64[0] = 0.2126;
        v136.rowBytes = 0;
        v71 = vmulq_n_f64(xmmword_18A67CAE0, v67);
        *&v72 = *&vsubq_f64(v70, v71);
        v139 = v72;
        *(&v72 + 1) = *&vaddq_f64(v71, vdupq_n_s64(0x3FCB367A0F9096BCuLL)).f64[1];
        v140 = v72;
        v141 = 0u;
        v142 = 0u;
        v143 = 0x3FF0000000000000;
        MEMORY[0x1EEE9AC00](v66);
        v77 = 0;
        v78 = &v136;
        v79 = vdupq_n_s64(0x4070000000000000uLL);
        do
        {
          v80 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v78[3], v79))));
          v81 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v78[2], v79))));
          v82 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v78[1], v79))));
          v83 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(*v78, v79))));
          *(&v129 + v77) = vqtbl4q_s8(*(&v73 - 1), xmmword_18A67CAF0);
          v78 += 4;
          v77 += 16;
        }

        while (v77 != 32);
        if (v27 > 0.00000011920929)
        {
          vImageMatrixMultiply_ARGB8888(&dest, &src, &v129, 256, 0, 0, 0);
          UIGraphicsEndImageContext();
          v44 = _UIGraphicsGetImageFromCurrentImageContext(0);

LABEL_55:
          UIGraphicsEndImageContext();
          goto LABEL_56;
        }

        vImageMatrixMultiply_ARGB8888(&src, &dest, &v129, 256, 0, 0, 0);
      }

      v44 = _UIGraphicsGetImageFromCurrentImageContext(0);

      UIGraphicsEndImageContext();
      goto LABEL_55;
    }
  }

LABEL_56:
  v84 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [v6 style]);
  [v84 setValuesFromModel:v6];
  v85 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [v6 style]);
  if ([v85 requiresColorStatistics])
  {
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    memset(&v136, 0, sizeof(v136));
    if (v44)
    {
      [v44 _calculateStatistics];
      v86 = *&v136.rowBytes;
    }

    else
    {
      v86 = 0.0;
    }

    v87 = [v84 colorSettings];
    [v87 setAverageHue:v86];

    v88 = v137.f64[0];
    v89 = [v84 colorSettings];
    [v89 setAverageSaturation:v88];

    v90 = v137.f64[1];
    v91 = [v84 colorSettings];
    [v91 setAverageBrightness:v90];

    v92 = *(&v138 + 1);
    v93 = [v84 colorSettings];
    [v93 setContrast:v92];
  }

  [v85 computeOutputSettingsUsingModel:v84];
  v94 = [v6 grayscaleTintMaskImage];
  if (v94 || ([v6 colorTintMaskImage], (v94 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v128 = [v6 filterMaskImage];

    if (!v128)
    {
      v95 = 0x61u >> CGImageGetBitmapInfo([(UIImage *)v39 CGImage]);
      goto LABEL_65;
    }
  }

  LOBYTE(v95) = 0;
LABEL_65:
  v96 = v132;
  if (v4)
  {
    v97 = v132.f64[1];
    v98 = 0.0;
    v99 = 0.0;
  }

  else
  {
    v98 = *MEMORY[0x1E695EFF8];
    v99 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIImage *)v39 size];
    v97 = v100;
  }

  v132 = v96;
  _UIGraphicsBeginImageContextWithOptions(v95 & 1, 0, v96.f64[0], v97, v32);
  v101 = GetContextStack(0);
  if (*v101 < 1)
  {
    v102 = 0;
  }

  else
  {
    v102 = v101[3 * (*v101 - 1) + 1];
  }

  CGContextScaleCTM(v102, 1.0, -1.0);
  CGContextTranslateCTM(v102, 0.0, -v97);
  v103 = [(UIImage *)v39 CGImage];
  v147.origin.x = v98;
  v147.origin.y = v99;
  v147.size.width = v132.f64[0];
  v147.size.height = v97;
  CGContextDrawImage(v102, v147, v103);
  if ([v85 usesBackdropEffectView])
  {
    CGContextSaveGState(v102);
    v104 = [v6 filterMaskImage];

    if (v104)
    {
      v105 = [v6 filterMaskImage];
      v106 = [v105 CGImage];
      v148.origin.x = v98;
      v148.origin.y = v99;
      v148.size.width = v132.f64[0];
      v148.size.height = v97;
      CGContextClipToMask(v102, v148, v106);
    }

    v107 = [v44 CGImage];
    v149.origin.x = v98;
    v149.origin.y = v99;
    v149.size.width = v132.f64[0];
    v149.size.height = v97;
    CGContextDrawImage(v102, v149, v107);
    CGContextRestoreGState(v102);
  }

  if ([v85 usesGrayscaleTintView])
  {
    CGContextSaveGState(v102);
    [v85 grayscaleTintAlpha];
    v109 = v108;
    [v85 grayscaleTintLevel];
    CGContextSetGrayFillColor(v102, v110, v109);
    v111 = [v6 grayscaleTintMaskImage];

    v112 = v132.f64[0];
    if (v111)
    {
      v113 = [v6 grayscaleTintMaskImage];
      v114 = [v113 CGImage];
      v150.origin.x = v98;
      v150.origin.y = v99;
      v150.size.width = v132.f64[0];
      v150.size.height = v97;
      CGContextClipToMask(v102, v150, v114);

      v112 = v132.f64[0];
    }

    v115 = v98;
    v116 = v99;
    v117 = v97;
    CGContextFillRect(v102, *(&v112 - 2));
    CGContextRestoreGState(v102);
  }

  if ([v85 usesColorTintView])
  {
    v118 = [v85 colorTint];

    if (v118)
    {
      CGContextSaveGState(v102);
      v136.data = 0;
      src.data = 0;
      dest.data = 0;
      v133.data = 0;
      v119 = [v85 colorTint];
      [v119 getRed:&v136 green:&src blue:&dest alpha:&v133];

      [v85 colorTintAlpha];
      *&v133.data = v120 * *&v133.data;
      CGContextSetRGBFillColor(v102, *&v136.data, *&src.data, *&dest.data, *&v133.data);
      v121 = [v6 colorTintMaskImage];

      v122 = v132.f64[0];
      if (v121)
      {
        v123 = [v6 colorTintMaskImage];
        v124 = [v123 CGImage];
        v151.origin.x = v98;
        v151.origin.y = v99;
        v151.size.width = v132.f64[0];
        v151.size.height = v97;
        CGContextClipToMask(v102, v151, v124);

        v122 = v132.f64[0];
      }

      v125 = v98;
      v126 = v99;
      v127 = v97;
      CGContextFillRect(v102, *(&v122 - 2));
      CGContextRestoreGState(v102);
    }
  }

  v12 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

LABEL_5:

  return v12;
}

- (id)_applyBackdropViewSettings:(id)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5 allowImageResizing:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = v10;
  if (a4 || a5)
  {
    if (!a4)
    {
      [v10 setUsesGrayscaleTintView:0];
      [v11 setUsesColorTintView:0];
    }

    if (!a5)
    {
      [v11 setBlurRadius:0.0];
      [v11 setSaturationDeltaFactor:1.0];
    }

    v12 = [(UIImage *)self _applyBackdropViewSettings:v11 allowImageResizing:v6];
  }

  else
  {
    v12 = self;
  }

  v13 = v12;

  return v13;
}

- (id)_applyBackdropViewStyle:(int64_t)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = +[UIDevice currentDevice];
  v10 = -[UIImage _applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:](self, "_applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:", a3, v6, v5, [v9 _graphicsQuality]);

  return v10;
}

- (id)_applyBackdropViewStyle:(int64_t)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5 graphicsQuality:(int64_t)a6
{
  v6 = a5;
  v7 = a4;
  v10 = [UIDevice currentDevice:a3];
  v11 = -[UIImage _applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:allowImageResizing:](self, "_applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:allowImageResizing:", a3, v7, v6, [v10 _graphicsQuality], 0);

  return v11;
}

- (id)_applyBackdropViewStyle:(int64_t)a3 includeTints:(BOOL)a4 includeBlur:(BOOL)a5 graphicsQuality:(int64_t)a6 allowImageResizing:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  if (a4 || a5)
  {
    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:a3 graphicsQuality:a6];
    v11 = [(UIImage *)self _applyBackdropViewSettings:v12 includeTints:v9 includeBlur:v8 allowImageResizing:v7];
  }

  else
  {
    v11 = self;
  }

  return v11;
}

+ (id)_tintedImageForSize:(CGSize)a3 withTint:(id)a4 effectsImage:(id)a5 maskImage:(id)a6 style:(int)a7
{
  v7 = 0;
  if (a3.width > 0.0)
  {
    height = a3.height;
    if (a3.height > 0.0)
    {
      width = a3.width;
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      v15 = a6;
      v16 = a5;
      v17 = a4;
      _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
      v18 = _UIImagePressedTintColor(v17, a7);

      [v18 set];
      UIRectFillUsingOperation(1, v13, v14, width, height);
      [v16 drawInRect:{v13, v14, width, height}];

      [v15 drawInRect:22 blendMode:v13 alpha:{v14, width, height, 1.0}];
      v7 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v7;
}

+ (id)_tintedImageForSize:(CGSize)a3 withTint:(id)a4 maskImage:(id)a5 effectsImage:(id)a6 style:(int)a7
{
  v7 = 0;
  if (a3.width > 0.0)
  {
    height = a3.height;
    if (a3.height > 0.0)
    {
      width = a3.width;
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      v15 = a6;
      v16 = a5;
      v17 = a4;
      _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
      v18 = _UIImagePressedTintColor(v17, a7);

      [v18 set];
      UIRectFillUsingOperation(1, v13, v14, width, height);
      [v16 drawInRect:22 blendMode:v13 alpha:{v14, width, height, 1.0}];

      [v15 drawInRect:{v13, v14, width, height}];
      v7 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v7;
}

+ (id)_tintedImageForSize:(CGSize)a3 withTint:(id)a4 maskImage:(id)a5 effectsImage:(id)a6 style:(int)a7 edgeInsets:(UIEdgeInsets)a8
{
  v8 = 0;
  if (a3.width > 0.0)
  {
    height = a3.height;
    if (a3.height > 0.0)
    {
      left = a8.left;
      top = a8.top;
      width = a3.width;
      v16 = *MEMORY[0x1E695EFF8];
      v17 = *(MEMORY[0x1E695EFF8] + 8);
      v18 = a3.width - (a8.left + a8.right);
      v19 = a3.height - (a8.top + a8.bottom);
      v20 = a6;
      v21 = a5;
      v22 = a4;
      _UIGraphicsBeginImageContextWithOptions(0, 0, v18, v19, 0.0);
      v23 = v16 - left;
      v24 = v17 - top;
      v25 = _UIImagePressedTintColor(v22, a7);

      [v25 set];
      UIRectFillUsingOperation(1, v23, v24, width, height);
      [v21 drawInRect:22 blendMode:v23 alpha:{v24, width, height, 1.0}];

      [v20 drawInRect:{v23, v24, width, height}];
      v8 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v8;
}

+ (id)_cachedImageForKey:(id)a3 fromBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1ED49E6A0 != -1)
  {
    dispatch_once(&qword_1ED49E6A0, &__block_literal_global_312);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__112;
  v25 = __Block_byref_object_dispose__112;
  v26 = 0;
  v7 = qword_1ED49E698;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__UIImage__UIImageTintedInterfaceExtension___cachedImageForKey_fromBlock___block_invoke_3;
  block[3] = &unk_1E70FCDA0;
  v20 = &v21;
  v8 = v5;
  v19 = v8;
  dispatch_sync(v7, block);
  v9 = v22[5];
  if (!v9)
  {
    v10 = v6[2](v6);
    v11 = v22[5];
    v22[5] = v10;

    v12 = qword_1ED49E698;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__UIImage__UIImageTintedInterfaceExtension___cachedImageForKey_fromBlock___block_invoke_2;
    v15[3] = &unk_1E70FE3F8;
    v16 = v8;
    v17 = &v21;
    dispatch_sync(v12, v15);

    v9 = v22[5];
  }

  v13 = v9;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __74__UIImage__UIImageTintedInterfaceExtension___cachedImageForKey_fromBlock___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:16];
  v1 = _MergedGlobals_1145;
  _MergedGlobals_1145 = v0;

  v2 = dispatch_queue_create("weak image cache queue", 0);
  v3 = qword_1ED49E698;
  qword_1ED49E698 = v2;
}

void __74__UIImage__UIImageTintedInterfaceExtension___cachedImageForKey_fromBlock___block_invoke_3(uint64_t a1)
{
  v2 = [_MergedGlobals_1145 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__UIImage__UIImageTintedInterfaceExtension___cachedImageForKey_fromBlock___block_invoke_2(uint64_t a1)
{
  v2 = [_MergedGlobals_1145 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  if (v2)
  {
    v5 = v2;
    objc_storeStrong((v3 + 40), v2);
  }

  else
  {
    v4 = *(v3 + 40);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = 0;
    objc_setAssociatedObject(v4, &_MergedGlobals_1145, *(a1 + 32), 1);
    [_MergedGlobals_1145 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }

  v2 = v5;
LABEL_6:
}

+ (CGSize)_legibilityImageSizeForSize:(CGSize)a3 style:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [_UILegibilitySettings sharedInstanceForStyle:a4];
  [v6 imageOutset];
  v8 = width + v7;
  [v6 imageOutset];
  v10 = height + v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (id)_imageForLegibilityStyle:(int64_t)a3
{
  [(UIImage *)self size];
  if (v5 < 1.0)
  {
    return self;
  }

  [(UIImage *)self size];
  if (v6 < 1.0)
  {
    return self;
  }

  v8 = [_UILegibilitySettings sharedInstanceForStyle:a3];

  return [(UIImage *)self _imageForLegibilitySettings:v8 strength:1.5];
}

- (id)_imageForLegibilitySettings:(id)a3 strength:(double)a4 alphaOnly:(BOOL)a5
{
  v5 = a5;
  v8 = self;
  [(UIImage *)self size];
  if (v9 >= 1.0)
  {
    [(UIImage *)v8 size];
    if (v10 >= 1.0)
    {
      v11 = [a3 style];
      if (a4 != 0.0)
      {
        if (v11)
        {
          [(UIImage *)v8 size];
          v13 = v12;
          [a3 imageOutset];
          v15 = v13 + v14;
          [(UIImage *)v8 size];
          v17 = v16;
          [a3 imageOutset];
          v19 = v17 + v18;
          [objc_msgSend(objc_opt_self() "mainScreen")];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __73__UIImage__UILegibility___imageForLegibilitySettings_strength_alphaOnly___block_invoke;
          v22[3] = &unk_1E710C2F8;
          v22[4] = v8;
          v22[5] = a3;
          *&v22[6] = a4;
          *&v22[7] = v15;
          *&v22[8] = v19;
          v23 = v5;
          return _UIGraphicsDrawIntoImageContextWithMoreOptions(0, v5, v22, v15, v19, v20);
        }
      }
    }
  }

  return v8;
}

- (void)_drawImageForLegibilityStyle:(int64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [_UILegibilitySettings sharedInstanceForStyle:a3];

  [(UIImage *)self _drawImageForLegibilitySettings:v7 strength:1.5 size:width, height];
}

- (void)_drawImageForLegibilitySettings:(id)a3 strength:(double)a4 size:(CGSize)a5 alphaOnly:(BOOL)a6
{
  v6 = a6;
  width = a5.width;
  height = a5.height;
  v10 = [a3 style];
  if (a4 != 0.0 && v10 != 0)
  {
    [(UIImage *)self size];
    v13 = v12;
    [(UIImage *)self size];
    v15 = v14;
    [objc_msgSend(objc_opt_self() "mainScreen")];
    v17 = v16;
    v18 = UIRectCenteredIntegralRectScale(0.0, 0.0, v13, v15, 0.0, 0.0, width, height, v16);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = self;
    if (!v6)
    {
      v25 = -[UIImage _flatImageWithColor:](self, "_flatImageWithColor:", [a3 shadowColor]);
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x3052000000;
    v50 = __Block_byref_object_copy__113;
    v51 = __Block_byref_object_dispose__113;
    v52 = 0;
    [objc_msgSend(objc_opt_self() "mainScreen")];
    v27 = v26;
    v28.f64[0] = width;
    v28.f64[1] = height;
    __asm { FMOV            V1.2D, #0.25 }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __82__UIImage__UILegibility___drawImageForLegibilitySettings_strength_size_alphaOnly___block_invoke;
    v38[3] = &unk_1E710C348;
    v39 = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v28, _Q1))));
    v40 = 0x3FD0000000000000;
    v38[4] = self;
    v38[5] = a3;
    v41 = v17;
    v42 = v18;
    v43 = v20;
    v44 = v22;
    v45 = v24;
    v46 = v6;
    v38[6] = v25;
    v38[7] = &v47;
    _UIGraphicsDrawIntoImageContextWithMoreOptions(0, v6, v38, v39.f64[0], v39.f64[1], v27);
    [a3 shadowAlpha];
    for (i = v33 * a4; i > 0.00000011920929; i = i + -1.0)
    {
      if (i + 0.00000011920929 <= 1.0)
      {
        v35 = i;
      }

      else
      {
        v35 = 1.0;
      }

      [v48[5] drawInRect:0 blendMode:0.0 alpha:{0.0, width, height, v35}];
    }

    _Block_object_dispose(&v47, 8);
  }
}

id __82__UIImage__UILegibility___drawImageForLegibilitySettings_strength_size_alphaOnly___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  [*(a1 + 32) size];
  *&v4 = v4 * *(a1 + 80);
  v5 = ceilf(*&v4);
  [*(a1 + 32) size];
  v7 = v6 * *(a1 + 80);
  v8 = UIRectCenteredIntegralRectScale(0.0, 0.0, v5, ceilf(v7), 0.0, 0.0, v2, v3, *(a1 + 88));
  v10 = v9;
  v12 = v11;
  v14 = v13;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetFillColorWithColor(v16, [objc_msgSend(*(a1 + 40) "shadowColor")]);
  Height = CGRectGetHeight(*(a1 + 96));
  [*(a1 + 40) minFillHeight];
  if (Height >= v18)
  {
    [*(a1 + 40) shadowRadius];
    CGContextScaleCTM(v16, 1.0, -1.0);
    CGContextTranslateCTM(v16, 0.0, -*(a1 + 72));
    v19 = [*(a1 + 48) CGImage];
    v33.origin.x = v8;
    v33.origin.y = v10;
    v33.size.width = v12;
    v33.size.height = v14;
    CGContextDrawImage(v16, v33, v19);
  }

  else
  {
    v32.origin.x = v8;
    v32.origin.y = v10;
    v32.size.width = v12;
    v32.size.height = v14;
    CGContextFillRect(v16, v32);
  }

  Data = CGBitmapContextGetData(v16);
  Width = CGBitmapContextGetWidth(v16);
  v22 = CGBitmapContextGetHeight(v16);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v16);
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v24 = *(a1 + 128);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __82__UIImage__UILegibility___drawImageForLegibilitySettings_strength_size_alphaOnly___block_invoke_2;
  v30[3] = &unk_1E710C320;
  v25 = *(a1 + 40);
  v26 = *(a1 + 72);
  v30[6] = *(a1 + 80);
  v31 = v24;
  v30[7] = Data;
  v30[8] = v22;
  v30[9] = Width;
  v30[10] = BytesPerRow;
  v27 = *(a1 + 56);
  v30[4] = v25;
  v30[5] = v27;
  return _UIGraphicsDrawIntoImageContextWithMoreOptions(0, v24, v30, *(a1 + 64), v26, v28);
}

id __82__UIImage__UILegibility___drawImageForLegibilitySettings_strength_size_alphaOnly___block_invoke_2(uint64_t a1)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  dest.data = CGBitmapContextGetData(v3);
  dest.width = CGBitmapContextGetWidth(v3);
  dest.height = CGBitmapContextGetHeight(v3);
  dest.rowBytes = CGBitmapContextGetBytesPerRow(v3);
  [*(a1 + 32) shadowRadius];
  v5 = v4 * *(a1 + 48);
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v7 = v5 * v6;
  if (v7 < 2.0)
  {
    v7 = 2.0;
  }

  v8 = vcvtmd_u64_f64(v7 * 3.0 * 2.50662827 * 0.25 + 0.5);
  if (*(a1 + 88) == 1)
  {
    vImageTentConvolve_Planar8((a1 + 56), &dest, 0, 0, 0, v8 | 1, v8 | 1, 0, 8u);
  }

  else
  {
    vImageTentConvolve_ARGB8888((a1 + 56), &dest, 0, 0, 0, v8 | 1, v8 | 1, 0, 8u);
  }

  result = _UIGraphicsGetImageFromCurrentImageContext(0);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_imageWithBrightnessModifiedForLegibilityStyle:(int64_t)a3
{
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v6 = v5;
  v7 = self;
  if (a3 != 2)
  {
    v8 = [MEMORY[0x1E695F648] filterWithName:@"CIWhitePointAdjust"];
    v9 = [UIColor colorWithWhite:0.92 alpha:1.0];
    [v8 setValue:objc_msgSend(MEMORY[0x1E695F610] forKey:{"colorWithCGColor:", -[UIColor CGColor](v9, "CGColor")), @"inputColor"}];
    v10 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:self];
    [v8 setValue:v10 forKey:*MEMORY[0x1E695FAB0]];
    v7 = +[UIImage imageWithCIImage:scale:orientation:](UIImage, "imageWithCIImage:scale:orientation:", [v8 valueForKey:*MEMORY[0x1E695FB50]], 0, v6);
  }

  if (v7)
  {
    if ([(UIImage *)self CGImage])
    {
      v11 = 0x61u >> CGImageGetBitmapInfo([(UIImage *)self CGImage]);
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    [(UIImage *)self size];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__UIImage__UILegibility___imageWithBrightnessModifiedForLegibilityStyle___block_invoke;
    v15[3] = &unk_1E7101E78;
    v15[4] = v7;
    v15[5] = self;
    return _UIGraphicsDrawIntoImageContextWithMoreOptions(v11 & 1, 0, v15, v12, v13, v6);
  }

  return self;
}

uint64_t __73__UIImage__UILegibility___imageWithBrightnessModifiedForLegibilityStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) size];
  v4 = v3;
  [*(a1 + 40) size];

  return [v2 drawInRect:{0.0, 0.0, v4, v5}];
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  if (qword_1ED49FBD8 != -1)
  {
    dispatch_once(&qword_1ED49FBD8, &__block_literal_global_441);
  }

  v3 = qword_1ED49FBD0;

  return v3;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v8 allowUndeclared:1];
  v10 = [MEMORY[0x1E6982C40] _typeWithIdentifier:@"com.apple.uikit.image" allowUndeclared:1];
  if ([v9 conformsToType:v10])
  {
    v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
    v12 = [v11 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v11 finishDecoding];
  }

  else
  {
    v13 = v9;
    if (qword_1ED49FBD8 != -1)
    {
      dispatch_once(&qword_1ED49FBD8, &__block_literal_global_441);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = _MergedGlobals_1230;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = *v21;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if ([v13 conformsToType:{*(*(&v20 + 1) + 8 * i), v20}])
          {

            v12 = [[a1 alloc] initWithData:v7];
            goto LABEL_15;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

LABEL_15:
  v18 = v12;

  return v12;
}

- (UIImage)initWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(UIImage *)self init];
  v11 = [objc_opt_class() objectWithItemProviderData:v9 typeIdentifier:v8 error:a5];

  v12 = v11;
  return v12;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"com.apple.uikit.image";
  v2 = [*MEMORY[0x1E6982E00] identifier];
  v7[1] = v2;
  v3 = [*MEMORY[0x1E6982F28] identifier];
  v7[2] = v3;
  v4 = [*MEMORY[0x1E6982E58] identifier];
  v7[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  return v5;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.uikit.image"])
  {
    v8 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:self requiringSecureCoding:1 error:0];
LABEL_7:
    v13 = v8;
    v7[2](v7, v8, 0);
    goto LABEL_8;
  }

  v9 = [*MEMORY[0x1E6982F28] identifier];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    v8 = UIImagePNGRepresentation(self);
    goto LABEL_7;
  }

  v11 = [*MEMORY[0x1E6982E58] identifier];
  v12 = [v6 isEqualToString:v11];

  if (v12)
  {
    v8 = _UIImageJPEGRepresentation(self, 0, 0.8);
    goto LABEL_7;
  }

  v15 = [*MEMORY[0x1E6982E00] identifier];
  v16 = [v6 isEqualToString:v15];

  if (!v16)
  {
    v7[2](v7, 0, 0);
    goto LABEL_9;
  }

  v13 = UIImageHEICRepresentation(self);
  v7[2](v7, v13, 0);
LABEL_8:

LABEL_9:
  return 0;
}

@end