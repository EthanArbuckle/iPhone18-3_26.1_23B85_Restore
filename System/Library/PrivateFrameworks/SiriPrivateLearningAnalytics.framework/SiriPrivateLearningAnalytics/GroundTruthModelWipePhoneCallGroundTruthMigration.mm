@interface GroundTruthModelWipePhoneCallGroundTruthMigration
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (_TtC28SiriPrivateLearningAnalytics49GroundTruthModelWipePhoneCallGroundTruthMigration)init;
@end

@implementation GroundTruthModelWipePhoneCallGroundTruthMigration

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  selfCopy = self;
  sub_222A824DC(instanceCopy, mappingCopy, managerCopy);

  return 1;
}

- (_TtC28SiriPrivateLearningAnalytics49GroundTruthModelWipePhoneCallGroundTruthMigration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GroundTruthModelWipePhoneCallGroundTruthMigration();
  return [(GroundTruthModelWipePhoneCallGroundTruthMigration *)&v3 init];
}

@end