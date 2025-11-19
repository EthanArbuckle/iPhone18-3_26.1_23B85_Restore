void *protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C5334438()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5334470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C5334594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C53346B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C533477C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5334840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C53348AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C53349F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5334A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5334AFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C5334BA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5334BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5334CC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5334D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5334D94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C5334E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5334E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C5334F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C533501C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C53350C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5335100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C533524C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C5335390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5335408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5335484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t CLBeaconIdentityConstraint.major.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedShortValue];
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 16);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CLClientDiagnosticMask(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance CLClientDiagnosticMask@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance CLClientDiagnosticMask@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for CLError(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for CLError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for CLError()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CLClientDiagnosticMask@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for CLError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t lazy protocol witness table accessor for type related decl e for CLError and conformance related decl e for CLError(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for CLClientDiagnosticMask(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t objcConditionToSwifty(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00]();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      [v10 altitude];
      v12 = v11;
      outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);
      v13 = lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition();
      *a2 = v12;
      *(a2 + 24) = &type metadata for CLMonitor.MinimumAltitudeCondition;
      *(a2 + 32) = v13;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = a1;
      v17 = [v15 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v15 major];
      v19 = v18;
      if (v18)
      {
        HIDWORD(v38) = [v18 unsignedShortValue];
      }

      else
      {
        HIDWORD(v38) = 0;
      }

      v20 = [v15 minor];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 unsignedShortValue];

        outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);
      }

      else
      {
        outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);

        v22 = 0;
      }

      v23 = v21 == 0;
      v24 = v19 == 0;
      v25 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
      *(&v40 + 1) = v25;
      v41 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition and conformance CLMonitor.BeaconIdentityCondition, type metadata accessor for CLMonitor.BeaconIdentityCondition);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
      (*(v5 + 32))(boxed_opaque_existential_1, v9, v4);
      v27 = boxed_opaque_existential_1 + *(v25 + 20);
      *v27 = WORD2(v38);
      v27[2] = v24;
      v28 = boxed_opaque_existential_1 + *(v25 + 24);
      *v28 = v22;
      v28[2] = v23;
      *(a2 + 32) = v41;
      v29 = v40;
      *a2 = v39;
      *(a2 + 16) = v29;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v30 = result;
      v31 = a1;
      [v30 center];
      v33 = v32;
      v35 = v34;
      [v30 radius];
      v37 = v36;

      outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);
      result = lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition();
      *a2 = v33;
      *(a2 + 8) = v35;
      *(a2 + 16) = v37;
      *(a2 + 24) = &type metadata for CLMonitor.CircularGeographicCondition;
      *(a2 + 32) = result;
    }
  }

  return result;
}

CoreLocation::CLMonitor::CircularGeographicCondition __swiftcall CLMonitor.CircularGeographicCondition.init(center:radius:)(__C::CLLocationCoordinate2D center, Swift::Double radius)
{
  *v2 = center.latitude;
  v2[1] = center.longitude;
  v2[2] = radius;
  result.center.longitude = center.longitude;
  result.center.latitude = center.latitude;
  result.radius = radius;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CLMonitor.Options@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t CLMonitor.identifiers.getter()
{
  v1 = [*(v0 + 120) _getMonitoredIdentifiers];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t outlined init with copy of CLMonitor.Events(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLMonitor.Events(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CLCondition(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CLMonitor.Event.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CLMonitor.Event.date.getter()
{
  v1 = [*v0 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t CLMonitor.Events.Iterator.next()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](CLMonitor.Events.Iterator.next(), 0, 0);
}

uint64_t CLMonitor.Events.Iterator.next()()
{
  v1 = *(v0 + 120);
  v2 = type metadata accessor for CLMonitor.Events.Iterator(0);
  v3 = *(v2 + 20);
  *(v0 + 144) = v3;
  outlined init with copy of CLCondition?(v1 + v3, v0 + 64, &_s12CoreLocation9CLMonitorC5EventVSgMd, &_s12CoreLocation9CLMonitorC5EventVSgMR);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    *(v0 + 48) = *(v0 + 96);
    v6 = (v4 + *(v2 + 24));
    v7 = v6[1];
    v16 = (*v6 + **v6);
    v8 = (*v6)[1];
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = CLMonitor.Events.Iterator.next();

    return v16(v0 + 16);
  }

  else
  {
    outlined destroy of CLMonitor.Event?(v0 + 64, &_s12CoreLocation9CLMonitorC5EventVSgMd, &_s12CoreLocation9CLMonitorC5EventVSgMR);
    v11 = *(MEMORY[0x1E69E8680] + 4);
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
    *v12 = v0;
    v12[1] = CLMonitor.Events.Iterator.next();
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);

    return MEMORY[0x1EEE6D9D0](v14, v13);
  }
}

{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](CLMonitor.Events.Iterator.next(), 0, 0);
}

{
  outlined destroy of CLMonitor.Event((v0 + 2));
  v1 = *(MEMORY[0x1E69E8680] + 4);
  v2 = swift_task_alloc();
  v0[17] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
  *v2 = v0;
  v2[1] = CLMonitor.Events.Iterator.next();
  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x1EEE6D9D0](v4, v3);
}

{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](CLMonitor.Events.Iterator.next(), 0, 0);
}

{
  outlined assign with copy of CLMonitor.Event?(*(v0 + 112), *(v0 + 120) + *(v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined assign with copy of CLMonitor.Event?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation9CLMonitorC5EventVSgMd, &_s12CoreLocation9CLMonitorC5EventVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator;

  return CLMonitor.Events.Iterator.next()(a1);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return CLMonitor.Events.Iterator.next()(a1);
}

uint64_t _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t CLMonitor.Events.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = (v1 + *(type metadata accessor for CLMonitor.Events(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = type metadata accessor for CLMonitor.Events.Iterator(0);
  v7 = (a1 + *(v6 + 20));
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  v8 = (a1 + *(v6 + 24));
  *v8 = v5;
  v8[1] = v4;
}

uint64_t CLMonitor.Events.init(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a3;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation9CLMonitorC5EventV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation9CLMonitorC5EventV__GMR);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v25 - v12;
  v14 = swift_allocBox();
  v16 = v15;
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v27 = v16;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8650], v9);
  AsyncStream.init(_:bufferingPolicy:_:)();
  outlined init with copy of CLCondition?(v16, v8, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  result = (*(v18 + 48))(v8, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = type metadata accessor for CLMonitor.Events(0);
    (*(v18 + 32))(a4 + v20[5], v8, v17);
    *(a4 + v20[6]) = a1;
    v21 = (a4 + v20[7]);
    v22 = v26;
    *v21 = v25;
    v21[1] = v22;
    aBlock[4] = partial apply for closure #2 in CLMonitor.Events.init(_:_:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLMonitor, @guaranteed CLMonitoringEvent) -> ();
    aBlock[3] = &block_descriptor_82;
    v23 = _Block_copy(aBlock);
    v24 = a1;

    [v24 setEventHandler_];

    _Block_release(v23);
  }

  return result;
}

uint64_t closure #1 in CLMonitor.Events.init(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of CLMonitor.Event?(a2, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t closure #2 in CLMonitor.Events.init(_:_:)(uint64_t a1, void *a2)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation9CLMonitorC5EventV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation9CLMonitorC5EventV__GMR);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v35 - v9;
  v11 = swift_projectBox();
  v12 = [a2 refinement];
  objcConditionToSwifty(_:)(v12, &v40);

  v39 = a2;
  v13 = one-time initialization token for logger;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v6;
    v20 = v19;
    v35 = swift_slowAlloc();
    v36 = v7;
    v38[0] = v35;
    *v20 = 136315138;
    v21 = v16;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v5;
    v25 = v10;
    v26 = v11;
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v28, v38);
    v11 = v26;
    v10 = v25;
    v5 = v24;

    *(v20 + 4) = v29;
    _os_log_impl(&dword_1C5333000, v17, v18, "#MonitorActor received event: %s", v20, 0xCu);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v7 = v36;
    MEMORY[0x1C6945100](v30, -1, -1);
    v31 = v20;
    v6 = v37;
    MEMORY[0x1C6945100](v31, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of CLCondition?(v11, v5, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  v33 = *(v32 - 8);
  result = (*(v33 + 48))(v5, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of CLMonitor.Event(&v39, v38);
    AsyncStream.Continuation.yield(_:)();
    (*(v7 + 8))(v10, v6);
    outlined destroy of CLMonitor.Event(&v39);
    return (*(v33 + 8))(v5, v32);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CLMonitor, @guaranteed CLMonitoringEvent) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

double protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLMonitor.Events@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  AsyncStream.makeAsyncIterator()();
  v5 = (v2 + *(a1 + 28));
  v7 = *v5;
  v6 = v5[1];

  outlined destroy of CLMonitor.Events(v2);
  v8 = type metadata accessor for CLMonitor.Events.Iterator(0);
  v9 = (a2 + *(v8 + 20));
  result = 0.0;
  v9[1] = 0u;
  v9[2] = 0u;
  *v9 = 0u;
  v11 = (a2 + *(v8 + 24));
  *v11 = v7;
  v11[1] = v6;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64757469676E6F6CLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x737569646172;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x64757469676E6F6CLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x737569646172;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656475746974616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x737569646172;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656475746974616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x737569646172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double CLMonitor.CircularGeographicCondition.center.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CLMonitor.CircularGeographicCondition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v19[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v19[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v18 = CLLocationCoordinate2DMake(v12, v14);
    (*(v6 + 8))(v9, v5);
    *a2 = v18;
    *(a2 + 16) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

uint64_t CLMonitor.CircularGeographicCondition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

id protocol witness for ConditionAdapter.to() in conformance CLMonitor.CircularGeographicCondition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(MEMORY[0x1E695FBA8]);

  return [v4 initWithCenter:v1 radius:{v2, v3}];
}

uint64_t CLMonitor.add(_:identifier:assuming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v43 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00]();
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(v4 + 112);
  if (!*(v17 + 16))
  {
LABEL_5:
    v46 = a2;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    outlined destroy of CLMonitor.Event?(&v54, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
    v44 = a1;
    outlined init with copy of CLCondition(a1, v52);
    Date.init()();
    outlined init with copy of CLCondition(v52, v51 + 8);
    *&v50 = 0;
    outlined init with copy of CLCondition(v52, &v49);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation11CLCondition_pMd, &_s12CoreLocation11CLCondition_pMR);
    v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMR);
    v43[2] = v23;
    if (swift_dynamicCast())
    {
      outlined init with take of ConditionAdapter(v47, &v54);
      v24 = *(&v55 + 1);
      v25 = v56;
      __swift_project_boxed_opaque_existential_1Tm(&v54, *(&v55 + 1));
      v26 = (*(v25 + 32))(v24, v25);
      (*(v13 + 16))(v11, v16, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      v43[0] = a3;
      v27 = MEMORY[0x1C6944850](v46, a3);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        isa = 0;
      }

      else
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v13 + 8))(v11, v12);
      }

      v29 = objc_allocWithZone(MEMORY[0x1E695FC10]);
      v30 = [v29 initWithIdentifier:v27 refinement:v26 state:v45 date:isa diagnostics:0];

      __swift_destroy_boxed_opaque_existential_1Tm(&v54);
      result = outlined init with copy of CLCondition(v52, &v54);
      if (v30)
      {
        (*(v13 + 8))(v16, v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v32 = v54;
        v33 = v55;
        *&v51[0] = v56;
        *(&v50 + 1) = v30;
        v58 = v51[1];
        v59 = v51[2];
        v54 = v50;
        v55 = v32;
        v56 = v33;
        v57 = v51[0];
        swift_beginAccess();
        v34 = v43[0];

        v35 = v46;
        specialized Dictionary.subscript.setter(&v54, v46, v34);
        swift_endAccess();
        outlined init with copy of CLCondition(v44, &v50);
        if (swift_dynamicCast())
        {
          outlined init with take of ConditionAdapter(v52, &v54);
          v36 = *(v5 + 120);
          v37 = *(&v55 + 1);
          v38 = v56;
          __swift_project_boxed_opaque_existential_1Tm(&v54, *(&v55 + 1));
          v39 = *(v38 + 32);
          v40 = v36;
          v41 = v39(v37, v38);
          v42 = MEMORY[0x1C6944850](v35, v34);
          [v40 _addConditionForMonitoring_identifier_options_assumedState_];

          return __swift_destroy_boxed_opaque_existential_1Tm(&v54);
        }

        v53 = 0;
        memset(v52, 0, sizeof(v52));
        v20 = &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMd;
        v21 = &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMR;
        v22 = v52;
        return outlined destroy of CLMonitor.Event?(v22, v20, v21);
      }
    }

    else
    {
      v48 = 0;
      memset(v47, 0, sizeof(v47));
      outlined destroy of CLMonitor.Event?(v47, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMR);
      result = outlined init with copy of CLCondition(v52, &v54);
    }

    __break(1u);
    return result;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v19 & 1) == 0)
  {

    goto LABEL_5;
  }

  outlined init with copy of CLMonitor.Record(*(v17 + 56) + 96 * v18, &v54);

  v20 = &_s12CoreLocation9CLMonitorC6RecordVSgMd;
  v21 = &_s12CoreLocation9CLMonitorC6RecordVSgMR;
  v22 = &v54;
  return outlined destroy of CLMonitor.Event?(v22, v20, v21);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v6;
    v7 = *(a1 + 80);
    v13[4] = *(a1 + 64);
    v13[5] = v7;
    v8 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v8;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v12;
  }

  else
  {
    outlined destroy of CLMonitor.Event?(a1, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v13);

    return outlined destroy of CLMonitor.Event?(v13, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
  }

  return result;
}

