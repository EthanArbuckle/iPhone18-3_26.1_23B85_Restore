uint64_t implicit closure #1 in MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(void *a1)
{
  v2 = [a1 medicationIdentifier];
  v3 = [v2 underlyingIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v2);
  v4 = String.init<A>(describing:)();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t protocol witness for MedsUndoing.undo(matchingMeds:) in conformance MedsUndoer(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return MedsUndoer.undo(matchingMeds:)(a1, v6, v7);
}

uint64_t sub_269967304()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in UndoMedsIntentHandler.handle(intent:)()
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

  return @objc closure #1 in UndoMedsIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t sub_269967450()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269967490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  v1 = lazy protocol witness table accessor for type [MatchedMedName] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [MatchedMedName] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269967618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269967658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKMedicationExposableDoseEvent()
{
  v2 = lazy cache variable for type metadata for HKMedicationExposableDoseEvent;
  if (!lazy cache variable for type metadata for HKMedicationExposableDoseEvent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationExposableDoseEvent);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26996773C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699677DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26996781C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>()
{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin;
  if (!lazy protocol witness table cache variable for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin)
  {
    type metadata accessor for HKMedicationDoseEventLogOrigin();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_269967D88()
{
  v3 = *(type metadata accessor for UUID() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(v3, a1);
}

uint64_t sub_269967EC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for UUID();
  v1 = lazy protocol witness table accessor for type UUID and conformance UUID();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v1 = lazy protocol witness table accessor for type [String] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v1 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for DateInterval();
  v1 = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSSgGMd, &_sShySSSgGMR);
  v1 = lazy protocol witness table accessor for type Set<String?> and conformance Set<A>();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26996803C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26996807C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699681A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699681E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of (String?, String?)(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

void *outlined init with copy of String?(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MedsUndoer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MedsUndoer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

Swift::Bool __swiftcall validateQuantity(identifier:quantity:)(HKQuantityTypeIdentifier identifier, HKQuantity quantity)
{
  isa = quantity.super.isa;
  v154 = identifier;
  v166 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v153 = 0;
  v176 = 0;
  v175 = 0;
  v156 = type metadata accessor for Logger();
  v157 = *(v156 - 8);
  v158 = v157;
  v159 = *(v157 + 64);
  v2 = MEMORY[0x28223BE20](v154);
  v161 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = &v50 - v161;
  v3 = MEMORY[0x28223BE20](v2);
  v162 = &v50 - v161;
  v184 = v3;
  v183 = v4;
  v163 = HKQuantityTypeIdentifier.rawValue.getter(v3);
  v165 = v5;

  v167 = MEMORY[0x26D6492A0](v163, v165);
  v164 = v167;
  v6 = v167;

  v182 = v167;
  type metadata accessor for HKQuantityType();
  v168 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v168)
  {
    v152 = v168;
    v112 = v168;
    v176 = v168;
    v109 = 0;
    type metadata accessor for HKManualEntryValidationController();
    v7 = NSDateFormatter.__allocating_init()();
    v8 = v162;
    v107 = v7;
    v114 = [v7 validateQuantity:isa ofType:v112];
    v108 = v114;

    v175 = v114;
    v110 = Logger.wellnessIntents.unsafeMutableAddressor();
    v128 = 32;
    v133 = 32;
    v111 = &v174;
    swift_beginAccess();
    (*(v158 + 16))(v8, v110, v156);
    swift_endAccess();
    v9 = isa;
    v113 = 24;
    v134 = 7;
    v10 = swift_allocObject();
    v11 = v112;
    v119 = v10;
    *(v10 + 16) = isa;
    v12 = v11;
    v125 = swift_allocObject();
    *(v125 + 16) = v112;
    v135 = swift_allocObject();
    *(v135 + 16) = v114;
    v151 = Logger.logObject.getter();
    v115 = v151;
    v150 = static os_log_type_t.debug.getter();
    v116 = v150;
    v129 = 17;
    v138 = swift_allocObject();
    v117 = v138;
    v122 = 64;
    *(v138 + 16) = 64;
    v139 = swift_allocObject();
    v118 = v139;
    v131 = 8;
    *(v139 + 16) = 8;
    v13 = swift_allocObject();
    v14 = v119;
    v120 = v13;
    *(v13 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v120;
    v140 = v15;
    v121 = v15;
    *(v15 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v15 + 24) = v16;
    v141 = swift_allocObject();
    v123 = v141;
    *(v141 + 16) = v122;
    v142 = swift_allocObject();
    v124 = v142;
    *(v142 + 16) = v131;
    v17 = swift_allocObject();
    v18 = v125;
    v126 = v17;
    *(v17 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v126;
    v143 = v19;
    v127 = v19;
    *(v19 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v19 + 24) = v20;
    v144 = swift_allocObject();
    v130 = v144;
    *(v144 + 16) = v128;
    v145 = swift_allocObject();
    v132 = v145;
    *(v145 + 16) = v131;
    v21 = swift_allocObject();
    v22 = v135;
    v136 = v21;
    *(v21 + 16) = partial apply for implicit closure #3 in validateQuantity(identifier:quantity:);
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v136;
    v148 = v23;
    v137 = v23;
    *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v23 + 24) = v24;
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v146 = _allocateUninitializedArray<A>(_:)();
    v147 = v25;

    v26 = v138;
    v27 = v147;
    *v147 = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[1] = v26;

    v28 = v139;
    v29 = v147;
    v147[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v29[3] = v28;

    v30 = v140;
    v31 = v147;
    v147[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[5] = v30;

    v32 = v141;
    v33 = v147;
    v147[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v33[7] = v32;

    v34 = v142;
    v35 = v147;
    v147[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[9] = v34;

    v36 = v143;
    v37 = v147;
    v147[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[11] = v36;

    v38 = v144;
    v39 = v147;
    v147[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[13] = v38;

    v40 = v145;
    v41 = v147;
    v147[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v41[15] = v40;

    v42 = v147;
    v43 = v148;
    v147[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v42[17] = v43;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v151, v150))
    {
      v44 = v153;
      v100 = static UnsafeMutablePointer.allocate(capacity:)();
      v97 = v100;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v102 = 2;
      v101 = createStorage<A>(capacity:type:)(2);
      v99 = v101;
      v103 = createStorage<A>(capacity:type:)(1);
      v173[0] = v100;
      v172 = v101;
      v171 = v103;
      v104 = v173;
      serialize(_:at:)(v102, v173);
      serialize(_:at:)(3, v104);
      v169 = partial apply for closure #1 in OSLogArguments.append(_:);
      v170 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v169, v104, &v172, &v171);
      v105 = v44;
      v106 = v44;
      if (v44)
      {
        v95 = 0;

        __break(1u);
      }

      else
      {
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v118;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v93 = 0;
        v94 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v121;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v91 = 0;
        v92 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v123;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v89 = 0;
        v90 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v124;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v87 = 0;
        v88 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v127;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v85 = 0;
        v86 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v130;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v83 = 0;
        v84 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v132;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v81 = 0;
        v82 = 0;
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v137;
        closure #1 in osLogInternal(_:log:type:)(&v169, v173, &v172, &v171);
        v79 = 0;
        v80 = 0;
        _os_log_impl(&dword_269912000, v115, v116, "%@ for %@ returned validation result: %s", v97, 0x20u);
        destroyStorage<A>(_:count:)(v99, 2, v98);
        destroyStorage<A>(_:count:)(v103, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v97, MEMORY[0x277D84B78]);

        v96 = v79;
      }
    }

    else
    {
      v45 = v153;

      v96 = v45;
    }

    v76 = v96;

    (*(v158 + 8))(v162, v156);
    v173[2] = v108;
    v173[1] = 2;
    v74 = type metadata accessor for HKManualEntryValidationResult();
    lazy protocol witness table accessor for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult();
    v75 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;

    v77 = v75;
    v78 = v76;
  }

  else
  {
    v46 = v160;
    v66 = Logger.wellnessIntents.unsafeMutableAddressor();
    v67 = &v181;
    v70 = 0;
    swift_beginAccess();
    (*(v158 + 16))(v46, v66, v156);
    swift_endAccess();
    v72 = Logger.logObject.getter();
    v68 = v72;
    v71 = static os_log_type_t.error.getter();
    v69 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v73 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v72, v71))
    {
      v47 = v153;
      v57 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = v57;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v55 = 0;
      v58 = createStorage<A>(capacity:type:)(0);
      v56 = v58;
      v59 = createStorage<A>(capacity:type:)(v55);
      v180 = v57;
      v179 = v58;
      v178 = v59;
      v60 = 0;
      v61 = &v180;
      serialize(_:at:)(0, &v180);
      serialize(_:at:)(v60, v61);
      v177 = v73;
      v62 = &v50;
      MEMORY[0x28223BE20](&v50);
      v63 = &v50 - 6;
      *(&v50 - 4) = v48;
      *(&v50 - 3) = &v179;
      *(&v50 - 2) = &v178;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v65 = v47;
      if (v47)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v68, v69, "Couldn't create a HKQuantityType in validateQuantity(identifier: HKQuantityTypeIdentifier, quantity: HKQuantity). Returning false.", v53, 2u);
        v51 = 0;
        destroyStorage<A>(_:count:)(v56, 0, v54);
        destroyStorage<A>(_:count:)(v59, v51, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);

        v52 = v65;
      }
    }

    else
    {

      v52 = v153;
    }

    v50 = v52;

    (*(v158 + 8))(v160, v156);
    v77 = 0;
    v78 = v50;
  }

  return v77 & 1;
}

uint64_t HKQuantityTypeIdentifier.rawValue.getter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  return v3;
}

unint64_t type metadata accessor for HKManualEntryValidationController()
{
  v2 = lazy cache variable for type metadata for HKManualEntryValidationController;
  if (!lazy cache variable for type metadata for HKManualEntryValidationController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKManualEntryValidationController);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269969D84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269969DC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269969E5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269969E9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269969F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269969F74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id GetMenstruationPredictionIntentHandler.init(store:)(uint64_t *a1)
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
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for CycleTrackingFetcher;
    __dst[4] = &protocol witness table for CycleTrackingFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents38GetMenstruationPredictionIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

SiriWellnessIntents::CycleTrackingFetcher __swiftcall CycleTrackingFetcher.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

uint64_t GetMenstruationPredictionIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[16] = v1;
  v2[15] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v2[13] = a1;
  v2[14] = v1;
  v3 = v2[12];
  return MEMORY[0x2822009F8](GetMenstruationPredictionIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 144);
  *(v6 + 96) = *v1;
  *(v6 + 152) = a1;

  v4 = *(v6 + 96);

  return MEMORY[0x2822009F8](GetMenstruationPredictionIntentHandler.handle(intent:), 0);
}

uint64_t GetMenstruationPredictionIntentHandler.handle(intent:)()
{
  v1 = v0[16];
  v0[12] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents38GetMenstruationPredictionIntentHandler_store, (v0 + 2));
  v8 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = *(*(v6 + 8) + 4);
  v3 = swift_task_alloc();
  *(v5 + 136) = v3;
  *v3 = *(v5 + 96);
  v3[1] = GetMenstruationPredictionIntentHandler.handle(intent:);

  return v7(v8, v6);
}

{
  v13 = *(v0 + 160);
  *(v0 + 96) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v13)
  {
    v7 = v12[15];
    outlined init with copy of QuantityPersisting(v12[16] + OBJC_IVAR____TtC19SiriWellnessIntents38GetMenstruationPredictionIntentHandler_store, (v12 + 7));
    v8 = v12[10];
    v9 = v12[11];
    __swift_project_boxed_opaque_existential_1(v12 + 7, v8);
    v11 = [v7 projectionFocus];
    v10 = (*(v9 + 16) + **(v9 + 16));
    v1 = *(*(v9 + 16) + 4);
    v2 = swift_task_alloc();
    v12[18] = v2;
    *v2 = v12[12];
    v2[1] = GetMenstruationPredictionIntentHandler.handle(intent:);

    return v10(v11, v8, v9);
  }

  else
  {
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v4 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    v5 = *(v12[12] + 8);
    v6 = v12[12];

    return v5(v4);
  }
}

{
  v0[12] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[19];
  v2 = *(v0[12] + 8);
  v3 = v0[12];

  return v2(v1);
}

uint64_t GetMenstruationPredictionIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 136);
  *(v6 + 96) = *v1;
  *(v6 + 160) = a1;

  v4 = *(v6 + 96);

  return MEMORY[0x2822009F8](GetMenstruationPredictionIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return GetMenstruationPredictionIntentHandler.handle(intent:)(a1);
}

uint64_t sub_26996AA88()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:)()
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

  return @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:)(v7, v5, v6);
}

id GetMenstruationPredictionIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CycleTrackingFetcher.isReadingAuthorized()(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  MEMORY[0x277D82BE0](a1);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(a1);
}

uint64_t CycleTrackingFetcher.isReadingAuthorized()(unsigned int a1)
{
  v6 = *v1;
  v2 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(v6 + 16) = *v1;

  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

uint64_t CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  v3 = v2[2];
  return MEMORY[0x2822009F8](CycleTrackingFetcher.query(projectionFocus:), 0);
}

uint64_t CycleTrackingFetcher.query(projectionFocus:)()
{
  v6 = v0[7];
  v7 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(projectionFocus:)", 0x17uLL, 1);
  v0[8] = v1._object;
  MEMORY[0x277D82BE0](v6);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v8 + 80) = v3;
  MenstruationPredictionIntentResponse = type metadata accessor for GetMenstruationPredictionIntentResponse();
  *v3 = *(v8 + 16);
  v3[1] = CycleTrackingFetcher.query(projectionFocus:);

  return MEMORY[0x2822007B8](v8 + 40, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in CycleTrackingFetcher.query(projectionFocus:), v9, MenstruationPredictionIntentResponse);
}

{
  v7 = *v0;
  v1 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  *(v7 + 16) = *v0;

  v2 = *(v7 + 16);

  return MEMORY[0x2822009F8](CycleTrackingFetcher.query(projectionFocus:), 0);
}

{
  *(v0 + 16) = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);
  return v2(v1);
}

uint64_t closure #1 in CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6[1] = a1;
  v15 = a2;
  v16 = a3;
  v14 = partial apply for closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:);
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR);
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = v9;
  v8 = *(v9 + 64);
  MEMORY[0x28223BE20](v13);
  v12 = v6 - v3;
  v20 = v4;
  v19 = v15;
  v18 = v16;
  (*(v9 + 16))();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v11, v12, v13);
  CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:)(v16, v14, v17, v15);
}

uint64_t closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v46 = a3;
  v45 = a2;
  v47 = a1;
  v61 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v40 = 0;
  v57 = type metadata accessor for Logger();
  v41 = v57;
  v42 = *(v57 - 8);
  v55 = v42;
  v43 = v42;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v47);
  v51 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v51;
  v76 = v5;
  v74 = v7;
  v75 = v8;
  v73 = v9;
  v10 = v9;
  v11 = v54;

  v12 = v54;
  v13 = swift_allocObject();
  v14 = v45;
  v15 = v46;
  v16 = v47;
  v17 = v54;
  v50 = v13;
  v48 = v13;
  v13[2] = v54;
  v13[3] = v14;
  v13[4] = v15;
  v13[5] = v17;
  v13[6] = v16;
  v49 = partial apply for closure #1 in CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:);
  v71 = partial apply for closure #1 in CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:);
  v72 = v13;

  type metadata accessor for HKMCAnalysisQuery();

  v18 = HKMCAnalysisQuery.__allocating_init(updateHandler:)(v49, v50);
  v19 = v51;
  v53 = v18;
  v52 = v18;
  v70 = v18;
  v20 = v54;
  [v54 executeQuery_];

  v56 = Logger.wellnessIntents.unsafeMutableAddressor();
  v58 = &v69;
  swift_beginAccess();
  (*(v55 + 16))(v19, v56, v57);
  swift_endAccess();
  v63 = Logger.logObject.getter();
  v59 = v63;
  v62 = static os_log_type_t.debug.getter();
  v60 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v64 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v63, v62))
  {
    v21 = v40;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = 0;
    v32 = createStorage<A>(capacity:type:)(0);
    v30 = v32;
    v33 = createStorage<A>(capacity:type:)(v29);
    v68 = v31;
    v67 = v32;
    v66 = v33;
    v34 = 0;
    v35 = &v68;
    serialize(_:at:)(0, &v68);
    serialize(_:at:)(v34, v35);
    v65 = v64;
    v36 = &v24;
    MEMORY[0x28223BE20](&v24);
    v37 = &v24 - 6;
    *(&v24 - 4) = v22;
    *(&v24 - 3) = &v67;
    *(&v24 - 2) = &v66;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v39 = v21;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v59, v60, "Querying menstrual cycles", v27, 2u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v33, v25, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v27, MEMORY[0x277D84B78]);

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v43 + 8))(v44, v41);
}

uint64_t closure #1 in CycleTrackingFetcher.queryCycleTrackingData(projectionFocus:completion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v155 = a8;
  v154 = a7;
  v153 = a6;
  v152 = a5;
  v157 = a4;
  v167 = a3;
  v158 = a2;
  v156 = a1;
  v150 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v187 = 0;
  v151 = 0;
  v177 = 0;
  v176 = 0;
  v174 = 0;
  v159 = type metadata accessor for Logger();
  v160 = *(v159 - 8);
  v161 = v160;
  v163 = *(v160 + 64);
  v8 = MEMORY[0x28223BE20](v157);
  v165 = (v163 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v45 - v165;
  v9 = MEMORY[0x28223BE20](v8);
  v164 = &v45 - v165;
  v10 = MEMORY[0x28223BE20](v9);
  v166 = &v45 - v165;
  v197 = v11;
  v196 = v12;
  v195 = v13;
  v194 = v10;
  v192 = v14;
  v193 = v15;
  v191 = v16;
  v190 = v17;
  [v10 stopQuery_];
  v18 = v167;
  if (v167)
  {
    v149 = v167;
    v20 = v166;
    v129 = v167;
    v174 = v167;
    v127 = Logger.wellnessIntents.unsafeMutableAddressor();
    v135 = 32;
    v128 = &v173;
    swift_beginAccess();
    (*(v161 + 16))(v20, v127, v159);
    swift_endAccess();
    v21 = v129;
    v136 = 7;
    v137 = swift_allocObject();
    *(v137 + 16) = v129;
    v147 = Logger.logObject.getter();
    v130 = v147;
    v146 = static os_log_type_t.error.getter();
    v131 = v146;
    v132 = 17;
    v140 = swift_allocObject();
    v133 = v140;
    *(v140 + 16) = 64;
    v141 = swift_allocObject();
    v134 = v141;
    *(v141 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v137;
    v138 = v22;
    *(v22 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v138;
    v144 = v24;
    v139 = v24;
    *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v24 + 24) = v25;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v142 = _allocateUninitializedArray<A>(_:)();
    v143 = v26;

    v27 = v140;
    v28 = v143;
    *v143 = partial apply for closure #1 in OSLogArguments.append(_:);
    v28[1] = v27;

    v29 = v141;
    v30 = v143;
    v143[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v29;

    v31 = v143;
    v32 = v144;
    v143[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[5] = v32;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v147, v146))
    {
      v34 = v151;
      v120 = static UnsafeMutablePointer.allocate(capacity:)();
      v117 = v120;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v123 = 1;
      v121 = createStorage<A>(capacity:type:)(1);
      v119 = v121;
      v122 = createStorage<A>(capacity:type:)(0);
      v172 = v120;
      v171 = v121;
      v170 = v122;
      v124 = &v172;
      serialize(_:at:)(2, &v172);
      serialize(_:at:)(v123, v124);
      v168 = partial apply for closure #1 in OSLogArguments.append(_:);
      v169 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v168, v124, &v171, &v170);
      v125 = v34;
      v126 = v34;
      if (v34)
      {
        v115 = 0;

        __break(1u);
      }

      else
      {
        v168 = partial apply for closure #1 in OSLogArguments.append(_:);
        v169 = v134;
        closure #1 in osLogInternal(_:log:type:)(&v168, &v172, &v171, &v170);
        v113 = 0;
        v114 = 0;
        v168 = partial apply for closure #1 in OSLogArguments.append(_:);
        v169 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v168, &v172, &v171, &v170);
        v111 = 0;
        v112 = 0;
        _os_log_impl(&dword_269912000, v130, v131, "Failed to query menstrual cycle analysis: %@", v117, 0xCu);
        destroyStorage<A>(_:count:)(v119, 1, v118);
        destroyStorage<A>(_:count:)(v122, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v117, MEMORY[0x277D84B78]);

        v116 = v111;
      }
    }

    else
    {
      v35 = v151;

      v116 = v35;
    }

    v109 = v116;

    (*(v161 + 8))(v166, v159);

    v107 = 0;
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v108 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(5, v107);
    v152();

    return v109;
  }

  v19 = v158;
  if (v158)
  {
    v148 = v158;
    v104 = v158;
    v105 = [v158 menstruationProjectionsEnabled];

    v106 = v105;
  }

  else
  {
    v106 = 2;
  }

  v102 = v106;
  v103 = &v189;
  v188[30] = v106;
  v189 = 1;
  if (v106 != 2)
  {
    v175 = v102;
    if (*v103 != 2)
    {
      v101 = v175 ^ *v103 ^ 1;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (*v103 != 2)
  {
LABEL_20:
    v101 = 0;
    goto LABEL_18;
  }

  v101 = 1;
LABEL_18:
  if (v101)
  {
    v36 = v158;
    if (v158)
    {
      v100 = v158;
      v91 = v158;
      v177 = v158;
      v90 = CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)(v158, v155, v154);
      v176 = v90;

      (v152)(v90);

      return v151;
    }

    else
    {
      v37 = v164;
      v92 = Logger.wellnessIntents.unsafeMutableAddressor();
      v93 = &v182;
      v96 = 0;
      swift_beginAccess();
      (*(v161 + 16))(v37, v92, v159);
      swift_endAccess();
      v98 = Logger.logObject.getter();
      v94 = v98;
      v97 = static os_log_type_t.debug.getter();
      v95 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v99 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v98, v97))
      {
        v38 = v151;
        v81 = static UnsafeMutablePointer.allocate(capacity:)();
        v77 = v81;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v79 = 0;
        v82 = createStorage<A>(capacity:type:)(0);
        v80 = v82;
        v83 = createStorage<A>(capacity:type:)(v79);
        v181 = v81;
        v180 = v82;
        v179 = v83;
        v84 = 0;
        v85 = &v181;
        serialize(_:at:)(0, &v181);
        serialize(_:at:)(v84, v85);
        v178 = v99;
        v86 = &v45;
        MEMORY[0x28223BE20](&v45);
        v87 = &v45 - 6;
        *(&v45 - 4) = v39;
        *(&v45 - 3) = &v180;
        *(&v45 - 2) = &v179;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v89 = v38;
        if (v38)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v94, v95, "No menstrual cycle analysis found", v77, 2u);
          v75 = 0;
          destroyStorage<A>(_:count:)(v80, 0, v78);
          destroyStorage<A>(_:count:)(v83, v75, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v77, MEMORY[0x277D84B78]);

          v76 = v89;
        }
      }

      else
      {

        v76 = v151;
      }

      v74 = v76;

      (*(v161 + 8))(v164, v159);

      v72 = 0;
      type metadata accessor for GetMenstruationPredictionIntentResponse();
      v73 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(102, v72);
      v152();

      return v74;
    }
  }

  else
  {
    v40 = v162;
    v64 = Logger.wellnessIntents.unsafeMutableAddressor();
    v65 = v188;
    v68 = 0;
    swift_beginAccess();
    (*(v161 + 16))(v40, v64, v159);
    swift_endAccess();
    v70 = Logger.logObject.getter();
    v66 = v70;
    v69 = static os_log_type_t.error.getter();
    v67 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v71 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v70, v69))
    {
      v42 = v151;
      v55 = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = v55;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v53 = 0;
      v56 = createStorage<A>(capacity:type:)(0);
      v54 = v56;
      v57 = createStorage<A>(capacity:type:)(v53);
      v186 = v55;
      v185 = v56;
      v184 = v57;
      v58 = 0;
      v59 = &v186;
      serialize(_:at:)(0, &v186);
      serialize(_:at:)(v58, v59);
      v183 = v71;
      v60 = &v45;
      MEMORY[0x28223BE20](&v45);
      v61 = &v45 - 6;
      *(&v45 - 4) = v43;
      *(&v45 - 3) = &v185;
      *(&v45 - 2) = &v184;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v63 = v42;
      if (v42)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v66, v67, "Predictions are not enabled", v51, 2u);
        v49 = 0;
        destroyStorage<A>(_:count:)(v54, 0, v52);
        destroyStorage<A>(_:count:)(v57, v49, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v51, MEMORY[0x277D84B78]);

        v50 = v63;
      }
    }

    else
    {

      v50 = v151;
    }

    v48 = v50;

    (*(v161 + 8))(v162, v159);
    v46 = 0;
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v47 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(103, v46);
    v187 = v47;

    (v152)(v47);

    return v48;
  }
}

