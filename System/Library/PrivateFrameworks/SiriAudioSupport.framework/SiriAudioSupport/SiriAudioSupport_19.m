uint64_t sub_2664690C8()
{
  v0 = sub_2662C3A68(&unk_2877E14E0);
  result = swift_arrayDestroy();
  qword_280F91CE8 = v0;
  return result;
}

unint64_t sub_266469114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16) || (v4 = sub_2662A3E98(a1, a2), (v5 & 1) == 0))
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  sub_2664E0818();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    v10 = v7;
    v11 = sub_2664E0818();
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v11 = -1;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_2664E34E0;
  *(inited + 40) = 0x80000002664F1070;
  if (v6)
  {
    [v6 subscriptionStatus];
    v15 = [v6 subscriptionStatus];
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x277D83B88];
  *(inited + 48) = v15;
  *(inited + 72) = v16;
  strcpy((inited + 80), "libraryItems");
  *(inited + 120) = v16;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v11;
  v17 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();

  return v17;
}

uint64_t sub_266469298(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2662C1744(0, &qword_280F8F640, 0x277CD42D8);
  v3 = sub_2664E01C8();

  v2(v3);
}

uint64_t sub_26646936C()
{
  if (qword_280F90918 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2664693D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  sub_2664DE428();
  sub_2662C1744(0, &unk_280F8F5A8, 0x277CD3DD8);
  (*(v5 + 16))(v8, v10, v4);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  (*(v5 + 32))(v12 + v11, v8, v4);
  v13 = objc_opt_self();

  v14 = [v13 sharedStore];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock[4] = sub_266469BB0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266469298;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);

  [v14 userContextOfClass:ObjCClassFromMetadata withCompletion:v16];
  _Block_release(v16);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26646963C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v9 = sub_26632958C(1021);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "UserContextSignal#signal", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = a1;
  v14[4] = a2;

  sub_2664693D0(sub_266352BC8, v14);
}

uint64_t sub_266469890(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C28, &qword_2664EE158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C30, &unk_2664EE160);
  v10 = sub_2664E0318();
  v21 = v11;
  v22 = v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "appSelectionSignalsSignal";
  *(v15 + 24) = 25;
  *(v15 + 32) = 2;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  *v16 = v23;
  v16[1] = a2;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2664E36F0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2662C4094();
  v18 = v21;
  *(v17 + 32) = v22;
  *(v17 + 40) = v18;
  sub_2664DFDC8();

  v19 = swift_allocObject();
  *(v19 + 16) = sub_266352A18;
  *(v19 + 24) = v15;

  sub_26646963C(sub_266352AC0, v19);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_266469BB0(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_266468B3C(a1, v4, v5, v6);
}

uint64_t AtomicOnce.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_280F91468;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_280F91470;
  v8[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v8[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v8[0] = v6;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v4 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v8);
  return v4;
}

uint64_t AtomicOnce.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v6 = qword_280F91468;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v9[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v9[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v9[0] = v7;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v3 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v9);
  return v3;
}

uint64_t sub_266469DF8(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v44 = a1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v47 = v5[2];
  v48 = v5 + 2;
  v47(v16, v17, v4);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46 = v5;
    v22 = v21;
    v49 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v49);
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicOnce#once [%{public}s] acquiring global lock", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v23 = v22;
    v5 = v46;
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v24 = v5[1];
  v24(v16, v4);
  v25 = *(v3 + 16);
  v26 = sub_2662A98AC();
  if (*(v3 + 24) == 1)
  {
    sub_2662AA89C();
    v47(v14, v17, v4);

    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v49);
      _os_log_impl(&dword_26629C000, v27, v28, "AtomicOnce#once [%{public}s] already complete, skipping...", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266784AD0](v30, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    v31 = v14;
  }

  else
  {
    v44(v26);
    v47(v11, v17, v4);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = v5;
      v35 = v34;
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v49);
      _os_log_impl(&dword_26629C000, v32, v33, "AtomicOnce#once [%{public}s] complete...", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v24(v11, v4);
    *(v3 + 24) = 1;
    sub_2662AA89C();
    v37 = v45;
    v47(v45, v17, v4);

    v38 = sub_2664DFE18();
    v39 = sub_2664E06E8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v49);
      _os_log_impl(&dword_26629C000, v38, v39, "AtomicOnce#once [%{public}s] unlocked...", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v31 = v37;
  }

  return (v24)(v31, v4);
}

uint64_t AtomicOnce.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AtomicOnce.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t PlaybackRepeatMode.mrRepeatMode.getter()
{
  v1 = *v0;
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

SiriAudioSupport::PlaybackRepeatMode __swiftcall INPlaybackRepeatMode.repeatMode()()
{
  v2 = v0;
  v3 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 4)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v11, v4);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[1] = v2;
      v20 = v15;
      *v14 = 136315138;
      type metadata accessor for INPlaybackRepeatMode(0);
      v16 = sub_2664E0318();
      v18 = sub_2662A320C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26629C000, v12, v13, "Unknown INPlaybackRepeatMode: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x266784AD0](v15, -1, -1);
      MEMORY[0x266784AD0](v14, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    LOBYTE(v10) = 4;
  }

  else
  {
    v10 = 0x1020003u >> (8 * v2);
  }

  *v3 = v10;
  return result;
}

