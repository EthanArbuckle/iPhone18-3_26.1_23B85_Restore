@interface SWWebViewFactory
- (SWWebViewFactory)init;
- (id)createWebViewWithWebViewConfiguration:(id)configuration scrollSettings:(id)settings;
@end

@implementation SWWebViewFactory

- (SWWebViewFactory)init
{
  v6.receiver = self;
  v6.super_class = SWWebViewFactory;
  v2 = [(SWWebViewFactory *)&v6 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    webViews = v2->_webViews;
    v2->_webViews = weakObjectsPointerArray;
  }

  return v2;
}

- (id)createWebViewWithWebViewConfiguration:(id)configuration scrollSettings:(id)settings
{
  settingsCopy = settings;
  configurationCopy = configuration;
  v8 = [SWWebView alloc];
  v9 = [(SWWebView *)v8 initWithFrame:configurationCopy configuration:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  scrollView = [(SWWebView *)v9 scrollView];
  [scrollView setScrollsToTop:{objc_msgSend(settingsCopy, "scrollsToTop")}];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(SWWebView *)v9 setBackgroundColor:clearColor];

  [(SWWebView *)v9 setOpaque:0];
  [(SWWebView *)v9 _setUseSystemAppearance:1];
  scrollView2 = [(SWWebView *)v9 scrollView];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [scrollView2 setBackgroundColor:clearColor2];

  scrollView3 = [(SWWebView *)v9 scrollView];
  [scrollView3 setScrollEnabled:{objc_msgSend(settingsCopy, "scrollEnabled")}];

  scrollView4 = [(SWWebView *)v9 scrollView];
  showsVerticalScrollIndicator = [settingsCopy showsVerticalScrollIndicator];

  [scrollView4 setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
  scrollView5 = [(SWWebView *)v9 scrollView];
  [scrollView5 setShowsHorizontalScrollIndicator:0];

  scrollView6 = [(SWWebView *)v9 scrollView];
  [scrollView6 setContentInsetAdjustmentBehavior:2];

  webViews = [(SWWebViewFactory *)self webViews];
  [webViews addPointer:v9];

  return v9;
}

@end