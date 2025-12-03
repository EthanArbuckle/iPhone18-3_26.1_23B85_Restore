@interface GroundTruthModelV3toV4CoreDataMigration
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation GroundTruthModelV3toV4CoreDataMigration

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  selfCopy = self;
  sub_222AF4548(instanceCopy, mappingCopy, managerCopy);

  return 1;
}

@end