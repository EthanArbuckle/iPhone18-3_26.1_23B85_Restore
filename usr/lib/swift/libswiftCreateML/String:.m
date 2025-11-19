@interface String:
- (id)NSObject;
- (uint64_t)Double;
@end

@implementation String:

- (id)NSObject
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

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
  result = *a1;
  if (!*a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a4, v6);
    *a1 = result;
  }

  return result;
}

@end