unint64_t lazy protocol witness table accessor for type WellnessNoun and conformance WellnessNoun()
{
  v2 = lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun;
  if (!lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun;
  if (!lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessNoun and conformance WellnessNoun);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessNoun_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessNoun@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessNoun_optional *a2@<X8>)
{
  result.value = WellnessNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessNoun@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessNoun.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [WellnessNoun] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [WellnessNoun] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WellnessNoun] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents0B4NounOGMd, &_sSay19SiriWellnessIntents0B4NounOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [WellnessNoun] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance WellnessNoun@<X0>(uint64_t *a1@<X8>)
{
  result = static WellnessNoun.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessNoun(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0x84)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 123) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 132;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 124;
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

_BYTE *storeEnumTagSinglePayload for WellnessNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0x84)
  {
    v5 = ((a3 + 123) >> 8) + 1;
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

  if (a2 > 0x84)
  {
    v4 = ((a2 - 133) >> 8) + 1;
    *result = a2 + 123;
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
      *result = a2 + 123;
    }
  }

  return result;
}

id LogBloodPressureIntentHandler.init(storage:)(uint64_t *a1)
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
    v2.store.super.isa = BloodPressurePersistor.init()().store.super.isa;
    __dst[3] = &type metadata for BloodPressurePersistor;
    __dst[4] = &protocol witness table for BloodPressurePersistor;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29LogBloodPressureIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

SiriWellnessIntents::BloodPressurePersistor __swiftcall BloodPressurePersistor.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

uint64_t LogBloodPressureIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[40] = v1;
  v2[39] = a1;
  v2[24] = v2;
  v2[25] = 0;
  v2[26] = 0;
  v3 = type metadata accessor for Logger();
  v2[41] = v3;
  v6 = *(v3 - 8);
  v2[42] = v6;
  v7 = *(v6 + 64);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[25] = a1;
  v2[26] = v1;
  v4 = v2[24];

  return MEMORY[0x2822009F8](LogBloodPressureIntentHandler.handle(intent:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 440);
  v6 = *(*v1 + 432);
  *(v7 + 192) = *v1;
  *(v7 + 448) = a1;

  v4 = *(v7 + 192);

  return MEMORY[0x2822009F8](LogBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t LogBloodPressureIntentHandler.handle(intent:)()
{
  v1 = v0[46];
  v20 = v0[42];
  v22 = v0[41];
  v0[24] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[47] = v2;
  v0[48] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 280) = buf;
    *(v19 + 288) = v16;
    *(v19 + 296) = v17;
    serialize(_:at:)(0, (v19 + 280));
    serialize(_:at:)(0, (v19 + 280));
    *(v19 + 304) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 280;
    v18[3] = v19 + 288;
    v18[4] = v19 + 296;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Checking authorization for Blood Pressure...", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v19 + 400) = 0;
  v8 = *(v19 + 368);
  v9 = *(v19 + 328);
  v10 = *(v19 + 320);
  v7 = *(v19 + 336);
  MEMORY[0x277D82BD8](v24);
  v3 = *(v7 + 8);
  *(v19 + 408) = v3;
  *(v19 + 416) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9);
  outlined init with copy of QuantityPersisting(v10 + OBJC_IVAR____TtC19SiriWellnessIntents29LogBloodPressureIntentHandler_storage, v19 + 16);
  v13 = *(v19 + 40);
  v11 = *(v19 + 48);
  __swift_project_boxed_opaque_existential_1((v19 + 16), v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v4 = *(*(v11 + 8) + 4);
  v5 = swift_task_alloc();
  *(v19 + 424) = v5;
  *v5 = *(v19 + 192);
  v5[1] = LogBloodPressureIntentHandler.handle(intent:);

  return v12(v13, v11);
}

{
  v107 = v0;
  v101 = *(v0 + 456);
  *(v0 + 192) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v101 & 1) == 0)
  {
    v35 = *(v100 + 392);
    v33 = *(v100 + 384);
    v34 = *(v100 + 376);
    v13 = *(v100 + 344);
    v32 = *(v100 + 328);
    v31 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v34(v13, v31, v32);
    swift_endAccess();
    log = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v38 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v36))
    {
      v14 = *(v100 + 400);
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(0);
      *(v100 + 216) = v27;
      *(v100 + 224) = v28;
      *(v100 + 232) = v29;
      serialize(_:at:)(0, (v100 + 216));
      serialize(_:at:)(0, (v100 + 216));
      *(v100 + 240) = v38;
      v30 = swift_task_alloc();
      v30[2] = v100 + 216;
      v30[3] = v100 + 224;
      v30[4] = v100 + 232;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v14)
      {
      }

      _os_log_impl(&dword_269912000, log, v36, "Not authorized to write Blood Pressure data.", v27, 2u);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v27, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v100 + 416);
    v21 = *(v100 + 408);
    v18 = *(v100 + 344);
    v19 = *(v100 + 328);
    MEMORY[0x277D82BD8](log);
    v21(v18, v19);
    type metadata accessor for LogBloodPressureIntentResponse();
    v25 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    v15 = *(v100 + 368);
    v22 = *(v100 + 360);
    v23 = *(v100 + 352);
    v24 = *(v100 + 344);

    v16 = *(*(v100 + 192) + 8);
    v17 = *(v100 + 192);

    return v16(v25);
  }

  v96 = *(v100 + 392);
  v94 = *(v100 + 384);
  v95 = *(v100 + 376);
  v1 = *(v100 + 360);
  v93 = *(v100 + 328);
  v92 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v95(v1, v92, v93);
  swift_endAccess();
  v98 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  v99 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(v98, v97))
  {

    v86 = *(v100 + 400);
    goto LABEL_7;
  }

  v2 = *(v100 + 400);
  buf = static UnsafeMutablePointer.allocate(capacity:)();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v89 = createStorage<A>(capacity:type:)(0);
  v90 = createStorage<A>(capacity:type:)(0);
  *(v100 + 248) = buf;
  *(v100 + 256) = v89;
  *(v100 + 264) = v90;
  serialize(_:at:)(0, (v100 + 248));
  serialize(_:at:)(0, (v100 + 248));
  *(v100 + 272) = v99;
  v91 = swift_task_alloc();
  v91[2] = v100 + 248;
  v91[3] = v100 + 256;
  v91[4] = v100 + 264;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  if (v2)
  {
  }

  _os_log_impl(&dword_269912000, v98, v97, "Authorization check successful for Blood Pressure!", buf, 2u);
  destroyStorage<A>(_:count:)(v89, 0, v87);
  destroyStorage<A>(_:count:)(v90, 0, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

  v86 = 0;
LABEL_7:
  v60 = *(v100 + 416);
  v61 = *(v100 + 408);
  v83 = *(v100 + 392);
  v64 = *(v100 + 384);
  v65 = *(v100 + 376);
  v59 = *(v100 + 360);
  v3 = *(v100 + 352);
  v63 = *(v100 + 328);
  v66 = *(v100 + 312);
  MEMORY[0x277D82BD8](v98);
  v61(v59, v63);
  v62 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v65(v3, v62, v63);
  swift_endAccess();
  MEMORY[0x277D82BE0](v66);
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  MEMORY[0x277D82BE0](v66);
  v69 = swift_allocObject();
  *(v69 + 16) = v66;
  MEMORY[0x277D82BE0](v66);
  v71 = swift_allocObject();
  *(v71 + 16) = v66;
  oslog = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v68 = swift_allocObject();
  *(v68 + 16) = partial apply for implicit closure #1 in LogBloodPressureIntentHandler.handle(intent:);
  *(v68 + 24) = v67;
  v75 = swift_allocObject();
  *(v75 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v75 + 24) = v68;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v70 = swift_allocObject();
  *(v70 + 16) = partial apply for implicit closure #2 in LogBloodPressureIntentHandler.handle(intent:);
  *(v70 + 24) = v69;
  v78 = swift_allocObject();
  *(v78 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  *(v78 + 24) = v70;
  v79 = swift_allocObject();
  *(v79 + 16) = 32;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v72 = swift_allocObject();
  *(v72 + 16) = partial apply for implicit closure #3 in LogBloodPressureIntentHandler.handle(intent:);
  *(v72 + 24) = v71;
  v81 = swift_allocObject();
  *(v81 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v81 + 24) = v72;
  _allocateUninitializedArray<A>(_:)();
  v82 = v4;

  *v82 = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[1] = v73;

  v82[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[3] = v74;

  v82[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[5] = v75;

  v82[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[7] = v76;

  v82[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[9] = v77;

  v82[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[11] = v78;

  v82[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[13] = v79;

  v82[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[15] = v80;

  v82[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v82[17] = v81;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v85))
  {
    v56 = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v57 = createStorage<A>(capacity:type:)(0);
    v58 = createStorage<A>(capacity:type:)(1);
    v102 = v56;
    v103 = v57;
    v104 = v58;
    serialize(_:at:)(2, &v102);
    serialize(_:at:)(3, &v102);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    if (v86)
    {
    }

    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v78;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v80;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    _os_log_impl(&dword_269912000, oslog, v85, "Persisting sample...\n  systolic: %f\n  diastolic: %f\n  unit: %s", v56, 0x20u);
    destroyStorage<A>(_:count:)(v57, 0, v55);
    destroyStorage<A>(_:count:)(v58, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v56, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v46 = *(v100 + 416);
  v47 = *(v100 + 408);
  v44 = *(v100 + 352);
  v45 = *(v100 + 328);
  v48 = *(v100 + 320);
  v52 = *(v100 + 312);
  MEMORY[0x277D82BD8](oslog);
  v47(v44, v45);
  outlined init with copy of QuantityPersisting(v48 + OBJC_IVAR____TtC19SiriWellnessIntents29LogBloodPressureIntentHandler_storage, v100 + 56);
  v49 = *(v100 + 80);
  v50 = *(v100 + 88);
  __swift_project_boxed_opaque_existential_1((v100 + 56), v49);
  [v52 systolic];
  v51 = v6;
  [v52 diastolic];
  v53 = v7;
  v54 = [v52 unit];
  if (v54)
  {
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v8;
    MEMORY[0x277D82BD8](v54);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  *(v100 + 432) = v43;
  v39 = (*(v50 + 16) + **(v50 + 16));
  v9 = *(*(v50 + 16) + 4);
  v10 = swift_task_alloc();
  v11.n128_u64[0] = v51;
  v12.n128_u64[0] = v53;
  *(v100 + 440) = v10;
  *v10 = *(v100 + 192);
  v10[1] = LogBloodPressureIntentHandler.handle(intent:);

  return v39(v42, v43, v49, v50, v11, v12);
}

{
  v0[24] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v8 = v0[56];
  v1 = v0[46];
  v5 = v0[45];
  v6 = v0[44];
  v7 = v0[43];

  v2 = *(v0[24] + 8);
  v3 = v0[24];

  return v2(v8);
}

uint64_t LogBloodPressureIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 424);
  *(v6 + 192) = *v1;
  *(v6 + 456) = a1;

  v4 = *(v6 + 192);

  return MEMORY[0x2822009F8](LogBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t implicit closure #3 in LogBloodPressureIntentHandler.handle(intent:)(void *a1)
{
  v2 = [a1 unit];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t @objc closure #1 in LogBloodPressureIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return LogBloodPressureIntentHandler.handle(intent:)(a1);
}

id LogBloodPressureIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BloodPressurePersistor.isLoggingAuthorized()(uint64_t a1)
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

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 1144) = a3;
  *(v5 + 1136) = a2;
  *(v5 + 1128) = a1;
  *(v5 + 1120) = a5;
  *(v5 + 1112) = a4;
  *(v5 + 536) = v5;
  *(v5 + 544) = 0;
  *(v5 + 552) = 0;
  *(v5 + 504) = 0;
  *(v5 + 512) = 0;
  *(v5 + 560) = 0;
  *(v5 + 600) = 0;
  *(v5 + 608) = 0;
  *(v5 + 616) = 0;
  *(v5 + 664) = 0;
  *(v5 + 672) = 0;
  *(v5 + 680) = 0;
  *(v5 + 688) = 0;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0;
  *(v5 + 712) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 520) = 0;
  *(v5 + 528) = 0;
  v6 = type metadata accessor for Date();
  *(v5 + 1152) = v6;
  v10 = *(v6 - 8);
  *(v5 + 1160) = v10;
  v11 = *(v10 + 64);
  *(v5 + 1168) = swift_task_alloc();
  *(v5 + 1176) = swift_task_alloc();
  *(v5 + 1184) = swift_task_alloc();
  *(v5 + 1192) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 1200) = v7;
  v12 = *(v7 - 8);
  *(v5 + 1208) = v12;
  v13 = *(v12 + 64);
  *(v5 + 1216) = swift_task_alloc();
  *(v5 + 1224) = swift_task_alloc();
  *(v5 + 1232) = swift_task_alloc();
  *(v5 + 1240) = swift_task_alloc();
  *(v5 + 1248) = swift_task_alloc();
  *(v5 + 1256) = swift_task_alloc();
  *(v5 + 1264) = swift_task_alloc();
  *(v5 + 1272) = swift_task_alloc();
  *(v5 + 1280) = swift_task_alloc();
  *(v5 + 1288) = swift_task_alloc();
  *(v5 + 1296) = swift_task_alloc();
  *(v5 + 1304) = swift_task_alloc();
  *(v5 + 1312) = swift_task_alloc();
  *(v5 + 1320) = swift_task_alloc();
  *(v5 + 1328) = swift_task_alloc();
  *(v5 + 544) = a4;
  *(v5 + 552) = a5;
  *(v5 + 504) = a1;
  *(v5 + 512) = a2;
  *(v5 + 560) = a3;
  v8 = *(v5 + 536);

  return MEMORY[0x2822009F8](BloodPressurePersistor.save(systolic:diastolic:units:), 0);
}

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)(uint64_t a1)
{
  v351 = v1;
  MEMORY[0x28223BE20](a1);
  v338 = v1;
  v2 = *(v1 + 1328);
  v339 = *(v1 + 1208);
  v341 = *(v1 + 1200);
  *(v1 + 536) = v1;
  v340 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v339 + 16);
  v342 = v3;
  *(v1 + 1336) = v3;
  *(v1 + 1344) = (v339 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v340, v341);
  swift_endAccess();
  v344 = Logger.logObject.getter();
  v343 = static os_log_type_t.debug.getter();
  *(v1 + 1352) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v345 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v344, v343))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v335 = createStorage<A>(capacity:type:)(0);
    v336 = createStorage<A>(capacity:type:)(0);
    *(v1 + 1080) = buf;
    *(v1 + 1088) = v335;
    *(v1 + 1096) = v336;
    serialize(_:at:)(0, (v1 + 1080));
    serialize(_:at:)(0, (v1 + 1080));
    *(v1 + 1104) = v345;
    v337 = swift_task_alloc();
    v337[2] = v1 + 1080;
    v337[3] = v1 + 1088;
    v337[4] = v1 + 1096;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v344, v343, "Starting to save blood pressure.", buf, 2u);
    destroyStorage<A>(_:count:)(v335, 0, v333);
    destroyStorage<A>(_:count:)(v336, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v327 = *(v1 + 1328);
  v328 = *(v1 + 1200);
  v326 = *(v1 + 1208);
  MEMORY[0x277D82BD8](v344);
  v329 = *(v326 + 8);
  *(v1 + 1360) = v329;
  *(v1 + 1368) = (v326 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v329(v327, v328);
  type metadata accessor for HKQuantityType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v331 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v332 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  *(v1 + 1376) = v332;
  MEMORY[0x277D82BD8](v331);
  if (!v332)
  {
    goto LABEL_54;
  }

  *(v1 + 600) = v332;
  v323 = swift_getObjCClassFromMetadata();
  v324 = *MEMORY[0x277CCC978];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
  v325 = [v323 quantityTypeForIdentifier_];
  *(v1 + 1384) = v325;
  MEMORY[0x277D82BD8](v324);
  if (!v325)
  {
    MEMORY[0x277D82BD8](v332);
LABEL_54:
    v21 = *(v1 + 1224);
    v51 = *(v1 + 1200);
    v50 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v342(v21, v50, v51);
    swift_endAccess();
    v53 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v54 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v53, v52))
    {
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v47 = createStorage<A>(capacity:type:)(0);
      v48 = createStorage<A>(capacity:type:)(0);
      *(v1 + 568) = v46;
      *(v1 + 576) = v47;
      *(v1 + 584) = v48;
      serialize(_:at:)(0, (v1 + 568));
      serialize(_:at:)(0, (v1 + 568));
      *(v1 + 592) = v54;
      v49 = swift_task_alloc();
      v49[2] = v1 + 568;
      v49[3] = v1 + 576;
      v49[4] = v1 + 584;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v53, v52, "Could not create any Blood Pressure types.", v46, 2u);
      destroyStorage<A>(_:count:)(v47, 0, v45);
      destroyStorage<A>(_:count:)(v48, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v46, MEMORY[0x277D84B78]);
    }

    v43 = *(v1 + 1224);
    v44 = *(v1 + 1200);
    MEMORY[0x277D82BD8](v53);
    v329(v43, v44);
    type metadata accessor for LogBloodPressureIntentResponse();
    v242 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_57;
  }

  *(v1 + 608) = v325;
  type metadata accessor for HKCorrelationType();
  v320 = swift_getObjCClassFromMetadata();
  v321 = *MEMORY[0x277CCBBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBBA8]);
  v322 = [v320 correlationTypeForIdentifier_];
  *(v1 + 1392) = v322;
  MEMORY[0x277D82BD8](v321);
  if (!v322)
  {
    MEMORY[0x277D82BD8](v325);
    MEMORY[0x277D82BD8](v332);
    goto LABEL_54;
  }

  v319 = *(v1 + 1136);
  *(v1 + 616) = v322;

  if (v319)
  {
    v4 = *(v1 + 1136);
    v5 = *(v1 + 1320);
    v315 = *(v1 + 1200);
    *(v1 + 520) = *(v1 + 1128);
    *(v1 + 528) = v4;
    v314 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v342(v5, v314, v315);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v316 = static os_log_type_t.debug.getter();
    v318 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v316))
    {
      v310 = static UnsafeMutablePointer.allocate(capacity:)();
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v311 = createStorage<A>(capacity:type:)(0);
      v312 = createStorage<A>(capacity:type:)(0);
      *(v1 + 1048) = v310;
      *(v1 + 1056) = v311;
      *(v1 + 1064) = v312;
      serialize(_:at:)(0, (v1 + 1048));
      serialize(_:at:)(0, (v1 + 1048));
      *(v1 + 1072) = v318;
      v313 = swift_task_alloc();
      v313[2] = v1 + 1048;
      v313[3] = v1 + 1056;
      v313[4] = v1 + 1064;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v316, "Trying to convert unit to HKUnit.", v310, 2u);
      destroyStorage<A>(_:count:)(v311, 0, v309);
      destroyStorage<A>(_:count:)(v312, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v310, MEMORY[0x277D84B78]);
    }

    v297 = *(v1 + 1320);
    v298 = *(v1 + 1200);
    v299 = *(v1 + 1128);
    MEMORY[0x277D82BD8](oslog);
    v329(v297, v298);
    type metadata accessor for HKUnit();

    v300 = @nonobjc HKUnit.__allocating_init(from:)();
    MEMORY[0x277D82BE0](v300);
    *(v1 + 624) = v300;

    *(v1 + 1424) = v300;
    v305 = *(v1 + 1352);
    v303 = *(v1 + 1344);
    v304 = *(v1 + 1336);
    v6 = *(v1 + 1304);
    v302 = *(v1 + 1200);
    v301 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v304(v6, v301, v302);
    swift_endAccess();
    v307 = Logger.logObject.getter();
    v306 = static os_log_type_t.debug.getter();
    v308 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v307, v306))
    {
      v281 = static UnsafeMutablePointer.allocate(capacity:)();
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v282 = createStorage<A>(capacity:type:)(0);
      v283 = createStorage<A>(capacity:type:)(0);
      *(v1 + 984) = v281;
      *(v1 + 992) = v282;
      *(v1 + 1000) = v283;
      serialize(_:at:)(0, (v1 + 984));
      serialize(_:at:)(0, (v1 + 984));
      *(v1 + 1008) = v308;
      v284 = swift_task_alloc();
      v284[2] = v1 + 984;
      v284[3] = v1 + 992;
      v284[4] = v1 + 1000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v307, v306, "Starting to convert optional HKUnit to non-optional HKUnit.", v281, 2u);
      destroyStorage<A>(_:count:)(v282, 0, v280);
      destroyStorage<A>(_:count:)(v283, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v281, MEMORY[0x277D84B78]);
    }

    v278 = *(v1 + 1368);
    v279 = *(v1 + 1360);
    v276 = *(v1 + 1304);
    v277 = *(v1 + 1200);
    MEMORY[0x277D82BD8](v307);
    v279(v276, v277);
    if (!v300)
    {
      v72 = *(v1 + 1352);
      v70 = *(v1 + 1344);
      v71 = *(v1 + 1336);
      v20 = *(v1 + 1232);
      v69 = *(v1 + 1200);
      v68 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v71(v20, v68, v69);
      swift_endAccess();
      v74 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      v75 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v74, v73))
      {
        v64 = static UnsafeMutablePointer.allocate(capacity:)();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v65 = createStorage<A>(capacity:type:)(0);
        v66 = createStorage<A>(capacity:type:)(0);
        *(v1 + 632) = v64;
        *(v1 + 640) = v65;
        *(v1 + 648) = v66;
        serialize(_:at:)(0, (v1 + 632));
        serialize(_:at:)(0, (v1 + 632));
        *(v1 + 656) = v75;
        v67 = swift_task_alloc();
        v67[2] = v1 + 632;
        v67[3] = v1 + 640;
        v67[4] = v1 + 648;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v74, v73, "Could not create an HKUnit.", v64, 2u);
        destroyStorage<A>(_:count:)(v65, 0, v63);
        destroyStorage<A>(_:count:)(v66, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v64, MEMORY[0x277D84B78]);
      }

      v57 = *(v1 + 1368);
      v58 = *(v1 + 1360);
      v55 = *(v1 + 1232);
      v56 = *(v1 + 1200);
      v59 = *(v1 + 1392);
      v60 = *(v1 + 1384);
      v61 = *(v1 + 1376);
      MEMORY[0x277D82BD8](v74);
      v58(v55, v56);
      type metadata accessor for LogBloodPressureIntentResponse();
      v62 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      outlined destroy of HealthKitPersistor((v1 + 624));
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v61);
      v242 = v62;
      goto LABEL_57;
    }

    v11 = *(v1 + 1376);
    v274 = *(v1 + 1384);
    *(v1 + 664) = v300;
    v275 = [v11 isCompatibleWithUnit_];
    MEMORY[0x277D82BE0](v274);
    MEMORY[0x277D82BE0](v300);
    if (v275)
    {
      v273 = [*(v1 + 1384) isCompatibleWithUnit_] ^ 1;
    }

    else
    {
      LOBYTE(v273) = 1;
    }

    MEMORY[0x277D82BD8](*(v1 + 1384));
    MEMORY[0x277D82BD8](v300);
    if (v273)
    {
      v270 = *(v1 + 1352);
      v250 = *(v1 + 1344);
      v251 = *(v1 + 1336);
      v12 = *(v1 + 1296);
      v249 = *(v1 + 1200);
      v253 = *(v1 + 1384);
      v252 = *(v1 + 1376);
      v248 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v251(v12, v248, v249);
      swift_endAccess();
      MEMORY[0x277D82BE0](v300);
      v254 = swift_allocObject();
      *(v254 + 16) = v300;
      MEMORY[0x277D82BE0](v252);
      v256 = swift_allocObject();
      *(v256 + 16) = v252;
      MEMORY[0x277D82BE0](v253);
      v258 = swift_allocObject();
      *(v258 + 16) = v253;
      v271 = Logger.logObject.getter();
      v272 = static os_log_type_t.error.getter();
      v260 = swift_allocObject();
      *(v260 + 16) = 64;
      v261 = swift_allocObject();
      *(v261 + 16) = 8;
      v255 = swift_allocObject();
      *(v255 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
      *(v255 + 24) = v254;
      v262 = swift_allocObject();
      *(v262 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v262 + 24) = v255;
      v263 = swift_allocObject();
      *(v263 + 16) = 64;
      v264 = swift_allocObject();
      *(v264 + 16) = 8;
      v257 = swift_allocObject();
      *(v257 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
      *(v257 + 24) = v256;
      v265 = swift_allocObject();
      *(v265 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v265 + 24) = v257;
      v266 = swift_allocObject();
      *(v266 + 16) = 64;
      v267 = swift_allocObject();
      *(v267 + 16) = 8;
      v259 = swift_allocObject();
      *(v259 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
      *(v259 + 24) = v258;
      v268 = swift_allocObject();
      *(v268 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v268 + 24) = v259;
      _allocateUninitializedArray<A>(_:)();
      v269 = v13;

      *v269 = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[1] = v260;

      v269[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[3] = v261;

      v269[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[5] = v262;

      v269[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[7] = v263;

      v269[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[9] = v264;

      v269[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[11] = v265;

      v269[12] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[13] = v266;

      v269[14] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[15] = v267;

      v269[16] = partial apply for closure #1 in OSLogArguments.append(_:);
      v269[17] = v268;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v271, v272))
      {
        v245 = static UnsafeMutablePointer.allocate(capacity:)();
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v246 = createStorage<A>(capacity:type:)(3);
        v247 = createStorage<A>(capacity:type:)(0);
        v346 = v245;
        v347 = v246;
        v348 = v247;
        serialize(_:at:)(2, &v346);
        serialize(_:at:)(3, &v346);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v260;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v261;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v262;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v263;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v264;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v265;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v266;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v267;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        v349 = partial apply for closure #1 in OSLogArguments.append(_:);
        v350 = v268;
        closure #1 in osLogInternal(_:log:type:)(&v349, &v346, &v347, &v348);
        _os_log_impl(&dword_269912000, v271, v272, "%@ is incompatible with %@ or %@.", v245, 0x20u);
        destroyStorage<A>(_:count:)(v246, 3, v244);
        destroyStorage<A>(_:count:)(v247, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v245, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v236 = *(v1 + 1368);
      v237 = *(v1 + 1360);
      v234 = *(v1 + 1296);
      v235 = *(v1 + 1200);
      v238 = *(v1 + 1392);
      v239 = *(v1 + 1384);
      v240 = *(v1 + 1376);
      MEMORY[0x277D82BD8](v271);
      v237(v234, v235);
      type metadata accessor for LogBloodPressureIntentResponse();
      v241 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v300);
      outlined destroy of HealthKitPersistor((v1 + 624));
      MEMORY[0x277D82BD8](v238);
      MEMORY[0x277D82BD8](v239);
      MEMORY[0x277D82BD8](v240);
      v242 = v241;
LABEL_57:
      v22 = *(v1 + 1328);
      v25 = *(v1 + 1320);
      v26 = *(v1 + 1312);
      v27 = *(v1 + 1304);
      v28 = *(v1 + 1296);
      v29 = *(v1 + 1288);
      v30 = *(v1 + 1280);
      v31 = *(v1 + 1272);
      v32 = *(v1 + 1264);
      v33 = *(v1 + 1256);
      v34 = *(v1 + 1248);
      v35 = *(v1 + 1240);
      v36 = *(v1 + 1232);
      v37 = *(v1 + 1224);
      v38 = *(v1 + 1216);
      v39 = *(v1 + 1192);
      v40 = *(v1 + 1184);
      v41 = *(v1 + 1176);
      v42 = *(v1 + 1168);

      v23 = *(*(v1 + 536) + 8);
      v24 = *(v1 + 536);

      return v23(v242);
    }

    v230 = *(v1 + 1352);
    v228 = *(v1 + 1344);
    v229 = *(v1 + 1336);
    v14 = *(v1 + 1288);
    v227 = *(v1 + 1200);
    v223 = *(v1 + 1192);
    v222 = *(v1 + 1184);
    v224 = *(v1 + 1152);
    v221 = *(v1 + 1160);
    Date.init()();
    v225 = *(v221 + 16);
    *(v1 + 1432) = v225;
    *(v1 + 1440) = (v221 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v225(v222, v223, v224);
    v226 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v229(v14, v226, v227);
    swift_endAccess();
    v232 = Logger.logObject.getter();
    v231 = static os_log_type_t.debug.getter();
    v233 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v232, v231))
    {
      v217 = static UnsafeMutablePointer.allocate(capacity:)();
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v218 = createStorage<A>(capacity:type:)(0);
      v219 = createStorage<A>(capacity:type:)(0);
      *(v1 + 952) = v217;
      *(v1 + 960) = v218;
      *(v1 + 968) = v219;
      serialize(_:at:)(0, (v1 + 952));
      serialize(_:at:)(0, (v1 + 952));
      *(v1 + 976) = v233;
      v220 = swift_task_alloc();
      v220[2] = v1 + 952;
      v220[3] = v1 + 960;
      v220[4] = v1 + 968;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v232, v231, "Creating HKQuantity for Systolic.", v217, 2u);
      destroyStorage<A>(_:count:)(v218, 0, v216);
      destroyStorage<A>(_:count:)(v219, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v217, MEMORY[0x277D84B78]);
    }

    v203 = *(v1 + 1368);
    v204 = *(v1 + 1360);
    v201 = *(v1 + 1288);
    v202 = *(v1 + 1200);
    v206 = *(v1 + 1192);
    v207 = *(v1 + 1184);
    v209 = *(v1 + 1176);
    v210 = *(v1 + 1168);
    v208 = *(v1 + 1152);
    v205 = *(v1 + 1112);
    v211 = *(v1 + 1376);
    MEMORY[0x277D82BD8](v232);
    v204(v201, v202);
    type metadata accessor for HKQuantity();
    MEMORY[0x277D82BE0](v300);
    quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v300, v205);
    *(v1 + 1448) = quantity;
    *(v1 + 672) = quantity;
    type metadata accessor for HKQuantitySample();
    MEMORY[0x277D82BE0](v211);
    MEMORY[0x277D82BE0](quantity);
    v225(v209, v206, v208);
    v225(v210, v207, v208);
    v212 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v211, quantity, v209, v210);
    *(v1 + 1456) = v212;
    *(v1 + 680) = v212;
    identifier = *MEMORY[0x277CCC980];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
    v215 = validateQuantity(identifier:quantity:)(identifier, quantity);
    MEMORY[0x277D82BD8](identifier);
    if (!v215)
    {
      v197 = *(v1 + 1352);
      v195 = *(v1 + 1344);
      v196 = *(v1 + 1336);
      v15 = *(v1 + 1280);
      v194 = *(v1 + 1200);
      v193 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v196(v15, v193, v194);
      swift_endAccess();
      v199 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();
      v200 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v199, v198))
      {
        v189 = static UnsafeMutablePointer.allocate(capacity:)();
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v190 = createStorage<A>(capacity:type:)(0);
        v191 = createStorage<A>(capacity:type:)(0);
        *(v1 + 920) = v189;
        *(v1 + 928) = v190;
        *(v1 + 936) = v191;
        serialize(_:at:)(0, (v1 + 920));
        serialize(_:at:)(0, (v1 + 920));
        *(v1 + 944) = v200;
        v192 = swift_task_alloc();
        v192[2] = v1 + 920;
        v192[3] = v1 + 928;
        v192[4] = v1 + 936;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v199, v198, "Quantity validation failed - systolic blood pressure value outside valid bounds.", v189, 2u);
        destroyStorage<A>(_:count:)(v190, 0, v188);
        destroyStorage<A>(_:count:)(v191, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v189, MEMORY[0x277D84B78]);
      }

      v177 = *(v1 + 1368);
      v178 = *(v1 + 1360);
      v175 = *(v1 + 1280);
      v176 = *(v1 + 1200);
      v181 = *(v1 + 1192);
      v180 = *(v1 + 1184);
      v182 = *(v1 + 1152);
      v184 = *(v1 + 1392);
      v185 = *(v1 + 1384);
      v186 = *(v1 + 1376);
      v179 = *(v1 + 1160);
      MEMORY[0x277D82BD8](v199);
      v178(v175, v176);
      type metadata accessor for LogBloodPressureIntentResponse();
      v187 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v212);
      MEMORY[0x277D82BD8](quantity);
      v183 = *(v179 + 8);
      v183(v180, v182);
      v183(v181, v182);
      MEMORY[0x277D82BD8](v300);
      outlined destroy of HealthKitPersistor((v1 + 624));
      MEMORY[0x277D82BD8](v184);
      MEMORY[0x277D82BD8](v185);
      MEMORY[0x277D82BD8](v186);
      v242 = v187;
      goto LABEL_57;
    }

    v171 = *(v1 + 1352);
    v169 = *(v1 + 1344);
    v170 = *(v1 + 1336);
    v16 = *(v1 + 1272);
    v168 = *(v1 + 1200);
    v167 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v170(v16, v167, v168);
    swift_endAccess();
    v173 = Logger.logObject.getter();
    v172 = static os_log_type_t.debug.getter();
    v174 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v173, v172))
    {
      v163 = static UnsafeMutablePointer.allocate(capacity:)();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v164 = createStorage<A>(capacity:type:)(0);
      v165 = createStorage<A>(capacity:type:)(0);
      *(v1 + 888) = v163;
      *(v1 + 896) = v164;
      *(v1 + 904) = v165;
      serialize(_:at:)(0, (v1 + 888));
      serialize(_:at:)(0, (v1 + 888));
      *(v1 + 912) = v174;
      v166 = swift_task_alloc();
      v166[2] = v1 + 888;
      v166[3] = v1 + 896;
      v166[4] = v1 + 904;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v173, v172, "Creating HKQuantity for Diastolic.", v163, 2u);
      destroyStorage<A>(_:count:)(v164, 0, v162);
      destroyStorage<A>(_:count:)(v165, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v163, MEMORY[0x277D84B78]);
    }

    v149 = *(v1 + 1368);
    v150 = *(v1 + 1360);
    v147 = *(v1 + 1272);
    v148 = *(v1 + 1200);
    v152 = *(v1 + 1192);
    v153 = *(v1 + 1184);
    v155 = *(v1 + 1176);
    v156 = *(v1 + 1168);
    v154 = *(v1 + 1152);
    v151 = *(v1 + 1120);
    v157 = *(v1 + 1384);
    MEMORY[0x277D82BD8](v173);
    v150(v147, v148);
    MEMORY[0x277D82BE0](v300);
    v159 = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v300, v151);
    *(v1 + 1464) = v159;
    *(v1 + 688) = v159;
    MEMORY[0x277D82BE0](v157);
    MEMORY[0x277D82BE0](v159);
    v225(v155, v152, v154);
    v225(v156, v153, v154);
    v158 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v157, v159, v155, v156);
    *(v1 + 1472) = v158;
    *(v1 + 696) = v158;
    v160 = *MEMORY[0x277CCC978];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
    v161 = validateQuantity(identifier:quantity:)(v160, v159);
    MEMORY[0x277D82BD8](v160);
    if (!v161)
    {
      v143 = *(v1 + 1352);
      v141 = *(v1 + 1344);
      v142 = *(v1 + 1336);
      v17 = *(v1 + 1264);
      v140 = *(v1 + 1200);
      v139 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v142(v17, v139, v140);
      swift_endAccess();
      v145 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();
      v146 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v145, v144))
      {
        v135 = static UnsafeMutablePointer.allocate(capacity:)();
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v136 = createStorage<A>(capacity:type:)(0);
        v137 = createStorage<A>(capacity:type:)(0);
        *(v1 + 856) = v135;
        *(v1 + 864) = v136;
        *(v1 + 872) = v137;
        serialize(_:at:)(0, (v1 + 856));
        serialize(_:at:)(0, (v1 + 856));
        *(v1 + 880) = v146;
        v138 = swift_task_alloc();
        v138[2] = v1 + 856;
        v138[3] = v1 + 864;
        v138[4] = v1 + 872;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v145, v144, "Quantity validation failed - diastolic blood pressure value outside valid bounds.", v135, 2u);
        destroyStorage<A>(_:count:)(v136, 0, v134);
        destroyStorage<A>(_:count:)(v137, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v135, MEMORY[0x277D84B78]);
      }

      v123 = *(v1 + 1368);
      v124 = *(v1 + 1360);
      v121 = *(v1 + 1264);
      v122 = *(v1 + 1200);
      v127 = *(v1 + 1192);
      v126 = *(v1 + 1184);
      v128 = *(v1 + 1152);
      v130 = *(v1 + 1392);
      v131 = *(v1 + 1384);
      v132 = *(v1 + 1376);
      v125 = *(v1 + 1160);
      MEMORY[0x277D82BD8](v145);
      v124(v121, v122);
      type metadata accessor for LogBloodPressureIntentResponse();
      v133 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](v159);
      MEMORY[0x277D82BD8](v212);
      MEMORY[0x277D82BD8](quantity);
      v129 = *(v125 + 8);
      v129(v126, v128);
      v129(v127, v128);
      MEMORY[0x277D82BD8](v300);
      outlined destroy of HealthKitPersistor((v1 + 624));
      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v132);
      v242 = v133;
      goto LABEL_57;
    }

    v117 = *(v1 + 1352);
    v115 = *(v1 + 1344);
    v116 = *(v1 + 1336);
    v18 = *(v1 + 1256);
    v114 = *(v1 + 1200);
    v113 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v116(v18, v113, v114);
    swift_endAccess();
    v119 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    v120 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v119, v118))
    {
      v109 = static UnsafeMutablePointer.allocate(capacity:)();
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v110 = createStorage<A>(capacity:type:)(0);
      v111 = createStorage<A>(capacity:type:)(0);
      *(v1 + 824) = v109;
      *(v1 + 832) = v110;
      *(v1 + 840) = v111;
      serialize(_:at:)(0, (v1 + 824));
      serialize(_:at:)(0, (v1 + 824));
      *(v1 + 848) = v120;
      v112 = swift_task_alloc();
      v112[2] = v1 + 824;
      v112[3] = v1 + 832;
      v112[4] = v1 + 840;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v119, v118, "Creating HKCorrelation.", v109, 2u);
      destroyStorage<A>(_:count:)(v110, 0, v108);
      destroyStorage<A>(_:count:)(v111, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v109, MEMORY[0x277D84B78]);
    }

    v88 = *(v1 + 1368);
    v89 = *(v1 + 1360);
    v104 = *(v1 + 1352);
    v102 = *(v1 + 1344);
    v103 = *(v1 + 1336);
    v87 = *(v1 + 1256);
    v98 = *(v1 + 1248);
    v101 = *(v1 + 1200);
    v91 = *(v1 + 1192);
    v92 = *(v1 + 1184);
    v95 = *(v1 + 1176);
    v96 = *(v1 + 1168);
    v93 = *(v1 + 1152);
    v94 = *(v1 + 1392);
    MEMORY[0x277D82BD8](v119);
    v89(v87, v101);
    type metadata accessor for HKSample();
    _allocateUninitializedArray<A>(_:)();
    v90 = v19;
    MEMORY[0x277D82BE0](v212);
    *v90 = v212;
    MEMORY[0x277D82BE0](v158);
    v90[1] = v158;
    _finalizeUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type HKSample and conformance NSObject();
    v97 = Set.init(arrayLiteral:)();
    *(v1 + 1480) = v97;
    *(v1 + 704) = v97;
    type metadata accessor for HKCorrelation();
    MEMORY[0x277D82BE0](v94);
    v225(v95, v91, v93);
    v225(v96, v92, v93);

    v99 = @nonobjc HKCorrelation.__allocating_init(type:start:end:objects:)(v94, v95, v96);
    *(v1 + 1488) = v99;
    *(v1 + 712) = v99;
    v100 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v103(v98, v100, v101);
    swift_endAccess();
    v106 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    v107 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v106, v105))
    {
      v83 = static UnsafeMutablePointer.allocate(capacity:)();
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v84 = createStorage<A>(capacity:type:)(0);
      v85 = createStorage<A>(capacity:type:)(0);
      *(v1 + 792) = v83;
      *(v1 + 800) = v84;
      *(v1 + 808) = v85;
      serialize(_:at:)(0, (v1 + 792));
      serialize(_:at:)(0, (v1 + 792));
      *(v1 + 816) = v107;
      v86 = swift_task_alloc();
      v86[2] = v1 + 792;
      v86[3] = v1 + 800;
      v86[4] = v1 + 808;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v106, v105, "Trying to save to store.", v83, 2u);
      destroyStorage<A>(_:count:)(v84, 0, v82);
      destroyStorage<A>(_:count:)(v85, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v83, MEMORY[0x277D84B78]);
    }

    *(v1 + 1496) = 0;
    v78 = *(v1 + 1368);
    v79 = *(v1 + 1360);
    v76 = *(v1 + 1248);
    v77 = *(v1 + 1200);
    v81 = *(v1 + 1144);
    MEMORY[0x277D82BD8](v106);
    v79(v76, v77);
    MEMORY[0x277D82BE0](v81);
    *(v1 + 16) = *(v1 + 536);
    *(v1 + 56) = v243;
    *(v1 + 24) = BloodPressurePersistor.save(systolic:diastolic:units:);
    v80 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v1 + 112) = v80;
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 92) = 0;
    *(v1 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v1 + 104) = &block_descriptor_12;
    [v81 saveObject:v99 withCompletion:?];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {
    v7 = *(v1 + 1312);
    v293 = *(v1 + 1200);
    v292 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v342(v7, v292, v293);
    swift_endAccess();
    log = Logger.logObject.getter();
    v294 = static os_log_type_t.debug.getter();
    v296 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v294))
    {
      v288 = static UnsafeMutablePointer.allocate(capacity:)();
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v289 = createStorage<A>(capacity:type:)(0);
      v290 = createStorage<A>(capacity:type:)(0);
      *(v1 + 1016) = v288;
      *(v1 + 1024) = v289;
      *(v1 + 1032) = v290;
      serialize(_:at:)(0, (v1 + 1016));
      serialize(_:at:)(0, (v1 + 1016));
      *(v1 + 1040) = v296;
      v291 = swift_task_alloc();
      v291[2] = v1 + 1016;
      v291[3] = v1 + 1024;
      v291[4] = v1 + 1032;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v294, "Using preferred unit.", v288, 2u);
      destroyStorage<A>(_:count:)(v289, 0, v287);
      destroyStorage<A>(_:count:)(v290, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v288, MEMORY[0x277D84B78]);
    }

    *(v1 + 1400) = 0;
    v285 = *(v1 + 1312);
    v286 = *(v1 + 1200);
    MEMORY[0x277D82BD8](log);
    v329(v285, v286);
    v8 = swift_task_alloc();
    v338[176] = v8;
    *v8 = v338[67];
    v8[1] = BloodPressurePersistor.save(systolic:diastolic:units:);
    v9 = v338[143];

    return BloodPressurePersistor.preferredUnit()(v9);
  }
}

