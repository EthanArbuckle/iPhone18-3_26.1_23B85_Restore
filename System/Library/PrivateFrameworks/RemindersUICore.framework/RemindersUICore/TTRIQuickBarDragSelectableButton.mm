@interface TTRIQuickBarDragSelectableButton
- (_TtC15RemindersUICore32TTRIQuickBarDragSelectableButton)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation TTRIQuickBarDragSelectableButton

- (_TtC15RemindersUICore32TTRIQuickBarDragSelectableButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TTRIQuickBarDragSelectableButton();
  v8 = [(TTRIQuickBarDragSelectableButton *)&v10 initWithFrame:x, y, width, height];
  [(TTRIQuickBarDragSelectableButton *)v8 setMultipleTouchEnabled:0];
  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_21D484710();
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession) = 0;
  v4 = self;

  [(TTRIQuickBarDragSelectableButton *)v4 setHighlighted:0];
  [(TTRIQuickBarDragSelectableButton *)v4 setSelected:0];
}

@end