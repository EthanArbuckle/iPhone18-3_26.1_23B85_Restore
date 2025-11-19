@interface __ContiguousArrayStorageBase
- (id)mutableCopyWithZone:(void *)a3;
- (int64_t)indexOfObjectIdenticalTo:(id)a3;
@end

@implementation __ContiguousArrayStorageBase

- (id)mutableCopyWithZone:(void *)a3
{
  v4 = type metadata accessor for _SwiftNSMutableArray();
  v5 = swift_allocObject(v4, 0x18, 7uLL);
  v5[2] = self;
  self;
  return v5;
}

- (int64_t)indexOfObjectIdenticalTo:(id)a3
{
  if ((self & 0x8000000000000000) != 0 || (self & 0x4000000000000000) != 0)
  {
LABEL_15:
    swift_unknownObjectRetain(a3);
    v5 = [(atomic_ullong *)self count];
  }

  else
  {
    v5 = *self->countAndCapacity;
    swift_unknownObjectRetain(a3);
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
      if (v9 == a3)
      {
LABEL_12:
        swift_unknownObjectRelease(a3);
        self;
        return v6;
      }
    }

    else if (*(&self[1].super.super.super.super.isa + v6) == a3)
    {
      goto LABEL_12;
    }

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  swift_unknownObjectRelease(a3);
  self;
  return 0x7FFFFFFFFFFFFFFFLL;
}

@end