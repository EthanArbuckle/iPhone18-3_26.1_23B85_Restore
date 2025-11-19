id MatchedMedName.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = objc_allocWithZone(v6);
  if (a2)
  {
    v12 = MEMORY[0x26D6492A0](a1);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = MEMORY[0x26D6492A0](a3, a4);
  if (a6)
  {
    v9 = MEMORY[0x26D6492A0](a5);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v20 initWithIdentifier:v13 displayString:v11 pronunciationHint:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);
  return v8;
}

id MatchedMedName.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v24 = a1;
  v25 = a2;
  v22 = a3;
  v23 = a4;
  v20 = a5;
  v21 = a6;

  if (a2)
  {
    v11 = MEMORY[0x26D6492A0](a1);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = MEMORY[0x26D6492A0](a3, a4);

  if (a6)
  {
    v8 = MEMORY[0x26D6492A0](a5);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v19.receiver = 0;
  v19.super_class = type metadata accessor for MatchedMedName();
  v7 = objc_msgSendSuper2(&v19, sel_initWithIdentifier_displayString_pronunciationHint_, v12, v10, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v7);
  v26 = v7;

  MEMORY[0x277D82BD8](v26);
  return v7;
}

id MatchedMedName.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id MatchedMedName.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MatchedMedName();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id MatchedMedName.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MatchedMedNameResolutionResult.success(with:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS___MatchedMedNameResolutionResult;
  v2 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a1);

  return v2;
}

id static MatchedMedNameResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v8 = a1;
  v7 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  type metadata accessor for MatchedMedName();
  type metadata accessor for INObject();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS___MatchedMedNameResolutionResult;
  v5 = objc_msgSendSuper2(&v6, sel_disambiguationWithObjectsToDisambiguate_, isa);
  MEMORY[0x277D82BD8](isa);
  return v5;
}

unint64_t type metadata accessor for INObject()
{
  v2 = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INObject);
    return ObjCClassMetadata;
  }

  return v2;
}

id static MatchedMedNameResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS___MatchedMedNameResolutionResult;
  v4 = objc_msgSendSuper2(&v8, sel_confirmationRequiredWithObjectToConfirm_, v5);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

