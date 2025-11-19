uint64_t SettingsSearchIndexableItemsFetchRequestResult.appIntentIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsSearchIndexableItemsFetchRequestResult.appIntentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SettingsSearchIndexableItemsFetchRequestResult.appValueTypeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SettingsSearchIndexableItemsFetchRequestResult.appValueTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SettingsSearchIndexableItemsFetchRequestResult.items.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t SettingsSearchIndexableItemsFetchRequestResult.issues.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t SettingsSearchIndexableItemsFetchRequestResult.searchDomainIdentifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v1, v2);
  return v4;
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

uint64_t sub_2659E0FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2659E1044(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2659E10A0(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SettingsSearchIndexableItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v16 = MEMORY[0x277D84F90];
    sub_265A1F150();
    v12 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_2659F3DE0(v12, v9, type metadata accessor for SettingsSearchIndexableItem);
      a1(&v15, v9);
      sub_2659F3C04(v9, type metadata accessor for SettingsSearchIndexableItem);
      sub_265A1F120();
      v14 = *(v16 + 16);
      sub_265A1F160();
      sub_265A1F170();
      sub_265A1F130();
      v12 += v13;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_2659E1220(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    sub_265A1F0A0();
    v9 = sub_265A1F0C0();
    MEMORY[0x266765220](v9);

    MEMORY[0x266765220](0xD000000000000017, 0x8000000265A23D30);
    MEMORY[0x266765220](a1, a2);
    MEMORY[0x266765220](0xD000000000000016, 0x8000000265A23C20);
    MEMORY[0x266765220](a3, a4);
    MEMORY[0x266765220](41, 0xE100000000000000);
  }

  else
  {
    v4 = sub_265A1F0C0();
    MEMORY[0x266765220](v4);
  }

  return 0;
}

id sub_2659E1380()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[22];
  }

  else
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = *MEMORY[0x277CCA1A0];
    sub_265A1EBA0();
    v6 = v0[14];
    v7 = v0[15];
    v8 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v9 = sub_265A1EB70();
    v10 = sub_265A1EB70();

    v11 = sub_265A1EB70();
    v12 = [v8 initWithName:v9 protectionClass:v10 bundleIdentifier:v11];

    v13 = v0[22];
    v0[22] = v12;
    v2 = v12;

    v1 = 0;
  }

  v14 = v1;
  return v2;
}

uint64_t sub_2659E1478()
{
  v1[3] = v0;
  v2 = sub_265A1EEE0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B668, &qword_265A21AA8) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_265A1EEF0();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_265A1EED0();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659E1628, v0, 0);
}

uint64_t sub_2659E1628()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_265A21A40;
  v7 = *(v5 + 112);
  *(v0 + 112) = v7;
  v8 = *(v5 + 120);
  *(v0 + 120) = v8;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;

  *(v0 + 128) = sub_265A129D4();

  sub_265A1EF00();
  sub_265A1EEC0();
  (*(v3 + 8))(v2, v4);
  *(v0 + 136) = sub_2659F33AC(qword_28156ACA0, v9, type metadata accessor for SettingsSearchIndexer);
  *(v0 + 160) = *MEMORY[0x277CC21D8];
  v10 = sub_2659F33AC(&qword_28156A900, 255, MEMORY[0x277CC21C8]);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_2659E1800;
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 56);

  return MEMORY[0x282200308](v15, v14, v10);
}

uint64_t sub_2659E1800()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    if (*(v2 + 24))
    {
      v5 = *(v2 + 136);
      swift_getObjectType();
      v6 = sub_265A1ED70();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2659E1BC0;
    v10 = v6;
  }

  else
  {
    v9 = sub_2659E196C;
    v10 = *(v2 + 24);
    v8 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, v8);
}

uint64_t sub_2659E196C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(v3 + 48))(v1, 1, v2);
  if (v4 == 1)
  {
    v11 = *(v0 + 128);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    goto LABEL_5;
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 48);
  (*(v3 + 32))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == v5)
  {
    v7 = *(v0 + 128);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    (*(v9 + 8))(v8, v10);
LABEL_5:
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);

    v16 = *(v0 + 8);

    return v16(v4 != 1);
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v18 = sub_2659F33AC(&qword_28156A900, 255, MEMORY[0x277CC21C8]);
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_2659E1800;
  v21 = *(v0 + 104);
  v22 = *(v0 + 88);
  v23 = *(v0 + 56);

  return MEMORY[0x282200308](v23, v22, v18);
}

uint64_t sub_2659E1BC0()
{
  v1 = v0[3];
  v0[2] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2659E1C58, v1, 0);
}

uint64_t sub_2659E1C58()
{
  v26 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 152);
  v5 = *(v0 + 24);
  v6 = sub_265A1EAA0();
  __swift_project_value_buffer(v6, qword_28156B500);

  v7 = v4;
  v8 = sub_265A1EA80();
  v9 = sub_265A1EF20();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 152);
  if (v10)
  {
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_2659D9320(v13, v12, &v25);
    *(v14 + 12) = 2114;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_2659CA000, v8, v9, "Error occurred while checking if there are any items in the '%{public}s' index: %{public}@", v14, 0x16u);
    sub_2659DA270(v15, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x266766110](v16, -1, -1);
    MEMORY[0x266766110](v14, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 104);
  v20 = *(v0 + 80);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_2659E1EC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B690, &qword_265A21BE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B698, &qword_265A21BE8);
  v18 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6A0, &qword_265A21BF0);
  v12 = *(v11 - 8);
  v19 = v11;
  v20 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_265A1F0A0();
  MEMORY[0x266765220](0xD000000000000022, 0x8000000265A23B20);
  MEMORY[0x266765220](v0[14], v0[15]);
  MEMORY[0x266765220](0xD000000000000022, 0x8000000265A23B50);
  v21 = v0[16];
  (*(v7 + 104))(v10, *MEMORY[0x277CC8AE8], v6);
  (*(v2 + 104))(v5, *MEMORY[0x277CC8B10], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6A8, &qword_265A21BF8);
  sub_2659F3ABC(&qword_28156A908, &qword_28002B6A8, &qword_265A21BF8);
  sub_265A1E570();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v18);
  sub_2659F3ABC(&qword_28156B048, &qword_28002B6A0, &qword_265A21BF0);
  v16 = v19;
  sub_265A1EC70();
  (*(v20 + 8))(v15, v16);

  MEMORY[0x266765220](v22, v23);

  MEMORY[0x266765220](39, 0xE100000000000000);
  return v24;
}

uint64_t SettingsSearchIndexer.__allocating_init(searchableIndexBundleIdentifier:attributionBundleIdentifiers:itemURLTransformers:indexableItemTransforming:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v13 = *a5;
  result = swift_defaultActor_initialize();
  *(v10 + 176) = 0;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    if (*(a3 + 16))
    {
      *(v10 + 112) = a1;
      *(v10 + 120) = a2;
      *(v10 + 128) = a3;
      *(v10 + 152) = a4;
      *(v10 + 136) = v13;

      sub_265A1F0A0();

      MEMORY[0x266765220](0xD000000000000010, 0x8000000265A23960);
      *(v10 + 160) = a1;
      *(v10 + 168) = a2;
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SettingsSearchIndexer.init(searchableIndexBundleIdentifier:attributionBundleIdentifiers:itemURLTransformers:indexableItemTransforming:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v13 = *a5;
  result = swift_defaultActor_initialize();
  *(v6 + 176) = 0;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    if (*(a3 + 16))
    {
      *(v6 + 112) = a1;
      *(v6 + 120) = a2;
      *(v6 + 128) = a3;
      *(v6 + 152) = a4;
      *(v6 + 136) = v13;

      sub_265A1F0A0();

      MEMORY[0x266765220](0xD000000000000010, 0x8000000265A23960);
      *(v6 + 160) = a1;
      *(v6 + 168) = a2;
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2659E245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2659E2484, v4, 0);
}

void sub_2659E2484()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v3 = v0[5];
  v4 = v0[4] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2659E2568;
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  sub_2659E2794(v8, v1, v7, v3);
}

uint64_t sub_2659E2568()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2659E265C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2659D31EC;

  return sub_2659E2794(0, 1, 0, 0);
}

uint64_t sub_2659E26F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2659D280C;

  return sub_2659E2794(0, 0, 0, 0);
}

uint64_t sub_2659E2794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[82] = v4;
  v5[81] = a4;
  v5[80] = a3;
  v5[79] = a2;
  v5[78] = a1;
  v6 = _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  v5[83] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[84] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00) - 8) + 64) + 15;
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v9 = _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  v5[87] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v11 = _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  v5[90] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[91] = swift_task_alloc();
  v13 = _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v5[92] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[93] = swift_task_alloc();
  v15 = _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v5[94] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[95] = swift_task_alloc();
  v17 = sub_265A1E9F0();
  v5[96] = v17;
  v18 = *(v17 - 8);
  v5[97] = v18;
  v19 = *(v18 + 64) + 15;
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v20 = sub_265A1E7B0();
  v5[100] = v20;
  v21 = *(v20 - 8);
  v5[101] = v21;
  v22 = *(v21 + 64) + 15;
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659E2A18, v4, 0);
}

uint64_t sub_2659E2A18()
{
  v231 = v0;
  if (qword_28156A968 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v1 = *(v0 + 656);
    v2 = *(v0 + 648);
    v3 = *(v0 + 640);
    v4 = *(v0 + 632);
    v5 = *(v0 + 624);
    v6 = sub_265A1EAA0();
    *(v0 + 832) = __swift_project_value_buffer(v6, qword_28156B500);
    sub_2659F3B04(v5, v4);

    v7 = sub_265A1EA80();
    v8 = sub_265A1EF30();
    sub_2659F3B4C(v5, v4);

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 656);
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v13 = *(v0 + 624);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v229 = v15;
      *v14 = 136446466;
      v16 = sub_2659E1220(v13, v12, v11, v10);
      v18 = sub_2659D9320(v16, v17, &v229);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = sub_2659E1EC0();
      v21 = sub_2659D9320(v19, v20, &v229);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_2659CA000, v7, v8, "Started indexing for %{public}s with %{public}s…", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v15, -1, -1);
      MEMORY[0x266766110](v14, -1, -1);
    }

    v22 = *(v0 + 824);
    v23 = *(v0 + 656);
    v24 = *(v0 + 632);
    sub_265A1E7A0();
    *(v0 + 600) = MEMORY[0x277D84FA0];
    v25 = swift_allocObject();
    *(v0 + 840) = v25;
    *(v25 + 16) = 0;
    *(v0 + 472) = sub_2659E1EC0();
    *(v0 + 480) = v26;
    if (v24 >= 2)
    {
      v27 = *(v0 + 648);
      v28 = *(v0 + 640);
      v29 = *(v0 + 632);
      v30 = *(v0 + 624);
      v229 = 0;
      v230 = 0xE000000000000000;
      sub_265A1F0A0();

      v229 = 0xD000000000000015;
      v230 = 0x8000000265A23C00;
      MEMORY[0x266765220](v30, v29);
      MEMORY[0x266765220](0xD000000000000016, 0x8000000265A23C20);
      MEMORY[0x266765220](v28, v27);
      MEMORY[0x266765220](v229, v230);
    }

    if (qword_28156A950 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 792);
    v32 = *(v0 + 632);
    v33 = sub_265A1EA20();
    __swift_project_value_buffer(v33, qword_28156B4D0);
    v34 = *(v0 + 472);
    v35 = *(v0 + 480);
    *(v0 + 848) = v35;

    sub_265A1E9E0();
    v36 = sub_265A1EA10();
    v37 = sub_265A1EF50();
    LOBYTE(v31) = sub_265A1EFA0();

    if (v31)
    {
      v38 = *(v0 + 792);
      v39 = "Index Single OpenIntent";
      if (v32 == 1)
      {
        v39 = "Index Suggested Items";
      }

      if (*(v0 + 632))
      {
        v40 = v39;
      }

      else
      {
        v40 = "Index All Items";
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v229 = v42;
      *v41 = 136446210;

      v43 = sub_2659D9320(v34, v35, &v229);

      *(v41 + 4) = v43;
      v44 = sub_265A1E9D0();
      _os_signpost_emit_with_name_impl(&dword_2659CA000, v36, v37, v44, v40, "%{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x266766110](v42, -1, -1);
      MEMORY[0x266766110](v41, -1, -1);
    }

    v219 = *(v0 + 824);
    v45 = *(v0 + 808);
    v215 = *(v0 + 800);
    v46 = *(v0 + 792);
    v47 = *(v0 + 776);
    v48 = *(v0 + 768);
    v49 = *(v0 + 760);
    v50 = *(v0 + 752);
    v51 = *(v0 + 656);
    v223 = *(v0 + 640);
    v226 = *(v0 + 648);
    v211 = *(v0 + 632);
    v52 = *(v0 + 624);
    (*(v47 + 16))(*(v0 + 784), v46, v48);
    v53 = sub_265A1EA60();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    *(v0 + 856) = sub_265A1EA50();
    (*(v47 + 8))(v46, v48);
    *(v0 + 864) = CFAbsoluteTimeGetCurrent();
    v56 = *(v45 + 16);
    *(v0 + 872) = v56;
    *(v0 + 880) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v56(v49, v219, v215);
    v57 = *(v51 + 112);
    *(v0 + 888) = v57;
    v58 = *(v51 + 120);
    *(v0 + 896) = v58;
    v59 = (v49 + *(v50 + 20));
    *v59 = v52;
    v59[1] = v211;
    v59[2] = v223;
    v59[3] = v226;
    v60 = (v49 + *(v50 + 24));
    *v60 = 0;
    v60[1] = 0xE000000000000000;
    v61 = (v49 + *(v50 + 28));
    *v61 = v57;
    v61[1] = v58;
    sub_2659F3B04(v52, v211);

    sub_2659F3F90(v49);
    sub_2659F3C04(v49, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
    *(v0 + 904) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    v62 = sub_265A11204();
    *(v0 + 912) = v62;
    *(v0 + 920) = 0;
    v63 = 0;
    v64 = *(v62 + 32);
    v65 = 1 << v64;
    *(v0 + 1356) = v64;
    v66 = -1 << (1 << v64);
    v67 = v65 < 64 ? ~v66 : -1;
    v68 = v67 & *(v62 + 64);
    v69 = 0x279BB1000uLL;
LABEL_20:
    if (v68)
    {
      break;
    }

    while (1)
    {
      v72 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v71 = *(v0 + 912);
      if (v72 >= (((1 << *(v0 + 1356)) + 63) >> 6))
      {
        v121 = *(v0 + 848);

        v122 = *(v0 + 600);
        *(v0 + 1296) = 0;
        *(v0 + 1280) = 0u;
        *(v0 + 1264) = 0u;
        *(v0 + 1256) = v122;
        v123 = *(v0 + 832);

        v124 = sub_265A1EA80();
        v125 = sub_265A1EF30();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = *(v0 + 840);
          v127 = swift_slowAlloc();
          *v127 = 134349312;
          *(v127 + 4) = *(v122 + 16);

          *(v127 + 12) = 2050;
          *(v127 + 14) = 0;

          _os_log_impl(&dword_2659CA000, v124, v125, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v127, 0x16u);
          MEMORY[0x266766110](v127, -1, -1);
        }

        else
        {
        }

        if (*(v0 + 920))
        {

          v128 = *(v0 + 1296);
          v217 = *(v0 + 1288);
          v221 = *(v0 + 1280);
          v224 = *(v0 + 1272);
          v227 = *(v0 + 1264);
          v213 = *(v0 + 896);
          v209 = *(v0 + 888);
          v129 = *(v0 + 880);
          v130 = *(v0 + 872);
          v131 = *(v0 + 864);
          v132 = *(v0 + 840);
          v133 = *(v0 + 824);
          v134 = *(v0 + 800);
          v135 = *(v0 + 672);
          v136 = *(v0 + 664);
          logb = *(v0 + 640);
          v206 = *(v0 + 648);
          v200 = *(v0 + 632);
          v137 = *(v0 + 624);
          v138 = CFAbsoluteTimeGetCurrent() - v131;
          v130(v135, v133, v134);
          swift_beginAccess();
          v139 = *(v132 + 16);
          v140 = (v135 + v136[5]);
          *v140 = v137;
          v140[1] = v200;
          v140[2] = logb;
          v140[3] = v206;
          v141 = (v135 + v136[6]);
          *v141 = 0;
          v141[1] = 0xE000000000000000;
          v142 = (v135 + v136[7]);
          *v142 = v209;
          v142[1] = v213;
          *(v135 + v136[8]) = v128 != 0;
          *(v135 + v136[9]) = v138;
          *(v135 + v136[10]) = 0;
          *(v135 + v136[11]) = v217;
          *(v135 + v136[12]) = v128;
          *(v135 + v136[13]) = v221;
          *(v135 + v136[14]) = v224;
          *(v135 + v136[15]) = v227;
          *(v135 + v136[16]) = v139;
          sub_2659F3B04(v137, v200);

          sub_2659F4658(v135);
          sub_2659F3C04(v135, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
          v143 = *(v0 + 856);
          v201 = *(v0 + 840);
          log = *(v0 + 824);
          v144 = *(v0 + 808);
          v199 = *(v0 + 800);
          v207 = *(v0 + 816);
          v208 = *(v0 + 792);
          v210 = *(v0 + 784);
          v214 = *(v0 + 760);
          v218 = *(v0 + 744);
          v222 = *(v0 + 728);
          v225 = *(v0 + 712);
          v228 = *(v0 + 704);
          v145 = *(v0 + 688);
          v146 = *(v0 + 680);
          v198 = *(v0 + 672);
          v147 = *(v0 + 656);
          v148 = *(v0 + 648);
          v149 = *(v0 + 640);
          v150 = *(v0 + 632);
          v151 = *(v0 + 624);
          if (v128)
          {
            v195 = *(v0 + 1272);
            v196 = *(v0 + 1288);
            v197 = *(v0 + 656);
            v152 = *(v0 + 904);
            v153 = sub_2659E1220(v151, v150, v149, v148);
            v155 = v154;
            sub_2659F3B94();
            swift_allocError();
            *v156 = v153;
            *(v156 + 8) = v155;
            *(v156 + 16) = v196;
            *(v156 + 32) = vextq_s8(v195, v195, 8uLL);
            swift_willThrow();

            sub_2659ECB68(v151, v150, v149, v148, v143, v197, v201);
          }

          else
          {

            sub_2659ECB68(v151, v150, v149, v148, v143, v147, v201);
          }

          (*(v144 + 8))(log, v199);

          v157 = *(v0 + 8);

          return v157();
        }

        else
        {
          *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
          v158 = swift_task_alloc();
          *(v0 + 1312) = v158;
          *v158 = v0;
          v158[1] = sub_2659E9F28;
          v161 = *(v0 + 656);
          v162 = *(v0 + 632);

          return sub_2659ED028(v158, v162, v159, v160, v122);
        }
      }

      v68 = *(v71 + 8 * v72 + 64);
      ++v63;
      if (v68)
      {
        v63 = v72;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  v71 = *(v0 + 912);
LABEL_26:
  *(v0 + 936) = v63;
  *(v0 + 928) = v68;
  v73 = __clz(__rbit64(v68)) | (v63 << 6);
  v74 = (*(v71 + 48) + 16 * v73);
  *(v0 + 944) = *v74;
  *(v0 + 952) = v74[1];
  v75 = *(*(v71 + 56) + 8 * v73);
  *(v0 + 960) = v75;
  LOBYTE(v73) = *(v75 + 32);
  *(v0 + 1357) = v73;
  v76 = 1 << v73;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v75 + 64);
  *(v0 + 1016) = 0;
  *(v0 + 984) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 968) = 0u;

  v79 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v78)
        {
          while (1)
          {
            v81 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            v80 = *(v0 + 960);
            if (v81 >= (((1 << *(v0 + 1357)) + 63) >> 6))
            {
              v70 = *(v0 + 952);

              v63 = *(v0 + 936);
              v68 = (*(v0 + 928) - 1) & *(v0 + 928);
              goto LABEL_20;
            }

            v78 = *(v80 + 8 * v81 + 64);
            ++v79;
            if (v78)
            {
              v79 = v81;
              goto LABEL_37;
            }
          }

          __break(1u);
          goto LABEL_88;
        }

        v80 = *(v0 + 960);
LABEL_37:
        *(v0 + 1032) = v79;
        *(v0 + 1024) = v78;
        v82 = *(v0 + 952);
        v83 = *(v0 + 944);
        v57 = *(v0 + 656);
        v84 = __clz(__rbit64(v78));
        v78 &= v78 - 1;
        v85 = *(*(v80 + 56) + ((v79 << 9) | (8 * v84)));
        *(v0 + 1040) = v85;
        v86 = v85;
        v87 = sub_2659F83CC(v83, v82);
        v50 = sub_2659DFDE4(*(v57 + 128), v87);

        if ((v50 & 1) == 0)
        {
          v88 = [v86 parameters];
          sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
          v89 = sub_265A1ECC0();

          v50 = v89 >> 62 ? sub_265A1F1E0() : *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v50 == 1)
          {
            v90 = [v86 parameters];
            v91 = sub_265A1ECC0();

            if ((v91 & 0xC000000000000001) != 0)
            {
              v92 = MEMORY[0x2667656F0](0, v91);
            }

            else
            {
              if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_96;
              }

              v92 = *(v91 + 32);
            }

            v50 = v92;

            v93 = [v50 isOptional];

            if ((v93 & 1) == 0)
            {
              break;
            }
          }
        }
      }

      *(v0 + 608) = MEMORY[0x277D84F90];
      v94 = [v86 *(v69 + 2720)];
      v95 = sub_265A1EBA0();
      v57 = v96;

      v223 = v95;
      *(v0 + 1048) = v95;
      *(v0 + 1056) = v57;
      v97 = sub_2659F8854();
      *(v0 + 1064) = v97;
      *(v0 + 1358) = v98;
      v220 = v98;
      if (v98 != 0xFF)
      {
        break;
      }

      v106 = *(v0 + 832);

      v107 = sub_265A1EA80();
      v50 = sub_265A1EF30();

      if (os_log_type_enabled(v107, v50))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v229 = v109;
        *v108 = 136446210;
        v57 = sub_2659D9320(v223, v57, &v229);

        *(v108 + 4) = v57;
        _os_log_impl(&dword_2659CA000, v107, v50, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        v110 = v109;
        v69 = 0x279BB1000;
        MEMORY[0x266766110](v110, -1, -1);
        MEMORY[0x266766110](v108, -1, -1);
      }

      else
      {
      }
    }

    v99 = v69;
    v100 = *(v0 + 632);
    v216 = v97;
    v101 = [v97 (v99 + 1656)];
    v102 = sub_265A1EBA0();
    v104 = v103;

    if (v100 < 2)
    {
      break;
    }

    if (v223 == *(v0 + 624) && *(v0 + 632) == v57 || (sub_265A1F340() & 1) != 0)
    {
      if (v102 == *(v0 + 640) && *(v0 + 648) == v104)
      {
        break;
      }

      v105 = sub_265A1F340();

      if (v105)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    v111 = *(v0 + 832);

    v50 = v57;
    v57 = v220;
    sub_2659F3BE8(v216, v220);
    v112 = sub_265A1EA80();
    v113 = sub_265A1EF30();

    sub_2659E0894(v216, v220);
    v212 = v113;
    v114 = os_log_type_enabled(v112, v113);
    v69 = 0x279BB1000uLL;
    if (v114)
    {
      loga = v112;
      v115 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v229 = v205;
      *v115 = 136315394;
      v116 = sub_2659D9320(v223, v50, &v229);

      *(v115 + 4) = v116;
      *(v115 + 12) = 2080;
      v117 = [v216 identifier];
      v118 = sub_265A1EBA0();
      v57 = v119;

      v120 = sub_2659D9320(v118, v57, &v229);

      *(v115 + 14) = v120;
      v69 = 0x279BB1000;
      v50 = loga;
      _os_log_impl(&dword_2659CA000, loga, v212, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v205, -1, -1);
      MEMORY[0x266766110](v115, -1, -1);
    }

    else
    {
    }

    sub_2659E0894(v216, v220);
  }

