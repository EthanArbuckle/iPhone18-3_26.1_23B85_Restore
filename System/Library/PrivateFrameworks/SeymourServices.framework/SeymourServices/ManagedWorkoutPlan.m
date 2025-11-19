@interface ManagedWorkoutPlan
- (ManagedWorkoutPlan)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedWorkoutPlan

- (ManagedWorkoutPlan)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedWorkoutPlan();
  return [(ManagedWorkoutPlan *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end