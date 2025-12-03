@interface NSString(PB)
- (id)pbToNullable;
@end

@implementation NSString(PB)

- (id)pbToNullable
{
  if ([self length])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end