{
  v6 = *v1;
  v3 = *(*v1 + 1408);
  *(v6 + 536) = *v1;
  *(v6 + 1416) = a1;

  v4 = *(v6 + 536);

  return MEMORY[0x2822009F8](BloodPressurePersistor.save(systolic:diastolic:units:), 0);
}

uint64_t BloodPressurePersistor.save(systolic:diastolic:units:)()
{
  v287 = v0;
  v1 = v0[177];
  v271 = v1;
  v0[67] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[78] = v271;
  v272 = v0[177];
  v273 = v0[175];
  v0[178] = v272;
  v278 = v0[169];
  v276 = v0[168];
  v277 = v0[167];
  v2 = v0[163];
  v275 = v0[150];
  v274 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v277(v2, v274, v275);
  swift_endAccess();
  v280 = Logger.logObject.getter();
  v279 = static os_log_type_t.debug.getter();
  v281 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v280, v279))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v267 = createStorage<A>(capacity:type:)(0);
    v268 = createStorage<A>(capacity:type:)(0);
    *(v270 + 984) = buf;
    *(v270 + 992) = v267;
    *(v270 + 1000) = v268;
    serialize(_:at:)(0, (v270 + 984));
    serialize(_:at:)(0, (v270 + 984));
    *(v270 + 1008) = v281;
    v269 = swift_task_alloc();
    v269[2] = v270 + 984;
    v269[3] = v270 + 992;
    v269[4] = v270 + 1000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v273)
    {
    }

    _os_log_impl(&dword_269912000, v280, v279, "Starting to convert optional HKUnit to non-optional HKUnit.", buf, 2u);
    destroyStorage<A>(_:count:)(v267, 0, v265);
    destroyStorage<A>(_:count:)(v268, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v264 = 0;
  }

  else
  {

    v264 = v273;
  }

  v262 = *(v270 + 1368);
  v263 = *(v270 + 1360);
  v260 = *(v270 + 1304);
  v261 = *(v270 + 1200);
  MEMORY[0x277D82BD8](v280);
  v263(v260, v261);
  if (!v272)
  {
    v52 = *(v270 + 1352);
    v50 = *(v270 + 1344);
    v51 = *(v270 + 1336);
    v13 = *(v270 + 1232);
    v49 = *(v270 + 1200);
    v48 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v51(v13, v48, v49);
    swift_endAccess();
    v54 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v55 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v54, v53))
    {
      v44 = static UnsafeMutablePointer.allocate(capacity:)();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v45 = createStorage<A>(capacity:type:)(0);
      v46 = createStorage<A>(capacity:type:)(0);
      *(v270 + 632) = v44;
      *(v270 + 640) = v45;
      *(v270 + 648) = v46;
      serialize(_:at:)(0, (v270 + 632));
      serialize(_:at:)(0, (v270 + 632));
      *(v270 + 656) = v55;
      v47 = swift_task_alloc();
      v47[2] = v270 + 632;
      v47[3] = v270 + 640;
      v47[4] = v270 + 648;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v264)
      {
      }

      _os_log_impl(&dword_269912000, v54, v53, "Could not create an HKUnit.", v44, 2u);
      destroyStorage<A>(_:count:)(v45, 0, v43);
      destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v44, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v37 = *(v270 + 1368);
    v38 = *(v270 + 1360);
    v35 = *(v270 + 1232);
    v36 = *(v270 + 1200);
    v39 = *(v270 + 1392);
    v40 = *(v270 + 1384);
    v41 = *(v270 + 1376);
    MEMORY[0x277D82BD8](v54);
    v38(v35, v36);
    type metadata accessor for LogBloodPressureIntentResponse();
    v42 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    outlined destroy of HealthKitPersistor((v270 + 624));
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    v226 = v42;
    goto LABEL_60;
  }

  v3 = *(v270 + 1376);
  v258 = *(v270 + 1384);
  *(v270 + 664) = v272;
  v259 = [v3 isCompatibleWithUnit_];
  MEMORY[0x277D82BE0](v258);
  MEMORY[0x277D82BE0](v272);
  if (v259)
  {
    v257 = [*(v270 + 1384) isCompatibleWithUnit_] ^ 1;
  }

  else
  {
    LOBYTE(v257) = 1;
  }

  MEMORY[0x277D82BD8](*(v270 + 1384));
  MEMORY[0x277D82BD8](v272);
  if (v257)
  {
    v254 = *(v270 + 1352);
    v234 = *(v270 + 1344);
    v235 = *(v270 + 1336);
    v4 = *(v270 + 1296);
    v233 = *(v270 + 1200);
    v237 = *(v270 + 1384);
    v236 = *(v270 + 1376);
    v232 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v235(v4, v232, v233);
    swift_endAccess();
    MEMORY[0x277D82BE0](v272);
    v238 = swift_allocObject();
    *(v238 + 16) = v272;
    MEMORY[0x277D82BE0](v236);
    v240 = swift_allocObject();
    *(v240 + 16) = v236;
    MEMORY[0x277D82BE0](v237);
    v242 = swift_allocObject();
    *(v242 + 16) = v237;
    oslog = Logger.logObject.getter();
    v256 = static os_log_type_t.error.getter();
    v244 = swift_allocObject();
    *(v244 + 16) = 64;
    v245 = swift_allocObject();
    *(v245 + 16) = 8;
    v239 = swift_allocObject();
    *(v239 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v239 + 24) = v238;
    v246 = swift_allocObject();
    *(v246 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v246 + 24) = v239;
    v247 = swift_allocObject();
    *(v247 + 16) = 64;
    v248 = swift_allocObject();
    *(v248 + 16) = 8;
    v241 = swift_allocObject();
    *(v241 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v241 + 24) = v240;
    v249 = swift_allocObject();
    *(v249 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v249 + 24) = v241;
    v250 = swift_allocObject();
    *(v250 + 16) = 64;
    v251 = swift_allocObject();
    *(v251 + 16) = 8;
    v243 = swift_allocObject();
    *(v243 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v243 + 24) = v242;
    v252 = swift_allocObject();
    *(v252 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v252 + 24) = v243;
    _allocateUninitializedArray<A>(_:)();
    v253 = v5;

    *v253 = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[1] = v244;

    v253[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[3] = v245;

    v253[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[5] = v246;

    v253[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[7] = v247;

    v253[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[9] = v248;

    v253[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[11] = v249;

    v253[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[13] = v250;

    v253[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[15] = v251;

    v253[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v253[17] = v252;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v256))
    {
      v229 = static UnsafeMutablePointer.allocate(capacity:)();
      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v230 = createStorage<A>(capacity:type:)(3);
      v231 = createStorage<A>(capacity:type:)(0);
      v282 = v229;
      v283 = v230;
      v284 = v231;
      serialize(_:at:)(2, &v282);
      serialize(_:at:)(3, &v282);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v244;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      if (v264)
      {
      }

      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v245;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v246;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v247;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v248;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v249;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v250;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v251;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      v285 = partial apply for closure #1 in OSLogArguments.append(_:);
      v286 = v252;
      closure #1 in osLogInternal(_:log:type:)(&v285, &v282, &v283, &v284);
      _os_log_impl(&dword_269912000, oslog, v256, "%@ is incompatible with %@ or %@.", v229, 0x20u);
      destroyStorage<A>(_:count:)(v230, 3, v228);
      destroyStorage<A>(_:count:)(v231, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v229, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v220 = *(v270 + 1368);
    v221 = *(v270 + 1360);
    v218 = *(v270 + 1296);
    v219 = *(v270 + 1200);
    v222 = *(v270 + 1392);
    v223 = *(v270 + 1384);
    v224 = *(v270 + 1376);
    MEMORY[0x277D82BD8](oslog);
    v221(v218, v219);
    type metadata accessor for LogBloodPressureIntentResponse();
    v225 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v272);
    outlined destroy of HealthKitPersistor((v270 + 624));
    MEMORY[0x277D82BD8](v222);
    MEMORY[0x277D82BD8](v223);
    MEMORY[0x277D82BD8](v224);
    v226 = v225;
    goto LABEL_60;
  }

  v214 = *(v270 + 1352);
  v212 = *(v270 + 1344);
  v213 = *(v270 + 1336);
  v7 = *(v270 + 1288);
  v211 = *(v270 + 1200);
  v207 = *(v270 + 1192);
  v206 = *(v270 + 1184);
  v208 = *(v270 + 1152);
  v205 = *(v270 + 1160);
  Date.init()();
  v209 = *(v205 + 16);
  *(v270 + 1432) = v209;
  *(v270 + 1440) = (v205 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v209(v206, v207, v208);
  v210 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v213(v7, v210, v211);
  swift_endAccess();
  log = Logger.logObject.getter();
  v215 = static os_log_type_t.debug.getter();
  v217 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v215))
  {
    v201 = static UnsafeMutablePointer.allocate(capacity:)();
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v202 = createStorage<A>(capacity:type:)(0);
    v203 = createStorage<A>(capacity:type:)(0);
    *(v270 + 952) = v201;
    *(v270 + 960) = v202;
    *(v270 + 968) = v203;
    serialize(_:at:)(0, (v270 + 952));
    serialize(_:at:)(0, (v270 + 952));
    *(v270 + 976) = v217;
    v204 = swift_task_alloc();
    v204[2] = v270 + 952;
    v204[3] = v270 + 960;
    v204[4] = v270 + 968;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v264)
    {
    }

    _os_log_impl(&dword_269912000, log, v215, "Creating HKQuantity for Systolic.", v201, 2u);
    destroyStorage<A>(_:count:)(v202, 0, v200);
    destroyStorage<A>(_:count:)(v203, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v201, MEMORY[0x277D84B78]);

    v199 = 0;
  }

  else
  {

    v199 = v264;
  }

  v186 = *(v270 + 1368);
  v187 = *(v270 + 1360);
  v184 = *(v270 + 1288);
  v185 = *(v270 + 1200);
  v189 = *(v270 + 1192);
  v190 = *(v270 + 1184);
  v192 = *(v270 + 1176);
  v193 = *(v270 + 1168);
  v191 = *(v270 + 1152);
  v188 = *(v270 + 1112);
  v194 = *(v270 + 1376);
  MEMORY[0x277D82BD8](log);
  v187(v184, v185);
  type metadata accessor for HKQuantity();
  MEMORY[0x277D82BE0](v272);
  quantity = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v272, v188);
  *(v270 + 1448) = quantity;
  *(v270 + 672) = quantity;
  type metadata accessor for HKQuantitySample();
  MEMORY[0x277D82BE0](v194);
  MEMORY[0x277D82BE0](quantity);
  v209(v192, v189, v191);
  v209(v193, v190, v191);
  v195 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v194, quantity, v192, v193);
  *(v270 + 1456) = v195;
  *(v270 + 680) = v195;
  identifier = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v198 = validateQuantity(identifier:quantity:)(identifier, quantity);
  MEMORY[0x277D82BD8](identifier);
  if (!v198)
  {
    v180 = *(v270 + 1352);
    v178 = *(v270 + 1344);
    v179 = *(v270 + 1336);
    v8 = *(v270 + 1280);
    v177 = *(v270 + 1200);
    v176 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v179(v8, v176, v177);
    swift_endAccess();
    v182 = Logger.logObject.getter();
    v181 = static os_log_type_t.error.getter();
    v183 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v182, v181))
    {

      goto LABEL_28;
    }

    v172 = static UnsafeMutablePointer.allocate(capacity:)();
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v173 = createStorage<A>(capacity:type:)(0);
    v174 = createStorage<A>(capacity:type:)(0);
    *(v270 + 920) = v172;
    *(v270 + 928) = v173;
    *(v270 + 936) = v174;
    serialize(_:at:)(0, (v270 + 920));
    serialize(_:at:)(0, (v270 + 920));
    *(v270 + 944) = v183;
    v175 = swift_task_alloc();
    v175[2] = v270 + 920;
    v175[3] = v270 + 928;
    v175[4] = v270 + 936;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v199)
    {

      _os_log_impl(&dword_269912000, v182, v181, "Quantity validation failed - systolic blood pressure value outside valid bounds.", v172, 2u);
      destroyStorage<A>(_:count:)(v173, 0, v171);
      destroyStorage<A>(_:count:)(v174, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v172, MEMORY[0x277D84B78]);

LABEL_28:
      v160 = *(v270 + 1368);
      v161 = *(v270 + 1360);
      v158 = *(v270 + 1280);
      v159 = *(v270 + 1200);
      v164 = *(v270 + 1192);
      v163 = *(v270 + 1184);
      v165 = *(v270 + 1152);
      v167 = *(v270 + 1392);
      v168 = *(v270 + 1384);
      v169 = *(v270 + 1376);
      v162 = *(v270 + 1160);
      MEMORY[0x277D82BD8](v182);
      v161(v158, v159);
      type metadata accessor for LogBloodPressureIntentResponse();
      v170 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
      MEMORY[0x277D82BD8](v195);
      MEMORY[0x277D82BD8](quantity);
      v166 = *(v162 + 8);
      v166(v163, v165);
      v166(v164, v165);
      MEMORY[0x277D82BD8](v272);
      outlined destroy of HealthKitPersistor((v270 + 624));
      MEMORY[0x277D82BD8](v167);
      MEMORY[0x277D82BD8](v168);
      MEMORY[0x277D82BD8](v169);
      v226 = v170;
LABEL_60:
      v14 = *(v270 + 1328);
      v17 = *(v270 + 1320);
      v18 = *(v270 + 1312);
      v19 = *(v270 + 1304);
      v20 = *(v270 + 1296);
      v21 = *(v270 + 1288);
      v22 = *(v270 + 1280);
      v23 = *(v270 + 1272);
      v24 = *(v270 + 1264);
      v25 = *(v270 + 1256);
      v26 = *(v270 + 1248);
      v27 = *(v270 + 1240);
      v28 = *(v270 + 1232);
      v29 = *(v270 + 1224);
      v30 = *(v270 + 1216);
      v31 = *(v270 + 1192);
      v32 = *(v270 + 1184);
      v33 = *(v270 + 1176);
      v34 = *(v270 + 1168);

      v15 = *(*(v270 + 536) + 8);
      v16 = *(v270 + 536);

      return v15(v226);
    }
  }

  v154 = *(v270 + 1352);
  v152 = *(v270 + 1344);
  v153 = *(v270 + 1336);
  v9 = *(v270 + 1272);
  v151 = *(v270 + 1200);
  v150 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v153(v9, v150, v151);
  swift_endAccess();
  v156 = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  v157 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v156, v155))
  {
    v146 = static UnsafeMutablePointer.allocate(capacity:)();
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v147 = createStorage<A>(capacity:type:)(0);
    v148 = createStorage<A>(capacity:type:)(0);
    *(v270 + 888) = v146;
    *(v270 + 896) = v147;
    *(v270 + 904) = v148;
    serialize(_:at:)(0, (v270 + 888));
    serialize(_:at:)(0, (v270 + 888));
    *(v270 + 912) = v157;
    v149 = swift_task_alloc();
    v149[2] = v270 + 888;
    v149[3] = v270 + 896;
    v149[4] = v270 + 904;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v199)
    {
    }

    _os_log_impl(&dword_269912000, v156, v155, "Creating HKQuantity for Diastolic.", v146, 2u);
    destroyStorage<A>(_:count:)(v147, 0, v145);
    destroyStorage<A>(_:count:)(v148, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v146, MEMORY[0x277D84B78]);

    v144 = 0;
  }

  else
  {

    v144 = v199;
  }

  v131 = *(v270 + 1368);
  v132 = *(v270 + 1360);
  v129 = *(v270 + 1272);
  v130 = *(v270 + 1200);
  v134 = *(v270 + 1192);
  v135 = *(v270 + 1184);
  v137 = *(v270 + 1176);
  v138 = *(v270 + 1168);
  v136 = *(v270 + 1152);
  v133 = *(v270 + 1120);
  v139 = *(v270 + 1384);
  MEMORY[0x277D82BD8](v156);
  v132(v129, v130);
  MEMORY[0x277D82BE0](v272);
  v141 = @nonobjc HKQuantity.__allocating_init(unit:doubleValue:)(v272, v133);
  *(v270 + 1464) = v141;
  *(v270 + 688) = v141;
  MEMORY[0x277D82BE0](v139);
  MEMORY[0x277D82BE0](v141);
  v209(v137, v134, v136);
  v209(v138, v135, v136);
  v140 = @nonobjc HKQuantitySample.__allocating_init(type:quantity:start:end:)(v139, v141, v137, v138);
  *(v270 + 1472) = v140;
  *(v270 + 696) = v140;
  v142 = *MEMORY[0x277CCC978];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
  v143 = validateQuantity(identifier:quantity:)(v142, v141);
  MEMORY[0x277D82BD8](v142);
  if (!v143)
  {
    v125 = *(v270 + 1352);
    v123 = *(v270 + 1344);
    v124 = *(v270 + 1336);
    v10 = *(v270 + 1264);
    v122 = *(v270 + 1200);
    v121 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v124(v10, v121, v122);
    swift_endAccess();
    v127 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    v128 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v127, v126))
    {
      v117 = static UnsafeMutablePointer.allocate(capacity:)();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v118 = createStorage<A>(capacity:type:)(0);
      v119 = createStorage<A>(capacity:type:)(0);
      *(v270 + 856) = v117;
      *(v270 + 864) = v118;
      *(v270 + 872) = v119;
      serialize(_:at:)(0, (v270 + 856));
      serialize(_:at:)(0, (v270 + 856));
      *(v270 + 880) = v128;
      v120 = swift_task_alloc();
      v120[2] = v270 + 856;
      v120[3] = v270 + 864;
      v120[4] = v270 + 872;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v144)
      {
      }

      _os_log_impl(&dword_269912000, v127, v126, "Quantity validation failed - diastolic blood pressure value outside valid bounds.", v117, 2u);
      destroyStorage<A>(_:count:)(v118, 0, v116);
      destroyStorage<A>(_:count:)(v119, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v117, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v105 = *(v270 + 1368);
    v106 = *(v270 + 1360);
    v103 = *(v270 + 1264);
    v104 = *(v270 + 1200);
    v109 = *(v270 + 1192);
    v108 = *(v270 + 1184);
    v110 = *(v270 + 1152);
    v112 = *(v270 + 1392);
    v113 = *(v270 + 1384);
    v114 = *(v270 + 1376);
    v107 = *(v270 + 1160);
    MEMORY[0x277D82BD8](v127);
    v106(v103, v104);
    type metadata accessor for LogBloodPressureIntentResponse();
    v115 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, 0);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v195);
    MEMORY[0x277D82BD8](quantity);
    v111 = *(v107 + 8);
    v111(v108, v110);
    v111(v109, v110);
    MEMORY[0x277D82BD8](v272);
    outlined destroy of HealthKitPersistor((v270 + 624));
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    v226 = v115;
    goto LABEL_60;
  }

  v99 = *(v270 + 1352);
  v97 = *(v270 + 1344);
  v98 = *(v270 + 1336);
  v11 = *(v270 + 1256);
  v96 = *(v270 + 1200);
  v95 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v98(v11, v95, v96);
  swift_endAccess();
  v101 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  v102 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v101, v100))
  {
    v91 = static UnsafeMutablePointer.allocate(capacity:)();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v92 = createStorage<A>(capacity:type:)(0);
    v93 = createStorage<A>(capacity:type:)(0);
    *(v270 + 824) = v91;
    *(v270 + 832) = v92;
    *(v270 + 840) = v93;
    serialize(_:at:)(0, (v270 + 824));
    serialize(_:at:)(0, (v270 + 824));
    *(v270 + 848) = v102;
    v94 = swift_task_alloc();
    v94[2] = v270 + 824;
    v94[3] = v270 + 832;
    v94[4] = v270 + 840;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v144)
    {
    }

    _os_log_impl(&dword_269912000, v101, v100, "Creating HKCorrelation.", v91, 2u);
    destroyStorage<A>(_:count:)(v92, 0, v90);
    destroyStorage<A>(_:count:)(v93, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v91, MEMORY[0x277D84B78]);

    v89 = 0;
  }

  else
  {

    v89 = v144;
  }

  v69 = *(v270 + 1368);
  v70 = *(v270 + 1360);
  v85 = *(v270 + 1352);
  v83 = *(v270 + 1344);
  v84 = *(v270 + 1336);
  v68 = *(v270 + 1256);
  v79 = *(v270 + 1248);
  v82 = *(v270 + 1200);
  v72 = *(v270 + 1192);
  v73 = *(v270 + 1184);
  v76 = *(v270 + 1176);
  v77 = *(v270 + 1168);
  v74 = *(v270 + 1152);
  v75 = *(v270 + 1392);
  MEMORY[0x277D82BD8](v101);
  v70(v68, v82);
  type metadata accessor for HKSample();
  _allocateUninitializedArray<A>(_:)();
  v71 = v12;
  MEMORY[0x277D82BE0](v195);
  *v71 = v195;
  MEMORY[0x277D82BE0](v140);
  v71[1] = v140;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v78 = Set.init(arrayLiteral:)();
  *(v270 + 1480) = v78;
  *(v270 + 704) = v78;
  type metadata accessor for HKCorrelation();
  MEMORY[0x277D82BE0](v75);
  v209(v76, v72, v74);
  v209(v77, v73, v74);

  v80 = @nonobjc HKCorrelation.__allocating_init(type:start:end:objects:)(v75, v76, v77);
  *(v270 + 1488) = v80;
  *(v270 + 712) = v80;
  v81 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v84(v79, v81, v82);
  swift_endAccess();
  v87 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  v88 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v87, v86))
  {
    v64 = static UnsafeMutablePointer.allocate(capacity:)();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v65 = createStorage<A>(capacity:type:)(0);
    v66 = createStorage<A>(capacity:type:)(0);
    *(v270 + 792) = v64;
    *(v270 + 800) = v65;
    *(v270 + 808) = v66;
    serialize(_:at:)(0, (v270 + 792));
    serialize(_:at:)(0, (v270 + 792));
    *(v270 + 816) = v88;
    v67 = swift_task_alloc();
    v67[2] = v270 + 792;
    v67[3] = v270 + 800;
    v67[4] = v270 + 808;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v89)
    {
    }

    _os_log_impl(&dword_269912000, v87, v86, "Trying to save to store.", v64, 2u);
    destroyStorage<A>(_:count:)(v65, 0, v63);
    destroyStorage<A>(_:count:)(v66, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v64, MEMORY[0x277D84B78]);

    v62 = 0;
  }

  else
  {

    v62 = v89;
  }

  *(v270 + 1496) = v62;
  v58 = *(v270 + 1368);
  v59 = *(v270 + 1360);
  v56 = *(v270 + 1248);
  v57 = *(v270 + 1200);
  v61 = *(v270 + 1144);
  MEMORY[0x277D82BD8](v87);
  v59(v56, v57);
  MEMORY[0x277D82BE0](v61);
  *(v270 + 16) = *(v270 + 536);
  *(v270 + 56) = v227;
  *(v270 + 24) = BloodPressurePersistor.save(systolic:diastolic:units:);
  v60 = swift_continuation_init();
  *(v270 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v270 + 112) = v60;
  *(v270 + 80) = MEMORY[0x277D85DD0];
  *(v270 + 88) = 1107296256;
  *(v270 + 92) = 0;
  *(v270 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v270 + 104) = &block_descriptor_12;
  [v61 saveObject:v80 withCompletion:?];

  return MEMORY[0x282200938](v270 + 16);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 536);
  *(v8 + 536) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 1504) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = BloodPressurePersistor.save(systolic:diastolic:units:);
  }

  else
  {
    v2 = *v6;
    v3 = BloodPressurePersistor.save(systolic:diastolic:units:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v73 = v0[169];
  v71 = v0[168];
  v72 = v0[167];
  v1 = v0[155];
  v70 = v0[150];
  v2 = v0[143];
  v0[67] = v0;
  MEMORY[0x277D82BD8](v2);
  v69 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v72(v1, v69, v70);
  swift_endAccess();
  v75 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v76 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v75, v74))
  {
    v3 = *(v68 + 1496);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v65 = createStorage<A>(capacity:type:)(0);
    v66 = createStorage<A>(capacity:type:)(0);
    *(v68 + 760) = buf;
    *(v68 + 768) = v65;
    *(v68 + 776) = v66;
    serialize(_:at:)(0, (v68 + 760));
    serialize(_:at:)(0, (v68 + 760));
    *(v68 + 784) = v76;
    v67 = swift_task_alloc();
    v67[2] = v68 + 760;
    v67[3] = v68 + 768;
    v67[4] = v68 + 776;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, v75, v74, "Getting intent response.", buf, 2u);
    destroyStorage<A>(_:count:)(v65, 0, v63);
    destroyStorage<A>(_:count:)(v66, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v30 = *(v68 + 1488);
  v31 = *(v68 + 1480);
  v32 = *(v68 + 1472);
  v33 = *(v68 + 1464);
  v34 = *(v68 + 1456);
  v35 = *(v68 + 1448);
  v26 = *(v68 + 1440);
  v27 = *(v68 + 1432);
  v15 = *(v68 + 1368);
  v16 = *(v68 + 1360);
  v13 = *(v68 + 1240);
  v14 = *(v68 + 1200);
  v37 = *(v68 + 1192);
  v36 = *(v68 + 1184);
  v28 = *(v68 + 1176);
  v38 = *(v68 + 1152);
  store = *(v68 + 1144);
  v40.super.isa = *(v68 + 1424);
  v41 = *(v68 + 1392);
  v42 = *(v68 + 1384);
  v43 = *(v68 + 1376);
  v24 = *(v68 + 1160);
  MEMORY[0x277D82BD8](v75);
  v16(v13, v14);
  type metadata accessor for LogBloodPressureIntentResponse();
  v62 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  *(v68 + 728) = v62;
  v17 = [v34 0x1FBA67995];
  [v17 0x1FBD82CC3];
  v18 = v5;
  MEMORY[0x277D82BD8](v17);
  [v62 setSystolic_];
  v19 = [v32 0x1FBA67995];
  [v19 0x1FBD82CC3];
  v20 = v6;
  MEMORY[0x277D82BD8](v19);
  [v62 setDiastolic_];
  [v62 systolic];
  *(v68 + 744) = v7;
  [v62 diastolic];
  *(v68 + 752) = v8;
  max<A>(_:_:)();
  value = *(v68 + 736);
  MEMORY[0x277D82BE0](store);
  v79.value = value;
  v78.is_nil = store;
  v79.is_nil = LOBYTE(value);
  v78.value.super.isa = 0;
  v9 = localizedUnitName(for:value:store:)(v40, v79, v78);
  MEMORY[0x277D82BD8](store);
  v23 = MEMORY[0x26D6492A0](v9._countAndFlagsBits, v9._object);

  [v62 setUnit_];
  MEMORY[0x277D82BD8](v23);
  v27(v28, v37, v38);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v39 = *(v24 + 8);
  v39(v28, v38);
  [v62 setSampleStart_];
  MEMORY[0x277D82BD8](isa);
  v27(v28, v36, v38);
  v29 = Date._bridgeToObjectiveC()().super.isa;
  v39(v28, v38);
  [v62 setSampleEnd_];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);

  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  v39(v36, v38);
  v39(v37, v38);
  MEMORY[0x277D82BD8](v40.super.isa);
  outlined destroy of HealthKitPersistor((v68 + 624));
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  v10 = *(v68 + 1328);
  v44 = *(v68 + 1320);
  v45 = *(v68 + 1312);
  v46 = *(v68 + 1304);
  v47 = *(v68 + 1296);
  v48 = *(v68 + 1288);
  v49 = *(v68 + 1280);
  v50 = *(v68 + 1272);
  v51 = *(v68 + 1264);
  v52 = *(v68 + 1256);
  v53 = *(v68 + 1248);
  v54 = *(v68 + 1240);
  v55 = *(v68 + 1232);
  v56 = *(v68 + 1224);
  v57 = *(v68 + 1216);
  v58 = *(v68 + 1192);
  v59 = *(v68 + 1184);
  v60 = *(v68 + 1176);
  v61 = *(v68 + 1168);

  v11 = *(*(v68 + 536) + 8);
  v12 = *(v68 + 536);

  return v11(v62);
}

