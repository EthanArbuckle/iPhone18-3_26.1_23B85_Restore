@interface NotificationSummarizationOnboardingViewModel
- (BOOL)isEqual:(id)equal;
- (_TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)saveWithOutcome:(unint64_t)outcome;
@end

@implementation NotificationSummarizationOnboardingViewModel

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_270A6B898();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_270A6BEB8(v8);

  sub_270A4E644(v8, &qword_28083FCB0);
  return v6 & 1;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_270A6C04C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_270A89560();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_270A6C2C8(coderCopy);
}

- (void)saveWithOutcome:(unint64_t)outcome
{
  v3 = outcome != 0;
  selfCopy = self;
  sub_270A6D9D4(v3);
}

- (_TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end