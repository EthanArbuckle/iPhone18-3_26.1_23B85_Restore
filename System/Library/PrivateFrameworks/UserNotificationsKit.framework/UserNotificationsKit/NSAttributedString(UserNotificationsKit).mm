@interface NSAttributedString(UserNotificationsKit)
+ (id)nc_safeAttributedStringWithString:()UserNotificationsKit;
@end

@implementation NSAttributedString(UserNotificationsKit)

+ (id)nc_safeAttributedStringWithString:()UserNotificationsKit
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA898];
    v4 = a3;
    v5 = [[v3 alloc] initWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end