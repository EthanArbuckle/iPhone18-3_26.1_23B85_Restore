@interface ToastViewController
- (_TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ToastViewController

- (void)loadView
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDD608();
}

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDD6AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E3FDDE74(appear);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDDF54();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3FDE058();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = v6;
  OUTLINED_FUNCTION_6_12();
  sub_1E3FDE3C0(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3FDE72C();
}

@end