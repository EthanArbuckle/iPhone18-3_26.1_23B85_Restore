@interface IndexLabel
- (CGSize)intrinsicContentSize;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (void)layoutSubviews;
- (void)textSizeUpdated:(id)a3;
@end

@implementation IndexLabel

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_20B951B74();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI10IndexLabel_label) firstBaselineAnchor];

  return v2;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B952400();
}

- (void)textSizeUpdated:(id)a3
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI10IndexLabel_label);
  v9 = self;
  v10 = sub_20B951A08();
  [v8 setFont_];

  sub_20B952710();
  (*(v5 + 8))(v7, v4);
}

@end