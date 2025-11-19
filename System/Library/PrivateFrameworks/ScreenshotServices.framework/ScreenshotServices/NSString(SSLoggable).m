@interface NSString(SSLoggable)
- (id)shorterLoggableString;
@end

@implementation NSString(SSLoggable)

- (id)shorterLoggableString
{
  if ([a1 length] < 6)
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 substringToIndex:5];
  }

  return v2;
}

@end