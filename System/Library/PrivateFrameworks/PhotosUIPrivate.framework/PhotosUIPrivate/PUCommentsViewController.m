@interface PUCommentsViewController
+ (BOOL)canShowCommentsForAsset:(id)a3;
- (BOOL)contentAreaContainsPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (CGRect)contentBoundsInCoordinateSpace:(id)a3;
- (CGSize)minimumContentSize;
- (CGSize)preferredContentSize;
- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate;
- (PUCommentsViewController)initWithAssetViewModel:(id)a3;
- (PUCommentsViewController)initWithCoder:(id)a3;
- (PUCommentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)contentInsets;
- (void)_updateTableDataController;
- (void)commentsTableDataController:(id)a3 didChangeEditing:(BOOL)a4;
- (void)commentsTableDataController:(id)a3 tableViewDidScroll:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setContentInsets:(UIEdgeInsets)a3 changeReason:(int64_t)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUExtendedTraitCollectionObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:206 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 2) != 0)
  {
    v11 = v9;
    [(PUCommentsViewController *)self _updateTableDataController];
    v9 = v11;
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  if ([a4 isInEditModeChanged])
  {

    [(PUCommentsViewController *)self _updateTableDataController];
  }
}

- (CGSize)minimumContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = [(PUCommentsViewController *)self _tableDataController];
  [v3 minimumHeight];
  v5 = v4;

  v6 = v2;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)contentBoundsInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(PUCommentsViewController *)self _tableView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  [v5 contentOffset];
  v11 = v7 - v10;
  v13 = v9 - v12;
  [v5 contentSize];
  [v5 convertRect:v4 toCoordinateSpace:{v11, v13, v14, v15}];
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

- (BOOL)contentAreaContainsPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PUCommentsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v18 = v17;
  v20 = v19;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v22.x = v18;
  v22.y = v20;
  LOBYTE(v7) = CGRectContainsPoint(v23, v22);

  return v7;
}

- (void)setContentInsets:(UIEdgeInsets)a3 changeReason:(int64_t)a4
{
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_contentInsets.top), vceqq_f64(v5, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    right = a3.right;
    top = a3.top;
    left = a3.left;
    bottom = a3.bottom;
    v8 = [(PUCommentsViewController *)self _tableView];
    [v8 setContentInset:{top, left, bottom, right}];
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = MEMORY[0x1E69DD250];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __58__PUCommentsViewController_setContentInsets_changeReason___block_invoke;
      v17[3] = &unk_1E7B80DD0;
      v18 = v8;
      [v9 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v17 options:0 animations:0.0 completion:0.0];
      v10 = [(PUCommentsViewController *)self accessoryContentViewControllerDelegate];
      [v10 accessoryContentViewControllerContentBoundsDidChange:self];
    }

    else
    {
      v11 = [(PUCommentsViewController *)self _needsUpdateTableViewScrollPosition];
      if (a4 == 1 || v11)
      {
        [(PUCommentsViewController *)self _setNeedsUpdateTableViewScrollPosition:0];
        [v8 setContentOffset:{0.0, -top}];
        v12 = [(PUCommentsViewController *)self accessoryContentViewControllerDelegate];
        [v12 accessoryContentViewControllerContentBoundsDidChange:self];
      }
    }
  }
}

- (void)commentsTableDataController:(id)a3 tableViewDidScroll:(id)a4
{
  v6 = a4;
  if (([v6 isDragging] & 1) != 0 || objc_msgSend(v6, "isDecelerating"))
  {
    v5 = [(PUCommentsViewController *)self accessoryContentViewControllerDelegate];
    [v5 accessoryContentViewControllerContentBoundsDidChange:self];
  }
}

- (void)commentsTableDataController:(id)a3 didChangeEditing:(BOOL)a4
{
  v5 = [(PUCommentsViewController *)self assetViewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PUCommentsViewController_commentsTableDataController_didChangeEditing___block_invoke;
  v7[3] = &unk_1E7B7FF98;
  v9 = a4;
  v8 = v5;
  v6 = v5;
  [v6 performChanges:v7];
}

- (void)_updateTableDataController
{
  v3 = [(PUCommentsViewController *)self px_extendedTraitCollection];
  v4 = [v3 layoutSizeClass] == 2;

  v5 = [(PUCommentsViewController *)self assetViewModel];
  v6 = [v5 isInEditMode];

  v7 = [(PUCommentsViewController *)self _tableDataController];
  [v7 setShouldUseCompactCommentSeparators:v4];
  [v7 setEditing:v6];
}

- (CGSize)preferredContentSize
{
  if ([(PUCommentsViewController *)self isViewLoaded])
  {
    v3 = [(PUCommentsViewController *)self view];
    [(PUCommentsViewController *)self contentBoundsInCoordinateSpace:v3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUCommentsViewController;
  [(PUCommentsViewController *)&v4 viewDidDisappear:a3];
  [(PUCommentsViewController *)self _setNeedsUpdateTableViewScrollPosition:1];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PUCommentsViewController;
  [(PUCommentsViewController *)&v14 viewDidLoad];
  v4 = [(PUCommentsViewController *)self view];
  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  [v4 bounds];
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
  [v4 addSubview:self->__tableView];
  v8 = [(PUCommentsViewController *)self assetViewModel];
  v9 = [v8 asset];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:77 description:@"Comments can only be displayed for PHAsset"];
  }

  v10 = [[PUCommentsTableDataController alloc] initWithTableView:self->__tableView];
  tableDataController = self->__tableDataController;
  self->__tableDataController = v10;

  [(PUCommentsTableDataController *)self->__tableDataController setAsset:v9];
  [(PUCommentsTableDataController *)self->__tableDataController setDelegate:self];
  [(PUCommentsViewController *)self _updateTableDataController];
  v12 = [(PUCommentsViewController *)self parentViewController];
  [v12 preferredContentSizeDidChangeForChildContentContainer:self];

  [(PUCommentsViewController *)self _setNeedsUpdateTableViewScrollPosition:1];
}

- (PUCommentsViewController)initWithAssetViewModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PUCommentsViewController;
  v6 = [(PUCommentsViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(PUCommentsViewController *)v6 px_enableExtendedTraitCollection];
    v8 = [(PUCommentsViewController *)v7 px_extendedTraitCollection];
    [v8 registerChangeObserver:v7 context:PUExtendedTraitCollectionObservationContext];

    objc_storeStrong(&v7->_assetViewModel, a3);
    [(PUAssetViewModel *)v7->_assetViewModel registerChangeObserver:v7];
  }

  return v7;
}

- (PUCommentsViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PUCommentsViewController initWithCoder:]"}];

  abort();
}

- (PUCommentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUCommentsViewController.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PUCommentsViewController initWithNibName:bundle:]"}];

  abort();
}

+ (BOOL)canShowCommentsForAsset:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 px_isSharedAlbumAsset];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end