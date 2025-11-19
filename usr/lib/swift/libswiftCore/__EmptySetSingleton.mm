@interface __EmptySetSingleton
- (_TtCs19__EmptySetSingleton)initWithObjects:(const void *)a3 count:(int64_t)a4;
- (id)objectEnumerator;
- (int64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(int64_t)a5;
@end

@implementation __EmptySetSingleton

- (_TtCs19__EmptySetSingleton)initWithObjects:(const void *)a3 count:(int64_t)a4
{
  result = self;
  __break(1u);
  return result;
}

- (id)objectEnumerator
{
  v2 = type metadata accessor for __SwiftEmptyNSEnumerator();
  v3 = swift_allocObject(v2, 0x10, 7uLL);

  return v3;
}

- (int64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(int64_t)a5
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  if (!a3->var0)
  {
    var2 = &_fastEnumerationStorageMutationsTarget;
    var1 = a4;
  }

  if (var0 <= 1)
  {
    var0 = 1;
  }

  a3->var0 = var0;
  a3->var1 = var1;
  a3->var2 = var2;
  return 0;
}

@end