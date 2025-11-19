@interface TVWorkoutPlanBrickItemCell
- (BOOL)canBecomeFocused;
- (NSArray)preferredFocusEnvironments;
- (void)handleTappedButton:(id)a3;
- (void)prepareForReuse;
@end

@implementation TVWorkoutPlanBrickItemCell

- (BOOL)canBecomeFocused
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonStackView);
  v3 = self;
  v4 = [v2 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v5 = sub_20C13CC74();

  if (v5 >> 62)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonStackView);
  v3 = self;
  v4 = [v2 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v5 = sub_20C13CC74();

  sub_20BEF6C24(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_20BAF45BC();
}

- (void)handleTappedButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BAF5068(v4);
}

@end