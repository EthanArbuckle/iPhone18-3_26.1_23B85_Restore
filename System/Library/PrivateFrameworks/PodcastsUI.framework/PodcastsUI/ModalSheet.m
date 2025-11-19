@interface ModalSheet
+ (id)presentableViewController:(id)a3 height:(double)a4;
- (_TtC10PodcastsUI10ModalSheet)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation ModalSheet

+ (id)presentableViewController:(id)a3 height:(double)a4
{
  v5 = a3;
  v6 = _s10PodcastsUI10ModalSheetC25presentableViewController_6heightSo06UIViewG0CAG_12CoreGraphics7CGFloatVtFZ_0(v5, a4);

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21B4743C0();
}

- (void)handleButton:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21B4CA278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_21B4749A0(v6);

  sub_21B3F9F3C(v6);
}

- (_TtC10PodcastsUI10ModalSheet)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end