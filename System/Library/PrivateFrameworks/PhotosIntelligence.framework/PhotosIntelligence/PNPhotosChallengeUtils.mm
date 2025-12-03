@interface PNPhotosChallengeUtils
+ (id)titleWithoutFormattingForTitle:(id)title;
@end

@implementation PNPhotosChallengeUtils

+ (id)titleWithoutFormattingForTitle:(id)title
{
  v3 = [title stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F46CD000];

  return v4;
}

@end