@interface _SwiftNSMutableArray
- (id)copyWithZone:(void *)a3;
- (int64_t)count;
- (int64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(int64_t)a5;
- (int64_t)indexOfObjectIdenticalTo:(id)a3;
- (void)addObject:(id)a3;
- (void)exchangeObjectAtIndex:(int64_t)a3 withObjectAtIndex:(int64_t)a4;
- (void)getObjects:(id *)a3 range:(id)a4;
- (void)insertObject:(id)a3 atIndex:(int64_t)a4;
- (void)insertObjects:(const void *)a3 count:(int64_t)a4 atIndex:(int64_t)a5;
- (void)removeAllObjects;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(int64_t)a3;
- (void)removeObjectsInRange:(id)a3;
- (void)replaceObjectAtIndex:(int64_t)a3 withObject:(id)a4;
- (void)replaceObjectsInRange:(id)a3 withObjects:(const void *)a4 count:(int64_t)a5;
@end

@implementation _SwiftNSMutableArray

- (int64_t)count
{
  v2 = *self->contents;
  if (!(v2 >> 62))
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 0)
  {
    v4 = *self->contents;
  }

  else
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFF8);
  }

  return [v4 count];
}

- (void)getObjects:(id *)a3 range:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  self;
  _SwiftNSMutableArray.getObjects(_:range:)(a3, var0, var1);

  self;
}

- (int64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(int64_t)a5
{
  self;
  v7 = specialized _SwiftNSMutableArray.countByEnumerating(with:objects:count:)(a3);
  self;
  return v7;
}

- (id)copyWithZone:(void *)a3
{
  self;
  v4 = specialized _SwiftNSMutableArray.copy(with:)();
  self;
  return v4;
}

- (void)insertObject:(id)a3 atIndex:(int64_t)a4
{
  v7 = *self->contents;
  swift_unknownObjectRetain(a3);
  self;
  specialized Array._checkIndex(_:)(a4, v7);
  swift_unknownObjectRetain(a3);
  specialized Array.replaceSubrange<A>(_:with:)(a4, a4, a3);
  self;
  swift_unknownObjectRelease_n(a3, 2);
}

- (void)removeObjectAtIndex:(int64_t)a3
{
  v3 = specialized Array.remove(at:)(a3);

  swift_unknownObjectRelease(v3);
}

- (void)addObject:(id)a3
{
  swift_unknownObjectRetain(a3);
  self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = self;
  v6 = *self->contents;
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (v9 >= v8 >> 1)
  {
    v10 = v5;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1, v6);
    v5 = v10;
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  *(v7 + 16) = v9 + 1;
  *(v7 + 8 * v9 + 32) = a3;
  *v5->contents = v6;

  v5;
}

- (void)removeLastObject
{
  v2 = *self->contents;
  if (!(v2 >> 62))
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_3;
  }

  if (v2 < 0)
  {
    v4 = *self->contents;
  }

  else
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFF8);
  }

  if ([v4 count])
  {
LABEL_3:
    v3 = specialized RangeReplaceableCollection<>.removeLast()();

    swift_unknownObjectRelease(v3);
  }
}

- (void)replaceObjectAtIndex:(int64_t)a3 withObject:(id)a4
{
  v7 = *self->contents;
  swift_unknownObjectRetain(a4);
  self;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(v7);
  *self->contents = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    *self->contents = v7;
  }

  specialized Array._checkSubscript_mutating(_:)(a3, v7);
  v9 = (*self->contents & 0xFFFFFFFFFFFFFF8) + 8 * a3;
  v10 = *(v9 + 0x20);
  *(v9 + 32) = a4;
  self;

  swift_unknownObjectRelease(v10);
}

- (void)exchangeObjectAtIndex:(int64_t)a3 withObjectAtIndex:(int64_t)a4
{
  self;
  _SwiftNSMutableArray.exchange(at:with:)(a3, a4);

  self;
}

- (void)replaceObjectsInRange:(id)a3 withObjects:(const void *)a4 count:(int64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  self;
  _SwiftNSMutableArray.replaceObjects(in:with:count:)(var0, var1, a4, a5);

  self;
}

- (void)insertObjects:(const void *)a3 count:(int64_t)a4 atIndex:(int64_t)a5
{
  if (a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized Array.replaceSubrange<A>(_:with:)(a5, a5, a3, a4);
}

- (int64_t)indexOfObjectIdenticalTo:(id)a3
{
  swift_unknownObjectRetain(a3);
  self;
  v5 = _SwiftNSMutableArray.index(ofObjectIdenticalTo:)(a3);
  swift_unknownObjectRelease(a3);
  self;
  return v5;
}

- (void)removeObjectsInRange:(id)a3
{
  v3 = a3.var0 + a3.var1;
  if (__OFADD__(a3.var0, a3.var1))
  {
    __break(1u);
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 < a3.var0)
  {
    goto LABEL_5;
  }

  specialized Array.replaceSubrange<A>(_:with:)(a3.var0, v3, &_swiftEmptyArrayStorage);
}

- (void)removeAllObjects
{
  self;
  UninitializedySayxG_SpyxGtSiFZyXl_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZyXl_Tt0g5(0);
  v4 = *self->contents;
  *self->contents = UninitializedySayxG_SpyxGtSiFZyXl_Tt0g5;
  self;

  v4;
}

@end