@interface MLMultiArray(Typed)
- (uint64_t)doublePointer;
- (uint64_t)floatPointer;
@end

@implementation MLMultiArray(Typed)

- (uint64_t)floatPointer
{
  v1 = a1;

  return [v1 dataPointer];
}

- (uint64_t)doublePointer
{
  v1 = a1;

  return [v1 dataPointer];
}

@end