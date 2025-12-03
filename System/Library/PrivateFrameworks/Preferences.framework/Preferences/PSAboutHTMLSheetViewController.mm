@interface PSAboutHTMLSheetViewController
+ (void)presentAboutSheetTitled:(id)titled HTMLContent:(id)content fromViewController:(id)controller;
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (void)dealloc;
- (void)donePressed;
- (void)loadView;
- (void)setHTMLContent:(id)content isFragment:(BOOL)fragment;
- (void)viewDidBecomeVisible;
@end

@implementation PSAboutHTMLSheetViewController

- (void)loadView
{
  v8 = objc_alloc_init(MEMORY[0x1E69DD2E0]);
  [v8 setAutoresizingMask:18];
  [v8 setDelegate:self];
  [v8 setDataDetectorTypes:0];
  [v8 _setDrawsCheckeredPattern:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v8 setBackgroundColor:systemBackgroundColor];

  _browserView = [v8 _browserView];
  [_browserView setTilesOpaque:0];
  [_browserView setLoadsSynchronously:1];
  [_browserView setDetectsPhoneNumbers:0];
  _scrollView = [v8 _scrollView];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [_scrollView setBackgroundColor:whiteColor];

  [_scrollView _setShowsBackgroundShadow:0];
  [_scrollView setDecelerationRate:0.998];
  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [_scrollView setBackgroundColor:systemBackgroundColor2];

  [(PSAboutHTMLSheetViewController *)self setView:v8];
}

- (void)dealloc
{
  view = [(PSAboutHTMLSheetViewController *)self view];
  [view setDelegate:0];

  v4.receiver = self;
  v4.super_class = PSAboutHTMLSheetViewController;
  [(PSAboutHTMLSheetViewController *)&v4 dealloc];
}

- (void)viewDidBecomeVisible
{
  view = [(PSAboutHTMLSheetViewController *)self view];
  _scrollView = [view _scrollView];
  [_scrollView flashScrollIndicators];
}

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  if (!type)
  {
    v6 = MEMORY[0x1E69DC668];
    requestCopy = request;
    sharedApplication = [v6 sharedApplication];
    v9 = [requestCopy URL];

    [sharedApplication openURL:v9 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }

  return type != 0;
}

- (void)donePressed
{
  parentViewController = [(PSAboutHTMLSheetViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)setHTMLContent:(id)content isFragment:(BOOL)fragment
{
  fragmentCopy = fragment;
  contentCopy = content;
  if (fragmentCopy)
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<style type=text/css> :root { supported-color-schemes: light dark } body {font: -apple-system-body; word-wrap: break-word;-khtml-nbsp-mode: space;-khtml-line-break: after-white-space; color: -apple-system-label; background-color: -apple-system-background; } </style>"];;
    v8 = MEMORY[0x1E695DF58];
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v10 = [preferredLanguages objectAtIndex:0];
    v11 = [v8 characterDirectionForLanguage:v10];

    v12 = &stru_1EFE45030;
    if (v11 == 2)
    {
      v12 = @"; direction: rtl";
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, v12];

    contentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"<html><head><meta name=viewport content=width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no/>%@</head><body>%@</body></html>", v13, contentCopy];

    contentCopy = contentCopy;
  }

  view = [(PSAboutHTMLSheetViewController *)self view];
  [view loadHTMLString:contentCopy baseURL:0];
}

+ (void)presentAboutSheetTitled:(id)titled HTMLContent:(id)content fromViewController:(id)controller
{
  controllerCopy = controller;
  contentCopy = content;
  titledCopy = titled;
  v14 = objc_alloc_init(self);
  [v14 setTitle:titledCopy];

  [v14 setHTMLContent:contentCopy isFragment:1];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  [v11 setModalPresentationStyle:2];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v14 action:sel_donePressed];
  navigationItem = [v14 navigationItem];
  [navigationItem setRightBarButtonItem:v12];

  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

@end