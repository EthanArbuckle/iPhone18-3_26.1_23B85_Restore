@interface TTRICompletedButton
- (CGSize)intrinsicContentSize;
- (_TtC15RemindersUICore19TTRICompletedButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICore19TTRICompletedButton)initWithFrame:(CGRect)frame;
@end

@implementation TTRICompletedButton

- (_TtC15RemindersUICore19TTRICompletedButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRICompletedButton();
  height = [(TTRIExpandedHitTestButton *)&v9 initWithFrame:x, y, width, height];
  sub_21D25B598();

  return height;
}

- (_TtC15RemindersUICore19TTRICompletedButton)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRICompletedButton();
  coderCopy = coder;
  v5 = [(TTRIExpandedHitTestButton *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D25B598();
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_21D25B2E4();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end