void static MatchedMedNameResolutionResult.success(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26991483C(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedNameResolutionResult.disambiguation(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_269914958(void *a1)
{

  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedNameResolutionResult.confirmationRequired(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_269914A60(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

id MatchedMedNameResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id MatchedMedNameResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MatchedMedNameResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id MatchedMedNameResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedNameResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void variable initialization expression of GetHealthQuantityIntentHandler.storage(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t protocol witness for _BridgedStoredNSError._nsError.getter in conformance related decl e for HKErrorCode()
{
  result = *v0;
  related decl 'e' for HKErrorCode._nsError.getter();
  return result;
}

uint64_t protocol witness for _BridgedStoredNSError.init(_nsError:) in conformance related decl e for HKErrorCode@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = related decl 'e' for HKErrorCode.init(_nsError:)(a1);
  *a2 = result;
  return result;
}

uint64_t related decl e for HKErrorCode.init(_nsError:)(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKStatisticsOptions()
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKStatisticsOptions()
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKStatisticsOptions()
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKStatisticsOptions()
{
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance HKMedicationDoseEventStatus(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  HKMedicationDoseEventStatus.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HKMedicationDoseEventStatus(void *a1@<X8>)
{
  v2 = *v1;
  HKMedicationDoseEventStatus.rawValue.getter();
  *a1 = v3;
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKSleepDaySummaryQueryOptions()
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKSleepDaySummaryQueryOptions()
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKSleepDaySummaryQueryOptions()
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKSleepDaySummaryQueryOptions()
{
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKDeleteObjectOptions()
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKDeleteObjectOptions()
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKDeleteObjectOptions()
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKDeleteObjectOptions()
{
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t static related decl e for HKErrorCode.errorDomain.getter()
{
  v1 = *MEMORY[0x277CCBDB0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBDB0]);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for HKErrorCode(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  lazy protocol witness table accessor for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode();
  return _BridgedStoredNSError.init(_bridgedNSError:)();
}

uint64_t _BridgedStoredNSError.hashValue.getter()
{
  v1 = dispatch thunk of _BridgedStoredNSError._nsError.getter();
  v2 = NSObject.hashValue.getter();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

__C::HKQueryOptions protocol witness for OptionSet.init(rawValue:) in conformance HKStatisticsOptions@<X0>(Swift::UInt *a1@<X0>, __C::HKQueryOptions *a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.init(rawValue:) in conformance HKStatisticsOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.rawValue.getter in conformance HKStatisticsOptions@<X0>(__C::HKQueryOptions *a1@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*v1).rawValue;
  a1->rawValue = result.rawValue;
  return result;
}

unint64_t type metadata accessor for HKHealthStore()
{
  v2 = lazy cache variable for type metadata for HKHealthStore;
  if (!lazy cache variable for type metadata for HKHealthStore)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKHealthStore);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for HKDeleteObjectOptions()
{
  v4 = lazy cache variable for type metadata for HKDeleteObjectOptions;
  if (!lazy cache variable for type metadata for HKDeleteObjectOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKDeleteObjectOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKMedicationDoseEventStatus()
{
  v4 = lazy cache variable for type metadata for HKMedicationDoseEventStatus;
  if (!lazy cache variable for type metadata for HKMedicationDoseEventStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKMedicationDoseEventStatus);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKWheelchairUse()
{
  v4 = lazy cache variable for type metadata for HKWheelchairUse;
  if (!lazy cache variable for type metadata for HKWheelchairUse)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKWheelchairUse);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HKDayIndexRange(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HKDayIndexRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for HKDayIndexRange()
{
  v4 = lazy cache variable for type metadata for HKDayIndexRange;
  if (!lazy cache variable for type metadata for HKDayIndexRange)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKDayIndexRange);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKMedicationDoseEventLogOrigin()
{
  v4 = lazy cache variable for type metadata for HKMedicationDoseEventLogOrigin;
  if (!lazy cache variable for type metadata for HKMedicationDoseEventLogOrigin)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKMedicationDoseEventLogOrigin);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKStatisticsOptions()
{
  v4 = lazy cache variable for type metadata for HKStatisticsOptions;
  if (!lazy cache variable for type metadata for HKStatisticsOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKStatisticsOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for related decl e for HKErrorCode()
{
  v4 = lazy cache variable for type metadata for related decl 'e' for HKErrorCode;
  if (!lazy cache variable for type metadata for related decl 'e' for HKErrorCode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for related decl 'e' for HKErrorCode);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKManualEntryValidationResult()
{
  v4 = lazy cache variable for type metadata for HKManualEntryValidationResult;
  if (!lazy cache variable for type metadata for HKManualEntryValidationResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKManualEntryValidationResult);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type related decl e for HKErrorCode and conformance related decl e for HKErrorCode()
{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode;
  if (!lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode)
  {
    type metadata accessor for related decl 'e' for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions()
{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions;
  if (!lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions)
  {
    type metadata accessor for HKStatisticsOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKStatisticsOptions and conformance HKStatisticsOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions()
{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions;
  if (!lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions)
  {
    type metadata accessor for HKDeleteObjectOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKErrorCode and conformance HKErrorCode()
{
  v2 = lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode;
  if (!lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode)
  {
    type metadata accessor for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode;
  if (!lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode)
  {
    type metadata accessor for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode;
  if (!lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode)
  {
    type metadata accessor for HKErrorCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKErrorCode and conformance HKErrorCode);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for HKErrorCode()
{
  v4 = lazy cache variable for type metadata for HKErrorCode;
  if (!lazy cache variable for type metadata for HKErrorCode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKErrorCode);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult()
{
  v2 = lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult;
  if (!lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult)
  {
    type metadata accessor for HKManualEntryValidationResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult;
  if (!lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult)
  {
    type metadata accessor for HKManualEntryValidationResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus;
  if (!lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus)
  {
    type metadata accessor for HKMedicationDoseEventStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus;
  if (!lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus)
  {
    type metadata accessor for HKMedicationDoseEventStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for HKSiriAuthorizationStatus()
{
  v4 = lazy cache variable for type metadata for HKSiriAuthorizationStatus;
  if (!lazy cache variable for type metadata for HKSiriAuthorizationStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKSiriAuthorizationStatus);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKSleepDaySummaryQueryOptions()
{
  v4 = lazy cache variable for type metadata for HKSleepDaySummaryQueryOptions;
  if (!lazy cache variable for type metadata for HKSleepDaySummaryQueryOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKSleepDaySummaryQueryOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKQueryOptions()
{
  v4 = lazy cache variable for type metadata for HKQueryOptions;
  if (!lazy cache variable for type metadata for HKQueryOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKQueryOptions);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions()
{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions()
{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions;
  if (!lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions);
    return WitnessTable;
  }

  return v2;
}

uint64_t getFormattedTimeString(time:)(uint64_t a1)
{
  v19 = a1;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v27 = &v9 - v18;
  v26 = type metadata accessor for Date();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v20 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v19);
  v21 = &v9 - v20;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v23 = &v9 - v22;
  v30 = &v9 - v22;
  v29 = v4;
  outlined init with copy of Date?(v4, v5);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    outlined destroy of Date?(v27);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    (*(v24 + 32))(v23, v27, v26);
    type metadata accessor for NSDateFormatter();
    v31 = NSDateFormatter.__allocating_init()();
    v6 = v21;
    isa = v31.super.super.isa;
    v28 = v31.super.super.isa;
    [(objc_class *)v31.super.super.isa setTimeStyle:1, v31._counter];
    (*(v24 + 16))(v6, v23, v26);
    v9 = Date._bridgeToObjectiveC()().super.isa;
    v13 = *(v24 + 8);
    v12 = v24 + 8;
    v13(v21, v26);
    v10 = [(objc_class *)isa stringFromDate:v9];
    MEMORY[0x277D82BD8](v9);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v7;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](isa);
    v13(v23, v26);
    v16 = v14;
    v17 = v15;
  }

  return v16;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void *outlined init with copy of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for NSDateFormatter()
{
  v2 = lazy cache variable for type metadata for NSDateFormatter;
  if (!lazy cache variable for type metadata for NSDateFormatter)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSDateFormatter);
    return ObjCClassMetadata;
  }

  return v2;
}

NSDateFormatter __swiftcall NSDateFormatter.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = @nonobjc NSDateFormatter.init()();
  result._counter = v4;
  result._formatter = v3;
  result._attributes = v2;
  result.super.super.isa = v1;
  return result;
}

uint64_t Date.startOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3[1] = a1;
  v8 = 0;
  v7 = type metadata accessor for Calendar();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = v3 - v3[0];
  v8 = v1;
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  return (*(v4 + 8))(v6, v7);
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = "Fatal error";
  v33 = "Unexpectedly found nil while unwrapping an Optional value";
  v34 = "SiriWellnessIntents/DateFormatter.swift";
  v68 = 0;
  v67 = 0;
  v45 = 0;
  v66 = type metadata accessor for Date();
  v62 = *(v66 - 8);
  v63 = v66 - 8;
  v35 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v51 = &v30 - v35;
  v61 = type metadata accessor for Calendar();
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v36 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v60 = &v30 - v36;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v64 = &v30 - v37;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v38 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v44 = &v30 - v38;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v43 = &v30 - v39;
  v55 = type metadata accessor for DateComponents();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v41 = *(v52 + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v43);
  v54 = &v30 - v40;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v50 = &v30 - v42;
  v68 = &v30 - v42;
  v67 = v49;
  v5 = *(v58 + 56);
  v65 = 1;
  v5(v4, 1);
  v6 = type metadata accessor for TimeZone();
  (*(*(v6 - 8) + 56))(v44, v65);
  v46 = &v8;
  v8 = 0;
  v47 = 1;
  v9 = 1;
  v10 = 0;
  v11 = 1;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 1;
  v22 = 0;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  LOBYTE(v27) = 1;
  v28 = 0;
  v29 = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v48 = 0;
  DateComponents.day.setter();
  DateComponents.second.setter();
  static Calendar.current.getter();
  (*(v52 + 16))(v54, v50, v55);
  Date.startOfDay.getter(v51);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  (*(v62 + 8))(v51, v66);
  v56 = *(v52 + 8);
  v57 = v52 + 8;
  v56(v54, v55);
  (*(v58 + 8))(v60, v61);
  if ((*(v62 + 48))(v64, v65, v66) == 1)
  {
    LOBYTE(v26) = 2;
    v27 = 27;
    LODWORD(v28) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  (*(v62 + 32))(v31, v64, v66);
  return (v56)(v50, v55);
}

id LogQuantityIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogQuantityIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogQuantityIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogQuantityIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogQuantityIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogQuantityIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogQuantityIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogQuantityIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogQuantityIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogQuantityIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogQuantityIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogQuantityIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogQuantityIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogQuantityIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogQuantityIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogQuantityIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LogQuantityIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  LogQuantityIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t LogQuantityIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogQuantityIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogQuantityIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogQuantityIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogQuantityIntentResponse.code : LogQuantityIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogQuantityIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogQuantityIntentResponse.code : LogQuantityIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogQuantityIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogQuantityIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogQuantityIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogQuantityIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogQuantityIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogQuantityIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogQuantityIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogQuantityIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogQuantityIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogQuantityIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogQuantityIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogQuantityIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogQuantityIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogQuantityIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogQuantityIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogQuantityIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogQuantityIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogQuantityIntentResponseCode and conformance LogQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of QuantityPersisting(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

id LogQuantityIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = HealthKitPersistor.init()().store.super.isa;
    __dst[3] = &type metadata for HealthKitPersistor;
    __dst[4] = &protocol witness table for HealthKitPersistor;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents24LogQuantityIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

void *outlined init with copy of QuantityPersisting?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

SiriWellnessIntents::HealthKitPersistor __swiftcall HealthKitPersistor.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

uint64_t *outlined destroy of QuantityPersisting?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t LogQuantityIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[33] = v1;
  v2[32] = a1;
  v2[29] = v2;
  v2[30] = 0;
  v2[31] = 0;
  v2[27] = 0;
  v2[28] = 0;
  v3 = type metadata accessor for Logger();
  v2[34] = v3;
  v7 = *(v3 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[43] = v4;
  v10 = *(v4 - 8);
  v2[44] = v10;
  v2[45] = *(v10 + 64);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[30] = a1;
  v2[31] = v1;
  v5 = v2[29];

  return MEMORY[0x2822009F8](LogQuantityIntentHandler.handle(intent:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 480);
  v6 = *(*v1 + 472);
  *(v7 + 232) = *v1;
  *(v7 + 488) = a1;

  v4 = *(v7 + 232);

  return MEMORY[0x2822009F8](LogQuantityIntentHandler.handle(intent:), 0);
}

uint64_t LogQuantityIntentHandler.handle(intent:)()
{
  v107 = v0;
  v1 = *(v0 + 256);
  *(v0 + 232) = v0;
  v96 = [v1 start];
  if (v96)
  {
    v92 = *(v95 + 376);
    v93 = *(v95 + 344);
    v94 = *(v95 + 336);
    v91 = *(v95 + 352);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v91 + 32))(v94, v92, v93);
    (*(v91 + 56))(v94, 0, 1, v93);
    MEMORY[0x277D82BD8](v96);
  }

  else
  {
    (*(*(v95 + 352) + 56))(*(v95 + 336), 1, 1, *(v95 + 344));
  }

  v2 = (*(v95 + 352) + 48);
  v90 = *v2;
  if ((*v2)(*(v95 + 336), 1, *(v95 + 344)) == 1)
  {
    v3 = *(v95 + 384);
    v89 = *(v95 + 344);
    v88 = *(v95 + 336);
    Date.init()();
    if (v90(v88, 1, v89) != 1)
    {
      outlined destroy of Date?(*(v95 + 336));
    }
  }

  else
  {
    (*(*(v95 + 352) + 32))(*(v95 + 384), *(v95 + 336), *(v95 + 344));
  }

  v87 = [*(v95 + 256) end];
  if (v87)
  {
    v84 = *(v95 + 376);
    v85 = *(v95 + 344);
    v86 = *(v95 + 328);
    v83 = *(v95 + 352);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v83 + 32))(v86, v84, v85);
    (*(v83 + 56))(v86, 0, 1, v85);
    MEMORY[0x277D82BD8](v87);
  }

  else
  {
    (*(*(v95 + 352) + 56))(*(v95 + 328), 1, 1, *(v95 + 344));
  }

  if (v90(*(v95 + 328), 1, *(v95 + 344)) == 1)
  {
    v81 = *(v95 + 344);
    v82 = *(v95 + 328);
    (*(*(v95 + 352) + 16))(*(v95 + 368), *(v95 + 384));
    if (v90(v82, 1, v81) != 1)
    {
      outlined destroy of Date?(*(v95 + 328));
    }
  }

  else
  {
    (*(*(v95 + 352) + 32))(*(v95 + 368), *(v95 + 328), *(v95 + 344));
  }

  v80 = [*(v95 + 256) quantityIdentifier];
  if (v80)
  {
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v4;
    MEMORY[0x277D82BD8](v80);
    v78 = v76;
    v79 = v77;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  *(v95 + 400) = v79;
  *(v95 + 392) = v78;
  if (v79)
  {
    v5 = *(v95 + 320);
    v67 = *(v95 + 272);
    v65 = *(v95 + 280);
    *(v95 + 216) = v78;
    *(v95 + 224) = v79;
    v66 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v6 = *(v65 + 16);
    *(v95 + 408) = v6;
    *(v95 + 416) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v5, v66, v67);
    swift_endAccess();

    v68 = swift_allocObject();
    *(v68 + 16) = v78;
    *(v68 + 24) = v79;
    oslog = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v69 + 24) = v68;
    v72 = swift_allocObject();
    *(v72 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v72 + 24) = v69;
    *(v95 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v73 = v7;

    *v73 = partial apply for closure #1 in OSLogArguments.append(_:);
    v73[1] = v70;

    v73[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v73[3] = v71;

    v73[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v73[5] = v72;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v75))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = createStorage<A>(capacity:type:)(0);
      v64 = createStorage<A>(capacity:type:)(1);
      v102 = buf;
      v103 = v63;
      v104 = v64;
      serialize(_:at:)(2, &v102);
      serialize(_:at:)(1, &v102);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      v105 = partial apply for closure #1 in OSLogArguments.append(_:);
      v106 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
      _os_log_impl(&dword_269912000, oslog, v75, "Checking authorization for %s...", buf, 0xCu);
      destroyStorage<A>(_:count:)(v63, 0, v61);
      destroyStorage<A>(_:count:)(v64, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    *(v95 + 432) = 0;
    v53 = *(v95 + 320);
    v54 = *(v95 + 272);
    v55 = *(v95 + 264);
    v52 = *(v95 + 280);
    MEMORY[0x277D82BD8](oslog);
    v8 = *(v52 + 8);
    *(v95 + 440) = v8;
    *(v95 + 448) = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v53, v54);
    outlined init with copy of QuantityPersisting(v55 + OBJC_IVAR____TtC19SiriWellnessIntents24LogQuantityIntentHandler_storage, v95 + 16);
    v58 = *(v95 + 40);
    v59 = *(v95 + 48);
    __swift_project_boxed_opaque_existential_1((v95 + 16), v58);
    v56 = _allocateUninitializedArray<A>(_:)();
    v57 = v9;

    *v57 = v78;
    v57[1] = v79;
    _finalizeUninitializedArray<A>(_:)();
    *(v95 + 456) = v56;
    v60 = (*(v59 + 8) + **(v59 + 8));
    v10 = *(*(v59 + 8) + 4);
    v11 = swift_task_alloc();
    *(v95 + 464) = v11;
    *v11 = *(v95 + 232);
    v11[1] = LogQuantityIntentHandler.handle(intent:);

    return v60(v56, v58, v59);
  }

  else
  {
    v13 = *(v95 + 288);
    v42 = *(v95 + 272);
    v43 = *(v95 + 256);
    v40 = *(v95 + 280);
    v41 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v40 + 16))(v13, v41, v42);
    swift_endAccess();
    MEMORY[0x277D82BE0](v43);
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    log = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v45 + 24) = v44;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v48 + 24) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v49 = v14;

    *v49 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49[1] = v46;

    v49[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v49[3] = v47;

    v49[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v49[5] = v48;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v51))
    {
      v37 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = createStorage<A>(capacity:type:)(1);
      v39 = createStorage<A>(capacity:type:)(0);
      v97 = v37;
      v98 = v38;
      v99 = v39;
      serialize(_:at:)(2, &v97);
      serialize(_:at:)(1, &v97);
      v100 = partial apply for closure #1 in OSLogArguments.append(_:);
      v101 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
      v100 = partial apply for closure #1 in OSLogArguments.append(_:);
      v101 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
      v100 = partial apply for closure #1 in OSLogArguments.append(_:);
      v101 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
      _os_log_impl(&dword_269912000, log, v51, "Intent with missing slots! You must perform slot filling before handling the intent. Intent: %@", v37, 0xCu);
      destroyStorage<A>(_:count:)(v38, 1, v36);
      destroyStorage<A>(_:count:)(v39, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v37, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v23 = *(v95 + 384);
    v22 = *(v95 + 368);
    v24 = *(v95 + 344);
    v19 = *(v95 + 288);
    v20 = *(v95 + 272);
    v21 = *(v95 + 352);
    v18 = *(v95 + 280);
    MEMORY[0x277D82BD8](log);
    (*(v18 + 8))(v19, v20);
    type metadata accessor for LogQuantityIntentResponse();
    v35 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    v25 = *(v21 + 8);
    v25(v22, v24);
    v25(v23, v24);
    v15 = *(v95 + 384);
    v26 = *(v95 + 376);
    v27 = *(v95 + 368);
    v28 = *(v95 + 336);
    v29 = *(v95 + 328);
    v30 = *(v95 + 320);
    v31 = *(v95 + 312);
    v32 = *(v95 + 304);
    v33 = *(v95 + 296);
    v34 = *(v95 + 288);

    v16 = *(*(v95 + 232) + 8);
    v17 = *(v95 + 232);

    return v16(v35);
  }
}

{
  v165 = v0;
  v149 = *(v0 + 496);
  *(v0 + 232) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v149)
  {
    v145 = v148[53];
    v135 = v148[52];
    v136 = v148[51];
    v137 = v148[49];
    v1 = v148[39];
    v134 = v148[34];
    v138 = v148[50];
    v133 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v136(v1, v133, v134);
    swift_endAccess();

    v139 = swift_allocObject();
    *(v139 + 16) = v137;
    *(v139 + 24) = v138;
    oslog = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    v141 = swift_allocObject();
    *(v141 + 16) = 32;
    v142 = swift_allocObject();
    *(v142 + 16) = 8;
    v140 = swift_allocObject();
    *(v140 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v140 + 24) = v139;
    v143 = swift_allocObject();
    *(v143 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v143 + 24) = v140;
    _allocateUninitializedArray<A>(_:)();
    v144 = v2;

    *v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v144[1] = v141;

    v144[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v144[3] = v142;

    v144[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v144[5] = v143;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v147))
    {
      v3 = v148[54];
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v131 = createStorage<A>(capacity:type:)(0);
      v132 = createStorage<A>(capacity:type:)(1);
      v160 = buf;
      v161 = v131;
      v162 = v132;
      serialize(_:at:)(2, &v160);
      serialize(_:at:)(1, &v160);
      v163 = partial apply for closure #1 in OSLogArguments.append(_:);
      v164 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
      if (v3)
      {
      }

      v163 = partial apply for closure #1 in OSLogArguments.append(_:);
      v164 = v142;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
      v163 = partial apply for closure #1 in OSLogArguments.append(_:);
      v164 = v143;
      closure #1 in osLogInternal(_:log:type:)(&v163, &v160, &v161, &v162);
      _os_log_impl(&dword_269912000, oslog, v147, "Authorization check successful for %s!", buf, 0xCu);
      destroyStorage<A>(_:count:)(v131, 0, v129);
      destroyStorage<A>(_:count:)(v132, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v128 = 0;
    }

    else
    {

      v128 = v148[54];
    }

    v79 = v148[56];
    v80 = v148[55];
    v125 = v148[53];
    v83 = v148[52];
    v84 = v148[51];
    v85 = v148[49];
    v89 = v148[48];
    v95 = v148[47];
    v91 = v148[46];
    v94 = v148[45];
    v96 = v148[43];
    v78 = v148[39];
    v5 = v148[38];
    v82 = v148[34];
    v87 = v148[32];
    v86 = v148[50];
    v88 = v148[44];
    MEMORY[0x277D82BD8](oslog);
    v80(v78, v82);
    v81 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v84(v5, v81, v82);
    swift_endAccess();

    v99 = swift_allocObject();
    *(v99 + 16) = v85;
    *(v99 + 24) = v86;
    MEMORY[0x277D82BE0](v87);
    v101 = swift_allocObject();
    *(v101 + 16) = v87;
    MEMORY[0x277D82BE0](v87);
    v103 = swift_allocObject();
    *(v103 + 16) = v87;
    v92 = *(v88 + 16);
    v92(v95, v89, v96);
    v93 = *(v88 + 80);
    v90 = swift_allocObject();
    v97 = *(v88 + 32);
    v97(v90 + ((v93 + 16) & ~v93), v95, v96);

    v105 = swift_allocObject();
    *(v105 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v105 + 24) = v90;

    v92(v95, v91, v96);
    v98 = swift_allocObject();
    v97(v98 + ((v93 + 16) & ~v93), v95, v96);

    v107 = swift_allocObject();
    *(v107 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v107 + 24) = v98;

    log = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();
    v109 = swift_allocObject();
    *(v109 + 16) = 32;
    v110 = swift_allocObject();
    *(v110 + 16) = 8;
    v100 = swift_allocObject();
    *(v100 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v100 + 24) = v99;
    v111 = swift_allocObject();
    *(v111 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v111 + 24) = v100;
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v102 = swift_allocObject();
    *(v102 + 16) = partial apply for implicit closure #8 in LogQuantityIntentHandler.handle(intent:);
    *(v102 + 24) = v101;
    v114 = swift_allocObject();
    *(v114 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
    *(v114 + 24) = v102;
    v115 = swift_allocObject();
    *(v115 + 16) = 32;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v104 = swift_allocObject();
    *(v104 + 16) = partial apply for implicit closure #9 in LogQuantityIntentHandler.handle(intent:);
    *(v104 + 24) = v103;
    v117 = swift_allocObject();
    *(v117 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v117 + 24) = v104;
    v118 = swift_allocObject();
    *(v118 + 16) = 32;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v106 = swift_allocObject();
    *(v106 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v106 + 24) = v105;
    v120 = swift_allocObject();
    *(v120 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v120 + 24) = v106;
    v121 = swift_allocObject();
    *(v121 + 16) = 32;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v108 = swift_allocObject();
    *(v108 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v108 + 24) = v107;
    v123 = swift_allocObject();
    *(v123 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v123 + 24) = v108;
    _allocateUninitializedArray<A>(_:)();
    v124 = v6;

    *v124 = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[1] = v109;

    v124[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[3] = v110;

    v124[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[5] = v111;

    v124[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[7] = v112;

    v124[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[9] = v113;

    v124[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[11] = v114;

    v124[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[13] = v115;

    v124[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[15] = v116;

    v124[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[17] = v117;

    v124[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[19] = v118;

    v124[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[21] = v119;

    v124[22] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[23] = v120;

    v124[24] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[25] = v121;

    v124[26] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[27] = v122;

    v124[28] = partial apply for closure #1 in OSLogArguments.append(_:);
    v124[29] = v123;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v127))
    {
      v75 = static UnsafeMutablePointer.allocate(capacity:)();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = createStorage<A>(capacity:type:)(0);
      v77 = createStorage<A>(capacity:type:)(4);
      v155 = v75;
      v156 = v76;
      v157 = v77;
      serialize(_:at:)(2, &v155);
      serialize(_:at:)(5, &v155);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v109;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      if (v128)
      {
      }

      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v110;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v111;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v116;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v118;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v122;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      v158 = partial apply for closure #1 in OSLogArguments.append(_:);
      v159 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v158, &v155, &v156, &v157);
      _os_log_impl(&dword_269912000, log, v127, "Persisting sample...\n  identifier: %s\n  value: %f\n  unit: %s\n  start: %s\n  end: %s", v75, 0x34u);
      destroyStorage<A>(_:count:)(v76, 0, v74);
      destroyStorage<A>(_:count:)(v77, 4, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v75, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v66 = v148[56];
    v67 = v148[55];
    v64 = v148[38];
    v65 = v148[34];
    v68 = v148[33];
    v71 = v148[32];
    MEMORY[0x277D82BD8](log);
    v67(v64, v65);
    outlined init with copy of QuantityPersisting(v68 + OBJC_IVAR____TtC19SiriWellnessIntents24LogQuantityIntentHandler_storage, (v148 + 7));
    v69 = v148[10];
    v70 = v148[11];
    __swift_project_boxed_opaque_existential_1(v148 + 7, v69);
    [v71 value];
    v72 = v7;
    v73 = [v71 units];
    if (v73)
    {
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v8;
      MEMORY[0x277D82BD8](v73);
      v62 = v60;
      v63 = v61;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v148[59] = v63;
    v58 = v148[50];
    v59 = (*(v70 + 16) + **(v70 + 16));
    v9 = *(*(v70 + 16) + 4);
    v10 = swift_task_alloc();
    v11.n128_u64[0] = v72;
    v148[60] = v10;
    *v10 = v148[29];
    v10[1] = LogQuantityIntentHandler.handle(intent:);
    v12 = v148[49];

    return v59(v12, v58, v62, v63, v69, v70, v11);
  }

  else
  {
    v55 = v148[53];
    v45 = v148[52];
    v46 = v148[51];
    v47 = v148[49];
    v13 = v148[37];
    v44 = v148[34];
    v48 = v148[50];
    v43 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v46(v13, v43, v44);
    swift_endAccess();

    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v48;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v50 + 24) = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v53 + 24) = v50;
    _allocateUninitializedArray<A>(_:)();
    v54 = v14;

    *v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[1] = v51;

    v54[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[3] = v52;

    v54[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[5] = v53;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v56, v57))
    {
      v15 = v148[54];
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0);
      v42 = createStorage<A>(capacity:type:)(1);
      v150 = v40;
      v151 = v41;
      v152 = v42;
      serialize(_:at:)(2, &v150);
      serialize(_:at:)(1, &v150);
      v153 = partial apply for closure #1 in OSLogArguments.append(_:);
      v154 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v153, &v150, &v151, &v152);
      if (v15)
      {
      }

      v153 = partial apply for closure #1 in OSLogArguments.append(_:);
      v154 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v153, &v150, &v151, &v152);
      v153 = partial apply for closure #1 in OSLogArguments.append(_:);
      v154 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v153, &v150, &v151, &v152);
      _os_log_impl(&dword_269912000, v56, v57, "Not authorized to write to: %s", v40, 0xCu);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v21 = v148[56];
    v22 = v148[55];
    v26 = v148[48];
    v25 = v148[46];
    v27 = v148[43];
    v19 = v148[37];
    v20 = v148[34];
    v23 = v148[50];
    v24 = v148[44];
    MEMORY[0x277D82BD8](v56);
    v22(v19, v20);
    type metadata accessor for LogQuantityIntentResponse();
    v38 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(101, 0);

    v28 = *(v24 + 8);
    v28(v25, v27);
    v28(v26, v27);
    v16 = v148[48];
    v29 = v148[47];
    v30 = v148[46];
    v31 = v148[42];
    v32 = v148[41];
    v33 = v148[40];
    v34 = v148[39];
    v35 = v148[38];
    v36 = v148[37];
    v37 = v148[36];

    v17 = *(v148[29] + 8);
    v18 = v148[29];

    return v17(v38);
  }
}

{
  v5 = v0[50];
  v8 = v0[48];
  v7 = v0[46];
  v6 = v0[44];
  v9 = v0[43];
  v0[29] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v10 = *(v6 + 8);
  v10(v7, v9);
  v10(v8, v9);
  v20 = v0[61];
  v1 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[36];

  v2 = *(v0[29] + 8);
  v3 = v0[29];

  return v2(v20);
}

uint64_t LogQuantityIntentHandler.handle(intent:)(char a1)
{
  v7 = *v1;
  v3 = *(*v1 + 464);
  v6 = *(*v1 + 456);
  *(v7 + 232) = *v1;
  *(v7 + 496) = a1;

  v4 = *(v7 + 232);

  return MEMORY[0x2822009F8](LogQuantityIntentHandler.handle(intent:), 0);
}

uint64_t implicit closure #9 in LogQuantityIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 units];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t @objc closure #1 in LogQuantityIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return LogQuantityIntentHandler.handle(intent:)(a1);
}

uint64_t @objc closure #1 in LogQuantityIntentHandler.handle(intent:)(void *a1)
{
  v9 = *v1;
  v2 = *(*v1 + 48);
  aBlock = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  *(v9 + 16) = *v1;

  aBlock[2](aBlock, a1);
  _Block_release(aBlock);

  v3 = *(*(v9 + 16) + 8);

  return v3();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &_sIeghH_IeAgH_TRTATu;
  v27 = &_sIeAgH_ytIeAgHr_TRTATu;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B");
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(v11, v11, v12, v13, v14);
}

id LogQuantityIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:)()
{
  result = *(v0 + 16);
  related decl 'e' for HKErrorCode._nsError.getter();
  return result;
}

uint64_t HealthKitPersistor.isLoggingAuthorized(for:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  MEMORY[0x277D82BE0](a2);
  v3 = swift_task_alloc();
  *(v5 + 48) = v3;
  *v3 = *(v5 + 16);
  v3[1] = HealthKitPersistor.isLoggingAuthorized(for:);

  return isSiriAuthorizedToAccessHealthData(store:)(a2);
}

uint64_t HealthKitPersistor.isLoggingAuthorized(for:)(unsigned int a1)
{
  v6 = *v1;
  v2 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(v6 + 16) = *v1;

  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

id HealthKitPersistor.getHKUnit(from:)(uint64_t a1, uint64_t a2)
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mmol/L", 6uLL, 1)._countAndFlagsBits;
  v7 = MEMORY[0x26D649310](a1, a2, countAndFlagsBits);

  if (v7)
  {
    return [objc_opt_self() _millimolesBloodGlucosePerLiterUnit];
  }

  type metadata accessor for HKUnit();

  return @nonobjc HKUnit.__allocating_init(from:)();
}

id @nonobjc HKUnit.__allocating_init(from:)()
{
  v1 = MEMORY[0x26D6492A0]();
  v2 = [swift_getObjCClassFromMetadata() unitFromString_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t HealthKitPersistor.save(quantityIdentifier:value:units:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 912) = a5;
  *(v6 + 904) = a4;
  *(v6 + 896) = a3;
  *(v6 + 888) = a6;
  *(v6 + 880) = a2;
  *(v6 + 872) = a1;
  *(v6 + 480) = v6;
  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 488) = 0;
  *(v6 + 448) = 0;
  *(v6 + 456) = 0;
  *(v6 + 496) = 0;
  *(v6 + 504) = 0;
  *(v6 + 512) = 0;
  *(v6 + 528) = 0;
  *(v6 + 568) = 0;
  *(v6 + 576) = 0;
  *(v6 + 584) = 0;
  *(v6 + 592) = 0;
  *(v6 + 600) = 0;
  *(v6 + 608) = 0;
  *(v6 + 616) = 0;
  *(v6 + 640) = 0;
  *(v6 + 464) = 0;
  *(v6 + 472) = 0;
  v7 = type metadata accessor for UUID();
  *(v6 + 920) = v7;
  v13 = *(v7 - 8);
  *(v6 + 928) = v13;
  v8 = *(v13 + 64) + 15;
  *(v6 + 936) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v6 + 944) = v9;
  v14 = *(v9 - 8);
  *(v6 + 952) = v14;
  v15 = *(v14 + 64);
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 976) = v10;
  v16 = *(v10 - 8);
  *(v6 + 984) = v16;
  v17 = *(v16 + 64);
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  *(v6 + 1016) = swift_task_alloc();
  *(v6 + 1024) = swift_task_alloc();
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = swift_task_alloc();
  *(v6 + 1048) = swift_task_alloc();
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  *(v6 + 1080) = swift_task_alloc();
  *(v6 + 432) = a1;
  *(v6 + 440) = a2;
  *(v6 + 488) = a6;
  *(v6 + 448) = a3;
  *(v6 + 456) = a4;
  *(v6 + 496) = a5;
  v11 = *(v6 + 480);

  return MEMORY[0x2822009F8](HealthKitPersistor.save(quantityIdentifier:value:units:), 0);
}

uint64_t HealthKitPersistor.save(quantityIdentifier:value:units:)()
{
  v1 = v0[135];
  v20 = v0[123];
  v22 = v0[122];
  v0[60] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[136] = v2;
  v0[137] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v0[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 840) = buf;
    *(v19 + 848) = v16;
    *(v19 + 856) = v17;
    serialize(_:at:)(0, (v19 + 840));
    serialize(_:at:)(0, (v19 + 840));
    *(v19 + 864) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 840;
    v18[3] = v19 + 848;
    v18[4] = v19 + 856;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Starting to save quantity.", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v19 + 1080);
  v8 = *(v19 + 976);
  v12 = *(v19 + 912);
  v10 = *(v19 + 880);
  v9 = *(v19 + 872);
  v6 = *(v19 + 984);
  MEMORY[0x277D82BD8](v24);
  v3 = *(v6 + 8);
  *(v19 + 1112) = v3;
  *(v19 + 1120) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v8);

  v11 = MEMORY[0x26D6492A0](v9, v10);
  *(v19 + 1128) = v11;
  MEMORY[0x277D82BE0](v11);

  MEMORY[0x277D82BD8](v11);
  *(v19 + 504) = v11;
  type metadata accessor for HKQuantityType();
  MEMORY[0x277D82BE0](v11);
  v13 = MEMORY[0x26D649710](v11);
  *(v19 + 1136) = v13;
  *(v19 + 512) = v13;
  MEMORY[0x277D82BE0](v12);
  v4 = swift_task_alloc();
  *(v19 + 1144) = v4;
  *v4 = *(v19 + 480);
  v4[1] = HealthKitPersistor.save(quantityIdentifier:value:units:);

  return getPreferredUnit(for:store:)(v13, v12);
}

{
  v256 = v0;
  v238 = v0[144];
  v0[60] = v0;
  v239 = v0[145];
  v0[146] = v238;
  v240 = v0[113];
  v0[66] = v238;

  if (v240)
  {
    v228 = *(v237 + 904);
    v233 = *(v237 + 1104);
    v231 = *(v237 + 1096);
    v232 = *(v237 + 1088);
    v1 = *(v237 + 1072);
    v230 = *(v237 + 976);
    *(v237 + 464) = *(v237 + 896);
    *(v237 + 472) = v228;
    v229 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v232(v1, v229, v230);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v234 = static os_log_type_t.debug.getter();
    v236 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v234))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v225 = createStorage<A>(capacity:type:)(0);
      v226 = createStorage<A>(capacity:type:)(0);
      *(v237 + 808) = buf;
      *(v237 + 816) = v225;
      *(v237 + 824) = v226;
      serialize(_:at:)(0, (v237 + 808));
      serialize(_:at:)(0, (v237 + 808));
      *(v237 + 832) = v236;
      v227 = swift_task_alloc();
      v227[2] = v237 + 808;
      v227[3] = v237 + 816;
      v227[4] = v237 + 824;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v239)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v234, "Trying to convert unit to HKUnit.", buf, 2u);
      destroyStorage<A>(_:count:)(v225, 0, v223);
      destroyStorage<A>(_:count:)(v226, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v222 = 0;
    }

    else
    {

      v222 = v239;
    }

    v215 = *(v237 + 1120);
    v216 = *(v237 + 1112);
    v213 = *(v237 + 1072);
    v214 = *(v237 + 976);
    v218 = *(v237 + 912);
    v217 = *(v237 + 896);
    MEMORY[0x277D82BD8](oslog);
    v216(v213, v214);
    v219 = HealthKitPersistor.getHKUnit(from:)(v217, v228);
    MEMORY[0x277D82BE0](v219);
    *(v237 + 520) = v219;

    v220 = v222;
    v221 = v219;
  }

  else
  {
    v209 = *(v237 + 1104);
    v207 = *(v237 + 1096);
    v208 = *(v237 + 1088);
    v2 = *(v237 + 1064);
    v206 = *(v237 + 976);
    v205 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v208(v2, v205, v206);
    swift_endAccess();
    log = Logger.logObject.getter();
    v210 = static os_log_type_t.debug.getter();
    v212 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v210))
    {
      v201 = static UnsafeMutablePointer.allocate(capacity:)();
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v202 = createStorage<A>(capacity:type:)(0);
      v203 = createStorage<A>(capacity:type:)(0);
      *(v237 + 776) = v201;
      *(v237 + 784) = v202;
      *(v237 + 792) = v203;
      serialize(_:at:)(0, (v237 + 776));
      serialize(_:at:)(0, (v237 + 776));
      *(v237 + 800) = v212;
      v204 = swift_task_alloc();
      v204[2] = v237 + 776;
      v204[3] = v237 + 784;
      v204[4] = v237 + 792;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v239)
      {
      }

      _os_log_impl(&dword_269912000, log, v210, "Using preferred unit.", v201, 2u);
      destroyStorage<A>(_:count:)(v202, 0, v200);
      destroyStorage<A>(_:count:)(v203, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v201, MEMORY[0x277D84B78]);

      v199 = 0;
    }

    else
    {

      v199 = v239;
    }

    v197 = *(v237 + 1120);
    v198 = *(v237 + 1112);
    v195 = *(v237 + 1064);
    v196 = *(v237 + 976);
    MEMORY[0x277D82BD8](log);
    v198(v195, v196);
    MEMORY[0x277D82BE0](v238);
    MEMORY[0x277D82BE0](v238);
    *(v237 + 520) = v238;
    v220 = v199;
    v221 = v238;
  }

  *(v237 + 1176) = v221;
  v191 = *(v237 + 1104);
  v189 = *(v237 + 1096);
  v190 = *(v237 + 1088);
  v3 = *(v237 + 1056);
  v188 = *(v237 + 976);
  v187 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v190(v3, v187, v188);
  swift_endAccess();
  v193 = Logger.logObject.getter();
  v192 = static os_log_type_t.debug.getter();
  v194 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v193, v192))
  {
    v183 = static UnsafeMutablePointer.allocate(capacity:)();
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v184 = createStorage<A>(capacity:type:)(0);
    v185 = createStorage<A>(capacity:type:)(0);
    *(v237 + 744) = v183;
    *(v237 + 752) = v184;
    *(v237 + 760) = v185;
    serialize(_:at:)(0, (v237 + 744));
    serialize(_:at:)(0, (v237 + 744));
    *(v237 + 768) = v194;
    v186 = swift_task_alloc();
    v186[2] = v237 + 744;
    v186[3] = v237 + 752;
    v186[4] = v237 + 760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v220)
    {
    }

    _os_log_impl(&dword_269912000, v193, v192, "Starting to convert optional HKUnit to non-optional HKUnit.", v183, 2u);
    destroyStorage<A>(_:count:)(v184, 0, v182);
    destroyStorage<A>(_:count:)(v185, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v183, MEMORY[0x277D84B78]);

    v181 = 0;
  }

  else
  {

    v181 = v220;
  }

  v179 = *(v237 + 1120);
  v180 = *(v237 + 1112);
  v177 = *(v237 + 1056);
  v178 = *(v237 + 976);
  MEMORY[0x277D82BD8](v193);
  v180(v177, v178);
  if (!v221)
  {
    v47 = *(v237 + 1104);
    v45 = *(v237 + 1096);
    v46 = *(v237 + 1088);
    v13 = *(v237 + 1000);
    v44 = *(v237 + 976);
    v43 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v46(v13, v43, v44);
    swift_endAccess();
    v49 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v50 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v49, v48))
    {

      goto LABEL_60;
    }

    v39 = static UnsafeMutablePointer.allocate(capacity:)();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v40 = createStorage<A>(capacity:type:)(0);
    v41 = createStorage<A>(capacity:type:)(0);
    *(v237 + 536) = v39;
    *(v237 + 544) = v40;
    *(v237 + 552) = v41;
    serialize(_:at:)(0, (v237 + 536));
    serialize(_:at:)(0, (v237 + 536));
    *(v237 + 560) = v50;
    v42 = swift_task_alloc();
    v42[2] = v237 + 536;
    v42[3] = v237 + 544;
    v42[4] = v237 + 552;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v181)
    {

      _os_log_impl(&dword_269912000, v49, v48, "Could not create an HKUnit.", v39, 2u);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v39, MEMORY[0x277D84B78]);

LABEL_60:
      v35 = *(v237 + 1136);
      v36 = *(v237 + 1128);
      v33 = *(v237 + 1120);
      v34 = *(v237 + 1112);
      v31 = *(v237 + 1000);
      v32 = *(v237 + 976);
      MEMORY[0x277D82BD8](v49);
      v34(v31, v32);
      type metadata accessor for LogQuantityIntentResponse();
      v37 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      MEMORY[0x277D82BD8](v238);
      outlined destroy of HealthKitPersistor((v237 + 520));
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      v152 = v37;
LABEL_61:
      v14 = *(v237 + 1080);
      v17 = *(v237 + 1072);
      v18 = *(v237 + 1064);
      v19 = *(v237 + 1056);
      v20 = *(v237 + 1048);
      v21 = *(v237 + 1040);
      v22 = *(v237 + 1032);
      v23 = *(v237 + 1024);
      v24 = *(v237 + 1016);
      v25 = *(v237 + 1008);
      v26 = *(v237 + 1000);
      v27 = *(v237 + 992);
      v28 = *(v237 + 968);
      v29 = *(v237 + 960);
      v30 = *(v237 + 936);

      v15 = *(*(v237 + 480) + 8);
      v16 = *(v237 + 480);

      return v15(v152);
    }
  }

  v4 = *(v237 + 1136);
  *(v237 + 568) = v221;
  if (([v4 isCompatibleWithUnit_] & 1) == 0)
  {
    v162 = *(v237 + 1136);
    v174 = *(v237 + 1104);
    v160 = *(v237 + 1096);
    v161 = *(v237 + 1088);
    v5 = *(v237 + 1048);
    v159 = *(v237 + 976);
    v158 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v161(v5, v158, v159);
    swift_endAccess();
    MEMORY[0x277D82BE0](v221);
    v163 = swift_allocObject();
    *(v163 + 16) = v221;
    MEMORY[0x277D82BE0](v162);
    v165 = swift_allocObject();
    *(v165 + 16) = v162;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.error.getter();
    v167 = swift_allocObject();
    *(v167 + 16) = 64;
    v168 = swift_allocObject();
    *(v168 + 16) = 8;
    v164 = swift_allocObject();
    *(v164 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v164 + 24) = v163;
    v169 = swift_allocObject();
    *(v169 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v169 + 24) = v164;
    v170 = swift_allocObject();
    *(v170 + 16) = 64;
    v171 = swift_allocObject();
    *(v171 + 16) = 8;
    v166 = swift_allocObject();
    *(v166 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v166 + 24) = v165;
    v172 = swift_allocObject();
    *(v172 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v172 + 24) = v166;
    _allocateUninitializedArray<A>(_:)();
    v173 = v6;

    *v173 = partial apply for closure #1 in OSLogArguments.append(_:);
    v173[1] = v167;

    v173[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v173[3] = v168;

    v173[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v173[5] = v169;

    v173[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v173[7] = v170;

    v173[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v173[9] = v171;

    v173[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v173[11] = v172;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v175, v176))
    {
      v155 = static UnsafeMutablePointer.allocate(capacity:)();
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v156 = createStorage<A>(capacity:type:)(2);
      v157 = createStorage<A>(capacity:type:)(0);
      v251 = v155;
      v252 = v156;
      v253 = v157;
      serialize(_:at:)(2, &v251);
      serialize(_:at:)(2, &v251);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v167;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      if (v181)
      {
      }

      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v168;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v169;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v170;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v171;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      v254 = partial apply for closure #1 in OSLogArguments.append(_:);
      v255 = v172;
      closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
      _os_log_impl(&dword_269912000, v175, v176, "%@ is incompatible with %@.", v155, 0x16u);
      destroyStorage<A>(_:count:)(v156, 2, v154);
      destroyStorage<A>(_:count:)(v157, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v155, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v149 = *(v237 + 1136);
    v150 = *(v237 + 1128);
    v147 = *(v237 + 1120);
    v148 = *(v237 + 1112);
    v145 = *(v237 + 1048);
    v146 = *(v237 + 976);
    MEMORY[0x277D82BD8](v175);
    v148(v145, v146);
    type metadata accessor for LogQuantityIntentResponse();
    v151 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v221);
    MEMORY[0x277D82BD8](v238);
    outlined destroy of HealthKitPersistor((v237 + 520));
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    v152 = v151;
    goto LABEL_61;
  }

  *(v237 + 576) = *(v237 + 888);
  type metadata accessor for NSObject();
  v143 = [objc_opt_self() percentUnit];
  v144 = static NSObject.== infix(_:_:)();
  MEMORY[0x277D82BD8](v143);
  if (v144)
  {
    v8 = *(v237 + 888) / 100.0;
    *(v237 + 576) = v8;
    v142 = v8;
  }

  else
  {
    v142 = *(v237 + 888);
  }

  v139 = *(v237 + 1104);
  v130 = *(v237 + 1096);
  v131 = *(v237 + 1088);
  v127 = *(v237 + 1040);
  v129 = *(v237 + 976);
  type metadata accessor for HKQuantity();
  MEMORY[0x277D82BE0](v221);
  quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v221, v142);
  *(v237 + 1184) = quantity;
  *(v237 + 584) = quantity;
  v128 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v131(v127, v128, v129);
  swift_endAccess();
  MEMORY[0x277D82BE0](quantity);
  v133 = swift_allocObject();
  *(v133 + 16) = quantity;
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.debug.getter();
  v135 = swift_allocObject();
  *(v135 + 16) = 64;
  v136 = swift_allocObject();
  *(v136 + 16) = 8;
  v134 = swift_allocObject();
  *(v134 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v134 + 24) = v133;
  v137 = swift_allocObject();
  *(v137 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v137 + 24) = v134;
  _allocateUninitializedArray<A>(_:)();
  v138 = v9;

  *v138 = partial apply for closure #1 in OSLogArguments.append(_:);
  v138[1] = v135;

  v138[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v138[3] = v136;

  v138[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v138[5] = v137;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v140, v141))
  {
    v124 = static UnsafeMutablePointer.allocate(capacity:)();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v125 = createStorage<A>(capacity:type:)(1);
    v126 = createStorage<A>(capacity:type:)(0);
    v246 = v124;
    v247 = v125;
    v248 = v126;
    serialize(_:at:)(2, &v246);
    serialize(_:at:)(1, &v246);
    v249 = partial apply for closure #1 in OSLogArguments.append(_:);
    v250 = v135;
    closure #1 in osLogInternal(_:log:type:)(&v249, &v246, &v247, &v248);
    if (v181)
    {
    }

    v249 = partial apply for closure #1 in OSLogArguments.append(_:);
    v250 = v136;
    closure #1 in osLogInternal(_:log:type:)(&v249, &v246, &v247, &v248);
    v249 = partial apply for closure #1 in OSLogArguments.append(_:);
    v250 = v137;
    closure #1 in osLogInternal(_:log:type:)(&v249, &v246, &v247, &v248);
    _os_log_impl(&dword_269912000, v140, v141, "Created HKQuantity: %@", v124, 0xCu);
    destroyStorage<A>(_:count:)(v125, 1, v123);
    destroyStorage<A>(_:count:)(v126, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v124, MEMORY[0x277D84B78]);

    v122 = 0;
  }

  else
  {

    v122 = v181;
  }

  identifier = *(v237 + 1128);
  v119 = *(v237 + 1120);
  v120 = *(v237 + 1112);
  v117 = *(v237 + 1040);
  v118 = *(v237 + 976);
  MEMORY[0x277D82BD8](v140);
  v120(v117, v118);
  if (!validateQuantity(identifier:quantity:)(identifier, quantity))
  {
    v113 = *(v237 + 1104);
    v111 = *(v237 + 1096);
    v112 = *(v237 + 1088);
    v10 = *(v237 + 1032);
    v110 = *(v237 + 976);
    v109 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v112(v10, v109, v110);
    swift_endAccess();
    v115 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    v116 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v115, v114))
    {
      v105 = static UnsafeMutablePointer.allocate(capacity:)();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v106 = createStorage<A>(capacity:type:)(0);
      v107 = createStorage<A>(capacity:type:)(0);
      *(v237 + 712) = v105;
      *(v237 + 720) = v106;
      *(v237 + 728) = v107;
      serialize(_:at:)(0, (v237 + 712));
      serialize(_:at:)(0, (v237 + 712));
      *(v237 + 736) = v116;
      v108 = swift_task_alloc();
      v108[2] = v237 + 712;
      v108[3] = v237 + 720;
      v108[4] = v237 + 728;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v122)
      {
      }

      _os_log_impl(&dword_269912000, v115, v114, "Quantity validation failed - value outside valid bounds.", v105, 2u);
      destroyStorage<A>(_:count:)(v106, 0, v104);
      destroyStorage<A>(_:count:)(v107, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v105, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v101 = *(v237 + 1136);
    v102 = *(v237 + 1128);
    v99 = *(v237 + 1120);
    v100 = *(v237 + 1112);
    v97 = *(v237 + 1032);
    v98 = *(v237 + 976);
    MEMORY[0x277D82BD8](v115);
    v100(v97, v98);
    type metadata accessor for LogQuantityIntentResponse();
    v103 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](quantity);
    MEMORY[0x277D82BD8](v221);
    MEMORY[0x277D82BD8](v238);
    outlined destroy of HealthKitPersistor((v237 + 520));
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    v152 = v103;
    goto LABEL_61;
  }

  v79 = *(v237 + 1136);
  v94 = *(v237 + 1104);
  v85 = *(v237 + 1096);
  v86 = *(v237 + 1088);
  v82 = *(v237 + 1024);
  v84 = *(v237 + 976);
  v80 = *(v237 + 968);
  v81 = *(v237 + 960);
  type metadata accessor for HKQuantitySample();
  MEMORY[0x277D82BE0](v79);
  MEMORY[0x277D82BE0](quantity);
  Date.init()();
  Date.init()();
  v87 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v79, quantity, v80, v81);
  *(v237 + 1192) = v87;
  *(v237 + 592) = v87;
  v83 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v86(v82, v83, v84);
  swift_endAccess();
  MEMORY[0x277D82BE0](v87);
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v90 = swift_allocObject();
  *(v90 + 16) = 64;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v89 + 24) = v88;
  v92 = swift_allocObject();
  *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v92 + 24) = v89;
  _allocateUninitializedArray<A>(_:)();
  v93 = v11;

  *v93 = partial apply for closure #1 in OSLogArguments.append(_:);
  v93[1] = v90;

  v93[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v93[3] = v91;

  v93[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v93[5] = v92;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v95, v96))
  {
    v76 = static UnsafeMutablePointer.allocate(capacity:)();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v77 = createStorage<A>(capacity:type:)(1);
    v78 = createStorage<A>(capacity:type:)(0);
    v241 = v76;
    v242 = v77;
    v243 = v78;
    serialize(_:at:)(2, &v241);
    serialize(_:at:)(1, &v241);
    v244 = partial apply for closure #1 in OSLogArguments.append(_:);
    v245 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
    if (v122)
    {
    }

    v244 = partial apply for closure #1 in OSLogArguments.append(_:);
    v245 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
    v244 = partial apply for closure #1 in OSLogArguments.append(_:);
    v245 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
    _os_log_impl(&dword_269912000, v95, v96, "Created HKQuantitySample: %@", v76, 0xCu);
    destroyStorage<A>(_:count:)(v77, 1, v75);
    destroyStorage<A>(_:count:)(v78, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v76, MEMORY[0x277D84B78]);

    v74 = 0;
  }

  else
  {

    v74 = v122;
  }

  v64 = *(v237 + 1120);
  v65 = *(v237 + 1112);
  v70 = *(v237 + 1104);
  v68 = *(v237 + 1096);
  v69 = *(v237 + 1088);
  v63 = *(v237 + 1024);
  v12 = *(v237 + 1016);
  v67 = *(v237 + 976);
  MEMORY[0x277D82BD8](v95);
  v65(v63, v67);
  v66 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v69(v12, v66, v67);
  swift_endAccess();
  v72 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v73 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v72, v71))
  {
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v60 = createStorage<A>(capacity:type:)(0);
    v61 = createStorage<A>(capacity:type:)(0);
    *(v237 + 680) = v59;
    *(v237 + 688) = v60;
    *(v237 + 696) = v61;
    serialize(_:at:)(0, (v237 + 680));
    serialize(_:at:)(0, (v237 + 680));
    *(v237 + 704) = v73;
    v62 = swift_task_alloc();
    v62[2] = v237 + 680;
    v62[3] = v237 + 688;
    v62[4] = v237 + 696;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v74)
    {
    }

    _os_log_impl(&dword_269912000, v72, v71, "Trying to save to store.", v59, 2u);
    destroyStorage<A>(_:count:)(v60, 0, v58);
    destroyStorage<A>(_:count:)(v61, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v59, MEMORY[0x277D84B78]);

    v57 = 0;
  }

  else
  {

    v57 = v74;
  }

  *(v237 + 1200) = v57;
  v53 = *(v237 + 1120);
  v54 = *(v237 + 1112);
  v51 = *(v237 + 1016);
  v52 = *(v237 + 976);
  v56 = *(v237 + 912);
  MEMORY[0x277D82BD8](v72);
  v54(v51, v52);
  MEMORY[0x277D82BE0](v56);
  *(v237 + 16) = *(v237 + 480);
  *(v237 + 56) = v153;
  *(v237 + 24) = HealthKitPersistor.save(quantityIdentifier:value:units:);
  v55 = swift_continuation_init();
  *(v237 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v237 + 112) = v55;
  *(v237 + 80) = MEMORY[0x277D85DD0];
  *(v237 + 88) = 1107296256;
  *(v237 + 92) = 0;
  *(v237 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v237 + 104) = &block_descriptor;
  [v56 saveObject:v87 withCompletion:?];

  return MEMORY[0x282200938](v237 + 16);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 480);
  *(v8 + 480) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 1208) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  else
  {
    v2 = *v6;
    v3 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v78 = v0[138];
  v76 = v0[137];
  v77 = v0[136];
  v1 = v0[126];
  v75 = v0[122];
  v2 = v0[114];
  v0[60] = v0;
  MEMORY[0x277D82BD8](v2);
  v74 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v77(v1, v74, v75);
  swift_endAccess();
  v80 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v81 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v80, v79))
  {
    v3 = *(v73 + 1200);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v70 = createStorage<A>(capacity:type:)(0);
    v71 = createStorage<A>(capacity:type:)(0);
    *(v73 + 648) = buf;
    *(v73 + 656) = v70;
    *(v73 + 664) = v71;
    serialize(_:at:)(0, (v73 + 648));
    serialize(_:at:)(0, (v73 + 648));
    *(v73 + 672) = v81;
    v72 = swift_task_alloc();
    v72[2] = v73 + 648;
    v72[3] = v73 + 656;
    v72[4] = v73 + 664;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, v80, v79, "Getting intent response.", buf, 2u);
    destroyStorage<A>(_:count:)(v70, 0, v68);
    destroyStorage<A>(_:count:)(v71, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v58 = *(v73 + 1192);
  v48 = *(v73 + 1120);
  v49 = *(v73 + 1112);
  v46 = *(v73 + 1008);
  v47 = *(v73 + 976);
  v53 = *(v73 + 968);
  v54 = *(v73 + 944);
  store = *(v73 + 912);
  v67.super.isa = *(v73 + 1176);
  v50 = *(v73 + 952);
  MEMORY[0x277D82BD8](v80);
  v49(v46, v47);
  type metadata accessor for LogQuantityIntentResponse();
  v63 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  *(v73 + 608) = v63;
  MEMORY[0x277D82BE0](v58);
  v51 = [v58 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  MEMORY[0x277D82BD8](v58);
  v55 = *(v50 + 8);
  v55(v53, v54);
  MEMORY[0x277D82BD8](v51);
  [v63 setStart_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v58);
  v56 = [v58 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = Date._bridgeToObjectiveC()().super.isa;
  MEMORY[0x277D82BD8](v58);
  v55(v53, v54);
  MEMORY[0x277D82BD8](v56);
  [v63 setEnd_];
  MEMORY[0x277D82BD8](v57);
  v59 = [v58 quantity];
  [v59 doubleValueForUnit_];
  v60 = v5;
  MEMORY[0x277D82BD8](v59);
  [v63 setDoubleValue_];
  [v63 doubleValue];
  value = v6;
  MEMORY[0x277D82BE0](store);
  v84.value = value;
  v83.is_nil = store;
  v84.is_nil = LOBYTE(value);
  v83.value.super.isa = 0;
  v7 = localizedUnitName(for:value:store:)(v67, v84, v83);
  MEMORY[0x277D82BD8](store);
  v64 = MEMORY[0x26D6492A0](v7._countAndFlagsBits, v7._object);

  [v63 setUnits_];
  MEMORY[0x277D82BD8](v64);
  type metadata accessor for HKUnit();
  v66 = _allocateUninitializedArray<A>(_:)();
  v65 = v8;
  *v8 = [objc_opt_self() countUnit];
  v65[1] = [objc_opt_self() _countPerMinuteUnit];
  v65[2] = [objc_opt_self() percentUnit];
  _finalizeUninitializedArray<A>(_:)();
  *(v73 + 616) = v66;
  *(v73 + 624) = v66;
  *(v73 + 632) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6HKUnitCGMd, &_sSaySo6HKUnitCGMR);
  lazy protocol witness table accessor for type [HKUnit] and conformance [A]();
  lazy protocol witness table accessor for type HKUnit and conformance NSObject();
  if (Sequence<>.contains(_:)())
  {
    v43 = *(v73 + 1136);
    v44 = *(v73 + 912);
    MEMORY[0x277D82BE0](v44);
    v45 = [v43 hk:v44 metadataValueDisplayTypeInStore:?];
    MEMORY[0x277D82BD8](v44);
    if (v45)
    {
      v9 = *(v73 + 912);
      v39 = v9;
      *(v73 + 640) = v45;
      MEMORY[0x277D82BE0](v9);
      v40 = localizedUnitName(for:store:)(v45, v39);
      v41 = v10;
      MEMORY[0x277D82BD8](v39);
      v42 = MEMORY[0x26D6492A0](v40, v41);

      [v63 setUnits_];
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v45);
    }
  }

  v19 = *(v73 + 1192);
  v20 = *(v73 + 1184);
  v22 = *(v73 + 1168);
  v23 = *(v73 + 1136);
  v24 = *(v73 + 1128);
  v15 = *(v73 + 936);
  v16 = *(v73 + 920);
  v21 = *(v73 + 1176);
  v14 = *(v73 + 928);
  MEMORY[0x277D82BE0](v19);
  v17 = [v19 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = UUID._bridgeToObjectiveC()().super.isa;
  MEMORY[0x277D82BD8](v19);
  (*(v14 + 8))(v15, v16);
  MEMORY[0x277D82BD8](v17);
  [v63 setUuidOfLastSavedSample_];
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  outlined destroy of HealthKitPersistor((v73 + 520));
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v11 = *(v73 + 1080);
  v25 = *(v73 + 1072);
  v26 = *(v73 + 1064);
  v27 = *(v73 + 1056);
  v28 = *(v73 + 1048);
  v29 = *(v73 + 1040);
  v30 = *(v73 + 1032);
  v31 = *(v73 + 1024);
  v32 = *(v73 + 1016);
  v33 = *(v73 + 1008);
  v34 = *(v73 + 1000);
  v35 = *(v73 + 992);
  v36 = *(v73 + 968);
  v37 = *(v73 + 960);
  v38 = *(v73 + 936);

  v12 = *(*(v73 + 480) + 8);
  v13 = *(v73 + 480);

  return v12(v63);
}

{
  v249 = v0;
  v232 = v0[145];
  v1 = v0[114];
  v0[60] = v0;
  MEMORY[0x277D82BD8](v1);

  v0[146] = 0;
  v233 = v0[113];
  v0[66] = 0;

  if (v233)
  {
    v222 = *(v231 + 904);
    v227 = *(v231 + 1104);
    v225 = *(v231 + 1096);
    v226 = *(v231 + 1088);
    v2 = *(v231 + 1072);
    v224 = *(v231 + 976);
    *(v231 + 464) = *(v231 + 896);
    *(v231 + 472) = v222;
    v223 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v226(v2, v223, v224);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v228 = static os_log_type_t.debug.getter();
    v230 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v228))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v219 = createStorage<A>(capacity:type:)(0);
      v220 = createStorage<A>(capacity:type:)(0);
      *(v231 + 808) = buf;
      *(v231 + 816) = v219;
      *(v231 + 824) = v220;
      serialize(_:at:)(0, (v231 + 808));
      serialize(_:at:)(0, (v231 + 808));
      *(v231 + 832) = v230;
      v221 = swift_task_alloc();
      v221[2] = v231 + 808;
      v221[3] = v231 + 816;
      v221[4] = v231 + 824;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v228, "Trying to convert unit to HKUnit.", buf, 2u);
      destroyStorage<A>(_:count:)(v219, 0, v217);
      destroyStorage<A>(_:count:)(v220, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v211 = *(v231 + 1120);
    v212 = *(v231 + 1112);
    v209 = *(v231 + 1072);
    v210 = *(v231 + 976);
    v214 = *(v231 + 912);
    v213 = *(v231 + 896);
    MEMORY[0x277D82BD8](oslog);
    v212(v209, v210);
    v215 = HealthKitPersistor.getHKUnit(from:)(v213, v222);
    MEMORY[0x277D82BE0](v215);
    *(v231 + 520) = v215;

    v216 = v215;
  }

  else
  {
    v205 = *(v231 + 1104);
    v203 = *(v231 + 1096);
    v204 = *(v231 + 1088);
    v3 = *(v231 + 1064);
    v202 = *(v231 + 976);
    v201 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v204(v3, v201, v202);
    swift_endAccess();
    log = Logger.logObject.getter();
    v206 = static os_log_type_t.debug.getter();
    v208 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v206))
    {
      v197 = static UnsafeMutablePointer.allocate(capacity:)();
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v198 = createStorage<A>(capacity:type:)(0);
      v199 = createStorage<A>(capacity:type:)(0);
      *(v231 + 776) = v197;
      *(v231 + 784) = v198;
      *(v231 + 792) = v199;
      serialize(_:at:)(0, (v231 + 776));
      serialize(_:at:)(0, (v231 + 776));
      *(v231 + 800) = v208;
      v200 = swift_task_alloc();
      v200[2] = v231 + 776;
      v200[3] = v231 + 784;
      v200[4] = v231 + 792;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v206, "Using preferred unit.", v197, 2u);
      destroyStorage<A>(_:count:)(v198, 0, v196);
      destroyStorage<A>(_:count:)(v199, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v197, MEMORY[0x277D84B78]);
    }

    v194 = *(v231 + 1120);
    v195 = *(v231 + 1112);
    v192 = *(v231 + 1064);
    v193 = *(v231 + 976);
    MEMORY[0x277D82BD8](log);
    v195(v192, v193);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](0);
    *(v231 + 520) = 0;
    v216 = 0;
  }

  *(v231 + 1176) = v216;
  v188 = *(v231 + 1104);
  v186 = *(v231 + 1096);
  v187 = *(v231 + 1088);
  v4 = *(v231 + 1056);
  v185 = *(v231 + 976);
  v184 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v187(v4, v184, v185);
  swift_endAccess();
  v190 = Logger.logObject.getter();
  v189 = static os_log_type_t.debug.getter();
  v191 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v190, v189))
  {
    v180 = static UnsafeMutablePointer.allocate(capacity:)();
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v181 = createStorage<A>(capacity:type:)(0);
    v182 = createStorage<A>(capacity:type:)(0);
    *(v231 + 744) = v180;
    *(v231 + 752) = v181;
    *(v231 + 760) = v182;
    serialize(_:at:)(0, (v231 + 744));
    serialize(_:at:)(0, (v231 + 744));
    *(v231 + 768) = v191;
    v183 = swift_task_alloc();
    v183[2] = v231 + 744;
    v183[3] = v231 + 752;
    v183[4] = v231 + 760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v190, v189, "Starting to convert optional HKUnit to non-optional HKUnit.", v180, 2u);
    destroyStorage<A>(_:count:)(v181, 0, v179);
    destroyStorage<A>(_:count:)(v182, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v180, MEMORY[0x277D84B78]);
  }

  v177 = *(v231 + 1120);
  v178 = *(v231 + 1112);
  v175 = *(v231 + 1056);
  v176 = *(v231 + 976);
  MEMORY[0x277D82BD8](v190);
  v178(v175, v176);
  if (!v216)
  {
    v48 = *(v231 + 1104);
    v46 = *(v231 + 1096);
    v47 = *(v231 + 1088);
    v13 = *(v231 + 1000);
    v45 = *(v231 + 976);
    v44 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v47(v13, v44, v45);
    swift_endAccess();
    v50 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v51 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v50, v49))
    {
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0);
      v42 = createStorage<A>(capacity:type:)(0);
      *(v231 + 536) = v40;
      *(v231 + 544) = v41;
      *(v231 + 552) = v42;
      serialize(_:at:)(0, (v231 + 536));
      serialize(_:at:)(0, (v231 + 536));
      *(v231 + 560) = v51;
      v43 = swift_task_alloc();
      v43[2] = v231 + 536;
      v43[3] = v231 + 544;
      v43[4] = v231 + 552;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v50, v49, "Could not create an HKUnit.", v40, 2u);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
    }

    v36 = *(v231 + 1136);
    v37 = *(v231 + 1128);
    v34 = *(v231 + 1120);
    v35 = *(v231 + 1112);
    v32 = *(v231 + 1000);
    v33 = *(v231 + 976);
    MEMORY[0x277D82BD8](v50);
    v35(v32, v33);
    type metadata accessor for LogQuantityIntentResponse();
    v38 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](0);
    outlined destroy of HealthKitPersistor((v231 + 520));
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    v150 = v38;
    goto LABEL_37;
  }

  v5 = *(v231 + 1136);
  *(v231 + 568) = v216;
  if (([v5 isCompatibleWithUnit_] & 1) == 0)
  {
    v160 = *(v231 + 1136);
    v172 = *(v231 + 1104);
    v158 = *(v231 + 1096);
    v159 = *(v231 + 1088);
    v6 = *(v231 + 1048);
    v157 = *(v231 + 976);
    v156 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v159(v6, v156, v157);
    swift_endAccess();
    MEMORY[0x277D82BE0](v216);
    v161 = swift_allocObject();
    *(v161 + 16) = v216;
    MEMORY[0x277D82BE0](v160);
    v163 = swift_allocObject();
    *(v163 + 16) = v160;
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.error.getter();
    v165 = swift_allocObject();
    *(v165 + 16) = 64;
    v166 = swift_allocObject();
    *(v166 + 16) = 8;
    v162 = swift_allocObject();
    *(v162 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v162 + 24) = v161;
    v167 = swift_allocObject();
    *(v167 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v167 + 24) = v162;
    v168 = swift_allocObject();
    *(v168 + 16) = 64;
    v169 = swift_allocObject();
    *(v169 + 16) = 8;
    v164 = swift_allocObject();
    *(v164 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v164 + 24) = v163;
    v170 = swift_allocObject();
    *(v170 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v170 + 24) = v164;
    _allocateUninitializedArray<A>(_:)();
    v171 = v7;

    *v171 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[1] = v165;

    v171[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[3] = v166;

    v171[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[5] = v167;

    v171[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[7] = v168;

    v171[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[9] = v169;

    v171[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[11] = v170;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v173, v174))
    {
      v153 = static UnsafeMutablePointer.allocate(capacity:)();
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v154 = createStorage<A>(capacity:type:)(2);
      v155 = createStorage<A>(capacity:type:)(0);
      v244 = v153;
      v245 = v154;
      v246 = v155;
      serialize(_:at:)(2, &v244);
      serialize(_:at:)(2, &v244);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v165;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v166;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v167;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v168;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v169;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v170;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      _os_log_impl(&dword_269912000, v173, v174, "%@ is incompatible with %@.", v153, 0x16u);
      destroyStorage<A>(_:count:)(v154, 2, v152);
      destroyStorage<A>(_:count:)(v155, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v153, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v147 = *(v231 + 1136);
    v148 = *(v231 + 1128);
    v145 = *(v231 + 1120);
    v146 = *(v231 + 1112);
    v143 = *(v231 + 1048);
    v144 = *(v231 + 976);
    MEMORY[0x277D82BD8](v173);
    v146(v143, v144);
    type metadata accessor for LogQuantityIntentResponse();
    v149 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v216);
    MEMORY[0x277D82BD8](0);
    outlined destroy of HealthKitPersistor((v231 + 520));
    MEMORY[0x277D82BD8](v147);
    MEMORY[0x277D82BD8](v148);
    v150 = v149;
LABEL_37:
    v14 = *(v231 + 1080);
    v18 = *(v231 + 1072);
    v19 = *(v231 + 1064);
    v20 = *(v231 + 1056);
    v21 = *(v231 + 1048);
    v22 = *(v231 + 1040);
    v23 = *(v231 + 1032);
    v24 = *(v231 + 1024);
    v25 = *(v231 + 1016);
    v26 = *(v231 + 1008);
    v27 = *(v231 + 1000);
    v28 = *(v231 + 992);
    v29 = *(v231 + 968);
    v30 = *(v231 + 960);
    v31 = *(v231 + 936);

    v15 = *(*(v231 + 480) + 8);
    v16 = *(v231 + 480);

    return v15(v150);
  }

  *(v231 + 576) = *(v231 + 888);
  type metadata accessor for NSObject();
  v141 = [objc_opt_self() percentUnit];
  v142 = static NSObject.== infix(_:_:)();
  MEMORY[0x277D82BD8](v141);
  if (v142)
  {
    v8 = *(v231 + 888) / 100.0;
    *(v231 + 576) = v8;
    v140 = v8;
  }

  else
  {
    v140 = *(v231 + 888);
  }

  v137 = *(v231 + 1104);
  v128 = *(v231 + 1096);
  v129 = *(v231 + 1088);
  v125 = *(v231 + 1040);
  v127 = *(v231 + 976);
  type metadata accessor for HKQuantity();
  MEMORY[0x277D82BE0](v216);
  quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v216, v140);
  *(v231 + 1184) = quantity;
  *(v231 + 584) = quantity;
  v126 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v129(v125, v126, v127);
  swift_endAccess();
  MEMORY[0x277D82BE0](quantity);
  v131 = swift_allocObject();
  *(v131 + 16) = quantity;
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.debug.getter();
  v133 = swift_allocObject();
  *(v133 + 16) = 64;
  v134 = swift_allocObject();
  *(v134 + 16) = 8;
  v132 = swift_allocObject();
  *(v132 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v132 + 24) = v131;
  v135 = swift_allocObject();
  *(v135 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v135 + 24) = v132;
  _allocateUninitializedArray<A>(_:)();
  v136 = v9;

  *v136 = partial apply for closure #1 in OSLogArguments.append(_:);
  v136[1] = v133;

  v136[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v136[3] = v134;

  v136[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v136[5] = v135;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v138, v139))
  {
    v122 = static UnsafeMutablePointer.allocate(capacity:)();
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v123 = createStorage<A>(capacity:type:)(1);
    v124 = createStorage<A>(capacity:type:)(0);
    v239 = v122;
    v240 = v123;
    v241 = v124;
    serialize(_:at:)(2, &v239);
    serialize(_:at:)(1, &v239);
    v242 = partial apply for closure #1 in OSLogArguments.append(_:);
    v243 = v133;
    closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
    v242 = partial apply for closure #1 in OSLogArguments.append(_:);
    v243 = v134;
    closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
    v242 = partial apply for closure #1 in OSLogArguments.append(_:);
    v243 = v135;
    closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
    _os_log_impl(&dword_269912000, v138, v139, "Created HKQuantity: %@", v122, 0xCu);
    destroyStorage<A>(_:count:)(v123, 1, v121);
    destroyStorage<A>(_:count:)(v124, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v122, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  identifier = *(v231 + 1128);
  v118 = *(v231 + 1120);
  v119 = *(v231 + 1112);
  v116 = *(v231 + 1040);
  v117 = *(v231 + 976);
  MEMORY[0x277D82BD8](v138);
  v119(v116, v117);
  if (!validateQuantity(identifier:quantity:)(identifier, quantity))
  {
    v112 = *(v231 + 1104);
    v110 = *(v231 + 1096);
    v111 = *(v231 + 1088);
    v10 = *(v231 + 1032);
    v109 = *(v231 + 976);
    v108 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v111(v10, v108, v109);
    swift_endAccess();
    v114 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    v115 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v114, v113))
    {
      v104 = static UnsafeMutablePointer.allocate(capacity:)();
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v105 = createStorage<A>(capacity:type:)(0);
      v106 = createStorage<A>(capacity:type:)(0);
      *(v231 + 712) = v104;
      *(v231 + 720) = v105;
      *(v231 + 728) = v106;
      serialize(_:at:)(0, (v231 + 712));
      serialize(_:at:)(0, (v231 + 712));
      *(v231 + 736) = v115;
      v107 = swift_task_alloc();
      v107[2] = v231 + 712;
      v107[3] = v231 + 720;
      v107[4] = v231 + 728;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v114, v113, "Quantity validation failed - value outside valid bounds.", v104, 2u);
      destroyStorage<A>(_:count:)(v105, 0, v103);
      destroyStorage<A>(_:count:)(v106, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v104, MEMORY[0x277D84B78]);
    }

    v100 = *(v231 + 1136);
    v101 = *(v231 + 1128);
    v98 = *(v231 + 1120);
    v99 = *(v231 + 1112);
    v96 = *(v231 + 1032);
    v97 = *(v231 + 976);
    MEMORY[0x277D82BD8](v114);
    v99(v96, v97);
    type metadata accessor for LogQuantityIntentResponse();
    v102 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](quantity);
    MEMORY[0x277D82BD8](v216);
    MEMORY[0x277D82BD8](0);
    outlined destroy of HealthKitPersistor((v231 + 520));
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    v150 = v102;
    goto LABEL_37;
  }

  v78 = *(v231 + 1136);
  v93 = *(v231 + 1104);
  v84 = *(v231 + 1096);
  v85 = *(v231 + 1088);
  v81 = *(v231 + 1024);
  v83 = *(v231 + 976);
  v79 = *(v231 + 968);
  v80 = *(v231 + 960);
  type metadata accessor for HKQuantitySample();
  MEMORY[0x277D82BE0](v78);
  MEMORY[0x277D82BE0](quantity);
  Date.init()();
  Date.init()();
  v86 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v78, quantity, v79, v80);
  *(v231 + 1192) = v86;
  *(v231 + 592) = v86;
  v82 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v85(v81, v82, v83);
  swift_endAccess();
  MEMORY[0x277D82BE0](v86);
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();
  v89 = swift_allocObject();
  *(v89 + 16) = 64;
  v90 = swift_allocObject();
  *(v90 + 16) = 8;
  v88 = swift_allocObject();
  *(v88 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v88 + 24) = v87;
  v91 = swift_allocObject();
  *(v91 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v91 + 24) = v88;
  _allocateUninitializedArray<A>(_:)();
  v92 = v11;

  *v92 = partial apply for closure #1 in OSLogArguments.append(_:);
  v92[1] = v89;

  v92[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v92[3] = v90;

  v92[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v92[5] = v91;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v94, v95))
  {
    v75 = static UnsafeMutablePointer.allocate(capacity:)();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v76 = createStorage<A>(capacity:type:)(1);
    v77 = createStorage<A>(capacity:type:)(0);
    v234 = v75;
    v235 = v76;
    v236 = v77;
    serialize(_:at:)(2, &v234);
    serialize(_:at:)(1, &v234);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v89;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    _os_log_impl(&dword_269912000, v94, v95, "Created HKQuantitySample: %@", v75, 0xCu);
    destroyStorage<A>(_:count:)(v76, 1, v74);
    destroyStorage<A>(_:count:)(v77, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v75, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v64 = *(v231 + 1120);
  v65 = *(v231 + 1112);
  v70 = *(v231 + 1104);
  v68 = *(v231 + 1096);
  v69 = *(v231 + 1088);
  v63 = *(v231 + 1024);
  v12 = *(v231 + 1016);
  v67 = *(v231 + 976);
  MEMORY[0x277D82BD8](v94);
  v65(v63, v67);
  v66 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v69(v12, v66, v67);
  swift_endAccess();
  v72 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v73 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v72, v71))
  {
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v60 = createStorage<A>(capacity:type:)(0);
    v61 = createStorage<A>(capacity:type:)(0);
    *(v231 + 680) = v59;
    *(v231 + 688) = v60;
    *(v231 + 696) = v61;
    serialize(_:at:)(0, (v231 + 680));
    serialize(_:at:)(0, (v231 + 680));
    *(v231 + 704) = v73;
    v62 = swift_task_alloc();
    v62[2] = v231 + 680;
    v62[3] = v231 + 688;
    v62[4] = v231 + 696;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v72, v71, "Trying to save to store.", v59, 2u);
    destroyStorage<A>(_:count:)(v60, 0, v58);
    destroyStorage<A>(_:count:)(v61, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v59, MEMORY[0x277D84B78]);
  }

  *(v231 + 1200) = 0;
  v54 = *(v231 + 1120);
  v55 = *(v231 + 1112);
  v52 = *(v231 + 1016);
  v53 = *(v231 + 976);
  v57 = *(v231 + 912);
  MEMORY[0x277D82BD8](v72);
  v55(v52, v53);
  MEMORY[0x277D82BE0](v57);
  *(v231 + 16) = *(v231 + 480);
  *(v231 + 56) = v151;
  *(v231 + 24) = HealthKitPersistor.save(quantityIdentifier:value:units:);
  v56 = swift_continuation_init();
  *(v231 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v231 + 112) = v56;
  *(v231 + 80) = MEMORY[0x277D85DD0];
  *(v231 + 88) = 1107296256;
  *(v231 + 92) = 0;
  *(v231 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v231 + 104) = &block_descriptor;
  [v57 saveObject:v86 withCompletion:?];

  return MEMORY[0x282200938](v231 + 16);
}