Swift::Void __swiftcall CLMonitor.remove(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, v6);
  outlined destroy of CLMonitor.Event?(v6, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
  swift_endAccess();
  v4 = *(v1 + 120);
  v5 = MEMORY[0x1C6944850](countAndFlagsBits, object);
  [v4 _removeConditionFromMonitoringWithIdentifier_];
}

double CLMonitor.record(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v9)
    {
      outlined init with copy of CLMonitor.Record(*(v7 + 56) + 96 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void CLMonitor.update(_:_:)(uint64_t a1, unint64_t a2, id *a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v3 + 112);
  if (*(v12 + 16))
  {

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v14)
    {
      outlined init with copy of CLMonitor.Record(*(v12 + 56) + 96 * v13, &v25);

      v28[2] = v26[1];
      v29[0] = v27[0];
      v29[1] = v27[1];
      v29[2] = v27[2];
      v28[0] = v25;
      v28[1] = v26[0];
      outlined init with copy of CLCondition(v29 + 8, v24);
      v15 = *a3;
      [*a3 state];
      v16 = [v15 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      outlined init with copy of CLCondition(v24, v27 + 8);
      *&v25 = 0;
      outlined init with copy of CLCondition(v24, v26);
      v17 = *(v8 + 8);
      v18 = v15;
      v17(v11, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      *(&v25 + 1) = v18;
      swift_beginAccess();

      specialized Dictionary.subscript.setter(&v25, a1, a2);
      swift_endAccess();
      outlined destroy of CLMonitor.Record(v28);
      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v28[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v28);
    _os_log_impl(&dword_1C5333000, v20, v21, "#MonitorActor update on record that doesn't exist for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1C6945100](v23, -1, -1);
    MEMORY[0x1C6945100](v22, -1, -1);
  }
}

uint64_t CLMonitor.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = CLMonitor.__allocating_init(_:);

  return CLMonitor.init(_:)(a1, a2);
}

uint64_t CLMonitor.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t CLMonitor.init(_:)(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[78] = v5;
  v6 = *(v5 - 8);
  v3[79] = v6;
  v7 = *(v6 + 64) + 15;
  v3[80] = swift_task_alloc();
  v8 = *(*(type metadata accessor for CLMonitor.Events(0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CLMonitor.init(_:), 0, 0);
}

uint64_t CLMonitor.init(_:)()
{
  v1 = v0[81];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  swift_defaultActor_initialize();
  *(v2 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreLocation9CLMonitorC6RecordVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = objc_opt_self();
  v6 = MEMORY[0x1C6944850](v4, v3);
  v7 = [v5 _configWithMonitorName_];
  v0[82] = v7;

  v8 = swift_allocObject();
  v0[83] = v8;
  swift_weakInit();
  swift_retain_n();
  v9 = v7;
  CLMonitor.Events.init(_:_:)(v9, &async function pointer to partial apply for closure #1 in CLMonitor.init(_:), v8, v1);
  outlined init with take of CLMonitor.Events(v1, v2 + OBJC_IVAR____TtC12CoreLocation9CLMonitor_events);
  v10 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 73;
  v0[3] = CLMonitor.init(_:);
  v11 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9CLMonitorCs5NeverOGMd, &_sSccySo9CLMonitorCs5NeverOGMR);
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLMonitor) -> () with result type CLMonitor;
  v0[37] = &block_descriptor;
  v0[38] = v11;
  [v10 requestMonitorWithConfiguration:v9 completion:v0 + 34];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](CLMonitor.init(_:), 0, 0);
}

{
  v1 = *(v0 + 608);
  *(v1 + 120) = *(v0 + 584);
  return MEMORY[0x1EEE6DFA0](CLMonitor.init(_:), v1, 0);
}

{
  v1 = v0 + 496;
  v2 = *(v0 + 632);
  v3 = [*(*(v0 + 608) + 120) _getMonitoringRecords];
  type metadata accessor for CLMonitoringRecord(0, &lazy cache variable for type metadata for CLMonitoringRecord, 0x1E695FC18);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = 0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v68 = (v2 + 56);
  v69 = (v2 + 16);
  v67 = (v2 + 48);
  v74 = (v2 + 8);
  v75 = v4;
  v72 = v10;
  v73 = v4 + 64;
  v70 = v0 + 496;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9)) | (v5 << 6);
    v14 = (*(v75 + 48) + 16 * v13);
    v76 = v14[1];
    v77 = *v14;
    v15 = *(*(v75 + 56) + 8 * v13);

    v16 = v15;
    v17 = [v16 condition];
    objcConditionToSwifty(_:)(v17, v0 + 336);

    if (!*(v0 + 360))
    {
      goto LABEL_38;
    }

    v18 = *(v0 + 640);
    v19 = [v16 lastEvent];
    v20 = [v19 state];

    v21 = [v16 lastEvent];
    v22 = [v21 date];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = [v16 lastEvent];
    outlined init with copy of CLCondition(v0 + 336, v0 + 136);
    *(v0 + 80) = 0;
    if (v23)
    {
      outlined init with copy of CLCondition(v0 + 336, v1);
    }

    else
    {
      v71 = v20;
      outlined init with copy of CLCondition(v0 + 336, v0 + 416);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation11CLCondition_pMd, &_s12CoreLocation11CLCondition_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMR);
      v1 = v0 + 456;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_39;
      }

      v24 = *(v0 + 640);
      v25 = *(v0 + 624);
      v26 = *(v0 + 616);
      outlined init with take of ConditionAdapter((v0 + 456), v0 + 376);
      v28 = *(v0 + 400);
      v27 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v28);
      v29 = (*(v27 + 32))(v28, v27);
      (*v69)(v26, v24, v25);
      (*v68)(v26, 0, 1, v25);
      v30 = MEMORY[0x1C6944850](v77, v76);
      if ((*v67)(v26, 1, v25) == 1)
      {
        isa = 0;
      }

      else
      {
        v32 = *(v0 + 624);
        v33 = *(v0 + 616);
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v74)(v33, v32);
      }

      v1 = v0 + 496;
      v23 = [objc_allocWithZone(MEMORY[0x1E695FC10]) initWithIdentifier:v30 refinement:v29 state:v71 date:isa diagnostics:0];

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
      result = outlined init with copy of CLCondition(v0 + 336, v70);
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    v35 = *(v0 + 608);
    (*v74)(*(v0 + 640), *(v0 + 624));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    v36 = *(v1 + 16);
    *(v0 + 96) = *v1;
    *(v0 + 112) = v36;
    *(v0 + 128) = *(v1 + 32);
    *(v0 + 88) = v23;
    v80 = *(v0 + 112);
    v81 = *(v0 + 128);
    v82 = *(v0 + 144);
    v83 = *(v0 + 160);
    v78 = *(v0 + 80);
    v79 = *(v0 + 96);
    swift_beginAccess();
    *(v0 + 208) = v80;
    *(v0 + 224) = v81;
    *(v0 + 240) = v82;
    *(v0 + 256) = v83;
    *(v0 + 176) = v78;
    *(v0 + 192) = v79;
    v37 = *(v35 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v35 + 112);
    *(v35 + 112) = 0x8000000000000000;
    v40 = v76;
    v41 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v76);
    v43 = v39[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      *(v1 + 32) = 0;
      *v1 = 0u;
      *(v1 + 16) = 0u;
      outlined destroy of CLMonitor.Event?(v1, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMR);
      result = outlined init with copy of CLCondition(v0 + 336, v70);
LABEL_40:
      __break(1u);
      return result;
    }

    v47 = v42;
    if (v39[3] < v46)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v76);
      if ((v47 & 1) != (v48 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_24:
      if (v47)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v57 = v41;
    specialized _NativeDictionary.copy()();
    v41 = v57;
    v40 = v76;
    if (v47)
    {
LABEL_4:
      v11 = v41;

      outlined assign with take of CLMonitor.Record(v0 + 176, v39[7] + 96 * v11);
      goto LABEL_5;
    }

LABEL_25:
    v39[(v41 >> 6) + 8] |= 1 << v41;
    v49 = (v39[6] + 16 * v41);
    *v49 = v77;
    v49[1] = v40;
    v50 = (v39[7] + 96 * v41);
    v52 = *(v0 + 240);
    v51 = *(v0 + 256);
    v53 = *(v0 + 224);
    v50[2] = *(v0 + 208);
    v50[3] = v53;
    v50[4] = v52;
    v50[5] = v51;
    v54 = *(v0 + 192);
    *v50 = *(v0 + 176);
    v50[1] = v54;
    v55 = v39[2];
    v45 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v45)
    {
      goto LABEL_37;
    }

    v39[2] = v56;
LABEL_5:
    v9 &= v9 - 1;
    *(*(v0 + 608) + 112) = v39;
    swift_endAccess();

    v10 = v72;
    v6 = v73;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_11;
    }
  }

  v58 = *(v0 + 664);
  v59 = *(v0 + 656);
  v60 = *(v0 + 648);
  v61 = *(v0 + 640);
  v62 = *(v0 + 616);
  v63 = *(v0 + 608);
  v64 = *(v0 + 600);

  swift_beginAccess();
  swift_weakAssign();

  v65 = *(v0 + 8);
  v66 = *(v0 + 608);

  return v65(v66);
}

uint64_t closure #1 in CLMonitor.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in CLMonitor.init(_:), 0, 0);
}

uint64_t closure #1 in CLMonitor.init(_:)()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [**(v0 + 40) identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 64) = v5;
    *(v0 + 72) = v7;

    return MEMORY[0x1EEE6DFA0](closure #1 in CLMonitor.init(_:), v3, 0);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5333000, v9, v10, "#MonitorActor can't update event when self has been dealloc'd", v11, 2u);
      MEMORY[0x1C6945100](v11, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(v0 + 56);
  CLMonitor.update(_:_:)(*(v0 + 64), *(v0 + 72), *(v0 + 40));

  return MEMORY[0x1EEE6DFA0](closure #1 in CLMonitor.init(_:), 0, 0);
}

{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLMonitor) -> () with result type CLMonitor(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t CLMonitor.deinit()
{
  v1 = *(v0 + 112);

  outlined destroy of CLMonitor.Events(v0 + OBJC_IVAR____TtC12CoreLocation9CLMonitor_events);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CLMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  outlined destroy of CLMonitor.Events(v0 + OBJC_IVAR____TtC12CoreLocation9CLMonitor_events);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLMonitor.MinimumAltitudeCondition.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC24MinimumAltitudeConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC24MinimumAltitudeConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

id protocol witness for ConditionAdapter.to() in conformance CLMonitor.MinimumAltitudeCondition()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E695FBF8]);

  return [v2 initWithAltitude_];
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F6A616DLL;
  if (v2 != 1)
  {
    v3 = 0x726F6E696DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1684632949;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x726F6A616DLL;
  if (*a2 != 1)
  {
    v6 = 0x726F6E696DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1684632949;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x726F6A616DLL;
  if (v2 != 1)
  {
    v4 = 0x726F6E696DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1684632949;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  v1 = 0x726F6A616DLL;
  if (*v0 != 1)
  {
    v1 = 0x726F6E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLMonitor.BeaconIdentityCondition.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CLMonitor.BeaconIdentityCondition.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v6 = a2 + *(result + 20);
  *v6 = 0;
  *(v6 + 2) = 1;
  v7 = a2 + *(result + 24);
  *v7 = 0;
  *(v7 + 2) = 1;
  return result;
}

uint64_t CLMonitor.BeaconIdentityCondition.init(uuid:major:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v8 = a3 + *(result + 20);
  *v8 = a2;
  *(v8 + 2) = 0;
  v9 = a3 + *(result + 24);
  *v9 = 0;
  *(v9 + 2) = 1;
  return result;
}

uint64_t CLMonitor.BeaconIdentityCondition.init(uuid:major:minor:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 2) = 0;
  v11 = a4 + *(result + 24);
  *v11 = a3;
  *(v11 + 2) = 0;
  return result;
}

uint64_t CLMonitor.BeaconIdentityCondition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v8 = *(v24 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v8;
    v14 = v22;
    v15 = v23;
    v28 = 0;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = 2;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v13 + 8))(v11, v24);
    (*(v14 + 32))(v15, v7, v4);
    v18 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
    v19 = v15 + *(v18 + 20);
    *v19 = v25;
    *(v19 + 2) = 0;
    v20 = v15 + *(v18 + 24);
    *v20 = v17;
    *(v20 + 2) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CLMonitor.BeaconIdentityCondition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 2);
    v21 = v13;
    v22 = v12;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    lazy protocol witness table accessor for type UInt16? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + *(v11 + 24));
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 2);
    v18 = v15;
    v19 = v14;
    v17[15] = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

