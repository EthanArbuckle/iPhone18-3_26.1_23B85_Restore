@interface PXPhotosViewOptionsToolbarController
- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3;
- (PXPhotosViewOptionsToolbarController)initWithModel:(id)a3 containerView:(id)a4;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3;
- (void)_updateAccessoryViews;
- (void)_updateLensControl;
- (void)backdropGroupNameDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosLensControl:(id)a3 didSelectItem:(id)a4;
- (void)photosLensControl:(id)a3 didTapOnAlreadySelectedItem:(id)a4;
- (void)scrollViewControllerDidEndScrolling:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
@end

@implementation PXPhotosViewOptionsToolbarController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXPhotosViewOptionsModelObserverContext == a5)
  {
    v18 = v8;
    if ((v6 & 8) != 0)
    {
      v9 = [(PXPhotosViewOptionsToolbarController *)self model];
      v10 = [v9 lensControlItems];
      v11 = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
      [v11 setItems:v10];

      v12 = [(PXPhotosViewOptionsToolbarController *)self model];
      v13 = [v12 lensControlItems];
      v14 = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
      [v14 setEnabledItems:v13];

      v8 = v18;
    }

    if ((v6 & 4) != 0)
    {
      v15 = [(PXPhotosViewOptionsToolbarController *)self model];
      v16 = [v15 selectedLensControlItem];
      v17 = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
      [v17 setSelectedItem:v16];

      v8 = v18;
    }
  }
}

- (CGSize)secondaryToolbarControllerToolbarSize:(id)a3
{
  v3 = [(PXSecondaryToolbarController *)self contentView];
  [v3 sizeThatFits:{320.0, 200.0}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)a3
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)a3
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)scrollViewControllerDidEndScrolling:(id)a3
{
  userScrollVelocityFilter = self->_userScrollVelocityFilter;
  self->_userScrollVelocityFilter = 0;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v4 = a3;
  self->_isScrolledAtBottom = [v4 isScrolledAtEdge:3 tolerance:100.0];
  userScrollVelocityFilter = self->_userScrollVelocityFilter;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PXPhotosViewOptionsToolbarController_scrollViewControllerDidScroll___block_invoke;
  v7[3] = &unk_1E7733D80;
  v8 = v4;
  v6 = v4;
  [(PXVelocityNumberFilter *)userScrollVelocityFilter performChanges:v7];
  [(PXPhotosViewOptionsToolbarController *)self _updateAccessoryViews];
}

void __70__PXPhotosViewOptionsToolbarController_scrollViewControllerDidScroll___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 visibleRect];
  [v3 setInput:CGRectGetMidY(v5)];
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  v4 = [off_1E7721958 gestureVelocityFilter];
  userScrollVelocityFilter = self->_userScrollVelocityFilter;
  self->_userScrollVelocityFilter = v4;
}

- (void)photosLensControl:(id)a3 didTapOnAlreadySelectedItem:(id)a4
{
  v5 = [(PXSecondaryToolbarController *)self actionHandler:a3];
  [v5 secondaryToolbarController:self scrollToBottomAnimated:1];
}

- (void)photosLensControl:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  v6 = +[PXLemonadeSettings sharedInstance];
  v7 = [v6 yearsAndMonthsMode];

  if (v7)
  {
    v8 = [(PXPhotosViewOptionsToolbarController *)self model];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PXPhotosViewOptionsToolbarController_photosLensControl_didSelectItem___block_invoke;
    v16[3] = &unk_1E7749528;
    v17 = v5;
    [v8 performChanges:v16];
  }

  else
  {
    v9 = [v5 identifier];
    v10 = v9;
    if (v9 == @"years" || (v11 = -[__CFString isEqual:](v9, "isEqual:", @"years"), v10, (v11 & 1) != 0) || ([v5 identifier], v12 = objc_claimAutoreleasedReturnValue(), v12 == @"months"))
    {
    }

    else
    {
      v13 = v12;
      v14 = [(__CFString *)v12 isEqual:@"months"];

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v15 = [off_1E7721438 show:&__block_literal_global_60933];
  }

LABEL_10:
}

