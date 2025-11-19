uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 664);
  *(v9 + 216) = *v2;
  v10 = (v9 + 216);
  *(v9 + 672) = a1;
  *(v9 + 680) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  }

  else
  {

    v5 = *v10;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 712);
  *(v6 + 216) = *v1;
  *(v6 + 720) = a1;

  v4 = *(v6 + 216);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 736);
  *(v6 + 216) = *v1;
  *(v6 + 744) = a1;

  v4 = *(v6 + 216);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.getDateIntervalCloserToNow(firstDateInterval:secondDateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a5;
  v17 = a1;
  v22 = a2;
  v18 = a3;
  v19 = a4;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v39 = 0.0;
  v36 = 0.0;
  v28 = type metadata accessor for Date();
  v23 = *(v28 - 8);
  v24 = v28 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v27 = &v15 - v20;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v20);
  v26 = &v15 - v21;
  v46 = &v15 - v21;
  v45 = a1;
  v44 = v7;
  v42 = v8;
  v43 = v9;
  Date.init()();
  DateInterval.start.getter();
  Date.timeIntervalSince(_:)();
  v25 = v10;
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v30(v27, v28);
  v40 = v25;
  v32 = MEMORY[0x277D839F8];
  v33 = MEMORY[0x277D83A20];
  v34 = MEMORY[0x277D83A50];
  abs<A>(_:)();
  v35 = v41;
  v39 = v41;
  DateInterval.start.getter();
  Date.timeIntervalSince(_:)();
  v31 = v11;
  v30(v27, v28);
  v37 = v31;
  abs<A>(_:)();
  v36 = v38;
  if (v35 >= v38)
  {
    v13 = type metadata accessor for DateInterval();
    (*(*(v13 - 8) + 16))(v16, v22);
  }

  else
  {
    v12 = type metadata accessor for DateInterval();
    (*(*(v12 - 8) + 16))(v16, v17);
  }

  return (v30)(v26, v28);
}

id closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 scheduleItemIdentifier];
  v9 = result;
  if (result)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    result = MEMORY[0x277D82BD8](v9);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1696) = a4;
  *(v4 + 1688) = a3;
  *(v4 + 2273) = a2 & 1;
  *(v4 + 1680) = a1;
  *(v4 + 1128) = v4;
  *(v4 + 1136) = 0;
  *(v4 + 2272) = 0;
  *(v4 + 888) = 0;
  *(v4 + 896) = 0;
  *(v4 + 1144) = 0;
  *(v4 + 1152) = 0;
  *(v4 + 1192) = 0;
  *(v4 + 904) = 0;
  *(v4 + 912) = 0;
  *(v4 + 1232) = 0;
  *(v4 + 1240) = 0;
  *(v4 + 920) = 0;
  *(v4 + 928) = 0;
  *(v4 + 1264) = 0;
  *(v4 + 1272) = 0;
  *(v4 + 1320) = 0;
  *(v4 + 1328) = 0;
  *(v4 + 936) = 0;
  *(v4 + 944) = 0;
  *(v4 + 1352) = 0;
  *(v4 + 1368) = 0;
  *(v4 + 2280) = 0;
  *(v4 + 2288) = 0;
  *(v4 + 1384) = 0;
  *(v4 + 952) = 0;
  *(v4 + 960) = 0;
  *(v4 + 1408) = 0;
  *(v4 + 1416) = 0;
  *(v4 + 1424) = 0;
  *(v4 + 1440) = 0;
  *(v4 + 968) = 0;
  *(v4 + 976) = 0;
  *(v4 + 1464) = 0;
  *(v4 + 1480) = 0;
  *(v4 + 1528) = 0;
  memset((v4 + 56), 0, 0x28uLL);
  *(v4 + 1536) = 0;
  *(v4 + 984) = 0;
  *(v4 + 992) = 0;
  *(v4 + 1000) = 0;
  *(v4 + 1008) = 0;
  *(v4 + 1544) = 0;
  *(v4 + 1552) = 0;
  *(v4 + 1632) = 0;
  *(v4 + 1096) = 0;
  *(v4 + 1104) = 0;
  *(v4 + 1640) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
  *(v4 + 1704) = v5;
  v14 = *(v5 - 8);
  *(v4 + 1712) = v14;
  v6 = *(v14 + 64) + 15;
  *(v4 + 1720) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMR) - 8) + 64);
  *(v4 + 1728) = swift_task_alloc();
  *(v4 + 1736) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v4 + 1744) = v7;
  v16 = *(v7 - 8);
  *(v4 + 1752) = v16;
  v8 = *(v16 + 64) + 15;
  *(v4 + 1760) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttSgMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttSgMR) - 8) + 64);
  *(v4 + 1768) = swift_task_alloc();
  *(v4 + 1776) = swift_task_alloc();
  *(v4 + 1784) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitSgMd, &_s10Foundation4DateVSg_SSSitSgMR) - 8) + 64) + 15;
  *(v4 + 1792) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v4 + 1800) = swift_task_alloc();
  *(v4 + 1808) = swift_task_alloc();
  *(v4 + 1816) = swift_task_alloc();
  v10 = type metadata accessor for DateInterval();
  *(v4 + 1824) = v10;
  v19 = *(v10 - 8);
  *(v4 + 1832) = v19;
  *(v4 + 1840) = *(v19 + 64);
  *(v4 + 1848) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v4 + 1856) = v11;
  v20 = *(v11 - 8);
  *(v4 + 1864) = v20;
  v21 = *(v20 + 64);
  *(v4 + 1872) = swift_task_alloc();
  *(v4 + 1880) = swift_task_alloc();
  *(v4 + 1888) = swift_task_alloc();
  *(v4 + 1896) = swift_task_alloc();
  *(v4 + 1904) = swift_task_alloc();
  *(v4 + 1912) = swift_task_alloc();
  *(v4 + 1920) = swift_task_alloc();
  *(v4 + 1928) = swift_task_alloc();
  *(v4 + 1936) = swift_task_alloc();
  *(v4 + 1944) = swift_task_alloc();
  *(v4 + 1952) = swift_task_alloc();
  *(v4 + 1960) = swift_task_alloc();
  *(v4 + 1968) = swift_task_alloc();
  *(v4 + 1136) = a1;
  *(v4 + 2272) = a2 & 1;
  *(v4 + 888) = a3;
  *(v4 + 896) = a4;
  v12 = *(v4 + 1128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)()
{
  v53 = v0;
  v1 = v0[246];
  v41 = v0[233];
  v43 = v0[232];
  v0[141] = v0;
  v42 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v44 = *(v41 + 16);
  v0[247] = v44;
  v0[248] = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v1, v42, v43);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  v0[249] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v45))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0);
    v38 = createStorage<A>(capacity:type:)(0);
    *(v40 + 1648) = buf;
    *(v40 + 1656) = v37;
    *(v40 + 1664) = v38;
    serialize(_:at:)(0, (v40 + 1648));
    serialize(_:at:)(0, (v40 + 1648));
    *(v40 + 1672) = v47;
    v39 = swift_task_alloc();
    v39[2] = v40 + 1648;
    v39[3] = v40 + 1656;
    v39[4] = v40 + 1664;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v45, "Got startTime, endTime.", buf, 2u);
    destroyStorage<A>(_:count:)(v37, 0, v35);
    destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v17 = *(v40 + 1968);
  v2 = *(v40 + 1960);
  v20 = *(v40 + 1856);
  v25 = *(v40 + 1848);
  v23 = *(v40 + 1840);
  v26 = *(v40 + 1824);
  v22 = *(v40 + 1680);
  v16 = *(v40 + 1864);
  v21 = *(v40 + 1832);
  MEMORY[0x277D82BD8](oslog);
  v18 = *(v16 + 8);
  *(v40 + 2000) = v18;
  *(v40 + 2008) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v17, v20);
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v44(v2, v19, v20);
  swift_endAccess();
  (*(v21 + 16))(v25, v22, v26);
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v27 = swift_allocObject();
  (*(v21 + 32))(v27 + v24, v25, v26);
  log = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v28;
  _allocateUninitializedArray<A>(_:)();
  v32 = v3;

  *v32 = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[1] = v29;

  v32[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[3] = v30;

  v32[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[5] = v31;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v34))
  {
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0);
    v15 = createStorage<A>(capacity:type:)(1);
    v48 = v13;
    v49 = v14;
    v50 = v15;
    serialize(_:at:)(2, &v48);
    serialize(_:at:)(1, &v48);
    v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v52 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    _os_log_impl(&dword_269912000, log, v34, "searching dateinterval: %s", v13, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v13, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = *(v40 + 1960);
  v11 = *(v40 + 1856);
  MEMORY[0x277D82BD8](log);
  v18(v10, v11);
  v4 = swift_allocObject();
  *(v40 + 2016) = v4;
  *(v40 + 1144) = v4 + 16;
  v5 = swift_task_alloc();
  *(v40 + 2024) = v5;
  *v5 = *(v40 + 1128);
  v5[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  v6 = *(v40 + 1696);
  v7 = *(v40 + 1688);
  v8 = *(v40 + 1680);

  return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v8, 0, v7, v6);
}

{
  v1 = v0[267];
  v2 = v0[266];
  v0[141] = v0;
  v0[129] = v2;
  v0[130] = v1;
  if (v0[130])
  {
    v17 = *(v128 + 1040);
    *(v128 + 1016) = *(v128 + 1032);
    *(v128 + 1024) = v17;
  }

  else
  {
    *(v128 + 1016) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown Name", 0xCuLL, 1);
    if (*(v128 + 1040))
    {
      outlined destroy of String.UTF8View(v128 + 1032);
    }
  }

  v102 = *(v128 + 2112);
  v105 = *(v128 + 2088);
  v103 = (*(v128 + 2104) + 16);
  v100 = *(v128 + 1024);
  v101 = MEMORY[0x26D6492A0](*(v128 + 1016));

  [v102 setMedName_];
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  swift_beginAccess();
  v104 = *v103;
  MEMORY[0x277D82BE0](*v103);
  result = swift_endAccess();
  if (__OFSUB__(v105, 1))
  {
    __break(1u);
  }

  else
  {
    v80 = *(v128 + 2104);
    v77 = *(v128 + 2088);
    v97 = *(v128 + 1992);
    v75 = *(v128 + 1984);
    v76 = *(v128 + 1976);
    v19 = *(v128 + 1912);
    v74 = *(v128 + 1856);
    *(v128 + 1560) = v105 - 1;
    v20 = String.init<A>(_:)();
    v72 = MEMORY[0x26D6492A0](v20);

    [v104 setRemainingMedCount_];
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v104);
    v73 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v76(v19, v73, v74);
    swift_endAccess();

    v82 = swift_allocObject();
    *(v82 + 16) = v77;
    oslog = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    v84 = swift_allocObject();
    *(v84 + 16) = 32;
    v85 = swift_allocObject();
    *(v85 + 16) = 8;
    v78 = swift_allocObject();
    *(v78 + 16) = partial apply for implicit closure #9 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v78 + 24) = v80;
    v86 = swift_allocObject();
    *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v86 + 24) = v78;
    v87 = swift_allocObject();
    *(v87 + 16) = 32;
    v88 = swift_allocObject();
    *(v88 + 16) = 8;
    v79 = swift_allocObject();
    *(v79 + 16) = partial apply for implicit closure #10 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v79 + 24) = v80;
    v89 = swift_allocObject();
    *(v89 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v89 + 24) = v79;
    v90 = swift_allocObject();
    *(v90 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = 8;
    v81 = swift_allocObject();
    *(v81 + 16) = partial apply for implicit closure #11 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v81 + 24) = v80;
    v92 = swift_allocObject();
    *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v92 + 24) = v81;
    v93 = swift_allocObject();
    *(v93 + 16) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = 8;
    v83 = swift_allocObject();
    *(v83 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v83 + 24) = v82;
    v95 = swift_allocObject();
    *(v95 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v95 + 24) = v83;
    _allocateUninitializedArray<A>(_:)();
    v96 = v21;

    *v96 = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[1] = v84;

    v96[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[3] = v85;

    v96[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[5] = v86;

    v96[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[7] = v87;

    v96[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[9] = v88;

    v96[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[11] = v89;

    v96[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[13] = v90;

    v96[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[15] = v91;

    v96[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[17] = v92;

    v96[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[19] = v93;

    v96[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v96[21] = v94;

    v96[22] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v96[23] = v95;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v99))
    {
      v22 = *(v128 + 2072);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v70 = createStorage<A>(capacity:type:)(0);
      v71 = createStorage<A>(capacity:type:)(3);
      *(v128 + 1576) = buf;
      *(v128 + 1584) = v70;
      *(v128 + 1592) = v71;
      serialize(_:at:)(2, (v128 + 1576));
      serialize(_:at:)(4, (v128 + 1576));
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v84;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      if (v22)
      {
      }

      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v85;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v86;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v87;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v88;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v89;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v90;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v91;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v92;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v93;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v128 + 1056) = v94;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      *(v128 + 1048) = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      *(v128 + 1056) = v95;
      closure #1 in osLogInternal(_:log:type:)(v128 + 1048, v128 + 1576, v128 + 1584, v128 + 1592);
      _os_log_impl(&dword_269912000, oslog, v99, "Appending MatchedMedSchedule with scheduleID (%s), medName (%s), schedule (%s), and remainingMedCount (%ld)", buf, 0x2Au);
      destroyStorage<A>(_:count:)(v70, 0, v68);
      destroyStorage<A>(_:count:)(v71, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v67 = 0;
    }

    else
    {

      v67 = *(v128 + 2072);
    }

    v62 = *(v128 + 2096);
    v64 = *(v128 + 2080);
    v58 = *(v128 + 2008);
    v59 = *(v128 + 2000);
    v56 = *(v128 + 1912);
    v57 = *(v128 + 1856);
    v63 = *(v128 + 1800);
    v60 = (*(v128 + 2104) + 16);
    MEMORY[0x277D82BD8](oslog);
    v59(v56, v57);
    swift_beginAccess();
    v61 = *v60;
    MEMORY[0x277D82BE0](*v60);
    swift_endAccess();
    *(v128 + 1568) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents18MatchedMedScheduleCGMd, &_sSay19SiriWellnessIntents18MatchedMedScheduleCGMR);
    Array.append(_:)();

    outlined destroy of Date?(v63);

    *(v128 + 2072) = v67;
    v66 = *(v128 + 1736);
    v65 = *(v128 + 1728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMd, &_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMR);
    Dictionary.Iterator.next()();
    outlined init with take of (key: String?, value: (scheduleDate: Date?, medID: String, count: Int))?(v65, v66);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMR);
    if ((*(*(v113 - 8) + 48))(v66, 1) == 1)
    {
      v26 = *(v128 + 2064);
      v29 = *(v128 + 2048);
      v30 = *(v128 + 2016);
      outlined destroy of [String? : (scheduleDate: Date?, medID: String, count: Int)].Iterator((v128 + 56));
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v55 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(104, 0);
      MEMORY[0x277D82BE0](v55);
      *(v128 + 1536) = v55;
      v27 = *(v128 + 1528);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v55 setMatchingSchedules_];
      MEMORY[0x277D82BD8](isa);
      MEMORY[0x277D82BD8](*(v128 + 1536));
      outlined destroy of [HKQuantityType]((v128 + 1528));

      v23 = *(v128 + 1968);
      v31 = *(v128 + 1960);
      v32 = *(v128 + 1952);
      v33 = *(v128 + 1944);
      v34 = *(v128 + 1936);
      v35 = *(v128 + 1928);
      v36 = *(v128 + 1920);
      v37 = *(v128 + 1912);
      v38 = *(v128 + 1904);
      v39 = *(v128 + 1896);
      v40 = *(v128 + 1888);
      v41 = *(v128 + 1880);
      v42 = *(v128 + 1872);
      v43 = *(v128 + 1848);
      v44 = *(v128 + 1816);
      v45 = *(v128 + 1808);
      v46 = *(v128 + 1800);
      v47 = *(v128 + 1792);
      v48 = *(v128 + 1784);
      v49 = *(v128 + 1776);
      v50 = *(v128 + 1768);
      v51 = *(v128 + 1760);
      v52 = *(v128 + 1736);
      v53 = *(v128 + 1728);
      v54 = *(v128 + 1720);

      v24 = *(*(v128 + 1128) + 8);
      v25 = *(v128 + 1128);

      return v24(v55);
    }

    else
    {
      v3 = *(v128 + 2064);
      v120 = *(v128 + 1800);
      v4 = *(v128 + 1736);
      v121 = *(v128 + 1720);
      v119 = *(v128 + 1704);
      v118 = *v4;
      v127 = v4[1];
      *(v128 + 2080) = v127;
      v5 = v4 + *(v113 + 48);
      v6 = &v5[*(v119 + 48)];
      v114 = *v6;
      v116 = *(v6 + 1);
      v124 = *&v5[*(v119 + 64)];
      *(v128 + 2088) = v124;
      v115 = &v121[*(v119 + 48)];
      v117 = *(v119 + 64);
      outlined init with take of Date?(v5, v121);
      *v115 = v114;
      *(v115 + 1) = v116;
      *&v121[v117] = v124;
      *(v128 + 984) = v118;
      *(v128 + 992) = v127;
      v7 = &v121[*(v119 + 48)];
      v122 = *v7;
      v123 = v7[1];
      *(v128 + 2096) = v123;
      outlined init with take of Date?(v121, v120);
      *(v128 + 1000) = v122;
      *(v128 + 1008) = v123;
      *(v128 + 1544) = v124;
      v126 = swift_allocObject();
      *(v128 + 2104) = v126;
      *(v128 + 1552) = v126 + 16;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Match", 5uLL, 1);
      INObject.__allocating_init(identifier:display:)(v9, 0, v8);
      v125 = v10;
      MEMORY[0x277D82BE0](v10);
      *(v126 + 16) = v125;
      swift_beginAccess();
      swift_endAccess();

      if (v127)
      {
        v111 = MEMORY[0x26D6492A0](v118);

        v112 = v111;
      }

      else
      {
        v112 = 0;
      }

      v109 = *(v128 + 1800);
      [v125 setScheduleID_];
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v125);
      swift_beginAccess();
      v108 = *(v126 + 16);
      MEMORY[0x277D82BE0](v108);
      swift_endAccess();
      v110 = getFormattedTimeString(time:)(v109);
      if (v11)
      {
        v106 = MEMORY[0x26D6492A0](v110);

        v107 = v106;
      }

      else
      {
        v107 = 0;
      }

      [v108 setSchedule_];
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v108);
      swift_beginAccess();
      v12 = *(v126 + 16);
      *(v128 + 2112) = v12;
      MEMORY[0x277D82BE0](v12);
      swift_endAccess();

      v13 = swift_task_alloc();
      *(v128 + 2120) = v13;
      *v13 = *(v128 + 1128);
      v13[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v14 = *(v128 + 1696);
      v15 = *(v128 + 1688);

      return SpecificMedicationsPersistor.displayNameFor(identifier:)(v122, v123, v15, v14);
    }
  }

  return result;
}

{
  v5 = v0[256];
  v6 = v0[252];
  v0[141] = v0;
  outlined destroy of [HKQuantityType](v0 + 180);

  v31 = v0[270];
  v1 = v0[246];
  v7 = v0[245];
  v8 = v0[244];
  v9 = v0[243];
  v10 = v0[242];
  v11 = v0[241];
  v12 = v0[240];
  v13 = v0[239];
  v14 = v0[238];
  v15 = v0[237];
  v16 = v0[236];
  v17 = v0[235];
  v18 = v0[234];
  v19 = v0[231];
  v20 = v0[227];
  v21 = v0[226];
  v22 = v0[225];
  v23 = v0[224];
  v24 = v0[223];
  v25 = v0[222];
  v26 = v0[221];
  v27 = v0[220];
  v28 = v0[217];
  v29 = v0[216];
  v30 = v0[215];

  v2 = *(v0[141] + 8);
  v3 = v0[141];

  return v2(v31);
}

{
  v40 = v0[274];
  v41 = v0[272];
  v0[141] = v0;
  v0[178] = v40;
  MEMORY[0x277D82BE0](v40);
  v0[179] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  v1 = v0[257];
  IndexingIterator.next()();
  v42 = v0[175];
  v0[272] = v42;
  if (v42)
  {
    v39[177] = v42;
    v2 = swift_task_alloc();
    v39[273] = v2;
    *v2 = v39[141];
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    v3 = v39[212];
    v4 = v39[211];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v42, 1, v4, v3);
  }

  else
  {
    v9 = v39[271];
    v12 = v39[256];
    v13 = v39[252];
    outlined destroy of [HKQuantityType](v39 + 119);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v38 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
    MEMORY[0x277D82BE0](v38);
    v39[176] = v38;
    v10 = v39[173];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v39[176]);
    outlined destroy of [HKQuantityType](v39 + 173);

    v6 = v39[246];
    v14 = v39[245];
    v15 = v39[244];
    v16 = v39[243];
    v17 = v39[242];
    v18 = v39[241];
    v19 = v39[240];
    v20 = v39[239];
    v21 = v39[238];
    v22 = v39[237];
    v23 = v39[236];
    v24 = v39[235];
    v25 = v39[234];
    v26 = v39[231];
    v27 = v39[227];
    v28 = v39[226];
    v29 = v39[225];
    v30 = v39[224];
    v31 = v39[223];
    v32 = v39[222];
    v33 = v39[221];
    v34 = v39[220];
    v35 = v39[217];
    v36 = v39[216];
    v37 = v39[215];

    v7 = *(v39[141] + 8);
    v8 = v39[141];

    return v7(v38);
  }
}