uint64_t CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)(void *a1, _BYTE *a2, uint64_t a3)
{
  v439 = a3;
  v440 = a2;
  v465 = a1;
  v456 = 0;
  v562 = 0;
  v561 = 0;
  v560 = 0;
  v559 = 0;
  v558 = 0;
  v557 = 0;
  v556 = 0;
  v555 = 0;
  v553 = 0;
  v408 = 0;
  v545 = 0;
  v544 = 0;
  v541 = 0;
  v540 = 0;
  v529 = 0;
  v524 = 0;
  v522 = 0;
  v521 = 0;
  v520 = 0;
  v409 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v410 = &v125 - v409;
  v411 = type metadata accessor for Date();
  v412 = *(v411 - 8);
  v413 = v412;
  v3 = *(v412 + 64);
  MEMORY[0x28223BE20](v411 - 8);
  v414 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64);
  v5 = MEMORY[0x28223BE20](v456);
  v418 = (v416 + 15) & 0xFFFFFFFFFFFFFFF0;
  v415 = &v125 - v418;
  v6 = MEMORY[0x28223BE20](v5);
  v417 = &v125 - v418;
  MEMORY[0x28223BE20](v6);
  v419 = &v125 - v418;
  v420 = type metadata accessor for DateInterval();
  v421 = *(v420 - 8);
  v422 = v421;
  v424 = *(v421 + 64);
  v7 = MEMORY[0x28223BE20](v456);
  v426 = (v424 + 15) & 0xFFFFFFFFFFFFFFF0;
  v423 = &v125 - v426;
  v562 = &v125 - v426;
  v8 = MEMORY[0x28223BE20](v7);
  v425 = &v125 - v426;
  v561 = &v125 - v426;
  MEMORY[0x28223BE20](v8);
  v427 = &v125 - v426;
  v560 = &v125 - v426;
  v428 = type metadata accessor for Calendar.Identifier();
  v429 = *(v428 - 8);
  v430 = v429;
  v9 = *(v429 + 64);
  MEMORY[0x28223BE20](v456);
  v431 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = type metadata accessor for Calendar();
  v433 = *(v432 - 8);
  v434 = v433;
  v435 = *(v433 + 64);
  v11 = MEMORY[0x28223BE20](v456);
  v437 = (v435 + 15) & 0xFFFFFFFFFFFFFFF0;
  v436 = &v125 - v437;
  MEMORY[0x28223BE20](v11);
  v438 = &v125 - v437;
  v559 = &v125 - v437;
  v459 = type metadata accessor for Logger();
  v441 = v459;
  v442 = *(v459 - 8);
  v457 = v442;
  v443 = v442;
  v448 = *(v442 + 64);
  v12 = MEMORY[0x28223BE20](v465);
  v450 = (v448 + 15) & 0xFFFFFFFFFFFFFFF0;
  v444 = &v125 - v450;
  v13 = MEMORY[0x28223BE20](v12);
  v445 = &v125 - v450;
  v14 = MEMORY[0x28223BE20](v13);
  v446 = &v125 - v450;
  v15 = MEMORY[0x28223BE20](v14);
  v447 = &v125 - v450;
  v16 = MEMORY[0x28223BE20](v15);
  v449 = &v125 - v450;
  v17 = MEMORY[0x28223BE20](v16);
  v18 = &v125 - v450;
  v451 = &v125 - v450;
  v558 = v17;
  v557 = v19;
  v556 = v20;
  v455 = [v17 menstruationProjections];
  v453 = type metadata accessor for HKMCProjection();
  v452 = v453;
  v454 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v463 = MEMORY[0x26D6494A0](v454, v453);
  v555 = v463;

  v458 = Logger.wellnessIntents.unsafeMutableAddressor();
  v474 = 32;
  v479 = 32;
  v462 = &v554;
  swift_beginAccess();
  v460 = *(v457 + 16);
  v461 = (v457 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v460(v18, v458, v459);
  swift_endAccess();
  v464 = 24;
  v480 = 7;
  v21 = swift_allocObject();
  v22 = v465;
  v471 = v21;
  *(v21 + 16) = v463;
  v23 = v22;
  v466 = swift_allocObject();
  *(v466 + 16) = v465;

  v24 = swift_allocObject();
  v25 = v466;
  v481 = v24;
  *(v24 + 16) = partial apply for implicit closure #2 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
  *(v24 + 24) = v25;

  v495 = Logger.logObject.getter();
  v467 = v495;
  v494 = static os_log_type_t.debug.getter();
  v468 = v494;
  v475 = 17;
  v485 = swift_allocObject();
  v469 = v485;
  *(v485 + 16) = 0;
  v486 = swift_allocObject();
  v470 = v486;
  v477 = 8;
  *(v486 + 16) = 8;
  v26 = swift_allocObject();
  v27 = v471;
  v472 = v26;
  *(v26 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v472;
  v487 = v28;
  v473 = v28;
  *(v28 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v28 + 24) = v29;
  v488 = swift_allocObject();
  v476 = v488;
  *(v488 + 16) = v474;
  v489 = swift_allocObject();
  v478 = v489;
  *(v489 + 16) = v477;
  v30 = swift_allocObject();
  v31 = v481;
  v482 = v30;
  *(v30 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v482;
  v492 = v32;
  v483 = v32;
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v33;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v484 = v493;
  v490 = _allocateUninitializedArray<A>(_:)();
  v491 = v34;

  v35 = v485;
  v36 = v491;
  *v491 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v35;

  v37 = v486;
  v38 = v491;
  v491[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v38[3] = v37;

  v39 = v487;
  v40 = v491;
  v491[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v40[5] = v39;

  v41 = v488;
  v42 = v491;
  v491[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[7] = v41;

  v43 = v489;
  v44 = v491;
  v491[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v44[9] = v43;

  v45 = v491;
  v46 = v492;
  v491[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v45[11] = v46;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v495, v494))
  {
    v47 = v408;
    v401 = static UnsafeMutablePointer.allocate(capacity:)();
    v398 = v401;
    v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v402 = createStorage<A>(capacity:type:)(0);
    v400 = v402;
    v403 = createStorage<A>(capacity:type:)(1);
    v500 = v401;
    v499 = v402;
    v498 = v403;
    v404 = 2;
    v405 = &v500;
    serialize(_:at:)(2, &v500);
    serialize(_:at:)(v404, v405);
    v496 = partial apply for closure #1 in OSLogArguments.append(_:);
    v497 = v469;
    closure #1 in osLogInternal(_:log:type:)(&v496, v405, &v499, &v498);
    v406 = v47;
    v407 = v47;
    if (v47)
    {
      v396 = 0;

      __break(1u);
    }

    else
    {
      v496 = partial apply for closure #1 in OSLogArguments.append(_:);
      v497 = v470;
      closure #1 in osLogInternal(_:log:type:)(&v496, &v500, &v499, &v498);
      v394 = 0;
      v395 = 0;
      v496 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v497 = v473;
      closure #1 in osLogInternal(_:log:type:)(&v496, &v500, &v499, &v498);
      v392 = 0;
      v393 = 0;
      v496 = partial apply for closure #1 in OSLogArguments.append(_:);
      v497 = v476;
      closure #1 in osLogInternal(_:log:type:)(&v496, &v500, &v499, &v498);
      v390 = 0;
      v391 = 0;
      v496 = partial apply for closure #1 in OSLogArguments.append(_:);
      v497 = v478;
      closure #1 in osLogInternal(_:log:type:)(&v496, &v500, &v499, &v498);
      v388 = 0;
      v389 = 0;
      v496 = partial apply for closure #1 in OSLogArguments.append(_:);
      v497 = v483;
      closure #1 in osLogInternal(_:log:type:)(&v496, &v500, &v499, &v498);
      v386 = 0;
      v387 = 0;
      _os_log_impl(&dword_269912000, v467, v468, "Found %ld projections in %s", v398, 0x16u);
      destroyStorage<A>(_:count:)(v400, 0, v399);
      destroyStorage<A>(_:count:)(v403, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v398, MEMORY[0x277D84B78]);

      v397 = v386;
    }
  }

  else
  {
    v48 = v408;

    v397 = v48;
  }

  v49 = v436;
  v50 = v397;

  v374 = *(v443 + 8);
  v375 = (v443 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v374(v451, v441);
  (*(v430 + 104))(v431, *MEMORY[0x277CC9830], v428);
  Calendar.init(identifier:)();
  (*(v430 + 8))(v431, v428);
  (*(v434 + 16))(v49, v438, v432);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v376 = *(v434 + 8);
  v377 = (v434 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v376(v436, v432);
  v381 = HKMCTodayIndex();
  v379 = v381;

  v553 = v381;
  v380 = [v465 menstruationProjections];
  v551 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v382 = &v125;
  v51 = MEMORY[0x28223BE20](v381);
  v383 = &v125 - 4;
  *(&v125 - 2) = v51;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
  lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]();
  Sequence.first(where:)();
  v385 = v50;
  if (v50)
  {
    result = v382;
    __break(1u);
  }

  else
  {
    outlined destroy of [HKQuantityType](&v551);

    v373 = v552;
    if (!v552)
    {
      v122 = v444;
      v144 = Logger.wellness.unsafeMutableAddressor();
      v145 = &v550;
      v147 = 0;
      swift_beginAccess();
      v460(v122, v144, v441);
      swift_endAccess();
      v150 = Logger.logObject.getter();
      v146 = v150;
      v149 = static os_log_type_t.error.getter();
      v148 = v149;
      v151 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v150, v149))
      {
        v123 = v385;
        v135 = static UnsafeMutablePointer.allocate(capacity:)();
        v131 = v135;
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v133 = 0;
        v136 = createStorage<A>(capacity:type:)(0);
        v134 = v136;
        v137 = createStorage<A>(capacity:type:)(v133);
        v549 = v135;
        v548 = v136;
        v547 = v137;
        v138 = 0;
        v139 = &v549;
        serialize(_:at:)(0, &v549);
        serialize(_:at:)(v138, v139);
        v546 = v151;
        v140 = &v125;
        MEMORY[0x28223BE20](&v125);
        v141 = &v125 - 6;
        *(&v125 - 4) = v124;
        *(&v125 - 3) = &v548;
        *(&v125 - 2) = &v547;
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v143 = v123;
        if (v123)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v146, v148, "Found no usable projections in the analysis", v131, 2u);
          v129 = 0;
          destroyStorage<A>(_:count:)(v134, 0, v132);
          destroyStorage<A>(_:count:)(v137, v129, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v131, MEMORY[0x277D84B78]);

          v130 = v143;
        }
      }

      else
      {

        v130 = v385;
      }

      v128 = v130;

      v374(v444, v441);
      v126 = 0;
      type metadata accessor for GetMenstruationPredictionIntentResponse();
      v127 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(102, v126);
      v376(v438, v432);
      v152 = v127;
      v153 = v128;
      return v152;
    }

    v372 = v373;
    v368 = v373;
    v545 = v373;
    v367 = 0;
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v369 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(4, v367);
    v544 = v369;
    v52 = [v368 mostLikelyDays];
    v543 = v53;
    v542 = v52;
    Calendar.dateInterval(for:)(v52, v53, v419);
    v370 = *(v422 + 48);
    v371 = (v422 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v370(v419, 1, v420) == 1)
    {
      outlined destroy of DateInterval?(v419);
      v366 = v385;
LABEL_60:
      v183 = v366;
      v184 = [v465 cycles];
      if (v184)
      {
        v182 = v184;
        v179 = v184;
        v178 = type metadata accessor for HKMCCycle();
        v180 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v181 = v180;
      }

      else
      {
        v181 = 0;
      }

      v177 = v181;
      if (!v181)
      {
        goto LABEL_75;
      }

      v176 = v177;
      v173 = v177;
      v539 = v177;
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9HKMCCycleCGMd, &_sSaySo9HKMCCycleCGMR);
      lazy protocol witness table accessor for type [HKMCCycle] and conformance [A]();
      Collection.first.getter();
      v175 = v538;
      v174 = v538;

      if (v175)
      {
        v171 = v174;
        v164 = v174;
        v165 = [v174 menstruationSegment];

        v119 = [v165 days];
        v537 = v120;
        v536 = v119;
        v166 = v119;
        v167 = v120;

        v168 = v166;
        v169 = v167;
        v170 = 0;
      }

      else
      {
LABEL_75:
        v168 = 0;
        v169 = 0;
        v170 = 1;
      }

      v162 = v169;
      v163 = v168;
      if ((v170 & 1) == 0)
      {
        v160 = v163;
        v161 = v162;
        v159 = v162;
        v158 = v163;
        v540 = v163;
        v541 = v162;
        static Calendar.current.getter();
        Calendar.dateInterval(for:)(v158, v159, v415);
        v376(v436, v432);
        v121 = v370(v415, 1, v420);
        if (v121 == 1)
        {
          outlined destroy of DateInterval?(v415);
        }

        else
        {
          (*(v422 + 32))(v423, v415, v420);
          DateInterval.start.getter();
          v154 = Date._bridgeToObjectiveC()().super.isa;
          v156 = *(v413 + 8);
          v155 = v413 + 8;
          v156(v414, v411);
          [v369 setLastPeriodStart_];

          DateInterval.end.getter();
          v157 = Date._bridgeToObjectiveC()().super.isa;
          v156(v414, v411);
          [v369 setLastPeriodEnd_];

          (*(v422 + 8))(v423, v420);
        }
      }

      v376(v438, v432);
      v152 = v369;
      v153 = v183;
      return v152;
    }

    v364 = *(v422 + 32);
    v365 = (v422 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v364(v427, v419, v420);
    v54 = [v368 allDays];
    v535 = v55;
    v534 = v54;
    Calendar.dateInterval(for:)(v54, v55, v417);
    if (v370(v417, 1, v420) == 1)
    {
      outlined destroy of DateInterval?(v417);
      (*(v422 + 8))(v427, v420);
      v366 = v385;
      goto LABEL_60;
    }

    v364(v425, v417, v420);
    v56 = [v368 mostLikelyDays];
    v533 = v57;
    v532 = v56;
    v530 = v56;
    v531 = v57;
    v568 = v57;
    v567 = v56;
    v566 = v56 + v57 - 1;
    if (v566 < v56)
    {
      v363 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v363 = v566;
    }

    v362 = v363;
    v529 = v363;
    v58 = [v368 allDays];
    v528 = v59;
    v527 = v58;
    v525 = v58;
    v526 = v59;
    v565 = v59;
    v564 = v58;
    v563 = v58 + v59 - 1;
    if (v563 < v58)
    {
      v361 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v361 = v563;
    }

    v60 = v449;
    v333 = v361;
    v524 = v361;
    v330 = Logger.wellnessIntents.unsafeMutableAddressor();
    v346 = 32;
    v331 = &v523;
    swift_beginAccess();
    v460(v60, v330, v441);
    swift_endAccess();
    v332 = 24;
    v347 = 7;
    v338 = swift_allocObject();
    *(v338 + 16) = v362;
    v348 = swift_allocObject();
    *(v348 + 16) = v333;
    v360 = Logger.logObject.getter();
    v334 = v360;
    v359 = static os_log_type_t.debug.getter();
    v335 = v359;
    v342 = 17;
    v351 = swift_allocObject();
    v336 = v351;
    v341 = 0;
    *(v351 + 16) = 0;
    v352 = swift_allocObject();
    v337 = v352;
    v344 = 8;
    *(v352 + 16) = 8;
    v61 = swift_allocObject();
    v62 = v338;
    v339 = v61;
    *(v61 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
    *(v61 + 24) = v62;
    v63 = swift_allocObject();
    v64 = v339;
    v353 = v63;
    v340 = v63;
    *(v63 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v63 + 24) = v64;
    v354 = swift_allocObject();
    v343 = v354;
    *(v354 + 16) = v341;
    v355 = swift_allocObject();
    v345 = v355;
    *(v355 + 16) = v344;
    v65 = swift_allocObject();
    v66 = v348;
    v349 = v65;
    *(v65 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v349;
    v358 = v67;
    v350 = v67;
    *(v67 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v67 + 24) = v68;
    v356 = _allocateUninitializedArray<A>(_:)();
    v357 = v69;

    v70 = v351;
    v71 = v357;
    *v357 = partial apply for closure #1 in OSLogArguments.append(_:);
    v71[1] = v70;

    v72 = v352;
    v73 = v357;
    v357[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v73[3] = v72;

    v74 = v353;
    v75 = v357;
    v357[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v75[5] = v74;

    v76 = v354;
    v77 = v357;
    v357[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[7] = v76;

    v78 = v355;
    v79 = v357;
    v357[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v79[9] = v78;

    v80 = v357;
    v81 = v358;
    v357[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v80[11] = v81;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v360, v359))
    {
      v82 = v385;
      v324 = static UnsafeMutablePointer.allocate(capacity:)();
      v320 = v324;
      v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v322 = 0;
      v325 = createStorage<A>(capacity:type:)(0);
      v323 = v325;
      v326 = createStorage<A>(capacity:type:)(v322);
      v505 = v324;
      v504 = v325;
      v503 = v326;
      v327 = &v505;
      serialize(_:at:)(0, &v505);
      serialize(_:at:)(2, v327);
      v501 = partial apply for closure #1 in OSLogArguments.append(_:);
      v502 = v336;
      closure #1 in osLogInternal(_:log:type:)(&v501, v327, &v504, &v503);
      v328 = v82;
      v329 = v82;
      if (v82)
      {
        v318 = 0;

        __break(1u);
      }

      else
      {
        v501 = partial apply for closure #1 in OSLogArguments.append(_:);
        v502 = v337;
        closure #1 in osLogInternal(_:log:type:)(&v501, &v505, &v504, &v503);
        v316 = 0;
        v317 = 0;
        v501 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v502 = v340;
        closure #1 in osLogInternal(_:log:type:)(&v501, &v505, &v504, &v503);
        v314 = 0;
        v315 = 0;
        v501 = partial apply for closure #1 in OSLogArguments.append(_:);
        v502 = v343;
        closure #1 in osLogInternal(_:log:type:)(&v501, &v505, &v504, &v503);
        v312 = 0;
        v313 = 0;
        v501 = partial apply for closure #1 in OSLogArguments.append(_:);
        v502 = v345;
        closure #1 in osLogInternal(_:log:type:)(&v501, &v505, &v504, &v503);
        v310 = 0;
        v311 = 0;
        v501 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v502 = v350;
        closure #1 in osLogInternal(_:log:type:)(&v501, &v505, &v504, &v503);
        v308 = 0;
        v309 = 0;
        _os_log_impl(&dword_269912000, v334, v335, "end_mostLikelyDays: %ld. end_allDays: %ld", v320, 0x16u);
        v307 = 0;
        destroyStorage<A>(_:count:)(v323, 0, v321);
        destroyStorage<A>(_:count:)(v326, v307, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v320, MEMORY[0x277D84B78]);

        v319 = v308;
      }
    }

    else
    {
      v83 = v385;

      v319 = v83;
    }

    v305 = v319;

    result = (v374)(v449, v441);
    v85 = __OFSUB__(v333, v362);
    v306 = v333 - v362;
    if (!v85)
    {
      v86 = v447;
      v522 = v306;
      v520 = v362;
      v521 = v306;
      v276 = Logger.wellnessIntents.unsafeMutableAddressor();
      v285 = 32;
      v290 = 32;
      v277 = &v519;
      swift_beginAccess();
      v460(v86, v276, v441);
      swift_endAccess();
      v291 = 7;
      v282 = swift_allocObject();
      *(v282 + 16) = v306;
      v87 = swift_allocObject();
      v88 = v306;
      v292 = v87;
      *(v87 + 16) = v362;
      *(v87 + 24) = v88;
      v304 = Logger.logObject.getter();
      v278 = v304;
      v303 = static os_log_type_t.debug.getter();
      v279 = v303;
      v286 = 17;
      v295 = swift_allocObject();
      v280 = v295;
      *(v295 + 16) = 0;
      v296 = swift_allocObject();
      v281 = v296;
      v288 = 8;
      *(v296 + 16) = 8;
      v89 = swift_allocObject();
      v90 = v282;
      v283 = v89;
      *(v89 + 16) = partial apply for implicit closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
      *(v89 + 24) = v90;
      v91 = swift_allocObject();
      v92 = v283;
      v297 = v91;
      v284 = v91;
      *(v91 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
      *(v91 + 24) = v92;
      v298 = swift_allocObject();
      v287 = v298;
      *(v298 + 16) = v285;
      v299 = swift_allocObject();
      v289 = v299;
      *(v299 + 16) = v288;
      v93 = swift_allocObject();
      v94 = v292;
      v293 = v93;
      *(v93 + 16) = partial apply for implicit closure #6 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:);
      *(v93 + 24) = v94;
      v95 = swift_allocObject();
      v96 = v293;
      v302 = v95;
      v294 = v95;
      *(v95 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v95 + 24) = v96;
      v300 = _allocateUninitializedArray<A>(_:)();
      v301 = v97;

      v98 = v295;
      v99 = v301;
      *v301 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99[1] = v98;

      v100 = v296;
      v101 = v301;
      v301[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v101[3] = v100;

      v102 = v297;
      v103 = v301;
      v301[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v103[5] = v102;

      v104 = v298;
      v105 = v301;
      v301[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v105[7] = v104;

      v106 = v299;
      v107 = v301;
      v301[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v107[9] = v106;

      v108 = v301;
      v109 = v302;
      v301[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v108[11] = v109;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v304, v303))
      {
        v110 = v305;
        v269 = static UnsafeMutablePointer.allocate(capacity:)();
        v266 = v269;
        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v270 = createStorage<A>(capacity:type:)(0);
        v268 = v270;
        v271 = createStorage<A>(capacity:type:)(1);
        v510[0] = v269;
        v509 = v270;
        v508 = v271;
        v272 = 2;
        v273 = v510;
        serialize(_:at:)(2, v510);
        serialize(_:at:)(v272, v273);
        v506 = partial apply for closure #1 in OSLogArguments.append(_:);
        v507 = v280;
        closure #1 in osLogInternal(_:log:type:)(&v506, v273, &v509, &v508);
        v274 = v110;
        v275 = v110;
        if (v110)
        {
          v264 = 0;

          __break(1u);
        }

        else
        {
          v506 = partial apply for closure #1 in OSLogArguments.append(_:);
          v507 = v281;
          closure #1 in osLogInternal(_:log:type:)(&v506, v510, &v509, &v508);
          v262 = 0;
          v263 = 0;
          v506 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
          v507 = v284;
          closure #1 in osLogInternal(_:log:type:)(&v506, v510, &v509, &v508);
          v260 = 0;
          v261 = 0;
          v506 = partial apply for closure #1 in OSLogArguments.append(_:);
          v507 = v287;
          closure #1 in osLogInternal(_:log:type:)(&v506, v510, &v509, &v508);
          v258 = 0;
          v259 = 0;
          v506 = partial apply for closure #1 in OSLogArguments.append(_:);
          v507 = v289;
          closure #1 in osLogInternal(_:log:type:)(&v506, v510, &v509, &v508);
          v256 = 0;
          v257 = 0;
          v506 = partial apply for closure #1 in OSLogArguments.append(_:);
          v507 = v294;
          closure #1 in osLogInternal(_:log:type:)(&v506, v510, &v509, &v508);
          v254 = 0;
          v255 = 0;
          _os_log_impl(&dword_269912000, v278, v279, "trailingDuration: %ld. trailingAllDays: %s", v266, 0x16u);
          destroyStorage<A>(_:count:)(v268, 0, v267);
          destroyStorage<A>(_:count:)(v271, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v266, MEMORY[0x277D84B78]);

          v265 = v254;
        }
      }

      else
      {
        v111 = v305;

        v265 = v111;
      }

      v252 = v265;

      v374(v447, v441);
      v518[3] = v362;
      v518[4] = v306;
      v571 = v306;
      v570 = v362;
      v569 = v379;
      v253 = 0;
      if (v379 >= v362)
      {
        v253 = v569 - v570 < v571;
      }

      if (v253)
      {
        v510[6] = v440;
        v510[5] = 1;
        v251 = lazy protocol witness table accessor for type PeriodProjectionFocus and conformance PeriodProjectionFocus();
        if (== infix<A>(_:_:)())
        {
          v250 = 1;
        }

        else
        {
          v510[4] = v440;
          v510[3] = 3;
          v250 = == infix<A>(_:_:)();
        }

        if (v250)
        {
          v249 = 1;
        }

        else
        {
          v510[2] = v440;
          v510[1] = 5;
          v249 = == infix<A>(_:_:)();
        }

        v248 = v249;
      }

      else
      {
        v248 = 0;
      }

      if (v248)
      {
        v112 = v446;
        v240 = Logger.wellnessIntents.unsafeMutableAddressor();
        v241 = v514;
        v243 = 0;
        swift_beginAccess();
        v460(v112, v240, v441);
        swift_endAccess();
        v246 = Logger.logObject.getter();
        v242 = v246;
        v245 = static os_log_type_t.debug.getter();
        v244 = v245;
        v247 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v246, v245))
        {
          v113 = v252;
          v231 = static UnsafeMutablePointer.allocate(capacity:)();
          v227 = v231;
          v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v229 = 0;
          v232 = createStorage<A>(capacity:type:)(0);
          v230 = v232;
          v233 = createStorage<A>(capacity:type:)(v229);
          v513 = v231;
          v512 = v232;
          v511 = v233;
          v234 = 0;
          v235 = &v513;
          serialize(_:at:)(0, &v513);
          serialize(_:at:)(v234, v235);
          v510[7] = v247;
          v236 = &v125;
          MEMORY[0x28223BE20](&v125);
          v237 = &v125 - 6;
          *(&v125 - 4) = v114;
          *(&v125 - 3) = &v512;
          *(&v125 - 2) = &v511;
          v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v239 = v113;
          if (v113)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v242, v244, "Setting nextPeriodStart/End for the trailingAllDays range", v227, 2u);
            v225 = 0;
            destroyStorage<A>(_:count:)(v230, 0, v228);
            destroyStorage<A>(_:count:)(v233, v225, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v227, MEMORY[0x277D84B78]);

            v226 = v239;
          }
        }

        else
        {

          v226 = v252;
        }

        v220 = v226;

        v374(v446, v441);
        DateInterval.end.getter();
        v223 = Date._bridgeToObjectiveC()().super.isa;
        v221 = *(v413 + 8);
        v222 = (v413 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v221(v414, v411);
        [v369 setNextPeriodStart_];

        v115 = *(v413 + 56);
        v224 = 1;
        v115(v410, 1, 1, v411);
        if ((*(v413 + 48))(v410, v224, v411) == 1)
        {
          v219 = 0;
        }

        else
        {
          v218 = Date._bridgeToObjectiveC()().super.isa;
          v221(v410, v411);
          v219 = v218;
        }

        v216 = v219;
        [v369 setNextPeriodEnd_];

        v217 = v220;
      }

      else
      {
        v116 = v445;
        v208 = Logger.wellnessIntents.unsafeMutableAddressor();
        v209 = v518;
        v211 = 0;
        swift_beginAccess();
        v460(v116, v208, v441);
        swift_endAccess();
        v214 = Logger.logObject.getter();
        v210 = v214;
        v213 = static os_log_type_t.debug.getter();
        v212 = v213;
        v215 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v214, v213))
        {
          v117 = v252;
          v199 = static UnsafeMutablePointer.allocate(capacity:)();
          v195 = v199;
          v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v197 = 0;
          v200 = createStorage<A>(capacity:type:)(0);
          v198 = v200;
          v201 = createStorage<A>(capacity:type:)(v197);
          v517 = v199;
          v516 = v200;
          v515 = v201;
          v202 = 0;
          v203 = &v517;
          serialize(_:at:)(0, &v517);
          serialize(_:at:)(v202, v203);
          v514[3] = v215;
          v204 = &v125;
          MEMORY[0x28223BE20](&v125);
          v205 = &v125 - 6;
          *(&v125 - 4) = v118;
          *(&v125 - 3) = &v516;
          *(&v125 - 2) = &v515;
          v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v207 = v117;
          if (v117)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v210, v212, "Setting nextPeriodStart/End for the standard range", v195, 2u);
            v193 = 0;
            destroyStorage<A>(_:count:)(v198, 0, v196);
            destroyStorage<A>(_:count:)(v201, v193, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v195, MEMORY[0x277D84B78]);

            v194 = v207;
          }
        }

        else
        {

          v194 = v252;
        }

        v192 = v194;

        v374(v445, v441);
        DateInterval.end.getter();
        v188 = Date._bridgeToObjectiveC()().super.isa;
        v190 = *(v413 + 8);
        v189 = v413 + 8;
        v190(v414, v411);
        [v369 setNextPeriodEnd_];

        DateInterval.start.getter();
        v191 = Date._bridgeToObjectiveC()().super.isa;
        v190(v414, v411);
        [v369 setNextPeriodStart_];

        v217 = v192;
      }

      v187 = v217;
      v186 = *(v422 + 8);
      v185 = v422 + 8;
      v186(v425, v420);
      v186(v427, v420);
      v366 = v187;
      goto LABEL_60;
    }
  }

  __break(1u);
  return result;
}

uint64_t implicit closure #2 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 menstruationProjections];
  type metadata accessor for HKMCProjection();
  *a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return MEMORY[0x277D82BD8](v4);
}

BOOL closure #1 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)(id *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = [*a1 isPartiallyLogged];
  MEMORY[0x277D82BE0](v7);
  if (v8)
  {
    v4 = 0;
  }

  else
  {
    v9 = [v7 allDays];
    if (v9 + v2 - 1 < v9)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v9 + v2 - 1;
    }

    v4 = v5 >= a2;
  }

  MEMORY[0x277D82BD8](v7);
  return v4;
}

uint64_t protocol witness for CycleTrackingAnalysisFetching.isReadingAuthorized() in conformance CycleTrackingFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for CycleTrackingAnalysisFetching.query(projectionFocus:) in conformance CycleTrackingFetcher(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.query(projectionFocus:)(a1, v6);
}

id @nonobjc HKMCAnalysisQuery.init(updateHandler:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = 0;
  v9 = thunk for @escaping @callee_guaranteed (@guaranteed HKMCAnalysisQuery, @guaranteed HKMCAnalysis?, @guaranteed Error?) -> ();
  v10 = &block_descriptor_3;
  v4 = _Block_copy(&aBlock);
  v5 = [v3 initWithUpdateHandler_];
  _Block_release(v4);

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKMCAnalysisQuery, @guaranteed HKMCAnalysis?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v6(a2, a3);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_26996FFD0()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[4];

  MEMORY[0x277D82BD8](v0[5]);
  return swift_deallocObject();
}

unint64_t type metadata accessor for HKMCAnalysisQuery()
{
  v2 = lazy cache variable for type metadata for HKMCAnalysisQuery;
  if (!lazy cache variable for type metadata for HKMCAnalysisQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMCAnalysisQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKMCProjection()
{
  v2 = lazy cache variable for type metadata for HKMCProjection;
  if (!lazy cache variable for type metadata for HKMCProjection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMCProjection);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269970194()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
  v1 = lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCProjection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v11;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in serialize<A>(_:at:), v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26997075C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699707A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_2699708B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699708F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKMCCycle] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMCCycle] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMCCycle] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo9HKMCCycleCGMd, &_sSaySo9HKMCCycleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMCCycle] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKMCCycle()
{
  v2 = lazy cache variable for type metadata for HKMCCycle;
  if (!lazy cache variable for type metadata for HKMCCycle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMCCycle);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269970B84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269970BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269970C5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269970C9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #6 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #6 in CycleTrackingFetcher.buildIntentResponse(hkAnalysis:projectionFocus:)();
}

