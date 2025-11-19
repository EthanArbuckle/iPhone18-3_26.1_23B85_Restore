uint64_t SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:)(uint64_t a1)
{
  v11 = *v2;
  v9 = *v2 + 16;
  v10 = v11 + 80;
  v4 = *(*v2 + 1408);
  v11[80] = *v2;
  v11[177] = a1;
  v11[178] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  }

  else
  {

    v5 = *v10;
    v6 = SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1480);
  *(v6 + 640) = *v1;
  *(v6 + 1488) = a1;

  v4 = *(v6 + 640);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1536);
  *(v6 + 640) = *v1;
  *(v6 + 1544) = a1;

  v4 = *(v6 + 640);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1568);
  *(v6 + 640) = *v1;
  *(v6 + 1576) = a1;

  v4 = *(v6 + 640);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1584);
  *(v6 + 640) = *v1;
  *(v6 + 1592) = a1;

  v4 = *(v6 + 640);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 1608);
  v6 = *(*v1 + 1600);
  v7 = *(*v1 + 1112);
  *(v8 + 640) = *v1;
  *(v8 + 1616) = a1;

  v4 = *(v8 + 640);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v27;
  *(v8 + 264) = v26;
  *(v8 + 256) = v25;
  *(v8 + 248) = v24;
  *(v8 + 115) = v23;
  *(v8 + 240) = a8;
  *(v8 + 232) = a7;
  *(v8 + 224) = a6;
  *(v8 + 114) = a5;
  *(v8 + 216) = a4;
  *(v8 + 113) = a3 & 1;
  *(v8 + 208) = a2;
  *(v8 + 200) = a1;
  *(v8 + 136) = v8;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 360) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 144) = 0;
  *(v8 + 160) = 0;
  v11 = type metadata accessor for Logger();
  *(v8 + 280) = v11;
  v15 = *(v11 - 8);
  *(v8 + 288) = v15;
  v12 = *(v15 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 360) = a3 & 1;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5 & 1;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 120) = a8;
  *(v8 + 128) = v23 & 1;
  *(v8 + 72) = v24;
  *(v8 + 80) = v25;
  *(v8 + 88) = v26;
  *(v8 + 96) = v27;
  v13 = *(v8 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)()
{
  v1 = v0[37];
  v24 = v0[36];
  v26 = v0[35];
  v0[17] = v0;
  v25 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v24 + 16))(v1, v25, v26);
  swift_endAccess();
  v28 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v29 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v28, v27))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(0);
    *(v23 + 168) = buf;
    *(v23 + 176) = v20;
    *(v23 + 184) = v21;
    serialize(_:at:)(0, (v23 + 168));
    serialize(_:at:)(0, (v23 + 168));
    *(v23 + 192) = v29;
    v22 = swift_task_alloc();
    v22[2] = v23 + 168;
    v22[3] = v23 + 176;
    v22[4] = v23 + 184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v28, v27, "Starting to save As Needed Medication whose strength we know post-disambiguation", buf, 2u);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v23 + 304) = 0;
  v11 = *(v23 + 296);
  v12 = *(v23 + 280);
  v17 = *(v23 + 115);
  v16 = *(v23 + 208);
  v14 = *(v23 + 200);
  v10 = *(v23 + 288);
  MEMORY[0x277D82BD8](v28);
  (*(v10 + 8))(v11, v12);
  v13 = _allocateUninitializedArray<A>(_:)();
  v15 = v2;

  *v15 = v14;
  v15[1] = v16;
  _finalizeUninitializedArray<A>(_:)();
  *(v23 + 312) = v13;
  v3 = swift_task_alloc();
  *(v23 + 320) = v3;
  *v3 = *(v23 + 136);
  v3[1] = SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:);
  v4 = *(v23 + 272);
  v5 = *(v23 + 264);
  v6 = *(v23 + 256);
  v7 = *(v23 + 248);
  v8 = *(v23 + 240);

  return SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(v13, v8, v17 & 1, v7, v6, 0, v5, v4);
}

{
  v1 = v0[41];
  v2 = v0[38];
  v0[17] = v0;
  v0[18] = v1;
  v0[19] = v1;
  v14 = swift_task_alloc();
  *(v14 + 16) = -1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  v16 = type metadata accessor for HKMedicationExposableDoseEvent();
  v3 = lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), v14, v15, v16, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v17);
  v18 = result;
  v0[42] = result;
  if (!v2)
  {
    v11 = *(v13 + 272);
    v12 = *(v13 + 114);

    *(v13 + 160) = v18;
    MEMORY[0x277D82BE0](v11);
    v5 = swift_task_alloc();
    *(v13 + 344) = v5;
    *v5 = *(v13 + 136);
    v5[1] = SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:);
    v6 = *(v13 + 272);
    v7 = *(v13 + 232);
    v8 = *(v13 + 224);
    v9 = *(v13 + 216);
    v20 = *(v13 + 264);
    v10 = *(v13 + 113) & 1;

    return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v6, v18, v10, 1, v9, v12 & 1, v8, v7);
  }

  return result;
}

{
  v1 = v0[42];
  v7 = v0[41];
  v8 = v0[37];
  v0[17] = v0;

  v2 = v0;
  v3 = *(v0[17] + 8);
  v4 = v0[17];
  v5 = v2[44];

  return v3(v5);
}

uint64_t SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 320);
  v6 = *(*v1 + 312);
  *(v7 + 136) = *v1;
  *(v7 + 328) = a1;

  v4 = *(v7 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 344);
  v6 = *(*v1 + 272);
  *(v7 + 136) = *v1;
  *(v7 + 352) = a1;

  v4 = *(v7 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = a8;
  *(v8 + 224) = a7;
  *(v8 + 130) = a6 & 1;
  *(v8 + 216) = a5;
  *(v8 + 208) = a4;
  *(v8 + 129) = a3;
  *(v8 + 200) = a2;
  *(v8 + 192) = a1;
  *(v8 + 136) = v8;
  *(v8 + 144) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 344) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 152) = 0;
  *(v8 + 184) = 0;
  v9 = type metadata accessor for Logger();
  *(v8 + 240) = v9;
  v12 = *(v9 - 8);
  *(v8 + 248) = v12;
  v13 = *(v12 + 64);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 144) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3 & 1;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 344) = a6 & 1;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  v10 = *(v8 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:), 0);
}

uint64_t SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)()
{
  v35 = v0;
  v1 = v0[34];
  v17 = v0[31];
  v19 = v0[30];
  v20 = v0[24];
  v0[17] = v0;
  v18 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v17 + 16);
  v0[35] = v2;
  v0[36] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v18, v19);
  swift_endAccess();

  v21 = swift_allocObject();
  *(v21 + 16) = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v22 + 24) = v21;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v26 + 24) = v23;
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[1] = v24;

  v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[3] = v25;

  v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0);
    v15 = createStorage<A>(capacity:type:)(1);
    v30 = buf;
    v31 = v14;
    v32 = v15;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = partial apply for closure #1 in OSLogArguments.append(_:);
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_269912000, v28, v29, "Attempting to getMedicationsMatching for medicationIDs: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[34];
  v11 = v16[30];
  v9 = v16[31];
  MEMORY[0x277D82BD8](v28);
  v4 = *(v9 + 8);
  v16[38] = v4;
  v16[39] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v10, v11);
  v5 = swift_task_alloc();
  v16[40] = v5;
  *v5 = v16[17];
  v5[1] = SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
  v6 = v16[29];
  v7 = v16[28];

  return SpecificMedicationsPersistor.doUTCQueryForMedications()(v7, v6);
}

{
  v51 = v0;
  v1 = v0[42];
  v2 = v0[41];
  v44 = v0[24];
  v0[17] = v0;
  v0[20] = v2;

  *(swift_task_alloc() + 16) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23HKUserTrackedMedicationCGMd, &_sSaySo23HKUserTrackedMedicationCGMR);
  lazy protocol witness table accessor for type [HKUserTrackedMedication] and conformance [A]();
  v45 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
    v9 = *(v43 + 192);
  }

  else
  {
    v41 = *(v43 + 130);
    v40 = *(v43 + 192);

    *(v43 + 168) = v45;
    *(swift_task_alloc() + 16) = v41;
    v42 = _ArrayProtocol.filter(_:)();
    v37 = *(v43 + 216);
    v36 = *(v43 + 208);
    v35 = *(v43 + 129);
    v34 = *(v43 + 200);

    *(v43 + 176) = v42;

    v38 = swift_task_alloc();
    *(v38 + 16) = v34;
    *(v38 + 24) = v35 & 1;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    v39 = _ArrayProtocol.filter(_:)();
    v31 = *(v43 + 296);
    v23 = *(v43 + 288);
    v24 = *(v43 + 280);
    v3 = *(v43 + 264);
    v22 = *(v43 + 240);
    v20 = *(v43 + 216);

    *(v43 + 184) = v39;
    v21 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v24(v3, v21, v22);
    swift_endAccess();

    v25 = swift_allocObject();
    *(v25 + 16) = v39;
    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
    *(v26 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v29 + 24) = v26;
    _allocateUninitializedArray<A>(_:)();
    v30 = v4;

    *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[1] = v27;

    v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v28;

    v30[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v30[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v33))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = createStorage<A>(capacity:type:)(0);
      v19 = createStorage<A>(capacity:type:)(0);
      v46 = buf;
      v47 = v18;
      v48 = v19;
      serialize(_:at:)(0, &v46);
      serialize(_:at:)(1, &v46);
      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v27;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      v49 = partial apply for closure #1 in OSLogArguments.append(_:);
      v50 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      v49 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v50 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v49, &v46, &v47, &v48);
      _os_log_impl(&dword_269912000, oslog, v33, "got matchingUserTrackedMeds: %ld", buf, 0xCu);
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v12 = *(v43 + 312);
    v13 = *(v43 + 304);
    v10 = *(v43 + 264);
    v11 = *(v43 + 240);
    MEMORY[0x277D82BD8](oslog);
    v13(v10, v11);
    v5 = *(v43 + 272);
    v14 = *(v43 + 264);
    v15 = *(v43 + 256);

    v6 = *(*(v43 + 136) + 8);
    v7 = *(v43 + 136);

    return v6(v39);
  }
}

{
  v42 = v0;
  v26 = v0[42];
  v34 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v1 = v0[32];
  v23 = v0[30];
  v0[17] = v0;
  v2 = v26;
  v0[19] = v26;
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v25(v1, v22, v23);
  swift_endAccess();
  v3 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
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
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(1);
    v20 = createStorage<A>(capacity:type:)(0);
    v37 = buf;
    v38 = v19;
    v39 = v20;
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
    _os_log_impl(&dword_269912000, v35, v36, "Error doing UTC Query for Medications: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v19, 1, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v21[42];
  v11 = v21[39];
  v12 = v21[38];
  v9 = v21[32];
  v10 = v21[30];
  MEMORY[0x277D82BD8](v35);
  v12(v9, v10);
  type metadata accessor for HKUserTrackedMedication();
  v16 = _allocateUninitializedArray<A>(_:)();

  v5 = v21[34];
  v14 = v21[33];
  v15 = v21[32];

  v6 = *(v21[17] + 8);
  v7 = v21[17];

  return v6(v16);
}

uint64_t SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 320);
  v9[17] = *v2;
  v10 = v9 + 17;
  v9[41] = a1;
  v9[42] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
  }

  else
  {
    v5 = *v10;
    v6 = SpecificMedicationsPersistor.getMedicationsMatching(medicationIDs:strength:strengthUnit:isAsNeeded:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

id closure #1 in SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)@<X0>(uint64_t *a1@<X0>, Swift::Int a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = objc_opt_self();
  type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(a2).super.super.isa;
  v8 = [v6 asNeededExposableDoseEventForMedication:v5 doseQuantity:?];
  MEMORY[0x277D82BD8](isa);
  result = v8;
  *a3 = v8;
  return result;
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1048) = v28;
  *(v8 + 1040) = v27;
  *(v8 + 1032) = a8;
  *(v8 + 1024) = a7;
  *(v8 + 555) = a6;
  *(v8 + 1016) = a5;
  *(v8 + 554) = a4 & 1;
  *(v8 + 553) = a3 & 1;
  *(v8 + 1008) = a2;
  *(v8 + 1000) = a1;
  *(v8 + 560) = v8;
  *(v8 + 568) = 0;
  *(v8 + 576) = 0;
  *(v8 + 1432) = 0;
  *(v8 + 1440) = 0;
  *(v8 + 544) = 0;
  *(v8 + 552) = 0;
  *(v8 + 384) = 0;
  *(v8 + 392) = 0;
  *(v8 + 400) = 0;
  *(v8 + 408) = 0;
  *(v8 + 584) = 0;
  *(v8 + 592) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 616) = 0;
  *(v8 + 656) = 0;
  *(v8 + 664) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 704) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 728) = 0;
  *(v8 + 736) = 0;
  *(v8 + 752) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  *(v8 + 792) = 0;
  *(v8 + 800) = 0;
  *(v8 + 816) = 0;
  *(v8 + 856) = 0;
  *(v8 + 880) = 0;
  *(v8 + 888) = 0;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v8 + 1072) = v9;
  v15 = *(v9 - 8);
  *(v8 + 1080) = v15;
  v10 = *(v15 + 64) + 15;
  *(v8 + 1088) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 1096) = v11;
  v16 = *(v11 - 8);
  *(v8 + 1104) = v16;
  v17 = *(v16 + 64);
  *(v8 + 1112) = swift_task_alloc();
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 568) = a1;
  *(v8 + 576) = a2;
  *(v8 + 1432) = a3 & 1;
  *(v8 + 1440) = a4 & 1;
  *(v8 + 544) = a5;
  *(v8 + 552) = a6 & 1;
  *(v8 + 384) = a7;
  *(v8 + 392) = a8;
  *(v8 + 400) = v27;
  *(v8 + 408) = v28;
  v12 = *(v8 + 560);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)()
{
  v117 = v0;
  v1 = *(v0 + 1160);
  v87 = *(v0 + 1104);
  v89 = *(v0 + 1096);
  v93 = *(v0 + 1032);
  v92 = *(v0 + 1024);
  v91 = *(v0 + 555);
  v90 = *(v0 + 1016);
  *(v0 + 560) = v0;
  v88 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v87 + 16);
  *(v0 + 1168) = v2;
  *(v0 + 1176) = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v88, v89);
  swift_endAccess();
  v94 = swift_allocObject();
  *(v94 + 16) = v90;
  *(v94 + 24) = v91 & 1;

  v96 = swift_allocObject();
  *(v96 + 16) = v92;
  *(v96 + 24) = v93;
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  v98 = swift_allocObject();
  *(v98 + 16) = 32;
  v99 = swift_allocObject();
  *(v99 + 16) = 8;
  v95 = swift_allocObject();
  *(v95 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v95 + 24) = v94;
  v100 = swift_allocObject();
  *(v100 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v100 + 24) = v95;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v97 = swift_allocObject();
  *(v97 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v97 + 24) = v96;
  v103 = swift_allocObject();
  *(v103 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v103 + 24) = v97;
  *(v0 + 1184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v104 = v3;

  *v104 = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[1] = v98;

  v104[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[3] = v99;

  v104[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[5] = v100;

  v104[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[7] = v101;

  v104[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[9] = v102;

  v104[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v104[11] = v103;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v105, v106))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v84 = createStorage<A>(capacity:type:)(0);
    v85 = createStorage<A>(capacity:type:)(2);
    v112 = buf;
    v113 = v84;
    v114 = v85;
    serialize(_:at:)(2, &v112);
    serialize(_:at:)(2, &v112);
    v115 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116 = v98;
    closure #1 in osLogInternal(_:log:type:)(&v115, &v112, &v113, &v114);
    v115 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116 = v99;
    closure #1 in osLogInternal(_:log:type:)(&v115, &v112, &v113, &v114);
    v115 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116 = v100;
    closure #1 in osLogInternal(_:log:type:)(&v115, &v112, &v113, &v114);
    v115 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116 = v101;
    closure #1 in osLogInternal(_:log:type:)(&v115, &v112, &v113, &v114);
    v115 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116 = v102;
    closure #1 in osLogInternal(_:log:type:)(&v115, &v112, &v113, &v114);
    v115 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116 = v103;
    closure #1 in osLogInternal(_:log:type:)(&v115, &v112, &v113, &v114);
    _os_log_impl(&dword_269912000, v105, v106, "Starting to write dose event: dosage (%s), dosageUnit (%s)", buf, 0x16u);
    destroyStorage<A>(_:count:)(v84, 0, v82);
    destroyStorage<A>(_:count:)(v85, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v78 = *(v86 + 1160);
  v79 = *(v86 + 1096);
  v80 = *(v86 + 553);
  v77 = *(v86 + 1104);
  MEMORY[0x277D82BD8](v105);
  v4 = *(v77 + 8);
  *(v86 + 1192) = v4;
  *(v86 + 1200) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v78, v79);
  if (v80)
  {
    v76 = 4;
  }

  else
  {
    v76 = 5;
  }

  *(v86 + 1208) = v76;
  v74 = *(v86 + 1008);
  *(v86 + 584) = v76;
  *(v86 + 1216) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v86 + 592) = _allocateUninitializedArray<A>(_:)();

  *(v86 + 600) = v74;
  *(v86 + 1224) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  *(v86 + 1232) = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  *(v86 + 1240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v75 = *(v86 + 608);
  *(v86 + 1248) = v75;
  if (v75)
  {
    v71 = *(v86 + 1184);
    v53 = *(v86 + 1176);
    v54 = *(v86 + 1168);
    v5 = *(v86 + 1152);
    v52 = *(v86 + 1096);
    *(v86 + 816) = v75;
    v51 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v54(v5, v51, v52);
    swift_endAccess();
    MEMORY[0x277D82BE0](v75);
    v55 = swift_allocObject();
    *(v55 + 16) = v75;
    MEMORY[0x277D82BE0](v75);
    v57 = swift_allocObject();
    *(v57 + 16) = v75;
    MEMORY[0x277D82BE0](v75);
    v59 = swift_allocObject();
    *(v59 + 16) = v75;
    oslog = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v56 + 24) = v55;
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v63 + 24) = v56;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v58 + 24) = v57;
    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v66 + 24) = v58;
    v67 = swift_allocObject();
    *(v67 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v60 + 24) = v59;
    v69 = swift_allocObject();
    *(v69 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v69 + 24) = v60;
    _allocateUninitializedArray<A>(_:)();
    v70 = v6;

    *v70 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[1] = v61;

    v70[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[3] = v62;

    v70[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[5] = v63;

    v70[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[7] = v64;

    v70[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[9] = v65;

    v70[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[11] = v66;

    v70[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[13] = v67;

    v70[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[15] = v68;

    v70[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v70[17] = v69;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v73))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(0);
      v50 = createStorage<A>(capacity:type:)(3);
      *(v86 + 976) = v48;
      *(v86 + 984) = v49;
      *(v86 + 992) = v50;
      serialize(_:at:)(2, (v86 + 976));
      serialize(_:at:)(3, (v86 + 976));
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v61;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v62;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v63;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v64;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v65;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v66;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v67;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v68;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      *(v86 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v86 + 536) = v69;
      closure #1 in osLogInternal(_:log:type:)(v86 + 528, v86 + 976, v86 + 984, v86 + 992);
      _os_log_impl(&dword_269912000, oslog, v73, "in writeDoseEvent(), started with a doseEvent w/ dosage: (%s), scheduledDosage: (%s), logOrigin: (%s)", v48, 0x20u);
      destroyStorage<A>(_:count:)(v49, 0, v47);
      destroyStorage<A>(_:count:)(v50, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v48, MEMORY[0x277D84B78]);
    }

    *(v86 + 1256) = 0;
    v44 = *(v86 + 1200);
    v45 = *(v86 + 1192);
    v42 = *(v86 + 1152);
    v43 = *(v86 + 1096);
    v46 = *(v86 + 555);
    MEMORY[0x277D82BD8](oslog);
    v45(v42, v43);
    v7 = swift_task_alloc();
    *(v86 + 1264) = v7;
    *v7 = *(v86 + 560);
    v7[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v8 = *(v86 + 1048);
    v9 = *(v86 + 1040);
    v10 = *(v86 + 1032);
    v11 = *(v86 + 1024);
    v12 = *(v86 + 1016);

    return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v75, v12, v46 & 1, v11, v10, v9, v8);
  }

  else
  {
    v39 = *(v86 + 1184);
    v30 = *(v86 + 1176);
    v31 = *(v86 + 1168);
    v14 = *(v86 + 1120);
    v29 = *(v86 + 1096);
    outlined destroy of [HKQuantityType]((v86 + 416));
    v28 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v31(v14, v28, v29);
    swift_endAccess();
    v32 = *(v86 + 592);

    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    log = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v34 + 24) = v33;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v37 + 24) = v34;
    _allocateUninitializedArray<A>(_:)();
    v38 = v15;

    *v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[1] = v35;

    v38[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[3] = v36;

    v38[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v38[5] = v37;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v41))
    {
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0);
      v27 = createStorage<A>(capacity:type:)(0);
      v107 = v25;
      v108 = v26;
      v109 = v27;
      serialize(_:at:)(0, &v107);
      serialize(_:at:)(1, &v107);
      v110 = partial apply for closure #1 in OSLogArguments.append(_:);
      v111 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
      v110 = partial apply for closure #1 in OSLogArguments.append(_:);
      v111 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
      v110 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v111 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
      _os_log_impl(&dword_269912000, log, v41, "writeDoseEvent() - added %ld doseEvents to updatedDoseEvents", v25, 0xCu);
      destroyStorage<A>(_:count:)(v26, 0, v24);
      destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v25, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v86 + 1216);
    v18 = *(v86 + 1200);
    v19 = *(v86 + 1192);
    v16 = *(v86 + 1120);
    v17 = *(v86 + 1096);
    v23 = *(v86 + 1000);
    MEMORY[0x277D82BD8](log);
    v19(v16, v17);
    swift_beginAccess();
    swift_endAccess();
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v86 + 1280) = isa;

    *(v86 + 16) = *(v86 + 560);
    *(v86 + 56) = v81;
    *(v86 + 24) = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v21 = swift_continuation_init();
    *(v86 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v86 + 112) = v21;
    *(v86 + 80) = MEMORY[0x277D85DD0];
    *(v86 + 88) = 1107296256;
    *(v86 + 92) = 0;
    *(v86 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v86 + 104) = &block_descriptor_5;
    [v23 writeDoseEvents:isa completion:?];

    return MEMORY[0x282200938](v86 + 16);
  }
}

