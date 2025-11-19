@interface CADisplayQueue
+ (OS_dispatch_queue_serial)queue;
- (_TtC13ShellSceneKit14CADisplayQueue)init;
@end

@implementation CADisplayQueue

+ (OS_dispatch_queue_serial)queue
{
  if (qword_2800547D8 != -1)
  {
    swift_once();
  }

  v3 = qword_280055078;

  return v3;
}

- (_TtC13ShellSceneKit14CADisplayQueue)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CADisplayQueue *)&v3 init];
}

@end