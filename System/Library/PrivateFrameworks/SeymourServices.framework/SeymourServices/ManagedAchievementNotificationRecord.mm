@interface ManagedAchievementNotificationRecord
- (ManagedAchievementNotificationRecord)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedAchievementNotificationRecord

- (ManagedAchievementNotificationRecord)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedAchievementNotificationRecord();
  return [(ManagedAchievementNotificationRecord *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end