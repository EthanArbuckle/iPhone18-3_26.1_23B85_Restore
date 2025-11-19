const char *sub_26638EA60()
{
  if (*v0 >= 2u)
  {
    return "SiriAudio";
  }

  else
  {
    return "SiriPlaybackControls";
  }
}

const char *sub_26638EA90()
{
  v1 = *v0;
  v2 = "media_controls_on_sirix";
  v3 = "siri_for_airplay";
  v4 = "modern_concurrency";
  if (v1 != 4)
  {
    v4 = "app_intents";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "media_controls_on_sirix_v2";
  if (v1 != 1)
  {
    v5 = "music_on_sirix";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26638EB20()
{
  result = qword_280F8F6C8;
  if (!qword_280F8F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlagProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[13])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlagProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26638ED64()
{
  result = qword_2800730B8;
  if (!qword_2800730B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800730B8);
  }

  return result;
}

uint64_t sub_26638EF48()
{
  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_2664DE948();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

uint64_t sub_26638F004()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    v0 = sub_2664DF4B8();
    v1 = [v0 isEyesFree];
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_2664DE918();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return v1 & 1;
}

uint64_t sub_26638F350(void (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a1();
    v6 = a2();

    return v6;
  }

  else
  {
    sub_2664DEC08();
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = a3(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return v10;
  }
}

uint64_t sub_26638F494(void (*a1)(void), void (*a2)(void), void (*a3)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a1();
    a2();
  }

  else
  {
    sub_2664DEC08();
    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    a3(v7, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }
}

BOOL sub_26638F56C()
{
  sub_2664DE8E8();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2664DEAC8();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2664DEB58();
  v1 = v0;
  if (v0)
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1 != 0;
}

uint64_t sub_26638F610()
{
  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2664DE908();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_26638F6A0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v4 = a1();

    return v4 & 1;
  }

  else
  {
    sub_2664DEC08();
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = a2(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v8 & 1;
  }
}

uint64_t sub_26638F74C()
{
  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_2664DE968();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

uint64_t sub_26638FC3C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a3();
    v8 = a4();

    return v8;
  }

  else
  {
    sub_2664DEC08();
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = a5(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return v12;
  }
}

uint64_t sub_26638FD80(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    a3();
    a4();
  }

  else
  {
    sub_2664DEC08();
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    a5(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }
}

uint64_t sub_26638FE84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v6 = a3();

    return v6 & 1;
  }

  else
  {
    sub_2664DEC08();
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = a4(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return v10 & 1;
  }
}

char *sub_26639040C()
{
  v0 = type metadata accessor for ShazamSessionManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2663904A8();
  qword_2800730C0 = result;
  return result;
}

uint64_t static ShazamSessionManager.shared.getter()
{
  if (qword_280071B78 != -1)
  {
    swift_once();
  }
}

char *sub_2663904A8()
{
  v1 = v0;
  v2 = sub_2664DE4A8();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E0788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84FA0];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = v16;
  v17 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue;
  sub_2664E0078();
  v30 = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230]);
  sub_2664E0F48();
  v20 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002CLL, 0x80000002664F6280, v15, v10);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  *&v1[v19] = v20;
  v21 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId;
  sub_2664DE498();
  v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v23 = sub_2664DE478();
  v24 = [v22 initWithNSUUID_];

  (*(v28 + 8))(v5, v29);
  *&v1[v21] = v24;
  v25 = &v1[OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_bundleID];
  *v25 = 0xD00000000000001ALL;
  *(v25 + 1) = 0x80000002664F62B0;
  sub_26639080C();
  return v1;
}

uint64_t sub_26639080C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073110, &qword_2664E9720);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073118, &qword_2664E9728);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073120, &qword_2664E9730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073128, &qword_2664E9738);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v36 - v14;
  v43 = sub_2664DE6C8();
  v16 = *(v43 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v43);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DE618();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_bundleID);
  v22 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_bundleID + 8);

  sub_2664DE6D8();
  v23 = sub_2664DE6E8();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  sub_2664DE6B8();
  sub_2664DE6A8();
  sub_2664DE698();
  v24 = sub_2664DE688();

  v44 = v24;
  swift_allocObject();
  swift_weakInit();
  v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073158, &qword_2664E9750);
  v37 = v5;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073160, &unk_2664E9758);
  sub_2662C1428(&qword_280073168, &qword_280073158, &qword_2664E9750);
  sub_2662C1428(&qword_280073170, &qword_280073160, &unk_2664E9758);
  v25 = v38;
  sub_2664DFF78();

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_2662C1428(&qword_280073178, &qword_280073118, &qword_2664E9728);
  v26 = v37;
  v27 = sub_2664DFF68();

  (*(v39 + 8))(v25, v26);
  v28 = *(v1 + 32);
  *(v1 + 32) = v27;

  sub_2664DE698();
  v29 = sub_2664DE678();

  v44 = v29;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073130, &qword_2664E9740);
  v39 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073138, &qword_2664E9748);
  sub_2662C1428(&qword_280073140, &qword_280073130, &qword_2664E9740);
  sub_2662C1428(&qword_280073148, &qword_280073138, &qword_2664E9748);
  v30 = v40;
  v31 = v39;
  sub_2664DFF78();

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_2662C1428(&qword_280073150, &qword_280073110, &qword_2664E9720);
  v32 = v42;
  v33 = sub_2664DFF68();

  (*(v41 + 8))(v30, v32);
  (*(v31 + 8))(v19, v43);
  v34 = *(v1 + 24);
  *(v1 + 24) = v33;
}

uint64_t sub_266390FC0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  v11 = v9;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26[1] = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v26[3] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    v18 = sub_2664E0318();
    v20 = sub_2662A320C(v18, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "ShazamSessionManager#startListeningForSessions catch error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 32);

    if (v22)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    v24 = *(v23 + 32);
    *(v23 + 32) = 0;
  }

  v26[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073180, &unk_2664E9768);
  return sub_2664DFF58();
}

uint64_t sub_2663912C4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "ShazamSessionManager#startListeningForSessions activity state listener torn down", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 32);

    if (v10)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 32);
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_2663914F0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2664E0038();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2664E00B8();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v15, v9);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v9;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v21 = sub_2664DE648();
    v22 = MEMORY[0x2667834D0](v14, v21);
    v35 = v13;
    v24 = v10;
    v25 = v14;
    v26 = v4;
    v27 = sub_2662A320C(v22, v23, aBlock);

    *(v18 + 4) = v27;
    v4 = v26;
    v14 = v25;
    _os_log_impl(&dword_26629C000, v16, v17, "ShazamSessionManager#startListeningForSessions received updated activity states - %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    result = (*(v24 + 8))(v35, v36);
    if (!*(v25 + 16))
    {
      return result;
    }
  }

  else
  {

    result = (*(v10 + 8))(v13, v9);
    if (!*(v14 + 16))
    {
      return result;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = *(result + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);

    v30 = swift_allocObject();
    *(v30 + 16) = v14;
    *(v30 + 24) = a2;
    aBlock[4] = sub_266396FDC;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_20;
    v31 = _Block_copy(aBlock);

    v32 = v37;
    sub_2664E0068();
    v42 = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
    v33 = v39;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v32, v33, v31);
    _Block_release(v31);

    (*(v41 + 8))(v33, v4);
    (*(v38 + 8))(v32, v40);
  }

  return result;
}

uint64_t sub_266391A58(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v123 = sub_2664DE608();
  v137 = *(v123 - 8);
  v3 = *(v137 + 64);
  v4 = MEMORY[0x28223BE20](v123);
  v113 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v119 = &v112 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = &v112 - v13;
  v142 = sub_2664DE668();
  v14 = *(v142 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v142);
  v141 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v112 - v18;
  v145 = sub_2664DE648();
  v19 = *(v145 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v145);
  v117 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v112 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v120 = &v112 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v112 - v28;
  result = MEMORY[0x28223BE20](v27);
  v31 = &v112 - v30;
  v126 = *(a1 + 16);
  if (v126)
  {
    v114 = v12;
    v32 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    swift_beginAccess();
    v33 = v19 + 16;
    v34 = *(v19 + 16);
    v135 = *(v19 + 72);
    LODWORD(v124) = *MEMORY[0x277CB9610];
    v139 = (v14 + 104);
    v138 = (v14 + 8);
    v116 = *MEMORY[0x277CB95F0];
    v144 = (v19 + 8);
    v128 = (v8 + 16);
    v127 = (v8 + 8);
    v122 = (v137 + 8);
    *&v35 = 136315138;
    v118 = v35;
    v125 = v32;
    v133 = v7;
    v36 = v126;
    v134 = v19 + 16;
    v143 = v34;
    v115 = v31;
    do
    {
      v38 = v33;
      v34(v31, v32, v145);
      v39 = v140;
      sub_2664DE638();
      v40 = v141;
      v41 = v142;
      v137 = *v139;
      (v137)(v141, v124, v142);
      v42 = sub_2664DE658();
      v43 = *v138;
      (*v138)(v40, v41);
      v136 = v43;
      v43(v39, v41);
      if (v42)
      {
        goto LABEL_7;
      }

      v44 = v140;
      sub_2664DE638();
      v45 = v141;
      v46 = v142;
      (v137)(v141, v116, v142);
      v47 = sub_2664DE658();
      v48 = v136;
      v136(v45, v46);
      v48(v44, v46);
      if (v47)
      {
LABEL_7:
        v130 = v36;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v49 = v133;
        v50 = __swift_project_value_buffer(v133, qword_280F914F0);
        swift_beginAccess();
        (*v128)(v131, v50, v49);
        v51 = v121;
        v52 = v143;
        v143(v121, v31, v145);
        v53 = sub_2664DFE18();
        v54 = sub_2664E06C8();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v147 = v56;
          *v55 = v118;
          v57 = v145;
          v52(v120, v51, v145);
          v58 = sub_2664E0318();
          v59 = v57;
          v61 = v60;
          v37 = *v144;
          (*v144)(v51, v59);
          v62 = sub_2662A320C(v58, v61, &v147);
          v38 = v134;

          *(v55 + 4) = v62;
          _os_log_impl(&dword_26629C000, v53, v54, "ShazamSessionManager#startListeningForSessions Cleaning up dismissed activity: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          MEMORY[0x266784AD0](v56, -1, -1);
          v63 = v55;
          v31 = v115;
          MEMORY[0x266784AD0](v63, -1, -1);

          (*v127)(v131, v133);
        }

        else
        {

          v37 = *v144;
          (*v144)(v51, v145);
          (*v127)(v131, v49);
        }

        v36 = v130;
        if (swift_weakLoadStrong())
        {
          v64 = v119;
          sub_2664DE628();
          v65 = sub_2664DE5F8();
          v67 = v66;
          (*v122)(v64, v123);
          swift_beginAccess();
          sub_2662C2748(v65, v67);
          swift_endAccess();
        }
      }

      else
      {
        v37 = *v144;
      }

      v34 = v143;
      v33 = v38;
      v37(v31, v145);
      v32 += v135;
      --v36;
    }

    while (v36);
    v131 = v37;
    swift_beginAccess();
    swift_beginAccess();
    v68 = 0;
    LODWORD(v130) = *MEMORY[0x277CB9600];
    v69 = v114;
    v70 = v133;
    while (1)
    {
      v71 = v129;
      v34(v129, (v125 + v68 * v135), v145);
      v72 = v140;
      sub_2664DE638();
      v73 = v141;
      v74 = v142;
      (v137)(v141, v130, v142);
      v75 = sub_2664DE658();
      v76 = v136;
      v136(v73, v74);
      v76(v72, v74);
      if (v75)
      {
        break;
      }

      result = (v131)(v71, v145);
LABEL_16:
      if (++v68 == v126)
      {
        return result;
      }
    }

    v77 = v117;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v78 = __swift_project_value_buffer(v70, qword_280F914F0);
    swift_beginAccess();
    (*v128)(v69, v78, v70);
    v79 = v70;
    v80 = v143;
    v143(v77, v71, v145);
    v81 = sub_2664DFE18();
    v82 = sub_2664E06C8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v147 = v124;
      *v83 = v118;
      v84 = v69;
      v85 = v145;
      v80(v120, v77, v145);
      v86 = sub_2664E0318();
      v88 = v87;
      v89 = v85;
      v69 = v84;
      (v131)(v77, v89);
      v90 = sub_2662A320C(v86, v88, &v147);
      v70 = v133;

      *(v83 + 4) = v90;
      _os_log_impl(&dword_26629C000, v81, v82, "ShazamSessionManager#startListeningForSessions Tracking newly created session: %s", v83, 0xCu);
      v91 = v124;
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      v92 = v91;
      v71 = v129;
      MEMORY[0x266784AD0](v92, -1, -1);
      MEMORY[0x266784AD0](v83, -1, -1);

      (*v127)(v69, v70);
    }

    else
    {

      (v131)(v77, v145);
      (*v127)(v69, v79);
      v70 = v79;
    }

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      result = (v131)(v71, v145);
LABEL_39:
      v34 = v143;
      goto LABEL_16;
    }

    v94 = Strong;
    swift_beginAccess();
    v95 = *(v94 + 16);

    v96 = v113;
    sub_2664DE628();
    v97 = sub_2664DE5F8();
    v99 = v98;
    v100 = *v122;
    (*v122)(v96, v123);
    if (*(v95 + 16) && (v101 = *(v95 + 40), sub_2664E0E68(), sub_2664E0368(), v102 = sub_2664E0EB8(), v103 = -1 << *(v95 + 32), v104 = v102 & ~v103, ((*(v95 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) != 0))
    {
      v105 = ~v103;
      while (1)
      {
        v106 = (*(v95 + 48) + 16 * v104);
        v107 = *v106 == v97 && v106[1] == v99;
        if (v107 || (sub_2664E0D88() & 1) != 0)
        {
          break;
        }

        v104 = (v104 + 1) & v105;
        if (((*(v95 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:

      if (!swift_weakLoadStrong())
      {
LABEL_38:
        result = (v131)(v71, v145);
        v70 = v133;
        v69 = v114;
        goto LABEL_39;
      }

      v108 = v119;
      sub_2664DE628();
      v109 = sub_2664DE5F8();
      v111 = v110;
      v100(v108, v123);
      swift_beginAccess();
      sub_2664D0458(&v146, v109, v111);
      swift_endAccess();
    }

    goto LABEL_38;
  }

  return result;
}

uint64_t sub_2663929D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  v11 = v9;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26[1] = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v26[3] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    v18 = sub_2664E0318();
    v20 = sub_2662A320C(v18, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "ShazamSessionManager#startListeningForSessions catch error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 24);

    if (v22)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    v24 = *(v23 + 24);
    *(v23 + 24) = 0;
  }

  v26[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073188, &qword_2664E9778);
  return sub_2664DFF58();
}

uint64_t sub_266392CDC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "ShazamSessionManager#startListeningForSessions activity listener torn down", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 24);

    if (v10)
    {
      sub_2664DFF48();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 24);
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_266392F08(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2664E0038();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2664E00B8();
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v15, v9);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  v18 = os_log_type_enabled(v16, v17);
  v35 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v9;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    v22 = sub_2664DE608();
    v23 = MEMORY[0x2667834D0](v14, v22);
    v25 = v4;
    v26 = sub_2662A320C(v23, v24, aBlock);

    *(v19 + 4) = v26;
    v4 = v25;
    _os_log_impl(&dword_26629C000, v16, v17, "ShazamSessionManager#startListeningForSessions received updated activities - %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    (*(v10 + 8))(v13, v34);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = *(result + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);

    v29 = swift_allocObject();
    *(v29 + 16) = v35;
    *(v29 + 24) = a2;
    aBlock[4] = sub_266397024;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_54;
    v30 = _Block_copy(aBlock);

    v31 = v36;
    sub_2664E0068();
    v41 = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
    v32 = v38;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v31, v32, v30);
    _Block_release(v30);

    (*(v40 + 8))(v32, v4);
    (*(v37 + 8))(v31, v39);
  }

  return result;
}

uint64_t sub_266393450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v95 = *(v9 - 8);
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9);
  v87 = &v81 - v11;
  v98 = sub_2664DE608();
  v12 = *(v98 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v98);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v85 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v81 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v81 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v94 = a2;
  v25 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v26 = v17[2];
  v90 = v25;
  v89 = v17 + 2;
  v88 = v26;
  v26(v24, v25, v16);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v9;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "ShazamSessionManager#startListeningForSessions updating currentSessionIDs", v30, 2u);
    v31 = v30;
    v9 = v29;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = v17[1];
  v91 = v16;
  v84 = v17 + 1;
  v32(v24, v16);
  v33 = *(a1 + 16);
  if (v33)
  {
    v86 = v32;
    v92 = v9;
    v102 = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v33, 0);
    v34 = v102;
    v36 = *(v12 + 16);
    v35 = v12 + 16;
    v97 = v36;
    v37 = a1 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v96 = *(v35 + 56);
    v38 = (v35 - 8);
    do
    {
      v39 = v98;
      v97(v15, v37, v98);
      v40 = sub_2664DE5F8();
      v42 = v41;
      (*v38)(v15, v39);
      v102 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      v45 = v34;
      if (v44 >= v43 >> 1)
      {
        sub_2662FCF24((v43 > 1), v44 + 1, 1);
        v45 = v102;
      }

      *(v45 + 16) = v44 + 1;
      v46 = v45 + 16 * v44;
      *(v46 + 32) = v40;
      *(v46 + 40) = v42;
      v37 += v96;
      --v33;
      v34 = v45;
    }

    while (v33);
    v9 = v92;
    v32 = v86;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v48 = sub_26639EB98(v47);

    swift_beginAccess();
    sub_266393E50(v48);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = v95;
  if (!Strong)
  {

    v55 = v93;
    (*(v50 + 56))(v93, 1, 1, v9);
    return sub_2662A9238(v55, &qword_2800730C8, &qword_2664E95F0);
  }

  v51 = &qword_280073000;
  v52 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  v53 = Strong;
  swift_beginAccess();
  v54 = v53 + v52;
  v55 = v93;
  sub_2662A7224(v54, v93, &qword_2800730C8, &qword_2664E95F0);

  if ((*(v50 + 48))(v55, 1, v9) == 1)
  {

    return sub_2662A9238(v55, &qword_2800730C8, &qword_2664E95F0);
  }

  v98 = v34;
  v57 = *(v50 + 32);
  v92 = v9;
  v57(v87, v55, v9);
  v58 = v83;
  v88(v83, v90, v91);
  v59 = sub_2664DFE18();
  v60 = sub_2664E06C8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_26629C000, v59, v60, "ShazamSessionManager#startListeningForSessions found continuation", v61, 2u);
    MEMORY[0x266784AD0](v61, -1, -1);
  }

  v62 = v91;
  v32(v58, v91);
  v63 = v85;
  v88(v85, v90, v62);
  v64 = v98;

  v65 = sub_2664DFE18();
  v66 = sub_2664E06C8();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v86 = v32;
    v69 = v68;
    v101[0] = v68;
    *v67 = 136315138;
    v70 = MEMORY[0x2667834D0](v64, MEMORY[0x277D837D0]);
    v72 = sub_2662A320C(v70, v71, v101);

    *(v67 + 4) = v72;
    v51 = &qword_280073000;
    _os_log_impl(&dword_26629C000, v65, v66, "ShazamSessionManager#startListeningForSessions returning continuation with sessions: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x266784AD0](v69, -1, -1);
    MEMORY[0x266784AD0](v67, -1, -1);

    v86(v85, v62);
  }

  else
  {

    v32(v63, v62);
  }

  v73 = v92;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_266395B64();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v74 = v98;
  if (result)
  {
    v75 = result;
    v76 = v82;
    (*(v50 + 56))(v82, 1, 1, v73);
    v77 = v51[27];
    swift_beginAccess();
    sub_2663968D8(v76, v75 + v77);
    swift_endAccess();
  }

  if (v74[2])
  {
    v79 = v74[4];
    v78 = v74[5];

    v99 = v79;
    v100 = v78;
    v80 = v87;
    sub_2664E0588();
    return (*(v50 + 8))(v80, v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266393E50(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2664D0458(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_266393F78()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  *v2 = v0;
  v2[1] = sub_266394060;
  v4 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x80000002664F61A0, sub_2663968D0, v4, v3);
}

uint64_t sub_266394060()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26639415C, 0, 0);
}