{
  v181 = v0;
  v1 = *(v0 + 1272);
  *(v0 + 560) = v0;
  if (!v1)
  {
    v73 = *(v175 + 1184);
    v71 = *(v175 + 1176);
    v72 = *(v175 + 1168);
    v16 = *(v175 + 1128);
    v70 = *(v175 + 1096);
    v69 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v72(v16, v69, v70);
    swift_endAccess();
    v75 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v76 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v75, v74))
    {
      v17 = *(v175 + 1256);
      v65 = static UnsafeMutablePointer.allocate(capacity:)();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v66 = createStorage<A>(capacity:type:)(0);
      v67 = createStorage<A>(capacity:type:)(0);
      *(v175 + 824) = v65;
      *(v175 + 832) = v66;
      *(v175 + 840) = v67;
      serialize(_:at:)(0, (v175 + 824));
      serialize(_:at:)(0, (v175 + 824));
      *(v175 + 848) = v76;
      v68 = swift_task_alloc();
      v68[2] = v175 + 824;
      v68[3] = v175 + 832;
      v68[4] = v175 + 840;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v17)
      {
      }

      _os_log_impl(&dword_269912000, v75, v74, "in writeDoseEvent, got complex dosage logging error, returning .gotComplexDosageLoggingError.", v65, 2u);
      destroyStorage<A>(_:count:)(v66, 0, v64);
      destroyStorage<A>(_:count:)(v67, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v65, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v60 = *(v175 + 1200);
    v61 = *(v175 + 1192);
    v58 = *(v175 + 1128);
    v59 = *(v175 + 1096);
    v62 = *(v175 + 1248);
    MEMORY[0x277D82BD8](v75);
    v61(v58, v59);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v63 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(112, 0);
    MEMORY[0x277D82BD8](v62);
    outlined destroy of [HKQuantityType]((v175 + 416));
    outlined destroy of [HKQuantityType]((v175 + 592));
    v125 = v63;
    goto LABEL_42;
  }

  v139 = *(v175 + 1272);
  *(v175 + 856) = v139;
  *(v175 + 864) = [v139 logOrigin];
  *(v175 + 872) = 1;
  type metadata accessor for HKMedicationDoseEventLogOrigin();
  lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin();
  v11 = == infix<A>(_:_:)();
  if (v11)
  {
    *(v175 + 960) = *(v175 + 1208);
    *(v175 + 968) = 4;
    type metadata accessor for HKMedicationDoseEventStatus();
    lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v135 = *(v175 + 1184);
      v133 = *(v175 + 1176);
      v134 = *(v175 + 1168);
      v12 = *(v175 + 1144);
      v132 = *(v175 + 1096);
      v131 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v134(v12, v131, v132);
      swift_endAccess();
      log = Logger.logObject.getter();
      v136 = static os_log_type_t.error.getter();
      v138 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(log, v136))
      {

        goto LABEL_20;
      }

      v13 = *(v175 + 1256);
      v127 = static UnsafeMutablePointer.allocate(capacity:)();
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v128 = createStorage<A>(capacity:type:)(0);
      v129 = createStorage<A>(capacity:type:)(0);
      *(v175 + 928) = v127;
      *(v175 + 936) = v128;
      *(v175 + 944) = v129;
      serialize(_:at:)(0, (v175 + 928));
      serialize(_:at:)(0, (v175 + 928));
      *(v175 + 952) = v138;
      v130 = swift_task_alloc();
      v130[2] = v175 + 928;
      v130[3] = v175 + 936;
      v130[4] = v175 + 944;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v13)
      {

        _os_log_impl(&dword_269912000, log, v136, "This is an as needed dose event; you can only log it as taken, but got different requested status. returning .failure", v127, 2u);
        destroyStorage<A>(_:count:)(v128, 0, v126);
        destroyStorage<A>(_:count:)(v129, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v127, MEMORY[0x277D84B78]);

LABEL_20:
        v121 = *(v175 + 1200);
        v122 = *(v175 + 1192);
        v119 = *(v175 + 1144);
        v120 = *(v175 + 1096);
        v123 = *(v175 + 1248);
        MEMORY[0x277D82BD8](log);
        v122(v119, v120);
        type metadata accessor for LogSpecificMedicationsIntentResponse();
        v124 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
        MEMORY[0x277D82BD8](v139);
        MEMORY[0x277D82BD8](v123);
        outlined destroy of [HKQuantityType]((v175 + 416));
        outlined destroy of [HKQuantityType]((v175 + 592));
        v125 = v124;
LABEL_42:
        v20 = *(v175 + 1160);
        v23 = *(v175 + 1152);
        v24 = *(v175 + 1144);
        v25 = *(v175 + 1136);
        v26 = *(v175 + 1128);
        v27 = *(v175 + 1120);
        v28 = *(v175 + 1112);
        v29 = *(v175 + 1088);
        v30 = *(v175 + 1064);
        v31 = *(v175 + 1056);

        v21 = *(*(v175 + 560) + 8);
        v22 = *(v175 + 560);

        return v21(v125);
      }
    }
  }

  v116 = *(v175 + 1184);
  v96 = *(v175 + 1176);
  v97 = *(v175 + 1168);
  v88 = *(v175 + 1136);
  v95 = *(v175 + 1096);
  v91 = *(v175 + 1088);
  v90 = *(v175 + 1072);
  v99 = *(v175 + 1248);
  v89 = *(v175 + 1080);
  v92 = [v139 updateForNewStatus_];
  *(v175 + 880) = v92;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v89 + 8))(v91, v90);
  v98 = [v92 updateForNewStartDate_];
  MEMORY[0x277D82BD8](isa);
  *(v175 + 888) = v98;
  v94 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v97(v88, v94, v95);
  swift_endAccess();
  MEMORY[0x277D82BE0](v98);
  v100 = swift_allocObject();
  *(v100 + 16) = v98;
  MEMORY[0x277D82BE0](v98);
  v102 = swift_allocObject();
  *(v102 + 16) = v98;
  MEMORY[0x277D82BE0](v99);
  v104 = swift_allocObject();
  *(v104 + 16) = v99;
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.debug.getter();
  v106 = swift_allocObject();
  *(v106 + 16) = 32;
  v107 = swift_allocObject();
  *(v107 + 16) = 8;
  v101 = swift_allocObject();
  *(v101 + 16) = partial apply for implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v101 + 24) = v100;
  v108 = swift_allocObject();
  *(v108 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v108 + 24) = v101;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v110 = swift_allocObject();
  *(v110 + 16) = 8;
  v103 = swift_allocObject();
  *(v103 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v103 + 24) = v102;
  v111 = swift_allocObject();
  *(v111 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v111 + 24) = v103;
  v112 = swift_allocObject();
  *(v112 + 16) = 32;
  v113 = swift_allocObject();
  *(v113 + 16) = 8;
  v105 = swift_allocObject();
  *(v105 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v105 + 24) = v104;
  v114 = swift_allocObject();
  *(v114 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v114 + 24) = v105;
  _allocateUninitializedArray<A>(_:)();
  v115 = v14;

  *v115 = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[1] = v106;

  v115[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[3] = v107;

  v115[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[5] = v108;

  v115[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[7] = v109;

  v115[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[9] = v110;

  v115[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[11] = v111;

  v115[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[13] = v112;

  v115[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[15] = v113;

  v115[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v115[17] = v114;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v117, v118))
  {
    v15 = *(v175 + 1256);
    v85 = static UnsafeMutablePointer.allocate(capacity:)();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v86 = createStorage<A>(capacity:type:)(0);
    v87 = createStorage<A>(capacity:type:)(3);
    *(v175 + 904) = v85;
    *(v175 + 912) = v86;
    *(v175 + 920) = v87;
    serialize(_:at:)(2, (v175 + 904));
    serialize(_:at:)(3, (v175 + 904));
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v106;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    if (v15)
    {
      goto LABEL_7;
    }

    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v107;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v108;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v109;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v110;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v111;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v112;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v113;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    *(v175 + 512) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 520) = v114;
    closure #1 in osLogInternal(_:log:type:)(v175 + 512, v175 + 904, v175 + 912, v175 + 920);
    _os_log_impl(&dword_269912000, v117, v118, "in writeDoseEvent(), updated to doseEvent w/ dosage: (%s), scheduledDosage: (%s), logOrigin: (%s)", v85, 0x20u);
    destroyStorage<A>(_:count:)(v86, 0, v84);
    destroyStorage<A>(_:count:)(v87, 3, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v85, MEMORY[0x277D84B78]);

    v83 = 0;
  }

  else
  {

    v83 = *(v175 + 1256);
  }

  v81 = *(v175 + 1224);
  v79 = *(v175 + 1200);
  v80 = *(v175 + 1192);
  v77 = *(v175 + 1136);
  v78 = *(v175 + 1096);
  v82 = *(v175 + 1248);
  MEMORY[0x277D82BD8](v117);
  v80(v77, v78);
  MEMORY[0x277D82BE0](v98);
  *(v175 + 896) = v98;
  Array.append(_:)();
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v139);
  MEMORY[0x277D82BD8](v82);
  *(v175 + 1240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v151 = *(v175 + 608);
  *(v175 + 1248) = v151;
  if (v151)
  {
    v172 = *(v175 + 1184);
    v154 = *(v175 + 1176);
    v155 = *(v175 + 1168);
    v2 = *(v175 + 1152);
    v153 = *(v175 + 1096);
    *(v175 + 816) = v151;
    v152 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v155(v2, v152, v153);
    swift_endAccess();
    MEMORY[0x277D82BE0](v151);
    v156 = swift_allocObject();
    *(v156 + 16) = v151;
    MEMORY[0x277D82BE0](v151);
    v158 = swift_allocObject();
    *(v158 + 16) = v151;
    MEMORY[0x277D82BE0](v151);
    v160 = swift_allocObject();
    *(v160 + 16) = v151;
    oslog = Logger.logObject.getter();
    v174 = static os_log_type_t.debug.getter();
    v162 = swift_allocObject();
    *(v162 + 16) = 32;
    v163 = swift_allocObject();
    *(v163 + 16) = 8;
    v157 = swift_allocObject();
    *(v157 + 16) = partial apply for implicit closure #3 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v157 + 24) = v156;
    v164 = swift_allocObject();
    *(v164 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v164 + 24) = v157;
    v165 = swift_allocObject();
    *(v165 + 16) = 32;
    v166 = swift_allocObject();
    *(v166 + 16) = 8;
    v159 = swift_allocObject();
    *(v159 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v159 + 24) = v158;
    v167 = swift_allocObject();
    *(v167 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v167 + 24) = v159;
    v168 = swift_allocObject();
    *(v168 + 16) = 32;
    v169 = swift_allocObject();
    *(v169 + 16) = 8;
    v161 = swift_allocObject();
    *(v161 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v161 + 24) = v160;
    v170 = swift_allocObject();
    *(v170 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v170 + 24) = v161;
    _allocateUninitializedArray<A>(_:)();
    v171 = v3;

    *v171 = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[1] = v162;

    v171[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[3] = v163;

    v171[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[5] = v164;

    v171[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[7] = v165;

    v171[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[9] = v166;

    v171[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[11] = v167;

    v171[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[13] = v168;

    v171[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[15] = v169;

    v171[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v171[17] = v170;
    _finalizeUninitializedArray<A>(_:)();

    if (!os_log_type_enabled(oslog, v174))
    {

      v145 = v83;
      goto LABEL_8;
    }

    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v149 = createStorage<A>(capacity:type:)(0);
    v150 = createStorage<A>(capacity:type:)(3);
    *(v175 + 976) = buf;
    *(v175 + 984) = v149;
    *(v175 + 992) = v150;
    serialize(_:at:)(2, (v175 + 976));
    serialize(_:at:)(3, (v175 + 976));
    *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v175 + 536) = v162;
    closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
    if (!v83)
    {
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v163;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v164;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v165;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v166;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v167;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v168;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v169;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      *(v175 + 528) = partial apply for closure #1 in OSLogArguments.append(_:);
      *(v175 + 536) = v170;
      closure #1 in osLogInternal(_:log:type:)(v175 + 528, v175 + 976, v175 + 984, v175 + 992);
      _os_log_impl(&dword_269912000, oslog, v174, "in writeDoseEvent(), started with a doseEvent w/ dosage: (%s), scheduledDosage: (%s), logOrigin: (%s)", buf, 0x20u);
      destroyStorage<A>(_:count:)(v149, 0, v147);
      destroyStorage<A>(_:count:)(v150, 3, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v145 = 0;
LABEL_8:
      *(v175 + 1256) = v145;
      v142 = *(v175 + 1200);
      v143 = *(v175 + 1192);
      v140 = *(v175 + 1152);
      v141 = *(v175 + 1096);
      v144 = *(v175 + 555);
      MEMORY[0x277D82BD8](oslog);
      v143(v140, v141);
      v5 = swift_task_alloc();
      *(v175 + 1264) = v5;
      *v5 = *(v175 + 560);
      v5[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v6 = *(v175 + 1048);
      v7 = *(v175 + 1040);
      v8 = *(v175 + 1032);
      v9 = *(v175 + 1024);
      v10 = *(v175 + 1016);

      return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v151, v10, v144 & 1, v9, v8, v7, v6);
    }

LABEL_7:
  }

  v55 = *(v175 + 1184);
  v46 = *(v175 + 1176);
  v47 = *(v175 + 1168);
  v18 = *(v175 + 1120);
  v45 = *(v175 + 1096);
  outlined destroy of [HKQuantityType]((v175 + 416));
  v44 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v47(v18, v44, v45);
  swift_endAccess();
  v48 = *(v175 + 592);

  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v50 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v53 + 24) = v50;
  _allocateUninitializedArray<A>(_:)();
  v54 = v19;

  *v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v54[1] = v51;

  v54[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v54[3] = v52;

  v54[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v56, v57))
  {
    v41 = static UnsafeMutablePointer.allocate(capacity:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = createStorage<A>(capacity:type:)(0);
    v43 = createStorage<A>(capacity:type:)(0);
    v176 = v41;
    v177 = v42;
    v178 = v43;
    serialize(_:at:)(0, &v176);
    serialize(_:at:)(1, &v176);
    v179 = partial apply for closure #1 in OSLogArguments.append(_:);
    v180 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v179, &v176, &v177, &v178);
    if (v83)
    {
    }

    v179 = partial apply for closure #1 in OSLogArguments.append(_:);
    v180 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v179, &v176, &v177, &v178);
    v179 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v180 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v179, &v176, &v177, &v178);
    _os_log_impl(&dword_269912000, v56, v57, "writeDoseEvent() - added %ld doseEvents to updatedDoseEvents", v41, 0xCu);
    destroyStorage<A>(_:count:)(v42, 0, v40);
    destroyStorage<A>(_:count:)(v43, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v41, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v36 = *(v175 + 1216);
  v34 = *(v175 + 1200);
  v35 = *(v175 + 1192);
  v32 = *(v175 + 1120);
  v33 = *(v175 + 1096);
  v39 = *(v175 + 1000);
  MEMORY[0x277D82BD8](v56);
  v35(v32, v33);
  swift_beginAccess();
  swift_endAccess();
  v38 = Array._bridgeToObjectiveC()().super.isa;
  *(v175 + 1280) = v38;

  *(v175 + 16) = *(v175 + 560);
  *(v175 + 56) = v146;
  *(v175 + 24) = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  v37 = swift_continuation_init();
  *(v175 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v175 + 112) = v37;
  *(v175 + 80) = MEMORY[0x277D85DD0];
  *(v175 + 88) = 1107296256;
  *(v175 + 92) = 0;
  *(v175 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v175 + 104) = &block_descriptor_5;
  [v39 writeDoseEvents:v38 completion:?];

  return MEMORY[0x282200938](v175 + 16);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 560);
  *(v8 + 560) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 1288) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  }

  else
  {
    v2 = *v6;
    v3 = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v1 = v0[160];
  v91 = v0[154];
  v89 = v0[153];
  v90 = v0[126];
  v0[70] = v0;
  MEMORY[0x277D82BD8](v1);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v88 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  v0[162] = v88;
  MEMORY[0x277D82BE0](v88);
  v0[82] = v88;
  v0[163] = type metadata accessor for MatchedMedName();
  v0[83] = _allocateUninitializedArray<A>(_:)();

  v0[84] = v90;
  Collection<>.makeIterator()();
  v2 = v0[155];
  IndexingIterator.next()();
  v92 = v0[85];
  v0[164] = v92;
  if (v92)
  {
    *(v87 + 792) = v92;
    v3 = swift_task_alloc();
    v4 = v92;
    *(v87 + 1320) = v3;
    *v3 = *(v87 + 560);
    v3[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v5 = *(v87 + 1048);
    v6 = *(v87 + 1040);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v4, 1, v6, v5);
  }

  v82 = *(v87 + 1304);
  v85 = *(v87 + 1296);
  v86 = *(v87 + 554);
  outlined destroy of [HKQuantityType]((v87 + 432));
  v83 = *(v87 + 664);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v85 setMatchingMedsBeforeUpdate_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v85);
  if (v86)
  {
    v79 = *(v87 + 1232);
    v78 = *(v87 + 1224);
    swift_beginAccess();
    v80 = *(v87 + 592);

    swift_endAccess();
    *(v87 + 776) = v80;
    Collection.first.getter();
    v81 = *(v87 + 784);

    if (v81)
    {
      v72 = [v81 medicationIdentifier];
      MEMORY[0x277D82BD8](v81);
      v73 = [v72 underlyingIdentifier];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v8;
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v73);
      v76 = v74;
      v77 = v75;
    }

    else
    {
      v76 = 0;
      v77 = 0;
    }

    *(v87 + 1336) = v77;
    v9 = swift_task_alloc();
    *(v87 + 1344) = v9;
    *v9 = *(v87 + 560);
    v9[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v10 = *(v87 + 1048);
    v11 = *(v87 + 1040);

    return SpecificMedicationsPersistor.displayNameFor(identifier:)(v76, v77, v11, v10);
  }

  else
  {
    v70 = *(v87 + 1232);
    v69 = *(v87 + 1224);
    v65 = *(v87 + 1216);
    v68 = *(v87 + 1008);
    v66 = *(v87 + 656);
    MEMORY[0x277D82BE0](v66);
    type metadata accessor for NSNumber();
    v12 = MEMORY[0x26D6494A0](v68, v65);
    v67 = NSNumber.__allocating_init(value:)(v12).super.super.isa;
    [v66 setMedCount_];
    MEMORY[0x277D82BD8](v67);
    *(v87 + 688) = v68;
    Collection.first.getter();
    v71 = *(v87 + 696);
    if (v71)
    {
      v64 = [v71 scheduledDate];
      if (v64)
      {
        v61 = *(v87 + 1088);
        v62 = *(v87 + 1072);
        v63 = *(v87 + 1056);
        v60 = *(v87 + 1080);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v60 + 32))(v63, v61, v62);
        (*(v60 + 56))(v63, 0, 1, v62);
        MEMORY[0x277D82BD8](v64);
      }

      else
      {
        (*(*(v87 + 1080) + 56))(*(v87 + 1056), 1, 1, *(v87 + 1072));
      }

      outlined init with take of Date?(*(v87 + 1056), *(v87 + 1064));
      MEMORY[0x277D82BD8](v71);
    }

    else
    {
      (*(*(v87 + 1080) + 56))(*(v87 + 1064), 1, 1, *(v87 + 1072));
    }

    v57 = *(v87 + 1064);
    v58 = getFormattedTimeString(time:)(v57);
    v59 = v13;
    outlined destroy of Date?(v57);
    if (v59)
    {
      v55 = MEMORY[0x26D6492A0](v58);

      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v54 = *(v87 + 555);
    [v66 setMedSchedule_];
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v66);
    if (v54)
    {
      v14 = *(v87 + 1304);
      v45 = *(v87 + 1232);
      v44 = *(v87 + 1224);
      *(v87 + 704) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v43 = *(v87 + 592);

      swift_endAccess();
      *(v87 + 712) = v43;
      Collection<>.makeIterator()();
      v15 = *(v87 + 1240);
      IndexingIterator.next()();
      v46 = *(v87 + 720);
      *(v87 + 1408) = v46;
      if (v46)
      {
        *(v87 + 728) = v46;
        v20 = swift_task_alloc();
        v4 = v46;
        *(v87 + 1416) = v20;
        *v20 = *(v87 + 560);
        v20[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
        v5 = *(v87 + 1048);
        v6 = *(v87 + 1040);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v4, 1, v6, v5);
      }

      v24 = *(v87 + 1304);
      outlined destroy of [HKQuantityType]((v87 + 448));
      v36 = *(v87 + 656);
      MEMORY[0x277D82BE0](v36);
      v25 = *(v87 + 704);

      v26 = Array._bridgeToObjectiveC()().super.isa;

      [v36 setMatchingMeds_];
      MEMORY[0x277D82BD8](v26);
      outlined destroy of [HKQuantityType]((v87 + 704));
      outlined destroy of [HKQuantityType]((v87 + 664));
      MEMORY[0x277D82BD8](*(v87 + 656));
      outlined destroy of [HKQuantityType]((v87 + 592));
      v21 = *(v87 + 1160);
      v27 = *(v87 + 1152);
      v28 = *(v87 + 1144);
      v29 = *(v87 + 1136);
      v30 = *(v87 + 1128);
      v31 = *(v87 + 1120);
      v32 = *(v87 + 1112);
      v33 = *(v87 + 1088);
      v34 = *(v87 + 1064);
      v35 = *(v87 + 1056);

      v22 = *(*(v87 + 560) + 8);
      v23 = *(v87 + 560);

      return v22(v36);
    }

    else
    {
      value = *(v87 + 1016);
      v52 = *(v87 + 1232);
      v51 = *(v87 + 1224);
      v50 = *(v87 + 1008);
      *(v87 + 752) = value;
      v48 = *(v87 + 656);
      *(v87 + 1368) = v48;
      MEMORY[0x277D82BE0](v48);
      v49 = NSNumber.__allocating_init(value:)(value).super.super.isa;
      [v48 setDosage_];
      MEMORY[0x277D82BD8](v49);
      *(v87 + 760) = v50;
      Collection.first.getter();
      v53 = *(v87 + 768);
      if (v53)
      {
        v37 = [v53 medicationIdentifier];
        MEMORY[0x277D82BD8](v53);
        v38 = [v37 underlyingIdentifier];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v16;
        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BD8](v38);
        v41 = v39;
        v42 = v40;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *(v87 + 1376) = v42;
      v17 = swift_task_alloc();
      *(v87 + 1384) = v17;
      *v17 = *(v87 + 560);
      v17[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v18 = *(v87 + 1048);
      v19 = *(v87 + 1040);

      return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v41, v42, v19, v18, value);
    }
  }
}

{
  v87 = v0[166];
  v88 = v0[164];
  v0[70] = v0;
  v0[100] = v87;
  MEMORY[0x277D82BE0](v87);
  v0[101] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  v1 = v0[155];
  IndexingIterator.next()();
  v89 = v0[85];
  v0[164] = v89;
  if (v89)
  {
    *(v86 + 792) = v89;
    v2 = swift_task_alloc();
    v3 = v89;
    *(v86 + 1320) = v2;
    *v2 = *(v86 + 560);
    v2[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v4 = *(v86 + 1048);
    v5 = *(v86 + 1040);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v3, 1, v5, v4);
  }

  v81 = *(v86 + 1304);
  v84 = *(v86 + 1296);
  v85 = *(v86 + 554);
  outlined destroy of [HKQuantityType]((v86 + 432));
  v82 = *(v86 + 664);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v84 setMatchingMedsBeforeUpdate_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v84);
  if (v85)
  {
    v78 = *(v86 + 1232);
    v77 = *(v86 + 1224);
    swift_beginAccess();
    v79 = *(v86 + 592);

    swift_endAccess();
    *(v86 + 776) = v79;
    Collection.first.getter();
    v80 = *(v86 + 784);

    if (v80)
    {
      v71 = [v80 medicationIdentifier];
      MEMORY[0x277D82BD8](v80);
      v72 = [v71 underlyingIdentifier];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v7;
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      v75 = v73;
      v76 = v74;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    *(v86 + 1336) = v76;
    v8 = swift_task_alloc();
    *(v86 + 1344) = v8;
    *v8 = *(v86 + 560);
    v8[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v9 = *(v86 + 1048);
    v10 = *(v86 + 1040);

    return SpecificMedicationsPersistor.displayNameFor(identifier:)(v75, v76, v10, v9);
  }

  else
  {
    v69 = *(v86 + 1232);
    v68 = *(v86 + 1224);
    v64 = *(v86 + 1216);
    v67 = *(v86 + 1008);
    v65 = *(v86 + 656);
    MEMORY[0x277D82BE0](v65);
    type metadata accessor for NSNumber();
    v11 = MEMORY[0x26D6494A0](v67, v64);
    v66 = NSNumber.__allocating_init(value:)(v11).super.super.isa;
    [v65 setMedCount_];
    MEMORY[0x277D82BD8](v66);
    *(v86 + 688) = v67;
    Collection.first.getter();
    v70 = *(v86 + 696);
    if (v70)
    {
      v63 = [v70 scheduledDate];
      if (v63)
      {
        v60 = *(v86 + 1088);
        v61 = *(v86 + 1072);
        v62 = *(v86 + 1056);
        v59 = *(v86 + 1080);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v59 + 32))(v62, v60, v61);
        (*(v59 + 56))(v62, 0, 1, v61);
        MEMORY[0x277D82BD8](v63);
      }

      else
      {
        (*(*(v86 + 1080) + 56))(*(v86 + 1056), 1, 1, *(v86 + 1072));
      }

      outlined init with take of Date?(*(v86 + 1056), *(v86 + 1064));
      MEMORY[0x277D82BD8](v70);
    }

    else
    {
      (*(*(v86 + 1080) + 56))(*(v86 + 1064), 1, 1, *(v86 + 1072));
    }

    v56 = *(v86 + 1064);
    v57 = getFormattedTimeString(time:)(v56);
    v58 = v12;
    outlined destroy of Date?(v56);
    if (v58)
    {
      v54 = MEMORY[0x26D6492A0](v57);

      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v53 = *(v86 + 555);
    [v65 setMedSchedule_];
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v65);
    if (v53)
    {
      v13 = *(v86 + 1304);
      v44 = *(v86 + 1232);
      v43 = *(v86 + 1224);
      *(v86 + 704) = _allocateUninitializedArray<A>(_:)();
      swift_beginAccess();
      v42 = *(v86 + 592);

      swift_endAccess();
      *(v86 + 712) = v42;
      Collection<>.makeIterator()();
      v14 = *(v86 + 1240);
      IndexingIterator.next()();
      v45 = *(v86 + 720);
      *(v86 + 1408) = v45;
      if (v45)
      {
        *(v86 + 728) = v45;
        v19 = swift_task_alloc();
        v3 = v45;
        *(v86 + 1416) = v19;
        *v19 = *(v86 + 560);
        v19[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
        v4 = *(v86 + 1048);
        v5 = *(v86 + 1040);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v3, 1, v5, v4);
      }

      v23 = *(v86 + 1304);
      outlined destroy of [HKQuantityType]((v86 + 448));
      v35 = *(v86 + 656);
      MEMORY[0x277D82BE0](v35);
      v24 = *(v86 + 704);

      v25 = Array._bridgeToObjectiveC()().super.isa;

      [v35 setMatchingMeds_];
      MEMORY[0x277D82BD8](v25);
      outlined destroy of [HKQuantityType]((v86 + 704));
      outlined destroy of [HKQuantityType]((v86 + 664));
      MEMORY[0x277D82BD8](*(v86 + 656));
      outlined destroy of [HKQuantityType]((v86 + 592));
      v20 = *(v86 + 1160);
      v26 = *(v86 + 1152);
      v27 = *(v86 + 1144);
      v28 = *(v86 + 1136);
      v29 = *(v86 + 1128);
      v30 = *(v86 + 1120);
      v31 = *(v86 + 1112);
      v32 = *(v86 + 1088);
      v33 = *(v86 + 1064);
      v34 = *(v86 + 1056);

      v21 = *(*(v86 + 560) + 8);
      v22 = *(v86 + 560);

      return v21(v35);
    }

    else
    {
      value = *(v86 + 1016);
      v51 = *(v86 + 1232);
      v50 = *(v86 + 1224);
      v49 = *(v86 + 1008);
      *(v86 + 752) = value;
      v47 = *(v86 + 656);
      *(v86 + 1368) = v47;
      MEMORY[0x277D82BE0](v47);
      v48 = NSNumber.__allocating_init(value:)(value).super.super.isa;
      [v47 setDosage_];
      MEMORY[0x277D82BD8](v48);
      *(v86 + 760) = v49;
      Collection.first.getter();
      v52 = *(v86 + 768);
      if (v52)
      {
        v36 = [v52 medicationIdentifier];
        MEMORY[0x277D82BD8](v52);
        v37 = [v36 underlyingIdentifier];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v15;
        MEMORY[0x277D82BD8](v36);
        MEMORY[0x277D82BD8](v37);
        v40 = v38;
        v41 = v39;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v86 + 1376) = v41;
      v16 = swift_task_alloc();
      *(v86 + 1384) = v16;
      *v16 = *(v86 + 560);
      v16[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v17 = *(v86 + 1048);
      v18 = *(v86 + 1040);

      return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v40, v41, v18, v17, value);
    }
  }
}

{
  v71 = v0[170];
  v1 = v0[169];
  v0[70] = v0;
  v0[62] = v1;
  v0[63] = v71;
  v70 = v0[82];
  MEMORY[0x277D82BE0](v70);

  if (v71)
  {
    v66 = *(v69 + 1360);
    v67 = MEMORY[0x26D6492A0](*(v69 + 1352));

    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  v58 = *(v69 + 1360);
  [v70 setMedName_];
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v70);

  v64 = *(v69 + 1232);
  v63 = *(v69 + 1224);
  v59 = *(v69 + 1216);
  v62 = *(v69 + 1008);
  v60 = *(v69 + 656);
  MEMORY[0x277D82BE0](v60);
  type metadata accessor for NSNumber();
  v2 = MEMORY[0x26D6494A0](v62, v59);
  isa = NSNumber.__allocating_init(value:)(v2).super.super.isa;
  [v60 setMedCount_];
  MEMORY[0x277D82BD8](isa);
  *(v69 + 688) = v62;
  Collection.first.getter();
  v65 = *(v69 + 696);
  if (v65)
  {
    v57 = [v65 scheduledDate];
    if (v57)
    {
      v54 = *(v69 + 1088);
      v55 = *(v69 + 1072);
      v56 = *(v69 + 1056);
      v53 = *(v69 + 1080);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v53 + 32))(v56, v54, v55);
      (*(v53 + 56))(v56, 0, 1, v55);
      MEMORY[0x277D82BD8](v57);
    }

    else
    {
      (*(*(v69 + 1080) + 56))(*(v69 + 1056), 1, 1, *(v69 + 1072));
    }

    outlined init with take of Date?(*(v69 + 1056), *(v69 + 1064));
    MEMORY[0x277D82BD8](v65);
  }

  else
  {
    (*(*(v69 + 1080) + 56))(*(v69 + 1064), 1, 1, *(v69 + 1072));
  }

  v50 = *(v69 + 1064);
  v51 = getFormattedTimeString(time:)(v50);
  v52 = v3;
  outlined destroy of Date?(v50);
  if (v52)
  {
    v48 = MEMORY[0x26D6492A0](v51);

    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v47 = *(v69 + 555);
  [v60 setMedSchedule_];
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v60);
  if (v47)
  {
    v4 = *(v69 + 1304);
    v38 = *(v69 + 1232);
    v37 = *(v69 + 1224);
    *(v69 + 704) = _allocateUninitializedArray<A>(_:)();
    swift_beginAccess();
    v36 = *(v69 + 592);

    swift_endAccess();
    *(v69 + 712) = v36;
    Collection<>.makeIterator()();
    v5 = *(v69 + 1240);
    IndexingIterator.next()();
    v39 = *(v69 + 720);
    *(v69 + 1408) = v39;
    if (v39)
    {
      *(v69 + 728) = v39;
      v11 = swift_task_alloc();
      *(v69 + 1416) = v11;
      *v11 = *(v69 + 560);
      v11[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      v12 = *(v69 + 1048);
      v13 = *(v69 + 1040);

      return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v39, 1, v13, v12);
    }

    else
    {
      v17 = *(v69 + 1304);
      outlined destroy of [HKQuantityType]((v69 + 448));
      v29 = *(v69 + 656);
      MEMORY[0x277D82BE0](v29);
      v18 = *(v69 + 704);

      v19 = Array._bridgeToObjectiveC()().super.isa;

      [v29 setMatchingMeds_];
      MEMORY[0x277D82BD8](v19);
      outlined destroy of [HKQuantityType]((v69 + 704));
      outlined destroy of [HKQuantityType]((v69 + 664));
      MEMORY[0x277D82BD8](*(v69 + 656));
      outlined destroy of [HKQuantityType]((v69 + 592));
      v14 = *(v69 + 1160);
      v20 = *(v69 + 1152);
      v21 = *(v69 + 1144);
      v22 = *(v69 + 1136);
      v23 = *(v69 + 1128);
      v24 = *(v69 + 1120);
      v25 = *(v69 + 1112);
      v26 = *(v69 + 1088);
      v27 = *(v69 + 1064);
      v28 = *(v69 + 1056);

      v15 = *(*(v69 + 560) + 8);
      v16 = *(v69 + 560);

      return v15(v29);
    }
  }

  else
  {
    value = *(v69 + 1016);
    v45 = *(v69 + 1232);
    v44 = *(v69 + 1224);
    v43 = *(v69 + 1008);
    *(v69 + 752) = value;
    v41 = *(v69 + 656);
    *(v69 + 1368) = v41;
    MEMORY[0x277D82BE0](v41);
    v42 = NSNumber.__allocating_init(value:)(value).super.super.isa;
    [v41 setDosage_];
    MEMORY[0x277D82BD8](v42);
    *(v69 + 760) = v43;
    Collection.first.getter();
    v46 = *(v69 + 768);
    if (v46)
    {
      v30 = [v46 medicationIdentifier];
      MEMORY[0x277D82BD8](v46);
      v31 = [v30 underlyingIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v6;
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    *(v69 + 1376) = v35;
    v7 = swift_task_alloc();
    *(v69 + 1384) = v7;
    *v7 = *(v69 + 560);
    v7[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v8 = *(v69 + 1048);
    v9 = *(v69 + 1040);

    return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v34, v35, v9, v8, value);
  }
}

{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[129];
  v0[70] = v0;
  v0[60] = v2;
  v0[61] = v1;

  if (v0[61])
  {
    *(v36 + 464) = *(v36 + 480);
  }

  else
  {
    v35 = *(v36 + 1032);
    v34 = *(v36 + 1024);

    *(v36 + 464) = v34;
    *(v36 + 472) = v35;
    if (*(v36 + 488))
    {
      outlined destroy of String.UTF8View(v36 + 480);
    }
  }

  v4 = *(v36 + 1032);

  if (*(v36 + 472))
  {
    v32 = MEMORY[0x26D6492A0](*(v36 + 464));

    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v27 = *(v36 + 1368);
  [v27 setDosageUnit_];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v27);
  v5 = *(v36 + 1304);
  v30 = *(v36 + 1232);
  v29 = *(v36 + 1224);
  *(v36 + 704) = _allocateUninitializedArray<A>(_:)();
  swift_beginAccess();
  v28 = *(v36 + 592);

  swift_endAccess();
  *(v36 + 712) = v28;
  Collection<>.makeIterator()();
  v6 = *(v36 + 1240);
  IndexingIterator.next()();
  v31 = *(v36 + 720);
  *(v36 + 1408) = v31;
  if (v31)
  {
    *(v36 + 728) = v31;
    v7 = swift_task_alloc();
    *(v36 + 1416) = v7;
    *v7 = *(v36 + 560);
    v7[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v8 = *(v36 + 1048);
    v9 = *(v36 + 1040);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v31, 1, v9, v8);
  }

  else
  {
    v14 = *(v36 + 1304);
    outlined destroy of [HKQuantityType]((v36 + 448));
    v26 = *(v36 + 656);
    MEMORY[0x277D82BE0](v26);
    v15 = *(v36 + 704);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType]((v36 + 704));
    outlined destroy of [HKQuantityType]((v36 + 664));
    MEMORY[0x277D82BD8](*(v36 + 656));
    outlined destroy of [HKQuantityType]((v36 + 592));
    v11 = *(v36 + 1160);
    v17 = *(v36 + 1152);
    v18 = *(v36 + 1144);
    v19 = *(v36 + 1136);
    v20 = *(v36 + 1128);
    v21 = *(v36 + 1120);
    v22 = *(v36 + 1112);
    v23 = *(v36 + 1088);
    v24 = *(v36 + 1064);
    v25 = *(v36 + 1056);

    v12 = *(*(v36 + 560) + 8);
    v13 = *(v36 + 560);

    return v12(v26);
  }
}

{
  v23 = v0[178];
  v24 = v0[176];
  v0[70] = v0;
  v0[92] = v23;
  MEMORY[0x277D82BE0](v23);
  v0[93] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v1 = v0[155];
  IndexingIterator.next()();
  v25 = v0[90];
  v0[176] = v25;
  if (v25)
  {
    v22[91] = v25;
    v2 = swift_task_alloc();
    v22[177] = v2;
    *v2 = v22[70];
    v2[1] = SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    v3 = v22[131];
    v4 = v22[130];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v25, 1, v4, v3);
  }

  else
  {
    v9 = v22[163];
    outlined destroy of [HKQuantityType](v22 + 56);
    v21 = v22[82];
    MEMORY[0x277D82BE0](v21);
    v10 = v22[88];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v21 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType](v22 + 88);
    outlined destroy of [HKQuantityType](v22 + 83);
    MEMORY[0x277D82BD8](v22[82]);
    outlined destroy of [HKQuantityType](v22 + 74);
    v6 = v22[145];
    v12 = v22[144];
    v13 = v22[143];
    v14 = v22[142];
    v15 = v22[141];
    v16 = v22[140];
    v17 = v22[139];
    v18 = v22[136];
    v19 = v22[133];
    v20 = v22[132];

    v7 = *(v22[70] + 8);
    v8 = v22[70];

    return v7(v21);
  }
}

{
  v1 = v0[161];
  v29 = v0[160];
  v34 = v0[148];
  v32 = v0[147];
  v33 = v0[146];
  v28 = v0[139];
  v31 = v0[137];
  v0[70] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v29);
  v2 = v1;
  v0[77] = v1;
  v30 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v33(v28, v30, v31);
  swift_endAccess();
  v36 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  v37 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v36, v35))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0);
    v25 = createStorage<A>(capacity:type:)(0);
    *(v27 + 624) = buf;
    *(v27 + 632) = v24;
    *(v27 + 640) = v25;
    serialize(_:at:)(0, (v27 + 624));
    serialize(_:at:)(0, (v27 + 624));
    *(v27 + 648) = v37;
    v26 = swift_task_alloc();
    v26[2] = v27 + 624;
    v26[3] = v27 + 632;
    v26[4] = v27 + 640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v36, v35, "Failed writing updated dose events for specific meds.", buf, 2u);
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v11 = *(v27 + 1288);
  v9 = *(v27 + 1200);
  v10 = *(v27 + 1192);
  v7 = *(v27 + 1112);
  v8 = *(v27 + 1096);
  MEMORY[0x277D82BD8](v36);
  v10(v7, v8);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v21 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  outlined destroy of [HKQuantityType]((v27 + 592));
  v3 = *(v27 + 1160);
  v12 = *(v27 + 1152);
  v13 = *(v27 + 1144);
  v14 = *(v27 + 1136);
  v15 = *(v27 + 1128);
  v16 = *(v27 + 1120);
  v17 = *(v27 + 1112);
  v18 = *(v27 + 1088);
  v19 = *(v27 + 1064);
  v20 = *(v27 + 1056);

  v4 = *(*(v27 + 560) + 8);
  v5 = *(v27 + 560);

  return v4(v21);
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 1264);
  *(v6 + 560) = *v1;
  *(v6 + 1272) = a1;

  v4 = *(v6 + 560);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1320);
  *(v6 + 560) = *v1;
  *(v6 + 1328) = a1;

  v4 = *(v6 + 560);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1416);
  *(v6 + 560) = *v1;
  *(v6 + 1424) = a1;

  v4 = *(v6 + 560);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = *(*v2 + 1344);
  v7 = *(*v2 + 1336);
  v8[70] = *v2;
  v8[169] = a1;
  v8[170] = a2;

  v5 = v8[70];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