SiriAudioSupport::TCCStatus __swiftcall TCCProvider.getSiriTCCStatusForBundle(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v4 = v1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = sub_2664E02A8();
  v17 = TCCAccessCopyInformationForBundleId();

  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_21;
  }

  v76 = 0;
  sub_2664E0498();

  v19 = v76;
  if (!v76)
  {
LABEL_21:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v10, v42, v5);

    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v78 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_2662A320C(countAndFlagsBits, object, &v78);
      _os_log_impl(&dword_26629C000, v43, v44, "TCCProvider#getSiriTCCStatusForBundle failed to pull TCC info for %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    result = (*(v6 + 8))(v10, v5);
    goto LABEL_31;
  }

  v72 = v4;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v21 = *(v6 + 16);
  v69 = v6 + 16;
  v70 = v20;
  v68 = v21;
  v21(v15, v20, v5);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06B8();

  v24 = os_log_type_enabled(v22, v23);
  v71 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v67 = v13;
    v26 = v25;
    v27 = swift_slowAlloc();
    v76 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_2662A320C(countAndFlagsBits, object, &v76);
    *(v26 + 12) = 2080;
    v28 = MEMORY[0x2667834D0](v19, MEMORY[0x277D84F68] + 8);
    v30 = sub_2662A320C(v28, v29, &v76);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_26629C000, v22, v23, "TCCProvider#getSiriTCCStatusForBundle bundle:%s, TCC info:%s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v27, -1, -1);
    v31 = v26;
    v13 = v67;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = *(v6 + 8);
  v32(v15, v5);
  v4 = v72;
  if (!*MEMORY[0x277D6C0E8])
  {
    goto LABEL_26;
  }

  v33 = *MEMORY[0x277D6C0E8];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_27:

    goto LABEL_28;
  }

  v76 = 0;
  v77 = 0;
  sub_2664E02B8();

  v34 = v77;
  if (!v77)
  {
LABEL_26:

LABEL_28:
    v68(v13, v70, v5);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "TCCProvider#getSiriTCCStatusForBundle failed to access TCC strings", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    result = v32(v13, v5);
    goto LABEL_31;
  }

  v35 = *MEMORY[0x277D6C210];
  if (!*MEMORY[0x277D6C210])
  {
LABEL_57:

    goto LABEL_26;
  }

  v67 = v76;
  v33 = v35;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_27;
  }

  v76 = 0;
  v77 = 0;
  sub_2664E02B8();

  if (!v77)
  {
    goto LABEL_57;
  }

  v36 = *MEMORY[0x277D6C0D0];
  if (!*MEMORY[0x277D6C0D0])
  {
LABEL_59:

    goto LABEL_26;
  }

  v65 = v76;
  v66 = v77;
  v33 = v36;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_27;
  }

  v76 = 0;
  v77 = 0;
  sub_2664E02B8();

  v64 = v77;
  if (!v77)
  {
    goto LABEL_59;
  }

  v37 = v71;
  v69 = v76;
  v70 = v71 & 0xFFFFFFFFFFFFFF8;
  if (v71 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v39 = 0;
    v40 = &unk_280073C38;
    v41 = v37 & 0xC000000000000001;
    while (1)
    {
      if (v41)
      {
        v4 = MEMORY[0x266783B70](v39, v37);
      }

      else
      {
        if (v39 >= *(v70 + 16))
        {
          goto LABEL_64;
        }

        v4 = *(v37 + 8 * v39 + 32);
        swift_unknownObjectRetain();
      }

      v52 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v76 = v4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, &qword_2664EE240);
      if (swift_dynamicCast())
      {
        v53 = v40;
        v54 = v74;
        v74 = v67;
        v75 = v34;

        sub_2664E0AB8();
        if (!*(v54 + 16))
        {
          goto LABEL_53;
        }

        v55 = sub_26634D9F8(&v76);
        if ((v56 & 1) == 0)
        {
          goto LABEL_53;
        }

        v57 = *(*(v54 + 56) + 8 * v55);
        swift_unknownObjectRetain();
        sub_266350284(&v76);
        v73 = v57;
        if (swift_dynamicCast())
        {
          if (v74 == v65 && v66 == v75)
          {

LABEL_49:
            v74 = v69;
            v75 = v64;

            sub_2664E0AB8();
            v37 = v71;
            if (*(v54 + 16))
            {
              v58 = sub_26634D9F8(&v76);
              if (v59)
              {
                v60 = *(*(v54 + 56) + 8 * v58);
                swift_unknownObjectRetain();
                sub_266350284(&v76);

                objc_opt_self();
                v61 = swift_dynamicCastObjCClass();
                if (v61)
                {
                  v62 = v61;

                  LOBYTE(v62) = [v62 BOOLValue];
                  swift_unknownObjectRelease();
                  result = swift_unknownObjectRelease();
                  v51 = v62 ^ 1;
                  v4 = v72;
                  goto LABEL_32;
                }

                swift_unknownObjectRelease();
                goto LABEL_56;
              }
            }

LABEL_53:

            swift_unknownObjectRelease();
            sub_266350284(&v76);
          }

          else
          {
            LODWORD(v68) = sub_2664E0D88();

            if (v68)
            {
              goto LABEL_49;
            }

LABEL_56:
            swift_unknownObjectRelease();
            v37 = v71;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          v37 = v71;
        }

        v40 = v53;
        goto LABEL_34;
      }

      swift_unknownObjectRelease();
LABEL_34:
      ++v39;
      v4 = v72;
      if (v52 == i)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

LABEL_66:

LABEL_31:
  v51 = 2;
LABEL_32:
  *v4 = v51;
  return result;
}

Swift::Void __swiftcall TCCProvider.rejectTCC(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  if (*MEMORY[0x277D6C210])
  {
    v11 = qword_280F914E8;
    v12 = *MEMORY[0x277D6C210];
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v10, v13, v3);

    v14 = sub_2664DFE18();
    v15 = sub_2664E06E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2662A320C(countAndFlagsBits, object, &v24);
      _os_log_impl(&dword_26629C000, v14, v15, "TCCProvider#rejectTCC explicitly denying TCC access for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    v18 = v12;
    v19 = sub_2664E02A8();
    TCCAccessSetForBundleId();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v8, v20, v3);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "TCCProvider#rejectTCC failed to access kTCCServiceSiri string", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_26646B4C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26646B50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26646B568(void (*a1)(void *), uint64_t a2)
{
  v4 = sub_2664DEC48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DEF28();
  if (*(v14 + 16))
  {
    sub_2662A5550(v14 + 32, v25);

    sub_2662A8618(v25, v26);
    v15 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = *(v15 + 8);

    sub_2664DF048();

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v24 = a1;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v19, v9);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "NowPlayingStateIndependentSignal: Got error to read signal", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    *v8 = -1;
    (*(v5 + 104))(v8, *MEMORY[0x277D60170], v4);
    v24(v8);
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26646B8AC(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_2664DEC48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v32 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  (*(v5 + 16))(&v32 - v13, a1, v4);
  if ((*(v5 + 88))(v14, v4) == *MEMORY[0x277D60188])
  {
    v36 = a2;
    (*(v5 + 96))(v14, v4);
    v15 = 0;
    result = *v14;
    v17 = *v14 + 64;
    v18 = 1 << *(*v14 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(*v14 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = MEMORY[0x277D84F90];
    if (!v20)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v24 = *(*(result + 56) + ((v15 << 9) | (8 * v23)));
        if (v24)
        {
          break;
        }

        if (!v20)
        {
          goto LABEL_7;
        }
      }

      v35 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD0FC(0, v22[2] + 1, 1);
        v22 = v37;
      }

      v28 = v22[2];
      v27 = v22[3];
      v29 = v28 + 1;
      result = v35;
      if (v28 >= v27 >> 1)
      {
        v33 = v22[2];
        v34 = v28 + 1;
        sub_2662FD0FC((v27 > 1), v28 + 1, 1);
        v28 = v33;
        v29 = v34;
        result = v35;
        v22 = v37;
      }

      v22[2] = v29;
      v22[v28 + 4] = v24;
    }

    while (v20);
    while (1)
    {
LABEL_7:
      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v25 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v25);
      ++v15;
      if (v20)
      {
        v15 = v25;
        goto LABEL_5;
      }
    }

    if (v22[2])
    {
      v31 = v22[4];
    }

    else
    {
      v31 = 0;
    }

    *v12 = v31;
    (*(v5 + 104))(v12, *MEMORY[0x277D60170], v4);
    v36(v12);
    return (*(v5 + 8))(v12, v4);
  }

  else
  {
    *v9 = -1;
    (*(v5 + 104))(v9, *MEMORY[0x277D60170], v4);
    a2(v9);
    v30 = *(v5 + 8);
    v30(v9, v4);
    return v30(v14, v4);
  }
}

uint64_t sub_26646BC24()
{
  v0 = qword_280073C40;

  return v0;
}

void sub_26646BC5C()
{
  sub_266456F50();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_26646BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266456F50();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_26646BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266456F50();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_26646BD68()
{
  result = qword_280F8F720;
  if (!qword_280F8F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F720);
  }

  return result;
}

id sub_26646BDC4()
{
  v0 = [objc_opt_self() sharedStream];

  return v0;
}

id sub_26646BE04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DE4A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_266475DC8(a1, a2);
  if (result)
  {
    v17 = result;
    v35 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v15, v18, v11);
    (*(v7 + 16))(v10, a2, v6);
    v19 = v12;
    v20 = sub_2664DFE18();
    v21 = sub_2664E06C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v17;
      v23 = v22;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v23 = 134218242;
      *(v23 + 4) = v35;
      *(v23 + 12) = 2080;
      sub_2663EF71C();
      v32 = v21;
      v24 = sub_2664E0D48();
      v35 = v3;
      v26 = v25;
      (*(v7 + 8))(v10, v6);
      v27 = sub_2662A320C(v24, v26, &v36);
      v3 = v35;

      *(v23 + 14) = v27;
      _os_log_impl(&dword_26629C000, v20, v32, "SiriAudioSelfLogger#emitMWTCheckPoint Logging MWT checkpoint %ld for requestId: %s", v23, 0x16u);
      v28 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v28, -1, -1);
      v29 = v23;
      v17 = v34;
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v30 = (*(v19 + 8))(v15, v11);
    [(*((*MEMORY[0x277D85000] & *v3) + 0x50))(v30) emitMessage_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26646C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_266475DC8(a1, a2);
  if (result)
  {
    v6 = result;
    [(*((*MEMORY[0x277D85000] & *v3) + 0x50))() emitMessage:result timestamp:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26646C500(char *a1, uint64_t a2)
{
  v162 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v139[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v159 = &v139[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v139[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v139[-v16];
  v18 = sub_2664DE4A8();
  v163 = *(v18 - 8);
  v19 = *(v163 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v161 = &v139[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v160 = &v139[-v23];
  MEMORY[0x28223BE20](v22);
  v165 = &v139[-v24];
  v25 = [objc_allocWithZone(MEMORY[0x277D58B50]) init];
  if (!v25)
  {
    goto LABEL_12;
  }

  v164 = v25;
  v26 = [objc_allocWithZone(MEMORY[0x277D58B58]) init];
  if (!v26)
  {
    v48 = v164;
LABEL_8:

LABEL_12:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v52, v4);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "SiriAudioSelfLogger#emitMWTMusicMetadata error creating SELF objects", v55, 2u);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  v157 = v26;
  v158 = v18;
  v27 = [objc_allocWithZone(MEMORY[0x277D58B60]) init];
  if (!v27)
  {

    v48 = v157;
    goto LABEL_8;
  }

  v28 = v27;
  v155 = v2;
  v156 = v4;
  v29 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  v149 = *&a1[v29];
  v30 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  v148 = *&a1[v30];
  v31 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  v147 = *&a1[v31];
  v32 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  v146 = *&a1[v32];
  v33 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  v145 = *&a1[v33];
  v34 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  v144 = *&a1[v34];
  v35 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  v143 = *&a1[v35];
  v36 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  v142 = *&a1[v36];
  v37 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  v141 = *&a1[v37];
  v38 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  v140 = *&a1[v38];
  v39 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  LODWORD(v151) = *&a1[v39];
  v40 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  v150 = *&a1[v40];
  v41 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  LODWORD(v154) = *&a1[v41];
  v42 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  LODWORD(v153) = *&a1[v42];
  v43 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  LODWORD(v152) = *&a1[v43];
  v44 = objc_opt_self();
  v45 = sub_2664DE478();
  v46 = [v44 derivedIdentifierForComponentName:25 fromSourceIdentifier:v45];

  if (v46)
  {
    sub_2664DE488();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v49 = v163;
  v50 = v158;
  (*(v163 + 56))(v15, v47, 1, v158);
  sub_266476340(v15, v17);
  v51 = (*(v49 + 48))(v17, 1, v50);
  v4 = v156;
  if (v51 == 1)
  {

    sub_2662A9238(v17, &qword_280073C60, &unk_2664EE400);
    goto LABEL_12;
  }

  (*(v49 + 32))(v165, v17, v50);
  [v28 setMusicDomain_];
  [v28 setQueueType_];
  [v28 setPrefetchedMetadataSource_];
  [v28 setAssetEndPoint_];
  [v28 setStreamingContentType_];
  [v28 setFormatCodec_];
  [v28 setFormatLayout_];
  [v28 setFormatTier_];
  [v28 setRouteConfiguration_];
  [v28 setNetworkConnectionType_];
  v57 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  [v28 setQueueSize_];
  v58 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  [v28 setIsShuffled_];
  v59 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  [v28 setFormatBitrate_];
  v60 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  [v28 setFormatBitDepth_];
  v61 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  [v28 setFormatChannels_];
  v62 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  [v28 setFormatSampleRate_];
  v63 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  [v28 setNumberOfSpeakers_];
  v64 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  [v28 setIsAccountDataReady_];
  v65 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  [v28 setIsStoreBagReady_];
  v66 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  [v28 setIsLeaseReady_];
  v67 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  [v28 setIsOnlineKeyReady_];
  v68 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  [v28 setIsOfflineKeyReady_];
  v69 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  [v28 setIsHlsKeysReady_];
  v70 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  [v28 setIsInterruptingPlayback_];
  v71 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  [v28 setIsRemoteSetQueue_];
  v72 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  [v28 setIsDelegatedPlayback_];
  v73 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  [v28 setIsNonDefaultUser_];
  v74 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  [v28 setIsAutoPlay_];
  v75 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  [v28 setIsFirstPlayAfterAppLaunch_];
  v76 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  [v28 setIsMiniSinfAvailable_];
  v77 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  [v28 setIsSharePlayPlayback_];
  v78 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  [v28 setIsSuzeLease_];
  v79 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  [v28 setWasMediaLibraryDatabaseUpgraded_];
  v80 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  [v28 setIsPrimaryUser_];
  v81 = &a1[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_errorResolutionType];
  swift_beginAccess();
  if (*(v81 + 1))
  {
    v82 = *v81;

    v83 = sub_2664E02A8();
  }

  else
  {
    v83 = 0;
  }

  [v28 setErrorResolutionType_];

  [v28 setEndPointType_];
  [v28 setRouteType_];
  v84 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  [v28 setFormatLayoutValue_];
  [v28 setAssetSource_];
  [v28 setAssetLocation_];
  [v28 setSubscriptionType_];
  v85 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  [v28 setHasLookupWaitTime_];
  v86 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  [v28 setHasBagWaitTime_];
  v87 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  [v28 setHasLeaseWaitTime_];
  v88 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  [v28 setHasSuzeLeaseWaitTime_];
  v89 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  [v28 setHasSubscriptionAssetLoadWaitTime_];
  v90 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  [v28 setHasMediaRedownloadWaitTime_];
  v91 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  [v28 setCmInitialStartupItemCreationToReadyToPlayDurationInMs_];
  v92 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  [v28 setCmInitialStartupItemCreationToLtluDurationInMs_];
  v93 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  [v28 setMasterPlaylistConnectionTlsHandshakeDurationInMs_];
  v94 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  [v28 setMasterPlaylistRequestDurationInMs_];
  v95 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  [v28 setSubPlaylistConnectionTlsHandshakeDurationInMs_];
  v96 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  [v28 setSubPlaylistRequestDurationInMs_];
  v97 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  [v28 setContentConnectionTlsHandshakeDurationInMs_];
  v98 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  [v28 setContentFirstSegmentDurationInMs_];
  v99 = &a1[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_audioQueueType];
  swift_beginAccess();
  if (*(v99 + 1))
  {
    v100 = *v99;

    v101 = sub_2664E02A8();
  }

  else
  {
    v101 = 0;
  }

  v102 = v159;
  [v28 setAudioQueueType_];

  v103 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v104 = sub_2664DE478();
  v105 = [v103 initWithNSUUID_];

  v106 = v157;
  [v157 setMwtId_];

  v107 = v164;
  [v164 setMwtMusicMetadataReported_];
  [v107 setEventMetadata_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v108 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v154 = v5;
  (*(v5 + 16))(v102, v108, v4);
  v109 = v163;
  v110 = *(v163 + 16);
  v111 = v158;
  v110(v160, v162, v158);
  v110(v161, v165, v111);
  v112 = v4;
  v113 = a1;
  v114 = sub_2664DFE18();
  v115 = sub_2664E06C8();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v153 = v114;
    v117 = v116;
    v118 = swift_slowAlloc();
    v152 = v118;
    v162 = swift_slowAlloc();
    v166[0] = v162;
    *v117 = 138412802;
    *(v117 + 4) = v113;
    *v118 = v113;
    *(v117 + 12) = 2080;
    v151 = sub_2663EF71C();
    v119 = v113;
    v120 = v160;
    v121 = v158;
    v122 = sub_2664E0D48();
    v124 = v123;
    v125 = *(v109 + 8);
    LODWORD(v163) = v115;
    v125(v120, v121);
    v126 = sub_2662A320C(v122, v124, v166);

    *(v117 + 14) = v126;
    *(v117 + 22) = 2080;
    v127 = v161;
    v128 = sub_2664E0D48();
    v130 = v129;
    v125(v127, v121);
    v131 = sub_2662A320C(v128, v130, v166);

    *(v117 + 24) = v131;
    v132 = v153;
    _os_log_impl(&dword_26629C000, v153, v163, "SiriAudioSelfLogger#emitMWTCheckPoint Logging MWT metadata %@ for requestId: %s, mwtId: %s", v117, 0x20u);
    v133 = v152;
    sub_2662A9238(v152, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v133, -1, -1);
    v134 = v162;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v134, -1, -1);
    MEMORY[0x266784AD0](v117, -1, -1);

    v135 = (*(v154 + 8))(v159, v156);
  }

  else
  {

    v125 = *(v109 + 8);
    v136 = v158;
    v125(v161, v158);
    v125(v160, v136);
    v135 = (*(v154 + 8))(v102, v112);
  }

  v137 = (*((*MEMORY[0x277D85000] & *v155) + 0x50))(v135);
  v138 = v164;
  [v137 emitMessage_];

  swift_unknownObjectRelease();
  return (v125)(v165, v158);
}

uint64_t sub_26646DA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664765F8(a1, a2);
  if (v10 >> 60 == 15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v11, v4);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26629C000, v12, v13, "SiriAudioSelfLogger#emitVMCPUStats error collecting VM/CPU stats", v14, 2u);
      MEMORY[0x266784AD0](v14, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v16 = v9;
    v17 = v10;
    sub_26646DD6C();

    return sub_2662B79A8(v16, v17);
  }
}

uint64_t sub_26646DC6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v8 = sub_2664DE4A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  v13 = a1;
  a5(a3, v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26646DD6C()
{
  v0 = sub_2664DE4A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  type metadata accessor for SiriAudioSelfLogger.VMCPUStats();
  v19 = sub_2664E0718();
  v66 = v4;
  v67 = v18;
  if (v19)
  {
    v20 = v16;
    v21 = [objc_allocWithZone(MEMORY[0x277D58B50]) init];
    if (v21)
    {
      v22 = v21;
      v23 = [objc_allocWithZone(MEMORY[0x277D58B58]) init];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_allocWithZone(MEMORY[0x277D58B68]) init];
        if (v25)
        {
          v26 = *&v19[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage];
          if (v26 < 0xFFFFFFFF80000000)
          {
            __break(1u);
          }

          else
          {
            v63 = OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage;
            if (v26 <= 0x7FFFFFFF)
            {
              v10 = v25;
              v20 = v1;
              v27 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
              v28 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v62 = v27;
              v29 = sub_2664DE478();
              v30 = [v28 initWithNSUUID_];

              [v24 setMwtId_];
              [v10 setSnapshotStage_];
              [v10 setCpuTicksUser_];
              [v10 setCpuTicksSystem_];
              [v10 setCpuTicksIdle_];
              [v10 setCpuTicksNice_];
              [v10 setCompressions_];
              [v10 setDecompressions_];
              [v10 setPageins_];
              [v10 setFaults_];
              v64 = v24;
              [v22 setEventMetadata_];
              [v22 setMwtVMCpuStatsReported_];
              v1 = v69;
              if (qword_280F914E8 == -1)
              {
LABEL_8:
                v31 = __swift_project_value_buffer(v1, qword_280F914F0);
                swift_beginAccess();
                v32 = v70;
                v33 = v67;
                (*(v70 + 16))(v67, v31, v1);
                v65 = v19;
                v34 = sub_2664DFE18();
                v35 = sub_2664E06C8();
                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v71 = v61;
                  *v36 = 134218242;
                  *(v36 + 4) = *&v19[v63];

                  *(v36 + 12) = 2080;
                  v37 = *(v20 + 2);
                  LODWORD(v63) = v35;
                  v38 = v66;
                  v37(v66, &v19[v62], v0);
                  sub_2663EF71C();
                  v39 = sub_2664E0D48();
                  v40 = v20;
                  v41 = v39;
                  v43 = v42;
                  (*(v40 + 1))(v38, v0);
                  v44 = sub_2662A320C(v41, v43, &v71);

                  *(v36 + 14) = v44;
                  _os_log_impl(&dword_26629C000, v34, v63, "SiriAudioSelfLogger#emitMWTCheckPoint Logging VM/CPU snapshot for stage %ld, mwtId: %s", v36, 0x16u);
                  v45 = v61;
                  __swift_destroy_boxed_opaque_existential_1Tm(v61);
                  MEMORY[0x266784AD0](v45, -1, -1);
                  MEMORY[0x266784AD0](v36, -1, -1);

                  v46 = (*(v70 + 8))(v33, v1);
                }

                else
                {

                  v46 = (*(v32 + 8))(v33, v1);
                }

                [(*((*MEMORY[0x277D85000] & *v68) + 0x50))(v46) emitMessage_];

                return swift_unknownObjectRelease();
              }

LABEL_28:
              swift_once();
              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        v24 = v22;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = v69;
    v55 = __swift_project_value_buffer(v69, qword_280F914F0);
    swift_beginAccess();
    v56 = v70;
    v57 = v20;
    (*(v70 + 16))(v20, v55, v54);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "SiriAudioSelfLogger#emitVMCPUStats error creating SELF objects", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    else
    {
    }

    return (*(v56 + 8))(v57, v54);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v69;
    v48 = __swift_project_value_buffer(v69, qword_280F914F0);
    swift_beginAccess();
    v49 = v70;
    (*(v70 + 16))(v13, v48, v47);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "SiriAudioSelfLogger#emitVMCPUStats error decoding VM/CPU stats", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    return (*(v49 + 8))(v13, v47);
  }
}

id SiriAudioSelfLogger.VMCPUStats.__allocating_init(mwtId:snapshotStage:cpuTicksUser:cpuTicksSystem:cpuTicksIdle:cpuTicksNice:compressions:decompressions:pageins:faults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = objc_allocWithZone(v10);
  v17 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
  v18 = sub_2664DE4A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v16[v17], a1, v18);
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = a2;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = a3;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = a4;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = a5;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = a6;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = a7;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = a8;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = a9;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = a10;
  v25.receiver = v16;
  v25.super_class = v10;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  (*(v19 + 8))(a1, v18);
  return v20;
}

uint64_t sub_26646EAE8(uint64_t a1)
{
  v101 = a1;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v102 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v88[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v88[-v14];
  v16 = sub_2664DE4A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v97 = &v88[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v88[-v25];
  MEMORY[0x28223BE20](v24);
  v98 = &v88[-v26];
  v27 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v27)
  {
    goto LABEL_13;
  }

  v99 = v27;
  v100 = v3;
  v28 = v2;
  v29 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v29)
  {
    v35 = v99;
LABEL_8:

LABEL_12:
    v2 = v28;
    v3 = v100;
LABEL_13:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v37 = v102;
    (*(v3 + 16))(v102, v36, v2);
    v38 = v17;
    (*(v17 + 16))(v21, v101, v16);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v103 = v42;
      *v41 = 136315138;
      sub_2663EF71C();
      v43 = sub_2664E0D48();
      v44 = v16;
      v45 = v2;
      v47 = v46;
      (*(v38 + 8))(v21, v44);
      v48 = sub_2662A320C(v43, v47, &v103);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_26629C000, v39, v40, "SiriAudioSelfLogger#emitRequestLink Unable to create request link info for SELF for interactionId: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);

      return (*(v3 + 8))(v102, v45);
    }

    else
    {

      (*(v38 + 8))(v21, v16);
      return (*(v3 + 8))(v37, v2);
    }
  }

  v95 = v29;
  v30 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v30)
  {

    v35 = v95;
    goto LABEL_8;
  }

  v93 = v1;
  v94 = v30;
  v31 = objc_opt_self();
  v32 = sub_2664DE478();
  v33 = [v31 derivedIdentifierForComponentName:25 fromSourceIdentifier:v32];

  if (v33)
  {
    sub_2664DE488();

    v34 = v17;
    (*(v17 + 56))(v13, 0, 1, v16);
  }

  else
  {
    v34 = v17;
    (*(v17 + 56))(v13, 1, 1, v16);
  }

  sub_266476340(v13, v15);
  if ((*(v34 + 48))(v15, 1, v16) == 1)
  {

    sub_2662A9238(v15, &qword_280073C60, &unk_2664EE400);
    goto LABEL_12;
  }

  v92 = v8;
  v50 = v98;
  (*(v34 + 32))(v98, v15, v16);
  v51 = v95;
  [v95 setComponent_];
  v102 = v34;
  v52 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v53 = sub_2664DE478();
  v54 = [v52 initWithNSUUID_];

  [v51 setUuid_];
  v55 = v94;
  [v94 setComponent_];
  v56 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v57 = v101;
  v58 = sub_2664DE478();
  v59 = [v56 initWithNSUUID_];

  [v55 setUuid_];
  v60 = v99;
  [v99 setSource_];
  [v60 setTarget_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v61 = v28;
  v62 = __swift_project_value_buffer(v28, qword_280F914F0);
  swift_beginAccess();
  (*(v100 + 16))(v92, v62, v28);
  v63 = v102;
  v64 = *(v102 + 2);
  v65 = v96;
  v64(v96, v50, v16);
  v66 = v97;
  v64(v97, v57, v16);
  v67 = sub_2664DFE18();
  v68 = sub_2664E06C8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v103 = v91;
    *v69 = 136315394;
    sub_2663EF71C();
    v90 = v67;
    v70 = v65;
    v71 = v66;
    v72 = sub_2664E0D48();
    v101 = v61;
    v74 = v73;
    v89 = v68;
    v75 = *(v63 + 1);
    v75(v70, v16);
    v76 = sub_2662A320C(v72, v74, &v103);

    *(v69 + 4) = v76;
    *(v69 + 12) = 2080;
    v77 = sub_2664E0D48();
    v79 = v78;
    v75(v71, v16);
    v80 = sub_2662A320C(v77, v79, &v103);

    *(v69 + 14) = v80;
    v81 = v90;
    _os_log_impl(&dword_26629C000, v90, v89, "SiriAudioSelfLogger#emitRequestLink Logging request link for mwtId: %s, executionRequestId: %s", v69, 0x16u);
    v82 = v91;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v82, -1, -1);
    v83 = v69;
    v84 = v98;
    MEMORY[0x266784AD0](v83, -1, -1);

    v85 = (*(v100 + 8))(v92, v101);
  }

  else
  {
    v84 = v50;

    v75 = *(v63 + 1);
    v75(v66, v16);
    v75(v65, v16);
    v85 = (*(v100 + 8))(v92, v61);
  }

  v86 = (*((*MEMORY[0x277D85000] & *v93) + 0x50))(v85);
  v87 = v99;
  [v86 emitMessage_];

  swift_unknownObjectRelease();
  return (v75)(v84, v16);
}

uint64_t sub_26646F4E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477310(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static SiriAudioSelfLogger.VMCPUStats.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_280073C50 = a1;
  return result;
}

void sub_26646F68C(void *a1)
{
  v2 = v1;
  v4 = sub_2664DE478();
  v5 = sub_2664E02A8();
  [a1 encodeObject:v4 forKey:v5];

  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_2664E02A8();
  [a1 encodeObject:v6 forKey:v7];

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v9 = sub_2664E02A8();
  [a1 encodeObject:v8 forKey:v9];

  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v11 = sub_2664E02A8();
  [a1 encodeObject:v10 forKey:v11];

  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v13 = sub_2664E02A8();
  [a1 encodeObject:v12 forKey:v13];

  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v15 = sub_2664E02A8();
  [a1 encodeObject:v14 forKey:v15];

  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v17 = sub_2664E02A8();
  [a1 encodeObject:v16 forKey:v17];

  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v19 = sub_2664E02A8();
  [a1 encodeObject:v18 forKey:v19];

  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v21 = sub_2664E02A8();
  [a1 encodeObject:v20 forKey:v21];

  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v23 = sub_2664E02A8();
  [a1 encodeObject:v22 forKey:v23];
}

id SiriAudioSelfLogger.VMCPUStats.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_266477338();

  return v4;
}

id SiriAudioSelfLogger.VMCPUStats.init(coder:)(void *a1)
{
  v2 = sub_266477338();

  return v2;
}

id SiriAudioSelfLogger.VMCPUStats.init(mwtId:snapshotStage:cpuTicksUser:cpuTicksSystem:cpuTicksIdle:cpuTicksNice:compressions:decompressions:pageins:faults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
  v18 = sub_2664DE4A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a1, v18);
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = a2;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = a3;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = a4;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = a5;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = a6;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = a7;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = a8;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = a9;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = a10;
  v24.receiver = v10;
  v24.super_class = type metadata accessor for SiriAudioSelfLogger.VMCPUStats();
  v20 = objc_msgSendSuper2(&v24, sel_init);
  (*(v19 + 8))(a1, v18);
  return v20;
}

uint64_t SiriAudioSelfLogger.VMCPUStats.mwtId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
  v4 = sub_2664DE4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SiriAudioSelfLogger.VMCPUStats.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26646FF84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477324(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SiriAudioSelfLogger.MWTMusicMetadata.init()()
{
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser] = 0;
  v1 = &v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_errorResolutionType];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs] = 0;
  v2 = &v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_audioQueueType];
  v3 = type metadata accessor for SiriAudioSelfLogger.MWTMusicMetadata();
  *v2 = 0;
  v2[1] = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_266470308()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664703A0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470498()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266470530(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470628()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664706C0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664707B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266470850(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470948()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664709E0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470AD8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266470B70(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470C68()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266470D00(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470DF8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266470E90(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266470F88()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471020(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471118()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664711B0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664712A8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471340(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471438()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664714D0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664715C8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471660(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471758()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664717F0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664718E8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471980(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471A78()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471B10(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471C08()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471CA0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471D98()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471E30(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266471F28()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266471FC0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664720B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472150(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472248()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664722E0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664723D8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472470(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472568()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472600(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664726F8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472790(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472888()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472920(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472A18()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472AB0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472BA8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472C40(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472D38()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472DD0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266472EC8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266472F60(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473058()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664730F0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664731E8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473280(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473378()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473410(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473508()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664735A0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473698()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473730(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664738B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473950(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473A48()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473AE0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473BD8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473C70(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473D68()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473E00(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266473EF8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266473F90(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474088()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474120(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474218()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664742B0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664743A8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474440(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474538()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664745D0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664746C8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474760(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474858()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664748F0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664749E8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474A80(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474B78()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474C10(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474D08()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474DA0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266474E98()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266474F30(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266475028()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664750C0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664751B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266475250(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266475348()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2664753E0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2664754D8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266475570(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_266475668()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266475700(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2664757BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_2664E02A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_266475850(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_2664758B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2664E02C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_266475938(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_266475994(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

unint64_t sub_266475B5C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477928(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_266475BA8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477B5C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_266475C0C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664780EC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_266475C70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664781E8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t _s16SiriAudioSupport0aB10SelfLoggerC12MWTQueueTypeO8rawValueAESgs5Int32V_tcfC_0(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

id SiriAudioSelfLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAudioSelfLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_266475D90(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_266475DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = sub_2664DE4A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v47 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(MEMORY[0x277D58B50]) init];
  if (v20)
  {
    v48 = v20;
    v21 = [objc_allocWithZone(MEMORY[0x277D58B58]) init];
    if (v21)
    {
      v46 = v21;
      result = [objc_allocWithZone(MEMORY[0x277D58B48]) init];
      if (result)
      {
        if (a1 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v45 = result;
          v43 = a1;
          if (a1 <= 0x7FFFFFFF)
          {
            v23 = objc_opt_self();
            v44 = a2;
            v24 = sub_2664DE478();
            v25 = [v23 derivedIdentifierForComponentName:25 fromSourceIdentifier:v24];

            if (v25)
            {
              sub_2664DE488();

              v26 = v17;
              (*(v17 + 56))(v13, 0, 1, v16);
            }

            else
            {
              v26 = v17;
              (*(v17 + 56))(v13, 1, 1, v16);
            }

            sub_266476340(v13, v15);
            if ((*(v26 + 48))(v15, 1, v16) != 1)
            {
              v32 = v47;
              (*(v26 + 32))(v47, v15, v16);
              v33 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v34 = sub_2664DE478();
              v35 = [v33 initWithNSUUID_];

              v36 = v46;
              [v46 setMwtId_];

              v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v38 = sub_2664DE478();
              v39 = [v37 initWithNSUUID_];

              [v36 setRequestId_];
              v40 = v45;
              [v45 setStepType_];
              v41 = v48;
              [v48 setEventMetadata_];
              [v41 setMwtCheckpointReported_];

              (*(v26 + 8))(v32, v16);
              return v41;
            }

            sub_2662A9238(v15, &qword_280073C60, &unk_2664EE400);
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v27 = v46;
    }

    else
    {
      v27 = v48;
    }
  }

LABEL_14:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v28, v4);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "SiriAudioSelfLogger#createCheckpointClientEvent error creating SELF objects", v31, 2u);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_266476340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2664763B0()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  host_info_outCnt = 4;
  v5 = swift_slowAlloc();
  v6 = MEMORY[0x2667843F0]();
  v7 = host_statistics(v6, 3, v5, &host_info_outCnt);
  if (v7)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v8, v0);
    v9 = sub_2664DFE18();
    v10 = sub_2664E06D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_26629C000, v9, v10, "SiriAudioSelfLogger#hostCPULoadInfo error retrieving CPU load info - kern_result_t = %d", v11, 8u);
      MEMORY[0x266784AD0](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v12 = 0;
  }

  else
  {
    v12 = *v5;
    v13 = *(v5 + 8);
    MEMORY[0x266784AD0](v5, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_2664765F8(uint64_t a1, uint64_t a2)
{
  v115 = a1;
  v131 = *MEMORY[0x277D85DE8];
  v116 = sub_2664DFE38();
  v117 = *(v116 - 8);
  v3 = *(v117 + 64);
  v4 = MEMORY[0x28223BE20](v116);
  v112 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v97 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v97 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v97 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  v21 = sub_2664DE4A8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v114 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v113 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v118 = &v97 - v28;
  v29 = objc_opt_self();
  v30 = sub_2664DE478();
  v31 = [v29 derivedIdentifierForComponentName:25 fromSourceIdentifier:v30];

  if (v31)
  {
    sub_2664DE488();

    (*(v22 + 56))(v18, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v18, 1, 1, v21);
  }

  sub_266476340(v18, v20);
  v32 = (*(v22 + 48))(v20, 1, v21);
  v33 = v118;
  if (v32 == 1)
  {
    sub_2662A9238(v20, &qword_280073C60, &unk_2664EE400);
    v34 = v117;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v116;
    v36 = __swift_project_value_buffer(v116, qword_280F914F0);
    swift_beginAccess();
    (*(v34 + 16))(v8, v36, v35);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "SiriAudioSelfLogger#collectVMCPUStats error getting derived identifier", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    (*(v34 + 8))(v8, v35);
  }

  else
  {
    v40 = v13;
    v41 = *(v22 + 32);
    v111 = v21;
    v41(v118, v20, v21);
    v42 = sub_2664763B0();
    v44 = v116;
    v45 = v117;
    if (v46)
    {
      goto LABEL_12;
    }

    v47 = v42;
    v48 = v43;
    v49 = MEMORY[0x2667843F0]();
    LODWORD(host_info64_outCnt) = 40;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    *host_info64_out = 0u;
    v122 = 0u;
    if (host_statistics64(v49, 4, host_info64_out, &host_info64_outCnt))
    {
LABEL_12:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v50 = __swift_project_value_buffer(v44, qword_280F914F0);
      swift_beginAccess();
      (*(v45 + 16))(v11, v50, v44);
      v51 = sub_2664DFE18();
      v52 = sub_2664E06D8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_26629C000, v51, v52, "SiriAudioSelfLogger#collectVMCPUStats error retrieving VM and/or CPU stats", v53, 2u);
        MEMORY[0x266784AD0](v53, -1, -1);
      }

      (*(v45 + 8))(v11, v44);
      (*(v22 + 8))(v33, v111);
    }

    else
    {
      v109 = v123;
      v110 = v124;
      v106 = *(&v127 + 1);
      v107 = v127;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v104 = HIDWORD(v47);
      v108 = v48;
      v105 = HIDWORD(v48);
      v56 = __swift_project_value_buffer(v44, qword_280F914F0);
      swift_beginAccess();
      v57 = *(v45 + 16);
      v101 = v56;
      v99 = v45 + 16;
      v98 = v57;
      v57(v13, v56, v44);
      v58 = v113;
      v59 = v111;
      v102 = *(v22 + 16);
      v102(v113, a2, v111);
      v60 = v45;
      v61 = sub_2664DFE18();
      v62 = sub_2664E06C8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        host_info64_outCnt = v97;
        *v63 = 136315138;
        sub_2663EF71C();
        v64 = sub_2664E0D48();
        v100 = v40;
        v65 = v64;
        v67 = v66;
        v68 = *(v22 + 8);
        v103 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v113 = v68;
        (v68)(v58, v59);
        v69 = sub_2662A320C(v65, v67, &host_info64_outCnt);

        *(v63 + 4) = v69;
        _os_log_impl(&dword_26629C000, v61, v62, "SiriAudioSelfLogger#emitMWTCheckPoint Collecting VM/CPU snapshot for stage for requestId: %s", v63, 0xCu);
        v70 = v97;
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        MEMORY[0x266784AD0](v70, -1, -1);
        v71 = v63;
        v44 = v116;
        MEMORY[0x266784AD0](v71, -1, -1);

        v72 = *(v117 + 8);
        v73 = v100;
      }

      else
      {

        v74 = *(v22 + 8);
        v103 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v113 = v74;
        (v74)(v58, v59);
        v72 = *(v60 + 8);
        v73 = v40;
      }

      v100 = v72;
      v72(v73, v44);
      v75 = v114;
      v76 = v102;
      v102(v114, v118, v59);
      v77 = v108;
      v78 = type metadata accessor for SiriAudioSelfLogger.VMCPUStats();
      v79 = objc_allocWithZone(v78);
      v76(&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId], v75, v59);
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = v115;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = v47;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = v104;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = v77;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = v105;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = v106;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = v107;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = v109;
      *&v79[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = v110;
      v119.receiver = v79;
      v119.super_class = v78;
      v80 = objc_msgSendSuper2(&v119, sel_init);
      v81 = v113;
      (v113)(v75, v59);
      v82 = objc_opt_self();
      host_info64_outCnt = 0;
      v83 = [v82 archivedDataWithRootObject:v80 requiringSecureCoding:1 error:&host_info64_outCnt];
      v84 = host_info64_outCnt;
      if (v83)
      {
        v85 = sub_2664DE2F8();

        v81(v118, v59);
        result = v85;
        goto LABEL_18;
      }

      v86 = v84;
      v87 = sub_2664DE1A8();

      swift_willThrow();
      v88 = v112;
      v98(v112, v101, v44);
      v89 = v87;
      v90 = sub_2664DFE18();
      v91 = sub_2664E06D8();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        host_info64_outCnt = v93;
        *v92 = 136315138;
        swift_getErrorValue();
        v94 = sub_2664E0DE8();
        v96 = sub_2662A320C(v94, v95, &host_info64_outCnt);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_26629C000, v90, v91, "SiriAudioSelfLogger: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x266784AD0](v93, -1, -1);
        MEMORY[0x266784AD0](v92, -1, -1);

        v100(v88, v116);
      }

      else
      {

        v100(v88, v44);
      }

      (v113)(v118, v111);
    }
  }

  result = 0;
LABEL_18:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for SiriAudioSelfLogger.VMCPUStats()
{
  result = qword_280073EC0;
  if (!qword_280073EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266477310(uint64_t result)
{
  if ((result - 29) < 0xFFFFFFFFFFFFFFE4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_266477324(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id sub_266477338()
{
  v1 = v0;
  v2 = sub_2664DE4A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662C1744(0, &qword_280073ED8, 0x277CCAD78);
  v7 = sub_2664E08C8();
  if (v7)
  {
    v8 = v7;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v9 = sub_2664E08C8();
    if (v9)
    {
      v10 = v9;
      v46 = v2;
      v11 = [v9 integerValue];
      if ((v11 - 1) <= 4 && (v12 = v11, (v13 = sub_2664E08C8()) != 0))
      {
        v14 = v13;
        v50 = sub_2664E08C8();
        if (v50)
        {
          v49 = sub_2664E08C8();
          if (v49)
          {
            v15 = sub_2664E08C8();
            if (v15)
            {
              v48 = v15;
              v51 = v14;
              v52 = v10;
              v16 = sub_2664E08C8();
              if (v16)
              {
                v10 = v16;
                v17 = v8;
                v18 = sub_2664E08C8();
                if (v18)
                {
                  v19 = v18;
                  v20 = sub_2664E08C8();
                  if (v20)
                  {
                    v21 = v20;
                    v47 = v10;
                    v22 = sub_2664E08C8();
                    if (v22)
                    {
                      v23 = v22;
                      v45 = v17;
                      sub_2664DE488();
                      (*(v3 + 32))(&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId], v6, v46);
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = v12;
                      v24 = v51;
                      v25 = [v51 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = v25;
                      v26 = v50;
                      v27 = [v50 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = v27;
                      v28 = v49;
                      v29 = [v49 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = v29;
                      v30 = v48;
                      v31 = [v48 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = v31;
                      v32 = v47;
                      v33 = [v47 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = v33;
                      v34 = [v19 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = v34;
                      v35 = [v21 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = v35;
                      v36 = [v23 unsignedLongLongValue];

                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = v36;
                      v37 = type metadata accessor for SiriAudioSelfLogger.VMCPUStats();
                      v53.receiver = v1;
                      v53.super_class = v37;
                      return objc_msgSendSuper2(&v53, sel_init);
                    }

                    v17 = v51;
                    v44 = v52;
                    v42 = v49;
                    v43 = v50;
                    v40 = v47;
                    v41 = v48;
                    v39 = v19;
                    v10 = v21;
                  }

                  else
                  {
                    v44 = v8;
                    v43 = v51;
                    v17 = v52;
                    v41 = v49;
                    v42 = v50;
                    v40 = v48;
                    v39 = v10;
                    v10 = v19;
                  }
                }

                else
                {
                  v42 = v51;
                  v43 = v52;
                  v40 = v49;
                  v41 = v50;
                  v39 = v48;
                }
              }

              else
              {
                v43 = v8;
                v41 = v51;
                v42 = v52;
                v39 = v49;
                v40 = v50;
                v10 = v48;
              }
            }

            else
            {
              v42 = v8;
              v41 = v10;
              v40 = v14;
              v10 = v49;
              v39 = v50;
            }
          }

          else
          {
            v41 = v8;
            v40 = v10;
            v39 = v14;
            v10 = v50;
          }
        }

        else
        {
          v40 = v8;
          v39 = v10;
          v10 = v14;
        }
      }

      else
      {
        v39 = v8;
      }
    }

    else
    {
      v10 = v8;
    }
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

unint64_t sub_2664778A0(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 == 4)
  {
    v1 = 0;
    v2 = 4;
    return v2 | (v1 << 32);
  }

  if (a1 == 3)
  {
    v1 = 0;
    v2 = 3;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_266477928(unsigned int a1)
{
  v1 = 0;
  v2 = a1;
  switch(a1)
  {
    case 0u:
      v2 = 0;
      v1 = 0;
      break;
    case 1u:
      return v2 | (v1 << 32);
    case 2u:
      v1 = 0;
      v2 = 2;
      break;
    case 3u:
      v1 = 0;
      v2 = 3;
      break;
    case 4u:
      v1 = 0;
      v2 = 4;
      break;
    case 5u:
      v1 = 0;
      v2 = 5;
      break;
    case 6u:
      v1 = 0;
      v2 = 6;
      break;
    case 7u:
      v1 = 0;
      v2 = 7;
      break;
    case 8u:
      v1 = 0;
      v2 = 8;
      break;
    case 9u:
      v1 = 0;
      v2 = 9;
      break;
    case 0xAu:
      v1 = 0;
      v2 = 10;
      break;
    case 0xBu:
      v1 = 0;
      v2 = 11;
      break;
    case 0xCu:
      v1 = 0;
      v2 = 12;
      break;
    case 0xDu:
      v1 = 0;
      v2 = 13;
      break;
    case 0xEu:
      v1 = 0;
      v2 = 14;
      break;
    case 0xFu:
      v1 = 0;
      v2 = 15;
      break;
    case 0x10u:
      v1 = 0;
      v2 = 16;
      break;
    case 0x11u:
      v1 = 0;
      v2 = 17;
      break;
    case 0x12u:
      v1 = 0;
      v2 = 18;
      break;
    case 0x13u:
      v1 = 0;
      v2 = 19;
      break;
    case 0x14u:
      v1 = 0;
      v2 = 20;
      break;
    case 0x15u:
      v1 = 0;
      v2 = 21;
      break;
    case 0x16u:
      v1 = 0;
      v2 = 22;
      break;
    case 0x17u:
      v1 = 0;
      v2 = 23;
      break;
    case 0x18u:
      v1 = 0;
      v2 = 24;
      break;
    case 0x19u:
      v1 = 0;
      v2 = 25;
      break;
    case 0x1Au:
      v1 = 0;
      v2 = 26;
      break;
    case 0x1Bu:
      v1 = 0;
      v2 = 27;
      break;
    case 0x1Cu:
      v1 = 0;
      v2 = 28;
      break;
    case 0x1Du:
      v1 = 0;
      v2 = 29;
      break;
    case 0x1Eu:
      v1 = 0;
      v2 = 30;
      break;
    case 0x1Fu:
      v1 = 0;
      v2 = 31;
      break;
    case 0x20u:
      v1 = 0;
      v2 = 32;
      break;
    case 0x21u:
      v1 = 0;
      v2 = 33;
      break;
    case 0x22u:
      v1 = 0;
      v2 = 34;
      break;
    case 0x23u:
      v1 = 0;
      v2 = 35;
      break;
    case 0x24u:
      v1 = 0;
      v2 = 36;
      break;
    case 0x25u:
      v1 = 0;
      v2 = 37;
      break;
    case 0x26u:
      v1 = 0;
      v2 = 38;
      break;
    case 0x27u:
      v1 = 0;
      v2 = 39;
      break;
    case 0x28u:
      v1 = 0;
      v2 = 40;
      break;
    default:
      v2 = 0;
      v1 = 1;
      break;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_266477B5C(unsigned int a1)
{
  v1 = a1;
  v2 = 0;
  switch(a1)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
      v2 = 0;
      break;
    case 0x4Fu:
      return v1 | (v2 << 32);
    case 0x50u:
      v2 = 0;
      v1 = 80;
      break;
    case 0x51u:
      v2 = 0;
      v1 = 81;
      break;
    case 0x52u:
      v2 = 0;
      v1 = 82;
      break;
    case 0x53u:
      v2 = 0;
      v1 = 83;
      break;
    case 0x54u:
      v2 = 0;
      v1 = 84;
      break;
    case 0x55u:
      v2 = 0;
      v1 = 85;
      break;
    case 0x56u:
      v2 = 0;
      v1 = 86;
      break;
    case 0x57u:
      v2 = 0;
      v1 = 87;
      break;
    case 0x58u:
      v2 = 0;
      v1 = 88;
      break;
    case 0x59u:
      v2 = 0;
      v1 = 89;
      break;
    case 0x5Au:
      v2 = 0;
      v1 = 90;
      break;
    case 0x5Bu:
      v2 = 0;
      v1 = 91;
      break;
    case 0x5Cu:
      v2 = 0;
      v1 = 92;
      break;
    case 0x5Du:
      v2 = 0;
      v1 = 93;
      break;
    case 0x5Eu:
      v2 = 0;
      v1 = 94;
      break;
    case 0x5Fu:
      v2 = 0;
      v1 = 95;
      break;
    case 0x60u:
      v2 = 0;
      v1 = 96;
      break;
    case 0x61u:
      v2 = 0;
      v1 = 97;
      break;
    case 0x62u:
      v2 = 0;
      v1 = 98;
      break;
    case 0x63u:
      v2 = 0;
      v1 = 99;
      break;
    case 0x64u:
      v2 = 0;
      v1 = 100;
      break;
    case 0x65u:
      v2 = 0;
      v1 = 101;
      break;
    case 0x66u:
      v2 = 0;
      v1 = 102;
      break;
    case 0x67u:
      v2 = 0;
      v1 = 103;
      break;
    case 0x68u:
      v2 = 0;
      v1 = 104;
      break;
    case 0x69u:
      v2 = 0;
      v1 = 105;
      break;
    case 0x6Au:
      v2 = 0;
      v1 = 106;
      break;
    case 0x6Bu:
      v2 = 0;
      v1 = 107;
      break;
    case 0x6Cu:
      v2 = 0;
      v1 = 108;
      break;
    case 0x6Du:
      v2 = 0;
      v1 = 109;
      break;
    case 0x6Eu:
      v2 = 0;
      v1 = 110;
      break;
    case 0x6Fu:
      v2 = 0;
      v1 = 111;
      break;
    case 0x70u:
      v2 = 0;
      v1 = 112;
      break;
    case 0x71u:
      v2 = 0;
      v1 = 113;
      break;
    case 0x72u:
      v2 = 0;
      v1 = 114;
      break;
    case 0x73u:
      v2 = 0;
      v1 = 115;
      break;
    case 0x74u:
      v2 = 0;
      v1 = 116;
      break;
    case 0x75u:
      v2 = 0;
      v1 = 117;
      break;
    case 0x76u:
      v2 = 0;
      v1 = 118;
      break;
    case 0x77u:
      v2 = 0;
      v1 = 119;
      break;
    case 0x78u:
      v2 = 0;
      v1 = 120;
      break;
    case 0x79u:
      v2 = 0;
      v1 = 121;
      break;
    case 0x7Au:
      v2 = 0;
      v1 = 122;
      break;
    case 0x7Bu:
      v2 = 0;
      v1 = 123;
      break;
    case 0x7Cu:
      v2 = 0;
      v1 = 124;
      break;
    case 0x7Du:
      v2 = 0;
      v1 = 125;
      break;
    case 0x7Eu:
      v2 = 0;
      v1 = 126;
      break;
    case 0x7Fu:
      v2 = 0;
      v1 = 127;
      break;
    default:
      v2 = 0;
      switch(a1)
      {
        case 0x80u:
          return v1 | (v2 << 32);
        case 0x81u:
          v2 = 0;
          v1 = 129;
          break;
        case 0x82u:
          v2 = 0;
          v1 = 130;
          break;
        case 0x83u:
          v2 = 0;
          v1 = 131;
          break;
        case 0x84u:
          v2 = 0;
          v1 = 132;
          break;
        case 0x85u:
          v2 = 0;
          v1 = 133;
          break;
        case 0x86u:
          v2 = 0;
          v1 = 134;
          break;
        case 0x87u:
          v2 = 0;
          v1 = 135;
          break;
        case 0x88u:
          v2 = 0;
          v1 = 136;
          break;
        case 0x89u:
          v2 = 0;
          v1 = 137;
          break;
        case 0x8Au:
          v2 = 0;
          v1 = 138;
          break;
        case 0x8Bu:
          v2 = 0;
          v1 = 139;
          break;
        case 0x8Cu:
          v2 = 0;
          v1 = 140;
          break;
        case 0x8Du:
          v2 = 0;
          v1 = 141;
          break;
        case 0x8Eu:
          v2 = 0;
          v1 = 142;
          break;
        case 0x8Fu:
          v2 = 0;
          v1 = 143;
          break;
        case 0x90u:
          v2 = 0;
          v1 = 144;
          break;
        case 0x91u:
          v2 = 0;
          v1 = 145;
          break;
        case 0x92u:
          v2 = 0;
          v1 = 146;
          break;
        case 0x93u:
          v2 = 0;
          v1 = 147;
          break;
        case 0x94u:
          v2 = 0;
          v1 = 148;
          break;
        case 0x95u:
          v2 = 0;
          v1 = 149;
          break;
        case 0x96u:
          v2 = 0;
          v1 = 150;
          break;
        case 0x97u:
          v2 = 0;
          v1 = 151;
          break;
        case 0x98u:
          v2 = 0;
          v1 = 152;
          break;
        case 0x99u:
          v2 = 0;
          v1 = 153;
          break;
        case 0x9Au:
          v2 = 0;
          v1 = 154;
          break;
        case 0x9Bu:
          v2 = 0;
          v1 = 155;
          break;
        case 0x9Cu:
          v2 = 0;
          v1 = 156;
          break;
        case 0x9Du:
          v2 = 0;
          v1 = 157;
          break;
        case 0x9Eu:
          v2 = 0;
          v1 = 158;
          break;
        case 0x9Fu:
          v2 = 0;
          v1 = 159;
          break;
        case 0xA0u:
          v2 = 0;
          v1 = 160;
          break;
        case 0xA1u:
          v2 = 0;
          v1 = 161;
          break;
        case 0xA2u:
          v2 = 0;
          v1 = 162;
          break;
        case 0xA3u:
          v2 = 0;
          v1 = 163;
          break;
        case 0xA4u:
          v2 = 0;
          v1 = 164;
          break;
        case 0xA5u:
          v2 = 0;
          v1 = 165;
          break;
        case 0xA6u:
          v2 = 0;
          v1 = 166;
          break;
        case 0xA7u:
          v2 = 0;
          v1 = 167;
          break;
        case 0xA8u:
          v2 = 0;
          v1 = 168;
          break;
        case 0xA9u:
          v2 = 0;
          v1 = 169;
          break;
        case 0xAAu:
          v2 = 0;
          v1 = 170;
          break;
        case 0xABu:
          v2 = 0;
          v1 = 171;
          break;
        case 0xACu:
          v2 = 0;
          v1 = 172;
          break;
        case 0xADu:
          v2 = 0;
          v1 = 173;
          break;
        case 0xAEu:
          v2 = 0;
          v1 = 174;
          break;
        default:
          v1 = 0;
          v2 = 1;
          break;
      }

      break;
  }

  return v1 | (v2 << 32);
}

unint64_t sub_266478050(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0;
        v2 = 3;
        return v2 | (v1 << 32);
      case 4:
        v1 = 0;
        v2 = 4;
        return v2 | (v1 << 32);
      case 5:
        v1 = 0;
        v2 = 5;
        return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 == 1)
  {
    v1 = 0;
    v2 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_2664780EC(unsigned int a1)
{
  v1 = 0;
  v2 = a1;
  switch(a1)
  {
    case 0u:
      v2 = 0;
      v1 = 0;
      break;
    case 1u:
      return v2 | (v1 << 32);
    case 2u:
      v1 = 0;
      v2 = 2;
      break;
    case 3u:
      v1 = 0;
      v2 = 3;
      break;
    case 4u:
      v1 = 0;
      v2 = 4;
      break;
    case 5u:
      v1 = 0;
      v2 = 5;
      break;
    case 6u:
      v1 = 0;
      v2 = 6;
      break;
    case 7u:
      v1 = 0;
      v2 = 7;
      break;
    case 8u:
      v1 = 0;
      v2 = 8;
      break;
    case 9u:
      v1 = 0;
      v2 = 9;
      break;
    case 0xAu:
      v1 = 0;
      v2 = 10;
      break;
    case 0xBu:
      v1 = 0;
      v2 = 11;
      break;
    case 0xCu:
      v1 = 0;
      v2 = 12;
      break;
    case 0xDu:
      v1 = 0;
      v2 = 13;
      break;
    case 0xEu:
      v1 = 0;
      v2 = 14;
      break;
    default:
      v2 = 0;
      v1 = 1;
      break;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_2664781E8(int a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v1 = 0;
        v2 = 2;
      }

      else
      {
        v1 = 0;
        if (a1 == 3)
        {
          v2 = 3;
        }

        else
        {
          v2 = 4;
        }
      }

      return v2 | (v1 << 32);
    }

    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_22:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        v1 = 0;
        v2 = 7;
        return v2 | (v1 << 32);
      case 8:
        v1 = 0;
        v2 = 8;
        return v2 | (v1 << 32);
      case 9:
        v1 = 0;
        v2 = 9;
        return v2 | (v1 << 32);
    }

    goto LABEL_22;
  }

  v1 = 0;
  if (a1 == 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_2664782E4(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v2 = 0;
        v1 = 0;
        return v2 | (v1 << 32);
      case 1:
        v1 = 0;
        v2 = 1;
        return v2 | (v1 << 32);
      case 2:
        v1 = 0;
        v2 = 2;
        return v2 | (v1 << 32);
    }

LABEL_13:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v1 = 0;
      v2 = 5;
      return v2 | (v1 << 32);
    }

    if (a1 == 6)
    {
      v1 = 0;
      v2 = 6;
      return v2 | (v1 << 32);
    }

    goto LABEL_13;
  }

  v1 = 0;
  if (a1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_26647839C(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v1 = 0;
      v2 = 3;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

unint64_t sub_266478438()
{
  result = qword_280073E38;
  if (!qword_280073E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E38);
  }

  return result;
}

unint64_t sub_266478490()
{
  result = qword_280073E40;
  if (!qword_280073E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E40);
  }

  return result;
}

unint64_t sub_2664784E8()
{
  result = qword_280073E48;
  if (!qword_280073E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E48);
  }

  return result;
}

unint64_t sub_266478540()
{
  result = qword_280073E50;
  if (!qword_280073E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E50);
  }

  return result;
}

unint64_t sub_266478598()
{
  result = qword_280073E58;
  if (!qword_280073E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E58);
  }

  return result;
}

unint64_t sub_2664785F0()
{
  result = qword_280073E60;
  if (!qword_280073E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E60);
  }

  return result;
}

unint64_t sub_266478648()
{
  result = qword_280073E68;
  if (!qword_280073E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E68);
  }

  return result;
}

unint64_t sub_2664786A0()
{
  result = qword_280073E70;
  if (!qword_280073E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E70);
  }

  return result;
}

unint64_t sub_2664786F8()
{
  result = qword_280073E78;
  if (!qword_280073E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E78);
  }

  return result;
}

unint64_t sub_266478750()
{
  result = qword_280073E80;
  if (!qword_280073E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E80);
  }

  return result;
}

unint64_t sub_2664787A8()
{
  result = qword_280073E88;
  if (!qword_280073E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E88);
  }

  return result;
}

unint64_t sub_266478800()
{
  result = qword_280073E90;
  if (!qword_280073E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E90);
  }

  return result;
}

unint64_t sub_266478858()
{
  result = qword_280073E98;
  if (!qword_280073E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E98);
  }

  return result;
}

unint64_t sub_2664788B0()
{
  result = qword_280073EA0;
  if (!qword_280073EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EA0);
  }

  return result;
}

unint64_t sub_266478908()
{
  result = qword_280073EA8;
  if (!qword_280073EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EA8);
  }

  return result;
}

unint64_t sub_266478960()
{
  result = qword_280073EB0;
  if (!qword_280073EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EB0);
  }

  return result;
}

unint64_t sub_2664789B8()
{
  result = qword_280073EB8;
  if (!qword_280073EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EB8);
  }

  return result;
}

uint64_t keypath_get_39Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_get_45Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_46Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_set_40Tm(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_107Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_266478D78()
{
  result = sub_2664DE4A8();
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

uint64_t static DispatchQueues.serialQueue(_:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664E0788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  v11 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(a1, a2, a3, v10);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_26647B894()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  v12[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0x636974796C616E41, 0xE900000000000073, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F90D38 = v10;
  return result;
}

uint64_t sub_26647BA44()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(1953719636, 0xE400000000000000, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073EE0 = v10;
  return result;
}

uint64_t sub_26647BBF4()
{
  v0 = sub_2664E00B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E0788();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  sub_2664E0078();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001ELL, 0x80000002664FA420, v4, v9);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073EE8 = v10;
  return result;
}

id sub_26647BDC8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t static DispatchQueues.getGlobalQueue(qos:)()
{
  v0 = sub_2664E0058();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664259E0();
  sub_2664E00A8();
  v5 = sub_2664E0808();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v7 = sub_2664E07B8();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E0058();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664E0788();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v49 - v17;
  v18 = sub_2664E00B8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v59 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  v25 = sub_2664DFE38();
  v66 = *(v25 - 8);
  v26 = *(v66 + 64);
  MEMORY[0x28223BE20](v25);
  v64 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_2664E0B28();

  v71 = 0xD000000000000015;
  v72 = 0x80000002664FA440;
  MEMORY[0x2667833B0](a1, a2);
  v29 = v71;
  v28 = v72;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v25, qword_280F914F0);
  swift_beginAccess();
  (*(v66 + 16))(v64, v30, v25);
  v56 = v25;
  v31 = *(v19 + 16);
  v62 = a3;
  v58 = v31;
  v31(v24, a3, v18);
  v55 = v18;
  v57 = *(v67 + 16);
  v57(v65, v69, v68);

  v32 = sub_2664DFE18();
  v33 = v28;
  v34 = sub_2664E06C8();

  if (os_log_type_enabled(v32, v34))
  {
    v35 = swift_slowAlloc();
    v51 = v7;
    v36 = v35;
    v50 = swift_slowAlloc();
    v70 = v50;
    *v36 = 136315650;
    *(v36 + 4) = sub_2662A320C(v29, v33, &v70);
    *(v36 + 12) = 1024;
    v37 = v52;
    v49 = v33;
    sub_2664E00A8();
    v38 = sub_2664E0048();
    (*(v53 + 8))(v37, v54);
    v39 = v55;
    (*(v19 + 8))(v24, v55);
    *(v36 + 14) = v38;
    *(v36 + 18) = 2048;
    v40 = v65;
    v41 = sub_2664E0778();
    v42 = v40;
    v43 = v68;
    (*(v67 + 8))(v42, v68);
    *(v36 + 20) = v41;
    _os_log_impl(&dword_26629C000, v32, v34, "Creating DispatchQueue: %s with qos: %u and attributes: %llu", v36, 0x1Cu);
    v44 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v44, -1, -1);
    v45 = v36;
    v7 = v51;
    MEMORY[0x266784AD0](v45, -1, -1);

    (*(v66 + 8))(v64, v56);
    v46 = v39;
  }

  else
  {
    v47 = v68;
    (*(v67 + 8))(v65, v68);
    v46 = v55;
    (*(v19 + 8))(v24, v55);

    (*(v66 + 8))(v64, v56);
    v43 = v47;
  }

  sub_2664259E0();
  v58(v59, v62, v46);
  v57(v60, v69, v43);
  (*(v63 + 104))(v61, *MEMORY[0x277D85260], v7);
  return sub_2664E07F8();
}

uint64_t AirPlayRouteProvider.__allocating_init(refId:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for AirPlayRouteSetupContext();
  v5 = static AirPlayRouteSetupContext.shared(refId:)(a1, a2);

  *(v4 + 16) = v5;
  return v4;
}

uint64_t sub_26647C654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t), uint64_t a9)
{
  v21[1] = a6;
  v22 = a5;
  v23 = a4;
  v24 = a9;
  v25 = a8;
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D83B88];
  *(v16 + 16) = xmmword_2664E36F0;
  v18 = MEMORY[0x277D83C10];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = a7;
  sub_2664DFDC8();

  v25(&v26, v19);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v11 + 8))(v14, v10);
  return v26;
}

uint64_t AirPlayRouteProvider.init(refId:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for AirPlayRouteSetupContext();
  v6 = static AirPlayRouteSetupContext.shared(refId:)(a1, a2);

  *(v3 + 16) = v6;
  return v3;
}

uint64_t sub_26647C8C8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_2664E01D8();
    v16 = sub_2662A320C(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26629C000, v10, v11, "AirPlayRouteProvider#decodeHashedRouteUIDs Decoded hashedRouteUIDs: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = *(a1 + 16);
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = sub_26640C820(*(a1 + 16), 0);
  v19 = sub_266410DDC(&v23, v18 + 4, v17, a1);

  sub_2662B793C();
  if (v19 != v17)
  {
    __break(1u);
LABEL_8:
    v18 = MEMORY[0x277D84F90];
  }

  v22(v18);
}

uint64_t sub_26647CB88(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a2(0);
  }

  v36 = v9;
  v37 = a3;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v34 = v7;
  v35 = a2;
  do
  {
    a2 = (a1 + 40 + 16 * v12);
    v7 = v12;
    while (1)
    {
      if (v7 >= v11)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_28;
      }

      v15 = *(a2 - 1);
      v14 = *a2;
      sub_2664DFD18();

      if (v15 != sub_2664DFD08() || v14 != v16)
      {
        break;
      }

LABEL_6:

      ++v7;
      a2 = (a2 + 16);
      if (v12 == v11)
      {
        v7 = v34;
        a2 = v35;
        goto LABEL_21;
      }
    }

    v17 = sub_2664E0D88();

    if (v17)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2662FCF24(0, *(v13 + 16) + 1, 1);
      v13 = v40;
    }

    v7 = v34;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      sub_2662FCF24((v19 > 1), v20 + 1, 1);
      v21 = v20 + 1;
      v13 = v40;
    }

    *(v13 + 16) = v21;
    v22 = v13 + 16 * v20;
    *(v22 + 32) = v15;
    *(v22 + 40) = v14;
    a2 = v35;
  }

  while (v12 != v11);
LABEL_21:
  if (qword_280F914E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v24 = v36;
  v25 = __swift_project_value_buffer(v36, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v38, v25, v24);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06B8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x2667834D0](v13, MEMORY[0x277D837D0]);
    v32 = sub_2662A320C(v30, v31, &v39);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_26629C000, v26, v27, "AirPlayRouteProvider#getRouteIdsFromIntent filtered routeIds: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x266784AD0](v29, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v7 + 8))(v38, v24);
  if (!*(v13 + 16))
  {

    v13 = 0;
  }

  a2(v13);
}

void sub_26647CF84(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v80 - v15;
  v17 = sub_2664DFE08();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4[2];
  if (v23)
  {
    v82 = v22;
    v83 = v20;
    v85 = v19;
    v86 = a3;
    v84 = v8;
    swift_beginAccess();
    v24 = *(v23 + 48);
    *(v23 + 48) = a1;

    v26 = a2[3];
    v25 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    v27 = *(v25 + 8);
    v87 = a1;

    if (v27(v26, v25))
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v16, v28, v9);
      v29 = v87;

      v30 = sub_2664DFE18();
      v31 = sub_2664E06B8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v89[0] = v33;
        *v32 = 136315138;
        v34 = MEMORY[0x2667834D0](v29, MEMORY[0x277D837D0]);
        v36 = sub_2662A320C(v34, v35, v89);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_26629C000, v30, v31, "AirPlayRouteProvider#startAirplayDiscovery Skipping route setup on HomePod (Bolt and 1p are handling route setup): %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x266784AD0](v33, -1, -1);
        MEMORY[0x266784AD0](v32, -1, -1);
      }

      (*(v10 + 8))(v16, v9);
      LOBYTE(v89[0]) = 5;
      sub_266481BC0(v89);

      return;
    }

    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v41 = qword_280F91470;
    v90[3] = type metadata accessor for SiriKitTaskLoggingProvider();
    v90[4] = &protocol witness table for SiriKitTaskLoggingProvider;
    v90[0] = v41;
    type metadata accessor for PThreadMutex();
    swift_allocObject();

    v42 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001ALL, 0x80000002664FA460, 1, v90);
    swift_beginAccess();
    v43 = *(v23 + 136);
    *(v23 + 136) = v42;

    sub_2662A98AC();

    v44 = v86;
    v45 = v87;
    if (*(v23 + 40) != 3)
    {
      LOBYTE(v89[0]) = 2;
      sub_266481BC0(v89);
    }

    v46 = *(v45 + 16);
    v47 = swift_beginAccess();
    *(v23 + 96) = v46;
    *(v23 + 104) = 0;
    MEMORY[0x28223BE20](v47);
    v79 = v23;
    v48 = sub_26647C654("siriAirPlaySetAudioSessionCategory", 34, 2, "deviceIdCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 73, 2, v46, sub_2664831FC, &v76);
    v49 = v48;
    if (*(v23 + 40) == 6 || !v48)
    {
      v88[0] = 6;
      sub_266481BC0(v88);
      if (!*(v23 + 136))
      {
        goto LABEL_25;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v48);
      v78 = v45;
      v79 = v44;
      v49 = v49;
      v50 = sub_26647C654("siriAirPlayReconnaissanceSessionCreateWithEndpointFeatures", 58, 2, "deviceIdCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 73, 2, v46, sub_266483204, &v76);
      if (v50)
      {
        v51 = v50;
        v81 = v49;
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        v52 = qword_280F91D48;
        v53 = v82;
        v54 = v52;
        sub_2664DFDE8();
        sub_2664E0848();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v55 = swift_allocObject();
        v56 = MEMORY[0x277D83B88];
        *(v55 + 16) = xmmword_2664E36F0;
        v57 = MEMORY[0x277D83C10];
        *(v55 + 56) = v56;
        *(v55 + 64) = v57;
        *(v55 + 32) = v46;
        v78 = v55;
        v77 = 2;
        v76 = 73;
        v80[1] = v54;
        sub_2664DFDC8();

        v58 = [v81 opaqueSessionID];
        v59 = v44[3];
        v60 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v59);
        (*(v60 + 80))(v51, v58, v59, v60);
        sub_2664E0838();
        sub_2664DFDD8();
        v61 = *(v83 + 8);
        v62 = v85;
        v61(v53, v85);
        v63 = v44[3];
        v64 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v63);
        (*(v64 + 88))(v51, 0, v63, v64);
        v65 = v44[3];
        v66 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v65);
        (*(v66 + 96))(v51, 1, v65, v66);
        sub_2664E0848();
        sub_2664DFDF8();
        v78 = MEMORY[0x277D84F90];
        v77 = 2;
        v76 = 21;
        sub_2664DFDC8();
        v61(v53, v62);
        v67 = v44[3];
        v68 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v67);
        v69 = swift_allocObject();
        v69[2] = v87;
        v69[3] = v23;
        v69[4] = v84;
        v70 = *(v68 + 104);

        v70(v51, sub_26648320C, v69, v67, v68, 5.0);

        v71 = v81;

        return;
      }

      v88[0] = 6;
      sub_266481BC0(v88);
      v72 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v73 = sub_2664E02A8();
      v74 = [v72 initWithDomain:v73 code:0 userInfo:0];

      swift_beginAccess();
      v75 = *(v23 + 64);
      *(v23 + 64) = v74;

      if (!*(v23 + 136))
      {
LABEL_25:

        return;
      }
    }

    sub_2662AA89C();

    goto LABEL_25;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v14, v37, v9);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06D8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_26629C000, v38, v39, "AirPlayRouteProvider#startAirplayDiscovery Unable to retrieve AirPlayRouteSetupContext", v40, 2u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  (*(v10 + 8))(v14, v9);
}

uint64_t sub_26647DA34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v26 = v6[2];
  v26(v12, v13, v5);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v10;
    v17 = v5;
    v18 = v6;
    v19 = a3;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "AirPlayRouteProvider#startAirplayDiscovery Configuring audio session", v16, 2u);
    v21 = v20;
    a3 = v19;
    v6 = v18;
    v5 = v17;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v27 = v6[1];
  v27(v12, v5);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  result = (*(v23 + 64))(v22, v23);
  *a3 = result;
  return result;
}

void sub_26647DE5C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = a2;
    v17 = v16;
    v29 = v16;
    *v15 = 136315138;
    v18 = MEMORY[0x2667834D0](a1, MEMORY[0x277D837D0]);
    v20 = sub_2662A320C(v18, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "AirPlayRouteProvider#startAirplayDiscovery Creating reconnaissance session for airplay ids: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v21 = v17;
    a2 = v27;
    MEMORY[0x266784AD0](v21, -1, -1);
    v22 = v15;
    a3 = v28;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v23 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = sub_2664E0488();
  v26 = (*(v24 + 72))(v25, 1, v23, v24);

  *a3 = v26;
}

void sub_26647E0F0(const __CFArray *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v132 = a3;
  v135 = sub_2664DFE38();
  v136 = *(v135 - 8);
  v8 = v136[8];
  v9 = MEMORY[0x28223BE20](v135);
  v134 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v125 = v119 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v126 = v119 - v14;
  MEMORY[0x28223BE20](v13);
  v133 = v119 - v15;
  v16 = sub_2664DFE08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Count = CFArrayGetCount(a1);
  v22 = *(a4 + 16);
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2664E34E0;
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v26;
  v128 = v22;
  *(v24 + 32) = v22;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 72) = Count;
  sub_2664DFDF8();
  v130 = v23;
  sub_2664DFDC8();

  v29 = *(v17 + 8);
  v28 = v17 + 8;
  v27 = v29;
  v131 = v20;
  v29(v20, v16);
  swift_beginAccess();
  v129 = Count;
  *(a5 + 112) = Count;
  *(a5 + 120) = 0;
  v30 = a5;
  v31 = v135;
  v32 = v134;
  v33 = v132;
  if (v132)
  {
    v121 = v27;
    v122 = v28;
    v123 = v16;
    v124 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v31, qword_280F914F0);
    swift_beginAccess();
    v35 = v136[2];
    v120 = v34;
    v119[1] = v136 + 2;
    v119[0] = v35;
    v35(v133, v34, v31);
    v36 = v33;
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v31;
      v41 = swift_slowAlloc();
      *v39 = 138412290;
      type metadata accessor for CFError(0);
      sub_2662A3E08(&qword_2800726B0, type metadata accessor for CFError);
      swift_allocError();
      *v42 = v36;
      v43 = v36;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v44;
      *v41 = v44;
      _os_log_impl(&dword_26629C000, v37, v38, "AirPlayRouteProvider#startAirplayDiscovery Error searching for output devices: %@", v39, 0xCu);
      sub_2662E4324(v41);
      v45 = v41;
      v31 = v40;
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v46 = v136 + 1;
    v132 = v136[1];
    v132(v133, v31);
    type metadata accessor for CFError(0);
    sub_2662A3E08(&qword_2800726B0, type metadata accessor for CFError);
    v47 = swift_allocError();
    *v48 = v36;
    swift_beginAccess();
    v49 = *(a5 + 64);
    *(v30 + 64) = v47;
    v50 = v36;
    v51 = v47;

    v52 = v47;
    v133 = sub_2664DE198();

    v53 = sub_2664DE198();
    v54 = [v53 code];
    v55 = [v53 domain];
    v56 = sub_2664E02C8();
    v58 = v131;
    if (!*MEMORY[0x277D27AE0])
    {
      __break(1u);
      return;
    }

    v59 = v56;
    v60 = v57;

    if (v59 == sub_2664E02C8() && v60 == v61)
    {

      v62 = v54 == 26;
      v63 = v129;
      if (!v62 || v129 <= 0)
      {
LABEL_21:
        v83 = v133;
        v84 = [v133 code];
        v85 = [v83 domain];
        v86 = sub_2664E02C8();
        v88 = v87;

        sub_2664E0858();
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_2664E34D0;
        v90 = MEMORY[0x277D83B88];
        *(v89 + 56) = MEMORY[0x277D83B88];
        v91 = MEMORY[0x277D83C10];
        *(v89 + 64) = MEMORY[0x277D83C10];
        *(v89 + 72) = v63;
        *(v89 + 32) = v128;
        *(v89 + 96) = v90;
        *(v89 + 104) = v91;
        *(v89 + 136) = v90;
        *(v89 + 144) = v91;
        *(v89 + 112) = v84;
        *(v89 + 176) = MEMORY[0x277D837D0];
        *(v89 + 184) = sub_2662C4094();
        *(v89 + 152) = v86;
        *(v89 + 160) = v88;
        sub_2664DFDF8();
        sub_2664DFDC8();

        v121(v58, v123);
        v92 = v125;
        v93 = v135;
        (v119[0])(v125, v120, v135);
        v94 = v47;
        v95 = sub_2664DFE18();
        v96 = sub_2664E06D8();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *v97 = 138412290;
          v99 = v47;
          v100 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 4) = v100;
          *v98 = v100;
          _os_log_impl(&dword_26629C000, v95, v96, "AirPlayRouteProvider#searchOutputDevices Failed to search for output devices: %@", v97, 0xCu);
          sub_2662E4324(v98);
          MEMORY[0x266784AD0](v98, -1, -1);
          MEMORY[0x266784AD0](v97, -1, -1);
        }

        v132(v92, v93);
        swift_beginAccess();
        if (*(v30 + 136))
        {
          v101 = *(v30 + 136);

          sub_2662AA89C();
        }

        v138[0] = 6;
        sub_266481BC0(v138);

        return;
      }
    }

    else
    {
      v64 = sub_2664E0D88();

      v62 = v54 == 26;
      v63 = v129;
      if (!v62 || (v64 & 1) == 0 || v129 < 1)
      {
        goto LABEL_21;
      }
    }

    v129 = v46;
    swift_beginAccess();
    *(v30 + 72) = 1;
    v65 = v133;
    v66 = [v133 code];
    v67 = [v65 domain];
    v68 = sub_2664E02C8();
    v70 = v69;

    sub_2664E0858();
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2664E34D0;
    v72 = MEMORY[0x277D83B88];
    *(v71 + 56) = MEMORY[0x277D83B88];
    v73 = MEMORY[0x277D83C10];
    *(v71 + 64) = MEMORY[0x277D83C10];
    *(v71 + 72) = v63;
    *(v71 + 32) = v128;
    *(v71 + 96) = v72;
    *(v71 + 104) = v73;
    *(v71 + 136) = v72;
    *(v71 + 144) = v73;
    *(v71 + 112) = v66;
    *(v71 + 176) = MEMORY[0x277D837D0];
    *(v71 + 184) = sub_2662C4094();
    *(v71 + 152) = v68;
    *(v71 + 160) = v70;
    sub_2664DFDF8();
    sub_2664DFDC8();

    v121(v58, v123);
    v74 = v126;
    v31 = v135;
    (v119[0])(v126, v120, v135);
    v75 = v124;
    v76 = v124;
    v77 = sub_2664DFE18();
    v78 = sub_2664E06D8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v76;
      *v80 = v75;
      v81 = v76;
      _os_log_impl(&dword_26629C000, v77, v78, "AirPlayRouteProvider#searchOutputDevices Timed out with partial discovery. We will fall through and use these partial devices, following the existing apple music behavior. Found devices: %@", v79, 0xCu);
      sub_2662E4324(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      v82 = v79;
      v74 = v126;
      MEMORY[0x266784AD0](v82, -1, -1);
    }

    else
    {
    }

    v32 = v134;
    v132(v74, v31);
    a1 = v124;
  }

  swift_beginAccess();
  v102 = *(v30 + 128);
  *(v30 + 128) = a1;

  v103 = qword_280F914E8;
  v104 = a1;
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = __swift_project_value_buffer(v31, qword_280F914F0);
  swift_beginAccess();
  (v136[2])(v32, v105, v31);

  v106 = sub_2664DFE18();
  v107 = sub_2664E06C8();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v137[0] = v109;
    *v108 = 136315138;
    v110 = sub_2662A0374();
    v112 = sub_2662A320C(v110, v111, v137);
    v113 = v136;
    v114 = v112;

    *(v108 + 4) = v114;
    _os_log_impl(&dword_26629C000, v106, v107, "AirPlayRouteProvider#startAirplayDiscovery Finished searching devices, setting output devices: %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x266784AD0](v109, -1, -1);
    MEMORY[0x266784AD0](v108, -1, -1);

    (v113[1])(v32, v31);
  }

  else
  {

    (v136[1])(v32, v31);
  }

  if (*(v30 + 40) == 3)
  {
    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v115 = qword_280F91470;
    v137[3] = type metadata accessor for SiriKitTaskLoggingProvider();
    v137[4] = &protocol witness table for SiriKitTaskLoggingProvider;
    v137[0] = v115;
    type metadata accessor for PThreadMutex();
    swift_allocObject();

    v116 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000017, 0x80000002664FA5C0, 1, v137);
    swift_beginAccess();
    v117 = *(v30 + 144);
    *(v30 + 144) = v116;

    sub_2662A98AC();
  }

  swift_beginAccess();
  if (*(v30 + 136))
  {
    v118 = *(v30 + 136);

    sub_2662AA89C();
  }
}

uint64_t sub_26647F02C(void *a1)
{
  v2 = v1;
  v89 = a1;
  v3 = sub_2664DFE08();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2664E0788();
  v84 = *(v85 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2664E00B8();
  v82 = *(v83 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v78 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v78 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  v26 = *(v2 + 16);
  if (v26)
  {
    if ((*(v26 + 40) & 0xFE) == 2)
    {
      swift_beginAccess();
      v27 = *(v26 + 128);
      if (v27)
      {
        v80 = v2;
        v28 = qword_280F914E8;

        v29 = v27;
        if (v28 != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v12, qword_280F914F0);
        swift_beginAccess();
        v31 = v13;
        (*(v13 + 16))(v25, v30, v12);
        v32 = v29;
        v33 = sub_2664DFE18();
        v34 = sub_2664E06C8();
        v81 = v32;

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v78 = v35;
          v79 = swift_slowAlloc();
          v90[0] = v79;
          *v35 = 136315138;
          v36 = v81;
          v90[8] = v81;
          type metadata accessor for CFArray(0);
          v37 = v36;
          v38 = sub_2664E0318();
          LOBYTE(v36) = v34;
          v40 = sub_2662A320C(v38, v39, v90);

          v41 = v78;
          *(v78 + 1) = v40;
          v42 = v41;
          _os_log_impl(&dword_26629C000, v33, v36, "AirPlayRouteProvider#setOutputDevices Setting output devices... %s", v41, 0xCu);
          v43 = v79;
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          MEMORY[0x266784AD0](v43, -1, -1);
          MEMORY[0x266784AD0](v42, -1, -1);
        }

        (*(v31 + 8))(v25, v12);
        sub_2664E0078();
        sub_2664E0768();
        v44 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0x79616C50726941, 0xE700000000000000, v11, v8);
        (*(v84 + 8))(v8, v85);
        (*(v82 + 8))(v11, v83);
        swift_beginAccess();
        v45 = *(v26 + 32);
        *(v26 + 32) = v44;
        v46 = v44;

        swift_beginAccess();
        if (!*(v26 + 144))
        {
          if (qword_280F91468 != -1)
          {
            swift_once();
          }

          v47 = qword_280F91470;
          v90[3] = type metadata accessor for SiriKitTaskLoggingProvider();
          v90[4] = &protocol witness table for SiriKitTaskLoggingProvider;
          v90[0] = v47;
          type metadata accessor for PThreadMutex();
          swift_allocObject();

          v48 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000017, 0x80000002664FA5C0, 1, v90);
          v49 = *(v26 + 144);
          *(v26 + 144) = v48;

          sub_2662A98AC();
        }

        LOBYTE(v90[0]) = 4;
        sub_266481BC0(v90);
        sub_2664E0848();
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        v50 = v86;
        sub_2664DFDF8();
        sub_2664DFDC8();
        (*(v87 + 8))(v50, v88);
        v51 = v89[3];
        v52 = v89[4];
        __swift_project_boxed_opaque_existential_1(v89, v51);
        v53 = swift_allocObject();
        v54 = v81;
        v53[2] = v81;
        v53[3] = v26;
        v53[4] = v80;
        v55 = *(v52 + 112);

        v56 = v54;

        v55(v56, v46, sub_266483218, v53, v51, v52);
      }

      else
      {
        v73 = qword_280F914E8;

        if (v73 != -1)
        {
          swift_once();
        }

        v74 = __swift_project_value_buffer(v12, qword_280F914F0);
        swift_beginAccess();
        (*(v13 + 16))(v23, v74, v12);
        v75 = sub_2664DFE18();
        v76 = sub_2664E06D8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_26629C000, v75, v76, "AirPlayRouteProvider#setOutputDevices No resolved output devices, will not be setting up routes", v77, 2u);
          MEMORY[0x266784AD0](v77, -1, -1);
        }

        else
        {
        }

        return (*(v13 + 8))(v23, v12);
      }
    }

    else
    {
      v62 = qword_280F914E8;
      v63 = *(v2 + 16);

      if (v62 != -1)
      {
        swift_once();
      }

      v64 = __swift_project_value_buffer(v12, qword_280F914F0);
      swift_beginAccess();
      (*(v13 + 16))(v20, v64, v12);

      v65 = sub_2664DFE18();
      v66 = sub_2664E06D8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v91 = v68;
        *v67 = 136315138;

        v69 = sub_2662A0374();
        v71 = v70;

        v72 = sub_2662A320C(v69, v71, &v91);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_26629C000, v65, v66, "AirPlayRouteProvider#setOutputDevices setOutputDevices is being triggered more than once or in wrong context %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x266784AD0](v68, -1, -1);
        MEMORY[0x266784AD0](v67, -1, -1);
      }

      else
      {
      }

      return (*(v13 + 8))(v20, v12);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v58, v12);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "AirPlayRouteProvider#setOutputDevices Unable to retrieve AirPlayRouteSetupContext", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t sub_26647FB58(void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v7 = sub_2664DFE38();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v68 - v11;
  v76 = sub_2664DFE08();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v76);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  Count = CFArrayGetCount(a2);
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  v70 = xmmword_2664E36F0;
  *(v19 + 16) = xmmword_2664E36F0;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = Count;
  sub_2664DFDF8();
  sub_2664DFDC8();

  v24 = *(v12 + 8);
  v23 = (v12 + 8);
  v22 = v24;
  v24(v15, v76);
  if (a1)
  {
    v68 = v18;
    v69 = v15;
    v25 = MEMORY[0x277D83B88];
    *&v70 = v22;
    v71 = v17;
    v72 = v23;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v27 = v73;
    (*(v75 + 16))(v73, v26, v7);
    v28 = a1;
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    v31 = v25;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = v7;
      v34 = swift_slowAlloc();
      *v32 = 138412290;
      v35 = a1;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_26629C000, v29, v30, "AirPlayRouteProvider#setOutputDevices Error setting output devices: %@", v32, 0xCu);
      sub_2662E4324(v34);
      v37 = v34;
      v7 = v33;
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v75 + 8))(v27, v7);
    swift_beginAccess();
    v38 = *(a3 + 80);
    *(a3 + 80) = a1;

    v39 = a1;
    v40 = sub_2664DE198();
    swift_beginAccess();
    *(a3 + 121) = 0;
    LOBYTE(v77[0]) = 6;
    sub_266481BC0(v77);
    swift_beginAccess();
    v41 = v69;
    if (*(a3 + 144))
    {
      v42 = *(a3 + 144);

      sub_2662AA89C();
    }

    v43 = CFArrayGetCount(v74);
    v44 = v40;
    v45 = [v44 code];
    v46 = [v44 domain];

    v47 = sub_2664E02C8();
    v49 = v48;

    sub_2664E0858();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2664E36E0;
    *(v50 + 56) = v31;
    v51 = MEMORY[0x277D83C10];
    *(v50 + 64) = MEMORY[0x277D83C10];
    *(v50 + 72) = v45;
    *(v50 + 32) = v43;
    *(v50 + 96) = v31;
    *(v50 + 104) = v51;
    *(v50 + 136) = MEMORY[0x277D837D0];
    *(v50 + 144) = sub_2662C4094();
    *(v50 + 112) = v47;
    *(v50 + 120) = v49;
    sub_2664DFDF8();
    sub_2664DFDC8();

    return (v70)(v41, v76);
  }

  else
  {
    v53 = v7;
    v54 = CFArrayGetCount(v74);
    sub_2664E0858();
    v55 = v22;
    v56 = swift_allocObject();
    *(v56 + 16) = v70;
    *(v56 + 56) = MEMORY[0x277D83B88];
    *(v56 + 64) = MEMORY[0x277D83C10];
    *(v56 + 32) = v54;
    sub_2664DFDF8();
    sub_2664DFDC8();

    v55(v15, v76);
    swift_beginAccess();
    *(a3 + 121) = 1;
    v78[0] = 5;
    sub_266481BC0(v78);
    swift_beginAccess();
    if (*(a3 + 144))
    {
      v57 = *(a3 + 144);

      sub_2662AA89C();
    }

    v59 = v71;
    v58 = v72;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v75 + 16))(v58, v60, v7);

    v61 = sub_2664DFE18();
    v62 = sub_2664E06C8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77[0] = v64;
      *v63 = 136315138;
      v77[3] = *(v59 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073F28, qword_2664EF348);
      v65 = sub_2664E0318();
      v67 = sub_2662A320C(v65, v66, v77);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_26629C000, v61, v62, "AirPlayRouteProvider#setOutputDevices Finished setting output devices: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x266784AD0](v64, -1, -1);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    return (*(v75 + 8))(v58, v53);
  }
}

uint64_t sub_2664803E8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39[-v15 - 8];
  MEMORY[0x28223BE20](v14);
  v18 = &v39[-v17 - 8];
  v19 = *(v4 + 16);
  if (v19)
  {
    v39[0] = 3;

    sub_266481BC0(v39);
    sub_26647CF84(a1, a2, a3);
    sub_2664808CC();
    if (*(v19 + 40) == 6)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v8, qword_280F914F0);
      swift_beginAccess();
      (*(v9 + 16))(v16, v20, v8);

      v21 = sub_2664DFE18();
      v22 = sub_2664E06D8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v38 = v24;
        *v23 = 136315138;

        v25 = sub_2662A0374();
        v27 = v26;

        v28 = sub_2662A320C(v25, v27, &v38);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_26629C000, v21, v22, "AirPlayRouteProvider#discoverAndSetOutputDevices Something went wrong discovering AirPlay routes while connecting to device that initiated remote execution request %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x266784AD0](v24, -1, -1);
        MEMORY[0x266784AD0](v23, -1, -1);
      }

      else
      {
      }

      return (*(v9 + 8))(v16, v8);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v8, qword_280F914F0);
      swift_beginAccess();
      (*(v9 + 16))(v18, v34, v8);
      v35 = sub_2664DFE18();
      v36 = sub_2664E06C8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_26629C000, v35, v36, "AirPlayRouteProvider#discoverAndSetOutputDevices Starting to set AirPlay routes. Device search has been completed", v37, 2u);
        MEMORY[0x266784AD0](v37, -1, -1);
      }

      (*(v9 + 8))(v18, v8);
      sub_26647F02C(a3);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v29, v8);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "AirPlayRouteProvider#discoverAndSetOutputDevices Unable to retrieve AirPlayRouteSetupContext", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_2664808CC()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = *(v0 + 16);
  if (v15)
  {
    swift_beginAccess();
    if (*(v15 + 136))
    {
      v16 = qword_280F914E8;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      v38 = v2[2];
      v38(v14, v17, v1);
      v18 = sub_2664DFE18();
      v19 = sub_2664E06C8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = v2;
        v21 = v20;
        *v20 = 0;
        _os_log_impl(&dword_26629C000, v18, v19, "AirPlayRouteProvider#waitForDeviceDiscovery Waiting to finish device search...", v20, 2u);
        v22 = v21;
        v2 = v37;
        MEMORY[0x266784AD0](v22, -1, -1);
      }

      v23 = v2[1];
      v23(v14, v1);
      sub_2662A98AC();
      v38(v12, v17, v1);
      v24 = sub_2664DFE18();
      v25 = sub_2664E06C8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_26629C000, v24, v25, "AirPlayRouteProvider#waitForDeviceDiscovery Finished waiting for device search", v26, 2u);
        MEMORY[0x266784AD0](v26, -1, -1);
      }

      v23(v12, v1);
      sub_2662AA89C();
    }

    else
    {
      v32 = qword_280F914E8;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (v2[2])(v9, v33, v1);
      v34 = sub_2664DFE18();
      v35 = sub_2664E06C8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26629C000, v34, v35, "AirPlayRouteProvider#waitForDeviceDiscovery Not waiting for device search since lock is not set", v36, 2u);
        MEMORY[0x266784AD0](v36, -1, -1);
      }

      else
      {
      }

      return (v2[1])(v9, v1);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (v2[2])(v6, v28, v1);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "AirPlayRouteProvider#waitForDeviceDiscovery Unable to retrieve AirPlayRouteSetupContext", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    return (v2[1])(v6, v1);
  }
}

