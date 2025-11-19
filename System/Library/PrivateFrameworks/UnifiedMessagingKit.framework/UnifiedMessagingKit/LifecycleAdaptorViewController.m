@interface LifecycleAdaptorViewController
- (_TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LifecycleAdaptorViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_27047C2E4(a3, &selRef_viewWillAppear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willAppear);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_27047C2E4(a3, &selRef_viewWillDisappear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_willDisappear);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_27047C2E4(a3, &selRef_viewDidAppear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didAppear);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_27047C2E4(a3, &selRef_viewDidDisappear_, &OBJC_IVAR____TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController_didDisappear);
}

- (_TtC19UnifiedMessagingKitP33_6D8BC1F4500CFE98BE04B00AAFF3D2DC30LifecycleAdaptorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2705D7564();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_27047C3CC(v5, v7, a4);
}

@end