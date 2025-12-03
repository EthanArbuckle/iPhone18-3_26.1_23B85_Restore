@interface SBHPageManagementCellViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)scalesListView;
- (BOOL)wantsCaptureOnlyBackgroundView;
- (CGPoint)snapshotViewCenter;
- (CGRect)visibleBounds;
- (SBHPageManagementCellViewController)initWithListView:(id)view folder:(id)folder metrics:(SBHPageManagementCellMetrics *)metrics toggleButtonAllowed:(BOOL)allowed;
- (SBHPageManagementCellViewControllerDelegate)delegate;
- (UIBezierPath)snapshotViewVisiblePath;
- (UIView)listContainerView;
- (UIView)snapshotView;
- (double)toggleButtonAlpha;
- (id)listHighlightView;
- (void)cancelGestures;
- (void)cleanUpListView;
- (void)listViewTapped:(id)tapped;
- (void)loadView;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setListHighlighted:(BOOL)highlighted;
- (void)setScalesListView:(BOOL)view;
- (void)setToggleButtonAlpha:(double)alpha;
@end

@implementation SBHPageManagementCellViewController

- (SBHPageManagementCellViewController)initWithListView:(id)view folder:(id)folder metrics:(SBHPageManagementCellMetrics *)metrics toggleButtonAllowed:(BOOL)allowed
{
  viewCopy = view;
  folderCopy = folder;
  v24.receiver = self;
  v24.super_class = SBHPageManagementCellViewController;
  v13 = [(SBHPageManagementCellViewController *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_listView, view);
    objc_storeStrong(&v14->_folder, folder);
    v15 = *&metrics->foregroundInsets.bottom;
    fullListViewSize = metrics->fullListViewSize;
    scaledListViewSize = metrics->scaledListViewSize;
    *&v14->_metrics.foregroundInsets.top = *&metrics->foregroundInsets.top;
    *&v14->_metrics.foregroundInsets.bottom = v15;
    v14->_metrics.fullListViewSize = fullListViewSize;
    v14->_metrics.scaledListViewSize = scaledListViewSize;
    v19 = *&metrics->backgroundInsets.bottom;
    v18 = *&metrics->listViewVerticalPositionAdjustment;
    v20 = *&metrics->backgroundInsets.top;
    v14->_metrics.toggleButtonVerticalMargin = metrics->toggleButtonVerticalMargin;
    *&v14->_metrics.backgroundInsets.bottom = v19;
    *&v14->_metrics.listViewVerticalPositionAdjustment = v18;
    *&v14->_metrics.backgroundInsets.top = v20;
    v14->_toggleButtonAllowed = allowed;
    v21 = [[SBHPageManagementListTapGestureRecognizer alloc] initWithTarget:v14 action:sel_listViewTapped_];
    tapGestureRecognizer = v14->_tapGestureRecognizer;
    v14->_tapGestureRecognizer = &v21->super;

    [(UIGestureRecognizer *)v14->_tapGestureRecognizer setDelegate:v14];
  }

  return v14;
}

- (void)loadView
{
  listView = [(SBHPageManagementCellViewController *)self listView];
  v4 = [SBHPageManagementCellView alloc];
  folder = [(SBHPageManagementCellViewController *)self folder];
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
  v10 = [(SBHPageManagementCellView *)v4 initWithListView:listView folder:folder metrics:v11 toggleButtonAllowed:toggleButtonAllowed];

  [listView addGestureRecognizer:self->_tapGestureRecognizer];
  [(SBHPageManagementCellViewController *)self setView:v10];
}

- (UIView)listContainerView
{
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  listContainerView = [pageManagementCellView listContainerView];

  return listContainerView;
}