{
  v8 = *v2;
  v4 = *(*v2 + 1384);
  v7 = *(*v2 + 1376);
  v8[70] = *v2;
  v8[174] = a1;
  v8[175] = a2;

  v5 = v8[70];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1264) = v32;
  *(v8 + 1256) = v31;
  *(v8 + 588) = v30;
  *(v8 + 587) = v29;
  *(v8 + 1248) = a8;
  *(v8 + 1240) = a7;
  *(v8 + 586) = a6;
  *(v8 + 1232) = a5;
  *(v8 + 585) = a4 & 1;
  *(v8 + 1224) = a3;
  *(v8 + 1216) = a2;
  *(v8 + 1208) = a1;
  *(v8 + 592) = v8;
  *(v8 + 400) = 0;
  *(v8 + 408) = 0;
  *(v8 + 600) = 0;
  *(v8 + 1768) = 0;
  *(v8 + 576) = 0;
  *(v8 + 584) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 1776) = 0;
  *(v8 + 1784) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 608) = 0;
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  *(v8 + 688) = 0;
  *(v8 + 696) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 720) = 0;
  *(v8 + 728) = 0;
  *(v8 + 776) = 0;
  *(v8 + 800) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  *(v8 + 824) = 0;
  *(v8 + 832) = 0;
  *(v8 + 840) = 0;
  *(v8 + 928) = 0;
  *(v8 + 512) = 0;
  *(v8 + 520) = 0;
  *(v8 + 992) = 0;
  *(v8 + 1080) = 0;
  *(v8 + 544) = 0;
  *(v8 + 552) = 0;
  *(v8 + 1160) = 0;
  v11 = type metadata accessor for Date();
  *(v8 + 1272) = v11;
  v17 = *(v11 - 8);
  *(v8 + 1280) = v17;
  v18 = *(v17 + 64);
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  v12 = type metadata accessor for DateInterval();
  *(v8 + 1320) = v12;
  v19 = *(v12 - 8);
  *(v8 + 1328) = v19;
  v13 = *(v19 + 64) + 15;
  *(v8 + 1336) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v8 + 1344) = v14;
  v20 = *(v14 - 8);
  *(v8 + 1352) = v20;
  v21 = *(v20 + 64);
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = swift_task_alloc();
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 400) = a1;
  *(v8 + 408) = a2;
  *(v8 + 600) = a3;
  *(v8 + 1768) = a4 & 1;
  *(v8 + 576) = a5;
  *(v8 + 584) = a6 & 1;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 1776) = v29;
  *(v8 + 1784) = v30;
  *(v8 + 432) = v31;
  *(v8 + 440) = v32;
  v15 = *(v8 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

uint64_t SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)()
{
  v299 = v0;
  v1 = *(v0 + 1456);
  v224 = *(v0 + 1352);
  v226 = *(v0 + 1344);
  v231 = *(v0 + 588);
  v232 = *(v0 + 587);
  v236 = *(v0 + 1248);
  v235 = *(v0 + 1240);
  v234 = *(v0 + 586);
  v233 = *(v0 + 1232);
  v230 = *(v0 + 585);
  v229 = *(v0 + 1224);
  v228 = *(v0 + 1216);
  v227 = *(v0 + 1208);
  *(v0 + 592) = v0;
  v225 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v224 + 16);
  *(v0 + 1464) = v2;
  *(v0 + 1472) = (v224 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v225, v226);
  swift_endAccess();

  v237 = swift_allocObject();
  *(v237 + 16) = v227;
  *(v237 + 24) = v228;

  v239 = swift_allocObject();
  *(v239 + 16) = v229;
  v241 = swift_allocObject();
  *(v241 + 16) = v230;
  v245 = swift_allocObject();
  *(v245 + 16) = v231;
  v247 = swift_allocObject();
  *(v247 + 16) = v232;
  v249 = swift_allocObject();
  *(v249 + 16) = v233;
  *(v249 + 24) = v234 & 1;

  v251 = swift_allocObject();
  *(v251 + 16) = v235;
  *(v251 + 24) = v236;
  v275 = Logger.logObject.getter();
  v276 = static os_log_type_t.debug.getter();
  v253 = swift_allocObject();
  *(v253 + 16) = 32;
  v254 = swift_allocObject();
  *(v254 + 16) = 8;
  v238 = swift_allocObject();
  *(v238 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
  *(v238 + 24) = v237;
  v255 = swift_allocObject();
  *(v255 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v255 + 24) = v238;
  v256 = swift_allocObject();
  *(v256 + 16) = 32;
  v257 = swift_allocObject();
  *(v257 + 16) = 8;
  v240 = swift_allocObject();
  *(v240 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  *(v240 + 24) = v239;
  v258 = swift_allocObject();
  *(v258 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v258 + 24) = v240;
  v259 = swift_allocObject();
  *(v259 + 16) = 0;
  v260 = swift_allocObject();
  *(v260 + 16) = 4;
  v242 = swift_allocObject();
  *(v242 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v242 + 24) = v241;
  v243 = swift_allocObject();
  *(v243 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v243 + 24) = v242;
  v244 = swift_allocObject();
  *(v244 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v244 + 24) = v243;
  v261 = swift_allocObject();
  *(v261 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v261 + 24) = v244;
  v262 = swift_allocObject();
  *(v262 + 16) = 32;
  v263 = swift_allocObject();
  *(v263 + 16) = 8;
  v246 = swift_allocObject();
  *(v246 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  *(v246 + 24) = v245;
  v264 = swift_allocObject();
  *(v264 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v264 + 24) = v246;
  v265 = swift_allocObject();
  *(v265 + 16) = 32;
  v266 = swift_allocObject();
  *(v266 + 16) = 8;
  v248 = swift_allocObject();
  *(v248 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  *(v248 + 24) = v247;
  v267 = swift_allocObject();
  *(v267 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v267 + 24) = v248;
  v268 = swift_allocObject();
  *(v268 + 16) = 32;
  v269 = swift_allocObject();
  *(v269 + 16) = 8;
  v250 = swift_allocObject();
  *(v250 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v250 + 24) = v249;
  v270 = swift_allocObject();
  *(v270 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v270 + 24) = v250;
  v271 = swift_allocObject();
  *(v271 + 16) = 32;
  v272 = swift_allocObject();
  *(v272 + 16) = 8;
  v252 = swift_allocObject();
  *(v252 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v252 + 24) = v251;
  v273 = swift_allocObject();
  *(v273 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v273 + 24) = v252;
  *(v0 + 1480) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v274 = v3;

  *v274 = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[1] = v253;

  v274[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[3] = v254;

  v274[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[5] = v255;

  v274[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[7] = v256;

  v274[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[9] = v257;

  v274[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[11] = v258;

  v274[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[13] = v259;

  v274[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[15] = v260;

  v274[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v274[17] = v261;

  v274[18] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[19] = v262;

  v274[20] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[21] = v263;

  v274[22] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[23] = v264;

  v274[24] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[25] = v265;

  v274[26] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[27] = v266;

  v274[28] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[29] = v267;

  v274[30] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[31] = v268;

  v274[32] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[33] = v269;

  v274[34] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[35] = v270;

  v274[36] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[37] = v271;

  v274[38] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[39] = v272;

  v274[40] = partial apply for closure #1 in OSLogArguments.append(_:);
  v274[41] = v273;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v275, v276))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v221 = createStorage<A>(capacity:type:)(0);
    v222 = createStorage<A>(capacity:type:)(6);
    v294 = buf;
    v295 = v221;
    v296 = v222;
    serialize(_:at:)(2, &v294);
    serialize(_:at:)(7, &v294);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v253;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v254;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v255;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v256;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v257;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v258;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v259;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v260;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v298 = v261;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v262;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v263;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v264;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v265;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v266;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v267;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v268;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v269;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v270;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v271;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v272;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    v297 = partial apply for closure #1 in OSLogArguments.append(_:);
    v298 = v273;
    closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
    _os_log_impl(&dword_269912000, v275, v276, "Calling saveWithID() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d, confirmedAsScheduled: %s, confirmedAsNeeded: (%s), dosage (%s), dosageUnit (%s)", buf, 0x44u);
    destroyStorage<A>(_:count:)(v221, 0, v219);
    destroyStorage<A>(_:count:)(v222, 6, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v208 = *(v223 + 1456);
  v209 = *(v223 + 1344);
  v215 = *(v223 + 1336);
  v211 = *(v223 + 1312);
  v216 = *(v223 + 1304);
  v212 = *(v223 + 1296);
  v217 = *(v223 + 1288);
  v213 = *(v223 + 1272);
  v218 = *(v223 + 1224);
  v207 = *(v223 + 1352);
  v210 = *(v223 + 1280);
  MEMORY[0x277D82BD8](v275);
  v4 = *(v207 + 8);
  *(v223 + 1488) = v4;
  *(v223 + 1496) = (v207 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v208, v209);
  Date.init()();
  Date.startOfDay.getter(v216);
  v214 = *(v210 + 8);
  v214(v211, v213);
  Date.init()();
  Date.endOfDay.getter(v217);
  v214(v212, v213);
  DateInterval.init(start:end:)();
  *(v223 + 1504) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v223 + 608) = _allocateUninitializedArray<A>(_:)();

  if (!v218)
  {
    v32 = swift_task_alloc();
    *(v223 + 1648) = v32;
    *v32 = *(v223 + 592);
    v32[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v8 = *(v223 + 1336);
    v9 = *(v223 + 1264);
    v10 = *(v223 + 1256);
    v7 = 0;

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v8, v7, v10, v9);
  }

  v204 = *(v223 + 1224);
  *(v223 + 928) = v204;

  *(v223 + 936) = v204;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  *(v223 + 1512) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v205 = *(v223 + 528);
  v206 = *(v223 + 536);
  *(v223 + 1520) = v206;
  if (v206)
  {
    *(v223 + 544) = v205;
    *(v223 + 552) = v206;
    v5 = swift_allocObject();
    *(v223 + 1528) = v5;
    *(v223 + 1160) = v5 + 16;
    type metadata accessor for HKMedicationIdentifier();

    v203 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v223 + 1536) = v203;
    v6 = swift_task_alloc();
    v7 = v203;
    *(v223 + 1544) = v6;
    *v6 = *(v223 + 592);
    v6[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v8 = *(v223 + 1336);
    v9 = *(v223 + 1264);
    v10 = *(v223 + 1256);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v8, v7, v10, v9);
  }

  v202 = *(v223 + 588);
  outlined destroy of [HKQuantityType]((v223 + 512));
  v282 = v202;
  v283 = 1;
  if (v202 == 2)
  {
    if (v283 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v293 = *(v223 + 588);
    if (v283 == 2 || (v293 & 1) != (v283 & 1))
    {
      goto LABEL_27;
    }
  }

  v290 = *(v223 + 587);
  v291 = 0;
  if (v290 != 2)
  {
    v292 = *(v223 + 587);
    if (v291 != 2)
    {
      v201 = (v292 & 1) == (v291 & 1);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v291 != 2)
  {
LABEL_25:
    v201 = 0;
    goto LABEL_23;
  }

  v201 = 1;
LABEL_23:
  if (v201)
  {
    v125 = *(v223 + 1480);
    v123 = *(v223 + 1472);
    v124 = *(v223 + 1464);
    v29 = *(v223 + 1408);
    v122 = *(v223 + 1344);
    v121 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v124(v29, v121, v122);
    swift_endAccess();
    v127 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    v128 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v127, v126))
    {
      v117 = static UnsafeMutablePointer.allocate(capacity:)();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v118 = createStorage<A>(capacity:type:)(0);
      v119 = createStorage<A>(capacity:type:)(0);
      *(v223 + 1128) = v117;
      *(v223 + 1136) = v118;
      *(v223 + 1144) = v119;
      serialize(_:at:)(0, (v223 + 1128));
      serialize(_:at:)(0, (v223 + 1128));
      *(v223 + 1152) = v128;
      v120 = swift_task_alloc();
      v120[2] = v223 + 1128;
      v120[3] = v223 + 1136;
      v120[4] = v223 + 1144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v127, v126, "saveWithID: confirmedAsScheduled is true, confirmedAsNeeded is false. No reprompt needed - continuing.", v117, 2u);
      destroyStorage<A>(_:count:)(v118, 0, v116);
      destroyStorage<A>(_:count:)(v119, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v117, MEMORY[0x277D84B78]);
    }

    v109 = *(v223 + 1496);
    v110 = *(v223 + 1488);
    v107 = *(v223 + 1408);
    v108 = *(v223 + 1344);
    v113 = *(v223 + 1216);
    v112 = *(v223 + 1208);
    MEMORY[0x277D82BD8](v127);
    v110(v107, v108);
    v111 = *(v223 + 608);

    *(v223 + 1120) = v111;

    v114 = swift_task_alloc();
    *(v114 + 16) = v112;
    *(v114 + 24) = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v115 = _ArrayProtocol.filter(_:)();
    v76 = *(v223 + 1216);
    v77 = *(v223 + 1224);

    *(v223 + 616) = v115;

    v104 = *(v223 + 1480);
    v80 = *(v223 + 1472);
    v81 = *(v223 + 1464);
    v30 = *(v223 + 1368);
    v79 = *(v223 + 1344);
    v85 = *(v223 + 585);
    v84 = *(v223 + 1224);
    v83 = *(v223 + 1216);
    v82 = *(v223 + 1208);
    v78 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v81(v30, v78, v79);
    swift_endAccess();

    v86 = swift_allocObject();
    *(v86 + 16) = v82;
    *(v86 + 24) = v83;

    v88 = swift_allocObject();
    *(v88 + 16) = v84;
    v90 = swift_allocObject();
    *(v90 + 16) = v85;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    v94 = swift_allocObject();
    *(v94 + 16) = 32;
    v95 = swift_allocObject();
    *(v95 + 16) = 8;
    v87 = swift_allocObject();
    *(v87 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v87 + 24) = v86;
    v96 = swift_allocObject();
    *(v96 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v96 + 24) = v87;
    v97 = swift_allocObject();
    *(v97 + 16) = 32;
    v98 = swift_allocObject();
    *(v98 + 16) = 8;
    v89 = swift_allocObject();
    *(v89 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    *(v89 + 24) = v88;
    v99 = swift_allocObject();
    *(v99 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v99 + 24) = v89;
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = 4;
    v91 = swift_allocObject();
    *(v91 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v92 + 24) = v91;
    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v93 + 24) = v92;
    v102 = swift_allocObject();
    *(v102 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v102 + 24) = v93;
    _allocateUninitializedArray<A>(_:)();
    v103 = v31;

    *v103 = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[1] = v94;

    v103[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[3] = v95;

    v103[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[5] = v96;

    v103[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[7] = v97;

    v103[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[9] = v98;

    v103[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[11] = v99;

    v103[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[13] = v100;

    v103[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[15] = v101;

    v103[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v103[17] = v102;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v105, v106))
    {
      v73 = static UnsafeMutablePointer.allocate(capacity:)();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v74 = createStorage<A>(capacity:type:)(0);
      v75 = createStorage<A>(capacity:type:)(2);
      v277 = v73;
      v278 = v74;
      v279 = v75;
      serialize(_:at:)(2, &v277);
      serialize(_:at:)(3, &v277);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v94;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = partial apply for closure #1 in OSLogArguments.append(_:);
      v281 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      v280 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v281 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v280, &v277, &v278, &v279);
      _os_log_impl(&dword_269912000, v105, v106, "Calling writeDoseEvent() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d", v73, 0x1Cu);
      destroyStorage<A>(_:count:)(v74, 0, v72);
      destroyStorage<A>(_:count:)(v75, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v73, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v67 = *(v223 + 1496);
    v68 = *(v223 + 1488);
    v65 = *(v223 + 1368);
    v66 = *(v223 + 1344);
    v69 = *(v223 + 1264);
    v71 = *(v223 + 1224);
    MEMORY[0x277D82BD8](v105);
    v68(v65, v66);
    MEMORY[0x277D82BE0](v69);
    v70 = *(v223 + 616);
    *(v223 + 1744) = v70;

    if (v71)
    {
      *(v223 + 792) = *(v223 + 1224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      Collection.first.getter();
      v61 = *(v223 + 480);
      v62 = *(v223 + 488);

      v63 = v61;
      v64 = v62;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    *(v223 + 464) = v63;
    *(v223 + 472) = v64;
    v60 = *(v223 + 472) != 0;
    v59 = *(v223 + 586);
    outlined destroy of String.UTF8View(v223 + 464);
    v33 = swift_task_alloc();
    *(v223 + 1752) = v33;
    *v33 = *(v223 + 592);
    v33[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v34 = *(v223 + 1264);
    v35 = *(v223 + 1248);
    v36 = *(v223 + 1240);
    v37 = *(v223 + 1232);
    v38 = *(v223 + 585);
    v305 = *(v223 + 1256);
    v306 = v34;

    return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v34, v70, v38 & 1, v60, v37, v59 & 1, v36, v35);
  }

LABEL_27:
  v284 = *(v223 + 587);
  v285 = 1;
  if (v284 == 2)
  {
    if (v285 != 2)
    {
LABEL_54:
      v152 = *(v223 + 608);

      *(v223 + 944) = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Collection.first.getter();
      v153 = *(v223 + 952);
      *(v223 + 1608) = v153;
      if (v153)
      {
        v151 = *(v223 + 586);
        *(v223 + 992) = v153;

        v22 = swift_task_alloc();
        *(v223 + 1616) = v22;
        *v22 = *(v223 + 592);
        v22[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
        v23 = *(v223 + 1264);
        v24 = *(v223 + 1256);
        v25 = *(v223 + 1248);
        v26 = *(v223 + 1240);
        v27 = *(v223 + 1232);

        return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v153, v27, v151 & 1, v26, v25, v24, v23);
      }

      v147 = *(v223 + 1480);
      v145 = *(v223 + 1472);
      v146 = *(v223 + 1464);
      v28 = *(v223 + 1416);
      v144 = *(v223 + 1344);

      v143 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v146(v28, v143, v144);
      swift_endAccess();
      v149 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      v150 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v149, v148))
      {
        v139 = static UnsafeMutablePointer.allocate(capacity:)();
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v140 = createStorage<A>(capacity:type:)(0);
        v141 = createStorage<A>(capacity:type:)(0);
        *(v223 + 960) = v139;
        *(v223 + 968) = v140;
        *(v223 + 976) = v141;
        serialize(_:at:)(0, (v223 + 960));
        serialize(_:at:)(0, (v223 + 960));
        *(v223 + 984) = v150;
        v142 = swift_task_alloc();
        v142[2] = v223 + 960;
        v142[3] = v223 + 968;
        v142[4] = v223 + 976;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v149, v148, "No doseEvent found in saveWithID's fallback condition, returning failure status", v139, 2u);
        destroyStorage<A>(_:count:)(v140, 0, v138);
        destroyStorage<A>(_:count:)(v141, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v139, MEMORY[0x277D84B78]);
      }

      v131 = *(v223 + 1496);
      v132 = *(v223 + 1488);
      v129 = *(v223 + 1416);
      v130 = *(v223 + 1344);
      v136 = *(v223 + 1336);
      v135 = *(v223 + 1320);
      v133 = *(v223 + 1224);
      v134 = *(v223 + 1328);
      MEMORY[0x277D82BD8](v149);
      v132(v129, v130);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v137 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

      outlined destroy of [HKQuantityType]((v223 + 608));
      (*(v134 + 8))(v136, v135);
      v163 = v137;
      goto LABEL_75;
    }
  }

  else
  {
    v289 = *(v223 + 587);
    if (v285 == 2 || (v289 & 1) != (v285 & 1))
    {
      goto LABEL_54;
    }
  }

  v286 = *(v223 + 588);
  v287 = 0;
  if (v286 == 2)
  {
    if (v287 == 2)
    {
      v200 = 1;
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v288 = *(v223 + 588);
  if (v287 == 2)
  {
LABEL_43:
    v200 = 0;
    goto LABEL_41;
  }

  v200 = (v288 & 1) == (v287 & 1);
LABEL_41:
  if (!v200)
  {
    goto LABEL_54;
  }

  v196 = *(v223 + 1480);
  v194 = *(v223 + 1472);
  v195 = *(v223 + 1464);
  v12 = *(v223 + 1440);
  v193 = *(v223 + 1344);
  v192 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v195(v12, v192, v193);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v197 = static os_log_type_t.debug.getter();
  v199 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v197))
  {
    v188 = static UnsafeMutablePointer.allocate(capacity:)();
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v189 = createStorage<A>(capacity:type:)(0);
    v190 = createStorage<A>(capacity:type:)(0);
    *(v223 + 1088) = v188;
    *(v223 + 1096) = v189;
    *(v223 + 1104) = v190;
    serialize(_:at:)(0, (v223 + 1088));
    serialize(_:at:)(0, (v223 + 1088));
    *(v223 + 1112) = v199;
    v191 = swift_task_alloc();
    v191[2] = v223 + 1088;
    v191[3] = v223 + 1096;
    v191[4] = v223 + 1104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v197, "saveWithID: confirmedAsNeeded is true, confirmedAsScheduled is false. No reprompt needed - continuing.", v188, 2u);
    destroyStorage<A>(_:count:)(v189, 0, v187);
    destroyStorage<A>(_:count:)(v190, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v188, MEMORY[0x277D84B78]);
  }

  v183 = *(v223 + 1496);
  v184 = *(v223 + 1488);
  v181 = *(v223 + 1440);
  v182 = *(v223 + 1344);
  MEMORY[0x277D82BD8](oslog);
  v184(v181, v182);
  v185 = *(v223 + 608);

  *(v223 + 1032) = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection.first.getter();
  v186 = *(v223 + 1040);
  *(v223 + 1568) = v186;
  if (!v186)
  {
    v173 = *(v223 + 1480);
    v171 = *(v223 + 1472);
    v172 = *(v223 + 1464);
    v21 = *(v223 + 1432);
    v170 = *(v223 + 1344);

    v169 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v172(v21, v169, v170);
    swift_endAccess();
    log = Logger.logObject.getter();
    v174 = static os_log_type_t.error.getter();
    v176 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v174))
    {
      v165 = static UnsafeMutablePointer.allocate(capacity:)();
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v166 = createStorage<A>(capacity:type:)(0);
      v167 = createStorage<A>(capacity:type:)(0);
      *(v223 + 1048) = v165;
      *(v223 + 1056) = v166;
      *(v223 + 1064) = v167;
      serialize(_:at:)(0, (v223 + 1048));
      serialize(_:at:)(0, (v223 + 1048));
      *(v223 + 1072) = v176;
      v168 = swift_task_alloc();
      v168[2] = v223 + 1048;
      v168[3] = v223 + 1056;
      v168[4] = v223 + 1064;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v174, "No doseEvent found in saveWithID's fallback condition, returning failure status", v165, 2u);
      destroyStorage<A>(_:count:)(v166, 0, v164);
      destroyStorage<A>(_:count:)(v167, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v165, MEMORY[0x277D84B78]);
    }

    v156 = *(v223 + 1496);
    v157 = *(v223 + 1488);
    v154 = *(v223 + 1432);
    v155 = *(v223 + 1344);
    v161 = *(v223 + 1336);
    v160 = *(v223 + 1320);
    v158 = *(v223 + 1224);
    v159 = *(v223 + 1328);
    MEMORY[0x277D82BD8](log);
    v157(v154, v155);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v162 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    outlined destroy of [HKQuantityType]((v223 + 608));
    (*(v159 + 8))(v161, v160);
    v163 = v162;
LABEL_75:
    v39 = *(v223 + 1456);
    v42 = *(v223 + 1448);
    v43 = *(v223 + 1440);
    v44 = *(v223 + 1432);
    v45 = *(v223 + 1424);
    v46 = *(v223 + 1416);
    v47 = *(v223 + 1408);
    v48 = *(v223 + 1400);
    v49 = *(v223 + 1392);
    v50 = *(v223 + 1384);
    v51 = *(v223 + 1376);
    v52 = *(v223 + 1368);
    v53 = *(v223 + 1360);
    v54 = *(v223 + 1336);
    v55 = *(v223 + 1312);
    v56 = *(v223 + 1304);
    v57 = *(v223 + 1296);
    v58 = *(v223 + 1288);

    v40 = *(*(v223 + 592) + 8);
    v41 = *(v223 + 592);

    return v40(v163);
  }

  v179 = *(v223 + 586);
  *(v223 + 1080) = v186;

  v177 = [v186 medicationIdentifier];
  *(v223 + 1576) = [v177 underlyingIdentifier];
  v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v178 = v13;
  *(v223 + 1584) = v13;
  MEMORY[0x277D82BD8](v177);
  v14 = swift_task_alloc();
  *(v223 + 1592) = v14;
  *v14 = *(v223 + 592);
  v14[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  v15 = *(v223 + 1264);
  v16 = *(v223 + 1256);
  v17 = *(v223 + 1248);
  v18 = *(v223 + 1240);
  v19 = *(v223 + 1232);
  v20 = *(v223 + 585);
  v301 = 1;
  v302 = 0;
  v303 = 0;
  v304 = v16;
  v305 = v15;

  return SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(v180, v178, v20 & 1, v19, v179 & 1, v18, v17, 0);
}

{
  v255 = v0;
  v1 = v0[195];
  v233 = v0[194];
  v232 = v0[191];
  v235 = v0[152];
  v234 = v0[151];
  v0[74] = v0;

  *(v232 + 16) = v233;
  swift_beginAccess();
  swift_endAccess();
  v0[146] = v233;

  v236 = swift_task_alloc();
  *(v236 + 16) = v234;
  *(v236 + 24) = v235;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v237 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
    v40 = *(v231 + 1216);
  }

  v218 = *(v231 + 1528);
  v225 = *(v231 + 1480);
  v216 = *(v231 + 1472);
  v217 = *(v231 + 1464);
  v8 = *(v231 + 1448);
  v215 = *(v231 + 1344);
  v213 = *(v231 + 1216);

  swift_beginAccess();
  v9 = *(v218 + 16);
  *(v218 + 16) = v237;

  swift_endAccess();
  v214 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v217(v8, v214, v215);
  swift_endAccess();

  v219 = swift_allocObject();
  *(v219 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v219 + 24) = v218;

  oslog = Logger.logObject.getter();
  v227 = static os_log_type_t.debug.getter();
  v221 = swift_allocObject();
  *(v221 + 16) = 32;
  v222 = swift_allocObject();
  *(v222 + 16) = 8;
  v220 = swift_allocObject();
  *(v220 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v220 + 24) = v219;
  v223 = swift_allocObject();
  *(v223 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v223 + 24) = v220;
  _allocateUninitializedArray<A>(_:)();
  v224 = v10;

  *v224 = partial apply for closure #1 in OSLogArguments.append(_:);
  v224[1] = v221;

  v224[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v224[3] = v222;

  v224[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v224[5] = v223;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v227))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v211 = createStorage<A>(capacity:type:)(0);
    v212 = createStorage<A>(capacity:type:)(1);
    *(v231 + 1184) = buf;
    *(v231 + 1192) = v211;
    *(v231 + 1200) = v212;
    serialize(_:at:)(2, (v231 + 1184));
    serialize(_:at:)(1, (v231 + 1184));
    *(v231 + 560) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v231 + 568) = v221;
    closure #1 in osLogInternal(_:log:type:)(v231 + 560, v231 + 1184, v231 + 1192, v231 + 1200);
    *(v231 + 560) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v231 + 568) = v222;
    closure #1 in osLogInternal(_:log:type:)(v231 + 560, v231 + 1184, v231 + 1192, v231 + 1200);
    *(v231 + 560) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v231 + 568) = v223;
    closure #1 in osLogInternal(_:log:type:)(v231 + 560, v231 + 1184, v231 + 1192, v231 + 1200);
    _os_log_impl(&dword_269912000, oslog, v227, "doseEventsForID: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v211, 0, v209);
    destroyStorage<A>(_:count:)(v212, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v207 = *(v231 + 1528);
  v204 = *(v231 + 1496);
  v205 = *(v231 + 1488);
  v202 = *(v231 + 1448);
  v203 = *(v231 + 1344);
  v208 = *(v231 + 1520);
  MEMORY[0x277D82BD8](oslog);
  v205(v202, v203);
  swift_beginAccess();
  v206 = *(v207 + 16);

  swift_endAccess();
  *(v231 + 1176) = v206;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();

  *(v231 + 1512) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v229 = *(v231 + 528);
  v228 = *(v231 + 536);
  *(v231 + 1520) = v228;
  if (v228)
  {
    *(v231 + 544) = v229;
    *(v231 + 552) = v228;
    v2 = swift_allocObject();
    *(v231 + 1528) = v2;
    *(v231 + 1160) = v2 + 16;
    type metadata accessor for HKMedicationIdentifier();

    v230 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v231 + 1536) = v230;
    v3 = swift_task_alloc();
    *(v231 + 1544) = v3;
    *v3 = *(v231 + 592);
    v3[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v4 = *(v231 + 1336);
    v5 = *(v231 + 1264);
    v6 = *(v231 + 1256);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v4, v230, v6, v5);
  }

  v201 = *(v231 + 588);
  outlined destroy of [HKQuantityType]((v231 + 512));
  v243 = v201;
  v244 = 1;
  if (v201 == 2)
  {
    if (v244 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v254 = *(v231 + 588);
    if (v244 == 2 || (v254 & 1) != (v244 & 1))
    {
      goto LABEL_27;
    }
  }

  v251 = *(v231 + 587);
  v252 = 0;
  if (v251 != 2)
  {
    v253 = *(v231 + 587);
    if (v252 != 2)
    {
      v200 = (v253 & 1) == (v252 & 1);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v252 != 2)
  {
LABEL_25:
    v200 = 0;
    goto LABEL_23;
  }

  v200 = 1;
LABEL_23:
  if (v200)
  {
    v124 = *(v231 + 1480);
    v122 = *(v231 + 1472);
    v123 = *(v231 + 1464);
    v28 = *(v231 + 1408);
    v121 = *(v231 + 1344);
    v120 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v123(v28, v120, v121);
    swift_endAccess();
    v126 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();
    v127 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v126, v125))
    {
      v116 = static UnsafeMutablePointer.allocate(capacity:)();
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v117 = createStorage<A>(capacity:type:)(0);
      v118 = createStorage<A>(capacity:type:)(0);
      *(v231 + 1128) = v116;
      *(v231 + 1136) = v117;
      *(v231 + 1144) = v118;
      serialize(_:at:)(0, (v231 + 1128));
      serialize(_:at:)(0, (v231 + 1128));
      *(v231 + 1152) = v127;
      v119 = swift_task_alloc();
      v119[2] = v231 + 1128;
      v119[3] = v231 + 1136;
      v119[4] = v231 + 1144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v126, v125, "saveWithID: confirmedAsScheduled is true, confirmedAsNeeded is false. No reprompt needed - continuing.", v116, 2u);
      destroyStorage<A>(_:count:)(v117, 0, v115);
      destroyStorage<A>(_:count:)(v118, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v116, MEMORY[0x277D84B78]);
    }

    v108 = *(v231 + 1496);
    v109 = *(v231 + 1488);
    v106 = *(v231 + 1408);
    v107 = *(v231 + 1344);
    v112 = *(v231 + 1216);
    v111 = *(v231 + 1208);
    MEMORY[0x277D82BD8](v126);
    v109(v106, v107);
    v110 = *(v231 + 608);

    *(v231 + 1120) = v110;

    v113 = swift_task_alloc();
    *(v113 + 16) = v111;
    *(v113 + 24) = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v114 = _ArrayProtocol.filter(_:)();
    v75 = *(v231 + 1216);
    v76 = *(v231 + 1224);

    *(v231 + 616) = v114;

    v103 = *(v231 + 1480);
    v79 = *(v231 + 1472);
    v80 = *(v231 + 1464);
    v29 = *(v231 + 1368);
    v78 = *(v231 + 1344);
    v84 = *(v231 + 585);
    v83 = *(v231 + 1224);
    v82 = *(v231 + 1216);
    v81 = *(v231 + 1208);
    v77 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v80(v29, v77, v78);
    swift_endAccess();

    v85 = swift_allocObject();
    *(v85 + 16) = v81;
    *(v85 + 24) = v82;

    v87 = swift_allocObject();
    *(v87 + 16) = v83;
    v89 = swift_allocObject();
    *(v89 + 16) = v84;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    v93 = swift_allocObject();
    *(v93 + 16) = 32;
    v94 = swift_allocObject();
    *(v94 + 16) = 8;
    v86 = swift_allocObject();
    *(v86 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v86 + 24) = v85;
    v95 = swift_allocObject();
    *(v95 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v95 + 24) = v86;
    v96 = swift_allocObject();
    *(v96 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    *(v88 + 24) = v87;
    v98 = swift_allocObject();
    *(v98 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v98 + 24) = v88;
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = 4;
    v90 = swift_allocObject();
    *(v90 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v90 + 24) = v89;
    v91 = swift_allocObject();
    *(v91 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v92 + 24) = v91;
    v101 = swift_allocObject();
    *(v101 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v101 + 24) = v92;
    _allocateUninitializedArray<A>(_:)();
    v102 = v30;

    *v102 = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[1] = v93;

    v102[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[3] = v94;

    v102[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[5] = v95;

    v102[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[7] = v96;

    v102[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[9] = v97;

    v102[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[11] = v98;

    v102[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[13] = v99;

    v102[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v102[15] = v100;

    v102[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v102[17] = v101;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v104, v105))
    {
      v72 = static UnsafeMutablePointer.allocate(capacity:)();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v73 = createStorage<A>(capacity:type:)(0);
      v74 = createStorage<A>(capacity:type:)(2);
      v238 = v72;
      v239 = v73;
      v240 = v74;
      serialize(_:at:)(2, &v238);
      serialize(_:at:)(3, &v238);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v93;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v94;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v97;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = partial apply for closure #1 in OSLogArguments.append(_:);
      v242 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      v241 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v242 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v241, &v238, &v239, &v240);
      _os_log_impl(&dword_269912000, v104, v105, "Calling writeDoseEvent() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d", v72, 0x1Cu);
      destroyStorage<A>(_:count:)(v73, 0, v71);
      destroyStorage<A>(_:count:)(v74, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v72, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v66 = *(v231 + 1496);
    v67 = *(v231 + 1488);
    v64 = *(v231 + 1368);
    v65 = *(v231 + 1344);
    v68 = *(v231 + 1264);
    v70 = *(v231 + 1224);
    MEMORY[0x277D82BD8](v104);
    v67(v64, v65);
    MEMORY[0x277D82BE0](v68);
    v69 = *(v231 + 616);
    *(v231 + 1744) = v69;

    if (v70)
    {
      *(v231 + 792) = *(v231 + 1224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      Collection.first.getter();
      v60 = *(v231 + 480);
      v61 = *(v231 + 488);

      v62 = v60;
      v63 = v61;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    *(v231 + 464) = v62;
    *(v231 + 472) = v63;
    v59 = *(v231 + 472) != 0;
    v58 = *(v231 + 586);
    outlined destroy of String.UTF8View(v231 + 464);
    v31 = swift_task_alloc();
    *(v231 + 1752) = v31;
    *v31 = *(v231 + 592);
    v31[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v32 = *(v231 + 1264);
    v33 = *(v231 + 1248);
    v34 = *(v231 + 1240);
    v35 = *(v231 + 1232);
    v36 = *(v231 + 585);
    v261 = *(v231 + 1256);
    v262 = v32;

    return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v32, v69, v36 & 1, v59, v35, v58 & 1, v34, v33);
  }

LABEL_27:
  v245 = *(v231 + 587);
  v246 = 1;
  if (v245 == 2)
  {
    if (v246 != 2)
    {
LABEL_54:
      v151 = *(v231 + 608);

      *(v231 + 944) = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Collection.first.getter();
      v152 = *(v231 + 952);
      *(v231 + 1608) = v152;
      if (v152)
      {
        v150 = *(v231 + 586);
        *(v231 + 992) = v152;

        v21 = swift_task_alloc();
        *(v231 + 1616) = v21;
        *v21 = *(v231 + 592);
        v21[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
        v22 = *(v231 + 1264);
        v23 = *(v231 + 1256);
        v24 = *(v231 + 1248);
        v25 = *(v231 + 1240);
        v26 = *(v231 + 1232);

        return SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(v152, v26, v150 & 1, v25, v24, v23, v22);
      }

      v146 = *(v231 + 1480);
      v144 = *(v231 + 1472);
      v145 = *(v231 + 1464);
      v27 = *(v231 + 1416);
      v143 = *(v231 + 1344);

      v142 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v145(v27, v142, v143);
      swift_endAccess();
      v148 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      v149 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v148, v147))
      {
        v138 = static UnsafeMutablePointer.allocate(capacity:)();
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v139 = createStorage<A>(capacity:type:)(0);
        v140 = createStorage<A>(capacity:type:)(0);
        *(v231 + 960) = v138;
        *(v231 + 968) = v139;
        *(v231 + 976) = v140;
        serialize(_:at:)(0, (v231 + 960));
        serialize(_:at:)(0, (v231 + 960));
        *(v231 + 984) = v149;
        v141 = swift_task_alloc();
        v141[2] = v231 + 960;
        v141[3] = v231 + 968;
        v141[4] = v231 + 976;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v148, v147, "No doseEvent found in saveWithID's fallback condition, returning failure status", v138, 2u);
        destroyStorage<A>(_:count:)(v139, 0, v137);
        destroyStorage<A>(_:count:)(v140, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v138, MEMORY[0x277D84B78]);
      }

      v130 = *(v231 + 1496);
      v131 = *(v231 + 1488);
      v128 = *(v231 + 1416);
      v129 = *(v231 + 1344);
      v135 = *(v231 + 1336);
      v134 = *(v231 + 1320);
      v132 = *(v231 + 1224);
      v133 = *(v231 + 1328);
      MEMORY[0x277D82BD8](v148);
      v131(v128, v129);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v136 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

      outlined destroy of [HKQuantityType]((v231 + 608));
      (*(v133 + 8))(v135, v134);
      v162 = v136;
      goto LABEL_72;
    }
  }

  else
  {
    v250 = *(v231 + 587);
    if (v246 == 2 || (v250 & 1) != (v246 & 1))
    {
      goto LABEL_54;
    }
  }

  v247 = *(v231 + 588);
  v248 = 0;
  if (v247 == 2)
  {
    if (v248 == 2)
    {
      v199 = 1;
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v249 = *(v231 + 588);
  if (v248 == 2)
  {
LABEL_43:
    v199 = 0;
    goto LABEL_41;
  }

  v199 = (v249 & 1) == (v248 & 1);
LABEL_41:
  if (!v199)
  {
    goto LABEL_54;
  }

  v195 = *(v231 + 1480);
  v193 = *(v231 + 1472);
  v194 = *(v231 + 1464);
  v11 = *(v231 + 1440);
  v192 = *(v231 + 1344);
  v191 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v194(v11, v191, v192);
  swift_endAccess();
  log = Logger.logObject.getter();
  v196 = static os_log_type_t.debug.getter();
  v198 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v196))
  {
    v187 = static UnsafeMutablePointer.allocate(capacity:)();
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v188 = createStorage<A>(capacity:type:)(0);
    v189 = createStorage<A>(capacity:type:)(0);
    *(v231 + 1088) = v187;
    *(v231 + 1096) = v188;
    *(v231 + 1104) = v189;
    serialize(_:at:)(0, (v231 + 1088));
    serialize(_:at:)(0, (v231 + 1088));
    *(v231 + 1112) = v198;
    v190 = swift_task_alloc();
    v190[2] = v231 + 1088;
    v190[3] = v231 + 1096;
    v190[4] = v231 + 1104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, log, v196, "saveWithID: confirmedAsNeeded is true, confirmedAsScheduled is false. No reprompt needed - continuing.", v187, 2u);
    destroyStorage<A>(_:count:)(v188, 0, v186);
    destroyStorage<A>(_:count:)(v189, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v187, MEMORY[0x277D84B78]);
  }

  v182 = *(v231 + 1496);
  v183 = *(v231 + 1488);
  v180 = *(v231 + 1440);
  v181 = *(v231 + 1344);
  MEMORY[0x277D82BD8](log);
  v183(v180, v181);
  v184 = *(v231 + 608);

  *(v231 + 1032) = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection.first.getter();
  v185 = *(v231 + 1040);
  *(v231 + 1568) = v185;
  if (!v185)
  {
    v172 = *(v231 + 1480);
    v170 = *(v231 + 1472);
    v171 = *(v231 + 1464);
    v20 = *(v231 + 1432);
    v169 = *(v231 + 1344);

    v168 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v171(v20, v168, v169);
    swift_endAccess();
    v174 = Logger.logObject.getter();
    v173 = static os_log_type_t.error.getter();
    v175 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v174, v173))
    {
      v164 = static UnsafeMutablePointer.allocate(capacity:)();
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v165 = createStorage<A>(capacity:type:)(0);
      v166 = createStorage<A>(capacity:type:)(0);
      *(v231 + 1048) = v164;
      *(v231 + 1056) = v165;
      *(v231 + 1064) = v166;
      serialize(_:at:)(0, (v231 + 1048));
      serialize(_:at:)(0, (v231 + 1048));
      *(v231 + 1072) = v175;
      v167 = swift_task_alloc();
      v167[2] = v231 + 1048;
      v167[3] = v231 + 1056;
      v167[4] = v231 + 1064;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v174, v173, "No doseEvent found in saveWithID's fallback condition, returning failure status", v164, 2u);
      destroyStorage<A>(_:count:)(v165, 0, v163);
      destroyStorage<A>(_:count:)(v166, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v164, MEMORY[0x277D84B78]);
    }

    v155 = *(v231 + 1496);
    v156 = *(v231 + 1488);
    v153 = *(v231 + 1432);
    v154 = *(v231 + 1344);
    v160 = *(v231 + 1336);
    v159 = *(v231 + 1320);
    v157 = *(v231 + 1224);
    v158 = *(v231 + 1328);
    MEMORY[0x277D82BD8](v174);
    v156(v153, v154);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v161 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    outlined destroy of [HKQuantityType]((v231 + 608));
    (*(v158 + 8))(v160, v159);
    v162 = v161;
LABEL_72:
    v37 = *(v231 + 1456);
    v41 = *(v231 + 1448);
    v42 = *(v231 + 1440);
    v43 = *(v231 + 1432);
    v44 = *(v231 + 1424);
    v45 = *(v231 + 1416);
    v46 = *(v231 + 1408);
    v47 = *(v231 + 1400);
    v48 = *(v231 + 1392);
    v49 = *(v231 + 1384);
    v50 = *(v231 + 1376);
    v51 = *(v231 + 1368);
    v52 = *(v231 + 1360);
    v53 = *(v231 + 1336);
    v54 = *(v231 + 1312);
    v55 = *(v231 + 1304);
    v56 = *(v231 + 1296);
    v57 = *(v231 + 1288);

    v38 = *(*(v231 + 592) + 8);
    v39 = *(v231 + 592);

    return v38(v162);
  }

  v178 = *(v231 + 586);
  *(v231 + 1080) = v185;

  v176 = [v185 medicationIdentifier];
  *(v231 + 1576) = [v176 underlyingIdentifier];
  v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v177 = v12;
  *(v231 + 1584) = v12;
  MEMORY[0x277D82BD8](v176);
  v13 = swift_task_alloc();
  *(v231 + 1592) = v13;
  *v13 = *(v231 + 592);
  v13[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  v14 = *(v231 + 1264);
  v15 = *(v231 + 1256);
  v16 = *(v231 + 1248);
  v17 = *(v231 + 1240);
  v18 = *(v231 + 1232);
  v19 = *(v231 + 585);
  v257 = 1;
  v258 = 0;
  v259 = 0;
  v260 = v15;
  v261 = v14;

  return SpecificMedicationsPersistor.saveAsNeededWithStrength(medicationID:medStatusTaken:dosage:dosageUnit:strength:strengthUnit:)(v179, v177, v19 & 1, v18, v178 & 1, v17, v16, 0);
}

{
  v1 = v0[196];
  v9 = v0[167];
  v7 = v0[166];
  v8 = v0[165];
  v6 = v0[153];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v7 + 8))(v9, v8);
  v27 = v0[200];
  v2 = v0[182];
  v10 = v0[181];
  v11 = v0[180];
  v12 = v0[179];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[176];
  v16 = v0[175];
  v17 = v0[174];
  v18 = v0[173];
  v19 = v0[172];
  v20 = v0[171];
  v21 = v0[170];
  v22 = v0[167];
  v23 = v0[164];
  v24 = v0[163];
  v25 = v0[162];
  v26 = v0[161];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3(v27);
}

{
  v1 = *(v0 + 1624);
  *(v0 + 592) = v0;
  if (v1)
  {
    v52 = *(v53 + 1608);
    MEMORY[0x277D82BD8](*(v53 + 1624));
    v2 = swift_task_alloc();
    *(v53 + 1632) = v2;
    *v2 = *(v53 + 592);
    v2[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v3 = *(v53 + 1264);
    v4 = *(v53 + 1256);
    v5 = *(v53 + 585) & 1;

    return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v52, v5, v4, v3);
  }

  else
  {
    v48 = *(v53 + 1480);
    v46 = *(v53 + 1472);
    v47 = *(v53 + 1464);
    v7 = *(v53 + 1424);
    v45 = *(v53 + 1344);
    v44 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v47(v7, v44, v45);
    swift_endAccess();
    v50 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v51 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v50, v49))
    {
      v8 = *(v53 + 1512);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0);
      v42 = createStorage<A>(capacity:type:)(0);
      *(v53 + 1000) = buf;
      *(v53 + 1008) = v41;
      *(v53 + 1016) = v42;
      serialize(_:at:)(0, (v53 + 1000));
      serialize(_:at:)(0, (v53 + 1000));
      *(v53 + 1024) = v51;
      v43 = swift_task_alloc();
      v43[2] = v53 + 1000;
      v43[3] = v53 + 1008;
      v43[4] = v53 + 1016;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v8)
      {
      }

      _os_log_impl(&dword_269912000, v50, v49, "Got a complex med request wrt dosage/dosageUnit in first turn, skipping confirmAsScheduled & punching out.", buf, 2u);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v14 = *(v53 + 1496);
    v15 = *(v53 + 1488);
    v12 = *(v53 + 1424);
    v13 = *(v53 + 1344);
    v20 = *(v53 + 1336);
    v19 = *(v53 + 1320);
    v16 = *(v53 + 1608);
    v17 = *(v53 + 1224);
    v18 = *(v53 + 1328);
    MEMORY[0x277D82BD8](v50);
    v15(v12, v13);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v38 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(112, 0);
    MEMORY[0x277D82BD8](v16);

    outlined destroy of [HKQuantityType]((v53 + 608));
    (*(v18 + 8))(v20, v19);
    v9 = *(v53 + 1456);
    v21 = *(v53 + 1448);
    v22 = *(v53 + 1440);
    v23 = *(v53 + 1432);
    v24 = *(v53 + 1424);
    v25 = *(v53 + 1416);
    v26 = *(v53 + 1408);
    v27 = *(v53 + 1400);
    v28 = *(v53 + 1392);
    v29 = *(v53 + 1384);
    v30 = *(v53 + 1376);
    v31 = *(v53 + 1368);
    v32 = *(v53 + 1360);
    v33 = *(v53 + 1336);
    v34 = *(v53 + 1312);
    v35 = *(v53 + 1304);
    v36 = *(v53 + 1296);
    v37 = *(v53 + 1288);

    v10 = *(*(v53 + 592) + 8);
    v11 = *(v53 + 592);

    return v10(v38);
  }
}

{
  v1 = v0[201];
  v9 = v0[167];
  v7 = v0[166];
  v8 = v0[165];
  v6 = v0[153];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v7 + 8))(v9, v8);
  v27 = v0[205];
  v2 = v0[182];
  v10 = v0[181];
  v11 = v0[180];
  v12 = v0[179];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[176];
  v16 = v0[175];
  v17 = v0[174];
  v18 = v0[173];
  v19 = v0[172];
  v20 = v0[171];
  v21 = v0[170];
  v22 = v0[167];
  v23 = v0[164];
  v24 = v0[163];
  v25 = v0[162];
  v26 = v0[161];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3(v27);
}

{
  v212 = v0;
  v1 = v0[208];
  v197 = v0[207];
  v199 = v0[152];
  v198 = v0[151];
  v0[74] = v0;

  v0[78] = v197;
  v0[84] = v197;

  v200 = swift_task_alloc();
  *(v200 + 16) = v198;
  *(v200 + 24) = v199;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v201 = _ArrayProtocol.filter(_:)();
  if (v1)
  {
    v25 = *(v196 + 1216);
  }

  v194 = *(v196 + 1504);
  v193 = *(v196 + 1216);

  v2 = *(v196 + 624);
  *(v196 + 624) = v201;

  *(v196 + 616) = _allocateUninitializedArray<A>(_:)();
  v195 = allDoseEventsAreUnlogged(doseEvents:)(v201);

  if (v195)
  {
    v189 = *(v196 + 1480);
    v187 = *(v196 + 1472);
    v188 = *(v196 + 1464);
    v3 = *(v196 + 1400);
    v186 = *(v196 + 1344);
    v185 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v188(v3, v185, v186);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v190 = static os_log_type_t.debug.getter();
    v192 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v190))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v182 = createStorage<A>(capacity:type:)(0);
      v183 = createStorage<A>(capacity:type:)(0);
      *(v196 + 896) = buf;
      *(v196 + 904) = v182;
      *(v196 + 912) = v183;
      serialize(_:at:)(0, (v196 + 896));
      serialize(_:at:)(0, (v196 + 896));
      *(v196 + 920) = v192;
      v184 = swift_task_alloc();
      v184[2] = v196 + 896;
      v184[3] = v196 + 904;
      v184[4] = v196 + 912;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v190, "All dose events in group are unlogged, continuing to write", buf, 2u);
      destroyStorage<A>(_:count:)(v182, 0, v180);
      destroyStorage<A>(_:count:)(v183, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v177 = *(v196 + 1496);
    v178 = *(v196 + 1488);
    v175 = *(v196 + 1400);
    v176 = *(v196 + 1344);
    MEMORY[0x277D82BD8](oslog);
    v178(v175, v176);
    v179 = *(v196 + 624);

    *(v196 + 888) = v179;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Array.append<A>(contentsOf:)();
    goto LABEL_24;
  }

  doseEvents._rawValue = *(v196 + 624);

  v174 = allLoggedWithMixedStatus(doseEvents:)(doseEvents);

  if (v174 || (v170 = *(v196 + 585), v171._rawValue = *(v196 + 624), , v172 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v171, v170 & 1), , v172))
  {
    v166 = *(v196 + 1480);
    v164 = *(v196 + 1472);
    v165 = *(v196 + 1464);
    v4 = *(v196 + 1392);
    v163 = *(v196 + 1344);
    v162 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v165(v4, v162, v163);
    swift_endAccess();
    log = Logger.logObject.getter();
    v167 = static os_log_type_t.debug.getter();
    v169 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v167))
    {
      v158 = static UnsafeMutablePointer.allocate(capacity:)();
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v159 = createStorage<A>(capacity:type:)(0);
      v160 = createStorage<A>(capacity:type:)(0);
      *(v196 + 856) = v158;
      *(v196 + 864) = v159;
      *(v196 + 872) = v160;
      serialize(_:at:)(0, (v196 + 856));
      serialize(_:at:)(0, (v196 + 856));
      *(v196 + 880) = v169;
      v161 = swift_task_alloc();
      v161[2] = v196 + 856;
      v161[3] = v196 + 864;
      v161[4] = v196 + 872;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v167, "Calling either allLoggedWithMixedStatus or oneExistingStatusWithConflictingRequest", v158, 2u);
      destroyStorage<A>(_:count:)(v159, 0, v157);
      destroyStorage<A>(_:count:)(v160, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v158, MEMORY[0x277D84B78]);
    }

    v153 = *(v196 + 1496);
    v154 = *(v196 + 1488);
    v151 = *(v196 + 1392);
    v152 = *(v196 + 1344);
    MEMORY[0x277D82BD8](log);
    v154(v151, v152);
    *(v196 + 1672) = type metadata accessor for MatchedMedName();
    *(v196 + 800) = _allocateUninitializedArray<A>(_:)();
    v155 = *(v196 + 624);

    *(v196 + 808) = v155;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v156 = *(v196 + 816);
    *(v196 + 1680) = v156;
    if (v156)
    {
      *(v196 + 832) = v156;
      v5 = swift_task_alloc();
      v6 = v156;
      *(v196 + 1688) = v5;
      *v5 = *(v196 + 592);
      v5[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      v7 = *(v196 + 1264);
      v8 = *(v196 + 1256);

      return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v8, v7);
    }

    v143 = *(v196 + 1672);
    v148 = *(v196 + 1336);
    v147 = *(v196 + 1320);
    v146 = *(v196 + 1328);
    outlined destroy of [HKQuantityType]((v196 + 496));
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v149 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
    MEMORY[0x277D82BE0](v149);
    *(v196 + 824) = v149;
    v144 = *(v196 + 800);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v149 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](*(v196 + 824));
    outlined destroy of [HKQuantityType]((v196 + 800));
    outlined destroy of [HKQuantityType]((v196 + 624));
    outlined destroy of [HKQuantityType]((v196 + 616));
    outlined destroy of [HKQuantityType]((v196 + 608));
    (*(v146 + 8))(v148, v147);
    v150 = v149;
  }

  else
  {
    v140 = *(v196 + 624);

    v141 = getUnloggedDoseEvents(doseEvents:)();

    *(v196 + 680) = v141;
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    v142 = Collection.isEmpty.getter();

    if ((v142 & 1) == 0)
    {
      v111 = *(v196 + 624);

      v112 = getUnloggedDoseEvents(doseEvents:)();

      *(v196 + 776) = v112;

      *(v196 + 784) = v112;
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Array.append<A>(contentsOf:)();

LABEL_24:
      v108 = *(v196 + 1480);
      v99 = *(v196 + 1472);
      v100 = *(v196 + 1464);
      v12 = *(v196 + 1376);
      v98 = *(v196 + 1344);
      v97 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v100(v12, v97, v98);
      swift_endAccess();
      v101 = *(v196 + 608);

      v102 = swift_allocObject();
      *(v102 + 16) = v101;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = 8;
      v103 = swift_allocObject();
      *(v103 + 16) = partial apply for specialized implicit closure #10 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      *(v103 + 24) = v102;
      v106 = swift_allocObject();
      *(v106 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
      *(v106 + 24) = v103;
      _allocateUninitializedArray<A>(_:)();
      v107 = v13;

      *v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v107[1] = v104;

      v107[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v107[3] = v105;

      v107[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v107[5] = v106;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v109, v110))
      {
        v94 = static UnsafeMutablePointer.allocate(capacity:)();
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v95 = createStorage<A>(capacity:type:)(0);
        v96 = createStorage<A>(capacity:type:)(0);
        v207 = v94;
        v208 = v95;
        v209 = v96;
        serialize(_:at:)(0, &v207);
        serialize(_:at:)(1, &v207);
        v210 = partial apply for closure #1 in OSLogArguments.append(_:);
        v211 = v104;
        closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
        v210 = partial apply for closure #1 in OSLogArguments.append(_:);
        v211 = v105;
        closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
        v210 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v211 = v106;
        closure #1 in osLogInternal(_:log:type:)(&v210, &v207, &v208, &v209);
        _os_log_impl(&dword_269912000, v109, v110, "saveWithID, medicationIDs not provided: appended %ld doseEvents", v94, 0xCu);
        destroyStorage<A>(_:count:)(v95, 0, v93);
        destroyStorage<A>(_:count:)(v96, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v94, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v62 = *(v196 + 1496);
      v63 = *(v196 + 1488);
      v60 = *(v196 + 1376);
      v61 = *(v196 + 1344);
      MEMORY[0x277D82BD8](v109);
      v63(v60, v61);
      outlined destroy of [HKQuantityType]((v196 + 624));
      v90 = *(v196 + 1480);
      v66 = *(v196 + 1472);
      v67 = *(v196 + 1464);
      v14 = *(v196 + 1368);
      v65 = *(v196 + 1344);
      v71 = *(v196 + 585);
      v70 = *(v196 + 1224);
      v69 = *(v196 + 1216);
      v68 = *(v196 + 1208);
      v64 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v67(v14, v64, v65);
      swift_endAccess();

      v72 = swift_allocObject();
      *(v72 + 16) = v68;
      *(v72 + 24) = v69;

      v74 = swift_allocObject();
      *(v74 + 16) = v70;
      v76 = swift_allocObject();
      *(v76 + 16) = v71;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = 32;
      v81 = swift_allocObject();
      *(v81 + 16) = 8;
      v73 = swift_allocObject();
      *(v73 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
      *(v73 + 24) = v72;
      v82 = swift_allocObject();
      *(v82 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v82 + 24) = v73;
      v83 = swift_allocObject();
      *(v83 + 16) = 32;
      v84 = swift_allocObject();
      *(v84 + 16) = 8;
      v75 = swift_allocObject();
      *(v75 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      *(v75 + 24) = v74;
      v85 = swift_allocObject();
      *(v85 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v85 + 24) = v75;
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      v87 = swift_allocObject();
      *(v87 + 16) = 4;
      v77 = swift_allocObject();
      *(v77 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
      *(v77 + 24) = v76;
      v78 = swift_allocObject();
      *(v78 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v78 + 24) = v77;
      v79 = swift_allocObject();
      *(v79 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
      *(v79 + 24) = v78;
      v88 = swift_allocObject();
      *(v88 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
      *(v88 + 24) = v79;
      _allocateUninitializedArray<A>(_:)();
      v89 = v15;

      *v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[1] = v80;

      v89[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[3] = v81;

      v89[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[5] = v82;

      v89[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[7] = v83;

      v89[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[9] = v84;

      v89[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[11] = v85;

      v89[12] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[13] = v86;

      v89[14] = partial apply for closure #1 in OSLogArguments.append(_:);
      v89[15] = v87;

      v89[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v89[17] = v88;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v91, v92))
      {
        v57 = static UnsafeMutablePointer.allocate(capacity:)();
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v58 = createStorage<A>(capacity:type:)(0);
        v59 = createStorage<A>(capacity:type:)(2);
        v202 = v57;
        v203 = v58;
        v204 = v59;
        serialize(_:at:)(2, &v202);
        serialize(_:at:)(3, &v202);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v80;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v81;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v82;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v83;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v84;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v87;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        v205 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        v206 = v88;
        closure #1 in osLogInternal(_:log:type:)(&v205, &v202, &v203, &v204);
        _os_log_impl(&dword_269912000, v91, v92, "Calling writeDoseEvent() for specified scheduleID (%s) and potentially medicationID (%s) with medStatus: %{BOOL}d", v57, 0x1Cu);
        destroyStorage<A>(_:count:)(v58, 0, v56);
        destroyStorage<A>(_:count:)(v59, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v57, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v51 = *(v196 + 1496);
      v52 = *(v196 + 1488);
      v49 = *(v196 + 1368);
      v50 = *(v196 + 1344);
      v53 = *(v196 + 1264);
      v55 = *(v196 + 1224);
      MEMORY[0x277D82BD8](v91);
      v52(v49, v50);
      MEMORY[0x277D82BE0](v53);
      v54 = *(v196 + 616);
      *(v196 + 1744) = v54;

      if (v55)
      {
        *(v196 + 792) = *(v196 + 1224);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        Collection.first.getter();
        v45 = *(v196 + 480);
        v46 = *(v196 + 488);

        v47 = v45;
        v48 = v46;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      *(v196 + 464) = v47;
      *(v196 + 472) = v48;
      v44 = *(v196 + 472) != 0;
      v43 = *(v196 + 586);
      outlined destroy of String.UTF8View(v196 + 464);
      v16 = swift_task_alloc();
      *(v196 + 1752) = v16;
      *v16 = *(v196 + 592);
      v16[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      v17 = *(v196 + 1264);
      v18 = *(v196 + 1248);
      v19 = *(v196 + 1240);
      v20 = *(v196 + 1232);
      v21 = *(v196 + 585);
      v214 = *(v196 + 1256);
      v215 = v17;

      return SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:)(v17, v54, v21 & 1, v44, v20, v43 & 1, v19, v18);
    }

    v136 = *(v196 + 1480);
    v134 = *(v196 + 1472);
    v135 = *(v196 + 1464);
    v10 = *(v196 + 1384);
    v133 = *(v196 + 1344);
    v132 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v135(v10, v132, v133);
    swift_endAccess();
    v138 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    v139 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v138, v137))
    {
      v128 = static UnsafeMutablePointer.allocate(capacity:)();
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v129 = createStorage<A>(capacity:type:)(0);
      v130 = createStorage<A>(capacity:type:)(0);
      *(v196 + 744) = v128;
      *(v196 + 752) = v129;
      *(v196 + 760) = v130;
      serialize(_:at:)(0, (v196 + 744));
      serialize(_:at:)(0, (v196 + 744));
      *(v196 + 768) = v139;
      v131 = swift_task_alloc();
      v131[2] = v196 + 744;
      v131[3] = v196 + 752;
      v131[4] = v196 + 760;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v138, v137, "allMedsLoggedAlready, returning code .allMedsLoggedAlready", v128, 2u);
      destroyStorage<A>(_:count:)(v129, 0, v127);
      destroyStorage<A>(_:count:)(v130, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v128, MEMORY[0x277D84B78]);
    }

    v122 = *(v196 + 1496);
    v123 = *(v196 + 1488);
    v120 = *(v196 + 1384);
    v121 = *(v196 + 1344);
    MEMORY[0x277D82BD8](v138);
    v123(v120, v121);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v124 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(111, 0);
    *(v196 + 1704) = v124;
    MEMORY[0x277D82BE0](v124);
    *(v196 + 688) = v124;
    *(v196 + 1712) = type metadata accessor for MatchedMedName();
    *(v196 + 696) = _allocateUninitializedArray<A>(_:)();
    v125 = *(v196 + 624);

    *(v196 + 704) = v125;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v126 = *(v196 + 712);
    *(v196 + 1720) = v126;
    if (v126)
    {
      *(v196 + 720) = v126;
      v11 = swift_task_alloc();
      v6 = v126;
      *(v196 + 1728) = v11;
      *v11 = *(v196 + 592);
      v11[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
      v7 = *(v196 + 1264);
      v8 = *(v196 + 1256);

      return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v8, v7);
    }

    v113 = *(v196 + 1712);
    v115 = *(v196 + 1704);
    v119 = *(v196 + 1336);
    v118 = *(v196 + 1320);
    v117 = *(v196 + 1328);
    outlined destroy of [HKQuantityType]((v196 + 448));
    v114 = *(v196 + 696);

    v116 = Array._bridgeToObjectiveC()().super.isa;

    [v115 setMatchingMeds_];
    MEMORY[0x277D82BD8](v116);
    outlined destroy of [HKQuantityType]((v196 + 696));
    MEMORY[0x277D82BD8](*(v196 + 688));
    outlined destroy of [HKQuantityType]((v196 + 624));
    outlined destroy of [HKQuantityType]((v196 + 616));
    outlined destroy of [HKQuantityType]((v196 + 608));
    (*(v117 + 8))(v119, v118);
    v150 = *(v196 + 1704);
  }

  v22 = *(v196 + 1456);
  v26 = *(v196 + 1448);
  v27 = *(v196 + 1440);
  v28 = *(v196 + 1432);
  v29 = *(v196 + 1424);
  v30 = *(v196 + 1416);
  v31 = *(v196 + 1408);
  v32 = *(v196 + 1400);
  v33 = *(v196 + 1392);
  v34 = *(v196 + 1384);
  v35 = *(v196 + 1376);
  v36 = *(v196 + 1368);
  v37 = *(v196 + 1360);
  v38 = *(v196 + 1336);
  v39 = *(v196 + 1312);
  v40 = *(v196 + 1304);
  v41 = *(v196 + 1296);
  v42 = *(v196 + 1288);

  v23 = *(*(v196 + 592) + 8);
  v24 = *(v196 + 592);

  return v23(v150);
}

{
  v33 = v0[212];
  v34 = v0[210];
  v0[74] = v0;
  v0[105] = v33;
  MEMORY[0x277D82BE0](v33);
  v0[106] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v35 = v0[102];
  v0[210] = v35;
  if (v35)
  {
    v32[104] = v35;
    v1 = swift_task_alloc();
    v32[211] = v1;
    *v1 = v32[74];
    v1[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v2 = v32[158];
    v3 = v32[157];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v35, 1, v3, v2);
  }

  else
  {
    v8 = v32[209];
    v13 = v32[167];
    v12 = v32[165];
    v11 = v32[166];
    outlined destroy of [HKQuantityType](v32 + 62);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v31 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(110, 0);
    MEMORY[0x277D82BE0](v31);
    v32[103] = v31;
    v9 = v32[100];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v32[103]);
    outlined destroy of [HKQuantityType](v32 + 100);
    outlined destroy of [HKQuantityType](v32 + 78);
    outlined destroy of [HKQuantityType](v32 + 77);
    outlined destroy of [HKQuantityType](v32 + 76);
    (*(v11 + 8))(v13, v12);
    v5 = v32[182];
    v14 = v32[181];
    v15 = v32[180];
    v16 = v32[179];
    v17 = v32[178];
    v18 = v32[177];
    v19 = v32[176];
    v20 = v32[175];
    v21 = v32[174];
    v22 = v32[173];
    v23 = v32[172];
    v24 = v32[171];
    v25 = v32[170];
    v26 = v32[167];
    v27 = v32[164];
    v28 = v32[163];
    v29 = v32[162];
    v30 = v32[161];

    v6 = *(v32[74] + 8);
    v7 = v32[74];

    return v6(v31);
  }
}

{
  v34 = v0[217];
  v35 = v0[215];
  v0[74] = v0;
  v0[91] = v34;
  MEMORY[0x277D82BE0](v34);
  v0[92] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v36 = v0[89];
  v0[215] = v36;
  if (v36)
  {
    v33[90] = v36;
    v1 = swift_task_alloc();
    v33[216] = v1;
    *v1 = v33[74];
    v1[1] = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
    v2 = v33[158];
    v3 = v33[157];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v36, 1, v3, v2);
  }

  else
  {
    v8 = v33[214];
    v10 = v33[213];
    v14 = v33[167];
    v13 = v33[165];
    v12 = v33[166];
    outlined destroy of [HKQuantityType](v33 + 56);
    v9 = v33[87];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType](v33 + 87);
    MEMORY[0x277D82BD8](v33[86]);
    outlined destroy of [HKQuantityType](v33 + 78);
    outlined destroy of [HKQuantityType](v33 + 77);
    outlined destroy of [HKQuantityType](v33 + 76);
    (*(v12 + 8))(v14, v13);
    v32 = v33[213];
    v5 = v33[182];
    v15 = v33[181];
    v16 = v33[180];
    v17 = v33[179];
    v18 = v33[178];
    v19 = v33[177];
    v20 = v33[176];
    v21 = v33[175];
    v22 = v33[174];
    v23 = v33[173];
    v24 = v33[172];
    v25 = v33[171];
    v26 = v33[170];
    v27 = v33[167];
    v28 = v33[164];
    v29 = v33[163];
    v30 = v33[162];
    v31 = v33[161];

    v6 = *(v33[74] + 8);
    v7 = v33[74];

    return v6(v32);
  }
}

{
  v7 = v0[167];
  v5 = v0[166];
  v6 = v0[165];
  v0[74] = v0;
  outlined destroy of [HKQuantityType](v0 + 77);
  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v5 + 8))(v7, v6);
  v25 = v0[220];
  v1 = v0[182];
  v8 = v0[181];
  v9 = v0[180];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[175];
  v15 = v0[174];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[171];
  v19 = v0[170];
  v20 = v0[167];
  v21 = v0[164];
  v22 = v0[163];
  v23 = v0[162];
  v24 = v0[161];

  v2 = *(v0[74] + 8);
  v3 = v0[74];

  return v2(v25);
}

{
  v1 = v0[192];
  v36 = v0[191];
  v37 = v0[190];
  v41 = v0[167];
  v39 = v0[166];
  v40 = v0[165];
  v38 = v0[153];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);
  swift_deallocUninitializedObject();

  outlined destroy of [HKQuantityType](v0 + 64);

  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v39 + 8))(v41, v40);
  v42 = v0[195];
  v47 = v0[185];
  v45 = v0[184];
  v46 = v0[183];
  v2 = v0[170];
  v44 = v0[168];
  v3 = v42;
  v0[79] = v42;
  v43 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v46(v2, v43, v44);
  swift_endAccess();
  v49 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(0);
    v33 = createStorage<A>(capacity:type:)(0);
    *(v35 + 640) = buf;
    *(v35 + 648) = v32;
    *(v35 + 656) = v33;
    serialize(_:at:)(0, (v35 + 640));
    serialize(_:at:)(0, (v35 + 640));
    *(v35 + 664) = v50;
    v34 = swift_task_alloc();
    v34[2] = v35 + 640;
    v34[3] = v35 + 648;
    v34[4] = v35 + 656;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v49, v48, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v32, 0, v30);
    destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v10 = *(v35 + 1496);
  v11 = *(v35 + 1488);
  v8 = *(v35 + 1360);
  v9 = *(v35 + 1344);
  MEMORY[0x277D82BD8](v49);
  v11(v8, v9);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v29 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v4 = *(v35 + 1456);
  v12 = *(v35 + 1448);
  v13 = *(v35 + 1440);
  v14 = *(v35 + 1432);
  v15 = *(v35 + 1424);
  v16 = *(v35 + 1416);
  v17 = *(v35 + 1408);
  v18 = *(v35 + 1400);
  v19 = *(v35 + 1392);
  v20 = *(v35 + 1384);
  v21 = *(v35 + 1376);
  v22 = *(v35 + 1368);
  v23 = *(v35 + 1360);
  v24 = *(v35 + 1336);
  v25 = *(v35 + 1312);
  v26 = *(v35 + 1304);
  v27 = *(v35 + 1296);
  v28 = *(v35 + 1288);

  v5 = *(*(v35 + 592) + 8);
  v6 = *(v35 + 592);

  return v5(v29);
}

{
  v37 = v0[167];
  v35 = v0[166];
  v36 = v0[165];
  v0[74] = v0;
  outlined destroy of [HKQuantityType](v0 + 76);
  (*(v35 + 8))(v37, v36);
  v38 = v0[208];
  v43 = v0[185];
  v41 = v0[184];
  v42 = v0[183];
  v1 = v0[170];
  v40 = v0[168];
  v2 = v38;
  v0[79] = v38;
  v39 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v42(v1, v39, v40);
  swift_endAccess();
  v45 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0);
    v32 = createStorage<A>(capacity:type:)(0);
    *(v34 + 640) = buf;
    *(v34 + 648) = v31;
    *(v34 + 656) = v32;
    serialize(_:at:)(0, (v34 + 640));
    serialize(_:at:)(0, (v34 + 640));
    *(v34 + 664) = v46;
    v33 = swift_task_alloc();
    v33[2] = v34 + 640;
    v33[3] = v34 + 648;
    v33[4] = v34 + 656;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v45, v44, "Failed fetching dose events for specified timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v34 + 1496);
  v10 = *(v34 + 1488);
  v7 = *(v34 + 1360);
  v8 = *(v34 + 1344);
  MEMORY[0x277D82BD8](v45);
  v10(v7, v8);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v28 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(v34 + 1456);
  v11 = *(v34 + 1448);
  v12 = *(v34 + 1440);
  v13 = *(v34 + 1432);
  v14 = *(v34 + 1424);
  v15 = *(v34 + 1416);
  v16 = *(v34 + 1408);
  v17 = *(v34 + 1400);
  v18 = *(v34 + 1392);
  v19 = *(v34 + 1384);
  v20 = *(v34 + 1376);
  v21 = *(v34 + 1368);
  v22 = *(v34 + 1360);
  v23 = *(v34 + 1336);
  v24 = *(v34 + 1312);
  v25 = *(v34 + 1304);
  v26 = *(v34 + 1296);
  v27 = *(v34 + 1288);

  v4 = *(*(v34 + 592) + 8);
  v5 = *(v34 + 592);

  return v4(v28);
}

uint64_t SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1)
{
  v11 = *v2;
  v9 = *v2 + 16;
  v10 = v11 + 74;
  v4 = *(*v2 + 1544);
  v11[74] = *v2;
  v11[194] = a1;
  v11[195] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  else
  {

    v5 = *v10;
    v6 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 1592);
  v6 = *(*v1 + 1584);
  v7 = *(*v1 + 1576);
  *(v8 + 592) = *v1;
  *(v8 + 1600) = a1;

  v4 = *(v8 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1616);
  *(v6 + 592) = *v1;
  *(v6 + 1624) = a1;

  v4 = *(v6 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1632);
  *(v6 + 592) = *v1;
  *(v6 + 1640) = a1;

  v4 = *(v6 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v10 = *v2;
  v9 = v10 + 74;
  v4 = *(*v2 + 1648);
  v10[74] = *v2;
  v10[207] = a1;
  v10[208] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  else
  {
    v5 = *v9;
    v6 = SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1688);
  *(v6 + 592) = *v1;
  *(v6 + 1696) = a1;

  v4 = *(v6 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1728);
  *(v6 + 592) = *v1;
  *(v6 + 1736) = a1;

  v4 = *(v6 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 1752);
  v6 = *(*v1 + 1744);
  v7 = *(*v1 + 1264);
  *(v8 + 592) = *v1;
  *(v8 + 1760) = a1;

  v4 = *(v8 + 592);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:), 0);
}