{
  v60 = v0;
  v1 = v0[151];
  v52 = v0[138];
  v44 = v0[137];
  v45 = v0[136];
  v40 = v0[124];
  v43 = v0[122];
  v41 = v0[114];
  v0[60] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v41);
  v2 = v1;
  v0[75] = v1;
  v42 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v45(v40, v42, v43);
  swift_endAccess();
  v3 = v1;
  v46 = swift_allocObject();
  *(v46 + 16) = v1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v47 + 24) = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v50 + 24) = v47;
  _allocateUninitializedArray<A>(_:)();
  v51 = v4;

  *v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[1] = v48;

  v51[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[3] = v49;

  v51[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[5] = v50;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v53, v54))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0);
    v38 = createStorage<A>(capacity:type:)(1);
    v55 = buf;
    v56 = v37;
    v57 = v38;
    serialize(_:at:)(2, &v55);
    serialize(_:at:)(1, &v55);
    v58 = partial apply for closure #1 in OSLogArguments.append(_:);
    v59 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    v58 = partial apply for closure #1 in OSLogArguments.append(_:);
    v59 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    v58 = partial apply for closure #1 in OSLogArguments.append(_:);
    v59 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v58, &v55, &v56, &v57);
    _os_log_impl(&dword_269912000, v53, v54, "Failed to persist sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v37, 0, v35);
    destroyStorage<A>(_:count:)(v38, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v39[151];
  v14 = v39[149];
  v15 = v39[148];
  v17 = v39[146];
  v18 = v39[142];
  v19 = v39[141];
  v11 = v39[140];
  v12 = v39[139];
  v9 = v39[124];
  v10 = v39[122];
  v16 = v39[147];
  MEMORY[0x277D82BD8](v53);
  v12(v9, v10);
  type metadata accessor for LogQuantityIntentResponse();
  v34 = LogQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  outlined destroy of HealthKitPersistor(v39 + 65);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v5 = v39[135];
  v20 = v39[134];
  v21 = v39[133];
  v22 = v39[132];
  v23 = v39[131];
  v24 = v39[130];
  v25 = v39[129];
  v26 = v39[128];
  v27 = v39[127];
  v28 = v39[126];
  v29 = v39[125];
  v30 = v39[124];
  v31 = v39[121];
  v32 = v39[120];
  v33 = v39[117];

  v6 = *(v39[60] + 8);
  v7 = v39[60];

  return v6(v34);
}

uint64_t HealthKitPersistor.save(quantityIdentifier:value:units:)(uint64_t a1)
{
  v11 = *v2;
  v9 = *v2 + 16;
  v10 = v11 + 60;
  v4 = *(*v2 + 1144);
  v11[60] = *v2;
  v11[144] = a1;
  v11[145] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  else
  {

    v5 = *v10;
    v6 = HealthKitPersistor.save(quantityIdentifier:value:units:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

id @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(uint64_t a1, double a2)
{
  v4 = [swift_getObjCClassFromMetadata() quantityWithUnit:a1 doubleValue:a2];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = Date._bridgeToObjectiveC()().super.isa;
  v13 = [swift_getObjCClassFromMetadata() quantitySampleWithType:a1 quantity:a2 startDate:isa endDate:v5];
  MEMORY[0x277D82BD8](v5);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(a4);
  MEMORY[0x277D82BD8](isa);
  (v10)(a3, v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v13;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error(uint64_t a1, int a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v10, v6, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      _diagnoseUnexpectedNilOptional(_filenameStart:_filenameLength:_filenameIsASCII:_line:_isImplicitUnwrap:)("", 0, 1, 0, 1);
      __break(1u);
    }

    v4 = v5;
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v10, v5, MEMORY[0x277D84F78] + 8);
  }

  return MEMORY[0x277D82BD8](a3);
}

uint64_t implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return HealthKitPersistor.isLoggingAuthorized(for:)(a1, v6);
}

uint64_t protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = v6;
  *(v6 + 16) = v6;
  v14 = *v5;
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return HealthKitPersistor.save(quantityIdentifier:value:units:)(a1, a2, a3, a4, v14, a5);
}

uint64_t protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x26D6497C0](v3, a3);
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v8 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v8();
}

