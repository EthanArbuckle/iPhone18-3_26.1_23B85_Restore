@interface ScanwaveViewController
- (_TtC20SystemUIAnimationKit22ScanwaveViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ScanwaveViewController

- (_TtC20SystemUIAnimationKit22ScanwaveViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_26C614E48();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_26C5F3688(v5, v7, a4);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings);
  v3 = self;
  [v2 removeKeyPathObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ScanwaveViewController(0);
  [(ScanwaveViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ScanwaveViewController(0);
  v2 = v6.receiver;
  [(ScanwaveViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 layer];

    [v5 setAllowsGroupBlending_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_26C5F3EBC();
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings);
  v5 = self;
  v6 = v4;
  sub_26C5CBB7C(v6, v7);

  memcpy(__dst, v5 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings, 0x4D1uLL);
  memcpy(v5 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings, v7, 0x4D1uLL);
  sub_26C602740(__dst);
  sub_26C5F5B5C();
}

@end