uint64_t implicit closure #2 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
  lazy protocol witness table accessor for type [String]? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  lazy protocol witness table accessor for type Bool? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #6 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type Double? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a4;
  v4[54] = a2;
  v4[53] = a1;
  v4[31] = v4;
  v4[32] = 0;
  v4[33] = 0;
  v4[27] = 0;
  v4[28] = 0;
  v4[38] = 0;
  v4[44] = 0;
  v4[29] = 0;
  v4[30] = 0;
  v4[47] = 0;
  v5 = type metadata accessor for Logger();
  v4[56] = v5;
  v15 = *(v5 - 8);
  v4[57] = v15;
  v16 = *(v15 + 64);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v4[61] = v6;
  v17 = *(v6 - 8);
  v4[62] = v17;
  v18 = *(v17 + 64);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[66] = v7;
  v19 = *(v7 - 8);
  v4[67] = v19;
  v8 = *(v19 + 64) + 15;
  v4[68] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[72] = v9;
  v21 = *(v9 - 8);
  v4[73] = v21;
  v22 = *(v21 + 64);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR) - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v12 = type metadata accessor for DateComponents();
  v4[82] = v12;
  v23 = *(v12 - 8);
  v4[83] = v23;
  v24 = *(v23 + 64);
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[32] = a1;
  v4[33] = a2;
  v4[27] = a3;
  v4[28] = a4;
  v13 = v4[31];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:), 0);
}