uint64_t sub_266480DF4()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = *(v0 + 16);
  if (v15)
  {
    swift_beginAccess();
    if (*(v15 + 144))
    {
      v16 = qword_280F914E8;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      v38 = v2[2];
      v38(v14, v17, v1);
      v18 = sub_2664DFE18();
      v19 = sub_2664E06C8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = v2;
        v21 = v20;
        *v20 = 0;
        _os_log_impl(&dword_26629C000, v18, v19, "AirPlayRouteProvider#waitForSetOutputDevices Waiting to finish route setup...", v20, 2u);
        v22 = v21;
        v2 = v37;
        MEMORY[0x266784AD0](v22, -1, -1);
      }

      v23 = v2[1];
      v23(v14, v1);
      sub_2662A98AC();
      v38(v12, v17, v1);
      v24 = sub_2664DFE18();
      v25 = sub_2664E06C8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_26629C000, v24, v25, "AirPlayRouteProvider#waitForSetOutputDevices Finished waiting for route setup", v26, 2u);
        MEMORY[0x266784AD0](v26, -1, -1);
      }

      v23(v12, v1);
      sub_2662AA89C();
    }

    else
    {
      v32 = qword_280F914E8;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (v2[2])(v9, v33, v1);
      v34 = sub_2664DFE18();
      v35 = sub_2664E06C8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26629C000, v34, v35, "AirPlayRouteProvider#waitForSetOutputDevices Not waiting for route setup since lock is not set", v36, 2u);
        MEMORY[0x266784AD0](v36, -1, -1);
      }

      else
      {
      }

      return (v2[1])(v9, v1);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (v2[2])(v6, v28, v1);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "AirPlayRouteProvider#waitForSetOutputDevices Unable to retrieve AirPlayRouteSetupContext", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    return (v2[1])(v6, v1);
  }
}

