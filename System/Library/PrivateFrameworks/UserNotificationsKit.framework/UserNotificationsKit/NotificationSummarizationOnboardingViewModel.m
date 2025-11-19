@interface NotificationSummarizationOnboardingViewModel
- (BOOL)isEqual:(id)a3;
- (_TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel)init;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)saveWithOutcome:(unint64_t)a3;
@end

@implementation NotificationSummarizationOnboardingViewModel

- (int64_t)hash
{
  v2 = self;
  v3 = sub_270A6B898();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_270A6BEB8(v8);

  sub_270A4E644(v8, &qword_28083FCB0);
  return v6 & 1;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_270A6C04C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_270A89560();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_270A6C2C8(v4);
}

- (void)saveWithOutcome:(unint64_t)a3
{
  v3 = a3 != 0;
  v4 = self;
  sub_270A6D9D4(v3);
}

- (_TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end