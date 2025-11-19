@interface PUAlbumListViewControllerSpec
+ (id)emptyPlaceholderImageForSystemImageNamed:(id)a3 scale:(int64_t)a4;
+ (id)padSpec;
+ (id)phoneSpec;
+ (id)visionOSSpec;
- (CGPoint)_pixelRoundedOriginForCenteredImage:(id)a3 inRect:(CGRect)a4 window:(id)a5;
- (CGSize)cellSizeForBounds:(CGRect)a3;
- (CGSize)cellSizeForStackSize:(CGSize)a3;
- (CGSize)collageImageSize;
- (CGSize)contentSizeForViewInPopover;
- (CGSize)imageSize;
- (CGSize)stackSize;
- (CGSize)tileSizeForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4 stackViewStyle:(unint64_t)a5;
- (PUAlbumListViewControllerSpec)standInAlbumListViewControllerSpec;
- (PUFontManager)_fontManager;
- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)stackPerspectiveInsets;
- (UIOffset)stackOffset;
- (UIOffset)stackPerspectiveOffset;
- (id)emptyAlbumPlaceholderImageForWindow:(id)a3;
- (id)emptySharedAlbumPlaceholderImageForWindow:(id)a3;
- (void)_getStackSize:(CGSize *)a3 outEdgeInsets:(UIEdgeInsets *)a4 forLayoutReferenceSize:(CGSize)a5 safeAreaInsets:(UIEdgeInsets)a6;
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

- (void)_getStackSize:(CGSize *)a3 outEdgeInsets:(UIEdgeInsets *)a4 forLayoutReferenceSize:(CGSize)a5 safeAreaInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  left = a6.left;
  v11 = a5.width - a6.left - a6.right;
  v12 = [(PUAlbumListViewControllerSpec *)self _insetsInterpolator];
  [v12 valueForMetric:v11];
  v14 = v13;

  if (a4)
  {
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v15 = round(*&PUMainScreenScale_screenScale * v14) / *&PUMainScreenScale_screenScale;
    a4->top = 0.0;
    a4->left = left + v15;
    a4->bottom = 0.0;
    a4->right = right + v15;
  }

  if (a3)
  {
    v16 = [(PUAlbumListViewControllerSpec *)self _stackWidthInterpolator];
    [v16 valueForMetric:v11 + v14 * -2.0];
    v18 = v17;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v19 = round(*&PUMainScreenScale_screenScale * v18) / *&PUMainScreenScale_screenScale;

    a3->width = v19;
    a3->height = v19;
  }
}

- (CGPoint)_pixelRoundedOriginForCenteredImage:(id)a3 inRect:(CGRect)a4 window:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  [a3 size];
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

- (id)emptySharedAlbumPlaceholderImageForWindow:(id)a3
{
  emptySharedAlbumPlaceholderImage = self->_emptySharedAlbumPlaceholderImage;
  if (!emptySharedAlbumPlaceholderImage)
  {
    v5 = [(PUAlbumListViewControllerSpec *)self nameOfEmptySharedAlbumPlaceholderImage];
    v6 = [PUAlbumListViewControllerSpec emptyPlaceholderImageForSystemImageNamed:v5 scale:3];
    v7 = self->_emptySharedAlbumPlaceholderImage;
    self->_emptySharedAlbumPlaceholderImage = v6;

    emptySharedAlbumPlaceholderImage = self->_emptySharedAlbumPlaceholderImage;
  }

  return emptySharedAlbumPlaceholderImage;
}

- (id)emptyAlbumPlaceholderImageForWindow:(id)a3
{
  emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  if (!emptyAlbumPlaceholderImage)
  {
    v5 = [(PUAlbumListViewControllerSpec *)self nameOfEmptyAlbumPlaceholderImage];
    v6 = [PUAlbumListViewControllerSpec emptyPlaceholderImageForSystemImageNamed:v5 scale:3];
    v7 = self->_emptyAlbumPlaceholderImage;
    self->_emptyAlbumPlaceholderImage = v6;

    emptyAlbumPlaceholderImage = self->_emptyAlbumPlaceholderImage;
  }

  return emptyAlbumPlaceholderImage;
}

- (CGSize)tileSizeForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4 stackViewStyle:(unint64_t)a5
{
  [(PUAlbumListViewControllerSpec *)self stackSizeForLayoutReferenceSize:a3.width safeAreaInsets:a3.height, a4.top, a4.left, a4.bottom, a4.right];
  if (a5 > 6)
  {
    v7 = 0.0;
    v6 = 0.0;
  }

  else if (((1 << a5) & 0x67) == 0)
  {
    if (a5 == 3)
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

- (UIEdgeInsets)sectionInsetsForLayoutReferenceSize:(CGSize)a3 safeAreaInsets:(UIEdgeInsets)a4
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

- (CGSize)cellSizeForStackSize:(CGSize)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewControllerSpec.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PUAlbumListViewControllerSpec cellSizeForStackSize:]", v7}];

  abort();
}

- (CGSize)cellSizeForBounds:(CGRect)a3
{
  width = a3.size.width;
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

+ (id)emptyPlaceholderImageForSystemImageNamed:(id)a3 scale:(int64_t)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DC888];
  v6 = a3;
  v7 = [v5 systemGray4Color];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v9 = MEMORY[0x1E69DCAD8];
  v17[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [v9 configurationWithPaletteColors:v10];
  v12 = [v8 configurationByApplyingConfiguration:v11];

  v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:a4];
  v14 = [v12 configurationByApplyingConfiguration:v13];

  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6 withConfiguration:v14];

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