@interface LanguagesViewController
- (_TtC13TranslationUI23LanguagesViewController)initWithCoder:(id)a3;
- (_TtC13TranslationUI23LanguagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeActionWithSender:(id)a3;
- (void)updateSelectedTarget;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LanguagesViewController

- (_TtC13TranslationUI23LanguagesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl) = 0;
  v4 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v5 = type metadata accessor for LanguageSelectionModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_26F3ED628();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_subscriptions) = MEMORY[0x277D84F90];
  result = sub_26F4A0238();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_26F41D46C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_26F41E09C(a3);
}

- (void)updateSelectedTarget
{
  v2 = self;
  sub_26F41F450();
}

- (void)closeActionWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_26F4A0038();
  swift_unknownObjectRelease();
  [(LanguagesViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (_TtC13TranslationUI23LanguagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end