@interface NSCoder(SidecarNSCoderExtensions)
- (void)decodeObjectOfClass:()SidecarNSCoderExtensions;
@end

@implementation NSCoder(SidecarNSCoderExtensions)

- (void)decodeObjectOfClass:()SidecarNSCoderExtensions
{
  decodeObject = [self decodeObject];
  if (objc_opt_isKindOfClass())
  {
    v2 = decodeObject;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end