LABEL_79:
  v164 = *(v0 + 832);

  v165 = sub_265A1EA80();
  v166 = sub_265A1EF30();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v229 = v168;
    *v167 = 136446210;
    *(v167 + 4) = sub_2659D9320(v223, v57, &v229);
    _os_log_impl(&dword_2659CA000, v165, v166, "Processing AppIntent %{public}s…", v167, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v168);
    MEMORY[0x266766110](v168, -1, -1);
    MEMORY[0x266766110](v167, -1, -1);
  }

  v169 = *(v0 + 896);
  v170 = *(v0 + 888);
  v171 = *(v0 + 880);
  v172 = *(v0 + 872);
  v173 = *(v0 + 824);
  v174 = *(v0 + 800);
  v175 = *(v0 + 744);
  v176 = *(v0 + 736);
  *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
  v172(v175, v173, v174);

  v177 = [v216 identifier];
  v178 = sub_265A1EBA0();
  v180 = v179;

  v181 = (v175 + v176[5]);
  *v181 = v170;
  v181[1] = v169;
  *(v175 + v176[6]) = v220 & 1;
  v182 = (v175 + v176[7]);
  *v182 = v223;
  v182[1] = v57;
  v183 = (v175 + v176[8]);
  *v183 = v178;
  v183[1] = v180;

  sub_2659F4108(v175);
  sub_2659F3C04(v175, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  *(v0 + 1080) = 1;
  v184 = *(v0 + 832);
  *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

  sub_2659F3BE8(v216, v220);
  v185 = sub_265A1EA80();
  v186 = sub_265A1EF30();

  sub_2659E0894(v216, v220);
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v229 = v188;
    *v187 = 136315394;
    *(v187 + 4) = sub_2659D9320(v223, v57, &v229);
    *(v187 + 12) = 2080;
    v189 = sub_2659F8224(v216, v220 & 1);
    v191 = sub_2659D9320(v189, v190, &v229);

    *(v187 + 14) = v191;
    _os_log_impl(&dword_2659CA000, v185, v186, "Performing fetch for OpenIntent '%s' with %s'…", v187, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v188, -1, -1);
    MEMORY[0x266766110](v187, -1, -1);
  }

  v50 = *(*(v0 + 656) + 152);
  if (v220)
  {
    v192 = swift_task_alloc();
    *(v0 + 1096) = v192;
    *v192 = v0;
    v192[1] = sub_2659E4310;

    return sub_265A0D044(v0 + 256, v223, v57, v50);
  }

LABEL_88:
  if (*(v0 + 632) == 1)
  {
    v193 = swift_task_alloc();
    *(v0 + 1104) = v193;
    *v193 = v0;
    v193[1] = sub_2659E627C;

    return sub_2659F9C00(v0 + 256, v223, v57, v50);
  }

  else
  {
    v194 = swift_task_alloc();
    *(v0 + 1112) = v194;
    *v194 = v0;
    v194[1] = sub_2659E81E8;

    return sub_2659F96BC(v0 + 256, v223, v57, v50);
  }
}

uint64_t sub_2659E4310()
{
  v1 = *(*v0 + 1096);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2659E4420, v2, 0);
}

