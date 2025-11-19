@interface NSData(PB)
- (id)pbToNullable;
@end

@implementation NSData(PB)

- (id)pbToNullable
{
  if ([a1 length])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end