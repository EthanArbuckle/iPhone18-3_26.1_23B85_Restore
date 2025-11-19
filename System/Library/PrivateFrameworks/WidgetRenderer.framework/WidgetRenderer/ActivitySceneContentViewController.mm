@interface ActivitySceneContentViewController
- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithCoder:(id)a3;
- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_timelinesForDateInterval:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ActivitySceneContentViewController

- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1DAE5FA38();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1DAE5FD10(a3);
}

- (id)_timelinesForDateInterval:(id)a3
{
  v4 = sub_1DAECDA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECD9EC();
  v9 = self;
  sub_1DAE604D8(v8);

  (*(v5 + 8))(v8, v4);
  sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v10 = sub_1DAED1E6C();

  return v10;
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1DAE60938(a3, sub_1DAE61430, v7);
}

- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end