@interface NSString(PB)
- (id)pbToNullable;
@end

@implementation NSString(PB)

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