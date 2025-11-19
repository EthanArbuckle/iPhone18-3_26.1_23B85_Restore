@interface LegacyUsageShutdownScheduler
+ (BOOL)scheduleSystemTaskAndReturnError:(id *)a3;
+ (id)isLegacyUsageDisabledWithContext:(id)a3 error:(id *)a4;
+ (void)deregisterSystemTask;
- (_TtC15ScreenTimeAgent28LegacyUsageShutdownScheduler)init;
@end

@implementation LegacyUsageShutdownScheduler

+ (BOOL)scheduleSystemTaskAndReturnError:(id *)a3
{
  v3 = [objc_opt_self() sharedScheduler];
  v4 = sub_1000A0F74(0, &unk_1001E1160, BGRepeatingSystemTaskRequest_ptr);
  sub_1000CCC14(v3, v4, &off_1001A7AF8);

  return 1;
}

+ (void)deregisterSystemTask
{
  v2 = [objc_opt_self() sharedScheduler];
  sub_1000CCF20(v2);
}

+ (id)isLegacyUsageDisabledWithContext:(id)a3 error:(id *)a4
{
  v5 = objc_opt_self();
  v6 = a3;
  result = [v5 userKnowledgeStore];
  if (result)
  {
    v8 = result;
    v10[3] = sub_1000A0F74(0, &qword_1001E1158, _DKKnowledgeStore_ptr);
    v10[4] = &off_1001A8360;
    v10[0] = v8;
    sub_1000CC3BC(v6, v10);
    sub_1000A462C(v10);
    v9.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;

    return v9.super.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC15ScreenTimeAgent28LegacyUsageShutdownScheduler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LegacyUsageShutdownScheduler *)&v3 init];
}

@end