@interface ManagedSyncOperation
- (ManagedSyncOperation)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedSyncOperation

- (ManagedSyncOperation)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedSyncOperation();
  return [(ManagedSyncOperation *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end