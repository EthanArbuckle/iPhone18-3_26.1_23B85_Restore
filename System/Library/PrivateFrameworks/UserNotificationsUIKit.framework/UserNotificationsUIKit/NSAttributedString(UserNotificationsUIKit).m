@interface NSAttributedString(UserNotificationsUIKit)
- (BOOL)unui_containsExcessiveLineHeightCharacters;
@end

@implementation NSAttributedString(UserNotificationsUIKit)

- (BOOL)unui_containsExcessiveLineHeightCharacters
{
  v1 = [a1 string];
  v2 = [MEMORY[0x277D74300] unui_excessiveLineHeightChars];
  v3 = [v1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

@end