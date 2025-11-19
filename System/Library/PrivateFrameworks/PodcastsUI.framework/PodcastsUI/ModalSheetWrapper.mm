@interface ModalSheetWrapper
- (_TtC10PodcastsUI17ModalSheetWrapper)initWithCoder:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ModalSheetWrapper

- (void)loadView
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_height);
  v4 = type metadata accessor for SheetView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions];
  *v6 = 0x407C200000000000;
  *(v6 + 1) = v3;
  *(v6 + 2) = 0x4085E00000000000;
  *(v6 + 3) = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = self;
  v8 = [(ModalSheetWrapper *)&v9 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(ModalSheetWrapper *)v7 setView:v8, v9.receiver, v9.super_class];
}

- (_TtC10PodcastsUI17ModalSheetWrapper)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_minWidth) = 0x407C200000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_maxSize) = 0x4085E00000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView) = 0;
  result = sub_21B4CA488();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21B474F38();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ModalSheetWrapper();
  v4 = v7.receiver;
  [(ModalSheetWrapper *)&v7 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setNavigationBarHidden:1 animated:0];
  }
}

@end