@interface String:
- (Class)NSObject;
- (uint64_t)NSObject;
@end

@implementation String:

- (Class)NSObject
{
  v1 = *(self + 32);
  v2 = *(self + 40);

  v4 = v1(v3);

  if (v4)
  {
    type metadata accessor for NSObject();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (uint64_t)NSObject
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

@end