uint64_t sub_269970D98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269970DD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269970E70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269970EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type PeriodProjectionFocus and conformance PeriodProjectionFocus()
{
  v2 = lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus;
  if (!lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus;
  if (!lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodProjectionFocus and conformance PeriodProjectionFocus);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in serialize<A>(_:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2699710D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269971110()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269971150()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents39GetMenstruationPredictionIntentResponseCs5NeverOGMR);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return closure #1 in closure #1 in CycleTrackingFetcher.query(projectionFocus:)(a1);
}

id GetActivitySummaryIntentHandler.init(store:)(uint64_t *a1)
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
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for ActivitySummaryFetcher;
    __dst[4] = &protocol witness table for ActivitySummaryFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents31GetActivitySummaryIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t GetActivitySummaryIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[19] = v1;
  v2[15] = v2;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v3 = type metadata accessor for Logger();
  v2[20] = v3;
  v7 = *(v3 - 8);
  v2[21] = v7;
  v4 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[16] = a1;
  v2[17] = v1;
  v5 = v2[15];

  return MEMORY[0x2822009F8](GetActivitySummaryIntentHandler.handle(intent:), 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 192);
  v9[15] = *v2;
  v10 = v9 + 15;
  v9[25] = a1;
  v9[26] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = GetActivitySummaryIntentHandler.handle(intent:);
  }

  else
  {
    v5 = *v10;
    v6 = GetActivitySummaryIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t GetActivitySummaryIntentHandler.handle(intent:)()
{
  v1 = v0[19];
  v0[15] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents31GetActivitySummaryIntentHandler_store, (v0 + 2));
  v8 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = *(*(v6 + 8) + 4);
  v3 = swift_task_alloc();
  *(v5 + 184) = v3;
  *v3 = *(v5 + 120);
  v3[1] = GetActivitySummaryIntentHandler.handle(intent:);

  return v7(v8, v6);
}

{
  v12 = *(v0 + 216);
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v12)
  {
    outlined init with copy of QuantityPersisting(v11[19] + OBJC_IVAR____TtC19SiriWellnessIntents31GetActivitySummaryIntentHandler_store, (v11 + 7));
    v9 = v11[10];
    v7 = v11[11];
    __swift_project_boxed_opaque_existential_1(v11 + 7, v9);
    v8 = (*(v7 + 16) + **(v7 + 16));
    v5 = *(*(v7 + 16) + 4);
    v6 = swift_task_alloc();
    v11[24] = v6;
    *v6 = v11[15];
    v6[1] = GetActivitySummaryIntentHandler.handle(intent:);

    return v8(v9, v7);
  }

  else
  {
    type metadata accessor for GetAcitivitySummaryIntentResponse();
    v10 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    v1 = v11[22];

    v2 = *(v11[15] + 8);
    v3 = v11[15];

    return v2(v10);
  }
}

{
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = v0[25];
  v1 = v0[22];

  v2 = *(v0[15] + 8);
  v3 = v0[15];

  return v2(v5);
}

{
  v36 = v0;
  v22 = v0[26];
  v1 = v0[22];
  v19 = v0[21];
  v21 = v0[20];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v22;
  v0[18] = v22;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v19 + 16))(v1, v20, v21);
  swift_endAccess();
  v3 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v4;

  *v28 = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[1] = v25;

  v28[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[3] = v26;

  v28[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v29, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(1);
    v31 = buf;
    v32 = v16;
    v33 = v17;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(1, &v31);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_269912000, v29, v30, "%s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v18[26];
  v10 = v18[22];
  v11 = v18[20];
  v9 = v18[21];
  MEMORY[0x277D82BD8](v29);
  (*(v9 + 8))(v10, v11);
  type metadata accessor for GetAcitivitySummaryIntentResponse();
  v13 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v5 = v18[22];

  v6 = *(v18[15] + 8);
  v7 = v18[15];

  return v6(v13);
}

uint64_t GetActivitySummaryIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 184);
  *(v6 + 120) = *v1;
  *(v6 + 216) = a1;

  v4 = *(v6 + 120);

  return MEMORY[0x2822009F8](GetActivitySummaryIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetActivitySummaryIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return GetActivitySummaryIntentHandler.handle(intent:)(a1);
}

id GetActivitySummaryIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ActivitySummaryFetcher.query()(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *(v1 + 168) = a1;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 400) = 0;
  v2 = type metadata accessor for Logger();
  *(v1 + 176) = v2;
  v11 = *(v2 - 8);
  *(v1 + 184) = v11;
  v3 = *(v11 + 64) + 15;
  *(v1 + 192) = swift_task_alloc();
  v4 = type metadata accessor for Date();
  *(v1 + 200) = v4;
  v12 = *(v4 - 8);
  *(v1 + 208) = v12;
  v5 = *(v12 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  v6 = type metadata accessor for Calendar();
  *(v1 + 224) = v6;
  v13 = *(v6 - 8);
  *(v1 + 232) = v13;
  v7 = *(v13 + 64) + 15;
  *(v1 + 240) = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  *(v1 + 248) = v8;
  v14 = *(v8 - 8);
  *(v1 + 256) = v14;
  v15 = *(v14 + 64);
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 48) = a1;
  *MEMORY[0x277D85DE8];
  v9 = *(v1 + 40);

  return MEMORY[0x2822009F8](ActivitySummaryFetcher.query(), 0);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v10 = *v2;
  v4 = *(*v2 + 320);
  *(v10 + 40) = *v2;
  v11 = (v10 + 40);
  *(v10 + 328) = a1;
  *(v10 + 336) = v1;

  if (v1)
  {
    v5 = __OFSUB__(*MEMORY[0x277D85DE8], v12);
    v6 = ActivitySummaryFetcher.query();
    v8 = *v11;
  }

  else
  {

    v5 = __OFSUB__(*MEMORY[0x277D85DE8], v12);
    v6 = ActivitySummaryFetcher.query();
    v7 = *v11;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t ActivitySummaryFetcher.query()()
{
  v61 = *MEMORY[0x277D85DE8];
  v51 = v0[34];
  v54 = v0[33];
  v52 = v0[32];
  v53 = v0[31];
  v49 = v0[30];
  v48 = v0[29];
  v50 = v0[28];
  v46 = v0[27];
  v45 = v0[26];
  v47 = v0[25];
  v0[5] = v0;
  v43 = type metadata accessor for Calendar.Component();
  _allocateUninitializedArray<A>(_:)();
  v41 = v1;
  v2 = *MEMORY[0x277CC99C0];
  v39 = *(v43 - 8);
  v42 = *(v39 + 104);
  v42();
  v40 = *(v39 + 72);
  (v42)(v41 + v40, *MEMORY[0x277CC9968], v43);
  (v42)(v41 + 2 * v40, *MEMORY[0x277CC9998], v43);
  (v42)(v41 + 3 * v40, *MEMORY[0x277CC9988], v43);
  (v42)(v41 + 4 * v40, *MEMORY[0x277CC9978], v43);
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v44 = Set.init(arrayLiteral:)();
  v0[35] = v44;
  v0[7] = v44;
  static Calendar.current.getter();
  Date.init()();
  Calendar.dateComponents(_:from:)();
  (*(v45 + 8))(v46, v47);
  (*(v48 + 8))(v49, v50);
  v55 = objc_opt_self();
  (*(v52 + 16))(v54, v51, v53);
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v3 = *(v52 + 8);
  v0[36] = v3;
  v0[37] = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v54, v53);
  v57 = [v55 predicateForActivitySummaryWithDateComponents_];
  v0[38] = v57;
  MEMORY[0x277D82BD8](isa);
  v0[8] = v57;
  type metadata accessor for HKQuantityType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = *MEMORY[0x277CCC918];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC918]);
  v60 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  v0[39] = v60;
  MEMORY[0x277D82BD8](v59);
  if (v60)
  {
    v4 = *(v38 + 168);
    v36 = v4;
    *(v38 + 104) = v60;
    MEMORY[0x277D82BE0](v4);
    v37 = swift_task_alloc();
    *(v38 + 320) = v37;
    *v37 = *(v38 + 40);
    v37[1] = ActivitySummaryFetcher.query();
    *MEMORY[0x277D85DE8];

    return getPreferredUnit(for:store:)(v60, v36);
  }

  else
  {
    v6 = *(v38 + 192);
    v32 = *(v38 + 176);
    v30 = *(v38 + 184);
    v31 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v30 + 16))(v6, v31, v32);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v33))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0);
      v28 = createStorage<A>(capacity:type:)(0);
      *(v38 + 72) = buf;
      *(v38 + 80) = v27;
      *(v38 + 88) = v28;
      serialize(_:at:)(0, (v38 + 72));
      serialize(_:at:)(0, (v38 + 72));
      *(v38 + 96) = v35;
      v29 = swift_task_alloc();
      v29[2] = v38 + 72;
      v29[3] = v38 + 80;
      v29[4] = v38 + 88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v33, "Error fetching preferred unit for .activeEnergyBurned", buf, 2u);
      destroyStorage<A>(_:count:)(v27, 0, v25);
      destroyStorage<A>(_:count:)(v28, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v14 = *(v38 + 304);
    v18 = *(v38 + 296);
    v19 = *(v38 + 288);
    v20 = *(v38 + 280);
    v16 = *(v38 + 272);
    v17 = *(v38 + 248);
    v12 = *(v38 + 192);
    v13 = *(v38 + 176);
    v11 = *(v38 + 184);
    MEMORY[0x277D82BD8](oslog);
    (*(v11 + 8))(v12, v13);
    type metadata accessor for GetAcitivitySummaryIntentResponse();
    v15 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v14);
    v19(v16, v17);

    v7 = *(v38 + 272);
    v21 = *(v38 + 264);
    v22 = *(v38 + 240);
    v23 = *(v38 + 216);
    v24 = *(v38 + 192);

    v8 = *MEMORY[0x277D85DE8] - v61;
    v9 = *(*(v38 + 40) + 8);
    v10 = *(v38 + 40);

    return v9(v15);
  }
}

{
  v73 = *MEMORY[0x277D85DE8];
  v71 = v0[41];
  v0[5] = v0;
  v72 = v0[42];
  v0[43] = v71;
  if (!v71)
  {
    MEMORY[0x277D82BD8](*(v70 + 312));
    v68 = v72;
LABEL_14:
    v7 = *(v70 + 192);
    v51 = *(v70 + 176);
    v49 = *(v70 + 184);
    v50 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v49 + 16))(v7, v50, v51);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v54 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v52))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v46 = createStorage<A>(capacity:type:)(0);
      v47 = createStorage<A>(capacity:type:)(0);
      *(v70 + 72) = buf;
      *(v70 + 80) = v46;
      *(v70 + 88) = v47;
      serialize(_:at:)(0, (v70 + 72));
      serialize(_:at:)(0, (v70 + 72));
      *(v70 + 96) = v54;
      v48 = swift_task_alloc();
      v48[2] = v70 + 72;
      v48[3] = v70 + 80;
      v48[4] = v70 + 88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v68)
      {

        v8 = __OFSUB__(*MEMORY[0x277D85DE8], v73);
        return result;
      }

      _os_log_impl(&dword_269912000, oslog, v52, "Error fetching preferred unit for .activeEnergyBurned", buf, 2u);
      destroyStorage<A>(_:count:)(v46, 0, v44);
      destroyStorage<A>(_:count:)(v47, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v33 = *(v70 + 304);
    v37 = *(v70 + 296);
    v38 = *(v70 + 288);
    v39 = *(v70 + 280);
    v35 = *(v70 + 272);
    v36 = *(v70 + 248);
    v31 = *(v70 + 192);
    v32 = *(v70 + 176);
    v30 = *(v70 + 184);
    MEMORY[0x277D82BD8](oslog);
    (*(v30 + 8))(v31, v32);
    type metadata accessor for GetAcitivitySummaryIntentResponse();
    v34 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v33);
    v38(v35, v36);

    v9 = *(v70 + 272);
    v40 = *(v70 + 264);
    v41 = *(v70 + 240);
    v42 = *(v70 + 216);
    v43 = *(v70 + 192);

    v10 = *MEMORY[0x277D85DE8] - v73;
    v11 = *(*(v70 + 40) + 8);
    v12 = v34;
    v13 = *(v70 + 40);

    return v11(v12);
  }

  v1 = *(v70 + 168);
  *(v70 + 112) = v71;
  v2 = ActivitySummaryFetcher.summaryUnit(for:)(v71, v1);
  v69 = v2;
  *(v70 + 352) = v2;
  if (!v2)
  {
    v66 = *(v70 + 312);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v66);
    v68 = v72;
    goto LABEL_14;
  }

  v3 = *(v70 + 168);
  *(v70 + 120) = v2;
  v4 = ActivitySummaryFetcher.unitEnergy(for:)(v71, v3);
  v67 = v4;
  *(v70 + 360) = v4;
  if (!v4)
  {
    v62 = *(v70 + 312);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v62);
    v68 = v72;
    goto LABEL_14;
  }

  v64 = *(v70 + 168);
  *(v70 + 128) = v4;
  MEMORY[0x277D82BE0](v64);
  *(v70 + 136) = 0;
  v65 = [v64 wheelchairUseWithError_];
  v63 = *(v70 + 136);
  MEMORY[0x277D82BE0](v63);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v64);
  if (!v65)
  {
    v20 = *(v70 + 304);
    v23 = *(v70 + 296);
    v24 = *(v70 + 288);
    v25 = *(v70 + 280);
    v21 = *(v70 + 272);
    v22 = *(v70 + 248);
    v19 = *(v70 + 312);
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v63);
    swift_willThrow();
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v24(v21, v22);

    v14 = *(v70 + 272);
    v26 = *(v70 + 264);
    v27 = *(v70 + 240);
    v28 = *(v70 + 216);
    v29 = *(v70 + 192);

    v15 = *MEMORY[0x277D85DE8] - v73;
    v11 = *(*(v70 + 40) + 8);
    v12 = v18;
    v16 = *(v70 + 40);

    return v11(v12);
  }

  v56 = *(v70 + 304);
  v58 = *(v70 + 168);
  v55 = [v65 wheelchairUse];
  MEMORY[0x277D82BD8](v65);
  *(v70 + 144) = v55;
  *(v70 + 152) = 2;
  type metadata accessor for HKWheelchairUse();
  lazy protocol witness table accessor for type HKWheelchairUse and conformance HKWheelchairUse();
  v57 = == infix<A>(_:_:)();
  *(v70 + 400) = v57 & 1;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query()", 7uLL, 1);
  *(v70 + 368) = v5._object;
  MEMORY[0x277D82BE0](v56);
  MEMORY[0x277D82BE0](v69);
  MEMORY[0x277D82BE0](v67);
  MEMORY[0x277D82BE0](v71);
  MEMORY[0x277D82BE0](v58);
  v59 = swift_task_alloc();
  *(v70 + 376) = v59;
  *(v59 + 16) = v56;
  *(v59 + 24) = v57 & 1;
  *(v59 + 32) = v69;
  *(v59 + 40) = v67;
  *(v59 + 48) = v71;
  *(v59 + 56) = v58;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v60 = swift_task_alloc();
  *(v70 + 384) = v60;
  AcitivitySummaryIntentResponse = type metadata accessor for GetAcitivitySummaryIntentResponse();
  *v60 = *(v70 + 40);
  v60[1] = ActivitySummaryFetcher.query();
  *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v70 + 160, 0, 0, v5._countAndFlagsBits, v5._object, partial apply for closure #1 in ActivitySummaryFetcher.query(), v59, AcitivitySummaryIntentResponse);
}