uint64_t SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)()
{
  v182 = v0;
  v159 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v165 = v0[85];
  v171 = v0[84];
  v170 = v0[83];
  v172 = v0[82];
  v160 = v0[81];
  v161 = v0[80];
  v166 = v0[78];
  v167 = v0[77];
  v178 = v0[73];
  v181 = v0[72];
  v179 = v0[71];
  v176 = v0[68];
  v175 = v0[67];
  v1 = v175;
  v177 = v0[66];
  v0[31] = v0;
  v2 = *(v1 + 56);
  v180 = 1;
  v2();
  v162 = 0;
  v3 = type metadata accessor for TimeZone();
  (*(*(v3 - 8) + 56))(v161, 1);
  v163 = &v72;
  v72 = 0;
  v164 = 1;
  v73 = 1;
  v74 = 0;
  v75 = 1;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v79 = 1;
  v80 = 0;
  v81 = 1;
  v82 = 0;
  v83 = 1;
  v84 = 0;
  v85 = 1;
  v86 = 0;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 0;
  v93 = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.second.setter();
  static Calendar.current.getter();
  v4 = v165;
  v5 = v171;
  v6 = v172;
  v7 = v170 + 16;
  v8 = *(v170 + 16);
  v0[86] = v8;
  v0[87] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v4, v6);
  Date.init()();
  Date.startOfDay.getter(v167);
  v9 = v166;
  v10 = v181;
  v11 = v178 + 8;
  v169 = *(v178 + 8);
  v12 = v169;
  v0[88] = v169;
  v168 = v11;
  v0[89] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v169(v167, v181);
  v13 = v171;
  v14 = v172;
  v15 = v170 + 8;
  v173 = *(v170 + 8);
  v16 = v173;
  v0[90] = v173;
  v174 = v15;
  v0[91] = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  v17 = v176;
  v18 = v177;
  v19 = v175 + 8;
  v20 = *(v175 + 8);
  v0[92] = v20;
  v0[93] = v19 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v18);
  v21 = v179;
  v22 = v180;
  v23 = v181;
  v24 = v178 + 48;
  v25 = *(v178 + 48);
  v0[94] = v25;
  v0[95] = v24 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v25(v21, v22, v23) == 1)
  {
    v56 = *(v158 + 568);
    v57 = *(v158 + 464);
    v58 = *(v158 + 456);
    v137 = *(v158 + 448);
    v135 = v58;
    outlined destroy of Date?(v56);
    v136 = Logger.wellness.unsafeMutableAddressor();
    v138 = v158 + 144;
    swift_beginAccess();
    (*(v135 + 16))(v57, v136, v137);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v139 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v141 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v139))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v125 = 0;
      v127 = createStorage<A>(capacity:type:)(0);
      v59 = createStorage<A>(capacity:type:)(v125);
      v60 = v127;
      v61 = v158;
      v128 = v59;
      v62 = (v158 + 272);
      v130 = (v158 + 272);
      *(v158 + 272) = buf;
      v131 = v61 + 280;
      *(v61 + 280) = v60;
      v132 = v61 + 288;
      *(v61 + 288) = v59;
      v129 = 0;
      serialize(_:at:)(0, v62);
      serialize(_:at:)(v129, v130);
      *(v158 + 296) = v141;
      v63 = swift_task_alloc();
      v64 = v131;
      v65 = v132;
      v133 = v63;
      v63[2] = v130;
      v63[3] = v64;
      v63[4] = v65;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v139, "failed to adjust day start for Meds in getMedScheduleWithDefinedValues, return nil", buf, 2u);
      v123 = 0;
      destroyStorage<A>(_:count:)(v127, 0, v124);
      destroyStorage<A>(_:count:)(v128, v123, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v99 = *(v158 + 680);
    v98 = *(v158 + 656);
    v95 = *(v158 + 464);
    v66 = *(v158 + 456);
    v96 = *(v158 + 448);
    v94 = v66;
    MEMORY[0x277D82BD8](oslog);
    (*(v94 + 8))(v95, v96);
    v97 = 0;
    type metadata accessor for HKMedicationExposableDoseEvent();
    v122 = _allocateUninitializedArray<A>(_:)();
    v173(v99, v98);
    v119 = v158 + 256;
    v120 = v158 + 264;
    v121 = v158 + 216;
    v67 = *(v158 + 680);
    v100 = *(v158 + 672);
    v101 = *(v158 + 648);
    v102 = *(v158 + 640);
    v103 = *(v158 + 632);
    v104 = *(v158 + 624);
    v105 = *(v158 + 616);
    v106 = *(v158 + 608);
    v107 = *(v158 + 600);
    v108 = *(v158 + 592);
    v109 = *(v158 + 568);
    v110 = *(v158 + 560);
    v111 = *(v158 + 552);
    v112 = *(v158 + 544);
    v113 = *(v158 + 520);
    v114 = *(v158 + 512);
    v115 = *(v158 + 504);
    v116 = *(v158 + 480);
    v117 = *(v158 + 472);
    v118 = *(v158 + 464);

    v68 = v122;
    v69 = *(*(v158 + 248) + 8);
    v70 = *(v158 + 248);

    return v69(v68);
  }

  else
  {
    v26 = v158;
    v143 = *(v158 + 632);
    v146 = *(v158 + 624);
    v144 = *(v158 + 616);
    v147 = *(v158 + 608);
    v27 = *(v158 + 584);
    v145 = *(v158 + 576);
    v28 = *(v158 + 568);
    v149 = *(v158 + 520);
    v152 = *(v158 + 512);
    v29 = *(v158 + 496);
    v151 = *(v158 + 488);
    v156 = *(v158 + 440);
    v154 = *(v158 + 432);
    v142 = v27;
    v148 = v29;
    v150 = v29;
    v30 = *(v27 + 32);
    *(v158 + 768) = v30;
    *(v26 + 776) = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30();
    v31 = v143;
    v32 = v145;
    v33 = v158;
    v34 = v146;
    v35 = v142 + 16;
    v36 = *(v142 + 16);
    *(v158 + 784) = v36;
    *(v33 + 792) = v35 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v34, v31, v32);
    Date.init()();
    Date.endOfDay.getter(v147);
    v37 = v152;
    v169(v144, v145);
    DateInterval.init(start:end:)();
    MEMORY[0x277D82BE0](v156);
    (*(v148 + 16))(v37, v149, v151);
    v38.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v39 = v150;
    v40 = v151;
    v41 = v158;
    isa = v38.super.isa;
    v43 = v152;
    v155 = isa;
    *(v158 + 800) = isa;
    v44 = v39 + 8;
    v45 = *(v39 + 8);
    *(v41 + 808) = v45;
    *(v41 + 816) = v44 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v43, v40);
    v46 = v158;
    v47 = *(v158 + 248);
    v157 = v158 + 16;
    *(v158 + 16) = v47;
    *(v46 + 56) = v46 + 312;
    *(v46 + 24) = SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:);
    v153 = swift_continuation_init();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
    v49 = v153;
    v50 = v154;
    v51 = v155;
    v52 = v158;
    v53 = v48;
    v54 = v156;
    *(v158 + 136) = v53;
    *(v52 + 112) = v49;
    *(v52 + 80) = MEMORY[0x277D85DD0];
    *(v52 + 88) = 1107296256;
    *(v52 + 92) = 0;
    *(v52 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
    *(v52 + 104) = &block_descriptor_973;
    [v54 doseEventsForDateInterval:v51 medicationIdentifier:v50 completion:?];
    v55 = v157;

    return MEMORY[0x282200938](v55);
  }
}

{
  v6 = *v0;
  v6[31] = *v0;
  v7 = v6 + 31;
  v1 = v6[6];
  v6[103] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:);
  }

  else
  {
    v2 = *v7;
    v3 = SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v118 = v0[100];
  v135 = v0[95];
  v136 = v0[94];
  v131 = v0[93];
  v132 = v0[92];
  v127 = v0[91];
  v128 = v0[90];
  v123 = v0[89];
  v124 = v0[88];
  v120 = v0[87];
  v121 = v0[86];
  v119 = v0[85];
  v125 = v0[84];
  v126 = v0[82];
  v122 = v0[78];
  v134 = v0[72];
  v133 = v0[70];
  v129 = v0[68];
  v130 = v0[66];
  v1 = v0[55];
  v2 = v0[53];
  v0[31] = v0;
  v0[38] = v0[39];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v118);
  static Calendar.current.getter();
  v121(v125, v119, v126);
  DateInterval.start.getter();
  default argument 2 of Calendar.date(byAdding:to:wrappingComponents:)();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v124(v122, v134);
  v128(v125, v126);
  v132(v129, v130);
  if (v136(v133, 1, v134) == 1)
  {
    v13 = *(v117 + 472);
    v60 = *(v117 + 448);
    v58 = *(v117 + 456);
    outlined destroy of Date?(*(v117 + 560));
    v59 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v58 + 16))(v13, v59, v60);
    swift_endAccess();
    log = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v63 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v61))
    {
      v54 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v55 = createStorage<A>(capacity:type:)(0);
      v56 = createStorage<A>(capacity:type:)(0);
      *(v117 + 320) = v54;
      *(v117 + 328) = v55;
      *(v117 + 336) = v56;
      serialize(_:at:)(0, (v117 + 320));
      serialize(_:at:)(0, (v117 + 320));
      *(v117 + 344) = v63;
      v57 = swift_task_alloc();
      v57[2] = v117 + 320;
      v57[3] = v117 + 328;
      v57[4] = v117 + 336;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v61, "failed to adjust interval start for Meds in getMedScheduleWithDefinedValues, return nil", v54, 2u);
      destroyStorage<A>(_:count:)(v55, 0, v53);
      destroyStorage<A>(_:count:)(v56, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v54, MEMORY[0x277D84B78]);
    }

    v41 = *(v117 + 816);
    v42 = *(v117 + 808);
    v50 = *(v117 + 728);
    v51 = *(v117 + 720);
    v46 = *(v117 + 712);
    v47 = *(v117 + 704);
    v48 = *(v117 + 680);
    v49 = *(v117 + 656);
    v44 = *(v117 + 632);
    v45 = *(v117 + 576);
    v43 = *(v117 + 520);
    v40 = *(v117 + 488);
    v38 = *(v117 + 472);
    v39 = *(v117 + 448);
    v37 = *(v117 + 456);
    MEMORY[0x277D82BD8](log);
    (*(v37 + 8))(v38, v39);
    type metadata accessor for HKMedicationExposableDoseEvent();
    v52 = _allocateUninitializedArray<A>(_:)();
    outlined destroy of [HKQuantityType]((v117 + 304));
    v42(v43, v40);
    v47(v44, v45);
    v51(v48, v49);
    v79 = v52;
  }

  else
  {
    v110 = *(v117 + 792);
    v111 = *(v117 + 784);
    v3 = *(v117 + 776);
    v113 = *(v117 + 624);
    v114 = *(v117 + 616);
    v108 = *(v117 + 600);
    v109 = *(v117 + 576);
    v4 = *(v117 + 560);
    v112 = *(v117 + 504);
    v5 = *(v117 + 424);
    (*(v117 + 768))();
    v111(v113, v108, v109);
    DateInterval.end.getter();
    DateInterval.init(start:end:)();
    type metadata accessor for HKMedicationExposableDoseEvent();
    *(v117 + 352) = _allocateUninitializedArray<A>(_:)();
    v115 = *(v117 + 304);

    *(v117 + 360) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection<>.makeIterator()();
    v116 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v107 = *(v117 + 368);
      if (!v107)
      {
        break;
      }

      *(v117 + 376) = v107;
      v105 = [v107 scheduledDate];
      if (v105)
      {
        v100 = *(v117 + 776);
        v101 = *(v117 + 768);
        v99 = *(v117 + 624);
        v103 = *(v117 + 576);
        v104 = *(v117 + 552);
        v102 = *(v117 + 584);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v101(v104, v99, v103);
        (*(v102 + 56))(v104, 0, 1, v103);
        MEMORY[0x277D82BD8](v105);
      }

      else
      {
        (*(*(v117 + 584) + 56))(*(v117 + 552), 1, 1, *(v117 + 576));
      }

      v6 = *(v117 + 760);
      if ((*(v117 + 752))(*(v117 + 552), 1, *(v117 + 576)) == 1)
      {
        v12 = *(v117 + 480);
        v92 = *(v117 + 448);
        v90 = *(v117 + 456);
        outlined destroy of Date?(*(v117 + 552));
        v91 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v90 + 16))(v12, v91, v92);
        swift_endAccess();
        oslog = Logger.logObject.getter();
        v93 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v95 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v93))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v87 = createStorage<A>(capacity:type:)(0);
          v88 = createStorage<A>(capacity:type:)(0);
          *(v117 + 384) = buf;
          *(v117 + 392) = v87;
          *(v117 + 400) = v88;
          serialize(_:at:)(0, (v117 + 384));
          serialize(_:at:)(0, (v117 + 384));
          *(v117 + 408) = v95;
          v89 = swift_task_alloc();
          v89[2] = v117 + 384;
          v89[3] = v117 + 392;
          v89[4] = v117 + 400;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, oslog, v93, "doesn't have a scheduled date, skipping.", buf, 2u);
          destroyStorage<A>(_:count:)(v87, 0, v85);
          destroyStorage<A>(_:count:)(v88, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

          v83 = 0;
          v84 = 0;
        }

        else
        {

          v83 = v116;
          v84 = v106;
        }

        v81 = *(v117 + 480);
        v82 = *(v117 + 448);
        v80 = *(v117 + 456);
        MEMORY[0x277D82BD8](oslog);
        (*(v80 + 8))(v81, v82);
        MEMORY[0x277D82BD8](v107);
        v96 = v83;
        v97 = v84;
      }

      else
      {
        v7 = *(v117 + 776);
        v98 = *(v117 + 592);
        v8 = *(v117 + 576);
        v9 = *(v117 + 552);
        v10 = *(v117 + 504);
        (*(v117 + 768))();
        if (DateInterval.contains(_:)())
        {
          MEMORY[0x277D82BE0](v107);
          *(v117 + 416) = v107;
          Array.append(_:)();
        }

        v11 = *(v117 + 712);
        (*(v117 + 704))(*(v117 + 592), *(v117 + 576));
        MEMORY[0x277D82BD8](v107);
        v96 = v116;
        v97 = v106;
      }

      v116 = v96;
      v106 = v97;
    }

    v67 = *(v117 + 816);
    v68 = *(v117 + 808);
    v76 = *(v117 + 728);
    v77 = *(v117 + 720);
    v72 = *(v117 + 712);
    v73 = *(v117 + 704);
    v74 = *(v117 + 680);
    v75 = *(v117 + 656);
    v70 = *(v117 + 632);
    v65 = *(v117 + 600);
    v71 = *(v117 + 576);
    v69 = *(v117 + 520);
    v64 = *(v117 + 504);
    v66 = *(v117 + 488);
    outlined destroy of [HKQuantityType]((v117 + 232));
    v78 = *(v117 + 352);

    outlined destroy of [HKQuantityType]((v117 + 352));
    v68(v64, v66);
    v73(v65, v71);
    outlined destroy of [HKQuantityType]((v117 + 304));
    v68(v69, v66);
    v73(v70, v71);
    v77(v74, v75);
    v79 = v78;
  }

  v14 = *(v117 + 680);
  v18 = *(v117 + 672);
  v19 = *(v117 + 648);
  v20 = *(v117 + 640);
  v21 = *(v117 + 632);
  v22 = *(v117 + 624);
  v23 = *(v117 + 616);
  v24 = *(v117 + 608);
  v25 = *(v117 + 600);
  v26 = *(v117 + 592);
  v27 = *(v117 + 568);
  v28 = *(v117 + 560);
  v29 = *(v117 + 552);
  v30 = *(v117 + 544);
  v31 = *(v117 + 520);
  v32 = *(v117 + 512);
  v33 = *(v117 + 504);
  v34 = *(v117 + 480);
  v35 = *(v117 + 472);
  v36 = *(v117 + 464);

  v15 = *(*(v117 + 248) + 8);
  v16 = *(v117 + 248);

  return v15(v79);
}

