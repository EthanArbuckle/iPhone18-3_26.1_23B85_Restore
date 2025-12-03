@interface UIImage
+ (BOOL)_isCGImageAlphaMask:(CGImage *)mask;
+ (CGSize)_applyOrientation:(int64_t)orientation toContentSizeInPixels:(CGSize)result;
+ (CGSize)_legibilityImageSizeForSize:(CGSize)size style:(int64_t)style;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (UIEdgeInsets)_edgeInsetsForStylePresetNames:(id)names scale:(double)scale traitCollection:(id)collection;
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
+ (UIImage)imageWithContentsOfCPBitmapFile:(id)file flags:(int)flags;
+ (UIImage)imageWithContentsOfFile:(NSString *)path;
+ (UIImage)imageWithData:(NSData *)data;
+ (UIImage)imageWithData:(NSData *)data scale:(CGFloat)scale;
+ (UIImage)removeImage;
+ (UIImage)strokedCheckmarkImage;
+ (UIImage)systemImageNamed:(NSString *)name compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_ISImageDescriptorNameForUIApplicationIconFormat:(int)format;
+ (id)_animatedImageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection duration:(double)duration;
+ (id)_animatedResizableImageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection capInsets:(UIEdgeInsets)insets resizingMode:(int64_t)mode duration:(double)duration;
+ (id)_applicationIconImageForBundleIdentifier:(id)identifier format:(int)format;
+ (id)_applicationIconImageForBundleIdentifier:(id)identifier format:(int)format scale:(double)scale;
+ (id)_applicationIconImageForBundleIdentifier:(id)identifier format:(int)format scale:(double)scale appearance:(id)appearance style:(int64_t)style;
+ (id)_backgroundGradientWithStartColor:(id)color andEndColor:(id)endColor;
+ (id)_baseImageDescriptorForUIApplicationIconFormat:(int)format;
+ (id)_cachedImageForKey:(id)key fromBlock:(id)block;
+ (id)_defaultBackgroundGradient;
+ (id)_deviceSpecificImageNamed:(id)named;
+ (id)_deviceSpecificImageNamed:(id)named inBundle:(id)bundle;
+ (id)_generateCompositedSymbolImageForAsset:(id)asset usingLayers:(id)layers configuration:(id)configuration alignUsingBaselines:(BOOL)baselines;
+ (id)_iconForResourceProxy:(id)proxy format:(int)format options:(unint64_t)options;
+ (id)_imageNamed:(id)named withTrait:(id)trait;
+ (id)_imageWithCGPDFPage:(CGPDFPage *)page;
+ (id)_imageWithCGPDFPage:(CGPDFPage *)page scale:(double)scale orientation:(int64_t)orientation;
+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)document;
+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)document scale:(double)scale orientation:(int64_t)orientation;
+ (id)_imageWithIcon:(void *)icon descriptor:;
+ (id)_systemImageNamed:(id)named fallback:(id)fallback withConfiguration:(id)configuration;
+ (id)_systemImageNamed:(id)named shape:(int64_t)shape;
+ (id)_systemImageNamed:(id)named shape:(int64_t)shape fill:(int64_t)fill;
+ (id)_systemImageNamed:(id)named shape:(int64_t)shape fill:(int64_t)fill withConfiguration:(id)configuration;
+ (id)_systemImageNamed:(id)named variableValue:(double)value withConfiguration:(id)configuration allowPrivate:(BOOL)private;
+ (id)_systemImageNamed:(id)named variant:(unint64_t)variant;
+ (id)_systemImageNamed:(id)named variant:(unint64_t)variant withConfiguration:(id)configuration;
+ (id)_tintedImageForSize:(CGSize)size withTint:(id)tint effectsImage:(id)image maskImage:(id)maskImage style:(int)style;
+ (id)_tintedImageForSize:(CGSize)size withTint:(id)tint maskImage:(id)image effectsImage:(id)effectsImage style:(int)style;
+ (id)_tintedImageForSize:(CGSize)size withTint:(id)tint maskImage:(id)image effectsImage:(id)effectsImage style:(int)style edgeInsets:(UIEdgeInsets)insets;
+ (id)imageFromAlbumArtData:(id)data height:(int)height width:(int)width bytesPerRow:(int)row cache:(BOOL)cache;
+ (id)imageNamed:(id)named inBundle:(id)bundle;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)preferredSymbolImageNamed:(id)named;
+ (id)preferredSymbolImageNamed:(id)named size:(int64_t)size compatibleWithTextStyle:(id)style;
+ (id)preferredSymbolImageNamed:(id)named size:(int64_t)size compatibleWithTextStyle:(id)style traitCollection:(id)collection inBundle:(id)bundle;
+ (id)symbolImageNamed:(id)named;
+ (id)symbolImageNamed:(id)named size:(int64_t)size compatibleWithFont:(id)font;
+ (id)symbolImageNamed:(id)named size:(int64_t)size compatibleWithFont:(id)font traitCollection:(id)collection inBundle:(id)bundle;
+ (id)symbolImageNamed:(id)named size:(int64_t)size weight:(int64_t)weight compatibleWithFontSize:(double)fontSize;
+ (id)symbolImageNamed:(id)named size:(int64_t)size weight:(int64_t)weight compatibleWithFontSize:(double)fontSize traitCollection:(id)collection inBundle:(id)bundle;
+ (int)_iconVariantForUIApplicationIconFormat:(int)format idiom:(int64_t)idiom scale:(double *)scale;
+ (int)_iconVariantForUIApplicationIconFormat:(int)format scale:(double *)scale;
+ (int64_t)_horizontallyFlippedOrientationForOrientation:(int64_t)orientation;
+ (int64_t)_idiomDefinedByPath:(id)path;
+ (unint64_t)_scaleDefinedByPath:(id)path;
+ (void)_flushCache:(id)cache;
+ (void)_flushSharedImageCache;
+ (void)_loadImageFromURL:(id)l completionHandler:(id)handler;
+ (void)initialize;
- ($8452678F12DBC466148836A9D382CAFC)_calculateStatisticsOfEdge:(SEL)edge;
- (BOOL)_canEncodeAsCatalogData:(id)data;
- (BOOL)_canEncodeWithName:(id)name coder:(id)coder;
- (BOOL)_hasContentInsets;
- (BOOL)_hasVisibleContentInRect:(CGRect)rect atScale:(double)scale;
- (BOOL)_isAlphaMask;
- (BOOL)_isColoredSymbolImage;
- (BOOL)_isIconImage;
- (BOOL)_isInvisibleAndGetIsTranslucent:(BOOL *)translucent;
- (BOOL)_isRTLImage;
- (BOOL)_isSameSymbolImageExceptVariableValue:(id)value;
- (BOOL)_probeIsSeeThrough;
- (BOOL)_representsCIImageWhichSupportsIOSurfaceRendering;
- (BOOL)_representsLayeredImage;
- (BOOL)_suppressesAccessibilityHairlineThickening;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToCPBitmapFile:(id)file flags:(int)flags;
- (CGColor)_tiledPatternColor;
- (CGRect)_contentRectInPixels;
- (CGRect)_contentStretchInPixels;
- (CGSize)_CGPDFPageSize;
- (CGSize)_CGSVGDocumentSize;
- (CGSize)_fullSize;
- (CGSize)_sizeInPixels;
- (CGSize)_sizeInPixelsFromPDF;
- (CGSize)_sizeWithHairlineThickening:(BOOL)thickening forTraitCollection:(id)collection;
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
- (UIImage)initWithCoder:(id)coder;
- (UIImage)initWithContentsOfFile:(id)file cache:(BOOL)cache;
- (UIImage)initWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (UIImage)resizableImageWithCapInsets:(UIEdgeInsets)capInsets resizingMode:(UIImageResizingMode)resizingMode;
- (UIImage)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight;
- (UIImageAsset)imageAsset;
- (UIImageOrientation)imageOrientation;
- (UIImageSymbolConfiguration)symbolConfiguration;
- (__IOSurface)_copyIOSurface;
- (double)_capHeight;
- (double)_scaleFromPDF;
- (id)_applicationIconImageForFormat:(int)format precomposed:(BOOL)precomposed;
- (id)_applicationIconImageForFormat:(int)format precomposed:(BOOL)precomposed scale:(double)scale;
- (id)_applyBackdropViewSettings:(id)settings allowImageResizing:(BOOL)resizing;
- (id)_applyBackdropViewSettings:(id)settings includeTints:(BOOL)tints includeBlur:(BOOL)blur allowImageResizing:(BOOL)resizing;
- (id)_applyBackdropViewStyle:(int64_t)style includeTints:(BOOL)tints includeBlur:(BOOL)blur;
- (id)_applyBackdropViewStyle:(int64_t)style includeTints:(BOOL)tints includeBlur:(BOOL)blur graphicsQuality:(int64_t)quality;
- (id)_applyBackdropViewStyle:(int64_t)style includeTints:(BOOL)tints includeBlur:(BOOL)blur graphicsQuality:(int64_t)quality allowImageResizing:(BOOL)resizing;
- (id)_bezeledImageWithShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha fillRed:(double)fillRed green:(double)a8 blue:(double)a9 alpha:(double)self0 drawShadow:(BOOL)self1;
- (id)_bundle;
- (id)_cachedRenditionForKey:(id)key;
- (id)_colorForName:(id)name withTraitCollection:(id)collection;
- (id)_defaultConfiguration;
- (id)_descriptionOmittingSymbolConfiguration:(BOOL)configuration;
- (id)_doubleBezeledImageWithExteriorShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha interiorShadowRed:(double)shadowRed green:(double)a8 blue:(double)a9 alpha:(double)self0 fillRed:(double)self1 green:(double)self2 blue:(double)self3 alpha:(double)self4;
- (id)_existingIdentityDescription;
- (id)_flatImageWithColor:(id)color;
- (id)_flatImageWithWhite:(double)white alpha:(double)alpha;
- (id)_identityDescription;
- (id)_imageByApplyingSymbolVariant:(id)variant;
- (id)_imageByApplyingVariant:(unint64_t)variant allowNone:(BOOL)none;
- (id)_imageForLegibilitySettings:(id)settings strength:(double)strength alphaOnly:(BOOL)only;
- (id)_imageForLegibilityStyle:(int64_t)style;
- (id)_imagePaddedByInsets:(UIEdgeInsets)insets;
- (id)_imageScaledToProportion:(double)proportion interpolationQuality:(int)quality;
- (id)_imageThatSuppressesAccessibilityHairlineThickening;
- (id)_imageTintedWithColor:(id)color renderingMode:(int64_t)mode withUpdatedCGImage:(BOOL)image;
- (id)_imageWithBitmapRepresentation;
- (id)_imageWithBrightnessModifiedForLegibilityStyle:(int64_t)style;
- (id)_imageWithContent:(id)content;
- (id)_imageWithContentInsets:(UIEdgeInsets)insets withUpdatedCGImage:(BOOL)image;
- (id)_imageWithImageAsset:(id)asset;
- (id)_imageWithImageAsset:(id)asset configuration:(id)configuration;
- (id)_imageWithSize:(CGSize)size;
- (id)_imageWithSize:(CGSize)size content:(id)content;
- (id)_imageWithStylePresets:(id)presets tintColor:(id)color traitCollection:(id)collection;
- (id)_imageWithSymbolMetricsFromNamedVectorGlyph:(id)glyph;
- (id)_imageWithVariableValue:(double)value;
- (id)_initWithCGPDFPage:(CGPDFPage *)page scale:(double)scale orientation:(int64_t)orientation;
- (id)_initWithCGSVGDocument:(CGSVGDocument *)document scale:(double)scale orientation:(int64_t)orientation;
- (id)_initWithCompositedSymbolImageLayers:(id)layers name:(id)name alignUsingBaselines:(BOOL)baselines;
- (id)_initWithContent:(id)content orientation:(int64_t)orientation;
- (id)_initWithData:(id)data immediateLoadWithMaxSize:(CGSize)size scale:(double)scale renderingIntent:(unint64_t)intent cache:(BOOL)cache;
- (id)_initWithData:(id)data preserveScale:(BOOL)scale cache:(BOOL)cache scale:(double)a6;
- (id)_initWithFilledSystemImageNamed:(id)named fillColor:(id)color symbolColor:(id)symbolColor withName:(id)name;
- (id)_initWithIOSurface:(__IOSurface *)surface imageOrientation:(int64_t)orientation;
- (id)_initWithOtherImage:(id)image;
- (id)_initWithSDRIOSurface:(__IOSurface *)surface HDRIOSurface:(__IOSurface *)oSurface scale:(double)scale orientation:(int64_t)orientation;
- (id)_localRenditionCache:(BOOL)cache;
- (id)_metricsDescription;
- (id)_outlinePath;
- (id)_rasterizedCustomSymbolImageForFastXPCCoding;
- (id)_rasterizedImage;
- (id)_resizableImageWithSubimageInsets:(UIEdgeInsets)insets resizeInsets:(UIEdgeInsets)resizeInsets;
- (id)_serializedData;
- (id)_stretchableImageWithCapInsets:(UIEdgeInsets)insets;
- (id)_swizzleContent:(id)content;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (int64_t)_effectiveRenderingModeWithSymbolConfiguration:(id)configuration;
- (int64_t)_imageOrientationConsideringRTL;
- (int64_t)_imageOrientationConsideringRTLForUserInterfaceLayoutDirection:(int64_t)direction;
- (int64_t)_imageOrientationForSymbolLayerConsideringRTLForUserInterfaceLayoutDirection:(int64_t)direction;
- (unint64_t)hash;
- (void)_cacheRendition:(id)rendition forKey:(id)key;
- (void)_configureImage:(id)image assumePreconfigured:(BOOL)preconfigured;
- (void)_drawImageForLegibilitySettings:(id)settings strength:(double)strength size:(CGSize)size alphaOnly:(BOOL)only;
- (void)_drawImageForLegibilityStyle:(int64_t)style size:(CGSize)size;
- (void)_drawInContext:(CGContext *)context rect:(CGRect)rect layout:(id)layout;
- (void)_drawInContext:(CGContext *)context rect:(CGRect)rect layout:(id)layout scale:(double)scale applyContentsTransform:(BOOL)transform;
- (void)_encodeDataWithCoder:(id)coder imageName:(id)name;
- (void)_encodePropertiesWithCoder:(id)coder;
- (void)_removeBaseline;
- (void)_setAlignmentRectInsets:(UIEdgeInsets)insets;
- (void)_setBaselineOffsetFromBottom:(double)bottom;
- (void)_setCached:(BOOL)cached;
- (void)_setContentInsets:(UIEdgeInsets)insets;
- (void)_setContentInsetsExplicitly:(UIEdgeInsets)explicitly;
- (void)_setLocalRenditionCache:(id)cache;
- (void)_setSymbolMetricsFromNamedVectorGlyph:(id)glyph;
- (void)compositeToPoint:(CGPoint)point fromRect:(CGRect)rect operation:(int)operation fraction:(double)fraction;
- (void)compositeToPoint:(CGPoint)point operation:(int)operation fraction:(double)fraction;
- (void)compositeToRect:(CGRect)rect fromRect:(CGRect)fromRect operation:(int)operation fraction:(double)fraction;
- (void)dealloc;
- (void)draw1PartImageInRect:(CGRect)rect fraction:(double)fraction operation:(int)operation;
- (void)draw3PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect;
- (void)draw3PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect fraction:(double)fraction;
- (void)draw3PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect operation:(int)operation fraction:(double)fraction;
- (void)draw9PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect;
- (void)draw9PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect fraction:(double)fraction;
- (void)draw9PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect operation:(int)operation fraction:(double)fraction;
- (void)drawAsPatternInRect:(CGRect)rect;
- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForDisplayWithCompletionHandler:(void *)completionHandler;
- (void)prepareThumbnailOfSize:(CGSize)size completionHandler:(void *)completionHandler;
- (void)setFlipsForRightToLeftLayoutDirection:(BOOL)direction;
@end

@implementation UIImage

- (id)_defaultConfiguration
{
  [(_UIImageContent *)self->_content scale];
  v2 = [UITraitCollection traitCollectionWithDisplayScale:?];
  v3 = v2;
  if (v2)
  {
    imageConfiguration = [v2 imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v5 = imageConfiguration;

  return imageConfiguration;
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
      selfCopy = self;
      content = [(UIImage *)selfCopy _initWithContent:0 orientation:[(UIImage *)selfCopy imageOrientation]];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:2034 description:{@"Don’t know how to obtain orientation from <%p:%@>", objc_opt_class(), self->_content}];
  }

  content = self->_content;

  return [(_UIImageContent *)content orientation];
}