{
  v5 = v0[275];
  v6 = v0[256];
  v7 = v0[252];
  v0[141] = v0;
  outlined destroy of [HKQuantityType](v0 + 166);

  v32 = v0[278];
  v1 = v0[246];
  v8 = v0[245];
  v9 = v0[244];
  v10 = v0[243];
  v11 = v0[242];
  v12 = v0[241];
  v13 = v0[240];
  v14 = v0[239];
  v15 = v0[238];
  v16 = v0[237];
  v17 = v0[236];
  v18 = v0[235];
  v19 = v0[234];
  v20 = v0[231];
  v21 = v0[227];
  v22 = v0[226];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[220];
  v29 = v0[217];
  v30 = v0[216];
  v31 = v0[215];

  v2 = *(v0[141] + 8);
  v3 = v0[141];

  return v2(v32);
}

{
  v41 = v0[283];
  v42 = v0[281];
  v0[141] = v0;
  v0[159] = v41;
  MEMORY[0x277D82BE0](v41);
  v0[160] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  v1 = v0[257];
  IndexingIterator.next()();
  v43 = v0[157];
  v0[281] = v43;
  if (v43)
  {
    v40[158] = v43;
    v2 = swift_task_alloc();
    v40[282] = v2;
    *v2 = v40[141];
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    v3 = v40[212];
    v4 = v40[211];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v43, 1, v4, v3);
  }

  else
  {
    v9 = v40[280];
    v11 = v40[279];
    v13 = v40[256];
    v14 = v40[252];
    outlined destroy of [HKQuantityType](v40 + 115);
    v10 = v40[155];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType](v40 + 155);
    MEMORY[0x277D82BD8](v40[154]);

    v39 = v40[279];
    v6 = v40[246];
    v15 = v40[245];
    v16 = v40[244];
    v17 = v40[243];
    v18 = v40[242];
    v19 = v40[241];
    v20 = v40[240];
    v21 = v40[239];
    v22 = v40[238];
    v23 = v40[237];
    v24 = v40[236];
    v25 = v40[235];
    v26 = v40[234];
    v27 = v40[231];
    v28 = v40[227];
    v29 = v40[226];
    v30 = v40[225];
    v31 = v40[224];
    v32 = v40[223];
    v33 = v40[222];
    v34 = v40[221];
    v35 = v40[220];
    v36 = v40[217];
    v37 = v40[216];
    v38 = v40[215];

    v7 = *(v40[141] + 8);
    v8 = v40[141];

    return v7(v39);
  }
}

