@interface ManagedEquipment
- (ManagedEquipment)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedEquipment

- (ManagedEquipment)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedEquipment();
  return [(ManagedEquipment *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end