{
  v17 = *MEMORY[0x277D85DE8];
  v15 = *v1;
  v2 = *(*v1 + 384);
  v15[5] = *v1;
  v16 = v15 + 5;
  v15[49] = v0;

  if (v0)
  {
    v4 = __OFSUB__(*MEMORY[0x277D85DE8], v17);
    v5 = ActivitySummaryFetcher.query();
    v7 = *v16;
  }

  else
  {
    v3 = v15[47];
    v14 = v15[46];
    v11 = v15[45];
    v10 = v15[44];
    v12 = v15[43];
    v9 = v15[38];
    v13 = v15[21];

    v4 = __OFSUB__(*MEMORY[0x277D85DE8], v17);
    v5 = ActivitySummaryFetcher.query();
    v6 = *v16;
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  v1 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[39];
  v11 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v12 = v0[34];
  v13 = v0[31];
  v0[5] = v0;
  v7 = v0[20];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v15(v12, v13);

  v2 = v0[34];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[24];

  v3 = *MEMORY[0x277D85DE8] - v21;
  v4 = *(v0[5] + 8);
  v5 = v0[5];

  return v4(v7);
}

{
  v35 = *MEMORY[0x277D85DE8];
  v34 = v0[42];
  v1 = v0[21];
  v0[5] = v0;
  MEMORY[0x277D82BD8](v1);

  v0[43] = 0;
  MEMORY[0x277D82BD8](*(v33 + 312));
  v2 = *(v33 + 192);
  v29 = *(v33 + 176);
  v27 = *(v33 + 184);
  v28 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v27 + 16))(v2, v28, v29);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0);
    v25 = createStorage<A>(capacity:type:)(0);
    *(v33 + 72) = buf;
    *(v33 + 80) = v24;
    *(v33 + 88) = v25;
    serialize(_:at:)(0, (v33 + 72));
    serialize(_:at:)(0, (v33 + 72));
    *(v33 + 96) = v32;
    v26 = swift_task_alloc();
    v26[2] = v33 + 72;
    v26[3] = v33 + 80;
    v26[4] = v33 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v30, "Error fetching preferred unit for .activeEnergyBurned", buf, 2u);
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v11 = *(v33 + 304);
  v15 = *(v33 + 296);
  v16 = *(v33 + 288);
  v17 = *(v33 + 280);
  v13 = *(v33 + 272);
  v14 = *(v33 + 248);
  v9 = *(v33 + 192);
  v10 = *(v33 + 176);
  v8 = *(v33 + 184);
  MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for GetAcitivitySummaryIntentResponse();
  v12 = GetAcitivitySummaryIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](v11);
  v16(v13, v14);

  v3 = *(v33 + 272);
  v18 = *(v33 + 264);
  v19 = *(v33 + 240);
  v20 = *(v33 + 216);
  v21 = *(v33 + 192);

  v4 = *MEMORY[0x277D85DE8] - v35;
  v5 = *(*(v33 + 40) + 8);
  v6 = *(v33 + 40);

  return v5(v12);
}

{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[47];
  v8 = v0[46];
  v9 = v0[45];
  v10 = v0[44];
  v11 = v0[43];
  v12 = v0[39];
  v13 = v0[38];
  v16 = v0[37];
  v17 = v0[36];
  v18 = v0[35];
  v14 = v0[34];
  v15 = v0[31];
  v7 = v0[21];
  v0[5] = v0;

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v17(v14, v15);

  v19 = v0[49];
  v2 = v0[34];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[27];
  v23 = v0[24];

  v3 = *MEMORY[0x277D85DE8] - v24;
  v4 = *(v0[5] + 8);
  v5 = v0[5];

  return v4();
}

id ActivitySummaryFetcher.summaryUnit(for:)(void *a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  v10 = [a1 unitString];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v2;

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kJ", 2uLL, 1);
  v18 = v11;
  v19 = v12;
  v13 = MEMORY[0x26D649310](v20._countAndFlagsBits, v20._object, v11, v12);
  outlined destroy of String.UTF8View(&v20);
  if (v13)
  {

    v8 = [objc_opt_self() jouleUnitWithMetricPrefix_];

    MEMORY[0x277D82BD8](v10);
    return v8;
  }

  else
  {

    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cal", 3uLL, 1);
    v15 = v11;
    v16 = v12;
    v7 = MEMORY[0x26D649310](v17._countAndFlagsBits, v17._object, v11, v12);
    outlined destroy of String.UTF8View(&v17);
    if (v7)
    {

      v6 = [objc_opt_self() largeCalorieUnit];

      MEMORY[0x277D82BD8](v10);
      return v6;
    }

    else
    {

      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kcal", 4uLL, 1);
      v5 = MEMORY[0x26D649310](v14._countAndFlagsBits, v14._object, v11, v12);
      outlined destroy of String.UTF8View(&v14);

      if (v5)
      {
        v4 = [objc_opt_self() kilocalorieUnit];

        MEMORY[0x277D82BD8](v10);
        return v4;
      }

      else
      {

        MEMORY[0x277D82BD8](v10);
        return 0;
      }
    }
  }
}

id ActivitySummaryFetcher.unitEnergy(for:)(void *a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v8 = [a1 unitString];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v2;

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kJ", 2uLL, 1);
  v16 = v9;
  v17 = v10;
  v11 = MEMORY[0x26D649310](v18._countAndFlagsBits, v18._object, v9, v10);
  outlined destroy of String.UTF8View(&v18);
  if (v11)
  {

    v6 = [objc_opt_self() kilojoules];

    MEMORY[0x277D82BD8](v8);
    return v6;
  }

  else
  {

    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cal", 3uLL, 1);
    v13 = v9;
    v14 = v10;
    v5 = MEMORY[0x26D649310](v15._countAndFlagsBits, v15._object, v9, v10);
    outlined destroy of String.UTF8View(&v15);
    if (v5)
    {

      MEMORY[0x277D82BD8](v8);
    }

    else
    {

      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kcal", 4uLL, 1);
      v4 = MEMORY[0x26D649310](v12._countAndFlagsBits, v12._object, v9, v10);
      outlined destroy of String.UTF8View(&v12);
      if ((v4 & 1) == 0)
      {

        MEMORY[0x277D82BD8](v8);
        return 0;
      }

      MEMORY[0x277D82BD8](v8);
    }

    return [objc_opt_self() kilocalories];
  }
}

uint64_t closure #1 in ActivitySummaryFetcher.query()(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v24 = a1;
  v42 = a2;
  v33 = a3;
  v34 = a4;
  v36 = a5;
  v38 = a6;
  v43 = a7;
  v40 = partial apply for closure #1 in closure #1 in ActivitySummaryFetcher.query();
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR);
  v27 = *(v31 - 8);
  v28 = v31 - 8;
  v25 = v27;
  v26 = *(v27 + 64);
  v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v23 - v23;
  v52 = MEMORY[0x28223BE20](v24);
  v51 = v7;
  v50 = v8 & 1;
  v49 = v9;
  v48 = v10;
  v47 = v11;
  v46 = v12;
  type metadata accessor for HKActivitySummaryQuery();
  MEMORY[0x277D82BE0](v42);
  (*(v27 + 16))(v30, v24, v31);
  MEMORY[0x277D82BE0](v34);
  MEMORY[0x277D82BE0](v36);
  MEMORY[0x277D82BE0](v38);
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = v29 + v26;
  v35 = (v29 + v26 + 8) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v27 + 32))(v41 + v29, v30, v31);
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v18 = v39;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v41 + v32) = v33;
  *(v20 + v14) = v13;
  *(v20 + v16) = v15;
  *(v20 + v18) = v17;
  v44 = HKActivitySummaryQuery.__allocating_init(predicate:resultsHandler:)(v21, v19, v20);
  v45 = v44;
  MEMORY[0x277D82BE0](v43);
  [v43 executeQuery_];
  MEMORY[0x277D82BD8](v43);
  return MEMORY[0x277D82BD8](v44);
}

uint64_t protocol witness for ActivitySummaryFetching.isReadingAuthorized() in conformance ActivitySummaryFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for ActivitySummaryFetching.query() in conformance ActivitySummaryFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher;

  return ActivitySummaryFetcher.query()(v5);
}

id @nonobjc HKActivitySummaryQuery.init(predicate:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = 0;
  v11 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ();
  v12 = &block_descriptor_4;
  v5 = _Block_copy(&aBlock);
  v7 = [v4 initWithPredicate:a1 resultsHandler:?];
  _Block_release(v5);

  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKActivitySummary();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_269977464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699774A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699774E4()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetActivitySummaryIntentHandler.handle(intent:)()
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

  return @objc closure #1 in GetActivitySummaryIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component()
{
  v2 = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    type metadata accessor for Calendar.Component();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKWheelchairUse and conformance HKWheelchairUse()
{
  v2 = lazy protocol witness table cache variable for type HKWheelchairUse and conformance HKWheelchairUse;
  if (!lazy protocol witness table cache variable for type HKWheelchairUse and conformance HKWheelchairUse)
  {
    type metadata accessor for HKWheelchairUse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKWheelchairUse and conformance HKWheelchairUse);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKActivitySummaryQuery()
{
  v2 = lazy cache variable for type metadata for HKActivitySummaryQuery;
  if (!lazy cache variable for type metadata for HKActivitySummaryQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKActivitySummaryQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699777F0()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (v1 + *(v3 + 64) + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  MEMORY[0x277D82BD8](*(v0 + v4));
  MEMORY[0x277D82BD8](*(v0 + v5));
  MEMORY[0x277D82BD8](*(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ActivitySummaryFetcher.query()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMd, &_sScCy19SiriWellnessIntents33GetAcitivitySummaryIntentResponseCs5Error_pGMR) - 8);
  v4 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v5 = v4 + *(v16 + 64);
  v6 = (v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v6);
  v9 = *(v3 + v7);
  v10 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v3 + v5) & 1;

  return closure #1 in closure #1 in ActivitySummaryFetcher.query()(a1, a2, a3, v3 + v4, v11, v8, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKActivitySummary()
{
  v2 = lazy cache variable for type metadata for HKActivitySummary;
  if (!lazy cache variable for type metadata for HKActivitySummary)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKActivitySummary);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269977BB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269977BF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for NSUnitEnergy()
{
  v2 = lazy cache variable for type metadata for NSUnitEnergy;
  if (!lazy cache variable for type metadata for NSUnitEnergy)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSUnitEnergy);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKActivitySummary] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKActivitySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKActivitySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKActivitySummaryCGMd, &_sSaySo17HKActivitySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKActivitySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269977DB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269977DF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t PeriodFlow.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PeriodFlow@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PeriodFlow.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PeriodFlow(void *a1@<X8>)
{
  v2 = *v1;
  PeriodFlow.rawValue.getter();
  *a1 = v3;
}

id static PeriodFlowResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodFlow.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue_];

  return v1;
}

id static PeriodFlowResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodFlow.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm_];

  return v1;
}

id PeriodFlowResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id PeriodFlowResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for PeriodFlowResolutionResult();
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

id PeriodFlowResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeriodFlowResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type PeriodFlow and conformance PeriodFlow()
{
  v2 = lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow;
  if (!lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow;
  if (!lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodFlow and conformance PeriodFlow);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessAttribute_optional __swiftcall WellnessAttribute.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "completed";
  *(v2 + 8) = 9;
  *(v2 + 16) = 2;
  *(v2 + 24) = "distance";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "duration";
  *(v2 + 56) = 8;
  *(v2 + 64) = 2;
  *(v2 + 72) = "start";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  *(v2 + 96) = "stop";
  *(v2 + 104) = 4;
  *(v2 + 112) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessAttribute_completed;
LABEL_12:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessAttribute_distance;
      goto LABEL_12;
    case 2:
      v5.value = SiriWellnessIntents_WellnessAttribute_duration;
      goto LABEL_12;
    case 3:
      v5.value = SiriWellnessIntents_WellnessAttribute_start;
      goto LABEL_12;
    case 4:
      v5.value = SiriWellnessIntents_WellnessAttribute_stop;
      goto LABEL_12;
  }

  return 5;
}

uint64_t WellnessAttribute.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("completed", 9uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("distance", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("duration", 8uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("start", 5uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stop", 4uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessAttribute and conformance WellnessAttribute()
{
  v2 = lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute;
  if (!lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute;
  if (!lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessAttribute and conformance WellnessAttribute);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessAttribute_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessAttribute@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessAttribute_optional *a2@<X8>)
{
  result.value = WellnessAttribute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessAttribute@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessAttribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

id LogSpecificMedicationsIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v12 = v1;
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v2 = MedsUndoer.init()();
    __dst[3] = &type metadata for SpecificMedicationsPersistor;
    __dst[4] = &protocol witness table for SpecificMedicationsPersistor;
    __dst[0] = v2;
    __dst[1] = v3;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage]);
  v8.receiver = v12;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v5);
  v12 = v5;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v12);
  return v5;
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 656) = v1;
  *(v2 + 648) = a1;
  *(v2 + 408) = v2;
  *(v2 + 416) = 0;
  *(v2 + 424) = 0;
  *(v2 + 952) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 544) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  v3 = type metadata accessor for Date();
  *(v2 + 664) = v3;
  v8 = *(v3 - 8);
  *(v2 + 672) = v8;
  v4 = *(v8 + 64) + 15;
  *(v2 + 680) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v2 + 688) = swift_task_alloc();
  *(v2 + 696) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v2 + 704) = v5;
  v10 = *(v5 - 8);
  *(v2 + 712) = v10;
  v11 = *(v10 + 64);
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  *(v2 + 744) = swift_task_alloc();
  *(v2 + 752) = swift_task_alloc();
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  *(v2 + 416) = a1;
  *(v2 + 424) = v1;
  v6 = *(v2 + 408);

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

