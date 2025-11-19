@interface TTRNoAnimationContainerGridView
- (_TtC15RemindersUICore31TTRNoAnimationContainerGridView)initWithArrangedSubviewRows:(id)a3;
- (void)layoutSubviews;
@end

@implementation TTRNoAnimationContainerGridView

- (void)layoutSubviews
{
  v2 = self;
  sub_21D8EE40C();
}

- (_TtC15RemindersUICore31TTRNoAnimationContainerGridView)initWithArrangedSubviewRows:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled) = 0;
    v3 = sub_21DBFA5DC();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled) = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRNoAnimationContainerGridView();
  v5 = [(NUIContainerGridView *)&v7 initWithArrangedSubviewRows:v3];

  return v5;
}

@end