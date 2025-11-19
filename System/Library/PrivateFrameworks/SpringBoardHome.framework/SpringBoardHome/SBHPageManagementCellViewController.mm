@interface SBHPageManagementCellViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)scalesListView;
- (BOOL)wantsCaptureOnlyBackgroundView;
- (CGPoint)snapshotViewCenter;
- (CGRect)visibleBounds;
- (SBHPageManagementCellViewController)initWithListView:(id)a3 folder:(id)a4 metrics:(SBHPageManagementCellMetrics *)a5 toggleButtonAllowed:(BOOL)a6;
- (SBHPageManagementCellViewControllerDelegate)delegate;
- (UIBezierPath)snapshotViewVisiblePath;
- (UIView)listContainerView;
- (UIView)snapshotView;
- (double)toggleButtonAlpha;
- (id)listHighlightView;
- (void)cancelGestures;
- (void)cleanUpListView;
- (void)listViewTapped:(id)a3;
- (void)loadView;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setListHighlighted:(BOOL)a3;
- (void)setScalesListView:(BOOL)a3;
- (void)setToggleButtonAlpha:(double)a3;
@end

@implementation SBHPageManagementCellViewController

- (SBHPageManagementCellViewController)initWithListView:(id)a3 folder:(id)a4 metrics:(SBHPageManagementCellMetrics *)a5 toggleButtonAllowed:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v24.receiver = self;
  v24.super_class = SBHPageManagementCellViewController;
  v13 = [(SBHPageManagementCellViewController *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_listView, a3);
    objc_storeStrong(&v14->_folder, a4);
    v15 = *&a5->foregroundInsets.bottom;
    fullListViewSize = a5->fullListViewSize;
    scaledListViewSize = a5->scaledListViewSize;
    *&v14->_metrics.foregroundInsets.top = *&a5->foregroundInsets.top;
    *&v14->_metrics.foregroundInsets.bottom = v15;
    v14->_metrics.fullListViewSize = fullListViewSize;
    v14->_metrics.scaledListViewSize = scaledListViewSize;
    v19 = *&a5->backgroundInsets.bottom;
    v18 = *&a5->listViewVerticalPositionAdjustment;
    v20 = *&a5->backgroundInsets.top;
    v14->_metrics.toggleButtonVerticalMargin = a5->toggleButtonVerticalMargin;
    *&v14->_metrics.backgroundInsets.bottom = v19;
    *&v14->_metrics.listViewVerticalPositionAdjustment = v18;
    *&v14->_metrics.backgroundInsets.top = v20;
    v14->_toggleButtonAllowed = a6;
    v21 = [[SBHPageManagementListTapGestureRecognizer alloc] initWithTarget:v14 action:sel_listViewTapped_];
    tapGestureRecognizer = v14->_tapGestureRecognizer;
    v14->_tapGestureRecognizer = &v21->super;

    [(UIGestureRecognizer *)v14->_tapGestureRecognizer setDelegate:v14];
  }

  return v14;
}

- (void)loadView
{
  v3 = [(SBHPageManagementCellViewController *)self listView];
  v4 = [SBHPageManagementCellView alloc];
  v5 = [(SBHPageManagementCellViewController *)self folder];
  toggleButtonAllowed = self->_toggleButtonAllowed;
  v7 = *&self->_metrics.backgroundInsets.bottom;
  v11[4] = *&self->_metrics.backgroundInsets.top;
  v11[5] = v7;
  v11[6] = *&self->_metrics.listViewVerticalPositionAdjustment;
  toggleButtonVerticalMargin = self->_metrics.toggleButtonVerticalMargin;
  scaledListViewSize = self->_metrics.scaledListViewSize;
  v11[0] = self->_metrics.fullListViewSize;
  v11[1] = scaledListViewSize;
  v9 = *&self->_metrics.foregroundInsets.bottom;
  v11[2] = *&self->_metrics.foregroundInsets.top;
  v11[3] = v9;
  v10 = [(SBHPageManagementCellView *)v4 initWithListView:v3 folder:v5 metrics:v11 toggleButtonAllowed:toggleButtonAllowed];

  [v3 addGestureRecognizer:self->_tapGestureRecognizer];
  [(SBHPageManagementCellViewController *)self setView:v10];
}

- (UIView)listContainerView
{
  v2 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v3 = [v2 listContainerView];

  return v3;
}

