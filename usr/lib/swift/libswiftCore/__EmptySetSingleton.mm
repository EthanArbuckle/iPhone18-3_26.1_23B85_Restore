@interface __EmptySetSingleton
- (_TtCs19__EmptySetSingleton)initWithObjects:(const void *)objects count:(int64_t)count;
- (id)objectEnumerator;
- (int64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(int64_t)count;
@end

@implementation __EmptySetSingleton

- (_TtCs19__EmptySetSingleton)initWithObjects:(const void *)objects count:(int64_t)count
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

- (int64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(int64_t)count
{
  var0 = state->var0;
  var1 = state->var1;
  var2 = state->var2;
  if (!state->var0)
  {
    var2 = &_fastEnumerationStorageMutationsTarget;
    var1 = objects;
  }

  if (var0 <= 1)
  {
    var0 = 1;
  }

  state->var0 = var0;
  state->var1 = var1;
  state->var2 = var2;
  return 0;
}

@end