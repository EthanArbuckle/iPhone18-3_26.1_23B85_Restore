@interface RunloopThread.Thread
- (_TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread)init;
- (void)main;
@end

@implementation RunloopThread.Thread

- (_TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread)init
{
  v7 = *MEMORY[0x1E69E9840];
  *(&self->super.super.isa + OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_currentRunloop) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_startedCallback);
  *v3 = 0;
  v3[1] = 0;
  memset(&context, 0, sizeof(context));
  *(&self->super.super.isa + OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_runloopSource) = CFRunLoopSourceCreate(0, 0, &context);
  v5.receiver = self;
  v5.super_class = type metadata accessor for RunloopThread.Thread();
  return [(RunloopThread.Thread *)&v5 init];
}

- (void)main
{
  selfCopy = self;
  sub_1AF719D88();
}

@end