{
  v44 = v0[255];
  v1 = v0[252];
  v49 = v0[249];
  v47 = v0[248];
  v48 = v0[247];
  v2 = v0[234];
  v46 = v0[232];
  v0[141] = v0;
  swift_deallocUninitializedObject();
  v3 = v44;
  v0[144] = v44;
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
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v40 = createStorage<A>(capacity:type:)(0);
    v41 = createStorage<A>(capacity:type:)(0);
    *(v43 + 1160) = buf;
    *(v43 + 1168) = v40;
    *(v43 + 1176) = v41;
    serialize(_:at:)(0, (v43 + 1160));
    serialize(_:at:)(0, (v43 + 1160));
    *(v43 + 1184) = v52;
    v42 = swift_task_alloc();
    v42[2] = v43 + 1160;
    v42[3] = v43 + 1168;
    v42[4] = v43 + 1176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v50, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v40, 0, v38);
    destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v12 = *(v43 + 2040);
  v10 = *(v43 + 2008);
  v11 = *(v43 + 2000);
  v8 = *(v43 + 1872);
  v9 = *(v43 + 1856);
  MEMORY[0x277D82BD8](oslog);
  v11(v8, v9);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v37 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v4 = *(v43 + 1968);
  v13 = *(v43 + 1960);
  v14 = *(v43 + 1952);
  v15 = *(v43 + 1944);
  v16 = *(v43 + 1936);
  v17 = *(v43 + 1928);
  v18 = *(v43 + 1920);
  v19 = *(v43 + 1912);
  v20 = *(v43 + 1904);
  v21 = *(v43 + 1896);
  v22 = *(v43 + 1888);
  v23 = *(v43 + 1880);
  v24 = *(v43 + 1872);
  v25 = *(v43 + 1848);
  v26 = *(v43 + 1816);
  v27 = *(v43 + 1808);
  v28 = *(v43 + 1800);
  v29 = *(v43 + 1792);
  v30 = *(v43 + 1784);
  v31 = *(v43 + 1776);
  v32 = *(v43 + 1768);
  v33 = *(v43 + 1760);
  v34 = *(v43 + 1736);
  v35 = *(v43 + 1728);
  v36 = *(v43 + 1720);

  v5 = *(*(v43 + 1128) + 8);
  v6 = *(v43 + 1128);

  return v5(v37);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 141;
  v4 = *(*v2 + 2024);
  v10[141] = *v2;
  v10[254] = a1;
  v10[255] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  }

  else
  {
    v5 = *v9;
    v6 = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v479 = v1;
  MEMORY[0x28223BE20](a1);
  v433 = v1;
  v2 = *(v1 + 2032);
  v438 = *(v1 + 2016);
  v444 = *(v1 + 1992);
  v436 = *(v1 + 1984);
  v437 = *(v1 + 1976);
  v3 = *(v1 + 1952);
  v435 = *(v1 + 1856);
  *(v1 + 1128) = v1;
  *(v438 + 16) = v2;
  v434 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v437(v3, v434, v435);
  swift_endAccess();

  oslog = Logger.logObject.getter();
  v446 = static os_log_type_t.debug.getter();
  v440 = swift_allocObject();
  *(v440 + 16) = 0;
  v441 = swift_allocObject();
  *(v441 + 16) = 8;
  v439 = swift_allocObject();
  *(v439 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v439 + 24) = v438;
  v442 = swift_allocObject();
  *(v442 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v442 + 24) = v439;
  _allocateUninitializedArray<A>(_:)();
  v443 = v4;

  *v443 = partial apply for closure #1 in OSLogArguments.append(_:);
  v443[1] = v440;

  v443[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v443[3] = v441;

  v443[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v443[5] = v442;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v446))
  {
    v5 = *(v1 + 2040);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v431 = createStorage<A>(capacity:type:)(0);
    v432 = createStorage<A>(capacity:type:)(0);
    v474 = buf;
    v475 = v431;
    v476 = v432;
    serialize(_:at:)(0, &v474);
    serialize(_:at:)(1, &v474);
    v477 = partial apply for closure #1 in OSLogArguments.append(_:);
    v478 = v440;
    closure #1 in osLogInternal(_:log:type:)(&v477, &v474, &v475, &v476);
    if (v5)
    {
    }

    v477 = partial apply for closure #1 in OSLogArguments.append(_:);
    v478 = v441;
    closure #1 in osLogInternal(_:log:type:)(&v477, &v474, &v475, &v476);
    v477 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v478 = v442;
    closure #1 in osLogInternal(_:log:type:)(&v477, &v474, &v475, &v476);
    _os_log_impl(&dword_269912000, oslog, v446, "fetched %ld doseEvents", buf, 0xCu);
    destroyStorage<A>(_:count:)(v431, 0, v429);
    destroyStorage<A>(_:count:)(v432, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v428 = 0;
    v427 = 0;
  }

  else
  {

    v428 = *(v1 + 2040);
  }

  v418 = *(v1 + 2016);
  v410 = *(v1 + 2008);
  v411 = *(v1 + 2000);
  v424 = *(v1 + 1992);
  v416 = *(v1 + 1984);
  v417 = *(v1 + 1976);
  v409 = *(v1 + 1952);
  v7 = *(v1 + 1944);
  v415 = *(v1 + 1856);
  MEMORY[0x277D82BD8](oslog);
  v411(v409, v415);
  swift_beginAccess();
  v412 = *(v418 + 16);

  swift_endAccess();
  v413 = filterUniqueDoseEvents(doseEvents:)(v412);

  swift_beginAccess();
  v8 = *(v418 + 16);
  *(v418 + 16) = v413;

  swift_endAccess();
  v414 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v417(v7, v414, v415);
  swift_endAccess();

  log = Logger.logObject.getter();
  v426 = static os_log_type_t.debug.getter();
  v420 = swift_allocObject();
  *(v420 + 16) = 0;
  v421 = swift_allocObject();
  *(v421 + 16) = 8;
  v419 = swift_allocObject();
  *(v419 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v419 + 24) = v418;
  v422 = swift_allocObject();
  *(v422 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v422 + 24) = v419;
  _allocateUninitializedArray<A>(_:)();
  v423 = v9;

  *v423 = partial apply for closure #1 in OSLogArguments.append(_:);
  v423[1] = v420;

  v423[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v423[3] = v421;

  v423[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v423[5] = v422;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v426))
  {
    v406 = static UnsafeMutablePointer.allocate(capacity:)();
    v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v407 = createStorage<A>(capacity:type:)(0);
    v408 = createStorage<A>(capacity:type:)(0);
    v469 = v406;
    v470 = v407;
    v471 = v408;
    serialize(_:at:)(0, &v469);
    serialize(_:at:)(1, &v469);
    v472 = partial apply for closure #1 in OSLogArguments.append(_:);
    v473 = v420;
    closure #1 in osLogInternal(_:log:type:)(&v472, &v469, &v470, &v471);
    if (v428)
    {
    }

    v472 = partial apply for closure #1 in OSLogArguments.append(_:);
    v473 = v421;
    closure #1 in osLogInternal(_:log:type:)(&v472, &v469, &v470, &v471);
    v472 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v473 = v422;
    closure #1 in osLogInternal(_:log:type:)(&v472, &v469, &v470, &v471);
    _os_log_impl(&dword_269912000, log, v426, "filtered to %ld unique doseEvents", v406, 0xCu);
    destroyStorage<A>(_:count:)(v407, 0, v405);
    destroyStorage<A>(_:count:)(v408, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v406, MEMORY[0x277D84B78]);

    v403 = 0;
    v404 = 0;
  }

  else
  {

    v403 = v428;
    v404 = v427;
  }

  v393 = *(v1 + 2008);
  v394 = *(v1 + 2000);
  v391 = *(v1 + 1944);
  v392 = *(v1 + 1856);
  v396 = *(v1 + 1704);
  v399 = (*(v1 + 2016) + 16);
  MEMORY[0x277D82BD8](log);
  v394(v391, v392);
  v398 = swift_allocObject();
  *(v1 + 2048) = v398;
  *(v1 + 1192) = v398 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_10Foundation4DateVSg08scheduleB0_SS5medIDSi5countttMd, &_sSSSg_10Foundation4DateVSg08scheduleB0_SS5medIDSi5countttMR);
  _allocateUninitializedArray<A>(_:)();
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v397 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  *(v398 + 16) = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  v400 = *v399;

  swift_endAccess();
  *(v1 + 1200) = v400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  v401 = v403;
  for (i = v404; ; i = v362)
  {
    *(v1 + 2056) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v390 = *(v1 + 1208);
    if (!v390)
    {
      break;
    }

    v387 = *(v1 + 1992);
    v369 = *(v1 + 1984);
    v370 = *(v1 + 1976);
    v10 = *(v1 + 1936);
    v368 = *(v1 + 1856);
    *(v1 + 1632) = v390;
    v367 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v370(v10, v367, v368);
    swift_endAccess();
    MEMORY[0x277D82BE0](v390);
    v371 = swift_allocObject();
    *(v371 + 16) = v390;
    MEMORY[0x277D82BE0](v390);
    v373 = swift_allocObject();
    *(v373 + 16) = v390;
    MEMORY[0x277D82BE0](v390);
    v375 = swift_allocObject();
    *(v375 + 16) = v390;
    v388 = Logger.logObject.getter();
    v389 = static os_log_type_t.debug.getter();
    v377 = swift_allocObject();
    *(v377 + 16) = 32;
    v378 = swift_allocObject();
    *(v378 + 16) = 8;
    v372 = swift_allocObject();
    *(v372 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v372 + 24) = v371;
    v379 = swift_allocObject();
    *(v379 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v379 + 24) = v372;
    v380 = swift_allocObject();
    *(v380 + 16) = 32;
    v381 = swift_allocObject();
    *(v381 + 16) = 8;
    v374 = swift_allocObject();
    *(v374 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
    *(v374 + 24) = v373;
    v382 = swift_allocObject();
    *(v382 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v382 + 24) = v374;
    v383 = swift_allocObject();
    *(v383 + 16) = 32;
    v384 = swift_allocObject();
    *(v384 + 16) = 8;
    v376 = swift_allocObject();
    *(v376 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v376 + 24) = v375;
    v385 = swift_allocObject();
    *(v385 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v385 + 24) = v376;
    _allocateUninitializedArray<A>(_:)();
    v386 = v11;

    *v386 = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[1] = v377;

    v386[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[3] = v378;

    v386[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[5] = v379;

    v386[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[7] = v380;

    v386[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[9] = v381;

    v386[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[11] = v382;

    v386[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[13] = v383;

    v386[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[15] = v384;

    v386[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v386[17] = v385;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v388, v389))
    {
      v364 = static UnsafeMutablePointer.allocate(capacity:)();
      v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v365 = createStorage<A>(capacity:type:)(0);
      v366 = createStorage<A>(capacity:type:)(3);
      v464 = v364;
      v465 = v365;
      v466 = v366;
      serialize(_:at:)(2, &v464);
      serialize(_:at:)(3, &v464);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v377;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      if (v401)
      {
      }

      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v378;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v379;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v380;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v381;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v382;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v383;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v384;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      v467 = partial apply for closure #1 in OSLogArguments.append(_:);
      v468 = v385;
      closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
      _os_log_impl(&dword_269912000, v388, v389, "got a dose event with scheduleID: %s, medID: %s, status: %s", v364, 0x20u);
      destroyStorage<A>(_:count:)(v365, 0, v363);
      destroyStorage<A>(_:count:)(v366, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v364, MEMORY[0x277D84B78]);

      v361 = 0;
      v362 = 0;
    }

    else
    {

      v361 = v401;
      v362 = i;
    }

    v358 = *(v1 + 2008);
    v359 = *(v1 + 2000);
    v356 = *(v1 + 1936);
    v357 = *(v1 + 1856);
    MEMORY[0x277D82BD8](v388);
    v359(v356, v357);
    v360 = [v390 scheduleItemIdentifier];
    if (v360)
    {
      v352 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v353 = v12;
      MEMORY[0x277D82BD8](v360);
      v354 = v352;
      v355 = v353;
    }

    else
    {
      v354 = 0;
      v355 = 0;
    }

    v351 = *(v1 + 1784);
    v350 = *(v1 + 1704);
    v349 = *(v1 + 1712);
    v13 = *(v398 + 16);
    *(v1 + 1064) = v354;
    *(v1 + 1072) = v355;
    MEMORY[0x26D649240]();
    outlined destroy of String.UTF8View(v1 + 1064);
    if ((*(v349 + 48))(v351, 1, v350) == 1)
    {
      v324 = *(v1 + 1792);
      outlined destroy of (scheduleDate: Date?, medID: String, count: Int)?(*(v1 + 1784));
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
      (*(*(v23 - 8) + 56))(v324, 1);
    }

    else
    {
      v348 = *(v1 + 1792);
      v341 = *(v1 + 1784);
      v14 = *(v1 + 1704);
      v15 = &v341[*(v14 + 48)];
      v342 = *v15;
      v344 = *(v15 + 1);
      v346 = *&v341[*(v14 + 64)];
      v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
      v343 = &v348[*(v347 + 48)];
      v345 = *(v347 + 64);
      outlined init with take of Date?(v341, v348);
      *v343 = v342;
      *(v343 + 1) = v344;
      *&v348[v345] = v346;
      (*(*(v347 - 8) + 56))();
    }

    v339 = *(v1 + 1792);
    v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
    if ((*(*(v340 - 8) + 48))(v339, 1) == 1)
    {
      outlined destroy of (Date?, String, Int)?(*(v1 + 1792));
      v323 = [v390 scheduleItemIdentifier];
      if (v323)
      {
        v319 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v320 = v24;
        MEMORY[0x277D82BD8](v323);
        v321 = v319;
        v322 = v320;
      }

      else
      {
        v321 = 0;
        v322 = 0;
      }

      v315 = *(v1 + 1768);
      v25 = *(v1 + 1704);
      v316 = (v315 + *(v25 + 48));
      v317 = *(v25 + 64);
      v318 = [v390 scheduledDate];
      if (v318)
      {
        v314 = *(v1 + 1808);
        v312 = *(v1 + 1760);
        v313 = *(v1 + 1744);
        v311 = *(v1 + 1752);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v311 + 32))(v314, v312, v313);
        (*(v311 + 56))(v314, 0, 1, v313);
        MEMORY[0x277D82BD8](v318);
      }

      else
      {
        (*(*(v1 + 1752) + 56))(*(v1 + 1808), 1, 1, *(v1 + 1744));
      }

      v309 = *(v1 + 1768);
      v308 = *(v1 + 1704);
      v307 = *(v1 + 1712);
      outlined init with take of Date?(*(v1 + 1808), v309);
      v306 = [v390 medicationIdentifier];
      v310 = [v306 underlyingIdentifier];
      *v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v316[1] = v26;
      MEMORY[0x277D82BD8](v306);
      *(v315 + v317) = 1;
      (*(v307 + 56))(v309, 0, 1, v308);
      *(v1 + 1080) = v321;
      *(v1 + 1088) = v322;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMd, &_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMR);
      Dictionary.subscript.setter();
      MEMORY[0x277D82BD8](v310);
      MEMORY[0x277D82BD8](v390);
      v327 = v361;
    }

    else
    {
      v16 = *(v1 + 1792);
      v17 = &v16[*(v340 + 48)];
      v335 = *v17;
      v336 = *(v17 + 1);
      v337 = *&v16[*(v340 + 64)];
      outlined init with take of Date?(v16, *(v1 + 1816));
      *(v1 + 1096) = v335;
      *(v1 + 1104) = v336;
      *(v1 + 1640) = v337;
      v338 = [v390 scheduleItemIdentifier];
      if (v338)
      {
        v331 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v332 = v18;
        MEMORY[0x277D82BD8](v338);
        v333 = v331;
        v334 = v332;
      }

      else
      {
        v333 = 0;
        v334 = 0;
      }

      v328 = *(v1 + 1776);
      v19 = *(v1 + 1704);
      v330 = &v328[*(v19 + 48)];
      v329 = *(v19 + 64);
      outlined init with copy of Date?(*(v1 + 1816), v328);

      *v330 = v335;
      *(v330 + 1) = v336;
      if (__OFADD__(v337, 1))
      {
        __break(1u);
        return result;
      }

      v326 = *(v1 + 1816);
      v325 = *(v1 + 1776);
      v21 = *(v1 + 1712);
      v22 = *(v1 + 1704);
      *&v328[v329] = v337 + 1;
      (*(v21 + 56))();
      *(v1 + 1112) = v333;
      *(v1 + 1120) = v334;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMd, &_sSDySSSg10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttGMR);
      Dictionary.subscript.setter();

      outlined destroy of Date?(v326);
      MEMORY[0x277D82BD8](v390);
      v327 = v361;
    }

    v401 = v327;
  }

  v303 = (*(v1 + 2016) + 16);
  outlined destroy of [HKQuantityType]((v1 + 904));
  swift_beginAccess();
  v304 = *v303;

  swift_endAccess();
  *(v1 + 1216) = v304;
  v305 = Collection.isEmpty.getter();

  if (v305)
  {
    v299 = *(v1 + 1992);
    v297 = *(v1 + 1984);
    v298 = *(v1 + 1976);
    v27 = *(v1 + 1928);
    v296 = *(v1 + 1856);
    v295 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v298(v27, v295, v296);
    swift_endAccess();
    v301 = Logger.logObject.getter();
    v300 = static os_log_type_t.debug.getter();
    v302 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v301, v300))
    {

      goto LABEL_47;
    }

    v291 = static UnsafeMutablePointer.allocate(capacity:)();
    v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v292 = createStorage<A>(capacity:type:)(0);
    v293 = createStorage<A>(capacity:type:)(0);
    *(v1 + 1600) = v291;
    *(v1 + 1608) = v292;
    *(v1 + 1616) = v293;
    serialize(_:at:)(0, (v1 + 1600));
    serialize(_:at:)(0, (v1 + 1600));
    *(v1 + 1624) = v302;
    v294 = swift_task_alloc();
    v294[2] = v1 + 1600;
    v294[3] = v1 + 1608;
    v294[4] = v1 + 1616;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v401)
    {

      _os_log_impl(&dword_269912000, v301, v300, "Time specified, but no potential time match found. Returning .noMatchFound.", v291, 2u);
      destroyStorage<A>(_:count:)(v292, 0, v290);
      destroyStorage<A>(_:count:)(v293, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v291, MEMORY[0x277D84B78]);

LABEL_47:
      v287 = *(v1 + 2016);
      v285 = *(v1 + 2008);
      v286 = *(v1 + 2000);
      v283 = *(v1 + 1928);
      v284 = *(v1 + 1856);
      MEMORY[0x277D82BD8](v301);
      v286(v283, v284);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v288 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

      v289 = v288;
LABEL_121:
      v63 = *(v1 + 1968);
      v66 = *(v1 + 1960);
      v67 = *(v1 + 1952);
      v68 = *(v1 + 1944);
      v69 = *(v1 + 1936);
      v70 = *(v1 + 1928);
      v71 = *(v1 + 1920);
      v72 = *(v1 + 1912);
      v73 = *(v1 + 1904);
      v74 = *(v1 + 1896);
      v75 = *(v1 + 1888);
      v76 = *(v1 + 1880);
      v77 = *(v1 + 1872);
      v78 = *(v1 + 1848);
      v79 = *(v1 + 1816);
      v80 = *(v1 + 1808);
      v81 = *(v1 + 1800);
      v82 = *(v1 + 1792);
      v83 = *(v1 + 1784);
      v84 = *(v1 + 1776);
      v85 = *(v1 + 1768);
      v86 = *(v1 + 1760);
      v87 = *(v1 + 1736);
      v88 = *(v1 + 1728);
      v89 = *(v1 + 1720);

      v64 = *(*(v1 + 1128) + 8);
      v65 = *(v1 + 1128);

      return v64(v289);
    }
  }

  v280 = *(v1 + 1704);
  v281 = *(v398 + 16);

  v282 = MEMORY[0x26D649210](v281, v395, v280, v397);

  if (v282 <= 1)
  {
    v224 = *(v1 + 2016);
    swift_beginAccess();
    doseEvents._rawValue = *(v224 + 16);

    swift_endAccess();
    v226 = allDoseEventsAreUnlogged(doseEvents:)(doseEvents);

    if (v226)
    {
      v220 = *(v1 + 1992);
      v218 = *(v1 + 1984);
      v219 = *(v1 + 1976);
      v43 = *(v1 + 1904);
      v217 = *(v1 + 1856);
      v216 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v219(v43, v216, v217);
      swift_endAccess();
      v222 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();
      v223 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v222, v221))
      {
        v212 = static UnsafeMutablePointer.allocate(capacity:)();
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v213 = createStorage<A>(capacity:type:)(0);
        v214 = createStorage<A>(capacity:type:)(0);
        *(v1 + 1496) = v212;
        *(v1 + 1504) = v213;
        *(v1 + 1512) = v214;
        serialize(_:at:)(0, (v1 + 1496));
        serialize(_:at:)(0, (v1 + 1496));
        *(v1 + 1520) = v223;
        v215 = swift_task_alloc();
        v215[2] = v1 + 1496;
        v215[3] = v1 + 1504;
        v215[4] = v1 + 1512;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v401)
        {
        }

        _os_log_impl(&dword_269912000, v222, v221, "All dose events in group are unlogged, continuing to write", v212, 2u);
        destroyStorage<A>(_:count:)(v213, 0, v211);
        destroyStorage<A>(_:count:)(v214, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v212, MEMORY[0x277D84B78]);

        v210 = 0;
      }

      else
      {

        v210 = v401;
      }

      v206 = *(v1 + 2008);
      v207 = *(v1 + 2000);
      v204 = *(v1 + 1904);
      v205 = *(v1 + 1856);
      v208 = (*(v1 + 2016) + 16);
      MEMORY[0x277D82BD8](v222);
      v207(v204, v205);
      type metadata accessor for HKMedicationExposableDoseEvent();
      *(v1 + 1440) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v209 = *v208;

      swift_endAccess();
      *(v1 + 1448) = v209;
      Collection<>.makeIterator()();
      while (1)
      {
        IndexingIterator.next()();
        v203 = *(v1 + 1456);
        if (!v203)
        {
          break;
        }

        *(v1 + 1464) = v203;
        *(v1 + 1472) = [v203 scheduledDoseQuantity];
        if (*(v1 + 1472))
        {
          isa = *(v1 + 1472);
        }

        else
        {
          type metadata accessor for NSNumber();
          isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          if (*(v1 + 1472))
          {
            outlined destroy of HealthKitPersistor((v1 + 1472));
          }
        }

        v202 = [v203 updateForNewDoseQuantity_];
        MEMORY[0x277D82BD8](isa);
        *(v1 + 1480) = v202;
        MEMORY[0x277D82BE0](v202);
        *(v1 + 1488) = v202;
        Array.append(_:)();
        MEMORY[0x277D82BD8](v202);
        MEMORY[0x277D82BD8](v203);
      }

      v199 = *(v1 + 1992);
      v188 = *(v1 + 1984);
      v189 = *(v1 + 1976);
      v44 = *(v1 + 1896);
      v187 = *(v1 + 1856);
      v190 = *(v1 + 2273);
      outlined destroy of [HKQuantityType]((v1 + 968));
      v186 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v189(v44, v186, v187);
      swift_endAccess();
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.debug.getter();
      v195 = swift_allocObject();
      *(v195 + 16) = 0;
      v196 = swift_allocObject();
      *(v196 + 16) = 4;
      v192 = swift_allocObject();
      *(v192 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
      *(v192 + 24) = v191;
      v193 = swift_allocObject();
      *(v193 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v193 + 24) = v192;
      v194 = swift_allocObject();
      *(v194 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v194 + 24) = v193;
      v197 = swift_allocObject();
      *(v197 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
      *(v197 + 24) = v194;
      _allocateUninitializedArray<A>(_:)();
      v198 = v45;

      *v198 = partial apply for closure #1 in OSLogArguments.append(_:);
      v198[1] = v195;

      v198[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v198[3] = v196;

      v198[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v198[5] = v197;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v200, v201))
      {
        v183 = static UnsafeMutablePointer.allocate(capacity:)();
        v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v184 = createStorage<A>(capacity:type:)(0);
        v185 = createStorage<A>(capacity:type:)(0);
        v453 = v183;
        v454 = v184;
        v455 = v185;
        serialize(_:at:)(0, &v453);
        serialize(_:at:)(1, &v453);
        v456 = partial apply for closure #1 in OSLogArguments.append(_:);
        v457 = v195;
        closure #1 in osLogInternal(_:log:type:)(&v456, &v453, &v454, &v455);
        if (v210)
        {
        }

        v456 = partial apply for closure #1 in OSLogArguments.append(_:);
        v457 = v196;
        closure #1 in osLogInternal(_:log:type:)(&v456, &v453, &v454, &v455);
        v456 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        v457 = v197;
        closure #1 in osLogInternal(_:log:type:)(&v456, &v453, &v454, &v455);
        _os_log_impl(&dword_269912000, v200, v201, "Calling writeDoseEvent() for specified time with medStatus: %{BOOL}d", v183, 8u);
        destroyStorage<A>(_:count:)(v184, 0, v182);
        destroyStorage<A>(_:count:)(v185, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v183, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v178 = *(v1 + 2008);
      v179 = *(v1 + 2000);
      v176 = *(v1 + 1896);
      v177 = *(v1 + 1856);
      v180 = *(v1 + 1696);
      MEMORY[0x277D82BD8](v200);
      v179(v176, v177);
      MEMORY[0x277D82BE0](v180);
      v181 = *(v1 + 1440);
      *(v1 + 2144) = v181;

      v46 = swift_task_alloc();
      v47 = v181;
      *(v1 + 2152) = v46;
      *v46 = *(v1 + 1128);
      v46[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v48 = *(v1 + 1696);
      v49 = *(v1 + 2273);
      v481 = *(v1 + 1688);
      v482 = v48;
      v50 = v49 & 1;

      return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v48, v47, v50, 0, 0, 1, 0, 0);
    }

    v173 = *(v1 + 2016);
    swift_beginAccess();
    v174._rawValue = *(v173 + 16);

    swift_endAccess();
    v175 = allLoggedWithMixedStatus(doseEvents:)(v174);

    if (v175)
    {
      goto LABEL_89;
    }

    v169 = *(v1 + 2016);
    v170 = *(v1 + 2273);
    swift_beginAccess();
    v171._rawValue = *(v169 + 16);

    swift_endAccess();
    v172 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v171, v170 & 1);

    if (v172)
    {
LABEL_89:
      v166 = *(v1 + 1992);
      v151 = *(v1 + 1984);
      v152 = *(v1 + 1976);
      v51 = *(v1 + 1888);
      v150 = *(v1 + 1856);
      v147 = *(v1 + 2273);
      v146 = (*(v1 + 2016) + 16);
      swift_beginAccess();
      v145._rawValue = *v146;

      swift_endAccess();
      v153 = allLoggedWithMixedStatus(doseEvents:)(v145);

      *(v1 + 2280) = v153;
      swift_beginAccess();
      v148._rawValue = *v146;

      swift_endAccess();
      v154 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v148, v147 & 1);

      *(v1 + 2288) = v154;
      v149 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v152(v51, v149, v150);
      swift_endAccess();
      v155 = swift_allocObject();
      *(v155 + 16) = v153;
      v157 = swift_allocObject();
      *(v157 + 16) = v154;
      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.debug.getter();
      v159 = swift_allocObject();
      *(v159 + 16) = 32;
      v160 = swift_allocObject();
      *(v160 + 16) = 8;
      v156 = swift_allocObject();
      *(v156 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v156 + 24) = v155;
      v161 = swift_allocObject();
      *(v161 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v161 + 24) = v156;
      v162 = swift_allocObject();
      *(v162 + 16) = 32;
      v163 = swift_allocObject();
      *(v163 + 16) = 8;
      v158 = swift_allocObject();
      *(v158 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v158 + 24) = v157;
      v164 = swift_allocObject();
      *(v164 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v164 + 24) = v158;
      _allocateUninitializedArray<A>(_:)();
      v165 = v52;

      *v165 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165[1] = v159;

      v165[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v165[3] = v160;

      v165[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v165[5] = v161;

      v165[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v165[7] = v162;

      v165[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v165[9] = v163;

      v165[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v165[11] = v164;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v167, v168))
      {
        v142 = static UnsafeMutablePointer.allocate(capacity:)();
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v143 = createStorage<A>(capacity:type:)(0);
        v144 = createStorage<A>(capacity:type:)(2);
        v448 = v142;
        v449 = v143;
        v450 = v144;
        serialize(_:at:)(2, &v448);
        serialize(_:at:)(2, &v448);
        v451 = partial apply for closure #1 in OSLogArguments.append(_:);
        v452 = v159;
        closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
        if (v401)
        {
        }

        v451 = partial apply for closure #1 in OSLogArguments.append(_:);
        v452 = v160;
        closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
        v451 = partial apply for closure #1 in OSLogArguments.append(_:);
        v452 = v161;
        closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
        v451 = partial apply for closure #1 in OSLogArguments.append(_:);
        v452 = v162;
        closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
        v451 = partial apply for closure #1 in OSLogArguments.append(_:);
        v452 = v163;
        closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
        v451 = partial apply for closure #1 in OSLogArguments.append(_:);
        v452 = v164;
        closure #1 in osLogInternal(_:log:type:)(&v451, &v448, &v449, &v450);
        _os_log_impl(&dword_269912000, v167, v168, "Calling either allLoggedWithMixedStatus (%s) or oneExistingStatusWithConflictingRequest (%s)", v142, 0x16u);
        destroyStorage<A>(_:count:)(v143, 0, v141);
        destroyStorage<A>(_:count:)(v144, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v142, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v136 = *(v1 + 2008);
      v137 = *(v1 + 2000);
      v134 = *(v1 + 1888);
      v135 = *(v1 + 1856);
      v138 = (*(v1 + 2016) + 16);
      MEMORY[0x277D82BD8](v167);
      v137(v134, v135);
      *(v1 + 2168) = type metadata accessor for MatchedMedName();
      *(v1 + 1384) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v139 = *v138;

      swift_endAccess();
      *(v1 + 1392) = v139;
      Collection<>.makeIterator()();
      v53 = *(v1 + 2056);
      IndexingIterator.next()();
      v140 = *(v1 + 1400);
      *(v1 + 2176) = v140;
      if (!v140)
      {
        v128 = *(v1 + 2168);
        v131 = *(v1 + 2048);
        v132 = *(v1 + 2016);
        outlined destroy of [HKQuantityType]((v1 + 952));
        type metadata accessor for LogSpecificMedicationsIntentResponse();
        v133 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
        MEMORY[0x277D82BE0](v133);
        *(v1 + 1408) = v133;
        v129 = *(v1 + 1384);

        v130 = Array._bridgeToObjectiveC()().super.isa;

        [v133 setMatchingMeds_];
        MEMORY[0x277D82BD8](v130);
        MEMORY[0x277D82BD8](*(v1 + 1408));
        outlined destroy of [HKQuantityType]((v1 + 1384));

        v289 = v133;
        goto LABEL_121;
      }

      *(v1 + 1416) = v140;
      v54 = swift_task_alloc();
      v55 = v140;
      v433[273] = v54;
      *v54 = v433[141];
      v54[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v56 = v433[212];
      v57 = v433[211];
    }

    else
    {
      v124 = *(v1 + 2016);
      swift_beginAccess();
      v125 = *(v124 + 16);

      swift_endAccess();
      v126 = getUnloggedDoseEvents(doseEvents:)();

      *(v1 + 1224) = v126;
      v127 = Collection.isEmpty.getter();

      if ((v127 & 1) == 0)
      {
        v121 = *(v1 + 2016);
        swift_beginAccess();
        v122 = *(v121 + 16);

        swift_endAccess();
        v123 = getUnloggedDoseEvents(doseEvents:)();
        *(v1 + 2200) = v123;

        *(v1 + 1320) = v123;
        type metadata accessor for HKMedicationExposableDoseEvent();
        *(v1 + 1328) = _allocateUninitializedArray<A>(_:)();

        *(v1 + 1336) = v123;
        Collection<>.makeIterator()();
        while (1)
        {
          IndexingIterator.next()();
          v120 = *(v1 + 1344);
          if (!v120)
          {
            break;
          }

          *(v1 + 1352) = v120;
          *(v1 + 1360) = [v120 scheduledDoseQuantity];
          if (*(v1 + 1360))
          {
            v447 = *(v1 + 1360);
          }

          else
          {
            type metadata accessor for NSNumber();
            v447 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            if (*(v1 + 1360))
            {
              outlined destroy of HealthKitPersistor((v1 + 1360));
            }
          }

          v119 = [v120 updateForNewDoseQuantity_];
          MEMORY[0x277D82BD8](v447);
          *(v1 + 1368) = v119;
          MEMORY[0x277D82BE0](v119);
          *(v1 + 1376) = v119;
          Array.append(_:)();
          MEMORY[0x277D82BD8](v119);
          MEMORY[0x277D82BD8](v120);
        }

        v117 = *(v1 + 1696);
        outlined destroy of [HKQuantityType]((v1 + 936));
        MEMORY[0x277D82BE0](v117);
        v118 = *(v1 + 1328);
        *(v1 + 2208) = v118;

        v58 = swift_task_alloc();
        v47 = v118;
        *(v1 + 2216) = v58;
        *v58 = *(v1 + 1128);
        v58[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
        v48 = *(v1 + 1696);
        v59 = *(v1 + 2273);
        v481 = *(v1 + 1688);
        v482 = v48;
        v50 = v59 & 1;

        return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v48, v47, v50, 0, 0, 1, 0, 0);
      }

      v113 = *(v1 + 1992);
      v111 = *(v1 + 1984);
      v112 = *(v1 + 1976);
      v60 = *(v1 + 1880);
      v110 = *(v1 + 1856);
      v109 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v112(v60, v109, v110);
      swift_endAccess();
      v115 = Logger.logObject.getter();
      v114 = static os_log_type_t.debug.getter();
      v116 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v115, v114))
      {
        v105 = static UnsafeMutablePointer.allocate(capacity:)();
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v106 = createStorage<A>(capacity:type:)(0);
        v107 = createStorage<A>(capacity:type:)(0);
        *(v1 + 1288) = v105;
        *(v1 + 1296) = v106;
        *(v1 + 1304) = v107;
        serialize(_:at:)(0, (v1 + 1288));
        serialize(_:at:)(0, (v1 + 1288));
        *(v1 + 1312) = v116;
        v108 = swift_task_alloc();
        v108[2] = v1 + 1288;
        v108[3] = v1 + 1296;
        v108[4] = v1 + 1304;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v401)
        {
        }

        _os_log_impl(&dword_269912000, v115, v114, "allMedsLoggedAlready, returning code .allMedsLoggedAlready", v105, 2u);
        destroyStorage<A>(_:count:)(v106, 0, v104);
        destroyStorage<A>(_:count:)(v107, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v105, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v98 = *(v1 + 2008);
      v99 = *(v1 + 2000);
      v96 = *(v1 + 1880);
      v97 = *(v1 + 1856);
      v101 = (*(v1 + 2016) + 16);
      MEMORY[0x277D82BD8](v115);
      v99(v96, v97);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v100 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(111, 0);
      *(v1 + 2232) = v100;
      MEMORY[0x277D82BE0](v100);
      *(v1 + 1232) = v100;
      *(v1 + 2240) = type metadata accessor for MatchedMedName();
      *(v1 + 1240) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v102 = *v101;

      swift_endAccess();
      *(v1 + 1248) = v102;
      Collection<>.makeIterator()();
      v61 = *(v1 + 2056);
      IndexingIterator.next()();
      v103 = *(v1 + 1256);
      *(v1 + 2248) = v103;
      if (!v103)
      {
        v90 = *(v1 + 2240);
        v92 = *(v1 + 2232);
        v94 = *(v1 + 2048);
        v95 = *(v1 + 2016);
        outlined destroy of [HKQuantityType]((v1 + 920));
        v91 = *(v1 + 1240);

        v93 = Array._bridgeToObjectiveC()().super.isa;

        [v92 setMatchingMeds_];
        MEMORY[0x277D82BD8](v93);
        outlined destroy of [HKQuantityType]((v1 + 1240));
        MEMORY[0x277D82BD8](*(v1 + 1232));

        v289 = *(v1 + 2232);
        goto LABEL_121;
      }

      *(v1 + 1264) = v103;
      v62 = swift_task_alloc();
      v55 = v103;
      v433[282] = v62;
      *v62 = v433[141];
      v62[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
      v56 = v433[212];
      v57 = v433[211];
    }

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v55, 1, v57, v56);
  }

  v277 = *(v1 + 1992);
  v270 = *(v1 + 1984);
  v271 = *(v1 + 1976);
  v28 = *(v1 + 1920);
  v269 = *(v1 + 1856);
  v268 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v271(v28, v268, v269);
  swift_endAccess();

  v278 = Logger.logObject.getter();
  v279 = static os_log_type_t.debug.getter();
  v273 = swift_allocObject();
  *(v273 + 16) = 0;
  v274 = swift_allocObject();
  *(v274 + 16) = 8;
  v272 = swift_allocObject();
  *(v272 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  *(v272 + 24) = v398;
  v275 = swift_allocObject();
  *(v275 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v275 + 24) = v272;
  _allocateUninitializedArray<A>(_:)();
  v276 = v29;

  *v276 = partial apply for closure #1 in OSLogArguments.append(_:);
  v276[1] = v273;

  v276[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v276[3] = v274;

  v276[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v276[5] = v275;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v278, v279))
  {
    v265 = static UnsafeMutablePointer.allocate(capacity:)();
    v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v266 = createStorage<A>(capacity:type:)(0);
    v267 = createStorage<A>(capacity:type:)(0);
    v459 = v265;
    v460 = v266;
    v461 = v267;
    serialize(_:at:)(0, &v459);
    serialize(_:at:)(1, &v459);
    v462 = partial apply for closure #1 in OSLogArguments.append(_:);
    v463 = v273;
    closure #1 in osLogInternal(_:log:type:)(&v462, &v459, &v460, &v461);
    if (v401)
    {
    }

    v462 = partial apply for closure #1 in OSLogArguments.append(_:);
    v463 = v274;
    closure #1 in osLogInternal(_:log:type:)(&v462, &v459, &v460, &v461);
    v462 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v463 = v275;
    closure #1 in osLogInternal(_:log:type:)(&v462, &v459, &v460, &v461);
    _os_log_impl(&dword_269912000, v278, v279, "Multiple schedules (%ld) found for specified timeframe without name, returning .needsScheduleDisambiguation", v265, 0xCu);
    destroyStorage<A>(_:count:)(v266, 0, v264);
    destroyStorage<A>(_:count:)(v267, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v265, MEMORY[0x277D84B78]);

    v263 = 0;
  }

  else
  {

    v263 = v401;
  }

  v256 = *(v1 + 2008);
  v257 = *(v1 + 2000);
  v254 = *(v1 + 1920);
  v255 = *(v1 + 1856);
  v259 = *(v1 + 1704);
  MEMORY[0x277D82BD8](v278);
  v257(v254, v255);
  *(v1 + 2064) = type metadata accessor for MatchedMedSchedule();
  *(v1 + 1528) = _allocateUninitializedArray<A>(_:)();
  swift_beginAccess();
  v258 = *(v398 + 16);

  swift_endAccess();
  Dictionary.makeIterator()();
  memcpy((v1 + 56), (v1 + 16), 0x28uLL);
  *(v1 + 2072) = v263;
  v261 = *(v1 + 1736);
  v260 = *(v1 + 1728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMd, &_sSD8IteratorVySSSg10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt_GMR);
  Dictionary.Iterator.next()();
  outlined init with take of (key: String?, value: (scheduleDate: Date?, medID: String, count: Int))?(v260, v261);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMR);
  if ((*(*(v262 - 8) + 48))(v261, 1) == 1)
  {
    v227 = *(v1 + 2064);
    v230 = *(v1 + 2048);
    v231 = *(v1 + 2016);
    outlined destroy of [String? : (scheduleDate: Date?, medID: String, count: Int)].Iterator((v1 + 56));
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v232 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(104, 0);
    MEMORY[0x277D82BE0](v232);
    *(v1 + 1536) = v232;
    v228 = *(v1 + 1528);

    v229 = Array._bridgeToObjectiveC()().super.isa;

    [v232 setMatchingSchedules_];
    MEMORY[0x277D82BD8](v229);
    MEMORY[0x277D82BD8](*(v1 + 1536));
    outlined destroy of [HKQuantityType]((v1 + 1528));

    v289 = v232;
    goto LABEL_121;
  }

  v30 = *(v1 + 2064);
  v246 = *(v1 + 1800);
  v31 = *(v1 + 1736);
  v247 = *(v1 + 1720);
  v245 = *(v1 + 1704);
  v244 = *v31;
  v253 = v31[1];
  *(v1 + 2080) = v253;
  v32 = v31 + *(v262 + 48);
  v33 = &v32[*(v245 + 48)];
  v240 = *v33;
  v242 = *(v33 + 1);
  v250 = *&v32[*(v245 + 64)];
  *(v1 + 2088) = v250;
  v241 = &v247[*(v245 + 48)];
  v243 = *(v245 + 64);
  outlined init with take of Date?(v32, v247);
  *v241 = v240;
  *(v241 + 1) = v242;
  *&v247[v243] = v250;
  *(v1 + 984) = v244;
  *(v1 + 992) = v253;
  v34 = &v247[*(v245 + 48)];
  v248 = *v34;
  v249 = v34[1];
  *(v1 + 2096) = v249;
  outlined init with take of Date?(v247, v246);
  *(v1 + 1000) = v248;
  *(v1 + 1008) = v249;
  *(v1 + 1544) = v250;
  v252 = swift_allocObject();
  *(v1 + 2104) = v252;
  *(v1 + 1552) = v252 + 16;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Match", 5uLL, 1);
  INObject.__allocating_init(identifier:display:)(v36, 0, v35);
  v251 = v37;
  MEMORY[0x277D82BE0](v37);
  *(v252 + 16) = v251;
  swift_beginAccess();
  swift_endAccess();

  if (v253)
  {
    v238 = MEMORY[0x26D6492A0](v244);

    v239 = v238;
  }

  else
  {
    v239 = 0;
  }

  v236 = *(v1 + 1800);
  [v251 setScheduleID_];
  MEMORY[0x277D82BD8](v239);
  MEMORY[0x277D82BD8](v251);
  swift_beginAccess();
  v235 = *(v252 + 16);
  MEMORY[0x277D82BE0](v235);
  swift_endAccess();
  v237 = getFormattedTimeString(time:)(v236);
  if (v38)
  {
    v233 = MEMORY[0x26D6492A0](v237);

    v234 = v233;
  }

  else
  {
    v234 = 0;
  }

  [v235 setSchedule_];
  MEMORY[0x277D82BD8](v234);
  MEMORY[0x277D82BD8](v235);
  swift_beginAccess();
  v39 = *(v252 + 16);
  *(v1 + 2112) = v39;
  MEMORY[0x277D82BE0](v39);
  swift_endAccess();

  v40 = swift_task_alloc();
  v433[265] = v40;
  *v40 = v433[141];
  v40[1] = SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:);
  v41 = v433[212];
  v42 = v433[211];

  return SpecificMedicationsPersistor.displayNameFor(identifier:)(v248, v249, v42, v41);
}

{
  v8 = *v1;
  v3 = *(*v1 + 2152);
  v6 = *(*v1 + 2144);
  v7 = *(*v1 + 1696);
  *(v8 + 1128) = *v1;
  *(v8 + 2160) = a1;

  v4 = *(v8 + 1128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 2184);
  *(v6 + 1128) = *v1;
  *(v6 + 2192) = a1;

  v4 = *(v6 + 1128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 2216);
  v6 = *(*v1 + 2208);
  v7 = *(*v1 + 1696);
  *(v8 + 1128) = *v1;
  *(v8 + 2224) = a1;

  v4 = *(v8 + 1128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 2256);
  *(v6 + 1128) = *v1;
  *(v6 + 2264) = a1;

  v4 = *(v6 + 1128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = *(*v2 + 2120);
  v7 = *(*v2 + 2096);
  v8[141] = *v2;
  v8[266] = a1;
  v8[267] = a2;

  v5 = v8[141];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t implicit closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for DateInterval();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  swift_endAccess();
  v1 = type metadata accessor for HKMedicationExposableDoseEvent();
  v5 = MEMORY[0x26D6494A0](v4, v1);

  return v5;
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(void *a1)
{
  v2 = [a1 scheduleItemIdentifier];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(void *a1)
{
  [a1 medicationIdentifier];
  type metadata accessor for HKMedicationIdentifier();
  lazy protocol witness table accessor for type HKMedicationIdentifier and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(void *a1)
{
  [a1 status];
  type metadata accessor for HKMedicationDoseEventStatus();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v6 = *(a1 + 16);

  swift_endAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
  v1 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  v7 = MEMORY[0x26D649210](v6, v4, v5, v1);

  return v7;
}

void __swiftcall INObject.__allocating_init(identifier:display:)(INObject *__return_ptr retstr, Swift::String_optional identifier, Swift::String display)
{
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  object = identifier.value._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc INObject.init(identifier:display:)(countAndFlagsBits, object, display._countAndFlagsBits, display._object);
}

uint64_t SpecificMedicationsPersistor.displayNameFor(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a4;
  v4[31] = a3;
  v4[30] = a2;
  v4[29] = a1;
  v4[18] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[23] = 0;
  v4[28] = 0;
  v5 = type metadata accessor for Logger();
  v4[33] = v5;
  v8 = *(v5 - 8);
  v4[34] = v8;
  v9 = *(v8 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = a4;
  v6 = v4[18];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.displayNameFor(identifier:), 0);
}

uint64_t SpecificMedicationsPersistor.displayNameFor(identifier:)()
{
  v26 = *(v0 + 240);
  *(v0 + 144) = v0;

  if (v26)
  {
    v1 = *(v25 + 240);
    *(v25 + 96) = *(v25 + 232);
    *(v25 + 104) = v1;
    v2 = swift_task_alloc();
    *(v25 + 296) = v2;
    *v2 = *(v25 + 144);
    v2[1] = SpecificMedicationsPersistor.displayNameFor(identifier:);
    v3 = *(v25 + 256);
    v4 = *(v25 + 248);

    return SpecificMedicationsPersistor.UTCQuery()(v4, v3);
  }

  else
  {
    v6 = *(v25 + 288);
    v21 = *(v25 + 264);
    v19 = *(v25 + 272);
    v20 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v19 + 16))(v6, v20, v21);
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
      *(v25 + 152) = buf;
      *(v25 + 160) = v16;
      *(v25 + 168) = v17;
      serialize(_:at:)(0, (v25 + 152));
      serialize(_:at:)(0, (v25 + 152));
      *(v25 + 176) = v24;
      v18 = swift_task_alloc();
      v18[2] = v25 + 152;
      v18[3] = v25 + 160;
      v18[4] = v25 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v23, v22, "Identifier passed into displayNameFor() was nil, returning nil", buf, 2u);
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v25 + 288);
    v12 = *(v25 + 264);
    v10 = *(v25 + 272);
    MEMORY[0x277D82BD8](v23);
    (*(v10 + 8))(v11, v12);
    v7 = *(v25 + 288);
    v13 = *(v25 + 280);

    v8 = *(*(v25 + 144) + 8);
    v9 = *(v25 + 144);

    return v8(0);
  }
}

{
  v1 = v0[38];
  v7 = v0[30];
  v6 = v0[29];
  v0[18] = v0;
  v0[28] = v1;

  v0[16] = v6;
  v0[17] = v7;
  MEMORY[0x26D649240]();
  outlined destroy of String.UTF8View((v0 + 16));
  v9 = v0[14];
  v10 = v0[15];

  v2 = v0[36];
  v8 = v0[35];

  v3 = *(v0[18] + 8);
  v4 = v0[18];

  return v3(v9, v10);
}

{
  v19 = v0[39];
  v1 = v0[35];
  v20 = v0[34];
  v22 = v0[33];
  v2 = v0[30];
  v0[18] = v0;

  v3 = v19;
  v0[23] = v19;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v20 + 16))(v1, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(0);
    *(v18 + 192) = buf;
    *(v18 + 200) = v15;
    *(v18 + 208) = v16;
    serialize(_:at:)(0, (v18 + 192));
    serialize(_:at:)(0, (v18 + 192));
    *(v18 + 216) = v25;
    v17 = swift_task_alloc();
    v17[2] = v18 + 192;
    v17[3] = v18 + 200;
    v17[4] = v18 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Call to UTCQuery() threw, returning nil", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v11 = *(v18 + 312);
  v9 = *(v18 + 280);
  v10 = *(v18 + 264);
  v8 = *(v18 + 272);
  MEMORY[0x277D82BD8](v24);
  (*(v8 + 8))(v9, v10);

  v4 = *(v18 + 288);
  v12 = *(v18 + 280);

  v5 = *(*(v18 + 144) + 8);
  v6 = *(v18 + 144);

  return v5(0);
}

uint64_t SpecificMedicationsPersistor.displayNameFor(identifier:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 296);
  v9[18] = *v2;
  v10 = v9 + 18;
  v9[38] = a1;
  v9[39] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.displayNameFor(identifier:);
  }

  else
  {
    v5 = *v10;
    v6 = SpecificMedicationsPersistor.displayNameFor(identifier:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t implicit closure #9 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  swift_endAccess();
  v4 = [v3 scheduleID];
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
  }

  MEMORY[0x277D82BD8](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #10 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  swift_endAccess();
  v4 = [v3 medName];
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
  }

  MEMORY[0x277D82BD8](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #11 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  MEMORY[0x277D82BE0](v3);
  swift_endAccess();
  v4 = [v3 schedule];
  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
  }

  MEMORY[0x277D82BD8](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #12 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(uint64_t result)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    --result;
  }

  return result;
}

id closure #2 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_opt_self() asNeededExposableDoseEventForMedication:*a1 doseQuantity:a2];
  *a3 = result;
  return result;
}