uint64_t sub_266394174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664E0038();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_2663951E4();
  v21[1] = *(a2 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_26639702C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_62;
  v19 = _Block_copy(aBlock);

  sub_2664E0068();
  v25 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  sub_2664E0A08();
  MEMORY[0x266783800](0, v11, v7, v19);
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_266394524(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_2664DFE38();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E0038();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2664E00B8();
  v50 = *(v52 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E0018();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_2664E00E8();
  v48 = *(v57 - 8);
  v17 = *(v48 + 64);
  v18 = MEMORY[0x28223BE20](v57);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v47 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v47 - v24;
  swift_beginAccess();
  v26 = *(a1 + 16);

  v55 = sub_266487634(v27);
  v29 = v28;

  if (v29)
  {
    v57 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    v31 = v56;
    (*(v56 + 16))(v6, v30, v3);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59[0] = v35;
      *v34 = 136315138;
      v36 = v55;
      *(v34 + 4) = sub_2662A320C(v55, v29, v59);
      _os_log_impl(&dword_26629C000, v32, v33, "ShazamSessionManager#currentSessionID Returning sessionID: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      (*(v31 + 8))(v6, v3);
    }

    else
    {

      (*(v31 + 8))(v6, v3);
      v36 = v55;
    }

    sub_266395B64();
    v59[0] = v36;
    v59[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
    return sub_2664E0588();
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
    v38 = *(v37 - 8);
    (*(v38 + 16))(v25, v58, v37);
    (*(v38 + 56))(v25, 0, 1, v37);
    v39 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
    swift_beginAccess();
    sub_2663968D8(v25, a1 + v39);
    swift_endAccess();
    v58 = *(a1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_workQueue);
    sub_2664E00C8();
    *v16 = 100;
    (*(v13 + 104))(v16, *MEMORY[0x277D85178], v12);
    v40 = v47;
    sub_2664E00D8();
    (*(v13 + 8))(v16, v12);
    v56 = *(v48 + 8);
    (v56)(v20, v57);
    v41 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_26639709C;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_66;
    v42 = _Block_copy(aBlock);

    v43 = v49;
    sub_2664E0068();
    v59[0] = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
    v44 = v51;
    v45 = v54;
    sub_2664E0A08();
    MEMORY[0x2667837B0](v40, v43, v44, v42);
    _Block_release(v42);
    (*(v53 + 8))(v44, v45);
    (*(v50 + 8))(v43, v52);
    (v56)(v40, v57);
  }
}

uint64_t sub_266394D70()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_2662A9238(v11, &qword_2800730C8, &qword_2664E95F0);
  }

  v29[0] = v9;
  v18 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  v19 = Strong;
  swift_beginAccess();
  sub_2662A7224(v19 + v18, v11, &qword_2800730C8, &qword_2664E95F0);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2662A9238(v11, &qword_2800730C8, &qword_2664E95F0);
  }

  (*(v13 + 32))(v16, v11, v12);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v20, v0);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "ShazamSessionManager#currentSessionID 100ms timeout expecting session update, returning nil for current session", v23, 2u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_266395B64();
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  v25 = v29[0];
  if (v24)
  {
    v26 = v24;
    (*(v13 + 56))(v29[0], 1, 1, v12);
    v27 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
    swift_beginAccess();
    sub_2663968D8(v25, v26 + v27);
    swift_endAccess();
  }

  v29[1] = 0;
  v29[2] = 0;
  sub_2664E0588();
  return (*(v13 + 8))(v16, v12);
}

void sub_2663951E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = sub_2664DE4A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v7;
    v20 = v6;
    v21 = v1;
    v22 = v5;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "ShazamSessionManager#logSELFLiveActivityWaitStart", v19, 2u);
    v24 = v23;
    v5 = v22;
    v1 = v21;
    v6 = v20;
    v7 = v40;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_2664DE498();
  v25 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v26 = sub_2664DE478();
  v27 = [v25 initWithNSUUID_];

  (*(v7 + 8))(v10, v6);
  v28 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId;
  v29 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId);
  *(v1 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_currentPerfContextId) = v27;

  v30 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
    if (v32)
    {
      v33 = v32;
      v34 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
      if (v34)
      {
        v35 = v34;
        [v31 setDomainExecutionType_];
        [v33 setStartedOrChanged_];
        [v33 setContextId_];
        [v35 setFlowDomainExecutionContext_];
        sub_2664DE8D8();
        v36 = v35;
        v37 = sub_2664DE8B8();
        v38 = sub_2664E05C8();
        (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
        v39 = swift_allocObject();
        v39[2] = 0;
        v39[3] = 0;
        v39[4] = v37;

        sub_2663958A4(0, 0, v5, &unk_2664E9718, v39);

        sub_2662A9238(v5, &qword_280072BD0, &qword_2664E3550);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2663956E4()
{
  sub_2664DE7D8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D5B8C0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2663957A8;
  v5 = v0[7];

  return MEMORY[0x2821BA730](v5, v1, v2);
}

uint64_t sub_2663957A8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2663970C8, 0, 0);
}

uint64_t sub_2663958A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2662A7224(a3, v27 - v11, &qword_280072BD0, &qword_2664E3550);
  v13 = sub_2664E05C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2662A9238(v12, &qword_280072BD0, &qword_2664E3550);
  }

  else
  {
    sub_2664E05B8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2664E0578();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2664E0338() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_266395B64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "ShazamSessionManager#logSELFLiveActivityWaitEnd", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
      if (v19)
      {
        v20 = v19;
        [v18 setExists_];
        [v16 setEnded_];
        [v16 setContextId_];
        [v20 setFlowDomainExecutionContext_];
        sub_2664DE8D8();
        v21 = v20;
        v22 = sub_2664DE8B8();
        v23 = sub_2664E05C8();
        (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = 0;
        v24[4] = v22;

        sub_2663958A4(0, 0, v5, &unk_2664E96F0, v24);

        sub_2662A9238(v5, &qword_280072BD0, &qword_2664E3550);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_266395F60()
{
  sub_2664DE7D8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D5B8C0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_266396024;
  v5 = v0[7];

  return MEMORY[0x2821BA730](v5, v1, v2);
}

uint64_t sub_266396024()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_266396120, 0, 0);
}

uint64_t sub_266396120()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *ShazamSessionManager.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = v0[3];
  v0[3] = 0;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  swift_beginAccess();
  sub_2663968D8(v4, v0 + v7);
  swift_endAccess();
  v8 = v0[2];

  v9 = v0[3];

  v10 = v0[4];

  sub_2662A9238(v0 + v7, &qword_2800730C8, &qword_2664E95F0);

  v11 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_bundleID + 8);

  return v0;
}

uint64_t ShazamSessionManager.__deallocating_deinit()
{
  ShazamSessionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26639636C()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  *v2 = v0;
  v2[1] = sub_266396454;
  v4 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x80000002664F61A0, sub_2663970C4, v4, v3);
}

uint64_t sub_266396454()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2663970B0, 0, 0);
}

uint64_t sub_266396550(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266396648;

  return v7(a1);
}

uint64_t sub_266396648()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266396740()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071BF0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28007CCE0);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "ShazamSessionManager#isSmartStackMode Non watchOS, returning false", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2663968D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ShazamSessionManaging.sessionIDString()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2663970B4;

  return v9(a1, a2);
}

