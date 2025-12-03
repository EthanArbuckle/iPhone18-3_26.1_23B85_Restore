@interface CUINamedImage(UIKitAdditions)
- (_DWORD)UIImageWithAsset:()UIKitAdditions configuration:flippedHorizontally:optionalVectorImage:;
- (void)configuration;
@end

@implementation CUINamedImage(UIKitAdditions)

- (void)configuration
{
  baseKey = [self baseKey];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __46__CUINamedImage_UIKitAdditions__configuration__block_invoke;
  v12 = &unk_1E710C078;
  v13 = baseKey;
  selfCopy = self;
  v3 = baseKey;
  v4 = [UITraitCollection traitCollectionWithTraits:&v9];
  v5 = v4;
  if (v4)
  {
    imageConfiguration = [v4 imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v7 = imageConfiguration;

  return imageConfiguration;
}

- (_DWORD)UIImageWithAsset:()UIKitAdditions configuration:flippedHorizontally:optionalVectorImage:
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  exifOrientation = [self exifOrientation];
  if ((exifOrientation - 1) >= 8)
  {
    v14 = 0;
  }

  else
  {
    v14 = (0x27365140u >> (4 * exifOrientation - 4)) & 7;
  }

  [self scale];
  if (v11)
  {
    v16 = [_UIImageCUIVectorImageContent alloc];
    image = [self image];
    [self scale];
    v18 = [(_UIImageCUIVectorImageContent *)v16 initWithCGImage:image CUIVectorImage:v11 scale:?];
  }

  else
  {
    v18 = -[_UIImageCGImageContent initWithCGImage:scale:]([_UIImageCGImageContent alloc], "initWithCGImage:scale:", [self image], v15);
  }

  v19 = v18;
  v20 = [[UIImage alloc] _initWithContent:v18 orientation:v14];
  [v20 _setConfiguration:v12];

  if (a5)
  {
    [v20 _horizontallyFlipImageOrientation];
    v20[26] |= 0x20u;
  }

  if ([self hasSliceInformation])
  {
    [self edgeInsets];
    v25 = [v20 resizableImageWithCapInsets:objc_msgSend(self resizingMode:{"resizingMode") != 0, v21, v22, v23, v24}];

    v20 = v25;
  }

  if (v10)
  {
    [v20 _setNamed:1];
    [v20 _setImageAsset:v10];
  }

  [self alignmentEdgeInsets];
  if (v29 != 0.0 || v26 != 0.0 || v28 != 0.0 || v27 != 0.0)
  {
    [v20 _setAlignmentRectInsets:?];
  }

  templateRenderingMode = [self templateRenderingMode];
  if (templateRenderingMode == 1)
  {
    v31 = 2;
    goto LABEL_23;
  }

  if (!templateRenderingMode && dyld_program_sdk_at_least())
  {
    v31 = 1;
LABEL_23:
    [v20 _setRenderingMode:v31];
  }

  return v20;
}

@end