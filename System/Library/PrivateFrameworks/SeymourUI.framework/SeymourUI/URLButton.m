@interface URLButton
- (void)layoutSubviews;
- (void)textSizeChanged:(id)a3;
- (void)tintColorDidChange;
@end

@implementation URLButton

- (void)layoutSubviews
{
  v2 = self;
  sub_20B7F2C44();
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_20B7F2EE0();
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

  v10 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI9URLButton_lastFont);
  v11 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI9URLButton_lastSymbolScale);
  v12 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI9URLButton_lastSymbolScale);
  v13 = self;
  v14 = v10;
  sub_20B7F30D8(v10, v11, v12);

  sub_20B520158(v7, &qword_27C765E10);
}

@end