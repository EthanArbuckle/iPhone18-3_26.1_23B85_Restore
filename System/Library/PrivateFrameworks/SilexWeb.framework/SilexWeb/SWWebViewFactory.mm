@interface SWWebViewFactory
- (SWWebViewFactory)init;
- (id)createWebViewWithWebViewConfiguration:(id)a3 scrollSettings:(id)a4;
@end

@implementation SWWebViewFactory

- (SWWebViewFactory)init
{
  v6.receiver = self;
  v6.super_class = SWWebViewFactory;
  v2 = [(SWWebViewFactory *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    webViews = v2->_webViews;
    v2->_webViews = v3;
  }

  return v2;
}

- (id)createWebViewWithWebViewConfiguration:(id)a3 scrollSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SWWebView alloc];
  v9 = [(SWWebView *)v8 initWithFrame:v7 configuration:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v10 = [(SWWebView *)v9 scrollView];
  [v10 setScrollsToTop:{objc_msgSend(v6, "scrollsToTop")}];

  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(SWWebView *)v9 setBackgroundColor:v11];

  [(SWWebView *)v9 setOpaque:0];
  [(SWWebView *)v9 _setUseSystemAppearance:1];
  v12 = [(SWWebView *)v9 scrollView];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [(SWWebView *)v9 scrollView];
  [v14 setScrollEnabled:{objc_msgSend(v6, "scrollEnabled")}];

  v15 = [(SWWebView *)v9 scrollView];
  v16 = [v6 showsVerticalScrollIndicator];

  [v15 setShowsVerticalScrollIndicator:v16];
  v17 = [(SWWebView *)v9 scrollView];
  [v17 setShowsHorizontalScrollIndicator:0];

  v18 = [(SWWebView *)v9 scrollView];
  [v18 setContentInsetAdjustmentBehavior:2];

  v19 = [(SWWebViewFactory *)self webViews];
  [v19 addPointer:v9];

  return v9;
}

@end