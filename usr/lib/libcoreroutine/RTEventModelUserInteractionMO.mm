@interface RTEventModelUserInteractionMO
+ (id)managedObjectWithFeedback:(id)feedback interaction:(id)interaction locationOfInterestIdentifier:(id)identifier date:(id)date inManagedObjectContext:(id)context;
@end

@implementation RTEventModelUserInteractionMO

+ (id)managedObjectWithFeedback:(id)feedback interaction:(id)interaction locationOfInterestIdentifier:(id)identifier date:(id)date inManagedObjectContext:(id)context
{
  v11 = MEMORY[0x277CBE408];
  contextCopy = context;
  dateCopy = date;
  identifierCopy = identifier;
  interactionCopy = interaction;
  feedbackCopy = feedback;
  v17 = +[(NSManagedObject *)RTEventModelUserInteractionMO];
  v18 = [v11 insertNewObjectForEntityForName:v17 inManagedObjectContext:contextCopy];

  [v18 setFeedback:feedbackCopy];
  [v18 setInteraction:interactionCopy];

  [v18 setLocationOfInterestIdentifier:identifierCopy];
  [v18 setDate:dateCopy];

  return v18;
}

@end