{
  v301 = v1;
  MEMORY[0x28223BE20](a1);
  v282 = v1;
  v283 = *(v1 + 953);
  *(v1 + 408) = v1;
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if ((v283 & 1) == 0)
  {
    v54 = *(v1 + 792);
    v52 = *(v1 + 784);
    v53 = *(v1 + 776);
    v27 = *(v1 + 720);
    v51 = *(v1 + 704);
    v50 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v53(v27, v50, v51);
    swift_endAccess();
    v56 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    v57 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v56, v55))
    {
      v28 = *(v1 + 800);
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v47 = createStorage<A>(capacity:type:)(0);
      v48 = createStorage<A>(capacity:type:)(0);
      *(v1 + 432) = v46;
      *(v1 + 440) = v47;
      *(v1 + 448) = v48;
      serialize(_:at:)(0, (v1 + 432));
      serialize(_:at:)(0, (v1 + 432));
      *(v1 + 456) = v57;
      v49 = swift_task_alloc();
      v49[2] = v1 + 432;
      v49[3] = v1 + 440;
      v49[4] = v1 + 448;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v28)
      {
      }

      _os_log_impl(&dword_269912000, v56, v55, "Not authorized to write medications data.", v46, 2u);
      destroyStorage<A>(_:count:)(v47, 0, v45);
      destroyStorage<A>(_:count:)(v48, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v46, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v43 = *(v1 + 816);
    v44 = *(v1 + 808);
    v41 = *(v1 + 720);
    v42 = *(v1 + 704);
    MEMORY[0x277D82BD8](v56);
    v44(v41, v42);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v219 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    goto LABEL_118;
  }

  v278 = *(v1 + 792);
  v276 = *(v1 + 784);
  v277 = *(v1 + 776);
  v2 = *(v1 + 760);
  v275 = *(v1 + 704);
  v274 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v277(v2, v274, v275);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v279 = static os_log_type_t.debug.getter();
  v281 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v279))
  {
    v3 = *(v1 + 800);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v271 = createStorage<A>(capacity:type:)(0);
    v272 = createStorage<A>(capacity:type:)(0);
    *(v1 + 584) = buf;
    *(v1 + 592) = v271;
    *(v1 + 600) = v272;
    serialize(_:at:)(0, (v1 + 584));
    serialize(_:at:)(0, (v1 + 584));
    *(v1 + 608) = v281;
    v273 = swift_task_alloc();
    v273[2] = v1 + 584;
    v273[3] = v1 + 592;
    v273[4] = v1 + 600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, oslog, v279, "Authorization check successful for medications!", buf, 2u);
    destroyStorage<A>(_:count:)(v271, 0, v269);
    destroyStorage<A>(_:count:)(v272, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v268 = 0;
  }

  else
  {

    v268 = *(v1 + 800);
  }

  v265 = *(v1 + 816);
  v266 = *(v1 + 808);
  v263 = *(v1 + 760);
  v264 = *(v1 + 704);
  v267 = *(v1 + 648);
  MEMORY[0x277D82BD8](oslog);
  v266(v263, v264);
  *(v1 + 464) = [v267 medStatus];
  if (*(v1 + 464))
  {
    v260 = *(v1 + 464);
    MEMORY[0x277D82BE0](v260);
    outlined destroy of HealthKitPersistor((v1 + 464));
    v261 = [v260 BOOLValue];
    MEMORY[0x277D82BD8](v260);
    v262 = v261;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v1 + 464));
    v262 = 2;
  }

  if (v262 == 2)
  {
    v71 = *(v1 + 792);
    v69 = *(v1 + 784);
    v70 = *(v1 + 776);
    v26 = *(v1 + 728);
    v68 = *(v1 + 704);
    v67 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v70(v26, v67, v68);
    swift_endAccess();
    v73 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    v74 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v73, v72))
    {

      goto LABEL_111;
    }

    v63 = static UnsafeMutablePointer.allocate(capacity:)();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v64 = createStorage<A>(capacity:type:)(0);
    v65 = createStorage<A>(capacity:type:)(0);
    *(v1 + 472) = v63;
    *(v1 + 480) = v64;
    *(v1 + 488) = v65;
    serialize(_:at:)(0, (v1 + 472));
    serialize(_:at:)(0, (v1 + 472));
    *(v1 + 496) = v74;
    v66 = swift_task_alloc();
    v66[2] = v1 + 472;
    v66[3] = v1 + 480;
    v66[4] = v1 + 488;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v268)
    {

      _os_log_impl(&dword_269912000, v73, v72, "Unable to extract BOOLean value for medStatusTaken from LogSpecificMedicationsIntent.", v63, 2u);
      destroyStorage<A>(_:count:)(v64, 0, v62);
      destroyStorage<A>(_:count:)(v65, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v63, MEMORY[0x277D84B78]);

LABEL_111:
      v60 = *(v1 + 816);
      v61 = *(v1 + 808);
      v58 = *(v1 + 728);
      v59 = *(v1 + 704);
      MEMORY[0x277D82BD8](v73);
      v61(v58, v59);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v219 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
LABEL_118:
      v29 = *(v1 + 768);
      v32 = *(v1 + 760);
      v33 = *(v1 + 752);
      v34 = *(v1 + 744);
      v35 = *(v1 + 736);
      v36 = *(v1 + 728);
      v37 = *(v1 + 720);
      v38 = *(v1 + 696);
      v39 = *(v1 + 688);
      v40 = *(v1 + 680);

      v30 = *(*(v1 + 408) + 8);
      v31 = *(v1 + 408);

      return v30(v219);
    }
  }

  v4 = *(v1 + 648);
  *(v1 + 952) = v262 & 1;
  v259 = [v4 medicationIDs];
  if (v259)
  {
    v257 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v259);
    v258 = v257;
  }

  else
  {
    v258 = 0;
  }

  *(v1 + 832) = v258;
  if (!v258)
  {
    goto LABEL_52;
  }

  v5 = *(v1 + 648);
  *(v1 + 544) = v258;
  v255 = [v5 logAsNeeded];
  MEMORY[0x277D82BE0](v255);
  type metadata accessor for NSNumber();
  v256.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  MEMORY[0x277D82BE0](v256.super.super.isa);
  *(v1 + 360) = v255;
  *(v1 + 368) = v256;
  if (*(v1 + 360))
  {
    outlined init with copy of NSNumber?((v1 + 360), (v1 + 576));
    if (*(v1 + 368))
    {
      v299 = *(v1 + 576);
      v300 = *(v1 + 368);
      v254 = static NSObject.== infix(_:_:)();
      MEMORY[0x277D82BD8](v300);
      MEMORY[0x277D82BD8](v299);
      outlined destroy of HealthKitPersistor((v1 + 360));
      MEMORY[0x277D82BD8](v256.super.super.isa);
      MEMORY[0x277D82BD8](v255);
      if ((v254 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_26;
    }

    MEMORY[0x277D82BD8](*(v1 + 576));
  }

  else if (!*(v1 + 368))
  {
    outlined destroy of HealthKitPersistor((v1 + 360));
    MEMORY[0x277D82BD8](v256.super.super.isa);
    MEMORY[0x277D82BD8](v255);
LABEL_26:
    *(v1 + 552) = v258;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    Collection.first.getter();
    v252 = *(v1 + 376);
    v253 = *(v1 + 384);
    *(v1 + 840) = v253;
    if (v253)
    {
      *(v1 + 392) = v252;
      *(v1 + 400) = v253;
      if (MEMORY[0x26D6494A0](v258, MEMORY[0x277D837D0]) == 1)
      {
        v251 = *(v1 + 648);
        outlined init with copy of QuantityPersisting(*(v1 + 656) + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v1 + 136);
        v249 = *(v1 + 160);
        v250 = *(v1 + 168);
        __swift_project_boxed_opaque_existential_1((v1 + 136), v249);
        *(v1 + 560) = [v251 dosage];
        if (*(v1 + 560))
        {
          v248 = *(v1 + 560);
          MEMORY[0x277D82BE0](v248);
          outlined destroy of HealthKitPersistor((v1 + 560));
          [v248 doubleValue];
          MEMORY[0x277D82BD8](v248);
        }

        else
        {
          outlined destroy of HealthKitPersistor((v1 + 560));
        }

        v247 = [*(v1 + 648) dosageUnit];
        if (v247)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v245 = v6;
          MEMORY[0x277D82BD8](v247);
          v246 = v245;
        }

        else
        {
          v246 = 0;
        }

        *(v1 + 848) = v246;
        *(v1 + 568) = [*(v1 + 648) strength];
        if (*(v1 + 568))
        {
          v243 = *(v1 + 568);
          MEMORY[0x277D82BE0](v243);
          outlined destroy of HealthKitPersistor((v1 + 568));
          [v243 doubleValue];
          MEMORY[0x277D82BD8](v243);
          v244 = 0;
        }

        else
        {
          outlined destroy of HealthKitPersistor((v1 + 568));
          v244 = 1;
        }

        v242 = [*(v1 + 648) strengthUnit];
        if (v242)
        {
          v238 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v239 = v7;
          MEMORY[0x277D82BD8](v242);
          v240 = v238;
          v241 = v239;
        }

        else
        {
          v240 = 0;
          v241 = 0;
        }

        *(v1 + 856) = v241;
        v237 = *(v250 + 32) + **(v250 + 32);
        v8 = *(*(v250 + 32) + 4);
        v9 = swift_task_alloc();
        v282[108] = v9;
        *v9 = v282[51];
        v9[1] = LogSpecificMedicationsIntentHandler.handle(intent:);
        v303 = v244 & 1;
        v304 = v240;
        v305 = v241;
        v306 = v249;
        v307 = v250;

        __asm { BRAA            X8, X16 }
      }
    }

    v234 = *(v1 + 792);
    v226 = *(v1 + 784);
    v227 = *(v1 + 776);
    v10 = *(v1 + 752);
    v225 = *(v1 + 704);
    v224 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v227(v10, v224, v225);
    swift_endAccess();

    v228 = swift_allocObject();
    *(v228 + 16) = v258;
    log = Logger.logObject.getter();
    v236 = static os_log_type_t.error.getter();
    v230 = swift_allocObject();
    *(v230 + 16) = 0;
    v231 = swift_allocObject();
    *(v231 + 16) = 8;
    v229 = swift_allocObject();
    *(v229 + 16) = partial apply for implicit closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v229 + 24) = v228;
    v232 = swift_allocObject();
    *(v232 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v232 + 24) = v229;
    _allocateUninitializedArray<A>(_:)();
    v233 = v11;

    *v233 = partial apply for closure #1 in OSLogArguments.append(_:);
    v233[1] = v230;

    v233[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v233[3] = v231;

    v233[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v233[5] = v232;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v236))
    {
      v221 = static UnsafeMutablePointer.allocate(capacity:)();
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v222 = createStorage<A>(capacity:type:)(0);
      v223 = createStorage<A>(capacity:type:)(0);
      v294 = v221;
      v295 = v222;
      v296 = v223;
      serialize(_:at:)(0, &v294);
      serialize(_:at:)(1, &v294);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v230;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      if (v268)
      {
      }

      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v231;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      v297 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v298 = v232;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      _os_log_impl(&dword_269912000, log, v236, "saveAsNeededWithStrength should only be called with a single medicationID but %ld found, returning .failure.", v221, 0xCu);
      destroyStorage<A>(_:count:)(v222, 0, v220);
      destroyStorage<A>(_:count:)(v223, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v221, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v216 = *(v1 + 816);
    v217 = *(v1 + 808);
    v214 = *(v1 + 752);
    v215 = *(v1 + 704);
    MEMORY[0x277D82BD8](log);
    v217(v214, v215);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v218 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v219 = v218;
    goto LABEL_118;
  }

  outlined destroy of (HKQuantitySample, HKQuantitySample)((v1 + 360));
  MEMORY[0x277D82BD8](v256.super.super.isa);
  MEMORY[0x277D82BD8](v255);
LABEL_51:

LABEL_52:
  v213 = [*(v1 + 648) scheduleID];
  if (v213)
  {
    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v210 = v13;
    MEMORY[0x277D82BD8](v213);
    v211 = v209;
    v212 = v210;
  }

  else
  {
    v211 = 0;
    v212 = 0;
  }

  *(v1 + 880) = v212;
  if (!v212)
  {
    v144 = *(v1 + 792);
    v108 = *(v1 + 784);
    v109 = *(v1 + 776);
    v19 = *(v1 + 736);
    v107 = *(v1 + 704);
    v110 = *(v1 + 648);
    v106 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v109(v19, v106, v107);
    swift_endAccess();
    MEMORY[0x277D82BE0](v110);
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    MEMORY[0x277D82BE0](v110);
    v113 = swift_allocObject();
    *(v113 + 16) = v110;
    MEMORY[0x277D82BE0](v110);
    v115 = swift_allocObject();
    *(v115 + 16) = v110;
    v117 = swift_allocObject();
    *(v117 + 16) = v262 & 1;
    MEMORY[0x277D82BE0](v110);
    v121 = swift_allocObject();
    *(v121 + 16) = v110;
    MEMORY[0x277D82BE0](v110);
    v123 = swift_allocObject();
    *(v123 + 16) = v110;
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.debug.getter();
    v125 = swift_allocObject();
    *(v125 + 16) = 32;
    v126 = swift_allocObject();
    *(v126 + 16) = 8;
    v112 = swift_allocObject();
    *(v112 + 16) = partial apply for implicit closure #2 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v112 + 24) = v111;
    v127 = swift_allocObject();
    *(v127 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v127 + 24) = v112;
    v128 = swift_allocObject();
    *(v128 + 16) = 32;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v114 = swift_allocObject();
    *(v114 + 16) = partial apply for implicit closure #3 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v114 + 24) = v113;
    v130 = swift_allocObject();
    *(v130 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v130 + 24) = v114;
    v131 = swift_allocObject();
    *(v131 + 16) = 32;
    v132 = swift_allocObject();
    *(v132 + 16) = 8;
    v116 = swift_allocObject();
    *(v116 + 16) = partial apply for implicit closure #4 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v116 + 24) = v115;
    v133 = swift_allocObject();
    *(v133 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v133 + 24) = v116;
    v134 = swift_allocObject();
    *(v134 + 16) = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = 4;
    v118 = swift_allocObject();
    *(v118 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v118 + 24) = v117;
    v119 = swift_allocObject();
    *(v119 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v119 + 24) = v118;
    v120 = swift_allocObject();
    *(v120 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v120 + 24) = v119;
    v136 = swift_allocObject();
    *(v136 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v136 + 24) = v120;
    v137 = swift_allocObject();
    *(v137 + 16) = 32;
    v138 = swift_allocObject();
    *(v138 + 16) = 8;
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v122 + 24) = v121;
    v139 = swift_allocObject();
    *(v139 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v139 + 24) = v122;
    v140 = swift_allocObject();
    *(v140 + 16) = 32;
    v141 = swift_allocObject();
    *(v141 + 16) = 8;
    v124 = swift_allocObject();
    *(v124 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v124 + 24) = v123;
    v142 = swift_allocObject();
    *(v142 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v142 + 24) = v124;
    _allocateUninitializedArray<A>(_:)();
    v143 = v20;

    *v143 = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[1] = v125;

    v143[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[3] = v126;

    v143[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[5] = v127;

    v143[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[7] = v128;

    v143[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[9] = v129;

    v143[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[11] = v130;

    v143[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[13] = v131;

    v143[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[15] = v132;

    v143[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[17] = v133;

    v143[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[19] = v134;

    v143[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[21] = v135;

    v143[22] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v143[23] = v136;

    v143[24] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[25] = v137;

    v143[26] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[27] = v138;

    v143[28] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[29] = v139;

    v143[30] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[31] = v140;

    v143[32] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[33] = v141;

    v143[34] = partial apply for closure #1 in OSLogArguments.append(_:);
    v143[35] = v142;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v145, v146))
    {
      v103 = static UnsafeMutablePointer.allocate(capacity:)();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v104 = createStorage<A>(capacity:type:)(0);
      v105 = createStorage<A>(capacity:type:)(5);
      v284 = v103;
      v285 = v104;
      v286 = v105;
      serialize(_:at:)(2, &v284);
      serialize(_:at:)(6, &v284);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      if (v268)
      {
      }

      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v129;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v131;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v134;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v135;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v288 = v136;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v138;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v140;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      v287 = partial apply for closure #1 in OSLogArguments.append(_:);
      v288 = v142;
      closure #1 in osLogInternal(_:log:type:)(&v287, &v284, &v285, &v286);
      _os_log_impl(&dword_269912000, v145, v146, "Not provided scheduleID, so persisting specific medication as default...\nstartTime: %s,\nendTime: %s,\nmedicationID: %s,\nmedStatusIsTaken: %{BOOL}d,\ndosage: %s,\ndosageUnit: %s,", v103, 0x3Au);
      destroyStorage<A>(_:count:)(v104, 0, v102);
      destroyStorage<A>(_:count:)(v105, 5, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v103, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v95 = *(v1 + 816);
    v96 = *(v1 + 808);
    v93 = *(v1 + 736);
    v94 = *(v1 + 704);
    v97 = *(v1 + 656);
    v100 = *(v1 + 648);
    MEMORY[0x277D82BD8](v145);
    v96(v93, v94);
    outlined init with copy of QuantityPersisting(v97 + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v1 + 56);
    v98 = *(v1 + 80);
    v99 = *(v1 + 88);
    __swift_project_boxed_opaque_existential_1((v1 + 56), v98);
    v101 = [v100 startTime];
    if (v101)
    {
      v92 = *(v1 + 696);
      v90 = *(v1 + 680);
      v91 = *(v1 + 664);
      v89 = *(v1 + 672);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v89 + 32))(v92, v90, v91);
      (*(v89 + 56))(v92, 0, 1, v91);
      MEMORY[0x277D82BD8](v101);
    }

    else
    {
      (*(*(v1 + 672) + 56))(*(v1 + 696), 1, 1, *(v1 + 664));
    }

    v88 = [*(v1 + 648) endTime];
    if (v88)
    {
      v87 = *(v1 + 688);
      v85 = *(v1 + 680);
      v86 = *(v1 + 664);
      v84 = *(v1 + 672);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v84 + 32))(v87, v85, v86);
      (*(v84 + 56))(v87, 0, 1, v86);
      MEMORY[0x277D82BD8](v88);
    }

    else
    {
      (*(*(v1 + 672) + 56))(*(v1 + 688), 1, 1, *(v1 + 664));
    }

    *(v1 + 504) = [*(v1 + 648) hasMeridiem];
    if (*(v1 + 504))
    {
      v83 = *(v1 + 504);
      MEMORY[0x277D82BE0](v83);
      outlined destroy of HealthKitPersistor((v1 + 504));
      [v83 BOOLValue];
      MEMORY[0x277D82BD8](v83);
    }

    else
    {
      outlined destroy of HealthKitPersistor((v1 + 504));
    }

    v82 = [*(v1 + 648) medicationIDs];
    if (v82)
    {
      v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v82);
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    *(v1 + 920) = v81;
    *(v1 + 512) = [*(v1 + 648) dosage];
    if (*(v1 + 512))
    {
      v79 = *(v1 + 512);
      MEMORY[0x277D82BE0](v79);
      outlined destroy of HealthKitPersistor((v1 + 512));
      [v79 doubleValue];
      MEMORY[0x277D82BD8](v79);
    }

    else
    {
      outlined destroy of HealthKitPersistor((v1 + 512));
    }

    v78 = [*(v1 + 648) dosageUnit];
    if (v78)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v21;
      MEMORY[0x277D82BD8](v78);
      v77 = v76;
    }

    else
    {
      v77 = 0;
    }

    *(v1 + 928) = v77;
    v75 = *(v99 + 16) + **(v99 + 16);
    v22 = *(*(v99 + 16) + 4);
    v23 = swift_task_alloc();
    *(v1 + 936) = v23;
    *v23 = *(v1 + 408);
    v23[1] = LogSpecificMedicationsIntentHandler.handle(intent:);
    v24 = *(v1 + 696);
    v25 = *(v1 + 688);
    v305 = v77;
    v306 = v98;
    v307 = v99;

    __asm { BRAA            X8, X16 }
  }

  v206 = *(v1 + 792);
  v175 = *(v1 + 784);
  v176 = *(v1 + 776);
  v14 = *(v1 + 744);
  v174 = *(v1 + 704);
  v177 = *(v1 + 648);
  *(v1 + 344) = v211;
  *(v1 + 352) = v212;
  v173 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v176(v14, v173, v174);
  swift_endAccess();

  v178 = swift_allocObject();
  *(v178 + 16) = v211;
  *(v178 + 24) = v212;
  MEMORY[0x277D82BE0](v177);
  v180 = swift_allocObject();
  *(v180 + 16) = v177;
  v182 = swift_allocObject();
  *(v182 + 16) = v262 & 1;
  MEMORY[0x277D82BE0](v177);
  v186 = swift_allocObject();
  *(v186 + 16) = v177;
  MEMORY[0x277D82BE0](v177);
  v188 = swift_allocObject();
  *(v188 + 16) = v177;
  v207 = Logger.logObject.getter();
  v208 = static os_log_type_t.debug.getter();
  v190 = swift_allocObject();
  *(v190 + 16) = 32;
  v191 = swift_allocObject();
  *(v191 + 16) = 8;
  v179 = swift_allocObject();
  *(v179 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
  *(v179 + 24) = v178;
  v192 = swift_allocObject();
  *(v192 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v192 + 24) = v179;
  v193 = swift_allocObject();
  *(v193 + 16) = 32;
  v194 = swift_allocObject();
  *(v194 + 16) = 8;
  v181 = swift_allocObject();
  *(v181 + 16) = partial apply for implicit closure #4 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v181 + 24) = v180;
  v195 = swift_allocObject();
  *(v195 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v195 + 24) = v181;
  v196 = swift_allocObject();
  *(v196 + 16) = 0;
  v197 = swift_allocObject();
  *(v197 + 16) = 4;
  v183 = swift_allocObject();
  *(v183 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v183 + 24) = v182;
  v184 = swift_allocObject();
  *(v184 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v184 + 24) = v183;
  v185 = swift_allocObject();
  *(v185 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v185 + 24) = v184;
  v198 = swift_allocObject();
  *(v198 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v198 + 24) = v185;
  v199 = swift_allocObject();
  *(v199 + 16) = 32;
  v200 = swift_allocObject();
  *(v200 + 16) = 8;
  v187 = swift_allocObject();
  *(v187 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v187 + 24) = v186;
  v201 = swift_allocObject();
  *(v201 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v201 + 24) = v187;
  v202 = swift_allocObject();
  *(v202 + 16) = 32;
  v203 = swift_allocObject();
  *(v203 + 16) = 8;
  v189 = swift_allocObject();
  *(v189 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v189 + 24) = v188;
  v204 = swift_allocObject();
  *(v204 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v204 + 24) = v189;
  _allocateUninitializedArray<A>(_:)();
  v205 = v15;

  *v205 = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[1] = v190;

  v205[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[3] = v191;

  v205[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[5] = v192;

  v205[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[7] = v193;

  v205[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[9] = v194;

  v205[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[11] = v195;

  v205[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[13] = v196;

  v205[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[15] = v197;

  v205[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v205[17] = v198;

  v205[18] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[19] = v199;

  v205[20] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[21] = v200;

  v205[22] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[23] = v201;

  v205[24] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[25] = v202;

  v205[26] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[27] = v203;

  v205[28] = partial apply for closure #1 in OSLogArguments.append(_:);
  v205[29] = v204;
  _finalizeUninitializedArray<A>(_:)();

  if (!os_log_type_enabled(v207, v208))
  {

LABEL_61:
    v162 = *(v1 + 816);
    v163 = *(v1 + 808);
    v160 = *(v1 + 744);
    v161 = *(v1 + 704);
    v164 = *(v1 + 656);
    v167 = *(v1 + 648);
    MEMORY[0x277D82BD8](v207);
    v163(v160, v161);
    outlined init with copy of QuantityPersisting(v164 + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v1 + 96);
    v165 = *(v1 + 120);
    v166 = *(v1 + 128);
    __swift_project_boxed_opaque_existential_1((v1 + 96), v165);
    v168 = [v167 medicationIDs];
    if (v168)
    {
      v158 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v168);
      v159 = v158;
    }

    else
    {
      v159 = 0;
    }

    *(v1 + 888) = v159;
    *(v1 + 520) = [*(v1 + 648) dosage];
    if (*(v1 + 520))
    {
      v157 = *(v1 + 520);
      MEMORY[0x277D82BE0](v157);
      outlined destroy of HealthKitPersistor((v1 + 520));
      [v157 doubleValue];
      MEMORY[0x277D82BD8](v157);
    }

    else
    {
      outlined destroy of HealthKitPersistor((v1 + 520));
    }

    v156 = [*(v1 + 648) dosageUnit];
    if (v156)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v154 = v16;
      MEMORY[0x277D82BD8](v156);
      v155 = v154;
    }

    else
    {
      v155 = 0;
    }

    *(v1 + 896) = v155;
    *(v1 + 528) = [*(v1 + 648) confirmedAsNeeded];
    if (*(v1 + 528))
    {
      v151 = *(v1 + 528);
      MEMORY[0x277D82BE0](v151);
      outlined destroy of HealthKitPersistor((v1 + 528));
      v152 = [v151 BOOLValue];
      MEMORY[0x277D82BD8](v151);
      v153 = v152;
    }

    else
    {
      outlined destroy of HealthKitPersistor((v1 + 528));
      v153 = 2;
    }

    *(v1 + 536) = [*(v1 + 648) confirmedAsScheduled];
    if (*(v1 + 536))
    {
      v148 = *(v1 + 536);
      MEMORY[0x277D82BE0](v148);
      outlined destroy of HealthKitPersistor((v1 + 536));
      v149 = [v148 BOOLValue];
      MEMORY[0x277D82BD8](v148);
      v150 = v149;
    }

    else
    {
      outlined destroy of HealthKitPersistor((v1 + 536));
      v150 = 2;
    }

    v147 = *(v166 + 24) + **(v166 + 24);
    v17 = *(*(v166 + 24) + 4);
    v18 = swift_task_alloc();
    v282[113] = v18;
    *v18 = v282[51];
    v18[1] = LogSpecificMedicationsIntentHandler.handle(intent:);
    LOBYTE(v305) = v153;
    BYTE1(v305) = v150;
    v306 = v165;
    v307 = v166;

    __asm { BRAA            X8, X16 }
  }

  v170 = static UnsafeMutablePointer.allocate(capacity:)();
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v171 = createStorage<A>(capacity:type:)(0);
  v172 = createStorage<A>(capacity:type:)(4);
  v289 = v170;
  v290 = v171;
  v291 = v172;
  serialize(_:at:)(2, &v289);
  serialize(_:at:)(5, &v289);
  v292 = partial apply for closure #1 in OSLogArguments.append(_:);
  v293 = v190;
  closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
  if (!v268)
  {
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v191;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v192;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v193;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v194;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v195;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v196;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v197;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v293 = v198;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v199;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v200;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v201;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v202;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v203;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    v292 = partial apply for closure #1 in OSLogArguments.append(_:);
    v293 = v204;
    closure #1 in osLogInternal(_:log:type:)(&v292, &v289, &v290, &v291);
    _os_log_impl(&dword_269912000, v207, v208, "Provided scheduleID and potentially {medicationID, dosage, dosageUnit}, so persisting specific medication...\n    scheduleID: %s,\n    medicationID: %s,\n    medStatusIsTaken: %{BOOL}d,\n    dosage: %s,\n    dosageUnit: %s,", v170, 0x30u);
    destroyStorage<A>(_:count:)(v171, 0, v169);
    destroyStorage<A>(_:count:)(v172, 4, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v170, MEMORY[0x277D84B78]);

    goto LABEL_61;
  }
}

{
  v8 = *v1;
  v3 = *(*v1 + 864);
  v6 = *(*v1 + 856);
  v7 = *(*v1 + 848);
  *(v8 + 408) = *v1;
  *(v8 + 872) = a1;

  v4 = *(v8 + 408);

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 904);
  v6 = *(*v1 + 896);
  v7 = *(*v1 + 888);
  *(v8 + 408) = *v1;
  *(v8 + 912) = a1;

  v4 = *(v8 + 408);

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

{
  v10 = *v1;
  v3 = *(*v1 + 936);
  v6 = *(*v1 + 928);
  v7 = *(*v1 + 920);
  v9 = *(*v1 + 696);
  v8 = *(*v1 + 688);
  *(v10 + 408) = *v1;
  *(v10 + 944) = a1;

  outlined destroy of Date?(v8);
  outlined destroy of Date?(v9);
  v4 = *(v10 + 408);

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)()
{
  v1 = v0[96];
  v20 = v0[89];
  v22 = v0[88];
  v0[51] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[97] = v2;
  v0[98] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v0[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 616) = buf;
    *(v19 + 624) = v16;
    *(v19 + 632) = v17;
    serialize(_:at:)(0, (v19 + 616));
    serialize(_:at:)(0, (v19 + 616));
    *(v19 + 640) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 616;
    v18[3] = v19 + 624;
    v18[4] = v19 + 632;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Checking authorization for medications...", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v19 + 800) = 0;
  v8 = *(v19 + 768);
  v9 = *(v19 + 704);
  v10 = *(v19 + 656);
  v7 = *(v19 + 712);
  MEMORY[0x277D82BD8](v24);
  v3 = *(v7 + 8);
  *(v19 + 808) = v3;
  *(v19 + 816) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9);
  outlined init with copy of QuantityPersisting(v10 + OBJC_IVAR____TtC19SiriWellnessIntents35LogSpecificMedicationsIntentHandler_storage, v19 + 16);
  v13 = *(v19 + 40);
  v11 = *(v19 + 48);
  __swift_project_boxed_opaque_existential_1((v19 + 16), v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v4 = *(*(v11 + 8) + 4);
  v5 = swift_task_alloc();
  *(v19 + 824) = v5;
  *v5 = *(v19 + 408);
  v5[1] = LogSpecificMedicationsIntentHandler.handle(intent:);

  return v12(v13, v11);
}

{
  v5 = v0[105];
  v6 = v0[104];
  v0[51] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v16 = v0[109];
  v1 = v0[96];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[87];
  v14 = v0[86];
  v15 = v0[85];

  v2 = *(v0[51] + 8);
  v3 = v0[51];

  return v2(v16);
}

{
  v5 = v0[110];
  v0[51] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v15 = v0[114];
  v1 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[93];
  v9 = v0[92];
  v10 = v0[91];
  v11 = v0[90];
  v12 = v0[87];
  v13 = v0[86];
  v14 = v0[85];

  v2 = *(v0[51] + 8);
  v3 = v0[51];

  return v2(v15);
}

{
  v0[51] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v14 = v0[118];
  v1 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[87];
  v12 = v0[86];
  v13 = v0[85];

  v2 = *(v0[51] + 8);
  v3 = v0[51];

  return v2(v14);
}

uint64_t LogSpecificMedicationsIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 824);
  *(v6 + 408) = *v1;
  *(v6 + 953) = a1;

  v4 = *(v6 + 408);

  return MEMORY[0x2822009F8](LogSpecificMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t implicit closure #2 in LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  v9 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v7 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v8 = v3 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v9);
  v12 = v3 - v11;
  v13 = [v1 startTime];
  if (v13)
  {
    v3[1] = v13;
    v3[0] = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v5 + 32))(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
    MEMORY[0x277D82BD8](v3[0]);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #3 in LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  v9 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v7 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v8 = v3 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v9);
  v12 = v3 - v11;
  v13 = [v1 endTime];
  if (v13)
  {
    v3[1] = v13;
    v3[0] = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v5 + 32))(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
    MEMORY[0x277D82BD8](v3[0]);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in LogSpecificMedicationsIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 medicationIDs];
  if (v2)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
  lazy protocol witness table accessor for type [String]? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:)(void *a1)
{
  [a1 dosage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 dosageUnit];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t @objc closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return LogSpecificMedicationsIntentHandler.handle(intent:)(a1);
}

id LogSpecificMedicationsIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SpecificMedicationsPersistor.isLoggingAuthorized()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  MEMORY[0x277D82BE0](a1);
  v3 = swift_task_alloc();
  *(v5 + 48) = v3;
  *v3 = *(v5 + 32);
  v3[1] = SpecificMedicationsPersistor.isLoggingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(a1);
}

uint64_t SpecificMedicationsPersistor.isLoggingAuthorized()(unsigned int a1)
{
  v6 = *v1;
  v2 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(v6 + 32) = *v1;

  v3 = *(*(v6 + 32) + 8);

  return v3(a1);
}

uint64_t SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = v29;
  *(v8 + 328) = v28;
  *(v8 + 320) = v27;
  *(v8 + 312) = a8;
  *(v8 + 131) = a7;
  *(v8 + 304) = a6;
  *(v8 + 130) = a5 & 1;
  *(v8 + 296) = a4;
  *(v8 + 129) = a3 & 1;
  *(v8 + 288) = a2;
  *(v8 + 280) = a1;
  *(v8 + 136) = v8;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 488) = 0;
  *(v8 + 160) = 0;
  *(v8 + 496) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 504) = 0;
  *(v8 + 512) = 0;
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  v11 = type metadata accessor for DateInterval();
  *(v8 + 344) = v11;
  v15 = *(v11 - 8);
  *(v8 + 352) = v15;
  v16 = *(v15 + 64);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 400) = v12;
  v18 = *(v12 - 8);
  *(v8 + 408) = v18;
  v19 = *(v18 + 64);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
  *(v8 + 488) = a3 & 1;
  *(v8 + 160) = a4;
  *(v8 + 496) = a5 & 1;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7 & 1;
  *(v8 + 88) = a8;
  *(v8 + 96) = v27;
  *(v8 + 104) = v28;
  *(v8 + 112) = v29;
  v13 = *(v8 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)()
{
  v1 = v0[54];
  v96 = v0[51];
  v98 = v0[50];
  v0[17] = v0;
  v97 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v99 = *(v96 + 16);
  v99(v1, v97, v98);
  swift_endAccess();
  v101 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v102 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v101, v100))
  {
    v91 = static UnsafeMutablePointer.allocate(capacity:)();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v92 = createStorage<A>(capacity:type:)(0);
    v93 = createStorage<A>(capacity:type:)(0);
    *(v95 + 248) = v91;
    *(v95 + 256) = v92;
    *(v95 + 264) = v93;
    serialize(_:at:)(0, (v95 + 248));
    serialize(_:at:)(0, (v95 + 248));
    *(v95 + 272) = v102;
    v94 = swift_task_alloc();
    v94[2] = v95 + 248;
    v94[3] = v95 + 256;
    v94[4] = v95 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v101, v100, "Starting to save medication.", v91, 2u);
    destroyStorage<A>(_:count:)(v92, 0, v90);
    destroyStorage<A>(_:count:)(v93, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v91, MEMORY[0x277D84B78]);
  }

  v81 = *(v95 + 432);
  v82 = *(v95 + 400);
  v87 = *(v95 + 392);
  v88 = *(v95 + 344);
  v85 = *(v95 + 288);
  v84 = *(v95 + 280);
  v80 = *(v95 + 408);
  v86 = *(v95 + 352);
  MEMORY[0x277D82BD8](v101);
  v83 = *(v80 + 8);
  v83(v81, v82);
  dateInterval(startTime:endTime:)(v84, v85, v87);
  v89 = *(v86 + 48);
  v79 = v89(v87, 1, v88) != 1;
  v2 = *(v95 + 131);
  v3 = *(v95 + 304);
  *(v95 + 504) = v79;
  v78 = (v2 & 1) == 0;
  v4 = *(v95 + 320);

  if (v78)
  {
    v77 = 1;
  }

  else
  {
    v103 = *(v95 + 312);
    v77 = *(v95 + 320) != 0;
  }

  v5 = *(v95 + 320);

  *(v95 + 512) = v77;
  if (v79 && v77)
  {
    v6 = *(v95 + 424);
    v73 = *(v95 + 400);
    v72 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v99(v6, v72, v73);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v76 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v74))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v69 = createStorage<A>(capacity:type:)(0);
      v70 = createStorage<A>(capacity:type:)(0);
      *(v95 + 216) = buf;
      *(v95 + 224) = v69;
      *(v95 + 232) = v70;
      serialize(_:at:)(0, (v95 + 216));
      serialize(_:at:)(0, (v95 + 216));
      *(v95 + 240) = v76;
      v71 = swift_task_alloc();
      v71[2] = v95 + 216;
      v71[3] = v95 + 224;
      v71[4] = v95 + 232;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v74, "User specified dosage or dosageUnit while logging a scheduled med. This isn't currently supported. Returning failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v69, 0, v67);
      destroyStorage<A>(_:count:)(v70, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v62 = *(v95 + 424);
    v63 = *(v95 + 400);
    v64 = *(v95 + 392);
    MEMORY[0x277D82BD8](oslog);
    v83(v62, v63);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v65 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    outlined destroy of DateInterval?(v64);
    v66 = v65;
LABEL_31:
    v29 = *(v95 + 432);
    v32 = *(v95 + 424);
    v33 = *(v95 + 416);
    v34 = *(v95 + 392);
    v35 = *(v95 + 384);
    v36 = *(v95 + 376);
    v37 = *(v95 + 368);
    v38 = *(v95 + 360);

    v30 = *(*(v95 + 136) + 8);
    v31 = *(v95 + 136);

    return v30(v66);
  }

  v61 = *(v95 + 296);

  if (!v61)
  {
LABEL_20:
    v57 = *(v95 + 376);
    v56 = *(v95 + 344);
    outlined init with copy of DateInterval?(*(v95 + 392), v57);
    if (v89(v57, 1, v56) != 1)
    {
      (*(*(v95 + 352) + 32))(*(v95 + 360), *(v95 + 376), *(v95 + 344));
      v15 = swift_task_alloc();
      *(v95 + 456) = v15;
      *v15 = *(v95 + 136);
      v15[1] = SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:);
      v16 = *(v95 + 360);
      v17 = *(v95 + 336);
      v18 = *(v95 + 328);
      v19 = *(v95 + 130) & 1;
      v20 = *(v95 + 129) & 1;

      return SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)(v16, v19, v20, v18, v17);
    }

    v55 = *(v95 + 296);
    outlined destroy of DateInterval?(*(v95 + 376));

    if (v55)
    {
      v54 = *(v95 + 296);
      v53 = *(v95 + 131);
      *(v95 + 200) = v54;
      v21 = swift_task_alloc();
      *(v95 + 472) = v21;
      *v21 = *(v95 + 136);
      v21[1] = SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:);
      v22 = *(v95 + 336);
      v23 = *(v95 + 328);
      v24 = *(v95 + 320);
      v25 = *(v95 + 312);
      v26 = *(v95 + 304);
      v27 = *(v95 + 130) & 1;

      return SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)(v54, v27, v26, v53 & 1, v25, v24, v23, v22);
    }

    v28 = *(v95 + 416);
    v49 = *(v95 + 400);
    v48 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v99(v28, v48, v49);
    swift_endAccess();
    log = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v52 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v50))
    {
      v44 = static UnsafeMutablePointer.allocate(capacity:)();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v45 = createStorage<A>(capacity:type:)(0);
      v46 = createStorage<A>(capacity:type:)(0);
      *(v95 + 168) = v44;
      *(v95 + 176) = v45;
      *(v95 + 184) = v46;
      serialize(_:at:)(0, (v95 + 168));
      serialize(_:at:)(0, (v95 + 168));
      *(v95 + 192) = v52;
      v47 = swift_task_alloc();
      v47[2] = v95 + 168;
      v47[3] = v95 + 176;
      v47[4] = v95 + 184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v50, "Neither time nor schedule specified even though this is a Specific Med Logging Intent Handler, returning .failure.", v44, 2u);
      destroyStorage<A>(_:count:)(v45, 0, v43);
      destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v44, MEMORY[0x277D84B78]);
    }

    v39 = *(v95 + 416);
    v40 = *(v95 + 400);
    v41 = *(v95 + 392);
    MEMORY[0x277D82BD8](log);
    v83(v39, v40);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v42 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    outlined destroy of DateInterval?(v41);
    v66 = v42;
    goto LABEL_31;
  }

  v58 = *(v95 + 296);
  v7 = *(v95 + 392);
  v60 = *(v95 + 384);
  v59 = *(v95 + 344);
  *(v95 + 208) = v58;
  outlined init with copy of DateInterval?(v7, v60);
  if (v89(v60, 1, v59) == 1)
  {
    outlined destroy of DateInterval?(*(v95 + 384));

    goto LABEL_20;
  }

  (*(*(v95 + 352) + 32))(*(v95 + 368), *(v95 + 384), *(v95 + 344));
  v8 = swift_task_alloc();
  *(v95 + 440) = v8;
  *v8 = *(v95 + 136);
  v8[1] = SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:);
  v9 = *(v95 + 368);
  v10 = *(v95 + 336);
  v11 = *(v95 + 328);
  v12 = *(v95 + 130) & 1;
  v13 = *(v95 + 129) & 1;

  return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)(v58, v9, v12, v13, v11, v10);
}

