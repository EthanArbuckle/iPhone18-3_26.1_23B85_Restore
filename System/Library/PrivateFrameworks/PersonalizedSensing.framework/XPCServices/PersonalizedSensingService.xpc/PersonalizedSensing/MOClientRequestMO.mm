@interface MOClientRequestMO
+ (id)managedObjectWithClientRequest:(id)request inManagedObjectContext:(id)context;
+ (void)updateManagedObject:(id)object withClientRequest:(id)request inManagedObjectContext:(id)context;
@end

@implementation MOClientRequestMO

+ (id)managedObjectWithClientRequest:(id)request inManagedObjectContext:(id)context
{
  contextCopy = context;
  requestCopy = request;
  v7 = [[MOClientRequestMO alloc] initWithContext:contextCopy];
  [MOClientRequestMO updateManagedObject:v7 withClientRequest:requestCopy inManagedObjectContext:contextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object withClientRequest:(id)request inManagedObjectContext:(id)context
{
  requestCopy = request;
  objectCopy = object;
  requestIdentifier = [requestCopy requestIdentifier];
  [objectCopy setRequestIdentifier:requestIdentifier];

  creationDate = [requestCopy creationDate];
  [objectCopy setCreationDate:creationDate];

  requestType = [requestCopy requestType];
  [objectCopy setRequestType:requestType];
}

@end