uint64_t AirPlayRouteProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

void sub_2664813F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_2664E02A8();
  [v0 setName_];

  qword_280073EF0 = v0;
}

uint64_t sub_26648147C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664FAC10, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073F00 = v10;
  return result;
}

uint64_t sub_266481614()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280073F08);
  *__swift_project_value_buffer(v0, qword_280073F08) = 60;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_2664816A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2662A320C(a1, a2, v16);
    _os_log_impl(&dword_26629C000, v10, v11, "AirPlayRouteSetupContext#sharedCompletion Removing old context with refId: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (qword_280071C88 != -1)
  {
    swift_once();
  }

  v14 = qword_280073EF0;
  [qword_280073EF0 lock];
  if (qword_280071C90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_266407AD0(a1, a2);
  swift_endAccess();

  return [v14 unlock];
}

id static AirPlayRouteSetupContext.remove(refId:)(id result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (qword_280071C88 != -1)
    {
      swift_once();
    }

    v4 = qword_280073EF0;
    [qword_280073EF0 lock];
    if (qword_280071C90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_266407AD0(v3, a2);
    swift_endAccess();

    return [v4 unlock];
  }

  return result;
}

void sub_266481A80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_266481AD8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_266481B1C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_266481BC0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  LODWORD(v12) = *a1;
  if (*(v2 + 40) >= v12)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v29, v4);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = v12;
      v12 = v32;
      v44 = swift_slowAlloc();
      v47 = v44;
      *v12 = 136315650;
      v46 = *(v2 + 40);
      v33 = sub_2664E0318();
      v35 = sub_2662A320C(v33, v34, &v47);

      *(v12 + 4) = v35;
      *(v12 + 12) = 2080;
      v46 = v45;
      v36 = sub_2664E0318();
      v38 = sub_2662A320C(v36, v37, &v47);

      *(v12 + 14) = v38;
      *(v12 + 22) = 2080;
      v39 = sub_2662A0374();
      v41 = sub_2662A320C(v39, v40, &v47);

      *(v12 + 24) = v41;
      _os_log_impl(&dword_26629C000, v30, v31, "AirPlayRouteSetupContext#state Invalid state being set, old = %s, new = %s, context: %s", v12, 0x20u);
      v42 = v44;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      v43 = v12;
      LOBYTE(v12) = v45;
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    result = (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v13, v4);

    v14 = sub_2664DFE18();
    v15 = sub_2664E06C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v45 = v12;
      v12 = v16;
      v44 = swift_slowAlloc();
      v47 = v44;
      *v12 = 136315650;
      v46 = *(v2 + 40);
      v17 = sub_2664E0318();
      v19 = sub_2662A320C(v17, v18, &v47);

      *(v12 + 4) = v19;
      *(v12 + 12) = 2080;
      v46 = v45;
      v20 = sub_2664E0318();
      v22 = sub_2662A320C(v20, v21, &v47);

      *(v12 + 14) = v22;
      *(v12 + 22) = 2080;
      v23 = sub_2662A0374();
      v25 = sub_2662A320C(v23, v24, &v47);

      *(v12 + 24) = v25;
      _os_log_impl(&dword_26629C000, v14, v15, "AirPlayRouteSetupContext#state Valid state being set, old = %s, new = %s, context: %s", v12, 0x20u);
      v26 = v44;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v26, -1, -1);
      v27 = v12;
      LOBYTE(v12) = v45;
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
  }

  *(v2 + 40) = v12;
  return result;
}

