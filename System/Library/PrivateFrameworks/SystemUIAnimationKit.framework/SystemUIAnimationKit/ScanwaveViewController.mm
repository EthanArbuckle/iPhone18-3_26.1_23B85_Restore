@interface ScanwaveViewController
- (_TtC20SystemUIAnimationKit22ScanwaveViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ScanwaveViewController

- (_TtC20SystemUIAnimationKit22ScanwaveViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_26C614E48();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_26C5F3688(v5, v7, bundle);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings);
  selfCopy = self;
  [v2 removeKeyPathObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ScanwaveViewController(0);
  [(ScanwaveViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ScanwaveViewController(0);
  v2 = v6.receiver;
  [(ScanwaveViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    layer = [view layer];

    [layer setAllowsGroupBlending_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_26C5F3EBC();
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings);
  selfCopy = self;
  v6 = v4;
  sub_26C5CBB7C(v6, v7);

  memcpy(__dst, selfCopy + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings, 0x4D1uLL);
  memcpy(selfCopy + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings, v7, 0x4D1uLL);
  sub_26C602740(__dst);
  sub_26C5F5B5C();
}

@end