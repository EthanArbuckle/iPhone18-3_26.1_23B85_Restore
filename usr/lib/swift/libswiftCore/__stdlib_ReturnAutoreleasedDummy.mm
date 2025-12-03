@interface __stdlib_ReturnAutoreleasedDummy
- (id)returnsAutoreleased:(id)autoreleased;
@end

@implementation __stdlib_ReturnAutoreleasedDummy

- (id)returnsAutoreleased:(id)autoreleased
{
  v3 = swift_unknownObjectRetain(autoreleased);

  return v3;
}

@end