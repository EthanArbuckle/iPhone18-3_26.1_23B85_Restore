@interface SensitiveMessageIndicatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC11TelephonyUI29SensitiveMessageIndicatorView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SensitiveMessageIndicatorView

- (void)layoutSubviews
{
  v2 = self;
  sub_1B48DD45C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1B48DD5CC(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC11TelephonyUI29SensitiveMessageIndicatorView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SensitiveMessageIndicatorView();
  v8 = [(MessageIndicatorView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end