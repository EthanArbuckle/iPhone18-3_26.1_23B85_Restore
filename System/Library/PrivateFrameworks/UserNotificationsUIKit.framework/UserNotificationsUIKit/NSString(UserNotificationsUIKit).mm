@interface NSString(UserNotificationsUIKit)
- (BOOL)unui_containsExcessiveLineHeightCharacters;
@end

@implementation NSString(UserNotificationsUIKit)

- (BOOL)unui_containsExcessiveLineHeightCharacters
{
  unui_excessiveLineHeightChars = [MEMORY[0x277D74300] unui_excessiveLineHeightChars];
  v3 = [self rangeOfCharacterFromSet:unui_excessiveLineHeightChars] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

@end