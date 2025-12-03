@interface PXPhotosDetailsFloatingCardLayout
- (BOOL)canDrag;
- (CGRect)_containerBounds;
- (PXPhotosDetailsFloatingCardLayout)initWithPhotosDetailsUIViewController:(id)controller widgetComposition:(id)composition;
- (UIEdgeInsets)insets;
- (double)initialHeight;
- (unint64_t)initialPosition;
- (void)_configureForPhotosDetailsViewController:(id)controller composition:(id)composition;
- (void)didUpdateCardHeight:(double)height;
- (void)didUpdateCardPosition:(unint64_t)position;
@end

@implementation PXPhotosDetailsFloatingCardLayout

- (CGRect)_containerBounds
{
  x = self->__containerBounds.origin.x;
  y = self->__containerBounds.origin.y;
  width = self->__containerBounds.size.width;
  height = self->__containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)didUpdateCardPosition:(unint64_t)position
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  [standardUserDefaults setInfoPanelLastSnappedPosition:v4];
}

- (void)didUpdateCardHeight:(double)height
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  identifiersForHeight = [(PXPhotosDetailsFloatingCardLayout *)self identifiersForHeight];
  v5 = [identifiersForHeight objectForKeyedSubscript:v7];

  if (v5)
  {
    standardUserDefaults = [off_1E7721948 standardUserDefaults];
    [standardUserDefaults setInfoPanelLastSnappedWidgetIdentifier:v5];
  }
}

- (void)_configureForPhotosDetailsViewController:(id)controller composition:(id)composition
{
  controllerCopy = controller;
  compositionCopy = composition;
  [controllerCopy contentEdgeInsets];
  spec = [compositionCopy spec];
  [spec widgetSpec];
  objc_claimAutoreleasedReturnValue();

  view = [controllerCopy view];
  [view bounds];

  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  PXEdgeInsetsIsNull();
}

void __90__PXPhotosDetailsFloatingCardLayout__configureForPhotosDetailsViewController_composition___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v20 preferredContentHeightForWidth:*(a1 + 80)];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v20 contentTilingController];
      v6 = [v5 currentLayout];
      v7 = [v5 targetLayout];
      v8 = v7;
      if (!v7)
      {
        v7 = v6;
      }

      [v7 contentBounds];
      v4 = v9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v20 snappableWidgetIdentifier];
  }

  else
  {
    v10 = 0;
  }

  if (v4 > 0.0)
  {
    *(*(*(a1 + 72) + 8) + 24) = v4 + *(*(*(a1 + 72) + 8) + 24);
    v11 = [*(a1 + 32) widgets];
    v12 = [v11 firstObject];

    v13 = [*(a1 + 32) widgets];
    v14 = [v13 lastObject];

    v15 = v20;
    if (v12 == v20)
    {
      [*(a1 + 40) distanceBetweenTopAndHeaderlessWidgetContentTop];
      v15 = v20;
      *(*(*(a1 + 72) + 8) + 24) = v16 + *(*(*(a1 + 72) + 8) + 24);
    }

    v17 = *(a1 + 40);
    if (v14 == v15)
    {
      [v17 distanceBetweenFooterlessWidgetContentBottomAndBottom];
    }

    else
    {
      [v17 distanceBetweenFooterlessWidgetContentBottomAndNextHeaderlessWidgetContentTop];
    }

    *(*(*(a1 + 72) + 8) + 24) = v18 + *(*(*(a1 + 72) + 8) + 24);
    if (v10)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 72) + 8) + 24)];
      [*(a1 + 48) addObject:v19];
      [*(a1 + 56) setObject:v10 forKeyedSubscript:v19];
      [*(a1 + 64) setObject:v19 forKeyedSubscript:v10];
    }
  }
}

- (unint64_t)initialPosition
{
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  infoPanelLastSnappedPosition = [standardUserDefaults infoPanelLastSnappedPosition];

  if (infoPanelLastSnappedPosition)
  {
    unsignedIntegerValue = [infoPanelLastSnappedPosition unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  return unsignedIntegerValue;
}

- (BOOL)canDrag
{
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  draggableInfoPanelEnabled = [v2 draggableInfoPanelEnabled];

  return draggableInfoPanelEnabled;
}

- (UIEdgeInsets)insets
{
  v2 = 46.0;
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)initialHeight
{
  snappableHeights = [(PXPhotosDetailsFloatingCardLayout *)self snappableHeights];
  v4 = [snappableHeights count];

  if (!v4)
  {
    return 0.0;
  }

  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  infoPanelLastSnappedWidgetIdentifier = [standardUserDefaults infoPanelLastSnappedWidgetIdentifier];

  if (infoPanelLastSnappedWidgetIdentifier && (-[PXPhotosDetailsFloatingCardLayout heightsForIdentifier](self, "heightsForIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:infoPanelLastSnappedWidgetIdentifier], snappableHeights2 = objc_claimAutoreleasedReturnValue(), v7, snappableHeights2))
  {
    [snappableHeights2 floatValue];
    v10 = v9;
  }

  else
  {
    snappableHeights2 = [(PXPhotosDetailsFloatingCardLayout *)self snappableHeights];
    lastObject = [snappableHeights2 lastObject];
    [lastObject floatValue];
    v10 = v12;
  }

  v13 = v10;
  return v13;
}

- (PXPhotosDetailsFloatingCardLayout)initWithPhotosDetailsUIViewController:(id)controller widgetComposition:(id)composition
{
  controllerCopy = controller;
  compositionCopy = composition;
  v17.receiver = self;
  v17.super_class = PXPhotosDetailsFloatingCardLayout;
  v8 = [(PXPhotosDetailsFloatingCardLayout *)&v17 init];
  if (v8)
  {
    view = [controllerCopy view];
    superview = [view superview];
    safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v8->__containerBounds.origin.x = v12;
    v8->__containerBounds.origin.y = v13;
    v8->__containerBounds.size.width = v14;
    v8->__containerBounds.size.height = v15;

    [(PXPhotosDetailsFloatingCardLayout *)v8 _configureForPhotosDetailsViewController:controllerCopy composition:compositionCopy];
  }

  return v8;
}

@end