CLBeaconIdentityCondition __swiftcall CLMonitor.BeaconIdentityCondition.to()()
{
  v1 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695FB98]);
    v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithUUID_];
  }

  else
  {
    v6 = *v2;
    v7 = (v0 + *(v1 + 24));
    if (v7[1])
    {
      v8 = objc_allocWithZone(MEMORY[0x1E695FB98]);
      v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v5 = [v8 initWithUUID:v4.super.isa major:v6];
    }

    else
    {
      v9 = *v7;
      v10 = objc_allocWithZone(MEMORY[0x1E695FB98]);
      v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v5 = [v10 initWithUUID:v4.super.isa major:v6 minor:v9];
    }
  }

  v11.super.super.isa = v5;

  return v11;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t outlined init with take of ConditionAdapter(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6944A10](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v19;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 96 * v9);
    v15 = v14[3];
    a3[2] = v14[2];
    a3[3] = v15;
    v16 = v14[5];
    a3[4] = v14[4];
    a3[5] = v16;
    v17 = v14[1];
    *a3 = *v14;
    a3[1] = v17;
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMd, &_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMR);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v26 = v23 | (v9 << 6);
      v27 = (*(v5 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = (*(v5 + 56) + 96 * v26);
      if (v45)
      {
        v31 = v30[1];
        v46 = *v30;
        v47 = v31;
        v32 = v30[2];
        v33 = v30[3];
        v34 = v30[5];
        v50 = v30[4];
        v51 = v34;
        v48 = v32;
        v49 = v33;
      }

      else
      {
        outlined init with copy of CLMonitor.Record(v30, &v46);
      }

      v35 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v28;
      v17[1] = v29;
      v18 = (*(v8 + 56) + 96 * v16);
      v19 = v47;
      *v18 = v46;
      v18[1] = v19;
      v20 = v48;
      v21 = v49;
      v22 = v51;
      v18[4] = v50;
      v18[5] = v22;
      v18[2] = v20;
      v18[3] = v21;
      ++*(v8 + 16);
    }

    v24 = v9;
    while (1)
    {
      v9 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v25 = v10[v9];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v13 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 96 * v3);
        v19 = (v18 + 96 * v6);
        if (v3 != v6 || result >= v19 + 96)
        {
          result = memmove(result, v19, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 96 * v11;

    return outlined assign with take of CLMonitor.Record(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 96 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v28 = a1[2];
  v29 = a1[3];
  v30 = a1[5];
  v26[4] = a1[4];
  v26[5] = v30;
  v26[2] = v28;
  v26[3] = v29;
  v31 = v22[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v32;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMd, &_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 96 * v17;
        outlined init with copy of CLMonitor.Record(*(v2 + 56) + 96 * v17, v30);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = v30[1];
        *v24 = v30[0];
        v26 = v30[2];
        v27 = v30[3];
        v28 = v30[5];
        v24[4] = v30[4];
        v24[5] = v28;
        v24[2] = v26;
        v24[3] = v27;
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreLocation9CLMonitorC6RecordVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMd, &_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CLCondition?(v4, &v18, &_sSS_12CoreLocation9CLMonitorC6RecordVtMd, _sSS_12CoreLocation9CLMonitorC6RecordVtMR);
      v5 = v18;
      v6 = v19;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 96 * result);
      v11 = v21;
      *v10 = v20;
      v10[1] = v11;
      v12 = v22;
      v13 = v23;
      v14 = v25;
      v10[4] = v24;
      v10[5] = v14;
      v10[2] = v12;
      v10[3] = v13;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 112;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in CLMonitor.init(_:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator;

  return closure #1 in CLMonitor.init(_:)(a1, v1);
}

uint64_t outlined init with take of CLMonitor.Events(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLMonitor.Events(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of CLMonitor.Events(uint64_t a1)
{
  v2 = type metadata accessor for CLMonitor.Events(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt16? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UInt16? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt16? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16? and conformance <A> A?);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition()
{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CLMonitor.CircularGeographicCondition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition()
{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CLMonitor.BeaconIdentityCondition(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition and conformance CLMonitor.BeaconIdentityCondition, type metadata accessor for CLMonitor.BeaconIdentityCondition);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition and conformance CLMonitor.BeaconIdentityCondition, type metadata accessor for CLMonitor.BeaconIdentityCondition);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CLMonitor.Events(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CLMonitor()
{
  result = type metadata accessor for CLMonitor.Events(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CLMonitor.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 208);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = CLMonitor.__allocating_init(_:);

  return v10(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_12CoreLocation11CLCondition_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.Record(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CLMonitor.Record(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.Event(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CLMonitor.Event(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for CLMonitor.Events()
{
  type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for AsyncStream<CLMonitor.Event>, &type metadata for CLMonitor.Event, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for AsyncStream<CLMonitor.Event>.Continuation, &type metadata for CLMonitor.Event, MEMORY[0x1E69E8660]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLMonitoringRecord(319, &lazy cache variable for type metadata for CLMonitorConfiguration, 0x1E695FC08);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ()();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for CLMonitoringRecord(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata completion function for CLMonitor.Events.Iterator()
{
  type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for AsyncStream<CLMonitor.Event>.Iterator, &type metadata for CLMonitor.Event, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for CLMonitor.Event?, &type metadata for CLMonitor.Event, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.CircularGeographicCondition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CLMonitor.CircularGeographicCondition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void type metadata completion function for CLMonitor.BeaconIdentityCondition()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for UInt16?, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<CLMonitor.Event>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.BeaconIdentityCondition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.Options and conformance CLMonitor.Options()
{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs6UInt32VGMd, &_ss18_DictionaryStorageCySSs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CLCondition?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of CLCondition?(v10, v6, &_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Date();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t specialized CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of CLMonitor.Event?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of CLCondition?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t type metadata accessor for CLIdentifiableClientConnectionManager()
{
  result = lazy cache variable for type metadata for CLIdentifiableClientConnectionManager;
  if (!lazy cache variable for type metadata for CLIdentifiableClientConnectionManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLIdentifiableClientConnectionManager);
  }

  return result;
}

uint64_t CLIdentifiableConnectionSequence.Iterator.init(iterator:itrConnectionMgr:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncStream.Iterator();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CLIdentifiableConnectionSequence.Iterator();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t CLIdentifiableConnectionSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](CLIdentifiableConnectionSequence.Iterator.next(), 0, 0);
}

uint64_t CLIdentifiableConnectionSequence.Iterator.next()()
{
  v1 = v0[3];
  [*(v0[4] + *(v1 + 28)) resume];
  v2 = *(MEMORY[0x1E69E8680] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 16);
  v5 = type metadata accessor for AsyncStream.Iterator();
  *v3 = v0;
  v3[1] = CLIdentifiableConnectionSequence.Iterator.next();
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE6D9D0](v7, v5);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator;

  return CLIdentifiableConnectionSequence.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s12CoreLocation32CLIdentifiableConnectionSequenceV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = _s12CoreLocation32CLIdentifiableConnectionSequenceV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t _s12CoreLocation32CLIdentifiableConnectionSequenceV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id CLIdentifiableConnectionSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = (*(*(type metadata accessor for AsyncStream.Iterator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v11 - v7;
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  v12 = *(v2 + *(a1 + 28));
  CLIdentifiableConnectionSequence.Iterator.init(iterator:itrConnectionMgr:)(v8, v12, a2);
  v9 = v12;

  return v9;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLIdentifiableConnectionSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CLIdentifiableConnectionSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t type metadata completion function for CLIdentifiableConnectionSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = a4(319, *(a1 + 16));
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CLIdentifiableClientConnectionManager();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v7 = a4(0, *(a3 + 16));
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 28));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  result = a5(0, *(a4 + 16));
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t related decl e for CLError.alternateRegion.getter()
{
  type metadata accessor for related decl 'e' for CLError(0);
  lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = *MEMORY[0x1E695FC68];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Any(*(v0 + 56) + 32 * v4, v9);

  type metadata accessor for CLRegion();
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type related decl e for CLError and conformance related decl e for CLError()
{
  result = lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError;
  if (!lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError)
  {
    type metadata accessor for related decl 'e' for CLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError);
  }

  return result;
}

unint64_t type metadata accessor for CLRegion()
{
  result = lazy cache variable for type metadata for CLRegion;
  if (!lazy cache variable for type metadata for CLRegion)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLRegion);
  }

  return result;
}

uint64_t CLServiceSession.__allocating_init(authorization:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CLServiceSession.init(authorization:)(a1);
  return v5;
}

void CLServiceSession.init(authorization:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  *(v2 + 40) = 0;
  *(v2 + 44) = 1;
  v4 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = [objc_opt_self() disconnectedSessionRequiringAuthorization_];
  v7 = *(v2 + 16);
  *(v2 + 16) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = type metadata accessor for CLServiceSession.Diagnostics(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = specialized CLServiceSession.Diagnostics.init(_:)(v8);

    v13 = *(v2 + 24);
    *(v2 + 24) = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CLServiceSession.__allocating_init(authorization:fullAccuracyPurposeKey:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CLServiceSession.init(authorization:fullAccuracyPurposeKey:)(a1, a2, a3);
  return v9;
}

void CLServiceSession.init(authorization:fullAccuracyPurposeKey:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  *(v4 + 40) = 0;
  *(v4 + 44) = 1;
  v8 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = objc_opt_self();
  v11 = MEMORY[0x1C6944850](a2, a3);
  v12 = [v10 disconnectedSessionRequiringAuthorization:v7 fullAccuracyPurposeKey:v11];

  v13 = *(v4 + 16);
  *(v4 + 16) = v12;
  v14 = v12;

  if (v14)
  {

    v15 = type metadata accessor for CLServiceSession.Diagnostics(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = specialized CLServiceSession.Diagnostics.init(_:)(v14);

    v19 = *(v4 + 24);
    *(v4 + 24) = v18;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CLServiceSession.__allocating_init(requirement:)(unsigned __int8 *a1)
{
  v5 = *a1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return specialized CLServiceSession.init(requirement:locationManager:)(&v5, 0);
}

uint64_t CLServiceSession.__allocating_init(requirement:locationManager:)(unsigned __int8 *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = specialized CLServiceSession.init(requirement:locationManager:)(a1, a2);

  return v7;
}

uint64_t CLServiceSession.init(requirement:locationManager:)(unsigned __int8 *a1, void *a2)
{
  v3 = specialized CLServiceSession.init(requirement:locationManager:)(a1, a2);

  return v3;
}

void closure #1 in CLServiceSession.init(requirement:locationManager:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&dword_1C5333000, v9, v10, "#CLServiceSession handler : messageName: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1C6945100](v12, -1, -1);
    MEMORY[0x1C6945100](v11, -1, -1);
  }

  v25[0] = 0xD000000000000022;
  v25[1] = 0x80000001C534FA00;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v13, v25);
    outlined destroy of AnyHashable(v24);
    if (swift_dynamicCast())
    {
      v15 = v23;
      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v24);
  }

  v15 = 0;
LABEL_11:
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v25[0] = v15;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1C5333000, v16, v17, "#CLServiceSession handler: diagnostics: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1C6945100](v19, -1, -1);
    MEMORY[0x1C6945100](v18, -1, -1);
  }

  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = v15;
  }
}

void CLServiceSession.init(locationManager:authorization:)(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0;
  *(v3 + 44) = 1;
  v6 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = [objc_opt_self() sessionWithLocationManager:a1 authorizationRequirement:v5 fullAccuracyPurposeKey:0 queue:0 handler:0];
  v9 = *(v3 + 16);
  *(v3 + 16) = v8;
  v10 = v8;

  if (v10)
  {
    v11 = type metadata accessor for CLServiceSession.Diagnostics(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = specialized CLServiceSession.Diagnostics.init(_:)(v10);

    v15 = *(v3 + 24);
    *(v3 + 24) = v14;
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CLServiceSessionDiagnostic) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Void __swiftcall CLServiceSession.invalidate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  [*(v0 + 16) invalidate];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  swift_beginAccess();
  outlined assign with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(v4, v0 + v6);
  swift_endAccess();
}

uint64_t CLServiceSession.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of CLMonitor.Event?(v0 + OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  return v0;
}

uint64_t CLServiceSession.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of CLMonitor.Event?(v0 + OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void CLLocationManager.serviceSession()(unsigned __int8 a1)
{
  v5 = a1;
  v2 = type metadata accessor for CLServiceSession(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  CLServiceSession.init(locationManager:authorization:)(v1, &v5);
}

uint64_t CLServiceSession.Diagnostics.Iterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  *v4 = v1;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLServiceSession.Diagnostics.Iterator(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  *v4 = v1;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLServiceSession.Diagnostics.Iterator;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

uint64_t _s12CoreLocation16CLServiceSessionC11DiagnosticsC8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v6[6] = v11;
  *v11 = v6;
  v11[1] = _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t CLServiceSession.Diagnostics.makeAsyncIterator()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5333000, v1, v2, "#serviceSession makeAsyncIterator", v3, 2u);
    MEMORY[0x1C6945100](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  return AsyncStream.makeAsyncIterator()();
}

uint64_t closure #1 in CLServiceSession.Diagnostics.init(_:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, _sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v20 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20[1] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v20[2] = [v10 diagnosticMask];
    type metadata accessor for CLClientDiagnosticMask(0);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1C5333000, v11, v12, "#serviceSession yielding diagnosticMask: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1C6945100](v15, -1, -1);
    MEMORY[0x1C6945100](v14, -1, -1);
  }

  v21 = [v10 diagnosticMask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v8, v4);
}

id closure #2 in CLServiceSession.Diagnostics.init(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5333000, v4, v5, "#serviceSession terminating", v6, 2u);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  result = *(a2 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_serviceSession);
  if (result)
  {

    return [result invalidate];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CLServiceSession.Diagnostics.deinit()
{
  v1 = OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CLServiceSession.Diagnostics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLServiceSession.Diagnostics()
{
  v1 = *v0;
  CLServiceSession.Diagnostics.makeAsyncIterator()();
}

void CLServiceSession.diagnostics.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5333000, v8, v9, "#serviceSession creating a Diagnostics AsyncSequence", v10, 2u);
    MEMORY[0x1C6945100](v10, -1, -1);
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 24))
    {
      v11 = *(v1 + 24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = type metadata accessor for CLServiceSession.Diagnostics(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8650], v2);
    AsyncStream.init(_:bufferingPolicy:_:)();
    *(v15 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_serviceSession) = 0;
  }
}

uint64_t CLServiceSession._locationIntelligenceDiagnostics.getter@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  swift_beginAccess();
  outlined init with copy of CLCondition?(v1 + v12, v11, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v11, 1, v13);
  outlined destroy of CLMonitor.Event?(v11, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  if (v15 == 1)
  {
    (*(v22 + 104))(v24, *MEMORY[0x1E69E8650], v23);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
    v17 = v25;
    v25[3] = v16;
    v17[4] = lazy protocol witness table accessor for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>(&lazy protocol witness table cache variable for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
    __swift_allocate_boxed_opaque_existential_1(v17);
    return AsyncStream.init(_:bufferingPolicy:_:)();
  }

  else
  {
    v19 = v25;
    outlined init with copy of CLCondition?(v1 + v12, v9, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
    result = v14(v9, 1, v13);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v19[3] = v13;
      v19[4] = lazy protocol witness table accessor for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>(&lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic> and conformance CLIdentifiableConnectionSequence<A>, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      return outlined init with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>(v9, boxed_opaque_existential_1);
    }
  }

  return result;
}

Swift::Int CLServiceSession.AuthorizationRequirement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLServiceSession.AuthorizationRequirement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLServiceSession.AuthorizationRequirement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t specialized CLServiceSession.Diagnostics.init(_:)(void *a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = (MEMORY[0x1EEE9AC00])();
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v17 = v5;
  v18 = v34;
  (*(v2 + 8))(v17, v1);
  v36 = v13;
  v37 = v12;
  v19 = v12;
  v20 = v6;
  v21 = v33;
  (*(v13 + 16))(v18 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_stream, v16, v19);
  v22 = v35;
  *(v18 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_serviceSession) = v35;
  (*(v21 + 16))(v9, v11, v20);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v24 = swift_allocObject();
  (*(v21 + 32))(v24 + v23, v9, v20);
  aBlock[4] = partial apply for closure #1 in CLServiceSession.Diagnostics.init(_:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLServiceSessionDiagnostic) -> ();
  aBlock[3] = &block_descriptor_51;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  [v26 setHandler_];
  _Block_release(v25);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1C5333000, v28, v29, "#serviceSession successfully created", v30, 2u);
    MEMORY[0x1C6945100](v30, -1, -1);
  }

  AsyncStream.Continuation.onTermination.setter();
  (*(v21 + 8))(v11, v20);
  (*(v36 + 8))(v16, v37);
  return v18;
}

uint64_t specialized CLServiceSession.init(requirement:locationManager:)(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v96 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v95 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v108 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v95 - v31;
  v33 = *a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0;
  *(v3 + 44) = 1;
  v34 = *(v20 + 56);
  v106 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v111 = v19;
  v105 = v20 + 56;
  v104 = v34;
  v34(v3 + OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence, 1, 1, v19);
  if (!(v33 >> 6))
  {
    if (v33)
    {
      if (v33 != 1)
      {
        *(v3 + 32) = 2;
        *(v3 + 36) = 0;
        v36 = 1;
        goto LABEL_12;
      }

      v36 = 1;
      *(v3 + 32) = 1;
    }

    else
    {
      v36 = 0;
      *(v3 + 32) = 1;
    }

    *(v3 + 36) = 0;
    goto LABEL_12;
  }

  if (v33 >> 6 == 1)
  {
    v35 = 3;
  }

  else
  {
    v35 = 4;
  }

  *(v3 + 32) = v35;
  *(v3 + 36) = 0;
  v36 = v33 & 1;
LABEL_12:
  v107 = v32;
  v109 = v20;
  *(v3 + 40) = v36;
  *(v3 + 44) = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  __swift_project_value_buffer(v99, logger);
  swift_retain_n();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v112 = v16;
  if (!v39)
  {

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s6UInt32VtGMd, &_ss23_ContiguousArrayStorageCySS_s6UInt32VtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C534EE00;
    *(inited + 32) = 0x546E6F6973736553;
    *(inited + 40) = 0xEB00000000657079;
    if (*(v3 + 36))
    {
      __break(1u);
    }

    else
    {
      *(inited + 48) = *(v3 + 32);
      *(inited + 56) = 0x4D6E6F6973736553;
      *(inited + 64) = 0xEB0000000065646FLL;
      if ((*(v3 + 44) & 1) == 0)
      {
        *(inited + 72) = *(v3 + 40);
        v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_s6UInt32VtMd, &_sSS_s6UInt32VtMR);
        swift_arrayDestroy();
        v98 = "ssion11Diagnostics";
        v97 = v54;
        v55 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v54);
        (*(v6 + 104))(v9, *MEMORY[0x1E69E8650], v5);
        v56 = v100;
        v57 = v113;
        v58 = v116;
        static AsyncStream.makeStream(of:bufferingPolicy:)();
        (*(v6 + 8))(v9, v5);
        v59 = *(v16 + 16);
        v60 = v110;
        v100 = v15;
        v59(v110, v57, v15);
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v55);

        v61 = v114;
        v62 = v115;
        v63 = v102;
        (*(v114 + 16))(v102, v58, v115);
        v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
        v65 = (v101 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = swift_allocObject();
        (*(v61 + 32))(v66 + v64, v63, v62);
        v67 = (v66 + v65);
        *v67 = closure #1 in CLServiceSession.init(requirement:locationManager:);
        v67[1] = 0;
        v68 = objc_allocWithZone(MEMORY[0x1E695FBD8]);
        v69 = v56;
        v70 = MEMORY[0x1C6944850](0xD000000000000023, v98 | 0x8000000000000000);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        aBlock[4] = partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:);
        aBlock[5] = v66;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed [AnyHashable : Any]) -> ();
        aBlock[3] = &block_descriptor_0;
        v72 = _Block_copy(aBlock);
        v73 = [v68 initWithStartMessageName:v70 startMessagePayload:isa locationManager:v69 responseHandler:v72];

        v74 = v60;
        _Block_release(v72);

        v75 = v111;
        *(v60 + *(v111 + 28)) = v73;
        v76 = swift_allocObject();
        *(v76 + 16) = 0;
        *(v76 + 24) = v73;
        v77 = v73;
        AsyncStream.Continuation.onTermination.setter();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v99, logger);
        v78 = v103;
        outlined init with copy of CLCondition?(v60, v103, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          aBlock[0] = v82;
          *v81 = 136315138;
          v102 = v69;
          outlined init with copy of CLCondition?(v78, v96, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
          v83 = String.init<A>(describing:)();
          v84 = v78;
          v85 = v83;
          v87 = v86;
          outlined destroy of CLMonitor.Event?(v84, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, aBlock);
          v75 = v111;

          *(v81 + 4) = v88;
          _os_log_impl(&dword_1C5333000, v79, v80, "#ConnectionSequnece created. self: %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          MEMORY[0x1C6945100](v82, -1, -1);
          v89 = v81;
          v74 = v110;
          MEMORY[0x1C6945100](v89, -1, -1);
        }

        else
        {

          outlined destroy of CLMonitor.Event?(v78, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
        }

        (*(v114 + 8))(v116, v115);
        (*(v112 + 8))(v113, v100);
        v90 = v109;
        v91 = v108;
        v92 = v107;
        v93 = v106;
        v94 = v104;
        outlined init with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>(v74, v107);
        v94(v92, 0, 1, v75);
        swift_beginAccess();
        outlined assign with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(v92, v3 + v93);
        swift_endAccess();
        outlined init with copy of CLCondition?(v3 + v93, v91, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
        if ((*(v90 + 48))(v91, 1, v75) != 1)
        {

          [*(v91 + *(v75 + 28)) resume];
          outlined destroy of CLMonitor.Event?(v91, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
          return v3;
        }

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v98 = v5;
  v40 = v15;
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  aBlock[0] = v42;
  *v41 = 136315394;
  v43 = *(v3 + 32);
  v44 = *(v3 + 36);

  if (v44)
  {
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  v117 = v43;
  type metadata accessor for CLServiceSessionType(0);
  v45 = String.init<A>(describing:)();
  v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, aBlock);

  *(v41 + 4) = v47;
  *(v41 + 12) = 2080;
  v48 = *(v3 + 40);
  LOBYTE(v47) = *(v3 + 44);

  if ((v47 & 1) == 0)
  {
    v117 = v48;
    type metadata accessor for CLServiceSessionMode(0);
    v50 = String.init<A>(describing:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, aBlock);

    *(v41 + 14) = v52;
    _os_log_impl(&dword_1C5333000, v37, v38, "#CLServiceSession init SessionType: %s, SessionMode: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v42, -1, -1);
    MEMORY[0x1C6945100](v41, -1, -1);

    v15 = v40;
    v16 = v112;
    v5 = v98;
    goto LABEL_19;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator;
  if (!lazy protocol witness table cache variable for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator)
  {
    type metadata accessor for CLServiceSession.Diagnostics.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement;
  if (!lazy protocol witness table cache variable for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement;
  if (!lazy protocol witness table cache variable for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement;
  if (!lazy protocol witness table cache variable for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement);
  }

  return result;
}

void type metadata completion function for CLServiceSession()
{
  type metadata accessor for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?()
{
  if (!lazy cache variable for type metadata for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?);
    }
  }
}

void type metadata completion function for CLServiceSession.Diagnostics()
{
  type metadata accessor for AsyncStream<CLServiceSession.Diagnostic>(319, &lazy cache variable for type metadata for AsyncStream<CLServiceSession.Diagnostic>, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLServiceSession.Diagnostics.Iterator()
{
  type metadata accessor for AsyncStream<CLServiceSession.Diagnostic>(319, &lazy cache variable for type metadata for AsyncStream<CLServiceSession.Diagnostic>.Iterator, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncStream<CLServiceSession.Diagnostic>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CLServiceSession.Diagnostic);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CLServiceSession.Requirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CLServiceSession.Requirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLServiceSession.LearnedRoutesRequirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLServiceSession.LearnedRoutesRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(NSObject *a1, unint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(a1, a2, a3, v3 + v8, v10, v11);
}

{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(a1, a2, a3, v3 + v8, v10, v11);
}

{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in CLServiceSession.Diagnostics.init(_:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CLServiceSession.Diagnostics.init(_:)(a1, v4);
}

void one-time initialization function for CLLocationCoordinate2DInNSValueObjCType()
{
  v0 = Selector.init(_:)();
  type metadata accessor for NSValue();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata methodForSelector_];
  if (v2)
  {
    v3 = v2(ObjCClassFromMetadata, v0, 0.0, 0.0);
    v4 = [v3 objCType];
    v5 = v3;
  }

  else
  {
    type metadata accessor for CLLocationCoordinate2D(0);
    v4 = "{CLLocationCoordinate2D=dd}";
  }

  CLLocationCoordinate2DInNSValueObjCType = v4;
}

NSValue __swiftcall CLLocationCoordinate2D._bridgeToObjectiveC()()
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = v0;
  v5 = v1;
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    swift_once();
  }

  result.super.isa = [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:&v4 objCType:CLLocationCoordinate2DInNSValueObjCType];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CLLocationCoordinate2D()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:&v3 objCType:CLLocationCoordinate2DInNSValueObjCType];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

double specialized static CLLocationCoordinate2D._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 objCType];
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    v7 = v4;
    swift_once();
    v4 = v7;
  }

  if (strcmp(v4, CLLocationCoordinate2DInNSValueObjCType))
  {
    __break(1u);
  }

  *v8 = 0uLL;
  [a1 getValue_];
  result = v8[0];
  *a2 = *v8;
  *(a2 + 16) = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL specialized static CLLocationCoordinate2D._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 objCType];
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = strcmp(v4, CLLocationCoordinate2DInNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    v10 = 0uLL;
    [a1 getValue_];
    v6 = v10;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v5 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

double specialized static CLLocationCoordinate2D._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  v2 = [a1 objCType];
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  if (strcmp(v2, CLLocationCoordinate2DInNSValueObjCType))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6[0] = 0;
  v6[1] = 0;
  [a1 getValue_];
  result = *v6;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

uint64_t _CLUpdaterAdapter.__deallocating_deinit()
{
  [*(v0 + 16) pause];

  return swift_deallocClassInstance();
}

void thunk for @escaping @callee_guaranteed (@guaranteed CLUpdate?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id CLLocationUpdate.location.getter()
{
  v1 = [*v0 location];

  return v1;
}

Swift::Int CLLocationUpdate.LiveConfiguration.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

void CLLocationUpdate.Updates.init(_:configuration:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (a1)
  {
    v6 = [a1 liveUpdaterWithConfiguration:v5 queue:0 handler:0];
  }

  else
  {
    v6 = [objc_opt_self() _liveUpdaterWithConfiguration_queue_handler_];
  }

  v7 = v6;
  v8 = one-time initialization token for logger;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1C5333000, v11, v12, "#LocationUpdates Creating liveUpdates %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1C6945100](v14, -1, -1);
    MEMORY[0x1C6945100](v13, -1, -1);
  }

  if (v9)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(v9, 0, a3);
  }

  else
  {
    __break(1u);
  }
}

void static CLLocationUpdate.historicalUpdates(interestInterval:maxSampleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  CLLocationUpdate.Updates.init(_:interestInterval:maxSampleCount:)(0, v11, a2, a3 & 1, a4);
}

void CLLocationUpdate.Updates.init(_:interestInterval:maxSampleCount:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a5;
  v46 = a4;
  v45 = a3;
  if (a1)
  {
    v15 = a1;
    v16.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      v17 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = a3;
    }

    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      isa = v16.super.isa;
      v19 = v10;
      v20 = [v15 historicalUpdaterWithDateInterval:v16.super.isa sampleCount:? queue:? handler:?];

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_23;
  }

  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v21 = 0x7FFFFFFFLL;
  }

  else
  {
    v21 = a3;
  }

  v22 = objc_opt_self();
  if (v21 < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v10;
  v20 = [v22 _historicalUpdaterWithDateInterval_sampleCount_queue_handler_];
LABEL_14:

  v23 = one-time initialization token for logger;
  v24 = v20;
  if (v23 != -1)
  {
    swift_once();
  }

  v47 = a1;
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v26 = v19;
  (*(v11 + 16))(v14, a2, v19);
  v27 = Logger.logObject.getter();
  v28 = v11;
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v44 = a2;
    v31 = v30;
    v43 = swift_slowAlloc();
    v51 = v43;
    *v31 = 136315394;
    lazy protocol witness table accessor for type CLLocationUpdate.Updates.Iterator and conformance CLLocationUpdate.Updates.Iterator(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v28 + 8);
    v35(v14, v26);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v51);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v49 = v45;
    v50 = v46 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v51);

    *(v31 + 14) = v39;
    _os_log_impl(&dword_1C5333000, v27, v29, "#LocationUpdates Creating historicalUpdates with interestInterval: %s, maxSampleCount: %s", v31, 0x16u);
    v40 = v43;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v40, -1, -1);
    v41 = v31;
    a2 = v44;
    MEMORY[0x1C6945100](v41, -1, -1);
  }

  else
  {

    v35 = *(v28 + 8);
    v35(v14, v26);
  }

  if (v24)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(v24, 1, v48);

    v35(a2, v26);
    return;
  }

LABEL_25:
  __break(1u);
}

void static CLLocationUpdate.historicalUpdates(center:radius:interestInterval:maxSampleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v50 - v24;
  outlined init with copy of DateInterval?(a1, &v50 - v24);
  outlined init with copy of DateInterval?(v25, v23);
  v26 = type metadata accessor for DateInterval();
  v27 = *(v26 - 8);
  isa = 0;
  if ((*(v27 + 48))(v23, 1, v26) != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v27 + 8))(v23, v26);
  }

  if (a3)
  {
    v29 = 0x7FFFFFFFLL;
  }

  else
  {
    v29 = a2;
  }

  v30 = objc_opt_self();
  if (v29 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v29 <= 0x7FFFFFFF)
  {
    v53 = v14;
    v31 = [v30 _historicalUpdaterWithCenter_radius_dateInterval_sampleCount_queue_handler_];

    v32 = one-time initialization token for logger;
    v14 = v31;
    if (v32 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, logger);
  outlined init with copy of DateInterval?(v25, v20);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v50 = *&a2;
    v37 = v36;
    v51 = swift_slowAlloc();
    v57 = v51;
    *v37 = 136315906;
    v55 = a5;
    v56 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v57);
    v52 = a4;
    v41 = v40;

    *(v37 + 4) = v41;
    *(v37 + 12) = 2048;
    *(v37 + 14) = a7;
    *(v37 + 22) = 2080;
    outlined init with copy of DateInterval?(v20, v54);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    outlined destroy of DateInterval?(v20);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v57);

    *(v37 + 24) = v45;
    *(v37 + 32) = 2080;
    v55 = v50;
    LOBYTE(v56) = a3 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v46 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v57);

    *(v37 + 34) = v48;
    a4 = v52;
    _os_log_impl(&dword_1C5333000, v34, v35, "#LocationUpdates Creating historicalUpdates with center: %s,  with radius: %f, interestInterval: %s, sampleCount: %s", v37, 0x2Au);
    v49 = v51;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v49, -1, -1);
    MEMORY[0x1C6945100](v37, -1, -1);
  }

  else
  {

    outlined destroy of DateInterval?(v20);
  }

  if (v14)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(v14, 1, a4);

    outlined destroy of DateInterval?(v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CLLocationUpdate.Updates.Iterator.next()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](CLLocationUpdate.Updates.Iterator.next(), 0, 0);
}

uint64_t CLLocationUpdate.Updates.Iterator.next()()
{
  [*(*(*(v0 + 40) + *(type metadata accessor for CLLocationUpdate.Updates.Iterator(0) + 20)) + 16) resume];
  v1 = *(MEMORY[0x1E69E8680] + 4);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS8IteratorVy12CoreLocation16CLLocationUpdateV_GMR);
  *v2 = v0;
  v2[1] = CLLocationUpdate.Updates.Iterator.next();
  v4 = *(v0 + 40);

  return MEMORY[0x1EEE6D9D0](v0 + 16, v3);
}

{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](CLLocationUpdate.Updates.Iterator.next(), 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 16);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136380675;
    *(v0 + 24) = v1;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation16CLLocationUpdateVSgMd, &_s12CoreLocation16CLLocationUpdateVSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C5333000, v4, v5, "#LocationUpdates Iterator.next value: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6945100](v7, -1, -1);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  **(v0 + 32) = v1;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLLocationUpdate.Updates.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator;

  return CLLocationUpdate.Updates.Iterator.next()(a1);
}

uint64_t _s12CoreLocation16CLLocationUpdateV7UpdatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return CLLocationUpdate.Updates.Iterator.next()(a1);
}

id CLLocationUpdate.Updates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C5333000, v5, v6, "#LocationUpdates makeAsyncIterator", v7, 2u);
    MEMORY[0x1C6945100](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLLocationUpdateVGMd, &_sScSy12CoreLocation16CLLocationUpdateVGMR);
  AsyncStream.makeAsyncIterator()();
  v10 = *(v2 + *(type metadata accessor for CLLocationUpdate.Updates(0) + 20));
  type metadata accessor for _CLUpdaterAdapter();
  v8 = swift_allocObject();
  *(v8 + 16) = v10;
  *(a1 + *(type metadata accessor for CLLocationUpdate.Updates.Iterator(0) + 20)) = v8;

  return v10;
}

uint64_t CLLocationUpdate.Updates.init(updater:isHistorical:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v38 = a3;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLLocationUpdateV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLLocationUpdateV__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLLocationUpdateVGMd, &_sScSy12CoreLocation16CLLocationUpdateVGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v19 = v3;
  v20 = v8;
  (*(v4 + 8))(v7, v19);
  v21 = *(v15 + 16);
  v22 = v38;
  v41 = v14;
  v42 = v18;
  v23 = v18;
  v24 = v13;
  v25 = v37;
  v21(v38, v23, v14);
  v26 = type metadata accessor for CLLocationUpdate.Updates(0);
  v27 = v39;
  *(v22 + *(v26 + 20)) = v39;
  (*(v25 + 16))(v11, v24, v8);
  v28 = (*(v25 + 80) + 17) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v40;
  (*(v25 + 32))(v29 + v28, v11, v8);
  aBlock[4] = partial apply for closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLUpdate?) -> ();
  aBlock[3] = &block_descriptor_1;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  [v31 setHandler_];
  _Block_release(v30);

  *(swift_allocObject() + 16) = v31;
  AsyncStream.Continuation.onTermination.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, logger);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C5333000, v33, v34, "#LocationUpdates successfully created", v35, 2u);
    MEMORY[0x1C6945100](v35, -1, -1);
  }

  (*(v25 + 8))(v24, v20);
  return (*(v15 + 8))(v42, v41);
}

void closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:)(uint64_t *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation16CLLocationUpdateV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation16CLLocationUpdateV__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  if (a2)
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
      AsyncStream.Continuation.finish()();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, logger);
      v24 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1C5333000, v24, v10, "#LocationUpdates Historical updates has finished iterating. Ending iteration.", v11, 2u);
        MEMORY[0x1C6945100](v11, -1, -1);
      }

      v12 = v24;

      return;
    }
  }

  else if (!a1)
  {
    __break(1u);
    return;
  }

  v26 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v8, v4);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136380675;

    v25 = [v15 location];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CLLocationCSgMd, &_sSo10CLLocationCSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1C5333000, v16, v17, "#LocationUpdates yielding an Update: %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1C6945100](v19, -1, -1);
    MEMORY[0x1C6945100](v18, -1, -1);
  }

  else
  {
  }
}

id closure #2 in CLLocationUpdate.Updates.init(updater:isHistorical:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5333000, v4, v5, "#LocationUpdates terminating", v6, 2u);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  return [a2 pause];
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLLocationUpdate.Updates@<X0>(uint64_t a1@<X8>)
{
  CLLocationUpdate.Updates.makeAsyncIterator()(a1);

  return outlined destroy of CLLocationUpdate.Updates(v1);
}

void CLLocationManager.liveUpdates(_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = v2;
  CLLocationUpdate.Updates.init(_:configuration:)(v2, &v5, a2);
}