uint64_t implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(void *a1)
{
  [a1 doseQuantity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(void *a1)
{
  [a1 scheduledDoseQuantity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(void *a1)
{
  [a1 logOrigin];
  type metadata accessor for HKMedicationDoseEventLogOrigin();
  return String.init<A>(describing:)();
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 328) = a4;
  *(v5 + 320) = a3;
  *(v5 + 312) = a5;
  *(v5 + 304) = a2;
  *(v5 + 296) = a1;
  *(v5 + 200) = v5;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 208) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 248) = 0;
  *(v5 + 264) = 0;
  *(v5 + 288) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 336) = v6;
  v9 = *(v6 - 8);
  *(v5 + 344) = v9;
  v10 = *(v9 + 64);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  *(v5 + 208) = a5;
  *(v5 + 152) = a3;
  *(v5 + 160) = a4;
  v7 = *(v5 + 200);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:), 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)()
{
  v29 = *(v0 + 304);
  *(v0 + 200) = v0;

  if (v29)
  {
    v1 = *(v28 + 304);
    *(v28 + 168) = *(v28 + 296);
    *(v28 + 176) = v1;
    v2 = swift_task_alloc();
    *(v28 + 392) = v2;
    *v2 = *(v28 + 200);
    v2[1] = SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
    v3 = *(v28 + 328);
    v4 = *(v28 + 320);

    return SpecificMedicationsPersistor.doUTCQueryForMedications()(v4, v3);
  }

  else
  {
    v6 = *(v28 + 360);
    v24 = *(v28 + 336);
    v22 = *(v28 + 344);
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v22 + 16))(v6, v23, v24);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0);
      v20 = createStorage<A>(capacity:type:)(0);
      *(v28 + 216) = buf;
      *(v28 + 224) = v19;
      *(v28 + 232) = v20;
      serialize(_:at:)(0, (v28 + 216));
      serialize(_:at:)(0, (v28 + 216));
      *(v28 + 240) = v27;
      v21 = swift_task_alloc();
      v21[2] = v28 + 216;
      v21[3] = v28 + 224;
      v21[4] = v28 + 232;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v25, "medicationID passed into getAsNeededDosageUnitFromHealthApp was nil, returning nil", buf, 2u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v28 + 360);
    v12 = *(v28 + 336);
    v10 = *(v28 + 344);
    MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12);
    v7 = *(v28 + 384);
    v13 = *(v28 + 376);
    v14 = *(v28 + 368);
    v15 = *(v28 + 360);
    v16 = *(v28 + 352);

    v8 = *(*(v28 + 200) + 8);
    v9 = *(v28 + 200);

    return v8(0);
  }
}

{
  v103 = v0;
  v1 = v0[51];
  v2 = v0[50];
  v85 = v0[38];
  v84 = v0[37];
  v0[25] = v0;
  v0[32] = v2;

  v86 = swift_task_alloc();
  *(v86 + 16) = v84;
  *(v86 + 24) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v87 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
    v14 = *(v83 + 304);
  }

  else
  {
    v81 = *(v83 + 304);

    *(v83 + 264) = v87;
    *(v83 + 272) = v87;
    lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
    Collection.first.getter();
    v82 = *(v83 + 280);
    if (v82)
    {
      v78 = [v82 medication];
      MEMORY[0x277D82BD8](v82);
      v79 = [v78 loggingUnit];
      MEMORY[0x277D82BD8](v78);
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    if (v80)
    {
      v3 = *(v83 + 384);
      v68 = *(v83 + 336);
      v66 = *(v83 + 344);
      *(v83 + 288) = v80;
      v67 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v69 = *(v66 + 16);
      v69(v3, v67, v68);
      swift_endAccess();
      MEMORY[0x277D82BE0](v80);
      v70 = swift_allocObject();
      *(v70 + 16) = v80;
      oslog = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      v72 = swift_allocObject();
      *(v72 + 16) = 32;
      v73 = swift_allocObject();
      *(v73 + 16) = 8;
      v71 = swift_allocObject();
      *(v71 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
      *(v71 + 24) = v70;
      v74 = swift_allocObject();
      *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v74 + 24) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v75 = v4;

      *v75 = partial apply for closure #1 in OSLogArguments.append(_:);
      v75[1] = v72;

      v75[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v75[3] = v73;

      v75[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v75[5] = v74;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v77))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v64 = createStorage<A>(capacity:type:)(0);
        v65 = createStorage<A>(capacity:type:)(1);
        v98 = buf;
        v99 = v64;
        v100 = v65;
        serialize(_:at:)(2, &v98);
        serialize(_:at:)(1, &v98);
        v101 = partial apply for closure #1 in OSLogArguments.append(_:);
        v102 = v72;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v98, &v99, &v100);
        v101 = partial apply for closure #1 in OSLogArguments.append(_:);
        v102 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v98, &v99, &v100);
        v101 = partial apply for closure #1 in OSLogArguments.append(_:);
        v102 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v98, &v99, &v100);
        _os_log_impl(&dword_269912000, oslog, v77, "getAsNeededDosageUnit had raw unit of %s", buf, 0xCu);
        destroyStorage<A>(_:count:)(v64, 0, v62);
        destroyStorage<A>(_:count:)(v65, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v58 = *(v83 + 384);
      v59 = *(v83 + 336);
      fora = *(v83 + 312);
      v57 = *(v83 + 344);
      MEMORY[0x277D82BD8](oslog);
      v60 = *(v57 + 8);
      v60(v58, v59);
      v5 = HKMedicationLoggingUnit.getDisplayUnit(for:)(fora);
      if (v5.value._object)
      {
        v55 = *(v83 + 304);
        *(v83 + 184) = v5;
        MEMORY[0x277D82BD8](v80);

        v56 = v5;
      }

      else
      {
        v6 = *(v83 + 376);
        v46 = *(v83 + 336);
        v45 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        v69(v6, v45, v46);
        swift_endAccess();
        MEMORY[0x277D82BE0](v80);
        v47 = swift_allocObject();
        *(v47 + 16) = v80;
        log = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        v49 = swift_allocObject();
        *(v49 + 16) = 64;
        v50 = swift_allocObject();
        *(v50 + 16) = 8;
        v48 = swift_allocObject();
        *(v48 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
        *(v48 + 24) = v47;
        v51 = swift_allocObject();
        *(v51 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
        *(v51 + 24) = v48;
        _allocateUninitializedArray<A>(_:)();
        v52 = v7;

        *v52 = partial apply for closure #1 in OSLogArguments.append(_:);
        v52[1] = v49;

        v52[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v52[3] = v50;

        v52[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v52[5] = v51;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(log, v54))
        {
          v42 = static UnsafeMutablePointer.allocate(capacity:)();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v43 = createStorage<A>(capacity:type:)(1);
          v44 = createStorage<A>(capacity:type:)(0);
          v93 = v42;
          v94 = v43;
          v95 = v44;
          serialize(_:at:)(2, &v93);
          serialize(_:at:)(1, &v93);
          v96 = partial apply for closure #1 in OSLogArguments.append(_:);
          v97 = v49;
          closure #1 in osLogInternal(_:log:type:)(&v96, &v93, &v94, &v95);
          v96 = partial apply for closure #1 in OSLogArguments.append(_:);
          v97 = v50;
          closure #1 in osLogInternal(_:log:type:)(&v96, &v93, &v94, &v95);
          v96 = partial apply for closure #1 in OSLogArguments.append(_:);
          v97 = v51;
          closure #1 in osLogInternal(_:log:type:)(&v96, &v93, &v94, &v95);
          _os_log_impl(&dword_269912000, log, v54, "Failed to find or map displayDosageUnit, here's dosageUnit: %@", v42, 0xCu);
          destroyStorage<A>(_:count:)(v43, 1, v41);
          destroyStorage<A>(_:count:)(v44, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v42, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v38 = *(v83 + 376);
        v39 = *(v83 + 336);
        v40 = *(v83 + 304);
        MEMORY[0x277D82BD8](log);
        v60(v38, v39);
        MEMORY[0x277D82BD8](v80);

        v56.value._countAndFlagsBits = 0;
        v56.value._object = 0;
      }
    }

    else
    {
      v8 = *(v83 + 368);
      v29 = *(v83 + 336);
      v27 = *(v83 + 344);
      v28 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v27 + 16))(v8, v28, v29);
      swift_endAccess();

      v30 = swift_allocObject();
      *(v30 + 16) = v87;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = 32;
      v33 = swift_allocObject();
      *(v33 + 16) = 8;
      v31 = swift_allocObject();
      *(v31 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
      *(v31 + 24) = v30;
      v34 = swift_allocObject();
      *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v34 + 24) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v35 = v9;

      *v35 = partial apply for closure #1 in OSLogArguments.append(_:);
      v35[1] = v32;

      v35[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v35[3] = v33;

      v35[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v35[5] = v34;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v36, v37))
      {
        v24 = static UnsafeMutablePointer.allocate(capacity:)();
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v25 = createStorage<A>(capacity:type:)(0);
        v26 = createStorage<A>(capacity:type:)(1);
        v88 = v24;
        v89 = v25;
        v90 = v26;
        serialize(_:at:)(2, &v88);
        serialize(_:at:)(1, &v88);
        v91 = partial apply for closure #1 in OSLogArguments.append(_:);
        v92 = v32;
        closure #1 in osLogInternal(_:log:type:)(&v91, &v88, &v89, &v90);
        v91 = partial apply for closure #1 in OSLogArguments.append(_:);
        v92 = v33;
        closure #1 in osLogInternal(_:log:type:)(&v91, &v88, &v89, &v90);
        v91 = partial apply for closure #1 in OSLogArguments.append(_:);
        v92 = v34;
        closure #1 in osLogInternal(_:log:type:)(&v91, &v88, &v89, &v90);
        _os_log_impl(&dword_269912000, v36, v37, "Failed to find or map dosageUnit, here's the med: %s", v24, 0xCu);
        destroyStorage<A>(_:count:)(v25, 0, v23);
        destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v24, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v20 = *(v83 + 368);
      v21 = *(v83 + 336);
      v22 = *(v83 + 304);
      v19 = *(v83 + 344);
      MEMORY[0x277D82BD8](v36);
      (*(v19 + 8))(v20, v21);

      v56.value._countAndFlagsBits = 0;
      v56.value._object = 0;
    }

    v10 = *(v83 + 384);
    v15 = *(v83 + 376);
    v16 = *(v83 + 368);
    v17 = *(v83 + 360);
    v18 = *(v83 + 352);

    v11 = *(*(v83 + 200) + 8);
    v12 = *(v83 + 200);

    return v11(v56.value._countAndFlagsBits, v56.value._object);
  }
}

{
  v41 = v0;
  v26 = v0[51];
  v1 = v0[44];
  v23 = v0[43];
  v25 = v0[42];
  v0[25] = v0;
  v2 = v26;
  v0[31] = v26;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v23 + 16))(v1, v24, v25);
  swift_endAccess();
  v3 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
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
    _os_log_impl(&dword_269912000, v34, v35, "Error getting as needed dosage unit: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 1, v18);
    destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v22[51];
  v10 = v22[44];
  v11 = v22[42];
  v13 = v22[38];
  v9 = v22[43];
  MEMORY[0x277D82BD8](v34);
  (*(v9 + 8))(v10, v11);

  v5 = v22[48];
  v14 = v22[47];
  v15 = v22[46];
  v16 = v22[45];
  v17 = v22[44];

  v6 = *(v22[25] + 8);
  v7 = v22[25];

  return v6(0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 392);
  v9[25] = *v2;
  v10 = v9 + 25;
  v9[50] = a1;
  v9[51] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
  }

  else
  {
    v5 = *v10;
    v6 = SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a2;
  v4[41] = a1;
  v4[29] = v4;
  v4[19] = 0;
  v4[20] = 0;
  v4[21] = 0;
  v4[22] = 0;
  v4[30] = 0;
  v4[32] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[39] = 0;
  v4[40] = 0;
  v4[27] = 0;
  v4[28] = 0;
  v5 = type metadata accessor for Logger();
  v4[43] = v5;
  v8 = *(v5 - 8);
  v4[44] = v8;
  v9 = *(v8 + 64);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
  v6 = swift_task_alloc();
  *(v12 + 384) = v6;
  *v6 = *(v12 + 232);
  v6[1] = SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:);

  return SpecificMedicationsPersistor.doUTCQueryForMedications()(a3, a4);
}

