@interface __stdlib_ReturnAutoreleasedDummy
- (id)returnsAutoreleased:(id)a3;
@end

@implementation __stdlib_ReturnAutoreleasedDummy

- (id)returnsAutoreleased:(id)a3
{
  v3 = swift_unknownObjectRetain(a3);

  return v3;
}

@end