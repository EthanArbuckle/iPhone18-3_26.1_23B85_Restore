@interface NSData(WLMessage)
- (id)wl_subdataWithRangeExcludingTrailingCrnl:()WLMessage;
@end

@implementation NSData(WLMessage)

- (id)wl_subdataWithRangeExcludingTrailingCrnl:()WLMessage
{
  if (wl_subdataWithRangeExcludingTrailingCrnl__onceToken != -1)
  {
    [NSData(WLMessage) wl_subdataWithRangeExcludingTrailingCrnl:];
  }

  v7 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = [a1 subdataWithRange:{v7 + a3, 2}];
    if ([v8 isEqualToData:wl_subdataWithRangeExcludingTrailingCrnl__crlfData])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      _WLLog();

      a4 -= 2;
    }
  }

  if (a4)
  {
    v9 = [a1 subdataWithRange:{a3, a4}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end