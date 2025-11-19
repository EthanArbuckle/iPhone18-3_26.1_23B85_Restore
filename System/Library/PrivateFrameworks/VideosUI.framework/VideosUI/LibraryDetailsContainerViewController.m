@interface LibraryDetailsContainerViewController
- (_TtC8VideosUI37LibraryDetailsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)findPresentationSourceViewWithId:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation LibraryDetailsContainerViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E38F22D4();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38F26A8(v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38F27D4(v4);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_1E38F2918();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1E38F2BB4();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1E38F3264();
}

- (_TtC8VideosUI37LibraryDetailsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E38F48E0();
}

- (id)findPresentationSourceViewWithId:(id)a3
{
  sub_1E4205F14();
  v4 = self;
  v5 = sub_1E38F4A2C();

  return v5;
}

@end