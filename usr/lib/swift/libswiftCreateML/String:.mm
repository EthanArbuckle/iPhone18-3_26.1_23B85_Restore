@interface String:
- (id)NSObject;
- (uint64_t)Double;
@end

@implementation String:

- (id)NSObject
{
  v1 = *(self + 32);
  v2 = *(self + 40);

  v3 = v1(v2);

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3;
  return isa;
}

- (uint64_t)Double
{
  result = *self;
  if (!*self)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a4, v6);
    *self = result;
  }

  return result;
}

@end