{
  v73 = v0;
  v1 = v0[188];
  v65 = v0[169];
  v57 = v0[168];
  v58 = v0[167];
  v53 = v0[152];
  v56 = v0[150];
  v54 = v0[143];
  v0[67] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v54);
  v2 = v1;
  v0[90] = v1;
  v55 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v58(v53, v55, v56);
  swift_endAccess();
  v3 = v1;
  v59 = swift_allocObject();
  *(v59 + 16) = v1;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v60 + 24) = v59;
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v63 + 24) = v60;
  _allocateUninitializedArray<A>(_:)();
  v64 = v4;

  *v64 = partial apply for closure #1 in OSLogArguments.append(_:);
  v64[1] = v61;

  v64[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v64[3] = v62;

  v64[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v64[5] = v63;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v66, v67))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v50 = createStorage<A>(capacity:type:)(0);
    v51 = createStorage<A>(capacity:type:)(1);
    v68 = buf;
    v69 = v50;
    v70 = v51;
    serialize(_:at:)(2, &v68);
    serialize(_:at:)(1, &v68);
    v71 = partial apply for closure #1 in OSLogArguments.append(_:);
    v72 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = partial apply for closure #1 in OSLogArguments.append(_:);
    v72 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = partial apply for closure #1 in OSLogArguments.append(_:);
    v72 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    _os_log_impl(&dword_269912000, v66, v67, "Failed to persist sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v50, 0, v48);
    destroyStorage<A>(_:count:)(v51, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v52[188];
  v14 = v52[186];
  v15 = v52[185];
  v16 = v52[184];
  v17 = v52[183];
  v18 = v52[182];
  v19 = v52[181];
  v11 = v52[171];
  v12 = v52[170];
  v9 = v52[152];
  v10 = v52[150];
  v22 = v52[149];
  v21 = v52[148];
  v23 = v52[144];
  v25 = v52[178];
  v26 = v52[174];
  v27 = v52[173];
  v28 = v52[172];
  v20 = v52[145];
  MEMORY[0x277D82BD8](v66);
  v12(v9, v10);
  type metadata accessor for LogBloodPressureIntentResponse();
  v47 = LogBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v14);

  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v24 = *(v20 + 8);
  v24(v21, v23);
  v24(v22, v23);
  MEMORY[0x277D82BD8](v25);
  outlined destroy of HealthKitPersistor(v52 + 78);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v5 = v52[166];
  v29 = v52[165];
  v30 = v52[164];
  v31 = v52[163];
  v32 = v52[162];
  v33 = v52[161];
  v34 = v52[160];
  v35 = v52[159];
  v36 = v52[158];
  v37 = v52[157];
  v38 = v52[156];
  v39 = v52[155];
  v40 = v52[154];
  v41 = v52[153];
  v42 = v52[152];
  v43 = v52[149];
  v44 = v52[148];
  v45 = v52[147];
  v46 = v52[146];

  v6 = *(v52[67] + 8);
  v7 = v52[67];

  return v6(v47);
}

uint64_t BloodPressurePersistor.preferredUnit()(uint64_t a1)
{
  v1[36] = a1;
  v1[24] = v1;
  v1[25] = 0;
  v1[26] = 0;
  v1[28] = 0;
  v1[29] = 0;
  v2 = type metadata accessor for Logger();
  v1[37] = v2;
  v5 = *(v2 - 8);
  v1[38] = v5;
  v6 = *(v5 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[25] = a1;
  v3 = v1[24];

  return MEMORY[0x2822009F8](BloodPressurePersistor.preferredUnit(), 0);
}

uint64_t BloodPressurePersistor.preferredUnit()()
{
  v1 = v0[40];
  v26 = v0[38];
  v28 = v0[37];
  v0[24] = v0;
  v27 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v26 + 16);
  v0[41] = v2;
  v0[42] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v27, v28);
  swift_endAccess();
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(0);
    *(v25 + 256) = buf;
    *(v25 + 264) = v22;
    *(v25 + 272) = v23;
    serialize(_:at:)(0, (v25 + 256));
    serialize(_:at:)(0, (v25 + 256));
    *(v25 + 280) = v31;
    v24 = swift_task_alloc();
    v24[2] = v25 + 256;
    v24[3] = v25 + 264;
    v24[4] = v25 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v30, v29, "Looking for preferred units", buf, 2u);
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v15 = *(v25 + 320);
  v16 = *(v25 + 296);
  v14 = *(v25 + 304);
  MEMORY[0x277D82BD8](v30);
  v3 = *(v14 + 8);
  *(v25 + 352) = v3;
  *(v25 + 360) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v15, v16);
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v19 = [v17 quantityTypeForIdentifier_];
  *(v25 + 368) = v19;
  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    v13 = *(v25 + 288);
    *(v25 + 208) = v19;
    MEMORY[0x277D82BE0](v13);
    *(v25 + 376) = type metadata accessor for HKQuantityType();
    _allocateUninitializedArray<A>(_:)();
    v10 = v4;
    MEMORY[0x277D82BE0](v19);
    *v10 = v19;
    _finalizeUninitializedArray<A>(_:)();
    *(v25 + 384) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    Set.init(arrayLiteral:)();
    isa = Set._bridgeToObjectiveC()().super.isa;
    *(v25 + 392) = isa;

    *(v25 + 16) = *(v25 + 192);
    *(v25 + 56) = v25 + 216;
    *(v25 + 24) = BloodPressurePersistor.preferredUnit();
    v11 = swift_continuation_init();
    *(v25 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
    *(v25 + 112) = v11;
    *(v25 + 80) = MEMORY[0x277D85DD0];
    *(v25 + 88) = 1107296256;
    *(v25 + 92) = 0;
    *(v25 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
    *(v25 + 104) = &block_descriptor_149;
    [v13 preferredUnitsForQuantityTypes:isa completion:?];

    return MEMORY[0x282200938](v25 + 16);
  }

  else
  {
    v5 = *(v25 + 320);
    v9 = *(v25 + 312);

    v6 = *(*(v25 + 192) + 8);
    v7 = *(v25 + 192);

    return v6(0);
  }
}