void sub_2659E4420()
{
  v324 = v0;
  v1 = *(v0 + 1000);
  sub_2659EEF4C(*(v0 + 1048), *(v0 + 1056), *(v0 + 1064), 1);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 1120) = v2;
  *(v0 + 1128) = v3;
  v4 = *(v0 + 280);
  v316 = *(v0 + 272);
  *(v0 + 1136) = v316;
  *(v0 + 1144) = v4;
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  *(v0 + 1152) = v6;
  *(v0 + 1160) = v5;
  *(v0 + 1168) = CFAbsoluteTimeGetCurrent();
  v7 = *(v6 + 16);
  *(v0 + 1176) = v1 + v7;
  if (__OFADD__(v1, v7))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v312 = v2;
  v8 = *(v0 + 1064);
  v9 = *(v0 + 1056);
  v10 = *(v0 + 832);
  v11 = *(v0 + 1358);

  sub_2659DE7AC(v12);

  sub_2659F3BE8(v8, v11);

  v13 = sub_265A1EA80();
  v14 = sub_265A1EF30();

  sub_2659E0894(v8, v11);
  v308 = v4;
  v300 = v3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 1064);
    v292 = *(v0 + 1048);
    v295 = *(v0 + 1056);
    v16 = *(v0 + 1358);
    v17 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v323[0] = v304;
    *v17 = 134218498;
    *(v17 + 4) = *(v6 + 16);

    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2659D9320(v292, v295, v323);
    *(v17 + 22) = 2080;
    v18 = v15;
    v19 = sub_2659F8224(v15, v16 & 1);
    v21 = v20;
    sub_2659E0894(v15, v16);
    v22 = sub_2659D9320(v19, v21, v323);

    *(v17 + 24) = v22;
    _os_log_impl(&dword_2659CA000, v13, v14, "Fetched %ld items to index for OpenIntent '%s' with %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v304, -1, -1);
    MEMORY[0x266766110](v17, -1, -1);
  }

  else
  {
  }

  v23 = 0;
  v24 = *(v5 + 16) + 1;
  v25 = 32;
  while (--v24)
  {
    v26 = *(v5 + v25);
    v25 += 120;
    v27 = v26 == 2;
    v28 = __OFADD__(v23, v27);
    v23 += v27;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  if (v23 < 1)
  {
    *(v0 + 1184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 520) = v312;
    *(v0 + 528) = v300;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v316, v308);
    v48 = *(v0 + 520);
    v49 = *(v0 + 528);
    *(v0 + 1192) = v49;
    v50 = swift_task_alloc();
    *(v0 + 1200) = v50;
    *v50 = v0;
    v50[1] = sub_2659E82F8;
    v51 = *(v0 + 656);

    sub_2659EFCB0(v48, v49);
    return;
  }

  v29 = *(v0 + 1064);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 832);
  v32 = *(v0 + 1358);

  sub_2659F3BE8(v29, v32);

  v33 = v308;

  v34 = sub_265A1EA80();
  v35 = sub_265A1EF20();

  sub_2659E0894(v29, v32);

  if (os_log_type_enabled(v34, v35))
  {
    v296 = v35;
    v36 = *(v0 + 1064);
    v37 = *(v0 + 1056);
    v38 = *(v0 + 1048);
    v39 = *(v0 + 1358);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v323[0] = v41;
    *v40 = 136315650;
    *(v40 + 4) = sub_2659D9320(v38, v37, v323);
    *(v40 + 12) = 2080;
    sub_2659F3BE8(v36, v39);
    v42 = sub_2659F8224(v36, v39 & 1);
    v44 = v43;
    LOBYTE(v43) = v39;
    v33 = v308;
    sub_2659E0894(v36, v43);
    v45 = sub_2659D9320(v42, v44, v323);

    *(v40 + 14) = v45;
    *(v40 + 22) = 2080;
    v46 = v312;
    *(v0 + 584) = v312;
    *(v0 + 592) = v300;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v316, v308);
    v47 = sub_2659D9320(*(v0 + 584), *(v0 + 592), v323);

    *(v40 + 24) = v47;
    _os_log_impl(&dword_2659CA000, v34, v296, "Severe issues occurred while fetching items to index for OpenIntent '%s' with %s. Skipping deletion of previously indexed items for this domain '%s'", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v41, -1, -1);
    MEMORY[0x266766110](v40, -1, -1);
  }

  else
  {

    v46 = v312;
  }

  *(v0 + 488) = v46;
  *(v0 + 496) = v300;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v316, v33);
  sub_2659F1B74((v0 + 504), *(v0 + 488), *(v0 + 496));
  v52 = *(v0 + 512);

  v289 = *(v0 + 1016);
  v53 = *(v0 + 1008);
  v54 = *(v0 + 1072);
  v55 = 0;
  v56 = CFAbsoluteTimeGetCurrent() - v54;
  v57 = *(v0 + 608);
  isa = v57[2].isa;
  v59 = isa + 1;
  v60 = 4;
  while (--v59)
  {
    isa_low = LOBYTE(v57[v60].isa);
    v60 += 15;
    v62 = isa_low == 2;
    v28 = __OFADD__(v55, v62);
    v55 += v62;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v63 = 0;
  v64 = isa + 1;
  v65 = 4;
  while (--v64)
  {
    v66 = LOBYTE(v57[v65].isa);
    v65 += 15;
    v67 = v66 == 1;
    v28 = __OFADD__(v63, v67);
    v63 += v67;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v68 = *(v0 + 992);
  v301 = v68 + v55;
  if (__OFADD__(v68, v55))
  {
    goto LABEL_133;
  }

  v69 = *(v0 + 984);
  v297 = v69 + v63;
  if (__OFADD__(v69, v63))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v70 = *(v0 + 976);
  v283 = v53;
  v313 = v57;
  v317 = isa;
  if (v55 <= 0)
  {
    v286 = *(v0 + 976);
    v293 = *(v0 + 968);
    goto LABEL_33;
  }

  v28 = __OFADD__(v70, 1);
  v71 = v70 + 1;
  if (v28)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

  v293 = v71;
  v286 = v71;
LABEL_33:
  v274 = *(v0 + 1160);
  v72 = *(v0 + 1152);
  v269 = *(v0 + 1144);
  v267 = *(v0 + 1128);
  v73 = *(v0 + 1064);
  v309 = *(v0 + 1056);
  v277 = *(v0 + 896);
  v280 = *(v0 + 1048);
  v275 = *(v0 + 888);
  v74 = *(v0 + 880);
  v75 = *(v0 + 816);
  v76 = *(v0 + 808);
  v77 = *(v0 + 800);
  v78 = *(v0 + 728);
  v79 = *(v0 + 1168) - *(v0 + 1088);
  v271 = *(v0 + 1358) & 1;
  v80 = *(v0 + 720);
  (*(v0 + 872))(v75, *(v0 + 824), v77);
  v81 = [v73 identifier];
  v82 = sub_265A1EBA0();
  v264 = v83;
  v265 = v82;

  v266 = *(v72 + 16);

  (*(v76 + 32))(v78, v75, v77);
  v84 = (v78 + v80[5]);
  *v84 = v275;
  v84[1] = v277;
  *(v78 + v80[6]) = v271;
  v85 = (v78 + v80[7]);
  *v85 = v280;
  v85[1] = v309;
  v86 = (v78 + v80[8]);
  *v86 = v265;
  v86[1] = v264;
  *(v78 + v80[9]) = v55 != 0;
  *(v78 + v80[10]) = v56;
  *(v78 + v80[11]) = v79;
  *(v78 + v80[12]) = 0;
  *(v78 + v80[13]) = 0;
  *(v78 + v80[14]) = v266;
  *(v78 + v80[15]) = 0;
  *(v78 + v80[16]) = v55;
  *(v78 + v80[17]) = v63;

  sub_2659F4284(v78);
  sub_2659F3C04(v78, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v317)
  {
    v309 = "Index Single OpenIntent";
    v87 = v317 - 1;
    v88 = 4;
    v89 = v313;
    while (1)
    {
      v90 = *&v89[v88 + 6].isa;
      v92 = *&v89[v88].isa;
      v91 = *&v89[v88 + 2].isa;
      *(v0 + 48) = *&v89[v88 + 4].isa;
      *(v0 + 64) = v90;
      *(v0 + 16) = v92;
      *(v0 + 32) = v91;
      v93 = *&v89[v88 + 8].isa;
      v94 = *&v89[v88 + 10].isa;
      v95 = *&v89[v88 + 12].isa;
      *(v0 + 128) = v89[v88 + 14];
      *(v0 + 96) = v94;
      *(v0 + 112) = v95;
      *(v0 + 80) = v93;
      if (*(v0 + 16))
      {
        v318 = v87;
        v96 = *(v0 + 896);
        v97 = *(v0 + 888);
        v98 = *(v0 + 880);
        v99 = *(v0 + 712);
        v100 = *(v0 + 696);
        v101 = *(v0 + 688);
        v102 = *(v0 + 680);
        (*(v0 + 872))(v99, *(v0 + 824), *(v0 + 800));
        v103 = (v99 + *(v100 + 20));
        *v103 = v97;
        v103[1] = v96;
        v104 = v99 + *(v100 + 24);
        v105 = *(v0 + 80);
        v106 = *(v0 + 96);
        v107 = *(v0 + 112);
        *(v104 + 112) = *(v0 + 128);
        *(v104 + 80) = v106;
        *(v104 + 96) = v107;
        *(v104 + 64) = v105;
        v109 = *(v0 + 48);
        v108 = *(v0 + 64);
        v110 = *(v0 + 32);
        *v104 = *(v0 + 16);
        *(v104 + 16) = v110;
        *(v104 + 32) = v109;
        *(v104 + 48) = v108;
        v111 = swift_allocBox();
        sub_2659F3DE0(v99, v112, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v113 = sub_265A1EE00();
        v114 = *(v113 - 8);
        (*(v114 + 56))(v101, 0, 1, v113);
        v115 = swift_allocObject();
        *(v115 + 16) = 0;
        *(v115 + 24) = 0;
        *(v115 + 32) = sub_2659F6B58;
        *(v115 + 40) = 0;
        *(v115 + 48) = v111;
        *(v115 + 56) = 4;
        sub_2659D302C(v101, v102);
        LODWORD(v99) = (*(v114 + 48))(v102, 1, v113);
        swift_retain_n();

        v116 = *(v0 + 680);
        if (v99 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v114 + 8))(v116, v113);
        }

        v117 = *(v115 + 16);
        v118 = *(v115 + 24);
        swift_unknownObjectRetain();

        if (v117)
        {
          swift_getObjectType();
          v119 = sub_265A1ED70();
          v121 = v120;
          swift_unknownObjectRelease();
        }

        else
        {
          v119 = 0;
          v121 = 0;
        }

        sub_265A1EBD0();
        v122 = swift_allocObject();
        *(v122 + 16) = &unk_265A21C10;
        *(v122 + 24) = v115;

        if (v121 | v119)
        {
          v123 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v119;
          *(v0 + 376) = v121;
        }

        else
        {
          v123 = 0;
        }

        v124 = *(v0 + 712);
        v125 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v123;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v125, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v124, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v89 = v313;
        v87 = v318;
      }

      if (!v87)
      {
        break;
      }

      --v87;
      v88 += 15;
    }
  }

  v126 = *(v0 + 1056);
  v127 = *(v0 + 832);

  v128 = sub_265A1EA80();
  v129 = sub_265A1EF30();

  v130 = os_log_type_enabled(v128, v129);
  v131 = *(v0 + 1358);
  v132 = *(v0 + 1064);
  v133 = *(v0 + 1056);
  if (v130)
  {
    v134 = *(v0 + 1048);
    v319 = *(v0 + 1040);
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v323[0] = v136;
    *v135 = 136446210;
    *(v135 + 4) = sub_2659D9320(v134, v133, v323);
    _os_log_impl(&dword_2659CA000, v128, v129, "…Processing complete for AppIntent %{public}s.", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v136);
    MEMORY[0x266766110](v136, -1, -1);
    MEMORY[0x266766110](v135, -1, -1);
  }

  else
  {
    v137 = *(v0 + 1040);
  }

  sub_2659E0894(v132, v131);

  v138 = v283;
  v320 = *(v0 + 1176);
  v278 = *(v0 + 1080);
  v139 = *(v0 + 1032);
  v140 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v141 = 1;
  while (2)
  {
    *(v0 + 1016) = v289;
    *(v0 + 1008) = v138;
    *(v0 + 1000) = v320;
    *(v0 + 992) = v301;
    *(v0 + 984) = v297;
    *(v0 + 976) = v286;
    *(v0 + 968) = v293;
    while (v140)
    {
      v128 = *(v0 + 960);
LABEL_60:
      *(v0 + 1032) = v139;
      *(v0 + 1024) = v140;
      v143 = *(v0 + 952);
      v144 = *(v0 + 944);
      v145 = *(v0 + 656);
      v146 = __clz(__rbit64(v140));
      v140 &= v140 - 1;
      v147 = *(*(v128 + 56) + ((v139 << 9) | (8 * v146)));
      *(v0 + 1040) = v147;
      v148 = v147;
      v128 = sub_2659F83CC(v144, v143);
      LOBYTE(v143) = sub_2659DFDE4(*(v145 + 128), v128);

      if (v143)
      {
        goto LABEL_53;
      }

      v149 = [v148 parameters];
      v128 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v150 = sub_265A1ECC0();

      v151 = v150 >> 62 ? sub_265A1F1E0() : *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v151 != 1)
      {
        goto LABEL_53;
      }

      v152 = [v148 parameters];
      v153 = sub_265A1ECC0();

      if ((v153 & 0xC000000000000001) != 0)
      {
        v154 = MEMORY[0x2667656F0](0, v153);
      }

      else
      {
        if (!*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v154 = *(v153 + 32);
      }

      v155 = v154;

      v128 = [v155 isOptional];

      if (v128)
      {
LABEL_53:
      }

      else
      {
        v156 = v138;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v157 = [v148 identifier];
        v158 = sub_265A1EBA0();
        v160 = v159;

        *(v0 + 1048) = v158;
        *(v0 + 1056) = v160;
        v161 = sub_2659F8854();
        *(v0 + 1064) = v161;
        *(v0 + 1358) = v162;
        LOBYTE(v313) = v162;
        if (v162 == -1)
        {
          v169 = *(v0 + 832);

          v128 = sub_265A1EA80();
          v170 = sub_265A1EF30();

          if (os_log_type_enabled(v128, v170))
          {
            v171 = swift_slowAlloc();
            v313 = v128;
            v128 = swift_slowAlloc();
            v323[0] = v128;
            *v171 = 136446210;
            v172 = sub_2659D9320(v158, v160, v323);

            *(v171 + 4) = v172;
            _os_log_impl(&dword_2659CA000, v313, v170, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v171, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v128);
            v138 = v283;
            MEMORY[0x266766110](v128, -1, -1);
            MEMORY[0x266766110](v171, -1, -1);
          }

          else
          {

            v138 = v156;
          }
        }

        else
        {
          v305 = v161;
          v309 = v158;
          v163 = *(v0 + 632);
          v164 = [v161 identifier];
          v165 = sub_265A1EBA0();
          v167 = v166;

          if (v163 < 2)
          {
            goto LABEL_111;
          }

          if (v309 == *(v0 + 624) && *(v0 + 632) == v160 || (sub_265A1F340() & 1) != 0)
          {
            if (v165 == *(v0 + 640) && *(v0 + 648) == v167)
            {
LABEL_111:

LABEL_112:
              v232 = *(v0 + 832);

              v233 = sub_265A1EA80();
              v234 = sub_265A1EF30();

              if (os_log_type_enabled(v233, v234))
              {
                v235 = swift_slowAlloc();
                v236 = swift_slowAlloc();
                v323[0] = v236;
                *v235 = 136446210;
                *(v235 + 4) = sub_2659D9320(v309, v160, v323);
                _os_log_impl(&dword_2659CA000, v233, v234, "Processing AppIntent %{public}s…", v235, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v236);
                MEMORY[0x266766110](v236, -1, -1);
                MEMORY[0x266766110](v235, -1, -1);
              }

              v141 = v160;
              v237 = *(v0 + 896);
              v238 = *(v0 + 888);
              v239 = *(v0 + 880);
              v240 = *(v0 + 872);
              v241 = *(v0 + 824);
              v242 = *(v0 + 800);
              v243 = *(v0 + 744);
              v244 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v240(v243, v241, v242);

              v245 = [v305 identifier];
              v246 = sub_265A1EBA0();
              v248 = v247;

              v249 = (v243 + v244[5]);
              *v249 = v238;
              v249[1] = v237;
              *(v243 + v244[6]) = v313 & 1;
              v250 = (v243 + v244[7]);
              *v250 = v309;
              v250[1] = v141;
              v251 = (v243 + v244[8]);
              *v251 = v246;
              v251[1] = v248;

              sub_2659F4108(v243);
              sub_2659F3C04(v243, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v278 + 1;
              if (__OFADD__(v278, 1))
              {
                goto LABEL_136;
              }

              v252 = *(v0 + 832);
              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v305, v313);
              v128 = sub_265A1EA80();
              v253 = sub_265A1EF30();

              sub_2659E0894(v305, v313);
              if (os_log_type_enabled(v128, v253))
              {
                v254 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                v323[0] = v255;
                *v254 = 136315394;
                v256 = v141;
                *(v254 + 4) = sub_2659D9320(v309, v141, v323);
                *(v254 + 12) = 2080;
                v257 = sub_2659F8224(v305, v313 & 1);
                v259 = sub_2659D9320(v257, v258, v323);

                *(v254 + 14) = v259;
                _os_log_impl(&dword_2659CA000, v128, v253, "Performing fetch for OpenIntent '%s' with %s'…", v254, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v255, -1, -1);
                MEMORY[0x266766110](v254, -1, -1);
              }

              else
              {
LABEL_118:
                v256 = v141;
              }

              v260 = *(*(v0 + 656) + 152);
              if (v313)
              {
                v261 = swift_task_alloc();
                *(v0 + 1096) = v261;
                *v261 = v0;
                v261[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v309, v256, v260);
              }

              else if (*(v0 + 632) == 1)
              {
                v262 = swift_task_alloc();
                *(v0 + 1104) = v262;
                *v262 = v0;
                v262[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v309, v256, v260);
              }

              else
              {
                v263 = swift_task_alloc();
                *(v0 + 1112) = v263;
                *v263 = v0;
                v263[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v309, v256, v260);
              }

              return;
            }

            v168 = sub_265A1F340();

            if (v168)
            {
              goto LABEL_112;
            }
          }

          else
          {
          }

          v173 = *(v0 + 832);

          sub_2659F3BE8(v305, v313);
          v128 = sub_265A1EA80();
          v174 = sub_265A1EF30();

          sub_2659E0894(v305, v313);
          v281 = v174;
          if (os_log_type_enabled(v128, v174))
          {
            v175 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            v323[0] = v272;
            *v175 = 136315394;
            v176 = sub_2659D9320(v309, v160, v323);

            *(v175 + 4) = v176;
            *(v175 + 12) = 2080;
            v177 = [v305 identifier];
            v178 = sub_265A1EBA0();
            v180 = v179;

            v181 = sub_2659D9320(v178, v180, v323);

            *(v175 + 14) = v181;
            _os_log_impl(&dword_2659CA000, v128, v281, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v175, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v272, -1, -1);
            MEMORY[0x266766110](v175, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v305, v313);
          v138 = v283;
        }
      }
    }

    while (1)
    {
      v142 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      v128 = *(v0 + 960);
      if (v142 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v140 = *(v128 + 8 * v142 + 64);
      ++v139;
      if (v140)
      {
        v139 = v142;
        goto LABEL_60;
      }
    }

    v182 = *(v0 + 952);

    v183 = *(v0 + 936);
    v184 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v184)
    {
      v185 = *(v0 + 912);
LABEL_94:
      *(v0 + 936) = v183;
      *(v0 + 928) = v184;
      v187 = __clz(__rbit64(v184)) | (v183 << 6);
      v188 = (*(v185 + 48) + 16 * v187);
      *(v0 + 944) = *v188;
      *(v0 + 952) = v188[1];
      v128 = *(*(v185 + 56) + 8 * v187);
      *(v0 + 960) = v128;
      LOBYTE(v187) = *(v128 + 32);
      *(v0 + 1357) = v187;
      v189 = 1 << v187;
      if (v189 < 64)
      {
        v190 = ~(-1 << v189);
      }

      else
      {
        v190 = -1;
      }

      v140 = v190 & *(v128 + 64);

      v139 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v186 = v183 + 1;
    if (__OFADD__(v183, 1))
    {
      __break(1u);
      goto LABEL_131;
    }

    v185 = *(v0 + 912);
    if (v186 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v184 = *(v185 + 8 * v186 + 64);
    ++v183;
    if (v184)
    {
      v183 = v186;
      goto LABEL_94;
    }
  }

  v191 = *(v0 + 848);

  v192 = *(v0 + 600);
  *(v0 + 1296) = v293;
  *(v0 + 1288) = v278;
  *(v0 + 1280) = v301;
  *(v0 + 1272) = v297;
  *(v0 + 1264) = v320;
  *(v0 + 1256) = v192;
  v193 = *(v0 + 832);

  v194 = sub_265A1EA80();
  v195 = sub_265A1EF30();
  if (os_log_type_enabled(v194, v195))
  {
    v196 = *(v0 + 840);
    v197 = swift_slowAlloc();
    *v197 = 134349312;
    *(v197 + 4) = *(v192 + 16);

    *(v197 + 12) = 2050;
    *(v197 + 14) = v138;

    _os_log_impl(&dword_2659CA000, v194, v195, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v197, 0x16u);
    MEMORY[0x266766110](v197, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v198 = *(v0 + 1296);
    v306 = *(v0 + 1288);
    v310 = *(v0 + 1280);
    v314 = *(v0 + 1272);
    v321 = *(v0 + 1264);
    v302 = *(v0 + 896);
    v298 = *(v0 + 888);
    v199 = *(v0 + 880);
    v200 = *(v0 + 872);
    v201 = *(v0 + 864);
    v202 = *(v0 + 840);
    v203 = *(v0 + 824);
    v204 = *(v0 + 800);
    v205 = *(v0 + 672);
    v206 = *(v0 + 664);
    v287 = *(v0 + 640);
    v290 = *(v0 + 648);
    v284 = *(v0 + 632);
    v207 = *(v0 + 624);
    v208 = CFAbsoluteTimeGetCurrent() - v201;
    v200(v205, v203, v204);
    swift_beginAccess();
    v209 = *(v202 + 16);
    v210 = (v205 + v206[5]);
    *v210 = v207;
    v210[1] = v284;
    v210[2] = v287;
    v210[3] = v290;
    v211 = (v205 + v206[6]);
    *v211 = 0;
    v211[1] = 0xE000000000000000;
    v212 = (v205 + v206[7]);
    *v212 = v298;
    v212[1] = v302;
    *(v205 + v206[8]) = v198 != 0;
    *(v205 + v206[9]) = v208;
    *(v205 + v206[10]) = 0;
    *(v205 + v206[11]) = v306;
    *(v205 + v206[12]) = v198;
    *(v205 + v206[13]) = v310;
    *(v205 + v206[14]) = v314;
    *(v205 + v206[15]) = v321;
    *(v205 + v206[16]) = v209;
    sub_2659F3B04(v207, v284);

    sub_2659F4658(v205);
    sub_2659F3C04(v205, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v213 = *(v0 + 856);
    v285 = *(v0 + 840);
    v288 = *(v0 + 824);
    v214 = *(v0 + 808);
    v282 = *(v0 + 800);
    v291 = *(v0 + 816);
    v294 = *(v0 + 792);
    v299 = *(v0 + 784);
    v303 = *(v0 + 760);
    v307 = *(v0 + 744);
    v311 = *(v0 + 728);
    v315 = *(v0 + 712);
    v322 = *(v0 + 704);
    v276 = *(v0 + 688);
    v215 = *(v0 + 680);
    v279 = *(v0 + 672);
    v216 = *(v0 + 656);
    v217 = *(v0 + 648);
    v218 = *(v0 + 640);
    v219 = *(v0 + 632);
    v220 = *(v0 + 624);
    if (v198)
    {
      v268 = *(v0 + 1272);
      v270 = *(v0 + 1288);
      v273 = *(v0 + 656);
      v221 = *(v0 + 904);
      v222 = sub_2659E1220(v220, v219, v218, v217);
      v224 = v223;
      sub_2659F3B94();
      swift_allocError();
      *v225 = v222;
      *(v225 + 8) = v224;
      *(v225 + 16) = v270;
      *(v225 + 32) = vextq_s8(v268, v268, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v220, v219, v218, v217, v213, v273, v285);
    }

    else
    {

      sub_2659ECB68(v220, v219, v218, v217, v213, v216, v285);
    }

    (*(v214 + 8))(v288, v282);

    v226 = *(v0 + 8);

    v226();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v227 = swift_task_alloc();
    *(v0 + 1312) = v227;
    *v227 = v0;
    v227[1] = sub_2659E9F28;
    v230 = *(v0 + 656);
    v231 = *(v0 + 632);

    sub_2659ED028(v227, v231, v228, v229, v192);
  }
}

uint64_t sub_2659E627C()
{
  v1 = *(*v0 + 1104);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2659E638C, v2, 0);
}

void sub_2659E638C()
{
  v324 = v0;
  v1 = *(v0 + 1000);
  sub_2659EEF4C(*(v0 + 1048), *(v0 + 1056), *(v0 + 1064), 0);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 1120) = v2;
  *(v0 + 1128) = v3;
  v4 = *(v0 + 280);
  v316 = *(v0 + 272);
  *(v0 + 1136) = v316;
  *(v0 + 1144) = v4;
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  *(v0 + 1152) = v6;
  *(v0 + 1160) = v5;
  *(v0 + 1168) = CFAbsoluteTimeGetCurrent();
  v7 = *(v6 + 16);
  *(v0 + 1176) = v1 + v7;
  if (__OFADD__(v1, v7))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v312 = v2;
  v8 = *(v0 + 1064);
  v9 = *(v0 + 1056);
  v10 = *(v0 + 832);
  v11 = *(v0 + 1358);

  sub_2659DE7AC(v12);

  sub_2659F3BE8(v8, v11);

  v13 = sub_265A1EA80();
  v14 = sub_265A1EF30();

  sub_2659E0894(v8, v11);
  v308 = v4;
  v300 = v3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 1064);
    v292 = *(v0 + 1048);
    v295 = *(v0 + 1056);
    v16 = *(v0 + 1358);
    v17 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v323[0] = v304;
    *v17 = 134218498;
    *(v17 + 4) = *(v6 + 16);

    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2659D9320(v292, v295, v323);
    *(v17 + 22) = 2080;
    v18 = v15;
    v19 = sub_2659F8224(v15, v16 & 1);
    v21 = v20;
    sub_2659E0894(v15, v16);
    v22 = sub_2659D9320(v19, v21, v323);

    *(v17 + 24) = v22;
    _os_log_impl(&dword_2659CA000, v13, v14, "Fetched %ld items to index for OpenIntent '%s' with %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v304, -1, -1);
    MEMORY[0x266766110](v17, -1, -1);
  }

  else
  {
  }

  v23 = 0;
  v24 = *(v5 + 16) + 1;
  v25 = 32;
  while (--v24)
  {
    v26 = *(v5 + v25);
    v25 += 120;
    v27 = v26 == 2;
    v28 = __OFADD__(v23, v27);
    v23 += v27;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  if (v23 < 1)
  {
    *(v0 + 1184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 520) = v312;
    *(v0 + 528) = v300;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v316, v308);
    v48 = *(v0 + 520);
    v49 = *(v0 + 528);
    *(v0 + 1192) = v49;
    v50 = swift_task_alloc();
    *(v0 + 1200) = v50;
    *v50 = v0;
    v50[1] = sub_2659E82F8;
    v51 = *(v0 + 656);

    sub_2659EFCB0(v48, v49);
    return;
  }

  v29 = *(v0 + 1064);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 832);
  v32 = *(v0 + 1358);

  sub_2659F3BE8(v29, v32);

  v33 = v308;

  v34 = sub_265A1EA80();
  v35 = sub_265A1EF20();

  sub_2659E0894(v29, v32);

  if (os_log_type_enabled(v34, v35))
  {
    v296 = v35;
    v36 = *(v0 + 1064);
    v37 = *(v0 + 1056);
    v38 = *(v0 + 1048);
    v39 = *(v0 + 1358);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v323[0] = v41;
    *v40 = 136315650;
    *(v40 + 4) = sub_2659D9320(v38, v37, v323);
    *(v40 + 12) = 2080;
    sub_2659F3BE8(v36, v39);
    v42 = sub_2659F8224(v36, v39 & 1);
    v44 = v43;
    LOBYTE(v43) = v39;
    v33 = v308;
    sub_2659E0894(v36, v43);
    v45 = sub_2659D9320(v42, v44, v323);

    *(v40 + 14) = v45;
    *(v40 + 22) = 2080;
    v46 = v312;
    *(v0 + 584) = v312;
    *(v0 + 592) = v300;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v316, v308);
    v47 = sub_2659D9320(*(v0 + 584), *(v0 + 592), v323);

    *(v40 + 24) = v47;
    _os_log_impl(&dword_2659CA000, v34, v296, "Severe issues occurred while fetching items to index for OpenIntent '%s' with %s. Skipping deletion of previously indexed items for this domain '%s'", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v41, -1, -1);
    MEMORY[0x266766110](v40, -1, -1);
  }

  else
  {

    v46 = v312;
  }

  *(v0 + 488) = v46;
  *(v0 + 496) = v300;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v316, v33);
  sub_2659F1B74((v0 + 504), *(v0 + 488), *(v0 + 496));
  v52 = *(v0 + 512);

  v289 = *(v0 + 1016);
  v53 = *(v0 + 1008);
  v54 = *(v0 + 1072);
  v55 = 0;
  v56 = CFAbsoluteTimeGetCurrent() - v54;
  v57 = *(v0 + 608);
  isa = v57[2].isa;
  v59 = isa + 1;
  v60 = 4;
  while (--v59)
  {
    isa_low = LOBYTE(v57[v60].isa);
    v60 += 15;
    v62 = isa_low == 2;
    v28 = __OFADD__(v55, v62);
    v55 += v62;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v63 = 0;
  v64 = isa + 1;
  v65 = 4;
  while (--v64)
  {
    v66 = LOBYTE(v57[v65].isa);
    v65 += 15;
    v67 = v66 == 1;
    v28 = __OFADD__(v63, v67);
    v63 += v67;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v68 = *(v0 + 992);
  v301 = v68 + v55;
  if (__OFADD__(v68, v55))
  {
    goto LABEL_133;
  }

  v69 = *(v0 + 984);
  v297 = v69 + v63;
  if (__OFADD__(v69, v63))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v70 = *(v0 + 976);
  v283 = v53;
  v313 = v57;
  v317 = isa;
  if (v55 <= 0)
  {
    v286 = *(v0 + 976);
    v293 = *(v0 + 968);
    goto LABEL_33;
  }

  v28 = __OFADD__(v70, 1);
  v71 = v70 + 1;
  if (v28)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

  v293 = v71;
  v286 = v71;
LABEL_33:
  v274 = *(v0 + 1160);
  v72 = *(v0 + 1152);
  v269 = *(v0 + 1144);
  v267 = *(v0 + 1128);
  v73 = *(v0 + 1064);
  v309 = *(v0 + 1056);
  v277 = *(v0 + 896);
  v280 = *(v0 + 1048);
  v275 = *(v0 + 888);
  v74 = *(v0 + 880);
  v75 = *(v0 + 816);
  v76 = *(v0 + 808);
  v77 = *(v0 + 800);
  v78 = *(v0 + 728);
  v79 = *(v0 + 1168) - *(v0 + 1088);
  v271 = *(v0 + 1358) & 1;
  v80 = *(v0 + 720);
  (*(v0 + 872))(v75, *(v0 + 824), v77);
  v81 = [v73 identifier];
  v82 = sub_265A1EBA0();
  v264 = v83;
  v265 = v82;

  v266 = *(v72 + 16);

  (*(v76 + 32))(v78, v75, v77);
  v84 = (v78 + v80[5]);
  *v84 = v275;
  v84[1] = v277;
  *(v78 + v80[6]) = v271;
  v85 = (v78 + v80[7]);
  *v85 = v280;
  v85[1] = v309;
  v86 = (v78 + v80[8]);
  *v86 = v265;
  v86[1] = v264;
  *(v78 + v80[9]) = v55 != 0;
  *(v78 + v80[10]) = v56;
  *(v78 + v80[11]) = v79;
  *(v78 + v80[12]) = 0;
  *(v78 + v80[13]) = 0;
  *(v78 + v80[14]) = v266;
  *(v78 + v80[15]) = 0;
  *(v78 + v80[16]) = v55;
  *(v78 + v80[17]) = v63;

  sub_2659F4284(v78);
  sub_2659F3C04(v78, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v317)
  {
    v309 = "Index Single OpenIntent";
    v87 = v317 - 1;
    v88 = 4;
    v89 = v313;
    while (1)
    {
      v90 = *&v89[v88 + 6].isa;
      v92 = *&v89[v88].isa;
      v91 = *&v89[v88 + 2].isa;
      *(v0 + 48) = *&v89[v88 + 4].isa;
      *(v0 + 64) = v90;
      *(v0 + 16) = v92;
      *(v0 + 32) = v91;
      v93 = *&v89[v88 + 8].isa;
      v94 = *&v89[v88 + 10].isa;
      v95 = *&v89[v88 + 12].isa;
      *(v0 + 128) = v89[v88 + 14];
      *(v0 + 96) = v94;
      *(v0 + 112) = v95;
      *(v0 + 80) = v93;
      if (*(v0 + 16))
      {
        v318 = v87;
        v96 = *(v0 + 896);
        v97 = *(v0 + 888);
        v98 = *(v0 + 880);
        v99 = *(v0 + 712);
        v100 = *(v0 + 696);
        v101 = *(v0 + 688);
        v102 = *(v0 + 680);
        (*(v0 + 872))(v99, *(v0 + 824), *(v0 + 800));
        v103 = (v99 + *(v100 + 20));
        *v103 = v97;
        v103[1] = v96;
        v104 = v99 + *(v100 + 24);
        v105 = *(v0 + 80);
        v106 = *(v0 + 96);
        v107 = *(v0 + 112);
        *(v104 + 112) = *(v0 + 128);
        *(v104 + 80) = v106;
        *(v104 + 96) = v107;
        *(v104 + 64) = v105;
        v109 = *(v0 + 48);
        v108 = *(v0 + 64);
        v110 = *(v0 + 32);
        *v104 = *(v0 + 16);
        *(v104 + 16) = v110;
        *(v104 + 32) = v109;
        *(v104 + 48) = v108;
        v111 = swift_allocBox();
        sub_2659F3DE0(v99, v112, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v113 = sub_265A1EE00();
        v114 = *(v113 - 8);
        (*(v114 + 56))(v101, 0, 1, v113);
        v115 = swift_allocObject();
        *(v115 + 16) = 0;
        *(v115 + 24) = 0;
        *(v115 + 32) = sub_2659F6B58;
        *(v115 + 40) = 0;
        *(v115 + 48) = v111;
        *(v115 + 56) = 4;
        sub_2659D302C(v101, v102);
        LODWORD(v99) = (*(v114 + 48))(v102, 1, v113);
        swift_retain_n();

        v116 = *(v0 + 680);
        if (v99 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v114 + 8))(v116, v113);
        }

        v117 = *(v115 + 16);
        v118 = *(v115 + 24);
        swift_unknownObjectRetain();

        if (v117)
        {
          swift_getObjectType();
          v119 = sub_265A1ED70();
          v121 = v120;
          swift_unknownObjectRelease();
        }

        else
        {
          v119 = 0;
          v121 = 0;
        }

        sub_265A1EBD0();
        v122 = swift_allocObject();
        *(v122 + 16) = &unk_265A21C10;
        *(v122 + 24) = v115;

        if (v121 | v119)
        {
          v123 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v119;
          *(v0 + 376) = v121;
        }

        else
        {
          v123 = 0;
        }

        v124 = *(v0 + 712);
        v125 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v123;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v125, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v124, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v89 = v313;
        v87 = v318;
      }

      if (!v87)
      {
        break;
      }

      --v87;
      v88 += 15;
    }
  }

  v126 = *(v0 + 1056);
  v127 = *(v0 + 832);

  v128 = sub_265A1EA80();
  v129 = sub_265A1EF30();

  v130 = os_log_type_enabled(v128, v129);
  v131 = *(v0 + 1358);
  v132 = *(v0 + 1064);
  v133 = *(v0 + 1056);
  if (v130)
  {
    v134 = *(v0 + 1048);
    v319 = *(v0 + 1040);
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v323[0] = v136;
    *v135 = 136446210;
    *(v135 + 4) = sub_2659D9320(v134, v133, v323);
    _os_log_impl(&dword_2659CA000, v128, v129, "…Processing complete for AppIntent %{public}s.", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v136);
    MEMORY[0x266766110](v136, -1, -1);
    MEMORY[0x266766110](v135, -1, -1);
  }

  else
  {
    v137 = *(v0 + 1040);
  }

  sub_2659E0894(v132, v131);

  v138 = v283;
  v320 = *(v0 + 1176);
  v278 = *(v0 + 1080);
  v139 = *(v0 + 1032);
  v140 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v141 = 1;
  while (2)
  {
    *(v0 + 1016) = v289;
    *(v0 + 1008) = v138;
    *(v0 + 1000) = v320;
    *(v0 + 992) = v301;
    *(v0 + 984) = v297;
    *(v0 + 976) = v286;
    *(v0 + 968) = v293;
    while (v140)
    {
      v128 = *(v0 + 960);
LABEL_60:
      *(v0 + 1032) = v139;
      *(v0 + 1024) = v140;
      v143 = *(v0 + 952);
      v144 = *(v0 + 944);
      v145 = *(v0 + 656);
      v146 = __clz(__rbit64(v140));
      v140 &= v140 - 1;
      v147 = *(*(v128 + 56) + ((v139 << 9) | (8 * v146)));
      *(v0 + 1040) = v147;
      v148 = v147;
      v128 = sub_2659F83CC(v144, v143);
      LOBYTE(v143) = sub_2659DFDE4(*(v145 + 128), v128);

      if (v143)
      {
        goto LABEL_53;
      }

      v149 = [v148 parameters];
      v128 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v150 = sub_265A1ECC0();

      v151 = v150 >> 62 ? sub_265A1F1E0() : *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v151 != 1)
      {
        goto LABEL_53;
      }

      v152 = [v148 parameters];
      v153 = sub_265A1ECC0();

      if ((v153 & 0xC000000000000001) != 0)
      {
        v154 = MEMORY[0x2667656F0](0, v153);
      }

      else
      {
        if (!*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v154 = *(v153 + 32);
      }

      v155 = v154;

      v128 = [v155 isOptional];

      if (v128)
      {
LABEL_53:
      }

      else
      {
        v156 = v138;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v157 = [v148 identifier];
        v158 = sub_265A1EBA0();
        v160 = v159;

        *(v0 + 1048) = v158;
        *(v0 + 1056) = v160;
        v161 = sub_2659F8854();
        *(v0 + 1064) = v161;
        *(v0 + 1358) = v162;
        LOBYTE(v313) = v162;
        if (v162 == -1)
        {
          v169 = *(v0 + 832);

          v128 = sub_265A1EA80();
          v170 = sub_265A1EF30();

          if (os_log_type_enabled(v128, v170))
          {
            v171 = swift_slowAlloc();
            v313 = v128;
            v128 = swift_slowAlloc();
            v323[0] = v128;
            *v171 = 136446210;
            v172 = sub_2659D9320(v158, v160, v323);

            *(v171 + 4) = v172;
            _os_log_impl(&dword_2659CA000, v313, v170, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v171, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v128);
            v138 = v283;
            MEMORY[0x266766110](v128, -1, -1);
            MEMORY[0x266766110](v171, -1, -1);
          }

          else
          {

            v138 = v156;
          }
        }

        else
        {
          v305 = v161;
          v309 = v158;
          v163 = *(v0 + 632);
          v164 = [v161 identifier];
          v165 = sub_265A1EBA0();
          v167 = v166;

          if (v163 < 2)
          {
            goto LABEL_111;
          }

          if (v309 == *(v0 + 624) && *(v0 + 632) == v160 || (sub_265A1F340() & 1) != 0)
          {
            if (v165 == *(v0 + 640) && *(v0 + 648) == v167)
            {
LABEL_111:

LABEL_112:
              v232 = *(v0 + 832);

              v233 = sub_265A1EA80();
              v234 = sub_265A1EF30();

              if (os_log_type_enabled(v233, v234))
              {
                v235 = swift_slowAlloc();
                v236 = swift_slowAlloc();
                v323[0] = v236;
                *v235 = 136446210;
                *(v235 + 4) = sub_2659D9320(v309, v160, v323);
                _os_log_impl(&dword_2659CA000, v233, v234, "Processing AppIntent %{public}s…", v235, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v236);
                MEMORY[0x266766110](v236, -1, -1);
                MEMORY[0x266766110](v235, -1, -1);
              }

              v141 = v160;
              v237 = *(v0 + 896);
              v238 = *(v0 + 888);
              v239 = *(v0 + 880);
              v240 = *(v0 + 872);
              v241 = *(v0 + 824);
              v242 = *(v0 + 800);
              v243 = *(v0 + 744);
              v244 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v240(v243, v241, v242);

              v245 = [v305 identifier];
              v246 = sub_265A1EBA0();
              v248 = v247;

              v249 = (v243 + v244[5]);
              *v249 = v238;
              v249[1] = v237;
              *(v243 + v244[6]) = v313 & 1;
              v250 = (v243 + v244[7]);
              *v250 = v309;
              v250[1] = v141;
              v251 = (v243 + v244[8]);
              *v251 = v246;
              v251[1] = v248;

              sub_2659F4108(v243);
              sub_2659F3C04(v243, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v278 + 1;
              if (__OFADD__(v278, 1))
              {
                goto LABEL_136;
              }

              v252 = *(v0 + 832);
              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v305, v313);
              v128 = sub_265A1EA80();
              v253 = sub_265A1EF30();

              sub_2659E0894(v305, v313);
              if (os_log_type_enabled(v128, v253))
              {
                v254 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                v323[0] = v255;
                *v254 = 136315394;
                v256 = v141;
                *(v254 + 4) = sub_2659D9320(v309, v141, v323);
                *(v254 + 12) = 2080;
                v257 = sub_2659F8224(v305, v313 & 1);
                v259 = sub_2659D9320(v257, v258, v323);

                *(v254 + 14) = v259;
                _os_log_impl(&dword_2659CA000, v128, v253, "Performing fetch for OpenIntent '%s' with %s'…", v254, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v255, -1, -1);
                MEMORY[0x266766110](v254, -1, -1);
              }

              else
              {
LABEL_118:
                v256 = v141;
              }

              v260 = *(*(v0 + 656) + 152);
              if (v313)
              {
                v261 = swift_task_alloc();
                *(v0 + 1096) = v261;
                *v261 = v0;
                v261[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v309, v256, v260);
              }

              else if (*(v0 + 632) == 1)
              {
                v262 = swift_task_alloc();
                *(v0 + 1104) = v262;
                *v262 = v0;
                v262[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v309, v256, v260);
              }

              else
              {
                v263 = swift_task_alloc();
                *(v0 + 1112) = v263;
                *v263 = v0;
                v263[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v309, v256, v260);
              }

              return;
            }

            v168 = sub_265A1F340();

            if (v168)
            {
              goto LABEL_112;
            }
          }

          else
          {
          }

          v173 = *(v0 + 832);

          sub_2659F3BE8(v305, v313);
          v128 = sub_265A1EA80();
          v174 = sub_265A1EF30();

          sub_2659E0894(v305, v313);
          v281 = v174;
          if (os_log_type_enabled(v128, v174))
          {
            v175 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            v323[0] = v272;
            *v175 = 136315394;
            v176 = sub_2659D9320(v309, v160, v323);

            *(v175 + 4) = v176;
            *(v175 + 12) = 2080;
            v177 = [v305 identifier];
            v178 = sub_265A1EBA0();
            v180 = v179;

            v181 = sub_2659D9320(v178, v180, v323);

            *(v175 + 14) = v181;
            _os_log_impl(&dword_2659CA000, v128, v281, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v175, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v272, -1, -1);
            MEMORY[0x266766110](v175, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v305, v313);
          v138 = v283;
        }
      }
    }

    while (1)
    {
      v142 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      v128 = *(v0 + 960);
      if (v142 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v140 = *(v128 + 8 * v142 + 64);
      ++v139;
      if (v140)
      {
        v139 = v142;
        goto LABEL_60;
      }
    }

    v182 = *(v0 + 952);

    v183 = *(v0 + 936);
    v184 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v184)
    {
      v185 = *(v0 + 912);
LABEL_94:
      *(v0 + 936) = v183;
      *(v0 + 928) = v184;
      v187 = __clz(__rbit64(v184)) | (v183 << 6);
      v188 = (*(v185 + 48) + 16 * v187);
      *(v0 + 944) = *v188;
      *(v0 + 952) = v188[1];
      v128 = *(*(v185 + 56) + 8 * v187);
      *(v0 + 960) = v128;
      LOBYTE(v187) = *(v128 + 32);
      *(v0 + 1357) = v187;
      v189 = 1 << v187;
      if (v189 < 64)
      {
        v190 = ~(-1 << v189);
      }

      else
      {
        v190 = -1;
      }

      v140 = v190 & *(v128 + 64);

      v139 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v186 = v183 + 1;
    if (__OFADD__(v183, 1))
    {
      __break(1u);
      goto LABEL_131;
    }

    v185 = *(v0 + 912);
    if (v186 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v184 = *(v185 + 8 * v186 + 64);
    ++v183;
    if (v184)
    {
      v183 = v186;
      goto LABEL_94;
    }
  }

  v191 = *(v0 + 848);

  v192 = *(v0 + 600);
  *(v0 + 1296) = v293;
  *(v0 + 1288) = v278;
  *(v0 + 1280) = v301;
  *(v0 + 1272) = v297;
  *(v0 + 1264) = v320;
  *(v0 + 1256) = v192;
  v193 = *(v0 + 832);

  v194 = sub_265A1EA80();
  v195 = sub_265A1EF30();
  if (os_log_type_enabled(v194, v195))
  {
    v196 = *(v0 + 840);
    v197 = swift_slowAlloc();
    *v197 = 134349312;
    *(v197 + 4) = *(v192 + 16);

    *(v197 + 12) = 2050;
    *(v197 + 14) = v138;

    _os_log_impl(&dword_2659CA000, v194, v195, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v197, 0x16u);
    MEMORY[0x266766110](v197, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v198 = *(v0 + 1296);
    v306 = *(v0 + 1288);
    v310 = *(v0 + 1280);
    v314 = *(v0 + 1272);
    v321 = *(v0 + 1264);
    v302 = *(v0 + 896);
    v298 = *(v0 + 888);
    v199 = *(v0 + 880);
    v200 = *(v0 + 872);
    v201 = *(v0 + 864);
    v202 = *(v0 + 840);
    v203 = *(v0 + 824);
    v204 = *(v0 + 800);
    v205 = *(v0 + 672);
    v206 = *(v0 + 664);
    v287 = *(v0 + 640);
    v290 = *(v0 + 648);
    v284 = *(v0 + 632);
    v207 = *(v0 + 624);
    v208 = CFAbsoluteTimeGetCurrent() - v201;
    v200(v205, v203, v204);
    swift_beginAccess();
    v209 = *(v202 + 16);
    v210 = (v205 + v206[5]);
    *v210 = v207;
    v210[1] = v284;
    v210[2] = v287;
    v210[3] = v290;
    v211 = (v205 + v206[6]);
    *v211 = 0;
    v211[1] = 0xE000000000000000;
    v212 = (v205 + v206[7]);
    *v212 = v298;
    v212[1] = v302;
    *(v205 + v206[8]) = v198 != 0;
    *(v205 + v206[9]) = v208;
    *(v205 + v206[10]) = 0;
    *(v205 + v206[11]) = v306;
    *(v205 + v206[12]) = v198;
    *(v205 + v206[13]) = v310;
    *(v205 + v206[14]) = v314;
    *(v205 + v206[15]) = v321;
    *(v205 + v206[16]) = v209;
    sub_2659F3B04(v207, v284);

    sub_2659F4658(v205);
    sub_2659F3C04(v205, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v213 = *(v0 + 856);
    v285 = *(v0 + 840);
    v288 = *(v0 + 824);
    v214 = *(v0 + 808);
    v282 = *(v0 + 800);
    v291 = *(v0 + 816);
    v294 = *(v0 + 792);
    v299 = *(v0 + 784);
    v303 = *(v0 + 760);
    v307 = *(v0 + 744);
    v311 = *(v0 + 728);
    v315 = *(v0 + 712);
    v322 = *(v0 + 704);
    v276 = *(v0 + 688);
    v215 = *(v0 + 680);
    v279 = *(v0 + 672);
    v216 = *(v0 + 656);
    v217 = *(v0 + 648);
    v218 = *(v0 + 640);
    v219 = *(v0 + 632);
    v220 = *(v0 + 624);
    if (v198)
    {
      v268 = *(v0 + 1272);
      v270 = *(v0 + 1288);
      v273 = *(v0 + 656);
      v221 = *(v0 + 904);
      v222 = sub_2659E1220(v220, v219, v218, v217);
      v224 = v223;
      sub_2659F3B94();
      swift_allocError();
      *v225 = v222;
      *(v225 + 8) = v224;
      *(v225 + 16) = v270;
      *(v225 + 32) = vextq_s8(v268, v268, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v220, v219, v218, v217, v213, v273, v285);
    }

    else
    {

      sub_2659ECB68(v220, v219, v218, v217, v213, v216, v285);
    }

    (*(v214 + 8))(v288, v282);

    v226 = *(v0 + 8);

    v226();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v227 = swift_task_alloc();
    *(v0 + 1312) = v227;
    *v227 = v0;
    v227[1] = sub_2659E9F28;
    v230 = *(v0 + 656);
    v231 = *(v0 + 632);

    sub_2659ED028(v227, v231, v228, v229, v192);
  }
}

uint64_t sub_2659E81E8()
{
  v1 = *(*v0 + 1112);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2659F3F60, v2, 0);
}

uint64_t sub_2659E82F8()
{
  v2 = *v1;
  v3 = *(*v1 + 1200);
  v9 = *v1;
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v4 = *(v2 + 656);
    v5 = sub_2659EA4A8;
  }

  else
  {
    v6 = *(v2 + 1192);
    v7 = *(v2 + 656);

    v5 = sub_2659E8420;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2659E8420()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v6 = *(v0 + 1120);
  v7 = *(v0 + 1152);
  *(v0 + 1216) = CFAbsoluteTimeGetCurrent();
  *(v0 + 1224) = CFAbsoluteTimeGetCurrent();
  *(v0 + 304) = v6;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  *(v0 + 336) = v7;
  v3 = swift_task_alloc();
  *(v0 + 1232) = v3;
  *v3 = v0;
  v3[1] = sub_2659E84F4;
  v4 = *(v0 + 656);

  return sub_2659EF10C(v0 + 304);
}

uint64_t sub_2659E84F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1232);
  v8 = *v2;
  v3[155] = a1;
  v3[156] = v1;

  v5 = v3[82];
  if (v1)
  {
    v6 = sub_2659EA8F0;
  }

  else
  {
    v6 = sub_2659E8610;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_2659E8610()
{
  v275 = v0;
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1016);
  *(v0 + 552) = *(v0 + 1120);
  *(v0 + 560) = v4;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v3, v2);
  sub_2659F1B74((v0 + 568), *(v0 + 552), *(v0 + 560));
  v6 = *(v0 + 576);

  v7 = v5 + v1;
  if (__OFADD__(v5, v1))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(*(v0 + 840) + 16) = v7;
  v8 = *(v0 + 1240);
  v9 = *(v0 + 1224);
  v10 = CFAbsoluteTimeGetCurrent() - v9;
  v11 = *(v0 + 1216) - *(v0 + 1184);
  v12 = *(v0 + 1072);
  v13 = 0;
  v14 = CFAbsoluteTimeGetCurrent() - v12;
  v15 = *(v0 + 608);
  isa = v15[2].isa;
  v17 = isa + 1;
  v18 = 4;
  while (--v17)
  {
    isa_low = LOBYTE(v15[v18].isa);
    v18 += 15;
    v20 = isa_low == 2;
    v21 = __OFADD__(v13, v20);
    v13 += v20;
    if (v21)
    {
      __break(1u);
      break;
    }
  }

  v22 = 0;
  v23 = isa + 1;
  v24 = 4;
  while (--v23)
  {
    v25 = LOBYTE(v15[v24].isa);
    v24 += 15;
    v26 = v25 == 1;
    v21 = __OFADD__(v22, v26);
    v22 += v26;
    if (v21)
    {
      __break(1u);
      break;
    }
  }

  v27 = *(v0 + 992);
  v256 = v27 + v13;
  if (__OFADD__(v27, v13))
  {
    goto LABEL_118;
  }

  v28 = *(v0 + 984);
  v253 = v28 + v22;
  if (__OFADD__(v28, v22))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v29 = *(v0 + 976);
  v245 = v7;
  v265 = v15;
  v268 = isa;
  v262 = v8;
  if (v13 <= 0)
  {
    v248 = *(v0 + 976);
    v251 = *(v0 + 968);
    goto LABEL_18;
  }

  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    return;
  }

  v248 = v30;
  v251 = v30;
LABEL_18:
  v31 = *(v0 + 1152);
  v228 = *(v0 + 1144);
  v226 = *(v0 + 1128);
  v32 = *(v0 + 1064);
  v238 = *(v0 + 1048);
  v241 = *(v0 + 1056);
  v236 = *(v0 + 896);
  v232 = *(v0 + 1160);
  v234 = *(v0 + 888);
  v33 = *(v0 + 880);
  v34 = *(v0 + 816);
  v35 = *(v0 + 808);
  v36 = *(v0 + 800);
  v37 = *(v0 + 728);
  v38 = *(v0 + 1168) - *(v0 + 1088);
  v230 = *(v0 + 1358) & 1;
  v39 = *(v0 + 720);
  (*(v0 + 872))(v34, *(v0 + 824), v36);
  v40 = [v32 identifier];
  v41 = sub_265A1EBA0();
  v223 = v42;
  v224 = v41;

  v225 = *(v31 + 16);

  (*(v35 + 32))(v37, v34, v36);
  v43 = (v37 + v39[5]);
  *v43 = v234;
  v43[1] = v236;
  *(v37 + v39[6]) = v230;
  v44 = (v37 + v39[7]);
  *v44 = v238;
  v44[1] = v241;
  v45 = (v37 + v39[8]);
  *v45 = v224;
  v45[1] = v223;
  *(v37 + v39[9]) = v13 != 0;
  *(v37 + v39[10]) = v14;
  *(v37 + v39[11]) = v38;
  *(v37 + v39[12]) = v11;
  *(v37 + v39[13]) = v10;
  *(v37 + v39[14]) = v225;
  *(v37 + v39[15]) = v262;
  *(v37 + v39[16]) = v13;
  *(v37 + v39[17]) = v22;

  sub_2659F4284(v37);
  sub_2659F3C04(v37, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v268)
  {
    v262 = "Index Single OpenIntent";
    v46 = v268 - 1;
    v47 = 4;
    v48 = v265;
    while (1)
    {
      v49 = *&v48[v47 + 6].isa;
      v51 = *&v48[v47].isa;
      v50 = *&v48[v47 + 2].isa;
      *(v0 + 48) = *&v48[v47 + 4].isa;
      *(v0 + 64) = v49;
      *(v0 + 16) = v51;
      *(v0 + 32) = v50;
      v52 = *&v48[v47 + 8].isa;
      v53 = *&v48[v47 + 10].isa;
      v54 = *&v48[v47 + 12].isa;
      *(v0 + 128) = v48[v47 + 14];
      *(v0 + 96) = v53;
      *(v0 + 112) = v54;
      *(v0 + 80) = v52;
      if (*(v0 + 16))
      {
        v269 = v46;
        v55 = *(v0 + 896);
        v56 = *(v0 + 888);
        v57 = *(v0 + 880);
        v58 = *(v0 + 712);
        v59 = *(v0 + 696);
        v60 = *(v0 + 688);
        v61 = *(v0 + 680);
        (*(v0 + 872))(v58, *(v0 + 824), *(v0 + 800));
        v62 = (v58 + *(v59 + 20));
        *v62 = v56;
        v62[1] = v55;
        v63 = v58 + *(v59 + 24);
        v64 = *(v0 + 80);
        v65 = *(v0 + 96);
        v66 = *(v0 + 112);
        *(v63 + 112) = *(v0 + 128);
        *(v63 + 80) = v65;
        *(v63 + 96) = v66;
        *(v63 + 64) = v64;
        v68 = *(v0 + 48);
        v67 = *(v0 + 64);
        v69 = *(v0 + 32);
        *v63 = *(v0 + 16);
        *(v63 + 16) = v69;
        *(v63 + 32) = v68;
        *(v63 + 48) = v67;
        v70 = swift_allocBox();
        sub_2659F3DE0(v58, v71, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v72 = sub_265A1EE00();
        v73 = *(v72 - 8);
        (*(v73 + 56))(v60, 0, 1, v72);
        v74 = swift_allocObject();
        *(v74 + 16) = 0;
        *(v74 + 24) = 0;
        *(v74 + 32) = sub_2659F6B58;
        *(v74 + 40) = 0;
        *(v74 + 48) = v70;
        *(v74 + 56) = 4;
        sub_2659D302C(v60, v61);
        LODWORD(v58) = (*(v73 + 48))(v61, 1, v72);
        swift_retain_n();

        v75 = *(v0 + 680);
        if (v58 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v73 + 8))(v75, v72);
        }

        v76 = *(v74 + 16);
        v77 = *(v74 + 24);
        swift_unknownObjectRetain();

        if (v76)
        {
          swift_getObjectType();
          v78 = sub_265A1ED70();
          v80 = v79;
          swift_unknownObjectRelease();
        }

        else
        {
          v78 = 0;
          v80 = 0;
        }

        sub_265A1EBD0();
        v81 = swift_allocObject();
        *(v81 + 16) = &unk_265A21C10;
        *(v81 + 24) = v74;

        if (v80 | v78)
        {
          v82 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v78;
          *(v0 + 376) = v80;
        }

        else
        {
          v82 = 0;
        }

        v83 = *(v0 + 712);
        v84 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v82;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v84, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v83, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v48 = v265;
        v46 = v269;
      }

      if (!v46)
      {
        break;
      }

      --v46;
      v47 += 15;
    }
  }

  v85 = *(v0 + 1056);
  v86 = *(v0 + 832);

  v87 = sub_265A1EA80();
  v88 = sub_265A1EF30();

  v89 = os_log_type_enabled(v87, v88);
  v90 = *(v0 + 1358);
  v91 = *(v0 + 1064);
  v92 = *(v0 + 1056);
  if (v89)
  {
    v93 = *(v0 + 1048);
    v270 = *(v0 + 1040);
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v274[0] = v95;
    *v94 = 136446210;
    *(v94 + 4) = sub_2659D9320(v93, v92, v274);
    _os_log_impl(&dword_2659CA000, v87, v88, "…Processing complete for AppIntent %{public}s.", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x266766110](v95, -1, -1);
    MEMORY[0x266766110](v94, -1, -1);
  }

  else
  {
    v96 = *(v0 + 1040);
  }

  sub_2659E0894(v91, v90);

  v97 = v245;
  v271 = *(v0 + 1176);
  v239 = *(v0 + 1080);
  v98 = *(v0 + 1032);
  v99 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v100 = 1;
  while (2)
  {
    *(v0 + 1016) = v97;
    *(v0 + 1008) = v97;
    *(v0 + 1000) = v271;
    *(v0 + 992) = v256;
    *(v0 + 984) = v253;
    *(v0 + 976) = v248;
    *(v0 + 968) = v251;
    while (v99)
    {
      v87 = *(v0 + 960);
LABEL_45:
      *(v0 + 1032) = v98;
      *(v0 + 1024) = v99;
      v102 = *(v0 + 952);
      v103 = *(v0 + 944);
      v104 = *(v0 + 656);
      v105 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v106 = *(*(v87 + 56) + ((v98 << 9) | (8 * v105)));
      *(v0 + 1040) = v106;
      v107 = v106;
      v87 = sub_2659F83CC(v103, v102);
      LOBYTE(v102) = sub_2659DFDE4(*(v104 + 128), v87);

      if (v102)
      {
        goto LABEL_38;
      }

      v108 = [v107 parameters];
      v87 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v109 = sub_265A1ECC0();

      v110 = v109 >> 62 ? sub_265A1F1E0() : *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v110 != 1)
      {
        goto LABEL_38;
      }

      v111 = [v107 parameters];
      v112 = sub_265A1ECC0();

      if ((v112 & 0xC000000000000001) != 0)
      {
        v113 = MEMORY[0x2667656F0](0, v112);
      }

      else
      {
        if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v113 = *(v112 + 32);
      }

      v114 = v113;

      v87 = [v114 isOptional];

      if (v87)
      {
LABEL_38:
      }

      else
      {
        v115 = v97;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v116 = [v107 identifier];
        v117 = sub_265A1EBA0();
        v119 = v118;

        *(v0 + 1048) = v117;
        *(v0 + 1056) = v119;
        v120 = sub_2659F8854();
        *(v0 + 1064) = v120;
        *(v0 + 1358) = v121;
        LOBYTE(v265) = v121;
        if (v121 == -1)
        {
          v128 = *(v0 + 832);

          v87 = sub_265A1EA80();
          v129 = sub_265A1EF30();

          if (os_log_type_enabled(v87, v129))
          {
            v130 = swift_slowAlloc();
            v265 = v87;
            v87 = swift_slowAlloc();
            v274[0] = v87;
            *v130 = 136446210;
            v131 = sub_2659D9320(v117, v119, v274);

            *(v130 + 4) = v131;
            _os_log_impl(&dword_2659CA000, v265, v129, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            v97 = v245;
            MEMORY[0x266766110](v87, -1, -1);
            MEMORY[0x266766110](v130, -1, -1);
          }

          else
          {

            v97 = v115;
          }
        }

        else
        {
          v259 = v120;
          v262 = v117;
          v122 = *(v0 + 632);
          v123 = [v120 identifier];
          v124 = sub_265A1EBA0();
          v126 = v125;

          if (v122 < 2)
          {
            goto LABEL_96;
          }

          if (v262 == *(v0 + 624) && *(v0 + 632) == v119 || (sub_265A1F340() & 1) != 0)
          {
            if (v124 == *(v0 + 640) && *(v0 + 648) == v126)
            {
LABEL_96:

LABEL_97:
              v191 = *(v0 + 832);

              v192 = sub_265A1EA80();
              v193 = sub_265A1EF30();

              if (os_log_type_enabled(v192, v193))
              {
                v194 = swift_slowAlloc();
                v195 = swift_slowAlloc();
                v274[0] = v195;
                *v194 = 136446210;
                *(v194 + 4) = sub_2659D9320(v262, v119, v274);
                _os_log_impl(&dword_2659CA000, v192, v193, "Processing AppIntent %{public}s…", v194, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v195);
                MEMORY[0x266766110](v195, -1, -1);
                MEMORY[0x266766110](v194, -1, -1);
              }

              v100 = v119;
              v196 = *(v0 + 896);
              v197 = *(v0 + 888);
              v198 = *(v0 + 880);
              v199 = *(v0 + 872);
              v200 = *(v0 + 824);
              v201 = *(v0 + 800);
              v202 = *(v0 + 744);
              v203 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v199(v202, v200, v201);

              v204 = [v259 identifier];
              v205 = sub_265A1EBA0();
              v207 = v206;

              v208 = (v202 + v203[5]);
              *v208 = v197;
              v208[1] = v196;
              *(v202 + v203[6]) = v265 & 1;
              v209 = (v202 + v203[7]);
              *v209 = v262;
              v209[1] = v100;
              v210 = (v202 + v203[8]);
              *v210 = v205;
              v210[1] = v207;

              sub_2659F4108(v202);
              sub_2659F3C04(v202, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v239 + 1;
              if (__OFADD__(v239, 1))
              {
                goto LABEL_121;
              }

              v211 = *(v0 + 832);
              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v259, v265);
              v87 = sub_265A1EA80();
              v212 = sub_265A1EF30();

              sub_2659E0894(v259, v265);
              if (os_log_type_enabled(v87, v212))
              {
                v213 = swift_slowAlloc();
                v214 = swift_slowAlloc();
                v274[0] = v214;
                *v213 = 136315394;
                v215 = v100;
                *(v213 + 4) = sub_2659D9320(v262, v100, v274);
                *(v213 + 12) = 2080;
                v216 = sub_2659F8224(v259, v265 & 1);
                v218 = sub_2659D9320(v216, v217, v274);

                *(v213 + 14) = v218;
                _os_log_impl(&dword_2659CA000, v87, v212, "Performing fetch for OpenIntent '%s' with %s'…", v213, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v214, -1, -1);
                MEMORY[0x266766110](v213, -1, -1);
              }

              else
              {
LABEL_103:
                v215 = v100;
              }

              v219 = *(*(v0 + 656) + 152);
              if (v265)
              {
                v220 = swift_task_alloc();
                *(v0 + 1096) = v220;
                *v220 = v0;
                v220[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v262, v215, v219);
              }

              else if (*(v0 + 632) == 1)
              {
                v221 = swift_task_alloc();
                *(v0 + 1104) = v221;
                *v221 = v0;
                v221[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v262, v215, v219);
              }

              else
              {
                v222 = swift_task_alloc();
                *(v0 + 1112) = v222;
                *v222 = v0;
                v222[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v262, v215, v219);
              }

              return;
            }

            v127 = sub_265A1F340();

            if (v127)
            {
              goto LABEL_97;
            }
          }

          else
          {
          }

          v132 = *(v0 + 832);

          sub_2659F3BE8(v259, v265);
          v87 = sub_265A1EA80();
          v133 = sub_265A1EF30();

          sub_2659E0894(v259, v265);
          v242 = v133;
          if (os_log_type_enabled(v87, v133))
          {
            v134 = swift_slowAlloc();
            v233 = swift_slowAlloc();
            v274[0] = v233;
            *v134 = 136315394;
            v135 = sub_2659D9320(v262, v119, v274);

            *(v134 + 4) = v135;
            *(v134 + 12) = 2080;
            v136 = [v259 identifier];
            v137 = sub_265A1EBA0();
            v139 = v138;

            v140 = sub_2659D9320(v137, v139, v274);

            *(v134 + 14) = v140;
            _os_log_impl(&dword_2659CA000, v87, v242, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v134, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v233, -1, -1);
            MEMORY[0x266766110](v134, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v259, v265);
          v97 = v245;
        }
      }
    }

    while (1)
    {
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
        goto LABEL_103;
      }

      v87 = *(v0 + 960);
      if (v101 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v99 = *(v87 + 8 * v101 + 64);
      ++v98;
      if (v99)
      {
        v98 = v101;
        goto LABEL_45;
      }
    }

    v141 = *(v0 + 952);

    v142 = *(v0 + 936);
    v143 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v143)
    {
      v144 = *(v0 + 912);
LABEL_79:
      *(v0 + 936) = v142;
      *(v0 + 928) = v143;
      v146 = __clz(__rbit64(v143)) | (v142 << 6);
      v147 = (*(v144 + 48) + 16 * v146);
      *(v0 + 944) = *v147;
      *(v0 + 952) = v147[1];
      v87 = *(*(v144 + 56) + 8 * v146);
      *(v0 + 960) = v87;
      LOBYTE(v146) = *(v87 + 32);
      *(v0 + 1357) = v146;
      v148 = 1 << v146;
      if (v148 < 64)
      {
        v149 = ~(-1 << v148);
      }

      else
      {
        v149 = -1;
      }

      v99 = v149 & *(v87 + 64);

      v98 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v145 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
      __break(1u);
      goto LABEL_116;
    }

    v144 = *(v0 + 912);
    if (v145 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v143 = *(v144 + 8 * v145 + 64);
    ++v142;
    if (v143)
    {
      v142 = v145;
      goto LABEL_79;
    }
  }

  v150 = *(v0 + 848);

  v151 = *(v0 + 600);
  *(v0 + 1296) = v251;
  *(v0 + 1288) = v239;
  *(v0 + 1280) = v256;
  *(v0 + 1272) = v253;
  *(v0 + 1264) = v271;
  *(v0 + 1256) = v151;
  v152 = *(v0 + 832);

  v153 = sub_265A1EA80();
  v154 = sub_265A1EF30();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = *(v0 + 840);
    v156 = swift_slowAlloc();
    *v156 = 134349312;
    *(v156 + 4) = *(v151 + 16);

    *(v156 + 12) = 2050;
    *(v156 + 14) = v97;

    _os_log_impl(&dword_2659CA000, v153, v154, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v156, 0x16u);
    MEMORY[0x266766110](v156, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v157 = *(v0 + 1296);
    v260 = *(v0 + 1288);
    v263 = *(v0 + 1280);
    v266 = *(v0 + 1272);
    v272 = *(v0 + 1264);
    v254 = *(v0 + 888);
    v257 = *(v0 + 896);
    v158 = *(v0 + 880);
    v159 = *(v0 + 872);
    v160 = *(v0 + 864);
    v161 = *(v0 + 840);
    v162 = *(v0 + 824);
    v163 = *(v0 + 800);
    v164 = *(v0 + 672);
    v165 = *(v0 + 664);
    v246 = *(v0 + 640);
    v249 = *(v0 + 648);
    v243 = *(v0 + 632);
    v166 = *(v0 + 624);
    v167 = CFAbsoluteTimeGetCurrent() - v160;
    v159(v164, v162, v163);
    swift_beginAccess();
    v168 = *(v161 + 16);
    v169 = (v164 + v165[5]);
    *v169 = v166;
    v169[1] = v243;
    v169[2] = v246;
    v169[3] = v249;
    v170 = (v164 + v165[6]);
    *v170 = 0;
    v170[1] = 0xE000000000000000;
    v171 = (v164 + v165[7]);
    *v171 = v254;
    v171[1] = v257;
    *(v164 + v165[8]) = v157 != 0;
    *(v164 + v165[9]) = v167;
    *(v164 + v165[10]) = 0;
    *(v164 + v165[11]) = v260;
    *(v164 + v165[12]) = v157;
    *(v164 + v165[13]) = v263;
    *(v164 + v165[14]) = v266;
    *(v164 + v165[15]) = v272;
    *(v164 + v165[16]) = v168;
    sub_2659F3B04(v166, v243);

    sub_2659F4658(v164);
    sub_2659F3C04(v164, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v172 = *(v0 + 856);
    v244 = *(v0 + 840);
    v247 = *(v0 + 824);
    v173 = *(v0 + 808);
    v240 = *(v0 + 800);
    v250 = *(v0 + 816);
    v252 = *(v0 + 792);
    v255 = *(v0 + 784);
    v258 = *(v0 + 760);
    v261 = *(v0 + 744);
    v264 = *(v0 + 728);
    v267 = *(v0 + 712);
    v273 = *(v0 + 704);
    v235 = *(v0 + 688);
    v174 = *(v0 + 680);
    v237 = *(v0 + 672);
    v175 = *(v0 + 656);
    v176 = *(v0 + 648);
    v177 = *(v0 + 640);
    v178 = *(v0 + 632);
    v179 = *(v0 + 624);
    if (v157)
    {
      v227 = *(v0 + 1272);
      v229 = *(v0 + 1288);
      v231 = *(v0 + 656);
      v180 = *(v0 + 904);
      v181 = sub_2659E1220(v179, v178, v177, v176);
      v183 = v182;
      sub_2659F3B94();
      swift_allocError();
      *v184 = v181;
      *(v184 + 8) = v183;
      *(v184 + 16) = v229;
      *(v184 + 32) = vextq_s8(v227, v227, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v179, v178, v177, v176, v172, v231, v244);
    }

    else
    {

      sub_2659ECB68(v179, v178, v177, v176, v172, v175, v244);
    }

    (*(v173 + 8))(v247, v240);

    v185 = *(v0 + 8);

    v185();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v186 = swift_task_alloc();
    *(v0 + 1312) = v186;
    *v186 = v0;
    v186[1] = sub_2659E9F28;
    v189 = *(v0 + 656);
    v190 = *(v0 + 632);

    sub_2659ED028(v186, v190, v187, v188, v151);
  }
}

uint64_t sub_2659E9F28()
{
  v2 = *v1;
  v3 = *(*v1 + 1312);
  v9 = *v1;
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v4 = *(v2 + 656);
    v5 = sub_2659EC4E0;
  }

  else
  {
    v6 = *(v2 + 1256);
    v7 = *(v2 + 656);

    v5 = sub_2659EA050;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2659EA050()
{
  v1 = *(v0 + 1304);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(v0 + 1296);
  v4 = Current - v1;
  v51 = *(v0 + 1288);
  v53 = *(v0 + 1280);
  v55 = *(v0 + 1272);
  v57 = *(v0 + 1264);
  v47 = *(v0 + 888);
  v49 = *(v0 + 896);
  v5 = *(v0 + 880);
  v6 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = *(v0 + 840);
  v9 = *(v0 + 824);
  v10 = *(v0 + 800);
  v11 = *(v0 + 672);
  v12 = *(v0 + 664);
  v42 = *(v0 + 640);
  v44 = *(v0 + 648);
  v40 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = CFAbsoluteTimeGetCurrent() - v7;
  v6(v11, v9, v10);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v16 = (v11 + v12[5]);
  *v16 = v13;
  v16[1] = v40;
  v16[2] = v42;
  v16[3] = v44;
  v17 = (v11 + v12[6]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v11 + v12[7]);
  *v18 = v47;
  v18[1] = v49;
  *(v11 + v12[8]) = v3 != 0;
  *(v11 + v12[9]) = v14;
  *(v11 + v12[10]) = v4;
  *(v11 + v12[11]) = v51;
  *(v11 + v12[12]) = v3;
  *(v11 + v12[13]) = v53;
  *(v11 + v12[14]) = v55;
  *(v11 + v12[15]) = v57;
  *(v11 + v12[16]) = v15;
  sub_2659F3B04(v13, v40);

  sub_2659F4658(v11);
  sub_2659F3C04(v11, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  v19 = *(v0 + 856);
  v41 = *(v0 + 840);
  v43 = *(v0 + 824);
  v20 = *(v0 + 808);
  v39 = *(v0 + 800);
  v45 = *(v0 + 816);
  v46 = *(v0 + 792);
  v48 = *(v0 + 784);
  v50 = *(v0 + 760);
  v52 = *(v0 + 744);
  v54 = *(v0 + 728);
  v56 = *(v0 + 712);
  v58 = *(v0 + 704);
  v21 = *(v0 + 688);
  v38 = *(v0 + 672);
  v22 = *(v0 + 656);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);
  v25 = *(v0 + 632);
  v26 = *(v0 + 624);
  if (v3)
  {
    v34 = *(v0 + 1272);
    v35 = *(v0 + 1288);
    v36 = *(v0 + 656);
    v27 = *(v0 + 904);
    v37 = *(v0 + 680);
    v28 = sub_2659E1220(v26, v25, v24, v23);
    v30 = v29;
    sub_2659F3B94();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = v35;
    *(v31 + 32) = vextq_s8(v34, v34, 8uLL);
    swift_willThrow();

    sub_2659ECB68(v26, v25, v24, v23, v19, v36, v41);
  }

  else
  {

    sub_2659ECB68(v26, v25, v24, v23, v19, v22, v41);
  }

  (*(v20 + 8))(v43, v39);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2659EA4A8()
{
  v54 = v0;
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 832);

  v8 = v1;
  v9 = sub_265A1EA80();
  v10 = sub_265A1EF20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1208);
    v50 = *(v0 + 1144);
    v12 = *(v0 + 1136);
    v13 = *(v0 + 1128);
    v14 = *(v0 + 1120);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v53 = v17;
    *v15 = 136446466;
    *(v0 + 536) = v14;
    *(v0 + 544) = v13;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v12, v50);
    v18 = sub_2659D9320(*(v0 + 536), *(v0 + 544), &v53);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2114;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_2659CA000, v9, v10, "Error performing delete operation for domain '%{public}s': %{public}@.", v15, 0x16u);
    sub_2659DA270(v16, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x266766110](v17, -1, -1);
    MEMORY[0x266766110](v15, -1, -1);
  }

  v21 = *(v0 + 1208);
  v22 = *(v0 + 1056);
  v23 = sub_265A1E680();
  v51 = v22;

  v24 = [v23 domain];
  v25 = sub_265A1EBA0();
  v47 = v26;
  v48 = v25;

  v46 = [v23 code];
  v27 = [v23 description];
  v28 = sub_265A1EBA0();
  v44 = v29;
  v45 = v28;

  Current = CFAbsoluteTimeGetCurrent();
  v31 = *(v0 + 608);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_2659E0698(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_2659E0698((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = *(v0 + 1208);
  v35 = *(v0 + 1048);

  *(v31 + 2) = v33 + 1;
  v36 = &v31[120 * v33];
  v36[32] = 2;
  v37 = *(v0 + 1342);
  *(v36 + 9) = *(v0 + 1345);
  *(v36 + 33) = v37;
  *(v36 + 5) = v35;
  *(v36 + 6) = v51;
  *(v36 + 56) = 0u;
  *(v36 + 72) = 0u;
  v36[88] = 0;
  v38 = *(v0 + 1335);
  *(v36 + 23) = *(v0 + 1338);
  *(v36 + 89) = v38;
  *(v36 + 12) = 0x4000000000000000;
  *(v36 + 13) = v48;
  *(v36 + 14) = v47;
  *(v36 + 15) = v46;
  *(v36 + 16) = v45;
  *(v36 + 17) = v44;
  *(v36 + 18) = Current;
  *(v0 + 608) = v31;
  v39 = *(v0 + 1160);
  v40 = *(v0 + 1136);
  v49 = *(v0 + 1120);
  v52 = *(v0 + 1144);
  *(v0 + 1216) = CFAbsoluteTimeGetCurrent();
  *(v0 + 1224) = CFAbsoluteTimeGetCurrent();
  *(v0 + 304) = v49;
  *(v0 + 320) = v40;
  *(v0 + 328) = v52;
  *(v0 + 344) = v39;
  v41 = swift_task_alloc();
  *(v0 + 1232) = v41;
  *v41 = v0;
  v41[1] = sub_2659E84F4;
  v42 = *(v0 + 656);

  return sub_2659EF10C(v0 + 304);
}

void sub_2659EA8F0()
{
  v300 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 832);

  v7 = v1;
  v8 = sub_265A1EA80();
  v9 = sub_265A1EF20();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1248);
    v292 = *(v0 + 1144);
    v11 = *(v0 + 1136);
    v12 = *(v0 + 1128);
    v13 = *(v0 + 1120);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v299[0] = v16;
    *v14 = 136446466;
    *(v0 + 456) = v13;
    *(v0 + 464) = v12;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v11, v292);
    v17 = sub_2659D9320(*(v0 + 456), *(v0 + 464), v299);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2114;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v19;
    *v15 = v19;
    _os_log_impl(&dword_2659CA000, v8, v9, "Error performing index operation for domain '%{public}s': %{public}@.", v14, 0x16u);
    sub_2659DA270(v15, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x266766110](v16, -1, -1);
    MEMORY[0x266766110](v14, -1, -1);
  }

  v20 = *(v0 + 1248);
  v21 = *(v0 + 1056);
  v22 = sub_265A1E680();

  v23 = [v22 domain];
  v24 = sub_265A1EBA0();
  v289 = v25;
  v293 = v24;

  v286 = [v22 code];
  v26 = [v22 description];
  v27 = sub_265A1EBA0();
  v277 = v28;
  v280 = v27;

  Current = CFAbsoluteTimeGetCurrent();
  v30 = *(v0 + 608);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_121:
    v30 = sub_2659E0698(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_2659E0698((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = *(v0 + 1248);
  v34 = *(v0 + 1048);

  *(v30 + 2) = v32 + 1;
  v35 = &v30[120 * v32];
  v35[32] = 2;
  v36 = *(v0 + 1328);
  *(v35 + 9) = *(v0 + 1331);
  *(v35 + 33) = v36;
  *(v35 + 5) = v34;
  *(v35 + 6) = v21;
  *(v35 + 56) = 0u;
  *(v35 + 72) = 0u;
  v35[88] = 0;
  v37 = *(v0 + 1349);
  *(v35 + 23) = *(v0 + 1352);
  *(v35 + 89) = v37;
  *(v35 + 12) = 0x4000000000000001;
  *(v35 + 13) = v293;
  *(v35 + 14) = v289;
  *(v35 + 15) = v286;
  *(v35 + 16) = v280;
  *(v35 + 17) = v277;
  *(v35 + 18) = Current;
  *(v0 + 608) = v30;
  v272 = *(v0 + 1016);
  v38 = *(v0 + 1008);
  v39 = *(v0 + 1224);
  Current = CFAbsoluteTimeGetCurrent() - v39;
  v40 = *(v0 + 1216) - *(v0 + 1184);
  v41 = *(v0 + 1072);
  v42 = 0;
  v43 = CFAbsoluteTimeGetCurrent() - v41;
  v44 = *(v0 + 608);
  isa = v44[2].isa;
  v46 = isa + 1;
  v47 = 4;
  v266 = v38;
  v289 = v44;
  v294 = isa;
  while (--v46)
  {
    isa_low = LOBYTE(v44[v47].isa);
    v47 += 15;
    v49 = isa_low == 2;
    v50 = __OFADD__(v42, v49);
    v42 += v49;
    if (v50)
    {
      __break(1u);
      break;
    }
  }

  v51 = 0;
  v52 = isa + 1;
  v53 = 4;
  while (--v52)
  {
    v54 = LOBYTE(v44[v53].isa);
    v53 += 15;
    v55 = v54 == 1;
    v50 = __OFADD__(v51, v55);
    v51 += v55;
    if (v50)
    {
      __break(1u);
      break;
    }
  }

  v56 = *(v0 + 992);
  v280 = v56 + v42;
  if (__OFADD__(v56, v42))
  {
    __break(1u);
    goto LABEL_123;
  }

  v57 = *(v0 + 984);
  v277 = v57 + v51;
  if (__OFADD__(v57, v51))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v58 = *(v0 + 976);
  if (v42 <= 0)
  {
    v269 = *(v0 + 976);
    v275 = *(v0 + 968);
    goto LABEL_22;
  }

  v50 = __OFADD__(v58, 1);
  v59 = v58 + 1;
  if (v50)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    return;
  }

  v275 = v59;
  v269 = v59;
LABEL_22:
  v257 = *(v0 + 1160);
  v60 = *(v0 + 1152);
  v252 = *(v0 + 1144);
  v250 = *(v0 + 1128);
  v61 = *(v0 + 1064);
  v286 = *(v0 + 1056);
  v260 = *(v0 + 896);
  v263 = *(v0 + 1048);
  v258 = *(v0 + 888);
  v62 = *(v0 + 880);
  v63 = *(v0 + 816);
  v64 = *(v0 + 808);
  v65 = *(v0 + 800);
  v66 = *(v0 + 728);
  v67 = *(v0 + 1168) - *(v0 + 1088);
  v254 = *(v0 + 1358) & 1;
  v68 = *(v0 + 720);
  (*(v0 + 872))(v63, *(v0 + 824), v65);
  v69 = [v61 identifier];
  v70 = sub_265A1EBA0();
  v247 = v71;
  v248 = v70;

  v249 = *(v60 + 16);

  (*(v64 + 32))(v66, v63, v65);
  v72 = (v66 + v68[5]);
  *v72 = v258;
  v72[1] = v260;
  *(v66 + v68[6]) = v254;
  v73 = (v66 + v68[7]);
  *v73 = v263;
  v73[1] = v286;
  v74 = (v66 + v68[8]);
  *v74 = v248;
  v74[1] = v247;
  *(v66 + v68[9]) = v42 != 0;
  *(v66 + v68[10]) = v43;
  *(v66 + v68[11]) = v67;
  *(v66 + v68[12]) = v40;
  *(v66 + v68[13]) = Current;
  *(v66 + v68[14]) = v249;
  *(v66 + v68[15]) = 0;
  *(v66 + v68[16]) = v42;
  *(v66 + v68[17]) = v51;

  sub_2659F4284(v66);
  sub_2659F3C04(v66, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v294)
  {
    v286 = "Index Single OpenIntent";
    v75 = v294 - 1;
    v76 = 4;
    v77 = v289;
    while (1)
    {
      v78 = *&v77[v76 + 6].isa;
      v80 = *&v77[v76].isa;
      v79 = *&v77[v76 + 2].isa;
      *(v0 + 48) = *&v77[v76 + 4].isa;
      *(v0 + 64) = v78;
      *(v0 + 16) = v80;
      *(v0 + 32) = v79;
      v81 = *&v77[v76 + 8].isa;
      v82 = *&v77[v76 + 10].isa;
      v83 = *&v77[v76 + 12].isa;
      *(v0 + 128) = v77[v76 + 14];
      *(v0 + 96) = v82;
      *(v0 + 112) = v83;
      *(v0 + 80) = v81;
      if (*(v0 + 16))
      {
        v295 = v75;
        v84 = *(v0 + 896);
        v85 = *(v0 + 888);
        v86 = *(v0 + 880);
        v87 = *(v0 + 712);
        v88 = *(v0 + 696);
        v89 = *(v0 + 688);
        v90 = *(v0 + 680);
        (*(v0 + 872))(v87, *(v0 + 824), *(v0 + 800));
        v91 = (v87 + *(v88 + 20));
        *v91 = v85;
        v91[1] = v84;
        v92 = v87 + *(v88 + 24);
        v93 = *(v0 + 80);
        v94 = *(v0 + 96);
        v95 = *(v0 + 112);
        *(v92 + 112) = *(v0 + 128);
        *(v92 + 80) = v94;
        *(v92 + 96) = v95;
        *(v92 + 64) = v93;
        v97 = *(v0 + 48);
        v96 = *(v0 + 64);
        v98 = *(v0 + 32);
        *v92 = *(v0 + 16);
        *(v92 + 16) = v98;
        *(v92 + 32) = v97;
        *(v92 + 48) = v96;
        v99 = swift_allocBox();
        sub_2659F3DE0(v87, v100, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v101 = sub_265A1EE00();
        v102 = *(v101 - 8);
        (*(v102 + 56))(v89, 0, 1, v101);
        v103 = swift_allocObject();
        *(v103 + 16) = 0;
        *(v103 + 24) = 0;
        *(v103 + 32) = sub_2659F6B58;
        *(v103 + 40) = 0;
        *(v103 + 48) = v99;
        *(v103 + 56) = 4;
        sub_2659D302C(v89, v90);
        LODWORD(v87) = (*(v102 + 48))(v90, 1, v101);
        swift_retain_n();

        v104 = *(v0 + 680);
        if (v87 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v102 + 8))(v104, v101);
        }

        v105 = *(v103 + 16);
        v106 = *(v103 + 24);
        swift_unknownObjectRetain();

        if (v105)
        {
          swift_getObjectType();
          v107 = sub_265A1ED70();
          v109 = v108;
          swift_unknownObjectRelease();
        }

        else
        {
          v107 = 0;
          v109 = 0;
        }

        sub_265A1EBD0();
        v110 = swift_allocObject();
        *(v110 + 16) = &unk_265A21C10;
        *(v110 + 24) = v103;

        if (v109 | v107)
        {
          v111 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v107;
          *(v0 + 376) = v109;
        }

        else
        {
          v111 = 0;
        }

        v112 = *(v0 + 712);
        v113 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v111;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v113, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v112, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v77 = v289;
        v75 = v295;
      }

      if (!v75)
      {
        break;
      }

      --v75;
      v76 += 15;
    }
  }

  v114 = *(v0 + 1056);
  v115 = *(v0 + 832);

  v21 = sub_265A1EA80();
  v116 = sub_265A1EF30();

  v117 = os_log_type_enabled(v21, v116);
  v118 = *(v0 + 1358);
  v119 = *(v0 + 1064);
  v120 = *(v0 + 1056);
  if (v117)
  {
    v121 = *(v0 + 1048);
    v296 = *(v0 + 1040);
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v299[0] = v123;
    *v122 = 136446210;
    *(v122 + 4) = sub_2659D9320(v121, v120, v299);
    _os_log_impl(&dword_2659CA000, v21, v116, "…Processing complete for AppIntent %{public}s.", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    MEMORY[0x266766110](v123, -1, -1);
    MEMORY[0x266766110](v122, -1, -1);
  }

  else
  {
    v124 = *(v0 + 1040);
  }

  sub_2659E0894(v119, v118);

  v30 = v266;
  v293 = *(v0 + 1176);
  v261 = *(v0 + 1080);
  v22 = *(v0 + 1032);
  v125 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v126 = 1;
  while (2)
  {
    *(v0 + 1016) = v272;
    *(v0 + 1008) = v30;
    *(v0 + 1000) = v293;
    *(v0 + 992) = v280;
    *(v0 + 984) = v277;
    *(v0 + 976) = v269;
    *(v0 + 968) = v275;
    while (v125)
    {
      v21 = *(v0 + 960);
LABEL_49:
      *(v0 + 1032) = v22;
      *(v0 + 1024) = v125;
      v128 = *(v0 + 952);
      v129 = *(v0 + 944);
      v130 = *(v0 + 656);
      v131 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v132 = *(*(v21 + 56) + ((v22 << 9) | (8 * v131)));
      *(v0 + 1040) = v132;
      v133 = v132;
      v21 = sub_2659F83CC(v129, v128);
      LOBYTE(v128) = sub_2659DFDE4(*(v130 + 128), v21);

      if (v128)
      {
        goto LABEL_42;
      }

      v134 = [v133 parameters];
      v21 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v135 = sub_265A1ECC0();

      v136 = v135 >> 62 ? sub_265A1F1E0() : *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v136 != 1)
      {
        goto LABEL_42;
      }

      v137 = [v133 parameters];
      v21 = sub_265A1ECC0();

      if ((v21 & 0xC000000000000001) != 0)
      {
        v138 = MEMORY[0x2667656F0](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v138 = *(v21 + 32);
      }

      v139 = v138;

      v21 = [v139 isOptional];

      if (v21)
      {
LABEL_42:
      }

      else
      {
        v140 = v30;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v141 = [v133 identifier];
        v142 = sub_265A1EBA0();
        v144 = v143;

        *(v0 + 1048) = v142;
        *(v0 + 1056) = v144;
        v145 = sub_2659F8854();
        *(v0 + 1064) = v145;
        *(v0 + 1358) = v146;
        LODWORD(v289) = v146;
        if (v146 == 0xFF)
        {
          v153 = *(v0 + 832);

          v21 = sub_265A1EA80();
          v154 = sub_265A1EF30();

          if (os_log_type_enabled(v21, v154))
          {
            v289 = v21;
            v21 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v299[0] = v155;
            *v21 = 136446210;
            v156 = sub_2659D9320(v142, v144, v299);

            *(v21 + 4) = v156;
            _os_log_impl(&dword_2659CA000, v289, v154, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v155);
            v30 = v266;
            MEMORY[0x266766110](v155, -1, -1);
            MEMORY[0x266766110](v21, -1, -1);
          }

          else
          {

            v30 = v140;
          }
        }

        else
        {
          v283 = v145;
          v286 = v142;
          v147 = *(v0 + 632);
          v148 = [v145 identifier];
          v149 = sub_265A1EBA0();
          v151 = v150;

          if (v147 < 2)
          {
            goto LABEL_100;
          }

          if (v286 == *(v0 + 624) && *(v0 + 632) == v144 || (sub_265A1F340() & 1) != 0)
          {
            if (v149 == *(v0 + 640) && *(v0 + 648) == v151)
            {
LABEL_100:

LABEL_101:
              v215 = *(v0 + 832);

              v216 = sub_265A1EA80();
              v217 = sub_265A1EF30();

              if (os_log_type_enabled(v216, v217))
              {
                v218 = swift_slowAlloc();
                v219 = swift_slowAlloc();
                v299[0] = v219;
                *v218 = 136446210;
                *(v218 + 4) = sub_2659D9320(v286, v144, v299);
                _os_log_impl(&dword_2659CA000, v216, v217, "Processing AppIntent %{public}s…", v218, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v219);
                MEMORY[0x266766110](v219, -1, -1);
                MEMORY[0x266766110](v218, -1, -1);
              }

              v126 = v144;
              v220 = *(v0 + 896);
              v221 = *(v0 + 888);
              v222 = *(v0 + 880);
              v223 = *(v0 + 872);
              v224 = *(v0 + 824);
              v225 = *(v0 + 800);
              v226 = *(v0 + 744);
              v227 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v223(v226, v224, v225);

              v228 = [v283 identifier];
              v229 = sub_265A1EBA0();
              v231 = v230;

              v232 = (v226 + v227[5]);
              *v232 = v221;
              v232[1] = v220;
              *(v226 + v227[6]) = v289 & 1;
              v233 = (v226 + v227[7]);
              *v233 = v286;
              v233[1] = v126;
              v234 = (v226 + v227[8]);
              *v234 = v229;
              v234[1] = v231;

              sub_2659F4108(v226);
              sub_2659F3C04(v226, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v261 + 1;
              if (__OFADD__(v261, 1))
              {
                goto LABEL_125;
              }

              v235 = *(v0 + 832);
              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v283, v289);
              v21 = sub_265A1EA80();
              v236 = sub_265A1EF30();

              sub_2659E0894(v283, v289);
              if (os_log_type_enabled(v21, v236))
              {
                v237 = swift_slowAlloc();
                v238 = swift_slowAlloc();
                v299[0] = v238;
                *v237 = 136315394;
                v239 = v126;
                *(v237 + 4) = sub_2659D9320(v286, v126, v299);
                *(v237 + 12) = 2080;
                v240 = sub_2659F8224(v283, v289 & 1);
                v242 = sub_2659D9320(v240, v241, v299);

                *(v237 + 14) = v242;
                _os_log_impl(&dword_2659CA000, v21, v236, "Performing fetch for OpenIntent '%s' with %s'…", v237, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v238, -1, -1);
                MEMORY[0x266766110](v237, -1, -1);
              }

              else
              {
LABEL_107:
                v239 = v126;
              }

              v243 = *(*(v0 + 656) + 152);
              if (v289)
              {
                v244 = swift_task_alloc();
                *(v0 + 1096) = v244;
                *v244 = v0;
                v244[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v286, v239, v243);
              }

              else if (*(v0 + 632) == 1)
              {
                v245 = swift_task_alloc();
                *(v0 + 1104) = v245;
                *v245 = v0;
                v245[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v286, v239, v243);
              }

              else
              {
                v246 = swift_task_alloc();
                *(v0 + 1112) = v246;
                *v246 = v0;
                v246[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v286, v239, v243);
              }

              return;
            }

            v152 = sub_265A1F340();

            if (v152)
            {
              goto LABEL_101;
            }
          }

          else
          {
          }

          v157 = *(v0 + 832);

          sub_2659F3BE8(v283, v289);
          v21 = sub_265A1EA80();
          v158 = sub_265A1EF30();

          sub_2659E0894(v283, v289);
          v264 = v158;
          if (os_log_type_enabled(v21, v158))
          {
            v159 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            v299[0] = v255;
            *v159 = 136315394;
            v160 = sub_2659D9320(v286, v144, v299);

            *(v159 + 4) = v160;
            *(v159 + 12) = 2080;
            v161 = [v283 identifier];
            v162 = sub_265A1EBA0();
            v164 = v163;

            v165 = sub_2659D9320(v162, v164, v299);

            *(v159 + 14) = v165;
            _os_log_impl(&dword_2659CA000, v21, v264, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v159, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v255, -1, -1);
            MEMORY[0x266766110](v159, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v283, v289);
          v30 = v266;
        }
      }
    }

    while (1)
    {
      v127 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      v21 = *(v0 + 960);
      if (v127 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v125 = *(v21 + 8 * v127 + 64);
      ++v22;
      if (v125)
      {
        v22 = v127;
        goto LABEL_49;
      }
    }

    v166 = *(v0 + 952);

    v167 = *(v0 + 936);
    v168 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v168)
    {
      v21 = *(v0 + 912);
LABEL_83:
      *(v0 + 936) = v167;
      *(v0 + 928) = v168;
      v170 = __clz(__rbit64(v168)) | (v167 << 6);
      v171 = (*(v21 + 48) + 16 * v170);
      *(v0 + 944) = *v171;
      *(v0 + 952) = v171[1];
      v21 = *(*(v21 + 56) + 8 * v170);
      *(v0 + 960) = v21;
      LOBYTE(v170) = *(v21 + 32);
      *(v0 + 1357) = v170;
      v172 = 1 << v170;
      if (v172 < 64)
      {
        v173 = ~(-1 << v172);
      }

      else
      {
        v173 = -1;
      }

      v125 = v173 & *(v21 + 64);

      v22 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v169 = v167 + 1;
    if (__OFADD__(v167, 1))
    {
      __break(1u);
      goto LABEL_120;
    }

    v21 = *(v0 + 912);
    if (v169 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v168 = *(v21 + 8 * v169 + 64);
    ++v167;
    if (v168)
    {
      v167 = v169;
      goto LABEL_83;
    }
  }

  v174 = *(v0 + 848);

  v175 = *(v0 + 600);
  *(v0 + 1296) = v275;
  *(v0 + 1288) = v261;
  *(v0 + 1280) = v280;
  *(v0 + 1272) = v277;
  *(v0 + 1264) = v293;
  *(v0 + 1256) = v175;
  v176 = *(v0 + 832);

  v177 = sub_265A1EA80();
  v178 = sub_265A1EF30();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = *(v0 + 840);
    v180 = swift_slowAlloc();
    *v180 = 134349312;
    *(v180 + 4) = *(v175 + 16);

    *(v180 + 12) = 2050;
    *(v180 + 14) = v30;

    _os_log_impl(&dword_2659CA000, v177, v178, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v180, 0x16u);
    MEMORY[0x266766110](v180, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v181 = *(v0 + 1296);
    v284 = *(v0 + 1288);
    v287 = *(v0 + 1280);
    v290 = *(v0 + 1272);
    v297 = *(v0 + 1264);
    v278 = *(v0 + 888);
    v281 = *(v0 + 896);
    v182 = *(v0 + 880);
    v183 = *(v0 + 872);
    v184 = *(v0 + 864);
    v185 = *(v0 + 840);
    v186 = *(v0 + 824);
    v187 = *(v0 + 800);
    v188 = *(v0 + 672);
    v189 = *(v0 + 664);
    v270 = *(v0 + 640);
    v273 = *(v0 + 648);
    v267 = *(v0 + 632);
    v190 = *(v0 + 624);
    v191 = CFAbsoluteTimeGetCurrent() - v184;
    v183(v188, v186, v187);
    swift_beginAccess();
    v192 = *(v185 + 16);
    v193 = (v188 + v189[5]);
    *v193 = v190;
    v193[1] = v267;
    v193[2] = v270;
    v193[3] = v273;
    v194 = (v188 + v189[6]);
    *v194 = 0;
    v194[1] = 0xE000000000000000;
    v195 = (v188 + v189[7]);
    *v195 = v278;
    v195[1] = v281;
    *(v188 + v189[8]) = v181 != 0;
    *(v188 + v189[9]) = v191;
    *(v188 + v189[10]) = 0;
    *(v188 + v189[11]) = v284;
    *(v188 + v189[12]) = v181;
    *(v188 + v189[13]) = v287;
    *(v188 + v189[14]) = v290;
    *(v188 + v189[15]) = v297;
    *(v188 + v189[16]) = v192;
    sub_2659F3B04(v190, v267);

    sub_2659F4658(v188);
    sub_2659F3C04(v188, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v196 = *(v0 + 856);
    v268 = *(v0 + 840);
    v271 = *(v0 + 824);
    v197 = *(v0 + 808);
    v265 = *(v0 + 800);
    v274 = *(v0 + 816);
    v276 = *(v0 + 792);
    v279 = *(v0 + 784);
    v282 = *(v0 + 760);
    v285 = *(v0 + 744);
    v288 = *(v0 + 728);
    v291 = *(v0 + 712);
    v298 = *(v0 + 704);
    v259 = *(v0 + 688);
    v198 = *(v0 + 680);
    v262 = *(v0 + 672);
    v199 = *(v0 + 656);
    v200 = *(v0 + 648);
    v201 = *(v0 + 640);
    v202 = *(v0 + 632);
    v203 = *(v0 + 624);
    if (v181)
    {
      v251 = *(v0 + 1272);
      v253 = *(v0 + 1288);
      v256 = *(v0 + 656);
      v204 = *(v0 + 904);
      v205 = sub_2659E1220(v203, v202, v201, v200);
      v207 = v206;
      sub_2659F3B94();
      swift_allocError();
      *v208 = v205;
      *(v208 + 8) = v207;
      *(v208 + 16) = v253;
      *(v208 + 32) = vextq_s8(v251, v251, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v203, v202, v201, v200, v196, v256, v268);
    }

    else
    {

      sub_2659ECB68(v203, v202, v201, v200, v196, v199, v268);
    }

    (*(v197 + 8))(v271, v265);

    v209 = *(v0 + 8);

    v209();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v210 = swift_task_alloc();
    *(v0 + 1312) = v210;
    *v210 = v0;
    v210[1] = sub_2659E9F28;
    v213 = *(v0 + 656);
    v214 = *(v0 + 632);

    sub_2659ED028(v210, v214, v211, v212, v175);
  }
}

uint64_t sub_2659EC4E0()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 832);

  v4 = v1;
  v5 = sub_265A1EA80();
  v6 = sub_265A1EF20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1320);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2659CA000, v5, v6, "Error occurred during post indexing cleanup: %{public}@", v8, 0xCu);
    sub_2659DA270(v9, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v9, -1, -1);
    MEMORY[0x266766110](v8, -1, -1);
  }

  v12 = *(v0 + 1320);
  v13 = *(v0 + 896);
  v88 = *(v0 + 880);
  v91 = *(v0 + 888);
  v85 = *(v0 + 872);
  v79 = *(v0 + 800);
  v82 = *(v0 + 824);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);

  v16 = sub_265A1E680();
  v17 = [v16 domain];
  v76 = sub_265A1EBA0();
  v19 = v18;

  v20 = [v16 code];
  swift_getErrorValue();
  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  v23 = *(v0 + 400);
  v24 = sub_265A1F380();
  v26 = v25;
  Current = CFAbsoluteTimeGetCurrent();
  v85(v14, v82, v79);
  v28 = (v14 + *(v15 + 20));
  *v28 = v91;
  v28[1] = v13;
  v29 = v14 + *(v15 + 24);
  *v29 = 2;
  *(v29 + 8) = 1;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  *(v29 + 56) = 5;
  *(v29 + 64) = 0x4000000000000002;
  *(v29 + 72) = v76;
  *(v29 + 80) = v19;
  *(v29 + 88) = v20;
  *(v29 + 96) = v24;
  *(v29 + 104) = v26;
  *(v29 + 112) = Current;

  sub_2659F48D4(v14);

  sub_2659F3C04(v14, _s9AnalyticsO25IndexingIssueEventPayloadVMa);
  v30 = *(v0 + 1304);
  v31 = CFAbsoluteTimeGetCurrent();
  v32 = *(v0 + 1296);
  v33 = v31 - v30;
  v83 = *(v0 + 1288);
  v86 = *(v0 + 1280);
  v89 = *(v0 + 1272);
  v92 = *(v0 + 1264);
  v77 = *(v0 + 888);
  v80 = *(v0 + 896);
  v34 = *(v0 + 880);
  v35 = *(v0 + 872);
  v36 = *(v0 + 864);
  v37 = *(v0 + 840);
  v38 = *(v0 + 824);
  v39 = *(v0 + 800);
  v40 = *(v0 + 672);
  v41 = *(v0 + 664);
  v71 = *(v0 + 640);
  v73 = *(v0 + 648);
  v69 = *(v0 + 632);
  v42 = *(v0 + 624);
  v43 = CFAbsoluteTimeGetCurrent() - v36;
  v35(v40, v38, v39);
  swift_beginAccess();
  v44 = *(v37 + 16);
  v45 = (v40 + v41[5]);
  *v45 = v42;
  v45[1] = v69;
  v45[2] = v71;
  v45[3] = v73;
  v46 = (v40 + v41[6]);
  *v46 = 0;
  v46[1] = 0xE000000000000000;
  v47 = (v40 + v41[7]);
  *v47 = v77;
  v47[1] = v80;
  *(v40 + v41[8]) = v32 != 0;
  *(v40 + v41[9]) = v43;
  *(v40 + v41[10]) = v33;
  *(v40 + v41[11]) = v83;
  *(v40 + v41[12]) = v32;
  *(v40 + v41[13]) = v86;
  *(v40 + v41[14]) = v89;
  *(v40 + v41[15]) = v92;
  *(v40 + v41[16]) = v44;
  sub_2659F3B04(v42, v69);

  sub_2659F4658(v40);
  sub_2659F3C04(v40, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  v48 = *(v0 + 856);
  v70 = *(v0 + 840);
  v72 = *(v0 + 824);
  v49 = *(v0 + 808);
  v68 = *(v0 + 800);
  v74 = *(v0 + 816);
  v75 = *(v0 + 792);
  v78 = *(v0 + 784);
  v81 = *(v0 + 760);
  v84 = *(v0 + 744);
  v87 = *(v0 + 728);
  v90 = *(v0 + 712);
  v93 = *(v0 + 704);
  v50 = *(v0 + 688);
  v67 = *(v0 + 672);
  v51 = *(v0 + 656);
  v52 = *(v0 + 648);
  v53 = *(v0 + 640);
  v54 = *(v0 + 632);
  v55 = *(v0 + 624);
  if (v32)
  {
    v63 = *(v0 + 1272);
    v64 = *(v0 + 1288);
    v65 = *(v0 + 656);
    v56 = *(v0 + 904);
    v66 = *(v0 + 680);
    v57 = sub_2659E1220(v55, v54, v53, v52);
    v59 = v58;
    sub_2659F3B94();
    swift_allocError();
    *v60 = v57;
    *(v60 + 8) = v59;
    *(v60 + 16) = v64;
    *(v60 + 32) = vextq_s8(v63, v63, 8uLL);
    swift_willThrow();

    sub_2659ECB68(v55, v54, v53, v52, v48, v65, v70);
  }

  else
  {

    sub_2659ECB68(v55, v54, v53, v52, v48, v51, v70);
  }

  (*(v49 + 8))(v72, v68);

  v61 = *(v0 + 8);

  return v61();
}

