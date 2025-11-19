@interface _UIPreviewInteractionSystemHighlighter
- (id)_newSnapshotViewForPreviewingContext:(id)a3 afterScreenUpdates:(BOOL)a4;
- (id)highlightShouldBeginInContainerView:(id)a3 presentationContainerView:(id)a4 previewingContext:(id)a5;
- (void)finalizeHighlightForPreviewingContext:(id)a3;
- (void)prepareHighlightWithPreviewingContext:(id)a3;
@end

@implementation _UIPreviewInteractionSystemHighlighter

- (void)prepareHighlightWithPreviewingContext:(id)a3
{
  v4 = a3;
  v6 = [(_UIPreviewInteractionSystemHighlighter *)self _newSnapshotViewForPreviewingContext:v4 afterScreenUpdates:0];
  v5 = [v4 sourceView];

  [v5 addSubview:v6];
  [(_UIPreviewInteractionSystemHighlighter *)self setInitialSnapshotView:v6];
}

- (id)highlightShouldBeginInContainerView:(id)a3 presentationContainerView:(id)a4 previewingContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v9 sourceView];
  v12 = [v11 _flipsHorizontalAxis];
  [v10 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [v22 _setFlipsHorizontalAxis:v12];

  v23 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [v10 addSubview:v23];

  v24 = [(_UIPreviewInteractionSystemHighlighter *)self _newSnapshotViewForPreviewingContext:v9 afterScreenUpdates:1];
  [v10 bounds];
  [v24 setFrame:?];
  [(_UIPreviewInteractionSystemHighlighter *)self setUpdatedSnapshotView:v24];
  v25 = [(_UIPreviewInteractionSystemHighlighter *)self updatedSnapshotView];
  [v25 _setFlipsHorizontalAxis:v12];

  v26 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [v10 insertSubview:v24 belowSubview:v26];

  v27 = [v9 sourceView];
  v28 = [v27 backgroundColor];
  [v10 setBackgroundColor:v28];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __122___UIPreviewInteractionSystemHighlighter_highlightShouldBeginInContainerView_presentationContainerView_previewingContext___block_invoke;
  v39[3] = &unk_1E70F3590;
  v39[4] = self;
  v29 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:4 delay:v39 options:0 animations:0.2 completion:0.0];
  v30 = v8;
  if ([(_UIPreviewInteractionSystemHighlighter *)self blinderViewEnabled])
  {
    [v9 preferredSourceViewRectInCoordinateSpace:v30];
    v35 = [[UIView alloc] initWithFrame:v31, v32, v33, v34];
    v36 = [v9 sourceView];
    v37 = [v36 backgroundColor];
    [(UIView *)v35 setBackgroundColor:v37];

    [v30 insertSubview:v35 atIndex:0];
    [(_UIPreviewInteractionSystemHighlighter *)self setBlinderView:v35];
  }

  return v29;
}

- (void)finalizeHighlightForPreviewingContext:(id)a3
{
  v4 = [(_UIPreviewInteractionSystemHighlighter *)self initialSnapshotView];
  [v4 removeFromSuperview];

  v5 = [(_UIPreviewInteractionSystemHighlighter *)self updatedSnapshotView];
  [v5 removeFromSuperview];

  v6 = [(_UIPreviewInteractionSystemHighlighter *)self blinderView];
  [v6 removeFromSuperview];
}

- (id)_newSnapshotViewForPreviewingContext:(id)a3 afterScreenUpdates:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 sourceView];
  [v5 preferredSourceViewRectInCoordinateSpace:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v6 resizableSnapshotViewFromRect:v4 afterScreenUpdates:v8 withCapInsets:{v10, v12, v14, 0.0, 0.0, 0.0, 0.0}];
  [v15 setFrame:{v8, v10, v12, v14}];
  [v15 setUserInteractionEnabled:0];
  [v15 setAutoresizingMask:18];

  return v15;
}

@end