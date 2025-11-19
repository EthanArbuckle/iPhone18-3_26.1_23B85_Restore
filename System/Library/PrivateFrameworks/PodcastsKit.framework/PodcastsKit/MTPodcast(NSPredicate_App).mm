@interface MTPodcast(NSPredicate_App)
+ (id)predicateForSubscriptionSyncType:()NSPredicate_App;
+ (id)predicateForSyncablePodcastsForSyncType:()NSPredicate_App;
@end

@implementation MTPodcast(NSPredicate_App)

+ (id)predicateForSyncablePodcastsForSyncType:()NSPredicate_App
{
  v4 = [a1 predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v5 = [MEMORY[0x277D3DB38] predicateForSubscriptionSyncType:a3];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForSubscriptionSyncType:()NSPredicate_App
{
  v4 = MEMORY[0x277CCAC30];
  v5 = *MEMORY[0x277D3DE48];
  v6 = NSPersistentStringForMTDisplayType();
  v7 = NSPersistentStringForMTDisplayType();
  v8 = [v4 predicateWithFormat:@"(%K == %@) || (%K == %@) || (%K == NULL)", v5, v6, v5, v7, v5];

  if (a3 == 1)
  {
    v9 = MEMORY[0x277CCAC30];
    v10 = NSPersistentStringForMTDisplayType();
    v11 = [v9 predicateWithFormat:@"%K == %@", v5, v10];
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

@end