{
  v1 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v8 = v0[100];
  v16 = v0[91];
  v17 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v18 = v0[85];
  v19 = v0[84];
  v15 = v0[82];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[77];
  v25 = v0[76];
  v26 = v0[75];
  v27 = v0[74];
  v12 = v0[72];
  v28 = v0[71];
  v29 = v0[70];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[65];
  v33 = v0[64];
  v34 = v0[63];
  v9 = v0[61];
  v35 = v0[60];
  v36 = v0[59];
  v37 = v0[58];
  v7 = v0[55];
  v0[31] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v11(v32, v9);
  v14(v22, v12);
  v17(v18, v15);

  v2 = v0;
  v3 = *(v0[31] + 8);
  v4 = v0[31];
  v5 = v2[103];

  return v3();
}

uint64_t closure #1 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(id *a1, uint64_t a2, uint64_t a3)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *a1;
  v18 = a2;
  v19 = a3;
  v12 = [v20 scheduleItemIdentifier];
  if (v12)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v3;
    MEMORY[0x277D82BD8](v12);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v16[0] = v9;
  v16[1] = v10;
  v17 = v11;
  if (!v10)
  {
    if (!*(&v17 + 1))
    {
      outlined destroy of String.UTF8View(v16);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  outlined init with copy of String?(v16, &v15);
  if (!*(&v17 + 1))
  {
    outlined destroy of String.UTF8View(&v15);
LABEL_11:
    outlined destroy of (String?, String?)(v16);
    v6 = 0;
    goto LABEL_10;
  }

  v14 = v15;
  v13 = v17;
  v5 = MEMORY[0x26D649310](v15, *(&v15 + 1), v17, *(&v17 + 1));
  outlined destroy of String.UTF8View(&v13);
  outlined destroy of String.UTF8View(&v14);
  outlined destroy of String.UTF8View(v16);
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t implicit closure #8 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  outlined init with copy of [HKMedicationExposableDoseEvent](v3, a2);
  return swift_endAccess();
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 536) = a7;
  *(v7 + 528) = a6;
  *(v7 + 520) = a5;
  *(v7 + 512) = a4;
  *(v7 + 329) = a3;
  *(v7 + 504) = a2;
  *(v7 + 496) = a1;
  *(v7 + 336) = v7;
  *(v7 + 344) = 0;
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 800) = 0;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;
  *(v7 + 312) = 0;
  *(v7 + 808) = 0;
  *(v7 + 384) = 0;
  *(v7 + 392) = 0;
  *(v7 + 400) = 0;
  *(v7 + 408) = 0;
  *(v7 + 816) = 0;
  *(v7 + 488) = 0;
  v8 = type metadata accessor for Logger();
  *(v7 + 544) = v8;
  v14 = *(v8 - 8);
  *(v7 + 552) = v14;
  v15 = *(v14 + 64);
  *(v7 + 560) = swift_task_alloc();
  *(v7 + 568) = swift_task_alloc();
  *(v7 + 576) = swift_task_alloc();
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  *(v7 + 608) = swift_task_alloc();
  *(v7 + 616) = swift_task_alloc();
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v7 + 640) = v9;
  v16 = *(v9 - 8);
  *(v7 + 648) = v16;
  v10 = *(v16 + 64) + 15;
  *(v7 + 656) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v7 + 664) = swift_task_alloc();
  *(v7 + 344) = a1;
  *(v7 + 320) = a2;
  *(v7 + 328) = a3 & 1;
  *(v7 + 256) = a4;
  *(v7 + 264) = a5;
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  v12 = *(v7 + 336);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)()
{
  v1 = *(v0 + 496);
  *(v0 + 336) = v0;
  v18 = [v1 scheduledDate];
  if (v18)
  {
    v16 = *(v17 + 664);
    v14 = *(v17 + 656);
    v15 = *(v17 + 640);
    v13 = *(v17 + 648);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v13 + 32))(v16, v14, v15);
    (*(v13 + 56))(v16, 0, 1, v15);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    (*(*(v17 + 648) + 56))(*(v17 + 664), 1, 1, *(v17 + 640));
  }

  v12 = (*(*(v17 + 648) + 48))(*(v17 + 664), 1, *(v17 + 640)) != 1;
  *(v17 + 330) = v12;
  v7 = *(v17 + 496);
  outlined destroy of Date?(*(v17 + 664));
  *(v17 + 800) = v12;
  v8 = [v7 medicationIdentifier];
  v9 = [v8 underlyingIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v2;
  *(v17 + 672) = v11;
  *(v17 + 680) = v2;
  *(v17 + 288) = v11;
  *(v17 + 296) = v2;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  v3 = swift_task_alloc();
  *(v17 + 688) = v3;
  *v3 = *(v17 + 336);
  v3[1] = SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  v4 = *(v17 + 536);
  v5 = *(v17 + 528);

  return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v11, v10, v5, v4, 1.0);
}

{
  v210 = v0;
  v1 = *(v0 + 720);
  v167 = *(v0 + 704);
  v166 = *(v0 + 696);
  v2 = *(v0 + 632);
  v160 = *(v0 + 552);
  v162 = *(v0 + 544);
  v3 = *(v0 + 512);
  v165 = v3;
  *(v0 + 336) = v0;
  v164 = isCompatibleUnit(_:_:)(v3, v1);

  *(v0 + 808) = v164;
  v161 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v163 = *(v160 + 16);
  *(v0 + 736) = v163;
  *(v0 + 744) = (v160 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v163(v2, v161, v162);
  swift_endAccess();
  v168 = swift_allocObject();
  *(v168 + 16) = v164;

  v170 = swift_allocObject();
  v170[1] = v165;

  v172 = swift_allocObject();
  *(v172 + 16) = v166;
  *(v172 + 24) = v167;
  oslog = Logger.logObject.getter();
  v185 = static os_log_type_t.debug.getter();
  v174 = swift_allocObject();
  *(v174 + 16) = 32;
  v175 = swift_allocObject();
  *(v175 + 16) = 8;
  v169 = swift_allocObject();
  *(v169 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  *(v169 + 24) = v168;
  v176 = swift_allocObject();
  *(v176 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v176 + 24) = v169;
  v177 = swift_allocObject();
  *(v177 + 16) = 32;
  v178 = swift_allocObject();
  *(v178 + 16) = 8;
  v171 = swift_allocObject();
  *(v171 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v171 + 24) = v170;
  v179 = swift_allocObject();
  *(v179 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v179 + 24) = v171;
  v180 = swift_allocObject();
  *(v180 + 16) = 32;
  v181 = swift_allocObject();
  *(v181 + 16) = 8;
  v173 = swift_allocObject();
  *(v173 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
  *(v173 + 24) = v172;
  v182 = swift_allocObject();
  *(v182 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v182 + 24) = v173;
  *(v0 + 752) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v183 = v4;

  *v183 = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[1] = v174;

  v183[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[3] = v175;

  v183[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[5] = v176;

  v183[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[7] = v177;

  v183[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[9] = v178;

  v183[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[11] = v179;

  v183[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[13] = v180;

  v183[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[15] = v181;

  v183[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v183[17] = v182;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v185))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v157 = createStorage<A>(capacity:type:)(0);
    v158 = createStorage<A>(capacity:type:)(3);
    v205 = buf;
    v206 = v157;
    v207 = v158;
    serialize(_:at:)(2, &v205);
    serialize(_:at:)(3, &v205);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v174;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v175;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v176;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v177;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v178;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v179;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v180;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v181;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    v208 = partial apply for closure #1 in OSLogArguments.append(_:);
    v209 = v182;
    closure #1 in osLogInternal(_:log:type:)(&v208, &v205, &v206, &v207);
    _os_log_impl(&dword_269912000, oslog, v185, "hasCompatibleUnit: (%s), with inputDosageUnit (%s) and getAsNeededDosageUnit(%s)", buf, 0x20u);
    destroyStorage<A>(_:count:)(v157, 0, v155);
    destroyStorage<A>(_:count:)(v158, 3, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v154 = *(v159 + 330);
  v151 = *(v159 + 632);
  v152 = *(v159 + 544);
  v150 = *(v159 + 552);
  MEMORY[0x277D82BD8](oslog);
  v153 = *(v150 + 8);
  *(v159 + 760) = v153;
  *(v159 + 768) = (v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v153(v151, v152);
  if (v154)
  {
    v5 = *(v159 + 624);
    v132 = *(v159 + 544);
    v136 = *(v159 + 520);
    v135 = *(v159 + 512);
    v134 = *(v159 + 329);
    v133 = *(v159 + 504);
    v131 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v163(v5, v131, v132);
    swift_endAccess();
    v137 = swift_allocObject();
    *(v137 + 16) = v133;
    *(v137 + 24) = v134 & 1;

    v139 = swift_allocObject();
    *(v139 + 16) = v135;
    *(v139 + 24) = v136;
    log = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();
    v141 = swift_allocObject();
    *(v141 + 16) = 32;
    v142 = swift_allocObject();
    *(v142 + 16) = 8;
    v138 = swift_allocObject();
    *(v138 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v138 + 24) = v137;
    v143 = swift_allocObject();
    *(v143 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v143 + 24) = v138;
    v144 = swift_allocObject();
    *(v144 + 16) = 32;
    v145 = swift_allocObject();
    *(v145 + 16) = 8;
    v140 = swift_allocObject();
    *(v140 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
    *(v140 + 24) = v139;
    v146 = swift_allocObject();
    *(v146 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v146 + 24) = v140;
    _allocateUninitializedArray<A>(_:)();
    v147 = v6;

    *v147 = partial apply for closure #1 in OSLogArguments.append(_:);
    v147[1] = v141;

    v147[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v147[3] = v142;

    v147[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v147[5] = v143;

    v147[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v147[7] = v144;

    v147[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v147[9] = v145;

    v147[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v147[11] = v146;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v149))
    {
      v128 = static UnsafeMutablePointer.allocate(capacity:)();
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v129 = createStorage<A>(capacity:type:)(0);
      v130 = createStorage<A>(capacity:type:)(2);
      v200 = v128;
      v201 = v129;
      v202 = v130;
      serialize(_:at:)(2, &v200);
      serialize(_:at:)(2, &v200);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v141;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v142;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v143;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v144;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v145;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      v203 = partial apply for closure #1 in OSLogArguments.append(_:);
      v204 = v146;
      closure #1 in osLogInternal(_:log:type:)(&v203, &v200, &v201, &v202);
      _os_log_impl(&dword_269912000, log, v149, "updateDosageForDoseEvent: scheduled med, got inputDosage (%s) and inputDosageUnit (%s)", v128, 0x16u);
      destroyStorage<A>(_:count:)(v129, 0, v127);
      destroyStorage<A>(_:count:)(v130, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v128, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v123 = *(v159 + 624);
    v124 = *(v159 + 544);
    v126 = *(v159 + 329);
    v125 = *(v159 + 504);
    MEMORY[0x277D82BD8](log);
    v153(v123, v124);
    MEMORY[0x277D82BE0](*(v159 + 496));
    if (v126)
    {
      v122 = 1;
LABEL_22:
      v9 = *(v159 + 616);
      v108 = *(v159 + 544);
      MEMORY[0x277D82BD8](*(v159 + 496));
      *(v159 + 816) = v122 & 1;
      v107 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v163(v9, v107, v108);
      swift_endAccess();
      v109 = swift_allocObject();
      *(v109 + 16) = v122 & 1;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      v111 = swift_allocObject();
      *(v111 + 16) = 32;
      v112 = swift_allocObject();
      *(v112 + 16) = 8;
      v110 = swift_allocObject();
      *(v110 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v110 + 24) = v109;
      v113 = swift_allocObject();
      *(v113 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v113 + 24) = v110;
      _allocateUninitializedArray<A>(_:)();
      v114 = v10;

      *v114 = partial apply for closure #1 in OSLogArguments.append(_:);
      v114[1] = v111;

      v114[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v114[3] = v112;

      v114[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v114[5] = v113;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v115, v116))
      {
        v104 = static UnsafeMutablePointer.allocate(capacity:)();
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v105 = createStorage<A>(capacity:type:)(0);
        v106 = createStorage<A>(capacity:type:)(1);
        v193 = v104;
        v194 = v105;
        v195 = v106;
        serialize(_:at:)(2, &v193);
        serialize(_:at:)(1, &v193);
        v196 = partial apply for closure #1 in OSLogArguments.append(_:);
        v197 = v111;
        closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
        v196 = partial apply for closure #1 in OSLogArguments.append(_:);
        v197 = v112;
        closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
        v196 = partial apply for closure #1 in OSLogArguments.append(_:);
        v197 = v113;
        closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
        _os_log_impl(&dword_269912000, v115, v116, "has compatible dosage: (%s)", v104, 0xCu);
        destroyStorage<A>(_:count:)(v105, 0, v103);
        destroyStorage<A>(_:count:)(v106, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v104, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v101 = *(v159 + 616);
      v102 = *(v159 + 544);
      MEMORY[0x277D82BD8](v115);
      v153(v101, v102);
      if (v164 && (v122 & 1) != 0)
      {
        *(v159 + 480) = [*(v159 + 496) scheduledDoseQuantity];
        if (*(v159 + 480))
        {
          isa = *(v159 + 480);
        }

        else
        {
          type metadata accessor for NSNumber();
          isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          if (*(v159 + 480))
          {
            outlined destroy of HealthKitPersistor((v159 + 480));
          }
        }

        v97 = *(v159 + 704);
        v98 = *(v159 + 680);
        v99 = [*(v159 + 496) updateForNewDoseQuantity_];
        MEMORY[0x277D82BD8](isa);
        *(v159 + 488) = v99;

        v100 = v99;
        goto LABEL_50;
      }

      v11 = *(v159 + 608);
      v81 = *(v159 + 544);
      v83 = *(v159 + 520);
      v82 = *(v159 + 512);
      v80 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v163(v11, v80, v81);
      swift_endAccess();
      v84 = swift_allocObject();
      *(v84 + 16) = v164;

      v86 = swift_allocObject();
      *(v86 + 16) = v82;
      *(v86 + 24) = v83;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      v88 = swift_allocObject();
      *(v88 + 16) = 32;
      v89 = swift_allocObject();
      *(v89 + 16) = 8;
      v85 = swift_allocObject();
      *(v85 + 16) = partial apply for implicit closure #1 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
      *(v85 + 24) = v84;
      v90 = swift_allocObject();
      *(v90 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v90 + 24) = v85;
      v91 = swift_allocObject();
      *(v91 + 16) = 32;
      v92 = swift_allocObject();
      *(v92 + 16) = 8;
      v87 = swift_allocObject();
      *(v87 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:medicationIDPresent:dosage:dosageUnit:);
      *(v87 + 24) = v86;
      v93 = swift_allocObject();
      *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v93 + 24) = v87;
      _allocateUninitializedArray<A>(_:)();
      v94 = v12;

      *v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94[1] = v88;

      v94[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v94[3] = v89;

      v94[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v94[5] = v90;

      v94[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v94[7] = v91;

      v94[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v94[9] = v92;

      v94[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v94[11] = v93;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v95, v96))
      {
        v77 = static UnsafeMutablePointer.allocate(capacity:)();
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v78 = createStorage<A>(capacity:type:)(0);
        v79 = createStorage<A>(capacity:type:)(2);
        v187 = v77;
        v188 = v78;
        v189 = v79;
        serialize(_:at:)(2, &v187);
        serialize(_:at:)(2, &v187);
        v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v191 = v88;
        closure #1 in osLogInternal(_:log:type:)(&v190, &v187, &v188, &v189);
        v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v191 = v89;
        closure #1 in osLogInternal(_:log:type:)(&v190, &v187, &v188, &v189);
        v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v191 = v90;
        closure #1 in osLogInternal(_:log:type:)(&v190, &v187, &v188, &v189);
        v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v191 = v91;
        closure #1 in osLogInternal(_:log:type:)(&v190, &v187, &v188, &v189);
        v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v191 = v92;
        closure #1 in osLogInternal(_:log:type:)(&v190, &v187, &v188, &v189);
        v190 = partial apply for closure #1 in OSLogArguments.append(_:);
        v191 = v93;
        closure #1 in osLogInternal(_:log:type:)(&v190, &v187, &v188, &v189);
        _os_log_impl(&dword_269912000, v95, v96, "isScheduled fell through, with hasCompatibleUnit (%s) and hasCompatibleDosage (%s)", v77, 0x16u);
        destroyStorage<A>(_:count:)(v78, 0, v76);
        destroyStorage<A>(_:count:)(v79, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v77, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v74 = *(v159 + 608);
      v75 = *(v159 + 544);
      MEMORY[0x277D82BD8](v95);
      v153(v74, v75);
LABEL_47:
      v20 = *(v159 + 560);
      v45 = *(v159 + 544);
      v44 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v163(v20, v44, v45);
      swift_endAccess();
      v47 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      v48 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v47, v46))
      {
        v40 = static UnsafeMutablePointer.allocate(capacity:)();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v41 = createStorage<A>(capacity:type:)(0);
        v42 = createStorage<A>(capacity:type:)(0);
        *(v159 + 352) = v40;
        *(v159 + 360) = v41;
        *(v159 + 368) = v42;
        serialize(_:at:)(0, (v159 + 352));
        serialize(_:at:)(0, (v159 + 352));
        *(v159 + 376) = v48;
        v43 = swift_task_alloc();
        v43[2] = v159 + 352;
        v43[3] = v159 + 360;
        v43[4] = v159 + 368;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v47, v46, "updateDosageForDoseEvent fell through, this is a complex med request. Returning nil.", v40, 2u);
        destroyStorage<A>(_:count:)(v41, 0, v39);
        destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
      }

      v37 = *(v159 + 704);
      v38 = *(v159 + 680);
      v35 = *(v159 + 560);
      v36 = *(v159 + 544);
      MEMORY[0x277D82BD8](v47);
      v153(v35, v36);

      v100 = 0;
LABEL_50:
      v21 = *(v159 + 664);
      v24 = *(v159 + 656);
      v25 = *(v159 + 632);
      v26 = *(v159 + 624);
      v27 = *(v159 + 616);
      v28 = *(v159 + 608);
      v29 = *(v159 + 600);
      v30 = *(v159 + 592);
      v31 = *(v159 + 584);
      v32 = *(v159 + 576);
      v33 = *(v159 + 568);
      v34 = *(v159 + 560);

      v22 = *(*(v159 + 336) + 8);
      v23 = *(v159 + 336);

      return v22(v100);
    }

    v121 = [*(v159 + 496) scheduledDoseQuantity];
    if (v121)
    {
      [v121 doubleValue];
      v118 = v7;
      MEMORY[0x277D82BD8](v121);
      v119 = v118;
      v120 = 0;
    }

    else
    {
      v119 = 0.0;
      v120 = 1;
    }

    v186 = *(v159 + 504);
    if (*(v159 + 329))
    {
      if (v120)
      {
        v117 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v159 + 329);
      v198 = *(v159 + 504);
      v199 = v8 & 1;
      if ((v120 & 1) == 0)
      {
        v117 = v198 == v119;
LABEL_19:
        v122 = v117;
        goto LABEL_22;
      }
    }

    v117 = 0;
    goto LABEL_19;
  }

  v13 = *(v159 + 600);
  v70 = *(v159 + 544);
  v69 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v163(v13, v69, v70);
  swift_endAccess();
  v72 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v73 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v72, v71))
  {
    v65 = static UnsafeMutablePointer.allocate(capacity:)();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v66 = createStorage<A>(capacity:type:)(0);
    v67 = createStorage<A>(capacity:type:)(0);
    *(v159 + 448) = v65;
    *(v159 + 456) = v66;
    *(v159 + 464) = v67;
    serialize(_:at:)(0, (v159 + 448));
    serialize(_:at:)(0, (v159 + 448));
    *(v159 + 472) = v73;
    v68 = swift_task_alloc();
    v68[2] = v159 + 448;
    v68[3] = v159 + 456;
    v68[4] = v159 + 464;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v72, v71, "updateDosageForDoseEvent: this is an as needed event", v65, 2u);
    destroyStorage<A>(_:count:)(v66, 0, v64);
    destroyStorage<A>(_:count:)(v67, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v65, MEMORY[0x277D84B78]);
  }

  v62 = *(v159 + 600);
  v63 = *(v159 + 544);
  MEMORY[0x277D82BD8](v72);
  v153(v62, v63);
  if (!v164)
  {
    goto LABEL_47;
  }

  v14 = *(v159 + 592);
  v58 = *(v159 + 544);
  v57 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v163(v14, v57, v58);
  swift_endAccess();
  v60 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v61 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v60, v59))
  {
    v53 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0);
    v55 = createStorage<A>(capacity:type:)(0);
    *(v159 + 416) = v53;
    *(v159 + 424) = v54;
    *(v159 + 432) = v55;
    serialize(_:at:)(0, (v159 + 416));
    serialize(_:at:)(0, (v159 + 416));
    *(v159 + 440) = v61;
    v56 = swift_task_alloc();
    v56[2] = v159 + 416;
    v56[3] = v159 + 424;
    v56[4] = v159 + 432;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v60, v59, "updateDosageForDoseEvent: hasCompatibleUnit is true", v53, 2u);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);
  }

  *(v159 + 776) = 0;
  v51 = *(v159 + 680);
  v49 = *(v159 + 592);
  v50 = *(v159 + 544);
  MEMORY[0x277D82BD8](v60);
  v153(v49, v50);

  v15 = swift_task_alloc();
  *(v159 + 784) = v15;
  *v15 = *(v159 + 336);
  v15[1] = SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  v16 = *(v159 + 672);
  v17 = *(v159 + 536);
  v18 = *(v159 + 528);

  return SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(v16, v51, v18, v17);
}

{
  v119 = v0;
  v94 = v0[99];
  v101 = v0[94];
  v92 = v0[93];
  v93 = v0[92];
  v1 = v0[73];
  v91 = v0[68];
  v0[42] = v0;
  v0[48] = v94;
  v90 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  v93(v1, v90, v91);
  swift_endAccess();
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  oslog = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  v97 = swift_allocObject();
  *(v97 + 16) = 32;
  v98 = swift_allocObject();
  *(v98 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  *(v96 + 24) = v95;
  v99 = swift_allocObject();
  *(v99 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v99 + 24) = v96;
  _allocateUninitializedArray<A>(_:)();
  v100 = v2;

  *v100 = partial apply for closure #1 in OSLogArguments.append(_:);
  v100[1] = v97;

  v100[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v100[3] = v98;

  v100[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v100[5] = v99;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v103))
  {
    v3 = *(v89 + 776);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v87 = createStorage<A>(capacity:type:)(0);
    v88 = createStorage<A>(capacity:type:)(1);
    v114 = buf;
    v115 = v87;
    v116 = v88;
    serialize(_:at:)(2, &v114);
    serialize(_:at:)(1, &v114);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v97;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    if (v3)
    {
    }

    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v98;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v118 = v99;
    closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
    _os_log_impl(&dword_269912000, oslog, v103, "updateDosageForDoseEvent: asNeededDosageFromHealthApp (%s)", buf, 0xCu);
    destroyStorage<A>(_:count:)(v87, 0, v85);
    destroyStorage<A>(_:count:)(v88, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v84 = 0;
  }

  else
  {

    v84 = *(v89 + 776);
  }

  v81 = *(v89 + 768);
  v82 = *(v89 + 760);
  v79 = *(v89 + 584);
  v80 = *(v89 + 544);
  v83 = *(v89 + 329);
  MEMORY[0x277D82BD8](oslog);
  v82(v79, v80);
  if (v83)
  {
    v41 = *(v89 + 792);
    v48 = *(v89 + 752);
    v39 = *(v89 + 744);
    v40 = *(v89 + 736);
    v7 = *(v89 + 568);
    v38 = *(v89 + 544);
    v37 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v40(v7, v37, v38);
    swift_endAccess();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v46 + 24) = v43;
    _allocateUninitializedArray<A>(_:)();
    v47 = v8;

    *v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[1] = v44;

    v47[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[3] = v45;

    v47[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[5] = v46;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v49, v50))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = createStorage<A>(capacity:type:)(0);
      v36 = createStorage<A>(capacity:type:)(1);
      v104 = v34;
      v105 = v35;
      v106 = v36;
      serialize(_:at:)(2, &v104);
      serialize(_:at:)(1, &v104);
      v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v108 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v104, &v105, &v106);
      if (v84)
      {
      }

      v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v108 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v104, &v105, &v106);
      v107 = partial apply for closure #1 in OSLogArguments.append(_:);
      v108 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v104, &v105, &v106);
      _os_log_impl(&dword_269912000, v49, v50, "updateDosageForDoseEvent: using healthAppDosage (%s)", v34, 0xCu);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v34, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v27 = *(v89 + 792);
    v25 = *(v89 + 768);
    v26 = *(v89 + 760);
    v30 = *(v89 + 704);
    v31 = *(v89 + 680);
    v23 = *(v89 + 568);
    v24 = *(v89 + 544);
    v28 = *(v89 + 496);
    MEMORY[0x277D82BD8](v49);
    v26(v23, v24);
    type metadata accessor for NSNumber();
    isa = NSNumber.__allocating_init(value:)(v27).super.super.isa;
    v32 = [v28 updateForNewDoseQuantity_];
    MEMORY[0x277D82BD8](isa);
    *(v89 + 392) = v32;

    v60 = v32;
  }

  else
  {
    value = *(v89 + 504);
    v76 = *(v89 + 752);
    v67 = *(v89 + 744);
    v68 = *(v89 + 736);
    v5 = *(v89 + 576);
    v66 = *(v89 + 544);
    *(v89 + 400) = value;
    v65 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v68(v5, v65, v66);
    swift_endAccess();
    v70 = swift_allocObject();
    *(v70 + 16) = value;
    log = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
    *(v71 + 24) = v70;
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v74 + 24) = v71;
    _allocateUninitializedArray<A>(_:)();
    v75 = v6;

    *v75 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[1] = v72;

    v75[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[3] = v73;

    v75[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[5] = v74;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v78))
    {
      v62 = static UnsafeMutablePointer.allocate(capacity:)();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v63 = createStorage<A>(capacity:type:)(0);
      v64 = createStorage<A>(capacity:type:)(1);
      v109 = v62;
      v110 = v63;
      v111 = v64;
      serialize(_:at:)(2, &v109);
      serialize(_:at:)(1, &v109);
      v112 = partial apply for closure #1 in OSLogArguments.append(_:);
      v113 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v109, &v110, &v111);
      if (v84)
      {
      }

      v112 = partial apply for closure #1 in OSLogArguments.append(_:);
      v113 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v109, &v110, &v111);
      v112 = partial apply for closure #1 in OSLogArguments.append(_:);
      v113 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v109, &v110, &v111);
      _os_log_impl(&dword_269912000, log, v78, "updateDosageForDoseEvent: using inputDosage (%s)", v62, 0xCu);
      destroyStorage<A>(_:count:)(v63, 0, v61);
      destroyStorage<A>(_:count:)(v64, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v62, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v53 = *(v89 + 768);
    v54 = *(v89 + 760);
    v57 = *(v89 + 704);
    v58 = *(v89 + 680);
    v51 = *(v89 + 576);
    v52 = *(v89 + 544);
    v55 = *(v89 + 496);
    MEMORY[0x277D82BD8](log);
    v54(v51, v52);
    type metadata accessor for NSNumber();
    v56 = NSNumber.__allocating_init(value:)(value).super.super.isa;
    v59 = [v55 updateForNewDoseQuantity_];
    MEMORY[0x277D82BD8](v56);
    *(v89 + 408) = v59;

    v60 = v59;
  }

  v9 = *(v89 + 664);
  v12 = *(v89 + 656);
  v13 = *(v89 + 632);
  v14 = *(v89 + 624);
  v15 = *(v89 + 616);
  v16 = *(v89 + 608);
  v17 = *(v89 + 600);
  v18 = *(v89 + 592);
  v19 = *(v89 + 584);
  v20 = *(v89 + 576);
  v21 = *(v89 + 568);
  v22 = *(v89 + 560);

  v10 = *(*(v89 + 336) + 8);
  v11 = *(v89 + 336);

  return v10(v60);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(uint64_t a1, uint64_t a2)
{
  v14 = *v2;
  v12 = *v2;
  v4 = *(*v2 + 688);
  v13 = *(*v2 + 680);
  v12[42] = *v2;
  v12[87] = a1;
  v12[88] = a2;

  v12[38] = a1;
  v12[39] = a2;

  v5 = swift_task_alloc();
  v12[89] = v5;
  *v5 = v12[42];
  v5[1] = SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:);
  v6 = v14[84];
  v7 = v14[67];
  v8 = v14[66];

  return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v6, v13, v8, v7, 1.0);
}

{
  v8 = *v2;
  v4 = *(*v2 + 712);
  v7 = *(*v2 + 680);
  v8[42] = *v2;
  v8[90] = a1;
  v8[91] = a2;

  v5 = v8[42];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:)(double a1)
{
  v6 = *v1;
  v2 = *(*v1 + 784);
  v5 = *(*v1 + 680);
  *(v6 + 336) = *v1;
  *(v6 + 792) = a1;

  v3 = *(v6 + 336);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.updateDosageForDoseEvent(doseEvent:inputDosage:inputDosageUnit:), 0);
}

uint64_t SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 400) = a4;
  *(v4 + 392) = a3;
  *(v4 + 521) = a2 & 1;
  *(v4 + 384) = a1;
  *(v4 + 128) = v4;
  *(v4 + 136) = 0;
  *(v4 + 520) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  v5 = type metadata accessor for Logger();
  *(v4 + 408) = v5;
  v8 = *(v5 - 8);
  *(v4 + 416) = v8;
  v9 = *(v8 + 64);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 136) = a1;
  *(v4 + 520) = a2 & 1;
  *(v4 + 112) = a3;
  *(v4 + 120) = a4;
  v6 = *(v4 + 128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

uint64_t SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)()
{
  v1 = *(v0 + 384);
  *(v0 + 128) = v0;
  if (isLogged(doseEvent:)(v1))
  {
    v77 = *(v78 + 521) & 1;
    MEMORY[0x277D82BE0](*(v78 + 384));
    if (v77)
    {
      MEMORY[0x277D82BD8](*(v78 + 384));
    }

    else
    {
      *(v78 + 368) = [*(v78 + 384) status];
      *(v78 + 376) = 5;
      type metadata accessor for HKMedicationDoseEventStatus();
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      v76 = == infix<A>(_:_:)();
      MEMORY[0x277D82BD8](*(v78 + 384));
      if (v76)
      {
        v2 = *(v78 + 448);
        v72 = *(v78 + 408);
        v70 = *(v78 + 416);
        v71 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v70 + 16))(v2, v71, v72);
        swift_endAccess();
        v74 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v75 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v74, v73))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v67 = createStorage<A>(capacity:type:)(0);
          v68 = createStorage<A>(capacity:type:)(0);
          *(v78 + 336) = buf;
          *(v78 + 344) = v67;
          *(v78 + 352) = v68;
          serialize(_:at:)(0, (v78 + 336));
          serialize(_:at:)(0, (v78 + 336));
          *(v78 + 360) = v75;
          v69 = swift_task_alloc();
          v69[2] = v78 + 336;
          v69[3] = v78 + 344;
          v69[4] = v78 + 352;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, v74, v73, "requested & existing status both skipped, returning .statusBothSkipped", buf, 2u);
          destroyStorage<A>(_:count:)(v67, 0, v65);
          destroyStorage<A>(_:count:)(v68, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
        }

        v63 = *(v78 + 448);
        v64 = *(v78 + 408);
        v62 = *(v78 + 416);
        MEMORY[0x277D82BD8](v74);
        (*(v62 + 8))(v63, v64);
        v3 = swift_task_alloc();
        *(v78 + 456) = v3;
        *v3 = *(v78 + 128);
        v3[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
        v4 = *(v78 + 400);
        v5 = *(v78 + 392);
        v6 = *(v78 + 384);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v5, v4);
      }
    }

    v61 = *(v78 + 521) & 1;
    MEMORY[0x277D82BE0](*(v78 + 384));
    if (v61 == 1)
    {
      *(v78 + 304) = [*(v78 + 384) status];
      *(v78 + 312) = 4;
      type metadata accessor for HKMedicationDoseEventStatus();
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      v60 = == infix<A>(_:_:)();
      v59 = *(v78 + 384);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BE0](v59);
      if (v60)
      {
        MEMORY[0x277D82BD8](*(v78 + 384));
LABEL_20:
        v8 = *(v78 + 440);
        v52 = *(v78 + 408);
        v50 = *(v78 + 416);
        v51 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v50 + 16))(v8, v51, v52);
        swift_endAccess();
        oslog = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v55 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v53))
        {
          v46 = static UnsafeMutablePointer.allocate(capacity:)();
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v47 = createStorage<A>(capacity:type:)(0);
          v48 = createStorage<A>(capacity:type:)(0);
          *(v78 + 256) = v46;
          *(v78 + 264) = v47;
          *(v78 + 272) = v48;
          serialize(_:at:)(0, (v78 + 256));
          serialize(_:at:)(0, (v78 + 256));
          *(v78 + 280) = v55;
          v49 = swift_task_alloc();
          v49[2] = v78 + 256;
          v49[3] = v78 + 264;
          v49[4] = v78 + 272;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_269912000, oslog, v53, "needs confirmation whether to log as needed, returning .needsConfirmLogAsNeeded", v46, 2u);
          destroyStorage<A>(_:count:)(v47, 0, v45);
          destroyStorage<A>(_:count:)(v48, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v46, MEMORY[0x277D84B78]);
        }

        v43 = *(v78 + 440);
        v44 = *(v78 + 408);
        v42 = *(v78 + 416);
        MEMORY[0x277D82BD8](oslog);
        (*(v42 + 8))(v43, v44);
        v9 = swift_task_alloc();
        *(v78 + 472) = v9;
        *v9 = *(v78 + 128);
        v9[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
        v4 = *(v78 + 400);
        v5 = *(v78 + 392);
        v6 = *(v78 + 384);

        return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v5, v4);
      }
    }

    else
    {
      v58 = *(v78 + 384);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BE0](v58);
    }

    v57 = *(v78 + 521) & 1;
    MEMORY[0x277D82BE0](*(v78 + 384));
    if (v57 == 1)
    {
      *(v78 + 288) = [*(v78 + 384) status];
      *(v78 + 296) = 5;
      type metadata accessor for HKMedicationDoseEventStatus();
      lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
      v56 = == infix<A>(_:_:)();
    }

    else
    {
      v56 = 0;
    }

    MEMORY[0x277D82BD8](*(v78 + 384));
    MEMORY[0x277D82BD8](*(v78 + 384));
    if (v56)
    {
      goto LABEL_20;
    }

    v10 = *(v78 + 432);
    v38 = *(v78 + 408);
    v36 = *(v78 + 416);
    v37 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v36 + 16))(v10, v37, v38);
    swift_endAccess();
    log = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v41 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v39))
    {
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0);
      v34 = createStorage<A>(capacity:type:)(0);
      *(v78 + 208) = v32;
      *(v78 + 216) = v33;
      *(v78 + 224) = v34;
      serialize(_:at:)(0, (v78 + 208));
      serialize(_:at:)(0, (v78 + 208));
      *(v78 + 232) = v41;
      v35 = swift_task_alloc();
      v35[2] = v78 + 208;
      v35[3] = v78 + 216;
      v35[4] = v78 + 224;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, log, v39, "needs confirmation whether to update status, returning .needsConfirmUpdateToStatus", v32, 2u);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v32, MEMORY[0x277D84B78]);
    }

    v29 = *(v78 + 432);
    v30 = *(v78 + 408);
    v28 = *(v78 + 416);
    MEMORY[0x277D82BD8](log);
    (*(v28 + 8))(v29, v30);
    v11 = swift_task_alloc();
    *(v78 + 488) = v11;
    *v11 = *(v78 + 128);
    v11[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
    v4 = *(v78 + 400);
    v5 = *(v78 + 392);
    v6 = *(v78 + 384);
  }

  else
  {
    v12 = *(v78 + 424);
    v24 = *(v78 + 408);
    v22 = *(v78 + 416);
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v22 + 16))(v12, v23, v24);
    swift_endAccess();
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0);
      v20 = createStorage<A>(capacity:type:)(0);
      *(v78 + 160) = v18;
      *(v78 + 168) = v19;
      *(v78 + 176) = v20;
      serialize(_:at:)(0, (v78 + 160));
      serialize(_:at:)(0, (v78 + 160));
      *(v78 + 184) = v27;
      v21 = swift_task_alloc();
      v21[2] = v78 + 160;
      v21[3] = v78 + 168;
      v21[4] = v78 + 176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v26, v25, "one doseEvent found, but needs confirmation whether to log as scheduled, returning .needsConfirmLogAsScheduled", v18, 2u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v18, MEMORY[0x277D84B78]);
    }

    v15 = *(v78 + 424);
    v16 = *(v78 + 408);
    v14 = *(v78 + 416);
    MEMORY[0x277D82BD8](v26);
    (*(v14 + 8))(v15, v16);
    v13 = swift_task_alloc();
    *(v78 + 504) = v13;
    *v13 = *(v78 + 128);
    v13[1] = SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:);
    v4 = *(v78 + 400);
    v5 = *(v78 + 392);
    v6 = *(v78 + 384);
  }

  return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v6, 1, v5, v4);
}

