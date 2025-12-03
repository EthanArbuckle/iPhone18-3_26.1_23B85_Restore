@interface WFDrawerActionCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)layoutSubviews;
@end

@implementation WFDrawerActionCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_274847BCC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_27484865C();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2748491E8();

  swift_unknownObjectRelease();
  sub_27471CF08(0, &qword_28096B138);
  v7 = sub_2749FCF74();

  return v7;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_274849714();

  swift_unknownObjectRelease();
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_27484983C();

  swift_unknownObjectRelease();

  return v10;
}

@end