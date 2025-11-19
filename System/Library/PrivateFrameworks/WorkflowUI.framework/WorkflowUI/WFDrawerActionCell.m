@interface WFDrawerActionCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)layoutSubviews;
@end

@implementation WFDrawerActionCell

- (void)layoutSubviews
{
  v2 = self;
  sub_274847BCC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_27484865C();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_2748491E8();

  swift_unknownObjectRelease();
  sub_27471CF08(0, &qword_28096B138);
  v7 = sub_2749FCF74();

  return v7;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_274849714();

  swift_unknownObjectRelease();
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_27484983C();

  swift_unknownObjectRelease();

  return v10;
}

@end