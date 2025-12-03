@interface SummaryContentSummaryView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation SummaryContentSummaryView

- (void)updateConstraints
{
  selfCopy = self;
  sub_20B8041AC();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_20B8043A8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SummaryContentSummaryView();
  v2 = v5.receiver;
  [(SummaryContentSummaryView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_bookmarkButton;
  layer = [*&v2[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_bookmarkButton] layer];
  [*&v2[v3] bounds];
  [layer setCornerRadius_];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20B8048BC(change);
}

@end