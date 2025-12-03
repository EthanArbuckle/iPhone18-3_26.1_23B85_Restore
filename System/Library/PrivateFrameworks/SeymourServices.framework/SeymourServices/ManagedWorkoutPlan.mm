@interface ManagedWorkoutPlan
- (ManagedWorkoutPlan)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedWorkoutPlan

- (ManagedWorkoutPlan)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedWorkoutPlan();
  return [(ManagedWorkoutPlan *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end