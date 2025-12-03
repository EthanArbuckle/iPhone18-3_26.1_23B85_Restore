@interface RoundedButton
- (BOOL)isHighlighted;
- (UIColor)backgroundColor;
- (void)handleTouchDown:(id)down;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)textSizeChanged:(id)changed;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoundedButton

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoundedButton();
  backgroundColor = [(RoundedButton *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedButton();
  colorCopy = color;
  v5 = v8.receiver;
  [(RoundedButton *)&v8 setBackgroundColor:colorCopy];
  if ([v5 tintAdjustmentMode] == 2)
  {
  }

  else
  {
    backgroundColor = [v5 backgroundColor];

    v7 = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_undimmedBackgroundColor];
    *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_undimmedBackgroundColor] = backgroundColor;

    v5 = v7;
  }
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RoundedButton();
  return [(RoundedButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_20BD4E6E4(highlighted);
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  if (title)
  {
    sub_20C13C954();
    selfCopy = self;
    v7 = sub_20C13C914();
  }

  else
  {
    selfCopy2 = self;
    v7 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for RoundedButton();
  [(RoundedButton *)&v9 setTitle:v7 forState:state];

  sub_20BD4F5AC();
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_20BD4EC48();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BD4EE1C(change);
}

- (void)textSizeChanged:(id)changed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (changed)
  {
    sub_20C1325E4();
    v8 = sub_20C132614();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_20C132614();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastFont);
  v11 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastSymbolScale);
  v12 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI13RoundedButton_lastSymbolScale);
  selfCopy = self;
  v14 = v10;
  sub_20BD4F054(v10, v11, v12, 0);

  sub_20B8E36F8(v7);
}

- (void)handleTouchDown:(id)down
{
  v4 = objc_opt_self();
  selfCopy = self;
  v6 = [v4 scheduledTimerWithTimeInterval:selfCopy target:sel_handleTimer_ selector:0 userInfo:0 repeats:0.12];
  v7 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13RoundedButton_highlightTimer);
  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13RoundedButton_highlightTimer) = v6;
}

@end