uint64_t type metadata accessor for ShazamSessionManager()
{
  result = qword_2800730F8;
  if (!qword_2800730F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266396AC8()
{
  sub_266396CE8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ShazamSessionManager.sessionIDString()()
{
  v2 = *(*v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266351BD4;

  return v6();
}

void sub_266396CE8()
{
  if (!qword_280073108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800730D0, &qword_2664E95F8);
    v0 = sub_2664E0948();
    if (!v1)
    {
      atomic_store(v0, &qword_280073108);
    }
  }
}

uint64_t sub_266396D4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return sub_266395F40(a1, v4, v5, v6);
}

uint64_t sub_266396E00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662BD660;

  return sub_266396550(a1, v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266396EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662C1890;

  return sub_2663956C4(a1, v4, v5, v6);
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26639702C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_266394524(v2, v3);
}

uint64_t (*sub_2663970CC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26639977C(v6, a2, a3);
  return sub_26639A050;
}

void (*sub_266397154(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2663998D4(v6, a2, a3);
  return sub_2663971DC;
}

uint64_t (*sub_2663971E0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_266399828(v6, a2, a3);
  return sub_26639A050;
}

void sub_266397268(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

SiriAudioSupport::ResolvedAppHistoryProvider::AppStatisticsBucket_optional __swiftcall ResolvedAppHistoryProvider.AppStatisticsBucket.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t ResolvedAppHistoryProvider.AppStatisticsBucket.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6465727265666E69;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_266397360(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6465727265666E69;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = 0x80000002664F2EE0;
  }

  else
  {
    v5 = 0xEB00000000707041;
  }

  if (*a2)
  {
    v6 = 0x6465727265666E69;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = 0xEB00000000707041;
  }

  else
  {
    v7 = 0x80000002664F2EE0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2664E0D88();
  }

  return v9 & 1;
}

uint64_t sub_266397414()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663974A4()
{
  *v0;
  sub_2664E0368();
}

uint64_t sub_266397520()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663975AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2664E0CB8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26639760C(unint64_t *a1@<X8>)
{
  v2 = 0x80000002664F2EE0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x6465727265666E69;
    v2 = 0xEB00000000707041;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_266397658()
{
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *v2 = qword_280F905C8;
  *&v2[5] = *(&qword_280F905C8 + 5);
  v3 = &type metadata for FeatureFlagProvider;
  v4 = &protocol witness table for FeatureFlagProvider;
  type metadata accessor for ResolvedAppHistoryProvider();
  v0 = swift_allocObject();
  sub_2662A5550(v2, v0 + 24);
  *(v0 + 16) = FeatureFlagProvider.resolvedAppHistory.getter();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v2);
  qword_280073190 = v0;
  return result;
}

uint64_t static ResolvedAppHistoryProvider.shared.getter()
{
  if (qword_280071B80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266397774()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664F6330, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073198 = v10;
  return result;
}

uint64_t sub_26639790C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t (*a6)(void), char *a7)
{
  v8 = v7;
  v180 = a6;
  LODWORD(v179) = a5;
  v188 = a3;
  v182 = a1;
  v175 = sub_2664E0038();
  v174 = *(v175 - 8);
  v12 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v172 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_2664E00B8();
  v171 = *(v173 - 8);
  v14 = *(v171 + 64);
  MEMORY[0x28223BE20](v173);
  v170 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v168 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v166 = &v162 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v162 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v162 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v177 = &v162 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v183 = &v162 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v162 - v33;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v178 = v28;
  v35 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v36 = v17[2];
  v187 = v35;
  v186 = v17 + 2;
  v185 = v36;
  v36(v34, v35, v16);

  v37 = sub_2664DFE18();
  v38 = sub_2664E06E8();

  v39 = os_log_type_enabled(v37, v38);
  v181 = a7;
  v169 = v25;
  if (!v39)
  {
    v47 = a4;

    v56 = v17[1];
    v56(v34, v16);
    v57 = v16;
    v55 = v17;
    if (a2)
    {
      goto LABEL_17;
    }

LABEL_22:
    v65 = v168;
    v185(v168, v187, v57);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_26629C000, v66, v67, "ResolvedAppHistoryProvider setResolvedApp skipped due to nil bundle identifier", v68, 2u);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    goto LABEL_30;
  }

  v40 = swift_slowAlloc();
  v184 = v16;
  v41 = v40;
  v165 = swift_slowAlloc();
  aBlock[0] = v165;
  *v41 = 136315906;
  v176 = v17;
  v164 = v38;
  if (a2)
  {
    v42 = v182;
  }

  else
  {
    v42 = 0x3E6C696E3CLL;
  }

  if (a2)
  {
    v43 = a2;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = sub_2662A320C(v42, v43, aBlock);

  *(v41 + 4) = v44;
  *(v41 + 12) = 2080;
  if (a4)
  {
    v45 = v188;
  }

  else
  {
    v45 = 0x3E6C696E3CLL;
  }

  if (a4)
  {
    v46 = a4;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  v47 = a4;

  v48 = sub_2662A320C(v45, v46, aBlock);

  *(v41 + 14) = v48;
  *(v41 + 22) = 1024;
  *(v41 + 24) = v179 & 1;
  *(v41 + 28) = 2080;
  swift_beginAccess();
  v49 = *(v8 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
  v50 = sub_2664E01D8();
  v52 = v51;

  v53 = sub_2662A320C(v50, v52, aBlock);

  *(v41 + 30) = v53;
  _os_log_impl(&dword_26629C000, v37, v164, "ResolvedAppHistoryProvider#incrementHistory resolvedBundle: %s, sharedUserId: %s, appInferred: %{BOOL}d, history before incrementing: %s", v41, 0x26u);
  v54 = v165;
  swift_arrayDestroy();
  MEMORY[0x266784AD0](v54, -1, -1);
  MEMORY[0x266784AD0](v41, -1, -1);

  v55 = v176;
  v56 = v176[1];
  v57 = v184;
  v56(v34, v184);
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_17:
  if (!v47)
  {
    v65 = v166;
    v185(v166, v187, v57);
    v66 = sub_2664DFE18();
    v83 = sub_2664E06D8();
    if (os_log_type_enabled(v66, v83))
    {
      v84 = v56;
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_26629C000, v66, v83, "ResolvedAppHistoryProvider setResolvedApp skipped due to nil shared user id", v85, 2u);
      v86 = v85;
      v56 = v84;
      MEMORY[0x266784AD0](v86, -1, -1);
    }

LABEL_30:

    v56(v65, v57);
    return v180(0);
  }

  v58 = a2;
  v59 = v47;
  swift_beginAccess();
  v60 = *(v8 + 2);
  v61 = *(v60 + 16);

  if (v61 && (v62 = sub_2662A3E98(v188, v47), (v63 & 1) != 0))
  {
    v64 = *(*(v60 + 56) + 8 * v62);
  }

  else
  {
    v64 = sub_266386038(MEMORY[0x277D84F90]);
  }

  v69 = v183;

  v185(v69, v187, v57);

  v70 = sub_2664DFE18();
  v71 = sub_2664E06E8();

  v72 = os_log_type_enabled(v70, v71);
  v184 = v57;
  v167 = v58;
  v163 = v59;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v176 = v55;
    v74 = v8;
    v75 = v73;
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v75 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731A0, &qword_2664E9780);
    v77 = sub_2664E01D8();
    v79 = sub_2662A320C(v77, v78, aBlock);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_26629C000, v70, v71, "ResolvedAppHistoryProvider#incrementHistory stats for user: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v80 = v76;
    v57 = v184;
    MEMORY[0x266784AD0](v80, -1, -1);
    v81 = v75;
    v8 = v74;
    v82 = v176;
    v59 = v163;
    v58 = v167;
    MEMORY[0x266784AD0](v81, -1, -1);

    v55 = v82;
  }

  else
  {
  }

  v56(v69, v57);
  if (!*(*(v8 + 2) + 16) || (v88 = *(v8 + 2), , sub_2662A3E98(v188, v59), v90 = v89, , (v90 & 1) == 0))
  {
    swift_beginAccess();

    v91 = *(v8 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192 = *(v8 + 2);
    *(v8 + 2) = 0x8000000000000000;
    sub_26634F31C(v64, v188, v59, isUniquelyReferenced_nonNull_native);

    *(v8 + 2) = v192;
    swift_endAccess();
  }

  v183 = v8;
  if (*(v64 + 16) && (v93 = sub_2662A3E98(v182, v58), (v94 & 1) != 0))
  {
    v95 = *(*(v64 + 56) + 8 * v93);
  }

  else
  {
    v95 = sub_266385CA8(MEMORY[0x277D84F90]);
  }

  v96 = v177;
  v185(v177, v187, v57);

  v97 = sub_2664DFE18();
  v98 = sub_2664E06E8();

  v99 = os_log_type_enabled(v97, v98);
  v165 = v56;
  if (v99)
  {
    v100 = v56;
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v101 = 136315138;
    v103 = sub_2664E01D8();
    v105 = sub_2662A320C(v103, v104, aBlock);
    v57 = v184;

    *(v101 + 4) = v105;
    _os_log_impl(&dword_26629C000, v97, v98, "ResolvedAppHistoryProvider#incrementHistory app stats: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    MEMORY[0x266784AD0](v102, -1, -1);
    MEMORY[0x266784AD0](v101, -1, -1);

    v100(v96, v57);
    v59 = v163;
  }

  else
  {

    v56(v96, v57);
  }

  v106 = v178;
  v107 = *(v183 + 2);
  if (*(v107 + 16))
  {
    v108 = *(v183 + 2);

    v109 = sub_2662A3E98(v188, v59);
    if ((v110 & 1) != 0 && (v111 = *(*(v107 + 56) + 8 * v109), , , *(v111 + 16)))
    {
      sub_2662A3E98(v182, v167);
      v113 = v112;

      if (v113)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  v114 = sub_2663435D4();
  v116 = sub_266397154(&v192, v188, v59);
  if (*v115)
  {
    v117 = v115;
    v118 = v167;

    v119 = swift_isUniquelyReferenced_nonNull_native();
    v191 = *v117;
    *v117 = 0x8000000000000000;
    sub_26634F2DC(v95, v182, v118, v119);

    *v117 = v191;
  }

  (v116)(&v192, 0);
  (v114)(aBlock, 0);
  v57 = v184;
LABEL_51:
  if (v179)
  {
    v120 = 0x6465727265666E69;
  }

  else
  {
    v120 = 0xD000000000000013;
  }

  if (v179)
  {
    v121 = 0xEB00000000707041;
  }

  else
  {
    v121 = 0x80000002664F2EE0;
  }

  if (*(v95 + 16))
  {
    v122 = sub_2662A3E98(v120, v121);
    v124 = v123;

    if (v124)
    {
      v125 = *(*(v95 + 56) + 8 * v122);
    }

    else
    {
      v125 = 0;
    }
  }

  else
  {

    v125 = 0;
  }

  v185(v106, v187, v57);
  v126 = sub_2664DFE18();
  v127 = sub_2664E06E8();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 134217984;
    *(v128 + 4) = v125;
    _os_log_impl(&dword_26629C000, v126, v127, "ResolvedAppHistoryProvider#incrementHistory currentValue: %ld", v128, 0xCu);
    MEMORY[0x266784AD0](v128, -1, -1);
  }

  v165(v106, v57);
  if (__OFADD__(v125, 1))
  {
    __break(1u);
  }

  else
  {
    v179 = v55 + 1;
    v129 = v167;
    v130 = v59;
    v131 = v181;
    if (v125 + 1 >= 1000)
    {
      v132 = 1000;
    }

    else
    {
      v132 = v125 + 1;
    }

    v133 = sub_2663435D4();
    v134 = sub_266397154(&v192, v188, v130);
    if (*v135)
    {
      v137 = sub_2663971E0(&v191, v182, v129);
      if (*v136)
      {
        v138 = v136;
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v190 = *v138;
        *v138 = 0x8000000000000000;
        sub_26634F1AC(v132, v120, v121, v139);

        v140 = *v138;
        *v138 = v190;
      }

      (v137)(&v191, 0);
      (v134)(&v192, 0);
      (v133)(aBlock, 0);
    }

    else
    {
      (v134)(&v192, 0);
      (v133)(aBlock, 0);
    }

    v141 = v169;
    v142 = v184;
    v185(v169, v187, v184);
    v143 = v183;

    v144 = sub_2664DFE18();
    v145 = sub_2664E06E8();

    v106 = v131;
    if (os_log_type_enabled(v144, v145))
    {
      v146 = v143;
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock[0] = v148;
      *v147 = 136315138;
      v149 = *(v146 + 2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
      v150 = v142;
      v151 = sub_2664E01D8();
      v153 = v152;

      v154 = sub_2662A320C(v151, v153, aBlock);

      *(v147 + 4) = v154;
      _os_log_impl(&dword_26629C000, v144, v145, "ResolvedAppHistoryProvider#incrementHistory history after incrementing: %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v148);
      MEMORY[0x266784AD0](v148, -1, -1);
      MEMORY[0x266784AD0](v147, -1, -1);

      v155 = v141;
      v156 = v150;
    }

    else
    {

      v155 = v141;
      v156 = v142;
    }

    v165(v155, v156);
    v127 = v180;
    if (qword_280071B88 == -1)
    {
      goto LABEL_77;
    }
  }

  swift_once();
LABEL_77:
  v157 = swift_allocObject();
  v157[2] = v183;
  v157[3] = v127;
  v157[4] = v106;
  aBlock[4] = sub_266399F40;
  aBlock[5] = v157;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_21;
  v158 = _Block_copy(aBlock);

  v159 = v170;
  sub_2664E0068();
  v192 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v160 = v172;
  v161 = v175;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v159, v160, v158);
  _Block_release(v158);
  (*(v174 + 8))(v160, v161);
  (*(v171 + 8))(v159, v173);
}

uint64_t sub_266398D34(void *a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v4 = a1[2];
  swift_beginAccess();
  v5 = a1[6];
  v6 = a1[7];
  __swift_mutable_project_boxed_opaque_existential_1((a1 + 3), v5);
  v7 = *(v6 + 280);

  v7(v8, v5, v6);
  swift_endAccess();
  return a2(1);
}

uint64_t sub_266398DF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v93 = a3;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v92 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v81 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v85 = &v81 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - v20;
  LODWORD(v88) = *a5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v90 = v12[2];
  v91 = v12 + 2;
  v90(v21, v22, v11);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  v25 = os_log_type_enabled(v23, v24);
  v89 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v87 = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v82 = v22;
    v29 = v28;
    v95[0] = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_2662A320C(a1, a2, v95);
    v83 = a2;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2662A320C(v93, v87, v95);
    *(v27 + 22) = 2080;
    if (v88)
    {
      v30 = 0x6465727265666E69;
    }

    else
    {
      v30 = 0xD000000000000013;
    }

    v84 = v12;
    v31 = v11;
    if (v88)
    {
      v32 = 0xEB00000000707041;
    }

    else
    {
      v32 = 0x80000002664F2EE0;
    }

    v33 = sub_2662A320C(v30, v32, v95);

    *(v27 + 24) = v33;
    *(v27 + 32) = 2080;
    swift_beginAccess();
    v34 = *(v6 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v35 = sub_2664E01D8();
    v37 = v36;

    v38 = v35;
    v11 = v31;
    v12 = v84;
    v39 = sub_2662A320C(v38, v37, v95);
    a2 = v83;

    *(v27 + 34) = v39;
    _os_log_impl(&dword_26629C000, v23, v24, "ResolvedAppHistoryProvider#history history for bundleIdentifier: %s, sharedUserId: %s, bucket: %s, raw history: %s", v27, 0x2Au);
    swift_arrayDestroy();
    v40 = v29;
    v22 = v82;
    MEMORY[0x266784AD0](v40, -1, -1);
    v41 = v27;
    a4 = v87;
    MEMORY[0x266784AD0](v41, -1, -1);
  }

  v42 = v12[1];
  v42(v21, v11);
  swift_beginAccess();
  v43 = *(v6 + 16);
  v44 = v92;
  if (!*(v43 + 16))
  {
LABEL_25:
    v90(v44, v22, v11);

    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = a2;
      v66 = v64;
      v94 = v64;
      *v63 = 136315394;
      *(v63 + 4) = sub_2662A320C(v89, v65, &v94);
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_2662A320C(v93, a4, &v94);
      v67 = "ResolvedAppHistoryProvider#history no app mentions for %s, sharedUserId: %s";
LABEL_29:
      _os_log_impl(&dword_26629C000, v61, v62, v67, v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v66, -1, -1);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

LABEL_30:

    v42(v44, v11);
    return 0;
  }

  v45 = sub_2662A3E98(v93, a4);
  if ((v46 & 1) == 0)
  {

    goto LABEL_25;
  }

  v47 = v22;
  v48 = *(*(v43 + 56) + 8 * v45);

  if (!*(v48 + 16) || (v49 = sub_2662A3E98(v89, a2), (v50 & 1) == 0))
  {

    v44 = v86;
    v90(v86, v47, v11);

    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = a2;
      v66 = v68;
      v94 = v68;
      *v63 = 136315394;
      *(v63 + 4) = sub_2662A320C(v89, v69, &v94);
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_2662A320C(v93, a4, &v94);
      v67 = "ResolvedAppHistoryProvider#history no bundle stats for %s, sharedUserId: %s";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v51 = *(*(v48 + 56) + 8 * v49);

  if (v88)
  {
    v52 = 0x6465727265666E69;
  }

  else
  {
    v52 = 0xD000000000000013;
  }

  if (v88)
  {
    v53 = 0xEB00000000707041;
  }

  else
  {
    v53 = 0x80000002664F2EE0;
  }

  v54 = *(v51 + 16);
  v92 = v53;
  v88 = v52;
  if (v54)
  {
    v55 = a2;
    v56 = a4;
    v57 = sub_2662A3E98(v52, v53);
    v59 = v58;

    if (v59)
    {
      v60 = *(*(v51 + 56) + 8 * v57);
    }

    else
    {
      v60 = 0;
    }

    a2 = v55;
  }

  else
  {
    v56 = a4;

    v60 = 0;
  }

  v71 = v85;
  v90(v85, v47, v11);

  v72 = a2;
  v73 = v56;

  v74 = sub_2664DFE18();
  v75 = sub_2664E06E8();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v84 = v12;
    v77 = v76;
    v78 = swift_slowAlloc();
    v94 = v78;
    *v77 = 136315906;
    *(v77 + 4) = sub_2662A320C(v93, v73, &v94);
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_2662A320C(v89, v72, &v94);
    *(v77 + 22) = 2080;
    v79 = sub_2662A320C(v88, v92, &v94);

    *(v77 + 24) = v79;
    *(v77 + 32) = 2048;
    *(v77 + 34) = v60;
    _os_log_impl(&dword_26629C000, v74, v75, "ResolvedAppHistoryProvider#history app mentions for: %s, %s, %s: %ld.", v77, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v78, -1, -1);
    MEMORY[0x266784AD0](v77, -1, -1);

    v80 = v85;
  }

  else
  {

    v80 = v71;
  }

  v42(v80, v11);
  return v60;
}

uint64_t ResolvedAppHistoryProvider.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ResolvedAppHistoryProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t (*sub_26639977C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_266399EE4(v8);
  v8[9] = sub_2663999E4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26639A054;
}

uint64_t (*sub_266399828(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_266399EE4(v8);
  v8[9] = sub_266399B68(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26639A054;
}

uint64_t (*sub_2663998D4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_266399F0C(v8);
  v8[9] = sub_266399CC0(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_266399980;
}

void sub_266399984(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2663999E4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2664538E8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_26644FF98(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2662A3E98(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_266399B3C;
}

void (*sub_266399B68(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_266454274();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2664510B4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2662A3E98(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_266399B3C;
}

void (*sub_266399CC0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_266454288();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2664510C8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2662A3E98(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_266399B3C;
}

void sub_266399E18(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_2662C1834(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  v12 = *v4;

  free(v4);
}

uint64_t (*sub_266399EE4(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26639A04C;
}

uint64_t (*sub_266399F0C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266399F34;
}

unint64_t sub_266399F50()
{
  result = qword_2800731A8;
  if (!qword_2800731A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800731A8);
  }

  return result;
}

uint64_t MusicSiriItemIdentifierResponse.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicSiriItemIdentifierResponse.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t type metadata accessor for MusicSiriItemIdentifierResponse()
{
  result = qword_2800731C8;
  if (!qword_2800731C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSiriItemIdentifierResponse.err.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MusicSiriItemIdentifierResponse() + 20);

  return sub_26639A1B8(a1, v3);
}

uint64_t sub_26639A1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicSiriItemIdentifierResponse.init(id:err:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for MusicSiriItemIdentifierResponse() + 20);
  v9 = sub_2664DF6F8();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;

  return sub_26639A1B8(a3, &a4[v8]);
}

uint64_t MusicSiriItemRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_26639A3B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = a5;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B8, &qword_2664E98F0) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v9 = sub_2664DF6B8();
  *(v5 + 144) = v9;
  v10 = *(v9 - 8);
  *(v5 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v12 = sub_2664DF738();
  *(v5 + 168) = v12;
  v13 = *(v12 - 8);
  *(v5 + 176) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C80, &qword_2664E6498) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v16 = sub_2664DF7C8();
  *(v5 + 208) = v16;
  v17 = *(v16 - 8);
  *(v5 + 216) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v19 = sub_2664DF718();
  *(v5 + 232) = v19;
  v20 = *(v19 - 8);
  *(v5 + 240) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 272) = *a4;

  return MEMORY[0x2822009F8](sub_26639A65C, 0, 0);
}

uint64_t sub_26639A65C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 104);

  if (v1 == 1)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 96);
    sub_2664DF6C8();
    v5 = sub_2664DF6D8();
    sub_2664DF798();
    v5(v0 + 48, 0);
  }

  else
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 96);
    sub_2664DF6E8();
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  sub_2662A7224(*(v0 + 112), v10, &qword_280072C80, &qword_2664E6498);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_2662A9238(*(v0 + 200), &qword_280072C80, &qword_2664E6498);
  }

  else
  {
    v11 = *(v0 + 248);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);
    (*(v13 + 32))(v12, *(v0 + 200), v14);
    (*(v13 + 16))(v15, v12, v14);
    (*(v13 + 56))(v15, 0, 1, v14);
    v16 = sub_2664DF6D8();
    sub_2664DF7A8();
    v16(v0 + 16, 0);
    (*(v13 + 8))(v12, v14);
  }

  v17 = *(MEMORY[0x277D2A500] + 4);
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_26639A8A0;
  v19 = *(v0 + 248);
  v20 = *(v0 + 184);

  return MEMORY[0x2821894D8](v20);
}

uint64_t sub_26639A8A0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_26639AC34;
  }

  else
  {
    v3 = sub_26639A9B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26639A9B4()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  sub_2664DF728();
  sub_2664DF6A8();
  v4 = sub_2664DF788();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = v0[17];
  if (v6 == 1)
  {
    sub_2662A9238(v0[17], &qword_2800731B8, &qword_2664E98F0);
    v33 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v9 = v0[17];
    v33 = sub_2664DF758();
    v8 = v10;
    (*(v5 + 8))(v7, v4);
  }

  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  v17 = v0[16];
  v18 = v0[11];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);
  v19 = sub_2664DF6F8();
  v20 = *(*(v19 - 8) + 56);
  v20(v17, 1, 1, v19);
  v21 = *(type metadata accessor for MusicSiriItemIdentifierResponse() + 20);
  v20(v18 + v21, 1, 1, v19);
  *v18 = v33;
  v18[1] = v8;
  sub_26639A1B8(v17, v18 + v21);
  v22 = v0[31];
  v23 = v0[28];
  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[23];
  v27 = v0[20];
  v29 = v0[16];
  v28 = v0[17];
  v30 = v0[15];

  v31 = v0[1];

  return v31();
}

uint64_t sub_26639AC34()
{
  v1 = v0[33];
  v2 = v0[15];
  v3 = v0[11];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
  v4 = sub_2664DF6F8();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  v6(v2, v5 ^ 1u, 1, v4);
  v7 = *(type metadata accessor for MusicSiriItemIdentifierResponse() + 20);
  v6(v3 + v7, 1, 1, v4);
  *v3 = 0;
  v3[1] = 0;
  sub_26639A1B8(v2, v3 + v7);
  v8 = v0[31];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v13 = v0[20];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];

  v17 = v0[1];

  return v17();
}

unint64_t sub_26639ADF8()
{
  result = qword_2800731C0;
  if (!qword_2800731C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800731C0);
  }

  return result;
}

