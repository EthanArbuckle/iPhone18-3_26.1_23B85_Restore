@interface WidgetSceneContentViewController
- (_TtC14WidgetRenderer32WidgetSceneContentViewController)initWithCoder:(id)coder;
- (id)_timelinesForDateInterval:(id)interval;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WidgetSceneContentViewController

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1DADB4ADC(change);
}

- (_TtC14WidgetRenderer32WidgetSceneContentViewController)initWithCoder:(id)coder
{
  result = sub_1DAED273C();
  __break(1u);
  return result;
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
  sub_1DAE0DDF4(v8);

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
  sub_1DAE0EF98(specifier, sub_1DAE1034C, v7);
}

@end