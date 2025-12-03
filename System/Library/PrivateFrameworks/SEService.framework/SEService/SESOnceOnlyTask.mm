@interface SESOnceOnlyTask
- (_TtC9SEService15SESOnceOnlyTask)init;
- (_TtC9SEService15SESOnceOnlyTask)initWithIdentifier:(id)identifier task:(id)task;
@end

@implementation SESOnceOnlyTask

- (_TtC9SEService15SESOnceOnlyTask)initWithIdentifier:(id)identifier task:(id)task
{
  ObjectType = swift_getObjectType();
  v7 = _Block_copy(task);
  v8 = sub_1C7C7D304();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = (self + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier);
  *v12 = v8;
  v12[1] = v10;
  v13 = (self + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_task);
  *v13 = sub_1C7C24134;
  v13[1] = v11;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(SESOnceOnlyTask *)&v15 init];
}

- (_TtC9SEService15SESOnceOnlyTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end