uint64_t sub_26639AE4C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2662BD660;

  return sub_26639A3B8(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MusicSiriItemProviding.getMusicSiriItemIdentifier(requestString:musicSiriItemRequestType:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2662C1890;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

void sub_26639B098()
{
  sub_26639B11C();
  if (v0 <= 0x3F)
  {
    sub_26639B16C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26639B11C()
{
  if (!qword_2800731D8)
  {
    v0 = sub_2664E0948();
    if (!v1)
    {
      atomic_store(v0, &qword_2800731D8);
    }
  }
}

void sub_26639B16C()
{
  if (!qword_2800731E0)
  {
    sub_2664DF6F8();
    v0 = sub_2664E0948();
    if (!v1)
    {
      atomic_store(v0, &qword_2800731E0);
    }
  }
}

uint64_t dispatch thunk of MusicSiriItemProvider.getMusicSiriItemIdentifier(requestString:musicSiriItemRequestType:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2662BD660;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_26639B378(uint64_t a1)
{
  result = MEMORY[0x266783640](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2664D0458(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t INMediaSearch.toAudioMediaItem()()
{
  v1 = v0;
  v2 = sub_2664DFBE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 mediaName];
  if (v6)
  {
    v7 = v6;
    sub_2664E02C8();
  }

  sub_2663ECB60([v1 mediaType], v5);
  v8 = [v1 artistName];
  if (v8)
  {
    v9 = v8;
    sub_2664E02C8();
  }

  return sub_2664DFBF8();
}

uint64_t sub_26639B5CC()
{
  result = [v0 mediaType];
  if (result)
  {
    if ([v0 reference] || objc_msgSend(v0, sel_sortOrder))
    {
      return 0;
    }

    v2 = [v0 albumName];
    if (v2)
    {
      goto LABEL_6;
    }

    v2 = [v0 mediaName];
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = [v0 genreNames];
    if (v3)
    {

      result = [v0 genreNames];
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = sub_2664E04A8();

      v6 = *(v5 + 16);

      if (v6)
      {
        return 0;
      }
    }

    v2 = [v0 artistName];
    if (v2)
    {
LABEL_6:

      return 0;
    }

    v7 = [v0 moodNames];
    if (!v7)
    {
LABEL_16:
      v2 = [v0 releaseDate];
      if (!v2)
      {
        v2 = [v0 mediaIdentifier];
        if (!v2)
        {
          return 1;
        }
      }

      goto LABEL_6;
    }

    result = [v0 moodNames];
    if (result)
    {
      v8 = result;
      v9 = sub_2664E04A8();

      v10 = *(v9 + 16);

      if (v10)
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t INMediaSearch.resolvedAlbumName.getter()
{
  v1 = [v0 albumName];
  if (!v1)
  {
    v4 = [v0 mediaName];
    if (v4)
    {
      v5 = v4;
      v3 = sub_2664E02C8();

      if ([v0 mediaType] == 2)
      {
        return v3;
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = sub_2664E02C8();

  return v3;
}

uint64_t INMediaSearch.resolvedArtistName.getter()
{
  v1 = [v0 artistName];
  if (!v1)
  {
    v4 = [v0 mediaName];
    if (v4)
    {
      v5 = v4;
      v3 = sub_2664E02C8();

      if ([v0 mediaType] == 3)
      {
        return v3;
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = sub_2664E02C8();

  return v3;
}

id INMediaSearch.resolvedMediaName.getter()
{
  if (([v0 mediaType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  result = [v0 mediaName];
  if (result)
  {
    v2 = result;
    v3 = sub_2664E02C8();

    return v3;
  }

  return result;
}

Swift::Bool __swiftcall INMediaSearch.termsEqual(to:)(INMediaSearch_optional to)
{
  isa = to.value.super.isa;
  v3 = sub_2664DFE38();
  v125 = *(v3 - 8);
  v4 = v125[8];
  v5 = MEMORY[0x28223BE20](v3);
  v120 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v117 = &v110 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v116 = &v110 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v110 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v110 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v113 = &v110 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v111 = &v110 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v110 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v110 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v26 = v125[2];
  v121 = v25;
  v122 = v26;
  v123 = v125 + 2;
  v26(v24, v25, v3);
  v27 = isa;
  v28 = v1;
  v124 = isa;
  v29 = v28;
  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();

  v32 = os_log_type_enabled(v30, v31);
  v114 = v16;
  v115 = v13;
  v118 = v27;
  v119 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v33 = 138412546;
    *(v33 + 4) = v29;
    *v34 = v29;
    *(v33 + 12) = 2080;
    v126 = v124;
    v127 = v35;
    v36 = v29;
    v37 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EC8, qword_2664E8BA0);
    v38 = sub_2664E0318();
    v40 = v3;
    v41 = sub_2662A320C(v38, v39, &v127);
    v42 = v125;

    *(v33 + 14) = v41;
    v3 = v40;
    _os_log_impl(&dword_26629C000, v30, v31, "INMediaSearch#termsEqual comparing: %@ with %s", v33, 0x16u);
    sub_2662A9238(v34, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);

    v43 = v42[1];
    v43(v24, v40);
  }

  else
  {

    v43 = v125[1];
    v43(v24, v3);
  }

  v44 = v120;
  if (!v124)
  {
    v122(v120, v121, v3);
    v45 = sub_2664DFE18();
    v52 = sub_2664E06C8();
    if (os_log_type_enabled(v45, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v45, v52, "INMediaSearch#termsEqual comparing to nil, not equal terms", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    goto LABEL_83;
  }

  v45 = v118;
  v46 = v119;
  v47 = [v119 artistName];
  if (v47)
  {
    v48 = v47;
    v49 = sub_2664E02C8();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v54 = [v45 artistName];
  if (!v54)
  {
    if (!v51)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v55 = v54;
  v56 = sub_2664E02C8();
  v58 = v57;

  if (!v51)
  {
    if (!v58)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!v58)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v49 == v56 && v51 == v58)
  {

    goto LABEL_25;
  }

  v63 = sub_2664E0D88();

  if ((v63 & 1) == 0)
  {
LABEL_22:
    v44 = v117;
    v122(v117, v121, v3);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_82;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INMediaSearch#termsEqual artist names not matching, not equal terms";
LABEL_81:
    _os_log_impl(&dword_26629C000, v59, v60, v62, v61, 2u);
    MEMORY[0x266784AD0](v61, -1, -1);
    goto LABEL_82;
  }

LABEL_25:
  v64 = [v46 mediaName];
  if (v64)
  {
    v65 = v64;
    v66 = sub_2664E02C8();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = [v45 mediaName];
  if (!v69)
  {
    if (!v68)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v70 = v69;
  v71 = sub_2664E02C8();
  v73 = v72;

  if (!v68)
  {
    if (!v73)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (!v73)
  {
LABEL_37:

LABEL_38:
    v44 = v116;
    v122(v116, v121, v3);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_82;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INMediaSearch#termsEqual media names not matching, not equal terms";
    goto LABEL_81;
  }

  if (v66 == v71 && v68 == v73)
  {

    goto LABEL_41;
  }

  v74 = sub_2664E0D88();

  if ((v74 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  v75 = [v46 mediaType];
  if (v75 != [v45 mediaType])
  {
    v44 = v115;
    v122(v115, v121, v3);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_82;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INMediaSearch#termsEqual media types not matching, not equal terms";
    goto LABEL_81;
  }

  v76 = [v46 albumName];
  if (v76)
  {
    v77 = v76;
    v78 = sub_2664E02C8();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  v81 = [v45 albumName];
  if (!v81)
  {
    if (!v80)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  v82 = v81;
  v83 = sub_2664E02C8();
  v85 = v84;

  if (!v80)
  {
    if (!v85)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (!v85)
  {
LABEL_56:

LABEL_57:
    v44 = v114;
    v122(v114, v121, v3);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_82;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INMediaSearch#termsEqual album names not matching, not equal terms";
    goto LABEL_81;
  }

  if (v78 == v83 && v80 == v85)
  {

    goto LABEL_60;
  }

  v86 = sub_2664E0D88();

  if ((v86 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v87 = [v46 genreNames];
  if (v87)
  {
    v88 = v87;
    v89 = sub_2664E04A8();
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  v90 = sub_26639EB98(v89);

  v91 = [v45 genreNames];
  if (v91)
  {
    v92 = v91;
    v93 = sub_2664E04A8();
  }

  else
  {
    v93 = MEMORY[0x277D84F90];
  }

  v94 = sub_26639EB98(v93);

  v95 = sub_26639C5D0(v90, v94);

  if ((v95 & 1) == 0)
  {
    v44 = v113;
    v122(v113, v121, v3);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_82;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "INMediaSearch#termsEqual genre names not matching, not equal terms";
    goto LABEL_81;
  }

  v96 = [v46 moodNames];
  if (v96)
  {
    v97 = v96;
    v98 = sub_2664E04A8();
  }

  else
  {
    v98 = MEMORY[0x277D84F90];
  }

  v99 = sub_26639EB98(v98);

  v100 = [v45 moodNames];
  if (v100)
  {
    v101 = v100;
    v102 = sub_2664E04A8();
  }

  else
  {
    v102 = MEMORY[0x277D84F90];
  }

  v103 = sub_26639EB98(v102);

  v104 = sub_26639C5D0(v99, v103);

  if ((v104 & 1) == 0)
  {
    v44 = v111;
    v122(v111, v121, v3);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "INMediaSearch#termsEqual mood names not matching, not equal terms";
      goto LABEL_81;
    }

LABEL_82:

LABEL_83:
    v108 = 0;
    goto LABEL_84;
  }

  v44 = v112;
  v122(v112, v121, v3);
  v105 = sub_2664DFE18();
  v106 = sub_2664E06C8();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_26629C000, v105, v106, "INMediaSearch#termsEqual equal terms", v107, 2u);
    v44 = v112;
    MEMORY[0x266784AD0](v107, -1, -1);
  }

  v108 = 1;
LABEL_84:

  v43(v44, v3);
  return v108;
}

uint64_t sub_26639C5D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    v17 = sub_2664E0EB8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL static INMediaSearch.sameSearchTerms(one:two:)(void *a1, objc_class *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  v3 = a1;
  v6.value.super.isa = a2;
  v4 = INMediaSearch.termsEqual(to:)(v6);

  return v4;
}

Class INMediaSearch.with(mediaType:sortOrder:mediaName:artistName:albumName:genreNames:moodNames:releaseDate:reference:mediaIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_2662C1744(0, &qword_280072F18, 0x277CD3DC8);

  v11 = a11;
  v12 = sub_2664E06A8();
  isa = INMediaSearch.with(other:)(v12).super.isa;

  return isa;
}

INMediaSearch __swiftcall INMediaSearch.with(other:)(INMediaSearch other)
{
  v3 = [(objc_class *)other.super.isa mediaIdentifier];
  if (v3 || (v3 = [v1 mediaIdentifier]) != 0)
  {
    v4 = v3;
    sub_2664E02C8();
  }

  if ([(objc_class *)other.super.isa mediaType])
  {
    isa = other.super.isa;
  }

  else
  {
    isa = v1;
  }

  [(objc_class *)isa mediaType];
  if ([(objc_class *)other.super.isa sortOrder])
  {
    v6 = other.super.isa;
  }

  else
  {
    v6 = v1;
  }

  [(objc_class *)v6 sortOrder];
  v7 = [(objc_class *)other.super.isa mediaName];
  if (v7 || (v7 = [v1 mediaName]) != 0)
  {
    v8 = v7;
    sub_2664E02C8();
  }

  v9 = [(objc_class *)other.super.isa artistName];
  if (v9 || (v9 = [v1 artistName]) != 0)
  {
    v10 = v9;
    sub_2664E02C8();
  }

  v11 = [(objc_class *)other.super.isa albumName];
  if (v11 || (v11 = [v1 albumName]) != 0)
  {
    v12 = v11;
    sub_2664E02C8();
  }

  v13 = [v1 genreNames];
  if (v13)
  {
    v14 = v13;
    sub_2664E04A8();
  }

  v15 = [(objc_class *)other.super.isa genreNames];
  if (v15)
  {
    v16 = v15;
    sub_2664E04A8();
  }

  v17 = [v1 moodNames];
  if (v17)
  {
    v18 = v17;
    sub_2664E04A8();
  }

  v19 = [(objc_class *)other.super.isa moodNames];
  if (v19)
  {
    v20 = v19;
    sub_2664E04A8();
  }

  if (![(objc_class *)other.super.isa releaseDate])
  {
    [v1 releaseDate];
  }

  if ([(objc_class *)other.super.isa reference])
  {
    v21 = other.super.isa;
  }

  else
  {
    v21 = v1;
  }

  [(objc_class *)v21 reference];
  sub_2662C1744(0, &qword_280072F18, 0x277CD3DC8);
  return sub_2664E06A8();
}

Swift::String_optional __swiftcall INMediaSearch.extractSearchTerms()()
{
  v2 = v0;
  v3 = [v0 mediaName];
  if (v3)
  {
    v1 = v3;
    v4 = sub_2664E02C8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v49 = v4;
  v50 = v6;
  v7 = [v2 artistName];
  if (v7)
  {
    v1 = v7;
    v8 = sub_2664E02C8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v51 = v8;
  v52 = v10;
  v11 = [v2 albumName];
  if (v11)
  {
    v1 = v11;
    v12 = sub_2664E02C8();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = 0;
  v53 = v12;
  v54 = v14;
  v16 = MEMORY[0x277D84F90];
LABEL_11:
  if (v15 <= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17 + 1;
  v19 = 16 * v15 + 40;
  while (v15 != 3)
  {
    if (v18 == ++v15)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v2 = sub_2663846F4(0, *(v2 + 2) + 1, 1, v2);
LABEL_33:
      v34 = *(v2 + 2);
      v33 = *(v2 + 3);
      v35 = (v34 + 1);
      if (v34 >= v33 >> 1)
      {
        v2 = sub_2663846F4((v33 > 1), v34 + 1, 1, v2);
      }

      *(v2 + 2) = v35;
      v36 = &v2[16 * v34];
      *(v36 + 4) = v14;
      *(v36 + 5) = v1;
      v55 = v2;
      goto LABEL_37;
    }

    v20 = v19 + 16;
    v14 = *&v48[v19];
    v19 += 16;
    if (v14)
    {
      v21 = *&v48[v20 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2663846F4(0, *(v16 + 2) + 1, 1, v16);
      }

      v23 = *(v16 + 2);
      v22 = *(v16 + 3);
      v1 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v16 = sub_2663846F4((v22 > 1), v23 + 1, 1, v16);
      }

      *(v16 + 2) = v1;
      v24 = &v16[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v14;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  swift_arrayDestroy();
  v55 = v16;
  v25 = [v2 genreNames];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2664E04A8();

    if (*(v27 + 16))
    {
      sub_2662F9CB0(v27);
    }

    else
    {
    }
  }

  v28 = [v2 moodNames];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2664E04A8();

    if (*(v30 + 16))
    {
      sub_2662F9CB0(v30);
    }

    else
    {
    }
  }

  v31 = sub_26639D0A0();
  v2 = v55;
  if (v32)
  {
    v14 = v31;
    v1 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v35 = *(v55 + 2);
  if (!v35)
  {

    v43 = 0;
    goto LABEL_45;
  }

LABEL_37:
  v37 = 0;
  v38 = (v2 + 40);
  v14 = MEMORY[0x277D84F90];
  do
  {
    if (v37 >= *(v2 + 2))
    {
      goto LABEL_48;
    }

    v39 = *(v38 - 1);
    v1 = *v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2663846F4(0, *(v14 + 2) + 1, 1, v14);
    }

    v41 = *(v14 + 2);
    v40 = *(v14 + 3);
    if (v41 >= v40 >> 1)
    {
      v14 = sub_2663846F4((v40 > 1), v41 + 1, 1, v14);
    }

    ++v37;
    *(v14 + 2) = v41 + 1;
    v42 = &v14[16 * v41];
    *(v42 + 4) = v39;
    *(v42 + 5) = v1;
    v38 += 2;
  }

  while (v35 != v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_26639EC30();
  v43 = sub_2664E0288();
  v35 = v44;

LABEL_45:
  v45 = v43;
  v46 = v35;
  result.value._object = v46;
  result.value._countAndFlagsBits = v45;
  return result;
}

uint64_t sub_26639D0A0()
{
  v1 = sub_2664DFE38();
  v214 = *(v1 - 8);
  v215 = v1;
  v2 = *(v214 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v210 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v200 = &v181 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v185 = &v181 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v186 = &v181 - v10;
  MEMORY[0x28223BE20](v9);
  v188 = &v181 - v11;
  v12 = sub_2664DE358();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v208 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DE1C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v205 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DE5B8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v209 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DE518();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v204 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731F0, &qword_2664E9A60);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v203 = &v181 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731F8, &qword_2664E9A68);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v202 = &v181 - v30;
  v198 = sub_2664DE368();
  v207 = *(v198 - 8);
  v31 = *(v207 + 64);
  v32 = MEMORY[0x28223BE20](v198);
  v197 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v206 = &v181 - v34;
  v194 = sub_2664DE178();
  v190 = *(v194 - 8);
  v35 = *(v190 + 64);
  v36 = MEMORY[0x28223BE20](v194);
  v187 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v189 = &v181 - v38;
  v192 = sub_2664DE598();
  v191 = *(v192 - 8);
  v39 = *(v191 + 64);
  v40 = MEMORY[0x28223BE20](v192);
  v201 = &v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v196 = (&v181 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v47 = &v181 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v181 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v181 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v181 - v54;
  v56 = sub_2664DE438();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v56);
  *&v199 = &v181 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v195 = &v181 - v62;
  MEMORY[0x28223BE20](v61);
  v213 = &v181 - v63;
  v64 = [v0 releaseDate];
  if (!v64)
  {
    (*(v57 + 56))(v55, 1, 1, v56);
LABEL_7:
    sub_2662A9238(v55, &qword_2800737D0, qword_2664E4FD0);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v73 = v215;
    v74 = __swift_project_value_buffer(v215, qword_280F914F0);
    swift_beginAccess();
    v75 = v214;
    v76 = v210;
    (*(v214 + 16))(v210, v74, v73);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06C8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_26629C000, v77, v78, "INMediaSearch#extractYearOrDecadeAsString startDate nil", v79, 2u);
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    (*(v75 + 8))(v76, v73);
    return 0;
  }

  v65 = v64;
  v184 = v13;
  v211 = v56;
  v212 = v57;
  v66 = [v64 startDate];

  v193 = v12;
  if (v66)
  {
    sub_2664DE3F8();

    v67 = v212;
    v68 = v212[7];
    v69 = v53;
    v70 = 0;
  }

  else
  {
    v67 = v212;
    v68 = v212[7];
    v69 = v53;
    v70 = 1;
  }

  v71 = v211;
  v68(v69, v70, 1, v211);
  sub_26639F090(v53, v55);
  v72 = v67[6];
  if (v72(v55, 1, v71) == 1)
  {
    goto LABEL_7;
  }

  v81 = v55;
  v82 = v67[4];
  v82(v213, v81, v71);
  v83 = [v0 releaseDate];
  if (v83)
  {
    v84 = v83;
    v85 = [v83 endDate];

    if (v85)
    {
      sub_2664DE3F8();

      v86 = 0;
    }

    else
    {
      v86 = 1;
    }

    v87 = v215;
    v71 = v211;
    v68(v47, v86, 1, v211);
    sub_26639F090(v47, v50);
    if (v72(v50, 1, v71) == 1)
    {
      goto LABEL_19;
    }

    v82(v195, v50, v71);
    sub_2664DE568();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073208, &unk_2664E9A70);
    v120 = sub_2664DE578();
    v121 = *(v120 - 8);
    v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v200 = *(v121 + 72);
    v210 = v119;
    v123 = swift_allocObject();
    v199 = xmmword_2664E36F0;
    *(v123 + 16) = xmmword_2664E36F0;
    v124 = *(v121 + 104);
    v183 = *MEMORY[0x277CC9968];
    v182 = v124;
    v124(v123 + v122);
    sub_2662C43B4(v123);
    swift_setDeallocating();
    v181 = *(v121 + 8);
    v181(v123 + v122, v120);
    swift_deallocClassInstance();
    v125 = v189;
    sub_2664DE528();

    v126 = sub_2664DE158();
    v128 = v127;
    v129 = *(v190 + 8);
    v129(v125, v194);
    if ((v128 & 1) != 0 || (v126 - 3654) < 0xFFFFFFFFFFFFFFFCLL)
    {
      v148 = swift_allocObject();
      *(v148 + 16) = v199;
      v182(v148 + v122, v183, v120);
      sub_2662C43B4(v148);
      swift_setDeallocating();
      v181(v148 + v122, v120);
      swift_deallocClassInstance();
      v149 = v187;
      sub_2664DE528();

      v150 = sub_2664DE158();
      v152 = v151;
      v129(v149, v194);
      if ((v152 & 1) != 0 || v150 != 365)
      {
        v170 = v214;
        v171 = v215;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v172 = __swift_project_value_buffer(v171, qword_280F914F0);
        swift_beginAccess();
        v173 = v185;
        (*(v170 + 16))(v185, v172, v171);
        v174 = sub_2664DFE18();
        v175 = sub_2664E06C8();
        v176 = os_log_type_enabled(v174, v175);
        v177 = v212;
        if (v176)
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_26629C000, v174, v175, "INMediaSearch#extractYearOrDecadeAsString range not 1 year or a decade. Returning nil", v178, 2u);
          MEMORY[0x266784AD0](v178, -1, -1);
        }

        (*(v170 + 8))(v173, v171);
        (*(v191 + 8))(v196, v192);
        v179 = v177[1];
        v180 = v211;
        v179(v195, v211);
        v179(v213, v180);
        return 0;
      }

      v153 = sub_2664DE318();
      (*(*(v153 - 8) + 56))(v202, 1, 1, v153);
      v154 = sub_2664DE308();
      (*(*(v154 - 8) + 56))(v203, 1, 1, v154);
      sub_2664DE4F8();
      sub_2664DE548();
      sub_2664DE5A8();
      sub_2664DE1B8();
      v155 = v197;
      sub_2664DE328();
      v156 = v208;
      sub_2664DE348();
      v157 = v206;
      sub_2664DE338();
      (*(v184 + 8))(v156, v193);
      v158 = *(v207 + 8);
      v159 = v155;
      v160 = v198;
      v158(v159, v198);
      sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428]);
      sub_2664DE418();
      v158(v157, v160);
      v139 = v219;
      v161 = v220;
      v142 = v214;
      v140 = v215;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v162 = __swift_project_value_buffer(v140, qword_280F914F0);
      swift_beginAccess();
      v143 = v186;
      (*(v142 + 16))(v186, v162, v140);

      v144 = sub_2664DFE18();
      v163 = sub_2664E06C8();

      if (os_log_type_enabled(v144, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v217 = v165;
        *v164 = 136315138;
        *(v164 + 4) = sub_2662A320C(v139, v161, &v217);
        _os_log_impl(&dword_26629C000, v144, v163, "INMediaSearch#extractYearOrDecadeAsString returning year: %s", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v165);
        MEMORY[0x266784AD0](v165, -1, -1);
        MEMORY[0x266784AD0](v164, -1, -1);

        (*(v142 + 8))(v186, v140);
        goto LABEL_37;
      }
    }

    else
    {
      v130 = sub_2664DE318();
      (*(*(v130 - 8) + 56))(v202, 1, 1, v130);
      v131 = sub_2664DE308();
      (*(*(v131 - 8) + 56))(v203, 1, 1, v131);
      sub_2664DE4F8();
      sub_2664DE548();
      sub_2664DE5A8();
      sub_2664DE1B8();
      v132 = v197;
      sub_2664DE328();
      v133 = v208;
      sub_2664DE348();
      v134 = v206;
      sub_2664DE338();
      (*(v184 + 8))(v133, v193);
      v135 = *(v207 + 8);
      v136 = v132;
      v137 = v198;
      v135(v136, v198);
      sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428]);
      sub_2664DE418();
      v135(v134, v137);
      v217 = v219;
      v218 = v220;

      MEMORY[0x2667833B0](115, 0xE100000000000000);

      v139 = v217;
      v138 = v218;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v140 = v215;
      v141 = __swift_project_value_buffer(v215, qword_280F914F0);
      swift_beginAccess();
      v142 = v214;
      v143 = v188;
      (*(v214 + 16))(v188, v141, v140);

      v144 = sub_2664DFE18();
      v145 = sub_2664E06C8();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v217 = v147;
        *v146 = 136315138;
        *(v146 + 4) = sub_2662A320C(v139, v138, &v217);
        _os_log_impl(&dword_26629C000, v144, v145, "INMediaSearch#extractYearOrDecadeAsString returning decade: %s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v147);
        MEMORY[0x266784AD0](v147, -1, -1);
        MEMORY[0x266784AD0](v146, -1, -1);

        (*(v142 + 8))(v188, v140);
LABEL_37:
        (*(v191 + 8))(v196, v192);
        v166 = v211;
        v167 = v212[1];
        v167(v195, v211);
        v167(v213, v166);
        return v139;
      }
    }

    (*(v142 + 8))(v143, v140);
    (*(v191 + 8))(v196, v192);
    v168 = v211;
    v169 = v212[1];
    v169(v195, v211);
    v169(v213, v168);
    return v139;
  }

  v68(v50, 1, 1, v71);
  v87 = v215;
LABEL_19:
  sub_2662A9238(v50, &qword_2800737D0, qword_2664E4FD0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v88 = __swift_project_value_buffer(v87, qword_280F914F0);
  swift_beginAccess();
  v89 = v214;
  v90 = v200;
  (*(v214 + 16))(v200, v88, v87);
  v91 = v212;
  v92 = v199;
  (v212[2])(v199, v213, v71);
  v93 = sub_2664DFE18();
  v94 = sub_2664E06C8();
  v95 = os_log_type_enabled(v93, v94);
  v96 = v193;
  v97 = v208;
  if (v95)
  {
    v98 = swift_slowAlloc();
    v195 = v98;
    v196 = swift_slowAlloc();
    v216 = v196;
    *v98 = 136315138;
    v99 = sub_2664DE318();
    (*(*(v99 - 8) + 56))();
    v100 = sub_2664DE308();
    (*(*(v100 - 8) + 56))(v203, 1, 1, v100);
    sub_2664DE4F8();
    LODWORD(v194) = v94;
    sub_2664DE548();
    sub_2664DE5A8();
    sub_2664DE1B8();
    v101 = v197;
    sub_2664DE328();
    sub_2664DE348();
    v102 = v199;
    v103 = v206;
    v104 = v93;
    sub_2664DE338();
    (*(v184 + 8))(v97, v96);
    v105 = v212;
    v106 = *(v207 + 8);
    v107 = v198;
    v106(v101, v198);
    sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428]);
    sub_2664DE418();
    v106(v103, v107);
    v108 = v105[1];
    v210 = ((v105 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v109 = v202;
    v212 = v108;
    (v108)(v102, v211);
    v97 = v208;
    v110 = sub_2662A320C(v217, v218, &v216);

    v111 = v195;
    *(v195 + 4) = v110;
    v71 = v211;
    _os_log_impl(&dword_26629C000, v104, v194, "INMediaSearch#extractYearOrDecadeAsString endDate nil. Returning start year: %s", v111, 0xCu);
    v112 = v196;
    __swift_destroy_boxed_opaque_existential_1Tm(v196);
    MEMORY[0x266784AD0](v112, -1, -1);
    MEMORY[0x266784AD0](v111, -1, -1);

    (*(v214 + 8))(v200, v215);
  }

  else
  {

    v113 = v91[1];
    v210 = ((v91 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v212 = v113;
    (v113)(v92, v71);
    (*(v89 + 8))(v90, v215);
    v107 = v198;
    v101 = v197;
    v109 = v202;
  }

  v114 = sub_2664DE318();
  (*(*(v114 - 8) + 56))(v109, 1, 1, v114);
  v115 = sub_2664DE308();
  (*(*(v115 - 8) + 56))(v203, 1, 1, v115);
  sub_2664DE4F8();
  sub_2664DE548();
  sub_2664DE5A8();
  sub_2664DE1B8();
  sub_2664DE328();
  sub_2664DE348();
  v116 = v206;
  sub_2664DE338();
  (*(v184 + 8))(v97, v193);
  v117 = *(v207 + 8);
  v117(v101, v107);
  sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428]);
  v118 = v213;
  sub_2664DE418();
  v117(v116, v107);
  (v212)(v118, v71);
  return v217;
}

uint64_t sub_26639EB98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266783640](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2664D0458(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26639EC30()
{
  result = qword_280F8F658;
  if (!qword_280F8F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280072440, &qword_2664E3600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F658);
  }

  return result;
}

uint64_t sub_26639EC94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266783640](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_266350228(v4, v5);
      sub_2664D05A8(v6, v5);
      sub_266350284(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_26639ED80(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2664E0A68())
  {
    v12 = sub_2662C1744(0, a2, a3);
    v13 = sub_26639F040(a4, a2, a3);
    result = MEMORY[0x266783640](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x266783B70](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_2664E0A68();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26639EED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for INMediaItemType(0);
  v4 = v3;
  v5 = sub_26639EFF8(&qword_280F8F630, type metadata accessor for INMediaItemType);
  result = MEMORY[0x266783640](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_2664D09B0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_26639EF84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266783640](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2664D0AA8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_26639EFF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26639F040(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2662C1744(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26639F090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26639F104(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2664E02C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

id sub_26639F19C()
{
  type metadata accessor for MultiUserConnectionProvider();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  *(v0 + 16) = result;
  qword_280F8F808 = v0;
  return result;
}

uint64_t sub_26639F1F0()
{
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = v1;
  type metadata accessor for MultiUserContext();
  v4 = swift_allocObject();
  v4[2] = sub_26639F7F0;
  v4[3] = v3;
  v4[4] = v0;
  swift_retain_n();
  v5 = v2;

  v6 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v6, v7, sub_2663A0450, v4);

  sub_2664E0748();

  swift_beginAccess();
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  return v8;
}

void sub_26639F358(uint64_t a1, unint64_t a2, void *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if (a3 || !a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v33, v12);
    v34 = a3;
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      if (a3)
      {
        v39 = a3;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v37 + 4) = v40;
      *v38 = v41;
      _os_log_impl(&dword_26629C000, v35, v36, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving homeUserID %@", v37, 0xCu);
      sub_2662A9238(v38, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    dispatch_group_leave(a4);
  }

  else
  {
    v43 = a5;
    v20 = qword_280F914E8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v21, v12);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = a4;
      v25 = v24;
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2662A320C(a1, a2, &v44);
      _os_log_impl(&dword_26629C000, v22, v23, "MultiUserConnectionProvider#getRecognizedSharedUserID homeUserID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      v27 = v25;
      a4 = v42;
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = a2;
    v28[4] = a4;
    v28[5] = a6;
    type metadata accessor for MultiUserContext();
    v29 = swift_allocObject();
    v29[2] = sub_2663A2D58;
    v29[3] = v28;
    v29[4] = v43;
    v30 = a4;

    v31 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
    static MultiUserContext.shared(refId:completion:)(v31, v32, sub_2663A2DBC, v29);
  }
}

void sub_26639F7FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, NSObject *a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  if (a2)
  {
    goto LABEL_16;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v20 = sub_2662A3E98(a3, a4);
  if ((v21 & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = *(*(a1 + 56) + 8 * v20);
  v23 = *MEMORY[0x277CEF5A8];
  v49[0] = sub_2664E02C8();
  v49[1] = v24;

  sub_2664E0AB8();
  if (!*(v22 + 16) || (v25 = sub_26634D9F8(v50), (v26 & 1) == 0))
  {

    sub_266350284(v50);
LABEL_14:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_15;
  }

  sub_2662A01E8(*(v22 + 56) + 32 * v25, &v51);
  sub_266350284(v50);

  if (!*(&v52 + 1))
  {
LABEL_15:
    sub_2662A9238(&v51, &unk_280074250, &unk_2664E3680);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v28 = v50[0];
    v27 = v50[1];
    swift_beginAccess();
    v29 = *(a6 + 24);
    *(a6 + 16) = v28;
    *(a6 + 24) = v27;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v30, v12);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();

    v48 = v31;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49[0] = v47;
      *v33 = 136315394;
      v34 = sub_2662A320C(v28, v27, v49);

      *(v33 + 4) = v34;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2662A320C(a3, a4, v49);
      v35 = v48;
      _os_log_impl(&dword_26629C000, v48, v32, "MultiUserConnectionProvider#getRecognizedSharedUserID SharedUserID: %s, homeUserID: %s", v33, 0x16u);
      v36 = v47;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v19, v12);
    goto LABEL_24;
  }

LABEL_16:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v17, v37, v12);
  v38 = a2;
  v39 = sub_2664DFE18();
  v40 = sub_2664E06D8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    if (a2)
    {
      v43 = a2;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = v44;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    *(v41 + 4) = v44;
    *v42 = v45;
    _os_log_impl(&dword_26629C000, v39, v40, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving sharedUserID %@", v41, 0xCu);
    sub_2662A9238(v42, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);
  }

  (*(v13 + 8))(v17, v12);
LABEL_24:
  dispatch_group_leave(a5);
}

void sub_26639FD64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    v12 = *(a1 + 32);
    if (*(v12 + 16))
    {
      v13 = *(a1 + 32);

      v14 = sub_2662A3E98(a2, a3);
      if (v15)
      {
        v16 = (*(v12 + 56) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];

        a4(v17, v18, 0);

        return;
      }
    }
  }

  v19 = *(a6 + 16);
  v20 = sub_2664E02A8();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  aBlock[4] = sub_2663A2D1C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26639F104;
  aBlock[3] = &block_descriptor_109;
  v22 = _Block_copy(aBlock);

  [v19 getFirstNameForSharedUserId:v20 completion:v22];
  _Block_release(v22);
}

uint64_t sub_26639FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  if (!a3 && a4)
  {
    swift_beginAccess();

    sub_266448E34(a1, a2, a5, a6);
    swift_endAccess();
    a3 = 0;
  }

  return a7(a1, a2, a3);
}

uint64_t static MultiUserContext.shared(refId:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280071B98 != -1)
    {
      swift_once();
    }

    v14 = off_280073210;
    v24[0] = a1;
    v24[1] = a2;
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v4;
    v15[5] = v4;
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v17 = *(*v14 + 160);

    v17(v24, sub_2663A2634, v15, 0, 1, sub_2662DBE30, v16);
  }

  else
  {
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
      _os_log_impl(&dword_26629C000, v20, v21, "MultiUserContext#shared Cannot retrieve context for nil refId", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    return a3(0);
  }
}

void sub_2663A0304(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4)
{
  if (a1 && (swift_beginAccess(), (v8 = *(a1 + 64)) != 0))
  {
    v9 = *(a1 + 56);

    a2(v9, v8, 0);
  }

  else
  {
    v10 = *(a4 + 16);
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    aBlock[4] = sub_2663A2D4C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26639F104;
    aBlock[3] = &block_descriptor_115;
    v12 = _Block_copy(aBlock);

    [v10 getHomeUserIdOfRecognizedUserWithCompletion_];
    _Block_release(v12);
  }
}

uint64_t sub_2663A045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!a3 && a4)
  {
    swift_beginAccess();
    v9 = *(a4 + 64);
    *(a4 + 56) = a1;
    *(a4 + 64) = a2;

    a3 = 0;
  }

  return a5(a1, a2, a3);
}

uint64_t sub_2663A04F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  type metadata accessor for MultiUserContext();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = sub_2663A2640;
  v10[5] = v9;
  v10[6] = v4;

  v11 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v11, v12, sub_2663A2648, v10);
}

uint64_t sub_2663A0600(id a1, void (*a2)(id, uint64_t))
{
  if (a1 && (a1 = [a1 homeUserId]) != 0)
  {
    v3 = a1;
    v4 = sub_2664E02C8();
    v6 = v5;

    a1 = v4;
  }

  else
  {
    v6 = 0;
  }

  a2(a1, v6);
}

void sub_2663A06B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    v12 = *(a1 + 48);
    if (*(v12 + 16))
    {
      v13 = *(a1 + 48);

      v14 = sub_2662A3E98(a2, a3);
      if (v15)
      {
        v16 = (*(v12 + 56) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];

        a4(v17, v18);

        return;
      }
    }
  }

  v19 = *(a6 + 16);
  v20 = sub_2664E02A8();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  aBlock[4] = sub_2663A298C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26639F104;
  aBlock[3] = &block_descriptor_91;
  v22 = _Block_copy(aBlock);

  [v19 getSharedUserIdForHomeUserId:v20 completion:v22];
  _Block_release(v22);
}

uint64_t sub_2663A0864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if (!a3 && a4)
  {
    swift_beginAccess();

    sub_266448E34(a1, a2, a5, a6);
    swift_endAccess();
  }

  return a7(a1, a2);
}

uint64_t sub_2663A093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  type metadata accessor for MultiUserContext();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = v6;

  v13 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v13, v14, a6, v12);
}

void sub_2663A09FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 40);

  v14 = sub_2662A3E98(a2, a3);
  if ((v15 & 1) == 0)
  {

LABEL_6:
    v18 = *(a6 + 16);
    v17 = sub_2664E02A8();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a5;
    aBlock[4] = sub_2663A29A4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663A0C48;
    aBlock[3] = &block_descriptor_97;
    v20 = _Block_copy(aBlock);

    [v18 getSharedUserInfoForSharedUserID:v17 completion:v20];
    _Block_release(v20);
    goto LABEL_7;
  }

  v16 = *(*(v12 + 56) + 8 * v14);

  v17 = v16;
  a4(v16);

LABEL_7:
}

uint64_t sub_2663A0BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  if (a2)
  {
    swift_beginAccess();
    v9 = a1;

    sub_266448F3C(a1, a3, a4);
    swift_endAccess();
  }

  return a5(a1);
}

void sub_2663A0C48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2663A0CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for MultiUserContext();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v4;

  v9 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v9, v10, a4, v8);
}

void sub_2663A0D78(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  if (a1 && (swift_beginAccess(), *(a1 + 72)))
  {
    v8 = *(a1 + 72);

    a2(v9, 0);
  }

  else
  {
    v10 = *(a4 + 16);
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    aBlock[4] = sub_2663A2980;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663A0F44;
    aBlock[3] = &block_descriptor_22;
    v12 = _Block_copy(aBlock);

    [v10 getConformingSharedUserIds_];
    _Block_release(v12);
  }
}

uint64_t sub_2663A0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!a2 && a3)
  {
    swift_beginAccess();
    v7 = *(a3 + 72);
    *(a3 + 72) = a1;

    a2 = 0;
  }

  return a4(a1, a2);
}

uint64_t sub_2663A0F44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073238, &unk_2664E9B78);
    v4 = sub_2664E01C8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t MultiUserConnectionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2663A108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for MultiUserContext();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = sub_2663A2DE0;
  v11[5] = v10;
  v11[6] = v9;

  v12 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v12, v13, sub_2663A2DD4, v11);
}

uint64_t sub_2663A11D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v14 = *v8;
  type metadata accessor for MultiUserContext();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v14;

  v16 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v16, v17, a8, v15);
}

uint64_t sub_2663A12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = *v6;
  type metadata accessor for MultiUserContext();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;

  v12 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v12, v13, a6, v11);
}

uint64_t sub_2663A1388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073240, qword_2664E9B88);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385DB8(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x80000002664E9B30;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000010, 0x80000002664E9B30, 1, v3);
  *(v0 + 24) = result;
  off_280073210 = v0;
  return result;
}

uint64_t sub_2663A149C()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000017, 0x80000002664F6500, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073218 = v10;
  return result;
}

uint64_t sub_2663A1634()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280073220);
  *__swift_project_value_buffer(v0, qword_280073220) = 60;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_2663A16C4(void (*a1)(void **), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a1;
  v8 = sub_2664E0038();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2664E00B8();
  v58 = *(v60 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664E00E8();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v50 - v18;
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiUserContext();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84F98];
  v24[4] = MEMORY[0x277D84F98];
  v24[5] = v25;
  v24[6] = v25;
  v24[7] = 0;
  v24[8] = 0;
  v24[9] = 0;
  v24[2] = a3;
  v24[3] = a4;
  v26 = qword_280F914E8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v19, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v23, v27, v19);

  v28 = v19;
  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  v31 = os_log_type_enabled(v29, v30);
  v53 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v52 = v17;
    v33 = v32;
    v51 = swift_slowAlloc();
    v65 = v51;
    *v33 = 136446466;
    *(v33 + 4) = sub_2662A320C(a3, a4, &v65);
    *(v33 + 12) = 2080;
    aBlock = 0;
    v67 = 0xE000000000000000;

    v50 = v28;
    sub_2664E0B28();

    aBlock = 0xD00000000000001ALL;
    v67 = 0x80000002664F6380;
    MEMORY[0x2667833B0](v24[2], v24[3]);
    MEMORY[0x2667833B0](32032, 0xE200000000000000);

    v34 = a5;
    v35 = a4;
    v36 = sub_2662A320C(aBlock, v67, &v65);

    *(v33 + 14) = v36;
    a4 = v35;
    a5 = v34;
    _os_log_impl(&dword_26629C000, v29, v30, "MultiUserContext#shared Retrieving (making new) shared context for refId: %{public}s, %s", v33, 0x16u);
    v37 = v51;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    v38 = v33;
    v17 = v52;
    MEMORY[0x266784AD0](v38, -1, -1);

    (*(v20 + 8))(v23, v50);
  }

  else
  {

    (*(v20 + 8))(v23, v28);
  }

  if (qword_280071BA0 != -1)
  {
    swift_once();
  }

  v52 = qword_280073218;
  sub_2664E00C8();
  if (qword_280071BA8 != -1)
  {
    swift_once();
  }

  v39 = sub_2664E0018();
  v40 = __swift_project_value_buffer(v39, qword_280073220);
  v41 = v54;
  MEMORY[0x266783140](v17, v40);
  v55 = *(v55 + 8);
  v42 = v17;
  v43 = v56;
  (v55)(v42, v56);
  v44 = swift_allocObject();
  v44[2] = v53;
  v44[3] = a4;
  v44[4] = a5;
  v70 = sub_2663A29D4;
  v71 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_2662A3F90;
  v69 = &block_descriptor_103;
  v45 = _Block_copy(&aBlock);

  v46 = v57;
  sub_2664E0068();
  v65 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v47 = v59;
  v48 = v62;
  sub_2664E0A08();
  MEMORY[0x2667837B0](v41, v46, v47, v45);
  _Block_release(v45);
  (*(v61 + 8))(v47, v48);
  (*(v58 + 8))(v46, v60);
  (v55)(v41, v43);

  aBlock = v24;
  v64(&aBlock);
}

