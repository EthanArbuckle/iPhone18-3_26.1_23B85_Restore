@interface PBFLegacyMigrationEditingSceneViewController
- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 additionalInfo:(id)a7;
- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 exnihiloPathAssertion:(id)a5 replacing:(id)a6;
@end

@implementation PBFLegacyMigrationEditingSceneViewController

- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 exnihiloPathAssertion:(id)a5 replacing:(id)a6
{
  type metadata accessor for ExnihiloPathAssertion();
  v11 = swift_allocObject();
  *(v11 + 2) = a5;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_exnihiloPathAssertion) = v11;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_posterPairToReplace) = a6;
  v14.receiver = self;
  v14.super_class = type metadata accessor for LegacyMigrationEditingSceneViewController();
  swift_unknownObjectRetain();
  v12 = a6;
  return [(PREditingSceneViewController *)&v14 initWithProvider:a3 contents:a4 configurableOptions:0 configuredProperties:0 additionalInfo:0];
}

- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 additionalInfo:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end