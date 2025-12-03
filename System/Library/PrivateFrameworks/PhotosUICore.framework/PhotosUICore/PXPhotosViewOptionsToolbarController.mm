@interface PXPhotosViewOptionsToolbarController
- (CGSize)secondaryToolbarControllerToolbarSize:(id)size;
- (PXPhotosViewOptionsToolbarController)initWithModel:(id)model containerView:(id)view;
- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding;
- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets;
- (void)_updateAccessoryViews;
- (void)_updateLensControl;
- (void)backdropGroupNameDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosLensControl:(id)control didSelectItem:(id)item;
- (void)photosLensControl:(id)control didTapOnAlreadySelectedItem:(id)item;
- (void)scrollViewControllerDidEndScrolling:(id)scrolling;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
@end

@implementation PXPhotosViewOptionsToolbarController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotosViewOptionsModelObserverContext == context)
  {
    v18 = observableCopy;
    if ((changeCopy & 8) != 0)
    {
      model = [(PXPhotosViewOptionsToolbarController *)self model];
      lensControlItems = [model lensControlItems];
      photosLensControl = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
      [photosLensControl setItems:lensControlItems];

      model2 = [(PXPhotosViewOptionsToolbarController *)self model];
      lensControlItems2 = [model2 lensControlItems];
      photosLensControl2 = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
      [photosLensControl2 setEnabledItems:lensControlItems2];

      observableCopy = v18;
    }

    if ((changeCopy & 4) != 0)
    {
      model3 = [(PXPhotosViewOptionsToolbarController *)self model];
      selectedLensControlItem = [model3 selectedLensControlItem];
      photosLensControl3 = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
      [photosLensControl3 setSelectedItem:selectedLensControlItem];

      observableCopy = v18;
    }
  }
}

- (CGSize)secondaryToolbarControllerToolbarSize:(id)size
{
  contentView = [(PXSecondaryToolbarController *)self contentView];
  [contentView sizeThatFits:{320.0, 200.0}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)secondaryToolbarControllerScrollableContentPadding:(id)padding
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

- (UIEdgeInsets)secondaryToolbarControllerToolbarContentInsets:(id)insets
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

- (void)scrollViewControllerDidEndScrolling:(id)scrolling
{
  userScrollVelocityFilter = self->_userScrollVelocityFilter;
  self->_userScrollVelocityFilter = 0;
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  self->_isScrolledAtBottom = [scrollCopy isScrolledAtEdge:3 tolerance:100.0];
  userScrollVelocityFilter = self->_userScrollVelocityFilter;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PXPhotosViewOptionsToolbarController_scrollViewControllerDidScroll___block_invoke;
  v7[3] = &unk_1E7733D80;
  v8 = scrollCopy;
  v6 = scrollCopy;
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

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  gestureVelocityFilter = [off_1E7721958 gestureVelocityFilter];
  userScrollVelocityFilter = self->_userScrollVelocityFilter;
  self->_userScrollVelocityFilter = gestureVelocityFilter;
}

- (void)photosLensControl:(id)control didTapOnAlreadySelectedItem:(id)item
{
  v5 = [(PXSecondaryToolbarController *)self actionHandler:control];
  [v5 secondaryToolbarController:self scrollToBottomAnimated:1];
}

- (void)photosLensControl:(id)control didSelectItem:(id)item
{
  itemCopy = item;
  v6 = +[PXLemonadeSettings sharedInstance];
  yearsAndMonthsMode = [v6 yearsAndMonthsMode];

  if (yearsAndMonthsMode)
  {
    model = [(PXPhotosViewOptionsToolbarController *)self model];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PXPhotosViewOptionsToolbarController_photosLensControl_didSelectItem___block_invoke;
    v16[3] = &unk_1E7749528;
    v17 = itemCopy;
    [model performChanges:v16];
  }

  else
  {
    identifier = [itemCopy identifier];
    v10 = identifier;
    if (identifier == @"years" || (v11 = -[__CFString isEqual:](identifier, "isEqual:", @"years"), v10, (v11 & 1) != 0) || ([itemCopy identifier], v12 = objc_claimAutoreleasedReturnValue(), v12 == @"months"))
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
    leadingAccessoryView = [(PXSecondaryToolbarController *)self leadingAccessoryView];
    [leadingAccessoryView alpha];
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

      leadingAccessoryView2 = [(PXSecondaryToolbarController *)self leadingAccessoryView];
      trailingAccessoryView = [(PXSecondaryToolbarController *)self trailingAccessoryView];
      v16 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61__PXPhotosViewOptionsToolbarController__updateAccessoryViews__block_invoke;
      v23[3] = &unk_1E7749FF8;
      v24 = leadingAccessoryView2;
      v26 = v13;
      v25 = trailingAccessoryView;
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
  model = [(PXPhotosViewOptionsToolbarController *)self model];
  photosLensControl = [(PXPhotosViewOptionsToolbarController *)self photosLensControl];
  backdropGroupName = [(PXSecondaryToolbarController *)self backdropGroupName];
  [photosLensControl setBackdropGroupName:backdropGroupName];

  lensControlItems = [model lensControlItems];
  [photosLensControl setItems:lensControlItems];

  lensControlItems2 = [model lensControlItems];
  [photosLensControl setEnabledItems:lensControlItems2];

  selectedLensControlItem = [model selectedLensControlItem];
  [photosLensControl setSelectedItem:selectedLensControlItem];
}

- (void)backdropGroupNameDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosViewOptionsToolbarController;
  [(PXSecondaryToolbarController *)&v3 backdropGroupNameDidChange];
  [(PXPhotosViewOptionsToolbarController *)self _updateLensControl];
}

- (PXPhotosViewOptionsToolbarController)initWithModel:(id)model containerView:(id)view
{
  modelCopy = model;
  viewCopy = view;
  v10 = viewCopy;
  if (modelCopy)
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewOptionsToolbarController.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"model"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosViewOptionsToolbarController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"containerView"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PXPhotosViewOptionsToolbarController;
  v11 = [(PXSecondaryToolbarController *)&v19 initWithContainerView:v10 styleGuideProvider:self];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_model, model);
    [(PXPhotosViewOptionsModel *)v12->_model registerChangeObserver:v12 context:&PXPhotosViewOptionsModelObserverContext];
    v13 = objc_alloc_init(off_1E7721820);
    photosLensControl = v12->_photosLensControl;
    v12->_photosLensControl = v13;

    secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    [(PXPhotosLensControl *)v12->_photosLensControl setContentBackgroundColor:secondarySystemFillColor];

    [(PXPhotosLensControl *)v12->_photosLensControl setDelegate:v12];
    v12->_shouldHideAccessoryViewsOnScroll = 1;
    [(PXPhotosViewOptionsToolbarController *)v12 _updateLensControl];
    [(PXSecondaryToolbarController *)v12 setContentView:v12->_photosLensControl];
  }

  return v12;
}

@end