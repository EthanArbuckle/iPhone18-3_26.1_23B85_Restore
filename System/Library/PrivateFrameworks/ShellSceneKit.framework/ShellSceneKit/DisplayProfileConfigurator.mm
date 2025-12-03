@interface DisplayProfileConfigurator
- (_TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator)init;
- (void)deriveWithIdentifier:(id)identifier;
- (void)setMainLike:(BOOL)like;
- (void)setPriorityLevel:(unint64_t)level sceneSpecification:(id)specification;
@end

@implementation DisplayProfileConfigurator

- (_TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_265FDB340(MEMORY[0x277D84F90]);
  v5 = self + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration;
  *v5 = 0x4000;
  *(v5 + 1) = v4;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 16) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(DisplayProfileConfigurator *)&v7 init];
}

- (void)setPriorityLevel:(unint64_t)level sceneSpecification:(id)specification
{
  specificationCopy = specification;
  selfCopy = self;
  sub_265FDA070(level, specificationCopy);
}

- (void)deriveWithIdentifier:(id)identifier
{
  v4 = sub_265FEC0E0();
  v5 = self + OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration;
  v6 = self->configuration[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 24];
  v7 = *&self->configuration[OBJC_IVAR____TtC13ShellSceneKitP33_A1DCD04D86D5AECADE6EA65E0805B71C26DisplayProfileConfigurator_configuration + 16] != 0;
  *(v5 + 2) = v4;
  *(v5 + 3) = v8;
  v5[32] = v7 & v6;
}

- (void)setMainLike:(BOOL)like
{
  selfCopy = self;
  sub_265FDA36C(like);
}

@end