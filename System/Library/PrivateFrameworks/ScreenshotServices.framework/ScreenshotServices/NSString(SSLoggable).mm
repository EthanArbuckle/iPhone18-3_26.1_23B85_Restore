@interface NSString(SSLoggable)
- (id)shorterLoggableString;
@end

@implementation NSString(SSLoggable)

- (id)shorterLoggableString
{
  if ([self length] < 6)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:5];
  }

  return selfCopy;
}

@end