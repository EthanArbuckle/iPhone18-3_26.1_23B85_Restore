@interface TTRICompletedButton
- (CGSize)intrinsicContentSize;
- (_TtC15RemindersUICore19TTRICompletedButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICore19TTRICompletedButton)initWithFrame:(CGRect)a3;
@end

@implementation TTRICompletedButton

- (_TtC15RemindersUICore19TTRICompletedButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRICompletedButton();
  v7 = [(TTRIExpandedHitTestButton *)&v9 initWithFrame:x, y, width, height];
  sub_21D25B598();

  return v7;
}

- (_TtC15RemindersUICore19TTRICompletedButton)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRICompletedButton();
  v4 = a3;
  v5 = [(TTRIExpandedHitTestButton *)&v9 initWithCoder:v4];
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
  v2 = self;
  v3 = sub_21D25B2E4();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end