@interface TVSummaryQueueCompleteView
- (NSArray)preferredFocusEnvironments;
@end

@implementation TVSummaryQueueCompleteView

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C151490;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_doneButton);
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_saveButton);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v8 = sub_20C13CC54();

  return v8;
}

@end