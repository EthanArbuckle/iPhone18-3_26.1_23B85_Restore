@interface WebViewController
- (_TtC8VideosUI17WebViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backTapped;
- (void)doneTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation WebViewController

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B97B8C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B981D0();
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B98340();
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B983EC();
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1E3B98340();
}

- (_TtC8VideosUI17WebViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3B984F4();
}

- (void)doneTapped
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B986B4();
}

- (void)backTapped
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3B98710();
}

@end