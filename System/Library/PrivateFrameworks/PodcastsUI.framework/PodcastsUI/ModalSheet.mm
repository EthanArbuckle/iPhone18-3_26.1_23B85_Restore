@interface ModalSheet
+ (id)presentableViewController:(id)controller height:(double)height;
- (_TtC10PodcastsUI10ModalSheet)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleButton:(id)button;
- (void)viewDidLoad;
@end

@implementation ModalSheet

+ (id)presentableViewController:(id)controller height:(double)height
{
  controllerCopy = controller;
  v6 = _s10PodcastsUI10ModalSheetC25presentableViewController_6heightSo06UIViewG0CAG_12CoreGraphics7CGFloatVtFZ_0(controllerCopy, height);

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21B4743C0();
}

- (void)handleButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21B4CA278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_21B4749A0(v6);

  sub_21B3F9F3C(v6);
}

- (_TtC10PodcastsUI10ModalSheet)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end