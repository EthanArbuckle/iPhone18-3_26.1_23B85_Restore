@interface NLGuidedActivityTypesMigrator
+ (void)migrateGuidedActivityTypesIfNeededWith:(id)a3;
- (NLGuidedActivityTypesMigrator)init;
@end

@implementation NLGuidedActivityTypesMigrator

+ (void)migrateGuidedActivityTypesIfNeededWith:(id)a3
{
  v3 = _Block_copy(a3);
  specialized static GuidedActivityTypesMigrator.migrateGuidedActivityTypesIfNeeded(with:)(partial apply for thunk for @callee_unowned @convention(block) (@unowned FIUIWorkoutActivityType) -> ());
  _Block_release(v3);
}

- (NLGuidedActivityTypesMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GuidedActivityTypesMigrator();
  return [(NLGuidedActivityTypesMigrator *)&v3 init];
}

@end