uint64_t sub_2663A1DF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2662A320C(a1, a2, &v15);
    _os_log_impl(&dword_26629C000, v10, v11, "MultiUserContext#sharedCompletion Removing old context with refId: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return sub_2663A29E0(a1, a2);
}

uint64_t sub_2663A2010(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_2663A20B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 64);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_2663A2118()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_2663A2164(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *sub_2663A2208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2663A229C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_2663A2344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

uint64_t sub_2663A23A4()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_2663A23DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

unint64_t sub_2663A2474()
{
  sub_2664E0B28();

  MEMORY[0x2667833B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x2667833B0](32032, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

void *MultiUserContext.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  return v0;
}

uint64_t MultiUserContext.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  return swift_deallocClassInstance();
}

unint64_t sub_2663A259C()
{
  v1 = *v0;
  sub_2664E0B28();

  MEMORY[0x2667833B0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x2667833B0](32032, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t objectdestroy_8Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2663A29E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (!os_log_type_enabled(v10, v11))
  {

    result = (*(v5 + 8))(v8, v4);
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  *v12 = 136315138;
  v19 = v4;
  v20[0] = v13;
  v14 = a1;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    a1 = 0x3E6C696E3CLL;
    v15 = 0xE500000000000000;
  }

  v16 = sub_2662A320C(a1, v15, v20);

  *(v12 + 4) = v16;
  a1 = v14;
  _os_log_impl(&dword_26629C000, v10, v11, "MultiUserContext#remove Contexts for refId: %s", v12, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  MEMORY[0x266784AD0](v13, -1, -1);
  MEMORY[0x266784AD0](v12, -1, -1);

  result = (*(v5 + 8))(v8, v19);
  if (a2)
  {
LABEL_10:
    if (qword_280071B98 != -1)
    {
      swift_once();
    }

    v20[0] = a1;
    v20[1] = a2;
    v18 = *(*off_280073210 + 192);

    v18(v20);
  }

  return result;
}

uint64_t objectdestroy_87Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_5Tm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2663A2DE4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
  v27 = sub_2663A3088(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_2663A3088(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
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

uint64_t GenericMusicItemEntity.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2664DF888();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2664DF8E8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t GenericMusicItemEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t GenericMusicItemEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GenericMusicItemEntity()
{
  result = qword_2800732B0;
  if (!qword_2800732B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2663A3CBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2663A3D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2663A3DD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenericMusicItemEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2663A3E1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t StringsFileResolver.value(for:table:bundle:locale:defaultValue:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v63 = a5;
  v68 = a1;
  v69 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  v71 = sub_2664DE4C8();
  v72 = v19;
  v75[0] = 45;
  v75[1] = 0xE100000000000000;
  v73 = 95;
  v74 = 0xE100000000000000;
  sub_2662D2EBC();
  v67 = sub_2664E0998();
  v21 = v20;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v65 = v11[2];
  v66 = v22;
  v65(v18, v22, v10);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  v25 = os_log_type_enabled(v23, v24);
  v70 = v11;
  v61 = a2;
  v62 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v75[0] = v27;
    *v26 = 136446722;
    *(v26 + 4) = sub_2662A320C(v68, a2, v75);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2662A320C(v69, a4, v75);
    *(v26 + 22) = 2082;

    v28 = v10;
    v29 = sub_2662A320C(v67, v21, v75);

    *(v26 + 24) = v29;
    v10 = v28;
    _os_log_impl(&dword_26629C000, v23, v24, "StringsFileResolver#value resolving key:%{public}s for table:%s using languageCode:%{public}s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    v30 = v70[1];
    v30(v18, v28);
  }

  else
  {

    v30 = v11[1];
    v30(v18, v10);
  }

  v31 = [objc_opt_self() sharedInstance];
  if (v31)
  {
    v32 = v31;
    v33 = v10;
    v34 = sub_2664E02A8();
    v35 = sub_2664E02A8();
    v36 = sub_2664E02A8();

    v37 = [v32 localizedStringForKey:v34 table:v35 bundle:v63 languageCode:v36];

    v10 = v33;
    if (v37)
    {
      v38 = sub_2664E02C8();
      v40 = v39;

      v65(v64, v66, v10);

      v41 = sub_2664DFE18();
      v42 = sub_2664E06E8();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = v10;
        v45 = swift_slowAlloc();
        v75[0] = v45;
        *v43 = 136446210;

        v46 = sub_2662A320C(v38, v40, v75);

        *(v43 + 4) = v46;
        _os_log_impl(&dword_26629C000, v41, v42, "StringsFileResolver#value found value:%{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x266784AD0](v45, -1, -1);
        MEMORY[0x266784AD0](v43, -1, -1);

        v47 = v64;
        v48 = v44;
      }

      else
      {

        v47 = v64;
        v48 = v10;
      }

      v30(v47, v48);
      return v38;
    }
  }

  else
  {
  }

  v49 = v58;
  v65(v58, v66, v10);
  v50 = v60;

  v51 = sub_2664DFE18();
  v52 = sub_2664E06D8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = v10;
    v55 = swift_slowAlloc();
    v75[0] = v55;
    *v53 = 136446210;
    v38 = v59;
    *(v53 + 4) = sub_2662A320C(v59, v50, v75);
    _os_log_impl(&dword_26629C000, v51, v52, "StringsFileResolver#value nil returned from localizedString. Returning defaultValue %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    v30(v49, v54);
  }

  else
  {

    v30(v49, v10);
    v38 = v59;
  }

  return v38;
}

uint64_t PThreadMutex.__allocating_init(name:abortOnFail:analyticsService:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_2663A4610()
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
  sub_2664E0078();
  v12[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000013, 0x80000002664F6740, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F90F38 = v10;
  return result;
}

uint64_t PThreadMutex.init(name:abortOnFail:analyticsService:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = sub_2664DE4A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v55 = a2;
  if (v21)
  {
  }

  else
  {
    sub_2664DE498();
    a1 = sub_2664DE458();
    a2 = v22;
    (*(v17 + 8))(v20, v16);
  }

  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3 & 1;
  v56 = a4;
  sub_2663A4DC0(a4, v5 + 56);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v24 = v57;
  v52 = *(v57 + 16);
  v53 = v23;
  v52(v15, v23, v10);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59 = v28;
    *v27 = 136315138;
    v29 = v10;
    v31 = *(v5 + 32);
    v30 = *(v5 + 40);

    v32 = sub_2662A320C(v31, v30, &v59);

    *(v27 + 4) = v32;
    v10 = v29;
    v24 = v57;
    _os_log_impl(&dword_26629C000, v25, v26, "PThreadMutex#init created mutex: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v33 = *(v24 + 8);
  v33(v15, v10);
  v34 = swift_slowAlloc();
  *(v5 + 16) = v34;
  v35 = pthread_mutex_init(v34, 0);
  if (!v35)
  {
    sub_2662A9238(v56, &qword_2800732C0, &qword_2664E9E90);

    return v5;
  }

  v36 = v35;
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000002DLL, 0x80000002664F6590);
  v58 = v36;
  v37 = sub_2664E0D48();
  MEMORY[0x2667833B0](v37);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  v38 = *(v5 + 32);
  v39 = *(v5 + 40);

  MEMORY[0x2667833B0](v38, v39);

  v41 = v59;
  v40 = v60;
  if (*(v5 + 48) != 1)
  {

    v42 = v54;
    v52(v54, v53, v10);

    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v59 = v46;
      *v45 = 136315138;
      v47 = v10;
      v48 = sub_2662A320C(v41, v40, &v59);

      *(v45 + 4) = v48;
      _os_log_impl(&dword_26629C000, v43, v44, "%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);

      sub_2662A9238(v56, &qword_2800732C0, &qword_2664E9E90);
      v49 = v54;
      v50 = v47;
    }

    else
    {

      sub_2662A9238(v56, &qword_2800732C0, &qword_2664E9E90);
      v49 = v42;
      v50 = v10;
    }

    v33(v49, v50);
    return v5;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_2663A4DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732C0, &qword_2664E9E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PThreadMutex.deinit()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v35 = v3[2];
  v35(v9, v10, v2);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v7;
    v14 = v3;
    v15 = v13;
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &v38);
    _os_log_impl(&dword_26629C000, v11, v12, "PThreadMutex#deinit for mutex: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    v17 = v15;
    v3 = v14;
    v7 = v36;
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = v3[1];
  v18(v9, v2);
  v19 = pthread_mutex_destroy(*(v1 + 16));
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v19;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000030, 0x80000002664F65F0);
  v37 = v20;
  v21 = sub_2664E0D48();
  MEMORY[0x2667833B0](v21);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  v22 = *(v1 + 32);
  v23 = *(v1 + 40);

  MEMORY[0x2667833B0](v22, v23);

  v25 = v38;
  v24 = v39;
  if (*(v1 + 48) != 1)
  {
    v35(v7, v10, v2);

    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = v7;
      v29 = v28;
      v30 = v18;
      v31 = swift_slowAlloc();
      v38 = v31;
      *v29 = 136315138;
      v32 = sub_2662A320C(v25, v24, &v38);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_26629C000, v26, v27, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266784AD0](v31, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);

      v30(v36, v2);
    }

    else
    {

      v18(v7, v2);
    }

LABEL_10:
    MEMORY[0x266784AD0](*(v1 + 16), -1, -1);
    v33 = *(v1 + 40);

    sub_2662A9238(v1 + 56, &qword_2800732C0, &qword_2664E9E90);
    return v1;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t PThreadMutex.__deallocating_deinit()
{
  PThreadMutex.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2663A5340()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2663A5370()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = sub_2664DEA08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v23[0]) = 33;
  v26 = 36;
  v10 = sub_2663291B8(v23, &v26, 0xD000000000000017, 0x80000002664F1DC0, 0, 1);
  v12 = v11;
  sub_2663A4DC0(v0 + 56, v23);
  v13 = v24;
  if (v24)
  {
    v22 = v10;
    v14 = v25;
    v21 = __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v6 + 104))(v9, *MEMORY[0x277D5BBF0], v5);
    v20 = "x_unlock failed: ";
    v15 = *MEMORY[0x277D5B8D0];
    v16 = sub_2664DE808();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v4, v15, v16);
    (*(v17 + 56))(v4, 0, 1, v16);
    (*(v14 + 32))(v9, 0xD000000000000015, v20 | 0x8000000000000000, v4, v22, v12, v13, v14);

    sub_2662A9238(v4, &qword_280072AA0, &qword_2664E9EA0);
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {

    return sub_2662A9238(v23, &qword_2800732C0, &qword_2664E9E90);
  }
}

unint64_t sub_2663A575C()
{
  result = qword_280F8F5D0;
  if (!qword_280F8F5D0)
  {
    sub_2664E0788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F5D0);
  }

  return result;
}

unint64_t static BundleIdentifiers.extensionBundleIdentifier(for:deviceProvider:featureFlagProvider:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v50 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v51 = v6[2];
  v52 = v17;
  v51(v16, v17, v5);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = v5;
    v21 = v6;
    v22 = v20;
    v23 = swift_slowAlloc();
    v53 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_2662A320C(a1, a2, &v53);
    _os_log_impl(&dword_26629C000, v18, v19, "BundleIdentifiers#extensionBundleIdentifier resolving for bundleIdentifier: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    v24 = v22;
    v6 = v21;
    v5 = v47;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = v6[1];
  v26 = v25(v16, v5);
  v53 = a1;
  v54 = a2;
  MEMORY[0x28223BE20](v26);
  *(&v45 - 2) = &v53;
  if (sub_2662AA720(sub_2662AA7CC, (&v45 - 4), &unk_2877E48F0))
  {
    v51(v10, v52, v5);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "BundleIdentifiers#extensionBundleIdentifier system bundle identifier, no extension", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    v25(v10, v5);
    return 0;
  }

  v30 = a1;
  v46 = v25;
  v47 = v6;
  v32 = v50[3];
  v31 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v32);
  v33 = *(v31 + 8);
  v34 = v33(v32, v31);
  if (v34 & 1) == 0 || (v50 = &v45, v53 = v30, v54 = a2, MEMORY[0x28223BE20](v34), *(&v45 - 2) = &v53, (sub_2662AA720(sub_2663A6860, (&v45 - 4), &unk_2877E4818)))
  {
    if (v33(v32, v31) & 1) != 0 && (v30 == 0xD000000000000015 && 0x80000002664F1690 == a2 || (sub_2664E0D88()))
    {
      return 0xD000000000000028;
    }

    v36 = v49;
    v51(v49, v52, v5);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06C8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "BundleIdentifiers#extensionBundleIdentifier no custom bundle identifier needed", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v46(v36, v5);
    return 0;
  }

  v40 = v48;
  v51(v48, v52, v5);
  v41 = sub_2664DFE18();
  v42 = sub_2664E06C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_2662A320C(0xD000000000000040, 0x80000002664F6790, &v53);
    _os_log_impl(&dword_26629C000, v41, v42, "BundleIdentifiers#extensionBundleIdentifier using boltExtensionBundleIdentifier: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v46(v40, v5);
  return 0xD000000000000040;
}

uint64_t static BundleIdentifiers.isThirdParty(bundleIdentifier:)()
{
  sub_2662C178C();
  sub_2662C17E0();
  if (sub_2664E0278())
  {
    v0 = sub_2664E0278();
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t static BundleIdentifiers.isBooks(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002664F41C0 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

uint64_t static BundleIdentifiers.isClassical(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000002664F6820 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

uint64_t static BundleIdentifiers.hasTVAirPlay(bundleIdentifier:)()
{
  if (sub_2664E0408())
  {
    return 1;
  }

  return sub_2664E0408();
}

uint64_t _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0()
{
  sub_2662C178C();
  sub_2662C17E0();
  if (sub_2664E0278())
  {
    v0 = sub_2664E0278() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t _s16SiriAudioSupport17BundleIdentifiersO26extractAppInfoFromLaunchId3forSSSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_2664E02A8();
  v44 = 0;
  INExtractAppInfoFromSiriLaunchId();

  v16 = v44;
  if (!v44)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v29, v4);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "BundleIdentifiers#extractAppInfoFromLaunchId no resolved app info from siri launchid", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_19;
  }

  v17 = sub_2664E02C8();
  v19 = v18;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v33 = v16;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v12, v34, v4);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "BundleIdentifiers#extractAppInfoFromLaunchId Bundle ID is an empty string. Returning nil", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
LABEL_19:
    result = 0;
    goto LABEL_22;
  }

  v42 = v17;
  v21 = qword_280F914E8;
  v22 = v16;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v14, v23, v4);

  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = v22;
    v27 = v26;
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_2662A320C(v42, v19, &v43);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2662A320C(a1, a2, &v43);
    _os_log_impl(&dword_26629C000, v24, v25, "BundleIdentifiers#extractAppInfoFromLaunchId resolved bundle identifier: %s from launchId: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v5 + 8))(v14, v4);
  }

  else
  {

    (*(v5 + 8))(v14, v4);
  }

  result = v42;
LABEL_22:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OpenMusicItemAppIntent.init(target:noticeEntity:)@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D0, &qword_2664E9FB8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  a2[1] = sub_2664DFA28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D8, &qword_2664E9FC0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  *a2 = sub_2664DFA28();
  sub_2664DFA38();
}

uint64_t sub_2663A69A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2663A69F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AppSelectionContext.shared(refId:completion:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (a2)
  {
    v37 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v17, v18, v10);

    v19 = sub_2664DFE18();
    v20 = sub_2664E06E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_2662A320C(a1, a2, v38);
      _os_log_impl(&dword_26629C000, v19, v20, "AppSelectionContext#sharedCompletion retrieving shared context for refId: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x266784AD0](v23, -1, -1);
      v24 = v22;
      a4 = v36;
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    v25 = v37;
    if (qword_280F908A8 != -1)
    {
      swift_once();
    }

    v26 = off_280F908B0;
    v38[0] = a1;
    v38[1] = a2;
    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = a2;
    v27[4] = v5;
    v27[5] = v5;
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = a4;
    v29 = *(*v26 + 160);

    v29(v38, sub_2663B8DFC, v27, 0, 1, sub_2662DBE30, v28);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v31, v10);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "AppSelectionContext#sharedCompletion cannot retrieve context for nil refId", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    return a3(0);
  }
}

uint64_t sub_2663A6EA0()
{
  result = sub_2663B96BC();
  qword_2800732E0 = result;
  return result;
}

uint64_t static PlayMediaAppSelector.shared.getter()
{
  if (qword_280071BB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2663A6F1C()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000022, 0x80000002664F6C90, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F8FFB8 = v10;
  return result;
}

uint64_t sub_2663A70B4()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002ALL, 0x80000002664F6CE0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800732E8 = v10;
  return result;
}

uint64_t sub_2663A724C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AE0, &unk_2664EA260);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2662ED984(0xD00000000000001BLL, 0x80000002664F6CC0, sub_2663A72C8, 0);
  qword_280F8FFA8 = result;
  return result;
}

uint64_t sub_2663A72C8(uint64_t a1, uint64_t a2)
{
  if (qword_280F90780 != -1)
  {
    swift_once();
  }

  v4 = sub_26645FB64(qword_280F91CE0);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_266447850(0, v4, 0, 0, sub_2662D4304, v5);
}

uint64_t sub_2663A73A0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *v5;

  sub_26630F97C(0, 1, v7, sub_2663B900C, v6);
}

uint64_t sub_2663A743C(uint64_t a1, void (*a2)(__int128 *))
{
  v3 = *(a1 + 64);
  v5 = *(a1 + 144);
  v4 = *(a1 + 160);
  v15 = *(a1 + 176);
  v16 = v5;
  v6 = *(a1 + 144);
  v13 = v4;
  v14 = v4;
  v7 = *(a1 + 176);
  v11 = v6;
  v12 = v7;
  *&v7 = *(a1 + 112);
  v9 = *(a1 + 48);
  *&v10 = v3;
  *(&v10 + 1) = v7;
  sub_2662A7224(&v16, v17, &qword_2800734A0, &qword_2664E3B40);
  sub_2662A7224(&v15, v17, &qword_2800734A0, &qword_2664E3B40);
  sub_2662A7224(&v14, v17, &qword_2800734A0, &qword_2664E3B40);
  a2(&v9);
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  v17[0] = v9;
  v17[1] = v10;
  return sub_2663BCD44(v17);
}

uint64_t sub_2663A7524(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = qword_280F8FFA0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_2663BCF4C;
  *(v5 + 24) = v3;
  sub_266487B80(sub_2663BCE00, v5);
}

uint64_t sub_2663A7604(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v24 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v14, v5);
  sub_266314294(v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = a2;
    v18 = v17;
    *v17 = 67109120;
    *(v17 + 1) = v10 != 0;
    sub_2663142F4(v10);
    _os_log_impl(&dword_26629C000, v15, v16, "PlayMediaAppSelector#warm signal warmup results non-nil?: %{BOOL}d", v18, 8u);
    v19 = v18;
    a2 = v23;
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  else
  {
    sub_2663142F4(v10);
  }

  v20 = (*(v6 + 8))(v9, v5);
  return a2(v20);
}

uint64_t sub_2663A7834(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = qword_280F8F6F0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2663BCF4C;
  *(v6 + 24) = v3;
  sub_26630F97C(0, 1, *v5, sub_2663BCDF8, v6);
}

uint64_t sub_2663A792C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26629C000, v9, v10, "PlayMediaAppSelector#warm configuration load complete", v11, 2u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return a2(v12);
}