{
  v6 = *v0;
  v6[24] = *v0;
  v7 = v6 + 24;
  v1 = v6[6];
  v6[50] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = BloodPressurePersistor.preferredUnit();
  }

  else
  {
    v2 = *v7;
    v3 = BloodPressurePersistor.preferredUnit();
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v7 = v0[49];
  v9 = v0[48];
  v8 = v0[47];
  v11 = v0[46];
  v1 = v0[36];
  v0[24] = v0;
  v10 = v0[27];
  v0[29] = v10;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v11);
  v0[31] = v11;
  v2 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v0 + 31, v10, v8, v2, v9);
  MEMORY[0x277D82BD8](v0[31]);
  v13 = v0[30];

  MEMORY[0x277D82BD8](v11);
  v3 = v0[40];
  v12 = v0[39];

  v4 = *(v0[24] + 8);
  v5 = v0[24];

  return v4(v13);
}

{
  v42 = v0;
  v1 = v0[50];
  v23 = v0[49];
  v34 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v21 = v0[39];
  v25 = v0[37];
  v22 = v0[36];
  v0[24] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v2 = v1;
  v0[28] = v1;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v27(v21, v24, v25);
  swift_endAccess();
  v3 = v1;
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v29;
  _allocateUninitializedArray<A>(_:)();
  v33 = v4;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v30;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v31;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0);
    v19 = createStorage<A>(capacity:type:)(1);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_269912000, v35, v36, "Error fetching preferred units: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v20[50];
  v11 = v20[45];
  v12 = v20[44];
  v9 = v20[39];
  v10 = v20[37];
  v14 = v20[46];
  MEMORY[0x277D82BD8](v35);
  v12(v9, v10);

  MEMORY[0x277D82BD8](v14);
  v5 = v20[40];
  v15 = v20[39];

  v6 = *(v20[24] + 8);
  v7 = v20[24];

  return v6(0);
}

id @nonobjc HKCorrelation.__allocating_init(type:start:end:objects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = Date._bridgeToObjectiveC()().super.isa;
  type metadata accessor for HKSample();
  lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v4 = Set._bridgeToObjectiveC()().super.isa;
  v12 = [swift_getObjCClassFromMetadata() correlationWithType:a1 startDate:isa endDate:v5 objects:v4];
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 8);
  v10(a3);
  MEMORY[0x277D82BD8](isa);
  (v10)(a2, v9);
  MEMORY[0x277D82BD8](a1);
  return v12;
}

uint64_t protocol witness for BloodPressurePersisting.isLoggingAuthorized() in conformance BloodPressurePersistor()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return BloodPressurePersistor.isLoggingAuthorized()(v5);
}

uint64_t protocol witness for BloodPressurePersisting.save(systolic:diastolic:units:) in conformance BloodPressurePersistor(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = *v4;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return BloodPressurePersistor.save(systolic:diastolic:units:)(a1, a2, v12, a3, a4);
}

uint64_t sub_269A40748()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40788()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A408F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40938()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40978()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogBloodPressureIntentHandler.handle(intent:)()
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

  return @objc closure #1 in LogBloodPressureIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t sub_269A40B9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40BDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40D4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40D8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40E24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40E64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40EFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A40F3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A41054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A41094()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id GetAmbiguousDistanceIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAmbiguousDistanceIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAmbiguousDistanceIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
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

id GetAmbiguousDistanceIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id GetAmbiguousDistanceIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetAmbiguousDistanceIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id GetAmbiguousDistanceIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetAmbiguousDistanceIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetAmbiguousDistanceIntentResponseCode.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetAmbiguousDistanceIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetAmbiguousDistanceIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetAmbiguousDistanceIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetAmbiguousDistanceIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetAmbiguousDistanceIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetAmbiguousDistanceIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetAmbiguousDistanceIntentResponse.code : GetAmbiguousDistanceIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetAmbiguousDistanceIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetAmbiguousDistanceIntentResponse.code : GetAmbiguousDistanceIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetAmbiguousDistanceIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetAmbiguousDistanceIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code];
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

id GetAmbiguousDistanceIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAmbiguousDistanceIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAmbiguousDistanceIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
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

id GetAmbiguousDistanceIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAmbiguousDistanceIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
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

id GetAmbiguousDistanceIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
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

id GetAmbiguousDistanceIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetAmbiguousDistanceIntentResponse_code = 0;

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
  v7.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
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

id GetAmbiguousDistanceIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAmbiguousDistanceIntentResponseCode and conformance GetAmbiguousDistanceIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

