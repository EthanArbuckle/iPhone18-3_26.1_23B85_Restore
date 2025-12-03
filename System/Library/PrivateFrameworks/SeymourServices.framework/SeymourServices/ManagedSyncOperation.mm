@interface ManagedSyncOperation
- (ManagedSyncOperation)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedSyncOperation

- (ManagedSyncOperation)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedSyncOperation();
  return [(ManagedSyncOperation *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end