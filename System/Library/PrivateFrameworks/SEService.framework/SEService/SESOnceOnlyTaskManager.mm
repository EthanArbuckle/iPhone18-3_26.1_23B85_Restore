@interface SESOnceOnlyTaskManager
- (_TtC9SEService22SESOnceOnlyTaskManager)init;
@end

@implementation SESOnceOnlyTaskManager

- (_TtC9SEService22SESOnceOnlyTaskManager)init
{
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v6 = ObjectType;
    if (sub_1C7C7D6D4())
    {
      sub_1C7C23E10(MEMORY[0x1E69E7CC0]);
      v4 = v7;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }

    ObjectType = v6;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.isa + OBJC_IVAR____TtC9SEService22SESOnceOnlyTaskManager_tasks) = v4;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(SESOnceOnlyTaskManager *)&v8 init];
}

@end