{
  v8 = v0[58];
  v0[16] = v0;
  v0[40] = v8;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v12 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(108, 0);
  MEMORY[0x277D82BE0](v12);
  v0[41] = v12;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  MEMORY[0x277D82BE0](v8);
  *v6 = v8;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[41]);
  MEMORY[0x277D82BD8](v8);
  v2 = v0[56];
  v9 = v0[55];
  v10 = v0[54];
  v11 = v0[53];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3(v12);
}

{
  v8 = v0[60];
  v0[16] = v0;
  v0[30] = v8;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v12 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(107, 0);
  MEMORY[0x277D82BE0](v12);
  v0[31] = v12;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  MEMORY[0x277D82BE0](v8);
  *v6 = v8;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[31]);
  MEMORY[0x277D82BD8](v8);
  v2 = v0[56];
  v9 = v0[55];
  v10 = v0[54];
  v11 = v0[53];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3(v12);
}

{
  v8 = v0[62];
  v0[16] = v0;
  v0[24] = v8;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v12 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(109, 0);
  MEMORY[0x277D82BE0](v12);
  v0[25] = v12;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  MEMORY[0x277D82BE0](v8);
  *v6 = v8;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[25]);
  MEMORY[0x277D82BD8](v8);
  v2 = v0[56];
  v9 = v0[55];
  v10 = v0[54];
  v11 = v0[53];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3(v12);
}

{
  v8 = v0[64];
  v0[16] = v0;
  v0[18] = v8;
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v12 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(106, 0);
  MEMORY[0x277D82BE0](v12);
  v0[19] = v12;
  type metadata accessor for MatchedMedName();
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  MEMORY[0x277D82BE0](v8);
  *v6 = v8;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v0[19]);
  MEMORY[0x277D82BD8](v8);
  v2 = v0[56];
  v9 = v0[55];
  v10 = v0[54];
  v11 = v0[53];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3(v12);
}

uint64_t SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 456);
  *(v6 + 128) = *v1;
  *(v6 + 464) = a1;

  v4 = *(v6 + 128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 472);
  *(v6 + 128) = *v1;
  *(v6 + 480) = a1;

  v4 = *(v6 + 128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 488);
  *(v6 + 128) = *v1;
  *(v6 + 496) = a1;

  v4 = *(v6 + 128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 504);
  *(v6 + 128) = *v1;
  *(v6 + 512) = a1;

  v4 = *(v6 + 128);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 224) = a4;
  *(v4 + 216) = a3;
  *(v4 + 449) = a2 & 1;
  *(v4 + 208) = a1;
  *(v4 + 136) = v4;
  *(v4 + 144) = 0;
  *(v4 + 448) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 152) = 0;
  *(v4 + 192) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 200) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  v5 = type metadata accessor for Logger();
  *(v4 + 232) = v5;
  v14 = *(v5 - 8);
  *(v4 + 240) = v14;
  v6 = *(v14 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 256) = v7;
  v15 = *(v7 - 8);
  *(v4 + 264) = v15;
  v8 = *(v15 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v4 + 288) = v10;
  v16 = *(v10 - 8);
  *(v4 + 296) = v16;
  v11 = *(v16 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 144) = a1;
  *(v4 + 448) = a2 & 1;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  v12 = *(v4 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)()
{
  v1 = v0[26];
  v23 = v1;
  v0[17] = v0;
  v19 = [v1 medicationIdentifier];
  v22 = [v19 underlyingIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v2;
  v0[41] = v20;
  v0[42] = v2;
  v0[7] = v20;
  v0[8] = v2;
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v22);
  type metadata accessor for MatchedMedName();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Match", 5uLL, 1);
  INObject.__allocating_init(identifier:display:)(v4, 0, v3);
  v24 = v5;
  v0[43] = v5;
  v0[19] = v5;
  v25 = [v23 scheduleItemIdentifier];
  if (v25)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v6;
    MEMORY[0x277D82BD8](v25);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    v13 = MEMORY[0x26D6492A0](v16);

    [v24 setScheduleID_];
  }

  else
  {
    [v24 setScheduleID_];
  }

  MEMORY[0x277D82BD8](v11);

  v12 = MEMORY[0x26D6492A0](v20, v21);

  [v24 setMedicationID_];
  MEMORY[0x277D82BD8](v12);

  v7 = swift_task_alloc();
  v18[44] = v7;
  *v7 = v18[17];
  v7[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v8 = v18[28];
  v9 = v18[27];

  return SpecificMedicationsPersistor.displayNameFor(identifier:)(v20, v21, v9, v8);
}

