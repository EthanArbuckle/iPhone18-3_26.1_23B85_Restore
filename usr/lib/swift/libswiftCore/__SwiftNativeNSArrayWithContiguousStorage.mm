@interface __SwiftNativeNSArrayWithContiguousStorage
- (int64_t)count;
- (int64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(int64_t)count;
- (void)getObjects:(id *)objects range:(id)range;
@end

@implementation __SwiftNativeNSArrayWithContiguousStorage

- (int64_t)count
{
  v3 = *(self->super.super.super.isa + 11);
  self;
  v3(&v5, closure #1 in __SwiftNativeNSArrayWithContiguousStorage.count.getter, 0, &type metadata for Int);
  self;
  return v5;
}

- (void)getObjects:(id *)objects range:(id)range
{
  rangeCopy = range;
  objectsCopy = objects;
  v5 = *(self->super.super.super.isa + 11);
  self;
  v5(partial apply for closure #1 in __SwiftNativeNSArrayWithContiguousStorage.getObjects(_:range:), &v6, &unk_1EEEAC658);
  self;
}

- (int64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(int64_t)count
{
  result = 0;
  var0 = state->var0;
  v13 = *&state->var1;
  v14 = *state->var3;
  v15 = *&state->var3[2];
  v16 = state->var3[4];
  v12 = var0;
  if (!var0)
  {
    MEMORY[0x1EEE9AC00](0);
    v10[2] = &v12;
    v10[3] = v8;
    v9 = *(self->super.super.super.isa + 11);
    self;
    v9(&v11, partial apply for closure #1 in __SwiftNativeNSArrayWithContiguousStorage.countByEnumerating(with:objects:count:), v10, &type metadata for Int);
    self;
    return v11;
  }

  return result;
}

@end