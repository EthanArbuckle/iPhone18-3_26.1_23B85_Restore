@interface PUAlbumListViewControllerSpec
+ (id)emptyPlaceholderImageForSystemImageNamed:(id)named scale:(int64_t)scale;
+ (id)padSpec;
+ (id)phoneSpec;
+ (id)visionOSSpec;
- (CGPoint)_pixelRoundedOriginForCenteredImage:(id)image inRect:(CGRect)rect window:(id)window;
- (CGSize)cellSizeForBounds:(CGRect)bounds;
- (CGSize)cellSizeForStackSize:(CGSize)size;
- (CGSize)collageImageSize;
- (CGSize)contentSizeForViewInPopover;
- (CGSize)imageSize;
- (CGSize)stackSize;
- (CGSize)tileSizeForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets stackViewStyle:(unint64_t)style;
- (PUAlbumListViewControllerSpec)standInAlbumListViewControllerSpec;
- (PUFontManager)_fontManager;
- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)stackPerspectiveInsets;
- (UIOffset)stackOffset;
- (UIOffset)stackPerspectiveOffset;
- (id)emptyAlbumPlaceholderImageForWindow:(id)window;
- (id)emptySharedAlbumPlaceholderImageForWindow:(id)window;
- (void)_getStackSize:(CGSize *)size outEdgeInsets:(UIEdgeInsets *)insets forLayoutReferenceSize:(CGSize)referenceSize safeAreaInsets:(UIEdgeInsets)areaInsets;
@end

@implementation PUAlbumListViewControllerSpec

- (CGSize)collageImageSize
{
  objc_copyStruct(v4, &self->_collageImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIOffset)stackPerspectiveOffset
{
  horizontal = self->_stackPerspectiveOffset.horizontal;
  vertical = self->_stackPerspectiveOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIEdgeInsets)stackPerspectiveInsets
{
  top = self->_stackPerspectiveInsets.top;
  left = self->_stackPerspectiveInsets.left;
  bottom = self->_stackPerspectiveInsets.bottom;
  right = self->_stackPerspectiveInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIOffset)stackOffset
{
  horizontal = self->_stackOffset.horizontal;
  vertical = self->_stackOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGSize)stackSize
{
  width = self->_stackSize.width;
  height = self->_stackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUAlbumListViewControllerSpec)standInAlbumListViewControllerSpec
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)_getStackSize:(CGSize *)size outEdgeInsets:(UIEdgeInsets *)insets forLayoutReferenceSize:(CGSize)referenceSize safeAreaInsets:(UIEdgeInsets)areaInsets
{
  right = areaInsets.right;
  left = areaInsets.left;
  v11 = referenceSize.width - areaInsets.left - areaInsets.right;
  _insetsInterpolator = [(PUAlbumListViewControllerSpec *)self _insetsInterpolator];
  [_insetsInterpolator valueForMetric:v11];
  v14 = v13;

  if (insets)
  {
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v15 = round(*&PUMainScreenScale_screenScale * v14) / *&PUMainScreenScale_screenScale;
    insets->top = 0.0;
    insets->left = left + v15;
    insets->bottom = 0.0;
    insets->right = right + v15;
  }

  if (size)
  {
    _stackWidthInterpolator = [(PUAlbumListViewControllerSpec *)self _stackWidthInterpolator];
    [_stackWidthInterpolator valueForMetric:v11 + v14 * -2.0];
    v18 = v17;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v19 = round(*&PUMainScreenScale_screenScale * v18) / *&PUMainScreenScale_screenScale;

    size->width = v19;
    size->height = v19;
  }
}