{
  v9 = v0[49];
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[43];
  v8 = v0[37];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);

  outlined destroy of DateInterval?(v9);
  v17 = v0[56];
  v4 = v0[54];
  v10 = v0[53];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[48];
  v14 = v0[47];
  v15 = v0[46];
  v16 = v0[45];

  v5 = *(v0[17] + 8);
  v6 = v0[17];

  return v5(v17);
}

{
  v8 = v0[49];
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);
  outlined destroy of DateInterval?(v8);
  v16 = v0[58];
  v4 = v0[54];
  v9 = v0[53];
  v10 = v0[52];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[45];

  v5 = *(v0[17] + 8);
  v6 = v0[17];

  return v5(v16);
}

{
  v6 = v0[49];
  v1 = v0[37];
  v0[17] = v0;

  outlined destroy of DateInterval?(v6);
  v14 = v0[60];
  v2 = v0[54];
  v7 = v0[53];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v13 = v0[45];

  v3 = *(v0[17] + 8);
  v4 = v0[17];

  return v3(v14);
}

uint64_t SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 440);
  *(v6 + 136) = *v1;
  *(v6 + 448) = a1;

  v4 = *(v6 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 456);
  *(v6 + 136) = *v1;
  *(v6 + 464) = a1;

  v4 = *(v6 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 472);
  *(v6 + 136) = *v1;
  *(v6 + 480) = a1;

  v4 = *(v6 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 232) = a6;
  *(v6 + 224) = a5;
  *(v6 + 442) = a4 & 1;
  *(v6 + 441) = a3 & 1;
  *(v6 + 216) = a2;
  *(v6 + 208) = a1;
  *(v6 + 104) = v6;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 456) = 0;
  *(v6 + 464) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  v7 = type metadata accessor for Logger();
  *(v6 + 240) = v7;
  v12 = *(v7 - 8);
  *(v6 + 248) = v12;
  v8 = *(v12 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  v9 = type metadata accessor for DateInterval();
  *(v6 + 264) = v9;
  v13 = *(v9 - 8);
  *(v6 + 272) = v13;
  v14 = *(v13 + 64);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  *(v6 + 440) = a3 & 1;
  *(v6 + 448) = a4 & 1;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  v10 = *(v6 + 104);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)()
{
  v1 = *(v0 + 442);
  *(v0 + 104) = v0;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v33 + 296) = v2;
    *v2 = *(v33 + 104);
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v3 = *(v33 + 232);
    v4 = *(v33 + 224);
    v5 = *(v33 + 216);
    v6 = *(v33 + 208);
    v7 = *(v33 + 441) & 1;

    return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v6, v5, v7, v4, v3);
  }

  v30 = *(v33 + 208);
  getFallbackDateInterval(specifiedDateInterval:)(*(v33 + 216), *(v33 + 288));
  type metadata accessor for HKMedicationExposableDoseEvent();
  *(v33 + 128) = _allocateUninitializedArray<A>(_:)();
  *(v33 + 136) = _allocateUninitializedArray<A>(_:)();

  *(v33 + 144) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v31 = *(v33 + 72);
  *(v33 + 304) = v31;
  v32 = *(v33 + 80);
  *(v33 + 312) = v32;
  if (v32)
  {
    *(v33 + 88) = v31;
    *(v33 + 96) = v32;
    *(v33 + 320) = type metadata accessor for HKMedicationIdentifier();

    v29 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v33 + 328) = v29;
    v9 = swift_task_alloc();
    *(v33 + 336) = v9;
    *v9 = *(v33 + 104);
    v9[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v10 = *(v33 + 232);
    v11 = *(v33 + 224);
    v12 = *(v33 + 216);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v12, v29, v11, v10);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v33 + 56));
    v25 = *(v33 + 128);

    *(v33 + 152) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v26 = Collection.isEmpty.getter();

    *(v33 + 456) = (v26 ^ 1) & 1;
    v27 = *(v33 + 136);

    *(v33 + 160) = v27;
    v28 = Collection.isEmpty.getter();

    *(v33 + 464) = (v28 ^ 1) & 1;
    if ((v26 ^ 1) & 1) != 0 || ((v28 ^ 1))
    {
      if ((v26 ^ 1) & 1) != 0 && ((v28 ^ 1))
      {
        SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)(*(v33 + 216), *(v33 + 288), *(v33 + 224), *(v33 + 232), *(v33 + 280));
        v16 = swift_task_alloc();
        *(v33 + 392) = v16;
        *v16 = *(v33 + 104);
        v16[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v5 = *(v33 + 280);
        v3 = *(v33 + 232);
        v4 = *(v33 + 224);
        v6 = *(v33 + 208);
        v7 = *(v33 + 441) & 1;
      }

      else if ((v26 ^ 1))
      {
        v17 = swift_task_alloc();
        *(v33 + 408) = v17;
        *v17 = *(v33 + 104);
        v17[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v3 = *(v33 + 232);
        v4 = *(v33 + 224);
        v5 = *(v33 + 216);
        v6 = *(v33 + 208);
        v7 = *(v33 + 441) & 1;
      }

      else
      {
        v18 = swift_task_alloc();
        *(v33 + 424) = v18;
        *v18 = *(v33 + 104);
        v18[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v5 = *(v33 + 288);
        v3 = *(v33 + 232);
        v4 = *(v33 + 224);
        v6 = *(v33 + 208);
        v7 = *(v33 + 441) & 1;
      }

      return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v6, v5, v7, v4, v3);
    }

    v21 = *(v33 + 288);
    v20 = *(v33 + 264);
    v19 = *(v33 + 272);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v24 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
    outlined destroy of [HKQuantityType]((v33 + 136));
    outlined destroy of [HKQuantityType]((v33 + 128));
    (*(v19 + 8))(v21, v20);
    v13 = *(v33 + 288);
    v22 = *(v33 + 280);
    v23 = *(v33 + 256);

    v14 = *(*(v33 + 104) + 8);
    v15 = *(v33 + 104);

    return v14(v24);
  }
}

{
  v1 = v0[43];
  v2 = v0[40];
  v9 = v0[39];
  v8 = v0[38];
  v0[13] = v0;
  v0[22] = v1;

  v11 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
  v0[45] = v11;
  v3 = swift_task_alloc();
  v10[46] = v3;
  *v3 = v10[13];
  v3[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  v4 = v10[36];
  v5 = v10[29];
  v6 = v10[28];

  return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v4, v11, v6, v5);
}

{
  v29 = v0[47];
  v30 = v0[43];
  v31 = v0[39];
  v0[13] = v0;
  v0[23] = v29;

  v0[24] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();

  v0[25] = v29;
  Array.append<A>(contentsOf:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v32 = v0[9];
  v0[38] = v32;
  v33 = v0[10];
  v0[39] = v33;
  if (v33)
  {
    *(v28 + 88) = v32;
    *(v28 + 96) = v33;
    *(v28 + 320) = type metadata accessor for HKMedicationIdentifier();

    v27 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v28 + 328) = v27;
    v1 = swift_task_alloc();
    *(v28 + 336) = v1;
    *v1 = *(v28 + 104);
    v1[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v2 = *(v28 + 232);
    v3 = *(v28 + 224);
    v4 = *(v28 + 216);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v4, v27, v3, v2);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v28 + 56));
    v23 = *(v28 + 128);

    *(v28 + 152) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v24 = Collection.isEmpty.getter();

    *(v28 + 456) = (v24 ^ 1) & 1;
    v25 = *(v28 + 136);

    *(v28 + 160) = v25;
    v26 = Collection.isEmpty.getter();

    *(v28 + 464) = (v26 ^ 1) & 1;
    if ((v24 ^ 1) & 1) != 0 || ((v26 ^ 1))
    {
      if ((v24 ^ 1) & 1) != 0 && ((v26 ^ 1))
      {
        SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)(*(v28 + 216), *(v28 + 288), *(v28 + 224), *(v28 + 232), *(v28 + 280));
        v9 = swift_task_alloc();
        *(v28 + 392) = v9;
        *v9 = *(v28 + 104);
        v9[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v10 = *(v28 + 280);
        v11 = *(v28 + 232);
        v12 = *(v28 + 224);
        v13 = *(v28 + 208);
        v14 = *(v28 + 441) & 1;
      }

      else if ((v24 ^ 1))
      {
        v15 = swift_task_alloc();
        *(v28 + 408) = v15;
        *v15 = *(v28 + 104);
        v15[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v11 = *(v28 + 232);
        v12 = *(v28 + 224);
        v10 = *(v28 + 216);
        v13 = *(v28 + 208);
        v14 = *(v28 + 441) & 1;
      }

      else
      {
        v16 = swift_task_alloc();
        *(v28 + 424) = v16;
        *v16 = *(v28 + 104);
        v16[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
        v10 = *(v28 + 288);
        v11 = *(v28 + 232);
        v12 = *(v28 + 224);
        v13 = *(v28 + 208);
        v14 = *(v28 + 441) & 1;
      }

      return SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v13, v10, v14, v12, v11);
    }

    else
    {
      v19 = *(v28 + 288);
      v18 = *(v28 + 264);
      v17 = *(v28 + 272);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v22 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
      outlined destroy of [HKQuantityType]((v28 + 136));
      outlined destroy of [HKQuantityType]((v28 + 128));
      (*(v17 + 8))(v19, v18);
      v6 = *(v28 + 288);
      v20 = *(v28 + 280);
      v21 = *(v28 + 256);

      v7 = *(*(v28 + 104) + 8);
      v8 = *(v28 + 104);

      return v7(v22);
    }
  }
}

{
  v9 = v0[36];
  v1 = v0[35];
  v2 = v0[34];
  v7 = v0[33];
  v0[13] = v0;
  v8 = *(v2 + 8);
  v8(v1);
  outlined destroy of [HKQuantityType](v0 + 17);
  outlined destroy of [HKQuantityType](v0 + 16);
  (v8)(v9, v7);
  v12 = v0[50];
  v3 = v0[36];
  v10 = v0[35];
  v11 = v0[32];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4(v12);
}

{
  v7 = v0[36];
  v5 = v0[34];
  v6 = v0[33];
  v0[13] = v0;
  outlined destroy of [HKQuantityType](v0 + 17);
  outlined destroy of [HKQuantityType](v0 + 16);
  (*(v5 + 8))(v7, v6);
  v10 = v0[52];
  v1 = v0[36];
  v8 = v0[35];
  v9 = v0[32];

  v2 = *(v0[13] + 8);
  v3 = v0[13];

  return v2(v10);
}

{
  v7 = v0[36];
  v5 = v0[34];
  v6 = v0[33];
  v0[13] = v0;
  outlined destroy of [HKQuantityType](v0 + 17);
  outlined destroy of [HKQuantityType](v0 + 16);
  (*(v5 + 8))(v7, v6);
  v10 = v0[54];
  v1 = v0[36];
  v8 = v0[35];
  v9 = v0[32];

  v2 = *(v0[13] + 8);
  v3 = v0[13];

  return v2(v10);
}

{
  v43 = v0;
  v1 = v0[41];
  v24 = v0[39];
  v0[13] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 7);
  v28 = v0[44];
  v2 = v0[32];
  v25 = v0[31];
  v27 = v0[30];
  v3 = v28;
  v0[21] = v28;
  v26 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v25 + 16))(v2, v26, v27);
  swift_endAccess();
  v4 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = 64;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v31 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v34 + 24) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v35 = v5;

  *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[1] = v32;

  v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[3] = v33;

  v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v36, v37))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(1);
    v22 = createStorage<A>(capacity:type:)(0);
    v38 = buf;
    v39 = v21;
    v40 = v22;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_269912000, v36, v37, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 1, v19);
    destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v23[36];
  v14 = v23[33];
  v11 = v23[32];
  v12 = v23[30];
  v13 = v23[34];
  v10 = v23[31];
  MEMORY[0x277D82BD8](v36);
  (*(v10 + 8))(v11, v12);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v18 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  outlined destroy of [HKQuantityType](v23 + 17);
  outlined destroy of [HKQuantityType](v23 + 16);
  (*(v13 + 8))(v15, v14);
  v6 = v23[36];
  v16 = v23[35];
  v17 = v23[32];

  v7 = *(v23[13] + 8);
  v8 = v23[13];

  return v7(v18);
}

{
  v44 = v0;
  v1 = v0[45];
  v24 = v0[43];
  v25 = v0[39];
  v0[13] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 7);
  v29 = v0[48];
  v2 = v0[32];
  v26 = v0[31];
  v28 = v0[30];
  v3 = v29;
  v0[21] = v29;
  v27 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v26 + 16))(v2, v27, v28);
  swift_endAccess();
  v4 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v31 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v35 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v5;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v33;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v37, v38))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(1);
    v22 = createStorage<A>(capacity:type:)(0);
    v39 = buf;
    v40 = v21;
    v41 = v22;
    serialize(_:at:)(2, &v39);
    serialize(_:at:)(1, &v39);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_269912000, v37, v38, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 1, v19);
    destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v23[36];
  v14 = v23[33];
  v11 = v23[32];
  v12 = v23[30];
  v13 = v23[34];
  v10 = v23[31];
  MEMORY[0x277D82BD8](v37);
  (*(v10 + 8))(v11, v12);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v18 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  outlined destroy of [HKQuantityType](v23 + 17);
  outlined destroy of [HKQuantityType](v23 + 16);
  (*(v13 + 8))(v15, v14);
  v6 = v23[36];
  v16 = v23[35];
  v17 = v23[32];

  v7 = *(v23[13] + 8);
  v8 = v23[13];

  return v7(v18);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1)
{
  v6 = *v1;
  v9 = *v1;
  v2 = *(*v1 + 296);
  v9[13] = *v1;

  v3 = v6[36];
  v7 = v6[35];
  v8 = v6[32];

  v4 = *(v9[13] + 8);

  return v4(a1);
}

{
  v9 = *v2;
  v4 = *(*v2 + 336);
  *(v9 + 104) = *v2;
  v10 = (v9 + 104);
  *(v9 + 344) = a1;
  *(v9 + 352) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  else
  {

    v5 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 368);
  *(v9 + 104) = *v2;
  v10 = (v9 + 104);
  *(v9 + 376) = a1;
  *(v9 + 384) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  else
  {

    v5 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 392);
  *(v6 + 104) = *v1;
  *(v6 + 400) = a1;

  v4 = *(v6 + 104);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 408);
  *(v6 + 104) = *v1;
  *(v6 + 416) = a1;

  v4 = *(v6 + 104);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 424);
  *(v6 + 104) = *v1;
  *(v6 + 432) = a1;

  v4 = *(v6 + 104);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a5;
  *(v5 + 120) = a4;
  *(v5 + 298) = a3 & 1;
  *(v5 + 297) = a2 & 1;
  *(v5 + 112) = a1;
  *(v5 + 56) = v5;
  *(v5 + 64) = 0;
  *(v5 + 296) = 0;
  *(v5 + 304) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 312) = 0;
  *(v5 + 320) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 136) = v6;
  v11 = *(v6 - 8);
  *(v5 + 144) = v11;
  v7 = *(v11 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  *(v5 + 160) = v8;
  v12 = *(v8 - 8);
  *(v5 + 168) = v12;
  v13 = *(v12 + 64);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 64) = a1;
  *(v5 + 296) = a2 & 1;
  *(v5 + 304) = a3 & 1;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  v9 = *(v5 + 56);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)()
{
  v1 = *(v0 + 298);
  *(v0 + 56) = v0;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v12 + 192) = v2;
    *v2 = *(v12 + 56);
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v3 = *(v12 + 128);
    v4 = *(v12 + 120);
    v5 = *(v12 + 112);
    v6 = *(v12 + 297) & 1;

    return SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(v5, v6, v4, v3);
  }

  else
  {
    getFallbackDateInterval(specifiedDateInterval:)(*(v12 + 112), *(v12 + 184));
    v8 = swift_task_alloc();
    *(v12 + 200) = v8;
    *v8 = *(v12 + 56);
    v8[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v9 = *(v12 + 128);
    v10 = *(v12 + 120);
    v11 = *(v12 + 112);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v11, 0, v10, v9);
  }
}