- (BOOL)_representsCIImageWhichSupportsIOSurfaceRendering
{
  isCIImage = [(_UIImageContent *)self->_content isCIImage];
  if (isCIImage)
  {
    isCIImage = [(_UIImageContent *)self->_content canRenderCIImage];
    if (isCIImage)
    {
      LOBYTE(isCIImage) = ![(UIImage *)self _isResizable];
    }
  }

  return isCIImage;
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
  if (objc_opt_class() == self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__flushCache_ name:@"UIApplicationDidReceiveMemoryWarningNotification" object:UIApp];
    [defaultCenter addObserver:self selector:sel__flushCache_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
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

    _isSymbolImage = [(UIImage *)self _isSymbolImage];
    v8 = _UIImageIsFromMainBundle(self);
    if (_isSymbolImage)
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
  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  if (_primitiveImageAsset)
  {
    imageAsset = [(UIImage *)self imageAsset];
    _layerStack = [imageAsset _layerStack];
    v6 = _layerStack != 0;
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
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    [(UIImage *)selfCopy _setIsFlippedInRightToLeft];
  }

  return selfCopy;
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
        imageRendererFormat = [(UIImage *)self imageRendererFormat];
        v17 = [(UIGraphicsImageRenderer *)v15 initWithSize:imageRendererFormat format:*&v21];

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
    _existingIdentityDescription = [(UIImage *)self _existingIdentityDescription];
    v3 = _existingIdentityDescription;
    v4 = @"?";
    if (_existingIdentityDescription)
    {
      v4 = _existingIdentityDescription;
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
  contentPreparedForDisplay = [(_UIImageContent *)self->_content contentPreparedForDisplay];
  v4 = contentPreparedForDisplay;
  if (contentPreparedForDisplay == self->_content)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  if (contentPreparedForDisplay)
  {
    selfCopy = [(UIImage *)self _imageWithContent:contentPreparedForDisplay];
LABEL_5:
    v6 = selfCopy;
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
    selfCopy = self;
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
      selfCopy = [v14 _imageWithContentInsets:{0.0, 0.0, 0.0, 0.0}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
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
    selfCopy = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    if (selfCopy)
    {
      *&selfCopy->_imageFlags |= 0x800u;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
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

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)_imageNamed:(id)named withTrait:(id)trait
{
  namedCopy = named;
  if (trait)
  {
    imageConfiguration = [trait imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v8 = imageConfiguration;
  v9 = [self imageNamed:namedCopy inBundle:0 withConfiguration:v8];

  return v9;
}

+ (UIImage)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v8 = bundle;
  v9 = name;
  if (traitCollection)
  {
    imageConfiguration = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v11 = imageConfiguration;
  v12 = [self imageNamed:v9 inBundle:v8 withConfiguration:v11];

  return v12;
}

+ (UIImage)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle variableValue:(double)value withConfiguration:(UIImageConfiguration *)configuration
{
  v9 = name;
  mainBundle = bundle;
  v11 = configuration;
  os_unfair_lock_lock(&stru_1ED498CF0);
  if (!qword_1ED498D00)
  {
    v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
    v13 = qword_1ED498D00;
    qword_1ED498D00 = v12;
  }

  v14 = [UIImageConfiguration _completeConfiguration:v11 fromConfiguration:0];
  if (!mainBundle)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v15 = [_UIImageCacheKey keyWithName:v9 configuration:v14 bundle:mainBundle];
  v16 = [qword_1ED498D00 objectForKey:v15];
  os_unfair_lock_unlock(&stru_1ED498CF0);
  if (!v16)
  {
    if (mainBundle)
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      if (mainBundle == mainBundle2)
      {
        _UIKitGetApplicationAssetManager();
      }

      else
      {
        [_UIAssetManager assetManagerForBundle:mainBundle];
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
      if (!mainBundle)
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      }

      if (dyld_program_sdk_at_least())
      {
        v27 = [_UIAssetManager newAssetNamed:v9 fromBundle:mainBundle];
        _defaultTraitCollection = [v27 _defaultTraitCollection];
        v21 = _defaultTraitCollection;
        if (_defaultTraitCollection)
        {
          _defaultTraitCollection = [_defaultTraitCollection imageConfiguration];
        }

        v22 = _defaultTraitCollection;
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
        v16 = _UIImageAtPath(v9, mainBundle, v24, 1);
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
    imageConfiguration = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v8 = imageConfiguration;
  v9 = [self systemImageNamed:v6 withConfiguration:v8];

  return v9;
}

+ (id)_systemImageNamed:(id)named variableValue:(double)value withConfiguration:(id)configuration allowPrivate:(BOOL)private
{
  privateCopy = private;
  v31 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v10 = [UIImageConfiguration _completeConfiguration:configuration fromConfiguration:0];
  v11 = namedCopy;
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

  if (privateCopy)
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
      if (!privateCopy)
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
  v25 = [v22 _imageWithVariableValue:value];

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

- (id)_imageWithVariableValue:(double)value
{
  v4 = [(_UIImageContent *)self->_content contentWithVariableValue:value];
  if (self->_content == v4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(UIImage *)self _imageWithContent:v4];
  }

  v6 = selfCopy;

  return v6;
}

+ (id)_systemImageNamed:(id)named fallback:(id)fallback withConfiguration:(id)configuration
{
  namedCopy = named;
  fallbackCopy = fallback;
  configurationCopy = configuration;
  if (!namedCopy)
  {
    goto LABEL_8;
  }

  v10 = dyld_program_sdk_at_least();
  if (fallbackCopy)
  {
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (configurationCopy)
  {
    [UIImage systemImageNamed:namedCopy withConfiguration:configurationCopy];
  }

  else
  {
    [UIImage systemImageNamed:namedCopy];
  }
  v11 = ;
  if (!v11)
  {
LABEL_8:
    v11 = _UIImageWithName(fallbackCopy);
  }

  return v11;
}

- (id)_initWithFilledSystemImageNamed:(id)named fillColor:(id)color symbolColor:(id)symbolColor withName:(id)name
{
  v27[2] = *MEMORY[0x1E69E9840];
  namedCopy = named;
  colorCopy = color;
  symbolColorCopy = symbolColor;
  nameCopy = name;
  v14 = [UIImage systemImageNamed:namedCopy];
  if (!v14)
  {
    goto LABEL_21;
  }

  if ([namedCopy containsString:@".circle"])
  {
    v15 = @"circle.fill";
  }

  else if ([namedCopy containsString:@".square.stack"])
  {
    v15 = @"square.stack.fill";
  }

  else if ([namedCopy containsString:@".rectangle.stack"])
  {
    v15 = @"rectangle.stack.fill";
  }

  else if ([namedCopy containsString:@".square"])
  {
    v15 = @"square.fill";
  }

  else if ([namedCopy containsString:@".rectangle"])
  {
    v15 = @"rectangle.fill";
  }

  else
  {
    if (![namedCopy containsString:@".triangle"])
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
  selfCopy = self;
  if ([namedCopy containsString:@".fill"])
  {
    v18 = 0.85;
  }

  else
  {
    v18 = 0.95;
  }

  v19 = *MEMORY[0x1E695EFF8];
  v20 = *(MEMORY[0x1E695EFF8] + 8);
  v21 = [_UIImageSymbolLayer _symbolLayerWithImage:v14 color:symbolColorCopy offset:*MEMORY[0x1E695EFF8] scaleFactor:v20, 1.0];
  v27[0] = v21;
  v22 = [_UIImageSymbolLayer _symbolLayerWithImage:v17 color:colorCopy offset:v19 scaleFactor:v20, v18];
  v27[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  if (!nameCopy)
  {
    nameCopy = [namedCopy stringByAppendingString:@".composite"];
  }

  v24 = [[UIImage alloc] _initWithCompositedSymbolImageLayers:v23 name:nameCopy alignUsingBaselines:0];

  self = selfCopy;
LABEL_22:

  return v24;
}

- (id)_initWithCompositedSymbolImageLayers:(id)layers name:(id)name alignUsingBaselines:(BOOL)baselines
{
  layersCopy = layers;
  nameCopy = name;
  if ([layersCopy count])
  {
    if (!nameCopy)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v12 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:@"."];
      nameCopy = [v12 lowercaseString];
    }

    v13 = [@"_." stringByAppendingString:nameCopy];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __73__UIImage__initWithCompositedSymbolImageLayers_name_alignUsingBaselines___block_invoke;
    v28 = &unk_1E710BF38;
    v14 = layersCopy;
    v29 = v14;
    baselinesCopy = baselines;
    v15 = [UIImageAsset _dynamicAssetNamed:v13 generator:&v25];
    firstObject = [v14 firstObject];
    content = [firstObject content];
    [content scale];
    v19 = v18;

    v20 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    v21 = [UITraitCollection traitCollectionWithDisplayScale:v19];
    v22 = [v20 configurationWithTraitCollection:v21];

    v23 = [v15 imageWithConfiguration:v22];

    nameCopy = v13;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_generateCompositedSymbolImageForAsset:(id)asset usingLayers:(id)layers configuration:(id)configuration alignUsingBaselines:(BOOL)baselines
{
  baselinesCopy = baselines;
  v133 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  configurationCopy = configuration;
  reverseObjectEnumerator = [layers reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v112 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allObjects, "count")}];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allObjects, "count")}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allObjects, "count")}];
  v107 = [allObjects valueForKeyPath:@"color"];
  v14 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = allObjects;
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
      asset = [v21 asset];
      v23 = [asset imageWithConfiguration:configurationCopy];

      traitCollection = [configurationCopy traitCollection];
      [traitCollection displayScale];
      v26 = v25;
      if (v25 == 0.0)
      {
        [v23 scale];
        v26 = v27;
      }

      content = [v23 content];
      content2 = [v23 content];
      [v112 addObject:content2];

      [v21 offset];
      v31 = v30;
      [content glyphScaleFactor];
      UICeilToScale(v31 * v32, v26);
      v34 = v33;
      [v21 offset];
      v36 = v35;
      [content glyphScaleFactor];
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
  if (baselinesCopy)
  {
    v96 = v115;
    v97 = (v115 + v16 - v94) / v16;
    v99 = v107;
    v98 = assetCopy;
  }

  else
  {
    v97 = 0.5;
    v99 = v107;
    v98 = assetCopy;
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
  [v104 _setConfiguration:configurationCopy];
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

+ (void)_loadImageFromURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:1455 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  mEMORY[0x1E695AC78] = [MEMORY[0x1E695AC78] sharedSession];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__UIImage__loadImageFromURL_completionHandler___block_invoke;
  v13[3] = &unk_1E710BF60;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = [mEMORY[0x1E695AC78] downloadTaskWithURL:lCopy completionHandler:v13];

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

- (id)_initWithContent:(id)content orientation:(int64_t)orientation
{
  contentCopy = content;
  v15.receiver = self;
  v15.super_class = UIImage;
  v7 = [(UIImage *)&v15 init];
  if (v7)
  {
    if (contentCopy)
    {
      v8 = contentCopy;
    }

    else
    {
      v8 = +[_UIImageContent empty];
    }

    content = v7->_content;
    v7->_content = v8;

    v7->_imageFlags = (*&v7->_imageFlags & 0xFFFFFFE3 | (4 * (orientation & 7)));
    [(_UIImageContent *)v7->_content sizeInPixels];
    [UIImage _applyOrientation:orientation toContentSizeInPixels:?];
    v7->_sizeInPixels.width = v10;
    v7->_sizeInPixels.height = v11;
    _defaultConfiguration = [(UIImage *)v7 _defaultConfiguration];
    configuration = v7->_configuration;
    v7->_configuration = _defaultConfiguration;
  }

  return v7;
}

- (id)_initWithOtherImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:1532 description:{@"Invalid parameter not satisfying: %@", @"otherImage != nil"}];
  }

  v6 = imageCopy[2];
  if (v6)
  {
    v7 = -[UIImage _initWithContent:orientation:](self, "_initWithContent:orientation:", v6, [imageCopy imageOrientation]);
  }

  else
  {
    v7 = [(UIImage *)self init];
  }

  v8 = v7;
  if (v7)
  {
    [imageCopy _configureImage:v7 assumePreconfigured:0];
  }

  return v8;
}

- (void)_configureImage:(id)image assumePreconfigured:(BOOL)preconfigured
{
  preconfiguredCopy = preconfigured;
  imageCopy = image;
  if (!preconfiguredCopy)
  {
    configuration = [(UIImage *)self configuration];
    [imageCopy _setConfiguration:configuration];
  }

  if ([(UIImage *)self _isSymbolImage]&& !*(imageCopy + 1))
  {
    [imageCopy _setImageAsset:self->_imageAsset];
    [imageCopy _setNamed:*&self->_imageFlags & 1];
    if (!preconfiguredCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!preconfiguredCopy)
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
    [imageCopy _setBaselineOffsetFromBottom:?];
    if (!preconfiguredCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [imageCopy _removeBaseline];
    if (!preconfiguredCopy)
    {
LABEL_11:
      *(imageCopy + 12) = *&self->_capHeight;
      *(imageCopy + 26) = *(imageCopy + 26) & 0xFFFDFFFF | (((*&self->_imageFlags >> 17) & 1) << 17);
      *(imageCopy + 72) = self->_sizeInPixels;
      v7 = [(UIImage *)self _localRenditionCache:0];
      [imageCopy _setLocalRenditionCache:v7];

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
  *(imageCopy + 5) = v9;
  *(imageCopy + 6) = v10;
  *(imageCopy + 7) = v11;
  *(imageCopy + 8) = v12;
  *(imageCopy + 26) = *(imageCopy + 26) & 0xFFFFBFFF | v8;
  if (preconfiguredCopy)
  {
LABEL_18:
    if (![(UIImage *)self _hasExplicitAlignmentRectInsets])
    {
      goto LABEL_20;
    }
  }

  [(UIImage *)self alignmentRectInsets];
  [imageCopy _setAlignmentRectInsets:?];
LABEL_20:
  if ([(UIImage *)self flipsForRightToLeftLayoutDirection])
  {
    [imageCopy _setIsFlippedInRightToLeft];
  }

  v13 = *(imageCopy + 26) & 0xFFFFF9FF | (([(UIImage *)self renderingMode]& 3) << 9);
  *(imageCopy + 26) = v13;
  *(imageCopy + 26) = v13 & 0xFFFFFFDF | (32 * ((*&self->_imageFlags >> 5) & 1));
  _colorForFlattening = [(UIImage *)self _colorForFlattening];
  [imageCopy _setColorForFlattening:_colorForFlattening];

  *(imageCopy + 26) = *(imageCopy + 26) & 0xFFFFF7FF | (((*&self->_imageFlags >> 11) & 1) << 11);
}

- (id)_imageWithContent:(id)content
{
  contentCopy = content;
  if (contentCopy)
  {
    v6 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong((v6 + 16), content);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_canEncodeWithName:(id)name coder:(id)coder
{
  nameCopy = name;
  coderCopy = coder;
  v8 = (_UIIsSystemSymbolImage(self) & 1) != 0 || ([coderCopy _ui_isInterprocess] & 1) == 0 && -[UIImage _isNamed](self, "_isNamed") && objc_msgSend(nameCopy, "length") != 0;

  return v8;
}

- (BOOL)_canEncodeAsCatalogData:(id)data
{
  if (![(UIImage *)self isSymbolImage]|| (_UIIsSystemSymbolImage(self) & 1) != 0)
  {
    return 0;
  }

  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  _canProvideCatalogData = [_primitiveImageAsset _canProvideCatalogData];

  return _canProvideCatalogData;
}

- (void)_encodeDataWithCoder:(id)coder imageName:(id)name
{
  coderCopy = coder;
  v7 = UIImagePNGRepresentation(self);
  v6 = [v7 copy];
  [coderCopy encodeObject:v6 forKey:@"UIImageData"];
}

- (void)_encodePropertiesWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:1 forKey:@"UIKitWantsProperties"];
  [(_UIImageContent *)self->_content scale];
  *&v4 = v4;
  [coderCopy encodeFloat:@"UIScale" forKey:v4];
  [coderCopy encodeCGSize:@"UIImageSizeInPixels" forKey:{self->_sizeInPixels.width, self->_sizeInPixels.height}];
  [coderCopy encodeInt:-[UIImage imageOrientation](self forKey:{"imageOrientation"), @"UIImageOrientation"}];
  [coderCopy encodeBool:(*&self->_imageFlags >> 7) & 1 forKey:@"UIHasPattern"];
  [coderCopy encodeInt:(*&self->_imageFlags >> 9) & 3 forKey:@"UIRenderingMode"];
  v5 = *&self->_alignmentRectInsets.top;
  v6 = *&self->_alignmentRectInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v5), vceqzq_f64(v6))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIImageAlignmentRectInsets" forKey:{*&v5, *&v6}];
  }

  if ([(UIImage *)self hasBaseline])
  {
    baselineOffsetFromBottom = self->_baselineOffsetFromBottom;
    *&baselineOffsetFromBottom = baselineOffsetFromBottom;
    [coderCopy encodeFloat:@"UIBaselineOffsetFromBottom" forKey:baselineOffsetFromBottom];
  }

  symbolConfiguration = [(UIImage *)self symbolConfiguration];
  v9 = symbolConfiguration;
  if (symbolConfiguration && ([symbolConfiguration _isUnspecified] & 1) == 0)
  {
    [coderCopy encodeObject:v9 forKey:@"UIImageSymbolConfiguration"];
  }

  if ([(UIImage *)self _hasContentInsets])
  {
    [coderCopy encodeUIEdgeInsets:@"UIImageContentInsets" forKey:{self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right}];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:1 forKey:@"UIKitDidEncode"];
  v4 = _UIImageName(self);
  v5 = _UIIsKitImage(self);
  v6 = _UIIsSystemSymbolImage(self);
  v7 = [(UIImage *)self _canEncodeWithName:v4 coder:coderCopy];
  v8 = coderCopy;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    if (_UIIsPrivateSystemSymbolImage(self))
    {
      [coderCopy encodeBool:1 forKey:@"UIIsPrivateSystemImage"];
    }

    v9 = @"UIIsSystemImage";
    goto LABEL_8;
  }

  if (!v5)
  {
    if (!dyld_program_sdk_at_least())
    {
      bundle = _UIPathForImageWithCacheName(v4);
      [coderCopy encodeObject:bundle forKey:@"UIImageName"];
LABEL_21:

      goto LABEL_24;
    }

    _assetManager = [(UIImageAsset *)self->_imageAsset _assetManager];
    bundle = [_assetManager bundle];

    bundlePath = [bundle bundlePath];

    if (bundlePath)
    {
      [coderCopy encodeObject:v4 forKey:@"UIImageName"];
      bundleIdentifier = [bundle bundleIdentifier];
      [coderCopy encodeObject:bundleIdentifier forKey:@"UIImageBundleIdentifier"];

      executablePath = [bundle executablePath];
      lastPathComponent = [executablePath lastPathComponent];
      [coderCopy encodeObject:lastPathComponent forKey:@"UIImageBundleLibraryName"];

LABEL_20:
      goto LABEL_21;
    }

    executablePath = _UIPathForImageWithCacheName(v4);
    if ([executablePath length])
    {
      v16 = @"UIImageName";
LABEL_19:
      [coderCopy encodeObject:executablePath forKey:v16];
      goto LABEL_20;
    }

    v8 = coderCopy;
LABEL_16:
    v17 = [(UIImage *)self _canEncodeAsCatalogData:v8];
    v18 = coderCopy;
    if (v17)
    {
      bundle = _UIImageName(self);
      _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
      executablePath = [_primitiveImageAsset _catalogData];

      if (executablePath)
      {
        [coderCopy encodeObject:bundle forKey:@"UIImageCatalogAssetName"];
        v16 = @"UIImageCatalogData";
        goto LABEL_19;
      }

      v18 = coderCopy;
    }

    [(UIImage *)self _encodeDataWithCoder:v18 imageName:v4];
    goto LABEL_24;
  }

  v9 = @"UIIsKitImage";
LABEL_8:
  [coderCopy encodeBool:1 forKey:v9];
  [coderCopy encodeObject:v4 forKey:@"UIImageName"];
LABEL_24:
  if (![(UIImage *)self _canEncodeWithName:v4 coder:coderCopy]|| ![(UIImage *)self isMemberOfClass:objc_opt_class()]|| [(UIImage *)self _isSymbolImage])
  {
    [(UIImage *)self _encodePropertiesWithCoder:coderCopy];
  }

  [coderCopy encodeObject:self->_configuration forKey:@"UIImageConfiguration"];
  _effectiveTraitCollectionForImageLookup = [(UIImageConfiguration *)self->_configuration _effectiveTraitCollectionForImageLookup];
  [coderCopy encodeObject:_effectiveTraitCollectionForImageLookup forKey:@"UIImageTraitCollection"];

  [(UIImage *)self variableValue];
  if (v21 != INFINITY)
  {
    [coderCopy encodeDouble:@"UIImageVariableValue" forKey:?];
  }

  [coderCopy encodeBool:HIWORD(*&self->_imageFlags) & 1 forKey:@"UIImageIsFlippedInRightToLeft"];
  accessibilityLabel = [self accessibilityLabel];
  [coderCopy encodeObject:accessibilityLabel forKey:@"UIImageAccessibilityLabel"];

  accessibilityLanguage = [self accessibilityLanguage];
  [coderCopy encodeObject:accessibilityLanguage forKey:@"UIImageAccessibilityLanguage"];
}

- (UIImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy decodeBoolForKey:@"UIKitDidEncode"])
  {
    v9 = 0;
    goto LABEL_53;
  }

  if ([coderCopy containsValueForKey:@"UIImageData"] & 1) != 0 || (objc_msgSend(coderCopy, "containsValueForKey:", @"UIImageCatalogData"))
  {
    goto LABEL_16;
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageName"];
  if (![v5 length])
  {
    goto LABEL_15;
  }

  v6 = [coderCopy decodeBoolForKey:@"UIIsSystemImage"];
  v7 = [coderCopy decodeBoolForKey:@"UIIsKitImage"];
  if (v6)
  {
    v8 = +[UIImage _systemImageNamed:withConfiguration:allowPrivate:](UIImage, "_systemImageNamed:withConfiguration:allowPrivate:", v5, 0, [coderCopy decodeBoolForKey:@"UIIsPrivateSystemImage"]);
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

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageBundleIdentifier"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageBundleLibraryName"];
  v14 = [MEMORY[0x1E696AAE8] _bundleWithIdentifier:v12 andLibraryName:v13];
  v10 = [UIImage imageNamed:v5 inBundle:v14 withConfiguration:0];

  if (!v10)
  {
LABEL_15:

LABEL_16:
    if (([coderCopy containsValueForKey:@"UIImageCatalogData"] & 1) == 0)
    {
      v9 = [(UIImage *)self init];
      v10 = 0;
      goto LABEL_34;
    }

    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageCatalogAssetName"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageCatalogData"];
    if ([v5 length] && v15)
    {
      v16 = [_UIAssetManager alloc];
      v17 = +[UIDevice currentDevice];
      v18 = -[_UIAssetManager initWithData:idiom:error:](v16, "initWithData:idiom:error:", v15, [v17 userInterfaceIdiom], 0);

      if (v18)
      {
        v10 = [(_UIAssetManager *)v18 imageNamed:v5 configuration:0];
        _primitiveImageAsset = [(UIImage *)v10 _primitiveImageAsset];
        [_primitiveImageAsset _setStronglyRetainsAssetManager:1];

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
      [coderCopy decodeFloatForKey:@"UIScale"];
      v31 = [[_UIImageCGImageContent alloc] initWithCGImage:v26 scale:v30];
      v32 = v9->_content;
      v9->_content = &v31->super;

      CGImageRelease(v26);
      goto LABEL_36;
    }

LABEL_34:
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageData"];
    v26 = _UIImageRefFromData(v29, 0, 0, 0);

    if (!v26)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_22:
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageConfigurationClass"];
  if (![v21 conformsToProtocol:&unk_1EFFF8ED0] || (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", v21, @"UIImageConfiguration"), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageSymbolConfiguration"];
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

  v25 = [coderCopy decodeBoolForKey:@"UIKitWantsProperties"];
  v10 = v24;
  self = v24;
  if (v25)
  {
LABEL_36:
    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFFFFE3 | (4 * ([coderCopy decodeIntForKey:@"UIImageOrientation"] & 7)));
    if ([coderCopy containsValueForKey:@"UIImageSizeInPixels"])
    {
      [coderCopy decodeCGSizeForKey:@"UIImageSizeInPixels"];
    }

    else
    {
      v35 = (v9->_imageFlags >> 2) & 7;
      [(_UIImageContent *)v9->_content sizeInPixels];
      [UIImage _applyOrientation:v35 toContentSizeInPixels:?];
    }

    v9->_sizeInPixels.width = v33;
    v9->_sizeInPixels.height = v34;
    if ([coderCopy decodeBoolForKey:@"UIHasPattern"])
    {
      v36 = 128;
    }

    else
    {
      v36 = 0;
    }

    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFFFF7F | v36);
    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFFF9FF | (([coderCopy decodeIntForKey:@"UIRenderingMode"] & 3) << 9));
    [coderCopy decodeUIEdgeInsetsForKey:@"UIImageAlignmentRectInsets"];
    v9->_alignmentRectInsets.top = v37;
    v9->_alignmentRectInsets.left = v38;
    v9->_alignmentRectInsets.bottom = v39;
    v9->_alignmentRectInsets.right = v40;
    if ([coderCopy containsValueForKey:@"UIImageContentInsets"])
    {
      [coderCopy decodeUIEdgeInsetsForKey:@"UIImageContentInsets"];
      v9->_contentInsets.top = v41;
      v9->_contentInsets.left = v42;
      v9->_contentInsets.bottom = v43;
      v9->_contentInsets.right = v44;
    }

    if ([coderCopy containsValueForKey:@"UIBaselineOffsetFromBottom"])
    {
      [coderCopy decodeFloatForKey:@"UIBaselineOffsetFromBottom"];
      v9->_baselineOffsetFromBottom = v45;
      *&v9->_imageFlags |= 0x1000u;
    }

    if ([coderCopy decodeBoolForKey:@"UIImageIsFlippedInRightToLeft"])
    {
      v46 = 0x10000;
    }

    else
    {
      v46 = 0;
    }

    v9->_imageFlags = (*&v9->_imageFlags & 0xFFFEFFFF | v46);
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAccessibilityLabel"];
    [v9 setAccessibilityLabel:v47];

    self = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAccessibilityLanguage"];
    [v9 setAccessibilityLanguage:self];
    goto LABEL_50;
  }

LABEL_51:
  if ([coderCopy containsValueForKey:@"UIImageVariableValue"])
  {
    [coderCopy decodeDoubleForKey:@"UIImageVariableValue"];
    v48 = [(UIImage *)v9 _imageWithVariableValue:?];

    v9 = v48;
  }

LABEL_53:

  return v9;
}

+ (CGSize)_applyOrientation:(int64_t)orientation toContentSizeInPixels:(CGSize)result
{
  if ((orientation & 2) != 0)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if ((orientation & 2) != 0)
  {
    result.height = result.width;
  }

  v5 = height;
  result.width = v5;
  return result;
}

- (void)setFlipsForRightToLeftLayoutDirection:(BOOL)direction
{
  directionCopy = direction;
  [(UIImage *)self willChangeValueForKey:@"flipsForRightToLeftLayoutDirection"];
  if (directionCopy)
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
  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];

  return [(UIImage *)self _imageOrientationConsideringRTLForUserInterfaceLayoutDirection:userInterfaceLayoutDirection];
}