- (CGPoint)_pixelRoundedOriginForCenteredImage:(id)image inRect:(CGRect)rect window:(id)window
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  windowCopy = window;
  [image size];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectGetMidX(v18);
  UIRoundToViewScale();
  v12 = v11;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetMidY(v19);
  UIRoundToViewScale();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)emptySharedAlbumPlaceholderImageForWindow:(id)window
{
  emptySharedAlbumPlaceholderImage = self->_emptySharedAlbumPlaceholderImage;
  if (!emptySharedAlbumPlaceholderImage)
  {
    nameOfEmptySharedAlbumPlaceholderImage = [(PUAlbumListViewControllerSpec *)self nameOfEmptySharedAlbumPlaceholderImage];
    v6 = [PUAlbumListViewControllerSpec emptyPlaceholderImageForSystemImageNamed:nameOfEmptySharedAlbumPlaceholderImage scale:3];
    v7 = self->_emptySharedAlbumPlaceholderImage;
    self->_emptySharedAlbumPlaceholderImage = v6;

    emptySharedAlbumPlaceholderImage = self->_emptySharedAlbumPlaceholderImage;
  }

  return emptySharedAlbumPlaceholderImage;
}

- (id)emptyAlbumPlaceholderImageForWindow:(id)window
{
  emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  if (!emptyAlbumPlaceholderImage)
  {
    nameOfEmptyAlbumPlaceholderImage = [(PUAlbumListViewControllerSpec *)self nameOfEmptyAlbumPlaceholderImage];
    v6 = [PUAlbumListViewControllerSpec emptyPlaceholderImageForSystemImageNamed:nameOfEmptyAlbumPlaceholderImage scale:3];
    v7 = self->_emptyAlbumPlaceholderImage;
    self->_emptyAlbumPlaceholderImage = v6;

    emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  }

  return emptyAlbumPlaceholderImage;
}

- (CGSize)tileSizeForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets stackViewStyle:(unint64_t)style
{
  [(PUAlbumListViewControllerSpec *)self stackSizeForLayoutReferenceSize:size.width safeAreaInsets:size.height, insets.top, insets.left, insets.bottom, insets.right];
  if (style > 6)
  {
    v7 = 0.0;
    v6 = 0.0;
  }

  else if (((1 << style) & 0x67) == 0)
  {
    if (style == 3)
    {
      v8 = 0.5;
    }

    else
    {
      v8 = 0.330000013;
    }

    v6 = v6 * v8;
    v7 = v7 * v8;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (CGSize)cellSizeForStackSize:(CGSize)size
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewControllerSpec.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PUAlbumListViewControllerSpec cellSizeForStackSize:]", v7}];

  abort();
}

- (CGSize)cellSizeForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v4 = 44.0;
  result.height = v4;
  result.width = width;
  return result;
}

- (CGSize)contentSizeForViewInPopover
{
  v2 = 320.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUFontManager)_fontManager
{
  fontManager = self->__fontManager;
  if (!fontManager)
  {
    v4 = objc_alloc_init(PUFontManager);
    v5 = self->__fontManager;
    self->__fontManager = v4;

    fontManager = self->__fontManager;
  }

  return fontManager;
}

+ (id)emptyPlaceholderImageForSystemImageNamed:(id)named scale:(int64_t)scale
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DC888];
  namedCopy = named;
  systemGray4Color = [v5 systemGray4Color];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v9 = MEMORY[0x1E69DCAD8];
  v17[0] = systemGray4Color;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [v9 configurationWithPaletteColors:v10];
  v12 = [v8 configurationByApplyingConfiguration:v11];

  v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:scale];
  v14 = [v12 configurationByApplyingConfiguration:v13];

  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:namedCopy withConfiguration:v14];

  return v15;
}

+ (id)visionOSSpec
{
  v2 = objc_alloc_init(PUAlbumListViewControllerVisionOSSpec);

  return v2;
}

+ (id)padSpec
{
  v2 = objc_alloc_init(PUAlbumListViewControllerPadSpec);

  return v2;
}

+ (id)phoneSpec
{
  v2 = objc_alloc_init(PUAlbumListViewControllerPhoneSpec);

  return v2;
}

@end