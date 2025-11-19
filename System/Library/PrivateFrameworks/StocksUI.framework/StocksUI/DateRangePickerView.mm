@interface DateRangePickerView
- (NSString)accessibilityValue;
- (_TtC8StocksUI19DateRangePickerView)initWithCoder:(id)a3;
- (_TtC8StocksUI19DateRangePickerView)initWithFrame:(CGRect)a3;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DateRangePickerView

- (_TtC8StocksUI19DateRangePickerView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange);
  *v3 = 0;
  v3[1] = 0;
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2206D2188();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2206D23EC(a3);
}

- (_TtC8StocksUI19DateRangePickerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DateRangePickerView();
  v2 = v6.receiver;
  v3 = [(DateRangePickerView *)&v6 accessibilityTraits];
  v4 = *MEMORY[0x277D76538];

  return v4 | v3;
}

- (NSString)accessibilityValue
{
  v2 = self;
  sub_2206D27F8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_22089132C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_2206D2954();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_2206D2D5C();
}

@end