uint64_t sub_2663A7AEC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = qword_280F912D0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_2663BCDC8;
  *(v5 + 24) = v3;
  sub_2663701A0(sub_2663BCDF0, v5);
}

uint64_t sub_2663A7BCC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26629C000, v9, v10, "SiriRemembersEntityProvider#warm store warmup complete", v11, 2u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return a2(v12);
}

uint64_t sub_2663A7D8C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "PlayMediaAppSelector#warm complete", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return a1(1);
}

uint64_t sub_2663A7F50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v23 = a2;
  v24 = a1;
  v22 = *v4;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "playMediaAppSelectorSelectEverything";
  *(v15 + 24) = 36;
  *(v15 + 32) = 2;
  (*(v6 + 32))(v15 + v13, v9, v5);
  v16 = (v15 + v14);
  v17 = v21;
  *v16 = v20;
  v16[1] = v17;

  sub_2664E0848();
  sub_2664DFDC8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2663BCF94;
  *(v18 + 24) = v15;

  sub_2663A8210(sub_2663BCF98, v18, v23, v25, v24, v22);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2663A8210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v42 = a3;
  v40 = a2;
  v37 = a1;
  v41 = sub_2664DE438();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v36 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v42;
    _os_log_impl(&dword_26629C000, v18, v19, "PlayMediaAppSelector#select caller:%ld...", v20, 0xCu);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v21 = v42;
  qword_280F91CD8 = v42;
  sub_2664DE428();
  v33 = v21 != 6;
  v34 = __swift_project_boxed_opaque_existential_1((a4 + 56), *(a4 + 80));
  v22 = v36;
  v23 = v41;
  (*(v7 + 16))(v36, v11, v41);
  v24 = (*(v7 + 80) + 57) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  v35 = v11;
  v26 = v39;
  v27 = v40;
  v28 = v37;
  *(v25 + 24) = v39;
  *(v25 + 32) = v28;
  *(v25 + 40) = v27;
  *(v25 + 48) = v21;
  *(v25 + 56) = v33;
  (*(v7 + 32))(v25 + v24, v22, v23);
  *(v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v29 = *v34;

  v30 = v26;

  sub_26630F97C(0, 1, v29, sub_2663BC420, v25);

  return (*(v7 + 8))(v35, v23);
}

