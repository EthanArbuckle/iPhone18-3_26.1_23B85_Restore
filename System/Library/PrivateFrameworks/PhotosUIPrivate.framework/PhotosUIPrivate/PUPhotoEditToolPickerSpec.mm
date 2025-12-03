@interface PUPhotoEditToolPickerSpec
- (PUPhotoEditToolPickerSpec)init;
- (double)interToolSpacing;
- (double)interToolVerticalSpacingForToolCount:(unint64_t)count;
@end

@implementation PUPhotoEditToolPickerSpec

- (double)interToolVerticalSpacingForToolCount:(unint64_t)count
{
  [(PUViewControllerSpec *)self layoutReferenceSize];
  v6 = v5;
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  if (currentLayoutStyle < 2)
  {
    v9 = count > 5;
    result = 12.0;
    v10 = 6.0;
LABEL_9:
    if (v9)
    {
      return v10;
    }

    return result;
  }

  if (currentLayoutStyle != 2)
  {
    result = 22.0;
    if (currentLayoutStyle != 3)
    {
      return result;
    }

    v9 = v6 <= 402.0 && count > 5;
    result = 16.0;
    v10 = 8.0;
    goto LABEL_9;
  }

  if (count < 6)
  {
    return 14.0;
  }

  result = 6.0;
  if (v6 > 375.0)
  {
    result = 8.0;
    if (v6 > 393.0)
    {
      return 14.0;
    }
  }

  return result;
}

- (double)interToolSpacing
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 28.0;
  if (currentLayoutStyle == 1)
  {
    return 18.0;
  }

  return result;
}

- (PUPhotoEditToolPickerSpec)init
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditToolPickerSpec;
  v2 = [(PUViewControllerSpec *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_toolParentViewEdgeSpacing = 10.0;
    v2->_horizontalToolTopSpacing = 12.0;
    v2->_horizontalToolBottomSpacing = 0.0;
    v2->_dotSelectionIndicatorDistance = 0.0;
    v2->_dashSelectionIndicatorDistance = 5.0;
    v2->_toolButtonPointerInteractionHighlightPadding = 6.0;
    v4 = v2;
  }

  return v3;
}

@end