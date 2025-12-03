@interface MLMultiArray(Typed)
- (uint64_t)doublePointer;
- (uint64_t)floatPointer;
@end

@implementation MLMultiArray(Typed)

- (uint64_t)floatPointer
{
  selfCopy = self;

  return [selfCopy dataPointer];
}

- (uint64_t)doublePointer
{
  selfCopy = self;

  return [selfCopy dataPointer];
}

@end