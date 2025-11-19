@interface SecondPassConfig
- (BOOL)useEndpointer;
- (BOOL)waitForFinal;
- (NSString)description;
- (SecondPassConfig)init;
- (void)setUseEndpointer:(BOOL)a3;
- (void)setWaitForFinal:(BOOL)a3;
@end

@implementation SecondPassConfig

- (BOOL)waitForFinal
{
  v3 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWaitForFinal:(BOOL)a3
{
  v5 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)useEndpointer
{
  v3 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUseEndpointer:(BOOL)a3
{
  v5 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (SecondPassConfig)init
{
  *(&self->super.isa + OBJC_IVAR___SecondPassConfig_waitForFinal) = 1;
  *(&self->super.isa + OBJC_IVAR___SecondPassConfig_useEndpointer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecondPassConfig();
  return [(SecondPassConfig *)&v3 init];
}

- (NSString)description
{
  v3 = sub_27237788C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = self;
  sub_272376B2C();
  type metadata accessor for SecondPassConfig();
  sub_27227DA80(&qword_280882260, v9, type metadata accessor for SecondPassConfig);
  v10 = sub_272376B1C();
  v12 = v11;

  sub_27237787C();
  sub_27237784C();
  if (v13)
  {
    sub_2721F05C8(v10, v12);

    v14 = sub_2723777FC();

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

@end