{
  v143 = v0;
  v1 = v0[46];
  v2 = v0[45];
  v0[17] = v0;
  v0[11] = v2;
  v0[12] = v1;
  if (v0[12])
  {
    v3 = *(v137 + 96);
    *(v137 + 72) = *(v137 + 88);
    *(v137 + 80) = v3;
  }

  else
  {
    *(v137 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown Name", 0xCuLL, 1);
    if (*(v137 + 96))
    {
      outlined destroy of String.UTF8View(v137 + 88);
    }
  }

  v133 = *(v137 + 344);
  v135 = *(v137 + 208);
  v132 = *(v137 + 80);
  v134 = MEMORY[0x26D6492A0](*(v137 + 72));

  [v133 setName_];
  MEMORY[0x277D82BD8](v134);
  v136 = [v135 scheduledDate];
  if (v136)
  {
    v131 = *(v137 + 320);
    v129 = *(v137 + 304);
    v130 = *(v137 + 288);
    v128 = *(v137 + 296);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v128 + 32))(v131, v129, v130);
    (*(v128 + 56))(v131, 0, 1, v130);
    MEMORY[0x277D82BD8](v136);
  }

  else
  {
    (*(*(v137 + 296) + 56))(*(v137 + 320), 1, 1, *(v137 + 288));
  }

  v125 = *(v137 + 320);
  v126 = getFormattedTimeString(time:)(v125);
  v127 = v4;
  outlined destroy of Date?(v125);
  if (v127)
  {
    v123 = MEMORY[0x26D6492A0](v126);

    v124 = v123;
  }

  else
  {
    v124 = 0;
  }

  v119 = *(v137 + 312);
  v117 = *(v137 + 304);
  v118 = *(v137 + 288);
  v115 = *(v137 + 208);
  v116 = *(v137 + 296);
  [*(v137 + 344) setSchedule_];
  MEMORY[0x277D82BD8](v124);
  v121 = [v115 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v116 + 32))(v119, v117, v118);
  (*(v116 + 56))(v119, 0, 1, v118);
  v120 = getFormattedTimeString(time:)(v119);
  v122 = v5;
  outlined destroy of Date?(v119);
  MEMORY[0x277D82BD8](v121);
  if (v122)
  {
    v113 = MEMORY[0x26D6492A0](v120);

    v114 = v113;
  }

  else
  {
    v114 = 0;
  }

  v111 = *(v137 + 208);
  [*(v137 + 344) setLoggedTime_];
  MEMORY[0x277D82BD8](v114);
  v112 = [v111 persistedUUID];
  if (v112)
  {
    v110 = *(v137 + 280);
    v108 = *(v137 + 272);
    v109 = *(v137 + 256);
    v107 = *(v137 + 264);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v107 + 32))(v110, v108, v109);
    (*(v107 + 56))(v110, 0, 1, v109);
    MEMORY[0x277D82BD8](v112);
  }

  else
  {
    (*(*(v137 + 264) + 56))(*(v137 + 280), 1, 1, *(v137 + 256));
  }

  if ((*(*(v137 + 264) + 48))(*(v137 + 280), 1, *(v137 + 256)) == 1)
  {
    v106 = 0;
  }

  else
  {
    v104 = *(v137 + 280);
    v103 = *(v137 + 256);
    v102 = *(v137 + 264);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v102 + 8))(v104, v103);
    v106 = isa;
  }

  v101 = *(v137 + 208);
  [*(v137 + 344) setPersistedUUID_];
  MEMORY[0x277D82BD8](v106);
  *(v137 + 160) = [v101 status];
  *(v137 + 168) = 4;
  type metadata accessor for HKMedicationDoseEventStatus();
  lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
  if (== infix<A>(_:_:)())
  {
    v99 = *(v137 + 344);
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("taken", 5uLL, 1)._countAndFlagsBits;
    v100 = MEMORY[0x26D6492A0](countAndFlagsBits);

    [v99 setCompletionStatus_];
    MEMORY[0x277D82BD8](v100);
  }

  else
  {
    *(v137 + 176) = [*(v137 + 208) status];
    *(v137 + 184) = 5;
    if (== infix<A>(_:_:)())
    {
      v97 = *(v137 + 344);
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("skipped", 7uLL, 1)._countAndFlagsBits;
      v98 = MEMORY[0x26D6492A0](v7);

      [v97 setCompletionStatus_];
      MEMORY[0x277D82BD8](v98);
    }

    else
    {
      [*(v137 + 344) setCompletionStatus_];
    }
  }

  if (*(v137 + 449))
  {
    v8 = swift_task_alloc();
    *(v137 + 376) = v8;
    *v8 = *(v137 + 136);
    v8[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    v9 = *(v137 + 336);
    v10 = *(v137 + 328);
    v11 = *(v137 + 224);
    v12 = *(v137 + 216);

    return SpecificMedicationsPersistor.getAsNeededStrengthFromHealthApp(for:)(v10, v9, v12, v11);
  }

  else
  {
    v38 = *(v137 + 344);
    v36 = *(v137 + 336);
    v35 = *(v137 + 328);
    v14 = *(v137 + 248);
    v34 = *(v137 + 232);
    v37 = *(v137 + 208);
    v32 = *(v137 + 240);
    v33 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v32 + 16))(v14, v33, v34);
    swift_endAccess();
    MEMORY[0x277D82BE0](v38);
    v39 = swift_allocObject();
    *(v39 + 16) = v38;

    v41 = swift_allocObject();
    *(v41 + 16) = v35;
    *(v41 + 24) = v36;
    MEMORY[0x277D82BE0](v38);
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    MEMORY[0x277D82BE0](v38);
    v45 = swift_allocObject();
    *(v45 + 16) = v38;
    MEMORY[0x277D82BE0](v38);
    v47 = swift_allocObject();
    *(v47 + 16) = v38;
    MEMORY[0x277D82BE0](v37);
    v49 = swift_allocObject();
    *(v49 + 16) = v37;
    MEMORY[0x277D82BE0](v38);
    v51 = swift_allocObject();
    *(v51 + 16) = v38;
    MEMORY[0x277D82BE0](v38);
    v53 = swift_allocObject();
    *(v53 + 16) = v38;
    MEMORY[0x277D82BE0](v38);
    v55 = swift_allocObject();
    *(v55 + 16) = v38;
    MEMORY[0x277D82BE0](v38);
    v57 = swift_allocObject();
    *(v57 + 16) = v38;
    MEMORY[0x277D82BE0](v38);
    v59 = swift_allocObject();
    *(v59 + 16) = v38;
    oslog = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v40 + 24) = v39;
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v63 + 24) = v40;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
    *(v42 + 24) = v41;
    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v66 + 24) = v42;
    v67 = swift_allocObject();
    *(v67 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v44 + 24) = v43;
    v69 = swift_allocObject();
    *(v69 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v69 + 24) = v44;
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v46 + 24) = v45;
    v72 = swift_allocObject();
    *(v72 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v72 + 24) = v46;
    v73 = swift_allocObject();
    *(v73 + 16) = 32;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v48 + 24) = v47;
    v75 = swift_allocObject();
    *(v75 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v75 + 24) = v48;
    v76 = swift_allocObject();
    *(v76 + 16) = 32;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v50 + 24) = v49;
    v78 = swift_allocObject();
    *(v78 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v78 + 24) = v50;
    v79 = swift_allocObject();
    *(v79 + 16) = 32;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v52 + 24) = v51;
    v81 = swift_allocObject();
    *(v81 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v81 + 24) = v52;
    v82 = swift_allocObject();
    *(v82 + 16) = 32;
    v83 = swift_allocObject();
    *(v83 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v54 + 24) = v53;
    v84 = swift_allocObject();
    *(v84 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v84 + 24) = v54;
    v85 = swift_allocObject();
    *(v85 + 16) = 32;
    v86 = swift_allocObject();
    *(v86 + 16) = 8;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #10 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v56 + 24) = v55;
    v87 = swift_allocObject();
    *(v87 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v87 + 24) = v56;
    v88 = swift_allocObject();
    *(v88 + 16) = 32;
    v89 = swift_allocObject();
    *(v89 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for implicit closure #11 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v58 + 24) = v57;
    v90 = swift_allocObject();
    *(v90 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v90 + 24) = v58;
    v91 = swift_allocObject();
    *(v91 + 16) = 32;
    v92 = swift_allocObject();
    *(v92 + 16) = 8;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    *(v60 + 24) = v59;
    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v93 + 24) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v94 = v15;

    *v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[1] = v61;

    v94[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[3] = v62;

    v94[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[5] = v63;

    v94[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[7] = v64;

    v94[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[9] = v65;

    v94[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[11] = v66;

    v94[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[13] = v67;

    v94[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[15] = v68;

    v94[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[17] = v69;

    v94[18] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[19] = v70;

    v94[20] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[21] = v71;

    v94[22] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[23] = v72;

    v94[24] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[25] = v73;

    v94[26] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[27] = v74;

    v94[28] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[29] = v75;

    v94[30] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[31] = v76;

    v94[32] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[33] = v77;

    v94[34] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[35] = v78;

    v94[36] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[37] = v79;

    v94[38] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[39] = v80;

    v94[40] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[41] = v81;

    v94[42] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[43] = v82;

    v94[44] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[45] = v83;

    v94[46] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[47] = v84;

    v94[48] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[49] = v85;

    v94[50] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[51] = v86;

    v94[52] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[53] = v87;

    v94[54] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[55] = v88;

    v94[56] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[57] = v89;

    v94[58] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[59] = v90;

    v94[60] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[61] = v91;

    v94[62] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[63] = v92;

    v94[64] = partial apply for closure #1 in OSLogArguments.append(_:);
    v94[65] = v93;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v96))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0);
      v31 = createStorage<A>(capacity:type:)(11);
      v138 = buf;
      v139 = v30;
      v140 = v31;
      serialize(_:at:)(2, &v138);
      serialize(_:at:)(11, &v138);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v77;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v86;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v87;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v89;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v90;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v91;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      v141 = partial apply for closure #1 in OSLogArguments.append(_:);
      v142 = v93;
      closure #1 in osLogInternal(_:log:type:)(&v141, &v138, &v139, &v140);
      _os_log_impl(&dword_269912000, oslog, v96, "    Built MatchedMedName:\n        scheduleID (%s),\n        medID (%s),\n        name (%s),\n        schedule (%s),\n        loggedTime (%s),\n        status (%s),\n        dosage (%s),\n        dosageUnit (%s),\n        strength (%s),\n        strengthUnit (%s),\n        completionStatus (%s)", buf, 0x70u);
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v31, 11, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v21 = *(v137 + 336);
    v22 = *(v137 + 320);
    v23 = *(v137 + 312);
    v24 = *(v137 + 304);
    v25 = *(v137 + 280);
    v26 = *(v137 + 272);
    v27 = *(v137 + 248);
    v20 = *(v137 + 232);
    v19 = *(v137 + 240);
    MEMORY[0x277D82BD8](oslog);
    (*(v19 + 8))(v27, v20);

    v16 = *(*(v137 + 136) + 8);
    v17 = *(v137 + 136);
    v18 = *(v137 + 344);

    return v16(v18);
  }
}

{
  v1 = *(v0 + 400);
  *(v0 + 136) = v0;
  if (v1)
  {
    v11 = v14[48];
    v12 = *(v14 + 49);
    v13 = *(v14 + 50);
  }

  else
  {
    v11 = 0.0;
    v12 = 0;
    v13 = 0;
  }

  if (v13)
  {
    v9 = *(v14 + 43);
    v14[25] = v11;
    *(v14 + 15) = v12;
    *(v14 + 16) = v13;
    type metadata accessor for NSNumber();
    isa = NSNumber.__allocating_init(value:)(v11).super.super.isa;
    [v9 setStrength_];
    MEMORY[0x277D82BD8](isa);

    v10 = MEMORY[0x26D6492A0](v12, v13);

    [v9 setStrengthUnit_];
    MEMORY[0x277D82BD8](v10);
  }

  v7 = *(v14 + 42);

  v2 = swift_task_alloc();
  *(v14 + 51) = v2;
  *v2 = *(v14 + 17);
  v2[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v3 = *(v14 + 41);
  v4 = *(v14 + 28);
  v5 = *(v14 + 27);

  return SpecificMedicationsPersistor.getAsNeededDosageFromHealthApp(for:)(v3, v7, v5, v4);
}

{
  value = v0[52];
  v8 = *(v0 + 43);
  v11 = *(v0 + 42);
  *(v0 + 17) = v0;
  v0[24] = value;
  type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(value).super.super.isa;
  [v8 setDosage_];
  MEMORY[0x277D82BD8](isa);

  v1 = swift_task_alloc();
  *(v10 + 53) = v1;
  *v1 = *(v10 + 17);
  v1[1] = SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  v2 = v10[52];
  v3 = *(v10 + 41);
  v4 = *(v10 + 28);
  v5 = *(v10 + 27);

  return SpecificMedicationsPersistor.getAsNeededDosageUnit(for:dosageCount:)(v3, v11, v5, v4, v2);
}

{
  v96 = v0;
  v1 = *(v0 + 440);
  *(v0 + 136) = v0;
  if (v1)
  {
    v89 = v90[55];
    v86 = v90[54];
    v87 = v90[43];
    v90[13] = v86;
    v90[14] = v89;

    v88 = MEMORY[0x26D6492A0](v86, v89);

    [v87 setDosageUnit_];
    MEMORY[0x277D82BD8](v88);
  }

  v27 = v90[43];
  v25 = v90[42];
  v24 = v90[41];
  v2 = v90[31];
  v23 = v90[29];
  v26 = v90[26];
  v21 = v90[30];
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v21 + 16))(v2, v22, v23);
  swift_endAccess();
  MEMORY[0x277D82BE0](v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;

  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  *(v30 + 24) = v25;
  MEMORY[0x277D82BE0](v27);
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  MEMORY[0x277D82BE0](v27);
  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  MEMORY[0x277D82BE0](v27);
  v36 = swift_allocObject();
  *(v36 + 16) = v27;
  MEMORY[0x277D82BE0](v26);
  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  MEMORY[0x277D82BE0](v27);
  v40 = swift_allocObject();
  *(v40 + 16) = v27;
  MEMORY[0x277D82BE0](v27);
  v42 = swift_allocObject();
  *(v42 + 16) = v27;
  MEMORY[0x277D82BE0](v27);
  v44 = swift_allocObject();
  *(v44 + 16) = v27;
  MEMORY[0x277D82BE0](v27);
  v46 = swift_allocObject();
  *(v46 + 16) = v27;
  MEMORY[0x277D82BE0](v27);
  v48 = swift_allocObject();
  *(v48 + 16) = v27;
  oslog = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v29 + 24) = v28;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v52 + 24) = v29;
  v53 = swift_allocObject();
  *(v53 + 16) = 32;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #4 in LogQuantityIntentHandler.handle(intent:);
  *(v31 + 24) = v30;
  v55 = swift_allocObject();
  *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v55 + 24) = v31;
  v56 = swift_allocObject();
  *(v56 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #4 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v33 + 24) = v32;
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v58 + 24) = v33;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #5 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v35 + 24) = v34;
  v61 = swift_allocObject();
  *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v61 + 24) = v35;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for implicit closure #6 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v37 + 24) = v36;
  v64 = swift_allocObject();
  *(v64 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v64 + 24) = v37;
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v39 + 24) = v38;
  v67 = swift_allocObject();
  *(v67 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v67 + 24) = v39;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #6 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v41 + 24) = v40;
  v70 = swift_allocObject();
  *(v70 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v70 + 24) = v41;
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for implicit closure #7 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v43 + 24) = v42;
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v73 + 24) = v43;
  v74 = swift_allocObject();
  *(v74 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #10 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v45 + 24) = v44;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v76 + 24) = v45;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #11 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v47 + 24) = v46;
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v79 + 24) = v47;
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #12 in SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
  *(v49 + 24) = v48;
  v82 = swift_allocObject();
  *(v82 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v82 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v83 = v3;

  *v83 = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[1] = v50;

  v83[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[3] = v51;

  v83[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[5] = v52;

  v83[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[7] = v53;

  v83[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[9] = v54;

  v83[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[11] = v55;

  v83[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[13] = v56;

  v83[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[15] = v57;

  v83[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[17] = v58;

  v83[18] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[19] = v59;

  v83[20] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[21] = v60;

  v83[22] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[23] = v61;

  v83[24] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[25] = v62;

  v83[26] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[27] = v63;

  v83[28] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[29] = v64;

  v83[30] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[31] = v65;

  v83[32] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[33] = v66;

  v83[34] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[35] = v67;

  v83[36] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[37] = v68;

  v83[38] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[39] = v69;

  v83[40] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[41] = v70;

  v83[42] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[43] = v71;

  v83[44] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[45] = v72;

  v83[46] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[47] = v73;

  v83[48] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[49] = v74;

  v83[50] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[51] = v75;

  v83[52] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[53] = v76;

  v83[54] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[55] = v77;

  v83[56] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[57] = v78;

  v83[58] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[59] = v79;

  v83[60] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[61] = v80;

  v83[62] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[63] = v81;

  v83[64] = partial apply for closure #1 in OSLogArguments.append(_:);
  v83[65] = v82;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v85))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0);
    v20 = createStorage<A>(capacity:type:)(11);
    v91 = buf;
    v92 = v19;
    v93 = v20;
    serialize(_:at:)(2, &v91);
    serialize(_:at:)(11, &v91);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v54;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v55;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v57;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v70;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v71;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v78;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v80;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    v94 = partial apply for closure #1 in OSLogArguments.append(_:);
    v95 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
    _os_log_impl(&dword_269912000, oslog, v85, "    Built MatchedMedName:\n        scheduleID (%s),\n        medID (%s),\n        name (%s),\n        schedule (%s),\n        loggedTime (%s),\n        status (%s),\n        dosage (%s),\n        dosageUnit (%s),\n        strength (%s),\n        strengthUnit (%s),\n        completionStatus (%s)", buf, 0x70u);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 11, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v90[42];
  v11 = v90[40];
  v12 = v90[39];
  v13 = v90[38];
  v14 = v90[35];
  v15 = v90[34];
  v16 = v90[31];
  v9 = v90[29];
  v8 = v90[30];
  MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v16, v9);

  v4 = *(v90[17] + 8);
  v5 = v90[17];
  v6 = v90[43];

  return v4(v6);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = *(*v2 + 352);
  v7 = *(*v2 + 336);
  v8[17] = *v2;
  v8[45] = a1;
  v8[46] = a2;

  v5 = v8[17];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

{
  v8 = *v2;
  v4 = *(*v2 + 424);
  v7 = *(*v2 + 336);
  v8[17] = *v2;
  v8[54] = a1;
  v8[55] = a2;

  v5 = v8[17];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v5 = *(*v3 + 376);
  v8[17] = *v3;
  v8[48] = a1;
  v8[49] = a2;
  v8[50] = a3;

  v6 = v8[17];

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(double a1)
{
  v6 = *v1;
  v2 = *(*v1 + 408);
  v5 = *(*v1 + 336);
  *(v6 + 136) = *v1;
  *(v6 + 416) = a1;

  v3 = *(v6 + 136);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t specialized implicit closure #12 in SpecificMedicationsPersistor.saveWithID(scheduleID:medicationIDs:medStatus:dosage:dosageUnit:confirmedAsNeeded:confirmedAsScheduled:)(uint64_t a1)
{

  v1 = type metadata accessor for HKMedicationExposableDoseEvent();
  v4 = MEMORY[0x26D6494A0](a1, v1);

  return v4;
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 496) = a5;
  *(v5 + 488) = a4;
  *(v5 + 753) = a3 & 1;
  *(v5 + 480) = a2;
  *(v5 + 472) = a1;
  *(v5 + 216) = v5;
  *(v5 + 224) = 0;
  *(v5 + 232) = 0;
  *(v5 + 752) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 240) = 0;
  *(v5 + 248) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 280) = 0;
  *(v5 + 344) = 0;
  *(v5 + 352) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  *(v5 + 376) = 0;
  *(v5 + 384) = 0;
  *(v5 + 392) = 0;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 440) = 0;
  *(v5 + 448) = 0;
  v6 = type metadata accessor for DateInterval();
  *(v5 + 504) = v6;
  v10 = *(v6 - 8);
  *(v5 + 512) = v10;
  *(v5 + 520) = *(v10 + 64);
  *(v5 + 528) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 536) = v7;
  v11 = *(v7 - 8);
  *(v5 + 544) = v11;
  v12 = *(v11 + 64);
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  *(v5 + 568) = swift_task_alloc();
  *(v5 + 576) = swift_task_alloc();
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 224) = a1;
  *(v5 + 232) = a2;
  *(v5 + 752) = a3 & 1;
  *(v5 + 136) = a4;
  *(v5 + 144) = a5;
  v8 = *(v5 + 216);

  return MEMORY[0x2822009F8](SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0);
}

uint64_t SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:)()
{
  v166 = v0;
  v1 = v0[73];
  v131 = v0[68];
  v133 = v0[67];
  v140 = v0[66];
  v137 = v0[65];
  v138 = v0[64];
  v141 = v0[63];
  v136 = v0[60];
  v134 = v0[59];
  v0[27] = v0;
  v132 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v131 + 16);
  v0[74] = v2;
  v0[75] = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v132, v133);
  swift_endAccess();

  v135 = swift_allocObject();
  *(v135 + 16) = v134;

  v143 = swift_allocObject();
  *(v143 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v143 + 24) = v135;

  (*(v138 + 16))(v140, v136, v141);
  v139 = (*(v138 + 80) + 16) & ~*(v138 + 80);
  v142 = swift_allocObject();
  (*(v138 + 32))(v142 + v139, v140, v141);

  v145 = swift_allocObject();
  *(v145 + 16) = partial apply for implicit closure #2 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  *(v145 + 24) = v142;

  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  v147 = swift_allocObject();
  *(v147 + 16) = 32;
  v148 = swift_allocObject();
  *(v148 + 16) = 8;
  v144 = swift_allocObject();
  *(v144 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v144 + 24) = v143;
  v149 = swift_allocObject();
  *(v149 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v149 + 24) = v144;
  v150 = swift_allocObject();
  *(v150 + 16) = 32;
  v151 = swift_allocObject();
  *(v151 + 16) = 8;
  v146 = swift_allocObject();
  *(v146 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v146 + 24) = v145;
  v152 = swift_allocObject();
  *(v152 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v152 + 24) = v146;
  v0[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v153 = v3;

  *v153 = partial apply for closure #1 in OSLogArguments.append(_:);
  v153[1] = v147;

  v153[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v153[3] = v148;

  v153[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v153[5] = v149;

  v153[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v153[7] = v150;

  v153[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v153[9] = v151;

  v153[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v153[11] = v152;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v154, v155))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v128 = createStorage<A>(capacity:type:)(0);
    v129 = createStorage<A>(capacity:type:)(2);
    v161 = buf;
    v162 = v128;
    v163 = v129;
    serialize(_:at:)(2, &v161);
    serialize(_:at:)(2, &v161);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v147;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v148;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v149;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v150;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v151;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    v164 = partial apply for closure #1 in OSLogArguments.append(_:);
    v165 = v152;
    closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
    _os_log_impl(&dword_269912000, v154, v155, "Name: %s and Time: %s specified.", buf, 0x16u);
    destroyStorage<A>(_:count:)(v128, 0, v126);
    destroyStorage<A>(_:count:)(v129, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v120 = *(v130 + 584);
  v121 = *(v130 + 536);
  v122 = *(v130 + 472);
  v119 = *(v130 + 544);
  MEMORY[0x277D82BD8](v154);
  v4 = *(v119 + 8);
  *(v130 + 616) = v4;
  *(v130 + 624) = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v120, v121);
  *(v130 + 632) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v130 + 240) = _allocateUninitializedArray<A>(_:)();
  v5 = swift_allocObject();
  *(v130 + 640) = v5;
  *(v130 + 248) = v5 + 16;
  *(v5 + 16) = 0;

  *(v130 + 256) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v123 = *(v130 + 168);
  v124 = *(v130 + 176);
  *(v130 + 648) = v124;
  if (v124)
  {
    *(v130 + 200) = v123;
    *(v130 + 208) = v124;
    type metadata accessor for HKMedicationIdentifier();

    v118 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v130 + 656) = v118;
    v6 = swift_task_alloc();
    *(v130 + 664) = v6;
    *v6 = *(v130 + 216);
    v6[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v7 = *(v130 + 496);
    v8 = *(v130 + 488);
    v9 = *(v130 + 480);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v9, v118, v8, v7);
  }

  outlined destroy of [HKQuantityType]((v130 + 152));
  v112 = *(v130 + 240);

  v113 = filterUniqueDoseEvents(doseEvents:)(v112);

  v11 = *(v130 + 240);
  *(v130 + 240) = v113;

  *(v130 + 264) = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v116 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v117 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v114, v115, MEMORY[0x277D84A98], v116, MEMORY[0x277D84AC0], v125);
  outlined destroy of [HKQuantityType]((v130 + 264));
  *(v130 + 272) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  lazy protocol witness table accessor for type [String?] and conformance [A]();
  v110 = Set.init<A>(_:)();
  *(v130 + 688) = v110;
  *(v130 + 280) = v110;
  *(v130 + 288) = v113;
  v111 = Collection.isEmpty.getter();

  if (v111)
  {
    v106 = *(v130 + 608);
    v104 = *(v130 + 600);
    v105 = *(v130 + 592);
    v12 = *(v130 + 576);
    v103 = *(v130 + 536);
    v102 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v105(v12, v102, v103);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    v109 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v107))
    {
      v98 = static UnsafeMutablePointer.allocate(capacity:)();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v99 = createStorage<A>(capacity:type:)(0);
      v100 = createStorage<A>(capacity:type:)(0);
      *(v130 + 408) = v98;
      *(v130 + 416) = v99;
      *(v130 + 424) = v100;
      serialize(_:at:)(0, (v130 + 408));
      serialize(_:at:)(0, (v130 + 408));
      *(v130 + 432) = v109;
      v101 = swift_task_alloc();
      v101[2] = v130 + 408;
      v101[3] = v130 + 416;
      v101[4] = v130 + 424;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v107, "Name and time specified, but no potential time match found. Returning .noMatchFound.", v98, 2u);
      destroyStorage<A>(_:count:)(v99, 0, v97);
      destroyStorage<A>(_:count:)(v100, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v98, MEMORY[0x277D84B78]);
    }

    v94 = *(v130 + 640);
    v92 = *(v130 + 624);
    v93 = *(v130 + 616);
    v90 = *(v130 + 576);
    v91 = *(v130 + 536);
    MEMORY[0x277D82BD8](oslog);
    v93(v90, v91);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v95 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

    outlined destroy of [HKQuantityType]((v130 + 240));
    v96 = v95;
    goto LABEL_31;
  }

  if (Set.count.getter() <= 1 && *(*(v130 + 640) + 16) <= 1)
  {
    v52 = *(v130 + 632);
    v53 = *(v130 + 240);

    v54 = MEMORY[0x26D6494A0](v53, v52);

    if (v54 == 1)
    {
      v50 = *(v130 + 240);

      *(v130 + 328) = v50;
      Collection.first.getter();
      v51 = *(v130 + 336);
      *(v130 + 728) = v51;
      if (v51)
      {
        *(v130 + 344) = v51;

        v18 = swift_task_alloc();
        *(v130 + 736) = v18;
        *v18 = *(v130 + 216);
        v18[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
        v19 = *(v130 + 496);
        v20 = *(v130 + 488);
        v21 = *(v130 + 753) & 1;

        return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v51, v21, v20, v19);
      }
    }

    v46 = *(v130 + 608);
    v44 = *(v130 + 600);
    v45 = *(v130 + 592);
    v22 = *(v130 + 560);
    v43 = *(v130 + 536);
    v42 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v45(v22, v42, v43);
    swift_endAccess();
    v48 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v49 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v48, v47))
    {
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = createStorage<A>(capacity:type:)(0);
      v40 = createStorage<A>(capacity:type:)(0);
      *(v130 + 296) = v38;
      *(v130 + 304) = v39;
      *(v130 + 312) = v40;
      serialize(_:at:)(0, (v130 + 296));
      serialize(_:at:)(0, (v130 + 296));
      *(v130 + 320) = v49;
      v41 = swift_task_alloc();
      v41[2] = v130 + 296;
      v41[3] = v130 + 304;
      v41[4] = v130 + 312;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v48, v47, "More than 1 doseEvent found in saveScheduledMedication's fallback condition, returning failure status", v38, 2u);
      destroyStorage<A>(_:count:)(v39, 0, v37);
      destroyStorage<A>(_:count:)(v40, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v38, MEMORY[0x277D84B78]);
    }

    v35 = *(v130 + 640);
    v33 = *(v130 + 624);
    v34 = *(v130 + 616);
    v31 = *(v130 + 560);
    v32 = *(v130 + 536);
    MEMORY[0x277D82BD8](v48);
    v34(v31, v32);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v36 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    outlined destroy of [HKQuantityType]((v130 + 240));
    v96 = v36;
    goto LABEL_31;
  }

  v78 = *(v130 + 640);
  v87 = *(v130 + 608);
  v73 = *(v130 + 600);
  v74 = *(v130 + 592);
  v13 = *(v130 + 568);
  v72 = *(v130 + 536);
  v71 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v74(v13, v71, v72);
  swift_endAccess();

  v75 = swift_allocObject();
  *(v75 + 16) = v110;

  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v76 + 24) = v75;

  log = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v77 = swift_allocObject();
  *(v77 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v77 + 24) = v76;
  v82 = swift_allocObject();
  *(v82 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v82 + 24) = v77;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
  *(v79 + 24) = v78;
  v85 = swift_allocObject();
  *(v85 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v85 + 24) = v79;
  _allocateUninitializedArray<A>(_:)();
  v86 = v14;

  *v86 = partial apply for closure #1 in OSLogArguments.append(_:);
  v86[1] = v80;

  v86[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v86[3] = v81;

  v86[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v86[5] = v82;

  v86[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v86[7] = v83;

  v86[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v86[9] = v84;

  v86[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v86[11] = v85;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v89))
  {
    v68 = static UnsafeMutablePointer.allocate(capacity:)();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v69 = createStorage<A>(capacity:type:)(0);
    v70 = createStorage<A>(capacity:type:)(1);
    v156 = v68;
    v157 = v69;
    v158 = v70;
    serialize(_:at:)(2, &v156);
    serialize(_:at:)(2, &v156);
    v159 = partial apply for closure #1 in OSLogArguments.append(_:);
    v160 = v80;
    closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
    v159 = partial apply for closure #1 in OSLogArguments.append(_:);
    v160 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
    v159 = partial apply for closure #1 in OSLogArguments.append(_:);
    v160 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
    v159 = partial apply for closure #1 in OSLogArguments.append(_:);
    v160 = v83;
    closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
    v159 = partial apply for closure #1 in OSLogArguments.append(_:);
    v160 = v84;
    closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
    v159 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v160 = v85;
    closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
    _os_log_impl(&dword_269912000, log, v89, "Multiple times (%s) or strengths (%ld) found for specified name today, returning .needsNameDisambiguation", v68, 0x16u);
    destroyStorage<A>(_:count:)(v69, 0, v67);
    destroyStorage<A>(_:count:)(v70, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v68, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v63 = *(v130 + 624);
  v64 = *(v130 + 616);
  v61 = *(v130 + 568);
  v62 = *(v130 + 536);
  MEMORY[0x277D82BD8](log);
  v64(v61, v62);
  *(v130 + 696) = type metadata accessor for MatchedMedName();
  *(v130 + 352) = _allocateUninitializedArray<A>(_:)();
  v65 = *(v130 + 240);

  *(v130 + 360) = v65;
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v66 = *(v130 + 368);
  *(v130 + 704) = v66;
  if (!v66)
  {
    v55 = *(v130 + 696);
    v58 = *(v130 + 688);
    v59 = *(v130 + 640);
    outlined destroy of [HKQuantityType]((v130 + 184));
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v60 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    MEMORY[0x277D82BE0](v60);
    *(v130 + 376) = v60;
    v56 = *(v130 + 352);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v60 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](*(v130 + 376));
    outlined destroy of [HKQuantityType]((v130 + 352));

    outlined destroy of [HKQuantityType]((v130 + 240));
    v96 = v60;
LABEL_31:
    v23 = *(v130 + 584);
    v26 = *(v130 + 576);
    v27 = *(v130 + 568);
    v28 = *(v130 + 560);
    v29 = *(v130 + 552);
    v30 = *(v130 + 528);

    v24 = *(*(v130 + 216) + 8);
    v25 = *(v130 + 216);

    return v24(v96);
  }

  *(v130 + 384) = v66;
  v15 = swift_task_alloc();
  *(v130 + 712) = v15;
  *v15 = *(v130 + 216);
  v15[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
  v16 = *(v130 + 496);
  v17 = *(v130 + 488);

  return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v66, 1, v17, v16);
}

{
  v130 = v0;
  v123 = v0[84];
  v0[27] = v0;

  v0[55] = v123;

  v0[57] = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Array.append<A>(contentsOf:)();
  v0[58] = v123;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v124 = Collection.isEmpty.getter();

  result = v124;
  if ((v124 & 1) == 0)
  {
    v6 = *(*(v122 + 640) + 16);
    v118 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    *(*(v122 + 640) + 16) = v118;
  }

  v116 = *(v122 + 648);
  outlined destroy of [HKQuantityType]((v122 + 440));

  v117 = *(v122 + 680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
  IndexingIterator.next()();
  v120 = *(v122 + 168);
  v119 = *(v122 + 176);
  *(v122 + 648) = v119;
  if (v119)
  {
    *(v122 + 200) = v120;
    *(v122 + 208) = v119;
    type metadata accessor for HKMedicationIdentifier();

    v121 = HKMedicationIdentifier.__allocating_init(rawIdentifier:)();
    *(v122 + 656) = v121;
    v2 = swift_task_alloc();
    *(v122 + 664) = v2;
    *v2 = *(v122 + 216);
    v2[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v3 = *(v122 + 496);
    v4 = *(v122 + 488);
    v5 = *(v122 + 480);

    return SpecificMedicationsPersistor.getDoseEvents(for:medicationIdentifier:)(v5, v121, v4, v3);
  }

  else
  {
    outlined destroy of [HKQuantityType]((v122 + 152));
    v109 = *(v122 + 240);

    v110 = filterUniqueDoseEvents(doseEvents:)(v109);

    v8 = *(v122 + 240);
    *(v122 + 240) = v110;

    *(v122 + 264) = v110;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v114 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:), 0, v111, v112, MEMORY[0x277D84A98], v114, MEMORY[0x277D84AC0], v113);
    v115 = result;
    if (v117)
    {
      return result;
    }

    outlined destroy of [HKQuantityType]((v122 + 264));
    *(v122 + 272) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    lazy protocol witness table accessor for type [String?] and conformance [A]();
    v107 = Set.init<A>(_:)();
    *(v122 + 688) = v107;
    *(v122 + 280) = v107;
    *(v122 + 288) = v110;
    v108 = Collection.isEmpty.getter();

    if (v108)
    {
      v103 = *(v122 + 608);
      v101 = *(v122 + 600);
      v102 = *(v122 + 592);
      v9 = *(v122 + 576);
      v100 = *(v122 + 536);
      v99 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v102(v9, v99, v100);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      v106 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v104))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v96 = createStorage<A>(capacity:type:)(0);
        v97 = createStorage<A>(capacity:type:)(0);
        *(v122 + 408) = buf;
        *(v122 + 416) = v96;
        *(v122 + 424) = v97;
        serialize(_:at:)(0, (v122 + 408));
        serialize(_:at:)(0, (v122 + 408));
        *(v122 + 432) = v106;
        v98 = swift_task_alloc();
        v98[2] = v122 + 408;
        v98[3] = v122 + 416;
        v98[4] = v122 + 424;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, oslog, v104, "Name and time specified, but no potential time match found. Returning .noMatchFound.", buf, 2u);
        destroyStorage<A>(_:count:)(v96, 0, v94);
        destroyStorage<A>(_:count:)(v97, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
      }

      v91 = *(v122 + 640);
      v89 = *(v122 + 624);
      v90 = *(v122 + 616);
      v87 = *(v122 + 576);
      v88 = *(v122 + 536);
      MEMORY[0x277D82BD8](oslog);
      v90(v87, v88);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v92 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);

      outlined destroy of [HKQuantityType]((v122 + 240));
      v93 = v92;
      goto LABEL_36;
    }

    if (Set.count.getter() <= 1 && *(*(v122 + 640) + 16) <= 1)
    {
      v49 = *(v122 + 632);
      v50 = *(v122 + 240);

      v51 = MEMORY[0x26D6494A0](v50, v49);

      if (v51 == 1)
      {
        v47 = *(v122 + 240);

        *(v122 + 328) = v47;
        Collection.first.getter();
        v48 = *(v122 + 336);
        *(v122 + 728) = v48;
        if (v48)
        {
          *(v122 + 344) = v48;

          v15 = swift_task_alloc();
          *(v122 + 736) = v15;
          *v15 = *(v122 + 216);
          v15[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
          v16 = *(v122 + 496);
          v17 = *(v122 + 488);
          v18 = *(v122 + 753) & 1;

          return SpecificMedicationsPersistor.buildConfirmationForScheduledOrAsNeeded(doseEvent:requestedMedStatus:)(v48, v18, v17, v16);
        }
      }

      v43 = *(v122 + 608);
      v41 = *(v122 + 600);
      v42 = *(v122 + 592);
      v19 = *(v122 + 560);
      v40 = *(v122 + 536);
      v39 = Logger.wellness.unsafeMutableAddressor();
      swift_beginAccess();
      v42(v19, v39, v40);
      swift_endAccess();
      v45 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      v46 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v45, v44))
      {
        v35 = static UnsafeMutablePointer.allocate(capacity:)();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v36 = createStorage<A>(capacity:type:)(0);
        v37 = createStorage<A>(capacity:type:)(0);
        *(v122 + 296) = v35;
        *(v122 + 304) = v36;
        *(v122 + 312) = v37;
        serialize(_:at:)(0, (v122 + 296));
        serialize(_:at:)(0, (v122 + 296));
        *(v122 + 320) = v46;
        v38 = swift_task_alloc();
        v38[2] = v122 + 296;
        v38[3] = v122 + 304;
        v38[4] = v122 + 312;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, v45, v44, "More than 1 doseEvent found in saveScheduledMedication's fallback condition, returning failure status", v35, 2u);
        destroyStorage<A>(_:count:)(v36, 0, v34);
        destroyStorage<A>(_:count:)(v37, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v35, MEMORY[0x277D84B78]);
      }

      v32 = *(v122 + 640);
      v30 = *(v122 + 624);
      v31 = *(v122 + 616);
      v28 = *(v122 + 560);
      v29 = *(v122 + 536);
      MEMORY[0x277D82BD8](v45);
      v31(v28, v29);
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v33 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

      outlined destroy of [HKQuantityType]((v122 + 240));
      v93 = v33;
      goto LABEL_36;
    }

    v75 = *(v122 + 640);
    v84 = *(v122 + 608);
    v70 = *(v122 + 600);
    v71 = *(v122 + 592);
    v10 = *(v122 + 568);
    v69 = *(v122 + 536);
    v68 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v71(v10, v68, v69);
    swift_endAccess();

    v72 = swift_allocObject();
    *(v72 + 16) = v107;

    v73 = swift_allocObject();
    *(v73 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
    *(v73 + 24) = v72;

    log = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    v77 = swift_allocObject();
    *(v77 + 16) = 32;
    v78 = swift_allocObject();
    *(v78 + 16) = 8;
    v74 = swift_allocObject();
    *(v74 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v74 + 24) = v73;
    v79 = swift_allocObject();
    *(v79 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v79 + 24) = v74;
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = 8;
    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for implicit closure #7 in SpecificMedicationsPersistor.saveMedication(named:medStatusTaken:dosage:dosageUnit:);
    *(v76 + 24) = v75;
    v82 = swift_allocObject();
    *(v82 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v82 + 24) = v76;
    _allocateUninitializedArray<A>(_:)();
    v83 = v11;

    *v83 = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[1] = v77;

    v83[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[3] = v78;

    v83[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[5] = v79;

    v83[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[7] = v80;

    v83[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v83[9] = v81;

    v83[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v83[11] = v82;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v86))
    {
      v65 = static UnsafeMutablePointer.allocate(capacity:)();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v66 = createStorage<A>(capacity:type:)(0);
      v67 = createStorage<A>(capacity:type:)(1);
      v125 = v65;
      v126 = v66;
      v127 = v67;
      serialize(_:at:)(2, &v125);
      serialize(_:at:)(2, &v125);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v77;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v80;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v129 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      _os_log_impl(&dword_269912000, log, v86, "Multiple times (%s) or strengths (%ld) found for specified name today, returning .needsNameDisambiguation", v65, 0x16u);
      destroyStorage<A>(_:count:)(v66, 0, v64);
      destroyStorage<A>(_:count:)(v67, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v65, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v60 = *(v122 + 624);
    v61 = *(v122 + 616);
    v58 = *(v122 + 568);
    v59 = *(v122 + 536);
    MEMORY[0x277D82BD8](log);
    v61(v58, v59);
    *(v122 + 696) = type metadata accessor for MatchedMedName();
    *(v122 + 352) = _allocateUninitializedArray<A>(_:)();
    v62 = *(v122 + 240);

    *(v122 + 360) = v62;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v63 = *(v122 + 368);
    *(v122 + 704) = v63;
    if (!v63)
    {
      v52 = *(v122 + 696);
      v55 = *(v122 + 688);
      v56 = *(v122 + 640);
      outlined destroy of [HKQuantityType]((v122 + 184));
      type metadata accessor for LogSpecificMedicationsIntentResponse();
      v57 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
      MEMORY[0x277D82BE0](v57);
      *(v122 + 376) = v57;
      v53 = *(v122 + 352);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v57 setMatchingMeds_];
      MEMORY[0x277D82BD8](isa);
      MEMORY[0x277D82BD8](*(v122 + 376));
      outlined destroy of [HKQuantityType]((v122 + 352));

      outlined destroy of [HKQuantityType]((v122 + 240));
      v93 = v57;
LABEL_36:
      v20 = *(v122 + 584);
      v23 = *(v122 + 576);
      v24 = *(v122 + 568);
      v25 = *(v122 + 560);
      v26 = *(v122 + 552);
      v27 = *(v122 + 528);

      v21 = *(*(v122 + 216) + 8);
      v22 = *(v122 + 216);

      return v21(v93);
    }

    *(v122 + 384) = v63;
    v12 = swift_task_alloc();
    *(v122 + 712) = v12;
    *v12 = *(v122 + 216);
    v12[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v13 = *(v122 + 496);
    v14 = *(v122 + 488);

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v63, 1, v14, v13);
  }
}

{
  v20 = v0[90];
  v21 = v0[88];
  v0[27] = v0;
  v0[49] = v20;
  MEMORY[0x277D82BE0](v20);
  v0[50] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v22 = v0[46];
  v0[88] = v22;
  if (v22)
  {
    v19[48] = v22;
    v1 = swift_task_alloc();
    v19[89] = v1;
    *v1 = v19[27];
    v1[1] = SpecificMedicationsPersistor.saveScheduledMedication(named:specifiedDateInterval:medStatusTaken:);
    v2 = v19[62];
    v3 = v19[61];

    return SpecificMedicationsPersistor.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(v22, 1, v3, v2);
  }

  else
  {
    v8 = v19[87];
    v11 = v19[86];
    v12 = v19[80];
    outlined destroy of [HKQuantityType](v19 + 23);
    type metadata accessor for LogSpecificMedicationsIntentResponse();
    v18 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    MEMORY[0x277D82BE0](v18);
    v19[47] = v18;
    v9 = v19[44];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v19[47]);
    outlined destroy of [HKQuantityType](v19 + 44);

    outlined destroy of [HKQuantityType](v19 + 30);
    v5 = v19[73];
    v13 = v19[72];
    v14 = v19[71];
    v15 = v19[70];
    v16 = v19[69];
    v17 = v19[66];

    v6 = *(v19[27] + 8);
    v7 = v19[27];

    return v6(v18);
  }
}

{
  v1 = v0[91];
  v6 = v0[86];
  v7 = v0[80];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 30);
  v13 = v0[93];
  v2 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[66];

  v3 = *(v0[27] + 8);
  v4 = v0[27];

  return v3(v13);
}

{
  v48 = v0;
  v32 = v0[85];
  v1 = v0[82];
  v26 = v0[81];
  v27 = v0[80];
  v40 = v0[76];
  v30 = v0[75];
  v31 = v0[74];
  v2 = v0[69];
  v29 = v0[67];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);

  outlined destroy of [HKQuantityType](v0 + 19);

  outlined destroy of [HKQuantityType](v0 + 30);
  v3 = v32;
  v0[56] = v32;
  v28 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v31(v2, v28, v29);
  swift_endAccess();
  v4 = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = 64;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v34 + 24) = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v35 + 24) = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v38 + 24) = v35;
  _allocateUninitializedArray<A>(_:)();
  v39 = v5;

  *v39 = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[1] = v36;

  v39[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[3] = v37;

  v39[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[5] = v38;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v41, v42))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(1);
    v24 = createStorage<A>(capacity:type:)(0);
    v43 = buf;
    v44 = v23;
    v45 = v24;
    serialize(_:at:)(2, &v43);
    serialize(_:at:)(1, &v43);
    v46 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    _os_log_impl(&dword_269912000, v41, v42, "Failed fetching dose events for specified timeframe: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v23, 1, v21);
    destroyStorage<A>(_:count:)(v24, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v14 = v25[85];
  v12 = v25[78];
  v13 = v25[77];
  v10 = v25[69];
  v11 = v25[67];
  MEMORY[0x277D82BD8](v41);
  v13(v10, v11);
  type metadata accessor for LogSpecificMedicationsIntentResponse();
  v20 = LogSpecificMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v6 = v25[73];
  v15 = v25[72];
  v16 = v25[71];
  v17 = v25[70];
  v18 = v25[69];
  v19 = v25[66];

  v7 = *(v25[27] + 8);
  v8 = v25[27];

  return v7(v20);
}