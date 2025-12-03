@interface String:
- (uint64_t)Int;
- (uint64_t)MLFeatureValue;
- (unint64_t)AnyEncodable;
- (unint64_t)MLFeatureValue;
- (unint64_t)String;
- (void)Any;
- (void)MLFeatureValue;
@end

@implementation String:

- (uint64_t)Int
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam13AutoSendInputV04autodE0_SDySSSiG10crrSignalstMd, &_s7SiriCam13AutoSendInputV04autodE0_SDySSSiG10crrSignalstMR);
  (*(*(v2 - 8) + 8))(self, v2);
  return self;
}

- (unint64_t)AnyEncodable
{
  result = lazy protocol witness table cache variable for type [String : AnyEncodable] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : AnyEncodable] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS7SiriCam12AnyEncodableVGMd, &_sSDySS7SiriCam12AnyEncodableVGMR);
    lazy protocol witness table accessor for type AnyEncodable and conformance AnyEncodable();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : AnyEncodable] and conformance <> [A : B]);
  }

  return result;
}

- (uint64_t)MLFeatureValue
{
  if (a3)
  {
  }

  return result;
}

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  }

  return result;
}

- (void)Any
{
  if (!lazy cache variable for type metadata for [String : Any]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Any]?);
    }
  }
}

- (void)MLFeatureValue
{
  if (!lazy cache variable for type metadata for [String : MLFeatureValue])
  {
    type metadata accessor for MLFeatureValue();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : MLFeatureValue]);
    }
  }
}

- (unint64_t)MLFeatureValue
{
  result = lazy protocol witness table cache variable for type [String : MLFeatureValue] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : MLFeatureValue] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
    lazy protocol witness table accessor for type MLFeatureValue and conformance MLFeatureValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : MLFeatureValue] and conformance <> [A : B]);
  }

  return result;
}

@end