uint64_t (*sub_266482094(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_2664820C0;
}

uint64_t sub_2664820C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v4 = &v7;
  }

  return sub_266481BC0(v4);
}

uint64_t sub_266482108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_266482168()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_2664821A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void sub_266482238(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *sub_266482298()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_2664822E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void sub_266482378(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
  v5 = v2;
}

void *sub_2664823D8()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_266482420(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_2664824EC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

void sub_26648257C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  v5 = v2;
}

void *sub_2664825DC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_266482624(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_2664826F0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_266482780()
{
  swift_beginAccess();
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_2664827B8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_26648285C()
{
  swift_beginAccess();
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_266482894(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_26648296C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 121) = a1;
  return result;
}

void sub_2664829FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
  v5 = v2;
}

void *sub_266482A54()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void sub_266482A98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_266482B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

uint64_t sub_266482B90()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t sub_266482BC8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_266482C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
}

uint64_t sub_266482CC0()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

uint64_t sub_266482CF8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t AirPlayRouteSetupContext.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  return v0;
}

uint64_t AirPlayRouteSetupContext.__deallocating_deinit()
{
  AirPlayRouteSetupContext.deinit();

  return swift_deallocClassInstance();
}

SiriAudioSupport::AirPlayRouteSetupState_optional __swiftcall AirPlayRouteSetupState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_266482E64(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_266482EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = MEMORY[0x2667834D0](a1, MEMORY[0x277D837D0]);
    v19 = sub_2662A320C(v17, v18, aBlock);
    v28 = v6;
    v20 = a3;
    v21 = v19;

    *(v15 + 4) = v21;
    a3 = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "AirPlayRouteProvider#decodeHashedRouteUIDs Decoding hashedRouteUIDs: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    v22 = v15;
    a2 = v29;
    MEMORY[0x266784AD0](v22, -1, -1);

    (*(v7 + 8))(v10, v28);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;

  v25 = sub_2664E0488();
  aBlock[4] = sub_266483C84;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26648C248;
  aBlock[3] = &block_descriptor_62_0;
  v26 = _Block_copy(aBlock);

  [v23 decodeHashedRouteUIDs:v25 completion:v26];
  _Block_release(v26);
}

