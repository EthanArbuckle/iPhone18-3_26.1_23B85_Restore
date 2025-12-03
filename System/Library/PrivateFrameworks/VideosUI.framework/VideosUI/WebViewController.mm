@interface WebViewController
- (_TtC8VideosUI17WebViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backTapped;
- (void)doneTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation WebViewController

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B97B8C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B981D0();
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B98340();
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B983EC();
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1E3B98340();
}

- (_TtC8VideosUI17WebViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3B984F4();
}

- (void)doneTapped
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B986B4();
}

- (void)backTapped
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B98710();
}

@end