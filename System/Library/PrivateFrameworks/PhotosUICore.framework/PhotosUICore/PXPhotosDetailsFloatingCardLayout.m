@interface PXPhotosDetailsFloatingCardLayout
- (BOOL)canDrag;
- (CGRect)_containerBounds;
- (PXPhotosDetailsFloatingCardLayout)initWithPhotosDetailsUIViewController:(id)a3 widgetComposition:(id)a4;
- (UIEdgeInsets)insets;
- (double)initialHeight;
- (unint64_t)initialPosition;
- (void)_configureForPhotosDetailsViewController:(id)a3 composition:(id)a4;
- (void)didUpdateCardHeight:(double)a3;
- (void)didUpdateCardPosition:(unint64_t)a3;
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

- (void)didUpdateCardPosition:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v3 = [off_1E7721948 standardUserDefaults];
  [v3 setInfoPanelLastSnappedPosition:v4];
}

- (void)didUpdateCardHeight:(double)a3
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PXPhotosDetailsFloatingCardLayout *)self identifiersForHeight];
  v5 = [v4 objectForKeyedSubscript:v7];

  if (v5)
  {
    v6 = [off_1E7721948 standardUserDefaults];
    [v6 setInfoPanelLastSnappedWidgetIdentifier:v5];
  }
}

- (void)_configureForPhotosDetailsViewController:(id)a3 composition:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 contentEdgeInsets];
  v7 = [v6 spec];
  [v7 widgetSpec];
  objc_claimAutoreleasedReturnValue();

  v8 = [v5 view];
  [v8 bounds];

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
  v2 = [off_1E7721948 standardUserDefaults];
  v3 = [v2 infoPanelLastSnappedPosition];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (BOOL)canDrag
{
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  v3 = [v2 draggableInfoPanelEnabled];

  return v3;
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
  v3 = [(PXPhotosDetailsFloatingCardLayout *)self snappableHeights];
  v4 = [v3 count];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [off_1E7721948 standardUserDefaults];
  v6 = [v5 infoPanelLastSnappedWidgetIdentifier];

  if (v6 && (-[PXPhotosDetailsFloatingCardLayout heightsForIdentifier](self, "heightsForIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v8 = [(PXPhotosDetailsFloatingCardLayout *)self snappableHeights];
    v11 = [v8 lastObject];
    [v11 floatValue];
    v10 = v12;
  }

  v13 = v10;
  return v13;
}

- (PXPhotosDetailsFloatingCardLayout)initWithPhotosDetailsUIViewController:(id)a3 widgetComposition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PXPhotosDetailsFloatingCardLayout;
  v8 = [(PXPhotosDetailsFloatingCardLayout *)&v17 init];
  if (v8)
  {
    v9 = [v6 view];
    v10 = [v9 superview];
    v11 = [v10 safeAreaLayoutGuide];
    [v11 layoutFrame];
    v8->__containerBounds.origin.x = v12;
    v8->__containerBounds.origin.y = v13;
    v8->__containerBounds.size.width = v14;
    v8->__containerBounds.size.height = v15;

    [(PXPhotosDetailsFloatingCardLayout *)v8 _configureForPhotosDetailsViewController:v6 composition:v7];
  }

  return v8;
}

@end