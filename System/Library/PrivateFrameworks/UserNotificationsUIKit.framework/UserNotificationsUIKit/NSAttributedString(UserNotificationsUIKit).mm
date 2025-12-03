@interface NSAttributedString(UserNotificationsUIKit)
- (BOOL)unui_containsExcessiveLineHeightCharacters;
@end

@implementation NSAttributedString(UserNotificationsUIKit)

- (BOOL)unui_containsExcessiveLineHeightCharacters
{
  string = [self string];
  unui_excessiveLineHeightChars = [MEMORY[0x277D74300] unui_excessiveLineHeightChars];
  v3 = [string rangeOfCharacterFromSet:unui_excessiveLineHeightChars] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

@end