- (int64_t)_imageOrientationConsideringRTLForUserInterfaceLayoutDirection:(int64_t)direction
{
  imageOrientation = [(UIImage *)self imageOrientation];
  if ((*(&self->_imageFlags + 2) & 1) == 0)
  {
    return imageOrientation;
  }

  v7 = +[UIView _enableRTL];
  if (direction != 1 || !v7 || [(UIImage *)self _isRTLImage])
  {
    return imageOrientation;
  }

  v8 = objc_opt_class();

  return [v8 _horizontallyFlippedOrientationForOrientation:imageOrientation];
}

- (int64_t)_imageOrientationForSymbolLayerConsideringRTLForUserInterfaceLayoutDirection:(int64_t)direction
{
  v4 = [(UIImage *)self _imageOrientationConsideringRTLForUserInterfaceLayoutDirection:direction];
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

  configuration = [(UIImage *)self configuration];
  traitCollection = [configuration traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

+ (int64_t)_horizontallyFlippedOrientationForOrientation:(int64_t)orientation
{
  if (orientation > 3)
  {
    if ((orientation - 4) >= 2)
    {
      if (orientation == 6)
      {
        return 3;
      }

      if (orientation == 7)
      {
        return 2;
      }

      return orientation;
    }

    return [self _mirroredImageOrientationForOrientation:?];
  }

  if (orientation < 2)
  {
    return [self _mirroredImageOrientationForOrientation:?];
  }

  if (orientation == 2)
  {
    return 7;
  }

  if (orientation == 3)
  {
    return 6;
  }

  return orientation;
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
  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  _assetManager = [_primitiveImageAsset _assetManager];
  bundle = [_assetManager bundle];

  return bundle;
}

+ (id)_imageWithCGPDFPage:(CGPDFPage *)page
{
  v3 = [[self alloc] _initWithCGPDFPage:page];

  return v3;
}

+ (id)_imageWithCGPDFPage:(CGPDFPage *)page scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [[self alloc] _initWithCGPDFPage:page scale:orientation orientation:scale];

  return v5;
}

- (id)_initWithCGPDFPage:(CGPDFPage *)page scale:(double)scale orientation:(int64_t)orientation
{
  if (page)
  {
    v7 = [[_UIImageCGPDFPageContent alloc] initWithCGPDFPage:page scale:scale];
    v8 = [(UIImage *)self _initWithContent:v7 orientation:orientation];
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

+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)document
{
  v3 = [[self alloc] _initWithCGSVGDocument:document];

  return v3;
}

+ (id)_imageWithCGSVGDocument:(CGSVGDocument *)document scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [[self alloc] _initWithCGSVGDocument:document scale:orientation orientation:scale];

  return v5;
}

- (id)_initWithCGSVGDocument:(CGSVGDocument *)document scale:(double)scale orientation:(int64_t)orientation
{
  if (document)
  {
    v7 = [[_UIImageCGSVGDocumentContent alloc] initWithCGSVGDocument:document scale:scale];
    v8 = [(UIImage *)self _initWithContent:v7 orientation:orientation];
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
    selfCopy = self;
  }

  else
  {
    os_unfair_lock_lock(&stru_1ED498CF0);
    selfCopy = [(NSMapTable *)self->_siblingImages objectForKey:renderingMode + 1];
    os_unfair_lock_unlock(&stru_1ED498CF0);
    if (!selfCopy)
    {
      selfCopy = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
      [(UIImage *)selfCopy _setRenderingMode:renderingMode];
      objc_storeStrong(&selfCopy->_siblingImages, self->_siblingImages);
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

      [(NSMapTable *)siblingImages setObject:selfCopy forKey:renderingMode + 1];
      os_unfair_lock_unlock(&stru_1ED498CF0);
    }
  }

  return selfCopy;
}

- (int64_t)_effectiveRenderingModeWithSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  renderingMode = [(UIImage *)self renderingMode];
  if (renderingMode == UIImageRenderingModeAutomatic)
  {
    if (-[UIImage _isMultiColorSymbolImage](self, "_isMultiColorSymbolImage") && ([configurationCopy _prefersMulticolor] & 1) != 0)
    {
      renderingMode = UIImageRenderingModeAlwaysOriginal;
    }

    else if ([(UIImage *)self _isSymbolImage])
    {
      renderingMode = UIImageRenderingModeAlwaysTemplate;
    }

    else
    {
      renderingMode = UIImageRenderingModeAlwaysOriginal;
    }
  }

  return renderingMode;
}

- (UIImage)imageRestrictedToStandardDynamicRange
{
  selfCopy = self;
  if ([(UIImage *)selfCopy isHighDynamicRange])
  {
    makeSDRVersion = [(_UIImageContent *)selfCopy->_content makeSDRVersion];
    v4 = [(UIImage *)selfCopy _imageWithContent:makeSDRVersion];

    selfCopy = v4;
  }

  return selfCopy;
}