unint64_t sub_266483228()
{
  result = qword_280073F20;
  if (!qword_280073F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073F20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPlayRouteSetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPlayRouteSetupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_266483C94(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v12 = (*(*a1 + 104))(v11);
    v14 = sub_2662A320C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_26629C000, v8, v9, "RemoteSongPlaybackHandler#collectionID Getting collectionID for %{public}s. Returning nil for song or list of songs", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_266483EDC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_266484174(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_266484174(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

uint64_t sub_266484934()
{
  result = sub_26639EF84(&unk_2877E5518);
  qword_280F90DE0 = result;
  return result;
}

uint64_t sub_26648495C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073F30, &qword_2664EF3F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_2664EF3E0;
  *(inited + 40) = 0x80000002664F0E90;
  *(inited + 48) = sub_26639EF84(&unk_2877E5570);
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000002664F0E30;
  if (qword_280F90DD8 != -1)
  {
    swift_once();
  }

  *(inited + 72) = qword_280F90DE0;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000002664F0E70;

  *(inited + 96) = sub_26639EF84(&unk_2877E5598);
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x80000002664F0E50;
  *(inited + 120) = sub_26639EF84(&unk_2877E55E0);
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000002664F0ED0;
  *(inited + 144) = sub_26639EF84(&unk_2877E5618);
  v1 = sub_266386798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073F38, qword_2664EF3F8);
  result = swift_arrayDestroy();
  off_280F90DF8 = v1;
  return result;
}

unint64_t *sub_266484AF0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_266484CC8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_266484B68(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_266484CC8(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_266484AF0(v9, v4, v2);
  result = MEMORY[0x266784AD0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_266484CC8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2664D0018(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2664D0018(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266484DB4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v14, v6);
    v15 = sub_2664DFE18();
    v16 = sub_2664E06C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26629C000, v15, v16, "VisionQuest21#canSupportRequest missing media type --> false", v17, 2u);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
    v20 = *(a3 + 16);
    v48 = v6;
    if (v20)
    {
      v46 = a3;
      v47 = &v45 - v12;
      v21 = (a3 + 40);
      v22 = MEMORY[0x277D84FA0];
      do
      {
        v25 = *(v21 - 1);
        v24 = *v21;
        v26 = qword_280F90DF0;

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = off_280F90DF8;
        if (*(off_280F90DF8 + 2) && (v28 = sub_2662A3E98(v25, v24), (v29 & 1) != 0))
        {
          v23 = *(v27[7] + 8 * v28);
        }

        else
        {
          v23 = v22;
        }

        sub_2662F9E94(v23);
        v21 += 2;
        --v20;
      }

      while (v20);
      v19 = v50;
      v13 = v47;
      v6 = v48;
      a3 = v46;
    }

    v30 = *(v19 + 16);
    v31 = 32;
    do
    {
      v32 = v30;
      v33 = v30-- != 0;
      v18 = v33;
      if (!v33)
      {
        break;
      }

      v34 = *(v19 + v31);
      v31 += 8;
    }

    while (v34 != a1);

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v35, v6);

    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v32 != 0;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 67109378;
      *(v39 + 4) = v38;
      *(v39 + 8) = 2080;
      v41 = MEMORY[0x2667834D0](a3, MEMORY[0x277D837D0]);
      v43 = sub_2662A320C(v41, v42, &v49);

      *(v39 + 10) = v43;
      _os_log_impl(&dword_26629C000, v36, v37, "VisionQuest21#canSupportRequest: %{BOOL}d for categories: %s", v39, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);

      (*(v7 + 8))(v13, v48);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  return v18;
}

unint64_t sub_266485230(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_2662A3E98(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_266450E14(v15, v5 & 1);
    v17 = *a3;
    result = sub_2662A3E98(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_2664E0DD8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_12:
    v19[(result >> 6) + 8] |= 1 << result;
    v23 = (v19[6] + 16 * result);
    *v23 = v8;
    v23[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v24 = v19[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_15;
    }

    return result;
  }

  v22 = result;
  sub_26645410C();
  result = v22;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v20 = result;
  v21 = *(v19[7] + 8 * result);

  if (__OFADD__(v21, v9))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  *(v19[7] + 8 * v20) = v21 + v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_15:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v29 = *a3;

      result = sub_2662A3E98(v7, v6);
      v31 = v29[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_25;
      }

      v8 = v30;
      if (v29[3] < v33)
      {
        sub_266450E14(v33, 1);
        v34 = *a3;
        result = sub_2662A3E98(v7, v6);
        if ((v8 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      v36 = *a3;
      if (v8)
      {
        v37 = result;
        v38 = *(v36[7] + 8 * result);

        if (__OFADD__(v38, v9))
        {
          goto LABEL_27;
        }

        *(v36[7] + 8 * v37) = v38 + v9;
      }

      else
      {
        v36[(result >> 6) + 8] |= 1 << result;
        v26 = (v36[6] + 16 * result);
        *v26 = v7;
        v26[1] = v6;
        *(v36[7] + 8 * result) = v9;
        v27 = v36[2];
        v14 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        v36[2] = v28;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2664854AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    v7 = *(a2 + 16);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = (v5 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(a2 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    v13 = sub_2664E0EB8();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_13:

      return 0;
    }

    ++v4;
    v16 = ~v14;
    while (1)
    {
      v17 = (*(a2 + 48) + 16 * v15);
      v18 = *v17 == v11 && v17[1] == v10;
      if (v18 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  while (v4 != v2);
  return v8;
}

uint64_t sub_2664855EC(uint64_t a1)
{
  v4 = sub_2664DFE38();
  v101 = *(v4 - 8);
  v5 = *(v101 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  *&v96 = v93 - v9;
  MEMORY[0x28223BE20](v8);
  v98 = (v93 - v10);
  v11 = *(a1 + 64);
  v102 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v100 = 0;
  v18 = MEMORY[0x277D84F90];
  v103 = v16;
  while (v14)
  {
LABEL_10:
    v20 = (v17 << 9) | (8 * __clz(__rbit64(v14)));
    v21 = *(*(v16 + 56) + v20);
    v22 = *(v21 + 16);
    v1 = *(v18 + 2);
    v2 = v1 + v22;
    if (__OFADD__(v1, v22))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_once();
      goto LABEL_34;
    }

    v23 = *(*(v16 + 56) + v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v2 > *(v18 + 3) >> 1)
    {
      if (v1 <= v2)
      {
        v25 = v1 + v22;
      }

      else
      {
        v25 = v1;
      }

      v18 = sub_2663846F4(isUniquelyReferenced_nonNull_native, v25, 1, v18);
    }

    v14 &= v14 - 1;
    if (*(v21 + 16))
    {
      if ((*(v18 + 3) >> 1) - *(v18 + 2) < v22)
      {
        goto LABEL_75;
      }

      swift_arrayInitWithCopy();

      v16 = v103;
      if (v22)
      {
        v26 = *(v18 + 2);
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_77;
        }

        *(v18 + 2) = v28;
      }
    }

    else
    {

      v16 = v103;
      if (v22)
      {
        goto LABEL_72;
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v102 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  v29 = *(v18 + 2);
  v95 = v4;
  if (v29)
  {
    v105[0] = MEMORY[0x277D84F90];
    sub_2662FD1D0(0, v29, 0);
    v30 = v105[0];
    v99 = v18;
    v31 = (v18 + 40);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      v105[0] = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_2662FD1D0((v34 > 1), v35 + 1, 1);
        v30 = v105[0];
      }

      *(v30 + 16) = v35 + 1;
      v36 = (v30 + 24 * v35);
      v36[4] = v32;
      v36[5] = v33;
      v36[6] = 1;
      v31 += 2;
      --v29;
    }

    while (v29);

    v4 = v95;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v18 = v101;
  v14 = v98;
  if (*(v30 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
    v37 = sub_2664E0C98();
  }

  else
  {
    v37 = MEMORY[0x277D84F98];
  }

  v105[0] = v37;
  v1 = v100;
  sub_266485230(v30, 1, v105);

  if (v1)
  {

    __break(1u);
    return result;
  }

  v2 = v105[0];
  if (qword_280F914E8 != -1)
  {
    goto LABEL_79;
  }

LABEL_34:
  v38 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v99 = *(v18 + 2);
  v100 = v18 + 16;
  (v99)(v14, v38, v4);

  v39 = sub_2664DFE18();
  v40 = sub_2664E06C8();

  v41 = os_log_type_enabled(v39, v40);
  v97 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v104 = v43;
    *v42 = 136315138;
    v44 = sub_2664E01D8();
    v45 = v14;
    v47 = sub_2662A320C(v44, v46, &v104);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_26629C000, v39, v40, "VisionQuest21#uniqueProviders category counts: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v18 = v101;
    MEMORY[0x266784AD0](v43, -1, -1);
    v48 = v42;
    v38 = v97;
    v49 = v95;
    MEMORY[0x266784AD0](v48, -1, -1);

    v50 = *(v18 + 1);
    v51 = v45;
    v4 = v49;
    v52 = v49;
  }

  else
  {

    v50 = *(v18 + 1);
    v51 = v14;
    v52 = v4;
  }

  v98 = v50;
  v50(v51, v52);
  v53 = v96;

  v55 = sub_266484B68(v54);

  v56 = sub_26639F100(v55);
  (v99)(v53, v38, v4);
  v57 = sub_2664DFE18();
  v58 = sub_2664E06C8();
  v59 = os_log_type_enabled(v57, v58);
  v93[0] = v1;
  v93[1] = v2;
  if (v59)
  {
    v1 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v104 = v60;
    *v1 = 136315138;
    v61 = sub_2664E0618();
    v63 = v53;
    v64 = sub_2662A320C(v61, v62, &v104);

    *(v1 + 1) = v64;
    _os_log_impl(&dword_26629C000, v57, v58, "VisionQuest21#uniqueProviders unique categories: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x266784AD0](v60, -1, -1);
    MEMORY[0x266784AD0](v1, -1, -1);

    v65 = v63;
  }

  else
  {

    v65 = v53;
  }

  v98(v65, v4);
  v66 = v103;
  v67 = 1 << *(v103 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v2 = v68 & *(v103 + 64);
  v14 = (v67 + 63) >> 6;

  v69 = 0;
  v70 = MEMORY[0x277D84F90];
  v96 = xmmword_2664E36F0;
  while (v2)
  {
LABEL_49:
    v72 = __clz(__rbit64(v2)) | (v69 << 6);
    v73 = *(*(v66 + 56) + 8 * v72);
    if (!*(v73 + 16))
    {
      goto LABEL_53;
    }

    v74 = (*(v66 + 48) + 16 * v72);
    v76 = *v74;
    v75 = v74[1];

    if ((sub_2664854AC(v73, v56) & 1) == 0)
    {

LABEL_53:
      v1 = MEMORY[0x277D84F90];
      goto LABEL_54;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v1 = swift_allocObject();
    *(v1 + 1) = v96;
    *(v1 + 4) = v76;
    *(v1 + 5) = v75;

LABEL_54:
    v77 = *(v1 + 2);
    v78 = *(v70 + 2);
    v18 = (v78 + v77);
    if (__OFADD__(v78, v77))
    {
      goto LABEL_73;
    }

    v79 = swift_isUniquelyReferenced_nonNull_native();
    if (!v79 || v18 > *(v70 + 3) >> 1)
    {
      if (v78 <= v18)
      {
        v80 = v78 + v77;
      }

      else
      {
        v80 = v78;
      }

      v70 = sub_2663846F4(v79, v80, 1, v70);
    }

    v66 = v103;
    v2 &= v2 - 1;
    if (*(v1 + 2))
    {
      if ((*(v70 + 3) >> 1) - *(v70 + 2) < v77)
      {
        goto LABEL_76;
      }

      swift_arrayInitWithCopy();

      if (v77)
      {
        v81 = *(v70 + 2);
        v27 = __OFADD__(v81, v77);
        v82 = v81 + v77;
        if (v27)
        {
          goto LABEL_78;
        }

        *(v70 + 2) = v82;
      }
    }

    else
    {

      if (v77)
      {
        goto LABEL_74;
      }
    }
  }

  while (1)
  {
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_70;
    }

    if (v71 >= v14)
    {
      break;
    }

    v2 = *(v102 + 8 * v71);
    ++v69;
    if (v2)
    {
      v69 = v71;
      goto LABEL_49;
    }
  }

  v83 = sub_26639EB98(v70);

  v84 = v94;
  (v99)(v94, v97, v4);

  v85 = sub_2664DFE18();
  v86 = sub_2664E06C8();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v104 = v88;
    *v87 = 136315138;
    v89 = sub_2664E0618();
    v91 = sub_2662A320C(v89, v90, &v104);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_26629C000, v85, v86, "VisionQuest21#uniqueProviders unique: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x266784AD0](v88, -1, -1);
    MEMORY[0x266784AD0](v87, -1, -1);
  }

  v98(v84, v4);
  return v83;
}

unint64_t sub_266485FDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v116 = a8;
  v123 = a7;
  v121 = a1;
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v115 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v119 = &v113 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v117 = &v113 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v122 = &v113 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v118 = &v113 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v113 - v32;
  v34 = *a2;
  v35 = a2[1];
  LODWORD(a3) = sub_2663CD060(v34, v35, a3);
  v36 = sub_2663CD060(v34, v35, a4);
  LOBYTE(a4) = v36;
  v124 = v34;
  v125 = a5;
  v120 = a3;
  if ((a3 & 1) == 0)
  {
    v13 = 0.0;
    if ((v36 & 1) == 0)
    {
      v46 = 1;
      v38 = v19;
      goto LABEL_17;
    }

    v38 = v19;
    goto LABEL_10;
  }

  if (!*(a5 + 16))
  {
    __break(1u);
    goto LABEL_81;
  }

  v13 = *(a5 + 32);
  v14 = 0.0;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v13 = v13 + v14;
    v38 = v19;
    v39 = __swift_project_value_buffer(v19, qword_280F914F0);
    swift_beginAccess();
    (*(v20 + 16))(v33, v39, v19);

    v40 = v20;
    v41 = sub_2664DFE18();
    v42 = sub_2664E06C8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v114 = a6;
      v44 = v43;
      v19 = swift_slowAlloc();
      v127[0] = v19;
      *v44 = 136315394;
      *(v44 + 4) = sub_2662A320C(v124, v35, v127);
      *(v44 + 12) = 2048;
      *(v44 + 14) = v13;
      _os_log_impl(&dword_26629C000, v41, v42, "VisionQuest21#vq21 support_flag for %s, score: %f", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266784AD0](v19, -1, -1);
      v45 = v44;
      a6 = v114;
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    (*(v40 + 8))(v33, v38);
    v20 = v40;
    if (a4)
    {
LABEL_10:
      if (*(v125 + 16) < 2uLL)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v14 = *(v125 + 40);
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v13 = v13 + v14;
      v47 = __swift_project_value_buffer(v38, qword_280F914F0);
      swift_beginAccess();
      v48 = v118;
      (*(v20 + 16))(v118, v47, v38);

      a4 = sub_2664DFE18();
      v33 = sub_2664E06C8();

      if (os_log_type_enabled(a4, v33))
      {
        v19 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v127[0] = v49;
        *v19 = 136315394;
        *(v19 + 4) = sub_2662A320C(v124, v35, v127);
        *(v19 + 12) = 2048;
        *(v19 + 14) = v13;
        _os_log_impl(&dword_26629C000, a4, v33, "VisionQuest21#vq21 unicorn_flag for %s, score: %f", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x266784AD0](v49, -1, -1);
        MEMORY[0x266784AD0](v19, -1, -1);
      }

      (*(v20 + 8))(v48, v38);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

LABEL_17:
    v50 = v122;
    if ((sub_2663CD060(v124, v35, a6) & 1) == 0)
    {
      goto LABEL_24;
    }

    if (*(v125 + 16) >= 3uLL)
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v51 = *(v125 + 48);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = v13 + v51;
  v52 = __swift_project_value_buffer(v38, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v50, v52, v38);

  v53 = sub_2664DFE18();
  v54 = sub_2664E06C8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v50;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v127[0] = v57;
    *v56 = 136315394;
    *(v56 + 4) = sub_2662A320C(v124, v35, v127);
    *(v56 + 12) = 2048;
    *(v56 + 14) = v13;
    _os_log_impl(&dword_26629C000, v53, v54, "VisionQuest21#vq21 support_unicorn_match for %s, score: %f", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x266784AD0](v57, -1, -1);
    MEMORY[0x266784AD0](v56, -1, -1);

    (*(v20 + 8))(v55, v38);
  }

  else
  {

    (*(v20 + 8))(v50, v38);
  }

LABEL_24:
  v58 = v123;
  if (!v123)
  {
    v81 = v116;
    v82 = 0.0;
    if (*(v116 + 16))
    {
      v62 = v124;
      v83 = sub_2662A3E98(v124, v35);
      v84 = v117;
      if (v85)
      {
        v82 = *(*(v81 + 56) + 8 * v83);
      }
    }

    else
    {
      v62 = v124;
      v84 = v117;
    }

    if (*(v125 + 16) < 4uLL)
    {
      __break(1u);
    }

    else
    {
      v105 = *(v125 + 56);
      v106 = 0.0;
      if (*(a9 + 16))
      {
        v107 = sub_2662A3E98(v62, v35);
        if (v108)
        {
          v106 = *(*(a9 + 56) + 8 * v107);
        }
      }

      v82 = v82 * v105 + v106;
      if (qword_280F914E8 == -1)
      {
LABEL_75:
        v75 = v13 + v82;
        v109 = __swift_project_value_buffer(v38, qword_280F914F0);
        swift_beginAccess();
        (*(v20 + 16))(v84, v109, v38);

        v100 = sub_2664DFE18();
        v101 = sub_2664E06C8();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v126 = v103;
          *v102 = 136315394;
          *(v102 + 4) = sub_2662A320C(v62, v35, &v126);
          *(v102 + 12) = 2048;
          *(v102 + 14) = v75;
          v104 = "VisionQuest21#vq21 type unknown for %s, score: %f";
          goto LABEL_77;
        }

LABEL_78:

        (*(v20 + 8))(v84, v38);
        goto LABEL_79;
      }
    }

    swift_once();
    goto LABEL_75;
  }

  if (qword_280F90DD8 != -1)
  {
    swift_once();
    v58 = v123;
  }

  result = sub_2663CD2F0(v58, qword_280F90DE0);
  v60 = *(a10 + 16);
  v61 = 0.0;
  if ((v46 & v120 & result) != 1)
  {
    v62 = v124;
    if (v60)
    {
      result = sub_2662A3E98(v124, v35);
      if (v86)
      {
        v61 = *(*(a10 + 56) + 8 * result);
      }
    }

    v87 = v125;
    v88 = *(v125 + 16);
    if (v88 < 8)
    {
      goto LABEL_87;
    }

    v89 = *(v125 + 88);
    v90 = 0.0;
    if (*(a9 + 16))
    {
      result = sub_2662A3E98(v62, v35);
      v87 = v125;
      if (v91)
      {
        v90 = *(*(a9 + 56) + 8 * result);
      }
    }

    if (v88 == 8)
    {
      goto LABEL_89;
    }

    v92 = v87[12];
    v93 = 0.0;
    v94 = 0.0;
    if (a13)
    {
      if (v62 == a12 && v35 == a13 || (result = sub_2664E0D88(), v87 = v125, (result & 1) != 0))
      {
        if (v88 < 0xA)
        {
          __break(1u);
          return result;
        }

        v94 = v87[13];
      }
    }

    if (*(a11 + 16))
    {
      v95 = sub_2662A3E98(v62, v35);
      v87 = v125;
      if (v96)
      {
        v93 = *(*(a11 + 56) + 8 * v95);
      }
    }

    if (v88 < 0xB)
    {
      goto LABEL_91;
    }

    v97 = v13 + v61 * v89 + v90 * v92 + v94;
    v98 = v93 * v87[14];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v75 = v97 + v98;
    v99 = __swift_project_value_buffer(v38, qword_280F914F0);
    swift_beginAccess();
    v84 = v115;
    (*(v20 + 16))(v115, v99, v38);

    v100 = sub_2664DFE18();
    v101 = sub_2664E06C8();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v126 = v103;
      *v102 = 136315394;
      *(v102 + 4) = sub_2662A320C(v62, v35, &v126);
      *(v102 + 12) = 2048;
      *(v102 + 14) = v75;
      v104 = "VisionQuest21#vq21 all other type cases for %s, score: %f";
LABEL_77:
      _os_log_impl(&dword_26629C000, v100, v101, v104, v102, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x266784AD0](v103, -1, -1);
      MEMORY[0x266784AD0](v102, -1, -1);
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  v62 = v124;
  if (v60)
  {
    v63 = sub_2662A3E98(v124, v35);
    if (v64)
    {
      v61 = *(*(a10 + 56) + 8 * v63);
    }
  }

  v65 = v125;
  v66 = *(v125 + 16);
  if (v66 < 5)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v67 = *(v125 + 64);
  v68 = 0.0;
  if (*(a9 + 16))
  {
    v69 = sub_2662A3E98(v62, v35);
    v65 = v125;
    if (v70)
    {
      v68 = *(*(a9 + 56) + 8 * v69);
    }
  }

  if (v66 == 5)
  {
    goto LABEL_88;
  }

  v71 = *(v65 + 72);
  v72 = 0.0;
  if (*(a11 + 16))
  {
    v73 = sub_2662A3E98(v62, v35);
    v65 = v125;
    if (v74)
    {
      v72 = *(*(a11 + 56) + 8 * v73);
    }
  }

  if (v66 >= 7)
  {
    v13 = v13 + v61 * v67 + v68 * v71;
    v61 = v72 * *(v65 + 80);
    if (qword_280F914E8 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_92;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  swift_once();
LABEL_41:
  v75 = v13 + v61;
  v76 = __swift_project_value_buffer(v38, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v119, v76, v38);

  v77 = sub_2664DFE18();
  v78 = sub_2664E06C8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v126 = v80;
    *v79 = 136315394;
    *(v79 + 4) = sub_2662A320C(v62, v35, &v126);
    *(v79 + 12) = 2048;
    *(v79 + 14) = v75;
    _os_log_impl(&dword_26629C000, v77, v78, "VisionQuest21#vq21 music type contains for %s, score: %f", v79, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x266784AD0](v80, -1, -1);
    MEMORY[0x266784AD0](v79, -1, -1);
  }

  (*(v20 + 8))(v119, v38);
LABEL_79:
  v110 = v121;
  v111 = *v121;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v110;
  result = sub_26634F084(v62, v35, isUniquelyReferenced_nonNull_native, v75);
  *v110 = v126;
  return result;
}

uint64_t AtomicArray.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AtomicArray.init(name:)(a1, a2);
  return v4;
}

void *AtomicArray.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  v3[2] = sub_2664E04E8();
  v3[4] = a1;
  v3[5] = a2;
  v7 = qword_280F91468;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  v10[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v10[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v10[0] = v8;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v3[3] = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v10);
  return v3;
}

void *AtomicArray.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t AtomicArray.__deallocating_deinit()
{
  AtomicArray.deinit();

  return swift_deallocClassInstance();
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioIntentDetails.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2664DFC68();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (a2 >> 60 == 15)
  {
    v12 = sub_2664DE5E8();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    v10 = sub_2664DE5E8();
    sub_26648736C(a1, a2);
    sub_2663C50C4(a1, a2);
    sub_2664DFC58();
    sub_266487380();
    sub_2664DFC78();
    sub_2662B79A8(a1, a2);
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }
}

uint64_t sub_26648736C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2663C50C4(a1, a2);
  }

  return a1;
}

unint64_t sub_266487380()
{
  result = qword_280073F40;
  if (!qword_280073F40)
  {
    sub_2664DE5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073F40);
  }

  return result;
}

uint64_t sub_2664873D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = (result + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      v10(a2, a3, a4);

      v8 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}