void CLLocationManager.historicalUpdates(interestInterval:maxSampleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DateInterval();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  v14 = v4;
  CLLocationUpdate.Updates.init(_:interestInterval:maxSampleCount:)(v4, v12, a2, a3 & 1, a4);
}

void CLLocationManager.historicalUpdates(center:radius:interestInterval:maxSampleCount:)(uint64_t a1@<X0>, double a2@<X1>, id a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v14 = *(*(v52 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  outlined init with copy of DateInterval?(a1, &v49 - v23);
  outlined init with copy of DateInterval?(v24, v22);
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v22, 1, v25);
  v28 = v7;
  isa = 0;
  if (v27 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v22, v25);
  }

  if (a3)
  {
    v30 = 0x7FFFFFFFLL;
  }

  else
  {
    v30 = *&v53;
  }

  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v30 <= 0x7FFFFFFF)
  {
    v50 = a3;
    v31 = [v28 historicalUpdaterWithDateInterval:isa sampleCount:? queue:? handler:?];

    v32 = one-time initialization token for logger;
    a3 = v31;
    if (v32 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, logger);
  outlined init with copy of DateInterval?(v24, v19);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v56 = v49;
    *v36 = 136315906;
    v54 = a5;
    v55 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v37 = String.init<A>(describing:)();
    v39 = a4;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v56);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2048;
    *(v36 + 14) = a7;
    *(v36 + 22) = 2080;
    outlined init with copy of DateInterval?(v19, v51);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    outlined destroy of DateInterval?(v19);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v56);
    a4 = v39;

    *(v36 + 24) = v44;
    *(v36 + 32) = 2080;
    v54 = v53;
    LOBYTE(v55) = v50 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v56);

    *(v36 + 34) = v47;
    _os_log_impl(&dword_1C5333000, v34, v35, "#LocationUpdates Creating historicalUpdates with center: %s,  with radius: %f, interestInterval: %s, sampleCount: %s", v36, 0x2Au);
    v48 = v49;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v48, -1, -1);
    MEMORY[0x1C6945100](v36, -1, -1);
  }

  else
  {

    outlined destroy of DateInterval?(v19);
  }

  if (a3)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(a3, 1, a4);

    outlined destroy of DateInterval?(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  v1 = a1();

  return MEMORY[0x1EEE6BBE8](v1, 0);
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration()
{
  result = lazy protocol witness table cache variable for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration;
  if (!lazy protocol witness table cache variable for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationUpdate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CLLocationUpdate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationUpdate.LiveConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLLocationUpdate.LiveConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLLocationUpdate.Updates()
{
  type metadata accessor for AsyncStream<CLLocationUpdate>(319, &lazy cache variable for type metadata for AsyncStream<CLLocationUpdate>, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for CLLocationUpdate.Updates.Iterator()
{
  type metadata accessor for AsyncStream<CLLocationUpdate>(319, &lazy cache variable for type metadata for AsyncStream<CLLocationUpdate>.Iterator, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for _CLUpdaterAdapter();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<CLLocationUpdate>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CLLocationUpdate);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of CLLocationUpdate.Updates(uint64_t a1)
{
  v2 = type metadata accessor for CLLocationUpdate.Updates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void partial apply for closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:)(uint64_t *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR) - 8) + 80);
  v4 = *(v1 + 16);

  closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:)(a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type CLLocationUpdate.Updates.Iterator and conformance CLLocationUpdate.Updates.Iterator(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 4 * v15);

        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = outlined init with take of Any(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, &_sSS3key_10Foundation4DateV5valuetMR);
  v6 = *(*(v49 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v49);
  v48 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v41 - v9;
  v53 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v10 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v11 = v53 + 64;
  v12 = 1 << *(v53 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v53 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = v52 + 16;
  v45 = v52 + 32;
  v42 = v10 + 8;

  v17 = 0;
  v44 = v11;
  v43 = v15;
  while (v14)
  {
    v21 = v17;
LABEL_14:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = v22 | (v21 << 6);
    v24 = v52;
    v25 = (*(v53 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v49;
    v29 = v47;
    v30 = v51;
    (*(v52 + 16))(&v47[*(v49 + 48)], *(v53 + 56) + *(v52 + 72) * v23, v51);
    *v29 = v27;
    v29[1] = v26;
    v31 = v48;
    outlined init with take of (key: String, value: Date)(v29, v48);
    v32 = *(v28 + 48);
    v34 = *v31;
    v33 = v31[1];
    (*(v24 + 32))(v50, v31 + v32, v30);

    swift_dynamicCast();
    outlined init with take of Any(&v54, v56);
    outlined init with take of Any(v56, v57);
    outlined init with take of Any(v57, &v55);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v34, v33);
    v35 = result;
    if (v36)
    {
      v18 = (v10[6] + 16 * result);
      v19 = v18[1];
      *v18 = v34;
      v18[1] = v33;

      v20 = (v10[7] + 32 * v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      result = outlined init with take of Any(&v55, v20);
    }

    else
    {
      if (v10[2] >= v10[3])
      {
        goto LABEL_20;
      }

      *(v42 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v10[6] + 16 * result);
      *v37 = v34;
      v37[1] = v33;
      result = outlined init with take of Any(&v55, (v10[7] + 32 * result));
      v38 = v10[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v10[2] = v40;
    }

    v17 = v21;
    v11 = v44;
    v15 = v43;
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v17;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(NSObject *a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, void, void, void), uint64_t a6)
{
  v33 = a6;
  v34 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, _sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a5;
    v32 = v10;
    v18 = v17;
    v19 = a3;
    v20 = swift_slowAlloc();
    v35 = v20;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a2, &v35);
    _os_log_impl(&dword_1C5333000, v15, v16, "#ConnectionSequnece handler received message: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v21 = v20;
    a3 = v19;
    MEMORY[0x1C6945100](v21, -1, -1);
    a5 = v31;
    v10 = v32;
    MEMORY[0x1C6945100](v18, -1, -1);
  }

  if (*(a3 + 16))
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = a3;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C5333000, v22, v23, "#ConnectionSequnece passing response to the caller", v25, 2u);
      v26 = v25;
      a3 = v24;
      MEMORY[0x1C6945100](v26, -1, -1);
    }

    a5(&v35, v34, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
    AsyncStream.Continuation.finish()();
    v34 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C5333000, v34, v27, "#ConnectionSequnece nil paylaod terminated the AsyncStream", v28, 2u);
      MEMORY[0x1C6945100](v28, -1, -1);
    }

    v29 = v34;
  }
}

void specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(NSObject *a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(os_log_t, unint64_t, uint64_t), uint64_t a6)
{
  v39 = a6;
  v40 = a5;
  v41 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation18CLLivePlaceContextV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation18CLLivePlaceContextV__GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CLLivePlaceContext();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v9;
    v37 = v12;
    v23 = v22;
    v24 = a3;
    v25 = swift_slowAlloc();
    v42 = v25;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a2, &v42);
    _os_log_impl(&dword_1C5333000, v20, v21, "#ConnectionSequnece handler received message: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v26 = v25;
    a3 = v24;
    MEMORY[0x1C6945100](v26, -1, -1);
    v9 = v36;
    v12 = v37;
    MEMORY[0x1C6945100](v23, -1, -1);
  }

  if (*(a3 + 16))
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = a3;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C5333000, v27, v28, "#ConnectionSequnece passing response to the caller", v30, 2u);
      v31 = v30;
      a3 = v29;
      MEMORY[0x1C6945100](v31, -1, -1);
    }

    v40(v41, a2, a3);
    outlined init with copy of CLHistoricalPlaceContext(v18, v38, type metadata accessor for CLLivePlaceContext);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v12, v8);
    outlined destroy of CLHistoricalPlaceContext(v18, type metadata accessor for CLLivePlaceContext);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
    AsyncStream.Continuation.finish()();
    v41 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C5333000, v41, v32, "#ConnectionSequnece nil paylaod terminated the AsyncStream", v33, 2u);
      MEMORY[0x1C6945100](v33, -1, -1);
    }

    v34 = v41;
  }
}

