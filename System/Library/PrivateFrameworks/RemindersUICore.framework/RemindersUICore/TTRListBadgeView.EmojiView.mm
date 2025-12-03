@interface TTRListBadgeView.EmojiView
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithCoder:(id)coder;
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation TTRListBadgeView.EmojiView

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRListBadgeView.EmojiView();
  height = [(TTRListBadgeView.EmojiView *)&v9 initWithFrame:x, y, width, height];
  [(TTRListBadgeView.EmojiView *)height setTextAlignment:1];
  return height;
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithCoder:(id)coder
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  v4 = UIEdgeInsetsInsetRect_1(rect.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TTRListBadgeView.EmojiView();
  selfCopy = self;
  [(TTRListBadgeView.EmojiView *)&v12 drawTextInRect:v4, v6, v8, v10];
}

@end