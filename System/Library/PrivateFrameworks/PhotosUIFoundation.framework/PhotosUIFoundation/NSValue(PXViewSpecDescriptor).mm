@interface NSValue(PXViewSpecDescriptor)
- (uint64_t)px_viewSpecDescriptorValue;
@end

@implementation NSValue(PXViewSpecDescriptor)

- (uint64_t)px_viewSpecDescriptorValue
{
  *x8_0 = 0u;
  x8_0[1] = 0u;
  return [self getValue:x8_0];
}

@end