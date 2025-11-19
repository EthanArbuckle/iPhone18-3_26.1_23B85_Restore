@interface UNNotification(Bridging)
+ (id)notificationWithRequest:()Bridging;
@end

@implementation UNNotification(Bridging)

+ (id)notificationWithRequest:()Bridging
{
  v3 = MEMORY[0x1E6983240];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v3 notificationWithRequest:v4 date:v5 sourceIdentifier:&stru_1F3DC89F8 intentIdentifiers:MEMORY[0x1E695E0F0]];

  return v6;
}

@end