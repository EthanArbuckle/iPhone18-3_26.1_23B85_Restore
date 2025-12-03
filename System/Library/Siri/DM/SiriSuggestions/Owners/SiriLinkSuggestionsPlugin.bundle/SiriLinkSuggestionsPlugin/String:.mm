@interface String:
- (uint64_t)NSNumber;
- (uint64_t)String;
- (void)Any;
@end

@implementation String:

- (uint64_t)String
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (uint64_t)NSNumber
{
  v4 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    v5 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v4, v5);
  }

  else
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v4, v7);
  }
}

- (void)Any
{
  if (!lazy cache variable for type metadata for [String : Any])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Any]);
    }
  }
}

@end