void sub_2659ECB68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v46 = a3;
  v47 = a4;
  v45 = a1;
  v8 = sub_265A1EA30();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265A1E9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v17 = sub_265A1EA20();
  __swift_project_value_buffer(v17, qword_28156B4D0);
  v18 = "Index Single OpenIntent";
  if (a2 == 1)
  {
    v18 = "Index Suggested Items";
  }

  if (!a2)
  {
    v18 = "Index All Items";
  }

  v43 = v18;
  v19 = sub_265A1EA10();
  sub_265A1EA40();
  v20 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    v21 = v44;
    if ((*(v44 + 88))(v11, v8) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v11, v8);
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v19, v20, v24, v43, v22, v23, 2u);
    MEMORY[0x266766110](v23, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v25 = sub_265A1EAA0();
  __swift_project_value_buffer(v25, qword_28156B500);
  v26 = v49;
  swift_retain_n();
  v27 = v45;
  v28 = v46;
  v29 = v47;
  sub_2659F3B04(v45, a2);

  v30 = v27;
  v31 = sub_265A1EA80();
  v32 = sub_265A1EF30();
  sub_2659F3B4C(v30, a2);

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50 = v34;
    *v33 = 136446722;
    v35 = sub_2659E1220(v30, a2, v28, v29);
    v37 = sub_2659D9320(v35, v36, &v50);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    v38 = sub_2659E1EC0();
    v40 = sub_2659D9320(v38, v39, &v50);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2050;
    swift_beginAccess();
    v41 = *(v26 + 16);

    *(v33 + 24) = v41;

    _os_log_impl(&dword_2659CA000, v31, v32, "Finished indexing for %{public}s with %{public}s.\nTotal intents indexed: %{public}ld.", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v34, -1, -1);
    MEMORY[0x266766110](v33, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2659ED028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[22] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = sub_265A1EEB0();
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = sub_265A1EEE0();
  v6[31] = v13;
  v14 = *(v13 - 8);
  v6[32] = v14;
  v15 = *(v14 + 64) + 15;
  v6[33] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B668, &qword_265A21AA8) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v17 = sub_265A1EEF0();
  v6[35] = v17;
  v18 = *(v17 - 8);
  v6[36] = v18;
  v19 = *(v18 + 64) + 15;
  v6[37] = swift_task_alloc();
  v20 = sub_265A1EED0();
  v6[38] = v20;
  v21 = *(v20 - 8);
  v6[39] = v21;
  v22 = *(v21 + 64) + 15;
  v6[40] = swift_task_alloc();
  v23 = sub_265A1E9F0();
  v6[41] = v23;
  v24 = *(v23 - 8);
  v6[42] = v24;
  v25 = *(v24 + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659ED314, v5, 0);
}

