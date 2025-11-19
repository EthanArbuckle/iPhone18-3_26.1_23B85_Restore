@interface TSWPUtilities
+ (BOOL)anyInputIsNonRoman;
@end

@implementation TSWPUtilities

+ (BOOL)anyInputIsNonRoman
{
  if (qword_280A57E68 != -1)
  {
    sub_276F4EE3C();
  }

  return byte_280A57E60;
}

@end