@interface _UIPreviewInteractionCustomViewHighlighter
- (id)highlightShouldBeginInContainerView:(id)a3 presentationContainerView:(id)a4 previewingContext:(id)a5;
- (void)finalizeHighlightForPreviewingContext:(id)a3;
- (void)prepareHighlightWithPreviewingContext:(id)a3;
@end

@implementation _UIPreviewInteractionCustomViewHighlighter

- (void)prepareHighlightWithPreviewingContext:(id)a3
{
  v15 = a3;
  v4 = [v15 sourceView];
  [v15 preferredSourceViewRectInCoordinateSpace:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v15 customViewForInteractiveHighlight];
  [v13 setFrame:{v6, v8, v10, v12}];
  -[_UIPreviewInteractionCustomViewHighlighter setCustomViewFlipsHorizontalAxis:](self, "setCustomViewFlipsHorizontalAxis:", [v13 _flipsHorizontalAxis]);
  if ([v4 _flipsHorizontalAxis])
  {
    [v13 _setFlipsHorizontalAxis:{-[_UIPreviewInteractionCustomViewHighlighter customViewFlipsHorizontalAxis](self, "customViewFlipsHorizontalAxis") ^ 1}];
  }

  v14 = [v15 sourceView];
  [v14 addSubview:v13];

  [(_UIPreviewInteractionCustomViewHighlighter *)self setCustomView:v13];
}

- (id)highlightShouldBeginInContainerView:(id)a3 presentationContainerView:(id)a4 previewingContext:(id)a5
{
  v6 = a3;
  v7 = [(_UIPreviewInteractionCustomViewHighlighter *)self customView];
  [v7 _setFlipsHorizontalAxis:{-[_UIPreviewInteractionCustomViewHighlighter customViewFlipsHorizontalAxis](self, "customViewFlipsHorizontalAxis")}];
  [v6 bounds];
  [v7 setFrame:?];
  [v6 addSubview:v7];

  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __126___UIPreviewInteractionCustomViewHighlighter_highlightShouldBeginInContainerView_presentationContainerView_previewingContext___block_invoke;
    v10[3] = &unk_1E70F3590;
    v11 = v7;
    v8 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:4 delay:v10 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)finalizeHighlightForPreviewingContext:(id)a3
{
  v3 = [(_UIPreviewInteractionCustomViewHighlighter *)self customView];
  [v3 removeFromSuperview];
}

@end