@interface NLGuidedActivityTypesMigrator
+ (void)migrateGuidedActivityTypesIfNeededWith:(id)with;
- (NLGuidedActivityTypesMigrator)init;
@end

@implementation NLGuidedActivityTypesMigrator

+ (void)migrateGuidedActivityTypesIfNeededWith:(id)with
{
  v3 = _Block_copy(with);
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