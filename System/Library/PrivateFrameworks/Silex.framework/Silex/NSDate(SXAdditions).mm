@interface NSDate(SXAdditions)
- (BOOL)isExpired;
@end

@implementation NSDate(SXAdditions)

- (BOOL)isExpired
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 compare:a1] == 1;

  return v3;
}

@end