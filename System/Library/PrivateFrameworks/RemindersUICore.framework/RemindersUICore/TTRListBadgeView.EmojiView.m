@interface TTRListBadgeView.EmojiView
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithCoder:(id)a3;
- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation TTRListBadgeView.EmojiView

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRListBadgeView.EmojiView();
  v7 = [(TTRListBadgeView.EmojiView *)&v9 initWithFrame:x, y, width, height];
  [(TTRListBadgeView.EmojiView *)v7 setTextAlignment:1];
  return v7;
}

- (_TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A49EmojiView)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  v4 = UIEdgeInsetsInsetRect_1(a3.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for TTRListBadgeView.EmojiView();
  v11 = self;
  [(TTRListBadgeView.EmojiView *)&v12 drawTextInRect:v4, v6, v8, v10];
}

@end