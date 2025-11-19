@interface NSString
@end

@implementation NSString

void __57__NSString_SBUIEmojiAdditions__sbui_rangesOfEmojiTokens___block_invoke(void *a1, int a2, NSRange range)
{
  if (range.location != -1)
  {
    length = range.length;
    if (range.length != -1)
    {
      location = range.location;
      v6 = *(*(a1[4] + 8) + 40);
      v7 = NSStringFromRange(range);
      [v6 addObject:v7];

      v8 = *(*(a1[5] + 8) + 40);
      if (v8)
      {
        v11.location = *(*(a1[6] + 8) + 40) + *(*(a1[6] + 8) + 32);
        v11.length = location - v11.location;
        v9 = NSStringFromRange(v11);
        [v8 addObject:v9];

        v10 = *(a1[6] + 8);
        *(v10 + 32) = location;
        *(v10 + 40) = length;
      }
    }
  }
}

@end