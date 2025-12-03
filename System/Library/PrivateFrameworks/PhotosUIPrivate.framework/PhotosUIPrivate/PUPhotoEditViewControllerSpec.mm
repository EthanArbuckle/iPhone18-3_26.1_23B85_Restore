@interface PUPhotoEditViewControllerSpec
- (UIEdgeInsets)previewViewInsetsLandscape;
- (UIEdgeInsets)previewViewInsetsPortrait;
- (UIEdgeInsets)scrubberViewMargin;
- (double)toolbarLongSideMargin;
- (double)toolbarLongSideWideMargin;
@end

@implementation PUPhotoEditViewControllerSpec

- (UIEdgeInsets)scrubberViewMargin
{
  v2 = 32.0;
  v3 = 12.0;
  v4 = 16.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)toolbarLongSideWideMargin
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (currentLayoutStyle <= 4)
  {
    return dbl_1B3D0D408[currentLayoutStyle];
  }

  return result;
}

- (double)toolbarLongSideMargin
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (currentLayoutStyle <= 4)
  {
    return dbl_1B3D0D3E0[currentLayoutStyle];
  }

  return result;
}

- (UIEdgeInsets)previewViewInsetsLandscape
{
  v2 = [(PUViewControllerSpec *)self currentLayoutStyle]- 1;
  if (v2 > 3)
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    v3 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v3 = dbl_1B3D0D3A0[v2];
    v4 = dbl_1B3D0D3C0[v2];
    v5 = MEMORY[0x1B8C6D660]();
    v6 = 50.0;
    if (v5)
    {
      v6 = 0.0;
    }

    v7 = v3;
  }

  v8 = v4;
  v9 = v3;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)previewViewInsetsPortrait
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  if ((currentLayoutStyle - 1) >= 3)
  {
    if (currentLayoutStyle != 4)
    {
      v6 = *MEMORY[0x1E69DDCE0];
      v5 = *(MEMORY[0x1E69DDCE0] + 8);
      v3 = *(MEMORY[0x1E69DDCE0] + 16);
      v4 = *(MEMORY[0x1E69DDCE0] + 24);
      goto LABEL_14;
    }

    v7 = MEMORY[0x1B8C6D660]();
    v6 = 49.0;
    v4 = 0.0;
    if (v7)
    {
      v6 = 0.0;
    }

    v3 = 0.0;
    goto LABEL_12;
  }

  if (!MEMORY[0x1B8C6D660]())
  {
    v4 = 0.0;
    v6 = 44.0;
    v3 = 49.0;
LABEL_12:
    v5 = 0.0;
    goto LABEL_14;
  }

  if (+[PUPhotoEditLayoutSupport isNotchedPhone])
  {
    v3 = 49.0;
  }

  else
  {
    v3 = 62.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
LABEL_14:
  result.right = v4;
  result.bottom = v3;
  result.left = v5;
  result.top = v6;
  return result;
}

@end