uint64_t sub_2663A85C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v29 = a6;
  v28 = a4;
  v31 = a9;
  v14 = sub_2664DE438();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  (*(v15 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a8, v14);
  v17 = (*(v15 + 80) + 249) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = a5;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  v19 = *(a1 + 144);
  *(v18 + 176) = *(a1 + 128);
  *(v18 + 192) = v19;
  v20 = *(a1 + 176);
  *(v18 + 208) = *(a1 + 160);
  *(v18 + 224) = v20;
  v21 = *(a1 + 80);
  *(v18 + 112) = *(a1 + 64);
  *(v18 + 128) = v21;
  v22 = *(a1 + 112);
  *(v18 + 144) = *(a1 + 96);
  *(v18 + 160) = v22;
  v23 = *(a1 + 16);
  *(v18 + 48) = *a1;
  *(v18 + 64) = v23;
  v24 = *(a1 + 48);
  *(v18 + 80) = *(a1 + 32);
  *(v18 + 96) = v24;
  *(v18 + 240) = v29;
  *(v18 + 248) = v30;
  (*(v15 + 32))(v18 + v17, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;

  v25 = a3;
  sub_2663B95AC(a1, v32);
  sub_2663BA168(v25, a1, sub_2663BC4CC, v18);
}

uint64_t sub_2663A87DC(char a1, void (*a2)(uint64_t *), uint64_t a3, void *a4, void *a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v49 = a8;
  v48 = a7;
  v50 = a5;
  v52 = a3;
  v14 = sub_2664DFE38();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DE438();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v44 = a10;
    v47 = a4[5];
    v51 = a4[6];
    v46 = __swift_project_boxed_opaque_existential_1(a4 + 2, v47);
    v45 = sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
    v22 = v50;
    v43 = sub_26636E9A0(1u);
    v42 = v23;
    (*(v19 + 16))(&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v18);
    v24 = (*(v19 + 80) + 249) & ~*(v19 + 80);
    v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = a2;
    *(v26 + 32) = v52;
    *(v26 + 40) = a4;
    v27 = a6[9];
    *(v26 + 176) = a6[8];
    *(v26 + 192) = v27;
    v28 = a6[11];
    *(v26 + 208) = a6[10];
    *(v26 + 224) = v28;
    v29 = a6[5];
    *(v26 + 112) = a6[4];
    *(v26 + 128) = v29;
    v30 = a6[7];
    *(v26 + 144) = a6[6];
    *(v26 + 160) = v30;
    v31 = a6[1];
    *(v26 + 48) = *a6;
    *(v26 + 64) = v31;
    v32 = a6[3];
    *(v26 + 80) = a6[2];
    *(v26 + 96) = v32;
    *(v26 + 240) = v48;
    *(v26 + 248) = v49 & 1;
    (*(v19 + 32))(v26 + v24, v21, v18);
    *(v26 + v25) = v44;
    v33 = v22;

    sub_2663B95AC(a6, v53);
    InstalledAppProviding.installedApps(for:sharedUserId:useCache:completion:)(v45, v43, v42, 1, sub_2663BC5D0, v26, v47, v51);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v35 = v51;
    (*(v51 + 16))(v17, v34, v14);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54[0] = v39;
      *v38 = 136446210;
      if (qword_280F8F6B0 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v54);
      _os_log_impl(&dword_26629C000, v36, v37, "PlayMediaAppSelector#select %{public}s NOT enabled or not supported for this intent", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v35 + 8))(v17, v14);
    v54[0] = 0;
    v54[1] = 0;
    v55 = 0;
    a2(v54);
  }
}

