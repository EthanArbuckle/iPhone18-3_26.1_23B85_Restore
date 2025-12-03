@interface _UIPreviewInteractionCustomViewHighlighter
- (id)highlightShouldBeginInContainerView:(id)view presentationContainerView:(id)containerView previewingContext:(id)context;
- (void)finalizeHighlightForPreviewingContext:(id)context;
- (void)prepareHighlightWithPreviewingContext:(id)context;
@end

@implementation _UIPreviewInteractionCustomViewHighlighter

- (void)prepareHighlightWithPreviewingContext:(id)context
{
  contextCopy = context;
  sourceView = [contextCopy sourceView];
  [contextCopy preferredSourceViewRectInCoordinateSpace:sourceView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  customViewForInteractiveHighlight = [contextCopy customViewForInteractiveHighlight];
  [customViewForInteractiveHighlight setFrame:{v6, v8, v10, v12}];
  -[_UIPreviewInteractionCustomViewHighlighter setCustomViewFlipsHorizontalAxis:](self, "setCustomViewFlipsHorizontalAxis:", [customViewForInteractiveHighlight _flipsHorizontalAxis]);
  if ([sourceView _flipsHorizontalAxis])
  {
    [customViewForInteractiveHighlight _setFlipsHorizontalAxis:{-[_UIPreviewInteractionCustomViewHighlighter customViewFlipsHorizontalAxis](self, "customViewFlipsHorizontalAxis") ^ 1}];
  }

  sourceView2 = [contextCopy sourceView];
  [sourceView2 addSubview:customViewForInteractiveHighlight];

  [(_UIPreviewInteractionCustomViewHighlighter *)self setCustomView:customViewForInteractiveHighlight];
}

- (id)highlightShouldBeginInContainerView:(id)view presentationContainerView:(id)containerView previewingContext:(id)context
{
  viewCopy = view;
  customView = [(_UIPreviewInteractionCustomViewHighlighter *)self customView];
  [customView _setFlipsHorizontalAxis:{-[_UIPreviewInteractionCustomViewHighlighter customViewFlipsHorizontalAxis](self, "customViewFlipsHorizontalAxis")}];
  [viewCopy bounds];
  [customView setFrame:?];
  [viewCopy addSubview:customView];

  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __126___UIPreviewInteractionCustomViewHighlighter_highlightShouldBeginInContainerView_presentationContainerView_previewingContext___block_invoke;
    v10[3] = &unk_1E70F3590;
    v11 = customView;
    v8 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:4 delay:v10 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)finalizeHighlightForPreviewingContext:(id)context
{
  customView = [(_UIPreviewInteractionCustomViewHighlighter *)self customView];
  [customView removeFromSuperview];
}

@end