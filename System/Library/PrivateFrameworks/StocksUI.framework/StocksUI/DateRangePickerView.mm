@interface DateRangePickerView
- (NSString)accessibilityValue;
- (_TtC8StocksUI19DateRangePickerView)initWithCoder:(id)coder;
- (_TtC8StocksUI19DateRangePickerView)initWithFrame:(CGRect)frame;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DateRangePickerView

- (_TtC8StocksUI19DateRangePickerView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_2206D2188();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2206D23EC(change);
}

- (_TtC8StocksUI19DateRangePickerView)initWithFrame:(CGRect)frame
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
  accessibilityTraits = [(DateRangePickerView *)&v6 accessibilityTraits];
  v4 = *MEMORY[0x277D76538];

  return v4 | accessibilityTraits;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
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
  selfCopy = self;
  sub_2206D2954();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_2206D2D5C();
}

@end