uint64_t sub_2663A8CBC(uint64_t a1, void *a2, void (*a3)(Swift::String *), void (*a4)(Swift::String *), uint64_t a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v74 = a8;
  v75 = a3;
  v76 = a4;
  v77 = a2;
  v71 = a10;
  v72 = a7;
  v73 = a9;
  v66 = sub_2664DFE38();
  v65 = *(v66 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2664DFE08();
  v70 = *(v78 - 8);
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v78);
  v68 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v17;
  MEMORY[0x28223BE20](v16);
  v69 = &v63 - v18;
  v19 = *(a1 + 16);
  v79 = 0x80000002664F37C0;
  v80 = a5;
  v20 = v19 + 1;
  v21 = (a1 + 48);
  v81 = a6;
  while (1)
  {
    v22 = v20 - 1;
    if (!v22)
    {
      break;
    }

    v82 = v22;
    v24 = *(v21 - 2);
    v23 = *(v21 - 1);
    v25 = *v21;
    v26 = v21[1];
    v28 = v21[4];
    v27 = v21[5];
    v86 = v24;
    v87 = v23;
    v84._countAndFlagsBits = 0x6C7070612E6D6F63;
    v84._object = 0xE900000000000065;
    sub_2662C178C();
    sub_2662C17E0();

    v83 = v25;

    if ((sub_2664E0278() & 1) == 0)
    {

      v31 = v80;
      v30 = v81;
LABEL_14:
      v46 = sub_2662F5CEC(qword_280F91CD8, v30) & 1;
      if (qword_280F91508 != -1)
      {
        swift_once();
      }

      v83 = qword_280F91D48;
      v47 = v69;
      sub_2664DFDE8();
      v48 = v70;
      v49 = v68;
      v50 = v78;
      (*(v70 + 16))(v68, v47, v78);
      v51 = (*(v48 + 80) + 33) & ~*(v48 + 80);
      v52 = (v67 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      *(v53 + 16) = "playMediaAppSelectorSelect";
      *(v53 + 24) = 26;
      *(v53 + 32) = 2;
      (*(v48 + 32))(v53 + v51, v49, v50);
      v54 = (v53 + v52);
      v55 = v76;
      *v54 = v75;
      v54[1] = v55;

      sub_2664E0848();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2664E34E0;
      v57 = MEMORY[0x277D83B88];
      v58 = MEMORY[0x277D83C10];
      *(v56 + 56) = MEMORY[0x277D83B88];
      *(v56 + 64) = v58;
      v59 = v72;
      *(v56 + 32) = v72;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 72) = v46;
      sub_2664DFDC8();

      v60 = swift_allocObject();
      *(v60 + 16) = sub_2663BC680;
      *(v60 + 24) = v53;

      sub_2663A93F4(sub_2663BC720, v60, v31, v77, v46, v74 & 1, v30, v73, v59, v71);

      return (*(v48 + 8))(v47, v78);
    }

    v21 += 8;
    v86 = v24;
    v87 = v23;
    v84._countAndFlagsBits = 0xD000000000000013;
    v84._object = v79;
    v29 = sub_2664E0278();

    v31 = v80;
    v30 = v81;
    v20 = v82;
    if (v29)
    {
      goto LABEL_14;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = v66;
  v33 = __swift_project_value_buffer(v66, qword_280F914F0);
  swift_beginAccess();
  v34 = v65;
  v35 = v64;
  (*(v65 + 16))(v64, v33, v32);
  v36 = sub_2664DFE18();
  v37 = sub_2664E06B8();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v77;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_26629C000, v36, v37, "PlayMediaAppSelector#select All audio apps installed on device are first party apps. Skipping app selection, providing selected 1p app as result.", v40, 2u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  (*(v34 + 8))(v35, v32);
  v41 = [v39 privatePlayMediaIntentData];
  if (v41 && (v43 = v41, v44 = [v41 audioSearchResults], v43, v44))
  {
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v45 = sub_2664E04A8();
  }

  else
  {
    v45 = 0;
  }

  v88.value._rawValue = v45;
  v88.is_nil = 0;
  v62 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v88, v42);

  v84 = v62;
  v85 = 768;
  v75(&v84);
}

uint64_t sub_2663A93F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a7;
  v56 = a6;
  v54 = a5;
  v57 = a4;
  v59 = a3;
  v58 = a2;
  v55 = a1;
  v53 = sub_2664DE438();
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a8;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60[0] = v23;
    *v22 = 136446210;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v60);
    _os_log_impl(&dword_26629C000, v19, v20, "PlayMediaAppSelector#select %{public}s supported", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    (*(v14 + 8))(v17, v13);
    a8 = v21;
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v49 = a10;
  v48 = a9;
  if (qword_280F8FFA0 != -1)
  {
    swift_once();
  }

  v50 = qword_280F8FFA8;
  v24 = v51;
  v25 = v53;
  (*(v11 + 16))(v51, a8, v53);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v27 = v26 + v12;
  v28 = (v26 + v12) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 199) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v31 + 39) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v11 + 32))(v32 + v26, v24, v25);
  LODWORD(v26) = v54 & 1;
  *(v32 + v27) = v26;
  *(v32 + v28 + 8) = v59;
  *(v32 + v29) = v48;
  v33 = (v32 + v30);
  v34 = v52;
  v35 = v52[9];
  v33[8] = v52[8];
  v33[9] = v35;
  v36 = v34[11];
  v33[10] = v34[10];
  v33[11] = v36;
  v37 = v34[5];
  v33[4] = v34[4];
  v33[5] = v37;
  v38 = v34[7];
  v33[6] = v34[6];
  v33[7] = v38;
  v39 = v34[1];
  *v33 = *v34;
  v33[1] = v39;
  v40 = v34[3];
  v33[2] = v34[2];
  v33[3] = v40;
  v41 = v57;
  *(v32 + v31) = v57;
  v42 = v32 + v47;
  v43 = v58;
  *v42 = v55;
  *(v42 + 8) = v43;
  LODWORD(v25) = v56 & 1;
  *(v42 + 16) = v25;
  *(v32 + v46) = v49;

  sub_2663B95AC(v34, v60);
  v44 = v41;

  sub_2663B25F4(v44, v50, v26, v25, v34, sub_2663BC770, v32);
}

uint64_t sub_2663A9934(__int128 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7, void (*a8)(void), uint64_t a9, char a10)
{
  v191 = a7;
  v192 = a8;
  v196 = a6;
  v198 = a5;
  v199 = a4;
  LODWORD(v190) = a3;
  v12 = sub_2664E0038();
  v180 = *(v12 - 8);
  v181 = v12;
  v13 = *(v180 + 64);
  MEMORY[0x28223BE20](v12);
  v177 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664E00B8();
  v178 = *(v15 - 8);
  v179 = v15;
  v16 = *(v178 + 64);
  MEMORY[0x28223BE20](v15);
  v176 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DE438();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v193 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v170 - v23;
  v25 = sub_2664DFE38();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v174 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v173 = &v170 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v170 - v32;
  v34 = a1[1];
  v35 = a1[2];
  v209 = *a1;
  v210 = v34;
  v211 = v35;
  v197 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v25, qword_280F914F0);
  swift_beginAccess();
  v37 = v26[2];
  v183 = v26 + 2;
  v184 = v36;
  v182 = v37;
  v37(v33, v36, v25);
  v187 = *(v19 + 16);
  v188 = v19 + 16;
  v187(v24, a2, v18);
  v38 = sub_2664DFE18();
  v39 = v25;
  v40 = sub_2664E06E8();
  v41 = os_log_type_enabled(v38, v40);
  v194 = v39;
  v186 = v26;
  if (v41)
  {
    v171 = v38;
    v172 = v33;
    v185 = a2;
    v42 = v193;
    v43 = v19;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v206 = v45;
    *v44 = 136446722;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v44 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v206);
    *(v44 + 12) = 2050;
    sub_2664DE428();
    sub_2664DE388();
    v47 = v46;
    v48 = *(v19 + 8);
    v48(v42, v18);
    v175 = v48;
    v48(v24, v18);
    *(v44 + 14) = v47;
    *(v44 + 22) = 2080;
    if (v190)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    if (v190)
    {
      v50 = 0xE400000000000000;
    }

    else
    {
      v50 = 0xE500000000000000;
    }

    v51 = sub_2662A320C(v49, v50, &v206);

    *(v44 + 24) = v51;
    v52 = v171;
    _os_log_impl(&dword_26629C000, v171, v40, "PlayMediaAppSelector#select %{public}s signal gathering and prediction completed in %{public}fs; megamodel used: %s", v44, 0x20u);
    swift_arrayDestroy();
    v19 = v43;
    MEMORY[0x266784AD0](v45, -1, -1);
    MEMORY[0x266784AD0](v44, -1, -1);

    v53 = v186[1];
    v53(v172, v194);
    v54 = v185;
  }

  else
  {

    v175 = *(v19 + 8);
    v175(v24, v18);
    v53 = v26[1];
    v53(v33, v39);
    v54 = a2;
    v42 = v193;
  }

  v190 = a9;
  v206 = v209;
  v207 = v210;
  v208 = v211;
  v55 = v199;
  sub_2663B0E60(&v206);
  v56 = v196;
  v195 = v18;
  if (v209 == 1)
  {
    v57 = v55;
    v197 = 0;
LABEL_20:
    v187(v42, v54, v18);
    v63 = (*(v19 + 80) + 224) & ~*(v19 + 80);
    v64 = (v189 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v64 + 55) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    v67 = v198;
    *(v66 + 16) = v57;
    *(v66 + 24) = v67;
    v68 = v56[9];
    *(v66 + 160) = v56[8];
    *(v66 + 176) = v68;
    v69 = v56[11];
    *(v66 + 192) = v56[10];
    *(v66 + 208) = v69;
    v70 = v56[5];
    *(v66 + 96) = v56[4];
    *(v66 + 112) = v70;
    v71 = v56[7];
    *(v66 + 128) = v56[6];
    *(v66 + 144) = v71;
    v72 = v56[1];
    *(v66 + 32) = *v56;
    *(v66 + 48) = v72;
    v73 = v56[3];
    *(v66 + 64) = v56[2];
    *(v66 + 80) = v73;
    (*(v19 + 32))(v66 + v63, v42, v195);
    v74 = (v66 + v64);
    v75 = v210;
    *v74 = v209;
    v74[1] = v75;
    v74[2] = v211;
    v77 = v191;
    v76 = v192;
    *(v66 + v65) = v191;
    v78 = (v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8));
    v79 = v190;
    *v78 = v76;
    v78[1] = v79;

    sub_2662A7224(&v209, &v206, &qword_2800732F8, &qword_2664EA230);
    sub_2663B95AC(v56, &v206);
    v80 = v77;

    sub_2663BA678(v197, sub_2663BC85C, v66);
  }

  v58 = *(&v211 + 1);
  if (!*(&v211 + 1))
  {
    v57 = v55;

    goto LABEL_20;
  }

  v185 = v54;
  v197 = v19;
  v59 = v173;
  v182(v173, v184, v194);

  v60 = sub_2664DFE18();
  v61 = sub_2664E06C8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134349056;
    *(v62 + 4) = v58[2];

    _os_log_impl(&dword_26629C000, v60, v61, "PlayMediaAppSelector#select found megamodel prediction with %{public}ld bundles", v62, 0xCu);
    MEMORY[0x266784AD0](v62, -1, -1);
  }

  else
  {
  }

  v81 = v59;
  v82 = v194;
  v53(v81, v194);
  v83 = v56;
  v84 = v55;
  v85 = sub_2663B67BC(v198, v83);
  v86 = v58[2];
  LODWORD(v186) = v85;
  if (v86 == 1)
  {
    v87 = v58[5];
    v194 = v58[4];
    v88 = qword_280F8FFB0;
    v184 = v87;
    swift_bridgeObjectRetain_n();
    if (v88 != -1)
    {
      swift_once();
    }

    v183 = qword_280F8FFB8;
    v89 = v42;
    v90 = v195;
    v187(v42, v185, v195);
    v91 = v197;
    v92 = (*(v197 + 80) + 96) & ~*(v197 + 80);
    v93 = (v189 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v189 = (v93 + 199) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 215) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 39) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    *(v96 + 16) = a10 & 1;
    *(v96 + 24) = v199;
    v97 = v210;
    *(v96 + 32) = v209;
    *(v96 + 48) = v97;
    *(v96 + 64) = v211;
    v98 = v184;
    *(v96 + 80) = v194;
    *(v96 + 88) = v98;
    (*(v91 + 32))(v96 + v92, v89, v90);
    v99 = (v96 + v93);
    v100 = v196;
    v101 = v196[9];
    v99[8] = v196[8];
    v99[9] = v101;
    v102 = v100[11];
    v99[10] = v100[10];
    v99[11] = v102;
    v103 = v100[5];
    v99[4] = v100[4];
    v99[5] = v103;
    v104 = v100[7];
    v99[6] = v100[6];
    v99[7] = v104;
    v105 = v100[1];
    *v99 = *v100;
    v99[1] = v105;
    v106 = v100[3];
    v99[2] = v100[2];
    v99[3] = v106;
    v107 = v96 + v189;
    *v107 = v198;
    *(v107 + 8) = v186 & 1;
    v108 = v96 + v94;
    v109 = v194;
    *v108 = v194;
    *(v108 + 8) = v98;
    __asm { FMOV            V0.2D, #1.0 }

    *(v108 + 16) = _Q0;
    v115 = v191;
    *(v96 + v95) = v191;
    v204 = sub_2663BC950;
    v205 = v96;
    v200 = MEMORY[0x277D85DD0];
    v201 = 1107296256;
    v202 = sub_2662A3F90;
    v203 = &block_descriptor_169;
    v116 = _Block_copy(&v200);

    sub_2662A7224(&v209, &v206, &qword_2800732F8, &qword_2664EA230);
    sub_2663B95AC(v100, &v206);
    v117 = v115;
    v118 = v176;
    sub_2664E0068();
    *&v206 = MEMORY[0x277D84F90];
    sub_2662A6120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v119 = v177;
    v120 = v181;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v118, v119, v116);
    _Block_release(v116);
    (*(v180 + 8))(v119, v120);
    (*(v178 + 8))(v118, v179);

    *&v206 = v109;
    *(&v206 + 1) = v98;
    LOWORD(v207) = 257;
  }

  else
  {
    v121 = v85;
    v182(v174, v184, v82);
    v122 = sub_2664DFE18();
    v123 = sub_2664E06C8();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_26629C000, v122, v123, "PlayMediaAppSelector#select: Megamodel recommended disambiguation", v124, 2u);
      v82 = v194;
      MEMORY[0x266784AD0](v124, -1, -1);
    }

    v53(v174, v82);
    v125 = v42;
    sub_2664DE428();
    sub_2664DE388();
    v127 = v126;
    v184 = v197 + 8;
    v175(v42, v195);
    v128 = v198;
    if (qword_280F90D30 != -1)
    {
      swift_once();
    }

    v183 = qword_280F90D38;
    v129 = swift_allocObject();
    v130 = v196;
    v131 = v196[9];
    *(v129 + 168) = v196[8];
    *(v129 + 184) = v131;
    v132 = v130[11];
    *(v129 + 200) = v130[10];
    *(v129 + 216) = v132;
    v133 = v130[5];
    *(v129 + 104) = v130[4];
    *(v129 + 120) = v133;
    v134 = v130[7];
    *(v129 + 136) = v130[6];
    *(v129 + 152) = v134;
    v135 = v130[1];
    *(v129 + 40) = *v130;
    *(v129 + 56) = v135;
    v136 = v130[3];
    *(v129 + 72) = v130[2];
    *(v129 + 16) = 0;
    *(v129 + 24) = 0;
    LODWORD(v194) = v121;
    *(v129 + 32) = v121;
    *(v129 + 33) = 1;
    *(v129 + 35) = 0;
    *(v129 + 88) = v136;
    *(v129 + 232) = v128;
    *(v129 + 240) = v127;
    *(v129 + 248) = v84;
    v204 = sub_2663BC948;
    v205 = v129;
    v200 = MEMORY[0x277D85DD0];
    v201 = 1107296256;
    v202 = sub_2662A3F90;
    v203 = &block_descriptor_160;
    v137 = _Block_copy(&v200);

    sub_2663B95AC(v130, &v206);
    v138 = v176;
    sub_2664E0068();
    *&v206 = MEMORY[0x277D84F90];
    sub_2662A6120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v139 = v177;
    v140 = v181;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v138, v139, v137);
    _Block_release(v137);
    (*(v180 + 8))(v139, v140);
    (*(v178 + 8))(v138, v179);

    sub_2664DE428();
    v141 = v185;
    sub_2664DE388();
    v143 = v142;
    v175(v125, v195);
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v145 = qword_280F90B40;
    v144 = unk_280F90B48;
    v146 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v147 = *(v145 - 8);
    v148 = *(v147 + 64);
    MEMORY[0x28223BE20](v146);
    v150 = &v170 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v147 + 16))(v150);
    v151 = (*(v144 + 16))(v145, v144);
    v183 = v151;
    v153 = v152;
    (*(v147 + 8))(v150, v145);
    v184 = type metadata accessor for AppSelectionContext();
    v154 = v193;
    v155 = v195;
    v187(v193, v141, v195);
    v156 = v197;
    v157 = (*(v197 + 80) + 360) & ~*(v197 + 80);
    v158 = swift_allocObject();
    *(v158 + 16) = v151;
    *(v158 + 24) = v153;
    *(v158 + 32) = 0;
    *(v158 + 40) = 0;
    *(v158 + 48) = v199;
    v159 = v130[9];
    *(v158 + 184) = v130[8];
    *(v158 + 200) = v159;
    v160 = v130[11];
    *(v158 + 216) = v130[10];
    *(v158 + 232) = v160;
    v161 = v130[5];
    *(v158 + 120) = v130[4];
    *(v158 + 136) = v161;
    v162 = v130[7];
    *(v158 + 152) = v130[6];
    *(v158 + 168) = v162;
    v163 = v130[1];
    *(v158 + 56) = *v130;
    *(v158 + 72) = v163;
    v164 = v130[3];
    *(v158 + 88) = v130[2];
    *(v158 + 104) = v164;
    *(v158 + 248) = 0u;
    *(v158 + 264) = 0u;
    v165 = v210;
    *(v158 + 280) = v209;
    *(v158 + 296) = v165;
    *(v158 + 312) = v211;
    *(v158 + 328) = v194;
    *(v158 + 336) = v198;
    *(v158 + 344) = v143;
    v166 = v191;
    *(v158 + 352) = v191;
    (*(v156 + 32))(v158 + v157, v154, v155);

    sub_2662A7224(&v209, &v206, &qword_2800732F8, &qword_2664EA230);
    sub_2663B95AC(v130, &v206);

    v167 = v166;
    static AppSelectionContext.shared(refId:completion:)(v183, v153, sub_2663BC94C, v158);

    if (v186)
    {
      v168 = 6;
    }

    else
    {
      v168 = 5;
    }

    v206 = 0uLL;
    LOBYTE(v207) = 1;
    BYTE1(v207) = v168;
  }

  v192(&v206);
}