uint64_t SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 384);
  v9[29] = *v2;
  v10 = v9 + 29;
  v9[49] = a1;
  v9[50] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:);
  }

  else
  {
    v5 = *v10;
    v6 = SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)()
{
  v89 = v0;
  v1 = v0[50];
  v2 = v0[49];
  v81 = v0[42];
  v80 = v0[41];
  v0[29] = v0;
  v0[31] = v2;

  v82 = swift_task_alloc();
  *(v82 + 16) = v80;
  *(v82 + 24) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v83 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
    v22 = *(v79 + 336);
  }

  else
  {
    v77 = *(v79 + 336);

    *(v79 + 256) = v83;
    *(v79 + 264) = v83;
    lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
    Collection.first.getter();
    v78 = *(v79 + 272);
    if (v78)
    {
      v74 = [v78 medication];
      MEMORY[0x277D82BD8](v78);
      v75 = [v74 displayNameComponents];
      MEMORY[0x277D82BD8](v74);
      v76 = [v75 displayStrength];
      if (v76)
      {
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v3;
        MEMORY[0x277D82BD8](v76);
        v72 = v70;
        v73 = v71;
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }

      MEMORY[0x277D82BD8](v75);
      v68 = v72;
      v69 = v73;
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    if (v69)
    {
      *(v79 + 184) = v68;
      *(v79 + 192) = v69;
      *(v79 + 200) = v68;
      *(v79 + 208) = v69;
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
      v66 = lazy protocol witness table accessor for type String and conformance String();
      v65 = MEMORY[0x277D837D0];
      v64 = default argument 1 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v5 = default argument 2 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v67 = MEMORY[0x26D649820](v4._countAndFlagsBits, v4._object, v64, v5 & 1, v65, v66);

      *(v79 + 312) = v67;
      if (MEMORY[0x26D6494A0]() == 2)
      {
        Array.subscript.getter();
        v6 = *(v79 + 16);
        v7 = *(v79 + 24);
        v8 = *(v79 + 32);
        v9 = *(v79 + 40);
        v63 = Double.init(_:)();
        if (v10)
        {

          v60 = 0;
          v61 = 0;
          v62 = 0;
        }

        else
        {
          *(v79 + 320) = v63;
          Array.subscript.getter();
          v11 = *(v79 + 48);
          v12 = *(v79 + 56);
          v13 = *(v79 + 64);
          v57 = *(v79 + 72);
          v58 = String.init(_:)();
          v59 = v14;

          *(v79 + 216) = v58;
          *(v79 + 224) = v59;

          v60 = v63;
          v61 = v58;
          v62 = v59;
        }
      }

      else
      {
        v15 = *(v79 + 376);
        v48 = *(v79 + 344);
        v46 = *(v79 + 352);
        v47 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v46 + 16))(v15, v47, v48);
        swift_endAccess();

        v49 = swift_allocObject();
        *(v49 + 16) = v68;
        *(v49 + 24) = v69;
        oslog = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v54 = v16;

        *v54 = partial apply for closure #1 in OSLogArguments.append(_:);
        v54[1] = v51;

        v54[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v54[3] = v52;

        v54[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v54[5] = v53;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(oslog, v56))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v44 = createStorage<A>(capacity:type:)(0);
          v45 = createStorage<A>(capacity:type:)(1);
          v84 = buf;
          v85 = v44;
          v86 = v45;
          serialize(_:at:)(2, &v84);
          serialize(_:at:)(1, &v84);
          v87 = partial apply for closure #1 in OSLogArguments.append(_:);
          v88 = v51;
          closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
          v87 = partial apply for closure #1 in OSLogArguments.append(_:);
          v88 = v52;
          closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
          v87 = partial apply for closure #1 in OSLogArguments.append(_:);
          v88 = v53;
          closure #1 in osLogInternal(_:log:type:)(&v87, &v84, &v85, &v86);
          _os_log_impl(&dword_269912000, oslog, v56, "Unexpected displayStrength string format: %s", buf, 0xCu);
          destroyStorage<A>(_:count:)(v44, 0, v42);
          destroyStorage<A>(_:count:)(v45, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v40 = *(v79 + 376);
        v41 = *(v79 + 344);
        v39 = *(v79 + 352);
        MEMORY[0x277D82BD8](oslog);
        (*(v39 + 8))(v40, v41);

        v60 = 0;
        v61 = 0;
        v62 = 0;
      }
    }

    else
    {
      v17 = *(v79 + 368);
      v35 = *(v79 + 344);
      v33 = *(v79 + 352);
      v34 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v33 + 16))(v17, v34, v35);
      swift_endAccess();
      log = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v38 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v36))
      {
        v29 = static UnsafeMutablePointer.allocate(capacity:)();
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v30 = createStorage<A>(capacity:type:)(0);
        v31 = createStorage<A>(capacity:type:)(0);
        *(v79 + 280) = v29;
        *(v79 + 288) = v30;
        *(v79 + 296) = v31;
        serialize(_:at:)(0, (v79 + 280));
        serialize(_:at:)(0, (v79 + 280));
        *(v79 + 304) = v38;
        v32 = swift_task_alloc();
        v32[2] = v79 + 280;
        v32[3] = v79 + 288;
        v32[4] = v79 + 296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, log, v36, "getAsNeededStrengthFromHealthApp: Couldn't find displayStrength in UserTrackedMeds", v29, 2u);
        destroyStorage<A>(_:count:)(v30, 0, v28);
        destroyStorage<A>(_:count:)(v31, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v29, MEMORY[0x277D84B78]);
      }

      v26 = *(v79 + 368);
      v27 = *(v79 + 344);
      v25 = *(v79 + 352);
      MEMORY[0x277D82BD8](log);
      (*(v25 + 8))(v26, v27);

      v60 = 0;
      v61 = 0;
      v62 = 0;
    }

    v18 = *(v79 + 376);
    v23 = *(v79 + 368);
    v24 = *(v79 + 360);

    v19 = *(*(v79 + 232) + 8);
    v20 = *(v79 + 232);

    return v19(v60, v61, v62);
  }
}

{
  v38 = v0;
  v23 = v0[50];
  v1 = v0[45];
  v20 = v0[44];
  v22 = v0[43];
  v0[29] = v0;
  v2 = v23;
  v0[30] = v23;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v20 + 16))(v1, v21, v22);
  swift_endAccess();
  v3 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v4;

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
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1);
    v18 = createStorage<A>(capacity:type:)(0);
    v33 = buf;
    v34 = v17;
    v35 = v18;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_269912000, v31, v32, "Error doing UTC Query for Medications: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v19[50];
  v10 = v19[45];
  v11 = v19[43];
  v9 = v19[44];
  MEMORY[0x277D82BD8](v31);
  (*(v9 + 8))(v10, v11);

  v5 = v19[47];
  v13 = v19[46];
  v14 = v19[45];

  v6 = *(v19[29] + 8);
  v7 = v19[29];

  return v6(0, 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[56] = a4;
  v4[55] = a3;
  v4[54] = a2;
  v4[53] = a1;
  v4[23] = v4;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[21] = 0;
  v4[22] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[40] = 0;
  v4[47] = 0;
  v4[48] = 0;
  v5 = type metadata accessor for Logger();
  v4[57] = v5;
  v17 = *(v5 - 8);
  v4[58] = v17;
  v18 = *(v17 + 64);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v4[64] = v6;
  v19 = *(v6 - 8);
  v4[65] = v19;
  v7 = *(v19 + 64) + 15;
  v4[66] = swift_task_alloc();
  v8 = type metadata accessor for Calendar();
  v4[67] = v8;
  v20 = *(v8 - 8);
  v4[68] = v20;
  v9 = *(v20 + 64) + 15;
  v4[69] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v4[70] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR) - 8) + 64) + 15;
  v4[71] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15;
  v4[72] = swift_task_alloc();
  v13 = type metadata accessor for DateComponents();
  v4[73] = v13;
  v21 = *(v13 - 8);
  v4[74] = v21;
  v22 = *(v21 + 64);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v4[77] = v14;
  v23 = *(v14 - 8);
  v4[78] = v23;
  v24 = *(v23 + 64);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
  v15 = v4[23];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:), 0);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)()
{
  v136 = v0;
  v131 = "Fatal error";
  v132 = "Unexpectedly found nil while unwrapping an Optional value";
  v133 = "SiriWellnessIntents/LogSpecificMedicationsIntentHandler.swift";
  v134 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v135 = *(v0 + 432);
  *(v0 + 184) = v0;

  if (v135)
  {
    v1 = v130;
    v109 = *(v130 + 432);
    v2 = v109;
    v118 = *(v130 + 656);
    v3 = *(v130 + 624);
    v129 = *(v130 + 616);
    v117 = *(v130 + 608);
    v120 = *(v130 + 600);
    v4 = *(v130 + 592);
    v121 = *(v130 + 584);
    v111 = *(v130 + 576);
    v112 = *(v130 + 568);
    v127 = *(v130 + 560);
    v123 = *(v130 + 552);
    v5 = *(v130 + 544);
    v124 = *(v130 + 536);
    v6 = *(v130 + 424);
    v126 = v3;
    v116 = v4;
    v119 = v4;
    v110 = v5;
    v122 = v5;
    v125 = v130 + 168;
    *(v130 + 168) = v6;
    *(v1 + 176) = v2;
    Date.init()();
    v7 = *(v110 + 56);
    v128 = 1;
    v7(v111, 1, 1, v124);
    v113 = 0;
    v8 = type metadata accessor for TimeZone();
    (*(*(v8 - 8) + 56))(v112, 1);
    v114 = &v37;
    v37 = 0;
    v115 = 1;
    LOBYTE(v38) = 1;
    v39 = 0;
    v40 = 1;
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v44 = 1;
    v45 = 0;
    v46 = 1;
    v47 = 0;
    v48 = 1;
    v49 = 0;
    v50 = 1;
    v51 = 0;
    v52 = 1;
    v53 = 0;
    v54 = 1;
    v55 = 0;
    v56 = 1;
    v57 = 0;
    v58 = 1;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();
    static Calendar.current.getter();
    (*(v116 + 16))(v120, v117, v121);
    default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
    Calendar.date(byAdding:to:wrappingComponents:)();
    v9 = v120;
    v10 = v121;
    v11 = v130;
    v12 = v119 + 8;
    v13 = *(v119 + 8);
    *(v130 + 664) = v13;
    *(v11 + 672) = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v10);
    (*(v122 + 8))(v123, v124);
    if ((*(v126 + 48))(v127, v128, v129) == 1)
    {
      LOBYTE(v37) = 2;
      v38 = 966;
      LODWORD(v39) = 0;
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      v100 = *(v130 + 656);
      v99 = *(v130 + 648);
      v106 = *(v130 + 640);
      v105 = *(v130 + 632);
      v15 = *(v130 + 624);
      v101 = *(v130 + 616);
      v16 = *(v130 + 560);
      v104 = *(v130 + 528);
      v107 = *(v130 + 424);
      v98 = v15;
      (*(v15 + 32))();
      v103 = *(v98 + 16);
      v102 = v98 + 16;
      v103(v106, v99, v101);
      v103(v105, v100, v101);
      DateInterval.init(start:end:)();
      type metadata accessor for HKMedicationIdentifier();

      v108 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
      *(v130 + 680) = v108;
      v17 = swift_task_alloc();
      v18 = v130;
      v19 = v108;
      *(v130 + 688) = v17;
      *v17 = v18[23];
      v17[1] = SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:);
      v20 = v18[66];
      v21 = v18[56];
      v22 = v18[55];

      return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v20, v19, v22, v21);
    }
  }

  else
  {
    v23 = *(v130 + 480);
    v24 = *(v130 + 464);
    v93 = *(v130 + 456);
    v91 = v24;
    v92 = Logger.wellnessIntents.unsafeMutableAddressor();
    v94 = v130 + 16;
    swift_beginAccess();
    (*(v91 + 16))(v23, v92, v93);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v97 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v95))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v81 = 0;
      v83 = createStorage<A>(capacity:type:)(0);
      v25 = createStorage<A>(capacity:type:)(0);
      v26 = v83;
      v27 = v130;
      v84 = v25;
      v28 = (v130 + 192);
      v86 = (v130 + 192);
      *(v130 + 192) = buf;
      v87 = v27 + 200;
      *(v27 + 200) = v26;
      v88 = v27 + 208;
      *(v27 + 208) = v25;
      v85 = 0;
      serialize(_:at:)(0, v28);
      serialize(_:at:)(0, v86);
      *(v130 + 216) = v97;
      v29 = swift_task_alloc();
      v30 = v87;
      v31 = v88;
      v89 = v29;
      v29[2] = v86;
      v29[3] = v30;
      v29[4] = v31;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v95, "medicationID passed into getAsNeededDosageFromHealthApp was nil, returning 1.0", buf, 2u);
      v79 = 0;
      destroyStorage<A>(_:count:)(v83, 0, v80);
      destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v60 = *(v130 + 480);
    v32 = *(v130 + 464);
    v61 = *(v130 + 456);
    v59 = v32;
    MEMORY[0x277D82BD8](oslog);
    (*(v59 + 8))(v60, v61);
    v77 = v130 + 136;
    v78 = v130 + 152;
    v33 = *(v130 + 656);
    v62 = *(v130 + 648);
    v63 = *(v130 + 640);
    v64 = *(v130 + 632);
    v65 = *(v130 + 608);
    v66 = *(v130 + 600);
    v67 = *(v130 + 576);
    v68 = *(v130 + 568);
    v69 = *(v130 + 560);
    v70 = *(v130 + 552);
    v71 = *(v130 + 528);
    v72 = *(v130 + 504);
    v73 = *(v130 + 496);
    v74 = *(v130 + 488);
    v75 = *(v130 + 480);
    v76 = *(v130 + 472);

    v34 = *(*(v130 + 184) + 8);
    v35 = *(v130 + 184);
    v36.n128_u64[0] = 1.0;

    return v34(v36);
  }
}

{
  v139 = v0[87];
  v0[23] = v0;

  v0[28] = v139;
  v0[30] = v139;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v140 = Collection.isEmpty.getter();

  if (v140)
  {
    v9 = *(v137 + 488);
    v53 = *(v137 + 456);
    v51 = *(v137 + 464);
    v52 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v51 + 16))(v9, v52, v53);
    swift_endAccess();
    log = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v56 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v54))
    {
      v10 = *(v137 + 704);
      v47 = static UnsafeMutablePointer.allocate(capacity:)();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = createStorage<A>(capacity:type:)(0);
      v49 = createStorage<A>(capacity:type:)(0);
      *(v137 + 248) = v47;
      *(v137 + 256) = v48;
      *(v137 + 264) = v49;
      serialize(_:at:)(0, (v137 + 248));
      serialize(_:at:)(0, (v137 + 248));
      *(v137 + 272) = v56;
      v50 = swift_task_alloc();
      v50[2] = v137 + 248;
      v50[3] = v137 + 256;
      v50[4] = v137 + 264;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v10)
      {
      }

      _os_log_impl(&dword_269912000, log, v54, "No previously logged As Needed dose events in health app. Falling back to dosage == 1.", v47, 2u);
      destroyStorage<A>(_:count:)(v48, 0, v46);
      destroyStorage<A>(_:count:)(v49, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v47, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v40 = *(v137 + 672);
    v41 = *(v137 + 664);
    v42 = *(v137 + 656);
    v37 = *(v137 + 648);
    v43 = *(v137 + 616);
    v38 = *(v137 + 608);
    v39 = *(v137 + 584);
    v35 = *(v137 + 528);
    v34 = *(v137 + 512);
    v31 = *(v137 + 488);
    v32 = *(v137 + 456);
    v45 = *(v137 + 432);
    v36 = *(v137 + 624);
    v33 = *(v137 + 520);
    v30 = *(v137 + 464);
    MEMORY[0x277D82BD8](log);
    (*(v30 + 8))(v31, v32);
    outlined destroy of [HKQuantityType]((v137 + 224));
    (*(v33 + 8))(v35, v34);
    v44 = *(v36 + 8);
    v44(v37, v43);
    v41(v38, v39);
    v44(v42, v43);

    v121 = 1.0;
    goto LABEL_29;
  }

  v135 = *(v137 + 224);

  *(v137 + 280) = v135;
  Collection.first.getter();
  v136 = *(v137 + 288);

  if (v136)
  {
    v133 = [v136 scheduledDoseQuantity];
    MEMORY[0x277D82BD8](v136);
    v134 = v133;
  }

  else
  {
    v134 = 0;
  }

  if (!v134)
  {
    v4 = *(v137 + 704);
    v102 = *(v137 + 224);

    *(v137 + 304) = v102;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    result = Sequence.sorted(by:)();
    v103 = result;
    if (v4)
    {
      return result;
    }

    outlined destroy of [HKQuantityType]((v137 + 304));
    *(v137 + 312) = v103;
    v6 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    MEMORY[0x26D649280](v138, v6);
    v100 = *(v137 + 296);
    *(v137 + 320) = v100;
    *(v137 + 328) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
    lazy protocol witness table accessor for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>();
    Collection.first.getter();
    v101 = *(v137 + 336);
    if (v101)
    {
      v98 = [v101 doseQuantity];
      MEMORY[0x277D82BD8](v101);
      v99 = v98;
    }

    else
    {
      v99 = 0;
    }

    if (v99)
    {
      v91 = *(v137 + 672);
      v92 = *(v137 + 664);
      v93 = *(v137 + 656);
      v88 = *(v137 + 648);
      v94 = *(v137 + 616);
      v89 = *(v137 + 608);
      v90 = *(v137 + 584);
      v86 = *(v137 + 528);
      v85 = *(v137 + 512);
      v96 = *(v137 + 432);
      v87 = *(v137 + 624);
      v84 = *(v137 + 520);
      *(v137 + 376) = v99;
      [v99 doubleValue];
      v97 = v7;
      MEMORY[0x277D82BD8](v99);

      outlined destroy of [HKQuantityType]((v137 + 224));
      (*(v84 + 8))(v86, v85);
      v95 = *(v87 + 8);
      v95(v88, v94);
      v92(v89, v90);
      v95(v93, v94);

      v121 = v97;
    }

    else
    {
      v8 = *(v137 + 496);
      v80 = *(v137 + 456);
      v78 = *(v137 + 464);
      v79 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v78 + 16))(v8, v79, v80);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v83 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v81))
      {
        v74 = static UnsafeMutablePointer.allocate(capacity:)();
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v75 = createStorage<A>(capacity:type:)(0);
        v76 = createStorage<A>(capacity:type:)(0);
        *(v137 + 344) = v74;
        *(v137 + 352) = v75;
        *(v137 + 360) = v76;
        serialize(_:at:)(0, (v137 + 344));
        serialize(_:at:)(0, (v137 + 344));
        *(v137 + 368) = v83;
        v77 = swift_task_alloc();
        v77[2] = v137 + 344;
        v77[3] = v137 + 352;
        v77[4] = v137 + 360;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, oslog, v81, "No previously logged As Needed dose events in health app. Falling back to dosage == 1.", v74, 2u);
        destroyStorage<A>(_:count:)(v75, 0, v73);
        destroyStorage<A>(_:count:)(v76, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v74, MEMORY[0x277D84B78]);
      }

      v67 = *(v137 + 672);
      v68 = *(v137 + 664);
      v69 = *(v137 + 656);
      v64 = *(v137 + 648);
      v70 = *(v137 + 616);
      v65 = *(v137 + 608);
      v66 = *(v137 + 584);
      v62 = *(v137 + 528);
      v61 = *(v137 + 512);
      v58 = *(v137 + 496);
      v59 = *(v137 + 456);
      v72 = *(v137 + 432);
      v63 = *(v137 + 624);
      v60 = *(v137 + 520);
      v57 = *(v137 + 464);
      MEMORY[0x277D82BD8](oslog);
      (*(v57 + 8))(v58, v59);

      outlined destroy of [HKQuantityType]((v137 + 224));
      (*(v60 + 8))(v62, v61);
      v71 = *(v63 + 8);
      v71(v64, v70);
      v68(v65, v66);
      v71(v69, v70);

      v121 = 1.0;
    }

    goto LABEL_29;
  }

  v1 = *(v137 + 504);
  v129 = *(v137 + 456);
  v127 = *(v137 + 464);
  *(v137 + 384) = v134;
  v128 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v127 + 16))(v1, v128, v129);
  swift_endAccess();
  v131 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v132 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(v131, v130))
  {

    goto LABEL_10;
  }

  v2 = *(v137 + 704);
  buf = static UnsafeMutablePointer.allocate(capacity:)();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v124 = createStorage<A>(capacity:type:)(0);
  v125 = createStorage<A>(capacity:type:)(0);
  *(v137 + 392) = buf;
  *(v137 + 400) = v124;
  *(v137 + 408) = v125;
  serialize(_:at:)(0, (v137 + 392));
  serialize(_:at:)(0, (v137 + 392));
  *(v137 + 416) = v132;
  v126 = swift_task_alloc();
  v126[2] = v137 + 392;
  v126[3] = v137 + 400;
  v126[4] = v137 + 408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  if (v2)
  {
  }

  _os_log_impl(&dword_269912000, v131, v130, "This is a scheduled med. Whether being taken per schedule or As Needed, return the scheduledDoseQuantity.", buf, 2u);
  destroyStorage<A>(_:count:)(v124, 0, v122);
  destroyStorage<A>(_:count:)(v125, 0, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_10:
  v114 = *(v137 + 672);
  v115 = *(v137 + 664);
  v116 = *(v137 + 656);
  v111 = *(v137 + 648);
  v117 = *(v137 + 616);
  v112 = *(v137 + 608);
  v113 = *(v137 + 584);
  v109 = *(v137 + 528);
  v108 = *(v137 + 512);
  v105 = *(v137 + 504);
  v106 = *(v137 + 456);
  v119 = *(v137 + 432);
  v110 = *(v137 + 624);
  v107 = *(v137 + 520);
  v104 = *(v137 + 464);
  MEMORY[0x277D82BD8](v131);
  (*(v104 + 8))(v105, v106);
  [v134 doubleValue];
  v120 = v3;
  MEMORY[0x277D82BD8](v134);
  outlined destroy of [HKQuantityType]((v137 + 224));
  (*(v107 + 8))(v109, v108);
  v118 = *(v110 + 8);
  v118(v111, v117);
  v115(v112, v113);
  v118(v116, v117);

  v121 = v120;
LABEL_29:
  v11 = *(v137 + 656);
  v15 = *(v137 + 648);
  v16 = *(v137 + 640);
  v17 = *(v137 + 632);
  v18 = *(v137 + 608);
  v19 = *(v137 + 600);
  v20 = *(v137 + 576);
  v21 = *(v137 + 568);
  v22 = *(v137 + 560);
  v23 = *(v137 + 552);
  v24 = *(v137 + 528);
  v25 = *(v137 + 504);
  v26 = *(v137 + 496);
  v27 = *(v137 + 488);
  v28 = *(v137 + 480);
  v29 = *(v137 + 472);

  v12.n128_f64[0] = v121;
  v13 = *(*(v137 + 184) + 8);
  v14 = *(v137 + 184);

  return v13(v12);
}

