@interface MOClientRequestMO
+ (id)managedObjectWithClientRequest:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 withClientRequest:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOClientRequestMO

+ (id)managedObjectWithClientRequest:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOClientRequestMO alloc] initWithContext:v5];
  [MOClientRequestMO updateManagedObject:v7 withClientRequest:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 withClientRequest:(id)a4 inManagedObjectContext:(id)a5
{
  v6 = a4;
  v10 = a3;
  v7 = [v6 requestIdentifier];
  [v10 setRequestIdentifier:v7];

  v8 = [v6 creationDate];
  [v10 setCreationDate:v8];

  v9 = [v6 requestType];
  [v10 setRequestType:v9];
}

@end