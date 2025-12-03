@interface __ContiguousArrayStorageBase
- (id)mutableCopyWithZone:(void *)zone;
- (int64_t)indexOfObjectIdenticalTo:(id)to;
@end

@implementation __ContiguousArrayStorageBase

- (id)mutableCopyWithZone:(void *)zone
{
  v4 = type metadata accessor for _SwiftNSMutableArray();
  v5 = swift_allocObject(v4, 0x18, 7uLL);
  v5[2] = self;
  self;
  return v5;
}

- (int64_t)indexOfObjectIdenticalTo:(id)to
{
  if ((self & 0x8000000000000000) != 0 || (self & 0x4000000000000000) != 0)
  {
LABEL_15:
    swift_unknownObjectRetain(to);
    v5 = [(atomic_ullong *)self count];
  }

  else
  {
    v5 = *self->countAndCapacity;
    swift_unknownObjectRetain(to);
    self;
  }

  v6 = 0;
  v7 = self & 0xC000000000000001;
  while (v5 != v6)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v6, v7 == 0, self);
    if (v7)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(v6, self);
      swift_unknownObjectRelease(v9);
      if (v9 == to)
      {
LABEL_12:
        swift_unknownObjectRelease(to);
        self;
        return v6;
      }
    }

    else if (*(&self[1].super.super.super.super.isa + v6) == to)
    {
      goto LABEL_12;
    }

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  swift_unknownObjectRelease(to);
  self;
  return 0x7FFFFFFFFFFFFFFFLL;
}

@end