- (void)_updateAccessoryViews
{
  v3 = +[PXKitSettings sharedInstance];
  [(PXVelocityNumberFilter *)self->_userScrollVelocityFilter output];
  v5 = v4;
  v6 = -v4;
  if (v5 >= 0.0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  [v3 smallestSignificantScrollVelocity];
  if (v7 > v8 || self->_isScrolledAtBottom)
  {
    v9 = v5 < 0.0 && !self->_isScrolledAtBottom && [(PXPhotosViewOptionsToolbarController *)self shouldHideAccessoryViewsOnScroll];
    v10 = [(PXSecondaryToolbarController *)self leadingAccessoryView];
    [v10 alpha];
    v12 = v11;

    if (((v9 ^ (v12 >= 0.001)) & 1) == 0)
    {
      if (v9)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      v14 = [(PXSecondaryToolbarController *)self leadingAccessoryView];
      v15 = [(PXSecondaryToolbarController *)self trailingAccessoryView];
      v16 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61__PXPhotosViewOptionsToolbarController__updateAccessoryViews__block_invoke;
      v23[3] = &unk_1E7749FF8;
      v24 = v14;
      v26 = v13;
      v25 = v15;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__PXPhotosViewOptionsToolbarController__updateAccessoryViews__block_invoke_2;
      v19[3] = &unk_1E7733B38;
      v22 = v9;
      v20 = v24;
      v21 = v25;
      v17 = v25;
      v18 = v24;
      [v16 animateWithDuration:v23 animations:v19 completion:0.2];
    }
  }
}

uint64_t __61__PXPhotosViewOptionsToolbarController__updateAccessoryViews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);

  return [v3 setAlpha:v2];
}

uint64_t __61__PXPhotosViewOptionsToolbarController__updateAccessoryViews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:(*(a1 + 48) & 1) == 0];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 48) & 1) == 0;

  return [v2 setUserInteractionEnabled:v3];
}

- (void)_updateLensControl
{
  v8 = [(PXPhotosViewOptionsToolbarController *)self model];
  v3 = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
  v4 = [(PXSecondaryToolbarController *)self backdropGroupName];
  [v3 setBackdropGroupName:v4];

  v5 = [v8 lensControlItems];
  [v3 setItems:v5];

  v6 = [v8 lensControlItems];
  [v3 setEnabledItems:v6];

  v7 = [v8 selectedLensControlItem];
  [v3 setSelectedItem:v7];
}

- (void)backdropGroupNameDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosViewOptionsToolbarController;
  [(PXSecondaryToolbarController *)&v3 backdropGroupNameDidChange];
  [(PXPhotosViewOptionsToolbarController *)self _updateLensControl];
}

- (PXPhotosViewOptionsToolbarController)initWithModel:(id)a3 containerView:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosViewOptionsToolbarController.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"model"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PXPhotosViewOptionsToolbarController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"containerView"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PXPhotosViewOptionsToolbarController;
  v11 = [(PXSecondaryToolbarController *)&v19 initWithContainerView:v10 styleGuideProvider:self];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_model, a3);
    [(PXPhotosViewOptionsModel *)v12->_model registerChangeObserver:v12 context:&PXPhotosViewOptionsModelObserverContext];
    v13 = objc_alloc_init(off_1E7721820);
    photosLensControl = v12->_photosLensControl;
    v12->_photosLensControl = v13;

    v15 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    [(PXPhotosLensControl *)v12->_photosLensControl setContentBackgroundColor:v15];

    [(PXPhotosLensControl *)v12->_photosLensControl setDelegate:v12];
    v12->_shouldHideAccessoryViewsOnScroll = 1;
    [(PXPhotosViewOptionsToolbarController *)v12 _updateLensControl];
    [(PXSecondaryToolbarController *)v12 setContentView:v12->_photosLensControl];
  }

  return v12;
}

@end