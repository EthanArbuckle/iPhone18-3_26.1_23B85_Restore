@interface (predicted:String,label:
- (uint64_t)String);
@end

@implementation (predicted:String,label:

- (uint64_t)String)
{
  result = lazy protocol witness table cache variable for type [(predicted: String, label: String)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(predicted: String, label: String)] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [(predicted: String, label: String)]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [(predicted: String, label: String)] and conformance [A] = result;
  }

  return result;
}

@end