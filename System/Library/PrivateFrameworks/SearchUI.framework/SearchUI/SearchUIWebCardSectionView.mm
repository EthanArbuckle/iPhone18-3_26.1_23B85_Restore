@interface SearchUIWebCardSectionView
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (SearchUIWebCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (id)replaceSemanticColor:(id)color withColor:(id)withColor inString:(id)string;
- (id)setupContentView;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation SearchUIWebCardSectionView

- (SearchUIWebCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  v21.receiver = self;
  v21.super_class = SearchUIWebCardSectionView;
  v4 = [(SearchUICardSectionView *)&v21 initWithRowModel:model feedbackDelegate:delegate];
  v5 = v4;
  if (v4)
  {
    [(SearchUIWebCardSectionView *)v4 setContentHeight:1.0];
    v6 = objc_opt_new();
    [v6 setSuppressesIncrementalRendering:1];
    [v6 _setDrawsBackground:0];
    v7 = objc_opt_new();
    [v6 _setCanShowWhileLocked:1];
    v8 = objc_alloc(MEMORY[0x1E6985358]);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"window.onload=function() { %@ %@ %@ }", @"var SearchUIEntries = document.body.getElementsByTagName('d:entry'); if (SearchUIEntries.length > 0) { var SearchUIFirst = SearchUIEntries[0].children; if (SearchUIFirst.length > 0) { SearchUIFirst[0].style.marginBlockStart = '0px'}; };", @"var viewport = document.createElement(meta, initial-scale=1, user-scalable=no; document.head.appendChild(viewport);"), @"window.webkit.messageHandlers.sizeNotification.postMessage({ scrollHeight:document.body.scrollHeight });"];;
    v10 = [v8 initWithSource:v9 injectionTime:1 forMainFrameOnly:1];
    [v7 addUserScript:v10];

    v11 = objc_alloc(MEMORY[0x1E6985358]);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"window.onresize=function() { %@ }", @"window.webkit.messageHandlers.sizeNotification.postMessage({ scrollHeight:document.body.scrollHeight });"];;
    v13 = [v11 initWithSource:v12 injectionTime:1 forMainFrameOnly:1];
    [v7 addUserScript:v13];

    [v7 addScriptMessageHandler:v5 name:@"sizeNotification"];
    v14 = [objc_alloc(MEMORY[0x1E6985428]) initWithSource:@"\nhtml { -webkit-text-size-adjust: none; text-size-adjust: none; }\n" forMainFrameOnly:1];
    [v7 _addUserStyleSheet:v14];
    [v6 setUserContentController:v7];
    v15 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v6 configuration:{0.0, 0.0, 0.0, 0.0}];
    [v15 setNavigationDelegate:v5];
    [v15 setAllowsBackForwardNavigationGestures:0];
    [v15 setAllowsLinkPreview:0];
    [v15 setUserInteractionEnabled:0];
    scrollView = [v15 scrollView];
    [scrollView setBounces:0];

    scrollView2 = [v15 scrollView];
    [scrollView2 setScrollEnabled:0];

    scrollView3 = [v15 scrollView];
    [scrollView3 setZoomEnabled:0];

    [v6 setIgnoresViewportScaleLimits:1];
    [v15 setOpaque:0];
    [(SearchUIWebCardSectionView *)v5 setWebView:v15];
    contentView = [(SearchUICardSectionView *)v5 contentView];
    [contentView addArrangedSubview:v15];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIWebCardSectionView;
  [(SearchUIWebCardSectionView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIWebCardSectionView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIWebCardSectionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIWebCardSectionView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIWebCardSectionView;
  [(SearchUIWebCardSectionView *)&v3 didMoveToWindow];
  [(SearchUIWebCardSectionView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v25.receiver = self;
  v25.super_class = SearchUIWebCardSectionView;
  [(SearchUIWebCardSectionView *)&v25 tlk_updateForAppearance:appearanceCopy];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];
  htmlString = [cardSection htmlString];

  v8 = [htmlString stringByAppendingString:@"<style>body{margin: 0px !important}</style>"];

  primaryColor = [appearanceCopy primaryColor];
  v10 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"-apple-system-label" withColor:primaryColor inString:v8];

  v11 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"text" withColor:primaryColor inString:v10];

  v12 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"CanvasText" withColor:primaryColor inString:v11];

  v13 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"linkColor" withColor:primaryColor inString:v12];

  secondaryColor = [appearanceCopy secondaryColor];
  v15 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"-apple-system-secondary-label" withColor:secondaryColor inString:v13];

  tertiaryColor = [appearanceCopy tertiaryColor];
  v17 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"-apple-system-tertiary-label" withColor:tertiaryColor inString:v15];

  quaternaryColor = [appearanceCopy quaternaryColor];
  v19 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"window" withColor:quaternaryColor inString:v17];

  if ([appearanceCopy isDark])
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v20 = ;
  v21 = [(SearchUIWebCardSectionView *)self replaceSemanticColor:@"-apple-system-text-background" withColor:v20 inString:v19];

  webView = [(SearchUIWebCardSectionView *)self webView];
  v23 = [webView loadHTMLString:v21 baseURL:0];

  webView2 = [(SearchUIWebCardSectionView *)self webView];
  [appearanceCopy enableAppearanceForView:webView2];
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  body = [message body];
  v6 = [body valueForKey:@"scrollHeight"];
  [v6 floatValue];
  v8 = v7;

  [(SearchUIWebCardSectionView *)self contentHeight];
  if (v9 != v8)
  {
    [(SearchUIWebCardSectionView *)self setContentHeight:v8];
    webView = [(SearchUIWebCardSectionView *)self webView];
    [webView invalidateIntrinsicContentSize];

    [(SearchUICardSectionView *)self didInvalidateSizeAnimate:0];
  }
}

