@interface TTRListAppearanceGridView
- (CGSize)badgeSize;
- (CGSize)intrinsicContentSize;
- (NSArray)accessibilityElements;
- (double)minimumGap;
- (void)layoutSubviews;
- (void)setBadgeSize:(CGSize)size;
- (void)setMinimumGap:(double)gap;
@end

@implementation TTRListAppearanceGridView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  sub_21D6DF960();
  v6 = sub_21D6DFAB0(v5);
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)badgeSize
{
  v2 = (self + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setBadgeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = (self + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize);
  swift_beginAccess();
  *v6 = width;
  v6[1] = height;
  [(TTRListAppearanceGridView *)self invalidateIntrinsicContentSize];
}

- (double)minimumGap
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setMinimumGap:(double)gap
{
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = gap;
  [(TTRListAppearanceGridView *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRListAppearanceGridView();
  v2 = v3.receiver;
  [(TTRListAppearanceGridView *)&v3 layoutSubviews];
  sub_21D6DFBB8();
}

- (NSArray)accessibilityElements
{
  swift_beginAccess();
  selfCopy = self;
  v4 = sub_21DBF8E0C();
  sub_21D7F6724(v4);

  v5 = sub_21DBFA5DC();

  return v5;
}

@end