- (void)listViewTapped:(id)tapped
{
  tappedCopy = tapped;
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  listContainerView = [pageManagementCellView listContainerView];

  [tappedCopy locationInView:listContainerView];
  v7 = v6;
  v9 = v8;
  [listContainerView bounds];
  v24.x = v7;
  v24.y = v9;
  v10 = CGRectContainsPoint(v25, v24);
  delegate = [(SBHPageManagementCellViewController *)self delegate];
  v12 = delegate;
  if (delegate)
  {
    v13 = [delegate pageManagementCellViewControllerCanReceiveTap:self];
  }

  else
  {
    v13 = 1;
  }

  state = [tappedCopy state];
  if ((state - 1) < 2)
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

    selfCopy2 = self;
    goto LABEL_19;
  }

  if ((state - 4) < 2)
  {
    selfCopy2 = self;
    v16 = 0;
LABEL_19:
    [(SBHPageManagementCellViewController *)selfCopy2 setListHighlighted:v16];
    goto LABEL_20;
  }

  if (state == 3)
  {
    [(SBHPageManagementCellViewController *)self setListHighlighted:0];
    listView = [(SBHPageManagementCellViewController *)self listView];
    model = [listView model];
    isHidden = [model isHidden];
    if ((v10 & v13) == 1 && (isHidden & 1) == 0)
    {
      [v12 pageManagementCellViewControllerDidReceiveTap:self];
    }
  }

LABEL_20:
}

- (BOOL)scalesListView
{
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  scalesListView = [pageManagementCellView scalesListView];

  return scalesListView;
}

- (void)setScalesListView:(BOOL)view
{
  viewCopy = view;
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [pageManagementCellView setScalesListView:viewCopy];
}

- (double)toggleButtonAlpha
{
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [pageManagementCellView toggleButtonAlpha];
  v4 = v3;

  return v4;
}

- (void)setToggleButtonAlpha:(double)alpha
{
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [pageManagementCellView setToggleButtonAlpha:alpha];
}

- (id)listHighlightView
{
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  listHighlightView = [pageManagementCellView listHighlightView];

  return listHighlightView;
}

- (void)setListHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [pageManagementCellView setListHighlighted:highlightedCopy];
}

- (void)cancelGestures
{
  tapGestureRecognizer = [(SBHPageManagementCellViewController *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:0];
  [tapGestureRecognizer setEnabled:1];
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [pageManagementCellView setListHighlighted:0];
}

- (void)cleanUpListView
{
  [(SBIconListView *)self->_listView removeGestureRecognizer:self->_tapGestureRecognizer];
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  [pageManagementCellView cleanUpListView];
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
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
    pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
    [pageManagementCellView setIconImageInfo:{v10, v9, v8, v7}];
  }
}

- (CGRect)visibleBounds
{
  view = [(SBHPageManagementCellViewController *)self view];
  [view frame];
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
  delegate = [(SBHPageManagementCellViewController *)self delegate];
  [(SBHPageManagementCellViewController *)self iconImageInfo];
  v5 = v4;
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  listContainerView = [pageManagementCellView listContainerView];

  v8 = objc_alloc(MEMORY[0x1E69DD250]);
  [listContainerView frame];
  v9 = [v8 initWithFrame:{0.0, 0.0}];
  [v9 _setContinuousCornerRadius:v5];
  v10 = [delegate backgroundViewForSnapshotForPageManagementCellViewController:self];
  [v9 bounds];
  [v10 setFrame:?];
  [v10 _setContinuousCornerRadius:v5];
  [v9 addSubview:v10];
  snapshotView = [(SBIconListView *)self->_listView snapshotView];
  listView = self->_listView;
  if (listView)
  {
    [(SBIconListView *)listView transform];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  [snapshotView setTransform:v14];
  [(SBIconListView *)self->_listView center];
  [snapshotView setCenter:?];
  [v9 addSubview:snapshotView];

  return v9;
}

- (CGPoint)snapshotViewCenter
{
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  listContainerView = [pageManagementCellView listContainerView];

  [listContainerView center];
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
  pageManagementCellView = [(SBHPageManagementCellViewController *)self pageManagementCellView];
  listContainerView = [pageManagementCellView listContainerView];

  [(SBHPageManagementCellViewController *)self iconImageInfo];
  [listContainerView frame];
  v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:? cornerRadius:?];

  return v5;
}

- (BOOL)wantsCaptureOnlyBackgroundView
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  listView = [(SBHPageManagementCellViewController *)self listView];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__SBHPageManagementCellViewController_wantsCaptureOnlyBackgroundView__block_invoke;
  v4[3] = &unk_1E808C778;
  v4[4] = &v5;
  [listView enumerateIconViewsUsingBlock:v4];

  LOBYTE(listView) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return listView;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(SBHPageManagementCellViewController *)self tapGestureRecognizer];

  return tapGestureRecognizer == recognizerCopy;
}

- (SBHPageManagementCellViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end