Swift::String_optional __swiftcall HKMedicationLoggingUnit.getDisplayUnit(for:)(Swift::Double a1)
{
  abs<A>(_:)();
  if (v5 >= 0.01)
  {
    v4 = HKMedicationLoggingUnit.pluralLoggingUnit.getter();
  }

  else
  {
    v4 = HKMedicationLoggingUnit.singularLoggingUnit.getter();
  }

  v2 = v4;
  result.value._object = v1;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t HKMedicationLoggingUnit.singularLoggingUnit.getter()
{
  v13 = _allocateUninitializedArray<A>(_:)();
  v12 = v0;
  *v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1);
  v12[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("capsule", 7uLL, 1);
  v12[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("application", 0xBuLL, 1);
  v12[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("device", 6uLL, 1);
  v12[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop", 4uLL, 1);
  v12[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
  v12[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injection", 9uLL, 1);
  v12[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliliter", 0xAuLL, 1);
  v12[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("patch", 5uLL, 1);
  v12[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("scoop", 5uLL, 1);
  v12[10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spray", 5uLL, 1);
  v12[11] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stick", 5uLL, 1);
  v12[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unit", 4uLL, 1);
  v12[13] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablet", 6uLL, 1);
  v12[14] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bar", 3uLL, 1);
  v12[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cartridge", 9uLL, 1);
  v12[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chewable", 8uLL, 1);
  v12[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("disc", 4uLL, 1);
  v12[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enema", 5uLL, 1);
  v12[19] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("globule", 7uLL, 1);
  v12[20] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("implant", 7uLL, 1);
  v12[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v12[22] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kit", 3uLL, 1);
  v12[23] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenge", 7uLL, 1);
  v12[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milligram", 9uLL, 1);
  v12[25] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("packet", 6uLL, 1);
  v12[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("piece", 5uLL, 1);
  v12[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("popsicle", 8uLL, 1);
  v12[28] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sponge", 6uLL, 1);
  v12[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strip", 5uLL, 1);
  v12[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("suppository", 0xBuLL, 1);
  v12[31] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tampon", 6uLL, 1);
  v12[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("treatment", 9uLL, 1);
  v12[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vial", 4uLL, 1);
  v12[34] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wick", 4uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  if ([v14 loggingUnitCode])
  {
    [v14 loggingUnitCode];
    HKMedicationDoseEventStatus.rawValue.getter();
    v6 = v1;
    v7 = MEMORY[0x26D6494A0](v13, MEMORY[0x277D837D0]);
    if (v7 > 0 && v6 < v7)
    {
      [v14 loggingUnitCode];
      HKMedicationDoseEventStatus.rawValue.getter();
      if (v2 > 0x7FFFFFFFFFFFFFFFLL)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      Array.subscript.getter();
      v4 = v15;
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  else
  {
    v11 = [v14 fallbackLoggingUnitSingularString];
    if (v11)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v11);
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }
}

uint64_t HKMedicationLoggingUnit.pluralLoggingUnit.getter()
{
  v13 = _allocateUninitializedArray<A>(_:)();
  v12 = v0;
  *v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1);
  v12[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("capsules", 8uLL, 1);
  v12[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("applications", 0xCuLL, 1);
  v12[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("devices", 7uLL, 1);
  v12[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drops", 5uLL, 1);
  v12[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalations", 0xBuLL, 1);
  v12[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injections", 0xAuLL, 1);
  v12[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliliters", 0xBuLL, 1);
  v12[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("patches", 7uLL, 1);
  v12[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("scoops", 6uLL, 1);
  v12[10] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sprays", 6uLL, 1);
  v12[11] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sticks", 6uLL, 1);
  v12[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("units", 5uLL, 1);
  v12[13] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablets", 7uLL, 1);
  v12[14] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bars", 4uLL, 1);
  v12[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cartridges", 0xAuLL, 1);
  v12[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chewables", 9uLL, 1);
  v12[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("discs", 5uLL, 1);
  v12[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enemas", 6uLL, 1);
  v12[19] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("globules", 8uLL, 1);
  v12[20] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("implants", 8uLL, 1);
  v12[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inserts", 7uLL, 1);
  v12[22] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kits", 4uLL, 1);
  v12[23] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenges", 8uLL, 1);
  v12[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milligrams", 0xAuLL, 1);
  v12[25] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("packets", 7uLL, 1);
  v12[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pieces", 6uLL, 1);
  v12[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("popsicles", 9uLL, 1);
  v12[28] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sponges", 7uLL, 1);
  v12[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strips", 6uLL, 1);
  v12[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("suppositories", 0xDuLL, 1);
  v12[31] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tampons", 7uLL, 1);
  v12[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("treatments", 0xAuLL, 1);
  v12[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vials", 5uLL, 1);
  v12[34] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wicks", 5uLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  if ([v14 loggingUnitCode])
  {
    [v14 loggingUnitCode];
    HKMedicationDoseEventStatus.rawValue.getter();
    v6 = v1;
    v7 = MEMORY[0x26D6494A0](v13, MEMORY[0x277D837D0]);
    if (v7 > 0 && v6 < v7)
    {
      [v14 loggingUnitCode];
      HKMedicationDoseEventStatus.rawValue.getter();
      if (v2 > 0x7FFFFFFFFFFFFFFFLL)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      Array.subscript.getter();
      v4 = v15;
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  else
  {
    v11 = [v14 fallbackLoggingUnitPluralString];
    if (v11)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v11);
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }
}

uint64_t dateInterval(startTime:endTime:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v114 = a1;
  v86 = a3;
  v107 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v87 = 0;
  v88 = type metadata accessor for Logger();
  v89 = *(v88 - 8);
  v90 = v89;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](0);
  v91 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Calendar();
  v93 = *(v92 - 8);
  v94 = v93;
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v92 - 8);
  v95 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v96 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v48 - v96;
  v98 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v107);
  v99 = &v48 - v98;
  v100 = type metadata accessor for DateComponents();
  v101 = *(v100 - 8);
  v102 = v101;
  v103 = *(v101 + 64);
  MEMORY[0x28223BE20](v100 - 8);
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v48 - v105;
  MEMORY[0x28223BE20](&v48 - v105);
  v106 = &v48 - v105;
  v140 = &v48 - v105;
  v109 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v8 = MEMORY[0x28223BE20](v107);
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v48 - v111;
  v9 = MEMORY[0x28223BE20](v8);
  v110 = &v48 - v111;
  MEMORY[0x28223BE20](v9);
  v127 = &v48 - v111;
  v112 = &v48 - v111;
  v126 = type metadata accessor for Date();
  v115 = v126;
  v116 = *(v126 - 8);
  v125 = v116;
  v117 = v116;
  v121 = *(v116 + 64);
  v10 = MEMORY[0x28223BE20](v114);
  v123 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = &v48 - v123;
  v11 = MEMORY[0x28223BE20](v10);
  v119 = &v48 - v123;
  v12 = MEMORY[0x28223BE20](v11);
  v120 = &v48 - v123;
  v139 = &v48 - v123;
  v13 = MEMORY[0x28223BE20](v12);
  v122 = &v48 - v123;
  v138 = &v48 - v123;
  v14 = MEMORY[0x28223BE20](v13);
  v124 = &v48 - v123;
  v137 = &v48 - v123;
  v136 = v14;
  v135 = v15;
  outlined init with copy of Date?(v14, v16);
  v128 = *(v125 + 48);
  v129 = (v125 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v128(v127, 1, v126) == 1)
  {
    outlined destroy of Date?(v112);
LABEL_13:
    v24 = type metadata accessor for DateInterval();
    (*(*(v24 - 8) + 56))(v86, 1);
    return v87;
  }

  v84 = *(v117 + 32);
  v85 = (v117 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v84(v124, v112, v115);
  outlined init with copy of Date?(v113, v110);
  if (v128(v110, 1, v115) == 1)
  {
    outlined destroy of Date?(v110);
    (*(v117 + 8))(v124, v115);
    goto LABEL_13;
  }

  v84(v122, v110, v115);
  v17 = *(v94 + 56);
  v83 = 1;
  v17(v99, 1, 1, v92);
  v79 = 0;
  v18 = type metadata accessor for TimeZone();
  (*(*(v18 - 8) + 56))(v97, v83);
  v80 = &v26;
  v47 = v83;
  v46 = v79;
  LOBYTE(v45) = v83;
  v44 = v79;
  v43 = v83;
  v42 = v79;
  v41 = v83;
  v40 = v79;
  v39 = v83;
  v38 = v79;
  v37 = v83;
  v36 = v79;
  v35 = v83;
  v34 = v79;
  v33 = v83;
  v32 = v79;
  v31 = v83;
  v30 = v79;
  v29 = v83;
  v28 = v79;
  v27 = v83;
  v26 = v79;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.second.setter();
  static Calendar.current.getter();
  (*(v102 + 16))(v104, v106, v100);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v81 = *(v102 + 8);
  v82 = (v102 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81(v104, v100);
  (*(v94 + 8))(v95, v92);
  if (v128(v108, v83, v115) == 1)
  {
    v20 = v91;
    outlined destroy of Date?(v108);
    v66 = Logger.wellnessIntents.unsafeMutableAddressor();
    v67 = &v134;
    v70 = 0;
    swift_beginAccess();
    (*(v90 + 16))(v20, v66, v88);
    swift_endAccess();
    v72 = Logger.logObject.getter();
    v68 = v72;
    v71 = static os_log_type_t.error.getter();
    v69 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v73 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v72, v71))
    {
      v21 = v87;
      v57 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = v57;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v55 = 0;
      v58 = createStorage<A>(capacity:type:)(0);
      v56 = v58;
      v59 = createStorage<A>(capacity:type:)(v55);
      v133 = v57;
      v132 = v58;
      v131 = v59;
      v60 = 0;
      v61 = &v133;
      serialize(_:at:)(0, &v133);
      serialize(_:at:)(v60, v61);
      v130 = v73;
      v62 = &v48;
      MEMORY[0x28223BE20](&v48);
      v63 = &v42;
      v44 = v22;
      v45 = &v132;
      v46 = &v131;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v65 = v21;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v68, v69, "Failed to create date interval", v53, 2u);
        v51 = 0;
        destroyStorage<A>(_:count:)(v56, 0, v54);
        destroyStorage<A>(_:count:)(v59, v51, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);

        v52 = v65;
      }
    }

    else
    {

      v52 = v87;
    }

    v50 = v52;

    (*(v90 + 8))(v91, v88);
    v23 = type metadata accessor for DateInterval();
    (*(*(v23 - 8) + 56))(v86, 1);
    v81(v106, v100);
    v49 = *(v117 + 8);
    v48 = v117 + 8;
    v49(v122, v115);
    v49(v124, v115);
    return v50;
  }

  else
  {
    v84(v120, v108, v115);
    v75 = *(v117 + 16);
    v74 = v117 + 16;
    v75(v119, v120, v115);
    v75(v118, v122, v115);
    DateInterval.init(start:end:)();
    v19 = type metadata accessor for DateInterval();
    (*(*(v19 - 8) + 56))(v86, 0, 1);
    v77 = *(v117 + 8);
    v76 = v117 + 8;
    v77(v120, v115);
    v81(v106, v100);
    v77(v122, v115);
    v77(v124, v115);
    return v87;
  }
}

Swift::Bool __swiftcall allDoseEventsAreUnlogged(doseEvents:)(Swift::OpaquePointer doseEvents)
{
  type metadata accessor for HKMedicationDoseEventStatus();
  _allocateUninitializedArray<A>(_:)();
  *v1 = 4;
  v1[1] = 5;
  _finalizeUninitializedArray<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v3 = Sequence.allSatisfy(_:)();

  return v3 & 1;
}

Swift::Bool __swiftcall allLoggedWithMixedStatus(doseEvents:)(Swift::OpaquePointer doseEvents)
{
  v24[0] = 0;
  v24[1] = 0;
  rawValue = doseEvents._rawValue;
  v27 = 0;
  v26 = 0;
  v25 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  for (i = 0; ; i = v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    if (!v23)
    {
      break;
    }

    [v23 status];
    type metadata accessor for HKMedicationDoseEventStatus();
    lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
    result = == infix<A>(_:_:)();
    if (result)
    {
      if (__OFADD__(i, 1))
      {
        goto LABEL_31;
      }

      v27 = i + 1;
      v11 = v17;
      v12 = i + 1;
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = i + 1;
    }

    else
    {
      [v23 status];
      result = == infix<A>(_:_:)();
      if (result)
      {
        if (__OFADD__(v21, 1))
        {
          goto LABEL_30;
        }

        v26 = v21 + 1;
        v7 = v21 + 1;
        v8 = v19;
        v9 = v20;
        v10 = v21 + 1;
      }

      else
      {
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        v25 = v20 + 1;
        v7 = v17;
        v8 = v20 + 1;
        v9 = v20 + 1;
        v10 = v21;
      }

      v11 = v7;
      v12 = v18;
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v16 = i;
    }

    (MEMORY[0x277D82BD8])();
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
  }

  outlined destroy of [HKQuantityType](v24);
  if (v19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v18 >= 1;
  }

  return v6 && v17 >= 1;
}

Swift::Bool __swiftcall oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(Swift::OpaquePointer doseEvents, Swift::Bool requestedStatus)
{
  v10[0] = 0;
  v10[1] = 0;
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  rawValue = doseEvents._rawValue;
  v11 = requestedStatus;
  if (requestedStatus)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      if (!v5)
      {
        break;
      }

      [v5 status];
      type metadata accessor for HKMedicationDoseEventStatus();
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      if (== infix<A>(_:_:)())
      {
        (MEMORY[0x277D82BD8])();
        outlined destroy of [HKQuantityType](v6);
        return 1;
      }

      (MEMORY[0x277D82BD8])();
    }

    outlined destroy of [HKQuantityType](v6);
  }

  else
  {

    v9 = doseEvents._rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      if (!v8)
      {
        break;
      }

      v7 = v8;
      v6[3] = [v8 status];
      v6[2] = 4;
      type metadata accessor for HKMedicationDoseEventStatus();
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      if (== infix<A>(_:_:)())
      {
        MEMORY[0x277D82BD8](v8);
        outlined destroy of [HKQuantityType](v10);
        return 1;
      }

      MEMORY[0x277D82BD8](v8);
    }

    outlined destroy of [HKQuantityType](v10);
  }

  return 0;
}

uint64_t getUnloggedDoseEvents(doseEvents:)()
{
  type metadata accessor for HKMedicationDoseEventStatus();
  _allocateUninitializedArray<A>(_:)();
  *v0 = 4;
  v0[1] = 5;
  _finalizeUninitializedArray<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v2 = _ArrayProtocol.filter(_:)();

  return v2;
}

uint64_t getFallbackDateInterval(specifiedDateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v70 = a1;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "SiriWellnessIntents/MedicationsHelpers.swift";
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v74 = 0;
  v90 = type metadata accessor for Calendar();
  v87 = *(v90 - 8);
  v88 = v90 - 8;
  v52 = (v87[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v89 = v41 - v52;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = v41 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41 - v53);
  v95 = v41 - v55;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v56 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v73 = v41 - v56;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v72 = v41 - v57;
  v84 = type metadata accessor for DateComponents();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v58 = (v81[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v74);
  v83 = v41 - v58;
  v59 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v77 = v41 - v59;
  v105 = v41 - v59;
  v97 = type metadata accessor for Date();
  v93 = *(v97 - 8);
  v94 = v97 - 8;
  v60 = (v93[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v61 = v41 - v60;
  v62 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41 - v60);
  v63 = v41 - v62;
  v64 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v41 - v62);
  v65 = v41 - v64;
  v104 = v41 - v64;
  v66 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v67 = v41 - v66;
  v103 = v41 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = v41 - v68;
  v102 = v41 - v68;
  v69 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v80 = v41 - v69;
  v101 = v41 - v69;
  v100 = a1;
  DateInterval.start.getter();
  DateInterval.end.getter();
  v16 = v87[7];
  v96 = 1;
  v16(v72, 1, 1, v90);
  v17 = type metadata accessor for TimeZone();
  (*(*(v17 - 8) + 56))(v73, v96);
  v75 = &v19;
  v19 = 0;
  v76 = 1;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = 0;
  v24 = 1;
  v25 = 0;
  v26 = 1;
  v27 = 0;
  v28 = 1;
  v29 = 0;
  v30 = 1;
  v31 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = 0;
  LOBYTE(v38) = 1;
  v39 = 0;
  v40 = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.hour.setter();
  static Calendar.current.getter();
  v78 = v81[2];
  v79 = v81 + 2;
  v78(v83, v77, v84);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v85 = v81[1];
  v86 = v81 + 1;
  v85(v83, v84);
  v91 = v87[1];
  v92 = v87 + 1;
  v91(v89, v90);
  v98 = v93[6];
  v99 = v93 + 6;
  if (v98(v95, v96, v97) == 1)
  {
    LOBYTE(v37) = 2;
    v38 = 152;
    LODWORD(v39) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v45 = v93[4];
  v46 = v93 + 4;
  v45(v67, v95, v97);
  static Calendar.current.getter();
  v78(v83, v77, v84);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  v47 = 1;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v85(v83, v84);
  v91(v89, v90);
  if (v98(v54, v47, v97) == 1)
  {
    LOBYTE(v37) = 2;
    v38 = 153;
    LODWORD(v39) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v45(v65, v54, v97);
  v42 = v93[2];
  v41[1] = v93 + 2;
  v42(v63, v67, v97);
  v42(v61, v65, v97);
  DateInterval.init(start:end:)();
  v44 = v93[1];
  v43 = v93 + 1;
  v44(v65, v97);
  v44(v67, v97);
  v85(v77, v84);
  v44(v71, v97);
  return (v44)(v80, v97);
}

uint64_t filterUniqueDoseEvents(doseEvents:)(uint64_t a1)
{
  v577 = MEMORY[0x28223BE20](a1);
  v569 = 0;
  v579 = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  v583 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v585 = partial apply for closure #1 in OSLogArguments.append(_:);
  v587 = partial apply for closure #1 in OSLogArguments.append(_:);
  v590 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v524 = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  v525 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v526 = partial apply for implicit closure #1 in MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:);
  v527 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v528 = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v529 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v530 = partial apply for implicit closure #5 in filterUniqueDoseEvents(doseEvents:);
  v531 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v532 = partial apply for implicit closure #6 in filterUniqueDoseEvents(doseEvents:);
  v533 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v534 = partial apply for closure #1 in OSLogArguments.append(_:);
  v535 = partial apply for closure #1 in OSLogArguments.append(_:);
  v536 = partial apply for closure #1 in OSLogArguments.append(_:);
  v537 = partial apply for closure #1 in OSLogArguments.append(_:);
  v538 = partial apply for closure #1 in OSLogArguments.append(_:);
  v539 = partial apply for closure #1 in OSLogArguments.append(_:);
  v540 = partial apply for closure #1 in OSLogArguments.append(_:);
  v541 = partial apply for closure #1 in OSLogArguments.append(_:);
  v542 = partial apply for closure #1 in OSLogArguments.append(_:);
  v543 = partial apply for closure #1 in OSLogArguments.append(_:);
  v544 = partial apply for closure #1 in OSLogArguments.append(_:);
  v545 = partial apply for closure #1 in OSLogArguments.append(_:);
  v546 = partial apply for closure #1 in OSLogArguments.append(_:);
  v547 = partial apply for closure #1 in OSLogArguments.append(_:);
  v548 = partial apply for closure #1 in OSLogArguments.append(_:);
  v549 = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  v550 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v551 = partial apply for closure #1 in OSLogArguments.append(_:);
  v552 = partial apply for closure #1 in OSLogArguments.append(_:);
  v553 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v633 = 0;
  v631 = 0;
  v630 = 0;
  v629[0] = 0;
  v629[1] = 0;
  v554 = 0;
  v619 = 0;
  v617 = 0;
  v615 = 0;
  v616 = 0;
  v614 = 0;
  v560 = 0;
  v555 = type metadata accessor for Date();
  v556 = *(v555 - 8);
  v557 = v555 - 8;
  v558 = (*(v556 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v555);
  v559 = v104 - v558;
  v561 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v560);
  v562 = v104 - v561;
  v573 = type metadata accessor for Logger();
  v570 = *(v573 - 8);
  v571 = v573 - 8;
  v563 = (v570[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v577);
  v564 = v104 - v563;
  v565 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1);
  v566 = v104 - v565;
  v567 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v6 = v104 - v567;
  v568 = v104 - v567;
  v633 = v5;
  v572 = Logger.wellnessIntents.unsafeMutableAddressor();
  v576 = &v632;
  v580 = 32;
  swift_beginAccess();
  v574 = v570[2];
  v575 = v570 + 2;
  v574(v6, v572, v573);
  swift_endAccess();

  v581 = 7;
  v582 = swift_allocObject();
  *(v582 + 16) = v577;
  v594 = Logger.logObject.getter();
  v595 = static os_log_type_t.debug.getter();
  v578 = 17;
  v586 = swift_allocObject();
  *(v586 + 16) = 0;
  v588 = swift_allocObject();
  *(v588 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v582;
  v584 = v7;
  *(v7 + 16) = v579;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v584;
  v591 = v9;
  *(v9 + 16) = v583;
  *(v9 + 24) = v10;
  v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v589 = _allocateUninitializedArray<A>(_:)();
  v592 = v11;

  v12 = v586;
  v13 = v592;
  *v592 = v585;
  v13[1] = v12;

  v14 = v588;
  v15 = v592;
  v592[2] = v587;
  v15[3] = v14;

  v16 = v591;
  v17 = v592;
  v592[4] = v590;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v594, v595))
  {
    v18 = v554;
    v517 = static UnsafeMutablePointer.allocate(capacity:)();
    v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v516 = 0;
    v518 = createStorage<A>(capacity:type:)(0);
    v519 = createStorage<A>(capacity:type:)(v516);
    v520 = &v600;
    v600 = v517;
    v521 = &v599;
    v599 = v518;
    v522 = &v598;
    v598 = v519;
    serialize(_:at:)(0, &v600);
    serialize(_:at:)(1, v520);
    v596 = v585;
    v597 = v586;
    closure #1 in osLogInternal(_:log:type:)(&v596, v520, v521, v522);
    v523 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v596 = v587;
      v597 = v588;
      closure #1 in osLogInternal(_:log:type:)(&v596, &v600, &v599, &v598);
      v513 = 0;
      v596 = v590;
      v597 = v591;
      closure #1 in osLogInternal(_:log:type:)(&v596, &v600, &v599, &v598);
      v512 = 0;
      _os_log_impl(&dword_269912000, v594, v595, "Started filtering with this many dose events: %ld", v517, 0xCu);
      v511 = 0;
      destroyStorage<A>(_:count:)(v518, 0, v515);
      destroyStorage<A>(_:count:)(v519, v511, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v517, MEMORY[0x277D84B78]);

      v514 = v512;
    }
  }

  else
  {
    v19 = v554;

    v514 = v19;
  }

  v509 = v514;
  MEMORY[0x277D82BD8](v594);
  v501 = v570[1];
  v502 = v570 + 1;
  v501(v568, v573);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_SaySSGtMd, &_sSSSg_SaySSGtMR);
  v507 = 0;
  v505 = _allocateUninitializedArray<A>(_:)();
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v506 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  v631 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for HKMedicationExposableDoseEvent();
  v630 = _allocateUninitializedArray<A>(_:)();

  v628 = v577;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v509; ; i = v181)
  {
    v499 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v500 = v627;
    if (!v627)
    {
      break;
    }

    v498 = v500;
    v20 = v566;
    v463 = v500;
    v619 = v500;
    v460 = Logger.wellnessIntents.unsafeMutableAddressor();
    v461 = &v618;
    v475 = 32;
    swift_beginAccess();
    v574(v20, v460, v573);
    swift_endAccess();
    MEMORY[0x277D82BE0](v463);
    v462 = 24;
    v476 = 7;
    v21 = swift_allocObject();
    v22 = v463;
    v464 = v21;
    *(v21 + 16) = v463;
    MEMORY[0x277D82BE0](v22);
    v23 = swift_allocObject();
    v24 = v463;
    v466 = v23;
    *(v23 + 16) = v463;
    MEMORY[0x277D82BE0](v24);
    v25 = swift_allocObject();
    v26 = v463;
    v468 = v25;
    *(v25 + 16) = v463;
    MEMORY[0x277D82BE0](v26);
    v27 = swift_allocObject();
    v28 = v463;
    v470 = v27;
    *(v27 + 16) = v463;
    MEMORY[0x277D82BE0](v28);
    v477 = swift_allocObject();
    *(v477 + 16) = v463;
    v496 = Logger.logObject.getter();
    v497 = static os_log_type_t.debug.getter();
    v473 = 17;
    v479 = swift_allocObject();
    v472 = 32;
    *(v479 + 16) = 32;
    v480 = swift_allocObject();
    v474 = 8;
    *(v480 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v464;
    v465 = v29;
    *(v29 + 16) = v524;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v465;
    v481 = v31;
    *(v31 + 16) = v525;
    *(v31 + 24) = v32;
    v482 = swift_allocObject();
    *(v482 + 16) = v472;
    v483 = swift_allocObject();
    *(v483 + 16) = v474;
    v33 = swift_allocObject();
    v34 = v466;
    v467 = v33;
    *(v33 + 16) = v526;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v467;
    v484 = v35;
    *(v35 + 16) = v527;
    *(v35 + 24) = v36;
    v485 = swift_allocObject();
    *(v485 + 16) = v472;
    v486 = swift_allocObject();
    *(v486 + 16) = v474;
    v37 = swift_allocObject();
    v38 = v468;
    v469 = v37;
    *(v37 + 16) = v528;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v469;
    v487 = v39;
    *(v39 + 16) = v529;
    *(v39 + 24) = v40;
    v488 = swift_allocObject();
    *(v488 + 16) = v472;
    v489 = swift_allocObject();
    *(v489 + 16) = v474;
    v41 = swift_allocObject();
    v42 = v470;
    v471 = v41;
    *(v41 + 16) = v530;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v471;
    v490 = v43;
    *(v43 + 16) = v531;
    *(v43 + 24) = v44;
    v491 = swift_allocObject();
    *(v491 + 16) = v472;
    v492 = swift_allocObject();
    *(v492 + 16) = v474;
    v45 = swift_allocObject();
    v46 = v477;
    v478 = v45;
    *(v45 + 16) = v532;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v478;
    v494 = v47;
    *(v47 + 16) = v533;
    *(v47 + 24) = v48;
    v493 = _allocateUninitializedArray<A>(_:)();
    v495 = v49;

    v50 = v479;
    v51 = v495;
    *v495 = v534;
    v51[1] = v50;

    v52 = v480;
    v53 = v495;
    v495[2] = v535;
    v53[3] = v52;

    v54 = v481;
    v55 = v495;
    v495[4] = v536;
    v55[5] = v54;

    v56 = v482;
    v57 = v495;
    v495[6] = v537;
    v57[7] = v56;

    v58 = v483;
    v59 = v495;
    v495[8] = v538;
    v59[9] = v58;

    v60 = v484;
    v61 = v495;
    v495[10] = v539;
    v61[11] = v60;

    v62 = v485;
    v63 = v495;
    v495[12] = v540;
    v63[13] = v62;

    v64 = v486;
    v65 = v495;
    v495[14] = v541;
    v65[15] = v64;

    v66 = v487;
    v67 = v495;
    v495[16] = v542;
    v67[17] = v66;

    v68 = v488;
    v69 = v495;
    v495[18] = v543;
    v69[19] = v68;

    v70 = v489;
    v71 = v495;
    v495[20] = v544;
    v71[21] = v70;

    v72 = v490;
    v73 = v495;
    v495[22] = v545;
    v73[23] = v72;

    v74 = v491;
    v75 = v495;
    v495[24] = v546;
    v75[25] = v74;

    v76 = v492;
    v77 = v495;
    v495[26] = v547;
    v77[27] = v76;

    v78 = v494;
    v79 = v495;
    v495[28] = v548;
    v79[29] = v78;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v496, v497))
    {
      v80 = v499;
      v438 = static UnsafeMutablePointer.allocate(capacity:)();
      v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v439 = createStorage<A>(capacity:type:)(0);
      v440 = createStorage<A>(capacity:type:)(5);
      v441 = v605;
      v605[0] = v438;
      v442 = &v604;
      v604 = v439;
      v443 = &v603;
      v603 = v440;
      serialize(_:at:)(2, v605);
      serialize(_:at:)(5, v441);
      v601 = v534;
      v602 = v479;
      closure #1 in osLogInternal(_:log:type:)(&v601, v441, v442, v443);
      v444 = v80;
      v445 = v479;
      v446 = v480;
      v447 = v481;
      v448 = v482;
      v449 = v483;
      v450 = v484;
      v451 = v485;
      v452 = v486;
      v453 = v487;
      v454 = v488;
      v455 = v489;
      v456 = v490;
      v457 = v491;
      v458 = v492;
      v459 = v494;
      if (v80)
      {
        v421 = v445;
        v422 = v446;
        v423 = v447;
        v424 = v448;
        v425 = v449;
        v426 = v450;
        v427 = v451;
        v428 = v452;
        v429 = v453;
        v430 = v454;
        v431 = v455;
        v432 = v456;
        v433 = v457;
        v434 = v458;
        v435 = v459;
        v196 = v459;
        v195 = v458;
        v194 = v457;
        v193 = v456;
        v192 = v455;
        v191 = v454;
        v190 = v453;
        v189 = v452;
        v188 = v451;
        v187 = v450;
        v186 = v449;
        v185 = v448;
        v184 = v447;
        v183 = v446;

        __break(1u);
      }

      else
      {
        v601 = v535;
        v602 = v480;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v405 = 0;
        v406 = v479;
        v407 = v480;
        v408 = v481;
        v409 = v482;
        v410 = v483;
        v411 = v484;
        v412 = v485;
        v413 = v486;
        v414 = v487;
        v415 = v488;
        v416 = v489;
        v417 = v490;
        v418 = v491;
        v419 = v492;
        v420 = v494;
        v601 = v536;
        v602 = v481;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v389 = 0;
        v390 = v479;
        v391 = v480;
        v392 = v481;
        v393 = v482;
        v394 = v483;
        v395 = v484;
        v396 = v485;
        v397 = v486;
        v398 = v487;
        v399 = v488;
        v400 = v489;
        v401 = v490;
        v402 = v491;
        v403 = v492;
        v404 = v494;
        v601 = v537;
        v602 = v482;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v373 = 0;
        v374 = v479;
        v375 = v480;
        v376 = v481;
        v377 = v482;
        v378 = v483;
        v379 = v484;
        v380 = v485;
        v381 = v486;
        v382 = v487;
        v383 = v488;
        v384 = v489;
        v385 = v490;
        v386 = v491;
        v387 = v492;
        v388 = v494;
        v601 = v538;
        v602 = v483;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v357 = 0;
        v358 = v479;
        v359 = v480;
        v360 = v481;
        v361 = v482;
        v362 = v483;
        v363 = v484;
        v364 = v485;
        v365 = v486;
        v366 = v487;
        v367 = v488;
        v368 = v489;
        v369 = v490;
        v370 = v491;
        v371 = v492;
        v372 = v494;
        v601 = v539;
        v602 = v484;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v341 = 0;
        v342 = v479;
        v343 = v480;
        v344 = v481;
        v345 = v482;
        v346 = v483;
        v347 = v484;
        v348 = v485;
        v349 = v486;
        v350 = v487;
        v351 = v488;
        v352 = v489;
        v353 = v490;
        v354 = v491;
        v355 = v492;
        v356 = v494;
        v601 = v540;
        v602 = v485;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v325 = 0;
        v326 = v479;
        v327 = v480;
        v328 = v481;
        v329 = v482;
        v330 = v483;
        v331 = v484;
        v332 = v485;
        v333 = v486;
        v334 = v487;
        v335 = v488;
        v336 = v489;
        v337 = v490;
        v338 = v491;
        v339 = v492;
        v340 = v494;
        v601 = v541;
        v602 = v486;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v309 = 0;
        v310 = v479;
        v311 = v480;
        v312 = v481;
        v313 = v482;
        v314 = v483;
        v315 = v484;
        v316 = v485;
        v317 = v486;
        v318 = v487;
        v319 = v488;
        v320 = v489;
        v321 = v490;
        v322 = v491;
        v323 = v492;
        v324 = v494;
        v601 = v542;
        v602 = v487;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v293 = 0;
        v294 = v479;
        v295 = v480;
        v296 = v481;
        v297 = v482;
        v298 = v483;
        v299 = v484;
        v300 = v485;
        v301 = v486;
        v302 = v487;
        v303 = v488;
        v304 = v489;
        v305 = v490;
        v306 = v491;
        v307 = v492;
        v308 = v494;
        v601 = v543;
        v602 = v488;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v277 = 0;
        v278 = v479;
        v279 = v480;
        v280 = v481;
        v281 = v482;
        v282 = v483;
        v283 = v484;
        v284 = v485;
        v285 = v486;
        v286 = v487;
        v287 = v488;
        v288 = v489;
        v289 = v490;
        v290 = v491;
        v291 = v492;
        v292 = v494;
        v601 = v544;
        v602 = v489;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v261 = 0;
        v262 = v479;
        v263 = v480;
        v264 = v481;
        v265 = v482;
        v266 = v483;
        v267 = v484;
        v268 = v485;
        v269 = v486;
        v270 = v487;
        v271 = v488;
        v272 = v489;
        v273 = v490;
        v274 = v491;
        v275 = v492;
        v276 = v494;
        v601 = v545;
        v602 = v490;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v245 = 0;
        v246 = v479;
        v247 = v480;
        v248 = v481;
        v249 = v482;
        v250 = v483;
        v251 = v484;
        v252 = v485;
        v253 = v486;
        v254 = v487;
        v255 = v488;
        v256 = v489;
        v257 = v490;
        v258 = v491;
        v259 = v492;
        v260 = v494;
        v601 = v546;
        v602 = v491;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v229 = 0;
        v230 = v479;
        v231 = v480;
        v232 = v481;
        v233 = v482;
        v234 = v483;
        v235 = v484;
        v236 = v485;
        v237 = v486;
        v238 = v487;
        v239 = v488;
        v240 = v489;
        v241 = v490;
        v242 = v491;
        v243 = v492;
        v244 = v494;
        v601 = v547;
        v602 = v492;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v213 = 0;
        v214 = v479;
        v215 = v480;
        v216 = v481;
        v217 = v482;
        v218 = v483;
        v219 = v484;
        v220 = v485;
        v221 = v486;
        v222 = v487;
        v223 = v488;
        v224 = v489;
        v225 = v490;
        v226 = v491;
        v227 = v492;
        v228 = v494;
        v601 = v548;
        v602 = v494;
        closure #1 in osLogInternal(_:log:type:)(&v601, v605, &v604, &v603);
        v197 = 0;
        v198 = v479;
        v199 = v480;
        v200 = v481;
        v201 = v482;
        v202 = v483;
        v203 = v484;
        v204 = v485;
        v205 = v486;
        v206 = v487;
        v207 = v488;
        v208 = v489;
        v209 = v490;
        v210 = v491;
        v211 = v492;
        v212 = v494;
        _os_log_impl(&dword_269912000, v496, v497, "got a dose event with scheduleID: %s, medID: %s, status: %s, scheduledDate: %s, startDate: %s", v438, 0x34u);
        destroyStorage<A>(_:count:)(v439, 0, v437);
        destroyStorage<A>(_:count:)(v440, 5, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v438, MEMORY[0x277D84B78]);

        v436 = v197;
      }
    }

    else
    {
      v81 = v499;

      v436 = v81;
    }

    v181 = v436;
    MEMORY[0x277D82BD8](v496);
    v501(v566, v573);
    v182 = [v463 scheduledDate];
    if (v182)
    {
      v180 = v182;
      v179 = v182;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v556 + 32))(v562, v559, v555);
      (*(v556 + 56))(v562, 0, 1, v555);
      MEMORY[0x277D82BD8](v179);
    }

    else
    {
      (*(v556 + 56))(v562, 1, 1, v555);
    }

    v178 = (*(v556 + 48))(v562, 1, v555) == 1;
    v177 = v178;
    outlined destroy of Date?(v562);
    v617 = v177;
    if (v177)
    {
      MEMORY[0x277D82BD8](v463);
      continue;
    }

    v172 = [v463 medicationIdentifier];
    v175 = [v172 underlyingIdentifier];
    v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v174 = v82;
    v615 = v173;
    v616 = v82;
    MEMORY[0x277D82BD8](v172);
    MEMORY[0x277D82BD8](v175);
    v176 = [v463 scheduleItemIdentifier];
    if (v176)
    {
      v171 = v176;
      v166 = v176;
      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v168 = v83;
      MEMORY[0x277D82BD8](v166);
      v169 = v167;
      v170 = v168;
    }

    else
    {
      v169 = 0;
      v170 = 0;
    }

    v164 = v612;
    v612[0] = v169;
    v612[1] = v170;
    MEMORY[0x26D649240](&v613);
    outlined destroy of String.UTF8View(v164);
    v165 = v613;
    if (v613)
    {
      v163 = v165;
      v159 = v165;

      v614 = v159;
      v161 = v609;
      v609[0] = v159;
      v160 = v608;
      v608[0] = v173;
      v608[1] = v174;
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v162 = Sequence<>.contains(_:)();
      outlined destroy of [HKQuantityType](v161);
      if (v162)
      {
        outlined destroy of [HKQuantityType](&v614);

        MEMORY[0x277D82BD8](v463);
        continue;
      }

      v607[1] = v173;
      v607[2] = v174;
      Array.append(_:)();
      v158 = [v463 scheduleItemIdentifier];
      if (v158)
      {
        v157 = v158;
        v152 = v158;
        v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v84;
        MEMORY[0x277D82BD8](v152);
        v155 = v153;
        v156 = v154;
      }

      else
      {
        v155 = 0;
        v156 = 0;
      }

      v148 = v156;
      v147 = v155;
      v151 = &v614;
      v146 = v614;

      v150 = v607;
      v607[0] = v146;
      v149 = v606;
      v606[0] = v147;
      v606[1] = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSgSaySSGGMd, &_sSDySSSgSaySSGGMR);
      Dictionary.subscript.setter();
      MEMORY[0x277D82BE0](v463);
      v605[1] = v463;
      Array.append(_:)();
      outlined destroy of [HKQuantityType](v151);
    }

    else
    {
      v145 = [v463 scheduleItemIdentifier];
      if (v145)
      {
        v144 = v145;
        v139 = v145;
        v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v85;
        MEMORY[0x277D82BD8](v139);
        v142 = v140;
        v143 = v141;
      }

      else
      {
        v142 = 0;
        v143 = 0;
      }

      v136 = v143;
      v135 = v142;
      v134 = MEMORY[0x277D837D0];
      v132 = _allocateUninitializedArray<A>(_:)();
      v133 = v86;

      v87 = v132;
      v88 = v174;
      v89 = v133;
      *v133 = v173;
      v89[1] = v88;
      _finalizeUninitializedArray<A>(_:)();
      v138 = &v611;
      v611 = v87;
      v137 = v610;
      v610[0] = v135;
      v610[1] = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSgSaySSGGMd, &_sSDySSSgSaySSGGMR);
      Dictionary.subscript.setter();
      MEMORY[0x277D82BE0](v463);
      v609[1] = v463;
      Array.append(_:)();
    }

    MEMORY[0x277D82BD8](v463);
  }

  v90 = v564;
  outlined destroy of [HKQuantityType](v629);
  v117 = Logger.wellnessIntents.unsafeMutableAddressor();
  v118 = &v626;
  v121 = 32;
  swift_beginAccess();
  v574(v90, v117, v573);
  swift_endAccess();
  v119 = v630;

  v122 = 7;
  v123 = swift_allocObject();
  *(v123 + 16) = v119;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();
  v120 = 17;
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v126 = swift_allocObject();
  *(v126 + 16) = 8;
  v91 = swift_allocObject();
  v92 = v123;
  v124 = v91;
  *(v91 + 16) = v549;
  *(v91 + 24) = v92;
  v93 = swift_allocObject();
  v94 = v124;
  v128 = v93;
  *(v93 + 16) = v550;
  *(v93 + 24) = v94;
  v127 = _allocateUninitializedArray<A>(_:)();
  v129 = v95;

  v96 = v125;
  v97 = v129;
  *v129 = v551;
  v97[1] = v96;

  v98 = v126;
  v99 = v129;
  v129[2] = v552;
  v99[3] = v98;

  v100 = v128;
  v101 = v129;
  v129[4] = v553;
  v101[5] = v100;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v130, v131))
  {
    v102 = v499;
    v110 = static UnsafeMutablePointer.allocate(capacity:)();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v109 = 0;
    v111 = createStorage<A>(capacity:type:)(0);
    v112 = createStorage<A>(capacity:type:)(v109);
    v113 = &v624;
    v624 = v110;
    v114 = &v623;
    v623 = v111;
    v115 = &v622;
    v622 = v112;
    serialize(_:at:)(0, &v624);
    serialize(_:at:)(1, v113);
    v620 = v551;
    v621 = v125;
    closure #1 in osLogInternal(_:log:type:)(&v620, v113, v114, v115);
    v116 = v102;
    if (v102)
    {

      __break(1u);
    }

    else
    {
      v620 = v552;
      v621 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v620, &v624, &v623, &v622);
      v107 = 0;
      v620 = v553;
      v621 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v620, &v624, &v623, &v622);
      _os_log_impl(&dword_269912000, v130, v131, "Finished filtering to this many dose events: %ld", v110, 0xCu);
      v106 = 0;
      destroyStorage<A>(_:count:)(v111, 0, v108);
      destroyStorage<A>(_:count:)(v112, v106, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v110, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v130);
  v501(v564, v573);
  v105 = &v630;
  v104[1] = &v625;
  swift_beginAccess();
  swift_endAccess();
  outlined destroy of [HKQuantityType](v105);
  outlined destroy of [HKQuantityType](&v631);
  return v119;
}

Swift::Bool __swiftcall isCompatibleUnit(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  object = a2.value._object;
  countAndFlagsBits = a2.value._countAndFlagsBits;
  v48 = a1.value._object;
  v46 = a1.value._countAndFlagsBits;
  v44 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v45 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v49 = type metadata accessor for Logger();
  v50 = *(v49 - 8);
  v51 = v50;
  v52 = *(v50 + 64);
  v2 = MEMORY[0x28223BE20](object);
  v53 = &v10 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  v67 = v4;
  v64 = v5;
  v65 = v2;

  if (object)
  {
    v42 = countAndFlagsBits;
    v43 = object;
    v40 = object;
    v41 = countAndFlagsBits;
    v57 = countAndFlagsBits;
    v58 = object;

    if (v48)
    {
      v38 = v46;
      v39 = v48;
      v34 = v48;
      v55 = v46;
      v56 = v48;
      v35 = MEMORY[0x26D649310]();

      v36 = v35;
    }

    else
    {

      v36 = 1;
    }

    v37 = v45;
  }

  else
  {
    v6 = v53;
    v26 = Logger.wellnessIntents.unsafeMutableAddressor();
    v27 = &v63;
    v30 = 0;
    swift_beginAccess();
    (*(v51 + 16))(v6, v26, v49);
    swift_endAccess();
    v32 = Logger.logObject.getter();
    v28 = v32;
    v31 = static os_log_type_t.debug.getter();
    v29 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v7 = v45;
      v17 = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v15 = 0;
      v18 = createStorage<A>(capacity:type:)(0);
      v16 = v18;
      v19 = createStorage<A>(capacity:type:)(v15);
      v62 = v17;
      v61 = v18;
      v60 = v19;
      v20 = 0;
      v21 = &v62;
      serialize(_:at:)(0, &v62);
      serialize(_:at:)(v20, v21);
      v59 = v33;
      v22 = &v10;
      MEMORY[0x28223BE20](&v10);
      v23 = &v10 - 6;
      *(&v10 - 4) = v8;
      *(&v10 - 3) = &v61;
      *(&v10 - 2) = &v60;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v25 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v28, v29, "healthAppDosageUnit was unexpectedly nil, return false", v13, 2u);
        v11 = 0;
        destroyStorage<A>(_:count:)(v16, 0, v14);
        destroyStorage<A>(_:count:)(v19, v11, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v13, MEMORY[0x277D84B78]);

        v12 = v25;
      }
    }

    else
    {

      v12 = v45;
    }

    v10 = v12;

    (*(v51 + 8))(v53, v49);
    v36 = 0;
    v37 = v10;
  }

  return v36 & 1;
}

uint64_t implicit closure #5 in filterUniqueDoseEvents(doseEvents:)(uint64_t a1)
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
  v13 = [v1 scheduledDate];
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

uint64_t implicit closure #6 in filterUniqueDoseEvents(doseEvents:)(uint64_t a1)
{
  v4 = a1;
  v6 = type metadata accessor for Date();
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v3 - v5;
  v8 = [MEMORY[0x28223BE20](v4) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  lazy protocol witness table accessor for type Date and conformance Date();
  v9 = String.init<A>(describing:)();
  v10 = v1;
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t closure #1 in allDoseEventsAreUnlogged(doseEvents:)(id *a1)
{
  [*a1 status];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27HKMedicationDoseEventStatusVGMd, &_sSaySo27HKMedicationDoseEventStatusVGMR);
  lazy protocol witness table accessor for type [HKMedicationDoseEventStatus] and conformance [A]();
  lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
  return (Sequence<>.contains(_:)() ^ 1) & 1;
}

uint64_t sub_269A49B28()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269A49BC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A49C00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A49C40()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269A49CD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A49D18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A49F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A49F68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A040()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A0D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A1B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A1F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A288()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4A2C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKMedicationDoseEventStatus] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMedicationDoseEventStatus] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationDoseEventStatus] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo27HKMedicationDoseEventStatusVGMd, &_sSaySo27HKMedicationDoseEventStatusVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationDoseEventStatus] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

id UndoMedsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for UndoMedsIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id UndoMedsIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id UndoMedsIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for UndoMedsIntent();
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

id UndoMedsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id UndoMedsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for UndoMedsIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id UndoMedsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id UndoMedsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for UndoMedsIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id UndoMedsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UndoMedsIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UndoMedsIntentResponseCode.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UndoMedsIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = UndoMedsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UndoMedsIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  UndoMedsIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t UndoMedsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___UndoMedsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t UndoMedsIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___UndoMedsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for UndoMedsIntentResponse.code : UndoMedsIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = UndoMedsIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for UndoMedsIntentResponse.code : UndoMedsIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  UndoMedsIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *UndoMedsIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___UndoMedsIntentResponse_code];
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

id UndoMedsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for UndoMedsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id UndoMedsIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id UndoMedsIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for UndoMedsIntentResponse();
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

id UndoMedsIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id UndoMedsIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for UndoMedsIntentResponse();
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

id UndoMedsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
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

id UndoMedsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___UndoMedsIntentResponse_code = 0;

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
  v7.super_class = type metadata accessor for UndoMedsIntentResponse();
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

id UndoMedsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UndoMedsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UndoMedsIntentResponseCode and conformance UndoMedsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

uint64_t Calendar.dateInterval(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v173 = a1;
  v172 = a2;
  v106 = partial apply for implicit closure #1 in Calendar.dateInterval(for:);
  v107 = partial apply for implicit closure #1 in Calendar.dateInterval(for:);
  v108 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4;
  v109 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v110 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4;
  v111 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v112 = partial apply for closure #1 in OSLogArguments.append(_:);
  v113 = partial apply for closure #1 in OSLogArguments.append(_:);
  v114 = partial apply for closure #1 in OSLogArguments.append(_:);
  v115 = partial apply for closure #1 in OSLogArguments.append(_:);
  v116 = partial apply for closure #1 in OSLogArguments.append(_:);
  v117 = partial apply for closure #1 in OSLogArguments.append(_:);
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v184 = 0;
  v182 = 0;
  v118 = 0;
  v144 = 0;
  v119 = type metadata accessor for Logger();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v123 = v48 - v122;
  v124 = type metadata accessor for DateInterval();
  v125 = *(v124 - 8);
  v126 = v124 - 8;
  v127 = (*(v125 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v124);
  v128 = v48 - v127;
  v189 = v48 - v127;
  v129 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v144);
  v130 = v48 - v129;
  v131 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v132 = v48 - v131;
  v133 = type metadata accessor for Date();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v136 = (v134[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v144);
  v137 = v48 - v136;
  v138 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v139 = v48 - v138;
  v140 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v141 = v48 - v140;
  v188 = v48 - v140;
  v142 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v143 = v48 - v142;
  v187 = v48 - v142;
  v157 = type metadata accessor for Calendar();
  v155 = *(v157 - 8);
  v156 = v157 - 8;
  v145 = (v155[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v144);
  v11 = v48 - v145;
  v158 = v48 - v145;
  v167 = type metadata accessor for DateComponents();
  v163 = *(v167 - 8);
  v164 = v167 - 8;
  v146 = v163;
  v150 = v163[8];
  v147 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v173);
  v148 = v48 - v147;
  v186 = v48 - v147;
  v149 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v12);
  v166 = v48 - v149;
  v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v13);
  v165 = v48 - v151;
  v185 = v48 - v151;
  v183 = v14;
  v184 = v15;
  v182 = v16;
  v171 = 0x277CBE000uLL;
  v161 = objc_opt_self();
  v153 = v155[2];
  v154 = v155 + 2;
  v153(v11, v152, v157);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v159 = v155[1];
  v160 = v155 + 1;
  v159(v158, v157);
  v170 = [v161 hk:v173 componentsWithDayIndex:isa calendar:?];
  MEMORY[0x277D82BD8](isa);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v168 = v163[4];
  v169 = v163 + 4;
  v168(v165, v166, v167);
  MEMORY[0x277D82BD8](v170);
  v17 = *(v171 + 2744);
  v18 = objc_opt_self();
  result = v173;
  v174 = v18;
  v175 = v173 + v172;
  if (__OFADD__(v173, v172))
  {
    __break(1u);
  }

  else
  {
    v153(v158, v152, v157);
    v101 = Calendar._bridgeToObjectiveC()().super.isa;
    v159(v158, v157);
    v102 = [v174 hk:v175 componentsWithDayIndex:v101 calendar:?];
    MEMORY[0x277D82BD8](v101);
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v168(v148, v166, v167);
    MEMORY[0x277D82BD8](v102);
    Calendar.date(from:)();
    v103 = v134[6];
    v104 = v134 + 6;
    if (v103(v132, 1, v133) == 1)
    {
      outlined destroy of Date?(v132);
    }

    else
    {
      v99 = v134[4];
      v100 = v134 + 4;
      v99(v143, v132, v133);
      Calendar.date(from:)();
      if (v103(v130, 1, v133) != 1)
      {
        v99(v141, v130, v133);
        v94 = v134[2];
        v93 = v134 + 2;
        v94(v139, v143, v133);
        v94(v137, v141, v133);
        DateInterval.init(start:end:)();
        (*(v125 + 16))(v105, v128, v124);
        (*(v125 + 56))(v105, 0, 1, v124);
        (*(v125 + 8))(v128, v124);
        v96 = v134[1];
        v95 = v134 + 1;
        v96(v141, v133);
        v96(v143, v133);
        v98 = v163[1];
        v97 = v163 + 1;
        v98(v148, v167);
        return (v98)(v165, v167);
      }

      outlined destroy of Date?(v130);
      (v134[1])(v143, v133);
    }

    v21 = v123;
    v63 = Logger.wellnessIntents.unsafeMutableAddressor();
    v64 = &v181;
    v78 = 32;
    swift_beginAccess();
    (*(v120 + 16))(v21, v63, v119);
    swift_endAccess();
    v65 = v146;
    v69 = v163[2];
    v68 = v163 + 2;
    v69(v166, v165, v167);
    v70 = *(v65 + 20);
    v66 = (v70 + 16) & ~v70;
    v79 = 7;
    v67 = swift_allocObject();
    v168((v67 + v66), v166, v167);

    v22 = swift_allocObject();
    v23 = v67;
    v73 = v22;
    *(v22 + 16) = v106;
    *(v22 + 24) = v23;

    v69(v166, v148, v167);
    v71 = (v70 + 16) & ~v70;
    v72 = swift_allocObject();
    v168((v72 + v71), v166, v167);

    v24 = swift_allocObject();
    v25 = v72;
    v80 = v24;
    *(v24 + 16) = v107;
    *(v24 + 24) = v25;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    v76 = 17;
    v82 = swift_allocObject();
    v75 = 32;
    *(v82 + 16) = 32;
    v83 = swift_allocObject();
    v77 = 8;
    *(v83 + 16) = 8;
    v26 = swift_allocObject();
    v27 = v73;
    v74 = v26;
    *(v26 + 16) = v108;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v74;
    v84 = v28;
    *(v28 + 16) = v109;
    *(v28 + 24) = v29;
    v85 = swift_allocObject();
    *(v85 + 16) = v75;
    v86 = swift_allocObject();
    *(v86 + 16) = v77;
    v30 = swift_allocObject();
    v31 = v80;
    v81 = v30;
    *(v30 + 16) = v110;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v81;
    v88 = v32;
    *(v32 + 16) = v111;
    *(v32 + 24) = v33;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v87 = _allocateUninitializedArray<A>(_:)();
    v89 = v34;

    v35 = v82;
    v36 = v89;
    *v89 = v112;
    v36[1] = v35;

    v37 = v83;
    v38 = v89;
    v89[2] = v113;
    v38[3] = v37;

    v39 = v84;
    v40 = v89;
    v89[4] = v114;
    v40[5] = v39;

    v41 = v85;
    v42 = v89;
    v89[6] = v115;
    v42[7] = v41;

    v43 = v86;
    v44 = v89;
    v89[8] = v116;
    v44[9] = v43;

    v45 = v88;
    v46 = v89;
    v89[10] = v117;
    v46[11] = v45;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v91, v92))
    {
      v47 = v118;
      v55 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = createStorage<A>(capacity:type:)(0);
      v57 = createStorage<A>(capacity:type:)(2);
      v59 = &v180;
      v180 = v55;
      v60 = &v179;
      v179 = v56;
      v61 = &v178;
      v178 = v57;
      v58 = 2;
      serialize(_:at:)(2, &v180);
      serialize(_:at:)(v58, v59);
      v176 = v112;
      v177 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v176, v59, v60, v61);
      v62 = v47;
      if (v47)
      {

        __break(1u);
      }

      else
      {
        v176 = v113;
        v177 = v83;
        closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
        v53 = 0;
        v176 = v114;
        v177 = v84;
        closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
        v52 = 0;
        v176 = v115;
        v177 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
        v51 = 0;
        v176 = v116;
        v177 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
        v50 = 0;
        v176 = v117;
        v177 = v88;
        closure #1 in osLogInternal(_:log:type:)(&v176, &v180, &v179, &v178);
        _os_log_impl(&dword_269912000, v91, v92, "Failed to convert HKDayIndexRange into a valid date interval. Start: %s End: %s", v55, 0x16u);
        destroyStorage<A>(_:count:)(v56, 0, v54);
        destroyStorage<A>(_:count:)(v57, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v55, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v91);
    (*(v120 + 8))(v123, v119);
    (*(v125 + 56))(v105, 1, 1, v124);
    v49 = v163[1];
    v48[1] = v163 + 1;
    v49(v148, v167);
    return (v49)(v165, v167);
  }

  return result;
}

uint64_t MenstrualCycleAnalysis.menstruationProjections.setter(uint64_t a1)
{

  v2 = *v1;
  *v1 = a1;
}

uint64_t *MenstrualCycleAnalysis.init(_:calendar:)(void *a1, uint64_t a2)
{
  v68 = a2;
  v78 = a1;
  v73 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v67 = 0;
  v76 = type metadata accessor for Logger();
  v69 = v76;
  v70 = *(v76 - 8);
  v74 = v70;
  v71 = v70;
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v78);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v4;
  v106 = v5;
  v105 = v6;
  v75 = Logger.wellnessIntents.unsafeMutableAddressor();
  v84 = 32;
  v77 = &v104;
  swift_beginAccess();
  (*(v74 + 16))(v4, v75, v76);
  swift_endAccess();
  v7 = v78;
  v85 = 7;
  v86 = swift_allocObject();
  *(v86 + 16) = v78;
  v96 = Logger.logObject.getter();
  v79 = v96;
  v95 = static os_log_type_t.debug.getter();
  v80 = v95;
  v81 = 17;
  v89 = swift_allocObject();
  v82 = v89;
  *(v89 + 16) = 64;
  v90 = swift_allocObject();
  v83 = v90;
  *(v90 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v86;
  v87 = v8;
  *(v8 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v87;
  v93 = v10;
  v88 = v10;
  *(v10 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v10 + 24) = v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v91 = _allocateUninitializedArray<A>(_:)();
  v92 = v12;

  v13 = v89;
  v14 = v92;
  *v92 = partial apply for closure #1 in OSLogArguments.append(_:);
  v14[1] = v13;

  v15 = v90;
  v16 = v92;
  v92[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v16[3] = v15;

  v17 = v92;
  v18 = v93;
  v92[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v17[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v96, v95))
  {
    v19 = v67;
    v60 = static UnsafeMutablePointer.allocate(capacity:)();
    v57 = v60;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v63 = 1;
    v61 = createStorage<A>(capacity:type:)(1);
    v59 = v61;
    v62 = createStorage<A>(capacity:type:)(0);
    v101 = v60;
    v100 = v61;
    v99 = v62;
    v64 = &v101;
    serialize(_:at:)(2, &v101);
    serialize(_:at:)(v63, v64);
    v97 = partial apply for closure #1 in OSLogArguments.append(_:);
    v98 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v97, v64, &v100, &v99);
    v65 = v19;
    v66 = v19;
    if (v19)
    {
      v55 = 0;

      __break(1u);
    }

    else
    {
      v97 = partial apply for closure #1 in OSLogArguments.append(_:);
      v98 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v53 = 0;
      v54 = 0;
      v97 = partial apply for closure #1 in OSLogArguments.append(_:);
      v98 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v97, &v101, &v100, &v99);
      v51 = 0;
      v52 = 0;
      _os_log_impl(&dword_269912000, v79, v80, "%@", v57, 0xCu);
      destroyStorage<A>(_:count:)(v59, 1, v58);
      destroyStorage<A>(_:count:)(v62, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v57, MEMORY[0x277D84B78]);

      v56 = v51;
    }
  }

  else
  {
    v20 = v67;

    v56 = v20;
  }

  v21 = v56;

  (*(v71 + 8))(v72, v69);
  v42 = [v78 menstruationProjections];
  v41 = v42;
  v45 = 0;
  v43 = type metadata accessor for HKMCProjection();
  v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  KeyPath = swift_getKeyPath();
  v44 = KeyPath;

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKMCProjectionCGMd, &_sSaySo14HKMCProjectionCGMR);
  v48 = type metadata accessor for HKDayIndexRange();
  v22 = lazy protocol witness table accessor for type [HKMCProjection] and conformance [A]();
  v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in MenstrualCycleAnalysis.init(_:calendar:), KeyPath, v47, v48, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
  v49 = v21;
  v50 = v24;
  if (v21)
  {

    __break(1u);
    result = v36;
    __break(1u);
  }

  else
  {
    v32 = v50;

    outlined destroy of [HKQuantityType](&v103);

    v102 = v32;
    v34 = implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)(v68);
    v35 = v25;
    v33 = v25;

    v36 = &v29;
    MEMORY[0x28223BE20](v34);
    v37 = &v29 - 4;
    *(&v29 - 2) = v26;
    *(&v29 - 1) = v27;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15HKDayIndexRangeaGMd, &_sSaySo15HKDayIndexRangeaGMR);
    v39 = type metadata accessor for DateInterval();
    lazy protocol witness table accessor for type [HKDayIndexRange] and conformance [A]();
    v40 = Sequence.compactMap<A>(_:)();
    v31 = v40;

    outlined destroy of [HKQuantityType](&v102);

    v107 = v31;
    v30 = type metadata accessor for Calendar();
    (*(*(v30 - 8) + 8))(v68);

    outlined destroy of [HKQuantityType](&v107);
    return v31;
  }

  return result;
}

uint64_t key path getter for HKMCProjection.mostLikelyDays : HKMCProjection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v4 mostLikelyDays];
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t implicit closure #2 in MenstrualCycleAnalysis.init(_:calendar:)(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v2);
}

uint64_t (*implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v14 = partial apply for implicit closure #4 in implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:);
  v15 = 0;
  v12 = type metadata accessor for Calendar();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = v8;
  v7 = *(v8 + 64);
  v5 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v12);
  v11 = &v4 - v5;
  v15 = v2;
  (*(v8 + 16))(v1);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v10, v11, v12);
  return v14;
}

uint64_t MenstrualCycleAnalysis.init(menstruationProjections:)(uint64_t a1)
{
  v3 = 0;

  v3 = a1;

  outlined destroy of [HKQuantityType](&v3);
  return a1;
}

uint64_t sub_269A4E4A8()
{
  v3 = *(type metadata accessor for DateComponents() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in Calendar.dateInterval(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DateComponents();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #1 in Calendar.dateInterval(for:)(v3, a1);
}

uint64_t sub_269A4E5E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for DateComponents();
  v1 = lazy protocol witness table accessor for type DateComponents and conformance DateComponents();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents()
{
  v2 = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    type metadata accessor for DateComponents();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A4E704()
{
  v3 = *(type metadata accessor for DateComponents() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_269A4E7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4E868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4E8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4E940()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4E980()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4EA60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A4EAA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKDayIndexRange] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKDayIndexRange] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKDayIndexRange] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15HKDayIndexRangeaGMd, &_sSaySo15HKDayIndexRangeaGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKDayIndexRange] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A4EC88()
{
  v3 = *(type metadata accessor for Calendar() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Calendar();
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return implicit closure #4 in implicit closure #3 in MenstrualCycleAnalysis.init(_:calendar:)(a1, a2, a3);
}

SiriWellnessIntents::WellnessUnit_optional __swiftcall WellnessUnit.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "kilogram";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "gram";
  *(v2 + 32) = 4;
  *(v2 + 40) = 2;
  *(v2 + 48) = "pound";
  *(v2 + 56) = 5;
  *(v2 + 64) = 2;
  *(v2 + 72) = "stone";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  *(v2 + 96) = "centimeter";
  *(v2 + 104) = 10;
  *(v2 + 112) = 2;
  *(v2 + 120) = "feet";
  *(v2 + 128) = 4;
  *(v2 + 136) = 2;
  *(v2 + 144) = "meter";
  *(v2 + 152) = 5;
  *(v2 + 160) = 2;
  *(v2 + 168) = "inch";
  *(v2 + 176) = 4;
  *(v2 + 184) = 2;
  *(v2 + 192) = "liter";
  *(v2 + 200) = 5;
  *(v2 + 208) = 2;
  *(v2 + 216) = "second";
  *(v2 + 224) = 6;
  *(v2 + 232) = 2;
  *(v2 + 240) = "minute";
  *(v2 + 248) = 6;
  *(v2 + 256) = 2;
  *(v2 + 264) = "hour";
  *(v2 + 272) = 4;
  *(v2 + 280) = 2;
  *(v2 + 288) = "celsius";
  *(v2 + 296) = 7;
  *(v2 + 304) = 2;
  *(v2 + 312) = "fahrenheit";
  *(v2 + 320) = 10;
  *(v2 + 328) = 2;
  *(v2 + 336) = "mmhg";
  *(v2 + 344) = 4;
  *(v2 + 352) = 2;
  *(v2 + 360) = "bpm";
  *(v2 + 368) = 3;
  *(v2 + 376) = 2;
  *(v2 + 384) = "breath_min";
  *(v2 + 392) = 10;
  *(v2 + 400) = 2;
  *(v2 + 408) = "calories";
  *(v2 + 416) = 8;
  *(v2 + 424) = 2;
  *(v2 + 432) = "joule";
  *(v2 + 440) = 5;
  *(v2 + 448) = 2;
  *(v2 + 456) = "kilojoule";
  *(v2 + 464) = 9;
  *(v2 + 472) = 2;
  *(v2 + 480) = "active_energy";
  *(v2 + 488) = 13;
  *(v2 + 496) = 2;
  *(v2 + 504) = "resting_energy";
  *(v2 + 512) = 14;
  *(v2 + 520) = 2;
  *(v2 + 528) = "mgdl";
  *(v2 + 536) = 4;
  *(v2 + 544) = 2;
  *(v2 + 552) = "mmoll";
  *(v2 + 560) = 5;
  *(v2 + 568) = 2;
  *(v2 + 576) = "percent";
  *(v2 + 584) = 7;
  *(v2 + 592) = 2;
  *(v2 + 600) = "miles";
  *(v2 + 608) = 5;
  *(v2 + 616) = 2;
  *(v2 + 624) = "kilometers";
  *(v2 + 632) = 10;
  *(v2 + 640) = 2;
  *(v2 + 648) = "steps";
  *(v2 + 656) = 5;
  *(v2 + 664) = 2;
  *(v2 + 672) = "flights";
  *(v2 + 680) = 7;
  *(v2 + 688) = 2;
  *(v2 + 696) = "wheelchair_pushes";
  *(v2 + 704) = 17;
  *(v2 + 712) = 2;
  *(v2 + 720) = "strokes";
  *(v2 + 728) = 7;
  *(v2 + 736) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessUnit_kilogram;
LABEL_64:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessUnit_gram;
      goto LABEL_64;
    case 2:
      v5.value = SiriWellnessIntents_WellnessUnit_pound;
      goto LABEL_64;
    case 3:
      v5.value = SiriWellnessIntents_WellnessUnit_stone;
      goto LABEL_64;
    case 4:
      v5.value = SiriWellnessIntents_WellnessUnit_centimeter;
      goto LABEL_64;
    case 5:
      v5.value = SiriWellnessIntents_WellnessUnit_feet;
      goto LABEL_64;
    case 6:
      v5.value = SiriWellnessIntents_WellnessUnit_meter;
      goto LABEL_64;
    case 7:
      v5.value = SiriWellnessIntents_WellnessUnit_inch;
      goto LABEL_64;
    case 8:
      v5.value = SiriWellnessIntents_WellnessUnit_liter;
      goto LABEL_64;
    case 9:
      v5.value = SiriWellnessIntents_WellnessUnit_second;
      goto LABEL_64;
    case 10:
      v5.value = SiriWellnessIntents_WellnessUnit_minute;
      goto LABEL_64;
    case 11:
      v5.value = SiriWellnessIntents_WellnessUnit_hour;
      goto LABEL_64;
    case 12:
      v5.value = SiriWellnessIntents_WellnessUnit_celsius;
      goto LABEL_64;
    case 13:
      v5.value = SiriWellnessIntents_WellnessUnit_fahrenheit;
      goto LABEL_64;
    case 14:
      v5.value = SiriWellnessIntents_WellnessUnit_mmhg;
      goto LABEL_64;
    case 15:
      v5.value = SiriWellnessIntents_WellnessUnit_bpm;
      goto LABEL_64;
    case 16:
      v5.value = SiriWellnessIntents_WellnessUnit_breath_min;
      goto LABEL_64;
    case 17:
      v5.value = SiriWellnessIntents_WellnessUnit_calories;
      goto LABEL_64;
    case 18:
      v5.value = SiriWellnessIntents_WellnessUnit_joule;
      goto LABEL_64;
    case 19:
      v5.value = SiriWellnessIntents_WellnessUnit_kilojoule;
      goto LABEL_64;
    case 20:
      v5.value = SiriWellnessIntents_WellnessUnit_active_energy;
      goto LABEL_64;
    case 21:
      v5.value = SiriWellnessIntents_WellnessUnit_resting_energy;
      goto LABEL_64;
    case 22:
      v5.value = SiriWellnessIntents_WellnessUnit_mgdl;
      goto LABEL_64;
    case 23:
      v5.value = SiriWellnessIntents_WellnessUnit_mmoll;
      goto LABEL_64;
    case 24:
      v5.value = SiriWellnessIntents_WellnessUnit_percent;
      goto LABEL_64;
    case 25:
      v5.value = SiriWellnessIntents_WellnessUnit_miles;
      goto LABEL_64;
    case 26:
      v5.value = SiriWellnessIntents_WellnessUnit_kilometers;
      goto LABEL_64;
    case 27:
      v5.value = SiriWellnessIntents_WellnessUnit_steps;
      goto LABEL_64;
    case 28:
      v5.value = SiriWellnessIntents_WellnessUnit_flights;
      goto LABEL_64;
    case 29:
      v5.value = SiriWellnessIntents_WellnessUnit_wheelchair_pushes;
      goto LABEL_64;
    case 30:
      v5.value = SiriWellnessIntents_WellnessUnit_strokes;
      goto LABEL_64;
  }

  return 31;
}

uint64_t WellnessUnit.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("gram", 4uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pound", 5uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stone", 5uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("centimeter", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feet", 4uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("meter", 5uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inch", 4uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("liter", 5uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("second", 6uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minute", 6uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", 4uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("celsius", 7uLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fahrenheit", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 14:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mmhg", 4uLL, 1)._countAndFlagsBits;
      break;
    case 15:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bpm", 3uLL, 1)._countAndFlagsBits;
      break;
    case 16:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("breath_min", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 17:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("calories", 8uLL, 1)._countAndFlagsBits;
      break;
    case 18:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("joule", 5uLL, 1)._countAndFlagsBits;
      break;
    case 19:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kilojoule", 9uLL, 1)._countAndFlagsBits;
      break;
    case 20:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("active_energy", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 21:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("resting_energy", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 22:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mgdl", 4uLL, 1)._countAndFlagsBits;
      break;
    case 23:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mmoll", 5uLL, 1)._countAndFlagsBits;
      break;
    case 24:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("percent", 7uLL, 1)._countAndFlagsBits;
      break;
    case 25:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("miles", 5uLL, 1)._countAndFlagsBits;
      break;
    case 26:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kilometers", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 27:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("steps", 5uLL, 1)._countAndFlagsBits;
      break;
    case 28:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flights", 7uLL, 1)._countAndFlagsBits;
      break;
    case 29:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wheelchair_pushes", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 30:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strokes", 7uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kilogram", 8uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type WellnessUnit and conformance WellnessUnit()
{
  v2 = lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit;
  if (!lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit;
  if (!lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessUnit and conformance WellnessUnit);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessUnit_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessUnit@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessUnit_optional *a2@<X8>)
{
  result.value = WellnessUnit.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessUnit@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessUnit.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE1)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 30) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 225;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 31;
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

_BYTE *storeEnumTagSinglePayload for WellnessUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE1)
  {
    v5 = ((a3 + 30) >> 8) + 1;
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

  if (a2 > 0xE1)
  {
    v4 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
      *result = a2 + 30;
    }
  }

  return result;
}

SiriWellnessIntents::WellnessValue_optional __swiftcall WellnessValue.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "dry";
  *(v2 + 8) = 3;
  *(v2 + 16) = 2;
  *(v2 + 24) = "sticky";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  *(v2 + 48) = "creamy";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "watery";
  *(v2 + 80) = 6;
  *(v2 + 88) = 2;
  *(v2 + 96) = "egg_white";
  *(v2 + 104) = 9;
  *(v2 + 112) = 2;
  *(v2 + 120) = "light";
  *(v2 + 128) = 5;
  *(v2 + 136) = 2;
  *(v2 + 144) = "medium";
  *(v2 + 152) = 6;
  *(v2 + 160) = 2;
  *(v2 + 168) = "heavy";
  *(v2 + 176) = 5;
  *(v2 + 184) = 2;
  *(v2 + 192) = "negative";
  *(v2 + 200) = 8;
  *(v2 + 208) = 2;
  *(v2 + 216) = "positive";
  *(v2 + 224) = 8;
  *(v2 + 232) = 2;
  *(v2 + 240) = "indeterminate";
  *(v2 + 248) = 13;
  *(v2 + 256) = 2;
  *(v2 + 264) = "protected";
  *(v2 + 272) = 9;
  *(v2 + 280) = 2;
  *(v2 + 288) = "not_protected";
  *(v2 + 296) = 13;
  *(v2 + 304) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessValue_dry;
LABEL_28:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessValue_sticky;
      goto LABEL_28;
    case 2:
      v5.value = SiriWellnessIntents_WellnessValue_creamy;
      goto LABEL_28;
    case 3:
      v5.value = SiriWellnessIntents_WellnessValue_watery;
      goto LABEL_28;
    case 4:
      v5.value = SiriWellnessIntents_WellnessValue_egg_white;
      goto LABEL_28;
    case 5:
      v5.value = SiriWellnessIntents_WellnessValue_light;
      goto LABEL_28;
    case 6:
      v5.value = SiriWellnessIntents_WellnessValue_medium;
      goto LABEL_28;
    case 7:
      v5.value = SiriWellnessIntents_WellnessValue_heavy;
      goto LABEL_28;
    case 8:
      v5.value = SiriWellnessIntents_WellnessValue_negative;
      goto LABEL_28;
    case 9:
      v5.value = SiriWellnessIntents_WellnessValue_positive;
      goto LABEL_28;
    case 10:
      v5.value = SiriWellnessIntents_WellnessValue_indeterminate;
      goto LABEL_28;
    case 11:
      v5.value = SiriWellnessIntents_WellnessValue_protected;
      goto LABEL_28;
    case 12:
      v5.value = SiriWellnessIntents_WellnessValue_not_protected;
      goto LABEL_28;
  }

  return 13;
}

uint64_t WellnessValue.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sticky", 6uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("creamy", 6uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("watery", 6uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("egg_white", 9uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("light", 5uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heavy", 5uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("negative", 8uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("positive", 8uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("indeterminate", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("protected", 9uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("not_protected", 0xDuLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dry", 3uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type WellnessValue and conformance WellnessValue()
{
  v2 = lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue;
  if (!lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue;
  if (!lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessValue_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessValue@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessValue_optional *a2@<X8>)
{
  result.value = WellnessValue.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessValue@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessValue(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF3)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 12) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 243;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 13;
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

_BYTE *storeEnumTagSinglePayload for WellnessValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF3)
  {
    v5 = ((a3 + 12) >> 8) + 1;
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

  if (a2 > 0xF3)
  {
    v4 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
      *result = a2 + 12;
    }
  }

  return result;
}

uint64_t Statistics.init(queryDateRange:dataDateRange:sampleCount:unit:valueRange:latestValue:averageValue:totalValue:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a9;
  v60 = a1;
  v58 = a2;
  v36 = a3;
  v37 = a4;
  v55 = a5;
  v32 = a6;
  v33 = a7;
  v51 = a8;
  v50 = a10;
  v49 = a11;
  v61 = a12;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v75 = a12;
  v47 = *(a12 - 8);
  v48 = a12 - 8;
  v26 = (v47[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v43 = &v26 - v26;
  v29 = 0;
  v59 = type metadata accessor for DateInterval();
  v56 = *(v59 - 8);
  v57 = v59 - 8;
  v27 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v35 = &v26 - v27;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v34 = &v26 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v29);
  v40 = &v26 - v30;
  v31 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v54 = &v26 - v31;
  v74 = &v26 - v31;
  v63 = type metadata accessor for Statistics();
  v14 = (*(*(v63 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v54);
  v64 = &v26 - v16;
  v73 = &v26 - v16;
  v72 = v60;
  v71 = v58;
  v70 = v36;
  v68 = v17;
  v69 = v18;
  v45 = v47[4];
  v44 = v47 + 4;
  v45(v15);
  (v45)(v54 + *(TupleTypeMetadata2 + 48), v33, v61);
  v67 = v51;
  v66 = v50;
  v65 = v49;
  (*(v56 + 56))(v64, 1, 1, v59);
  outlined init with copy of DateInterval?(v60, v34);
  outlined assign with take of DateInterval?(v34, v64);
  (*(v56 + 16))(v35, v58, v59);
  (*(v56 + 32))(&v64[v63[7]], v35, v59);
  *&v64[v63[8]] = v36;

  v19 = v54;
  v20 = v40;
  v21 = v55;
  v22 = v61;
  v23 = TupleTypeMetadata2;
  v24 = &v64[v63[9]];
  *v24 = v37;
  *(v24 + 1) = v21;
  outlined init with copy of (minimum: A, maximum: A)(v19, v20, v22, v23);
  v39 = *(TupleTypeMetadata2 + 48);
  v38 = &v64[v63[10]];
  (v45)();
  (v45)(&v38[*(TupleTypeMetadata2 + 48)], &v40[v39], v61);
  v42 = v47[2];
  v41 = v47 + 2;
  v42(v43, v51, v61);
  (v45)(&v64[v63[11]], v43, v61);
  v42(v43, v50, v61);
  (v45)(&v64[v63[12]], v43, v61);
  v42(v43, v49, v61);
  (v45)(&v64[v63[13]], v43, v61);
  outlined init with copy of Statistics<A>(v64, v46, v61, TupleTypeMetadata2, v63);
  v53 = v47[1];
  v52 = v47 + 1;
  v53(v49, v61);
  v53(v50, v61);
  v53(v51, v61);
  outlined destroy of (minimum: A, maximum: A)(v54, v61, TupleTypeMetadata2);

  (*(v56 + 8))(v58, v59);
  outlined destroy of DateInterval?(v60);
  return outlined destroy of Statistics<A>(v64, v61, TupleTypeMetadata2, v63);
}

void *outlined assign with take of DateInterval?(const void *a1, void *a2)
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t outlined init with copy of (minimum: A, maximum: A)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 16);
  v8();
  (v8)(a2 + *(a4 + 48), a1 + *(a4 + 48), a3);
  return a2;
}

char *outlined init with copy of Statistics<A>(char *a1, char *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(a2, a1, v19);
    (*(v20 + 56))(a2, 0, 1, v19);
  }

  (*(v20 + 16))(&a2[a5[7]], &a1[a5[7]], v19);
  *&a2[a5[8]] = *&a1[a5[8]];
  v6 = a5[9];
  v9 = &a2[v6];
  *&a2[v6] = *&a1[v6];
  v10 = *&a1[v6 + 8];

  *(v9 + 1) = v10;
  v7 = a5[10];
  v11 = &a2[v7];
  v12 = &a1[v7];
  v13 = *(*(a3 - 8) + 16);
  v13();
  (v13)(&v11[*(a4 + 48)], &v12[*(a4 + 48)], a3);
  (v13)(&a2[a5[11]], &a1[a5[11]], a3);
  (v13)(&a2[a5[12]], &a1[a5[12]], a3);
  (v13)(&a2[a5[13]], &a1[a5[13]], a3);
  return a2;
}

uint64_t outlined destroy of (minimum: A, maximum: A)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(a1 + *(a3 + 48), a2);
  return a1;
}

uint64_t outlined destroy of Statistics<A>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(a1, 1))
  {
    (*(v13 + 8))(a1, v12);
  }

  (*(v13 + 8))(a1 + a4[7], v12);
  v4 = *(a1 + a4[9] + 8);

  v6 = a1 + a4[10];
  v7 = *(*(a2 - 8) + 8);
  v7();
  (v7)(v6 + *(a3 + 48), a2);
  (v7)(a1 + a4[11], a2);
  (v7)(a1 + a4[12], a2);
  (v7)(a1 + a4[13], a2);
  return a1;
}

uint64_t Statistics.queryDateRange.setter(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v4 = v3 - v3[0];
  outlined init with copy of DateInterval?(v1, v3 - v3[0]);
  outlined assign with take of DateInterval?(v4, v3[1]);
  return outlined destroy of DateInterval?(v5);
}

uint64_t Statistics.dataDateRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 28);
  v3 = type metadata accessor for DateInterval();
  return (*(*(v3 - 8) + 16))(a2, v2 + v5);
}

uint64_t Statistics.dataDateRange.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v7 = a2;
  v11 = type metadata accessor for DateInterval();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v3);
  (*(v9 + 40))(v2 + *(v7 + 28), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

__C::HKQueryOptions (__swiftcall *Statistics.dataDateRange.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 28);
  return result;
}

__C::HKQueryOptions (__swiftcall *Statistics.sampleCount.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t Statistics.unit.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v4 = *v2;
  v5 = v2[1];

  return v4;
}

uint64_t Statistics.unit.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(a3 + 36));
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
}

__C::HKQueryOptions (__swiftcall *Statistics.unit.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t Statistics.valueRange.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v18 = a2;
  v9 = a3;
  v15 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v9 - v10;
  outlined init with copy of (minimum: A, maximum: A)(v3 + *(v4 + 40), &v9 - v10, v5, v6);
  v13 = *(TupleTypeMetadata2 + 48);
  v7 = *(v15 - 8);
  v17 = *(v7 + 32);
  v16 = v7 + 32;
  v17(v12, v14);
  return (v17)(v18, &v14[v13], v15);
}

uint64_t Statistics.valueRange.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a1;
  v13 = a2;
  v16 = a3;
  v24 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = v10 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v26 = v10 - v12;
  v17 = *(v7 - 8);
  v18 = v7 - 8;
  v15 = *(v17 + 32);
  v14 = v17 + 32;
  v15(v6);
  (v15)(v26 + *(TupleTypeMetadata2 + 48), v13, v24);
  outlined init with copy of (minimum: A, maximum: A)(v26, v21, v24, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v8 = *(v16 + 40);
  v23 = *(v17 + 40);
  v22 = v17 + 40;
  v19 = v3 + v8;
  v23();
  (v23)(v19 + *(TupleTypeMetadata2 + 48), v21 + v20, v24);
  return outlined destroy of (minimum: A, maximum: A)(v26, v24, TupleTypeMetadata2);
}

__C::HKQueryOptions (__swiftcall *Statistics.valueRange.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t Statistics.latestValue.setter(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 44), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

__C::HKQueryOptions (__swiftcall *Statistics.latestValue.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t Statistics.averageValue.setter(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 48), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

__C::HKQueryOptions (__swiftcall *Statistics.averageValue.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t Statistics.totalValue.setter(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 52), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

__C::HKQueryOptions (__swiftcall *Statistics.totalValue.modify(uint64_t a1, uint64_t a2))(Swift::UInt rawValue)
{
  result = HKQueryOptions.init(rawValue:);
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t type metadata completion function for Statistics(uint64_t a1)
{
  TupleTypeMetadata2 = type metadata accessor for DateInterval?();
  if (v1 <= 0x3F)
  {
    TupleTypeMetadata2 = type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      v6 = *(a1 + 16);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        TupleTypeMetadata2 = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_269A52D88(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if (a2 == *(*(v12 - 8) + 84))
  {
    return (*(*(v12 - 8) + 48))(a1, a2, v12);
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    if (a2 == *(*(v7 - 8) + 84))
    {
      return (*(*(v7 - 8) + 48))(a1 + *(a3 + 28), a2, v7);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v6 = -1;
      if (*(a1 + *(a3 + 36) + 8) < 0x100000000uLL)
      {
        v6 = *(a1 + *(a3 + 36) + 8);
      }

      return (v6 + 1);
    }

    else
    {
      v13 = *(a3 + 16);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      if (a2 == *(*(TupleTypeMetadata2 - 8) + 84))
      {
        return (*(*(TupleTypeMetadata2 - 8) + 48))(a1 + *(a3 + 40), a2, TupleTypeMetadata2);
      }

      else
      {
        v4 = *(a3 + 16);
        if (a2 == *(*(v4 - 8) + 84))
        {
          return (*(*(v4 - 8) + 48))(a1 + *(a3 + 44), a2, v4);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return v8;
}

uint64_t sub_269A530C4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  result = type metadata accessor for DateInterval();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 28), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = a2 - 1;
  }

  else
  {
    v11 = *(a4 + 16);
    result = swift_getTupleTypeMetadata2();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 40), a2, a2, result);
    }

    else
    {
      v5 = *(a4 + 16);
      if (a3 == *(*(v5 - 8) + 84))
      {
        return (*(*(v5 - 8) + 56))(a1 + *(a4 + 44), a2, a2, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for DateInterval?()
{
  v4 = lazy cache variable for type metadata for DateInterval?;
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for DateInterval?);
      return v1;
    }
  }

  return v4;
}

BOOL static InferedMeasurement.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type InferedMeasurement and conformance InferedMeasurement()
{
  v2 = lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement;
  if (!lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement;
  if (!lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::InferedMeasurement __swiftcall getMeasurementType(for:)(Swift::String_optional a1)
{
  object = a1.value._object;

  if (!object)
  {
    return 3;
  }

  type metadata accessor for HKUnit();

  v7 = @nonobjc HKUnit.__allocating_init(from:)();
  v8 = [objc_opt_self() meterUnit];
  v9 = [v7 _isCompatibleWithUnit_];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    MEMORY[0x277D82BD8](v7);

    return 1;
  }

  else
  {
    v4 = [objc_opt_self() gramUnit];
    v5 = [v7 _isCompatibleWithUnit_];
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      MEMORY[0x277D82BD8](v7);

      return 0;
    }

    else
    {
      v2 = [objc_opt_self() smallCalorieUnit];
      v3 = [v7 _isCompatibleWithUnit_];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v7);

      if (v3)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InferedMeasurement(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
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

_BYTE *storeEnumTagSinglePayload for InferedMeasurement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
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

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t UnavailableDataProvider.init(failure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = a3;

  v6 = a1;
  v7 = a2;

  outlined destroy of UnavailableDataProvider<A>(&v6);
  return a1;
}

uint64_t outlined destroy of UnavailableDataProvider<A>(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t UnavailableDataProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v5[8] = a4;
  v5[7] = a1;
  v5[4] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = a2;
  v5[6] = a3;
  v5[2] = a4;
  v5[3] = a5;
  v6 = v5[4];
  return MEMORY[0x2822009F8](UnavailableDataProvider.query(start:end:), 0);
}

uint64_t UnavailableDataProvider.query(start:end:)()
{
  v7 = v0[9];
  v6 = v0[8];
  v5 = v0[7];
  v0[4] = v0;

  v6(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[4];

  return v2();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance UnavailableDataProvider<A>(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v9 = *v1;
  v8 = v1[1];
  v3 = swift_task_alloc();
  *(v7 + 24) = v3;
  v4 = *(a1 + 16);
  *v3 = *(v7 + 16);
  v3[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return UnavailableDataProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance UnavailableDataProvider<A>(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v9 = *v1;
  v8 = v1[1];
  v3 = swift_task_alloc();
  *(v7 + 24) = v3;
  v4 = *(a1 + 16);
  *v3 = *(v7 + 16);
  v3[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return UnavailableDataProvider.isLoggingAuthorized()();
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  type metadata accessor for GetAmbiguousDistanceIntentResponse();
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>;

  return UnavailableDataProvider.query(start:end:)(v6 + 24, a1, a2, v8, v9);
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>()
{
  v5 = *v0;
  v6 = *v0;
  v1 = *(*v0 + 32);
  *(v6 + 16) = *v0;

  v2 = *(v5 + 24);
  v3 = *(*(v6 + 16) + 8);

  return v3(v2);
}

uint64_t protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  type metadata accessor for GetBloodPressureIntentResponse();
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>;

  return UnavailableDataProvider.query(start:end:)(v6 + 24, a1, a2, v8, v9);
}

uint64_t type metadata instantiation function for UnavailableDataProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CardioFitnessLevel.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CardioFitnessLevel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CardioFitnessLevel.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CardioFitnessLevel(void *a1@<X8>)
{
  v2 = *v1;
  CardioFitnessLevel.rawValue.getter();
  *a1 = v3;
}

id static CardioFitnessLevelResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  CardioFitnessLevel.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue_];

  return v1;
}

id static CardioFitnessLevelResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  CardioFitnessLevel.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm_];

  return v1;
}

id CardioFitnessLevelResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id CardioFitnessLevelResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for CardioFitnessLevelResolutionResult();
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

id CardioFitnessLevelResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessLevelResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type CardioFitnessLevel and conformance CardioFitnessLevel()
{
  v2 = lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel;
  if (!lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel;
  if (!lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel);
    return WitnessTable;
  }

  return v2;
}

id GetCardioFitnessIntentHandler.init(store:)(uint64_t *a1)
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
    __dst[3] = &type metadata for CardioFitnessFetcher;
    __dst[4] = &protocol witness table for CardioFitnessFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29GetCardioFitnessIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t GetCardioFitnessIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[23] = v1;
  v2[22] = a1;
  v2[15] = v2;
  v2[16] = 0;
  v2[17] = 0;
  v3 = type metadata accessor for Logger();
  v2[24] = v3;
  v8 = *(v3 - 8);
  v2[25] = v8;
  v4 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[29] = v5;
  v10 = *(v5 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[16] = a1;
  v2[17] = v1;
  v6 = v2[15];

  return MEMORY[0x2822009F8](GetCardioFitnessIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 280);
  *(v6 + 120) = *v1;
  *(v6 + 288) = a1;

  v4 = *(v6 + 120);

  return MEMORY[0x2822009F8](GetCardioFitnessIntentHandler.handle(intent:), 0);
}

uint64_t GetCardioFitnessIntentHandler.handle(intent:)()
{
  v1 = v0[23];
  v0[15] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents29GetCardioFitnessIntentHandler_store, (v0 + 2));
  v8 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = *(*(v6 + 8) + 4);
  v3 = swift_task_alloc();
  *(v5 + 272) = v3;
  *v3 = *(v5 + 120);
  v3[1] = GetCardioFitnessIntentHandler.handle(intent:);

  return v7(v8, v6);
}

{
  v53 = *(v0 + 296);
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v53 & 1) == 0)
  {
    type metadata accessor for GetCardioFitnessIntentResponse();
    v51 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(101, 0);
LABEL_19:
    v9 = *(v52 + 264);
    v12 = *(v52 + 256);
    v13 = *(v52 + 248);
    v14 = *(v52 + 224);
    v15 = *(v52 + 216);
    v16 = *(v52 + 208);

    v10 = *(*(v52 + 120) + 8);
    v11 = *(v52 + 120);

    return v10(v51);
  }

  v50 = [*(v52 + 176) startDate];
  if (v50)
  {
    v47 = *(v52 + 256);
    v48 = *(v52 + 232);
    v49 = *(v52 + 224);
    v46 = *(v52 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v46 + 32))(v49, v47, v48);
    (*(v46 + 56))(v49, 0, 1, v48);
    MEMORY[0x277D82BD8](v50);
  }

  else
  {
    (*(*(v52 + 240) + 56))(*(v52 + 224), 1, 1, *(v52 + 232));
  }

  v1 = (*(v52 + 240) + 48);
  v45 = *v1;
  if ((*v1)(*(v52 + 224), 1, *(v52 + 232)) == 1)
  {
    outlined destroy of Date?(*(v52 + 224));
LABEL_16:
    v8 = *(v52 + 208);
    v27 = *(v52 + 192);
    v25 = *(v52 + 200);
    v26 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v25 + 16))(v8, v26, v27);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v28))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(0);
      v23 = createStorage<A>(capacity:type:)(0);
      *(v52 + 144) = buf;
      *(v52 + 152) = v22;
      *(v52 + 160) = v23;
      serialize(_:at:)(0, (v52 + 144));
      serialize(_:at:)(0, (v52 + 144));
      *(v52 + 168) = v30;
      v24 = swift_task_alloc();
      v24[2] = v52 + 144;
      v24[3] = v52 + 152;
      v24[4] = v52 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v28, "Must provide start and end dates for GetCardioFitnessIntent", buf, 2u);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v18 = *(v52 + 208);
    v19 = *(v52 + 192);
    v17 = *(v52 + 200);
    MEMORY[0x277D82BD8](oslog);
    (*(v17 + 8))(v18, v19);
    type metadata accessor for GetCardioFitnessIntentResponse();
    v51 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_19;
  }

  v43 = *(v52 + 176);
  v2 = (*(v52 + 240) + 32);
  v42 = *v2;
  (*v2)(*(v52 + 264), *(v52 + 224), *(v52 + 232));
  v44 = [v43 endDate];
  if (v44)
  {
    v38 = *(v52 + 256);
    v40 = *(v52 + 232);
    v41 = *(v52 + 216);
    v39 = *(v52 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v42(v41, v38, v40);
    (*(v39 + 56))(v41, 0, 1, v40);
    MEMORY[0x277D82BD8](v44);
  }

  else
  {
    (*(*(v52 + 240) + 56))(*(v52 + 216), 1, 1, *(v52 + 232));
  }

  if (v45(*(v52 + 216), 1, *(v52 + 232)) == 1)
  {
    v37 = *(v52 + 264);
    v36 = *(v52 + 232);
    v35 = *(v52 + 240);
    outlined destroy of Date?(*(v52 + 216));
    (*(v35 + 8))(v37, v36);
    goto LABEL_16;
  }

  v31 = *(v52 + 184);
  v42(*(v52 + 248), *(v52 + 216), *(v52 + 232));
  outlined init with copy of QuantityPersisting(v31 + OBJC_IVAR____TtC19SiriWellnessIntents29GetCardioFitnessIntentHandler_store, v52 + 56);
  v32 = *(v52 + 80);
  v33 = *(v52 + 88);
  __swift_project_boxed_opaque_existential_1((v52 + 56), v32);
  v34 = (*(v33 + 16) + **(v33 + 16));
  v3 = *(*(v33 + 16) + 4);
  v4 = swift_task_alloc();
  *(v52 + 280) = v4;
  *v4 = *(v52 + 120);
  v4[1] = GetCardioFitnessIntentHandler.handle(intent:);
  v5 = *(v52 + 264);
  v6 = *(v52 + 248);

  return v34(v5, v6, v32, v33);
}

{
  v7 = v0[33];
  v6 = v0[31];
  v5 = v0[30];
  v8 = v0[29];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v9 = *(v5 + 8);
  v9(v6, v8);
  v9(v7, v8);
  v15 = v0[36];
  v1 = v0[33];
  v10 = v0[32];
  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[27];
  v14 = v0[26];

  v2 = *(v0[15] + 8);
  v3 = v0[15];

  return v2(v15);
}

uint64_t GetCardioFitnessIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 272);
  *(v6 + 120) = *v1;
  *(v6 + 296) = a1;

  v4 = *(v6 + 120);

  return MEMORY[0x2822009F8](GetCardioFitnessIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetCardioFitnessIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return GetCardioFitnessIntentHandler.handle(intent:)(a1);
}

id GetCardioFitnessIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CardioFitnessFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a3;
  v3[16] = a2;
  v3[15] = a1;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[13] = 0;
  v4 = type metadata accessor for Logger();
  v3[18] = v4;
  v8 = *(v4 - 8);
  v3[19] = v8;
  v5 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  v6 = v3[5];

  return MEMORY[0x2822009F8](CardioFitnessFetcher.query(start:end:), 0);
}

uint64_t CardioFitnessFetcher.query(start:end:)()
{
  *(v0 + 40) = v0;
  v30 = objc_opt_self();
  v31 = *MEMORY[0x277CCCC98];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC98]);
  v32 = [v30 quantityTypeForIdentifier_];
  *(v0 + 168) = v32;
  MEMORY[0x277D82BD8](v31);
  if (v32)
  {
    v25 = *(v29 + 136);
    v27 = *(v29 + 128);
    v26 = *(v29 + 120);
    *(v29 + 104) = v32;
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(start:end:)", 0x11uLL, 1);
    *(v29 + 176) = v1._object;
    MEMORY[0x277D82BE0](v25);
    MEMORY[0x277D82BE0](v32);
    v28 = swift_task_alloc();
    *(v29 + 184) = v28;
    v28[2] = v25;
    v28[3] = v26;
    v28[4] = v27;
    v28[5] = v32;
    v2 = *(MEMORY[0x277D859E0] + 4);
    v3 = swift_task_alloc();
    *(v29 + 192) = v3;
    CardioFitnessIntentResponse = type metadata accessor for GetCardioFitnessIntentResponse();
    *v3 = *(v29 + 40);
    v3[1] = CardioFitnessFetcher.query(start:end:);

    return MEMORY[0x2822007B8](v29 + 112, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in CardioFitnessFetcher.query(start:end:), v28, CardioFitnessIntentResponse);
  }

  else
  {
    v5 = *(v29 + 160);
    v21 = *(v29 + 144);
    v19 = *(v29 + 152);
    v20 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v19 + 16))(v5, v20, v21);
    swift_endAccess();
    v23 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v24 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v23, v22))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v16 = createStorage<A>(capacity:type:)(0);
      v17 = createStorage<A>(capacity:type:)(0);
      *(v29 + 72) = buf;
      *(v29 + 80) = v16;
      *(v29 + 88) = v17;
      serialize(_:at:)(0, (v29 + 72));
      serialize(_:at:)(0, (v29 + 72));
      *(v29 + 96) = v24;
      v18 = swift_task_alloc();
      v18[2] = v29 + 72;
      v18[3] = v29 + 80;
      v18[4] = v29 + 88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v23, v22, "Couldn't create HKQuantityType for vo2max.", buf, 2u);
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v29 + 160);
    v12 = *(v29 + 144);
    v10 = *(v29 + 152);
    MEMORY[0x277D82BD8](v23);
    (*(v10 + 8))(v11, v12);
    type metadata accessor for GetCardioFitnessIntentResponse();
    v13 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    v6 = *(v29 + 160);

    v7 = *(*(v29 + 40) + 8);
    v8 = *(v29 + 40);

    return v7(v13);
  }
}

{
  v8 = *v0;
  v1 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v7 = *(*v0 + 176);
  v6 = *(*v0 + 168);
  v5 = *(*v0 + 136);
  *(v8 + 40) = *v0;

  v2 = *(v8 + 40);

  return MEMORY[0x2822009F8](CardioFitnessFetcher.query(start:end:), 0);
}

{
  v1 = v0[21];
  v0[5] = v0;
  v6 = v0[14];
  MEMORY[0x277D82BD8](v1);
  v2 = v0[20];

  v3 = *(v0[5] + 8);
  v4 = v0[5];

  return v3(v6);
}

uint64_t closure #1 in CardioFitnessFetcher.query(start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a1;
  v89 = a2;
  v64 = a3;
  v43 = a4;
  v86 = a5;
  v84 = partial apply for closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:);
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v96 = 0;
  v59 = 0;
  v80 = type metadata accessor for Date();
  v76 = *(v80 - 8);
  v77 = v80 - 8;
  v69 = v76;
  v70 = *(v76 + 64);
  v33 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v79 = &v32 - v33;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
  v71 = *(v75 - 8);
  v72 = v75 - 8;
  v67 = v71;
  v68 = *(v71 + 64);
  v34 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v74 = &v32 - v34;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v35 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v55 = &v32 - v35;
  v36 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v54 = &v32 - v36;
  v94 = type metadata accessor for DateComponents();
  v91 = *(v94 - 8);
  v92 = v94 - 8;
  v37 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v93 = &v32 - v37;
  v104 = &v32 - v37;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v46 = &v32 - v38;
  v39 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v32 - v38);
  v47 = &v32 - v39;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v41 = *(*(v58 - 8) + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v88 = &v32 - v40;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v95 = &v32 - v42;
  v103 = &v32 - v42;
  v102 = v10;
  v101 = a2;
  v100 = v11;
  v99 = v12;
  v98 = v13;
  v48 = v14[12];
  v51 = v14[16];
  v52 = v14[20];
  MEMORY[0x277D82BE0](a2);
  v66 = *(v76 + 16);
  v65 = v76 + 16;
  v66(v47, v64, v80);
  v45 = *(v76 + 56);
  v44 = v76 + 56;
  v57 = 0;
  v56 = 1;
  v45(v47);
  v66(v46, v43, v80);
  (v45)(v46, v57, v56, v80);
  v49 = HKHealthStore.queryParameters(start:end:)(v95, v47, v46);
  v50 = v15;
  v53 = v16;
  outlined destroy of Date?(v46);
  outlined destroy of Date?(v47);
  MEMORY[0x277D82BD8](v89);
  v17 = v50;
  v18 = v51;
  v19 = v52;
  v20 = v53;
  v21 = v95;
  *&v95[v48] = v49;
  *&v21[v18] = v17;
  *&v21[v19] = v20;
  v22 = type metadata accessor for Calendar();
  (*(*(v22 - 8) + 56))(v54, v56);
  v23 = type metadata accessor for TimeZone();
  (*(*(v23 - 8) + 56))(v55, v56);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v60 = 1;
  DateComponents.day.setter();
  v62 = type metadata accessor for HKStatisticsQuery();
  MEMORY[0x277D82BE0](v86);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v95, v88);
  v82 = *&v88[*(v58 + 48)];
  v87 = *&v88[*(v58 + 64)];
  type metadata accessor for HKStatisticsOptions();
  v24 = _allocateUninitializedArray<A>(_:)();
  *v25 = 2;
  _finalizeUninitializedArray<A>(_:)();
  v61 = v24;
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v83 = v97;
  (*(v71 + 16))(v74, v63, v75);
  v66(v79, v64, v80);
  MEMORY[0x277D82BE0](v89);
  v73 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v78 = (v73 + v68 + *(v69 + 80)) & ~*(v69 + 80);
  v81 = (v78 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  (*(v71 + 32))(v85 + v73, v74, v75);
  (*(v76 + 32))(v85 + v78, v79, v80);
  v26 = v82;
  v27 = v83;
  v28 = v84;
  v29 = v85;
  v30 = v86;
  *(v85 + v81) = v89;
  v90 = HKStatisticsQuery.__allocating_init(quantityType:quantitySamplePredicate:options:completionHandler:)(v30, v26, v27, v28, v29);

  outlined destroy of DateInterval?(v88);
  v96 = v90;
  MEMORY[0x277D82BE0](v89);
  [v89 executeQuery_];
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  (*(v91 + 8))(v93, v94);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v95);
}

uint64_t closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v222 = a6;
  v221 = a5;
  v220 = a4;
  v233 = a3;
  v223 = a2;
  v219 = a1;
  v214 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v213 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v255 = 0.0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v243 = 0;
  v215 = type metadata accessor for Date();
  v216 = *(v215 - 8);
  v217 = v216;
  v6 = *(v216 + 64);
  MEMORY[0x28223BE20](0);
  v218 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for Logger();
  v225 = *(v224 - 8);
  v226 = v225;
  v229 = *(v225 + 64);
  MEMORY[0x28223BE20](v233);
  v231 = (v229 + 15) & 0xFFFFFFFFFFFFFFF0;
  v227 = &v56 - v231;
  MEMORY[0x28223BE20](v8);
  v228 = &v56 - v231;
  MEMORY[0x28223BE20](v9);
  v230 = &v56 - v231;
  MEMORY[0x28223BE20](v10);
  v232 = &v56 - v231;
  v276 = v11;
  v275 = v12;
  v274 = v13;
  v273 = v14;
  v272 = v15;
  v271 = v16;
  v17 = v13;
  if (v233)
  {
    v212 = v233;
    v235 = v233;
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for related decl 'e' for HKErrorCode();
    if (swift_dynamicCast())
    {
      v209 = v234;
    }

    else
    {
      v209 = 0;
    }

    v211 = v209;
  }

  else
  {
    v211 = 0;
  }

  v208 = v211;
  if (v211)
  {
    v207 = v208;
    v204 = v208;
    v243 = v208;
    v242[4] = v208;
    v205 = type metadata accessor for related decl 'e' for HKErrorCode();
    lazy protocol witness table accessor for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode();
    _BridgedStoredNSError.code.getter();
    if (v242[3] == 6)
    {
      v202 = 0;
      type metadata accessor for GetCardioFitnessIntentResponse();
      v236 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(103, v202);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v213;
    }

    else
    {
      v20 = v232;
      v182 = Logger.wellnessIntents.unsafeMutableAddressor();
      v189 = 32;
      v183 = v242;
      swift_beginAccess();
      (*(v226 + 16))(v20, v182, v224);
      swift_endAccess();
      v21 = v204;
      v190 = 7;
      v191 = swift_allocObject();
      *(v191 + 16) = v204;
      v201 = Logger.logObject.getter();
      v184 = v201;
      v200 = static os_log_type_t.error.getter();
      v185 = v200;
      v186 = 17;
      v194 = swift_allocObject();
      v187 = v194;
      *(v194 + 16) = 64;
      v195 = swift_allocObject();
      v188 = v195;
      *(v195 + 16) = 8;
      v22 = swift_allocObject();
      v23 = v191;
      v192 = v22;
      *(v22 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:);
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v192;
      v198 = v24;
      v193 = v24;
      *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v24 + 24) = v25;
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v196 = _allocateUninitializedArray<A>(_:)();
      v197 = v26;

      v27 = v194;
      v28 = v197;
      *v197 = partial apply for closure #1 in OSLogArguments.append(_:);
      v28[1] = v27;

      v29 = v195;
      v30 = v197;
      v197[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v30[3] = v29;

      v31 = v197;
      v32 = v198;
      v197[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v31[5] = v32;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v201, v200))
      {
        v33 = v213;
        v175 = static UnsafeMutablePointer.allocate(capacity:)();
        v172 = v175;
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v178 = 1;
        v176 = createStorage<A>(capacity:type:)(1);
        v174 = v176;
        v177 = createStorage<A>(capacity:type:)(0);
        v241[0] = v175;
        v240 = v176;
        v239 = v177;
        v179 = v241;
        serialize(_:at:)(2, v241);
        serialize(_:at:)(v178, v179);
        v237 = partial apply for closure #1 in OSLogArguments.append(_:);
        v238 = v187;
        closure #1 in osLogInternal(_:log:type:)(&v237, v179, &v240, &v239);
        v180 = v33;
        v181 = v33;
        if (v33)
        {
          v170 = 0;

          __break(1u);
        }

        else
        {
          v237 = partial apply for closure #1 in OSLogArguments.append(_:);
          v238 = v188;
          closure #1 in osLogInternal(_:log:type:)(&v237, v241, &v240, &v239);
          v168 = 0;
          v169 = 0;
          v237 = partial apply for closure #1 in OSLogArguments.append(_:);
          v238 = v193;
          closure #1 in osLogInternal(_:log:type:)(&v237, v241, &v240, &v239);
          v166 = 0;
          v167 = 0;
          _os_log_impl(&dword_269912000, v184, v185, "Error while querying HealthKit for quantity samples: %@", v172, 0xCu);
          destroyStorage<A>(_:count:)(v174, 1, v173);
          destroyStorage<A>(_:count:)(v177, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v172, MEMORY[0x277D84B78]);

          v171 = v166;
        }
      }

      else
      {
        v34 = v213;

        v171 = v34;
      }

      v165 = v171;

      (*(v226 + 8))(v232, v224);
      v164 = 0;
      type metadata accessor for GetCardioFitnessIntentResponse();
      v241[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v164);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v165;
    }
  }

  else
  {
    v19 = v223;
    if (v223)
    {
      v206 = v223;
      v154 = v223;
      v265 = v223;
      v145 = 0x277CCD000uLL;
      v150 = [objc_opt_self() minuteUnit];
      v144 = v150;
      v264 = v150;
      v36 = *(v145 + 2736);
      v147 = [objc_opt_self() gramUnitWithMetricPrefix_];
      v146 = v147;
      v263 = v147;
      v37 = *(v145 + 2736);
      v148 = [objc_opt_self() literUnitWithMetricPrefix_];
      v262 = v148;
      v149 = 0x1FBD9E000uLL;
      v151 = [v148 0x1FBD9EE9CLL];
      v153 = [v151 (v149 + 3740)];
      v152 = v153;

      v261 = v153;
      v38 = [v154 averageQuantity];
      v155 = v38;
      if (v38)
      {
        v143 = v155;
        v139 = v155;
        [v155 doubleValueForUnit_];
        v140 = v39;

        v141 = v140;
        v142 = 0;
      }

      else
      {
        v141 = 0.0;
        v142 = 1;
      }

      v138 = v141;
      if (v142)
      {
        v40 = v228;
        v129 = Logger.wellnessIntents.unsafeMutableAddressor();
        v130 = &v260;
        v133 = 0;
        swift_beginAccess();
        (*(v226 + 16))(v40, v129, v224);
        swift_endAccess();
        v135 = Logger.logObject.getter();
        v131 = v135;
        v134 = static os_log_type_t.error.getter();
        v132 = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v136 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v135, v134))
        {
          v51 = v213;
          v82 = static UnsafeMutablePointer.allocate(capacity:)();
          v78 = v82;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v80 = 0;
          v83 = createStorage<A>(capacity:type:)(0);
          v81 = v83;
          v84 = createStorage<A>(capacity:type:)(v80);
          v259[0] = v82;
          v258 = v83;
          v257 = v84;
          v85 = 0;
          v86 = v259;
          serialize(_:at:)(0, v259);
          serialize(_:at:)(v85, v86);
          v256 = v136;
          v87 = &v56;
          MEMORY[0x28223BE20](&v56);
          v88 = &v56 - 6;
          *(&v56 - 4) = v52;
          *(&v56 - 3) = &v258;
          *(&v56 - 2) = &v257;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v90 = v51;
          if (v51)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v131, v132, "Unable to create an average value for vo2Max", v78, 2u);
            v76 = 0;
            destroyStorage<A>(_:count:)(v81, 0, v79);
            destroyStorage<A>(_:count:)(v84, v76, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v78, MEMORY[0x277D84B78]);

            v77 = v90;
          }
        }

        else
        {

          v77 = v213;
        }

        v75 = v77;

        (*(v226 + 8))(v228, v224);
        v74 = 0;
        type metadata accessor for GetCardioFitnessIntentResponse();
        v259[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
        CheckedContinuation.resume(returning:)();

        return v75;
      }

      else
      {
        v137 = v138;
        v41 = v218;
        v124 = v138;
        v255 = v138;
        v125 = objc_opt_self();
        (*(v217 + 16))(v41, v221, v215);
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v217 + 8))(v218, v215);
        v42 = v222;
        v128 = [v125 cardioFitnessPropertiesForDate:isa healthStore:v222];
        v126 = v128;

        if (v128)
        {
          v123 = v126;
          v109 = v126;
          v249 = v126;
          v111 = objc_opt_self();
          v110 = [v109 biologicalSex];
          v44 = [v109 age];
          v113 = [v111 cardioFitnessLevelForVO2Max:v110 biologicalSex:v44 age:v124];
          v248 = v113;
          v112 = 0;
          type metadata accessor for GetCardioFitnessIntentResponse();
          v114 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(4, v112);
          v247 = v114;
          HKMedicationDoseEventStatus.rawValue.getter();
          v46 = CardioFitnessLevel.init(rawValue:)(v45);
          v245 = v46;
          v246 = v47 & 1;
          if (v47)
          {
            v108 = 0;
          }

          else
          {
            v108 = v245;
          }

          [v114 setCardioFitnessLevel_];
          v48 = v114;
          v244 = v114;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
          CheckedContinuation.resume(returning:)();

          return v213;
        }

        else
        {
          v43 = v227;
          v115 = Logger.wellnessIntents.unsafeMutableAddressor();
          v116 = &v254;
          v119 = 0;
          swift_beginAccess();
          (*(v226 + 16))(v43, v115, v224);
          swift_endAccess();
          v121 = Logger.logObject.getter();
          v117 = v121;
          v120 = static os_log_type_t.error.getter();
          v118 = v120;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v122 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v121, v120))
          {
            v49 = v213;
            v99 = static UnsafeMutablePointer.allocate(capacity:)();
            v95 = v99;
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v97 = 0;
            v100 = createStorage<A>(capacity:type:)(0);
            v98 = v100;
            v101 = createStorage<A>(capacity:type:)(v97);
            v253[0] = v99;
            v252 = v100;
            v251 = v101;
            v102 = 0;
            v103 = v253;
            serialize(_:at:)(0, v253);
            serialize(_:at:)(v102, v103);
            v250 = v122;
            v104 = &v56;
            MEMORY[0x28223BE20](&v56);
            v105 = &v56 - 6;
            *(&v56 - 4) = v50;
            *(&v56 - 3) = &v252;
            *(&v56 - 2) = &v251;
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v107 = v49;
            if (v49)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_269912000, v117, v118, "Unable to find the fitness Level", v95, 2u);
              v93 = 0;
              destroyStorage<A>(_:count:)(v98, 0, v96);
              destroyStorage<A>(_:count:)(v101, v93, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D6497C0](v95, MEMORY[0x277D84B78]);

              v94 = v107;
            }
          }

          else
          {

            v94 = v213;
          }

          v92 = v94;

          (*(v226 + 8))(v227, v224);
          v91 = 0;
          type metadata accessor for GetCardioFitnessIntentResponse();
          v253[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v91);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
          CheckedContinuation.resume(returning:)();

          return v92;
        }
      }
    }

    else
    {
      v35 = v230;
      v156 = Logger.wellnessIntents.unsafeMutableAddressor();
      v157 = &v270;
      v160 = 0;
      swift_beginAccess();
      (*(v226 + 16))(v35, v156, v224);
      swift_endAccess();
      v162 = Logger.logObject.getter();
      v158 = v162;
      v161 = static os_log_type_t.error.getter();
      v159 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v163 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v162, v161))
      {
        v53 = v213;
        v65 = static UnsafeMutablePointer.allocate(capacity:)();
        v61 = v65;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v63 = 0;
        v66 = createStorage<A>(capacity:type:)(0);
        v64 = v66;
        v67 = createStorage<A>(capacity:type:)(v63);
        v269[0] = v65;
        v268 = v66;
        v267 = v67;
        v68 = 0;
        v69 = v269;
        serialize(_:at:)(0, v269);
        serialize(_:at:)(v68, v69);
        v266 = v163;
        v70 = &v56;
        MEMORY[0x28223BE20](&v56);
        v71 = &v56 - 6;
        *(&v56 - 4) = v54;
        *(&v56 - 3) = &v268;
        *(&v56 - 2) = &v267;
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v73 = v53;
        if (v53)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v158, v159, "Expecting to find statistics but didn't find them", v61, 2u);
          v59 = 0;
          destroyStorage<A>(_:count:)(v64, 0, v62);
          destroyStorage<A>(_:count:)(v67, v59, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v61, MEMORY[0x277D84B78]);

          v60 = v73;
        }
      }

      else
      {

        v60 = v213;
      }

      v58 = v60;

      (*(v226 + 8))(v230, v224);
      v57 = 0;
      type metadata accessor for GetCardioFitnessIntentResponse();
      v269[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();
      return v58;
    }
  }
}

