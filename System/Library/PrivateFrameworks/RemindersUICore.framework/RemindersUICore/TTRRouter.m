@interface TTRRouter
- (_TtC15RemindersUICore9TTRRouter)init;
@end

@implementation TTRRouter

- (_TtC15RemindersUICore9TTRRouter)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore9TTRRouter_childRouters) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRRouter();
  return [(TTRRouter *)&v3 init];
}

@end