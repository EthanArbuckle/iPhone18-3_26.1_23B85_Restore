@interface NSValue(PXMemoryFontsSpecIdentifier)
- (uint64_t)px_memoryFontsSpecIdentifierValue;
@end

@implementation NSValue(PXMemoryFontsSpecIdentifier)

- (uint64_t)px_memoryFontsSpecIdentifierValue
{
  *(x8_0 + 48) = 0;
  *(x8_0 + 16) = 0u;
  *(x8_0 + 32) = 0u;
  *x8_0 = 0u;
  return [self getValue:x8_0];
}

@end