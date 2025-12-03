@interface ManagedTrainerEvent
- (ManagedTrainerEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedTrainerEvent

- (ManagedTrainerEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedTrainerEvent();
  return [(ManagedTrainerEvent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end