@interface NSDate(SXAdditions)
- (BOOL)isExpired;
@end

@implementation NSDate(SXAdditions)

- (BOOL)isExpired
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date compare:self] == 1;

  return v3;
}

@end