- (void)listViewTapped:(id)a3
{
  v22 = a3;
  v4 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v5 = [v4 listContainerView];

  [v22 locationInView:v5];
  v7 = v6;
  v9 = v8;
  [v5 bounds];
  v24.x = v7;
  v24.y = v9;
  v10 = CGRectContainsPoint(v25, v24);
  v11 = [(SBHPageManagementCellViewController *)self delegate];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 pageManagementCellViewControllerCanReceiveTap:self];
  }

  else
  {
    v13 = 1;
  }

  v14 = [v22 state];
  if ((v14 - 1) < 2)
  {
    if (v12)
    {
      v17 = [v12 pageManagementCellViewControllerShouldSuppressHighlight:self] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    v21 = v13 & v17;
    if (v10)
    {
      v16 = v21;
    }

    else
    {
      v16 = 0;
    }

    v15 = self;
    goto LABEL_19;
  }

  if ((v14 - 4) < 2)
  {
    v15 = self;
    v16 = 0;
LABEL_19:
    [(SBHPageManagementCellViewController *)v15 setListHighlighted:v16];
    goto LABEL_20;
  }

  if (v14 == 3)
  {
    [(SBHPageManagementCellViewController *)self setListHighlighted:0];
    v18 = [(SBHPageManagementCellViewController *)self listView];
    v19 = [v18 model];
    v20 = [v19 isHidden];
    if ((v10 & v13) == 1 && (v20 & 1) == 0)
    {
      [v12 pageManagementCellViewControllerDidReceiveTap:self];
    }
  }

LABEL_20:
}

- (BOOL)scalesListView
{
  v2 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v3 = [v2 scalesListView];

  return v3;
}

- (void)setScalesListView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [v4 setScalesListView:v3];
}

- (double)toggleButtonAlpha
{
  v2 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [v2 toggleButtonAlpha];
  v4 = v3;

  return v4;
}

- (void)setToggleButtonAlpha:(double)a3
{
  v4 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [v4 setToggleButtonAlpha:a3];
}

- (id)listHighlightView
{
  v2 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v3 = [v2 listHighlightView];

  return v3;
}

- (void)setListHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [v4 setListHighlighted:v3];
}

- (void)cancelGestures
{
  v4 = [(SBHPageManagementCellViewController *)self tapGestureRecognizer];
  [v4 setEnabled:0];
  [v4 setEnabled:1];
  v3 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [v3 setListHighlighted:0];
}

- (void)cleanUpListView
{
  [(SBIconListView *)self->_listView removeGestureRecognizer:self->_tapGestureRecognizer];
  v3 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [v3 cleanUpListView];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(v3, v4, v5, v6, self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    v13 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
    [v13 setIconImageInfo:{v10, v9, v8, v7}];
  }
}

- (CGRect)visibleBounds
{
  v2 = [(SBHPageManagementCellViewController *)self view];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIView)snapshotView
{
  v3 = [(SBHPageManagementCellViewController *)self delegate];
  [(SBHPageManagementCellViewController *)self iconImageInfo];
  v5 = v4;
  v6 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v7 = [v6 listContainerView];

  v8 = objc_alloc(MEMORY[0x1E69DD250]);
  [v7 frame];
  v9 = [v8 initWithFrame:{0.0, 0.0}];
  [v9 _setContinuousCornerRadius:v5];
  v10 = [v3 backgroundViewForSnapshotForPageManagementCellViewController:self];
  [v9 bounds];
  [v10 setFrame:?];
  [v10 _setContinuousCornerRadius:v5];
  [v9 addSubview:v10];
  v11 = [(SBIconListView *)self->_listView snapshotView];
  listView = self->_listView;
  if (listView)
  {
    [(SBIconListView *)listView transform];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  [v11 setTransform:v14];
  [(SBIconListView *)self->_listView center];
  [v11 setCenter:?];
  [v9 addSubview:v11];

  return v9;
}

- (CGPoint)snapshotViewCenter
{
  v2 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v3 = [v2 listContainerView];

  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (UIBezierPath)snapshotViewVisiblePath
{
  v3 = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  v4 = [v3 listContainerView];

  [(SBHPageManagementCellViewController *)self iconImageInfo];
  [v4 frame];
  v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:? cornerRadius:?];

  return v5;
}

- (BOOL)wantsCaptureOnlyBackgroundView
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(SBHPageManagementCellViewController *)self listView];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__SBHPageManagementCellViewController_wantsCaptureOnlyBackgroundView__block_invoke;
  v4[3] = &unk_1E808C778;
  v4[4] = &v5;
  [v2 enumerateIconViewsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __69__SBHPageManagementCellViewController_wantsCaptureOnlyBackgroundView__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 backgroundViewGroupNameBase];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(SBHPageManagementCellViewController *)self tapGestureRecognizer];

  return v6 == v5;
}

- (SBHPageManagementCellViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end