uint64_t implicit closure #1 in closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  v3 = _convertErrorToNSError(_:)();

  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t CardioFitnessFetcher.preferredUnit()(uint64_t a1)
{
  v1[32] = a1;
  v1[24] = v1;
  v1[25] = 0;
  v1[26] = 0;
  v1[28] = 0;
  v1[29] = 0;
  v2 = type metadata accessor for Logger();
  v1[33] = v2;
  v5 = *(v2 - 8);
  v1[34] = v5;
  v6 = *(v5 + 64);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[25] = a1;
  v3 = v1[24];

  return MEMORY[0x2822009F8](CardioFitnessFetcher.preferredUnit(), 0);
}

uint64_t CardioFitnessFetcher.preferredUnit()()
{
  v42 = v0;
  *(v0 + 192) = v0;
  v34 = objc_opt_self();
  v35 = *MEMORY[0x277CCCC98];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC98]);
  v36 = [v34 quantityTypeForIdentifier_];
  *(v0 + 296) = v36;
  MEMORY[0x277D82BD8](v35);
  if (v36)
  {
    v1 = *(v33 + 288);
    v24 = *(v33 + 264);
    v22 = *(v33 + 272);
    *(v33 + 208) = v36;
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v2 = *(v22 + 16);
    *(v33 + 304) = v2;
    *(v33 + 312) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v2(v1, v23, v24);
    swift_endAccess();
    MEMORY[0x277D82BE0](v36);
    v25 = swift_allocObject();
    *(v25 + 16) = v36;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = 64;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v26 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v29 + 24) = v26;
    *(v33 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v30 = v3;

    *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[1] = v27;

    v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v28;

    v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v31, v32))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v20 = createStorage<A>(capacity:type:)(1);
      v21 = createStorage<A>(capacity:type:)(0);
      v37 = buf;
      v38 = v20;
      v39 = v21;
      serialize(_:at:)(2, &v37);
      serialize(_:at:)(1, &v37);
      v40 = partial apply for closure #1 in OSLogArguments.append(_:);
      v41 = v27;
      closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
      v40 = partial apply for closure #1 in OSLogArguments.append(_:);
      v41 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
      v40 = partial apply for closure #1 in OSLogArguments.append(_:);
      v41 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
      _os_log_impl(&dword_269912000, v31, v32, "Looking for preferred units for %@", buf, 0xCu);
      destroyStorage<A>(_:count:)(v20, 1, v18);
      destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v12 = *(v33 + 288);
    v13 = *(v33 + 264);
    v17 = *(v33 + 256);
    v11 = *(v33 + 272);
    MEMORY[0x277D82BD8](v31);
    v4 = *(v11 + 8);
    *(v33 + 328) = v4;
    *(v33 + 336) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v12, v13);
    MEMORY[0x277D82BE0](v17);
    *(v33 + 344) = type metadata accessor for HKQuantityType();
    _allocateUninitializedArray<A>(_:)();
    v14 = v5;
    MEMORY[0x277D82BE0](v36);
    *v14 = v36;
    _finalizeUninitializedArray<A>(_:)();
    *(v33 + 352) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    Set.init(arrayLiteral:)();
    isa = Set._bridgeToObjectiveC()().super.isa;
    *(v33 + 360) = isa;

    *(v33 + 16) = *(v33 + 192);
    *(v33 + 56) = v33 + 216;
    *(v33 + 24) = CardioFitnessFetcher.preferredUnit();
    v15 = swift_continuation_init();
    *(v33 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
    *(v33 + 112) = v15;
    *(v33 + 80) = MEMORY[0x277D85DD0];
    *(v33 + 88) = 1107296256;
    *(v33 + 92) = 0;
    *(v33 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
    *(v33 + 104) = &block_descriptor_13;
    [v17 preferredUnitsForQuantityTypes:isa completion:?];

    return MEMORY[0x282200938](v33 + 16);
  }

  else
  {
    v6 = *(v33 + 288);
    v10 = *(v33 + 280);

    v7 = *(*(v33 + 192) + 8);
    v8 = *(v33 + 192);

    return v7(0);
  }
}