uint64_t _sIeghH_IeAgH_TRTQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v9 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return v9();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_299Tu;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TATu;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  outlined init with copy of TaskPriority?(v5, v16 - v55);
  v57 = type metadata accessor for TaskPriority();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    outlined destroy of TaskPriority?(v56);
    v44 = 0;
  }

  else
  {
    v43 = TaskPriority.rawValue.getter();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = String.utf8CString.getter();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    outlined destroy of TaskPriority?(v54);

    return v16[0];
  }

  else
  {

    outlined destroy of TaskPriority?(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26992A7CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a4();
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v9);
    *v5 = v9;
    result = MEMORY[0x277D82BD8](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x277D82BD8](v9);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26992A99C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992A9E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #4 in LogQuantityIntentHandler.handle(intent:)();
  return result;
}

uint64_t sub_26992AAB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_26992AB9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_26992AC54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992ACEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992AD2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992AD6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992AE04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992AE44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992AE84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992AF64()
{
  v3 = *(type metadata accessor for Date() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #10 in LogQuantityIntentHandler.handle(intent:)(v3, a1);
}

uint64_t sub_26992B0A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for Date();
  v1 = lazy protocol witness table accessor for type Date and conformance Date();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date and conformance Date);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26992B1C0()
{
  v3 = *(type metadata accessor for Date() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_26992B28C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992B324()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992B364()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v20 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x26D649340](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_26992CFDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_26992D094()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D178()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D210()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D250()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D2E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D328()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D368()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogQuantityIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in LogQuantityIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKUnit()
{
  v2 = lazy cache variable for type metadata for HKUnit;
  if (!lazy cache variable for type metadata for HKUnit)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUnit);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKQuantityType()
{
  v2 = lazy cache variable for type metadata for HKQuantityType;
  if (!lazy cache variable for type metadata for HKQuantityType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantityType);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKQuantity()
{
  v2 = lazy cache variable for type metadata for HKQuantity;
  if (!lazy cache variable for type metadata for HKQuantity)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantity);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26992D810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKQuantitySample()
{
  v2 = lazy cache variable for type metadata for HKQuantitySample;
  if (!lazy cache variable for type metadata for HKQuantitySample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKQuantitySample);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26992D994()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992D9D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_26992DB58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992DB98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKUnit] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo6HKUnitCGMd, &_sSaySo6HKUnitCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUnit] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKUnit and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKUnit and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKUnit and conformance NSObject)
  {
    type metadata accessor for HKUnit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKUnit and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26992DDC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992DE08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992DEA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992DEE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26992DFA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v8, v5, v6);
}

uint64_t sub_26992E0E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v6, v7, v8);
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B");
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_26992E3FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v6);
}

uint64_t sub_26992E524()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type String? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type String? and conformance A?;
  if (!lazy protocol witness table cache variable for type String? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of String.UTF8View(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

id GetAmbiguousDistanceIntentHandler.init(provider:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  outlined init with copy of QuantityPersisting(a1, v7);
  outlined init with take of QuantityPersisting(v7, &v1[OBJC_IVAR____TtC19SiriWellnessIntents33GetAmbiguousDistanceIntentHandler_provider]);
  v6.receiver = v9;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

uint64_t GetAmbiguousDistanceIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[16] = v1;
  v2[15] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v3 = type metadata accessor for Date();
  v2[17] = v3;
  v7 = *(v3 - 8);
  v2[18] = v7;
  v4 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[13] = a1;
  v2[14] = v1;
  v5 = v2[12];

  return MEMORY[0x2822009F8](GetAmbiguousDistanceIntentHandler.handle(intent:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 184);
  v7 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  *(v8 + 96) = *v1;
  *(v8 + 192) = a1;

  outlined destroy of Date?(v6);
  outlined destroy of Date?(v7);
  v4 = *(v8 + 96);

  return MEMORY[0x2822009F8](GetAmbiguousDistanceIntentHandler.handle(intent:), 0);
}

uint64_t GetAmbiguousDistanceIntentHandler.handle(intent:)()
{
  v1 = v0[16];
  v0[12] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents33GetAmbiguousDistanceIntentHandler_provider, (v0 + 2));
  v9 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v7 = *(v5 + 8);
  v8 = (*(v7 + 8) + **(v7 + 8));
  v2 = *(*(v7 + 8) + 4);
  v3 = swift_task_alloc();
  *(v6 + 176) = v3;
  *v3 = *(v6 + 96);
  v3[1] = GetAmbiguousDistanceIntentHandler.handle(intent:);

  return v8(v9, v7);
}

{
  v27 = *(v0 + 200);
  *(v0 + 96) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v27)
  {
    v24 = *(v26 + 120);
    outlined init with copy of QuantityPersisting(*(v26 + 128) + OBJC_IVAR____TtC19SiriWellnessIntents33GetAmbiguousDistanceIntentHandler_provider, v26 + 56);
    v22 = *(v26 + 80);
    v23 = *(v26 + 88);
    __swift_project_boxed_opaque_existential_1((v26 + 56), v22);
    v25 = [v24 startDate];
    if (v25)
    {
      v21 = *(v26 + 168);
      v19 = *(v26 + 152);
      v20 = *(v26 + 136);
      v18 = *(v26 + 144);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v18 + 32))(v21, v19, v20);
      (*(v18 + 56))(v21, 0, 1, v20);
      MEMORY[0x277D82BD8](v25);
    }

    else
    {
      (*(*(v26 + 144) + 56))(*(v26 + 168), 1, 1, *(v26 + 136));
    }

    v17 = [*(v26 + 120) endDate];
    if (v17)
    {
      v16 = *(v26 + 160);
      v14 = *(v26 + 152);
      v15 = *(v26 + 136);
      v13 = *(v26 + 144);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v13 + 32))(v16, v14, v15);
      (*(v13 + 56))(v16, 0, 1, v15);
      MEMORY[0x277D82BD8](v17);
    }

    else
    {
      (*(*(v26 + 144) + 56))(*(v26 + 160), 1, 1, *(v26 + 136));
    }

    v12 = (*(v23 + 16) + **(v23 + 16));
    v1 = *(*(v23 + 16) + 4);
    v2 = swift_task_alloc();
    *(v26 + 184) = v2;
    *v2 = *(v26 + 96);
    v2[1] = GetAmbiguousDistanceIntentHandler.handle(intent:);
    v3 = *(v26 + 168);
    v4 = *(v26 + 160);

    return v12(v3, v4, v22, v23);
  }

  else
  {
    type metadata accessor for GetAmbiguousDistanceIntentResponse();
    v11 = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    v6 = *(v26 + 168);
    v9 = *(v26 + 160);
    v10 = *(v26 + 152);

    v7 = *(*(v26 + 96) + 8);
    v8 = *(v26 + 96);

    return v7(v11);
  }
}

{
  v0[12] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = v0[24];
  v1 = v0[21];
  v5 = v0[20];
  v6 = v0[19];

  v2 = *(v0[12] + 8);
  v3 = v0[12];

  return v2(v7);
}

uint64_t GetAmbiguousDistanceIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 176);
  *(v6 + 96) = *v1;
  *(v6 + 200) = a1;

  v4 = *(v6 + 96);

  return MEMORY[0x2822009F8](GetAmbiguousDistanceIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetAmbiguousDistanceIntentHandler.handle(intent:)(a1);
}

uint64_t sub_26992F3D0()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:)(v7, v5, v6);
}

id GetAmbiguousDistanceIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetHealthQuantityIntentHandler.storage.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage);
  swift_beginAccess();
  outlined init with copy of QuantityPersisting?(v3, a1);
  return swift_endAccess();
}

uint64_t *GetHealthQuantityIntentHandler.storage.setter(uint64_t *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  outlined init with copy of QuantityPersisting?(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage);
  swift_beginAccess();
  outlined assign with take of QuantityFetching?(v5, v3);
  swift_endAccess();
  return outlined destroy of QuantityPersisting?(a1);
}

uint64_t *outlined assign with take of QuantityFetching?(const void *a1, uint64_t *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

char *GetHealthQuantityIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v10[5] = a1;
  v11 = v1;
  v2 = &v1[OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = v11;
  outlined init with copy of QuantityPersisting?(a1, v10);
  v5 = &v4[OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage];
  swift_beginAccess();
  outlined assign with take of QuantityFetching?(v10, v5);
  swift_endAccess();
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v8;
}

uint64_t GetHealthQuantityIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[68] = v1;
  v2[67] = a1;
  v2[49] = v2;
  v2[50] = 0;
  v2[51] = 0;
  v2[47] = 0;
  v2[48] = 0;
  v2[56] = 0;
  v2[59] = 0;
  v2[66] = 0;
  v3 = type metadata accessor for Date();
  v2[69] = v3;
  v8 = *(v3 - 8);
  v2[70] = v8;
  v4 = *(v8 + 64) + 15;
  v2[71] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[74] = v5;
  v10 = *(v5 - 8);
  v2[75] = v10;
  v11 = *(v10 + 64);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[50] = a1;
  v2[51] = v1;
  v6 = v2[49];

  return MEMORY[0x2822009F8](GetHealthQuantityIntentHandler.handle(intent:), 0);
}

