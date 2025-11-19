@interface MOContextActivityMetaDataMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOContextActivityMetaDataMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextActivityMetaDataMO alloc] initWithContext:v5];

  v8 = [v6 activityDuration];
  [(MOContextActivityMetaDataMO *)v7 setActivityDuration:v8];

  v9 = [v6 activityType];

  [(MOContextActivityMetaDataMO *)v7 setActivityType:v9];

  return v7;
}

@end