{
  v39 = a6;
  v40 = a5;
  v41 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation24CLHistoricalPlaceContextV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation24CLHistoricalPlaceContextV__GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CLHistoricalPlaceContext();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v9;
    v37 = v12;
    v23 = v22;
    v24 = a3;
    v25 = swift_slowAlloc();
    v42 = v25;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a2, &v42);
    _os_log_impl(&dword_1C5333000, v20, v21, "#ConnectionSequnece handler received message: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v26 = v25;
    a3 = v24;
    MEMORY[0x1C6945100](v26, -1, -1);
    v9 = v36;
    v12 = v37;
    MEMORY[0x1C6945100](v23, -1, -1);
  }

  if (*(a3 + 16))
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = a3;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C5333000, v27, v28, "#ConnectionSequnece passing response to the caller", v30, 2u);
      v31 = v30;
      a3 = v29;
      MEMORY[0x1C6945100](v31, -1, -1);
    }

    v40(v41, a2, a3);
    outlined init with copy of CLHistoricalPlaceContext(v18, v38, type metadata accessor for CLHistoricalPlaceContext);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v12, v8);
    outlined destroy of CLHistoricalPlaceContext(v18, type metadata accessor for CLHistoricalPlaceContext);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
    AsyncStream.Continuation.finish()();
    v41 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C5333000, v41, v32, "#ConnectionSequnece nil paylaod terminated the AsyncStream", v33, 2u);
      MEMORY[0x1C6945100](v33, -1, -1);
    }

    v34 = v41;
  }
}

void specialized closure #2 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C5333000, v5, v6, "#ConnectionSequnece natural termination", v7, 2u);
      MEMORY[0x1C6945100](v7, -1, -1);
    }

    [a3 pause];
  }
}