{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 49;
  v4 = *(*v2 + 760);
  v12[49] = *v2;
  v12[96] = a1;
  v12[97] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = GetHealthQuantityIntentHandler.handle(intent:);
  }

  else
  {
    v9 = *(v10 + 568);
    outlined destroy of Date?(*(v10 + 560));
    outlined destroy of Date?(v9);
    v5 = *v11;
    v6 = GetHealthQuantityIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t GetHealthQuantityIntentHandler.handle(intent:)()
{
  v111 = v0;
  v1 = *(v0 + 536);
  *(v0 + 392) = v0;
  v100 = [v1 quantityIdentifier];
  if (v100)
  {
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v2;
    MEMORY[0x277D82BD8](v100);
    v97 = v95;
    v98 = v96;
  }

  else
  {
    v97 = 0;
    v98 = 0;
  }

  *(v99 + 688) = v98;
  *(v99 + 680) = v97;
  if (v98)
  {
    v3 = *(v99 + 544);
    *(v99 + 376) = v97;
    *(v99 + 384) = v98;
    v94 = (v3 + OBJC_IVAR____TtC19SiriWellnessIntents30GetHealthQuantityIntentHandler_storage);
    swift_beginAccess();
    outlined init with copy of QuantityPersisting?(v94, (v99 + 96));
    swift_endAccess();

    if (*(v99 + 120))
    {
      outlined init with take of QuantityPersisting((v99 + 96), (v99 + 56));
    }

    else
    {

      v90 = HealthKitFetcher.init(identifier:)(v97, v98);
      v91 = v4;
      v92 = v5;
      v93 = v6;
      if (v90)
      {
        *(v99 + 80) = &type metadata for HealthKitFetcher;
        *(v99 + 88) = &protocol witness table for HealthKitFetcher;
        v7 = swift_allocObject();
        *(v99 + 56) = v7;
        v7[2] = v90;
        v7[3] = v91;
        v7[4] = v92;
        v7[5] = v93;
      }

      else
      {
        *(v99 + 56) = 0;
        *(v99 + 64) = 0;
        *(v99 + 72) = 0;
        *(v99 + 80) = 0;
        *(v99 + 88) = 0;
      }

      if (*(v99 + 120))
      {
        outlined destroy of QuantityPersisting?((v99 + 96));
      }
    }

    if (*(v99 + 80))
    {
      v8 = *(v99 + 672);
      v81 = *(v99 + 592);
      v79 = *(v99 + 600);
      outlined init with take of QuantityPersisting((v99 + 56), (v99 + 16));
      v80 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v9 = *(v79 + 16);
      *(v99 + 696) = v9;
      *(v99 + 704) = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v8, v80, v81);
      swift_endAccess();

      v82 = swift_allocObject();
      *(v82 + 16) = v97;
      *(v82 + 24) = v98;
      oslog = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = 32;
      v85 = swift_allocObject();
      *(v85 + 16) = 8;
      v83 = swift_allocObject();
      *(v83 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
      *(v83 + 24) = v82;
      v86 = swift_allocObject();
      *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v86 + 24) = v83;
      *(v99 + 712) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v87 = v10;

      *v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87[1] = v84;

      v87[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v87[3] = v85;

      v87[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v87[5] = v86;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v89))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v77 = createStorage<A>(capacity:type:)(0);
        v78 = createStorage<A>(capacity:type:)(1);
        v106 = buf;
        v107 = v77;
        v108 = v78;
        serialize(_:at:)(2, &v106);
        serialize(_:at:)(1, &v106);
        v109 = partial apply for closure #1 in OSLogArguments.append(_:);
        v110 = v84;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
        v109 = partial apply for closure #1 in OSLogArguments.append(_:);
        v110 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
        v109 = partial apply for closure #1 in OSLogArguments.append(_:);
        v110 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v106, &v107, &v108);
        _os_log_impl(&dword_269912000, oslog, v89, "Checking authorization for %s...", buf, 0xCu);
        destroyStorage<A>(_:count:)(v77, 0, v75);
        destroyStorage<A>(_:count:)(v78, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      *(v99 + 720) = 0;
      v68 = *(v99 + 672);
      v69 = *(v99 + 592);
      v67 = *(v99 + 600);
      MEMORY[0x277D82BD8](oslog);
      v11 = *(v67 + 8);
      *(v99 + 728) = v11;
      *(v99 + 736) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11(v68, v69);
      v72 = *(v99 + 40);
      v73 = *(v99 + 48);
      __swift_project_boxed_opaque_existential_1((v99 + 16), v72);
      v70 = _allocateUninitializedArray<A>(_:)();
      v71 = v12;

      *v71 = v97;
      v71[1] = v98;
      _finalizeUninitializedArray<A>(_:)();
      *(v99 + 744) = v70;
      v74 = (*(v73 + 8) + **(v73 + 8));
      v13 = *(*(v73 + 8) + 4);
      v14 = swift_task_alloc();
      *(v99 + 752) = v14;
      *v14 = *(v99 + 392);
      v14[1] = GetHealthQuantityIntentHandler.handle(intent:);

      return v74(v70, v72, v73);
    }

    v16 = *(v99 + 640);
    v58 = *(v99 + 592);
    v56 = *(v99 + 600);
    outlined destroy of QuantityPersisting?((v99 + 56));
    v57 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v56 + 16))(v16, v57, v58);
    swift_endAccess();

    v59 = swift_allocObject();
    *(v59 + 16) = v97;
    *(v59 + 24) = v98;
    log = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v60 + 24) = v59;
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v63 + 24) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v64 = v17;

    *v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v64[1] = v61;

    v64[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v64[3] = v62;

    v64[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v64[5] = v63;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v66))
    {
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(0);
      v55 = createStorage<A>(capacity:type:)(1);
      v101 = v53;
      v102 = v54;
      v103 = v55;
      serialize(_:at:)(2, &v101);
      serialize(_:at:)(1, &v101);
      v104 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v104, &v101, &v102, &v103);
      v104 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v104, &v101, &v102, &v103);
      v104 = partial apply for closure #1 in OSLogArguments.append(_:);
      v105 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v104, &v101, &v102, &v103);
      _os_log_impl(&dword_269912000, log, v66, "Could not correctly create storage wrapper because of incorrect HealthKit idnetifier: %s", v53, 0xCu);
      destroyStorage<A>(_:count:)(v54, 0, v52);
      destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v48 = *(v99 + 640);
    v49 = *(v99 + 592);
    v47 = *(v99 + 600);
    MEMORY[0x277D82BD8](log);
    (*(v47 + 8))(v48, v49);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v50 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v51 = v50;
  }

  else
  {
    v18 = *(v99 + 632);
    v43 = *(v99 + 592);
    v41 = *(v99 + 600);
    v42 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v41 + 16))(v18, v42, v43);
    swift_endAccess();
    v45 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v46 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v45, v44))
    {
      v37 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = createStorage<A>(capacity:type:)(0);
      v39 = createStorage<A>(capacity:type:)(0);
      *(v99 + 416) = v37;
      *(v99 + 424) = v38;
      *(v99 + 432) = v39;
      serialize(_:at:)(0, (v99 + 416));
      serialize(_:at:)(0, (v99 + 416));
      *(v99 + 440) = v46;
      v40 = swift_task_alloc();
      v40[2] = v99 + 416;
      v40[3] = v99 + 424;
      v40[4] = v99 + 432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v45, v44, "Need to specify HealthKitQuantityIdentifier in your intent.", v37, 2u);
      destroyStorage<A>(_:count:)(v38, 0, v36);
      destroyStorage<A>(_:count:)(v39, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v37, MEMORY[0x277D84B78]);
    }

    v34 = *(v99 + 632);
    v35 = *(v99 + 592);
    v33 = *(v99 + 600);
    MEMORY[0x277D82BD8](v45);
    (*(v33 + 8))(v34, v35);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v51 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  }

  v19 = *(v99 + 672);
  v22 = *(v99 + 664);
  v23 = *(v99 + 656);
  v24 = *(v99 + 648);
  v25 = *(v99 + 640);
  v26 = *(v99 + 632);
  v27 = *(v99 + 624);
  v28 = *(v99 + 616);
  v29 = *(v99 + 608);
  v30 = *(v99 + 584);
  v31 = *(v99 + 576);
  v32 = *(v99 + 568);

  v20 = *(*(v99 + 392) + 8);
  v21 = *(v99 + 392);

  return v20(v51);
}

{
  v100 = v0;
  v1 = *(v0 + 784);
  *(v0 + 392) = v0;
  if (v1)
  {
    v86 = *(v89 + 712);
    v76 = *(v89 + 704);
    v77 = *(v89 + 696);
    v78 = *(v89 + 680);
    v2 = *(v89 + 664);
    v75 = *(v89 + 592);
    v79 = *(v89 + 688);
    v74 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v77(v2, v74, v75);
    swift_endAccess();

    v80 = swift_allocObject();
    *(v80 + 16) = v78;
    *(v80 + 24) = v79;
    oslog = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    v82 = swift_allocObject();
    *(v82 + 16) = 32;
    v83 = swift_allocObject();
    *(v83 + 16) = 8;
    v81 = swift_allocObject();
    *(v81 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v81 + 24) = v80;
    v84 = swift_allocObject();
    *(v84 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v84 + 24) = v81;
    _allocateUninitializedArray<A>(_:)();
    v85 = v3;

    *v85 = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[1] = v82;

    v85[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[3] = v83;

    v85[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[5] = v84;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v88))
    {
      v4 = *(v89 + 720);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v72 = createStorage<A>(capacity:type:)(0);
      v73 = createStorage<A>(capacity:type:)(1);
      v95 = buf;
      v96 = v72;
      v97 = v73;
      serialize(_:at:)(2, &v95);
      serialize(_:at:)(1, &v95);
      v98 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v95, &v96, &v97);
      if (v4)
      {
      }

      v98 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v95, &v96, &v97);
      v98 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v95, &v96, &v97);
      _os_log_impl(&dword_269912000, oslog, v88, "Authorization check successful for %s!", buf, 0xCu);
      destroyStorage<A>(_:count:)(v72, 0, v70);
      destroyStorage<A>(_:count:)(v73, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v64 = *(v89 + 736);
    v65 = *(v89 + 728);
    v62 = *(v89 + 664);
    v63 = *(v89 + 592);
    v68 = *(v89 + 536);
    MEMORY[0x277D82BD8](oslog);
    v65(v62, v63);
    v66 = *(v89 + 40);
    v67 = *(v89 + 48);
    __swift_project_boxed_opaque_existential_1((v89 + 16), v66);
    v69 = [v68 start];
    if (v69)
    {
      v61 = *(v89 + 584);
      v59 = *(v89 + 568);
      v60 = *(v89 + 552);
      v58 = *(v89 + 560);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v58 + 32))(v61, v59, v60);
      (*(v58 + 56))(v61, 0, 1, v60);
      MEMORY[0x277D82BD8](v69);
    }

    else
    {
      (*(*(v89 + 560) + 56))(*(v89 + 584), 1, 1, *(v89 + 552));
    }

    v57 = [*(v89 + 536) end];
    if (v57)
    {
      v56 = *(v89 + 576);
      v54 = *(v89 + 568);
      v55 = *(v89 + 552);
      v53 = *(v89 + 560);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v53 + 32))(v56, v54, v55);
      (*(v53 + 56))(v56, 0, 1, v55);
      MEMORY[0x277D82BD8](v57);
    }

    else
    {
      (*(*(v89 + 560) + 56))(*(v89 + 576), 1, 1, *(v89 + 552));
    }

    v52 = (*(v67 + 16) + **(v67 + 16));
    v6 = *(*(v67 + 16) + 4);
    v7 = swift_task_alloc();
    *(v89 + 760) = v7;
    *v7 = *(v89 + 392);
    v7[1] = GetHealthQuantityIntentHandler.handle(intent:);
    v8 = *(v89 + 584);
    v9 = *(v89 + 576);

    return v52(v8, v9, v66, v67);
  }

  else
  {
    v49 = *(v89 + 712);
    v39 = *(v89 + 704);
    v40 = *(v89 + 696);
    v41 = *(v89 + 680);
    v10 = *(v89 + 648);
    v38 = *(v89 + 592);
    v42 = *(v89 + 688);
    v37 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v40(v10, v37, v38);
    swift_endAccess();

    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    log = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v44 + 24) = v43;
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v47 + 24) = v44;
    _allocateUninitializedArray<A>(_:)();
    v48 = v11;

    *v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[1] = v45;

    v48[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[3] = v46;

    v48[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[5] = v47;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v51))
    {
      v12 = *(v89 + 720);
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = createStorage<A>(capacity:type:)(0);
      v36 = createStorage<A>(capacity:type:)(1);
      v90 = v34;
      v91 = v35;
      v92 = v36;
      serialize(_:at:)(2, &v90);
      serialize(_:at:)(1, &v90);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      if (v12)
      {
      }

      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_269912000, log, v51, "Not authorized to read: %s", v34, 0xCu);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v34, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v18 = *(v89 + 736);
    v19 = *(v89 + 728);
    v16 = *(v89 + 648);
    v17 = *(v89 + 592);
    v20 = *(v89 + 688);
    MEMORY[0x277D82BD8](log);
    v19(v16, v17);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v32 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    __swift_destroy_boxed_opaque_existential_1((v89 + 16));

    v13 = *(v89 + 672);
    v21 = *(v89 + 664);
    v22 = *(v89 + 656);
    v23 = *(v89 + 648);
    v24 = *(v89 + 640);
    v25 = *(v89 + 632);
    v26 = *(v89 + 624);
    v27 = *(v89 + 616);
    v28 = *(v89 + 608);
    v29 = *(v89 + 584);
    v30 = *(v89 + 576);
    v31 = *(v89 + 568);

    v14 = *(*(v89 + 392) + 8);
    v15 = *(v89 + 392);

    return v14(v32);
  }
}

{
  v49 = v0;
  v34 = v0[96];
  v41 = v0[89];
  v32 = v0[88];
  v33 = v0[87];
  v1 = v0[82];
  v31 = v0[74];
  v0[49] = v0;
  v0[66] = v34;
  v30 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v33(v1, v30, v31);
  swift_endAccess();
  MEMORY[0x277D82BE0](v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  oslog = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 64;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v39 + 24) = v36;
  _allocateUninitializedArray<A>(_:)();
  v40 = v2;

  *v40 = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[1] = v37;

  v40[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[3] = v38;

  v40[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[5] = v39;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v43))
  {
    v3 = v29[97];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = createStorage<A>(capacity:type:)(1);
    v28 = createStorage<A>(capacity:type:)(0);
    v44 = buf;
    v45 = v27;
    v46 = v28;
    serialize(_:at:)(2, &v44);
    serialize(_:at:)(1, &v44);
    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    if (v3)
    {
    }

    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_269912000, oslog, v43, "Response from querying storage: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v27, 1, v25);
    destroyStorage<A>(_:count:)(v28, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v29[92];
  v11 = v29[91];
  v8 = v29[82];
  v9 = v29[74];
  v12 = v29[86];
  MEMORY[0x277D82BD8](oslog);
  v11(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v29 + 2);

  v24 = v29[96];
  v5 = v29[84];
  v13 = v29[83];
  v14 = v29[82];
  v15 = v29[81];
  v16 = v29[80];
  v17 = v29[79];
  v18 = v29[78];
  v19 = v29[77];
  v20 = v29[76];
  v21 = v29[73];
  v22 = v29[72];
  v23 = v29[71];

  v6 = *(v29[49] + 8);
  v7 = v29[49];

  return v6(v24);
}

{
  v110 = v0;
  v99 = v0[97];
  v98 = v0[73];
  v1 = v0[72];
  v0[49] = v0;
  outlined destroy of Date?(v1);
  outlined destroy of Date?(v98);
  v2 = v99;
  v0[56] = v99;
  v3 = v99;
  v0[57] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for HKErrorCode();
  if (swift_dynamicCast())
  {
    v84 = *(v97 + 464);
  }

  else
  {
    v84 = 0;
  }

  if (v84)
  {
    *(v97 + 472) = v84;
    *(v97 + 480) = v84;
    lazy protocol witness table accessor for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode();
    _BridgedStoredNSError.code.getter();
    if (*(v97 + 488) == 6)
    {
      v80 = *(v97 + 712);
      v78 = *(v97 + 704);
      v79 = *(v97 + 696);
      v8 = *(v97 + 624);
      v77 = *(v97 + 592);
      v76 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v79(v8, v76, v77);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      v83 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v81))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v73 = createStorage<A>(capacity:type:)(0);
        v74 = createStorage<A>(capacity:type:)(0);
        *(v97 + 496) = buf;
        *(v97 + 504) = v73;
        *(v97 + 512) = v74;
        serialize(_:at:)(0, (v97 + 496));
        serialize(_:at:)(0, (v97 + 496));
        *(v97 + 520) = v83;
        v75 = swift_task_alloc();
        v75[2] = v97 + 496;
        v75[3] = v97 + 504;
        v75[4] = v97 + 512;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, oslog, v81, "HealthKit database was inaccessible", buf, 2u);
        destroyStorage<A>(_:count:)(v73, 0, v71);
        destroyStorage<A>(_:count:)(v74, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      v68 = *(v97 + 776);
      v66 = *(v97 + 736);
      v67 = *(v97 + 728);
      v64 = *(v97 + 624);
      v65 = *(v97 + 592);
      v69 = *(v97 + 688);
      MEMORY[0x277D82BD8](oslog);
      v67(v64, v65);
      type metadata accessor for GetHealthQuantityIntentResponse();
      v70 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(103, 0);
      MEMORY[0x277D82BD8](v84);

      __swift_destroy_boxed_opaque_existential_1((v97 + 16));

      v85 = v70;
    }

    else
    {
      v61 = *(v97 + 712);
      v52 = *(v97 + 704);
      v53 = *(v97 + 696);
      v9 = *(v97 + 616);
      v51 = *(v97 + 592);
      v50 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v53(v9, v50, v51);
      swift_endAccess();
      MEMORY[0x277D82BE0](v84);
      v54 = swift_allocObject();
      *(v54 + 16) = v84;
      default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

      log = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      v57 = swift_allocObject();
      *(v57 + 16) = 64;
      v58 = swift_allocObject();
      *(v58 + 16) = 8;
      v55 = swift_allocObject();
      *(v55 + 16) = partial apply for implicit closure #7 in GetHealthQuantityIntentHandler.handle(intent:);
      *(v55 + 24) = v54;
      v56 = swift_allocObject();
      *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
      *(v56 + 24) = v55;
      v59 = swift_allocObject();
      *(v59 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v59 + 24) = v56;
      _allocateUninitializedArray<A>(_:)();
      v60 = v10;

      *v60 = partial apply for closure #1 in OSLogArguments.append(_:);
      v60[1] = v57;

      v60[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v60[3] = v58;

      v60[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v60[5] = v59;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v63))
      {
        v47 = static UnsafeMutablePointer.allocate(capacity:)();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v48 = createStorage<A>(capacity:type:)(1);
        v49 = createStorage<A>(capacity:type:)(0);
        v105 = v47;
        v106 = v48;
        v107 = v49;
        serialize(_:at:)(2, &v105);
        serialize(_:at:)(1, &v105);
        v108 = partial apply for closure #1 in OSLogArguments.append(_:);
        v109 = v57;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v105, &v106, &v107);
        v108 = partial apply for closure #1 in OSLogArguments.append(_:);
        v109 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v105, &v106, &v107);
        v108 = partial apply for closure #1 in OSLogArguments.append(_:);
        v109 = v59;
        closure #1 in osLogInternal(_:log:type:)(&v108, &v105, &v106, &v107);
        _os_log_impl(&dword_269912000, log, v63, "HealthKit threw an error: %@", v47, 0xCu);
        destroyStorage<A>(_:count:)(v48, 1, v46);
        destroyStorage<A>(_:count:)(v49, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v47, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v43 = *(v97 + 776);
      v41 = *(v97 + 736);
      v42 = *(v97 + 728);
      v39 = *(v97 + 616);
      v40 = *(v97 + 592);
      v44 = *(v97 + 688);
      MEMORY[0x277D82BD8](log);
      v42(v39, v40);
      type metadata accessor for GetHealthQuantityIntentResponse();
      v45 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      MEMORY[0x277D82BD8](v84);

      __swift_destroy_boxed_opaque_existential_1((v97 + 16));

      v85 = v45;
    }
  }

  else
  {
    v29 = *(v97 + 776);
    v36 = *(v97 + 712);
    v27 = *(v97 + 704);
    v28 = *(v97 + 696);
    v11 = *(v97 + 608);
    v26 = *(v97 + 592);
    v25 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v28(v11, v25, v26);
    swift_endAccess();
    v12 = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
    *(v31 + 24) = v30;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v34 + 24) = v31;
    _allocateUninitializedArray<A>(_:)();
    v35 = v13;

    *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v32;

    v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[3] = v33;

    v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[5] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v37, v38))
    {
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0);
      v24 = createStorage<A>(capacity:type:)(1);
      v100 = v22;
      v101 = v23;
      v102 = v24;
      serialize(_:at:)(2, &v100);
      serialize(_:at:)(1, &v100);
      v103 = partial apply for closure #1 in OSLogArguments.append(_:);
      v104 = v32;
      closure #1 in osLogInternal(_:log:type:)(&v103, &v100, &v101, &v102);
      v103 = partial apply for closure #1 in OSLogArguments.append(_:);
      v104 = v33;
      closure #1 in osLogInternal(_:log:type:)(&v103, &v100, &v101, &v102);
      v103 = partial apply for closure #1 in OSLogArguments.append(_:);
      v104 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v103, &v100, &v101, &v102);
      _os_log_impl(&dword_269912000, v37, v38, "Something went wrong while fetching data: %s", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v22, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v18 = *(v97 + 776);
    v16 = *(v97 + 736);
    v17 = *(v97 + 728);
    v14 = *(v97 + 608);
    v15 = *(v97 + 592);
    v19 = *(v97 + 688);
    MEMORY[0x277D82BD8](v37);
    v17(v14, v15);
    type metadata accessor for GetHealthQuantityIntentResponse();
    v20 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    __swift_destroy_boxed_opaque_existential_1((v97 + 16));

    v85 = v20;
  }

  v4 = *(v97 + 672);
  v86 = *(v97 + 664);
  v87 = *(v97 + 656);
  v88 = *(v97 + 648);
  v89 = *(v97 + 640);
  v90 = *(v97 + 632);
  v91 = *(v97 + 624);
  v92 = *(v97 + 616);
  v93 = *(v97 + 608);
  v94 = *(v97 + 584);
  v95 = *(v97 + 576);
  v96 = *(v97 + 568);

  v5 = *(*(v97 + 392) + 8);
  v6 = *(v97 + 392);

  return v5(v85);
}

uint64_t GetHealthQuantityIntentHandler.handle(intent:)(char a1)
{
  v7 = *v1;
  v3 = *(*v1 + 752);
  v6 = *(*v1 + 744);
  *(v7 + 392) = *v1;
  *(v7 + 784) = a1;

  v4 = *(v7 + 392);

  return MEMORY[0x2822009F8](GetHealthQuantityIntentHandler.handle(intent:), 0);
}