uint64_t sub_2659ED314()
{
  if (*(v0 + 176) > 1uLL)
  {
    if (qword_28156A968 != -1)
    {
      swift_once();
    }

    v38 = sub_265A1EAA0();
    __swift_project_value_buffer(v38, qword_28156B500);
    v39 = sub_265A1EA80();
    v40 = sub_265A1EF30();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2659CA000, v39, v40, "Skipping index cleanup.", v41, 2u);
      MEMORY[0x266766110](v41, -1, -1);
    }

    v43 = *(v0 + 352);
    v42 = *(v0 + 360);
    v44 = *(v0 + 344);
    v45 = *(v0 + 320);
    v46 = *(v0 + 296);
    v48 = *(v0 + 264);
    v47 = *(v0 + 272);
    v49 = *(v0 + 240);
    v50 = *(v0 + 216);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    if (qword_28156A968 != -1)
    {
      swift_once();
    }

    v1 = sub_265A1EAA0();
    *(v0 + 368) = __swift_project_value_buffer(v1, qword_28156B500);
    v2 = sub_265A1EA80();
    v3 = sub_265A1EF30();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2659CA000, v2, v3, "Cleaning up the index.", v4, 2u);
      MEMORY[0x266766110](v4, -1, -1);
    }

    if (qword_28156A950 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 360);
    v6 = sub_265A1EA20();
    *(v0 + 376) = __swift_project_value_buffer(v6, qword_28156B4D0);
    sub_265A1E9E0();
    v7 = sub_265A1EA10();
    v8 = sub_265A1EF50();
    if (sub_265A1EFA0())
    {
      v9 = *(v0 + 360);
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = sub_265A1E9D0();
      _os_signpost_emit_with_name_impl(&dword_2659CA000, v7, v8, v11, "Cleanup Domains", "", v10, 2u);
      MEMORY[0x266766110](v10, -1, -1);
    }

    v12 = *(v0 + 352);
    v13 = *(v0 + 360);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);

    v16 = *(v15 + 16);
    *(v0 + 384) = v16;
    *(v0 + 392) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v12, v13, v14);
    v17 = sub_265A1EA60();
    *(v0 + 400) = v17;
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    *(v0 + 408) = sub_265A1EA50();
    v20 = *(v15 + 8);
    *(v0 + 416) = v20;
    *(v0 + 424) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v13, v14);
    v21 = sub_265A1EA80();
    v22 = sub_265A1EF30();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2659CA000, v21, v22, "Querying for all domains in the index.", v23, 2u);
      MEMORY[0x266766110](v23, -1, -1);
    }

    v24 = *(v0 + 320);
    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v27 = *(v0 + 280);
    v28 = *(v0 + 192);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_265A21A40;
    v30 = *(v28 + 120);
    *(v29 + 32) = *(v28 + 112);
    *(v29 + 40) = v30;

    *(v0 + 432) = sub_265A129D4();

    *(v0 + 160) = MEMORY[0x277D84FA0];
    sub_265A1EF00();
    sub_265A1EEC0();
    (*(v26 + 8))(v25, v27);
    *(v0 + 440) = sub_2659F33AC(qword_28156ACA0, v31, type metadata accessor for SettingsSearchIndexer);
    *(v0 + 496) = *MEMORY[0x277CC21D8];
    v32 = sub_2659F33AC(&qword_28156A900, 255, MEMORY[0x277CC21C8]);
    v33 = *(MEMORY[0x277D856D0] + 4);
    v34 = swift_task_alloc();
    *(v0 + 448) = v34;
    *v34 = v0;
    v34[1] = sub_2659ED8D8;
    v35 = *(v0 + 320);
    v36 = *(v0 + 304);
    v37 = *(v0 + 272);

    return MEMORY[0x282200308](v37, v36, v32);
  }
}

