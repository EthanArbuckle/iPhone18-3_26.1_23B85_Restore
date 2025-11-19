@interface WeekdayButton
- (_TtC9SeymourUI13WeekdayButton)initWithCoder:(id)a3;
- (void)buttonTapped:(id)a3;
- (void)updateConfiguration;
@end

@implementation WeekdayButton

- (_TtC9SeymourUI13WeekdayButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_onTap);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider;
  sub_20BD05F08(v11);
  v6 = v11[3];
  *(v5 + 2) = v11[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v11[4];
  v7 = v12;
  v8 = v11[1];
  *v5 = v11[0];
  *(v5 + 1) = v8;
  *(v5 + 10) = v7;
  *(v5 + 11) = 0x4044000000000000;
  v9 = self + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_item;
  *v9 = 0;
  *(v9 + 4) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  v2 = self;
  sub_20BD05100();
}

- (void)buttonTapped:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_item);
  if (v3)
  {
    v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_onTap);
    if (v4)
    {
      v5 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_item);
      v6 = self;
      v7 = v3;
      sub_20B584050(v4);
      v4(v7, v5);

      sub_20B583ECC(v4);
    }
  }
}

@end