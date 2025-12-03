@interface TTRIQuickBarQuickPickButton
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation TTRIQuickBarQuickPickButton

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_21D4B1030(highlighted);
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIQuickBarQuickPickButton *)&v5 setSelected:selectedCopy];
  v4[OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty] = 1;
  [v4 setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21D4B1340();
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end