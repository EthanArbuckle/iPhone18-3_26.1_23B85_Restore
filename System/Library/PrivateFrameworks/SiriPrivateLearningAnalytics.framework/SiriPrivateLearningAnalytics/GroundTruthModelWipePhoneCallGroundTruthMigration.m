@interface GroundTruthModelWipePhoneCallGroundTruthMigration
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (_TtC28SiriPrivateLearningAnalytics49GroundTruthModelWipePhoneCallGroundTruthMigration)init;
@end

@implementation GroundTruthModelWipePhoneCallGroundTruthMigration

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_222A824DC(v9, v10, v11);

  return 1;
}

- (_TtC28SiriPrivateLearningAnalytics49GroundTruthModelWipePhoneCallGroundTruthMigration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GroundTruthModelWipePhoneCallGroundTruthMigration();
  return [(GroundTruthModelWipePhoneCallGroundTruthMigration *)&v3 init];
}

@end