- (id)replaceSemanticColor:(id)color withColor:(id)withColor inString:(id)string
{
  colorCopy = color;
  stringCopy = string;
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0;
  v18 = 0.0;
  [withColor getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%d, %d, %d, %f)", (v20 * 255.0), (v19 * 255.0), (v18 * 255.0), v17];
  if ([colorCopy hasPrefix:@"-apple-system-"])
  {
    v10 = [stringCopy stringByReplacingOccurrencesOfString:colorCopy withString:v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"color: %@", v9];
    colorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"color: %@", colorCopy];
    v13 = [stringCopy stringByReplacingOccurrencesOfString:colorCopy withString:v11];

    colorCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"color : %@", colorCopy];
    v15 = [v13 stringByReplacingOccurrencesOfString:colorCopy2 withString:v11];

    stringCopy = v15;
    v10 = stringCopy;
  }

  return v10;
}

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setMaximumLayoutSize:{2147483650.0, 2147483650.0}];
  [v3 setDelegate:self];
  [v3 setLayoutMarginsRelativeArrangement:1];
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  webView = [(SearchUIWebCardSectionView *)self webView];
  [webView layoutMargins];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v3 setLayoutMargins:{v5 - v14, v7 - v16, v9 - v18, v11 - v20}];

  return v3;
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  width = size.width;
  subviewCopy = subview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = subviewCopy;
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    webView = [(SearchUIWebCardSectionView *)self webView];
    [webView layoutMargins];
    v19 = v18;
    v21 = v20;

    [(SearchUIWebCardSectionView *)self contentHeight];
    v23 = v19 + v22;
    if (v14 != width)
    {
      [v8 setFrame:{v10, v12, width, v16}];
      [v8 invalidateIntrinsicContentSize];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91__SearchUIWebCardSectionView_containerView_systemLayoutSizeFittingSize_forArrangedSubview___block_invoke;
      block[3] = &unk_1E85B24C8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v24 = v21 + v23;
  }

  else
  {
    width = *MEMORY[0x1E698B708];
    v24 = *(MEMORY[0x1E698B708] + 8);
  }

  v25 = width;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [view invalidateIntrinsicContentSize];

  [(SearchUICardSectionView *)self didInvalidateSizeAnimate:0];
}

@end