{
  v66 = v0;
  v51 = v0[88];
  v1 = v0[85];
  v2 = v0[59];
  v48 = v0[58];
  v50 = v0[57];
  v0[23] = v0;
  MEMORY[0x277D82BD8](v1);
  v3 = v51;
  v0[29] = v51;
  v49 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v48 + 16))(v2, v49, v50);
  swift_endAccess();
  v4 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  v55 = swift_allocObject();
  *(v55 + 16) = 64;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v53 + 24) = v52;
  v54 = swift_allocObject();
  *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v54 + 24) = v53;
  v57 = swift_allocObject();
  *(v57 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v57 + 24) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v58 = v5;

  *v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v58[1] = v55;

  v58[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v58[3] = v56;

  v58[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v58[5] = v57;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v59, v60))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = createStorage<A>(capacity:type:)(1);
    v46 = createStorage<A>(capacity:type:)(0);
    v61 = buf;
    v62 = v45;
    v63 = v46;
    serialize(_:at:)(2, &v61);
    serialize(_:at:)(1, &v61);
    v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65 = v55;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = partial apply for closure #1 in OSLogArguments.append(_:);
    v65 = v57;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    _os_log_impl(&dword_269912000, v59, v60, "Failed to write doseEvents: %@. Falling back to dosage == 1.", buf, 0xCu);
    destroyStorage<A>(_:count:)(v45, 1, v43);
    destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v14 = v47[88];
  v22 = v47[84];
  v23 = v47[83];
  v24 = v47[82];
  v19 = v47[81];
  v25 = v47[77];
  v20 = v47[76];
  v21 = v47[73];
  v16 = v47[66];
  v17 = v47[64];
  v12 = v47[59];
  v13 = v47[57];
  v27 = v47[54];
  v18 = v47[78];
  v15 = v47[65];
  v11 = v47[58];
  MEMORY[0x277D82BD8](v59);
  (*(v11 + 8))(v12, v13);

  (*(v15 + 8))(v16, v17);
  v26 = *(v18 + 8);
  v26(v19, v25);
  v23(v20, v21);
  v26(v24, v25);

  v6 = v47[82];
  v28 = v47[81];
  v29 = v47[80];
  v30 = v47[79];
  v31 = v47[76];
  v32 = v47[75];
  v33 = v47[72];
  v34 = v47[71];
  v35 = v47[70];
  v36 = v47[69];
  v37 = v47[66];
  v38 = v47[63];
  v39 = v47[62];
  v40 = v47[61];
  v41 = v47[60];
  v42 = v47[59];

  v7 = *(v47[23] + 8);
  v8 = v47[23];
  v9.n128_u64[0] = 1.0;

  return v7(v9);
}

uint64_t SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 688);
  *(v9 + 184) = *v2;
  v10 = (v9 + 184);
  *(v9 + 696) = a1;
  *(v9 + 704) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:);
  }

  else
  {

    v5 = *v10;
    v6 = SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 scheduleID];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 name];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 schedule];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 loggedTime];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #10 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  [a1 strength];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  lazy protocol witness table accessor for type NSNumber? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #11 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 strengthUnit];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #12 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(void *a1)
{
  v2 = [a1 completionStatus];
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t protocol witness for SpecificMedicationsPersisting.isLoggingAuthorized() in conformance SpecificMedicationsPersistor()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *v0;
  v5 = v0[1];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.isLoggingAuthorized()(v6, v5);
}

uint64_t protocol witness for SpecificMedicationsPersisting.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v12 = v9;
  *(v9 + 16) = v9;
  v13 = *v8;
  v14 = v8[1];
  v10 = swift_task_alloc();
  *(v12 + 24) = v10;
  *v10 = *(v12 + 16);
  v10[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.save(startTime:endTime:hasMeridiem:medicationIDs:medStatusTaken:dosage:dosageUnit:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7 & 1, a8);
}

uint64_t protocol witness for SpecificMedicationsPersisting.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v12 = v9;
  *(v9 + 16) = v9;
  v13 = *v8;
  v14 = v8[1];
  v10 = swift_task_alloc();
  *(v12 + 24) = v10;
  *v10 = *(v12 + 16);
  v10[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8);
}

uint64_t protocol witness for SpecificMedicationsPersisting.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v9;
  *(v9 + 16) = v9;
  v13 = *v8;
  v14 = v8[1];
  v10 = swift_task_alloc();
  *(v12 + 24) = v10;
  *v10 = *(v12 + 16);
  v10[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8);
}

uint64_t protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return SpecificMedicationsPersistor.displayNameFor(identifier:)(a1, a2, v8, v9);
}

{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t protocol witness for SpecificMedicationsPersisting.sampleScheduleIDFor(dateInterval:) in conformance SpecificMedicationsPersistor(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)(a1, v6, v7);
}

uint64_t SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = v3;
  v3[13] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[14] = 0;
  v3[15] = 0;
  v3[10] = 0;
  v3[11] = 0;
  v4 = type metadata accessor for Logger();
  v3[22] = v4;
  v7 = *(v4 - 8);
  v3[23] = v7;
  v8 = *(v7 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[13] = a1;
  v3[8] = a2;
  v3[9] = a3;
  v5 = swift_task_alloc();
  *(v9 + 208) = v5;
  *v5 = *(v9 + 96);
  v5[1] = SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:);

  return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(a1, 0, a2, a3);
}

uint64_t SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 208);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[27] = a1;
  v9[28] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:);
  }

  else
  {
    v5 = *v10;
    v6 = SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t SpecificMedicationsPersistor.sampleScheduleIDFor(dateInterval:)()
{
  v43 = v0;
  v36 = v0[27];
  v0[12] = v0;

  v0[14] = v36;
  v0[20] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection.first.getter();
  v37 = v0[21];

  if (v37)
  {
    v34 = [v37 scheduleItemIdentifier];
    if (v34)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v1;
      MEMORY[0x277D82BD8](v34);
      v32 = v30;
      v33 = v31;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    MEMORY[0x277D82BD8](v37);
    v28 = v32;
    v29 = v33;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v2 = v35[25];
  v19 = v35[22];
  v17 = v35[23];
  v35[10] = v28;
  v35[11] = v29;
  v18 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v17 + 16))(v2, v18, v19);
  swift_endAccess();

  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 24) = v29;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v24 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v25 = v3;

  *v25 = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[1] = v22;

  v25[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[3] = v23;

  v25[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v25[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v26, v27))
  {
    v4 = v35[28];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(1);
    v38 = buf;
    v39 = v15;
    v40 = v16;
    serialize(_:at:)(2, &v38);
    serialize(_:at:)(1, &v38);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    if (v4)
    {
    }

    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    v41 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_269912000, v26, v27, "got scheduleItemIdentifier: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v35[25];
  v11 = v35[22];
  v9 = v35[23];
  MEMORY[0x277D82BD8](v26);
  (*(v9 + 8))(v10, v11);
  outlined destroy of [HKQuantityType](v35 + 14);
  v6 = v35[25];
  v12 = v35[24];

  v7 = *(v35[12] + 8);
  v8 = v35[12];

  return v7(v28, v29);
}

{
  v18 = v0[28];
  v1 = v0[24];
  v19 = v0[23];
  v21 = v0[22];
  v0[12] = v0;
  v2 = v18;
  v0[15] = v18;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v19 + 16))(v1, v20, v21);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0);
    v15 = createStorage<A>(capacity:type:)(0);
    *(v17 + 128) = buf;
    *(v17 + 136) = v14;
    *(v17 + 144) = v15;
    serialize(_:at:)(0, (v17 + 128));
    serialize(_:at:)(0, (v17 + 128));
    *(v17 + 152) = v24;
    v16 = swift_task_alloc();
    v16[2] = v17 + 128;
    v16[3] = v17 + 136;
    v16[4] = v17 + 144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v23, v22, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v10 = *(v17 + 224);
  v8 = *(v17 + 192);
  v9 = *(v17 + 176);
  v7 = *(v17 + 184);
  MEMORY[0x277D82BD8](v23);
  (*(v7 + 8))(v8, v9);

  v3 = *(v17 + 200);
  v11 = *(v17 + 192);

  v4 = *(*(v17 + 96) + 8);
  v5 = *(v17 + 96);

  return v4(0);
}

uint64_t protocol witness for SpecificMedicationsPersisting.buildMatchedMedName(from:shouldIncludeAsNeededParams:) in conformance SpecificMedicationsPersistor(uint64_t a1, char a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(a1, a2 & 1, v8, v9);
}

uint64_t SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[6] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  v3 = v2[4];
  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.doUTCQueryForMedications(), 0);
}

uint64_t SpecificMedicationsPersistor.doUTCQueryForMedications()()
{
  v7 = v0[7];
  v6 = v0[6];
  v0[4] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("doUTCQueryForMedications()", 0x1AuLL, 1);
  v0[8] = v1._object;
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BE0](v7);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v8 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  *v3 = *(v8 + 32);
  v3[1] = SpecificMedicationsPersistor.doUTCQueryForMedications();

  return MEMORY[0x2822008A0](v8 + 40, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications(), v9, v4);
}

{
  v11 = *v1;
  v2 = *(*v1 + 80);
  v11[4] = *v1;
  v12 = v11 + 4;
  v11[11] = v0;

  if (v0)
  {
    v6 = *v12;
    v5 = SpecificMedicationsPersistor.doUTCQueryForMedications();
  }

  else
  {
    v3 = v11[9];
    v10 = v11[8];
    v9 = v11[7];
    v8 = v11[6];

    v4 = *v12;
    v5 = SpecificMedicationsPersistor.doUTCQueryForMedications();
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  *(v0 + 32) = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);
  return v2(v1);
}

{
  v1 = v0[9];
  v9 = v0[8];
  v8 = v0[7];
  v7 = v0[6];
  v0[4] = v0;

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[11];

  return v3();
}

uint64_t closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  v12 = partial apply for closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications();
  v13 = "Fatal error";
  v14 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v15 = "SiriWellnessIntents/LogSpecificMedicationsIntentHandler.swift";
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
  v21 = *(v19 - 8);
  v20 = v19 - 8;
  v22 = v21;
  v23 = *(v21 + 64);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v6 - v24;
  v33 = MEMORY[0x28223BE20](v18);
  v31 = v3;
  v32 = v4;
  v26 = 0;
  v27 = type metadata accessor for HKUserTrackedConceptQuery();
  type metadata accessor for HKUserTrackedConceptType();
  v28 = *MEMORY[0x277CCCE88];
  MEMORY[0x277D82BE0](v28);
  v29 = HKUserTrackedConceptType.__allocating_init(identifier:)(v28);
  if (v29)
  {
    v11 = v29;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v9 = v11;
  v6 = v22;
  (*(v21 + 16))(v25, v18, v19);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_allocObject();
  (*(v21 + 32))(v8 + v7, v25, v19);
  v10 = HKUserTrackedConceptQuery.__allocating_init(userTrackedConceptType:predicate:sortDescriptors:resultsHandler:)(v9, 0, 0, v12, v8);
  v30 = v10;
  MEMORY[0x277D82BE0](v16);
  [v16 executeQuery_];
  MEMORY[0x277D82BD8](v16);
  return MEMORY[0x277D82BD8](v10);
}

uint64_t closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v119 = a4;
  v128 = a3;
  v120 = a2;
  v118 = a1;
  v116 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v117 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v138 = 0;
  v137 = 0;
  v135 = 0;
  v121 = type metadata accessor for Logger();
  v122 = *(v121 - 8);
  v123 = v122;
  v124 = *(v122 + 64);
  v4 = MEMORY[0x28223BE20](v128);
  v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = v34 - v126;
  v5 = MEMORY[0x28223BE20](v4);
  v127 = v34 - v126;
  v153 = v6;
  v152 = v7;
  v151 = v5;
  v150 = v8;
  v9 = v5;
  if (v128)
  {
    v115 = v128;
    v10 = v127;
    v95 = v128;
    v135 = v128;
    v93 = Logger.wellnessIntents.unsafeMutableAddressor();
    v101 = 32;
    v94 = &v134;
    swift_beginAccess();
    (*(v123 + 16))(v10, v93, v121);
    swift_endAccess();
    v11 = v95;
    v102 = 7;
    v103 = swift_allocObject();
    *(v103 + 16) = v95;
    v113 = Logger.logObject.getter();
    v96 = v113;
    v112 = static os_log_type_t.error.getter();
    v97 = v112;
    v98 = 17;
    v106 = swift_allocObject();
    v99 = v106;
    *(v106 + 16) = 64;
    v107 = swift_allocObject();
    v100 = v107;
    *(v107 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v103;
    v104 = v12;
    *(v12 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v104;
    v110 = v14;
    v105 = v14;
    *(v14 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v14 + 24) = v15;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v108 = _allocateUninitializedArray<A>(_:)();
    v109 = v16;

    v17 = v106;
    v18 = v109;
    *v109 = partial apply for closure #1 in OSLogArguments.append(_:);
    v18[1] = v17;

    v19 = v107;
    v20 = v109;
    v109[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v20[3] = v19;

    v21 = v109;
    v22 = v110;
    v109[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v21[5] = v22;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v113, v112))
    {
      v24 = v117;
      v86 = static UnsafeMutablePointer.allocate(capacity:)();
      v83 = v86;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v89 = 1;
      v87 = createStorage<A>(capacity:type:)(1);
      v85 = v87;
      v88 = createStorage<A>(capacity:type:)(0);
      v133[0] = v86;
      v132 = v87;
      v131 = v88;
      v90 = v133;
      serialize(_:at:)(2, v133);
      serialize(_:at:)(v89, v90);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v129, v90, &v132, &v131);
      v91 = v24;
      v92 = v24;
      if (v24)
      {
        v81 = 0;

        __break(1u);
      }

      else
      {
        v129 = partial apply for closure #1 in OSLogArguments.append(_:);
        v130 = v100;
        closure #1 in osLogInternal(_:log:type:)(&v129, v133, &v132, &v131);
        v79 = 0;
        v80 = 0;
        v129 = partial apply for closure #1 in OSLogArguments.append(_:);
        v130 = v105;
        closure #1 in osLogInternal(_:log:type:)(&v129, v133, &v132, &v131);
        v77 = 0;
        v78 = 0;
        _os_log_impl(&dword_269912000, v96, v97, "Error while querying HealthKit for medication samples: %@", v83, 0xCu);
        destroyStorage<A>(_:count:)(v85, 1, v84);
        destroyStorage<A>(_:count:)(v88, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v83, MEMORY[0x277D84B78]);

        v82 = v77;
      }
    }

    else
    {
      v25 = v117;

      v82 = v25;
    }

    v75 = v82;

    (*(v123 + 8))(v127, v121);
    v26 = v95;
    v133[1] = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    return v75;
  }

  else
  {

    if (v120)
    {
      v114 = v120;
      v64 = v120;
      v144 = v120;
      v62 = 0;
      v63 = type metadata accessor for HKUserTrackedMedication();
      v143 = _allocateUninitializedArray<A>(_:)();

      v141 = v64;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20HKUserTrackedConceptCGMd, &_sSaySo20HKUserTrackedConceptCGMR);
      lazy protocol witness table accessor for type [HKUserTrackedConcept] and conformance [A]();
      Collection<>.makeIterator()();
      for (i = v117; ; i = v51)
      {
        v60 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo20HKUserTrackedConceptCGGMd, &_ss16IndexingIteratorVySaySo20HKUserTrackedConceptCGGMR);
        IndexingIterator.next()();
        v61 = v140;
        if (!v140)
        {
          break;
        }

        v59 = v61;
        v56 = v61;
        v138 = v61;
        v28 = v61;
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        v57 = v29;
        if (v29)
        {
          v55 = v57;
        }

        else
        {

          v55 = 0;
        }

        v54 = v55;
        if (v55)
        {
          v53 = v54;
          v52 = v54;
          v137 = v54;
          v30 = v54;
          v136 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
          Array.append(_:)();
        }

        v51 = v60;
      }

      outlined destroy of [HKQuantityType](v142);
      v58 = v143;

      v139 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      outlined destroy of [HKQuantityType](&v143);

      return v60;
    }

    else
    {
      v27 = v125;
      v67 = Logger.wellnessIntents.unsafeMutableAddressor();
      v68 = &v149;
      v71 = 0;
      swift_beginAccess();
      (*(v123 + 16))(v27, v67, v121);
      swift_endAccess();
      v73 = Logger.logObject.getter();
      v69 = v73;
      v72 = static os_log_type_t.error.getter();
      v70 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v74 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v73, v72))
      {
        v31 = v117;
        v42 = static UnsafeMutablePointer.allocate(capacity:)();
        v38 = v42;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v40 = 0;
        v43 = createStorage<A>(capacity:type:)(0);
        v41 = v43;
        v44 = createStorage<A>(capacity:type:)(v40);
        v148[0] = v42;
        v147 = v43;
        v146 = v44;
        v45 = 0;
        v46 = v148;
        serialize(_:at:)(0, v148);
        serialize(_:at:)(v45, v46);
        v145 = v74;
        v47 = v34;
        MEMORY[0x28223BE20](v34);
        v48 = &v34[-6];
        v34[-4] = v32;
        v34[-3] = &v147;
        v34[-2] = &v146;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v50 = v31;
        if (v31)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v69, v70, "No dose events found using HKUserTrackedConceptQuery, returning empty array", v38, 2u);
          v36 = 0;
          destroyStorage<A>(_:count:)(v41, 0, v39);
          destroyStorage<A>(_:count:)(v44, v36, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v38, MEMORY[0x277D84B78]);

          v37 = v50;
        }
      }

      else
      {

        v37 = v117;
      }

      v35 = v37;

      (*(v123 + 8))(v125, v121);
      v34[1] = 0;
      v34[2] = type metadata accessor for HKUserTrackedMedication();
      v148[1] = _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return v35;
    }
  }
}

