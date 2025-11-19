@interface NSURLQueryItem(TelephonyUtilities)
+ (__CFString)queryItemValueForHandleType:()TelephonyUtilities;
+ (id)queryItemForHandleType:()TelephonyUtilities;
@end

@implementation NSURLQueryItem(TelephonyUtilities)

+ (id)queryItemForHandleType:()TelephonyUtilities
{
  v1 = MEMORY[0x1E696AF60];
  v2 = [a1 queryItemValueForHandleType:?];
  v3 = [v1 queryItemWithName:@"handleType" value:v2];

  return v3;
}

+ (__CFString)queryItemValueForHandleType:()TelephonyUtilities
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E74263D8)[a3 - 1];
  }

  return v4;
}

@end