{
  v6 = *v0;
  v6[24] = *v0;
  v7 = v6 + 24;
  v1 = v6[6];
  v6[46] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = CardioFitnessFetcher.preferredUnit();
  }

  else
  {
    v2 = *v7;
    v3 = CardioFitnessFetcher.preferredUnit();
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v7 = v0[45];
  v9 = v0[44];
  v8 = v0[43];
  v11 = v0[37];
  v1 = v0[32];
  v0[24] = v0;
  v10 = v0[27];
  v0[29] = v10;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v11);
  v0[31] = v11;
  v2 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v0 + 31, v10, v8, v2, v9);
  MEMORY[0x277D82BD8](v0[31]);
  v13 = v0[30];

  MEMORY[0x277D82BD8](v11);
  v3 = v0[36];
  v12 = v0[35];

  v4 = *(v0[24] + 8);
  v5 = v0[24];

  return v4(v13);
}

{
  v42 = v0;
  v1 = v0[46];
  v23 = v0[45];
  v34 = v0[40];
  v26 = v0[39];
  v27 = v0[38];
  v21 = v0[35];
  v25 = v0[33];
  v22 = v0[32];
  v0[24] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v2 = v1;
  v0[28] = v1;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v27(v21, v24, v25);
  swift_endAccess();
  v3 = v1;
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v29;
  _allocateUninitializedArray<A>(_:)();
  v33 = v4;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v30;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v31;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0);
    v19 = createStorage<A>(capacity:type:)(1);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_269912000, v35, v36, "Error fetching preferred units: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v20[46];
  v11 = v20[42];
  v12 = v20[41];
  v9 = v20[35];
  v10 = v20[33];
  v14 = v20[37];
  MEMORY[0x277D82BD8](v35);
  v12(v9, v10);

  MEMORY[0x277D82BD8](v14);
  v5 = v20[36];
  v15 = v20[35];

  v6 = *(v20[24] + 8);
  v7 = v20[24];

  return v6(0);
}