{
  v22 = *(v0 + 232);
  v1 = *(v0 + 208);
  *(v0 + 56) = v0;
  *(v0 + 88) = v22;
  *(v0 + 96) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v23 = Collection.isEmpty.getter() ^ 1;
  *(v0 + 312) = v23 & 1;
  *(v0 + 104) = v22;
  v24 = Collection.isEmpty.getter() ^ 1;
  *(v0 + 320) = v24 & 1;
  if (v23 & 1) != 0 || (v24)
  {
    if (v23 & 1) != 0 && (v24)
    {
      SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)(*(v21 + 112), *(v21 + 184), *(v21 + 120), *(v21 + 128), *(v21 + 176));
      v6 = swift_task_alloc();
      *(v21 + 248) = v6;
      *v6 = *(v21 + 56);
      v6[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
      v7 = *(v21 + 176);
      v8 = *(v21 + 128);
      v9 = *(v21 + 120);
      v10 = *(v21 + 297) & 1;
    }

    else if (v23)
    {
      v11 = swift_task_alloc();
      *(v21 + 264) = v11;
      *v11 = *(v21 + 56);
      v11[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
      v8 = *(v21 + 128);
      v9 = *(v21 + 120);
      v7 = *(v21 + 112);
      v10 = *(v21 + 297) & 1;
    }

    else
    {
      v12 = swift_task_alloc();
      *(v21 + 280) = v12;
      *v12 = *(v21 + 56);
      v12[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
      v7 = *(v21 + 184);
      v8 = *(v21 + 128);
      v9 = *(v21 + 120);
      v10 = *(v21 + 297) & 1;
    }

    return SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(v7, v10, v9, v8);
  }

  else
  {
    v13 = *(v21 + 232);
    v14 = *(v21 + 208);
    v16 = *(v21 + 184);
    v17 = *(v21 + 160);
    v15 = *(v21 + 168);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v20 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

    (*(v15 + 8))(v16, v17);
    v2 = *(v21 + 184);
    v18 = *(v21 + 176);
    v19 = *(v21 + 152);

    v3 = *(*(v21 + 56) + 8);
    v4 = *(v21 + 56);

    return v3(v20);
  }
}

{
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];
  v1 = v0[22];
  v2 = v0[21];
  v10 = v0[20];
  v0[7] = v0;
  v11 = *(v2 + 8);
  v11(v1);

  (v11)(v9, v10);
  v14 = v0[32];
  v3 = v0[23];
  v12 = v0[22];
  v13 = v0[19];

  v4 = *(v0[7] + 8);
  v5 = v0[7];

  return v4(v14);
}

{
  v1 = v0[29];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[21];
  v9 = v0[20];
  v0[7] = v0;

  (*(v7 + 8))(v8, v9);
  v12 = v0[34];
  v2 = v0[23];
  v10 = v0[22];
  v11 = v0[19];

  v3 = *(v0[7] + 8);
  v4 = v0[7];

  return v3(v12);
}

{
  v1 = v0[29];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[21];
  v9 = v0[20];
  v0[7] = v0;

  (*(v7 + 8))(v8, v9);
  v12 = v0[36];
  v2 = v0[23];
  v10 = v0[22];
  v11 = v0[19];

  v3 = *(v0[7] + 8);
  v4 = v0[7];

  return v3(v12);
}

{
  v41 = v0;
  v0[7] = v0;
  v26 = v0[27];
  v1 = v0[19];
  v23 = v0[18];
  v25 = v0[17];
  v2 = v26;
  v0[9] = v26;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v23 + 16))(v1, v24, v25);
  swift_endAccess();
  v3 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v32 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v33 = v4;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v30;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v31;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v34, v35))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(1);
    v21 = createStorage<A>(capacity:type:)(0);
    v36 = buf;
    v37 = v20;
    v38 = v21;
    serialize(_:at:)(2, &v36);
    serialize(_:at:)(1, &v36);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_269912000, v34, v35, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 1, v18);
    destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v22[23];
  v14 = v22[20];
  v10 = v22[19];
  v11 = v22[17];
  v12 = v22[21];
  v9 = v22[18];
  MEMORY[0x277D82BD8](v34);
  (*(v9 + 8))(v10, v11);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v17 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v12 + 8))(v13, v14);
  v5 = v22[23];
  v15 = v22[22];
  v16 = v22[19];

  v6 = *(v22[7] + 8);
  v7 = v22[7];

  return v6(v17);
}

{
  v42 = v0;
  v1 = v0[26];
  v0[7] = v0;

  v27 = v0[30];
  v2 = v0[19];
  v24 = v0[18];
  v26 = v0[17];
  v3 = v27;
  v0[9] = v27;
  v25 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v24 + 16))(v2, v25, v26);
  swift_endAccess();
  v4 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 64;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v5;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(1);
    v22 = createStorage<A>(capacity:type:)(0);
    v37 = buf;
    v38 = v21;
    v39 = v22;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_269912000, v35, v36, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 1, v19);
    destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v14 = v23[23];
  v15 = v23[20];
  v11 = v23[19];
  v12 = v23[17];
  v13 = v23[21];
  v10 = v23[18];
  MEMORY[0x277D82BD8](v35);
  (*(v10 + 8))(v11, v12);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v18 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v13 + 8))(v14, v15);
  v6 = v23[23];
  v16 = v23[22];
  v17 = v23[19];

  v7 = *(v23[7] + 8);
  v8 = v23[7];

  return v7(v18);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:)(uint64_t a1)
{
  v6 = *v1;
  v9 = *v1;
  v2 = *(*v1 + 192);
  v9[7] = *v1;

  v3 = v6[23];
  v7 = v6[22];
  v8 = v6[19];

  v4 = *(v9[7] + 8);

  return v4(a1);
}

{
  v12 = *v2;
  v4 = *(*v2 + 200);
  v12[7] = *v2;
  v13 = v12 + 7;
  v12[26] = a1;
  v12[27] = v1;

  if (v1)
  {
    v10 = *v13;

    return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
  }

  else
  {
    v12[10] = a1;
    v5 = swift_task_alloc();
    v12[28] = v5;
    *v5 = *v13;
    v5[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
    v6 = v12[23];
    v7 = v12[16];
    v8 = v12[15];

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v6, 0, v8, v7);
  }
}

{
  v9 = *v2;
  v4 = *(*v2 + 224);
  v9[7] = *v2;
  v10 = v9 + 7;
  v9[29] = a1;
  v9[30] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  else
  {
    v5 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 248);
  *(v6 + 56) = *v1;
  *(v6 + 256) = a1;

  v4 = *(v6 + 56);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 264);
  *(v6 + 56) = *v1;
  *(v6 + 272) = a1;

  v4 = *(v6 + 56);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 280);
  *(v6 + 56) = *v1;
  *(v6 + 288) = a1;

  v4 = *(v6 + 56);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:hasMeridiem:), 0);
}

uint64_t SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1112) = a8;
  *(v8 + 1104) = a7;
  *(v8 + 1096) = a6;
  *(v8 + 1088) = a5;
  *(v8 + 634) = a4;
  *(v8 + 1080) = a3;
  *(v8 + 633) = a2 & 1;
  *(v8 + 1072) = a1;
  *(v8 + 640) = v8;
  *(v8 + 648) = 0;
  *(v8 + 1624) = 0;
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  *(v8 + 512) = 0;
  *(v8 + 520) = 0;
  *(v8 + 656) = 0;
  *(v8 + 664) = 0;
  *(v8 + 528) = 0;
  *(v8 + 536) = 0;
  *(v8 + 680) = 0;
  *(v8 + 712) = 0;
  *(v8 + 720) = 0;
  *(v8 + 736) = 0;
  *(v8 + 560) = 0;
  *(v8 + 568) = 0;
  *(v8 + 1632) = 0;
  *(v8 + 840) = 0;
  *(v8 + 880) = 0;
  *(v8 + 576) = 0;
  *(v8 + 584) = 0;
  *(v8 + 904) = 0;
  *(v8 + 912) = 0;
  *(v8 + 920) = 0;
  *(v8 + 968) = 0;
  *(v8 + 608) = 0;
  *(v8 + 616) = 0;
  *(v8 + 976) = 0;
  *(v8 + 984) = 0;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v8 + 1136) = v9;
  v15 = *(v9 - 8);
  *(v8 + 1144) = v15;
  v16 = *(v15 + 64);
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  v10 = type metadata accessor for DateInterval();
  *(v8 + 1184) = v10;
  v17 = *(v10 - 8);
  *(v8 + 1192) = v17;
  *(v8 + 1200) = *(v17 + 64);
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 1224) = v11;
  v18 = *(v11 - 8);
  *(v8 + 1232) = v18;
  v19 = *(v18 + 64);
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 1248) = swift_task_alloc();
  *(v8 + 1256) = swift_task_alloc();
  *(v8 + 1264) = swift_task_alloc();
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 648) = a1;
  *(v8 + 1624) = a2 & 1;
  *(v8 + 624) = a3;
  *(v8 + 632) = a4 & 1;
  *(v8 + 496) = a5;
  *(v8 + 504) = a6;
  *(v8 + 512) = a7;
  *(v8 + 520) = a8;
  v12 = *(v8 + 640);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)()
{
  v135 = v0;
  v1 = v0[165];
  v113 = v0[154];
  v115 = v0[153];
  v0[80] = v0;
  v114 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v116 = *(v113 + 16);
  v0[166] = v116;
  v0[167] = (v113 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v116(v1, v114, v115);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v117 = static os_log_type_t.debug.getter();
  v0[168] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v119 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v117))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v109 = createStorage<A>(capacity:type:)(0);
    v110 = createStorage<A>(capacity:type:)(0);
    *(v112 + 1040) = buf;
    *(v112 + 1048) = v109;
    *(v112 + 1056) = v110;
    serialize(_:at:)(0, (v112 + 1040));
    serialize(_:at:)(0, (v112 + 1040));
    *(v112 + 1064) = v119;
    v111 = swift_task_alloc();
    v111[2] = v112 + 1040;
    v111[3] = v112 + 1048;
    v111[4] = v112 + 1056;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v117, "Got name.", buf, 2u);
    destroyStorage<A>(_:count:)(v109, 0, v107);
    destroyStorage<A>(_:count:)(v110, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v81 = *(v112 + 1320);
  v85 = *(v112 + 1312);
  v92 = *(v112 + 1224);
  v94 = *(v112 + 1216);
  v97 = *(v112 + 1208);
  v95 = *(v112 + 1200);
  v98 = *(v112 + 1184);
  v84 = *(v112 + 1176);
  v89 = *(v112 + 1168);
  v86 = *(v112 + 1160);
  v90 = *(v112 + 1152);
  v87 = *(v112 + 1136);
  v80 = *(v112 + 1232);
  v93 = *(v112 + 1192);
  v83 = *(v112 + 1144);
  MEMORY[0x277D82BD8](oslog);
  v82 = *(v80 + 8);
  *(v112 + 1352) = v82;
  *(v112 + 1360) = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82(v81, v92);
  Date.init()();
  Date.startOfDay.getter(v89);
  v88 = *(v83 + 8);
  v88(v84, v87);
  Date.init()();
  Date.endOfDay.getter(v90);
  v88(v86, v87);
  DateInterval.init(start:end:)();
  v91 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v116(v85, v91, v92);
  swift_endAccess();
  (*(v93 + 16))(v97, v94, v98);
  v96 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v99 = swift_allocObject();
  (*(v93 + 32))(v99 + v96, v97, v98);
  log = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v100 = swift_allocObject();
  *(v100 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v100 + 24) = v99;
  v103 = swift_allocObject();
  *(v103 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v103 + 24) = v100;
  _allocateUninitializedArray<A>(_:)();
  v104 = v2;

  *v104 = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[1] = v101;

  v104[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[3] = v102;

  v104[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[5] = v103;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v106))
  {
    v77 = static UnsafeMutablePointer.allocate(capacity:)();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v78 = createStorage<A>(capacity:type:)(0);
    v79 = createStorage<A>(capacity:type:)(1);
    v130 = v77;
    v131 = v78;
    v132 = v79;
    serialize(_:at:)(2, &v130);
    serialize(_:at:)(1, &v130);
    v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134 = v101;
    closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
    v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134 = v102;
    closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
    v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134 = v103;
    closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
    _os_log_impl(&dword_269912000, log, v106, "searching dateinterval1: %s", v77, 0xCu);
    destroyStorage<A>(_:count:)(v78, 0, v76);
    destroyStorage<A>(_:count:)(v79, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v77, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v69 = *(v112 + 1312);
  v70 = *(v112 + 1224);
  v72 = *(v112 + 1072);
  MEMORY[0x277D82BD8](log);
  v82(v69, v70);
  v71 = swift_allocObject();
  *(v112 + 1368) = v71;
  *(v112 + 656) = v71 + 16;
  *(v112 + 1376) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v71 + 16) = _allocateUninitializedArray<A>(_:)();
  v3 = swift_allocObject();
  *(v112 + 1384) = v3;
  *(v112 + 664) = v3 + 16;
  *(v3 + 16) = 0;

  *(v112 + 672) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v73 = *(v112 + 544);
  v74 = *(v112 + 552);
  *(v112 + 1392) = v74;
  if (v74)
  {
    *(v112 + 608) = v73;
    *(v112 + 616) = v74;
    type metadata accessor for HKMedicationIdentifier();

    v68 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v112 + 1400) = v68;
    v4 = swift_task_alloc();
    *(v112 + 1408) = v4;
    *v4 = *(v112 + 640);
    v4[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v5 = *(v112 + 1216);
    v6 = *(v112 + 1112);
    v7 = *(v112 + 1104);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v5, v68, v7, v6);
  }

  else
  {
    v59 = *(v112 + 1368);
    v65 = *(v112 + 1344);
    v57 = *(v112 + 1336);
    v58 = *(v112 + 1328);
    v9 = *(v112 + 1304);
    v56 = *(v112 + 1224);
    outlined destroy of [HKQuantityType]((v112 + 528));
    v55 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v58(v9, v55, v56);
    swift_endAccess();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v60 + 24) = v59;
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v63 + 24) = v60;
    _allocateUninitializedArray<A>(_:)();
    v64 = v10;

    *v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v64[1] = v61;

    v64[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v64[3] = v62;

    v64[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v64[5] = v63;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v66, v67))
    {
      v52 = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v53 = createStorage<A>(capacity:type:)(0);
      v54 = createStorage<A>(capacity:type:)(0);
      v125 = v52;
      v126 = v53;
      v127 = v54;
      serialize(_:at:)(0, &v125);
      serialize(_:at:)(1, &v125);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v129 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      _os_log_impl(&dword_269912000, v66, v67, "starting to get list of scheduled doseEvents (%ld)", v52, 0xCu);
      destroyStorage<A>(_:count:)(v53, 0, v51);
      destroyStorage<A>(_:count:)(v54, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v52, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v42 = *(v112 + 1368);
    v34 = *(v112 + 1360);
    v35 = *(v112 + 1352);
    v48 = *(v112 + 1344);
    v40 = *(v112 + 1336);
    v41 = *(v112 + 1328);
    v33 = *(v112 + 1304);
    v11 = *(v112 + 1296);
    v39 = *(v112 + 1224);
    MEMORY[0x277D82BD8](v66);
    v35(v33, v39);
    swift_beginAccess();
    v36 = *(v42 + 16);

    swift_endAccess();
    v37 = filterUniqueDoseEvents(doseEvents:)(v36);

    swift_beginAccess();
    v12 = *(v42 + 16);
    *(v42 + 16) = v37;

    swift_endAccess();
    v38 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v41(v11, v38, v39);
    swift_endAccess();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v46 + 24) = v43;
    _allocateUninitializedArray<A>(_:)();
    v47 = v13;

    *v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[1] = v44;

    v47[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[3] = v45;

    v47[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v47[5] = v46;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v49, v50))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0);
      v32 = createStorage<A>(capacity:type:)(0);
      v120 = v30;
      v121 = v31;
      v122 = v32;
      serialize(_:at:)(0, &v120);
      serialize(_:at:)(1, &v120);
      v123 = partial apply for closure #1 in OSLogArguments.append(_:);
      v124 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v123, &v120, &v121, &v122);
      v123 = partial apply for closure #1 in OSLogArguments.append(_:);
      v124 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v123, &v120, &v121, &v122);
      v123 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v124 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v123, &v120, &v121, &v122);
      _os_log_impl(&dword_269912000, v49, v50, "Name only: got %ld scheduled doseEvents", v30, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v21 = *(v112 + 1360);
    v22 = *(v112 + 1352);
    v19 = *(v112 + 1296);
    v20 = *(v112 + 1224);
    v23 = (*(v112 + 1368) + 16);
    MEMORY[0x277D82BD8](v49);
    v22(v19, v20);
    v24 = swift_allocObject();
    *(v112 + 1432) = v24;
    *(v112 + 680) = v24 + 16;
    swift_beginAccess();
    v25 = *v23;

    swift_endAccess();
    *(v112 + 688) = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    *(v112 + 1440) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    *(v112 + 1448) = v27;
    v14 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    *(v112 + 1456) = v14;
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v26, v27, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v75);
    *(v112 + 1464) = 0;
    outlined destroy of [HKQuantityType]((v112 + 688));
    *(v112 + 696) = v28;
    *(v112 + 1472) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    lazy protocol witness table accessor for type [String?] and conformance [A]();
    *(v112 + 704) = Set.init<A>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSSgGMd, &_sShySSSgGMR);
    lazy protocol witness table accessor for type Set<String?> and conformance Set<A>();
    *(v24 + 16) = Array.init<A>(_:)();
    v15 = swift_task_alloc();
    *(v112 + 1480) = v15;
    *v15 = *(v112 + 640);
    v15[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v16 = *(v112 + 1112);
    v17 = *(v112 + 1104);
    v18 = *(v112 + 1072);

    return SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(v18, 0, 1, 0, 0, 1, v17, v16);
  }
}

{
  v90 = v0;
  v78 = v0[177];
  v77 = v0[171];
  v0[80] = v0;

  v0[122] = v78;

  v0[128] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();
  v0[129] = v78;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v79 = Collection.isEmpty.getter();

  result = v79;
  if ((v79 & 1) == 0)
  {
    v6 = *(v76[173] + 16);
    v72 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    *(v76[173] + 16) = v72;
  }

  v70 = v76[174];
  outlined destroy of [HKQuantityType](v76 + 122);

  v71 = v76[178];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v74 = v76[68];
  v73 = v76[69];
  v76[174] = v73;
  if (v73)
  {
    v76[76] = v74;
    v76[77] = v73;
    type metadata accessor for HKMedicationIdentifier();

    v75 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    v76[175] = v75;
    v2 = swift_task_alloc();
    v76[176] = v2;
    *v2 = v76[80];
    v2[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v3 = v76[152];
    v4 = v76[139];
    v5 = v76[138];

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v3, v75, v5, v4);
  }

  else
  {
    v61 = v76[171];
    v67 = v76[168];
    v59 = v76[167];
    v60 = v76[166];
    v8 = v76[163];
    v58 = v76[153];
    outlined destroy of [HKQuantityType](v76 + 66);
    v57 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v60(v8, v57, v58);
    swift_endAccess();

    oslog = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v62 + 24) = v61;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v65 + 24) = v62;
    _allocateUninitializedArray<A>(_:)();
    v66 = v9;

    *v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[1] = v63;

    v66[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[3] = v64;

    v66[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v66[5] = v65;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v69))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v55 = createStorage<A>(capacity:type:)(0);
      v56 = createStorage<A>(capacity:type:)(0);
      v85 = buf;
      v86 = v55;
      v87 = v56;
      serialize(_:at:)(0, &v85);
      serialize(_:at:)(1, &v85);
      v88 = partial apply for closure #1 in OSLogArguments.append(_:);
      v89 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
      if (v71)
      {
      }

      v88 = partial apply for closure #1 in OSLogArguments.append(_:);
      v89 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
      v88 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v89 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v88, &v85, &v86, &v87);
      _os_log_impl(&dword_269912000, oslog, v69, "starting to get list of scheduled doseEvents (%ld)", buf, 0xCu);
      destroyStorage<A>(_:count:)(v55, 0, v53);
      destroyStorage<A>(_:count:)(v56, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v51 = 0;
    }

    else
    {

      v51 = v71;
    }

    v42 = v76[171];
    v34 = v76[170];
    v35 = v76[169];
    v48 = v76[168];
    v40 = v76[167];
    v41 = v76[166];
    v33 = v76[163];
    v10 = v76[162];
    v39 = v76[153];
    MEMORY[0x277D82BD8](oslog);
    v35(v33, v39);
    swift_beginAccess();
    v36 = *(v42 + 16);

    swift_endAccess();
    v37 = filterUniqueDoseEvents(doseEvents:)(v36);

    swift_beginAccess();
    v11 = *(v42 + 16);
    *(v42 + 16) = v37;

    swift_endAccess();
    v38 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v41(v10, v38, v39);
    swift_endAccess();

    log = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v46 + 24) = v43;
    _allocateUninitializedArray<A>(_:)();
    v47 = v12;

    *v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[1] = v44;

    v47[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[3] = v45;

    v47[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v47[5] = v46;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v50))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0);
      v32 = createStorage<A>(capacity:type:)(0);
      v80 = v30;
      v81 = v31;
      v82 = v32;
      serialize(_:at:)(0, &v80);
      serialize(_:at:)(1, &v80);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      if (v51)
      {
      }

      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v84 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      _os_log_impl(&dword_269912000, log, v50, "Name only: got %ld scheduled doseEvents", v30, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);

      v28 = 0;
    }

    else
    {

      v28 = v51;
    }

    v20 = v76[170];
    v21 = v76[169];
    v18 = v76[162];
    v19 = v76[153];
    v22 = (v76[171] + 16);
    MEMORY[0x277D82BD8](log);
    v21(v18, v19);
    v23 = swift_allocObject();
    v76[179] = v23;
    v76[85] = v23 + 16;
    swift_beginAccess();
    v24 = *v22;

    swift_endAccess();
    v76[86] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    v76[180] = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v76[181] = v26;
    v13 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v76[182] = v13;
    result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v25, v26, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v52);
    v27 = result;
    v76[183] = v28;
    if (!v28)
    {
      outlined destroy of [HKQuantityType](v76 + 86);
      v76[87] = v27;
      v76[184] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
      lazy protocol witness table accessor for type String? and conformance <A> A?();
      lazy protocol witness table accessor for type [String?] and conformance [A]();
      v76[88] = Set.init<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSSgGMd, &_sShySSSgGMR);
      lazy protocol witness table accessor for type Set<String?> and conformance Set<A>();
      *(v23 + 16) = Array.init<A>(_:)();
      v14 = swift_task_alloc();
      v76[185] = v14;
      *v14 = v76[80];
      v14[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
      v15 = v76[139];
      v16 = v76[138];
      v17 = v76[134];

      return SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(v17, 0, 1, 0, 0, 1, v16, v15);
    }
  }

  return result;
}

