@interface ManagedTrainerEvent
- (ManagedTrainerEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedTrainerEvent

- (ManagedTrainerEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedTrainerEvent();
  return [(ManagedTrainerEvent *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end