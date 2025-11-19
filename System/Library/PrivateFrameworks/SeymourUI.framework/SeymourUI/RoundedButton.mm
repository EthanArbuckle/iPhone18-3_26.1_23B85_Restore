@interface RoundedButton
- (BOOL)isHighlighted;
- (UIColor)backgroundColor;
- (void)handleTouchDown:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)textSizeChanged:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoundedButton

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoundedButton();
  v2 = [(RoundedButton *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedButton();
  v4 = a3;
  v5 = v8.receiver;
  [(RoundedButton *)&v8 setBackgroundColor:v4];
  if ([v5 tintAdjustmentMode] == 2)
  {
  }

  else
  {
    v6 = [v5 backgroundColor];

    v7 = *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_undimmedBackgroundColor];
    *&v5[OBJC_IVAR____TtC9SeymourUI13RoundedButton_undimmedBackgroundColor] = v6;

    v5 = v7;
  }
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RoundedButton();
  return [(RoundedButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_20BD4E6E4(a3);
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  if (a3)
  {
    sub_20C13C954();
    v6 = self;
    v7 = sub_20C13C914();
  }

  else
  {
    v8 = self;
    v7 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for RoundedButton();
  [(RoundedButton *)&v9 setTitle:v7 forState:a4];

  sub_20BD4F5AC();
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_20BD4EC48();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BD4EE1C(a3);
}

- (void)textSizeChanged:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (a3)
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
  v13 = self;
  v14 = v10;
  sub_20BD4F054(v10, v11, v12, 0);

  sub_20B8E36F8(v7);
}

- (void)handleTouchDown:(id)a3
{
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 scheduledTimerWithTimeInterval:v5 target:sel_handleTimer_ selector:0 userInfo:0 repeats:0.12];
  v7 = *(&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13RoundedButton_highlightTimer);
  *(&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI13RoundedButton_highlightTimer) = v6;
}

@end