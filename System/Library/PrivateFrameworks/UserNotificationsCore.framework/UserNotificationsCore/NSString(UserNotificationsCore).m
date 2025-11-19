@interface NSString(UserNotificationsCore)
+ (id)unc_stringWithDigestOfSHA1Hash:()UserNotificationsCore;
@end

@implementation NSString(UserNotificationsCore)

+ (id)unc_stringWithDigestOfSHA1Hash:()UserNotificationsCore
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];
  for (i = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v5];
  {
    v7 = *v4++;
    [i appendFormat:@"%02x", v7];
  }

  v8 = [i copy];

  return v8;
}

@end