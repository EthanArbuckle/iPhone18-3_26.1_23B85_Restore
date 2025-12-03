@interface _SwiftNSMutableArray
- (id)copyWithZone:(void *)zone;
- (int64_t)count;
- (int64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(int64_t)count;
- (int64_t)indexOfObjectIdenticalTo:(id)to;
- (void)addObject:(id)object;
- (void)exchangeObjectAtIndex:(int64_t)index withObjectAtIndex:(int64_t)atIndex;
- (void)getObjects:(id *)objects range:(id)range;
- (void)insertObject:(id)object atIndex:(int64_t)index;
- (void)insertObjects:(const void *)objects count:(int64_t)count atIndex:(int64_t)index;
- (void)removeAllObjects;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(int64_t)index;
- (void)removeObjectsInRange:(id)range;
- (void)replaceObjectAtIndex:(int64_t)index withObject:(id)object;
- (void)replaceObjectsInRange:(id)range withObjects:(const void *)objects count:(int64_t)count;
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

- (void)getObjects:(id *)objects range:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  self;
  _SwiftNSMutableArray.getObjects(_:range:)(objects, var0, var1);

  self;
}

- (int64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(int64_t)count
{
  self;
  v7 = specialized _SwiftNSMutableArray.countByEnumerating(with:objects:count:)(state);
  self;
  return v7;
}

- (id)copyWithZone:(void *)zone
{
  self;
  v4 = specialized _SwiftNSMutableArray.copy(with:)();
  self;
  return v4;
}

- (void)insertObject:(id)object atIndex:(int64_t)index
{
  v7 = *self->contents;
  swift_unknownObjectRetain(object);
  self;
  specialized Array._checkIndex(_:)(index, v7);
  swift_unknownObjectRetain(object);
  specialized Array.replaceSubrange<A>(_:with:)(index, index, object);
  self;
  swift_unknownObjectRelease_n(object, 2);
}

- (void)removeObjectAtIndex:(int64_t)index
{
  v3 = specialized Array.remove(at:)(index);

  swift_unknownObjectRelease(v3);
}

- (void)addObject:(id)object
{
  swift_unknownObjectRetain(object);
  self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  selfCopy = self;
  v6 = *self->contents;
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (v9 >= v8 >> 1)
  {
    v10 = selfCopy;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1, v6);
    selfCopy = v10;
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  *(v7 + 16) = v9 + 1;
  *(v7 + 8 * v9 + 32) = object;
  *selfCopy->contents = v6;

  selfCopy;
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

- (void)replaceObjectAtIndex:(int64_t)index withObject:(id)object
{
  v7 = *self->contents;
  swift_unknownObjectRetain(object);
  self;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(v7);
  *self->contents = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    *self->contents = v7;
  }

  specialized Array._checkSubscript_mutating(_:)(index, v7);
  v9 = (*self->contents & 0xFFFFFFFFFFFFFF8) + 8 * index;
  v10 = *(v9 + 0x20);
  *(v9 + 32) = object;
  self;

  swift_unknownObjectRelease(v10);
}

- (void)exchangeObjectAtIndex:(int64_t)index withObjectAtIndex:(int64_t)atIndex
{
  self;
  _SwiftNSMutableArray.exchange(at:with:)(index, atIndex);

  self;
}

- (void)replaceObjectsInRange:(id)range withObjects:(const void *)objects count:(int64_t)count
{
  var1 = range.var1;
  var0 = range.var0;
  self;
  _SwiftNSMutableArray.replaceObjects(in:with:count:)(var0, var1, objects, count);

  self;
}

- (void)insertObjects:(const void *)objects count:(int64_t)count atIndex:(int64_t)index
{
  if (count < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  specialized Array.replaceSubrange<A>(_:with:)(index, index, objects, count);
}

- (int64_t)indexOfObjectIdenticalTo:(id)to
{
  swift_unknownObjectRetain(to);
  self;
  v5 = _SwiftNSMutableArray.index(ofObjectIdenticalTo:)(to);
  swift_unknownObjectRelease(to);
  self;
  return v5;
}

- (void)removeObjectsInRange:(id)range
{
  v3 = range.var0 + range.var1;
  if (__OFADD__(range.var0, range.var1))
  {
    __break(1u);
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v3 < range.var0)
  {
    goto LABEL_5;
  }

  specialized Array.replaceSubrange<A>(_:with:)(range.var0, v3, &_swiftEmptyArrayStorage);
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