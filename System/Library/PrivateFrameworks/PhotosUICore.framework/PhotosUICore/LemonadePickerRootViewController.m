@interface LemonadePickerRootViewController
- (_TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController)initWithCoder:(id)a3;
- (_TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)dealloc;
- (void)navigateToDestination:(PXProgrammaticNavigationDestination *)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)splitViewController:(id)a3 didChangeSidebarVisibility:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LemonadePickerRootViewController

- (_TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1A46C37F8();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1A46C4270();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LemonadePickerRootViewController();
  v4 = v5.receiver;
  [(LemonadePickerRootViewController *)&v5 viewDidAppear:v3];
  sub_1A46C54B8();
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PXLemonadeReroutedProgrammaticDestination(v4);

  v7 = sub_1A465A2B8(v6);

  return v7 & 1;
}

- (void)navigateToDestination:(PXProgrammaticNavigationDestination *)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A5357DB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5357DC8;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1A403AC74(0, 0, v11, &unk_1A5357DD8, v16);
}

- (void)dealloc
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate) = 0;
  swift_unknownObjectWeakAssign();
  v3 = self;

  sub_1A5244234();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for LemonadePickerRootViewController();
  [(LemonadePickerRootViewController *)&v4 dealloc];
}

- (void)splitViewController:(id)a3 didChangeSidebarVisibility:(BOOL)a4
{
  v5 = self;

  sub_1A4655DC0(a4);
}

- (_TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end