@interface NSString(UserNotificationsKit)
- (__CFString)nc_stringByRemovingCharactersFromSet:()UserNotificationsKit;
@end

@implementation NSString(UserNotificationsKit)

- (__CFString)nc_stringByRemovingCharactersFromSet:()UserNotificationsKit
{
  v4 = a3;
  v5 = [(__CFString *)self length];
  if (v5 << 32 && (v11.length = v5, v11.location = 0, CFStringFindCharacterFromSet(self, v4, v11, 0, 0)))
  {
    selfCopy = [(__CFString *)self mutableCopy];
    v7 = [(__CFString *)selfCopy length];
    if (v7 - 1 >= 0)
    {
      v8 = v7;
      do
      {
        if ([v4 characterIsMember:{-[__CFString characterAtIndex:](selfCopy, "characterAtIndex:", --v8)}])
        {
          [(__CFString *)selfCopy deleteCharactersInRange:v8, 1];
        }
      }

      while (v8 > 0);
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end