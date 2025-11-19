@interface GroundTruthModelV3toV4CoreDataMigration
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
@end

@implementation GroundTruthModelV3toV4CoreDataMigration

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_222AF4548(v9, v10, v11);

  return 1;
}

@end