+ (UIEdgeInsets)_edgeInsetsForStylePresetNames:(id)names scale:(double)scale traitCollection:(id)collection
{
  v46 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  collectionCopy = collection;
  if ([namesCopy count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = namesCopy;
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
    _styleEffectAppearanceName = [(UITraitCollection *)collectionCopy _styleEffectAppearanceName];
    [v17 setAppearanceName:_styleEffectAppearanceName];

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

          [v9 styledInsetsForStylePresetName:*(*(&v36 + 1) + 8 * j) styleConfiguration:v17 foregroundColor:0 scale:{scale, v36}];
          v26 = v26 - v28 / scale;
          v25 = v25 - v29 / scale;
          v24 = v24 - v30 / scale;
          v23 = v23 - v31 / scale;
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

- (id)_imageWithStylePresets:(id)presets tintColor:(id)color traitCollection:(id)collection
{
  v62 = *MEMORY[0x1E69E9840];
  presetsCopy = presets;
  colorCopy = color;
  collectionCopy = collection;
  if (-[UIImage renderingMode](self, "renderingMode") == UIImageRenderingModeAlwaysOriginal || (-[UIImage content](self, "content"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isCGImage], v11, (v12 & 1) == 0))
  {
    selfCopy3 = self;
  }

  else
  {
    v13 = _UIKitGetTextEffectsCatalog();
    if (v13)
    {
      v54 = collectionCopy;
      _styleEffectAppearanceName = [(UITraitCollection *)collectionCopy _styleEffectAppearanceName];
      cGImage = [(UIImage *)self CGImage];
      v16 = objc_alloc_init(MEMORY[0x1E6999430]);
      [v16 setState:0];
      [v16 setValue:0];
      v52 = _styleEffectAppearanceName;
      [v16 setAppearanceName:_styleEffectAppearanceName];
      selfCopy2 = self;
      [(UIImage *)self scale];
      v18 = v17;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v55 = presetsCopy;
      obj = presetsCopy;
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
            v21 = [v13 imageByStylingImage:cGImage stylePresetName:v30 styleConfiguration:v16 foregroundColor:objc_msgSend(colorCopy scale:{"CGColor"), v18}];

            if (v21)
            {
              cGImage = [v21 image];
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

      image = [v21 image];
      if (image && (v37 = [objc_alloc(objc_opt_class()) initWithCGImage:image scale:-[UIImage imageOrientation](selfCopy2 orientation:{"imageOrientation"), v18}]) != 0)
      {
        selfCopy3 = v37;
        *(v37 + 104) = *(v37 + 104) & 0xFFFFF9FF | 0x200;
        collectionCopy = v54;
        presetsCopy = v55;
        if ([(UIImage *)selfCopy2 _isResizable])
        {
          [(UIImage *)selfCopy2 capInsets];
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

          [(UIImage *)selfCopy3 _setCapInsets:v43, v44, v45, v46];
          if ([(UIImage *)selfCopy2 resizingMode]== UIImageResizingModeStretch)
          {
            [(UIImage *)selfCopy3 _setAlwaysStretches:1];
          }
        }

        [(UIImage *)selfCopy2 alignmentRectInsets];
        [(UIImage *)selfCopy3 _setAlignmentRectInsets:v23 + v47, v24 + v48, v25 + v49, v26 + v50];
      }

      else
      {
        NSLog(&cfstr_SUnexpectedlyF.isa, "[UIImage _imageWithStylePresets:tintColor:traitCollection:]");
        selfCopy3 = selfCopy2;
        collectionCopy = v54;
        presetsCopy = v55;
      }
    }

    else
    {
      if (_imageWithStylePresets_tintColor_traitCollection__once != -1)
      {
        dispatch_once(&_imageWithStylePresets_tintColor_traitCollection__once, &__block_literal_global_447_0);
      }

      selfCopy3 = self;
    }
  }

  return selfCopy3;
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

- (CGSize)_sizeWithHairlineThickening:(BOOL)thickening forTraitCollection:(id)collection
{
  thickeningCopy = thickening;
  v27[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  selfCopy = self;
  v8 = selfCopy;
  if (collectionCopy)
  {
    imageAsset = selfCopy->_imageAsset;
    if (imageAsset)
    {
      v10 = [(UIImageAsset *)imageAsset imageWithTraitCollection:collectionCopy];

      v8 = v10;
    }
  }

  [v8 size];
  v12 = v11;
  v14 = v13;
  _suppressesAccessibilityHairlineThickening = [v8 _suppressesAccessibilityHairlineThickening];
  v16 = MEMORY[0x1E695E0F0];
  if (!_suppressesAccessibilityHairlineThickening && thickeningCopy)
  {
    v27[0] = @"_UIKitBoldTintStyle";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  [v8 scale];
  [UIImage _edgeInsetsForStylePresetNames:v16 scale:collectionCopy traitCollection:?];
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

- (void)_setAlignmentRectInsets:(UIEdgeInsets)insets
{
  if ((*(&self->_imageFlags + 1) & 0x80) == 0)
  {
    self->_alignmentRectInsets = insets;
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
  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  _isIconAsset = [_primitiveImageAsset _isIconAsset];

  return _isIconAsset;
}

- (id)_outlinePath
{
  content = [(UIImage *)self content];
  outlinePath = [content outlinePath];

  [(UIImage *)self scale];
  CGAffineTransformMakeScale(&v7, 1.0 / v5, 1.0 / v5);
  [outlinePath applyTransform:&v7];

  return outlinePath;
}

- (BOOL)_isSameSymbolImageExceptVariableValue:(id)value
{
  content = self->_content;
  content = [value content];
  LOBYTE(content) = [(_UIImageContent *)content _isSameSymbolImageContentExceptVariableValue:content];

  return content;
}

- (void)_setBaselineOffsetFromBottom:(double)bottom
{
  imageFlags = self->_imageFlags;
  if ((*&imageFlags & 0x2000) == 0)
  {
    self->_baselineOffsetFromBottom = bottom;
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

- (void)_cacheRendition:(id)rendition forKey:(id)key
{
  renditionCopy = rendition;
  keyCopy = key;
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

  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  v9 = _primitiveImageAsset;
  if (_primitiveImageAsset)
  {
    [_primitiveImageAsset _cacheRendition:renditionCopy forKey:keyCopy];
  }

  else
  {
    v10 = [(UIImage *)self _localRenditionCache:1];
    [v10 setObject:renditionCopy forKey:keyCopy];
  }
}

- (id)_cachedRenditionForKey:(id)key
{
  keyCopy = key;
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

  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  v6 = [_primitiveImageAsset _cachedRenditionForKey:keyCopy];

  if (!v6)
  {
    v7 = [(UIImage *)self _localRenditionCache:0];
    v6 = [v7 objectForKey:keyCopy];
  }

  return v6;
}

- (id)_localRenditionCache:(BOOL)cache
{
  cacheCopy = cache;
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

  if (cacheCopy)
  {
    v5 = objc_opt_new();
    [(UIImage *)self _setLocalRenditionCache:v5];
  }

LABEL_6:

  return v5;
}

- (void)_setLocalRenditionCache:(id)cache
{
  if (cache || (*&self->_imageFlags & 0x80000) != 0)
  {
    objc_setAssociatedObject(self, &_UIImageLocalRenditionCacheKey, cache, 1);
    self->_imageFlags = (*&self->_imageFlags & 0xFFF7FFFF | ((cache != 0) << 19));
  }
}

- (id)_imageWithSymbolMetricsFromNamedVectorGlyph:(id)glyph
{
  glyphCopy = glyph;
  v5 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [v5 _setSymbolMetricsFromNamedVectorGlyph:glyphCopy];

  return v5;
}

- (void)_setSymbolMetricsFromNamedVectorGlyph:(id)glyph
{
  if (glyph)
  {
    glyphCopy = glyph;
    [glyphCopy scale];
    v40 = v5;
    [glyphCopy contentBounds];
    v7 = v6;
    v9 = v8;
    rect = v10;
    v12 = v11;
    [glyphCopy alignmentRect];
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
    [glyphCopy baselineOffset];
    v28 = v27;
    v29 = v20 + v27;
    UIRoundToScale(v20 + v27, v40);
    [(UIImage *)self _setBaselineOffsetFromBottom:?];
    [glyphCopy capHeight];
    UIRoundToScale(v30, v40);
    [(UIImage *)self _setCapHeight:?];
    [glyphCopy pointSize];
    CTFontGetAscentForSystemFontOfSize();
    v32 = v31;
    [glyphCopy pointSize];

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
  symbolConfiguration = [(UIImage *)self symbolConfiguration];
  v6 = [symbolConfiguration configurationByApplyingConfiguration:v4];
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
    symbolConfiguration = [(UIImage *)self symbolConfiguration];
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
        v19 = symbolConfiguration;
        v20 = v19;
        if (v10 == v19)
        {

          v17 = 0;
          _primitiveImageAsset = v10;
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

          _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
          v17 = [_primitiveImageAsset imageWithConfiguration:v10];
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

  _primitiveImageAsset2 = [(UIImage *)self _primitiveImageAsset];
  symbolConfiguration = _primitiveImageAsset2;
  if (_primitiveImageAsset2)
  {
    v17 = [_primitiveImageAsset2 imageWithConfiguration:v12];
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
  selfCopy = self;

  return self;
}

- (UIImage)imageWithTintColor:(UIColor *)color
{
  v4 = color;
  v5 = [(UIImage *)self _imageTintedWithColor:v4 renderingMode:[(UIImage *)self renderingMode] withUpdatedCGImage:0];

  return v5;
}

- (id)_flatImageWithColor:(id)color
{
  colorCopy = color;
  v5 = [(UIImage *)self _imageTintedWithColor:colorCopy renderingMode:[(UIImage *)self renderingMode] withUpdatedCGImage:1];

  return v5;
}

- (id)_flatImageWithWhite:(double)white alpha:(double)alpha
{
  v5 = [UIColor colorWithWhite:white alpha:alpha];
  v6 = [(UIImage *)self _flatImageWithColor:v5];

  return v6;
}

- (id)_imageTintedWithColor:(id)color renderingMode:(int64_t)mode withUpdatedCGImage:(BOOL)image
{
  imageCopy = image;
  colorCopy = color;
  if (imageCopy)
  {
    content = [(UIImage *)self content];
    [content size];
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
    v27 = colorCopy;
    selfCopy = self;
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

  [v16 _setColorForFlattening:colorCopy];
  [v16 _setRenderingMode:mode];
  if ([(UIImage *)self _isResizable])
  {
    [(UIImage *)self capInsets];
    v20 = [v16 resizableImageWithCapInsets:?];

    v16 = v20;
  }

  if (*(&self->_imageFlags + 2))
  {
    imageFlippedForRightToLeftLayoutDirection = [v16 imageFlippedForRightToLeftLayoutDirection];

    v16 = imageFlippedForRightToLeftLayoutDirection;
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

- (id)_colorForName:(id)name withTraitCollection:(id)collection
{
  collectionCopy = collection;
  nameCopy = name;
  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  _assetManager = [_primitiveImageAsset _assetManager];
  v10 = [_assetManager colorNamed:nameCopy withTraitCollection:collectionCopy];

  return v10;
}

- (id)_imageWithContentInsets:(UIEdgeInsets)insets withUpdatedCGImage:(BOOL)image
{
  imageCopy = image;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if ([(UIImage *)self _isResizable]|| ((v10 = fmax(top, 0.0), v11 = fmax(left, 0.0), v12 = fmax(bottom, 0.0), v13 = fmax(right, 0.0), [(UIImage *)self _contentInsets], v11 == v17) ? (v18 = v10 == v14) : (v18 = 0), v18 ? (v19 = v13 == v16) : (v19 = 0), v19 ? (v20 = v12 == v15) : (v20 = 0), v20))
  {
    selfCopy = self;
    goto LABEL_16;
  }

  if (imageCopy)
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

    content = [(UIImage *)self content];
    v30 = [content contentWithCGImage:{objc_msgSend(v28, "CGImage")}];
    selfCopy = [(UIImage *)self _imageWithContent:v30];

    if ([(_UIImageContent *)self->_content canScaleImageToTargetResolution])
    {
      goto LABEL_21;
    }

    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = selfCopy;
  }

  else
  {
    v36 = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
    selfCopy = v36;
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
    [(UIImage *)selfCopy _setBaselineOffsetFromBottom:v12 + v39 + v40];
  }

LABEL_16:

  return selfCopy;
}

- (void)_setContentInsets:(UIEdgeInsets)insets
{
  if ((*(&self->_imageFlags + 1) & 0x40) == 0)
  {
    content = self->_content;
    v7 = *&self->_contentInsets.bottom;
    v8 = *&self->_contentInsets.top;
    self->_contentInsets.top = fmax(insets.top, 0.0);
    self->_contentInsets.left = fmax(insets.left, 0.0);
    self->_contentInsets.bottom = fmax(insets.bottom, 0.0);
    self->_contentInsets.right = fmax(insets.right, 0.0);
    [(_UIImageContent *)content scale];
    v6 = vmulq_n_f64(vsubq_f64(vaddq_f64(*&self->_contentInsets.top, *&self->_contentInsets.bottom), vaddq_f64(v8, v7)), v5);
    self->_sizeInPixels = vaddq_f64(self->_sizeInPixels, vextq_s8(v6, v6, 8uLL));
  }
}

- (void)_setContentInsetsExplicitly:(UIEdgeInsets)explicitly
{
  self->_contentInsets.top = fmax(explicitly.top, 0.0);
  self->_contentInsets.left = fmax(explicitly.left, 0.0);
  self->_contentInsets.bottom = fmax(explicitly.bottom, 0.0);
  self->_contentInsets.right = fmax(explicitly.right, 0.0);
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

+ (id)_animatedImageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection duration:(double)duration
{
  v8 = LoadImageSequence(named, bundle, collection, 0, 0, 0.0, 0.0, 0.0, 0.0);
  if ([v8 count])
  {
    v9 = [self animatedImageWithImages:v8 duration:duration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_animatedResizableImageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection capInsets:(UIEdgeInsets)insets resizingMode:(int64_t)mode duration:(double)duration
{
  v10 = LoadImageSequence(named, bundle, collection, 1, mode, insets.top, insets.left, insets.bottom, insets.right);
  if ([v10 count])
  {
    v11 = [self animatedImageWithImages:v10 duration:duration];
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
        contentsMultiplyColor = [v17 contentsMultiplyColor];
        if ([(UIImage *)self renderingMode]== UIImageRenderingModeAlwaysTemplate || contentsMultiplyColor)
        {
          v30.origin.x = v22;
          v30.origin.y = v21;
          v30.size.width = width;
          v30.size.height = height;
          CGContextBeginTransparencyLayerWithRect(v20, v30, 0);
          [(UIImage *)self _drawInContext:v20 rect:v17 layout:1 scale:v22 applyContentsTransform:v21, width, height, v15];
          [contentsMultiplyColor setFill];
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

- (void)_drawInContext:(CGContext *)context rect:(CGRect)rect layout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  [(UIImage *)self scale];
  [(UIImage *)self _drawInContext:context rect:layoutCopy layout:0 scale:x applyContentsTransform:y, width, height, v11];
}

- (void)_drawInContext:(CGContext *)context rect:(CGRect)rect layout:(id)layout scale:(double)scale applyContentsTransform:(BOOL)transform
{
  transformCopy = transform;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
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
    height = [(UIImage *)self _isTiledWhenStretchedToSize:width, height];
    v43 = v26;
    v28 = (fmax(v22, v26) > 0.0) | height;
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

    CGContextTranslateCTM(context, 0.0, height);
    CGContextScaleCTM(context, 1.0, -1.0);
    if (transformCopy)
    {
      if (layoutCopy)
      {
        [layoutCopy contentsTransform];
      }

      else
      {
        memset(&transform, 0, sizeof(transform));
      }

      CGContextConcatCTM(context, &transform);
    }

    if (v29)
    {
      v30 = layoutCopy;
      if (layoutCopy)
      {
        [(_UIImageContentLayout *)layoutCopy _materializeRenditionContents];
        v31 = v42;
        if (layoutCopy[1])
        {
          v32 = layoutCopy[4];
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

      scaleCopy = scale;
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
        Draw3PartSlice(context, v32, scaleCopy, height, 0.0, 0.0, v18, v20, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, v20, v22, v24, v43);
      }

      Draw3PartSlice(context, v32, scaleCopy, height, 0.0, v20, v18, v31 - v20 - v24, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v20, v22, v24, v43);
      if (!CGRectIsEmpty(v45))
      {
        Draw3PartSlice(context, v32, scaleCopy, height, 0.0, v31 - v24, v18, v24, v45.origin.x, v45.origin.y, v45.size.width, v45.size.height, v20, v22, v24, v43);
      }
    }

    else if ([(UIImage *)self _shouldDrawVectorContentDirectly])
    {
      [layoutCopy drawInContext:context withSize:{width, height}];
    }

    else
    {
      v33 = layoutCopy;
      if (layoutCopy)
      {
        [(_UIImageContentLayout *)layoutCopy _materializeRenditionContents];
        v34 = v40;
        v35 = v41;
        if (layoutCopy[1])
        {
          v36 = layoutCopy[4];
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
      CGContextDrawImage(context, *&v34, v36);
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

- (id)_imageWithImageAsset:(id)asset
{
  assetCopy = asset;
  if (dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImage.m" lineNumber:3484 description:@"This code path should not be taken when linked against iOS 14 or newer."];
  }

  imageAsset = [(UIImage *)self imageAsset];
  v7 = assetCopy;
  v8 = v7;
  if (imageAsset == v7)
  {

    goto LABEL_9;
  }

  if (v7 && imageAsset)
  {
    v9 = [imageAsset isEqual:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    selfCopy = self;
    goto LABEL_12;
  }

LABEL_11:
  selfCopy = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [(UIImage *)selfCopy _setImageAsset:v8];
LABEL_12:

  return selfCopy;
}

- (id)_imageWithImageAsset:(id)asset configuration:(id)configuration
{
  assetCopy = asset;
  configurationCopy = configuration;
  _primitiveImageAsset = [(UIImage *)self _primitiveImageAsset];
  v9 = assetCopy;
  v10 = v9;
  if (_primitiveImageAsset == v9)
  {
  }

  else
  {
    configuration = v9;
    v12 = _primitiveImageAsset;
    if (!v9)
    {
      goto LABEL_15;
    }

    configuration = v9;
    v12 = _primitiveImageAsset;
    if (!_primitiveImageAsset)
    {
      goto LABEL_15;
    }

    v13 = [_primitiveImageAsset isEqual:v9];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  configuration = [(UIImage *)self configuration];
  v14 = configurationCopy;
  v15 = v14;
  if (configuration == v14)
  {

    goto LABEL_13;
  }

  if (v14 && configuration)
  {
    v16 = [configuration isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_13:
    selfCopy = self;
    goto LABEL_18;
  }

  v12 = configuration;
LABEL_15:

LABEL_16:
LABEL_17:
  selfCopy = [objc_alloc(objc_opt_class()) _initWithOtherImage:self];
  [(UIImage *)selfCopy _setImageAsset:v10];
  [(UIImage *)selfCopy _setConfiguration:configurationCopy];
LABEL_18:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      content = [(UIImage *)v5 content];
      content = self->_content;
      if (content == content)
      {
        v8 = 0;
      }

      else
      {
        v8 = ![(_UIImageContent *)content isEqual:content];
      }

      _primitiveImageAsset = [(UIImage *)v5 _primitiveImageAsset];
      v11 = dyld_program_sdk_at_least();
      imageAsset = self->_imageAsset;
      if (v11 && imageAsset == _primitiveImageAsset)
      {
        v13 = 0;
      }

      else
      {
        v13 = ![(UIImageAsset *)imageAsset isEqual:_primitiveImageAsset];
      }

      hasBaseline = [(UIImage *)self hasBaseline];
      if (hasBaseline == [(UIImage *)v5 hasBaseline])
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

      hasMidline = [(UIImage *)self hasMidline];
      if (hasMidline == [(UIImage *)v5 hasMidline])
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
          imageOrientation = [(UIImage *)self imageOrientation];
          if (imageOrientation == [(UIImage *)v5 imageOrientation])
          {
            renderingMode = [(UIImage *)self renderingMode];
            if (renderingMode == [(UIImage *)v5 renderingMode])
            {
              flipsForRightToLeftLayoutDirection = [(UIImage *)self flipsForRightToLeftLayoutDirection];
              if (flipsForRightToLeftLayoutDirection == [(UIImage *)v5 flipsForRightToLeftLayoutDirection])
              {
                _suppressesAccessibilityHairlineThickening = [(UIImage *)self _suppressesAccessibilityHairlineThickening];
                if (_suppressesAccessibilityHairlineThickening == [(UIImage *)v5 _suppressesAccessibilityHairlineThickening])
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
                    _colorForFlattening = [(UIImage *)self _colorForFlattening];
                    _colorForFlattening2 = [(UIImage *)v5 _colorForFlattening];
                    if (_deferringTokenEqualToToken(_colorForFlattening, _colorForFlattening2))
                    {
                      configuration = [(UIImage *)self configuration];
                      configuration2 = [(UIImage *)v5 configuration];
                      v9 = _deferringTokenEqualToToken(configuration, configuration2);
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

- (id)_descriptionOmittingSymbolConfiguration:(BOOL)configuration
{
  _metricsDescription = [(UIImage *)self _metricsDescription];
  v6 = [(_UIImageContent *)self->_content description];
  if (configuration || ([(UIImage *)self symbolConfiguration], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v10 = &stru_1EFB14550;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    symbolConfiguration = [(UIImage *)self symbolConfiguration];
    v10 = [v8 stringWithFormat:@" config=<%@>", symbolConfiguration];
  }

  if ([(UIImage *)self renderingMode])
  {
    renderingMode = [(UIImage *)self renderingMode];
    v12 = @"Unknown";
    if (renderingMode == UIImageRenderingModeAlwaysTemplate)
    {
      v12 = @"alwaysTemplate";
    }

    v13 = @"alwaysOriginal";
    v14 = renderingMode == UIImageRenderingModeAlwaysOriginal;
  }

  else
  {
    symbolConfiguration2 = [(UIImage *)self symbolConfiguration];
    v16 = [(UIImage *)self _effectiveRenderingModeWithSymbolConfiguration:symbolConfiguration2];

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
  _identityDescription = [(UIImage *)self _identityDescription];
  v22 = [v19 stringWithFormat:@"<%@:%p %@ %@%@%@>", v20, self, _identityDescription, _metricsDescription, v10, v18];

  return v22;
}

+ (BOOL)_isCGImageAlphaMask:(CGImage *)mask
{
  IsMask = CGImageIsMask(mask);
  if (IsMask)
  {
    CGImageGetAlphaInfo(mask);
  }

  return IsMask;
}

- (BOOL)_isAlphaMask
{
  cGImage = [(_UIImageContent *)self->_content CGImage];

  return [UIImage _isCGImageAlphaMask:cGImage];
}

+ (id)imageNamed:(id)named inBundle:(id)bundle
{
  bundleCopy = bundle;
  namedCopy = named;
  v8 = +[UIScreen _mainScreenThreadSafeTraitCollection];
  v9 = [self imageNamed:namedCopy inBundle:bundleCopy compatibleWithTraitCollection:v8];

  return v9;
}

+ (id)symbolImageNamed:(id)named
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__UIImage_symbolImageNamed___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v4 = symbolImageNamed__once;
  namedCopy = named;
  if (v4 != -1)
  {
    dispatch_once(&symbolImageNamed__once, block);
  }

  v6 = [self systemImageNamed:namedCopy];

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

+ (id)symbolImageNamed:(id)named size:(int64_t)size weight:(int64_t)weight compatibleWithFontSize:(double)fontSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UIImage_symbolImageNamed_size_weight_compatibleWithFontSize___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v10 = symbolImageNamed_size_weight_compatibleWithFontSize__once;
  namedCopy = named;
  if (v10 != -1)
  {
    dispatch_once(&symbolImageNamed_size_weight_compatibleWithFontSize__once, block);
  }

  v12 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:size scale:fontSize];
  v13 = [self systemImageNamed:namedCopy withConfiguration:v12];

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

+ (id)symbolImageNamed:(id)named size:(int64_t)size weight:(int64_t)weight compatibleWithFontSize:(double)fontSize traitCollection:(id)collection inBundle:(id)bundle
{
  namedCopy = named;
  collectionCopy = collection;
  bundleCopy = bundle;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__UIImage_symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle__once != -1)
  {
    dispatch_once(&symbolImageNamed_size_weight_compatibleWithFontSize_traitCollection_inBundle__once, block);
  }

  v18 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:size scale:fontSize];
  if (bundleCopy)
  {
    [self imageNamed:namedCopy inBundle:bundleCopy compatibleWithTraitCollection:collectionCopy];
  }

  else
  {
    [self systemImageNamed:namedCopy compatibleWithTraitCollection:collectionCopy];
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

+ (id)preferredSymbolImageNamed:(id)named
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__UIImage_preferredSymbolImageNamed___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v4 = preferredSymbolImageNamed__once;
  namedCopy = named;
  if (v4 != -1)
  {
    dispatch_once(&preferredSymbolImageNamed__once, block);
  }

  v6 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody"];
  v7 = [self systemImageNamed:namedCopy withConfiguration:v6];

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

+ (id)preferredSymbolImageNamed:(id)named size:(int64_t)size compatibleWithTextStyle:(id)style
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UIImage_preferredSymbolImageNamed_size_compatibleWithTextStyle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v8 = preferredSymbolImageNamed_size_compatibleWithTextStyle__once;
  styleCopy = style;
  namedCopy = named;
  if (v8 != -1)
  {
    dispatch_once(&preferredSymbolImageNamed_size_compatibleWithTextStyle__once, block);
  }

  v11 = [UIImageSymbolConfiguration configurationWithTextStyle:styleCopy scale:size];

  v12 = [self systemImageNamed:namedCopy withConfiguration:v11];

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

+ (id)preferredSymbolImageNamed:(id)named size:(int64_t)size compatibleWithTextStyle:(id)style traitCollection:(id)collection inBundle:(id)bundle
{
  namedCopy = named;
  styleCopy = style;
  collectionCopy = collection;
  bundleCopy = bundle;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIImage_preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle__once != -1)
  {
    dispatch_once(&preferredSymbolImageNamed_size_compatibleWithTextStyle_traitCollection_inBundle__once, block);
  }

  v17 = [UIImageSymbolConfiguration configurationWithTextStyle:styleCopy scale:size];
  if (bundleCopy)
  {
    [self imageNamed:namedCopy inBundle:bundleCopy compatibleWithTraitCollection:collectionCopy];
  }

  else
  {
    [self systemImageNamed:namedCopy compatibleWithTraitCollection:collectionCopy];
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

+ (id)symbolImageNamed:(id)named size:(int64_t)size compatibleWithFont:(id)font
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIImage_symbolImageNamed_size_compatibleWithFont___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  v8 = symbolImageNamed_size_compatibleWithFont__once;
  fontCopy = font;
  namedCopy = named;
  if (v8 != -1)
  {
    dispatch_once(&symbolImageNamed_size_compatibleWithFont__once, block);
  }

  v11 = [UIImageSymbolConfiguration configurationWithFont:fontCopy scale:size];

  v12 = [self systemImageNamed:namedCopy withConfiguration:v11];

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

+ (id)symbolImageNamed:(id)named size:(int64_t)size compatibleWithFont:(id)font traitCollection:(id)collection inBundle:(id)bundle
{
  namedCopy = named;
  fontCopy = font;
  collectionCopy = collection;
  bundleCopy = bundle;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__UIImage_symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle__once != -1)
  {
    dispatch_once(&symbolImageNamed_size_compatibleWithFont_traitCollection_inBundle__once, block);
  }

  v17 = [UIImageSymbolConfiguration configurationWithFont:fontCopy scale:size];
  if (bundleCopy)
  {
    [self imageNamed:namedCopy inBundle:bundleCopy compatibleWithTraitCollection:collectionCopy];
  }

  else
  {
    [self systemImageNamed:namedCopy compatibleWithTraitCollection:collectionCopy];
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

- (UIImage)initWithContentsOfFile:(id)file cache:(BOOL)cache
{
  cacheCopy = cache;
  fileCopy = file;
  v19 = 0.0;
  v20 = 0;
  v18 = 0;
  v7 = _UIImageSourceAtPath(fileCopy, cacheCopy, &v20, &v19, &v18);
  v8 = v18;
  if (v7)
  {
    v9 = [_UIImageCGImageContent alloc];
    selfCopy = [(_UIImageCGImageContent *)v9 initWithCGImageSource:v7 scale:v19];
    CFRelease(v7);
    if (selfCopy)
    {
      v11 = [(UIImage *)self _initWithContent:selfCopy orientation:v20];
      if (dyld_program_sdk_at_least())
      {
        v12 = v8;
      }

      else
      {
        v12 = fileCopy;
      }

      v13 = v12;
      v14 = _UserInterfaceTraitFromPath(v13);
      v15 = v14;
      if (v14)
      {
        imageConfiguration = [v14 imageConfiguration];
      }

      else
      {
        imageConfiguration = 0;
      }

      objc_storeStrong(v11 + 4, imageConfiguration);

      self = v11;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithData:(id)data preserveScale:(BOOL)scale cache:(BOOL)cache scale:(double)a6
{
  v15 = a6;
  v14 = 0;
  if (scale)
  {
    v7 = &v15;
  }

  else
  {
    v7 = 0;
  }

  v8 = _UIImageRefFromData(data, cache, &v14, v7);
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

- (id)_initWithSDRIOSurface:(__IOSurface *)surface HDRIOSurface:(__IOSurface *)oSurface scale:(double)scale orientation:(int64_t)orientation
{
  if (surface)
  {
    v8 = [[_UIImageIOSurfaceContent alloc] initWithSDRIOSurface:surface HDRIOSurface:oSurface scale:scale];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIImage *)self _initWithContent:v8 orientation:orientation];

  return v9;
}

- (id)_initWithIOSurface:(__IOSurface *)surface imageOrientation:(int64_t)orientation
{
  Scale = _UIRenderingBufferGetScale(surface);
  if (Scale == 0.0)
  {
    Scale = 1.0;
  }

  return [(UIImage *)self _initWithIOSurface:surface scale:orientation orientation:Scale];
}

- (__IOSurface)_copyIOSurface
{
  v21[3] = *MEMORY[0x1E69E9840];
  if ([(_UIImageContent *)self->_content isIOSurface])
  {
    return 0;
  }

  cGImage = [(UIImage *)self CGImage];
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
    CGImageGetColorSpace(cGImage);
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
      CGContextDrawImage(v15, v22, cGImage);
      CGContextRelease(v15);
    }

    IOSurfaceUnlock(v3, 0, 0);
  }

  return v3;
}

+ (id)_backgroundGradientWithStartColor:(id)color andEndColor:(id)endColor
{
  v21[1] = *MEMORY[0x1E69E9840];
  endColorCopy = endColor;
  colorCopy = color;
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

  [colorCopy getRed:&components green:&v15 blue:&v16 alpha:&v17];

  [endColorCopy getRed:&v18 green:&v19 blue:&v20 alpha:v21];
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
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    v11 = [self _backgroundGradientWithStartColor:v6 andEndColor:v10];
    v12 = _defaultBackgroundGradient___defaultBackgroundGradient;
    _defaultBackgroundGradient___defaultBackgroundGradient = v11;

    v3 = _defaultBackgroundGradient___defaultBackgroundGradient;
  }

  return v3;
}

+ (id)imageFromAlbumArtData:(id)data height:(int)height width:(int)width bytesPerRow:(int)row cache:(BOOL)cache
{
  dataCopy = data;
  v11 = dataCopy;
  if (height < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if (dataCopy && width >= 1)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v14 = CGDataProviderCreateWithCFData(v11);
      v15 = CGImageCreate(width, height, 5uLL, 0x10uLL, row, DeviceRGB, 0x1006u, v14, 0, 0, kCGRenderingIntentDefault);
      CGDataProviderRelease(v14);
      v16 = [UIImage alloc];
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      v12 = [(UIImage *)v16 initWithCGImage:v15 scale:0 orientation:?];

      CGImageRelease(v15);
      CGColorSpaceRelease(DeviceRGB);
    }
  }

  return v12;
}

+ (UIImage)imageWithContentsOfCPBitmapFile:(id)file flags:(int)flags
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

- (BOOL)writeToCPBitmapFile:(id)file flags:(int)flags
{
  fileCopy = file;
  cGImage = [(_UIImageContent *)self->_content CGImage];
  v7 = 0;
  values = cGImage;
  if (fileCopy && cGImage)
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

- (id)_stretchableImageWithCapInsets:(UIEdgeInsets)insets
{
  v3 = [(UIImage *)self resizableImageWithCapInsets:insets.top, insets.left, insets.bottom, insets.right];
  [v3 _setAlwaysStretches:1];

  return v3;
}

- (id)_resizableImageWithSubimageInsets:(UIEdgeInsets)insets resizeInsets:(UIEdgeInsets)resizeInsets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = [[_UIResizableImage alloc] initWithImage:self capInsets:resizeInsets.top, resizeInsets.left, resizeInsets.bottom, resizeInsets.right];
  [(_UIResizableImage *)v8 _setSubimageInsets:top, left, bottom, right];

  return v8;
}

+ (id)_deviceSpecificImageNamed:(id)named
{
  namedCopy = named;
  v5 = _UIImageDeviceSpecificName();
  if (!v5 || ([namedCopy stringByAppendingString:v5], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "imageNamed:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [self imageNamed:namedCopy];
  }

  return v7;
}

+ (id)_deviceSpecificImageNamed:(id)named inBundle:(id)bundle
{
  namedCopy = named;
  bundleCopy = bundle;
  v8 = _UIImageDeviceSpecificName();
  if (!v8 || ([namedCopy stringByAppendingString:v8], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "imageNamed:inBundle:", v9, bundleCopy), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = [self imageNamed:namedCopy inBundle:bundleCopy];
  }

  return v10;
}

- ($8452678F12DBC466148836A9D382CAFC)_calculateStatisticsOfEdge:(SEL)edge
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
  ioSurface = [(UIImage *)self ioSurface];
  v13 = ioSurface;
  if (!ioSurface)
  {
    goto LABEL_5;
  }

  IOSurfaceLock(ioSurface, 1u, 0);
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

- (id)_imagePaddedByInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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
  if (self)
  {
    if ((_UIImageIsCustomSymbol(self) & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__rasterizedCustomSymbolImageForFastXPCCoding object:self file:@"UIImage.m" lineNumber:4524 description:@"This should only ever be called for custom symbol images."];
    }

    _rasterizedImage = [self _rasterizedImage];
    symbolConfiguration = [self symbolConfiguration];
    if ([self _effectiveRenderingModeWithSymbolConfiguration:symbolConfiguration] != 2 || objc_msgSend(symbolConfiguration, "colorRenderingMode") == 2)
    {
      goto LABEL_37;
    }

    if ([symbolConfiguration _hasSpecifiedHierarchicalColors] && objc_msgSend(self, "_isHierarchicalColorSymbolImage"))
    {
      _colors = [symbolConfiguration _colors];
      v22 = +[UIColor tintColor];
      v24[0] = v22;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v1 = _colors;
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

    if (![symbolConfiguration _hasSpecifiedPaletteColors] || !objc_msgSend(self, "_isPaletteColorSymbolImage"))
    {
      v18 = 0;
      goto LABEL_22;
    }

    _colors2 = [symbolConfiguration _colors];
    v3 = +[UIColor tintColor];
    v23 = v3;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v4 = _colors2;
    v15 = v14;
    v5 = v15;
    if (v4 == v15)
    {

LABEL_32:
      v18 = 1;
LABEL_22:
      _colorForFlattening = [self _colorForFlattening];
      v17 = _colorForFlattening == 0;

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
          [_rasterizedImage imageWithRenderingMode:2];
          _rasterizedImage = v1 = _rasterizedImage;
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

  _rasterizedImage = 0;
LABEL_38:

  return _rasterizedImage;
}

- (id)_imageWithSize:(CGSize)size
{
  selfCopy = 0;
  if (size.width >= 0.0)
  {
    height = size.height;
    if (size.height >= 0.0)
    {
      width = size.width;
      [(UIImage *)self size];
      if (width == v8 && height == v7)
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = [(UIImage *)self _imageWithSize:self->_content content:width, height];
      }
    }
  }

  return selfCopy;
}

- (id)_imageWithSize:(CGSize)size content:(id)content
{
  height = size.height;
  width = size.width;
  contentCopy = content;
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
  v17 = [(UIImage *)self _imageWithContent:contentCopy];
  [contentCopy scale];
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
      imageOrientation = [(UIImage *)self imageOrientation];
      [v6 size];
      [UIImage _applyOrientation:imageOrientation toContentSizeInPixels:?];
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
  mainScreen = [objc_opt_self() mainScreen];
  v4 = [(UIImage *)self _imagePreparedForScreen:mainScreen];

  return v4;
}

- (id)_initWithData:(id)data immediateLoadWithMaxSize:(CGSize)size scale:(double)scale renderingIntent:(unint64_t)intent cache:(BOOL)cache
{
  cacheCopy = cache;
  height = size.height;
  width = size.width;
  dataCopy = data;
  v14 = dataCopy;
  if (dataCopy && [dataCopy length])
  {
    scale = [[_UIImageAsyncCGImageContent alloc] initWithData:v14 immediateLoadWithMaxSize:intent scale:cacheCopy renderingIntent:width cache:height, scale];
    v16 = [(UIImage *)self _initWithContent:scale orientation:0];
    if (v16)
    {
      v16[26] |= 2u;
    }

    self = v16;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)compositeToRect:(CGRect)rect fromRect:(CGRect)fromRect operation:(int)operation fraction:(double)fraction
{
  v6 = *&operation;
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v11 = rect.size.height;
  v34 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v33 = v11;
    [(UIImage *)self scale];
    v16 = v15;
    cGImage = [(_UIImageContent *)self->_content CGImage];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    IsEmpty = CGRectIsEmpty(v36);
    v19 = v16 != 0.0 && v16 != 1.0;
    if (IsEmpty)
    {
      v20 = CGImageGetWidth(cGImage);
      v21 = v20;
      v22 = CGImageGetHeight(cGImage);
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

      imageOrientation = [(UIImage *)self imageOrientation];

      compositeCGImageRefInRect(cGImage, v13, v12, v34, v33, v24, v24, v21, v23, v6, imageOrientation, fraction);
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

      v32 = CGImageCreateWithImageInRect(cGImage, *&v28);
      compositeCGImageRefInRect(v32, v13, v12, v34, v33, x, y, width, height, v6, [(UIImage *)self imageOrientation], fraction);

      CGImageRelease(v32);
    }
  }
}

- (void)compositeToPoint:(CGPoint)point fromRect:(CGRect)rect operation:(int)operation fraction:(double)fraction
{
  v7 = *&operation;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = point.y;
  v13 = point.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    [(UIImage *)self scale];
    v16 = v15;
    cGImage = [(_UIImageContent *)self->_content CGImage];
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

    v27 = CGImageCreateWithImageInRect(cGImage, *(&v23 - 3));
    compositeCGImageRef(v27, v13, v12, x, y, width, height, fraction, v7, [(UIImage *)self imageOrientation]);

    CGImageRelease(v27);
  }
}

- (void)compositeToPoint:(CGPoint)point operation:(int)operation fraction:(double)fraction
{
  v6 = *&operation;
  y = point.y;
  x = point.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    cGImage = [(_UIImageContent *)self->_content CGImage];
    Width = CGImageGetWidth(cGImage);
    v12 = Width;
    Height = CGImageGetHeight(cGImage);
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

    imageOrientation = [(UIImage *)self imageOrientation];

    compositeCGImageRef(cGImage, x, y, v16, v16, v12, v14, fraction, v6, imageOrientation);
  }
}

- (void)draw9PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  memcpy(v9, rects, sizeof(v9));
  [(UIImage *)self draw9PartImageWithSliceRects:v9 inRect:x fraction:y, width, height, 1.0];
}

- (void)draw9PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect fraction:(double)fraction
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  memcpy(v11, rects, sizeof(v11));
  [(UIImage *)self draw9PartImageWithSliceRects:v11 inRect:2 operation:x fraction:y, width, height, fraction];
}

- (void)draw9PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect operation:(int)operation fraction:(double)fraction
{
  v7 = *&operation;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    origin = rects->var0.var0.origin;
    v32.width = rects->var0.var0.size.width;
    v14 = rects->var0.var0.size.height;
    size = rects->var1.var1.size;
    v45 = rects->var1.var1.origin;
    v46 = size;
    v16 = rects->var1.var2.size;
    v47 = rects->var1.var2.origin;
    v48 = v16;
    v17 = rects->var0.var2.size;
    v41 = rects->var0.var2.origin;
    v42 = v17;
    v18 = rects->var1.var0.size;
    v43 = rects->var1.var0.origin;
    v44 = v18;
    v19 = rects->var0.var1.size;
    v39 = rects->var0.var1.origin;
    v40 = v19;
    v24 = rects->var2.var0.origin;
    v25 = rects->var2.var0.size.width;
    v20 = rects->var2.var0.size.height;
    v21 = rects->var2.var1.size;
    v27 = rects->var2.var1.origin;
    v28 = v21;
    v22 = rects->var2.var2.size;
    v29 = rects->var2.var2.origin;
    v30 = v22;
    remainder.origin.x = x;
    remainder.origin.y = y;
    remainder.size.width = width;
    remainder.size.height = height;
    memset(&slice, 0, sizeof(slice));
    selfCopy = self;
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
    draw9PartSlice(selfCopy, &origin.x, v7, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, fraction);
    CGRectDivide(remainder, &slice, &remainder, v20, CGRectMaxYEdge);
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    origin = v43;
    v32 = v44;
    draw9PartSlice(selfCopy, &origin.x, v7, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, fraction);
    v26 = v20;
    draw9PartSlice(selfCopy, &v24.x, v7, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, fraction);
  }
}

- (void)draw3PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect
{
  size = rects->var1.size;
  v7[2] = rects->var1.origin;
  v7[3] = size;
  v5 = rects->var2.size;
  v7[4] = rects->var2.origin;
  v7[5] = v5;
  v6 = rects->var0.size;
  v7[0] = rects->var0.origin;
  v7[1] = v6;
  [(UIImage *)self draw3PartImageWithSliceRects:v7 inRect:rect.origin.x fraction:rect.origin.y, rect.size.width, rect.size.height, 1.0];
}

- (void)draw3PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect fraction:(double)fraction
{
  size = rects->var1.size;
  v8[2] = rects->var1.origin;
  v8[3] = size;
  v6 = rects->var2.size;
  v8[4] = rects->var2.origin;
  v8[5] = v6;
  v7 = rects->var0.size;
  v8[0] = rects->var0.origin;
  v8[1] = v7;
  [(UIImage *)self draw3PartImageWithSliceRects:v8 inRect:2 operation:rect.origin.x fraction:rect.origin.y, rect.size.width, rect.size.height, fraction];
}

- (void)draw3PartImageWithSliceRects:(id *)rects inRect:(CGRect)rect operation:(int)operation fraction:(double)fraction
{
  v7 = *&operation;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v26 = width;
    v27 = height;
    v14 = rects->var0.origin.x;
    v15 = rects->var0.size.width;
    v28 = rects->var0.size.height;
    v29 = rects->var1.origin.x;
    v17 = rects->var1.size.width;
    v16 = rects->var1.size.height;
    v18 = rects->var2.origin.x;
    v30 = rects->var1.origin.y;
    v31 = rects->var2.origin.y;
    v35 = rects->var2.size.width;
    v32 = rects->var0.origin.y;
    v34 = rects->var2.size.height;
    selfCopy = self;
    [(UIImage *)selfCopy compositeToPoint:v7 fromRect:x operation:y fraction:v14, v32, v15, v28, fraction];
    v33 = v18;
    if (v17 > v16 && v14 == v18)
    {
      v23 = y + v28;
      v24 = y + v27 - v34;
      if (v16 <= 1.0 && v23 < v24)
      {
        [(UIImage *)selfCopy compositeToRect:v7 fromRect:x operation:v23 fraction:v17, v24 - v23, v29, v30, v17, v16, *&fraction];
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

          [(UIImage *)selfCopy compositeToPoint:v7 fromRect:x operation:v23 fraction:v29, v30, v17, v16, fraction];
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
        [(UIImage *)selfCopy compositeToRect:v7 fromRect:v20 operation:y fraction:v21 - v20, v16, v29, v30, v17, v16, *&fraction];
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

          [(UIImage *)selfCopy compositeToPoint:v7 fromRect:v20 operation:y fraction:v29, v30, v17, v16, fraction];
        }
      }

      x = floor(v20);
    }

    [(UIImage *)selfCopy compositeToPoint:v7 fromRect:x operation:y fraction:v33, v31, v35, v34, fraction];
  }
}

- (void)draw1PartImageInRect:(CGRect)rect fraction:(double)fraction operation:(int)operation
{
  v5 = *&operation;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(_UIImageContent *)self->_content isCGImage])
  {
    v20 = height;
    selfCopy = self;
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    v21 = selfCopy;
    [(UIImage *)selfCopy size];
    v17 = v15;
    v18 = v16;
    if (v15 <= 1.0)
    {
      [(UIImage *)v21 compositeToRect:v5 fromRect:x operation:y fraction:width, v20, v13, v14, v15, v16, *&fraction];
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

        [(UIImage *)v21 compositeToPoint:v5 fromRect:x operation:y fraction:v13, v14, v17, v18, fraction];
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

+ (void)_flushCache:(id)cache
{
  _UISharedImageFlushAll();

  +[_UIOldCGImageDecompressor flushCaches];
}

- (id)_swizzleContent:(id)content
{
  contentCopy = content;
  content = self->_content;
  contentCopy2 = content;
  v7 = self->_content;
  self->_content = contentCopy;
  v8 = contentCopy;

  return content;
}

- (void)_setCached:(BOOL)cached
{
  if (cached)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_imageFlags = (*&self->_imageFlags & 0xFFFFFFBF | v3);
  if (cached)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_setAssociatedObject(self, &_UIImageTableCachedRetainCycleAssociationKey, selfCopy, 1);
}

- (BOOL)_isInvisibleAndGetIsTranslucent:(BOOL *)translucent
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
  if (translucent)
  {
    *translucent = [v6 BOOLValue];
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)_hasVisibleContentInRect:(CGRect)rect atScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    return 0;
  }

  ioSurface = [(UIImage *)self ioSurface];
  IOSurfaceLock(ioSurface, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
  v13 = IOSurfaceGetHeight(ioSurface);
  v14 = IOSurfaceGetWidth(ioSurface);
  BytesPerRow = IOSurfaceGetBytesPerRow(ioSurface);
  BytesPerElement = IOSurfaceGetBytesPerElement(ioSurface);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v17 = fmax(CGRectGetMinY(v28) * scale, 0.0);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v18 = CGRectGetMaxY(v29) * scale;
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
  v21 = CGRectGetMaxX(v31) * scale;
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
    v23 = fmax(MinX * scale, 0.0);
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

  IOSurfaceUnlock(ioSurface, 1u, 0);
  return v10;
}

- (id)_bezeledImageWithShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha fillRed:(double)fillRed green:(double)a8 blue:(double)a9 alpha:(double)self0 drawShadow:(BOOL)self1
{
  shadowCopy = shadow;
  v17 = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
  v18 = [UIColor colorWithRed:fillRed green:a8 blue:a9 alpha:a10];
  [(UIImage *)self size];
  v21 = v20;
  v22 = v19;
  v23 = 0.0;
  if (shadowCopy)
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
    if (shadowCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v27 = ContextStack[3 * (*ContextStack - 1) + 1];
    if (shadowCopy)
    {
LABEL_5:
      cGColor = [v17 CGColor];
      v32.width = 0.0;
      v32.height = -1.0;
      CGContextSetShadowWithColor(v27, v32, 0.0, cGColor);
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

- (id)_doubleBezeledImageWithExteriorShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha interiorShadowRed:(double)shadowRed green:(double)a8 blue:(double)a9 alpha:(double)self0 fillRed:(double)self1 green:(double)self2 blue:(double)self3 alpha:(double)self4
{
  v19 = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
  v20 = [UIColor colorWithRed:fillRed green:a12 blue:a13 alpha:a14];
  v21 = [UIColor colorWithRed:shadowRed green:a8 blue:a9 alpha:a10];
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

  cGColor = [v19 CGColor];
  v39.width = 0.0;
  v39.height = 1.0;
  CGContextSetShadowWithColor(v29, v39, 0.0, cGColor);
  CGContextBeginTransparencyLayer(v29, 0);
  [v20 set];
  UIRectFillUsingOperation(1, 0.0, 0.0, v23, v25);
  [(UIImage *)self drawInRect:22 blendMode:0.0 alpha:0.0, v23, v25, 1.0];
  CGContextEndTransparencyLayer(v29);
  v31 = [(UIImage *)self _bezeledImageWithShadowRed:0 green:1.0 blue:1.0 alpha:1.0 fillRed:1.0 green:0.0 blue:0.0 alpha:0.0 drawShadow:1.0];
  CGContextScaleCTM(v29, 1.0, -1.0);
  [v31 size];
  CGContextTranslateCTM(v29, 0.0, -v32);
  cGImage = [v31 CGImage];
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v23;
  v41.size.height = v25;
  CGContextClipToMask(v29, v41, cGImage);
  [v31 size];
  CGContextTranslateCTM(v29, 0.0, v34);
  CGContextScaleCTM(v29, 1.0, -1.0);
  cGColor2 = [v21 CGColor];
  v40.width = 0.0;
  v40.height = 1.0;
  CGContextSetShadowWithColor(v29, v40, 0.0, cGColor2);
  CGContextBeginTransparencyLayer(v29, 0);
  [v20 set];
  UIRectFillUsingOperation(1, 0.0, -1.0, v23, v26 + 1.0);
  [(UIImage *)self drawInRect:23 blendMode:0.0 alpha:0.0, v23, v25, 1.0];
  CGContextEndTransparencyLayer(v29);
  v36 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v36;
}

- (id)_imageScaledToProportion:(double)proportion interpolationQuality:(int)quality
{
  [(UIImage *)self size];
  v8 = ceil(v7 * proportion);
  v10 = ceil(v9 * proportion);
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

  CGContextSetInterpolationQuality(v13, quality);
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
    selfCopy = self;
  }

  else
  {
    selfCopy = [[_UIImageSerializationWrapper alloc] initWithImage:self];
  }

  v4 = selfCopy;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:selfCopy requiringSecureCoding:1 error:0];

  return v5;
}

+ (unint64_t)_scaleDefinedByPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy rangeOfString:@"@" options:4];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [pathCopy substringWithRange:{v4 + 1, 1}];
    integerValue = [v6 integerValue];

    if (integerValue)
    {
      v5 = integerValue;
    }
  }

  return v5;
}

+ (int64_t)_idiomDefinedByPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy rangeOfString:@"~" options:4];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [pathCopy substringFromIndex:v4];
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

- (id)_imageByApplyingSymbolVariant:(id)variant
{
  variantCopy = variant;
  if ([(UIImage *)self isSymbolImage]&& variantCopy)
  {
    v5 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      isUnspecified = [variantCopy isUnspecified];

      if (!isUnspecified)
      {
        if (!_UIIsSystemSymbolImage(self))
        {
          v15 = 0;
LABEL_27:
          if (v15)
          {
            selfCopy = v15;
          }

          else
          {
            selfCopy = self;
          }

          selfCopy2 = selfCopy;

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
        fillVariant = [variantCopy fillVariant];
        if (fillVariant == 2)
        {
          v16 = [v10 allKeysForObject:v7];
          firstObject = [v16 firstObject];
        }

        else
        {
          if (fillVariant != 1)
          {
            firstObject = 0;
            goto LABEL_23;
          }

          firstObject = [v10 objectForKeyedSubscript:v7];
        }

        if (firstObject && ([v7 isEqualToString:firstObject] & 1) == 0)
        {
          [(UIImage *)self variableValue];
          v18 = v17;
          configuration = [(UIImage *)self configuration];
          if (v8)
          {
            [UIImage _systemImageNamed:firstObject variableValue:configuration withConfiguration:v18];
          }

          else
          {
            [UIImage systemImageNamed:firstObject variableValue:configuration withConfiguration:v18];
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

  selfCopy2 = self;
LABEL_13:

  return selfCopy2;
}

+ (int)_iconVariantForUIApplicationIconFormat:(int)format scale:(double *)scale
{
  v5 = *&format;
  v7 = +[UIDevice currentDevice];
  LODWORD(scale) = [self _iconVariantForUIApplicationIconFormat:v5 idiom:objc_msgSend(v7 scale:"userInterfaceIdiom"), scale];

  return scale;
}

+ (int)_iconVariantForUIApplicationIconFormat:(int)format idiom:(int64_t)idiom scale:(double *)scale
{
  v6 = *scale;
  if (format <= 11)
  {
    switch(format)
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

  else if (format > 14)
  {
    if (format == 15)
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

    if (format == 16)
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
    if (format == 12)
    {
      v13 = v6 < 2.0;
      v14 = 58;
      v15 = 59;
      goto LABEL_37;
    }

    if (format == 13)
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

  if (idiom == 1)
  {
    if (format <= 6)
    {
      if (format > 3)
      {
        v13 = v6 < 2.0;
        if (format == 4)
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

      else if (format == 1)
      {
        v13 = v6 < 2.0;
        v14 = 3;
        v15 = 25;
      }

      else
      {
        if (format != 3)
        {
LABEL_99:
          if (v6 < 2.0)
          {
            return 1;
          }

          mainScreen = [objc_opt_self() mainScreen];
          [mainScreen _referenceBounds];
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
      if (format > 8)
      {
        if (format != 9)
        {
          if (format == 10)
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

          if (format == 14)
          {
            v10 = 71;
            if (v6 >= 2.0)
            {
              mainScreen2 = [objc_opt_self() mainScreen];
              [mainScreen2 _referenceBounds];
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

      if (format != 7)
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

  if (format > 6)
  {
    if (format > 8)
    {
      if (format == 9)
      {
LABEL_86:
        v13 = v6 < 3.0;
        v14 = 31;
        v15 = 54;
        goto LABEL_37;
      }

      if (format == 14)
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

    if (format != 7)
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

  if (format <= 3)
  {
    if (format == 1)
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

    if (format != 3)
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

  if (format == 4)
  {
    goto LABEL_82;
  }

  if (format == 6)
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

+ (id)_ISImageDescriptorNameForUIApplicationIconFormat:(int)format
{
  if (format > 0x10)
  {
    v3 = MEMORY[0x1E69A8A78];
  }

  else
  {
    v3 = qword_1E710C0E8[format];
  }

  return *v3;
}

+ (id)_baseImageDescriptorForUIApplicationIconFormat:(int)format
{
  v4 = [UIImage _ISImageDescriptorNameForUIApplicationIconFormat:?];
  v5 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v4];
  [v5 setDrawBorder:(format < 0x11) & (0x1C001u >> format)];

  return v5;
}

+ (id)_imageWithIcon:(void *)icon descriptor:
{
  iconCopy = icon;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 prepareImageForDescriptor:iconCopy];

  cGImage = [v6 CGImage];
  [v6 scale];
  v8 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];

  return v8;
}

+ (id)_applicationIconImageForBundleIdentifier:(id)identifier format:(int)format
{
  v4 = *&format;
  identifierCopy = identifier;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v8 = [self _applicationIconImageForBundleIdentifier:identifierCopy format:v4 scale:?];

  return v8;
}

+ (id)_applicationIconImageForBundleIdentifier:(id)identifier format:(int)format scale:(double)scale
{
  v6 = *&format;
  identifierCopy = identifier;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppIcon(bundleID=%@, format=%d, scale=%.1lf)", identifierCopy, v6, *&scale];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__UIImage_UIApplicationIconPrivate___applicationIconImageForBundleIdentifier_format_scale___block_invoke;
  v17[3] = &unk_1E710C028;
  v19 = identifierCopy;
  selfCopy = self;
  v18 = dictionary;
  v22 = v6;
  scaleCopy = scale;
  v11 = identifierCopy;
  v12 = dictionary;
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

+ (id)_applicationIconImageForBundleIdentifier:(id)identifier format:(int)format scale:(double)scale appearance:(id)appearance style:(int64_t)style
{
  v9 = *&format;
  appearanceCopy = appearance;
  v13 = MEMORY[0x1E69A8A00];
  identifierCopy = identifier;
  v15 = [[v13 alloc] initWithBundleIdentifier:identifierCopy];

  v16 = [self _baseImageDescriptorForUIApplicationIconFormat:v9];
  v17 = v16;
  if (appearanceCopy)
  {
    [(_UISystemIconAppearance *)appearanceCopy applyAppearanceToDescriptor:v16 userInterfaceStyle:style];
  }

  else
  {
    [v16 setAppearance:style == 2];
  }

  if (scale > 0.0)
  {
    [v17 setScale:scale];
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    [v17 setScale:?];
  }

  v19 = [UIImage _imageWithIcon:v15 descriptor:v17];

  return v19;
}

+ (id)_iconForResourceProxy:(id)proxy format:(int)format options:(unint64_t)options
{
  optionsCopy = options;
  v6 = *&format;
  v8 = MEMORY[0x1E69A8A00];
  proxyCopy = proxy;
  v10 = [[v8 alloc] initWithResourceProxy:proxyCopy];

  v11 = [self _baseImageDescriptorForUIApplicationIconFormat:v6];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  [v11 setScale:?];

  if (optionsCopy)
  {
    [v11 setVariantOptions:{objc_msgSend(v11, "variantOptions") | 1}];
  }

  v13 = [UIImage _imageWithIcon:v10 descriptor:v11];

  return v13;
}

- (id)_applicationIconImageForFormat:(int)format precomposed:(BOOL)precomposed
{
  precomposedCopy = precomposed;
  v5 = *&format;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v8 = [(UIImage *)self _applicationIconImageForFormat:v5 precomposed:precomposedCopy scale:?];

  return v8;
}

- (id)_applicationIconImageForFormat:(int)format precomposed:(BOOL)precomposed scale:(double)scale
{
  v6 = *&format;
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = objc_alloc(MEMORY[0x1E69A8988]);
  cGImage = [(UIImage *)self CGImage];
  [(UIImage *)self scale];
  v10 = [v8 initWithCGImage:cGImage scale:?];
  v11 = objc_alloc(MEMORY[0x1E69A8A00]);
  v19[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [v11 initWithImages:v12];

  v14 = [UIImage _baseImageDescriptorForUIApplicationIconFormat:v6];
  v15 = v14;
  if (scale > 0.0)
  {
    [v14 setScale:scale];
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    [v15 setScale:?];
  }

  v17 = [UIImage _imageWithIcon:v13 descriptor:v15];

  return v17;
}

+ (UIImage)actionsImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  actionsImage = [(_UIImageSystemImageVisualStyle *)v2 actionsImage];

  return actionsImage;
}

+ (UIImage)addImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  addImage = [(_UIImageSystemImageVisualStyle *)v2 addImage];

  return addImage;
}

+ (UIImage)removeImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  removeImage = [(_UIImageSystemImageVisualStyle *)v2 removeImage];

  return removeImage;
}

+ (UIImage)checkmarkImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  checkmarkImage = [(_UIImageSystemImageVisualStyle *)v2 checkmarkImage];

  return checkmarkImage;
}

+ (UIImage)strokedCheckmarkImage
{
  objc_opt_self();
  v2 = +[_UIImageSystemImageVisualStyle _iosVisualStyle];
  strokedCheckmarkImage = [(_UIImageSystemImageVisualStyle *)v2 strokedCheckmarkImage];

  return strokedCheckmarkImage;
}

- (id)_imageByApplyingVariant:(unint64_t)variant allowNone:(BOOL)none
{
  if (!variant && !none || (_UIImageName(self), v6 = objc_claimAutoreleasedReturnValue(), v7 = _UIImageVariantValueForName(v6), v6, (variant & ~v7) == 0))
  {
    selfCopy3 = self;
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
  selfCopy2 = self;
  v10 = _Block_copy(&v13);
  v11 = v10[2](v10, variant);
  if (!v11)
  {
    v11 = v10[2](v10, variant & 0xFFFFFFFFFFFEFFFFLL);
    if (!v11)
    {
      v11 = v10[2](v10, variant & 0xFFFFFFFFBFFFFFFFLL);
      if (!v11)
      {
        v11 = v10[2](v10, variant & 0xFFFFFFFFFFFFFFF1);
        if (!v11)
        {
          v11 = v10[2](v10, variant & 0xFFFFFFFFBFFEFFFFLL);
          if (!v11)
          {
            v11 = v10[2](v10, variant & 0xFFFFFFFFFFFEFFF1);
            if (!v11)
            {
              v11 = v10[2](v10, variant & 0xFFFFFFFFBFFFFFF1);
              if (!v11)
              {

LABEL_15:
                selfCopy3 = self;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

  selfCopy3 = v11;
  [(UIImage *)self _configureImage:v11 assumePreconfigured:0, v13, v14, v15, v16];

LABEL_16:
LABEL_17:

  return selfCopy3;
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

+ (id)_systemImageNamed:(id)named variant:(unint64_t)variant
{
  v4 = _UIImageVariantName(named, variant);
  v5 = [UIImage _systemImageNamed:v4 withConfiguration:0];

  return v5;
}

+ (id)_systemImageNamed:(id)named variant:(unint64_t)variant withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = _UIImageVariantName(named, variant);
  v9 = [UIImage _systemImageNamed:v8 withConfiguration:configurationCopy];

  return v9;
}

+ (id)_systemImageNamed:(id)named shape:(int64_t)shape
{
  if ((shape - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_18A67CB50[shape - 1];
  }

  return [self _systemImageNamed:named variant:v4];
}

+ (id)_systemImageNamed:(id)named shape:(int64_t)shape fill:(int64_t)fill
{
  if ((shape - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_18A67CB50[shape - 1];
  }

  if (fill == 1)
  {
    v6 = v5 | 0x40000000;
  }

  else
  {
    v6 = v5;
  }

  return [self _systemImageNamed:named variant:v6];
}

+ (id)_systemImageNamed:(id)named shape:(int64_t)shape fill:(int64_t)fill withConfiguration:(id)configuration
{
  if ((shape - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_18A67CB50[shape - 1];
  }

  if (fill == 1)
  {
    v7 = v6 | 0x40000000;
  }

  else
  {
    v7 = v6;
  }

  return [self _systemImageNamed:named variant:v7 withConfiguration:configuration];
}

- (id)_applyBackdropViewSettings:(id)settings allowImageResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  v144 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
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

  grayscaleTintMaskImage = [settingsCopy grayscaleTintMaskImage];
  if (grayscaleTintMaskImage)
  {
    v15 = grayscaleTintMaskImage;
    grayscaleTintMaskImage2 = [settingsCopy grayscaleTintMaskImage];
    cGImage = [grayscaleTintMaskImage2 CGImage];

    if (!cGImage)
    {
      grayscaleTintMaskImage3 = [settingsCopy grayscaleTintMaskImage];
      NSLog(&cfstr_Applybackdropv_1.isa, grayscaleTintMaskImage3);
LABEL_31:

      goto LABEL_4;
    }
  }

  colorTintMaskImage = [settingsCopy colorTintMaskImage];
  if (colorTintMaskImage)
  {
    v19 = colorTintMaskImage;
    colorTintMaskImage2 = [settingsCopy colorTintMaskImage];
    cGImage2 = [colorTintMaskImage2 CGImage];

    if (!cGImage2)
    {
      grayscaleTintMaskImage3 = [settingsCopy colorTintMaskImage];
      NSLog(&cfstr_Applybackdropv_2.isa, grayscaleTintMaskImage3);
      goto LABEL_31;
    }
  }

  filterMaskImage = [settingsCopy filterMaskImage];
  if (filterMaskImage)
  {
    v23 = filterMaskImage;
    filterMaskImage2 = [settingsCopy filterMaskImage];
    cGImage3 = [filterMaskImage2 CGImage];

    if (!cGImage3)
    {
      grayscaleTintMaskImage3 = [settingsCopy filterMaskImage];
      NSLog(&cfstr_Applybackdropv_3.isa, grayscaleTintMaskImage3);
      goto LABEL_31;
    }
  }

  [settingsCopy blurRadius];
  v27 = v26;
  [settingsCopy saturationDeltaFactor];
  v29 = v28;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v32 = v31;

  usesBackdropEffectView = [settingsCopy usesBackdropEffectView];
  v34 = fabs(v29 + -1.0);
  if (v27 > 0.00000011920929)
  {
    v35 = usesBackdropEffectView;
  }

  else
  {
    v35 = 0;
  }

  v36 = 1.0;
  if ((v35 & resizingCopy) != 0)
  {
    v36 = 0.25;
  }

  v132.f64[0] = v36;
  [(UIImage *)self size];
  v131 = v37;
  [(UIImage *)self size];
  v130 = v38;
  selfCopy = self;
  usesBackdropEffectView2 = [settingsCopy usesBackdropEffectView];
  v41.f64[0] = v131.f64[0];
  *&v41.f64[1] = v130;
  v42 = vrndp_f32(vcvt_f32_f64(vmulq_n_f64(v41, v132.f64[0])));
  v132 = vcvtq_f64_f32(v42);
  v43 = v34 > 0.00000011920929 || v27 > 0.00000011920929;
  v44 = selfCopy;
  if (usesBackdropEffectView2)
  {
    v44 = selfCopy;
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
      cGImage4 = [(UIImage *)selfCopy CGImage];
      v146.origin.x = 0.0;
      v146.origin.y = 0.0;
      v146.size = v132;
      CGContextDrawImage(v46, v146, cGImage4);
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
        [settingsCopy blurRadius];
        v52 = v32 * (v51 * 0.25);
        if (v52 < 2.0)
        {
          v52 = 2.0;
        }

        v53 = vcvtmd_u64_f64(v52 * 3.0 * 2.50662827 * 0.25 + 0.5);
        v54 = v53 | 1;
        if (resizingCopy)
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
        saturationDeltaFactor = [settingsCopy saturationDeltaFactor];
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
        MEMORY[0x1EEE9AC00](saturationDeltaFactor);
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
  v84 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [settingsCopy style]);
  [v84 setValuesFromModel:settingsCopy];
  v85 = +[_UIBackdropViewSettings settingsForStyle:](_UIBackdropViewSettings, "settingsForStyle:", [settingsCopy style]);
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

    colorSettings = [v84 colorSettings];
    [colorSettings setAverageHue:v86];

    v88 = v137.f64[0];
    colorSettings2 = [v84 colorSettings];
    [colorSettings2 setAverageSaturation:v88];

    v90 = v137.f64[1];
    colorSettings3 = [v84 colorSettings];
    [colorSettings3 setAverageBrightness:v90];

    v92 = *(&v138 + 1);
    colorSettings4 = [v84 colorSettings];
    [colorSettings4 setContrast:v92];
  }

  [v85 computeOutputSettingsUsingModel:v84];
  grayscaleTintMaskImage4 = [settingsCopy grayscaleTintMaskImage];
  if (grayscaleTintMaskImage4 || ([settingsCopy colorTintMaskImage], (grayscaleTintMaskImage4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    filterMaskImage3 = [settingsCopy filterMaskImage];

    if (!filterMaskImage3)
    {
      v95 = 0x61u >> CGImageGetBitmapInfo([(UIImage *)selfCopy CGImage]);
      goto LABEL_65;
    }
  }

  LOBYTE(v95) = 0;
LABEL_65:
  v96 = v132;
  if (resizingCopy)
  {
    v97 = v132.f64[1];
    v98 = 0.0;
    v99 = 0.0;
  }

  else
  {
    v98 = *MEMORY[0x1E695EFF8];
    v99 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIImage *)selfCopy size];
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
  cGImage5 = [(UIImage *)selfCopy CGImage];
  v147.origin.x = v98;
  v147.origin.y = v99;
  v147.size.width = v132.f64[0];
  v147.size.height = v97;
  CGContextDrawImage(v102, v147, cGImage5);
  if ([v85 usesBackdropEffectView])
  {
    CGContextSaveGState(v102);
    filterMaskImage4 = [settingsCopy filterMaskImage];

    if (filterMaskImage4)
    {
      filterMaskImage5 = [settingsCopy filterMaskImage];
      cGImage6 = [filterMaskImage5 CGImage];
      v148.origin.x = v98;
      v148.origin.y = v99;
      v148.size.width = v132.f64[0];
      v148.size.height = v97;
      CGContextClipToMask(v102, v148, cGImage6);
    }

    cGImage7 = [v44 CGImage];
    v149.origin.x = v98;
    v149.origin.y = v99;
    v149.size.width = v132.f64[0];
    v149.size.height = v97;
    CGContextDrawImage(v102, v149, cGImage7);
    CGContextRestoreGState(v102);
  }

  if ([v85 usesGrayscaleTintView])
  {
    CGContextSaveGState(v102);
    [v85 grayscaleTintAlpha];
    v109 = v108;
    [v85 grayscaleTintLevel];
    CGContextSetGrayFillColor(v102, v110, v109);
    grayscaleTintMaskImage5 = [settingsCopy grayscaleTintMaskImage];

    v112 = v132.f64[0];
    if (grayscaleTintMaskImage5)
    {
      grayscaleTintMaskImage6 = [settingsCopy grayscaleTintMaskImage];
      cGImage8 = [grayscaleTintMaskImage6 CGImage];
      v150.origin.x = v98;
      v150.origin.y = v99;
      v150.size.width = v132.f64[0];
      v150.size.height = v97;
      CGContextClipToMask(v102, v150, cGImage8);

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
    colorTint = [v85 colorTint];

    if (colorTint)
    {
      CGContextSaveGState(v102);
      v136.data = 0;
      src.data = 0;
      dest.data = 0;
      v133.data = 0;
      colorTint2 = [v85 colorTint];
      [colorTint2 getRed:&v136 green:&src blue:&dest alpha:&v133];

      [v85 colorTintAlpha];
      *&v133.data = v120 * *&v133.data;
      CGContextSetRGBFillColor(v102, *&v136.data, *&src.data, *&dest.data, *&v133.data);
      colorTintMaskImage3 = [settingsCopy colorTintMaskImage];

      v122 = v132.f64[0];
      if (colorTintMaskImage3)
      {
        colorTintMaskImage4 = [settingsCopy colorTintMaskImage];
        cGImage9 = [colorTintMaskImage4 CGImage];
        v151.origin.x = v98;
        v151.origin.y = v99;
        v151.size.width = v132.f64[0];
        v151.size.height = v97;
        CGContextClipToMask(v102, v151, cGImage9);

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

- (id)_applyBackdropViewSettings:(id)settings includeTints:(BOOL)tints includeBlur:(BOOL)blur allowImageResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  settingsCopy = settings;
  v11 = settingsCopy;
  if (tints || blur)
  {
    if (!tints)
    {
      [settingsCopy setUsesGrayscaleTintView:0];
      [v11 setUsesColorTintView:0];
    }

    if (!blur)
    {
      [v11 setBlurRadius:0.0];
      [v11 setSaturationDeltaFactor:1.0];
    }

    selfCopy = [(UIImage *)self _applyBackdropViewSettings:v11 allowImageResizing:resizingCopy];
  }

  else
  {
    selfCopy = self;
  }

  v13 = selfCopy;

  return v13;
}

- (id)_applyBackdropViewStyle:(int64_t)style includeTints:(BOOL)tints includeBlur:(BOOL)blur
{
  blurCopy = blur;
  tintsCopy = tints;
  v9 = +[UIDevice currentDevice];
  v10 = -[UIImage _applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:](self, "_applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:", style, tintsCopy, blurCopy, [v9 _graphicsQuality]);

  return v10;
}

- (id)_applyBackdropViewStyle:(int64_t)style includeTints:(BOOL)tints includeBlur:(BOOL)blur graphicsQuality:(int64_t)quality
{
  blurCopy = blur;
  tintsCopy = tints;
  v10 = [UIDevice currentDevice:style];
  v11 = -[UIImage _applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:allowImageResizing:](self, "_applyBackdropViewStyle:includeTints:includeBlur:graphicsQuality:allowImageResizing:", style, tintsCopy, blurCopy, [v10 _graphicsQuality], 0);

  return v11;
}

- (id)_applyBackdropViewStyle:(int64_t)style includeTints:(BOOL)tints includeBlur:(BOOL)blur graphicsQuality:(int64_t)quality allowImageResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  blurCopy = blur;
  tintsCopy = tints;
  if (tints || blur)
  {
    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:style graphicsQuality:quality];
    selfCopy = [(UIImage *)self _applyBackdropViewSettings:v12 includeTints:tintsCopy includeBlur:blurCopy allowImageResizing:resizingCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)_tintedImageForSize:(CGSize)size withTint:(id)tint effectsImage:(id)image maskImage:(id)maskImage style:(int)style
{
  v7 = 0;
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      maskImageCopy = maskImage;
      imageCopy = image;
      tintCopy = tint;
      _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
      v18 = _UIImagePressedTintColor(tintCopy, style);

      [v18 set];
      UIRectFillUsingOperation(1, v13, v14, width, height);
      [imageCopy drawInRect:{v13, v14, width, height}];

      [maskImageCopy drawInRect:22 blendMode:v13 alpha:{v14, width, height, 1.0}];
      v7 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v7;
}

+ (id)_tintedImageForSize:(CGSize)size withTint:(id)tint maskImage:(id)image effectsImage:(id)effectsImage style:(int)style
{
  v7 = 0;
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      effectsImageCopy = effectsImage;
      imageCopy = image;
      tintCopy = tint;
      _UIGraphicsBeginImageContextWithOptions(0, 0, width, height, 0.0);
      v18 = _UIImagePressedTintColor(tintCopy, style);

      [v18 set];
      UIRectFillUsingOperation(1, v13, v14, width, height);
      [imageCopy drawInRect:22 blendMode:v13 alpha:{v14, width, height, 1.0}];

      [effectsImageCopy drawInRect:{v13, v14, width, height}];
      v7 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v7;
}

+ (id)_tintedImageForSize:(CGSize)size withTint:(id)tint maskImage:(id)image effectsImage:(id)effectsImage style:(int)style edgeInsets:(UIEdgeInsets)insets
{
  v8 = 0;
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      left = insets.left;
      top = insets.top;
      width = size.width;
      v16 = *MEMORY[0x1E695EFF8];
      v17 = *(MEMORY[0x1E695EFF8] + 8);
      v18 = size.width - (insets.left + insets.right);
      v19 = size.height - (insets.top + insets.bottom);
      effectsImageCopy = effectsImage;
      imageCopy = image;
      tintCopy = tint;
      _UIGraphicsBeginImageContextWithOptions(0, 0, v18, v19, 0.0);
      v23 = v16 - left;
      v24 = v17 - top;
      v25 = _UIImagePressedTintColor(tintCopy, style);

      [v25 set];
      UIRectFillUsingOperation(1, v23, v24, width, height);
      [imageCopy drawInRect:22 blendMode:v23 alpha:{v24, width, height, 1.0}];

      [effectsImageCopy drawInRect:{v23, v24, width, height}];
      v8 = _UIGraphicsGetImageFromCurrentImageContext(0);
      ContextStack = GetContextStack(0);
      PopContextFromStack(ContextStack);
    }
  }

  return v8;
}

+ (id)_cachedImageForKey:(id)key fromBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
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
  v8 = keyCopy;
  v19 = v8;
  dispatch_sync(v7, block);
  v9 = v22[5];
  if (!v9)
  {
    v10 = blockCopy[2](blockCopy);
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

+ (CGSize)_legibilityImageSizeForSize:(CGSize)size style:(int64_t)style
{
  height = size.height;
  width = size.width;
  v6 = [_UILegibilitySettings sharedInstanceForStyle:style];
  [v6 imageOutset];
  v8 = width + v7;
  [v6 imageOutset];
  v10 = height + v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (id)_imageForLegibilityStyle:(int64_t)style
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

  v8 = [_UILegibilitySettings sharedInstanceForStyle:style];

  return [(UIImage *)self _imageForLegibilitySettings:v8 strength:1.5];
}

- (id)_imageForLegibilitySettings:(id)settings strength:(double)strength alphaOnly:(BOOL)only
{
  onlyCopy = only;
  selfCopy = self;
  [(UIImage *)self size];
  if (v9 >= 1.0)
  {
    [(UIImage *)selfCopy size];
    if (v10 >= 1.0)
    {
      style = [settings style];
      if (strength != 0.0)
      {
        if (style)
        {
          [(UIImage *)selfCopy size];
          v13 = v12;
          [settings imageOutset];
          v15 = v13 + v14;
          [(UIImage *)selfCopy size];
          v17 = v16;
          [settings imageOutset];
          v19 = v17 + v18;
          [objc_msgSend(objc_opt_self() "mainScreen")];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __73__UIImage__UILegibility___imageForLegibilitySettings_strength_alphaOnly___block_invoke;
          v22[3] = &unk_1E710C2F8;
          v22[4] = selfCopy;
          v22[5] = settings;
          *&v22[6] = strength;
          *&v22[7] = v15;
          *&v22[8] = v19;
          v23 = onlyCopy;
          return _UIGraphicsDrawIntoImageContextWithMoreOptions(0, onlyCopy, v22, v15, v19, v20);
        }
      }
    }
  }

  return selfCopy;
}

- (void)_drawImageForLegibilityStyle:(int64_t)style size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [_UILegibilitySettings sharedInstanceForStyle:style];

  [(UIImage *)self _drawImageForLegibilitySettings:v7 strength:1.5 size:width, height];
}

- (void)_drawImageForLegibilitySettings:(id)settings strength:(double)strength size:(CGSize)size alphaOnly:(BOOL)only
{
  onlyCopy = only;
  width = size.width;
  height = size.height;
  style = [settings style];
  if (strength != 0.0 && style != 0)
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
    selfCopy = self;
    if (!onlyCopy)
    {
      selfCopy = -[UIImage _flatImageWithColor:](self, "_flatImageWithColor:", [settings shadowColor]);
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
    v38[5] = settings;
    v41 = v17;
    v42 = v18;
    v43 = v20;
    v44 = v22;
    v45 = v24;
    v46 = onlyCopy;
    v38[6] = selfCopy;
    v38[7] = &v47;
    _UIGraphicsDrawIntoImageContextWithMoreOptions(0, onlyCopy, v38, v39.f64[0], v39.f64[1], v27);
    [settings shadowAlpha];
    for (i = v33 * strength; i > 0.00000011920929; i = i + -1.0)
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

- (id)_imageWithBrightnessModifiedForLegibilityStyle:(int64_t)style
{
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v6 = v5;
  selfCopy = self;
  if (style != 2)
  {
    v8 = [MEMORY[0x1E695F648] filterWithName:@"CIWhitePointAdjust"];
    v9 = [UIColor colorWithWhite:0.92 alpha:1.0];
    [v8 setValue:objc_msgSend(MEMORY[0x1E695F610] forKey:{"colorWithCGColor:", -[UIColor CGColor](v9, "CGColor")), @"inputColor"}];
    v10 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:self];
    [v8 setValue:v10 forKey:*MEMORY[0x1E695FAB0]];
    selfCopy = +[UIImage imageWithCIImage:scale:orientation:](UIImage, "imageWithCIImage:scale:orientation:", [v8 valueForKey:*MEMORY[0x1E695FB50]], 0, v6);
  }

  if (selfCopy)
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
    v15[4] = selfCopy;
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

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  v9 = [MEMORY[0x1E6982C40] _typeWithIdentifier:identifierCopy allowUndeclared:1];
  v10 = [MEMORY[0x1E6982C40] _typeWithIdentifier:@"com.apple.uikit.image" allowUndeclared:1];
  if ([v9 conformsToType:v10])
  {
    v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:0];
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

            v12 = [[self alloc] initWithData:dataCopy];
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

- (UIImage)initWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  dataCopy = data;
  v10 = [(UIImage *)self init];
  v11 = [objc_opt_class() objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:error];

  v12 = v11;
  return v12;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"com.apple.uikit.image";
  identifier = [*MEMORY[0x1E6982E00] identifier];
  v7[1] = identifier;
  identifier2 = [*MEMORY[0x1E6982F28] identifier];
  v7[2] = identifier2;
  identifier3 = [*MEMORY[0x1E6982E58] identifier];
  v7[3] = identifier3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  return v5;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:@"com.apple.uikit.image"])
  {
    v8 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:self requiringSecureCoding:1 error:0];
LABEL_7:
    v13 = v8;
    handlerCopy[2](handlerCopy, v8, 0);
    goto LABEL_8;
  }

  identifier = [*MEMORY[0x1E6982F28] identifier];
  v10 = [identifierCopy isEqualToString:identifier];

  if (v10)
  {
    v8 = UIImagePNGRepresentation(self);
    goto LABEL_7;
  }

  identifier2 = [*MEMORY[0x1E6982E58] identifier];
  v12 = [identifierCopy isEqualToString:identifier2];

  if (v12)
  {
    v8 = _UIImageJPEGRepresentation(self, 0, 0.8);
    goto LABEL_7;
  }

  identifier3 = [*MEMORY[0x1E6982E00] identifier];
  v16 = [identifierCopy isEqualToString:identifier3];

  if (!v16)
  {
    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_9;
  }

  v13 = UIImageHEICRepresentation(self);
  handlerCopy[2](handlerCopy, v13, 0);
LABEL_8:

LABEL_9:
  return 0;
}

@end