uint64_t HealthKitFetcher.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v73 = 0u;
  v74 = 0u;
  type metadata accessor for HKHealthStore();
  *&v73 = NSDateFormatter.__allocating_init()();
  type metadata accessor for HKQuantityType();
  v68 = _allocateUninitializedArray<A>(_:)();
  v69 = v2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = *MEMORY[0x277CCCC70];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC70]);
  v72 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v71);
  if (!v72)
  {
    goto LABEL_22;
  }

  *v69 = v72;
  v63 = swift_getObjCClassFromMetadata();
  v64 = *MEMORY[0x277CCC918];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC918]);
  v65 = [v63 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v64);
  if (!v65)
  {
LABEL_21:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_23;
  }

  v69[1] = v65;
  v60 = swift_getObjCClassFromMetadata();
  v61 = *MEMORY[0x277CCCB70];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB70]);
  v62 = [v60 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v61);
  if (!v62)
  {
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  v69[2] = v62;
  v57 = swift_getObjCClassFromMetadata();
  v58 = *MEMORY[0x277CCCC10];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC10]);
  v59 = [v57 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v58);
  if (!v59)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_20;
  }

  v69[3] = v59;
  v54 = swift_getObjCClassFromMetadata();
  v55 = *MEMORY[0x277CCC960];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC960]);
  v56 = [v54 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v55);
  if (!v56)
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_19;
  }

  v69[4] = v56;
  v51 = swift_getObjCClassFromMetadata();
  v52 = *MEMORY[0x277CCCB40];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB40]);
  v53 = [v51 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v52);
  if (!v53)
  {
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_18;
  }

  v69[5] = v53;
  v48 = swift_getObjCClassFromMetadata();
  v49 = *MEMORY[0x277CCC940];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC940]);
  v50 = [v48 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v49);
  if (!v50)
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_17;
  }

  v69[6] = v50;
  v45 = swift_getObjCClassFromMetadata();
  v46 = *MEMORY[0x277CCCB48];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB48]);
  v47 = [v45 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v46);
  if (!v47)
  {
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_16;
  }

  v69[7] = v47;
  v42 = swift_getObjCClassFromMetadata();
  v43 = *MEMORY[0x277CCC920];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC920]);
  v44 = [v42 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v43);
  if (!v44)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v69[8] = v44;
  v39 = swift_getObjCClassFromMetadata();
  v40 = *MEMORY[0x277CCCB10];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB10]);
  v41 = [v39 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v40);
  if (!v41)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  v69[9] = v41;
  _finalizeUninitializedArray<A>(_:)();
  *&v74 = v68;
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v3;
  v36 = swift_getObjCClassFromMetadata();
  v37 = *MEMORY[0x277CCC958];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC958]);
  v38 = [v36 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v37);
  if (!v38)
  {
LABEL_41:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_42;
  }

  v33 = v38;
LABEL_23:
  *v35 = v33;
  v30 = swift_getObjCClassFromMetadata();
  v31 = *MEMORY[0x277CCC970];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC970]);
  v32 = [v30 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v31);
  if (!v32)
  {
LABEL_40:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_41;
  }

  v35[1] = v32;
  v27 = swift_getObjCClassFromMetadata();
  v28 = *MEMORY[0x277CCC990];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC990]);
  v29 = [v27 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v28);
  if (!v29)
  {
LABEL_39:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_40;
  }

  v35[2] = v29;
  v24 = swift_getObjCClassFromMetadata();
  v25 = *MEMORY[0x277CCC9A0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC9A0]);
  v26 = [v24 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v25);
  if (!v26)
  {
LABEL_38:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_39;
  }

  v35[3] = v26;
  v21 = swift_getObjCClassFromMetadata();
  v22 = *MEMORY[0x277CCCB90];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCB90]);
  v23 = [v21 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v22);
  if (!v23)
  {
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_38;
  }

  v35[4] = v23;
  v18 = swift_getObjCClassFromMetadata();
  v19 = *MEMORY[0x277CCCBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCBA8]);
  v20 = [v18 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v19);
  if (!v20)
  {
LABEL_36:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_37;
  }

  v35[5] = v20;
  v15 = swift_getObjCClassFromMetadata();
  v16 = *MEMORY[0x277CCCBE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCBE8]);
  v17 = [v15 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v16);
  if (!v17)
  {
LABEL_35:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_36;
  }

  v35[6] = v17;
  v12 = swift_getObjCClassFromMetadata();
  v13 = *MEMORY[0x277CCCC18];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC18]);
  v14 = [v12 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v13);
  if (!v14)
  {
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_35;
  }

  v35[7] = v14;
  v9 = swift_getObjCClassFromMetadata();
  v10 = *MEMORY[0x277CCCCB8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCCB8]);
  v11 = [v9 quantityTypeForIdentifier_];
  MEMORY[0x277D82BD8](v10);
  if (!v11)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_34;
  }

  v35[8] = v11;
  _finalizeUninitializedArray<A>(_:)();
  *(&v74 + 1) = v34;

  v7 = MEMORY[0x26D6492A0](a1, a2);
  MEMORY[0x277D82BE0](v7);

  MEMORY[0x277D82BD8](v7);
  v8 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (!v8)
  {
LABEL_42:
    MEMORY[0x277D82BD8](v7);

    MEMORY[0x277D82BD8](v73);
    outlined destroy of [HKQuantityType](&v74);
    outlined destroy of [HKQuantityType](&v74 + 1);
    return 0;
  }

  MEMORY[0x277D82BE0](v8);
  MEMORY[0x277D82BE0](v8);
  *(&v73 + 1) = v8;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v7);
  v5 = v73;
  MEMORY[0x277D82BE0](v73);

  outlined destroy of HealthKitFetcher(&v73);
  return v5;
}

uint64_t implicit closure #7 in GetHealthQuantityIntentHandler.handle(intent:)(uint64_t a1)
{
  (MEMORY[0x277D82BE0])();
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetHealthQuantityIntentHandler.handle(intent:)(a1);
}

id GetHealthQuantityIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthKitFetcher.predicate(start:end:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  v34 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v34);
  v32 = &v17 - v31;
  v33 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v17 - v33;
  v46 = v9;
  v45 = v10;
  *&v43 = v11;
  *(&v43 + 1) = v12;
  *&v44 = v13;
  *(&v44 + 1) = v14;
  v35 = objc_opt_self();
  outlined init with copy of Date?(v34, v36);
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = *(v38 + 48);
  v41 = v38 + 48;
  if (v40(v36, 1) == 1)
  {
    v24 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v36, v37);
    v24 = isa;
  }

  v22 = v24;
  outlined init with copy of Date?(v26, v32);
  if ((v40)(v32, 1, v37) == 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = Date._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v32, v37);
    v21 = v20;
  }

  v18 = v21;
  v19 = [v35 predicateForSamplesWithStartDate:v22 endDate:? options:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v22);
  v42 = v19;
  MEMORY[0x277D82BE0](v28);
  MEMORY[0x277D82BE0](v19);
  v15 = type metadata accessor for HKSample();
  MEMORY[0x26D649150](v28, v19, v15);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v28);
  return MEMORY[0x277D82BD8](v19);
}

uint64_t HealthKitFetcher.isReadingAuthorized(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a2;
  *(v5 + 48) = v5;
  *(v5 + 56) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 56) = a1;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  MEMORY[0x277D82BE0](a2);
  v6 = swift_task_alloc();
  *(v8 + 72) = v6;
  *v6 = *(v8 + 48);
  v6[1] = HealthKitFetcher.isReadingAuthorized(for:);

  return isSiriAuthorizedToAccessHealthData(store:)(a2);
}

uint64_t HealthKitFetcher.isReadingAuthorized(for:)(unsigned int a1)
{
  v6 = *v1;
  v2 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(v6 + 48) = *v1;

  v3 = *(*(v6 + 48) + 8);

  return v3(a1);
}

uint64_t HealthKitFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1056) = a6;
  *(v6 + 1048) = a5;
  *(v6 + 1040) = a4;
  *(v6 + 1032) = a3;
  *(v6 + 1024) = a2;
  *(v6 + 1016) = a1;
  *(v6 + 672) = v6;
  *(v6 + 680) = 0;
  *(v6 + 688) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 696) = 0;
  *(v6 + 704) = 0;
  *(v6 + 712) = 0;
  *(v6 + 816) = 0;
  *(v6 + 824) = 0;
  *(v6 + 832) = 0;
  *(v6 + 872) = 0;
  *(v6 + 880) = 0;
  *(v6 + 888) = 0;
  *(v6 + 896) = 0;
  *(v6 + 968) = 0;
  *(v6 + 976) = 0;
  v7 = type metadata accessor for Calendar();
  *(v6 + 1064) = v7;
  v13 = *(v7 - 8);
  *(v6 + 1072) = v13;
  v8 = *(v13 + 64) + 15;
  *(v6 + 1080) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v6 + 1088) = v9;
  v14 = *(v9 - 8);
  *(v6 + 1096) = v14;
  *(v6 + 1104) = *(v14 + 64);
  *(v6 + 1112) = swift_task_alloc();
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  *(v6 + 1136) = v15;
  *(v6 + 1144) = *(v15 + 64);
  *(v6 + 1152) = swift_task_alloc();
  *(v6 + 1160) = swift_task_alloc();
  *(v6 + 1168) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 1176) = v10;
  v16 = *(v10 - 8);
  *(v6 + 1184) = v16;
  v17 = *(v16 + 64);
  *(v6 + 1192) = swift_task_alloc();
  *(v6 + 1200) = swift_task_alloc();
  *(v6 + 1208) = swift_task_alloc();
  *(v6 + 1216) = swift_task_alloc();
  *(v6 + 1224) = swift_task_alloc();
  *(v6 + 1232) = swift_task_alloc();
  *(v6 + 1240) = swift_task_alloc();
  *(v6 + 1248) = swift_task_alloc();
  *(v6 + 1256) = swift_task_alloc();
  *(v6 + 1264) = swift_task_alloc();
  *(v6 + 1272) = swift_task_alloc();
  *(v6 + 1280) = swift_task_alloc();
  *(v6 + 680) = a1;
  *(v6 + 688) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v11 = *(v6 + 672);

  return MEMORY[0x2822009F8](HealthKitFetcher.query(start:end:), 0);
}

uint64_t HealthKitFetcher.query(start:end:)()
{
  v54 = v0;
  v1 = v0[160];
  v18 = v0[148];
  v20 = v0[147];
  v30 = v0[146];
  v29 = v0[143];
  v26 = v0[142];
  v24 = v0[132];
  v23 = v0[131];
  v22 = v0[130];
  v21 = v0[129];
  v27 = v0[128];
  v25 = v0[127];
  v0[84] = v0;
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v18 + 16);
  v0[161] = v2;
  v0[162] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v19, v20);
  swift_endAccess();
  MEMORY[0x277D82BE0](v21);
  MEMORY[0x277D82BE0](v22);

  v31 = swift_allocObject();
  v31[2] = v21;
  v31[3] = v22;
  v31[4] = v23;
  v31[5] = v24;
  outlined init with copy of Date?(v25, v30);
  v28 = *(v26 + 80);
  v33 = swift_allocObject();
  outlined init with take of Date?(v30, (v33 + ((v28 + 16) & ~v28)));
  outlined init with copy of Date?(v27, v30);
  v35 = swift_allocObject();
  outlined init with take of Date?(v30, (v35 + ((v28 + 16) & ~v28)));
  oslog = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 64;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:);
  *(v32 + 24) = v31;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v39 + 24) = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #2 in HealthKitFetcher.query(start:end:);
  *(v34 + 24) = v33;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v42 + 24) = v34;
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for implicit closure #2 in HealthKitFetcher.query(start:end:);
  *(v36 + 24) = v35;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v45 + 24) = v36;
  v0[163] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v46 = v3;

  *v46 = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[1] = v37;

  v46[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[3] = v38;

  v46[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[5] = v39;

  v46[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[7] = v40;

  v46[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[9] = v41;

  v46[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[11] = v42;

  v46[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[13] = v43;

  v46[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[15] = v44;

  v46[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v46[17] = v45;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v48))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(1);
    v16 = createStorage<A>(capacity:type:)(2);
    v49 = buf;
    v50 = v15;
    v51 = v16;
    serialize(_:at:)(2, &v49);
    serialize(_:at:)(3, &v49);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    v52 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v52, &v49, &v50, &v51);
    _os_log_impl(&dword_269912000, oslog, v48, "Executing HealthKit queries for %@ between dates %s - %s", buf, 0x20u);
    destroyStorage<A>(_:count:)(v15, 1, v13);
    destroyStorage<A>(_:count:)(v16, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v17[160];
  v10 = v17[147];
  v12 = v17[130];
  v8 = v17[148];
  MEMORY[0x277D82BD8](oslog);
  v4 = *(v8 + 8);
  v17[164] = v4;
  v17[165] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v9, v10);
  v17[166] = type metadata accessor for GetHealthQuantityIntentResponse();
  v11 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  v17[167] = v11;
  MEMORY[0x277D82BE0](v11);
  v17[87] = v11;
  MEMORY[0x277D82BE0](v12);
  v5 = swift_task_alloc();
  v17[168] = v5;
  *v5 = v17[84];
  v5[1] = HealthKitFetcher.query(start:end:);
  v6 = v17[130];

  return localizedPreferredUnitName(for:value:store:)(v6, 0, 1, 0);
}

{
  v5 = v0[171];
  v1 = v0[170];
  v7 = v0[167];
  v8 = v0[130];
  v10 = v0[129];
  v0[84] = v0;
  v6 = MEMORY[0x26D6492A0](v1);

  [v7 setUnit_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v8);
  MEMORY[0x277D82BE0](v10);
  v2 = swift_task_alloc();
  v9[172] = v2;
  *v2 = v9[84];
  v2[1] = HealthKitFetcher.query(start:end:);
  v3 = v9[130];

  return getPreferredUnit(for:store:)(v3, v10);
}

{
  v239 = v0;
  v223 = v0[173];
  v0[84] = v0;
  v222 = v0[174];
  v0[175] = v223;
  v0[88] = v223;
  MEMORY[0x277D82BE0](v223);
  if (!v223)
  {
    v80 = *(v221 + 1304);
    v68 = *(v221 + 1296);
    v69 = *(v221 + 1288);
    v33 = *(v221 + 1192);
    v67 = *(v221 + 1176);
    v73 = *(v221 + 1056);
    v72 = *(v221 + 1048);
    v71 = *(v221 + 1040);
    v70 = *(v221 + 1032);
    v66 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v69(v33, v66, v67);
    swift_endAccess();
    MEMORY[0x277D82BE0](v70);
    MEMORY[0x277D82BE0](v71);

    v74 = swift_allocObject();
    v74[2] = v70;
    v74[3] = v71;
    v74[4] = v72;
    v74[5] = v73;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    v76 = swift_allocObject();
    *(v76 + 16) = 64;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v75 = swift_allocObject();
    *(v75 + 16) = partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:);
    *(v75 + 24) = v74;
    v78 = swift_allocObject();
    *(v78 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v78 + 24) = v75;
    _allocateUninitializedArray<A>(_:)();
    v79 = v34;

    *v79 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79[1] = v76;

    v79[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v79[3] = v77;

    v79[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v79[5] = v78;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v81, v82))
    {
      v63 = static UnsafeMutablePointer.allocate(capacity:)();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v64 = createStorage<A>(capacity:type:)(1);
      v65 = createStorage<A>(capacity:type:)(0);
      v224 = v63;
      v225 = v64;
      v226 = v65;
      serialize(_:at:)(2, &v224);
      serialize(_:at:)(1, &v224);
      v227 = partial apply for closure #1 in OSLogArguments.append(_:);
      v228 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v227, &v224, &v225, &v226);
      if (v222)
      {
      }

      v227 = partial apply for closure #1 in OSLogArguments.append(_:);
      v228 = v77;
      closure #1 in osLogInternal(_:log:type:)(&v227, &v224, &v225, &v226);
      v227 = partial apply for closure #1 in OSLogArguments.append(_:);
      v228 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v227, &v224, &v225, &v226);
      _os_log_impl(&dword_269912000, v81, v82, "Failed to get units for %@", v63, 0xCu);
      destroyStorage<A>(_:count:)(v64, 1, v62);
      destroyStorage<A>(_:count:)(v65, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v63, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v35 = *(v221 + 1328);
    v59 = *(v221 + 1320);
    v60 = *(v221 + 1312);
    v57 = *(v221 + 1192);
    v58 = *(v221 + 1176);
    MEMORY[0x277D82BD8](v81);
    v60(v57, v58);
    v61 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](*(v221 + 696));
    v89 = v61;
LABEL_49:
    v36 = *(v221 + 1280);
    v39 = *(v221 + 1272);
    v40 = *(v221 + 1264);
    v41 = *(v221 + 1256);
    v42 = *(v221 + 1248);
    v43 = *(v221 + 1240);
    v44 = *(v221 + 1232);
    v45 = *(v221 + 1224);
    v46 = *(v221 + 1216);
    v47 = *(v221 + 1208);
    v48 = *(v221 + 1200);
    v49 = *(v221 + 1192);
    v50 = *(v221 + 1168);
    v51 = *(v221 + 1160);
    v52 = *(v221 + 1152);
    v53 = *(v221 + 1128);
    v54 = *(v221 + 1120);
    v55 = *(v221 + 1112);
    v56 = *(v221 + 1080);

    v37 = *(*(v221 + 672) + 8);
    v38 = *(v221 + 672);

    return v37(v89);
  }

  v218 = *(v221 + 1304);
  v204 = *(v221 + 1296);
  v205 = *(v221 + 1288);
  v1 = *(v221 + 1272);
  v203 = *(v221 + 1176);
  *(v221 + 712) = v223;
  v202 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v205(v1, v202, v203);
  swift_endAccess();
  v206 = *(v221 + 696);
  MEMORY[0x277D82BE0](v206);
  v207 = swift_allocObject();
  *(v207 + 16) = v206;
  MEMORY[0x277D82BE0](v223);
  v209 = swift_allocObject();
  *(v209 + 16) = v223;
  oslog = Logger.logObject.getter();
  v220 = static os_log_type_t.debug.getter();
  v211 = swift_allocObject();
  *(v211 + 16) = 32;
  v212 = swift_allocObject();
  *(v212 + 16) = 8;
  v208 = swift_allocObject();
  *(v208 + 16) = partial apply for specialized implicit closure #5 in HealthKitFetcher.query(start:end:);
  *(v208 + 24) = v207;
  v213 = swift_allocObject();
  *(v213 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v213 + 24) = v208;
  v214 = swift_allocObject();
  *(v214 + 16) = 64;
  v215 = swift_allocObject();
  *(v215 + 16) = 8;
  v210 = swift_allocObject();
  *(v210 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v210 + 24) = v209;
  v216 = swift_allocObject();
  *(v216 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v216 + 24) = v210;
  _allocateUninitializedArray<A>(_:)();
  v217 = v2;

  *v217 = partial apply for closure #1 in OSLogArguments.append(_:);
  v217[1] = v211;

  v217[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v217[3] = v212;

  v217[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v217[5] = v213;

  v217[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v217[7] = v214;

  v217[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v217[9] = v215;

  v217[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v217[11] = v216;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v220))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v200 = createStorage<A>(capacity:type:)(1);
    v201 = createStorage<A>(capacity:type:)(1);
    v234 = buf;
    v235 = v200;
    v236 = v201;
    serialize(_:at:)(2, &v234);
    serialize(_:at:)(2, &v234);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v211;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    if (v222)
    {
    }

    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v212;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v213;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v214;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v215;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    v237 = partial apply for closure #1 in OSLogArguments.append(_:);
    v238 = v216;
    closure #1 in osLogInternal(_:log:type:)(&v237, &v234, &v235, &v236);
    _os_log_impl(&dword_269912000, oslog, v220, "Localized unit -> %s <- found for %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v200, 1, v198);
    destroyStorage<A>(_:count:)(v201, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v197 = 0;
  }

  else
  {

    v197 = v222;
  }

  v192 = *(v221 + 1320);
  v193 = *(v221 + 1312);
  v190 = *(v221 + 1272);
  v191 = *(v221 + 1176);
  v194 = *(v221 + 1056);
  v195 = *(v221 + 1040);
  MEMORY[0x277D82BD8](oslog);
  v193(v190, v191);

  *(v221 + 720) = v194;
  MEMORY[0x277D82BE0](v195);
  *(v221 + 728) = v195;
  *(v221 + 1408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKQuantityTypeCGMd, &_sSaySo14HKQuantityTypeCGMR);
  *(v221 + 1416) = lazy protocol witness table accessor for type [HKQuantityType] and conformance [A]();
  *(v221 + 1424) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
  v196 = Sequence<>.contains(_:)();
  MEMORY[0x277D82BD8](*(v221 + 728));
  outlined destroy of [HKQuantityType]((v221 + 720));
  if (v196)
  {
    v186 = *(v221 + 1304);
    v184 = *(v221 + 1296);
    v185 = *(v221 + 1288);
    v4 = *(v221 + 1264);
    v183 = *(v221 + 1176);
    v182 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v185(v4, v182, v183);
    swift_endAccess();
    log = Logger.logObject.getter();
    v187 = static os_log_type_t.debug.getter();
    v189 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(log, v187))
    {

      goto LABEL_13;
    }

    v178 = static UnsafeMutablePointer.allocate(capacity:)();
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v179 = createStorage<A>(capacity:type:)(0);
    v180 = createStorage<A>(capacity:type:)(0);
    *(v221 + 984) = v178;
    *(v221 + 992) = v179;
    *(v221 + 1000) = v180;
    serialize(_:at:)(0, (v221 + 984));
    serialize(_:at:)(0, (v221 + 984));
    *(v221 + 1008) = v189;
    v181 = swift_task_alloc();
    v181[2] = v221 + 984;
    v181[3] = v221 + 992;
    v181[4] = v221 + 1000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v197)
    {

      _os_log_impl(&dword_269912000, log, v187, "Searching for most recent sample", v178, 2u);
      destroyStorage<A>(_:count:)(v179, 0, v177);
      destroyStorage<A>(_:count:)(v180, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v178, MEMORY[0x277D84B78]);

LABEL_13:
      v175 = *(v221 + 1320);
      v176 = *(v221 + 1312);
      v173 = *(v221 + 1264);
      v174 = *(v221 + 1176);
      MEMORY[0x277D82BD8](log);
      v176(v173, v174);
      v5 = swift_task_alloc();
      *(v221 + 1432) = v5;
      *v5 = *(v221 + 672);
      v5[1] = HealthKitFetcher.query(start:end:);
      v6 = *(v221 + 1056);
      v7 = *(v221 + 1048);
      v8 = *(v221 + 1040);
      v9 = *(v221 + 1032);
      v10 = *(v221 + 1024);
      v11 = *(v221 + 1016);

      return HealthKitFetcher.getMostRecent(startDate:endDate:)(v11, v10, v9, v8, v7, v6);
    }
  }

  v171 = *(v221 + 1160);
  v170 = *(v221 + 1088);
  v169 = *(v221 + 1096);
  outlined init with copy of Date?(*(v221 + 1016), v171);
  v172 = *(v169 + 48);
  if (v172(v171, 1, v170) == 1)
  {
    outlined destroy of Date?(*(v221 + 1160));
LABEL_37:
    v99 = *(v221 + 1304);
    v97 = *(v221 + 1296);
    v98 = *(v221 + 1288);
    v32 = *(v221 + 1200);
    v96 = *(v221 + 1176);
    v95 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v98(v32, v95, v96);
    swift_endAccess();
    v101 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    v102 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v101, v100))
    {
      v91 = static UnsafeMutablePointer.allocate(capacity:)();
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v92 = createStorage<A>(capacity:type:)(0);
      v93 = createStorage<A>(capacity:type:)(0);
      *(v221 + 736) = v91;
      *(v221 + 744) = v92;
      *(v221 + 752) = v93;
      serialize(_:at:)(0, (v221 + 736));
      serialize(_:at:)(0, (v221 + 736));
      *(v221 + 760) = v102;
      v94 = swift_task_alloc();
      v94[2] = v221 + 736;
      v94[3] = v221 + 744;
      v94[4] = v221 + 752;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v197)
      {
      }

      _os_log_impl(&dword_269912000, v101, v100, "Stopping search because no dates range was specified", v91, 2u);
      destroyStorage<A>(_:count:)(v92, 0, v90);
      destroyStorage<A>(_:count:)(v93, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v91, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v87 = *(v221 + 1400);
    v85 = *(v221 + 1320);
    v86 = *(v221 + 1312);
    v83 = *(v221 + 1200);
    v84 = *(v221 + 1176);
    MEMORY[0x277D82BD8](v101);
    v86(v83, v84);
    swift_beginAccess();
    v88 = *(v221 + 696);
    MEMORY[0x277D82BE0](v88);
    swift_endAccess();
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](*(v221 + 696));
    v89 = v88;
    goto LABEL_49;
  }

  v12 = *(v221 + 1160);
  v168 = *(v221 + 1152);
  v13 = *(v221 + 1120);
  v167 = *(v221 + 1088);
  v166 = *(v221 + 1024);
  v14 = *(v221 + 1096) + 32;
  v165 = *v14;
  *(v221 + 1456) = *v14;
  *(v221 + 1464) = v14 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v165(v13, v12);
  outlined init with copy of Date?(v166, v168);
  if (v172(v168, 1, v167) == 1)
  {
    v164 = *(v221 + 1120);
    v163 = *(v221 + 1088);
    v162 = *(v221 + 1096);
    outlined destroy of Date?(*(v221 + 1152));
    (*(v162 + 8))(v164, v163);
    goto LABEL_37;
  }

  v160 = *(v221 + 1424);
  v159 = *(v221 + 1416);
  v158 = *(v221 + 1408);
  v156 = *(v221 + 1048);
  v157 = *(v221 + 1040);
  (v165)(*(v221 + 1112), *(v221 + 1152), *(v221 + 1088));

  *(v221 + 768) = v156;
  MEMORY[0x277D82BE0](v157);
  *(v221 + 776) = v157;
  v161 = Sequence<>.contains(_:)();
  MEMORY[0x277D82BD8](*(v221 + 776));
  outlined destroy of [HKQuantityType]((v221 + 768));
  if (v161)
  {
    v136 = *(v221 + 1304);
    v113 = *(v221 + 1296);
    v114 = *(v221 + 1288);
    v23 = *(v221 + 1232);
    v112 = *(v221 + 1176);
    v122 = *(v221 + 1128);
    v116 = *(v221 + 1120);
    v118 = *(v221 + 1112);
    v121 = *(v221 + 1104);
    v123 = *(v221 + 1088);
    v115 = *(v221 + 1096);
    v111 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v114(v23, v111, v112);
    swift_endAccess();
    v119 = *(v115 + 16);
    *(v221 + 1496) = v119;
    *(v221 + 1504) = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v119(v122, v116, v123);
    v120 = *(v115 + 80);
    *(v221 + 1568) = v120;
    v117 = swift_allocObject();
    (v165)(v117 + ((v120 + 16) & ~v120), v122, v123);

    v125 = swift_allocObject();
    *(v125 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v125 + 24) = v117;

    v119(v122, v118, v123);
    v124 = swift_allocObject();
    (v165)(v124 + ((v120 + 16) & ~v120), v122, v123);

    v127 = swift_allocObject();
    *(v127 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v127 + 24) = v124;

    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    v129 = swift_allocObject();
    *(v129 + 16) = 32;
    v130 = swift_allocObject();
    *(v130 + 16) = 8;
    v126 = swift_allocObject();
    *(v126 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v126 + 24) = v125;
    v131 = swift_allocObject();
    *(v131 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v131 + 24) = v126;
    v132 = swift_allocObject();
    *(v132 + 16) = 32;
    v133 = swift_allocObject();
    *(v133 + 16) = 8;
    v128 = swift_allocObject();
    *(v128 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v128 + 24) = v127;
    v134 = swift_allocObject();
    *(v134 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v134 + 24) = v128;
    _allocateUninitializedArray<A>(_:)();
    v135 = v24;

    *v135 = partial apply for closure #1 in OSLogArguments.append(_:);
    v135[1] = v129;

    v135[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v135[3] = v130;

    v135[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v135[5] = v131;

    v135[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v135[7] = v132;

    v135[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v135[9] = v133;

    v135[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v135[11] = v134;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v137, v138))
    {
      v108 = static UnsafeMutablePointer.allocate(capacity:)();
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v109 = createStorage<A>(capacity:type:)(0);
      v110 = createStorage<A>(capacity:type:)(2);
      v229 = v108;
      v230 = v109;
      v231 = v110;
      serialize(_:at:)(2, &v229);
      serialize(_:at:)(2, &v229);
      v232 = partial apply for closure #1 in OSLogArguments.append(_:);
      v233 = v129;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v229, &v230, &v231);
      if (v197)
      {
      }

      v232 = partial apply for closure #1 in OSLogArguments.append(_:);
      v233 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v229, &v230, &v231);
      v232 = partial apply for closure #1 in OSLogArguments.append(_:);
      v233 = v131;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v229, &v230, &v231);
      v232 = partial apply for closure #1 in OSLogArguments.append(_:);
      v233 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v229, &v230, &v231);
      v232 = partial apply for closure #1 in OSLogArguments.append(_:);
      v233 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v229, &v230, &v231);
      v232 = partial apply for closure #1 in OSLogArguments.append(_:);
      v233 = v134;
      closure #1 in osLogInternal(_:log:type:)(&v232, &v229, &v230, &v231);
      _os_log_impl(&dword_269912000, v137, v138, "Searching for the total value for cumulative datatypes in %s - %s", v108, 0x16u);
      destroyStorage<A>(_:count:)(v109, 0, v107);
      destroyStorage<A>(_:count:)(v110, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v108, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v105 = *(v221 + 1320);
    v106 = *(v221 + 1312);
    v103 = *(v221 + 1232);
    v104 = *(v221 + 1176);
    MEMORY[0x277D82BD8](v137);
    v106(v103, v104);
    v25 = swift_task_alloc();
    *(v221 + 1512) = v25;
    *v25 = *(v221 + 672);
    v25[1] = HealthKitFetcher.query(start:end:);
    v26 = *(v221 + 1120);
    v27 = *(v221 + 1112);
    v28 = *(v221 + 1056);
    v29 = *(v221 + 1048);
    v30 = *(v221 + 1040);
    v31 = *(v221 + 1032);

    return HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(v26, v27, v31, v30, v29, v28);
  }

  else
  {
    v152 = *(v221 + 1304);
    v150 = *(v221 + 1296);
    v151 = *(v221 + 1288);
    v15 = *(v221 + 1248);
    v149 = *(v221 + 1176);
    v148 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v151(v15, v148, v149);
    swift_endAccess();
    v154 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();
    v155 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v154, v153))
    {
      v144 = static UnsafeMutablePointer.allocate(capacity:)();
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v145 = createStorage<A>(capacity:type:)(0);
      v146 = createStorage<A>(capacity:type:)(0);
      *(v221 + 904) = v144;
      *(v221 + 912) = v145;
      *(v221 + 920) = v146;
      serialize(_:at:)(0, (v221 + 904));
      serialize(_:at:)(0, (v221 + 904));
      *(v221 + 928) = v155;
      v147 = swift_task_alloc();
      v147[2] = v221 + 904;
      v147[3] = v221 + 912;
      v147[4] = v221 + 920;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v197)
      {
      }

      _os_log_impl(&dword_269912000, v154, v153, "Searching for discrete min, max and average for data", v144, 2u);
      destroyStorage<A>(_:count:)(v145, 0, v143);
      destroyStorage<A>(_:count:)(v146, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v144, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v141 = *(v221 + 1320);
    v142 = *(v221 + 1312);
    v139 = *(v221 + 1248);
    v140 = *(v221 + 1176);
    MEMORY[0x277D82BD8](v154);
    v142(v139, v140);
    v16 = swift_task_alloc();
    *(v221 + 1472) = v16;
    *v16 = *(v221 + 672);
    v16[1] = HealthKitFetcher.query(start:end:);
    v17 = *(v221 + 1120);
    v18 = *(v221 + 1112);
    v19 = *(v221 + 1056);
    v20 = *(v221 + 1048);
    v21 = *(v221 + 1040);
    v22 = *(v221 + 1032);

    return HealthKitFetcher.getDiscreteStats(startDate:endDate:)(v17, v18, v22, v21, v20, v19);
  }
}

{
  v180 = v0;
  v1 = *(v0 + 1440);
  *(v0 + 672) = v0;
  if (!v1)
  {
LABEL_10:
    v151 = *(v174 + 1304);
    v149 = *(v174 + 1296);
    v150 = *(v174 + 1288);
    v4 = *(v174 + 1256);
    v148 = *(v174 + 1176);
    v147 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v150(v4, v147, v148);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    v154 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v152))
    {
      v5 = *(v174 + 1448);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v144 = createStorage<A>(capacity:type:)(0);
      v145 = createStorage<A>(capacity:type:)(0);
      *(v174 + 936) = buf;
      *(v174 + 944) = v144;
      *(v174 + 952) = v145;
      serialize(_:at:)(0, (v174 + 936));
      serialize(_:at:)(0, (v174 + 936));
      *(v174 + 960) = v154;
      v146 = swift_task_alloc();
      v146[2] = v174 + 936;
      v146[3] = v174 + 944;
      v146[4] = v174 + 952;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v5)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v152, "Couldn't find the recent sample statistics returning .dataUnavailable", buf, 2u);
      destroyStorage<A>(_:count:)(v144, 0, v142);
      destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v139 = *(v174 + 1400);
    v6 = *(v174 + 1328);
    v137 = *(v174 + 1320);
    v138 = *(v174 + 1312);
    v135 = *(v174 + 1256);
    v136 = *(v174 + 1176);
    MEMORY[0x277D82BD8](oslog);
    v138(v135, v136);
    v140 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](*(v174 + 696));
    v141 = v140;
