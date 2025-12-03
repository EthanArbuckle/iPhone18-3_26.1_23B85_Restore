@interface MOContextActivityMetaDataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOContextActivityMetaDataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOContextActivityMetaDataMO alloc] initWithContext:contextCopy];

  activityDuration = [objectCopy activityDuration];
  [(MOContextActivityMetaDataMO *)v7 setActivityDuration:activityDuration];

  activityType = [objectCopy activityType];

  [(MOContextActivityMetaDataMO *)v7 setActivityType:activityType];

  return v7;
}

@end