uint64_t CLLivePlaceContext._mapItemIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CLLivePlaceContext() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CLLivePlaceContext()
{
  result = type metadata singleton initialization cache for CLLivePlaceContext;
  if (!type metadata singleton initialization cache for CLLivePlaceContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CLLivePlaceContext._mapItemHandle.getter()
{
  v1 = v0 + *(type metadata accessor for CLLivePlaceContext() + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CLLivePlaceContext._wellKnownName.getter()
{
  v1 = (v0 + *(type metadata accessor for CLLivePlaceContext() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CLLivePlaceContext._address.getter()
{
  v1 = (v0 + *(type metadata accessor for CLLivePlaceContext() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

double CLLivePlaceContext._coordinate.getter()
{
  v1 = v0 + *(type metadata accessor for CLLivePlaceContext() + 36);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t static CLLivePlaceContext.places()@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
  v1 = *(*(v60 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v60);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation18CLLivePlaceContextV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation18CLLivePlaceContextV__GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
  v11 = *(v65 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v65);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation18CLLivePlaceContextVGMd, &_sScSy12CoreLocation18CLLivePlaceContextVGMR);
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v54 - v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v59 = v5;
  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, logger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v11;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v66 = type metadata accessor for CLLivePlaceContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation18CLLivePlaceContextVmMd, &_s12CoreLocation18CLLivePlaceContextVmMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1C5333000, v18, v19, "#CLLivePlaceContext places invoked self: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v26 = v22;
    v11 = v54;
    MEMORY[0x1C6945100](v26, -1, -1);
    MEMORY[0x1C6945100](v20, -1, -1);
  }

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for CLLivePlaceContext();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8650], v6);
  v28 = v61;
  v29 = v62;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v10, v6);
  v30 = v58;
  (*(v63 + 16))(v58, v28, v64);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);

  v31 = v56;
  v32 = v65;
  (*(v11 + 16))(v56, v29, v65);
  v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v34 = swift_allocObject();
  (*(v11 + 32))(v34 + v33, v31, v32);
  v35 = (v34 + ((v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = partial apply for closure #1 in static CLLivePlaceContext.places();
  v35[1] = 0;
  v36 = objc_allocWithZone(MEMORY[0x1E695FBD8]);
  v37 = MEMORY[0x1C6944850](0xD000000000000026, 0x80000001C534FB20);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed [AnyHashable : Any]) -> ();
  aBlock[3] = &block_descriptor_2;
  v39 = _Block_copy(aBlock);
  v40 = [v36 initWithStartMessageName:v37 startMessagePayload:isa locationManager:0 responseHandler:v39];

  _Block_release(v39);

  *(v30 + *(v60 + 28)) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = 1;
  *(v41 + 24) = v40;
  v42 = v40;
  AsyncStream.Continuation.onTermination.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v57, logger);
  v43 = v59;
  outlined init with copy of CLCondition?(v30, v59, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    outlined init with copy of CLCondition?(v43, v55, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    v48 = v11;
    v49 = String.init<A>(describing:)();
    v51 = v50;
    outlined destroy of CLMonitor.Event?(v43, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, aBlock);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_1C5333000, v44, v45, "#ConnectionSequnece created. self: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1C6945100](v47, -1, -1);
    MEMORY[0x1C6945100](v46, -1, -1);

    (*(v48 + 8))(v62, v65);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v43, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    (*(v11 + 8))(v62, v65);
  }

  return (*(v63 + 8))(v61, v64);
}

uint64_t closure #1 in static CLLivePlaceContext.places()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v134 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v134);
  v132 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v127 - v14;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, logger);

  v136 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v135 = v15;
  v133 = a4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v139 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v139);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v139);
    _os_log_impl(&dword_1C5333000, v18, v19, "#CLLivePlaceContext handler : %s , messageName: %s", v21, 0x16u);
    swift_arrayDestroy();
    v23 = v22;
    v15 = v135;
    MEMORY[0x1C6945100](v23, -1, -1);
    MEMORY[0x1C6945100](v21, -1, -1);
  }

  v137 = 0xD000000000000024;
  v138 = 0x80000001C534FB50;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v24, &v141);
    outlined destroy of AnyHashable(&v139);
    v26 = type metadata accessor for Date();
    v27 = swift_dynamicCast();
    (*(*(v26 - 8) + 56))(v15, v27 ^ 1u, 1, v26);
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  }

  outlined init with copy of CLCondition?(v15, v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v139 = v32;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v139);
    *(v31 + 12) = 2080;
    outlined init with copy of CLCondition?(v13, v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    outlined destroy of CLMonitor.Event?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v139);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_1C5333000, v29, v30, "#CLLivePlaceContext handler: %s , visitDate: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v32, -1, -1);
    MEMORY[0x1C6945100](v31, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v141 = 0xD000000000000020;
  v142 = 0x80000001C534FB80;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v38 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v37, &v141);
    outlined destroy of AnyHashable(&v139);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v40 = v137;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v138;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
    v40 = 0;
    v41 = 0;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  v44 = os_log_type_enabled(v42, v43);
  v132 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v141 = v46;
    *v45 = 136315394;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v141);
    *(v45 + 12) = 2080;
    v139 = v40;
    v140 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v141);

    *(v45 + 14) = v49;
    _os_log_impl(&dword_1C5333000, v42, v43, "#CLLivePlaceContext handler: %s , mapItemId: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v46, -1, -1);
    MEMORY[0x1C6945100](v45, -1, -1);
  }

  v141 = 0xD000000000000024;
  v142 = 0x80000001C534FBB0;
  AnyHashable.init<A>(_:)();
  v50 = *(a3 + 16);
  v130 = v40;
  if (v50 && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v52 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v51, &v141);
    outlined destroy of AnyHashable(&v139);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v137;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v138;
    }

    else
    {
      v55 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
    v54 = 0;
    v55 = 0xF000000000000000;
  }

  outlined copy of Data?(v54, v55);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  outlined consume of Data?(v54, v55);
  v58 = os_log_type_enabled(v56, v57);
  v131 = v54;
  v129 = v55;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v141 = v60;
    *v59 = 136315394;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v141);
    *(v59 + 12) = 2080;
    v139 = v54;
    v140 = v55;
    outlined copy of Data?(v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v61 = String.init<A>(describing:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v141);

    *(v59 + 14) = v63;
    _os_log_impl(&dword_1C5333000, v56, v57, "#CLLivePlaceContext handler: %s , mapItemHandle: %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v60, -1, -1);
    MEMORY[0x1C6945100](v59, -1, -1);
  }

  v141 = 0xD00000000000002BLL;
  v142 = 0x80000001C534FBE0;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v65 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v64, &v141);
    outlined destroy of AnyHashable(&v139);
    v66 = swift_dynamicCast();
    if (v66)
    {
      v67 = v137;
    }

    else
    {
      v67 = 0;
    }

    if (v66)
    {
      v68 = v138;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
    v67 = 0;
    v68 = 0;
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v128 = v67;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v141 = v73;
    *v72 = 136315394;
    *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v141);
    *(v72 + 12) = 2080;
    v139 = v67;
    v140 = v68;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v74 = String.init<A>(describing:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v141);

    *(v72 + 14) = v76;
    _os_log_impl(&dword_1C5333000, v69, v70, "#CLLivePlaceContext handler: %s , wellKnownName: %s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v73, -1, -1);
    MEMORY[0x1C6945100](v72, -1, -1);
  }

  v141 = 0xD000000000000025;
  v142 = 0x80000001C534FC10;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v77 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v78 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v77, &v141);
    outlined destroy of AnyHashable(&v139);
    v79 = swift_dynamicCast();
    v80 = v137;
    if (!v79)
    {
      v80 = 0;
    }

    v134 = v80;
    if (v79)
    {
      v81 = v138;
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
    v134 = 0;
    v81 = 0;
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v141 = v85;
    *v84 = 136315394;
    *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v141);
    *(v84 + 12) = 2080;
    v139 = v134;
    v140 = v81;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v86 = String.init<A>(describing:)();
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v141);

    *(v84 + 14) = v88;
    _os_log_impl(&dword_1C5333000, v82, v83, "#CLLivePlaceContext handler: %s , address: %s", v84, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v85, -1, -1);
    MEMORY[0x1C6945100](v84, -1, -1);
  }

  v141 = 0xD00000000000001FLL;
  v142 = 0x80000001C534FC40;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v89 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v90 & 1) == 0))
  {
    outlined destroy of AnyHashable(&v139);
    goto LABEL_60;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v89, &v141);
  outlined destroy of AnyHashable(&v139);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_60:
    v91 = 0xC066800000000000;
    goto LABEL_61;
  }

  v91 = v137;
LABEL_61:
  v141 = 0xD000000000000020;
  v142 = 0x80000001C534FC60;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v93 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v92, &v141);
    outlined destroy of AnyHashable(&v139);
    if (swift_dynamicCast())
    {
      v94 = v137;
      goto LABEL_67;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
  }

  v94 = 0xC066800000000000;
LABEL_67:
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v139 = v98;
    *v97 = 136315650;
    *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v139);
    *(v97 + 12) = 2080;
    v99 = Double.description.getter();
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v139);

    *(v97 + 14) = v101;
    *(v97 + 22) = 2080;
    v102 = Double.description.getter();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v139);

    *(v97 + 24) = v104;
    _os_log_impl(&dword_1C5333000, v95, v96, "#CLLivePlaceContext handler: %s , lat: %s lon: %s", v97, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v98, -1, -1);
    MEMORY[0x1C6945100](v97, -1, -1);
  }

  v141 = 0xD000000000000022;
  v142 = 0x80000001C534FA00;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v105 = specialized __RawDictionaryStorage.find<A>(_:)(&v139), (v106 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v105, &v141);
    outlined destroy of AnyHashable(&v139);
    if (swift_dynamicCast())
    {
      v107 = v137;
      goto LABEL_75;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v139);
  }

  v107 = 0;
