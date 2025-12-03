@interface _UIPreviewInteractionSystemHighlighter
- (id)_newSnapshotViewForPreviewingContext:(id)context afterScreenUpdates:(BOOL)updates;
- (id)highlightShouldBeginInContainerView:(id)view presentationContainerView:(id)containerView previewingContext:(id)context;
- (void)finalizeHighlightForPreviewingContext:(id)context;
- (void)prepareHighlightWithPreviewingContext:(id)context;
@end

@implementation _UIPreviewInteractionSystemHighlighter

- (void)prepareHighlightWithPreviewingContext:(id)context
{
  contextCopy = context;
  v6 = [(_UIPreviewInteractionSystemHighlighter *)self _newSnapshotViewForPreviewingContext:contextCopy afterScreenUpdates:0];
  sourceView = [contextCopy sourceView];

  [sourceView addSubview:v6];
  [(_UIPreviewInteractionSystemHighlighter *)self setInitialSnapshotView:v6];
}

- (id)highlightShouldBeginInContainerView:(id)view presentationContainerView:(id)containerView previewingContext:(id)context
{
  containerViewCopy = containerView;
  contextCopy = context;
  viewCopy = view;
  sourceView = [contextCopy sourceView];
  _flipsHorizontalAxis = [sourceView _flipsHorizontalAxis];
  [viewCopy bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  initialSnapshotView = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [initialSnapshotView setFrame:{v14, v16, v18, v20}];

  initialSnapshotView2 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [initialSnapshotView2 _setFlipsHorizontalAxis:_flipsHorizontalAxis];

  initialSnapshotView3 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [viewCopy addSubview:initialSnapshotView3];

  v24 = [(_UIPreviewInteractionSystemHighlighter *)self _newSnapshotViewForPreviewingContext:contextCopy afterScreenUpdates:1];
  [viewCopy bounds];
  [v24 setFrame:?];
  [(_UIPreviewInteractionSystemHighlighter *)self setUpdatedSnapshotView:v24];
  updatedSnapshotView = [(_UIPreviewInteractionSystemHighlighter *)self updatedSnapshotView];
  [updatedSnapshotView _setFlipsHorizontalAxis:_flipsHorizontalAxis];

  initialSnapshotView4 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [viewCopy insertSubview:v24 belowSubview:initialSnapshotView4];

  sourceView2 = [contextCopy sourceView];
  backgroundColor = [sourceView2 backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __122___UIPreviewInteractionSystemHighlighter_highlightShouldBeginInContainerView_presentationContainerView_previewingContext___block_invoke;
  v39[3] = &unk_1E70F3590;
  v39[4] = self;
  v29 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:4 delay:v39 options:0 animations:0.2 completion:0.0];
  v30 = containerViewCopy;
  if ([(_UIPreviewInteractionSystemHighlighter *)self blinderViewEnabled])
  {
    [contextCopy preferredSourceViewRectInCoordinateSpace:v30];
    v35 = [[UIView alloc] initWithFrame:v31, v32, v33, v34];
    sourceView3 = [contextCopy sourceView];
    backgroundColor2 = [sourceView3 backgroundColor];
    [(UIView *)v35 setBackgroundColor:backgroundColor2];

    [v30 insertSubview:v35 atIndex:0];
    [(_UIPreviewInteractionSystemHighlighter *)self setBlinderView:v35];
  }

  return v29;
}

- (void)finalizeHighlightForPreviewingContext:(id)context
{
  initialSnapshotView = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [initialSnapshotView removeFromSuperview];

  updatedSnapshotView = [(_UIPreviewInteractionSystemHighlighter *)self updatedSnapshotView];
  [updatedSnapshotView removeFromSuperview];

  blinderView = [(_UIPreviewInteractionSystemHighlighter *)self blinderView];
  [blinderView removeFromSuperview];
}

- (id)_newSnapshotViewForPreviewingContext:(id)context afterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  contextCopy = context;
  sourceView = [contextCopy sourceView];
  [contextCopy preferredSourceViewRectInCoordinateSpace:sourceView];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [sourceView resizableSnapshotViewFromRect:updatesCopy afterScreenUpdates:v8 withCapInsets:{v10, v12, v14, 0.0, 0.0, 0.0, 0.0}];
  [v15 setFrame:{v8, v10, v12, v14}];
  [v15 setUserInteractionEnabled:0];
  [v15 setAutoresizingMask:18];

  return v15;
}

@end