uint64_t sub_2659ED8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v14 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = v2[20];

    if (v4)
    {
      v6 = v2[55];
      v7 = v2[24];
      swift_getObjectType();
      v8 = sub_265A1ED70();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = sub_2659EE23C;
    v11 = v8;
  }

  else
  {
    v11 = v2[24];
    v12 = sub_2659EDA38;
    v10 = 0;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_2659EDA38()
{
  v83 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 368);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v5 = *(v0 + 160);

    v6 = sub_265A1EA80();
    v7 = sub_265A1EF30();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = *(v5 + 16);

      _os_log_impl(&dword_2659CA000, v6, v7, "Found %{public}ld domains in the index.", v8, 0xCu);
      MEMORY[0x266766110](v8, -1, -1);
    }

    else
    {
    }

    v27 = *(v0 + 184);
    if (*(v27 + 16) <= *(v5 + 16) >> 3)
    {
      v82 = v5;
      sub_2659F2438(v27);
    }

    else
    {
      v5 = sub_2659F2564(v27, v5);
    }

    v34 = *(v0 + 368);
    if (*(v5 + 16))
    {

      v35 = sub_265A1EA80();
      v36 = sub_265A1EF30();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134349056;
        *(v37 + 4) = *(v5 + 16);

        _os_log_impl(&dword_2659CA000, v35, v36, "Need to remove %{public}ld domains.", v37, 0xCu);
        MEMORY[0x266766110](v37, -1, -1);
      }

      else
      {
      }

      v53 = *(v0 + 376);
      v54 = *(v0 + 344);
      sub_265A1E9E0();
      v55 = sub_265A1EA10();
      v56 = sub_265A1EF50();
      if (sub_265A1EFA0())
      {
        v57 = *(v0 + 344);
        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = sub_265A1E9D0();
        _os_signpost_emit_with_name_impl(&dword_2659CA000, v55, v56, v59, "Delete Domain (Cleanup)", "", v58, 2u);
        MEMORY[0x266766110](v58, -1, -1);
      }

      v79 = *(v0 + 416);
      v80 = *(v0 + 424);
      v61 = *(v0 + 392);
      v60 = *(v0 + 400);
      v62 = *(v0 + 384);
      v64 = *(v0 + 344);
      v63 = *(v0 + 352);
      v65 = *(v0 + 328);
      v66 = *(v0 + 192);

      v62(v63, v64, v65);
      v67 = *(v60 + 48);
      v68 = *(v60 + 52);
      swift_allocObject();
      *(v0 + 464) = sub_265A1EA50();
      v79(v64, v65);
      v69 = sub_2659E1380();
      *(v0 + 472) = v69;
      v70 = *(v5 + 16);
      v81 = v69;
      if (v70)
      {
        v71 = sub_2659F1A2C(v70, 0);
        v72 = sub_2659F3230(&v82, v71 + 4, v70, v5);
        sub_2659F3AB4();
        if (v72 == v70)
        {
LABEL_31:
          v74 = *(v0 + 208);
          v73 = *(v0 + 216);
          v75 = *(v0 + 200);
          v76 = sub_265A1ECB0();
          *(v0 + 480) = v76;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_2659EE400;
          swift_continuation_init();
          *(v0 + 136) = v75;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          sub_265A1ED80();
          (*(v74 + 32))(boxed_opaque_existential_1, v73, v75);
          *(v0 + 80) = MEMORY[0x277D85DD0];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_2659EE778;
          *(v0 + 104) = &block_descriptor_28;
          [v81 deleteSearchableItemsWithDomainIdentifiers:v76 completionHandler:v0 + 80];
          (*(v74 + 8))(boxed_opaque_existential_1, v75);

          return MEMORY[0x282200938](v0 + 16);
        }

        __break(1u);
      }

      goto LABEL_31;
    }

    v38 = sub_265A1EA80();
    v39 = sub_265A1EF30();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 432);
    if (v40)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2659CA000, v38, v39, "No domains to remove.", v42, 2u);
      MEMORY[0x266766110](v42, -1, -1);
    }

    sub_2659F0628(*(v0 + 408), "Cleanup domains");

    v44 = *(v0 + 352);
    v43 = *(v0 + 360);
    v45 = *(v0 + 344);
    v46 = *(v0 + 320);
    v47 = *(v0 + 296);
    v49 = *(v0 + 264);
    v48 = *(v0 + 272);
    v50 = *(v0 + 240);
    v51 = *(v0 + 216);

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    v9 = *(v0 + 496);
    v10 = *(v0 + 264);
    (*(v3 + 32))(v10, v1, v2);
    v11 = (*(v3 + 88))(v10, v2);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 248);
    if (v11 == v9)
    {
      v16 = *(v0 + 232);
      v15 = *(v0 + 240);
      v17 = *(v0 + 224);
      (*(v12 + 96))(*(v0 + 264), v14);
      (*(v16 + 32))(v15, v13, v17);
      v18 = sub_265A1EEA0();
      v19 = [v18 domainIdentifier];

      v20 = *(v0 + 240);
      v21 = *(v0 + 224);
      v22 = (*(v0 + 232) + 8);
      if (v19)
      {
        v23 = sub_265A1EBA0();
        v25 = v24;

        sub_2659F1B74((v0 + 144), v23, v25);
        v26 = *(v0 + 152);
      }

      (*v22)(v20, v21);
    }

    else
    {
      (*(v12 + 8))(*(v0 + 264), v14);
    }

    v28 = sub_2659F33AC(&qword_28156A900, 255, MEMORY[0x277CC21C8]);
    v29 = *(MEMORY[0x277D856D0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 448) = v30;
    *v30 = v0;
    v30[1] = sub_2659ED8D8;
    v31 = *(v0 + 320);
    v32 = *(v0 + 304);
    v33 = *(v0 + 272);

    return MEMORY[0x282200308](v33, v32, v28);
  }
}

