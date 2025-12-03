@interface LifecycleAdaptorViewController
- (_TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LifecycleAdaptorViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_27047C2E4(appear, &selRef_viewWillAppear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_27047C2E4(disappear, &selRef_viewWillDisappear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_27047C2E4(appear, &selRef_viewDidAppear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_27047C2E4(disappear, &selRef_viewDidDisappear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear);
}

- (_TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2705D7564();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_27047C3CC(v5, v7, bundle);
}

@end