uint64_t SpecificMedicationsPersistor.UTCQuery()(uint64_t a1, uint64_t a2)
{
  v2[17] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v2[18] = 0;
  v2[19] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[22] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v3 = type metadata accessor for Logger();
  v2[23] = v3;
  v7 = *(v3 - 8);
  v2[24] = v7;
  v4 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[5] = a1;
  v2[6] = a2;
  v5 = swift_task_alloc();
  *(v8 + 208) = v5;
  *v5 = *(v8 + 136);
  v5[1] = SpecificMedicationsPersistor.UTCQuery();

  return SpecificMedicationsPersistor.doUTCQueryForMedications()(a1, a2);
}

uint64_t SpecificMedicationsPersistor.UTCQuery()(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 208);
  v10[17] = *v2;
  v11 = v10 + 17;
  v10[27] = a1;
  v10[28] = v1;

  if (v1)
  {
    v6 = v10[25];

    v8 = *(*v11 + 8);

    return v8(v7);
  }

  else
  {
    v5 = *v11;

    return MEMORY[0x2822009F8](SpecificMedicationsPersistor.UTCQuery(), 0);
  }
}

uint64_t SpecificMedicationsPersistor.UTCQuery()()
{
  v51 = v0;
  v44 = v0[27];
  v0[17] = v0;
  v0[18] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  _allocateUninitializedArray<A>(_:)();
  v0[19] = Dictionary.init(dictionaryLiteral:)();

  v0[20] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  Collection<>.makeIterator()();
  v45 = v0[28];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo23HKUserTrackedMedicationCGGMd, &_ss16IndexingIteratorVySaySo23HKUserTrackedMedicationCGGMR);
    IndexingIterator.next()();
    v42 = v43[21];
    if (!v42)
    {
      break;
    }

    v1 = v43[25];
    v32 = v43[23];
    v30 = v43[24];
    v43[22] = v42;
    v31 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v30 + 16))(v1, v31, v32);
    swift_endAccess();
    MEMORY[0x277D82BE0](v42);
    v33 = swift_allocObject();
    *(v33 + 16) = v42;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.UTCQuery();
    *(v34 + 24) = v33;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v37 + 24) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v38 = v2;

    *v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[1] = v35;

    v38[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[3] = v36;

    v38[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v37;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v39, v40))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(1);
      v46 = buf;
      v47 = v28;
      v48 = v29;
      serialize(_:at:)(2, &v46);
      serialize(_:at:)(1, &v46);
      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      if (v45)
      {
      }

      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      _os_log_impl(&dword_269912000, v39, v40, "Got a medication: %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v24 = 0;
      v25 = 0;
    }

    else
    {

      v24 = v45;
      v25 = v41;
    }

    v12 = v43[25];
    v13 = v43[23];
    v11 = v43[24];
    MEMORY[0x277D82BD8](v39);
    (*(v11 + 8))(v12, v13);
    v14 = [v42 0x1FB7CA078];
    v15 = [v14 identifier];
    MEMORY[0x277D82BD8](v14);
    v16 = [v15 underlyingIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v4;
    v43[9] = v20;
    v43[10] = v4;
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v17 = [v42 0x1FB7CA078];
    v18 = [v17 displayNameComponents];
    MEMORY[0x277D82BD8](v17);
    v19 = [v18 medicationDisplayName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v5;
    v43[11] = v21;
    v43[12] = v5;
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);

    v43[13] = v21;
    v43[14] = v22;
    v43[15] = v20;
    v43[16] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, _sSDyS2SGMR);
    Dictionary.subscript.setter();

    MEMORY[0x277D82BD8](v42);
    v45 = v24;
    v41 = v25;
  }

  v8 = v43[27];
  v9 = v43[25];
  outlined destroy of [HKQuantityType](v43 + 7);
  v10 = v43[19];

  outlined destroy of [HKQuantityType](v43 + 19);

  v6 = *(v43[17] + 8);
  v7 = v43[17];

  return v6(v10);
}

uint64_t implicit closure #1 in SpecificMedicationsPersistor.UTCQuery()(void *a1)
{
  v2 = [a1 medication];
  v3 = [v2 displayNameComponents];
  MEMORY[0x277D82BD8](v2);
  v4 = [v3 medicationDisplayName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t closure #1 in SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7[1] = a2;
  v24 = 0;
  v23 = 0;
  v18 = type metadata accessor for Date();
  v13 = *(v18 - 8);
  v14 = v18 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v15 = v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v17 = v7 - v10;
  v24 = *v4;
  v12 = *v5;
  v23 = v12;
  v11 = 0x1FB31F000uLL;
  v21 = [v24 0x1FB31F378];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = [v12 (v11 + 888)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = static Date.< infix(_:_:)();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v20(v15, v18);
  MEMORY[0x277D82BD8](v16);
  v20(v17, v18);
  MEMORY[0x277D82BD8](v21);
  return v22 & 1;
}

uint64_t closure #1 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(id *a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  v12 = *a1;
  v11 = a2;
  v10[2] = a2;
  v4 = [v12 medication];
  v5 = [v4 identifier];
  MEMORY[0x277D82BD8](v4);
  v8 = [v5 underlyingIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v2;
  MEMORY[0x277D82BD8](v5);
  v10[0] = v6;
  v10[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v9 = Sequence<>.contains(_:)();
  outlined destroy of String.UTF8View(v10);
  MEMORY[0x277D82BD8](v8);
  return v9 & 1;
}

uint64_t closure #2 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v3 = [*a1 hasSchedule] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

uint64_t closure #3 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v144 = a5;
  v143 = a4;
  v145 = a3;
  v147 = *&a2;
  v146 = a1;
  v141 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0.0;
  v177 = 0;
  v176 = 0;
  v170 = 0;
  v169 = 0;
  v166 = 0;
  v159 = 0.0;
  v157 = 0;
  v156 = 0;
  v142 = a3 & 1;
  v148 = type metadata accessor for Logger();
  v149 = *(v148 - 8);
  v150 = v149;
  v151 = *(v149 + 64);
  v5 = MEMORY[0x28223BE20](v146);
  v153 = (v151 + 15) & 0xFFFFFFFFFFFFFFF0;
  v152 = &v36 - v153;
  v6 = MEMORY[0x28223BE20](v5);
  v154 = &v36 - v153;
  v155 = *v6;
  v183 = v155;
  v181 = v7;
  v182 = v8;
  v179 = v9;
  v180 = v10;
  if ((v11 & 1) != 0 || (v139 = v147, v138 = v147, v178 = v147, , !v144))
  {
    v100 = 1;
    v101 = v140;
  }

  else
  {
    v136 = v143;
    v137 = v144;
    v130 = v144;
    v131 = v143;
    v176 = v143;
    v177 = v144;
    v132 = [v155 medication];
    v134 = [v132 displayNameComponents];
    v133 = v134;

    v12 = [v134 displayStrength];
    v135 = v12;
    if (v12)
    {
      v129 = v135;
      v124 = v135;
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v13;

      v127 = v125;
      v128 = v126;
    }

    else
    {
      v127 = 0;
      v128 = 0;
    }

    v122 = v128;
    v123 = v127;
    if (v128)
    {
      v120 = v123;
      v121 = v122;
      v105 = v122;
      v104 = v123;
      v169 = v123;
      v170 = v122;

      v167 = v104;
      v168 = v105;
      v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
      v108 = lazy protocol witness table accessor for type String and conformance String();
      v107 = MEMORY[0x277D837D0];
      v106 = default argument 1 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v15 = default argument 2 of StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
      v111 = MEMORY[0x26D649820](v109._countAndFlagsBits, v109._object, v106, v15 & 1, v107, v108);
      v110 = v111;

      v166 = v111;
      if (MEMORY[0x26D6494A0]() == 2)
      {
        Array.subscript.getter();
        v103 = COERCE_DOUBLE(Double.init(_:)());
        if (v16)
        {

          v100 = 0;
          v101 = v140;
        }

        else
        {
          v102 = v103;
          v99 = v103;
          v159 = v103;
          Array.subscript.getter();
          v94 = v158;
          v97 = String.init(_:)();
          v98 = v17;
          v95 = v97;
          v96 = v17;

          v156 = v97;
          v157 = v98;

          if (v99 == v138)
          {
            v93 = MEMORY[0x26D649310](v95, v96, v131, v130, v99);
          }

          else
          {
            v93 = 0;
          }

          v92 = v93;

          v100 = v92;
          v101 = v140;
        }
      }

      else
      {
        v18 = v152;
        v71 = Logger.wellnessIntents.unsafeMutableAddressor();
        v75 = 32;
        v79 = 32;
        v72 = &v165;
        swift_beginAccess();
        (*(v150 + 16))(v18, v71, v148);
        swift_endAccess();

        v80 = 7;
        v19 = swift_allocObject();
        v20 = v105;
        v81 = v19;
        *(v19 + 16) = v104;
        *(v19 + 24) = v20;
        v91 = Logger.logObject.getter();
        v73 = v91;
        v90 = static os_log_type_t.debug.getter();
        v74 = v90;
        v76 = 17;
        v84 = swift_allocObject();
        v77 = v84;
        *(v84 + 16) = v75;
        v85 = swift_allocObject();
        v78 = v85;
        *(v85 + 16) = 8;
        v21 = swift_allocObject();
        v22 = v81;
        v82 = v21;
        *(v21 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
        *(v21 + 24) = v22;
        v23 = swift_allocObject();
        v24 = v82;
        v88 = v23;
        v83 = v23;
        *(v23 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v23 + 24) = v24;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v86 = _allocateUninitializedArray<A>(_:)();
        v87 = v25;

        v26 = v84;
        v27 = v87;
        *v87 = partial apply for closure #1 in OSLogArguments.append(_:);
        v27[1] = v26;

        v28 = v85;
        v29 = v87;
        v87[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v29[3] = v28;

        v30 = v87;
        v31 = v88;
        v87[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v30[5] = v31;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v91, v90))
        {
          v68 = v140;
          v63 = static UnsafeMutablePointer.allocate(capacity:)();
          v60 = v63;
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v64 = createStorage<A>(capacity:type:)(0);
          v62 = v64;
          v66 = 1;
          v65 = createStorage<A>(capacity:type:)(1);
          v164 = v63;
          v163 = v64;
          v162 = v65;
          v67 = &v164;
          serialize(_:at:)(2, &v164);
          serialize(_:at:)(v66, v67);
          v32 = v68;
          v160 = partial apply for closure #1 in OSLogArguments.append(_:);
          v161 = v77;
          closure #1 in osLogInternal(_:log:type:)(&v160, v67, &v163, &v162);
          v69 = v32;
          v70 = v32;
          if (v32)
          {
            v58 = 0;

            __break(1u);
          }

          else
          {
            v160 = partial apply for closure #1 in OSLogArguments.append(_:);
            v161 = v78;
            closure #1 in osLogInternal(_:log:type:)(&v160, &v164, &v163, &v162);
            v56 = 0;
            v57 = 0;
            v160 = partial apply for closure #1 in OSLogArguments.append(_:);
            v161 = v83;
            closure #1 in osLogInternal(_:log:type:)(&v160, &v164, &v163, &v162);
            v54 = 0;
            v55 = 0;
            _os_log_impl(&dword_269912000, v73, v74, "Unexpected displayStrength string format: %s", v60, 0xCu);
            destroyStorage<A>(_:count:)(v62, 0, v61);
            destroyStorage<A>(_:count:)(v65, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v60, MEMORY[0x277D84B78]);

            v59 = v54;
          }
        }

        else
        {

          v59 = v140;
        }

        v53 = v59;

        (*(v150 + 8))(v152, v148);

        v100 = 0;
        v101 = v53;
      }
    }

    else
    {
      v14 = v154;

      v112 = Logger.wellnessIntents.unsafeMutableAddressor();
      v113 = &v175;
      v116 = 0;
      swift_beginAccess();
      (*(v150 + 16))(v14, v112, v148);
      swift_endAccess();
      v118 = Logger.logObject.getter();
      v114 = v118;
      v117 = static os_log_type_t.debug.getter();
      v115 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v119 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v118, v117))
      {
        v51 = v140;
        v43 = static UnsafeMutablePointer.allocate(capacity:)();
        v39 = v43;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v41 = 0;
        v44 = createStorage<A>(capacity:type:)(0);
        v42 = v44;
        v45 = createStorage<A>(capacity:type:)(v41);
        v174 = v43;
        v173 = v44;
        v172 = v45;
        v46 = 0;
        v47 = &v174;
        serialize(_:at:)(0, &v174);
        serialize(_:at:)(v46, v47);
        v171 = v119;
        v48 = &v36;
        MEMORY[0x28223BE20](&v36);
        v49 = &v36 - 6;
        *(&v36 - 4) = v33;
        *(&v36 - 3) = &v173;
        *(&v36 - 2) = &v172;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        v34 = v51;
        Sequence.forEach(_:)();
        v52 = v34;
        if (v34)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v114, v115, "Couldn't find displayStrength in UserTrackedMed", v39, 2u);
          v37 = 0;
          destroyStorage<A>(_:count:)(v42, 0, v40);
          destroyStorage<A>(_:count:)(v45, v37, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v39, MEMORY[0x277D84B78]);

          v38 = v52;
        }
      }

      else
      {

        v38 = v140;
      }

      v36 = v38;

      (*(v150 + 8))(v154, v148);

      v100 = 0;
      v101 = v36;
    }
  }

  return v100 & 1;
}

uint64_t closure #1 in SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 medication];
  v6 = [v5 identifier];
  MEMORY[0x277D82BD8](v5);
  v11 = [v6 underlyingIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v3;
  MEMORY[0x277D82BD8](v6);
  v12 = MEMORY[0x26D649310](v7, v10, a2, a3);

  MEMORY[0x277D82BD8](v11);
  return v12 & 1;
}

uint64_t implicit closure #1 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  Collection.first.getter();
  if (v1)
  {
    [v1 medication];
    (MEMORY[0x277D82BD8])();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12HKMedicationCSgMd, &_sSo12HKMedicationCSgMR);
  lazy protocol witness table accessor for type HKMedication? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for HKMedicationLoggingUnit();
  lazy protocol witness table accessor for type HKMedicationLoggingUnit and conformance NSObject();
  return String.init<A>(describing:)();
}

id @nonobjc HKMedicationIdentifier.init(rawIdentifier:)()
{
  v2 = MEMORY[0x26D6492A0]();
  v3 = [v1 initWithRawIdentifier_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id @nonobjc INObject.init(identifier:display:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = MEMORY[0x26D6492A0](a1);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v5 = MEMORY[0x26D6492A0](a3, a4);
  v6 = [v11 initWithIdentifier:v8 displayString:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v8);
  return v6;
}

id @nonobjc HKUserTrackedConceptType.init(identifier:)(uint64_t a1)
{
  v4 = [v1 initWithIdentifier_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKUserTrackedConceptQuery.init(userTrackedConceptType:predicate:sortDescriptors:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    type metadata accessor for NSSortDescriptor();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
  }

  else
  {
    v9 = 0;
  }

  v20 = a4;
  v21 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = 0;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed HKUserTrackedConceptQuery, @guaranteed [HKUserTrackedConcept]?, @guaranteed Error?) -> ();
  v19 = &block_descriptor_2015;
  v6 = _Block_copy(&aBlock);
  v7 = [v14 initWithUserTrackedConceptType:a1 predicate:a2 sortDescriptors:v9 resultsHandler:?];
  _Block_release(v6);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKUserTrackedConceptQuery, @guaranteed [HKUserTrackedConcept]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKUserTrackedConcept();
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

uint64_t sub_2699DAC98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DACD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DAD70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DADB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DAE48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DAE88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DAF74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DAFE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2699DB070()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB0BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x277D849A8];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699DB240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB358()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB574()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB60C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB64C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB6E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB764()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB7A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB83C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB87C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB914()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DB954()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699DBA1C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DBABC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBAFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined init with copy of NSNumber?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_2699DBB7C()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:)()
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

  return @objc closure #1 in LogSpecificMedicationsIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKMedicationIdentifier()
{
  v2 = lazy cache variable for type metadata for HKMedicationIdentifier;
  if (!lazy cache variable for type metadata for HKMedicationIdentifier)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationIdentifier);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699DBDC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBE04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBE44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBF5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBF9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DBFDC()
{
  v3 = *(type metadata accessor for DateInterval() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)()
{
  v1 = *(type metadata accessor for DateInterval() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(specifiedDateInterval:medStatusTaken:)(v2);
}

uint64_t sub_2699DC164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC1A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC1E4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DC2B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC2F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC3C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC408()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Set<String?> and conformance Set<A>()
{
  v2 = lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSSgGMd, &_sShySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSSgGMd, &_sShySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<String?> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUserTrackedMedication] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699DC6A0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DC740()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC8C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DC94C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  v1 = lazy protocol witness table accessor for type [String?] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t sub_2699DCADC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCB1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCBB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCBF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCC60()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DCCA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCE28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCE68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCF40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCF80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DCFC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKUserTrackedMedication()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedMedication;
  if (!lazy cache variable for type metadata for HKUserTrackedMedication)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedMedication);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699DD184()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DD224()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD264()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #6 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)();
}

uint64_t sub_2699DD2E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #7 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)();
}

uint64_t sub_2699DD384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD3C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD45C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD49C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD4DC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DD57C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD5BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD784()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD7C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD85C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD89C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD934()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DD974()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDAE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDB24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDBBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDBFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDC94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDCD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDD94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDDD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DDED4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDF6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DDFAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE11C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE15C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE19C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE1DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE2B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE34C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE38C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE4FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE53C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE5AC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DE644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE6C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE704()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699DE7C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE808()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE8A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE8E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE978()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE9B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DE9F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEA38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEA78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEC00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEC40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DECF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DED38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEDD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEEA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEEE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEF80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DEFC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF08C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF0CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF1D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF294()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF2D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF340()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF3D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF418()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF4B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF4F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF5B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF5F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF6F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF7D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DF8A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFBF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFC38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFCD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFD10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFDA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFDE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFE80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFEC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFF58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699DFF98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0070()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0148()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E01E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0220()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E02B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E02F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E03D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E04A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E04E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699E0528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0568()
{
  v3 = *(type metadata accessor for DateInterval() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DateInterval();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(v3, a1);
}

uint64_t sub_2699E06A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval()
{
  v2 = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    type metadata accessor for DateInterval();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699E081C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E085C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E08F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0934()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0974()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699E09B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0B3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0B7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0C14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0C54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0D2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0D6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0DAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0DEC()
{
  v3 = *(type metadata accessor for DateInterval() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2699E0F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0F50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E0FE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E10C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1140()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699E1230()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1270()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E140C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E144C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E148C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E14CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E156C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E15AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

_OWORD *outlined init with take of (key: String?, value: (scheduleDate: Date?, medID: String, count: Int))?(_OWORD *a1, _OWORD *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetMR);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMd, &_sSSSg3key_10Foundation4DateVSg08scheduleC0_SS5medIDSi5countt5valuetSgMR);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    __dst = a2 + *(v12 + 48);
    __src = a1 + *(v12 + 48);
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(__src, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      memcpy(__dst, __src, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(__dst, __src, v8);
      (*(v9 + 56))(__dst, 0, 1, v8);
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
    *&__dst[*(v3 + 48)] = *&__src[*(v3 + 48)];
    *&__dst[*(v3 + 64)] = *&__src[*(v3 + 64)];
    (*(v13 + 56))(a2, 0, 1, v12);
  }

  return a2;
}

uint64_t sub_2699E19C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1AA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1AE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1BB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1C50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1C90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1E50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E1FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of (scheduleDate: Date?, medID: String, count: Int)?(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMd, &_s10Foundation4DateVSg08scheduleB0_SS5medIDSi5counttMR);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v3 = type metadata accessor for Date();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }

    v1 = *(a1 + *(v6 + 48) + 8);
  }

  return a1;
}

uint64_t outlined destroy of (Date?, String, Int)?(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_SSSitMd, &_s10Foundation4DateVSg_SSSitMR);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v3 = type metadata accessor for Date();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }

    v1 = *(a1 + *(v6 + 48) + 8);
  }

  return a1;
}

uint64_t sub_2699E2308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E23F8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2699E2498()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E24D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E25C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E26E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E27F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699E2930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E29C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2AE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2C28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2CC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2D00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2DF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E2E34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKUserTrackedConceptQuery()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedConceptQuery;
  if (!lazy cache variable for type metadata for HKUserTrackedConceptQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedConceptQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for HKUserTrackedConceptType()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedConceptType;
  if (!lazy cache variable for type metadata for HKUserTrackedConceptType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedConceptType);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699E2F78()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMd, &_sScCySaySo23HKUserTrackedMedicationCGs5Error_pGMR);
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return closure #1 in closure #1 in SpecificMedicationsPersistor.doUTCQueryForMedications()(a1, a2, a3, v5);
}