uint64_t sub_2659EE23C()
{
  v1 = v0[24];
  v0[21] = v0[57];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2659EE2D4, v1, 0);
}

uint64_t sub_2659EE2D4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 320);
  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 240);
  v14 = *(v0 + 216);
  v15 = *(v0 + 456);
  sub_2659F0628(*(v0 + 408), "Cleanup domains");

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2659EE400()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 488) = v3;
  v4 = *(v1 + 192);
  if (v3)
  {
    v5 = sub_2659EE640;
  }

  else
  {
    v5 = sub_2659EE520;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2659EE520()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);

  sub_2659F0628(v2, "Delete Domain (Cleanup)");

  sub_2659F0628(*(v0 + 408), "Cleanup domains");

  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 320);
  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 240);
  v12 = *(v0 + 216);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2659EE640()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[54];
  swift_willThrow();

  sub_2659F0628(v3, "Delete Domain (Cleanup)");

  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[37];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[30];
  v16 = v0[27];
  v17 = v0[61];
  sub_2659F0628(v0[51], "Cleanup domains");

  v14 = v0[1];

  return v14();
}

void sub_2659EE778(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
    sub_265A1ED90();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
    sub_265A1EDA0();
  }
}

uint64_t sub_2659EE808()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659EE8D4, v0, 0);
}

