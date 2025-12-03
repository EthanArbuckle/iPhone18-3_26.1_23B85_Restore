@interface PUCropToolControllerSpec
- (CGSize)cropActionButtonSize;
- (CGSize)minimumCropSize;
- (PXLabelSpec)cropHeaderLabelSpec;
- (UIColor)cropAspectButtonColor;
- (UIEdgeInsets)cropAspectRatioButtonTitleInset;
- (UIEdgeInsets)cropAspectRatioScrollContentInset;
- (double)cropAspectRatioScrollHeight;
- (double)minimumCropInset;
@end

@implementation PUCropToolControllerSpec

- (UIColor)cropAspectButtonColor
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v3 = [labelColor colorWithAlphaComponent:0.6];

  return v3;
}

- (UIEdgeInsets)cropAspectRatioButtonTitleInset
{
  v2 = 0.0;
  v3 = -20.0;
  v4 = 0.0;
  v5 = -20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)cropAspectRatioScrollContentInset
{
  v2 = 90.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 90.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (double)cropAspectRatioScrollHeight
{
  isiPadLayout = [(PUPhotoEditToolControllerSpec *)self isiPadLayout];
  result = 105.0;
  if (!isiPadLayout)
  {
    return 21.0;
  }

  return result;
}

- (PXLabelSpec)cropHeaderLabelSpec
{
  v2 = objc_opt_new();
  v3 = PXFontWithTextStyle();
  [v2 setFont:v3];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v2 setTextColor:labelColor];

  return v2;
}

- (CGSize)minimumCropSize
{
  [(PUCropToolControllerSpec *)self cropHandleViewLineThickness];
  v4 = v3;
  [(PUCropToolControllerSpec *)self cropHandleViewLineMargin];
  v6 = v4 + v5;
  [(PUCropToolControllerSpec *)self minimumCropHandleViewSize];
  v9 = v7 - v6 + v7 - v6;
  v10 = v8 - v6 + v8 - v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)minimumCropInset
{
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  [v2 cropSideMargins];
  v4 = v3;

  return v4;
}

- (CGSize)cropActionButtonSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end