{
  v254 = v0;
  isa = v0[186].super.super.isa;
  v1 = v0[183].super.super.isa;
  v236 = v0[172].super.super.isa;
  v0[80].super.super.isa = v0;
  v0[89].super.super.isa = isa;
  type metadata accessor for NSNumber();
  v233.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v0[187].super.super.isa = v233.super.super.isa;
  v0[90].super.super.isa = v233.super.super.isa;
  v0[91].super.super.isa = isa;
  MEMORY[0x277D82BE0](v233.super.super.isa);
  v234 = swift_task_alloc();
  v234[2].super.super.isa = v233.super.super.isa;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  v2 = lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v238 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), v234, v235, v236, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v237);
  v0[188].super.super.isa = v238;
  if (v1)
  {
    return MEMORY[0x277D82BD8](v233.super.super.isa);
  }

  v228 = *(v231 + 1344);
  v220 = *(v231 + 1336);
  v221 = *(v231 + 1328);
  v3 = *(v231 + 1288);
  v219 = *(v231 + 1224);

  MEMORY[0x277D82BD8](v233.super.super.isa);
  *(v231 + 736) = v238;
  v218 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v221(v3, v218, v219);
  swift_endAccess();

  v222 = swift_allocObject();
  *(v222 + 16) = v238;
  oslog = Logger.logObject.getter();
  v230 = static os_log_type_t.debug.getter();
  v224 = swift_allocObject();
  *(v224 + 16) = 0;
  v225 = swift_allocObject();
  *(v225 + 16) = 8;
  v223 = swift_allocObject();
  *(v223 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v223 + 24) = v222;
  v226 = swift_allocObject();
  *(v226 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v226 + 24) = v223;
  _allocateUninitializedArray<A>(_:)();
  v227 = v4;

  *v227 = partial apply for closure #1 in OSLogArguments.append(_:);
  v227[1] = v224;

  v227[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v227[3] = v225;

  v227[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v227[5] = v226;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v230))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v216 = createStorage<A>(capacity:type:)(0);
    v217 = createStorage<A>(capacity:type:)(0);
    v249 = buf;
    v250 = v216;
    v251 = v217;
    serialize(_:at:)(0, &v249);
    serialize(_:at:)(1, &v249);
    v252 = partial apply for closure #1 in OSLogArguments.append(_:);
    v253 = v224;
    closure #1 in osLogInternal(_:log:type:)(&v252, &v249, &v250, &v251);
    v252 = partial apply for closure #1 in OSLogArguments.append(_:);
    v253 = v225;
    closure #1 in osLogInternal(_:log:type:)(&v252, &v249, &v250, &v251);
    v252 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v253 = v226;
    closure #1 in osLogInternal(_:log:type:)(&v252, &v249, &v250, &v251);
    _os_log_impl(&dword_269912000, oslog, v230, "Name only: created %ld as needed doseEvents with matching name", buf, 0xCu);
    destroyStorage<A>(_:count:)(v216, 0, v214);
    destroyStorage<A>(_:count:)(v217, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v213 = *(v231 + 1456);
  v212 = *(v231 + 1440);
  v209 = *(v231 + 1360);
  v210 = *(v231 + 1352);
  v207 = *(v231 + 1288);
  v208 = *(v231 + 1224);
  v211 = *(v231 + 1368) + 16;
  MEMORY[0x277D82BD8](oslog);
  v210(v207, v208);

  *(v231 + 744) = v238;
  swift_beginAccess();
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();
  swift_endAccess();

  *(v231 + 752) = v238;
  Collection<>.makeIterator()();
  while (1)
  {
    *(v231 + 1512) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v206 = *(v231 + 760);
    if (!v206)
    {
      break;
    }

    *(v231 + 968) = v206;
    v205 = [v206 scheduleItemIdentifier];
    if (v205)
    {
      v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v202 = v5;
      MEMORY[0x277D82BD8](v205);
      v203 = v201;
      v204 = v202;
    }

    else
    {
      v203 = 0;
      v204 = 0;
    }

    v6 = *(v231 + 1472);
    v7 = *(v231 + 1432) + 16;
    *(v231 + 592) = v203;
    *(v231 + 600) = v204;
    Array.append(_:)();
    MEMORY[0x277D82BD8](v206);
  }

  v198 = *(v231 + 1456);
  v197 = *(v231 + 1440);
  v196 = (*(v231 + 1368) + 16);
  outlined destroy of [HKQuantityType]((v231 + 560));
  swift_beginAccess();
  v199 = *v196;

  swift_endAccess();
  *(v231 + 768) = v199;
  v200 = Collection.isEmpty.getter();

  if (v200)
  {
    v192 = *(v231 + 1344);
    v190 = *(v231 + 1336);
    v191 = *(v231 + 1328);
    v8 = *(v231 + 1280);
    v189 = *(v231 + 1224);
    v188 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v191(v8, v188, v189);
    swift_endAccess();
    log = Logger.logObject.getter();
    v193 = static os_log_type_t.debug.getter();
    v195 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v193))
    {
      v184 = static UnsafeMutablePointer.allocate(capacity:)();
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v185 = createStorage<A>(capacity:type:)(0);
      v186 = createStorage<A>(capacity:type:)(0);
      *(v231 + 936) = v184;
      *(v231 + 944) = v185;
      *(v231 + 952) = v186;
      serialize(_:at:)(0, (v231 + 936));
      serialize(_:at:)(0, (v231 + 936));
      *(v231 + 960) = v195;
      v187 = swift_task_alloc();
      v187[2] = v231 + 936;
      v187[3] = v231 + 944;
      v187[4] = v231 + 952;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v193, "Name specified, but no potential time match nor as needed match found. Returning .noMatchFound.", v184, 2u);
      destroyStorage<A>(_:count:)(v185, 0, v183);
      destroyStorage<A>(_:count:)(v186, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v184, MEMORY[0x277D84B78]);
    }

    v174 = *(v231 + 1488);
    v175 = *(v231 + 1432);
    v176 = *(v231 + 1384);
    v177 = *(v231 + 1368);
    v172 = *(v231 + 1360);
    v173 = *(v231 + 1352);
    v170 = *(v231 + 1280);
    v171 = *(v231 + 1224);
    v179 = *(v231 + 1216);
    v180 = *(v231 + 1184);
    v178 = *(v231 + 1192);
    MEMORY[0x277D82BD8](log);
    v173(v170, v171);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v181 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

    MEMORY[0x277D82BD8](v233.super.super.isa);

    (*(v178 + 8))(v179, v180);
    v182 = v181;
    goto LABEL_47;
  }

  v167 = *(v231 + 1448);
  v168 = *(*(v231 + 1432) + 16);

  v169 = MEMORY[0x26D6494A0](v168, v167);

  if (v169 > 1 || *(*(v231 + 1384) + 16) > 1)
  {
    v151 = *(v231 + 1432);
    v154 = *(v231 + 1384);
    v163 = *(v231 + 1344);
    v149 = *(v231 + 1336);
    v150 = *(v231 + 1328);
    v9 = *(v231 + 1272);
    v148 = *(v231 + 1224);
    v147 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v150(v9, v147, v148);
    swift_endAccess();

    v152 = swift_allocObject();
    *(v152 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v152 + 24) = v151;

    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.debug.getter();
    v156 = swift_allocObject();
    *(v156 + 16) = 32;
    v157 = swift_allocObject();
    *(v157 + 16) = 8;
    v153 = swift_allocObject();
    *(v153 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3;
    *(v153 + 24) = v152;
    v158 = swift_allocObject();
    *(v158 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v158 + 24) = v153;
    v159 = swift_allocObject();
    *(v159 + 16) = 0;
    v160 = swift_allocObject();
    *(v160 + 16) = 8;
    v155 = swift_allocObject();
    *(v155 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v155 + 24) = v154;
    v161 = swift_allocObject();
    *(v161 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v161 + 24) = v155;
    _allocateUninitializedArray<A>(_:)();
    v162 = v10;

    *v162 = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[1] = v156;

    v162[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[3] = v157;

    v162[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[5] = v158;

    v162[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[7] = v159;

    v162[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[9] = v160;

    v162[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v162[11] = v161;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v164, v165))
    {
      v144 = static UnsafeMutablePointer.allocate(capacity:)();
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v145 = createStorage<A>(capacity:type:)(0);
      v146 = createStorage<A>(capacity:type:)(1);
      v244 = v144;
      v245 = v145;
      v246 = v146;
      serialize(_:at:)(2, &v244);
      serialize(_:at:)(2, &v244);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v157;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v158;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append(_:);
      v248 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      v247 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v248 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v244, &v245, &v246);
      _os_log_impl(&dword_269912000, v164, v165, "Multiple times (%s) or strengths (%ld) found for specified name today, now returning .needsNameDisambiguation", v144, 0x16u);
      destroyStorage<A>(_:count:)(v145, 0, v143);
      destroyStorage<A>(_:count:)(v146, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v144, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v141 = *(v231 + 1456);
    v140 = *(v231 + 1440);
    v136 = *(v231 + 1360);
    v137 = *(v231 + 1352);
    v134 = *(v231 + 1272);
    v135 = *(v231 + 1224);
    v138 = (*(v231 + 1368) + 16);
    MEMORY[0x277D82BD8](v164);
    v137(v134, v135);
    *(v231 + 1520) = type metadata accessor for MatchedMedName();
    *(v231 + 880) = _allocateUninitializedArray<A>(_:)();
    swift_beginAccess();
    v139 = *v138;

    swift_endAccess();
    *(v231 + 888) = v139;
    Collection<>.makeIterator()();
    v11 = *(v231 + 1512);
    IndexingIterator.next()();
    v142 = *(v231 + 896);
    *(v231 + 1528) = v142;
    if (!v142)
    {
      v121 = *(v231 + 1520);
      v124 = *(v231 + 1504);
      v125 = *(v231 + 1496);
      v126 = *(v231 + 1488);
      v127 = *(v231 + 1432);
      v128 = *(v231 + 1384);
      v129 = *(v231 + 1368);
      v131 = *(v231 + 1216);
      v132 = *(v231 + 1184);
      v130 = *(v231 + 1192);
      outlined destroy of [HKQuantityType]((v231 + 576));
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v133 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
      MEMORY[0x277D82BE0](v133);
      *(v231 + 904) = v133;
      v122 = *(v231 + 880);

      v123 = Array._bridgeToObjectiveC()().super.isa;

      [v133 setMatchingMeds_];
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](*(v231 + 904));
      outlined destroy of [HKQuantityType]((v231 + 880));

      MEMORY[0x277D82BD8](v125);

      (*(v130 + 8))(v131, v132);
      v182 = v133;
LABEL_47:
      v31 = *(v231 + 1320);
      v34 = *(v231 + 1312);
      v35 = *(v231 + 1304);
      v36 = *(v231 + 1296);
      v37 = *(v231 + 1288);
      v38 = *(v231 + 1280);
      v39 = *(v231 + 1272);
      v40 = *(v231 + 1264);
      v41 = *(v231 + 1256);
      v42 = *(v231 + 1248);
      v43 = *(v231 + 1240);
      v44 = *(v231 + 1216);
      v45 = *(v231 + 1208);
      v46 = *(v231 + 1176);
      v47 = *(v231 + 1168);
      v48 = *(v231 + 1160);
      v49 = *(v231 + 1152);
      v50 = *(v231 + 1128);
      v51 = *(v231 + 1120);

      v32 = *(*(v231 + 640) + 8);
      v33 = *(v231 + 640);

      return v32(v182);
    }

    *(v231 + 912) = v142;
    v12 = swift_task_alloc();
    *(v231 + 1536) = v12;
    *v12 = *(v231 + 640);
    v12[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v13 = *(v231 + 1112);
    v14 = *(v231 + 1104);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v142, 1, v14, v13);
  }

  else
  {
    v118 = *(v231 + 1344);
    v107 = *(v231 + 1336);
    v108 = *(v231 + 1328);
    v16 = *(v231 + 1264);
    v106 = *(v231 + 1224);
    v109 = *(v231 + 633);
    v105 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v108(v16, v105, v106);
    swift_endAccess();
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = 4;
    v111 = swift_allocObject();
    *(v111 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v111 + 24) = v110;
    v112 = swift_allocObject();
    *(v112 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v112 + 24) = v111;
    v113 = swift_allocObject();
    *(v113 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v113 + 24) = v112;
    v116 = swift_allocObject();
    *(v116 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v116 + 24) = v113;
    _allocateUninitializedArray<A>(_:)();
    v117 = v17;

    *v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v117[1] = v114;

    v117[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v117[3] = v115;

    v117[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v117[5] = v116;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v119, v120))
    {
      v102 = static UnsafeMutablePointer.allocate(capacity:)();
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v103 = createStorage<A>(capacity:type:)(0);
      v104 = createStorage<A>(capacity:type:)(0);
      v239 = v102;
      v240 = v103;
      v241 = v104;
      serialize(_:at:)(0, &v239);
      serialize(_:at:)(1, &v239);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = partial apply for closure #1 in OSLogArguments.append(_:);
      v243 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      v242 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v243 = v116;
      closure #1 in osLogInternal(_:log:type:)(&v242, &v239, &v240, &v241);
      _os_log_impl(&dword_269912000, v119, v120, "Calling writeDoseEvent() for specified name with medStatus: %{BOOL}d", v102, 8u);
      destroyStorage<A>(_:count:)(v103, 0, v101);
      destroyStorage<A>(_:count:)(v104, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v102, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    *(v231 + 1552) = 0;
    v98 = *(v231 + 1456);
    v97 = *(v231 + 1440);
    v94 = *(v231 + 1360);
    v95 = *(v231 + 1352);
    v92 = *(v231 + 1264);
    v93 = *(v231 + 1224);
    v96 = (*(v231 + 1368) + 16);
    MEMORY[0x277D82BD8](v119);
    v95(v92, v93);
    swift_beginAccess();
    v99 = *v96;

    swift_endAccess();
    *(v231 + 776) = v99;
    Collection.first.getter();
    v100 = *(v231 + 784);

    if (v100)
    {
      v91 = [v100 scheduledDate];
      if (v91)
      {
        v88 = *(v231 + 1176);
        v89 = *(v231 + 1136);
        v90 = *(v231 + 1120);
        v87 = *(v231 + 1144);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v87 + 32))(v90, v88, v89);
        (*(v87 + 56))(v90, 0, 1, v89);
        MEMORY[0x277D82BD8](v91);
      }

      else
      {
        (*(*(v231 + 1144) + 56))(*(v231 + 1120), 1, 1, *(v231 + 1136));
      }

      outlined init with take of Date?(*(v231 + 1120), *(v231 + 1128));
      MEMORY[0x277D82BD8](v100);
    }

    else
    {
      (*(*(v231 + 1144) + 56))(*(v231 + 1128), 1, 1, *(v231 + 1136));
    }

    v86 = (*(*(v231 + 1144) + 48))(*(v231 + 1128), 1, *(v231 + 1136)) != 1;
    outlined destroy of Date?(*(v231 + 1128));
    *(v231 + 1632) = v86;
    if (v86)
    {
      v84 = *(v231 + 1456);
      v83 = *(v231 + 1440);
      v81 = *(v231 + 1368);
      swift_beginAccess();
      v82 = *(v81 + 16);

      swift_endAccess();
      *(v231 + 792) = v82;
      Collection.first.getter();
      v85 = *(v231 + 800);
      *(v231 + 1560) = v85;
      if (!v85)
      {
        v76 = *(v231 + 1344);
        v74 = *(v231 + 1336);
        v75 = *(v231 + 1328);
        v24 = *(v231 + 1248);
        v73 = *(v231 + 1224);

        v72 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        v75(v24, v72, v73);
        swift_endAccess();
        v78 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v79 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v78, v77))
        {
          v68 = static UnsafeMutablePointer.allocate(capacity:)();
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v69 = createStorage<A>(capacity:type:)(0);
          v70 = createStorage<A>(capacity:type:)(0);
          *(v231 + 808) = v68;
          *(v231 + 816) = v69;
          *(v231 + 824) = v70;
          serialize(_:at:)(0, (v231 + 808));
          serialize(_:at:)(0, (v231 + 808));
          *(v231 + 832) = v79;
          v71 = swift_task_alloc();
          v71[2] = v231 + 808;
          v71[3] = v231 + 816;
          v71[4] = v231 + 824;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, v78, v77, "Should have at least one dose event to start confirmation, but found none. Returning failure.", v68, 2u);
          destroyStorage<A>(_:count:)(v69, 0, v67);
          destroyStorage<A>(_:count:)(v70, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v68, MEMORY[0x277D84B78]);
        }

        v59 = *(v231 + 1488);
        v60 = *(v231 + 1432);
        v61 = *(v231 + 1384);
        v62 = *(v231 + 1368);
        v57 = *(v231 + 1360);
        v58 = *(v231 + 1352);
        v55 = *(v231 + 1248);
        v56 = *(v231 + 1224);
        v64 = *(v231 + 1216);
        v65 = *(v231 + 1184);
        v63 = *(v231 + 1192);
        MEMORY[0x277D82BD8](v78);
        v58(v55, v56);
        type metadata accessor for LogSpecificMedicationsIntentResponse();
        v66 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

        MEMORY[0x277D82BD8](v233.super.super.isa);

        (*(v63 + 8))(v64, v65);
        v182 = v66;
        goto LABEL_47;
      }

      v80 = *(v231 + 634);
      *(v231 + 840) = v85;

      v18 = swift_task_alloc();
      *(v231 + 1568) = v18;
      *v18 = *(v231 + 640);
      v18[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
      v19 = *(v231 + 1112);
      v20 = *(v231 + 1104);
      v21 = *(v231 + 1096);
      v22 = *(v231 + 1088);
      v23 = *(v231 + 1080);

      return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v85, v23, v80 & 1, v22, v21, v20, v19);
    }

    else
    {
      v54 = *(v231 + 634);
      v52 = (*(v231 + 1368) + 16);
      MEMORY[0x277D82BE0](*(v231 + 1112));
      swift_beginAccess();
      v53 = *v52;
      *(v231 + 1600) = *v52;

      swift_endAccess();
      v25 = swift_task_alloc();
      *(v231 + 1608) = v25;
      *v25 = *(v231 + 640);
      v25[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
      v26 = *(v231 + 1112);
      v27 = *(v231 + 1096);
      v28 = *(v231 + 1088);
      v29 = *(v231 + 1080);
      v30 = *(v231 + 633);
      v256 = *(v231 + 1104);
      v257 = v26;

      return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v26, v53, v30 & 1, 1, v29, v54 & 1, v28, v27);
    }
  }
}

{
  v40 = v0[193];
  v41 = v0[191];
  v0[80] = v0;
  v0[115] = v40;
  MEMORY[0x277D82BE0](v40);
  v0[116] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  v1 = v42[189];
  IndexingIterator.next()();
  v43 = v42[112];
  v42[191] = v43;
  if (v43)
  {
    v42[114] = v43;
    v2 = swift_task_alloc();
    v42[192] = v2;
    *v2 = v42[80];
    v2[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v3 = v42[139];
    v4 = v42[138];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v43, 1, v4, v3);
  }

  else
  {
    v9 = v42[190];
    v12 = v42[188];
    v13 = v42[187];
    v14 = v42[186];
    v15 = v42[179];
    v16 = v42[173];
    v17 = v42[171];
    v19 = v42[152];
    v20 = v42[148];
    v18 = v42[149];
    outlined destroy of [HKQuantityType](v42 + 72);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v39 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    MEMORY[0x277D82BE0](v39);
    v42[113] = v39;
    v10 = v42[110];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v42[113]);
    outlined destroy of [HKQuantityType](v42 + 110);

    MEMORY[0x277D82BD8](v13);

    (*(v18 + 8))(v19, v20);
    v6 = v42[165];
    v21 = v42[164];
    v22 = v42[163];
    v23 = v42[162];
    v24 = v42[161];
    v25 = v42[160];
    v26 = v42[159];
    v27 = v42[158];
    v28 = v42[157];
    v29 = v42[156];
    v30 = v42[155];
    v31 = v42[152];
    v32 = v42[151];
    v33 = v42[147];
    v34 = v42[146];
    v35 = v42[145];
    v36 = v42[144];
    v37 = v42[141];
    v38 = v42[140];

    v7 = *(v42[80] + 8);
    v8 = v42[80];

    return v7(v39);
  }
}

{
  v1 = *(v0 + 1576);
  *(v0 + 640) = v0;
  if (v1)
  {
    v58 = *(v59 + 1560);
    MEMORY[0x277D82BD8](*(v59 + 1576));
    v2 = swift_task_alloc();
    *(v59 + 1584) = v2;
    *v2 = *(v59 + 640);
    v2[1] = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    v3 = *(v59 + 1112);
    v4 = *(v59 + 1104);
    v5 = *(v59 + 633) & 1;

    return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v58, v5, v4, v3);
  }

  else
  {
    v54 = *(v59 + 1344);
    v52 = *(v59 + 1336);
    v53 = *(v59 + 1328);
    v7 = *(v59 + 1256);
    v51 = *(v59 + 1224);
    v50 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v53(v7, v50, v51);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v57 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v55))
    {
      v8 = *(v59 + 1552);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v47 = createStorage<A>(capacity:type:)(0);
      v48 = createStorage<A>(capacity:type:)(0);
      *(v59 + 848) = buf;
      *(v59 + 856) = v47;
      *(v59 + 864) = v48;
      serialize(_:at:)(0, (v59 + 848));
      serialize(_:at:)(0, (v59 + 848));
      *(v59 + 872) = v57;
      v49 = swift_task_alloc();
      v49[2] = v59 + 848;
      v49[3] = v59 + 856;
      v49[4] = v59 + 864;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v8)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v55, "Got a complex med request wrt dosage/dosageUnit in first turn, skipping confirmAsScheduled & punching out.", buf, 2u);
      destroyStorage<A>(_:count:)(v47, 0, v45);
      destroyStorage<A>(_:count:)(v48, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v17 = *(v59 + 1504);
    v18 = *(v59 + 1496);
    v19 = *(v59 + 1488);
    v20 = *(v59 + 1432);
    v21 = *(v59 + 1384);
    v22 = *(v59 + 1368);
    v14 = *(v59 + 1360);
    v15 = *(v59 + 1352);
    v12 = *(v59 + 1256);
    v13 = *(v59 + 1224);
    v24 = *(v59 + 1216);
    v25 = *(v59 + 1184);
    v16 = *(v59 + 1560);
    v23 = *(v59 + 1192);
    MEMORY[0x277D82BD8](oslog);
    v15(v12, v13);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v44 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(112, 0);
    MEMORY[0x277D82BD8](v16);

    MEMORY[0x277D82BD8](v18);

    (*(v23 + 8))(v24, v25);
    v9 = *(v59 + 1320);
    v26 = *(v59 + 1312);
    v27 = *(v59 + 1304);
    v28 = *(v59 + 1296);
    v29 = *(v59 + 1288);
    v30 = *(v59 + 1280);
    v31 = *(v59 + 1272);
    v32 = *(v59 + 1264);
    v33 = *(v59 + 1256);
    v34 = *(v59 + 1248);
    v35 = *(v59 + 1240);
    v36 = *(v59 + 1216);
    v37 = *(v59 + 1208);
    v38 = *(v59 + 1176);
    v39 = *(v59 + 1168);
    v40 = *(v59 + 1160);
    v41 = *(v59 + 1152);
    v42 = *(v59 + 1128);
    v43 = *(v59 + 1120);

    v10 = *(*(v59 + 640) + 8);
    v11 = *(v59 + 640);

    return v10(v44);
  }
}

{
  v1 = v0[195];
  v6 = v0[188];
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[179];
  v10 = v0[173];
  v11 = v0[171];
  v13 = v0[152];
  v12 = v0[149];
  v14 = v0[148];
  v0[80] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v7);

  (*(v12 + 8))(v13, v14);
  v33 = v0[199];
  v2 = v0[165];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[147];
  v28 = v0[146];
  v29 = v0[145];
  v30 = v0[144];
  v31 = v0[141];
  v32 = v0[140];

  v3 = *(v0[80] + 8);
  v4 = v0[80];

  return v3(v33);
}

{
  v1 = v0[188];
  v6 = v0[187];
  v7 = v0[186];
  v8 = v0[179];
  v9 = v0[173];
  v10 = v0[171];
  v12 = v0[152];
  v11 = v0[149];
  v13 = v0[148];
  v0[80] = v0;

  MEMORY[0x277D82BD8](v6);

  (*(v11 + 8))(v12, v13);
  v32 = v0[202];
  v2 = v0[165];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[152];
  v25 = v0[151];
  v26 = v0[147];
  v27 = v0[146];
  v28 = v0[145];
  v29 = v0[144];
  v30 = v0[141];
  v31 = v0[140];

  v3 = *(v0[80] + 8);
  v4 = v0[80];

  return v3(v32);
}

{
  v44 = v0[178];
  v1 = v0[175];
  v41 = v0[174];
  v42 = v0[173];
  v43 = v0[171];
  v49 = v0[168];
  v47 = v0[167];
  v48 = v0[166];
  v2 = v0[155];
  v46 = v0[153];
  v0[80] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 66);

  v3 = v44;
  v0[123] = v44;
  v45 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v48(v2, v45, v46);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v52 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v50))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0);
    v38 = createStorage<A>(capacity:type:)(0);
    *(v40 + 992) = buf;
    *(v40 + 1000) = v37;
    *(v40 + 1008) = v38;
    serialize(_:at:)(0, (v40 + 992));
    serialize(_:at:)(0, (v40 + 992));
    *(v40 + 1016) = v52;
    v39 = swift_task_alloc();
    v39[2] = v40 + 992;
    v39[3] = v40 + 1000;
    v39[4] = v40 + 1008;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v50, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v37, 0, v35);
    destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v12 = *(v40 + 1424);
  v10 = *(v40 + 1360);
  v11 = *(v40 + 1352);
  v8 = *(v40 + 1240);
  v9 = *(v40 + 1224);
  v14 = *(v40 + 1216);
  v15 = *(v40 + 1184);
  v13 = *(v40 + 1192);
  MEMORY[0x277D82BD8](oslog);
  v11(v8, v9);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v34 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v13 + 8))(v14, v15);
  v4 = *(v40 + 1320);
  v16 = *(v40 + 1312);
  v17 = *(v40 + 1304);
  v18 = *(v40 + 1296);
  v19 = *(v40 + 1288);
  v20 = *(v40 + 1280);
  v21 = *(v40 + 1272);
  v22 = *(v40 + 1264);
  v23 = *(v40 + 1256);
  v24 = *(v40 + 1248);
  v25 = *(v40 + 1240);
  v26 = *(v40 + 1216);
  v27 = *(v40 + 1208);
  v28 = *(v40 + 1176);
  v29 = *(v40 + 1168);
  v30 = *(v40 + 1160);
  v31 = *(v40 + 1152);
  v32 = *(v40 + 1128);
  v33 = *(v40 + 1120);

  v5 = *(*(v40 + 640) + 8);
  v6 = *(v40 + 640);

  return v5(v34);
}