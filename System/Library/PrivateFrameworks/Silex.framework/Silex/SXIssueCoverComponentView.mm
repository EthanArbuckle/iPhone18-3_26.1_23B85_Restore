@interface SXIssueCoverComponentView
- (SXIssueCoverComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory viewProvider:(id)viewProvider;
- (void)discardContents;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
- (void)renderIssueCover;
@end

@implementation SXIssueCoverComponentView

- (SXIssueCoverComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory viewProvider:(id)viewProvider
{
  viewProviderCopy = viewProvider;
  v17.receiver = self;
  v17.super_class = SXIssueCoverComponentView;
  v14 = [(SXComponentView *)&v17 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_viewProvider, viewProvider);
  }

  return v15;
}

- (void)presentComponentWithChanges:(id)changes
{
  var0 = changes.var0;
  v6.receiver = self;
  v6.super_class = SXIssueCoverComponentView;
  [(SXComponentView *)&v6 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  if (var0)
  {
    coverView = [(SXIssueCoverComponentView *)self coverView];

    if (coverView)
    {
      [(SXIssueCoverComponentView *)self renderIssueCover];
    }
  }
}

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = SXIssueCoverComponentView;
  [(SXComponentView *)&v3 renderContents];
  [(SXIssueCoverComponentView *)self renderIssueCover];
}

- (void)discardContents
{
  v4.receiver = self;
  v4.super_class = SXIssueCoverComponentView;
  [(SXComponentView *)&v4 discardContents];
  coverView = [(SXIssueCoverComponentView *)self coverView];
  [coverView removeFromSuperview];

  [(SXIssueCoverComponentView *)self setCoverView:0];
}

- (void)renderIssueCover
{
  v3 = [SXIssueCover alloc];
  component = [(SXComponentView *)self component];
  issueIdentifier = [component issueIdentifier];
  v26 = [(SXIssueCover *)v3 initWithIssueIdentifier:issueIdentifier];

  coverView = [(SXIssueCoverComponentView *)self coverView];

  if (!coverView)
  {
    viewProvider = [(SXIssueCoverComponentView *)self viewProvider];
    v8 = [viewProvider viewForIssueCover:v26];
    [(SXIssueCoverComponentView *)self setCoverView:v8];

    coverView2 = [(SXIssueCoverComponentView *)self coverView];
    [coverView2 setAccessibilityIgnoresInvertColors:1];

    contentView = [(SXComponentView *)self contentView];
    coverView3 = [(SXIssueCoverComponentView *)self coverView];
    [contentView addSubview:coverView3];
  }

  v12 = [SXIssueCoverPresentationOptions alloc];
  [(SXComponentView *)self contentFrame];
  v14 = v13;
  v16 = v15;
  component2 = [(SXComponentView *)self component];
  videoPlaybackEnabled = [component2 videoPlaybackEnabled];
  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  documentStyle = [dOMObjectProvider documentStyle];
  backgroundColor = [documentStyle backgroundColor];
  v22 = [(SXIssueCoverPresentationOptions *)v12 initWithSize:videoPlaybackEnabled videoPlaybackEnabled:backgroundColor parentBackgroundColor:v14, v16];

  viewProvider2 = [(SXIssueCoverComponentView *)self viewProvider];
  coverView4 = [(SXIssueCoverComponentView *)self coverView];
  [viewProvider2 presentIssueCover:v26 onView:coverView4 options:v22];

  coverView5 = [(SXIssueCoverComponentView *)self coverView];
  [(SXComponentView *)self contentFrame];
  [coverView5 setFrame:?];
}

@end