uint64_t sub_2659EE8D4()
{
  v16 = v0;
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_265A1EAA0();
  v0[22] = __swift_project_value_buffer(v2, qword_28156B500);

  v3 = sub_265A1EA80();
  v4 = sub_265A1EF30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2659D9320(*(v5 + 112), *(v5 + 120), &v15);
    _os_log_impl(&dword_2659CA000, v3, v4, "Deleting all indexed items for attributionBundleIdentifiers: in searchableIndexBundleIdentifier: '%{public}s'…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266766110](v7, -1, -1);
    MEMORY[0x266766110](v6, -1, -1);
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v12 = sub_2659E1380();
  v0[23] = v12;
  v0[2] = v0;
  v0[3] = sub_2659EEB9C;
  swift_continuation_init();
  v0[17] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_265A1ED80();
  (*(v9 + 32))(boxed_opaque_existential_1, v8, v11);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2659EE778;
  v0[13] = &block_descriptor;
  [v12 deleteAllSearchableItemsWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v11);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2659EEB9C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_2659EEE00;
  }

  else
  {
    v5 = sub_2659EECBC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2659EECBC()
{
  v12 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = sub_265A1EA80();
  v4 = sub_265A1EF30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2659D9320(*(v5 + 112), *(v5 + 120), &v11);
    _os_log_impl(&dword_2659CA000, v3, v4, "…completed deletion of all indexed items in searchableIndexBundleIdentifier: '%{public}s'.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266766110](v7, -1, -1);
    MEMORY[0x266766110](v6, -1, -1);
  }

  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2659EEE00()
{
  v15 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  swift_willThrow();

  v5 = sub_265A1EA80();
  v6 = sub_265A1EF30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2659D9320(*(v7 + 112), *(v7 + 120), &v14);
    _os_log_impl(&dword_2659CA000, v5, v6, "…completed deletion of all indexed items in searchableIndexBundleIdentifier: '%{public}s'.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x266766110](v9, -1, -1);
    MEMORY[0x266766110](v8, -1, -1);
  }

  v10 = v0[21];

  v11 = v0[1];
  v12 = v0[24];

  return v11();
}

void sub_2659EEF4C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v8 = sub_265A1EAA0();
  __swift_project_value_buffer(v8, qword_28156B500);

  v9 = a3;
  oslog = sub_265A1EA80();
  v10 = sub_265A1EF30();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2659D9320(a1, a2, &v17);
    *(v11 + 12) = 2080;
    v13 = sub_2659F8224(a3, a4 & 1);
    v15 = sub_2659D9320(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_2659CA000, oslog, v10, "…complete fetch for OpenIntent '%s' with %s'…", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v12, -1, -1);
    MEMORY[0x266766110](v11, -1, -1);
  }
}

uint64_t sub_2659EF10C(uint64_t a1)
{
  *(v2 + 144) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  *(v2 + 152) = v4;
  v5 = *(v4 - 8);
  *(v2 + 160) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v7 = sub_265A1E9F0();
  *(v2 + 176) = v7;
  v8 = *(v7 - 8);
  *(v2 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *a1;
  *(v2 + 224) = *(a1 + 16);
  *(v2 + 232) = *(a1 + 24);
  *(v2 + 248) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2659EF26C, v1, 0);
}

uint64_t sub_2659EF26C()
{
  v51 = v0;
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[25];
  v6 = sub_265A1EA20();
  __swift_project_value_buffer(v6, qword_28156B4D0);

  sub_265A1E9E0();
  v7 = sub_265A1EA10();
  v8 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v10 = v0[28];
    v9 = v0[29];
    v12 = v0[26];
    v11 = v0[27];
    v47 = v0[25];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48 = v14;
    v49 = v12;
    *v13 = 136446210;
    v50 = v11;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v10, v9);
    v15 = sub_2659D9320(v49, v11, &v48);

    *(v13 + 4) = v15;
    v16 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v7, v8, v16, "Index Search Domain", "Domain Identifier '%{public}s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x266766110](v14, -1, -1);
    MEMORY[0x266766110](v13, -1, -1);
  }

  v17 = v0[30];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[18];
  (*(v20 + 16))(v0[24], v18, v19);
  v22 = sub_265A1EA60();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v0[32] = sub_265A1EA50();
  (*(v20 + 8))(v18, v19);
  v0[33] = sub_2659E10A0(*(v21 + 136), *(v21 + 144), v17);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v26 = v0[30];
  v25 = v0[31];
  v27 = v0[29];
  v28 = v0[27];
  v29 = sub_265A1EAA0();
  v0[34] = __swift_project_value_buffer(v29, qword_28156B500);

  v30 = sub_265A1EA80();
  v31 = sub_265A1EF30();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = v0[28];
    v32 = v0[29];
    v35 = v0[26];
    v34 = v0[27];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    v49 = v35;
    *v36 = 136446210;
    v50 = v34;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v33, v32);
    v38 = sub_2659D9320(v49, v50, &v48);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_2659CA000, v30, v31, "Performing index operation for domain '%{public}s'…", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x266766110](v37, -1, -1);
    MEMORY[0x266766110](v36, -1, -1);
  }

  v40 = v0[20];
  v39 = v0[21];
  v41 = v0[18];
  v42 = v0[19];
  v43 = sub_2659E1380();
  v0[35] = v43;
  sub_2659F3D98(0, &qword_28156A8D8, 0x277CC34B0);
  v44 = sub_265A1ECB0();
  v0[36] = v44;
  v0[2] = v0;
  v0[3] = sub_2659EF818;
  swift_continuation_init();
  v0[17] = v42;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_265A1ED80();
  (*(v40 + 32))(boxed_opaque_existential_1, v39, v42);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2659EE778;
  v0[13] = &block_descriptor_23;
  [v43 indexSearchableItems:v44 completionHandler:?];
  (*(v40 + 8))(boxed_opaque_existential_1, v42);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2659EF818()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  if (v3)
  {
    v4 = *(v1 + 264);
    v5 = *(v1 + 144);

    v6 = sub_2659EFBEC;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 144);
    v6 = sub_2659EF940;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_2659EF940()
{
  v34 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);

  swift_bridgeObjectRetain_n();

  v8 = sub_265A1EA80();
  v9 = sub_265A1EF30();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 264);
  if (v10)
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    v32 = v15;
    *v16 = 136446466;
    v33 = v14;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v13, v12);
    v18 = sub_2659D9320(v32, v14, &v31);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    if (v11 >> 62)
    {
      if (*(v0 + 264) < 0)
      {
        v30 = *(v0 + 264);
      }

      v19 = sub_265A1F1E0();
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = *(v0 + 264);

    *(v16 + 14) = v19;

    _os_log_impl(&dword_2659CA000, v8, v9, "…completed index operation for domain '%{public}s' of %{public}ld item(s).", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x266766110](v17, -1, -1);
    MEMORY[0x266766110](v16, -1, -1);
  }

  else
  {
    v21 = *(v0 + 264);
    swift_bridgeObjectRelease_n();
  }

  if (*(v0 + 264) >> 62)
  {
    v22 = sub_265A1F1E0();
    v29 = *(v0 + 264);
  }

  else
  {
    v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = *(v0 + 256);
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v26 = *(v0 + 168);

  sub_2659F0628(v23, "Index Search Domain");

  v27 = *(v0 + 8);

  return v27(v22);
}

uint64_t sub_2659EFBEC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  swift_willThrow();

  sub_2659F0628(v4, "Index Search Domain");

  v8 = v0[1];
  v9 = v0[37];

  return v8();
}

uint64_t sub_2659EFCB0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = sub_265A1E9F0();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659EFDE8, v2, 0);
}

uint64_t sub_2659EFDE8()
{
  v38 = v0;
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[19];
  v3 = sub_265A1EA20();
  __swift_project_value_buffer(v3, qword_28156B4D0);

  sub_265A1E9E0();
  v4 = sub_265A1EA10();
  v5 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v6 = v0[27];
    v8 = v0[18];
    v7 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2659D9320(v8, v7, &v37);
    v11 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v4, v5, v11, "Delete Search Domain", "Domain Identifier '%{public}s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266766110](v10, -1, -1);
    MEMORY[0x266766110](v9, -1, -1);
  }

  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[25];
  (*(v14 + 16))(v0[26], v12, v13);
  v15 = sub_265A1EA60();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[28] = sub_265A1EA50();
  (*(v14 + 8))(v12, v13);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v18 = v0[19];
  v19 = sub_265A1EAA0();
  v0[29] = __swift_project_value_buffer(v19, qword_28156B500);

  v20 = sub_265A1EA80();
  v21 = sub_265A1EF30();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[18];
    v22 = v0[19];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_2659D9320(v23, v22, &v37);
    _os_log_impl(&dword_2659CA000, v20, v21, "Performing delete operation for domain '%{public}s'…", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x266766110](v25, -1, -1);
    MEMORY[0x266766110](v24, -1, -1);
  }

  v27 = v0[22];
  v26 = v0[23];
  v28 = v0[20];
  v29 = v0[21];
  v31 = v0[18];
  v30 = v0[19];
  v32 = sub_2659E1380();
  v0[30] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_265A21A40;
  *(v33 + 32) = v31;
  *(v33 + 40) = v30;

  v34 = sub_265A1ECB0();
  v0[31] = v34;

  v0[2] = v0;
  v0[3] = sub_2659F02B8;
  swift_continuation_init();
  v0[17] = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_265A1ED80();
  (*(v27 + 32))(boxed_opaque_existential_1, v26, v29);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2659EE778;
  v0[13] = &block_descriptor_19;
  [v32 deleteSearchableItemsWithDomainIdentifiers:v34 completionHandler:?];
  (*(v27 + 8))(boxed_opaque_existential_1, v29);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2659F02B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_2659F0564;
  }

  else
  {
    v5 = sub_2659F03D8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2659F03D8()
{
  v16 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 152);

  v4 = sub_265A1EA80();
  v5 = sub_265A1EF30();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2659D9320(v7, v6, &v15);
    _os_log_impl(&dword_2659CA000, v4, v5, "…completed delete operation for domain '%{public}s'.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x266766110](v9, -1, -1);
    MEMORY[0x266766110](v8, -1, -1);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  sub_2659F0628(*(v0 + 224), "Delete Search Domain");

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2659F0564()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[23];
  swift_willThrow();

  sub_2659F0628(v5, "Delete Search Domain");

  v8 = v0[1];
  v9 = v0[32];

  return v8();
}

uint64_t sub_2659F0628(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_265A1EA30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265A1E9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v12 = sub_265A1EA20();
  __swift_project_value_buffer(v12, qword_28156B4D0);
  v13 = sub_265A1EA10();
  sub_265A1EA40();
  v14 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x266766110](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t SettingsSearchIndexer.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SettingsSearchIndexer.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2659F0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0A04, 0, 0);
}

uint64_t sub_2659F0A04()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v5, v0 + 16, _s9AnalyticsO27IndexingStartedEventPayloadVMa, _s9AnalyticsO27IndexingStartedEventPayloadVMa, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
  objc_autoreleasePoolPop(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2659F0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0B90, 0, 0);
}

uint64_t sub_2659F0B90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v5, v0 + 16, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  objc_autoreleasePoolPop(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2659F0C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0D1C, 0, 0);
}

uint64_t sub_2659F0D1C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v5, v0 + 16, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  objc_autoreleasePoolPop(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2659F0E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0EA8, 0, 0);
}

uint64_t sub_2659F0EA8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v5, v0 + 16, _s9AnalyticsO25IndexingIssueEventPayloadVMa, _s9AnalyticsO25IndexingIssueEventPayloadVMa, _s9AnalyticsO25IndexingIssueEventPayloadVMa);
  objc_autoreleasePoolPop(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2659F0FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F1034, 0, 0);
}

uint64_t sub_2659F1034()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v5, v0 + 16, _s9AnalyticsO29IndexingCompletedEventPayloadVMa, _s9AnalyticsO29IndexingCompletedEventPayloadVMa, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  objc_autoreleasePoolPop(v6);
  v7 = *(v0 + 8);

  return v7();
}

void sub_2659F113C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v36 = a4;
  v12 = a6(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  swift_beginAccess();
  sub_2659F3DE0(a3, v15, a7);
  a1(&v37, v15);
  sub_2659F3C04(v15, a8);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v16 = sub_265A1EAA0();
  __swift_project_value_buffer(v16, qword_28156B500);

  v17 = sub_265A1EA80();
  v18 = sub_265A1EF30();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136446466;
    v21 = "ndexingCompleted";
    v22 = "omainIndexingCompleted";
    v23 = 0xD000000000000034;
    v24 = ", appValueIdentifier: ";
    v25 = 0xD000000000000036;
    if (v36 != 3)
    {
      v25 = 0xD00000000000002DLL;
      v24 = "Index Single OpenIntent";
    }

    if (v36 != 2)
    {
      v23 = v25;
      v22 = v24;
    }

    v26 = 0xD000000000000030;
    if (v36)
    {
      v21 = "omainIndexingStarted";
    }

    else
    {
      v26 = 0xD00000000000002ELL;
    }

    if (v36 <= 1u)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    if (v36 <= 1u)
    {
      v28 = v21;
    }

    else
    {
      v28 = v22;
    }

    v29 = sub_2659D9320(v27, v28 | 0x8000000000000000, &v37);

    *(v19 + 4) = v29;
    *(v19 + 12) = 2082;
    sub_2659F3D98(0, &qword_28156A800, 0x277D82BB8);
    v30 = sub_265A1EAE0();
    v32 = sub_2659D9320(v30, v31, &v37);

    *(v19 + 14) = v32;
    _os_log_impl(&dword_2659CA000, v17, v18, "Posting event: '%{public}s', payload: %{public}s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v20, -1, -1);
    MEMORY[0x266766110](v19, -1, -1);
  }

  else
  {
  }

  v33 = sub_265A1EB70();

  sub_2659F3D98(0, &qword_28156A800, 0x277D82BB8);
  v34 = sub_265A1EAC0();

  AnalyticsSendEvent();
}

uint64_t sub_2659F152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2659D302C(a3, v27 - v11);
  v13 = sub_265A1EE00();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2659DA270(v12, qword_28002B360, &qword_265A21C00);
  }

  else
  {
    sub_265A1EDF0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265A1ED70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_265A1EBD0() + 32;
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

uint64_t sub_2659F17DC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2659F18D4;

  return v7(a1);
}

uint64_t sub_2659F18D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2659F19CC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_2659F1A2C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2659F1AB0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2659F1AD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_2659F1B00(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2659F1B74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_265A1F3D0();
  sub_265A1EBF0();
  v9 = sub_265A1F400();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_265A1F340() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2659F1F24(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2659F1CC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  result = sub_265A1F070();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_265A1F3D0();
      sub_265A1EBF0();
      result = sub_265A1F400();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2659F1F24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2659F1CC4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2659F20A4();
      goto LABEL_16;
    }

    sub_2659F2200(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_265A1F3D0();
  sub_265A1EBF0();
  result = sub_265A1F400();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_265A1F340();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_265A1F360();
  __break(1u);
  return result;
}

void *sub_2659F20A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  v2 = *v0;
  v3 = sub_265A1F060();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2659F2200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  result = sub_265A1F070();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_265A1F3D0();

      sub_265A1EBF0();
      result = sub_265A1F400();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2659F2438(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2659F2AD4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2659F2564(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_265A1F3D0();

    sub_265A1EBF0();
    v24 = sub_265A1F400();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_265A1F340() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_2659F2E48(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_265A1F3D0();

            sub_265A1EBF0();
            v43 = sub_265A1F400();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_265A1F340() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_2659F2C10(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x266766110](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_2659F3AB4();
    goto LABEL_53;
  }

  result = MEMORY[0x266766110](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2659F2AD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_265A1F3D0();
  sub_265A1EBF0();
  v7 = sub_265A1F400();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_265A1F340() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2659F20A4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2659F306C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_2659F2C10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_2659F2E48(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_265A1F3D0();

        sub_265A1EBF0();
        v20 = sub_265A1F400();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_265A1F340() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2659F2E48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  result = sub_265A1F080();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_265A1F3D0();

    sub_265A1EBF0();
    result = sub_265A1F400();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2659F306C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_265A1F030();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_265A1F3D0();

        sub_265A1EBF0();
        v15 = sub_265A1F400();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_2659F3230(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2659F33AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2659F3534;

  return v6();
}

uint64_t sub_2659F3534(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2659D31EC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2659D31EC;

  return v6();
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexAllEligibleItems()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2659D31EC;

  return v6();
}

uint64_t dispatch thunk of SettingsSearchIndexer.deleteAllIndexItems()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2659D280C;

  return v6();
}

uint64_t sub_2659F3ABC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2659F3B04(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_2659F3B4C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_2659F3B94()
{
  result = qword_28156AFF8;
  if (!qword_28156AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156AFF8);
  }

  return result;
}

id sub_2659F3BE8(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2659F3C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2659F3CC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D280C;

  return sub_2659F0E24(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F3D98(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2659F3DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A13SearchIndexerC12IndexingTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2659F3E60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2659F3EB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2659F3F14(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *sub_2659F3F64@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2659F3F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v6 = swift_allocBox();
  sub_2659F4518(a1, v7, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
  sub_265A1EDE0();
  v8 = sub_265A1EE00();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = sub_2659F5DB8;
  *(v9 + 40) = 0;
  *(v9 + 48) = v6;
  *(v9 + 56) = 0;

  sub_2659F152C(0xD00000000000002ELL, 0x8000000265A23D00, v5, &unk_265A21CF8, v9);

  sub_2659D309C(v5);
}

uint64_t sub_2659F4108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v6 = swift_allocBox();
  sub_2659F4518(a1, v7, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  sub_265A1EDE0();
  v8 = sub_265A1EE00();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = sub_2659F64B4;
  *(v9 + 40) = 0;
  *(v9 + 48) = v6;
  *(v9 + 56) = 2;

  sub_2659F152C(0xD000000000000034, 0x8000000265A23C80, v5, &unk_265A21CE0, v9);

  sub_2659D309C(v5);
}

uint64_t sub_2659F4284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  v6 = swift_allocBox();
  sub_2659F4518(a1, v7, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  sub_265A1EDE0();
  v8 = sub_265A1EE00();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = sub_2659F6644;
  *(v9 + 40) = 0;
  *(v9 + 48) = v6;
  *(v9 + 56) = 3;

  sub_2659F152C(0xD000000000000036, 0x8000000265A23C40, v5, &unk_265A21CD8, v9);

  sub_2659D309C(v5);
}

uint64_t sub_2659F4420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0C98(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F4518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2659F4580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0B0C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F4658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  v6 = swift_allocBox();
  sub_2659F4518(a1, v7, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  sub_265A1EDE0();
  v8 = sub_265A1EE00();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = sub_2659F5FA8;
  *(v9 + 40) = 0;
  *(v9 + 48) = v6;
  *(v9 + 56) = 1;

  sub_2659F152C(0xD000000000000030, 0x8000000265A23CC0, v5, &unk_265A21CE8, v9);

  sub_2659D309C(v5);
}

uint64_t sub_2659F47FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0FB0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F48D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  v6 = swift_allocBox();
  sub_2659F4518(a1, v7, _s9AnalyticsO25IndexingIssueEventPayloadVMa);
  sub_265A1EDE0();
  v8 = sub_265A1EE00();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = sub_2659F6B58;
  *(v9 + 40) = 0;
  *(v9 + 48) = v6;
  *(v9 + 56) = 4;

  sub_2659F152C(0xD00000000000002DLL, 0x8000000265A23BA0, v5, &unk_265A21C10, v9);

  sub_2659D309C(v5);
}

uint64_t sub_2659F4A90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2659F4B10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0980(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F4C10()
{
  result = sub_265A1E7B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2659F4CB8()
{
  result = sub_265A1E7B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2659F4D78()
{
  result = sub_265A1E7B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2659F4E30(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2659F4EC0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265A1E7B0();
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

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_265A1E7B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2659F5124()
{
  result = sub_265A1E7B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265A1E7B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_265A1E7B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}