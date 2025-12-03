@interface LibraryDetailsContainerViewController
- (_TtC8VideosUI37LibraryDetailsContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)findPresentationSourceViewWithId:(id)id;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation LibraryDetailsContainerViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E38F22D4();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38F26A8(v4);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E38F27D4(v4);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_1E38F2918();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E38F2BB4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1E38F3264();
}

- (_TtC8VideosUI37LibraryDetailsContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E38F48E0();
}

- (id)findPresentationSourceViewWithId:(id)id
{
  sub_1E4205F14();
  selfCopy = self;
  v5 = sub_1E38F4A2C();

  return v5;
}

@end