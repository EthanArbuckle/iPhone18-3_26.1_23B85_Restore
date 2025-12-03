@interface PUCommentsViewController
+ (BOOL)canShowCommentsForAsset:(id)asset;
- (BOOL)contentAreaContainsPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (CGRect)contentBoundsInCoordinateSpace:(id)space;
- (CGSize)minimumContentSize;
- (CGSize)preferredContentSize;
- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate;
- (PUCommentsViewController)initWithAssetViewModel:(id)model;
- (PUCommentsViewController)initWithCoder:(id)coder;
- (PUCommentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)contentInsets;
- (void)_updateTableDataController;
- (void)commentsTableDataController:(id)controller didChangeEditing:(BOOL)editing;
- (void)commentsTableDataController:(id)controller tableViewDidScroll:(id)scroll;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setContentInsets:(UIEdgeInsets)insets changeReason:(int64_t)reason;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUCommentsViewController

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryContentViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUExtendedTraitCollectionObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:206 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    v11 = observableCopy;
    [(PUCommentsViewController *)self _updateTableDataController];
    observableCopy = v11;
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  if ([change isInEditModeChanged])
  {

    [(PUCommentsViewController *)self _updateTableDataController];
  }
}

- (CGSize)minimumContentSize
{
  v2 = *MEMORY[0x1E695F060];
  _tableDataController = [(PUCommentsViewController *)self _tableDataController];
  [_tableDataController minimumHeight];
  v5 = v4;

  v6 = v2;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)contentBoundsInCoordinateSpace:(id)space
{
  spaceCopy = space;
  _tableView = [(PUCommentsViewController *)self _tableView];
  [_tableView bounds];
  v7 = v6;
  v9 = v8;
  [_tableView contentOffset];
  v11 = v7 - v10;
  v13 = v9 - v12;
  [_tableView contentSize];
  [_tableView convertRect:spaceCopy toCoordinateSpace:{v11, v13, v14, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v24 = round(*&PUMainScreenScale_screenScale * v21) / *&PUMainScreenScale_screenScale;
  v25 = round(*&PUMainScreenScale_screenScale * v23) / *&PUMainScreenScale_screenScale;

  v26 = v17;
  v27 = v19;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)contentAreaContainsPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  view = [(PUCommentsViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [view convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v18 = v17;
  v20 = v19;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v22.x = v18;
  v22.y = v20;
  LOBYTE(spaceCopy) = CGRectContainsPoint(v23, v22);

  return spaceCopy;
}

- (void)setContentInsets:(UIEdgeInsets)insets changeReason:(int64_t)reason
{
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_contentInsets.top), vceqq_f64(v5, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    right = insets.right;
    top = insets.top;
    left = insets.left;
    bottom = insets.bottom;
    _tableView = [(PUCommentsViewController *)self _tableView];
    [_tableView setContentInset:{top, left, bottom, right}];
    if ((reason & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = MEMORY[0x1E69DD250];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __58__PUCommentsViewController_setContentInsets_changeReason___block_invoke;
      v17[3] = &unk_1E7B80DD0;
      v18 = _tableView;
      [v9 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v17 options:0 animations:0.0 completion:0.0];
      accessoryContentViewControllerDelegate = [(PUCommentsViewController *)self accessoryContentViewControllerDelegate];
      [accessoryContentViewControllerDelegate accessoryContentViewControllerContentBoundsDidChange:self];
    }

    else
    {
      _needsUpdateTableViewScrollPosition = [(PUCommentsViewController *)self _needsUpdateTableViewScrollPosition];
      if (reason == 1 || _needsUpdateTableViewScrollPosition)
      {
        [(PUCommentsViewController *)self _setNeedsUpdateTableViewScrollPosition:0];
        [_tableView setContentOffset:{0.0, -top}];
        accessoryContentViewControllerDelegate2 = [(PUCommentsViewController *)self accessoryContentViewControllerDelegate];
        [accessoryContentViewControllerDelegate2 accessoryContentViewControllerContentBoundsDidChange:self];
      }
    }
  }
}

- (void)commentsTableDataController:(id)controller tableViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (([scrollCopy isDragging] & 1) != 0 || objc_msgSend(scrollCopy, "isDecelerating"))
  {
    accessoryContentViewControllerDelegate = [(PUCommentsViewController *)self accessoryContentViewControllerDelegate];
    [accessoryContentViewControllerDelegate accessoryContentViewControllerContentBoundsDidChange:self];
  }
}

- (void)commentsTableDataController:(id)controller didChangeEditing:(BOOL)editing
{
  assetViewModel = [(PUCommentsViewController *)self assetViewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PUCommentsViewController_commentsTableDataController_didChangeEditing___block_invoke;
  v7[3] = &unk_1E7B7FF98;
  editingCopy = editing;
  v8 = assetViewModel;
  v6 = assetViewModel;
  [v6 performChanges:v7];
}

- (void)_updateTableDataController
{
  px_extendedTraitCollection = [(PUCommentsViewController *)self px_extendedTraitCollection];
  v4 = [px_extendedTraitCollection layoutSizeClass] == 2;

  assetViewModel = [(PUCommentsViewController *)self assetViewModel];
  isInEditMode = [assetViewModel isInEditMode];

  _tableDataController = [(PUCommentsViewController *)self _tableDataController];
  [_tableDataController setShouldUseCompactCommentSeparators:v4];
  [_tableDataController setEditing:isInEditMode];
}

- (CGSize)preferredContentSize
{
  if ([(PUCommentsViewController *)self isViewLoaded])
  {
    view = [(PUCommentsViewController *)self view];
    [(PUCommentsViewController *)self contentBoundsInCoordinateSpace:view];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    *&v7 = 100.0;
  }

  v8 = v5;
  v9 = *&v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUCommentsViewController;
  [(PUCommentsViewController *)&v4 viewDidDisappear:disappear];
  [(PUCommentsViewController *)self _setNeedsUpdateTableViewScrollPosition:1];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PUCommentsViewController;
  [(PUCommentsViewController *)&v14 viewDidLoad];
  view = [(PUCommentsViewController *)self view];
  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  [view bounds];
  v6 = [v5 initWithFrame:0 style:?];
  tableView = self->__tableView;
  self->__tableView = v6;

  [(UITableView *)self->__tableView setBackgroundView:0];
  [(UITableView *)self->__tableView setBackgroundColor:0];
  [(UITableView *)self->__tableView setClipsToBounds:1];
  [(UITableView *)self->__tableView setSeparatorStyle:0];
  [(UITableView *)self->__tableView _setAutomaticContentOffsetAdjustmentEnabled:0];
  [(UITableView *)self->__tableView setContentInsetAdjustmentBehavior:2];
  [(UITableView *)self->__tableView _setIndicatorInsetAdjustmentBehavior:1];
  [(UITableView *)self->__tableView setAutoresizingMask:18];
  [view addSubview:self->__tableView];
  assetViewModel = [(PUCommentsViewController *)self assetViewModel];
  asset = [assetViewModel asset];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:77 description:@"Comments can only be displayed for PHAsset"];
  }

  v10 = [[PUCommentsTableDataController alloc] initWithTableView:self->__tableView];
  tableDataController = self->__tableDataController;
  self->__tableDataController = v10;

  [(PUCommentsTableDataController *)self->__tableDataController setAsset:asset];
  [(PUCommentsTableDataController *)self->__tableDataController setDelegate:self];
  [(PUCommentsViewController *)self _updateTableDataController];
  parentViewController = [(PUCommentsViewController *)self parentViewController];
  [parentViewController preferredContentSizeDidChangeForChildContentContainer:self];

  [(PUCommentsViewController *)self _setNeedsUpdateTableViewScrollPosition:1];
}

- (PUCommentsViewController)initWithAssetViewModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = PUCommentsViewController;
  v6 = [(PUCommentsViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(PUCommentsViewController *)v6 px_enableExtendedTraitCollection];
    px_extendedTraitCollection = [(PUCommentsViewController *)v7 px_extendedTraitCollection];
    [px_extendedTraitCollection registerChangeObserver:v7 context:PUExtendedTraitCollectionObservationContext];

    objc_storeStrong(&v7->_assetViewModel, model);
    [(PUAssetViewModel *)v7->_assetViewModel registerChangeObserver:v7];
  }

  return v7;
}

- (PUCommentsViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PUCommentsViewController initWithCoder:]"}];

  abort();
}

- (PUCommentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PUCommentsViewController initWithNibName:bundle:]"}];

  abort();
}

+ (BOOL)canShowCommentsForAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    px_isSharedAlbumAsset = [assetCopy px_isSharedAlbumAsset];
  }

  else
  {
    px_isSharedAlbumAsset = 0;
  }

  return px_isSharedAlbumAsset;
}

@end