uint64_t protocol witness for CardioFitnessFetching.isReadingAuthorized() in conformance CardioFitnessFetcher()
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

uint64_t protocol witness for CardioFitnessFetching.query(start:end:) in conformance CardioFitnessFetcher(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return CardioFitnessFetcher.query(start:end:)(a1, a2, v8);
}

id @nonobjc HKStatisticsQuery.init(quantityType:quantitySamplePredicate:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed HKMCAnalysisQuery, @guaranteed HKMCAnalysis?, @guaranteed Error?) -> ();
  v16 = &block_descriptor_50;
  v8 = _Block_copy(&aBlock);
  v11 = [v7 initWithQuantityType:a1 quantitySamplePredicate:a2 options:a3 completionHandler:?];
  _Block_release(v8);

  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v11;
}

uint64_t sub_269A5A504()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetCardioFitnessIntentHandler.handle(intent:)()
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

  return @objc closure #1 in GetCardioFitnessIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t sub_269A5A704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A5A744()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A5A85C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A5A89C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKStatisticsQuery()
{
  v2 = lazy cache variable for type metadata for HKStatisticsQuery;
  if (!lazy cache variable for type metadata for HKStatisticsQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKStatisticsQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A5A97C()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
  v5 = *(v4 - 8);
  v3 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v2 = v3 + *(v5 + 64);
  v8 = type metadata accessor for Date();
  v6 = *(v8 - 8);
  v7 = (v2 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = (v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v3, v4);
  (*(v6 + 8))(v0 + v7, v8);
  MEMORY[0x277D82BD8](*(v0 + v9));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR) - 8);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v9 = v11 + *(v8 + 64);
  v4 = type metadata accessor for Date();
  v5 = (v9 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(v3 + ((v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(a1, a2, a3, v3 + v11, v3 + v5, v6);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_269A5AD8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A5ADCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211B6B0]();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

{
  return MEMORY[0x2821FBCC0]();
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x2821FD718]();
}

{
  return MEMORY[0x2821FD720]();
}