LABEL_41:
    v29 = *(v174 + 1280);
    v32 = *(v174 + 1272);
    v33 = *(v174 + 1264);
    v34 = *(v174 + 1256);
    v35 = *(v174 + 1248);
    v36 = *(v174 + 1240);
    v37 = *(v174 + 1232);
    v38 = *(v174 + 1224);
    v39 = *(v174 + 1216);
    v40 = *(v174 + 1208);
    v41 = *(v174 + 1200);
    v42 = *(v174 + 1192);
    v43 = *(v174 + 1168);
    v44 = *(v174 + 1160);
    v45 = *(v174 + 1152);
    v46 = *(v174 + 1128);
    v47 = *(v174 + 1120);
    v48 = *(v174 + 1112);
    v49 = *(v174 + 1080);

    v30 = *(*(v174 + 672) + 8);
    v31 = *(v174 + 672);

    return v30(v141);
  }

  v172 = *(v174 + 1440);
  *(v174 + 968) = v172;
  v2 = [v172 mostRecentQuantity];
  v173 = v2;
  if (v2)
  {
    [v2 doubleValueForUnit_];
    v169 = v3;
    MEMORY[0x277D82BD8](v173);
    v170 = v169;
    v171 = 0;
  }

  else
  {
    v170 = 0.0;
    v171 = 1;
  }

  if (v171)
  {
    MEMORY[0x277D82BD8](v172);
    goto LABEL_10;
  }

  v160 = *(v174 + 1128);
  v158 = *(v174 + 1088);
  v155 = *(v174 + 1096);
  *(v174 + 976) = v170;
  swift_beginAccess();
  v163 = *(v174 + 696);
  MEMORY[0x277D82BE0](v163);
  swift_endAccess();
  [v163 setMostRecent_];
  swift_beginAccess();
  swift_endAccess();
  v156 = [v172 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v159 = *(v155 + 8);
  v159(v160, v158);
  MEMORY[0x277D82BD8](v156);
  [v163 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v161 = [v172 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v162 = Date._bridgeToObjectiveC()().super.isa;
  v159(v160, v158);
  MEMORY[0x277D82BD8](v161);
  [v163 setSampleEndDate_];
  MEMORY[0x277D82BD8](v162);
  MEMORY[0x277D82BD8](v163);
  MEMORY[0x277D82BD8](v172);
  v164 = *(v174 + 1448);
  v167 = *(v174 + 1160);
  v166 = *(v174 + 1088);
  v165 = *(v174 + 1096);
  outlined init with copy of Date?(*(v174 + 1016), v167);
  v168 = *(v165 + 48);
  if (v168(v167, 1, v166) == 1)
  {
    outlined destroy of Date?(*(v174 + 1160));
LABEL_35:
    v65 = *(v174 + 1304);
    v63 = *(v174 + 1296);
    v64 = *(v174 + 1288);
    v28 = *(v174 + 1200);
    v62 = *(v174 + 1176);
    v61 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v64(v28, v61, v62);
    swift_endAccess();
    v67 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v68 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v67, v66))
    {

      goto LABEL_40;
    }

    v57 = static UnsafeMutablePointer.allocate(capacity:)();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v58 = createStorage<A>(capacity:type:)(0);
    v59 = createStorage<A>(capacity:type:)(0);
    *(v174 + 736) = v57;
    *(v174 + 744) = v58;
    *(v174 + 752) = v59;
    serialize(_:at:)(0, (v174 + 736));
    serialize(_:at:)(0, (v174 + 736));
    *(v174 + 760) = v68;
    v60 = swift_task_alloc();
    v60[2] = v174 + 736;
    v60[3] = v174 + 744;
    v60[4] = v174 + 752;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v164)
    {

      _os_log_impl(&dword_269912000, v67, v66, "Stopping search because no dates range was specified", v57, 2u);
      destroyStorage<A>(_:count:)(v58, 0, v56);
      destroyStorage<A>(_:count:)(v59, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v57, MEMORY[0x277D84B78]);

LABEL_40:
      v54 = *(v174 + 1400);
      v52 = *(v174 + 1320);
      v53 = *(v174 + 1312);
      v50 = *(v174 + 1200);
      v51 = *(v174 + 1176);
      MEMORY[0x277D82BD8](v67);
      v53(v50, v51);
      swift_beginAccess();
      v55 = *(v174 + 696);
      MEMORY[0x277D82BE0](v55);
      swift_endAccess();
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](*(v174 + 696));
      v141 = v55;
      goto LABEL_41;
    }
  }

  v7 = *(v174 + 1160);
  v134 = *(v174 + 1152);
  v8 = *(v174 + 1120);
  v133 = *(v174 + 1088);
  v132 = *(v174 + 1024);
  v9 = *(v174 + 1096) + 32;
  v131 = *v9;
  *(v174 + 1456) = *v9;
  *(v174 + 1464) = v9 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v131(v8, v7);
  outlined init with copy of Date?(v132, v134);
  if (v168(v134, 1, v133) == 1)
  {
    v130 = *(v174 + 1120);
    v129 = *(v174 + 1088);
    v128 = *(v174 + 1096);
    outlined destroy of Date?(*(v174 + 1152));
    (*(v128 + 8))(v130, v129);
    goto LABEL_35;
  }

  v126 = *(v174 + 1424);
  v125 = *(v174 + 1416);
  v124 = *(v174 + 1408);
  v122 = *(v174 + 1048);
  v123 = *(v174 + 1040);
  (v131)(*(v174 + 1112), *(v174 + 1152), *(v174 + 1088));

  *(v174 + 768) = v122;
  MEMORY[0x277D82BE0](v123);
  *(v174 + 776) = v123;
  v127 = Sequence<>.contains(_:)();
  MEMORY[0x277D82BD8](*(v174 + 776));
  outlined destroy of [HKQuantityType]((v174 + 768));
  if (v127)
  {
    v102 = *(v174 + 1304);
    v79 = *(v174 + 1296);
    v80 = *(v174 + 1288);
    v19 = *(v174 + 1232);
    v78 = *(v174 + 1176);
    v88 = *(v174 + 1128);
    v82 = *(v174 + 1120);
    v84 = *(v174 + 1112);
    v87 = *(v174 + 1104);
    v89 = *(v174 + 1088);
    v81 = *(v174 + 1096);
    v77 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v80(v19, v77, v78);
    swift_endAccess();
    v85 = *(v81 + 16);
    *(v174 + 1496) = v85;
    *(v174 + 1504) = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v85(v88, v82, v89);
    v86 = *(v81 + 80);
    *(v174 + 1568) = v86;
    v83 = swift_allocObject();
    (v131)(v83 + ((v86 + 16) & ~v86), v88, v89);

    v91 = swift_allocObject();
    *(v91 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v91 + 24) = v83;

    v85(v88, v84, v89);
    v90 = swift_allocObject();
    (v131)(v90 + ((v86 + 16) & ~v86), v88, v89);

    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
    *(v93 + 24) = v90;

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    v95 = swift_allocObject();
    *(v95 + 16) = 32;
    v96 = swift_allocObject();
    *(v96 + 16) = 8;
    v92 = swift_allocObject();
    *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v92 + 24) = v91;
    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v97 + 24) = v92;
    v98 = swift_allocObject();
    *(v98 + 16) = 32;
    v99 = swift_allocObject();
    *(v99 + 16) = 8;
    v94 = swift_allocObject();
    *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v94 + 24) = v93;
    v100 = swift_allocObject();
    *(v100 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v100 + 24) = v94;
    _allocateUninitializedArray<A>(_:)();
    v101 = v20;

    *v101 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[1] = v95;

    v101[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[3] = v96;

    v101[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[5] = v97;

    v101[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[7] = v98;

    v101[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[9] = v99;

    v101[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v101[11] = v100;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v103, v104))
    {
      v74 = static UnsafeMutablePointer.allocate(capacity:)();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v75 = createStorage<A>(capacity:type:)(0);
      v76 = createStorage<A>(capacity:type:)(2);
      v175 = v74;
      v176 = v75;
      v177 = v76;
      serialize(_:at:)(2, &v175);
      serialize(_:at:)(2, &v175);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      if (v164)
      {
      }

      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      v178 = partial apply for closure #1 in OSLogArguments.append(_:);
      v179 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v178, &v175, &v176, &v177);
      _os_log_impl(&dword_269912000, v103, v104, "Searching for the total value for cumulative datatypes in %s - %s", v74, 0x16u);
      destroyStorage<A>(_:count:)(v75, 0, v73);
      destroyStorage<A>(_:count:)(v76, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v74, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v71 = *(v174 + 1320);
    v72 = *(v174 + 1312);
    v69 = *(v174 + 1232);
    v70 = *(v174 + 1176);
    MEMORY[0x277D82BD8](v103);
    v72(v69, v70);
    v21 = swift_task_alloc();
    *(v174 + 1512) = v21;
    *v21 = *(v174 + 672);
    v21[1] = HealthKitFetcher.query(start:end:);
    v22 = *(v174 + 1120);
    v23 = *(v174 + 1112);
    v24 = *(v174 + 1056);
    v25 = *(v174 + 1048);
    v26 = *(v174 + 1040);
    v27 = *(v174 + 1032);

    return HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(v22, v23, v27, v26, v25, v24);
  }

  else
  {
    v118 = *(v174 + 1304);
    v116 = *(v174 + 1296);
    v117 = *(v174 + 1288);
    v10 = *(v174 + 1248);
    v115 = *(v174 + 1176);
    v114 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v117(v10, v114, v115);
    swift_endAccess();
    log = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    v121 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v119))
    {
      v110 = static UnsafeMutablePointer.allocate(capacity:)();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v111 = createStorage<A>(capacity:type:)(0);
      v112 = createStorage<A>(capacity:type:)(0);
      *(v174 + 904) = v110;
      *(v174 + 912) = v111;
      *(v174 + 920) = v112;
      serialize(_:at:)(0, (v174 + 904));
      serialize(_:at:)(0, (v174 + 904));
      *(v174 + 928) = v121;
      v113 = swift_task_alloc();
      v113[2] = v174 + 904;
      v113[3] = v174 + 912;
      v113[4] = v174 + 920;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v164)
      {
      }

      _os_log_impl(&dword_269912000, log, v119, "Searching for discrete min, max and average for data", v110, 2u);
      destroyStorage<A>(_:count:)(v111, 0, v109);
      destroyStorage<A>(_:count:)(v112, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v110, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v107 = *(v174 + 1320);
    v108 = *(v174 + 1312);
    v105 = *(v174 + 1248);
    v106 = *(v174 + 1176);
    MEMORY[0x277D82BD8](log);
    v108(v105, v106);
    v11 = swift_task_alloc();
    *(v174 + 1472) = v11;
    *v11 = *(v174 + 672);
    v11[1] = HealthKitFetcher.query(start:end:);
    v12 = *(v174 + 1120);
    v13 = *(v174 + 1112);
    v14 = *(v174 + 1056);
    v15 = *(v174 + 1048);
    v16 = *(v174 + 1040);
    v17 = *(v174 + 1032);

    return HealthKitFetcher.getDiscreteStats(startDate:endDate:)(v12, v13, v17, v16, v15, v14);
  }
}

{
  v116 = v0;
  v1 = *(v0 + 1480);
  *(v0 + 672) = v0;
  if (!v1)
  {
    goto LABEL_20;
  }

  v108 = *(v110 + 1480);
  *(v110 + 872) = v108;
  v2 = [v108 minimumQuantity];
  v109 = v2;
  if (v2)
  {
    [v2 doubleValueForUnit_];
    v105 = v3;
    MEMORY[0x277D82BD8](v109);
    v106 = v105;
    v107 = 0;
  }

  else
  {
    v106 = 0.0;
    v107 = 1;
  }

  if (v107)
  {
    goto LABEL_16;
  }

  *(v110 + 880) = v106;
  v4 = [v108 maximumQuantity];
  v104 = v4;
  if (v4)
  {
    [v4 doubleValueForUnit_];
    v101 = v5;
    MEMORY[0x277D82BD8](v104);
    v102 = v101;
    v103 = 0;
  }

  else
  {
    v102 = 0.0;
    v103 = 1;
  }

  if (v103)
  {
    goto LABEL_16;
  }

  *(v110 + 888) = v102;
  v6 = [v108 averageQuantity];
  v100 = v6;
  if (v6)
  {
    [v6 doubleValueForUnit_];
    v97 = v7;
    MEMORY[0x277D82BD8](v100);
    v98 = v97;
    v99 = 0;
  }

  else
  {
    v98 = 0.0;
    v99 = 1;
  }

  if (v99)
  {
LABEL_16:
    MEMORY[0x277D82BD8](v108);
LABEL_20:
    v70 = *(v110 + 1304);
    v68 = *(v110 + 1296);
    v69 = *(v110 + 1288);
    v10 = *(v110 + 1240);
    v67 = *(v110 + 1176);
    v66 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v69(v10, v66, v67);
    swift_endAccess();
    log = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v73 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v71))
    {
      v11 = *(v110 + 1488);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = createStorage<A>(capacity:type:)(0);
      v64 = createStorage<A>(capacity:type:)(0);
      *(v110 + 840) = buf;
      *(v110 + 848) = v63;
      *(v110 + 856) = v64;
      serialize(_:at:)(0, (v110 + 840));
      serialize(_:at:)(0, (v110 + 840));
      *(v110 + 864) = v73;
      v65 = swift_task_alloc();
      v65[2] = v110 + 840;
      v65[3] = v110 + 848;
      v65[4] = v110 + 856;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v11)
      {
      }

      _os_log_impl(&dword_269912000, log, v71, "Couldn't find the correct statistics returning .dataUnavailable", buf, 2u);
      destroyStorage<A>(_:count:)(v63, 0, v61);
      destroyStorage<A>(_:count:)(v64, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v58 = *(v110 + 1400);
    v13 = *(v110 + 1328);
    v51 = *(v110 + 1320);
    v52 = *(v110 + 1312);
    v49 = *(v110 + 1240);
    v50 = *(v110 + 1176);
    v55 = *(v110 + 1120);
    v54 = *(v110 + 1112);
    v56 = *(v110 + 1088);
    v53 = *(v110 + 1096);
    MEMORY[0x277D82BD8](log);
    v52(v49, v50);
    v59 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    v57 = *(v53 + 8);
    v57(v54, v56);
    v57(v55, v56);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](*(v110 + 696));
    v60 = v59;
    goto LABEL_30;
  }

  v79 = *(v110 + 1128);
  v77 = *(v110 + 1088);
  v74 = *(v110 + 1096);
  *(v110 + 896) = v98;
  swift_beginAccess();
  v87 = *(v110 + 696);
  MEMORY[0x277D82BE0](v87);
  swift_endAccess();
  [v87 setMinimum_];
  swift_beginAccess();
  swift_endAccess();
  [v87 setMaximum_];
  swift_beginAccess();
  swift_endAccess();
  [v87 setAverage_];
  swift_beginAccess();
  swift_endAccess();
  v75 = [v108 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v78 = *(v74 + 8);
  v78(v79, v77);
  MEMORY[0x277D82BD8](v75);
  [v87 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v80 = [v108 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = Date._bridgeToObjectiveC()().super.isa;
  v78(v79, v77);
  MEMORY[0x277D82BD8](v80);
  [v87 setSampleEndDate_];
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v108);
  v82 = *(v110 + 1488);
  v94 = *(v110 + 1304);
  v85 = *(v110 + 1296);
  v86 = *(v110 + 1288);
  v8 = *(v110 + 1208);
  v84 = *(v110 + 1176);
  v83 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v86(v8, v83, v84);
  swift_endAccess();
  MEMORY[0x277D82BE0](v87);
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  oslog = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v90 = swift_allocObject();
  *(v90 + 16) = 32;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for specialized implicit closure #12 in HealthKitFetcher.query(start:end:);
  *(v89 + 24) = v88;
  v92 = swift_allocObject();
  *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v92 + 24) = v89;
  _allocateUninitializedArray<A>(_:)();
  v93 = v9;

  *v93 = partial apply for closure #1 in OSLogArguments.append(_:);
  v93[1] = v90;

  v93[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v93[3] = v91;

  v93[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v93[5] = v92;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v96))
  {
    v46 = static UnsafeMutablePointer.allocate(capacity:)();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v47 = createStorage<A>(capacity:type:)(0);
    v48 = createStorage<A>(capacity:type:)(1);
    v111 = v46;
    v112 = v47;
    v113 = v48;
    serialize(_:at:)(2, &v111);
    serialize(_:at:)(1, &v111);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    if (v82)
    {
    }

    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    v114 = partial apply for closure #1 in OSLogArguments.append(_:);
    v115 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
    _os_log_impl(&dword_269912000, oslog, v96, "Returning response: %s", v46, 0xCu);
    destroyStorage<A>(_:count:)(v47, 0, v45);
    destroyStorage<A>(_:count:)(v48, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v46, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v44 = *(v110 + 1400);
  v37 = *(v110 + 1320);
  v38 = *(v110 + 1312);
  v35 = *(v110 + 1208);
  v36 = *(v110 + 1176);
  v41 = *(v110 + 1120);
  v40 = *(v110 + 1112);
  v42 = *(v110 + 1088);
  v39 = *(v110 + 1096);
  MEMORY[0x277D82BD8](oslog);
  v38(v35, v36);
  swift_beginAccess();
  swift_endAccess();
  v43 = *(v39 + 8);
  v43(v40, v42);
  v43(v41, v42);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](*(v110 + 696));
  v60 = v87;
LABEL_30:
  v14 = *(v110 + 1280);
  v17 = *(v110 + 1272);
  v18 = *(v110 + 1264);
  v19 = *(v110 + 1256);
  v20 = *(v110 + 1248);
  v21 = *(v110 + 1240);
  v22 = *(v110 + 1232);
  v23 = *(v110 + 1224);
  v24 = *(v110 + 1216);
  v25 = *(v110 + 1208);
  v26 = *(v110 + 1200);
  v27 = *(v110 + 1192);
  v28 = *(v110 + 1168);
  v29 = *(v110 + 1160);
  v30 = *(v110 + 1152);
  v31 = *(v110 + 1128);
  v32 = *(v110 + 1120);
  v33 = *(v110 + 1112);
  v34 = *(v110 + 1080);

  v15 = *(*(v110 + 672) + 8);
  v16 = *(v110 + 672);

  return v15(v60);
}

{
  v172 = v0;
  v1 = *(v0 + 1520);
  *(v0 + 672) = v0;
  if (!v1)
  {
    goto LABEL_19;
  }

  v159 = *(v161 + 1520);
  *(v161 + 816) = v159;
  v2 = [v159 sumQuantity];
  v160 = v2;
  if (v2)
  {
    [v2 doubleValueForUnit_];
    v156 = v3;
    MEMORY[0x277D82BD8](v160);
    v157 = v156;
    v158 = 0;
  }

  else
  {
    v157 = 0.0;
    v158 = 1;
  }

  if (v158)
  {
    MEMORY[0x277D82BD8](v159);
LABEL_19:
    v77 = *(v161 + 1304);
    v75 = *(v161 + 1296);
    v76 = *(v161 + 1288);
    v18 = *(v161 + 1216);
    v74 = *(v161 + 1176);
    v73 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v76(v18, v73, v74);
    swift_endAccess();
    log = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    v80 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v78))
    {
      v19 = *(v161 + 1528);
      v69 = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v70 = createStorage<A>(capacity:type:)(0);
      v71 = createStorage<A>(capacity:type:)(0);
      *(v161 + 784) = v69;
      *(v161 + 792) = v70;
      *(v161 + 800) = v71;
      serialize(_:at:)(0, (v161 + 784));
      serialize(_:at:)(0, (v161 + 784));
      *(v161 + 808) = v80;
      v72 = swift_task_alloc();
      v72[2] = v161 + 784;
      v72[3] = v161 + 792;
      v72[4] = v161 + 800;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v19)
      {
      }

      _os_log_impl(&dword_269912000, log, v78, "Couldn't find the total statistics returning .dataUnavailable", v69, 2u);
      destroyStorage<A>(_:count:)(v70, 0, v68);
      destroyStorage<A>(_:count:)(v71, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v69, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v65 = *(v161 + 1400);
    v20 = *(v161 + 1328);
    v58 = *(v161 + 1320);
    v59 = *(v161 + 1312);
    v56 = *(v161 + 1216);
    v57 = *(v161 + 1176);
    v62 = *(v161 + 1120);
    v61 = *(v161 + 1112);
    v63 = *(v161 + 1088);
    v60 = *(v161 + 1096);
    MEMORY[0x277D82BD8](log);
    v59(v56, v57);
    v66 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    v64 = *(v60 + 8);
    v64(v61, v63);
    v64(v62, v63);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](*(v161 + 696));
    v67 = v66;
    goto LABEL_29;
  }

  v130 = *(v161 + 1568);
  v128 = *(v161 + 1504);
  v129 = *(v161 + 1496);
  v134 = *(v161 + 1464);
  v135 = *(v161 + 1456);
  v153 = *(v161 + 1304);
  v123 = *(v161 + 1296);
  v124 = *(v161 + 1288);
  v4 = *(v161 + 1224);
  v122 = *(v161 + 1176);
  v132 = *(v161 + 1128);
  v125 = *(v161 + 1120);
  v127 = *(v161 + 1112);
  v131 = *(v161 + 1104);
  v133 = *(v161 + 1088);
  *(v161 + 824) = v157;
  v121 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v124(v4, v121, v122);
  swift_endAccess();
  v129(v132, v125, v133);
  v126 = swift_allocObject();
  v135(v126 + ((v130 + 16) & ~v130), v132, v133);

  v137 = swift_allocObject();
  *(v137 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
  *(v137 + 24) = v126;

  v129(v132, v127, v133);
  v136 = swift_allocObject();
  v135(v136 + ((v130 + 16) & ~v130), v132, v133);

  v139 = swift_allocObject();
  *(v139 + 16) = partial apply for implicit closure #10 in LogQuantityIntentHandler.handle(intent:);
  *(v139 + 24) = v136;

  v141 = swift_allocObject();
  *(v141 + 16) = v157;
  oslog = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  v143 = swift_allocObject();
  *(v143 + 16) = 32;
  v144 = swift_allocObject();
  *(v144 + 16) = 8;
  v138 = swift_allocObject();
  *(v138 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v138 + 24) = v137;
  v145 = swift_allocObject();
  *(v145 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v145 + 24) = v138;
  v146 = swift_allocObject();
  *(v146 + 16) = 32;
  v147 = swift_allocObject();
  *(v147 + 16) = 8;
  v140 = swift_allocObject();
  *(v140 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v140 + 24) = v139;
  v148 = swift_allocObject();
  *(v148 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v148 + 24) = v140;
  v149 = swift_allocObject();
  *(v149 + 16) = 0;
  v150 = swift_allocObject();
  *(v150 + 16) = 8;
  v142 = swift_allocObject();
  *(v142 + 16) = partial apply for implicit closure #11 in HealthKitFetcher.query(start:end:);
  *(v142 + 24) = v141;
  v151 = swift_allocObject();
  *(v151 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v151 + 24) = v142;
  _allocateUninitializedArray<A>(_:)();
  v152 = v5;

  *v152 = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[1] = v143;

  v152[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[3] = v144;

  v152[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[5] = v145;

  v152[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[7] = v146;

  v152[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[9] = v147;

  v152[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[11] = v148;

  v152[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[13] = v149;

  v152[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[15] = v150;

  v152[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v152[17] = v151;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v155))
  {
    v6 = *(v161 + 1528);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v119 = createStorage<A>(capacity:type:)(0);
    v120 = createStorage<A>(capacity:type:)(2);
    v167 = buf;
    v168 = v119;
    v169 = v120;
    serialize(_:at:)(2, &v167);
    serialize(_:at:)(3, &v167);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v143;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    if (v6)
    {
    }

    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v144;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v145;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v146;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v147;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v148;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v149;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v150;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    v170 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171 = v151;
    closure #1 in osLogInternal(_:log:type:)(&v170, &v167, &v168, &v169);
    _os_log_impl(&dword_269912000, oslog, v155, "Got total value in %s - %s: %f", buf, 0x20u);
    destroyStorage<A>(_:count:)(v119, 0, v117);
    destroyStorage<A>(_:count:)(v120, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v116 = 0;
  }

  else
  {

    v116 = *(v161 + 1528);
  }

  v107 = *(v161 + 1320);
  v108 = *(v161 + 1312);
  v105 = *(v161 + 1224);
  v106 = *(v161 + 1176);
  v110 = *(v161 + 1120);
  v111 = *(v161 + 1112);
  v114 = *(v161 + 1080);
  v113 = *(v161 + 1064);
  v112 = *(v161 + 1072);
  MEMORY[0x277D82BD8](oslog);
  v108(v105, v106);
  swift_beginAccess();
  v109 = *(v161 + 696);
  MEMORY[0x277D82BE0](v109);
  swift_endAccess();
  [v109 setTotal_];
  MEMORY[0x277D82BD8](v109);
  static Calendar.current.getter();
  v115 = Calendar.numberOfDaysBetween(_:and:)();
  (*(v112 + 8))(v114, v113);
  *(v161 + 832) = v115;
  if (v115 > 1.0)
  {
    v104 = *(v161 + 1400);
    swift_beginAccess();
    v8 = *(v161 + 696);
    *(v161 + 1536) = v8;
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    v9 = swift_task_alloc();
    *(v161 + 1544) = v9;
    *v9 = *(v161 + 672);
    v9[1] = HealthKitFetcher.query(start:end:);
    v10 = *(v161 + 1120);
    v11 = *(v161 + 1112);
    v12 = *(v161 + 1056);
    v13 = *(v161 + 1048);
    v14 = *(v161 + 1040);
    v15 = *(v161 + 1032);

    return HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(v10, v11, v104, v15, v14, v13, v12);
  }

  v86 = *(v161 + 1128);
  v84 = *(v161 + 1088);
  v89 = *(v161 + 1520);
  v81 = *(v161 + 1096);
  swift_beginAccess();
  v94 = *(v161 + 696);
  MEMORY[0x277D82BE0](v94);
  swift_endAccess();
  v82 = [v89 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v85 = *(v81 + 8);
  v85(v86, v84);
  MEMORY[0x277D82BD8](v82);
  [v94 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v87 = [v89 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = Date._bridgeToObjectiveC()().super.isa;
  v85(v86, v84);
  MEMORY[0x277D82BD8](v87);
  [v94 setSampleEndDate_];
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  v101 = *(v161 + 1304);
  v92 = *(v161 + 1296);
  v93 = *(v161 + 1288);
  v16 = *(v161 + 1208);
  v91 = *(v161 + 1176);
  v90 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v93(v16, v90, v91);
  swift_endAccess();
  MEMORY[0x277D82BE0](v94);
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  v97 = swift_allocObject();
  *(v97 + 16) = 32;
  v98 = swift_allocObject();
  *(v98 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = partial apply for specialized implicit closure #12 in HealthKitFetcher.query(start:end:);
  *(v96 + 24) = v95;
  v99 = swift_allocObject();
  *(v99 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v99 + 24) = v96;
  _allocateUninitializedArray<A>(_:)();
  v100 = v17;

  *v100 = partial apply for closure #1 in OSLogArguments.append(_:);
  v100[1] = v97;

  v100[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v100[3] = v98;

  v100[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v100[5] = v99;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v102, v103))
  {
    v53 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0);
    v55 = createStorage<A>(capacity:type:)(1);
    v162 = v53;
    v163 = v54;
    v164 = v55;
    serialize(_:at:)(2, &v162);
    serialize(_:at:)(1, &v162);
    v165 = partial apply for closure #1 in OSLogArguments.append(_:);
    v166 = v97;
    closure #1 in osLogInternal(_:log:type:)(&v165, &v162, &v163, &v164);
    if (v116)
    {
    }

    v165 = partial apply for closure #1 in OSLogArguments.append(_:);
    v166 = v98;
    closure #1 in osLogInternal(_:log:type:)(&v165, &v162, &v163, &v164);
    v165 = partial apply for closure #1 in OSLogArguments.append(_:);
    v166 = v99;
    closure #1 in osLogInternal(_:log:type:)(&v165, &v162, &v163, &v164);
    _os_log_impl(&dword_269912000, v102, v103, "Returning response: %s", v53, 0xCu);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v51 = *(v161 + 1400);
  v44 = *(v161 + 1320);
  v45 = *(v161 + 1312);
  v42 = *(v161 + 1208);
  v43 = *(v161 + 1176);
  v48 = *(v161 + 1120);
  v47 = *(v161 + 1112);
  v49 = *(v161 + 1088);
  v46 = *(v161 + 1096);
  MEMORY[0x277D82BD8](v102);
  v45(v42, v43);
  swift_beginAccess();
  swift_endAccess();
  v50 = *(v46 + 8);
  v50(v47, v49);
  v50(v48, v49);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](*(v161 + 696));
  v67 = v94;
LABEL_29:
  v21 = *(v161 + 1280);
  v24 = *(v161 + 1272);
  v25 = *(v161 + 1264);
  v26 = *(v161 + 1256);
  v27 = *(v161 + 1248);
  v28 = *(v161 + 1240);
  v29 = *(v161 + 1232);
  v30 = *(v161 + 1224);
  v31 = *(v161 + 1216);
  v32 = *(v161 + 1208);
  v33 = *(v161 + 1200);
  v34 = *(v161 + 1192);
  v35 = *(v161 + 1168);
  v36 = *(v161 + 1160);
  v37 = *(v161 + 1152);
  v38 = *(v161 + 1128);
  v39 = *(v161 + 1120);
  v40 = *(v161 + 1112);
  v41 = *(v161 + 1080);

  v22 = *(*(v161 + 672) + 8);
  v23 = *(v161 + 672);

  return v22(v67);
}

{
  v72 = v0;
  v1 = v0[194];
  v2 = *(v0 + 192);
  v42 = v2;
  *(v0 + 84) = v0;
  [v2 setAverage_];
  MEMORY[0x277D82BD8](v42);
  v43 = *(v0 + 195);
  v52 = *(v0 + 190);
  v49 = *(v0 + 141);
  v44 = *(v0 + 137);
  v47 = *(v0 + 136);
  swift_beginAccess();
  v57 = *(v0 + 87);
  MEMORY[0x277D82BE0](v57);
  swift_endAccess();
  v45 = [v52 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v48 = *(v44 + 8);
  v48(v49, v47);
  MEMORY[0x277D82BD8](v45);
  [v57 setSampleStartDate_];
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  swift_endAccess();
  v50 = [v52 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = Date._bridgeToObjectiveC()().super.isa;
  v48(v49, v47);
  MEMORY[0x277D82BD8](v50);
  [v57 setSampleEndDate_];
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  v64 = *(v0 + 163);
  v55 = *(v0 + 162);
  v56 = *(v0 + 161);
  v3 = *(v0 + 151);
  v54 = *(v0 + 147);
  v53 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v56(v3, v53, v54);
  swift_endAccess();
  MEMORY[0x277D82BE0](v57);
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  oslog = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for specialized implicit closure #12 in HealthKitFetcher.query(start:end:);
  *(v59 + 24) = v58;
  v62 = swift_allocObject();
  *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v62 + 24) = v59;
  _allocateUninitializedArray<A>(_:)();
  v63 = v4;

  *v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[1] = v60;

  v63[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[3] = v61;

  v63[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[5] = v62;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v66))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v39 = createStorage<A>(capacity:type:)(0);
    v40 = createStorage<A>(capacity:type:)(1);
    v67 = buf;
    v68 = v39;
    v69 = v40;
    serialize(_:at:)(2, &v67);
    serialize(_:at:)(1, &v67);
    v70 = partial apply for closure #1 in OSLogArguments.append(_:);
    v71 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
    if (v43)
    {
    }

    v70 = partial apply for closure #1 in OSLogArguments.append(_:);
    v71 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
    v70 = partial apply for closure #1 in OSLogArguments.append(_:);
    v71 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
    _os_log_impl(&dword_269912000, oslog, v66, "Returning response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v39, 0, v37);
    destroyStorage<A>(_:count:)(v40, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v18 = v41[175];
  v11 = v41[165];
  v12 = v41[164];
  v9 = v41[151];
  v10 = v41[147];
  v15 = v41[140];
  v14 = v41[139];
  v16 = v41[136];
  v13 = v41[137];
  MEMORY[0x277D82BD8](oslog);
  v12(v9, v10);
  swift_beginAccess();
  swift_endAccess();
  v17 = *(v13 + 8);
  v17(v14, v16);
  v17(v15, v16);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v41[87]);
  v6 = v41[160];
  v19 = v41[159];
  v20 = v41[158];
  v21 = v41[157];
  v22 = v41[156];
  v23 = v41[155];
  v24 = v41[154];
  v25 = v41[153];
  v26 = v41[152];
  v27 = v41[151];
  v28 = v41[150];
  v29 = v41[149];
  v30 = v41[146];
  v31 = v41[145];
  v32 = v41[144];
  v33 = v41[141];
  v34 = v41[140];
  v35 = v41[139];
  v36 = v41[135];

  v7 = *(v41[84] + 8);
  v8 = v41[84];

  return v7(v57);
}

{
  v7 = v0[167];
  v1 = v0[130];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v0[87]);
  v2 = v0[169];
  v3 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[157];
  v11 = v0[156];
  v12 = v0[155];
  v13 = v0[154];
  v14 = v0[153];
  v15 = v0[152];
  v16 = v0[151];
  v17 = v0[150];
  v18 = v0[149];
  v19 = v0[146];
  v20 = v0[145];
  v21 = v0[144];
  v22 = v0[141];
  v23 = v0[140];
  v24 = v0[139];
  v25 = v0[135];

  v4 = *(v0[84] + 8);
  v5 = v0[84];

  return v4();
}

{
  v61 = v0;
  v55 = v0[174];
  v54 = v0[130];
  v1 = v0[129];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v54);

  v0[175] = 0;
  v0[88] = 0;
  MEMORY[0x277D82BE0](0);
  v50 = v53[163];
  v38 = v53[162];
  v39 = v53[161];
  v2 = v53[149];
  v37 = v53[147];
  v43 = v53[132];
  v42 = v53[131];
  v41 = v53[130];
  v40 = v53[129];
  v36 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v39(v2, v36, v37);
  swift_endAccess();
  MEMORY[0x277D82BE0](v40);
  MEMORY[0x277D82BE0](v41);

  v44 = swift_allocObject();
  v44[2] = v40;
  v44[3] = v41;
  v44[4] = v42;
  v44[5] = v43;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v46 = swift_allocObject();
  *(v46 + 16) = 64;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:);
  *(v45 + 24) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v48 + 24) = v45;
  _allocateUninitializedArray<A>(_:)();
  v49 = v3;

  *v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49[1] = v46;

  v49[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v49[3] = v47;

  v49[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v49[5] = v48;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = createStorage<A>(capacity:type:)(0);
    v56 = v33;
    v57 = v34;
    v58 = v35;
    serialize(_:at:)(2, &v56);
    serialize(_:at:)(1, &v56);
    v59 = partial apply for closure #1 in OSLogArguments.append(_:);
    v60 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v59, &v56, &v57, &v58);
    v59 = partial apply for closure #1 in OSLogArguments.append(_:);
    v60 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v59, &v56, &v57, &v58);
    v59 = partial apply for closure #1 in OSLogArguments.append(_:);
    v60 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v59, &v56, &v57, &v58);
    _os_log_impl(&dword_269912000, v51, v52, "Failed to get units for %@", v33, 0xCu);
    destroyStorage<A>(_:count:)(v34, 1, v32);
    destroyStorage<A>(_:count:)(v35, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v33, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v4 = v53[166];
  v29 = v53[165];
  v30 = v53[164];
  v27 = v53[149];
  v28 = v53[147];
  MEMORY[0x277D82BD8](v51);
  v30(v27, v28);
  v31 = GetHealthQuantityIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v53[87]);
  v5 = v53[160];
  v9 = v53[159];
  v10 = v53[158];
  v11 = v53[157];
  v12 = v53[156];
  v13 = v53[155];
  v14 = v53[154];
  v15 = v53[153];
  v16 = v53[152];
  v17 = v53[151];
  v18 = v53[150];
  v19 = v53[149];
  v20 = v53[146];
  v21 = v53[145];
  v22 = v53[144];
  v23 = v53[141];
  v24 = v53[140];
  v25 = v53[139];
  v26 = v53[135];

  v6 = *(v53[84] + 8);
  v7 = v53[84];

  return v6(v31);
}

{
  v6 = v0[175];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v0[87]);
  v1 = v0[181];
  v2 = v0[160];
  v7 = v0[159];
  v8 = v0[158];
  v9 = v0[157];
  v10 = v0[156];
  v11 = v0[155];
  v12 = v0[154];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[151];
  v16 = v0[150];
  v17 = v0[149];
  v18 = v0[146];
  v19 = v0[145];
  v20 = v0[144];
  v21 = v0[141];
  v22 = v0[140];
  v23 = v0[139];
  v24 = v0[135];

  v3 = *(v0[84] + 8);
  v4 = v0[84];

  return v3();
}

{
  v11 = v0[175];
  v8 = v0[140];
  v1 = v0[139];
  v2 = v0[137];
  v9 = v0[136];
  v0[84] = v0;
  v10 = *(v2 + 8);
  v10(v1);
  (v10)(v8, v9);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[87]);
  v3 = v0[186];
  v4 = v0[160];
  v12 = v0[159];
  v13 = v0[158];
  v14 = v0[157];
  v15 = v0[156];
  v16 = v0[155];
  v17 = v0[154];
  v18 = v0[153];
  v19 = v0[152];
  v20 = v0[151];
  v21 = v0[150];
  v22 = v0[149];
  v23 = v0[146];
  v24 = v0[145];
  v25 = v0[144];
  v26 = v0[141];
  v27 = v0[140];
  v28 = v0[139];
  v29 = v0[135];

  v5 = *(v0[84] + 8);
  v6 = v0[84];

  return v5();
}

{
  v11 = v0[175];
  v8 = v0[140];
  v1 = v0[139];
  v2 = v0[137];
  v9 = v0[136];
  v0[84] = v0;
  v10 = *(v2 + 8);
  v10(v1);
  (v10)(v8, v9);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[87]);
  v3 = v0[191];
  v4 = v0[160];
  v12 = v0[159];
  v13 = v0[158];
  v14 = v0[157];
  v15 = v0[156];
  v16 = v0[155];
  v17 = v0[154];
  v18 = v0[153];
  v19 = v0[152];
  v20 = v0[151];
  v21 = v0[150];
  v22 = v0[149];
  v23 = v0[146];
  v24 = v0[145];
  v25 = v0[144];
  v26 = v0[141];
  v27 = v0[140];
  v28 = v0[139];
  v29 = v0[135];

  v5 = *(v0[84] + 8);
  v6 = v0[84];

  return v5();
}

{
  v1 = v0[192];
  v7 = v0[190];
  v13 = v0[175];
  v10 = v0[140];
  v9 = v0[139];
  v8 = v0[137];
  v11 = v0[136];
  v0[84] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  v12 = *(v8 + 8);
  v12(v9, v11);
  v12(v10, v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[87]);
  v2 = v0[195];
  v3 = v0[160];
  v14 = v0[159];
  v15 = v0[158];
  v16 = v0[157];
  v17 = v0[156];
  v18 = v0[155];
  v19 = v0[154];
  v20 = v0[153];
  v21 = v0[152];
  v22 = v0[151];
  v23 = v0[150];
  v24 = v0[149];
  v25 = v0[146];
  v26 = v0[145];
  v27 = v0[144];
  v28 = v0[141];
  v29 = v0[140];
  v30 = v0[139];
  v31 = v0[135];

  v4 = *(v0[84] + 8);
  v5 = v0[84];

  return v4();
}