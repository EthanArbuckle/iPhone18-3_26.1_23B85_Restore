@interface ManagedAchievementNotificationRecord
- (ManagedAchievementNotificationRecord)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedAchievementNotificationRecord

- (ManagedAchievementNotificationRecord)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedAchievementNotificationRecord();
  return [(ManagedAchievementNotificationRecord *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end