@interface PBFLegacyMigrationEditingSceneViewController
- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties additionalInfo:(id)info;
- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)provider contents:(id)contents exnihiloPathAssertion:(id)assertion replacing:(id)replacing;
@end

@implementation PBFLegacyMigrationEditingSceneViewController

- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)provider contents:(id)contents exnihiloPathAssertion:(id)assertion replacing:(id)replacing
{
  type metadata accessor for ExnihiloPathAssertion();
  v11 = swift_allocObject();
  *(v11 + 2) = assertion;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_exnihiloPathAssertion) = v11;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_posterPairToReplace) = replacing;
  v14.receiver = self;
  v14.super_class = type metadata accessor for LegacyMigrationEditingSceneViewController();
  swift_unknownObjectRetain();
  replacingCopy = replacing;
  return [(PREditingSceneViewController *)&v14 initWithProvider:provider contents:contents configurableOptions:0 configuredProperties:0 additionalInfo:0];
}

- (PBFLegacyMigrationEditingSceneViewController)initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties additionalInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end