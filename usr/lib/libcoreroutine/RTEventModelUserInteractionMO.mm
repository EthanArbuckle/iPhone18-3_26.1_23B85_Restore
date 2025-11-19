@interface RTEventModelUserInteractionMO
+ (id)managedObjectWithFeedback:(id)a3 interaction:(id)a4 locationOfInterestIdentifier:(id)a5 date:(id)a6 inManagedObjectContext:(id)a7;
@end

@implementation RTEventModelUserInteractionMO

+ (id)managedObjectWithFeedback:(id)a3 interaction:(id)a4 locationOfInterestIdentifier:(id)a5 date:(id)a6 inManagedObjectContext:(id)a7
{
  v11 = MEMORY[0x277CBE408];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[(NSManagedObject *)RTEventModelUserInteractionMO];
  v18 = [v11 insertNewObjectForEntityForName:v17 inManagedObjectContext:v12];

  [v18 setFeedback:v16];
  [v18 setInteraction:v15];

  [v18 setLocationOfInterestIdentifier:v14];
  [v18 setDate:v13];

  return v18;
}

@end