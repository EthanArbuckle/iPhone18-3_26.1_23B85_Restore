@interface ActivitySceneContentViewController
- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_timelinesForDateInterval:(id)interval;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillLayoutSubviews;
@end

@implementation ActivitySceneContentViewController

- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1DAE5FA38();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1DAE5FD10(change);
}

- (id)_timelinesForDateInterval:(id)interval
{
  v4 = sub_1DAECDA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECD9EC();
  selfCopy = self;
  sub_1DAE604D8(v8);

  (*(v5 + 8))(v8, v4);
  sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v10 = sub_1DAED1E6C();

  return v10;
}

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  specifierCopy = specifier;
  selfCopy = self;
  sub_1DAE60938(specifier, sub_1DAE61430, v7);
}

- (_TtC14WidgetRenderer34ActivitySceneContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end