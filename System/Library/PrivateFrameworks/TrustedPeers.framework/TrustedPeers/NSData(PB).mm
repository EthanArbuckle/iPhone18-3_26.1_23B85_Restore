@interface NSData(PB)
- (id)pbToNullable;
@end

@implementation NSData(PB)

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