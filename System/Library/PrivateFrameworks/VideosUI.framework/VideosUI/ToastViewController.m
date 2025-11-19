@interface ToastViewController
- (_TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ToastViewController

- (void)loadView
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDD608();
}

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDD6AC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1E3FDDE74(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDDF54();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDE058();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = v6;
  OUTLINED_FUNCTION_6_12();
  sub_1E3FDE3C0(a4);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3FDE72C();
}

@end