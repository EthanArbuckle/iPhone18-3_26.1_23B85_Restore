@interface StickerEditViewController
- (_TtC10StickersUI25StickerEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleDoneButton;
- (void)handleLiveButton;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StickerEditViewController

- (void)loadView
{
  v2 = self;
  sub_26BA3ADA0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for StickerEditViewController();
  v4 = v9.receiver;
  [(StickerEditViewController *)&v9 viewDidAppear:v3];
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v4) + 0x1D0))(0);
  v6 = objc_opt_self();
  v7 = sub_26BA3A3F8();
  [v6 playSettlingAnimation_];

  v8 = sub_26BA3A5E4();
  (*((*v5 & *v8) + 0x118))(1);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerEditViewController();
  v4 = v7.receiver;
  [(StickerEditViewController *)&v7 viewWillDisappear:v3];
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x1D0))(1);
  (*((*v5 & *v4) + 0x2B8))(v6);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_26BA3BF80();
}

- (void)handleDoneButton
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x2E0);
  v5 = self;

  v4(sub_26BA3F02C, v3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_26BA3ED68;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_26BA3D548(a3, v6, v7);
  sub_26BA36050(v6);
}

- (void)handleLiveButton
{
  v2 = self;
  sub_26BA3D760();
}

- (_TtC10StickersUI25StickerEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end