uint64_t block_copy_helper_2013(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKUserTrackedConcept()
{
  v2 = lazy cache variable for type metadata for HKUserTrackedConcept;
  if (!lazy cache variable for type metadata for HKUserTrackedConcept)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUserTrackedConcept);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKUserTrackedConcept] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKUserTrackedConcept] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKUserTrackedConcept] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20HKUserTrackedConceptCGMd, &_sSaySo20HKUserTrackedConceptCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKUserTrackedConcept] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699E32CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E330C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKMedicationLoggingUnit()
{
  v2 = lazy cache variable for type metadata for HKMedicationLoggingUnit;
  if (!lazy cache variable for type metadata for HKMedicationLoggingUnit)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationLoggingUnit);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationLoggingUnit and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationLoggingUnit and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKMedicationLoggingUnit and conformance NSObject)
  {
    type metadata accessor for HKMedicationLoggingUnit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationLoggingUnit and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedication? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type HKMedication? and conformance A?;
  if (!lazy protocol witness table cache variable for type HKMedication? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo12HKMedicationCSgMd, &_sSo12HKMedicationCSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedication? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationIdentifier and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationIdentifier and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKMedicationIdentifier and conformance NSObject)
  {
    type metadata accessor for HKMedicationIdentifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationIdentifier and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSNumber? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type NSNumber? and conformance A?;
  if (!lazy protocol witness table cache variable for type NSNumber? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSNumber? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Double? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type Double? and conformance A?;
  if (!lazy protocol witness table cache variable for type Double? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd, &_sSdSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Double? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of [HKMedicationExposableDoseEvent](uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String]? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type [String]? and conformance A?;
  if (!lazy protocol witness table cache variable for type [String]? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String]? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Bool? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type Bool? and conformance A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Bool? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2699E3790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E3828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699E3868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t Logger.wellnessIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for wellnessIntents != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.wellnessIntents);
}

uint64_t one-time initialization function for subsystem()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static Log.subsystem = v1;
  return result;
}

__int128 *Log.subsystem.unsafeMutableAddressor()
{
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return &static Log.subsystem;
}

uint64_t static Log.subsystem.getter()
{
  v0 = Log.subsystem.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for healthCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Health", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static Log.healthCategory = v1;
  return result;
}

__int128 *Log.healthCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for healthCategory != -1)
  {
    swift_once();
  }

  return &static Log.healthCategory;
}

uint64_t static Log.healthCategory.getter()
{
  v0 = Log.healthCategory.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for wellnessCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Wellness", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static Log.wellnessCategory = v1;
  return result;
}

__int128 *Log.wellnessCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for wellnessCategory != -1)
  {
    swift_once();
  }

  return &static Log.wellnessCategory;
}

uint64_t static Log.wellnessCategory.getter()
{
  v0 = Log.wellnessCategory.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for emergencyCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Emergency", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static Log.emergencyCategory = v1;
  return result;
}

__int128 *Log.emergencyCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for emergencyCategory != -1)
  {
    swift_once();
  }

  return &static Log.emergencyCategory;
}

uint64_t static Log.emergencyCategory.getter()
{
  v0 = Log.emergencyCategory.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for commonCategory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HealthCommon", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static Log.commonCategory = v1;
  return result;
}

__int128 *Log.commonCategory.unsafeMutableAddressor()
{
  if (one-time initialization token for commonCategory != -1)
  {
    swift_once();
  }

  return &static Log.commonCategory;
}

uint64_t static Log.commonCategory.getter()
{
  v0 = Log.commonCategory.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for health()
{
  type metadata accessor for OS_os_log();
  v0 = Log.subsystem.unsafeMutableAddressor();
  v3 = *v0;
  v4 = *(v0 + 1);

  v1 = Log.healthCategory.unsafeMutableAddressor();
  v5 = *v1;
  v6 = *(v1 + 1);

  result = OS_os_log.init(subsystem:category:)();
  static Log.health = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.health);
  __swift_project_value_buffer(v2, static Logger.health);
  v0 = Log.health.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.health.unsafeMutableAddressor()
{
  if (one-time initialization token for health != -1)
  {
    swift_once();
  }

  return &static Log.health;
}

uint64_t static Log.health.getter()
{
  v0 = Log.health.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t one-time initialization function for wellnessIntents()
{
  type metadata accessor for OS_os_log();
  v0 = Log.subsystem.unsafeMutableAddressor();
  v3 = *v0;
  v4 = *(v0 + 1);

  v1 = Log.wellnessCategory.unsafeMutableAddressor();
  v5 = *v1;
  v6 = *(v1 + 1);

  result = OS_os_log.init(subsystem:category:)();
  static Log.wellnessIntents = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.wellnessIntents);
  __swift_project_value_buffer(v2, static Logger.wellnessIntents);
  v0 = Log.wellnessIntents.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.wellnessIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for wellnessIntents != -1)
  {
    swift_once();
  }

  return &static Log.wellnessIntents;
}

uint64_t static Log.wellnessIntents.getter()
{
  v0 = Log.wellnessIntents.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t one-time initialization function for emergency()
{
  type metadata accessor for OS_os_log();
  v0 = Log.subsystem.unsafeMutableAddressor();
  v3 = *v0;
  v4 = *(v0 + 1);

  v1 = Log.emergencyCategory.unsafeMutableAddressor();
  v5 = *v1;
  v6 = *(v1 + 1);

  result = OS_os_log.init(subsystem:category:)();
  static Log.emergency = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.emergency);
  __swift_project_value_buffer(v2, static Logger.emergency);
  v0 = Log.emergency.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.emergency.unsafeMutableAddressor()
{
  if (one-time initialization token for emergency != -1)
  {
    swift_once();
  }

  return &static Log.emergency;
}

uint64_t static Log.emergency.getter()
{
  v0 = Log.emergency.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t one-time initialization function for common()
{
  type metadata accessor for OS_os_log();
  v0 = Log.subsystem.unsafeMutableAddressor();
  v3 = *v0;
  v4 = *(v0 + 1);

  v1 = Log.commonCategory.unsafeMutableAddressor();
  v5 = *v1;
  v6 = *(v1 + 1);

  result = OS_os_log.init(subsystem:category:)();
  static Log.common = result;
  return result;
}

{
  v2 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v2, static Logger.common);
  __swift_project_value_buffer(v2, static Logger.common);
  v0 = Log.common.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return Logger.init(_:)();
}

uint64_t *Log.common.unsafeMutableAddressor()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  return &static Log.common;
}

uint64_t static Log.common.getter()
{
  v0 = Log.common.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

unint64_t type metadata accessor for OS_os_log()
{
  v2 = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_os_log);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t static Logger.wellnessIntents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.wellnessIntents.setter(uint64_t a1)
{
  v9 = a1;
  v10 = type metadata accessor for Logger();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = Logger.wellnessIntents.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*static Logger.wellnessIntents.modify())()
{
  Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t Logger.health.unsafeMutableAddressor()
{
  if (one-time initialization token for health != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.health);
}

uint64_t static Logger.health.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.health.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.health.setter(uint64_t a1)
{
  v9 = a1;
  v10 = type metadata accessor for Logger();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = Logger.health.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*static Logger.health.modify())()
{
  Logger.health.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t Logger.emergency.unsafeMutableAddressor()
{
  if (one-time initialization token for emergency != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.emergency);
}

uint64_t static Logger.emergency.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.emergency.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.emergency.setter(uint64_t a1)
{
  v9 = a1;
  v10 = type metadata accessor for Logger();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = Logger.emergency.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*static Logger.emergency.modify())()
{
  Logger.emergency.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t Logger.common.unsafeMutableAddressor()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.common);
}

uint64_t static Logger.common.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.common.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static Logger.common.setter(uint64_t a1)
{
  v9 = a1;
  v10 = type metadata accessor for Logger();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = Logger.common.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*static Logger.common.modify())()
{
  Logger.common.unsafeMutableAddressor();
  swift_beginAccess();
  return static Logger.wellnessIntents.modify;
}

uint64_t HealthKitDistanceProvider.Source.quantityTypeIdentifier.getter(char a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v5 = *MEMORY[0x277CCCB48];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB48]);
        return v5;
      case 2:
        v4 = *MEMORY[0x277CCCB10];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB10]);
        return v4;
      case 3:
        v3 = *MEMORY[0x277CCCB38];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB38]);
        return v3;
      default:
        v2 = *MEMORY[0x277CCCB18];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCCB18]);
        return v2;
    }
  }

  else
  {
    v6 = *MEMORY[0x277CCCB40];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCCB40]);
    return v6;
  }
}

BOOL static HealthKitDistanceProvider.Source.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t HealthKitDistanceProvider.Source.hashValue.getter()
{
  type metadata accessor for HealthKitDistanceProvider.Source();
  swift_getWitnessTable();
  return _hashValue<A>(for:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance HealthKitDistanceProvider<A>.Source(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  return HealthKitDistanceProvider.Source.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HealthKitDistanceProvider<A>.Source(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  return HealthKitDistanceProvider.Source.hash(into:)();
}

uint64_t HealthKitDistanceProvider.store.getter()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t HealthKitDistanceProvider.sources.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t HealthKitDistanceProvider.failure.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t HealthKitDistanceProvider.mapIntent.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t HealthKitDistanceProvider.init(store:sources:failure:mapIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  memset(__b, 0, 0x30uLL);
  __b[6] = a7;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  __b[0] = a1;

  __b[1] = a2;

  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;

  MEMORY[0x277D82BD8](a1);
  outlined destroy of HealthKitDistanceProvider<A>(__b);
  result = a1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

void *outlined destroy of HealthKitDistanceProvider<A>(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  return a1;
}

uint64_t HealthKitDistanceProvider.isQueryAuthorized()()
{
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v5 = *v0;
  v1[4] = *v0;
  MEMORY[0x277D82BE0](v5);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v5);
}

uint64_t HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = v4;
  v5[28] = a3;
  v5[27] = a2;
  v5[26] = a1;
  v5[20] = v5;
  v5[21] = 0;
  v5[22] = 0;
  memset(v5 + 8, 0, 0x30uLL);
  v5[24] = 0;
  v5[25] = 0;
  memcpy(v5 + 2, __src, 0x30uLL);
  v15 = v5[2];
  v16 = v5[3];
  v17 = v5[4];
  v18 = v5[5];
  v19 = v5[6];
  v20 = v5[7];
  v6 = *(a4 + 16);
  v5[30] = v6;
  v12 = *(v6 - 8);
  v5[31] = v12;
  v7 = *(v12 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[21] = a2;
  v5[22] = a3;
  v5[8] = v15;
  v5[9] = v16;
  v5[10] = v17;
  v5[11] = v18;
  v5[12] = v19;
  v5[13] = v20;
  v8 = v5[20];

  return MEMORY[0x2822009F8](HealthKitDistanceProvider.query(start:end:), 0);
}

uint64_t HealthKitDistanceProvider.query(start:end:)()
{
  v4 = v0[30];
  v5 = v0[29];
  v7 = v0[28];
  v6 = v0[27];
  v0[20] = v0;
  type metadata accessor for HealthKitDistanceProvider.Source();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  outlined init with copy of HealthKitDistanceProvider<A>(v5, v0 + 14);
  v10 = swift_task_alloc();
  v0[33] = v10;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  swift_getWitnessTable();
  v9 = type metadata accessor for Dictionary();
  default argument 1 of withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(TupleTypeMetadata2, v9);
  v1 = *(MEMORY[0x277D859B8] + 4);
  v2 = swift_task_alloc();
  *(v8 + 272) = v2;
  *v2 = *(v8 + 160);
  v2[1] = HealthKitDistanceProvider.query(start:end:);

  return MEMORY[0x282200740](v8 + 184, TupleTypeMetadata2, v9, 0, 0, &async function pointer to partial apply for closure #1 in HealthKitDistanceProvider.query(start:end:), v10);
}

{
  v9 = *v1;
  v2 = *(*v1 + 272);
  v9[20] = *v1;
  v10 = v9 + 20;
  v9[35] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = HealthKitDistanceProvider.query(start:end:);
  }

  else
  {
    v3 = v9[33];
    v8 = v9[29];

    outlined destroy of HealthKitDistanceProvider<A>(v8);
    v4 = *v10;
    v5 = HealthKitDistanceProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v11 = v0[32];
  v9 = v0[31];
  v10 = v0[30];
  v1 = v0[29];
  v8 = v0[26];
  v0[20] = v0;
  v12 = v0[23];
  v0[25] = v12;
  v7 = *(v1 + 32);
  v2 = *(v1 + 40);

  v7(v12);

  (*(v9 + 16))(v8, v11, v10);
  (*(v9 + 8))(v11, v10);

  v3 = v0[32];

  v4 = *(v0[20] + 8);
  v5 = v0[20];

  return v4();
}

{
  v12 = v0[35];
  v1 = v0[33];
  v9 = v0[29];
  v10 = v0[26];
  v0[20] = v0;

  outlined destroy of HealthKitDistanceProvider<A>(v9);
  v2 = v12;
  v0[24] = v12;
  v11 = v9[2];
  v3 = v9[3];

  v11(v4);

  v5 = v0[32];

  v6 = *(v0[20] + 8);
  v7 = v0[20];

  return v6();
}

uint64_t closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a6;
  *(v6 + 232) = a5;
  *(v6 + 224) = a4;
  *(v6 + 216) = a3;
  *(v6 + 208) = a2;
  *(v6 + 200) = a1;
  *(v6 + 144) = v6;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  memset((v6 + 104), 0, 0x28uLL);
  *(v6 + 408) = 0;
  *(v6 + 416) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  *(v6 + 248) = v7;
  v15 = *(v7 - 8);
  *(v6 + 256) = v15;
  v8 = *(v15 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR) - 8) + 64);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  *(v6 + 296) = v17;
  *(v6 + 304) = *(v17 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B") - 8) + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = type metadata accessor for HealthKitDistanceProvider.Source();
  *(v6 + 344) = swift_getTupleTypeMetadata2();
  v10 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v11 = type metadata accessor for ThrowingTaskGroup.Iterator();
  *(v6 + 368) = v11;
  v18 = *(v11 - 8);
  *(v6 + 376) = v18;
  v12 = *(v18 + 64) + 15;
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  v13 = *(v6 + 144);

  return MEMORY[0x2822009F8](closure #1 in HealthKitDistanceProvider.query(start:end:), 0);
}

uint64_t closure #1 in HealthKitDistanceProvider.query(start:end:)()
{
  v36 = v0[42];
  v33 = v0[31];
  v34 = v0[27];
  v0[18] = v0;
  v0[49] = swift_getWitnessTable();
  v0[23] = Dictionary.init()();
  v35 = *(v34 + 8);

  Set.makeIterator()();
  memcpy(v0 + 13, v0 + 8, 0x28uLL);
  while (1)
  {
    v1 = *(v32 + 336);
    type metadata accessor for Set.Iterator();
    Set.Iterator.next()();
    v31 = *(v32 + 409);
    if (v31 == 5)
    {
      break;
    }

    v24 = *(v32 + 360);
    v23 = *(v32 + 344);
    v26 = *(v32 + 328);
    v19 = *(v32 + 320);
    v22 = *(v32 + 312);
    v16 = *(v32 + 304);
    v17 = *(v32 + 240);
    v14 = *(v32 + 232);
    v13 = *(v32 + 224);
    __src = *(v32 + 216);
    v8 = *(v32 + 208);
    v15 = *(v32 + 296);
    *(v32 + 416) = v31;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v26, 1);
    outlined init with copy of HealthKitDistanceProvider<A>(__src, (v32 + 16));
    outlined init with copy of Date?(v13, v19);
    outlined init with copy of Date?(v14, v22);
    v10 = *(v15 + 80);
    v20 = (v10 + 96) & ~v10;
    v21 = (v20 + v16 + v10) & ~v10;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v17;
    *(v25 + 40) = v31;
    memcpy((v25 + 48), __src, 0x30uLL);
    outlined init with take of Date?(v19, (v25 + v20));
    outlined init with take of Date?(v22, (v25 + v21));
    v11 = type metadata accessor for ThrowingTaskGroup();
    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v26, &async function pointer to partial apply for closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:), v25, v11);
    outlined destroy of TaskPriority?(v26);
  }

  v28 = *(v32 + 384);
  v30 = *(v32 + 360);
  v29 = *(v32 + 344);
  v27 = *(v32 + 208);
  outlined destroy of [String? : (scheduleDate: Date?, medID: String, count: Int)].Iterator((v32 + 104));
  v2 = *v27;
  ThrowingTaskGroup.makeAsyncIterator()();
  v3 = *(MEMORY[0x277D85828] + 4);
  v4 = swift_task_alloc();
  *(v32 + 400) = v4;
  *v4 = *(v32 + 144);
  v4[1] = closure #1 in HealthKitDistanceProvider.query(start:end:);
  v5 = *(v32 + 384);
  v6 = *(v32 + 368);
  v7 = *(v32 + 352);

  return MEMORY[0x2822004E8](v7, 0, 0, v6, v32 + 192);
}

{
  v7 = *v1;
  v2 = *(*v1 + 400);
  *(v7 + 144) = *v1;
  v8 = (v7 + 144);

  if (v0)
  {
    v5 = *v8;
    v4 = closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  else
  {
    v3 = *v8;
    v4 = closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[44];
  v2 = v0[43];
  v0[18] = v0;
  if ((*(*(v2 - 8) + 48))(v1, 1) == 1)
  {
    v27 = *(v36 + 384);
    v3 = *(v36 + 368);
    v28 = *(v36 + 352);
    v29 = *(v36 + 328);
    v30 = *(v36 + 320);
    v31 = *(v36 + 312);
    v32 = *(v36 + 288);
    v33 = *(v36 + 280);
    v34 = *(v36 + 272);
    v35 = *(v36 + 264);
    v26 = *(v36 + 200);
    (*(*(v36 + 376) + 8))();
    *v26 = *(v36 + 184);

    v4 = *(*(v36 + 144) + 8);
    v5 = *(v36 + 144);

    return v4();
  }

  else
  {
    v7 = *(v36 + 352);
    v22 = *(v36 + 288);
    v25 = *(v36 + 280);
    v24 = *(v36 + 248);
    v23 = *(v36 + 256);
    v21 = *v7;
    v8 = &v7[*(*(v36 + 344) + 48)];
    *(v36 + 408) = *v7;
    outlined init with take of Statistics<Double>?(v8, v22);
    outlined init with copy of Statistics<Double>?(v22, v25);
    if ((*(v23 + 48))(v25, 1, v24) == 1)
    {
      outlined destroy of Statistics<Double>?(*(v36 + 280));
    }

    else
    {
      v18 = *(v36 + 392);
      v16 = *(v36 + 336);
      v19 = *(v36 + 272);
      v20 = *(v36 + 264);
      v17 = *(v36 + 248);
      v15 = *(v36 + 256);
      outlined init with take of Statistics<Double>(*(v36 + 280), v20);
      v9 = outlined init with copy of Statistics<Double>(v20, v19);
      (*(v15 + 56))(v19, 0, 1, v17, v9);
      *(v36 + 410) = v21;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      outlined destroy of Statistics<Double>(v20);
    }

    outlined destroy of Statistics<Double>?(*(v36 + 288));
    v10 = *(MEMORY[0x277D85828] + 4);
    v11 = swift_task_alloc();
    *(v36 + 400) = v11;
    *v11 = *(v36 + 144);
    v11[1] = closure #1 in HealthKitDistanceProvider.query(start:end:);
    v12 = *(v36 + 384);
    v13 = *(v36 + 368);
    v14 = *(v36 + 352);

    return MEMORY[0x2822004E8](v14, 0, 0, v13, v36 + 192);
  }
}

{
  v7 = v0[48];
  v1 = v0[47];
  v2 = v0[46];
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v0[18] = v0;
  v3 = v0[24];
  (*(v1 + 8))();
  outlined destroy of [HKQuantityType](v0 + 23);

  v4 = *(v0[18] + 8);
  v5 = v0[18];

  return v4();
}

void *outlined init with copy of HealthKitDistanceProvider<A>(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v6 = a1[2];
  v7 = a1[3];

  a2[2] = v6;
  a2[3] = v7;
  v9 = a1[4];
  v10 = a1[5];

  result = a2;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t partial apply for closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v11 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in HealthKitDistanceProvider.query(start:end:)(a1, a2, v8, v9, v10, v11);
}

uint64_t closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 80) = a7;
  *(v8 + 72) = a6;
  *(v8 + 64) = a5;
  *(v8 + 153) = a4;
  *(v8 + 56) = a1;
  *(v8 + 16) = v8;
  *(v8 + 152) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  type metadata accessor for HealthKitDistanceProvider.Source();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 96) = TupleTypeMetadata2;
  v10 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v11 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 152) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  v12 = *(v8 + 16);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:), 0);
}