@interface String
- (uint64_t):(uint64_t)a3;
- (unint64_t):;
@end

@implementation String

- (uint64_t):(uint64_t)a3
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (unint64_t):
{
  result = lazy protocol witness table cache variable for type [String : [Int]] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : [Int]] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSaySiGGMd);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : [Int]] and conformance <> [A : B]);
  }

  return result;
}

@end