LABEL_75:
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v139 = v111;
    *v110 = 136315138;
    v141 = v107;
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v139);

    *(v110 + 4) = v114;
    _os_log_impl(&dword_1C5333000, v108, v109, "#CLLivePlaceContext handler: diagnosticMask: %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    MEMORY[0x1C6945100](v111, -1, -1);
    MEMORY[0x1C6945100](v110, -1, -1);
  }

  v116 = v132;
  v115 = v133;
  v117 = v135;
  v118 = v131;
  result = outlined init with copy of CLCondition?(v135, v133, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v107 < 0)
  {
    __break(1u);
  }

  else
  {
    v120 = type metadata accessor for CLLivePlaceContext();
    v121 = (v115 + v120[5]);
    v122 = v129;
    *v121 = v130;
    v121[1] = v116;
    v123 = (v115 + v120[6]);
    *v123 = v118;
    v123[1] = v122;
    v124 = (v115 + v120[7]);
    *v124 = v128;
    v124[1] = v68;
    v125 = (v115 + v120[8]);
    *v125 = v134;
    v125[1] = v81;
    v126 = (v115 + v120[9]);
    *v126 = v91;
    v126[1] = v94;
    *(v115 + v120[10]) = v107;
    return outlined destroy of CLMonitor.Event?(v117, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata completion function for CLLivePlaceContext()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CLClientDiagnosticMask(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>()
{
  result = lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>;
  if (!lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>);
  }

  return result;
}

uint64_t outlined init with take of (key: String, value: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, &_sSS3key_10Foundation4DateV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CLHistoricalPlaceContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLHistoricalPlaceContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CLHistoricalPlaceContext._mapItemIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CLHistoricalPlaceContext() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CLHistoricalPlaceContext()
{
  result = type metadata singleton initialization cache for CLHistoricalPlaceContext;
  if (!type metadata singleton initialization cache for CLHistoricalPlaceContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CLHistoricalPlaceContext._mapItemHandle.getter()
{
  v1 = v0 + *(type metadata accessor for CLHistoricalPlaceContext() + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t CLHistoricalPlaceContext._wellKnownName.getter()
{
  v1 = (v0 + *(type metadata accessor for CLHistoricalPlaceContext() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CLHistoricalPlaceContext._address.getter()
{
  v1 = (v0 + *(type metadata accessor for CLHistoricalPlaceContext() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

double CLHistoricalPlaceContext._coordinate.getter()
{
  v1 = v0 + *(type metadata accessor for CLHistoricalPlaceContext() + 36);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t static CLHistoricalPlaceContext.places(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
  v5 = *(*(v110 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v110);
  v98 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v93[-v8];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation24CLHistoricalPlaceContextV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation24CLHistoricalPlaceContextV__GMR);
  v103 = *(v105 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v93[-v10];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
  v111 = *(v116 - 8);
  v11 = *(v111 + 64);
  v12 = MEMORY[0x1EEE9AC00](v116);
  v106 = &v93[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v93[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation24CLHistoricalPlaceContextVGMd, &_sScSy12CoreLocation24CLHistoricalPlaceContextVGMR);
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v93[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v93[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v97 = &v93[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v93[-v25];
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v93[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v99 = v22;
  v107 = type metadata accessor for Logger();
  __swift_project_value_buffer(v107, logger);
  v32 = *(v28 + 16);
  v100 = a1;
  v32(v31, a1, v27);
  v101 = a2;
  outlined init with copy of CLCondition?(a2, v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v94 = v34;
    v36 = v35;
    v95 = swift_slowAlloc();
    aBlock[0] = v95;
    *v36 = 136315650;
    v117 = type metadata accessor for CLHistoricalPlaceContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation24CLHistoricalPlaceContextVmMd, &_s12CoreLocation24CLHistoricalPlaceContextVmMR);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);
    v96 = v32;
    v40 = v39;

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date();
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v28 + 8))(v31, v27);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, aBlock);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2080;
    outlined init with copy of CLCondition?(v26, v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    outlined destroy of CLMonitor.Event?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, aBlock);
    v32 = v96;

    *(v36 + 24) = v48;
    _os_log_impl(&dword_1C5333000, v33, v94, "#CLHistoricalPlaceContext places invoked self: %s, startDate: %s, endDate: %s", v36, 0x20u);
    v49 = v95;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v49, -1, -1);
    MEMORY[0x1C6945100](v36, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v28 + 8))(v31, v27);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DateVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DateVtGMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v51 = *(*(v50 - 8) + 72);
  v52 = (*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C534EE00;
  v54 = (v53 + v52);
  v55 = *(v50 + 48);
  *v54 = 0xD000000000000032;
  v54[1] = 0x80000001C534FC90;
  v32(v54 + v55, v100, v27);
  v56 = v54 + v51;
  v57 = *(v50 + 48);
  *v56 = 0xD000000000000030;
  *(v56 + 1) = 0x80000001C534FCD0;
  v58 = v99;
  outlined init with copy of CLCondition?(v101, v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = *(v28 + 48);
  if (v59(v58, 1, v27) == 1)
  {
    Date.init()();
    if (v59(v58, 1, v27) != 1)
    {
      outlined destroy of CLMonitor.Event?(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v28 + 32))(&v56[v57], v58, v27);
  }

  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v61 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v60);

  type metadata accessor for CLHistoricalPlaceContext();
  v62 = v103;
  v63 = v102;
  v64 = v105;
  (*(v103 + 104))(v102, *MEMORY[0x1E69E8650], v105);
  v65 = v112;
  v66 = v113;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v62 + 8))(v63, v64);
  v67 = v108;
  (*(v114 + 16))(v108, v65, v115);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v61);

  v68 = v111;
  v69 = v106;
  v70 = v116;
  (*(v111 + 16))(v106, v66, v116);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v104 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = (v73 + v72);
  *v74 = partial apply for closure #1 in static CLHistoricalPlaceContext.places(startDate:endDate:);
  v74[1] = 0;
  v75 = objc_allocWithZone(MEMORY[0x1E695FBD8]);
  v76 = MEMORY[0x1C6944850](0xD00000000000002CLL, 0x80000001C534FD10);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:);
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed [AnyHashable : Any]) -> ();
  aBlock[3] = &block_descriptor_3;
  v78 = _Block_copy(aBlock);
  v79 = [v75 initWithStartMessageName:v76 startMessagePayload:isa locationManager:0 responseHandler:v78];

  _Block_release(v78);

  *(v67 + *(v110 + 28)) = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = 1;
  *(v80 + 24) = v79;
  v81 = v79;
  AsyncStream.Continuation.onTermination.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v107, logger);
  v82 = v109;
  outlined init with copy of CLCondition?(v67, v109, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock[0] = v86;
    *v85 = 136315138;
    outlined init with copy of CLCondition?(v82, v98, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
    v87 = String.init<A>(describing:)();
    v88 = v82;
    v90 = v89;
    outlined destroy of CLMonitor.Event?(v88, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v90, aBlock);

    *(v85 + 4) = v91;
    _os_log_impl(&dword_1C5333000, v83, v84, "#ConnectionSequnece created. self: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x1C6945100](v86, -1, -1);
    MEMORY[0x1C6945100](v85, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v82, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
  }

  (*(v68 + 8))(v113, v116);
  return (*(v114 + 8))(v112, v115);
}

uint64_t closure #1 in static CLHistoricalPlaceContext.places(startDate:endDate:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v170 = a4;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v159 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v159);
  v158 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v155 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v171 = &v155 - v13;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v157 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v157);
  v156 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v167 = &v155 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v155 - v19;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v172 = v20;
  v169 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v175 = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v175);
    _os_log_impl(&dword_1C5333000, v22, v23, "#CLHistoricalPlaceContext handler : %s , messageName: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v26, -1, -1);
    MEMORY[0x1C6945100](v25, -1, -1);
  }

  v177 = 0xD000000000000020;
  v178 = 0x80000001C534FB80;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v28 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v27, &v177);
    outlined destroy of AnyHashable(&v175);
    v29 = swift_dynamicCast();
    if (v29)
    {
      v30 = v173;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v174;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
    v30 = 0;
    v31 = 0;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v165 = v31;
  v166 = v30;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v177 = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v177);
    *(v35 + 12) = 2080;
    v175 = v30;
    v176 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v177);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1C5333000, v32, v33, "#CLHistoricalPlaceContext handler: %s , mapItemId: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v36, -1, -1);
    MEMORY[0x1C6945100](v35, -1, -1);
  }

  v177 = 0xD000000000000024;
  v178 = 0x80000001C534FBB0;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v41 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v40, &v177);
    outlined destroy of AnyHashable(&v175);
    v42 = swift_dynamicCast();
    if (v42)
    {
      v43 = v173;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v174;
    }

    else
    {
      v44 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
    v43 = 0;
    v44 = 0xF000000000000000;
  }

  outlined copy of Data?(v43, v44);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  outlined consume of Data?(v43, v44);
  v47 = os_log_type_enabled(v45, v46);
  v164 = v43;
  v168 = v44;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v177 = v49;
    *v48 = 136315394;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v177);
    *(v48 + 12) = 2080;
    v175 = v43;
    v176 = v44;
    outlined copy of Data?(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v50 = String.init<A>(describing:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v177);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_1C5333000, v45, v46, "#CLHistoricalPlaceContext handler: %s , mapItemHandle: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v49, -1, -1);
    MEMORY[0x1C6945100](v48, -1, -1);
  }

  v177 = 0xD00000000000002BLL;
  v178 = 0x80000001C534FBE0;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v54 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v53, &v177);
    outlined destroy of AnyHashable(&v175);
    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = v173;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = v174;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
    v56 = 0;
    v57 = 0;
  }

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  v60 = os_log_type_enabled(v58, v59);
  v162 = v57;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v177 = v62;
    *v61 = 136315394;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v177);
    *(v61 + 12) = 2080;
    v175 = v56;
    v176 = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v63 = String.init<A>(describing:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v177);

    *(v61 + 14) = v65;
    _os_log_impl(&dword_1C5333000, v58, v59, "#CLHistoricalPlaceContext handler: %s , wellKnownName: %s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v62, -1, -1);
    MEMORY[0x1C6945100](v61, -1, -1);
  }

  v177 = 0xD000000000000025;
  v178 = 0x80000001C534FC10;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v67 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v66, &v177);
    outlined destroy of AnyHashable(&v175);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v173;
    }

    else
    {
      v69 = 0;
    }

    if (v68)
    {
      v70 = v174;
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
    v69 = 0;
    v70 = 0;
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  v73 = os_log_type_enabled(v71, v72);
  v163 = v56;
  v160 = v70;
  if (v73)
  {
    v74 = v70;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v177 = v76;
    *v75 = 136315394;
    *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v177);
    *(v75 + 12) = 2080;
    v175 = v69;
    v176 = v74;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v77 = String.init<A>(describing:)();
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v177);

    *(v75 + 14) = v79;
    _os_log_impl(&dword_1C5333000, v71, v72, "#CLHistoricalPlaceContext handler: %s , address: %s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v76, -1, -1);
    MEMORY[0x1C6945100](v75, -1, -1);
  }

  v177 = 0xD00000000000001FLL;
  v178 = 0x80000001C534FC40;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v80 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v81 & 1) == 0))
  {
    outlined destroy of AnyHashable(&v175);
    goto LABEL_54;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v80, &v177);
  outlined destroy of AnyHashable(&v175);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v82 = 0xC066800000000000;
    goto LABEL_55;
  }

  v82 = v173;
LABEL_55:
  v177 = 0xD000000000000020;
  v178 = 0x80000001C534FC60;
  AnyHashable.init<A>(_:)();
  v83 = *(a3 + 16);
  v161 = v69;
  if (v83 && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v85 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v84, &v177);
    outlined destroy of AnyHashable(&v175);
    if (swift_dynamicCast())
    {
      v86 = v173;
      goto LABEL_61;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
  }

  v86 = 0xC066800000000000;
LABEL_61:
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v175 = v90;
    *v89 = 136315650;
    *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v89 + 12) = 2080;
    v91 = Double.description.getter();
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v175);

    *(v89 + 14) = v93;
    *(v89 + 22) = 2080;
    v94 = Double.description.getter();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v175);

    *(v89 + 24) = v96;
    _os_log_impl(&dword_1C5333000, v87, v88, "#CLHistoricalPlaceContext handler: %s , lat: %s lon: %s", v89, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v90, -1, -1);
    MEMORY[0x1C6945100](v89, -1, -1);
  }

  v97 = v172;
  v173 = 0xD000000000000027;
  v174 = 0x80000001C534FD40;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v98 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v99 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v98, &v177);
    outlined destroy of AnyHashable(&v175);
    v100 = type metadata accessor for UUID();
    v101 = swift_dynamicCast();
    (*(*(v100 - 8) + 56))(v97, v101 ^ 1u, 1, v100);
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
    v102 = type metadata accessor for UUID();
    (*(*(v102 - 8) + 56))(v97, 1, 1, v102);
  }

  v103 = v97;
  v104 = v167;
  outlined init with copy of CLCondition?(v103, v167, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v175 = v108;
    *v107 = 136315394;
    *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v107 + 12) = 2080;
    outlined init with copy of CLCondition?(v104, v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v109 = String.init<A>(describing:)();
    v110 = v104;
    v112 = v111;
    outlined destroy of CLMonitor.Event?(v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v112, &v175);

    *(v107 + 14) = v113;
    _os_log_impl(&dword_1C5333000, v105, v106, "#CLHistoricalPlaceContext handler: %s , uuid: %s", v107, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v108, -1, -1);
    MEMORY[0x1C6945100](v107, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v114 = v171;
  v115 = v169;
  v173 = 0xD00000000000002CLL;
  v174 = 0x80000001C534FD70;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v116 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v117 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v116, &v177);
    outlined destroy of AnyHashable(&v175);
    v118 = type metadata accessor for Date();
    v119 = swift_dynamicCast();
    (*(*(v118 - 8) + 56))(v114, v119 ^ 1u, 1, v118);
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
    v120 = type metadata accessor for Date();
    (*(*(v120 - 8) + 56))(v114, 1, 1, v120);
  }

  outlined init with copy of CLCondition?(v114, v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v175 = v124;
    *v123 = 136315394;
    *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v123 + 12) = 2080;
    outlined init with copy of CLCondition?(v115, v158, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v125 = String.init<A>(describing:)();
    v126 = v115;
    v127 = v125;
    v129 = v128;
    outlined destroy of CLMonitor.Event?(v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v175);

    *(v123 + 14) = v130;
    _os_log_impl(&dword_1C5333000, v121, v122, "#CLHistoricalPlaceContext handler: %s , startDate: %s", v123, 0x16u);
    swift_arrayDestroy();
    v131 = v124;
    v114 = v171;
    MEMORY[0x1C6945100](v131, -1, -1);
    MEMORY[0x1C6945100](v123, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v177 = 0xD000000000000022;
  v178 = 0x80000001C534FA00;
  AnyHashable.init<A>(_:)();
  v132 = v168;
  if (*(a3 + 16) && (v133 = specialized __RawDictionaryStorage.find<A>(_:)(&v175), (v134 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v133, &v177);
    outlined destroy of AnyHashable(&v175);
    if (swift_dynamicCast())
    {
      v135 = v173;
      goto LABEL_83;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v175);
  }

  v135 = 0;
LABEL_83:
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v175 = v139;
    *v138 = 136315394;
    *(v138 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v138 + 12) = 2080;
    v177 = v135;
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v175);

    *(v138 + 14) = v142;
    _os_log_impl(&dword_1C5333000, v136, v137, "#CLHistoricalPlaceContext handler: %s , diagnosticMask: %s", v138, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v139, -1, -1);
    MEMORY[0x1C6945100](v138, -1, -1);
  }

  v143 = v170;
  v144 = v172;
  outlined init with copy of CLCondition?(v114, v170, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v145 = type metadata accessor for CLHistoricalPlaceContext();
  result = outlined init with copy of CLCondition?(v144, v143 + v145[10], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v135 < 0)
  {
    __break(1u);
  }

  else
  {
    v147 = (v143 + v145[5]);
    v148 = v165;
    *v147 = v166;
    v147[1] = v148;
    v149 = (v143 + v145[6]);
    *v149 = v164;
    v149[1] = v132;
    v150 = (v143 + v145[7]);
    v151 = v162;
    *v150 = v163;
    v150[1] = v151;
    v152 = (v143 + v145[8]);
    v153 = v160;
    *v152 = v161;
    v152[1] = v153;
    v154 = (v143 + v145[9]);
    *v154 = v82;
    v154[1] = v86;
    *(v143 + v145[11]) = v135;
    outlined destroy of CLMonitor.Event?(v114, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return outlined destroy of CLMonitor.Event?(v144, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return result;
}