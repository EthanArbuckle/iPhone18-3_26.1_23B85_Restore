@interface TTRIQuickBarDragSelectableButton
- (_TtC15RemindersUICore32TTRIQuickBarDragSelectableButton)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation TTRIQuickBarDragSelectableButton

- (_TtC15RemindersUICore32TTRIQuickBarDragSelectableButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TTRIQuickBarDragSelectableButton();
  height = [(TTRIQuickBarDragSelectableButton *)&v10 initWithFrame:x, y, width, height];
  [(TTRIQuickBarDragSelectableButton *)height setMultipleTouchEnabled:0];
  return height;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_21D484710();
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession) = 0;
  selfCopy = self;

  [(TTRIQuickBarDragSelectableButton *)selfCopy setHighlighted:0];
  [(TTRIQuickBarDragSelectableButton *)selfCopy setSelected:0];
}

@end