@interface WidgetSceneContentViewController
- (_TtC14WidgetRenderer32WidgetSceneContentViewController)initWithCoder:(id)a3;
- (id)_timelinesForDateInterval:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WidgetSceneContentViewController

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1DADB4ADC(a3);
}

- (_TtC14WidgetRenderer32WidgetSceneContentViewController)initWithCoder:(id)a3
{
  result = sub_1DAED273C();
  __break(1u);
  return result;
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
  sub_1DAE0DDF4(v8);

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
  sub_1DAE0EF98(a3, sub_1DAE1034C, v7);
}

@end