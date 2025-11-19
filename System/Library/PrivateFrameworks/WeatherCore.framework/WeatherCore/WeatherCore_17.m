unint64_t sub_1C95ED6BC()
{
  result = qword_1EDB7C990;
  if (!qword_1EDB7C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C990);
  }

  return result;
}

unint64_t sub_1C95ED73C()
{
  result = qword_1EDB7C988;
  if (!qword_1EDB7C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C988);
  }

  return result;
}

uint64_t sub_1C95ED790(uint64_t a1)
{
  v2 = sub_1C95EDC4C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95ED7DC(uint64_t a1)
{
  v2 = sub_1C95EDC4C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95ED828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95EDC4C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95ED8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95EDC4C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95ED90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95EDC4C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95ED960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95EDC4C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C95ED9C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C95EDA04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAlertEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C95EDB48()
{
  result = qword_1EC3A6CE0;
  if (!qword_1EC3A6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CE0);
  }

  return result;
}

unint64_t sub_1C95EDBA0()
{
  result = qword_1EC3A6CE8;
  if (!qword_1EC3A6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CE8);
  }

  return result;
}

unint64_t sub_1C95EDBF8()
{
  result = qword_1EC3A6CF0;
  if (!qword_1EC3A6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CF0);
  }

  return result;
}

unint64_t sub_1C95EDC4C()
{
  result = qword_1EC3A6CF8;
  if (!qword_1EC3A6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return sub_1C96A6344();
}

uint64_t dispatch thunk of PredictedLocationsIntentDonationManagerType.donateIntentsForPredictedLocations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsIntentDonationManagerType.reschedulePredictedLocationsRefreshForIntentDonations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsIntentDonationManagerType.cancelScheduledPredictedLocationsRefreshForIntentDonations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsIntentDonationManagerType.decommission()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t NanoSyncManagerUpdates.makeAsyncIterator()()
{
  sub_1C96A7484();

  return sub_1C96A7464();
}

void NanoSyncManagerType.setData(_:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v31 = &v30 - v10;
  OUTLINED_FUNCTION_12_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v18);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v13 + 16))(v17, v1, v5);
  v24 = v11;
  v25 = AssociatedTypeWitness;
  (*(v8 + 16))(v24, v32, AssociatedTypeWitness);
  v26 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v27 = (v15 + v26 + *(v8 + 80)) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v33;
  *(v28 + 4) = v5;
  *(v28 + 5) = v29;
  (*(v13 + 32))(&v28[v26], v17, v5);
  (*(v8 + 32))(&v28[v27], v31, v25);
  OUTLINED_FUNCTION_104();
  sub_1C951C258();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95EE330()
{
  sub_1C96A7484();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_117();

  return v1(v0);
}

uint64_t sub_1C95EE390(uint64_t a1)
{
  NanoSyncManagerUpdates.makeAsyncIterator()();
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_1C95EE3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (*(a7 + 16) + **(a7 + 16));
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1C94B0CEC;

  return v13(a5, a6, a7);
}

uint64_t sub_1C95EE520(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 64);
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v13 = (v10 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1C94B0CEC;

  return sub_1C95EE3F0(a1, v14, v15, v1 + v10, v1 + v13, v6, v5);
}

uint64_t sub_1C95EE684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 24))(a1, a2, a3, v7, v8);
}

uint64_t sub_1C95EE778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  result = MEMORY[0x1EEE9AC00](v2);
  if ((*(v0 + 136) & 1) == 0)
  {
    sub_1C96A7414();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    OUTLINED_FUNCTION_104();
    sub_1C951C258();
    OUTLINED_FUNCTION_33_8();
    *(v0 + *(v10 + 176)) = v11;

    *(v0 + 136) = 1;
  }

  return result;
}

Swift::Void __swiftcall NanoSyncManager.enable()()
{
  OUTLINED_FUNCTION_33_8();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  if ((*(v0 + 136) & 1) == 0)
  {
    sub_1C96A7414();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = *(v2 + 80);
    *(v10 + 40) = *(v2 + 88);
    *(v10 + 56) = *(v2 + 104);
    *(v10 + 64) = v9;
    OUTLINED_FUNCTION_104();
    sub_1C951C258();
    OUTLINED_FUNCTION_33_8();
    *(v0 + *(v11 + 176)) = v12;

    *(v0 + 136) = 1;
  }
}

uint64_t sub_1C95EE9E0(uint64_t a1, uint64_t a2)
{
  sub_1C9470AFC(a2, &qword_1EC3A6D08);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D10);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t NanoSyncManager.deinit()
{
  if (*(v0 + *(*v0 + 176)))
  {
    sub_1C96A3D04();
    sub_1C96A74A4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  OUTLINED_FUNCTION_33_8();
  v2 = *(v1 + 160);
  sub_1C96A7484();
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_33_8();
  v5 = *(v4 + 168);
  sub_1C96A7454();
  sub_1C96A7934();
  OUTLINED_FUNCTION_6();
  (*(v6 + 8))(v0 + v5);

  return v0;
}

uint64_t NanoSyncManager.__deallocating_deinit()
{
  NanoSyncManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C95EEC48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6DA8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95EECF4, 0, 0);
}

uint64_t sub_1C95EECF4()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return OUTLINED_FUNCTION_28_1(sub_1C95EED14, v1);
}

uint64_t sub_1C95EED14()
{
  OUTLINED_FUNCTION_18();
  sub_1C95F375C(*(v0 + 48));
  v1 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C95EED70()
{
  sub_1C9470A40(v0[6], v0[5], &qword_1EC3A6DA8);
  OUTLINED_FUNCTION_117();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[5];
  v2 = v0[6];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[2];
    v5 = OUTLINED_FUNCTION_48_0();
    sub_1C95739FC(v5, v6);
    sub_1C95EF1A0();
    sub_1C9470AFC(v2, &qword_1EC3A6DA8);
    v7 = type metadata accessor for SyncedData();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  }

  else
  {
    v8 = v0[2];
    sub_1C9470AFC(v0[6], &qword_1EC3A6DA8);
    sub_1C95F5BA4(v3, v8);
  }

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C95EEE80(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  *(v2 + 64) = v5;
  v6 = *(v3 + 104);
  v7 = *(v4 + 88);
  *(v2 + 16) = v5;
  *(v2 + 24) = v7;
  *(v2 + 40) = v6;
  v8 = type metadata accessor for NanoSyncManager.Store.MergeResult();
  *(v2 + 72) = v8;
  *(v2 + 80) = *(v8 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95EEFB8, 0, 0);
}

uint64_t sub_1C95EEFB8()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 104) = v1;
  return OUTLINED_FUNCTION_28_1(sub_1C95EEFD8, v1);
}

uint64_t sub_1C95EEFD8()
{
  OUTLINED_FUNCTION_18();
  sub_1C95F43A4(*(v0 + 96));
  v1 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C95EF034()
{
  (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
  OUTLINED_FUNCTION_117();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[11];
  v3 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[6];
    OUTLINED_FUNCTION_8_1();
    (*(v5 + 32))(v4, v2, v3);
    sub_1C95EF1A0();
    v6 = OUTLINED_FUNCTION_48_0();
    v7(v6);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  }

  else
  {
    v8 = v0[6];
    v9 = OUTLINED_FUNCTION_48_0();
    v10(v9);
    sub_1C96A7934();
    OUTLINED_FUNCTION_6();
    (*(v11 + 32))(v8, v2);
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_1C95EF1A0()
{
  v1 = v0;
  if (qword_1EC3A47E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v2 = sub_1C96A6154();
  v3 = __swift_project_value_buffer(v2, qword_1EC3A74D8);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v5))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_39_0(&dword_1C945E000, v6, v5, "Synchronizing preferences");
    OUTLINED_FUNCTION_40();
  }

  v7 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  v9 = v1[14];
  v10 = *(v9 + 136);
  *(inited + 32) = *(v9 + 128);
  *(inited + 40) = v10;
  sub_1C96A53C4();
  sub_1C94A3510();
  (*(v7 + 8))();

  v11 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_30_9();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_29();
    *v13 = 0;
    _os_log_impl(&dword_1C945E000, v11, v3, "Posting sync notification", v13, 2u);
    OUTLINED_FUNCTION_26();
  }

  v14 = v1[7];
  v15 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v14);
  v16 = v1[3];
  v19[0] = v1[2];
  v19[1] = v16;
  v17 = *(v15 + 8);
  sub_1C96A53C4();
  v17(v19, v14, v15);
}

uint64_t NanoSyncManager<>.init(keyValueStore:darwinNotificationCenter:nanoPrefencesSynchronizer:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C949D8BC(a1, v11);
  sub_1C949D8BC(a2, v10);
  sub_1C949D8BC(a3, v9);
  NanoSyncManager<>.init(keyValueStore:darwinNotificationCenter:nanoPrefencesSynchronizer:shouldAutoEnable:context:)();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void NanoSyncManager<>.init(keyValueStore:darwinNotificationCenter:nanoPrefencesSynchronizer:shouldAutoEnable:context:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v39 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D00);
  OUTLINED_FUNCTION_12_0();
  v10 = v9;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60C8);
  OUTLINED_FUNCTION_12_0();
  v36 = v14;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D08);
  OUTLINED_FUNCTION_7(v18);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v35 = 0x80000001C96D3DC0;
  v40 = v1;
  v22 = sub_1C95EF8D0(v1);
  v43 = v8;
  sub_1C949D8BC(v8, v51);
  v42 = v6;
  sub_1C949D8BC(v6, v50);
  v41 = v4;
  sub_1C949D8BC(v4, v49);
  v23 = swift_allocObject();
  *(v23 + 136) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D10);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  *(v23 + *(*v23 + 176)) = 0;
  *(v23 + 16) = 0xD000000000000024;
  *(v23 + 24) = 0x80000001C96D3DF0;
  sub_1C949D8BC(v50, v23 + 32);
  sub_1C949D8BC(v49, v23 + 72);
  sub_1C949D8BC(v51, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC3A6D18);
  v28 = swift_allocObject();
  v47 = &off_1F4906CD8;
  v46 = &type metadata for RetainsCoherenceContextAdapter;
  *&v45 = v22;
  v29 = v22;
  swift_defaultActor_initialize();
  v28[14] = 0x7461446863746177;
  v28[15] = 0xE900000000000061;
  v28[16] = 0x746144656E6F6870;
  v28[17] = 0xE900000000000061;
  sub_1C94670AC(v48, (v28 + 18));
  sub_1C94670AC(&v45, (v28 + 23));
  *(v23 + 112) = v28;
  *(v23 + 120) = 0xD000000000000024;
  *(v23 + 128) = v35;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v24);
  v44 = v21;
  type metadata accessor for SyncedData();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8650], v37);
  sub_1C96A7494();
  (*(v36 + 32))(v23 + *(*v23 + 160), v17, v38);
  v33 = *(*v23 + 168);
  swift_beginAccess();
  sub_1C95F2258(v21, v23 + v33);
  swift_endAccess();
  if (v39)
  {
    sub_1C95EE778();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  sub_1C9470AFC(v21, &qword_1EC3A6D08);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C95EF8D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-v6];
  v8 = sub_1C96A4764();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23[-v16];
  if (a1)
  {
    v18 = a1;
LABEL_5:
    v22 = a1;
    return v18;
  }

  v24 = [objc_opt_self() defaultManager];
  v19 = [v24 URLsForDirectory:9 inDomains:1];
  sub_1C96A72A4();
  sub_1C9492F8C();

  result = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (result != 1)
  {

    (*(v9 + 32))(v17, v7, v8);
    sub_1C96A4704();
    sub_1C96A6E34();
    (*(v9 + 16))(v11, v14, v8);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
    v18 = sub_1C96A6E24();

    v21 = *(v9 + 8);
    v21(v14, v8);
    v21(v17, v8);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void NanoSyncManager<>.init(keyValueStore:darwinNotificationCenter:nanoPrefencesSynchronizer:shouldAutoEnable:coherenceContextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v31 + 24);
  v34 = *(v31 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v33);
  OUTLINED_FUNCTION_12_0();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v38, v36);
  sub_1C95F50AC(v38, v30, v28, v26, v24, v20, v33, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  OUTLINED_FUNCTION_101();
}

uint64_t NanoSyncManager.updates.getter()
{
  v1 = *v0;
  sub_1C96A7484();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_71();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v7 - v5, &v0[*(v1 + 160)], v3);
  return sub_1C95EE330();
}

uint64_t NanoSyncManager.setDataAsync(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_28_1(sub_1C95EFF74, 0);
}

uint64_t sub_1C95EFF74()
{
  if (qword_1EC3A47E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EC3A74D8);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v3))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Saving data to the store");
    OUTLINED_FUNCTION_26();
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 112);
  *(v0 + 32) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C95F0060, v7, 0);
}

uint64_t sub_1C95F0060()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = sub_1C95F2E10(*(v0 + 16)) & 1;
  v1 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C95F00C8()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 40) == 1)
  {
    sub_1C95EF1A0();
  }

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1C95F012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C88);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  type metadata accessor for DarwinNotifications(0);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D08);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6DA0);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for SyncedData();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95F0380, 0, 0);
}

uint64_t sub_1C95F0380()
{
  OUTLINED_FUNCTION_38_4();
  Strong = swift_weakLoadStrong();
  v1[32] = Strong;
  if (!Strong)
  {
    OUTLINED_FUNCTION_19_22();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_85_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EC3A47E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v3 = sub_1C96A6154();
  v1[33] = __swift_project_value_buffer(v3, qword_1EC3A74D8);
  v4 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_30_9();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_39_0(&dword_1C945E000, v6, v0, "Triggering initial merge");
    OUTLINED_FUNCTION_40();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[34] = v7;
  *v7 = v8;
  v7[1] = sub_1C95F0564;
  OUTLINED_FUNCTION_85_0();

  return sub_1C95EEC48(v9);
}

uint64_t sub_1C95F0564()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95F0648()
{
  v48 = v0;
  v1 = v0[25];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[26]) == 1)
  {
    sub_1C9470AFC(v1, &unk_1EC3A5F90);
  }

  else
  {
    v3 = v0[30];
    v2 = v0[31];
    v4 = OUTLINED_FUNCTION_12_7();
    sub_1C95739FC(v4, v5);
    v6 = OUTLINED_FUNCTION_48_0();
    sub_1C95F5AE8(v6, v7);
    v8 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_30_9();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[30];
    if (v10)
    {
      v12 = v0[29];
      v13 = v0[26];
      OUTLINED_FUNCTION_102();
      v14 = OUTLINED_FUNCTION_62();
      v47[0] = v14;
      OUTLINED_FUNCTION_2_53(7.2225e-34);
      sub_1C95F5AE8(v11, v12);
      OUTLINED_FUNCTION_11_29();
      sub_1C95F5B4C(v11, v15);
      OUTLINED_FUNCTION_17_26(&unk_1EC3A6160);
      sub_1C96A7DB4();
      v16 = OUTLINED_FUNCTION_16_26();
      sub_1C95F5B4C(v16, v17);
      sub_1C9484164(v11, v13, v47);
      OUTLINED_FUNCTION_48_6();
      *(v3 + 14) = v12;
      OUTLINED_FUNCTION_29_8(&dword_1C945E000, v18, v2, "New data received from the initial merge: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_40();
    }

    else
    {
      sub_1C95F5B4C(v0[30], type metadata accessor for SyncedData);
    }

    v19 = v0[32];
    v20 = v0[19];
    v21 = *(*v19 + 168);
    OUTLINED_FUNCTION_84();
    sub_1C9470A40(v19 + v21, v20, &qword_1EC3A6D08);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D10);
    v23 = OUTLINED_FUNCTION_28_13(v20);
    if (v31)
    {
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v23, v24, v25, v26, v27, v28, v29, v30);
    }

    v32 = v0[31];
    v33 = v0[23];
    v34 = v0[20];
    v35 = v0[21];
    v36 = v0[19];
    sub_1C95F5AE8(v32, v0[29]);
    OUTLINED_FUNCTION_117();
    sub_1C96A7444();
    (*(v35 + 8))(v33, v34);
    OUTLINED_FUNCTION_1_50();
    sub_1C95F5B4C(v32, v37);
    OUTLINED_FUNCTION_8_1();
    (*(v38 + 8))(v36, v22);
  }

  v39 = v0[32];
  v40 = v39[7];
  v41 = v39[8];
  __swift_project_boxed_opaque_existential_1(v39 + 4, v40);
  v42 = v39[16];
  v47[0] = v39[15];
  v47[1] = v42;
  v43 = *(v41 + 16);
  sub_1C96A53C4();
  v43(v47, v40, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C70);
  sub_1C96A7464();
  v0[35] = *(*v39 + 168);
  OUTLINED_FUNCTION_84();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[36] = v44;
  *v44 = v45;
  v44[1] = sub_1C95F09B8;
  v23 = OUTLINED_FUNCTION_8_34();

  return MEMORY[0x1EEE6D9C8](v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_1C95F09B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95F0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_43_11();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = v24[11];
  v27 = v24[12];
  v24[37] = v27;
  if (v27)
  {
    sub_1C96A53C4();
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      a13 = v32;
      *v31 = 136315138;
      sub_1C96A53C4();
      v33 = sub_1C9484164(v28, v27, &a13);

      *(v31 + 4) = v33;
      OUTLINED_FUNCTION_45_7(&dword_1C945E000, v34, v35, "Handling data did change notification: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v24[38] = v36;
    *v36 = v37;
    v36[1] = sub_1C95F0CC8;
    OUTLINED_FUNCTION_35_1();

    return sub_1C95EEC48(v38);
  }

  else
  {

    v41 = OUTLINED_FUNCTION_12_7();
    v42(v41);
    OUTLINED_FUNCTION_14_25();
    OUTLINED_FUNCTION_19_22();
    v54 = v43;
    v55 = v44;
    v56 = v45;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_35_1();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v54, v55, v56, a13, a14, a15, a16);
  }
}

uint64_t sub_1C95F0CC8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95F0DAC()
{
  v47 = v0;
  v1 = v0[24];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[26]) == 1)
  {

    sub_1C9470AFC(v1, &unk_1EC3A5F90);
    v2 = sub_1C96A6134();
    v3 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v3))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "No new data");
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = OUTLINED_FUNCTION_12_7();
    sub_1C95739FC(v8, v9);
    v10 = OUTLINED_FUNCTION_48_0();
    sub_1C95F5AE8(v10, v11);
    v12 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_30_9();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[29];
      v16 = v0[26];
      v15 = v0[27];
      OUTLINED_FUNCTION_102();
      v17 = OUTLINED_FUNCTION_62();
      v46 = v17;
      OUTLINED_FUNCTION_2_53(7.2225e-34);
      sub_1C95F5AE8(v15, v14);
      OUTLINED_FUNCTION_11_29();
      sub_1C95F5B4C(v15, v18);
      OUTLINED_FUNCTION_17_26(&unk_1EC3A6160);
      sub_1C96A7DB4();
      v19 = OUTLINED_FUNCTION_16_26();
      sub_1C95F5B4C(v19, v20);
      sub_1C9484164(v15, v16, &v46);
      OUTLINED_FUNCTION_48_6();
      *(v7 + 14) = v14;
      OUTLINED_FUNCTION_29_8(&dword_1C945E000, v21, v6, "New data received: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_40();
    }

    else
    {
      OUTLINED_FUNCTION_1_50();
      sub_1C95F5B4C(v22, v23);
    }

    v24 = v0[18];
    sub_1C9470A40(v0[32] + v0[35], v24, &qword_1EC3A6D08);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D10);
    v26 = OUTLINED_FUNCTION_28_13(v24);
    if (v34)
    {
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v26, v27, v28, v29, v30, v31, v32, v33);
    }

    v36 = v0[28];
    v35 = v0[29];
    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[20];
    v40 = v0[18];

    sub_1C95F5AE8(v36, v35);
    OUTLINED_FUNCTION_117();
    sub_1C96A7444();
    (*(v38 + 8))(v37, v39);
    OUTLINED_FUNCTION_1_50();
    sub_1C95F5B4C(v36, v41);
    OUTLINED_FUNCTION_8_1();
    (*(v42 + 8))(v40, v25);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[36] = v43;
  *v43 = v44;
  v43[1] = sub_1C95F09B8;
  v26 = OUTLINED_FUNCTION_8_34();

  return MEMORY[0x1EEE6D9C8](v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_1C95F10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a5;
  v7[15] = a7;
  v7[13] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C88);
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  type metadata accessor for DarwinNotifications(0);
  v7[19] = swift_task_alloc();
  v7[20] = sub_1C96A7454();
  v10 = sub_1C96A7934();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v11 = sub_1C96A7424();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v12 = sub_1C96A7934();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = *(a5 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95F1380, 0, 0);
}

uint64_t sub_1C95F1380()
{
  OUTLINED_FUNCTION_38_4();
  Strong = swift_weakLoadStrong();
  v1[39] = Strong;
  if (!Strong)
  {
    OUTLINED_FUNCTION_22_19();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_85_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EC3A47E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v3 = sub_1C96A6154();
  v1[40] = __swift_project_value_buffer(v3, qword_1EC3A74D8);
  v4 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_30_9();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_39_0(&dword_1C945E000, v6, v0, "Triggering initial merge");
    OUTLINED_FUNCTION_40();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[41] = v7;
  *v7 = v8;
  v7[1] = sub_1C95F1564;
  OUTLINED_FUNCTION_85_0();

  return sub_1C95EEE80(v9);
}

uint64_t sub_1C95F1564()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95F1648()
{
  v55 = v0;
  v2 = v0[32];
  v3 = v0[14];
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v0[30] + 8))(v2, v0[29]);
  }

  else
  {
    v5 = v0[37];
    v4 = v0[38];
    v6 = OUTLINED_FUNCTION_42_9();
    v7(v6, v2, v3);
    v8 = *(v1 + 16);
    v8(v5, v4, v3);
    v9 = sub_1C96A6134();
    sub_1C96A76A4();
    OUTLINED_FUNCTION_30_9();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[37];
    v52 = v8;
    if (v11)
    {
      v13 = v0[36];
      v14 = v0[33];
      v15 = v0[14];
      OUTLINED_FUNCTION_102();
      v53 = OUTLINED_FUNCTION_62();
      v54[0] = v53;
      OUTLINED_FUNCTION_2_53(7.2225e-34);
      v8(v13, v12, v15);
      v16 = *(v14 + 8);
      v16(v12, v15);
      v17 = sub_1C96A7DB4();
      v19 = v18;
      v51 = v16;
      v16(v13, v15);
      sub_1C9484164(v17, v19, v54);
      OUTLINED_FUNCTION_48_6();
      *(v4 + 14) = v17;
      OUTLINED_FUNCTION_29_8(&dword_1C945E000, v20, v3, "New data received from the initial merge: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_40();
    }

    else
    {
      v51 = *(v0[33] + 8);
      v51(v12, v0[14]);
    }

    v21 = v0[39];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[22];
    v25 = v0[20];
    v26 = *(*v21 + 168);
    OUTLINED_FUNCTION_84();
    (*(v24 + 16))(v22, v21 + v26, v23);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v25);
    if (EnumTagSinglePayload == 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6D9C8](EnumTagSinglePayload, v28, v29, v30, v31, v32, v33, v34);
    }

    v35 = v0[38];
    v36 = v0[24];
    v37 = v0[20];
    v38 = v0[14];
    v39 = OUTLINED_FUNCTION_117();
    v52(v39);
    OUTLINED_FUNCTION_46_2();
    v40 = OUTLINED_FUNCTION_48_0();
    v41(v40);
    v51(v35, v38);
    OUTLINED_FUNCTION_8_1();
    (*(v42 + 8))(v36, v37);
  }

  v43 = v0[39];
  v44 = v43[7];
  v45 = v43[8];
  __swift_project_boxed_opaque_existential_1(v43 + 4, v44);
  v46 = v43[16];
  v54[0] = v43[15];
  v54[1] = v46;
  v47 = *(v45 + 16);
  sub_1C96A53C4();
  v47(v54, v44, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C70);
  sub_1C96A7464();
  v0[42] = *(*v43 + 168);
  OUTLINED_FUNCTION_84();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[43] = v48;
  *v48 = v49;
  v48[1] = sub_1C95F1A38;
  EnumTagSinglePayload = OUTLINED_FUNCTION_8_34();

  return MEMORY[0x1EEE6D9C8](EnumTagSinglePayload, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1C95F1A38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95F1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_43_11();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = v24[11];
  v27 = v24[12];
  v24[44] = v27;
  if (v27)
  {
    sub_1C96A53C4();
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      a13 = v32;
      *v31 = 136315138;
      sub_1C96A53C4();
      v33 = sub_1C9484164(v28, v27, &a13);

      *(v31 + 4) = v33;
      OUTLINED_FUNCTION_45_7(&dword_1C945E000, v34, v35, "Handling data did change notification: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v24[45] = v36;
    *v36 = v37;
    v36[1] = sub_1C95F1D48;
    OUTLINED_FUNCTION_35_1();

    return sub_1C95EEE80(v38);
  }

  else
  {

    v41 = OUTLINED_FUNCTION_12_7();
    v42(v41);
    OUTLINED_FUNCTION_14_25();
    OUTLINED_FUNCTION_22_19();
    v54 = v43;
    v55 = v44;
    v56 = v45;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_35_1();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v54, v55, v56, a13, a14, a15, a16);
  }
}

uint64_t sub_1C95F1D48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95F1E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_43_11();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = v24[31];
  v29 = v24[14];
  OUTLINED_FUNCTION_28_13(v28);
  if (v30)
  {
    v31 = v24[29];
    v32 = v24[30];

    (*(v32 + 8))(v28, v31);
    v33 = sub_1C96A6134();
    LOBYTE(v31) = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v31))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v34, v35, "No new data");
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v37 = v24[34];
    v36 = v24[35];
    v38 = OUTLINED_FUNCTION_42_9();
    v39(v38, v28, v29);
    v40 = *(v25 + 16);
    v40(v37, v36, v29);
    v41 = sub_1C96A6134();
    v42 = sub_1C96A76A4();
    v43 = os_log_type_enabled(v41, v42);
    v73 = v40;
    if (v43)
    {
      v74 = v42;
      v44 = v24[36];
      v45 = v24[33];
      v46 = v24[34];
      v47 = v24[14];
      OUTLINED_FUNCTION_102();
      v71 = OUTLINED_FUNCTION_62();
      a13 = v71;
      OUTLINED_FUNCTION_2_53(7.2225e-34);
      v40(v44, v46, v47);
      v48 = *(v45 + 8);
      v48(v46, v47);
      sub_1C96A7DB4();
      v49 = OUTLINED_FUNCTION_16_26();
      v72 = v48;
      (v48)(v49);
      sub_1C9484164(v40, v46, &a13);
      OUTLINED_FUNCTION_48_6();
      *(v36 + 14) = v44;
      OUTLINED_FUNCTION_29_8(&dword_1C945E000, v50, v74, "New data received: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_40();
    }

    else
    {
      v72 = *(v24[33] + 8);
      v72(v24[34], v24[14]);
    }

    v51 = v24[23];
    (*(v24[22] + 16))(v51, v24[39] + v24[42], v24[21]);
    v52 = OUTLINED_FUNCTION_28_13(v51);
    if (v30)
    {
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v52, v53, v54, v55, v56, v57, v58, v59);
    }

    v60 = v24[35];
    v61 = v24[23];
    v62 = v24[20];
    v63 = v24[14];

    v64 = OUTLINED_FUNCTION_117();
    v73(v64);
    OUTLINED_FUNCTION_46_2();
    v65 = OUTLINED_FUNCTION_48_0();
    v66(v65);
    v72(v60, v63);
    OUTLINED_FUNCTION_8_1();
    (*(v67 + 8))(v61, v62);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v24[43] = v68;
  *v68 = v69;
  v68[1] = sub_1C95F1A38;
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x1EEE6D9C8](v52, v53, v54, v55, v56, v57, v58, v59);
}

uint64_t sub_1C95F2178(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1C94B0CEC;

  return sub_1C95F10AC(a1, v7, v8, v9, v4, v5, v6);
}

uint64_t sub_1C95F2258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95F22C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0C0C;

  return NanoSyncManager.setDataAsync(_:)(a1);
}

uint64_t sub_1C95F23A8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[21];
  v4 = v1[22];
  __swift_project_boxed_opaque_existential_1(v1 + 18, v3);
  v6 = v1[16];
  v5 = v1[17];
  v7 = type metadata accessor for SyncedData();
  sub_1C95F5C14(&qword_1EDB7A5B0);
  return sub_1C959ECB0(v6, v5, v3, v7, v4, a1);
}

uint64_t sub_1C95F249C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[21];
  v5 = v1[22];
  __swift_project_boxed_opaque_existential_1(v1 + 18, v4);
  return sub_1C959ECB0(v1[16], v1[17], v4, *(v3 + 80), v5, a1);
}

uint64_t sub_1C95F2578@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[21];
  v4 = v1[22];
  __swift_project_boxed_opaque_existential_1(v1 + 18, v3);
  v6 = v1[14];
  v5 = v1[15];
  v7 = type metadata accessor for SyncedData();
  sub_1C95F5C14(&qword_1EDB7A5B0);
  return sub_1C959ECB0(v6, v5, v3, v7, v4, a1);
}

uint64_t sub_1C95F266C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[21];
  v5 = v1[22];
  __swift_project_boxed_opaque_existential_1(v1 + 18, v4);
  return sub_1C959ECB0(v1[14], v1[15], v4, *(v3 + 80), v5, a1);
}

uint64_t sub_1C95F2748(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60D0);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  if (qword_1EC3A47E0 != -1)
  {
    swift_once();
  }

  v42 = a1;
  v16 = sub_1C96A6154();
  v43 = __swift_project_value_buffer(v16, qword_1EC3A74D8);
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C945E000, v17, v18, "Attempting to set data", v19, 2u);
    MEMORY[0x1CCA8E3D0](v19, -1, -1);
  }

  v20 = v2[21];
  v21 = v2[22];
  __swift_project_boxed_opaque_existential_1(v2 + 18, v20);
  v22 = v2[16];
  v23 = v2[17];
  sub_1C95F5C14(&qword_1EDB7A5B0);
  sub_1C959ECB0(v22, v23, v20, v4, v21, v15);
  v24 = v42;
  sub_1C95F5AE8(v42, v12);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
  v25 = *(v41 + 12);
  sub_1C9470A40(v15, v7, &unk_1EC3A5F90);
  sub_1C9470A40(v12, &v7[v25], &unk_1EC3A5F90);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v4);
  v41 = v15;
  if (EnumTagSinglePayload != 1)
  {
    v27 = v40;
    sub_1C9470A40(v7, v40, &unk_1EC3A5F90);
    if (__swift_getEnumTagSinglePayload(&v7[v25], 1, v4) != 1)
    {
      v31 = &v7[v25];
      v32 = v39;
      sub_1C95739FC(v31, v39);
      static SyncedData.== infix(_:_:)();
      v34 = v33;
      sub_1C95F5B4C(v32, type metadata accessor for SyncedData);
      sub_1C9470AFC(v12, &unk_1EC3A5F90);
      sub_1C95F5B4C(v27, type metadata accessor for SyncedData);
      sub_1C9470AFC(v7, &unk_1EC3A5F90);
      if (v34)
      {
        goto LABEL_13;
      }

LABEL_11:
      v28 = v2[27];
      v29 = __swift_project_boxed_opaque_existential_1(v2 + 23, v2[26]);
      v30 = MEMORY[0x1EEE9AC00](v29);
      *(&v39 - 2) = v2;
      *(&v39 - 1) = v24;
      (*(v28 + 8))(sub_1C95F5C58, v30);
      sub_1C9470AFC(v41, &unk_1EC3A5F90);
      return 1;
    }

    sub_1C9470AFC(v12, &unk_1EC3A5F90);
    sub_1C95F5B4C(v27, type metadata accessor for SyncedData);
LABEL_10:
    sub_1C9470AFC(v7, &qword_1EC3A60D0);
    goto LABEL_11;
  }

  sub_1C9470AFC(v12, &unk_1EC3A5F90);
  if (__swift_getEnumTagSinglePayload(&v7[v25], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1C9470AFC(v7, &unk_1EC3A5F90);
LABEL_13:
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C945E000, v35, v36, "Aborting setData - new data is equal to the current data", v37, 2u);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  sub_1C9470AFC(v41, &unk_1EC3A5F90);
  return 0;
}

uint64_t sub_1C95F2E10(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v3 = *(*v1 + 80);
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v59 - v4;
  v5 = sub_1C96A7934();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v59 - v6;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  if (qword_1EC3A47E0 != -1)
  {
    swift_once();
  }

  v67 = v13;
  v17 = sub_1C96A6154();
  v71 = __swift_project_value_buffer(v17, qword_1EC3A74D8);
  v18 = sub_1C96A6134();
  v19 = sub_1C96A76A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C945E000, v18, v19, "Attempting to set data", v20, 2u);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
  }

  v21 = v2[21];
  v22 = v2[22];
  __swift_project_boxed_opaque_existential_1(v2 + 18, v21);
  sub_1C959ECB0(v2[16], v2[17], v21, v3, v22, v16);
  v60 = 0;
  v32 = v67;
  (*(v69 + 16))(v67, v70, v3);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v3);
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v16;
  v35 = v8;
  v36 = *(v8 + 16);
  v62 = v34;
  v36(v7);
  v61 = v33;
  (v36)(&v7[v33], v32, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v3);
  v63 = v35;
  if (EnumTagSinglePayload == 1)
  {
    v38 = *(v35 + 8);
    v38(v32, v5);
    v39 = v7;
    if (__swift_getEnumTagSinglePayload(&v7[v61], 1, v3) == 1)
    {
      v38(v7, v5);
      v40 = v62;
LABEL_18:
      v55 = sub_1C96A6134();
      v56 = sub_1C96A76A4();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1C945E000, v55, v56, "Aborting setData - new data is equal to the current data", v57, 2u);
        MEMORY[0x1CCA8E3D0](v57, -1, -1);
      }

      v38(v40, v5);
      return 0;
    }

    goto LABEL_14;
  }

  v41 = v65;
  (v36)(v65, v7, v5);
  v42 = v61;
  v39 = v7;
  if (__swift_getEnumTagSinglePayload(&v7[v61], 1, v3) == 1)
  {
    v38 = *(v63 + 8);
    v38(v67, v5);
    (*(v69 + 8))(v41, v3);
LABEL_14:
    v40 = v62;
    v43 = v60;
    (*(v66 + 8))(v39, TupleTypeMetadata2);
    goto LABEL_15;
  }

  v48 = v7;
  v49 = v41;
  v50 = v69;
  v51 = &v39[v42];
  v52 = v64;
  (*(v69 + 32))(v64, v51, v3);
  v53 = sub_1C96A6F94();
  v54 = *(v50 + 8);
  v54(v52, v3);
  v38 = *(v63 + 8);
  v38(v67, v5);
  v54(v49, v3);
  v38(v48, v5);
  v40 = v62;
  v43 = v60;
  if (v53)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = v2[27];
  v45 = __swift_project_boxed_opaque_existential_1(v2 + 23, v2[26]);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v47 = v70;
  *(&v59 - 2) = v2;
  *(&v59 - 1) = v47;
  (*(v44 + 8))(sub_1C95F59B4, v46);
  if (v43)
  {
    v38(v40, v5);
    v23 = v43;
    v24 = sub_1C96A6134();
    v25 = sub_1C96A7684();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v43;
      v73 = v27;
      *v26 = 136446210;
      v28 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v29 = sub_1C96A70A4();
      v31 = sub_1C9484164(v29, v30, &v73);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C945E000, v24, v25, "Error saving CRDT data to the key/value store. Error=%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1CCA8E3D0](v27, -1, -1);
      MEMORY[0x1CCA8E3D0](v26, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v38(v40, v5);
  return 1;
}

uint64_t sub_1C95F35FC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[21];
  v7 = a2[22];
  __swift_project_boxed_opaque_existential_1(a2 + 18, v6);
  v9 = a2[16];
  v8 = a2[17];
  v10 = type metadata accessor for SyncedData();
  sub_1C95F5C14(&qword_1EDB7A5B0);
  return sub_1C959ED6C(a3, v9, v8, a1, v6, v10, v7);
}

uint64_t sub_1C95F36B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[21];
  v8 = a2[22];
  __swift_project_boxed_opaque_existential_1(a2 + 18, v7);
  return sub_1C959ED6C(a3, a2[16], a2[17], a1, v7, *(v6 + 80), v8);
}

uint64_t sub_1C95F375C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = v102 - v5;
  v6 = sub_1C96A6AE4();
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v106 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v102 - v12;
  v14 = type metadata accessor for SyncedData();
  MEMORY[0x1EEE9AC00](v14);
  v110 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v113 = v102 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v114 = v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v104 = v102 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v102 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v105 = v102 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v115 = v102 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v102 - v30;
  if (qword_1EC3A47E0 != -1)
  {
    swift_once();
  }

  v32 = sub_1C96A6154();
  v33 = __swift_project_value_buffer(v32, qword_1EC3A74D8);
  v34 = sub_1C96A6134();
  v35 = sub_1C96A76A4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v103 = v10;
    v37 = v24;
    v38 = v33;
    v39 = v14;
    v40 = v31;
    v41 = v2;
    v42 = a1;
    v43 = v36;
    *v36 = 0;
    _os_log_impl(&dword_1C945E000, v34, v35, "Attempting to merge", v36, 2u);
    v44 = v43;
    a1 = v42;
    v2 = v41;
    v31 = v40;
    v14 = v39;
    v33 = v38;
    v24 = v37;
    v10 = v103;
    MEMORY[0x1CCA8E3D0](v44, -1, -1);
  }

  sub_1C95F2578(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    sub_1C95739FC(v13, v31);
    sub_1C95F23A8(v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
    {
      v115 = a1;
      sub_1C9470AFC(v10, &unk_1EC3A5F90);
      v48 = v104;
      sub_1C95F5AE8(v31, v104);
      v49 = sub_1C96A6134();
      v50 = sub_1C96A76A4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v113 = v14;
        v52 = v51;
        v53 = swift_slowAlloc();
        v116 = v53;
        *v52 = 141558275;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        v54 = v114;
        sub_1C95F5AE8(v48, v114);
        sub_1C95F5B4C(v48, type metadata accessor for SyncedData);
        sub_1C95F5C14(&unk_1EC3A6160);
        v55 = sub_1C96A7DB4();
        v57 = v56;
        sub_1C95F5B4C(v54, type metadata accessor for SyncedData);
        v58 = sub_1C9484164(v55, v57, &v116);

        *(v52 + 14) = v58;
        _os_log_impl(&dword_1C945E000, v49, v50, "No local data - saving remote data: %{private,mask.hash}s", v52, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x1CCA8E3D0](v53, -1, -1);
        v59 = v52;
        v14 = v113;
        MEMORY[0x1CCA8E3D0](v59, -1, -1);
      }

      else
      {
        sub_1C95F5B4C(v48, type metadata accessor for SyncedData);
      }

      sub_1C95F2748(v31);
      v81 = v31;
      a1 = v115;
    }

    else
    {
      v60 = v10;
      v61 = v115;
      sub_1C95739FC(v60, v115);
      v62 = v105;
      sub_1C95F5AE8(v61, v105);
      sub_1C95F5AE8(v31, v24);
      v104 = v33;
      v63 = sub_1C96A6134();
      v64 = sub_1C96A76A4();
      v65 = os_log_type_enabled(v63, v64);
      v102[1] = v2;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v116 = v103;
        *v66 = 141558787;
        *(v66 + 4) = 1752392040;
        *(v66 + 12) = 2081;
        v67 = v62;
        v102[0] = v63;
        v68 = v62;
        v69 = v114;
        sub_1C95F5AE8(v67, v114);
        sub_1C95F5B4C(v68, type metadata accessor for SyncedData);
        sub_1C95F5C14(&unk_1EC3A6160);
        LODWORD(v105) = v64;
        v70 = sub_1C96A7DB4();
        v71 = a1;
        v73 = v72;
        sub_1C95F5B4C(v69, type metadata accessor for SyncedData);
        v74 = sub_1C9484164(v70, v73, &v116);
        a1 = v71;

        *(v66 + 14) = v74;
        *(v66 + 22) = 2160;
        *(v66 + 24) = 1752392040;
        *(v66 + 32) = 2081;
        sub_1C95F5AE8(v24, v69);
        sub_1C95F5B4C(v24, type metadata accessor for SyncedData);
        v75 = sub_1C96A7DB4();
        v77 = v76;
        sub_1C95F5B4C(v69, type metadata accessor for SyncedData);
        v78 = sub_1C9484164(v75, v77, &v116);

        *(v66 + 34) = v78;
        v63 = v102[0];
        _os_log_impl(&dword_1C945E000, v102[0], v105, "Merging local and remote data.  Local: %{private,mask.hash}s, Remote: %{private,mask.hash}s", v66, 0x2Au);
        v79 = v103;
        swift_arrayDestroy();
        MEMORY[0x1CCA8E3D0](v79, -1, -1);
        v80 = v66;
        v61 = v115;
        MEMORY[0x1CCA8E3D0](v80, -1, -1);
      }

      else
      {
        sub_1C95F5B4C(v24, type metadata accessor for SyncedData);
        sub_1C95F5B4C(v62, type metadata accessor for SyncedData);
      }

      v82 = v113;
      v83 = v110;
      sub_1C95F5AE8(v61, v113);
      sub_1C95F5C14(&qword_1EDB7A5D8);
      v84 = v106;
      sub_1C96A6924();
      (*(v107 + 8))(v84, v108);
      v85 = v109;
      sub_1C95C8040();
      (*(v111 + 40))(v82, v85, v112);
      static SyncedData.== infix(_:_:)();
      if ((v86 & 1) == 0)
      {
        sub_1C95F5AE8(v82, v83);
        v93 = sub_1C96A6134();
        v94 = sub_1C96A76A4();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v116 = v113;
          *v95 = 141558275;
          *(v95 + 4) = 1752392040;
          *(v95 + 12) = 2081;
          v96 = v114;
          sub_1C95F5AE8(v83, v114);
          sub_1C95F5B4C(v83, type metadata accessor for SyncedData);
          sub_1C95F5C14(&unk_1EC3A6160);
          v97 = sub_1C96A7DB4();
          v99 = v98;
          sub_1C95F5B4C(v96, type metadata accessor for SyncedData);
          v100 = sub_1C9484164(v97, v99, &v116);

          *(v95 + 14) = v100;
          _os_log_impl(&dword_1C945E000, v93, v94, "Changes found in merged data: %{private,mask.hash}s", v95, 0x16u);
          v101 = v113;
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          v61 = v115;
          MEMORY[0x1CCA8E3D0](v101, -1, -1);
          MEMORY[0x1CCA8E3D0](v95, -1, -1);
        }

        else
        {
          sub_1C95F5B4C(v83, type metadata accessor for SyncedData);
        }

        sub_1C95F2748(v82);
        sub_1C95F5B4C(v61, type metadata accessor for SyncedData);
        sub_1C95F5B4C(v31, type metadata accessor for SyncedData);
        sub_1C95739FC(v82, a1);
        goto LABEL_22;
      }

      v87 = sub_1C96A6134();
      v88 = sub_1C96A76A4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = v14;
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1C945E000, v87, v88, "No changes in merged data", v90, 2u);
        v91 = v90;
        v14 = v89;
        MEMORY[0x1CCA8E3D0](v91, -1, -1);
      }

      sub_1C95F5B4C(v61, type metadata accessor for SyncedData);
      sub_1C95F5B4C(v31, type metadata accessor for SyncedData);
      v81 = v82;
    }

    sub_1C95739FC(v81, a1);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
    goto LABEL_22;
  }

  sub_1C9470AFC(v13, &unk_1EC3A5F90);
  v45 = sub_1C96A6134();
  v46 = sub_1C96A76A4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1C945E000, v45, v46, "Aborting merge - no remote data", v47, 2u);
    MEMORY[0x1CCA8E3D0](v47, -1, -1);
  }

  sub_1C95F23A8(a1);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6DA8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C95F43A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v127 = a1;
  v129 = *v1;
  v3 = *(v129 + 80);
  v124 = sub_1C96A7934();
  v4 = *(v124 - 1);
  MEMORY[0x1EEE9AC00](v124);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v112 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = (&v112 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v112 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v112 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v112 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v112 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v112 - v28;
  if (qword_1EC3A47E0 != -1)
  {
    swift_once();
  }

  v29 = sub_1C96A6154();
  v128 = __swift_project_value_buffer(v29, qword_1EC3A74D8);
  v30 = sub_1C96A6134();
  v31 = sub_1C96A76A4();
  v32 = os_log_type_enabled(v30, v31);
  v130 = v2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C945E000, v30, v31, "Attempting to merge", v33, 2u);
    MEMORY[0x1CCA8E3D0](v33, -1, -1);
  }

  sub_1C95F266C(v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v124);
    v34 = sub_1C96A6134();
    v35 = sub_1C96A76A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C945E000, v34, v35, "Aborting merge - no remote data", v36, 2u);
      MEMORY[0x1CCA8E3D0](v36, -1, -1);
    }

    sub_1C95F249C(v127);
    v37 = *(v129 + 104);
    v131 = v3;
    v38 = *(v129 + 88);
    goto LABEL_16;
  }

  v116 = v24;
  v117 = v21;
  v39 = v10;
  v40 = *(v10 + 32);
  v41 = v126;
  v40(v126, v9, v3);
  sub_1C95F249C(v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v3);
  v118 = v40;
  v119 = v10 + 32;
  if (EnumTagSinglePayload == 1)
  {
    (*(v4 + 8))(v6, v124);
    v43 = v41;
    v44 = *(v10 + 16);
    v45 = v120;
    v44(v120, v43, v3);
    v46 = sub_1C96A6134();
    v47 = sub_1C96A76A4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v131 = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      v50 = v122;
      v44(v122, v45, v3);
      v51 = *(v39 + 8);
      v51(v45, v3);
      v52 = v129;
      v53 = sub_1C96A7DB4();
      v55 = v54;
      v51(v50, v3);
      v56 = sub_1C9484164(v53, v55, &v131);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_1C945E000, v46, v47, "No local data - saving remote data: %{private,mask.hash}s", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1CCA8E3D0](v49, -1, -1);
      MEMORY[0x1CCA8E3D0](v48, -1, -1);
    }

    else
    {
      (*(v10 + 8))(v45, v3);

      v52 = v129;
    }

    v80 = v126;
    sub_1C95F2E10(v126);
    v81 = v127;
    v118(v127, v80, v3);
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v3);
    v37 = *(v52 + 104);
    v131 = v3;
    v38 = *(v52 + 88);
LABEL_16:
    v132 = v38;
    v133 = v37;
LABEL_17:
    type metadata accessor for NanoSyncManager.Store.MergeResult();
    return swift_storeEnumTagMultiPayload();
  }

  v57 = v125;
  v40(v125, v6, v3);
  v58 = *(v10 + 16);
  v58(v116, v57, v3);
  v58(v117, v41, v3);
  v59 = sub_1C96A6134();
  v60 = sub_1C96A76A4();
  v61 = os_log_type_enabled(v59, v60);
  v120 = v58;
  v115 = v10 + 16;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v131 = v113;
    *v62 = 141558787;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    v63 = v122;
    v64 = v116;
    v58(v122, v116, v3);
    v112 = v59;
    v114 = v39;
    v65 = *(v39 + 8);
    v65(v64, v3);
    LODWORD(v116) = v60;
    v66 = sub_1C96A7DB4();
    v68 = v67;
    v65(v63, v3);
    v69 = sub_1C9484164(v66, v68, &v131);
    v70 = v126;

    *(v62 + 14) = v69;
    v41 = v70;
    *(v62 + 22) = 2160;
    *(v62 + 24) = 1752392040;
    *(v62 + 32) = 2081;
    v71 = v117;
    v58(v63, v117, v3);
    v65(v71, v3);
    v72 = sub_1C96A7DB4();
    v74 = v73;
    v124 = v65;
    v65(v63, v3);
    v75 = sub_1C9484164(v72, v74, &v131);

    *(v62 + 34) = v75;
    v76 = v112;
    _os_log_impl(&dword_1C945E000, v112, v116, "Merging local and remote data.  Local: %{private,mask.hash}s, Remote: %{private,mask.hash}s", v62, 0x2Au);
    v77 = v113;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v77, -1, -1);
    v78 = v62;
    v79 = v129;
    MEMORY[0x1CCA8E3D0](v78, -1, -1);
  }

  else
  {
    v83 = *(v10 + 8);
    v83(v117, v3);
    v124 = v83;
    v83(v116, v3);

    v79 = v129;
  }

  v84 = v79[13];
  v85 = v123;
  (*(v84 + 16))(v41, v3, v84);
  v86 = v79[11];
  v87 = sub_1C96A6F94();
  v88 = v121;
  if (v87)
  {
    v89 = sub_1C96A6134();
    v90 = sub_1C96A76A4();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_1C945E000, v89, v90, "No changes in merged data", v91, 2u);
      v41 = v126;
      MEMORY[0x1CCA8E3D0](v91, -1, -1);
    }

    v92 = v124;
    v124(v125, v3);
    v92(v41, v3);
    v93 = v127;
    v118(v127, v85, v3);
    __swift_storeEnumTagSinglePayload(v93, 0, 1, v3);
    v94 = v79[12];
    v131 = v3;
    *&v132 = v86;
    *(&v132 + 1) = v94;
    v133 = v84;
    goto LABEL_17;
  }

  v117 = v86;
  v95 = v120;
  (v120)(v121, v85, v3);
  v96 = sub_1C96A6134();
  v97 = sub_1C96A76A4();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v131 = v128;
    *v98 = 141558275;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    LODWORD(v116) = v97;
    v99 = v122;
    v95(v122, v88, v3);
    v100 = v124;
    v124(v88, v3);
    v121 = v96;
    v101 = v129;
    v102 = sub_1C96A7DB4();
    v104 = v103;
    v100(v99, v3);
    v105 = sub_1C9484164(v102, v104, &v131);
    v106 = v101;
    v107 = v126;

    *(v98 + 14) = v105;
    v108 = v121;
    _os_log_impl(&dword_1C945E000, v121, v116, "Changes found in merged data: %{private,mask.hash}s", v98, 0x16u);
    v109 = v128;
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    MEMORY[0x1CCA8E3D0](v109, -1, -1);
    v110 = v98;
    v85 = v123;
    MEMORY[0x1CCA8E3D0](v110, -1, -1);
  }

  else
  {
    v107 = v41;
    v100 = v124;
    v124(v88, v3);

    v106 = v129;
  }

  sub_1C95F2E10(v85);
  v100(v125, v3);
  v100(v107, v3);
  v118(v127, v85, v3);
  v111 = *(v106 + 96);
  v131 = v3;
  *&v132 = v117;
  *(&v132 + 1) = v111;
  v133 = v84;
  type metadata accessor for NanoSyncManager.Store.MergeResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C95F5044()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C95F5084()
{
  v0 = sub_1C95F5044();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C95F50AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a5;
  v38 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D00);
  v13 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v31 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60C8);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D08);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - v18;
  v52[3] = a7;
  v52[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v33 = 0x80000001C96D3DC0;
  sub_1C949D8BC(v52, v51);
  v40 = a2;
  sub_1C949D8BC(a2, v50);
  v39 = a3;
  v21 = a3;
  v22 = v32;
  sub_1C949D8BC(v21, v49);
  sub_1C949D8BC(v22, v48);
  v23 = swift_allocObject();
  sub_1C95F59D0(v48, v46);
  *(v23 + 136) = 0;
  v24 = *(*v23 + 168);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6D10);
  __swift_storeEnumTagSinglePayload(v23 + v24, 1, 1, v25);
  *(v23 + *(*v23 + 176)) = 0;
  *(v23 + 16) = 0xD000000000000024;
  *(v23 + 24) = 0x80000001C96D3DF0;
  sub_1C949D8BC(v50, v23 + 32);
  sub_1C949D8BC(v49, v23 + 72);
  sub_1C949D8BC(v51, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC3A6D18);
  v26 = swift_allocObject();
  v43 = &type metadata for CoherenceContextProviderAdapter;
  v44 = &off_1F4906E50;
  v27 = swift_allocObject();
  *&v42 = v27;
  v28 = v46[1];
  *(v27 + 16) = v46[0];
  *(v27 + 32) = v28;
  *(v27 + 48) = v47;
  swift_defaultActor_initialize();
  v26[14] = 0x7461446863746177;
  v26[15] = 0xE900000000000061;
  v26[16] = 0x746144656E6F6870;
  v26[17] = 0xE900000000000061;
  sub_1C94670AC(v45, (v26 + 18));
  sub_1C94670AC(&v42, (v26 + 23));
  *(v23 + 112) = v26;
  *(v23 + 120) = 0xD000000000000024;
  *(v23 + 128) = v33;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v25);
  v41 = v19;
  (*(v13 + 104))(v34, *MEMORY[0x1E69E8650], v36);
  sub_1C96A7494();
  (*(v35 + 32))(v23 + *(*v23 + 160), v16, v37);
  v29 = *(*v23 + 168);
  swift_beginAccess();
  sub_1C95F2258(v19, v23 + v29);
  swift_endAccess();
  if (v38)
  {
    sub_1C95EE778();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  sub_1C95F5A08(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  sub_1C9470AFC(v19, &qword_1EC3A6D08);
  return v23;
}

uint64_t dispatch thunk of NanoSyncManagerType.setDataAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C94B0CEC;

  return v9(a1, a2, a3);
}

uint64_t sub_1C95F5720()
{
  result = sub_1C96A7484();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C95F57D0()
{
  result = sub_1C96A7484();
  if (v1 <= 0x3F)
  {
    sub_1C96A7454();
    result = sub_1C96A7934();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C95F5A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C94B0C0C;

  return sub_1C95F012C(a1, v4, v5, v6);
}

uint64_t sub_1C95F5AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95F5B4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C95F5BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95F5C14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SyncedData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C95F5C7C()
{
  result = sub_1C96A7934();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C95F5CFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v4);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1C95F5E54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1C95F604C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C95F608C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double UnitSetupManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1C95F6158(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

void sub_1C95F624C(const char *a1)
{
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_79();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB80088);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C945E000, v4, v5, a1, v6, 2u);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }

  sub_1C95F6574(v1 + 16, &v10);
  if (v11)
  {
    sub_1C94670AC(&v10, v12);
    if (qword_1EDB80318 != -1)
    {
      swift_once();
    }

    UnitManager.setupUnitsPushing(nanoPrefencesSynchronizer:)(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_1C954DF68(&v10);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A7684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "Expected unit setup dependencies are not present", v9, 2u);
      MEMORY[0x1CCA8E3D0](v9, -1, -1);
    }
  }
}

uint64_t sub_1C95F6464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_1C95F65E4(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t sub_1C95F6574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95F65E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_1C94670AC(&v9, a2 + 16);
  return a2;
}

uint64_t CachedCurrentLocation.init(clLocation:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(type metadata accessor for CachedCurrentLocation(0) + 20);
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 32);

  return v7(&a3[v5], a2);
}

id CachedCurrentLocation.EmbeddedLocation.clLocation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Location();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  sub_1C95F689C(v1, v9 - v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v10;
  }

  sub_1C94898C4(v10, v6);
  v11 = *(v6 + *(v2 + 44));
  if (v11)
  {
    v12 = *(v6 + *(v2 + 44));
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v6 + 32) longitude:*(v6 + 40)];
    v11 = 0;
  }

  v13 = v11;
  sub_1C94DBDDC(v6);
  return v12;
}

uint64_t sub_1C95F689C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C95F6920()
{
  v0 = sub_1C96A4A54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v4 = v3 - v2;
  sub_1C96A5954();
  sub_1C96A5944();
  type metadata accessor for CachedCurrentLocation(0);
  sub_1C96A4964();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (v6 < 64800.0)
  {
    if (qword_1EDB7CFC8 != -1)
    {
      OUTLINED_FUNCTION_0_49();
    }

    v16 = sub_1C96A6154();
    __swift_project_value_buffer(v16, qword_1EDB7CFD0);
    v8 = sub_1C96A6134();
    v9 = sub_1C96A76A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v17 = sub_1C96A7524();
      v19 = sub_1C9484164(v17, v18, &v21);

      *(v10 + 4) = v19;
      v15 = "cachedLocation: is valid. lastUpdated=%s ago.";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDB7CFC8 != -1)
    {
      OUTLINED_FUNCTION_0_49();
    }

    v7 = sub_1C96A6154();
    __swift_project_value_buffer(v7, qword_1EDB7CFD0);
    v8 = sub_1C96A6134();
    v9 = sub_1C96A76A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = sub_1C96A7524();
      v14 = sub_1C9484164(v12, v13, &v21);

      *(v10 + 4) = v14;
      v15 = "cachedLocation: is expired (older than 18 hours). lastUpdated=%s ago.";
LABEL_10:
      _os_log_impl(&dword_1C945E000, v8, v9, v15, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
      MEMORY[0x1CCA8E3D0](v10, -1, -1);
    }
  }

  return v6 >= 64800.0;
}

uint64_t sub_1C95F6BE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v26 = result;
  v4 = *(a2 + 16);
  v5 = (a2 + 40);
  if (v4)
  {
    while (1)
    {
      v7 = v5[4];
      v6 = v5[5];
      v9 = v5[2];
      v8 = v5[3];
      v11 = *v5;
      v10 = v5[1];
      v19 = *(v5 - 1);
      v20 = v11;
      v21 = v10;
      v22 = v9;
      v23 = v8;
      v24 = v7;
      v25 = v6;
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      sub_1C96A3D04();
      v12 = v26(&v19);
      v13 = v20;
      v14 = v21;
      v15 = v22;
      v17 = v23;
      v16 = v24;
      result = v25;
      if (v3)
      {
      }

      if (v12)
      {
        break;
      }

      --v4;
      v5 += 7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    *a3 = v19;
    a3[1] = v13;
    a3[2] = v14;
    a3[3] = v15;
    a3[4] = v17;
    a3[5] = v16;
    a3[6] = result;
  }

  else
  {
LABEL_5:
    a3[6] = 0;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1C95F6D74@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v6 = type metadata accessor for LocationModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a2 + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v13 = 1;
      v14 = v17;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v6);
    }

    sub_1C949E0B0(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for LocationModel);
    v12 = a1(v9);
    if (v3)
    {
      return sub_1C95F97C0(v9, type metadata accessor for LocationModel);
    }

    if (v12)
    {
      break;
    }

    sub_1C95F97C0(v9, type metadata accessor for LocationModel);
    ++v10;
  }

  v14 = v17;
  sub_1C94A81D4(v9, v17, type metadata accessor for LocationModel);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v6);
}

uint64_t sub_1C95F6F2C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_1C96A5CF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5, v7);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

uint64_t SavedLocationFinder.__allocating_init(ubiquitousKeyValueStoreProvider:locationsOfInterestDataSource:weatherLocationCoalescenceManager:locationMatchHelper:locationDataModelFactory:defaultLocationManager:localKeyValueStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  SavedLocationFinder.init(ubiquitousKeyValueStoreProvider:locationsOfInterestDataSource:weatherLocationCoalescenceManager:locationMatchHelper:locationDataModelFactory:defaultLocationManager:localKeyValueStore:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *SavedLocationFinder.init(ubiquitousKeyValueStoreProvider:locationsOfInterestDataSource:weatherLocationCoalescenceManager:locationMatchHelper:locationDataModelFactory:defaultLocationManager:localKeyValueStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a3;
  v32 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  sub_1C9469B6C(a1, (v8 + 7));
  sub_1C9469B6C(a2, (v8 + 12));
  sub_1C9469B6C(a3, (v8 + 22));
  sub_1C9469B6C(a4, (v8 + 27));
  sub_1C9469B6C(a6, (v8 + 32));
  v20 = sub_1C96A4764();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  type metadata accessor for SyncedDataContextProvider();
  swift_allocObject();
  v21 = SyncedDataContextProvider.init(dataStorageURL:useTransientContext:)(v19, 0);
  sub_1C9469B6C(a6, &v35);
  v22 = type metadata accessor for CoherenceDataManager();
  v23 = swift_allocObject();
  v24 = sub_1C95F92F8(v21, &v35, v23);
  sub_1C9469B6C(a1, &v35);
  v25 = type metadata accessor for LocationDisplayContextReader();
  v26 = swift_allocObject();
  sub_1C94670AC(&v35, v26 + 16);
  v8[20] = v25;
  v8[21] = &protocol witness table for LocationDisplayContextReader;
  v8[17] = v26;
  sub_1C9469B6C(a1, &v35);
  sub_1C9469B6C(a5, v34);
  sub_1C9469B6C(a7, v33);
  v27 = type metadata accessor for SavedLocationsReader();
  v28 = swift_allocObject();
  v28[15] = v22;
  v28[16] = &protocol witness table for CoherenceDataManager;
  v28[12] = v24;
  sub_1C94670AC(&v35, (v28 + 2));
  sub_1C94670AC(v34, (v28 + 7));
  sub_1C94670AC(v33, (v28 + 17));
  v36 = v27;
  v37 = &protocol witness table for SavedLocationsReader;
  *&v35 = v28;
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1C94670AC(&v35, (v8 + 2));
  return v8;
}

uint64_t SavedLocationFinder.find(by:)()
{
  OUTLINED_FUNCTION_18();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for SavedLocation();
  v0[5] = v4;
  OUTLINED_FUNCTION_7(v4);
  v0[6] = OUTLINED_FUNCTION_12_4();
  v5 = type metadata accessor for CurrentLocation();
  v0[7] = v5;
  OUTLINED_FUNCTION_7(v5);
  v0[8] = OUTLINED_FUNCTION_12_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  OUTLINED_FUNCTION_7(v6);
  v0[9] = OUTLINED_FUNCTION_12_4();
  v7 = type metadata accessor for Location();
  v0[10] = v7;
  OUTLINED_FUNCTION_7(v7);
  v0[11] = OUTLINED_FUNCTION_12_4();
  v8 = type metadata accessor for LocationModel(0);
  v0[12] = v8;
  v0[13] = *(v8 - 8);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1C95F7588;

  return sub_1C95F7AB8();
}

{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5928);
  OUTLINED_FUNCTION_7(v4);
  v1[5] = OUTLINED_FUNCTION_12_4();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_1C95F8BD8;

  return sub_1C95F7AB8();
}

uint64_t sub_1C95F7588()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C95F768C()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[13];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = v0[11];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[14];
      v6 = v0[15];
      sub_1C949E0B0(v5 + *(v4 + 72) * v3, v6, type metadata accessor for LocationModel);
      sub_1C949E0B0(v6, v7, type metadata accessor for LocationModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = v0[6];
        OUTLINED_FUNCTION_1_51();
        sub_1C94A81D4(v9, v8, v10);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1C95F97C0(v0[6], type metadata accessor for SavedLocation);
          v11 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_0_80();
          sub_1C94A81D4(v16, v17, v18);
          v11 = 0;
        }

        __swift_storeEnumTagSinglePayload(v0[9], v11, 1, v0[10]);
        v19 = &qword_1EC3A5948;
      }

      else
      {
        sub_1C94A81D4(v0[14], v0[8], type metadata accessor for CurrentLocation);
        if (swift_getEnumCaseMultiPayload() >= 3)
        {
          v15 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_0_80();
          sub_1C94A81D4(v12, v13, v14);
          v15 = 0;
        }

        __swift_storeEnumTagSinglePayload(v0[9], v15, 1, v0[10]);
        v19 = &qword_1EC3A5940;
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v19);
      v22 = v0[9];
      v21 = v0[10];
      sub_1C95F97C0(v0[14] + *(v20 + 48), type metadata accessor for LocationModelData);
      if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
      {
        sub_1C9470AFC(v0[9], &qword_1EC3A5450);
      }

      else
      {
        v23 = v0[11];
        v25 = v0[3];
        v24 = v0[4];
        OUTLINED_FUNCTION_0_80();
        sub_1C94A81D4(v26, v23, v27);
        if (*v23 == v25 && *(v35 + 8) == v24)
        {
          OUTLINED_FUNCTION_4_48();
LABEL_23:
          v31 = v0[15];
          v32 = v0[16];
          v33 = v0[2];

          sub_1C94A81D4(v31, v32, type metadata accessor for LocationModel);
          sub_1C94A81D4(v32, v33, type metadata accessor for LocationModel);
          v30 = 0;
          goto LABEL_24;
        }

        v29 = sub_1C96A7DE4();
        OUTLINED_FUNCTION_4_48();
        if (v29)
        {
          goto LABEL_23;
        }
      }

      ++v3;
      sub_1C95F97C0(v0[15], type metadata accessor for LocationModel);
      if (v2 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v30 = 1;
LABEL_24:
    __swift_storeEnumTagSinglePayload(v0[2], v30, 1, v0[12]);

    OUTLINED_FUNCTION_17();

    v34();
  }
}

uint64_t sub_1C95F7A0C()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C95F7AB8()
{
  v1[22] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0);
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for WeatherCoalescedLocationResult();
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v1[27] = swift_task_alloc();
  v2 = sub_1C96A4DF4();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  v1[32] = swift_task_alloc();
  v3 = type metadata accessor for SavedLocation();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v4 = type metadata accessor for LocationDataModel();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95F7D64, 0, 0);
}

uint64_t sub_1C95F7D64()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 176) + 96), *(*(v0 + 176) + 120));
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C95F7E6C()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C95F803C()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 176) + 16), *(*(v0 + 176) + 40));
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C95F8144()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = v3;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C95F8234()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 176) + 136), *(*(v0 + 176) + 160));
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C95F833C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *(v1 + 160) = v0;
  *(v1 + 168) = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_7_11();
  *v5 = v4;

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C95F8428()
{
  v81 = v0;
  if (qword_1EDB77E58 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77E60);
  OUTLINED_FUNCTION_25_2();
  sub_1C96A53C4();
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[42];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v80 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    v7 = type metadata accessor for LocationOfInterest();
    v8 = MEMORY[0x1CCA8CC40](v4, v7);
    v10 = sub_1C9484164(v8, v9, &v80);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_1C945E000, v2, v3, "SavedLocationFinder locationsOfInterest = %{private,mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
  }

  v11 = v0[44];
  if (v11)
  {
    v78 = *(v11 + 16);
    if (v78)
    {
      v12 = v0[38];
      v77 = v0[37];
      v79 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v13 = MEMORY[0x1E69E7CC0];
      v68 = (v0[29] + 32);
      v76 = *(v12 + 72);
      do
      {
        v14 = v0[39];
        v15 = v0[40];
        v17 = v0[27];
        v16 = v0[28];
        sub_1C949E0B0(v79, v15, type metadata accessor for LocationDataModel);
        sub_1C94A81D4(v15, v14, type metadata accessor for LocationDataModel);
        sub_1C95515E0(v14 + v77[5], v17);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v16);
        v19 = v0[39];
        v20 = v0[32];
        if (EnumTagSinglePayload == 1)
        {
          v21 = v0[27];
          OUTLINED_FUNCTION_5_37();
          sub_1C9470AFC(v21, &unk_1EC3A5F60);
          v22 = type metadata accessor for Location();
          v23 = v20;
          v24 = 1;
        }

        else
        {
          v26 = v0[30];
          v25 = v0[31];
          v27 = v0[28];
          v28 = v0[26];
          v74 = v28;
          v75 = v13;
          v29 = *v68;
          (*v68)(v25, v0[27], v27);
          v70 = v29;
          memcpy(v0 + 2, v19, 0x48uLL);
          v29(v26, v25, v27);
          v30 = sub_1C96A4A54();
          __swift_storeEnumTagSinglePayload(v28, 1, 1, v30);
          v31 = &v19[v77[8]];
          v32 = *v31;
          v33 = *(v31 + 1);
          v34 = &v19[v77[9]];
          v35 = *(v34 + 1);
          v72 = v32;
          v73 = *v34;
          v36 = &v19[v77[10]];
          v37 = *(v36 + 1);
          v69 = *v36;
          v38 = &v19[v77[11]];
          v39 = *(v38 + 1);
          v71 = *v38;
          sub_1C95087DC((v0 + 2), (v0 + 11));
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          OUTLINED_FUNCTION_5_37();
          v22 = type metadata accessor for Location();
          *&v20[v22[11]] = 0;
          memcpy(v20, v0 + 2, 0x48uLL);
          v13 = v75;
          v70(&v20[v22[5]], v26, v27);
          sub_1C95F9818(v74, &v20[v22[6]], &unk_1EC3A5430);
          v40 = &v20[v22[7]];
          *v40 = v72;
          *(v40 + 1) = v33;
          v41 = &v20[v22[8]];
          *v41 = v73;
          *(v41 + 1) = v35;
          v42 = &v20[v22[9]];
          *v42 = v69;
          *(v42 + 1) = v37;
          v43 = &v20[v22[10]];
          *v43 = v71;
          *(v43 + 1) = v39;
          v23 = v20;
          v24 = 0;
        }

        __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
        v44 = v0[32];
        type metadata accessor for Location();
        if (__swift_getEnumTagSinglePayload(v44, 1, v22) == 1)
        {
          sub_1C9470AFC(v44, &qword_1EC3A5450);
        }

        else
        {
          v46 = v0[35];
          v45 = v0[36];
          OUTLINED_FUNCTION_0_80();
          sub_1C94A81D4(v44, v46, v47);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_51();
          sub_1C94A81D4(v46, v45, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C94FBAC0();
            v13 = v53;
          }

          v49 = *(v13 + 16);
          if (v49 >= *(v13 + 24) >> 1)
          {
            sub_1C94FBAC0();
            v13 = v54;
          }

          *(v13 + 16) = v49 + 1;
          OUTLINED_FUNCTION_1_51();
          sub_1C94A81D4(v50, v51, v52);
        }

        --v78;
        v79 += v76;
      }

      while (v78);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v55 = v13;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v56 = v0[42];
  v58 = v0[24];
  v57 = v0[25];
  v59 = v0[22];
  v60 = v0[23];
  v61 = v0[21];
  v62 = v59[25];
  v63 = v59[26];
  __swift_project_boxed_opaque_existential_1(v59 + 22, v62);
  v64 = type metadata accessor for CurrentLocation();
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v64);
  (*(v63 + 16))(v60, v55, v56, v61, v62, v63);

  sub_1C9470AFC(v60, &qword_1EC3A58E0);
  v65 = *(v57 + *(v58 + 24));
  sub_1C96A53C4();
  sub_1C95F97C0(v57, type metadata accessor for WeatherCoalescedLocationResult);

  v66 = v0[1];

  return v66(v65);
}

uint64_t sub_1C95F8BD8(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_7_11();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_7_11();
  *v8 = v7;
  *(v5 + 56) = v1;

  if (!v1)
  {
    *(v5 + 64) = a1;
  }

  OUTLINED_FUNCTION_8_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C95F8CF0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *(swift_task_alloc() + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  sub_1C95F6D74(sub_1C95F94E0, v1, v2);

  v3 = type metadata accessor for LocationModel(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9470AFC(v5, &qword_1EC3A5928);
    v6 = 1;
  }

  else
  {
    sub_1C94A81D4(v5, *(v0 + 16), type metadata accessor for LocationModel);
    v6 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 16), v6, 1, v3);

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_1C95F8E2C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C95F8E88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.location.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C9470AFC(v7, &qword_1EC3A5450);
    v11 = 0;
  }

  else
  {
    sub_1C94A81D4(v7, v10, type metadata accessor for Location);
    v12 = a2[30];
    v13 = a2[31];
    __swift_project_boxed_opaque_existential_1(a2 + 27, v12);
    v11 = (*(v13 + 8))(*(a3 + 16), *(a3 + 24), *(v10 + 2), *(v10 + 3), v12, v13, *(a3 + 32), *(a3 + 40), *(v10 + 4), *(v10 + 5));
    sub_1C95F97C0(v10, type metadata accessor for Location);
  }

  return v11 & 1;
}

uint64_t SavedLocationFinder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  return v0;
}

uint64_t SavedLocationFinder.__deallocating_deinit()
{
  SavedLocationFinder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 296, 7);
}

uint64_t sub_1C95F90B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95F9878;

  return SavedLocationFinder.find(by:)();
}

uint64_t sub_1C95F9168()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95F9214;

  return SavedLocationFinder.find(by:)();
}

uint64_t sub_1C95F9214()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C95F92F8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v6);
  v12 = type metadata accessor for SyncedDataContextProvider();
  v13 = &protocol witness table for SyncedDataContextProvider;
  *&v11 = a1;
  v7 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_cachedSyncedData;
  v8 = type metadata accessor for SyncedData();
  __swift_storeEnumTagSinglePayload(a3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC11WeatherCore20CoherenceDataManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C946AA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C946C9C4();
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  *(a3 + v9) = sub_1C96A5124();
  sub_1C94670AC(&v11, a3 + 16);
  sub_1C94670AC(a2, a3 + 56);
  return a3;
}

uint64_t dispatch thunk of SavedLocationFinderType.find(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C95F9878;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SavedLocationFinderType.find(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_3();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C95F9214;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1C95F97C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C95F9818(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C95F987C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69E6158];
  v55 = MEMORY[0x1E69E6158];
  *&v53 = v10;
  *(&v53 + 1) = v11;
  OUTLINED_FUNCTION_0_81();
  sub_1C96A53C4();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_4_49();
  sub_1C950B354();
  v13 = *(v1 + 32);
  v14 = MEMORY[0x1E69E63B0];
  v55 = MEMORY[0x1E69E63B0];
  *&v53 = v13;
  OUTLINED_FUNCTION_0_81();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_4_49();
  sub_1C950B354();
  v15 = *(v1 + 40);
  v55 = v14;
  *&v53 = v15;
  OUTLINED_FUNCTION_0_81();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_4_49();
  sub_1C950B354();
  v16 = v50;
  v17 = type metadata accessor for LocationDataModel();
  sub_1C95FAE40(v1 + v17[5], v9, &unk_1EC3A5F60);
  v18 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    sub_1C94AC78C(v9, &unk_1EC3A5F60);
    OUTLINED_FUNCTION_6_43();
    v19 = (v1 + v17[6]);
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v22 = MEMORY[0x1E69E6158];
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v54 = 0;
    }

    *&v53 = v21;
    *(&v53 + 1) = v20;
    v55 = v22;
    sub_1C96A53C4();
  }

  else
  {
    v23 = sub_1C96A4D74();
    v52 = v12;
    *&v51 = v23;
    *(&v51 + 1) = v24;
    OUTLINED_FUNCTION_8_1();
    (*(v25 + 8))(v9, v18);
    sub_1C946306C(&v51, &v53);
    v22 = v55;
  }

  if (v22)
  {
    OUTLINED_FUNCTION_14_26();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_52();
    sub_1C950B354();
    v16 = v50;
  }

  else
  {
    sub_1C94AC78C(&v53, &qword_1EC3A4A90);
    sub_1C9476F90(0x656E6F5A656D6954, 0xE800000000000000);
    if (v26)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_18_25();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_3_40();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_15_27();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_22_20();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v51, &qword_1EC3A4A90);
  }

  sub_1C95FAE40(v1 + v17[7], v5, &unk_1EC3A5430);
  v27 = sub_1C96A4A54();
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    sub_1C94AC78C(v5, &unk_1EC3A5430);
    v28 = sub_1C9476F90(0x726665527473614CLL, 0xEF65746144687365);
    if (v29)
    {
      v30 = v28;
      swift_isUniquelyReferenced_nonNull_native();
      *&v51 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      sub_1C96A7B84();
      v16 = v51;

      sub_1C946306C((*(v16 + 56) + 32 * v30), &v53);
      sub_1C96A7B94();
    }

    else
    {
      OUTLINED_FUNCTION_7_35();
    }

    sub_1C94AC78C(&v53, &qword_1EC3A4A90);
  }

  else
  {
    v55 = v27;
    __swift_allocate_boxed_opaque_existential_1(&v53);
    OUTLINED_FUNCTION_8_1();
    (*(v31 + 32))();
    OUTLINED_FUNCTION_14_26();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_52();
    sub_1C950B354();
    v16 = v50;
  }

  v32 = *(v1 + v17[8] + 8);
  if (v32)
  {
    OUTLINED_FUNCTION_26_11();
    *&v53 = v33;
    *(&v53 + 1) = v32;
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_52();
    sub_1C950B354();
    v16 = v50;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v53, &qword_1EC3A4A90);
    sub_1C9476F90(0x6954686372616553, 0xEB00000000656C74);
    if (v34)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_18_25();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_3_40();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_15_27();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_22_20();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v51, &qword_1EC3A4A90);
  }

  v35 = *(v1 + v17[9] + 8);
  if (v35)
  {
    OUTLINED_FUNCTION_26_11();
    *&v53 = v36;
    *(&v53 + 1) = v35;
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_52();
    sub_1C950B354();
    v16 = v50;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v53, &qword_1EC3A4A90);
    sub_1C9476F90(0x7553686372616553, 0xEE00656C74697462);
    if (v37)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_18_25();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_3_40();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_15_27();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_22_20();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v51, &qword_1EC3A4A90);
  }

  v38 = *(v1 + v17[10] + 8);
  if (v38)
  {
    OUTLINED_FUNCTION_26_11();
    *&v53 = v39;
    *(&v53 + 1) = v38;
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    v50 = v16;
    sub_1C950B354();
    v16 = v50;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v53, &qword_1EC3A4A90);
    v40 = sub_1C9476F90(0x4E65736963657250, 0xEB00000000656D61);
    if (v41)
    {
      v42 = v40;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_8_35();
      sub_1C96A7B84();
      v16 = v50;

      sub_1C946306C((*(v16 + 56) + 32 * v42), &v51);
      sub_1C96A7B94();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v51, &qword_1EC3A4A90);
  }

  v43 = *(v1 + v17[11] + 8);
  if (v43)
  {
    OUTLINED_FUNCTION_26_11();
    *&v53 = v44;
    *(&v53 + 1) = v43;
    OUTLINED_FUNCTION_14_26();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_52();
    sub_1C950B354();
    return v50;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v53, &qword_1EC3A4A90);
    v45 = sub_1C9476F90(0x7261646E6F636573, 0xED0000656D614E79);
    if (v46)
    {
      v47 = v45;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_8_35();
      sub_1C96A7B84();
      v16 = v50;

      sub_1C946306C((*(v16 + 56) + 32 * v47), &v51);
      sub_1C96A7B94();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v51, &qword_1EC3A4A90);
  }

  return v16;
}

void *sub_1C95FA1D4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  if (a1)
  {
    v17 = a1;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
  }

  v18 = v4[2];
  v19 = v4[3];
  v20 = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69E6158];
  *&v66 = v18;
  *(&v66 + 1) = v19;
  OUTLINED_FUNCTION_0_81();
  sub_1C96A53C4();
  sub_1C96A53C4();
  swift_isUniquelyReferenced_nonNull_native();
  v63 = v17;
  OUTLINED_FUNCTION_4_49();
  sub_1C950B354();
  v21 = v4[4];
  v22 = MEMORY[0x1E69E63B0];
  v68 = MEMORY[0x1E69E63B0];
  *&v66 = v21;
  OUTLINED_FUNCTION_0_81();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_4_49();
  sub_1C950B354();
  v23 = v4[5];
  v68 = v22;
  *&v66 = v23;
  OUTLINED_FUNCTION_0_81();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_4_49();
  sub_1C950B354();
  v24 = v63;
  v25 = type metadata accessor for LocationDataModel();
  v26 = *(v25 + 20);
  sub_1C95FAE40(v4 + v26, v16, &unk_1EC3A5F60);
  v27 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_13(v16);
  if (v28)
  {
    sub_1C94AC78C(v16, &unk_1EC3A5F60);
    OUTLINED_FUNCTION_6_43();
    sub_1C95FAE40(v4 + v26, v13, &unk_1EC3A5F60);
    OUTLINED_FUNCTION_13(v13);
    if (v28)
    {
      sub_1C94AC78C(v13, &unk_1EC3A5F60);
      OUTLINED_FUNCTION_7_35();
    }

    else
    {
      v32 = sub_1C96A4D74();
      v68 = MEMORY[0x1E69E6158];
      *&v66 = v32;
      *(&v66 + 1) = v33;
      OUTLINED_FUNCTION_8_1();
      (*(v34 + 8))(v13, v27);
    }

    if (v65)
    {
      sub_1C94AC78C(&v64, &qword_1EC3A4A90);
    }
  }

  else
  {
    v29 = sub_1C96A4D74();
    v65 = v20;
    *&v64 = v29;
    *(&v64 + 1) = v30;
    OUTLINED_FUNCTION_8_1();
    (*(v31 + 8))(v16, v27);
    sub_1C946306C(&v64, &v66);
  }

  if (v68)
  {
    OUTLINED_FUNCTION_14_26();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_54();
    sub_1C950B354();
    v24 = v63;
  }

  else
  {
    sub_1C94AC78C(&v66, &qword_1EC3A4A90);
    sub_1C9476F90(0x656E6F5A656D6954, 0xE800000000000000);
    if (v35)
    {
      OUTLINED_FUNCTION_21_22();
      v63 = v24;
      v24 = v24[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_8_35();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_10_31();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v64, &qword_1EC3A4A90);
  }

  sub_1C95FAE40(v4 + *(v25 + 28), v9, &unk_1EC3A5430);
  v36 = sub_1C96A4A54();
  OUTLINED_FUNCTION_13(v9);
  if (v28)
  {
    sub_1C94AC78C(v9, &unk_1EC3A5430);
    v40 = v24;
    sub_1C9476F90(0xD000000000000019, 0x80000001C96D4040);
    if (v37)
    {
      OUTLINED_FUNCTION_21_22();
      *&v64 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      v40 = &v64;
      sub_1C96A7B84();
      v24 = v64;

      sub_1C946306C((v24[7] + 32 * v36), &v66);
      OUTLINED_FUNCTION_10_31();
    }

    else
    {
      OUTLINED_FUNCTION_7_35();
    }

    v41 = MEMORY[0x1E69E6158];
    sub_1C94AC78C(&v66, &qword_1EC3A4A90);
  }

  else
  {
    sub_1C96A49E4();
    v68 = MEMORY[0x1E69E63B0];
    *&v66 = v38;
    OUTLINED_FUNCTION_8_1();
    (*(v39 + 8))(v9, v36);
    OUTLINED_FUNCTION_14_26();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_54();
    v40 = &v63;
    sub_1C950B354();
    v24 = v63;
    v41 = MEMORY[0x1E69E6158];
  }

  OUTLINED_FUNCTION_28_14();
  if (v40)
  {
    v43 = *v42;
    v68 = v41;
    *&v66 = v43;
    *(&v66 + 1) = v40;
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_24_16();
    v24 = v63;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v66, &qword_1EC3A4A90);
    OUTLINED_FUNCTION_20_21();
    if (v44)
    {
      OUTLINED_FUNCTION_21_22();
      OUTLINED_FUNCTION_17_27();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_3_40();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_10_31();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v64, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_28_14();
  if (v40)
  {
    v46 = *v45;
    v47 = MEMORY[0x1E69E6158];
    v48 = v40;
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v47 = 0;
    v67 = 0;
  }

  *&v66 = v46;
  *(&v66 + 1) = v48;
  v68 = v47;
  if (v40)
  {
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_54();
    v49 = &v63;
    sub_1C950B354();
    v50 = v62;
    v24 = v63;
  }

  else
  {
    sub_1C96A53C4();
    sub_1C94AC78C(&v66, &qword_1EC3A4A90);
    v49 = v24;
    sub_1C9476F90(0xD000000000000012, 0x80000001C96D4060);
    if (v51)
    {
      OUTLINED_FUNCTION_21_22();
      OUTLINED_FUNCTION_17_27();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_3_40();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_10_31();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    v50 = v62;
    sub_1C94AC78C(&v64, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_28_14();
  if (v49)
  {
    v53 = *v52;
    v68 = v41;
    *&v66 = v53;
    *(&v66 + 1) = v49;
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_24_16();
    v24 = v63;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v66, &qword_1EC3A4A90);
    OUTLINED_FUNCTION_20_21();
    if (v54)
    {
      OUTLINED_FUNCTION_21_22();
      OUTLINED_FUNCTION_17_27();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_3_40();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_10_31();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v64, &qword_1EC3A4A90);
  }

  OUTLINED_FUNCTION_28_14();
  if (v49)
  {
    v56 = *v55;
    v68 = v41;
    *&v66 = v56;
    *(&v66 + 1) = v49;
    OUTLINED_FUNCTION_0_81();
    sub_1C96A53C4();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_24_16();
    v24 = v63;
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    sub_1C94AC78C(&v66, &qword_1EC3A4A90);
    OUTLINED_FUNCTION_20_21();
    if (v57)
    {
      OUTLINED_FUNCTION_21_22();
      v63 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
      OUTLINED_FUNCTION_8_35();
      sub_1C96A7B84();
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_10_31();
    }

    else
    {
      OUTLINED_FUNCTION_6_43();
    }

    sub_1C94AC78C(&v64, &qword_1EC3A4A90);
  }

  if (v50 >= 2)
  {
    v68 = v41;
    *&v66 = v61;
    *(&v66 + 1) = v50;
    v58 = OUTLINED_FUNCTION_0_81();
    sub_1C94DDD40(v58, v50);
    swift_isUniquelyReferenced_nonNull_native();
    v63 = v24;
    OUTLINED_FUNCTION_4_49();
    sub_1C950B354();
    return v63;
  }

  return v24;
}

double sub_1C95FAB70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C9476F90(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_29_9();
    sub_1C946306C((*(v6 + 56) + 32 * v9), a3);
    sub_1C96A7B94();
    *v4 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1C95FAC2C@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C950B090();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FB0);
    OUTLINED_FUNCTION_16_27();
    v6 = *(v10 + 48);
    v7 = sub_1C96A7B74();
    OUTLINED_FUNCTION_8_1();
    (*(v8 + 8))(v6 + *(v8 + 72) * v5, v7);
    sub_1C946306C((*(v10 + 56) + 32 * v5), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E40);
    sub_1C96A7B94();
    *v1 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1C95FAD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C9476F90(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4F80);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_29_9();
    v10 = *(v6 + 56);
    v11 = type metadata accessor for Location();
    OUTLINED_FUNCTION_8_1();
    sub_1C94898C4(v10 + *(v12 + 72) * v9, a3);
    sub_1C96A7B94();
    *v4 = v6;
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v15 = type metadata accessor for Location();
    v13 = a3;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_1C95FAE40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_8_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C95FAEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E58);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v16 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E60);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E68);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  return v16;
}

uint64_t sub_1C95FB13C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v55 - v7;
  v57 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E58);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v20 = OUTLINED_FUNCTION_7(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v29 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E60);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E68);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v45 = a1;
  *&v64[0] = a1;
  v46 = v56;
  *(&v64[0] + 1) = v56;
  sub_1C96A3D04();
  sub_1C96A53C4();
  v55 = v29;
  sub_1C96A6364();

  v47 = v59;
  v48 = v58[1];
  v61 = *v58;
  v62 = v48;
  v49 = *(v9 + 16);
  v50 = v12;
  v51 = v12;
  v52 = v57;
  v49(v51, v59, v57);
  sub_1C95B4B68(&v61, v45, v46, v50, v64);
  v61 = v64[0];
  v62 = v64[1];
  v63 = v64[2];
  sub_1C96A6364();

  v53 = v60;
  v49(v60, v47, v52);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
  sub_1C96A6364();

  (*(v9 + 8))(v47, v52);
  return v55;
}

uint64_t sub_1C95FB5C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5279616C70736964 && a2 == 0xED00006E6F696765;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

      if (v8)
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

uint64_t sub_1C95FB6D0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x5279616C70736964;
  }

  return 0x73657269707865;
}

uint64_t sub_1C95FB728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E88);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95FC254();
  sub_1C96A7F54();
  v23 = a2;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v14, v15);
  OUTLINED_FUNCTION_8_5();
  sub_1C96A7D74();
  if (!v4)
  {
    v23 = v21;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E68);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v16, v17);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
    v23 = a4;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v18, v19);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1C95FB95C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E70);
  OUTLINED_FUNCTION_1();
  v44[1] = v3;
  v44[2] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44[4] = v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E58);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v44[3] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E60);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E68);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  v30 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v39 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1C95FC254();
  v40 = v45;
  sub_1C96A7F44();
  if (v40)
  {
  }

  else
  {
    v45 = v30;
    v47 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_11_9();
    sub_1C96A7CB4();

    v21 = v48;
    v47 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A6E80, &qword_1EC3A6E68);
    OUTLINED_FUNCTION_11_9();
    sub_1C96A7CB4();

    v47 = 2;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_11_9();
    sub_1C96A7CB4();
    v42 = OUTLINED_FUNCTION_5_39();
    v43(v42);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return v21;
}

uint64_t sub_1C95FBE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95FB5C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95FBEB8(uint64_t a1)
{
  v2 = sub_1C95FC254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95FBEF4(uint64_t a1)
{
  v2 = sub_1C95FC254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95FBF4C()
{
  v0 = *a002_2;
  sub_1C96A53C4();
  return v0;
}

uint64_t sub_1C95FBF84(uint64_t a1)
{
  v2 = sub_1C95FC200();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95FBFD0(uint64_t a1)
{
  v2 = sub_1C95FC200();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95FC01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95FC200();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95FC080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C95FAEA4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1C95FC0AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C95FB95C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C95FC0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95FC200();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95FC148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95FC200();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95FC19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95FC200();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1C95FC200()
{
  result = qword_1EDB796C0;
  if (!qword_1EDB796C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796C0);
  }

  return result;
}

unint64_t sub_1C95FC254()
{
  result = qword_1EC3A6E78;
  if (!qword_1EC3A6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6E78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationMetadataEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C95FC388()
{
  result = qword_1EC3A6E98;
  if (!qword_1EC3A6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6E98);
  }

  return result;
}

unint64_t sub_1C95FC3E0()
{
  result = qword_1EC3A6EA0;
  if (!qword_1EC3A6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6EA0);
  }

  return result;
}

unint64_t sub_1C95FC438()
{
  result = qword_1EC3A6EA8;
  if (!qword_1EC3A6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6EA8);
  }

  return result;
}

uint64_t Locale.Language.isKorean.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 28523 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

uint64_t Locale.Language.isCJK.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  sub_1C96A4BD4();
  v4 = sub_1C96A4AE4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1C94BE204(v3, &qword_1EC3A6140);
  }

  else
  {
    v6 = sub_1C96A4AC4();
    v8 = v7;
    (*(*(v4 - 8) + 8))(v3, v4);
    if (v6 == 26746 && v8 == 0xE200000000000000)
    {

      goto LABEL_12;
    }

    v10 = OUTLINED_FUNCTION_10_32();

    if (v10)
    {
      goto LABEL_12;
    }
  }

  if (Locale.Language.isJapanese.getter())
  {
LABEL_12:
    v5 = 1;
    return v5 & 1;
  }

  v5 = Locale.Language.isKorean.getter();
  return v5 & 1;
}

uint64_t Locale.Language.isHebrew.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 25960 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

uint64_t Locale.Language.languageContainsLowCharacters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_12_28();
  v2 = v1;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6EB0);
  v6 = *(v0 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AE890;
  v9 = v8 + v7;
  sub_1C96A4AD4();
  sub_1C96A4AE4();
  OUTLINED_FUNCTION_4_50(v9);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 2 * v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 3 * v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 4 * v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 5 * v6);
  sub_1C96A4AD4();
  OUTLINED_FUNCTION_4_50(v9 + 6 * v6);
  sub_1C96A4BD4();
  v11[2] = v5;
  LOBYTE(v9) = OUTLINED_FUNCTION_13_34();
  swift_setDeallocating();
  sub_1C94CFAF0();
  sub_1C94BE204(v5, &qword_1EC3A6140);
  return v9 & 1;
}

uint64_t Locale.Language.prohibitsFullTemperatureScale.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 29281 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

id Locale.temperatureUnit.getter()
{
  if (qword_1EDB80318 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  return UnitManager.temperature(locale:)();
}

uint64_t sub_1C95FCB68(uint64_t (*a1)(uint64_t))
{
  if (qword_1EDB80318 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  return a1(v1);
}

uint64_t Locale.usesMetricSystemForVisibility.getter()
{
  v0 = sub_1C96A4B34();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C96A4B44();
  sub_1C96A4B24();
  v7 = MEMORY[0x1CCA8A4A0](v6, v3);
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void static Locale.setPreferredTemperatureUnit(_:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 celsius];
  v4 = sub_1C94CF430();
  v5 = sub_1C96A78B4();

  if (v5 & 1) != 0 || (v6 = [v2 fahrenheit], v7 = sub_1C96A78B4(), v6, (v7))
  {
    if (qword_1EDB80318 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v11 = v5 & 1;
    UnitManager.setPreferredTemperatureUnit(_:)(&v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C96AA1C0;
    *(v8 + 56) = v4;
    *(v8 + 64) = sub_1C94CFAA8(&qword_1EC3A6EB8, sub_1C94CF430);
    *(v8 + 32) = a1;
    v9 = a1;
    MEMORY[0x1CCA8AC90]("Setting the preferred temperature unit to %s is unsupported", v10);
  }
}

uint64_t sub_1C95FCE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C96A7DE4() & 1;
  }
}

uint64_t PrivacySampler.__allocating_init(saltProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94924FC(a1, v2 + 16);
  return v2;
}

uint64_t PrivacySampler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C95FCF98()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6EC8);
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_1EDB80028);
  (*(v9 + 16))(v13, v14, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6ED8);
  *(swift_allocObject() + 16) = xmmword_1C96BA7C0;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  sub_1C95FD420();
  result = sub_1C96A4F54();
  qword_1EDB7AA30 = result;
  return result;
}

_BYTE *sub_1C95FD374(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C95FD420()
{
  result = qword_1EDB79698;
  if (!qword_1EDB79698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB79698);
  }

  return result;
}

uint64_t sub_1C95FD478()
{
  v0 = sub_1C96A7754();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C96A7724();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C96A65E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C94A9950();
  sub_1C96A65D4();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1C94BA40C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C94BA464();
  sub_1C96A79E4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1C96A7784();
  qword_1EDB77CE8 = result;
  return result;
}

uint64_t AppConfigurationLocationCoalescenceOptionsProvider.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94670AC(a1, v2 + 16);
  return v2;
}

void AppConfigurationLocationCoalescenceOptionsProvider.highAccuracyMatchHomeWorkDistanceThreshold.getter()
{
  v0 = type metadata accessor for LocationsConfiguration();
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_54(v2, v3);
  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_2_55();
}

uint64_t AppConfigurationLocationCoalescenceOptionsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

double sub_1C95FD894()
{
  result = 5000.0;
  *(v0 + 16) = xmmword_1C96BBC90;
  *(v0 + 32) = xmmword_1C96BBCA0;
  return result;
}

uint64_t LocationDisplayContext.init(syncedLocationDisplayContext:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  sub_1C96A66E4();
  result = sub_1C95FD994(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1C95FD994(uint64_t a1)
{
  v2 = type metadata accessor for SyncedLocationDisplayContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C95FDA08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001C96D43E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95FDAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95FDA08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C95FDAD4(uint64_t a1)
{
  v2 = sub_1C95FDC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95FDB10(uint64_t a1)
{
  v2 = sub_1C95FDC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationDisplayContext.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6EE0);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95FDC74();
  sub_1C96A7F54();
  sub_1C96A7D34();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1C95FDC74()
{
  result = qword_1EC3A6EE8;
  if (!qword_1EC3A6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6EE8);
  }

  return result;
}

uint64_t LocationDisplayContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6EF0);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95FDC74();
  sub_1C96A7F44();
  if (!v2)
  {
    v11 = sub_1C96A7C94();
    (*(v7 + 8))(v10, v3);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

_BYTE *storeEnumTagSinglePayload for LocationDisplayContext.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C95FDEF4()
{
  result = qword_1EC3A6EF8;
  if (!qword_1EC3A6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6EF8);
  }

  return result;
}

unint64_t sub_1C95FDF4C()
{
  result = qword_1EC3A6F00;
  if (!qword_1EC3A6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F00);
  }

  return result;
}

unint64_t sub_1C95FDFA4()
{
  result = qword_1EC3A6F08;
  if (!qword_1EC3A6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F08);
  }

  return result;
}

uint64_t Measurement<>.beaufortCategory(useExtendedScale:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58C0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - v6;
  v50 = type metadata accessor for Beaufort.Category.Range(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (a1)
  {
    v15 = 17;
  }

  else
  {
    v15 = 12;
  }

  if (qword_1EDB77D10 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB77D18;
  sub_1C96A4264();
  sub_1C96A4224();
  v18 = v17;
  v49 = v9[1];
  result = v49(v14, v8);
  v20 = v18 + 0.515;
  if (COERCE__INT64(fabs(v18 + 0.515)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = a2;
  v21 = v20;
  if (v15 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22 & ~(v22 >> 63);
  sub_1C95FE500();
  v24 = v16;
  sub_1C96A4214();
  if (v21 <= 0)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EC3A58C8);
    result = OUTLINED_FUNCTION_2_56();
    if (result)
    {
      goto LABEL_19;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 > v21)
  {
    v25 = v24;
    sub_1C96A4214();
    sub_1C955D018(&unk_1EDB7AAF8);
    result = sub_1C96A6F84();
    if (result)
    {
      v26 = v9[2];
      v44 = v23;
      v27 = v45;
      v26(v45, v11, v8);
      v28 = v46;
      v29 = v9[4];
      v29(v27 + *(v46 + 48), v14, v8);
      v30 = v47;
      sub_1C955D068(v27, v47);
      v31 = *(v28 + 48);
      v15 = v51;
      v29(v51, v30, v8);
      v32 = (v30 + v31);
      v33 = v49;
      v49(v32, v8);
      v34 = v27;
      v23 = v44;
      sub_1C95FE5A8(v34, v30);
      v35 = *(v28 + 48);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58A8);
      v29(v15 + *(v36 + 36), (v30 + v35), v8);
      v33(v30, v8);
LABEL_20:
      swift_storeEnumTagMultiPayload();
      v39 = static Beaufort.categoryName(level:)(v23);
      v41 = v40;
      v33(v11, v8);
      v42 = v48;
      v48[2] = v23;
      v43 = type metadata accessor for Beaufort.Category(0);
      result = sub_1C95FE544(v15, v42 + *(v43 + 24));
      *v42 = v39;
      v42[1] = v41;
      return result;
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_4_1(&qword_1EC3A58C8);
  result = OUTLINED_FUNCTION_2_56();
  if (result)
  {
LABEL_19:
    v37 = OUTLINED_FUNCTION_1_55();
    v38(v37);
    v33 = v49;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C95FE500()
{
  result = qword_1EDB80070;
  if (!qword_1EDB80070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB80070);
  }

  return result;
}

uint64_t sub_1C95FE544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Beaufort.Category.Range(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95FE5A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C95FE630@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Location();
  sub_1C96A4DE4();
  v3 = v2[6];
  v4 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  *(a1 + v2[11]) = 0;
  *a1 = 0x746E6572727563;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0x746E6572727563;
  *(a1 + 64) = 0xE700000000000000;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  result = 0.0;
  *(a1 + v2[10]) = xmmword_1C96BBFB0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemClock(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C95FE848()
{
  result = qword_1EC3A6F10;
  if (!qword_1EC3A6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F10);
  }

  return result;
}

uint64_t sub_1C95FE89C(uint64_t a1)
{
  v2 = sub_1C948D208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95FE8D8(uint64_t a1)
{
  v2 = sub_1C948D208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95FE914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AA1C0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5248);
  *(inited + 48) = a1;
  sub_1C96A53C4();
  sub_1C96A6F04();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6F20);
  a2[4] = sub_1C95FEB7C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1C96A53B4();
}

uint64_t sub_1C95FEA38(uint64_t a1)
{
  sub_1C96A7EE4();
  sub_1C95FEC34(v3, a1);
  return sub_1C96A7F24();
}

uint64_t sub_1C95FEA88()
{
  sub_1C95FEBE0();

  return sub_1C96A53A4();
}

uint64_t sub_1C95FEAE0()
{
  v1 = *v0;
  sub_1C96A7EE4();
  sub_1C95FEC34(v3, v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C95FEB28()
{
  result = qword_1EC3A6F18;
  if (!qword_1EC3A6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F18);
  }

  return result;
}

unint64_t sub_1C95FEB7C()
{
  result = qword_1EC3A6F28;
  if (!qword_1EC3A6F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F28);
  }

  return result;
}

unint64_t sub_1C95FEBE0()
{
  result = qword_1EC3A6F30;
  if (!qword_1EC3A6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F30);
  }

  return result;
}

uint64_t sub_1C95FEC34(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LocationOfInterest();
  v4 = *(v3 - 1);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1CCA8D880](v8, v5);
  if (v8)
  {
    v10 = v3[6];
    v11 = &v7[v3[5]];
    v12 = &v7[v3[7]];
    v13 = &v7[v3[8]];
    v14 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19[0] = *(v4 + 72);
    v19[1] = v10;
    do
    {
      sub_1C949B6DC(v14, v7);
      MEMORY[0x1CCA8D880](*v7);
      v15 = *(v11 + 4);
      v16 = *(v11 + 5);
      sub_1C96A7144();
      sub_1C96A7144();

      if (v15 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v15;
      }

      MEMORY[0x1CCA8D8A0](*&v17);
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      MEMORY[0x1CCA8D8A0](*&v18);
      sub_1C96A7F04();
      if (*(v12 + 1))
      {
        sub_1C96A7F04();
        sub_1C96A7144();
      }

      else
      {
        sub_1C96A7F04();
      }

      if (*(v13 + 1))
      {
        sub_1C96A7F04();
        sub_1C96A7144();
      }

      else
      {
        sub_1C96A7F04();
      }

      sub_1C96A7144();
      result = sub_1C94C5A14(v7);
      v14 += v19[0];
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_1C95FEE70()
{
  result = qword_1EC3A6F48;
  if (!qword_1EC3A6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F48);
  }

  return result;
}

uint64_t SyncedLocationKey.init(identifier:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  sub_1C96A66B4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  v9 = sub_1C96A6F04();

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return result;
}

WeatherCore::SyncedLocationKey::CodingKeys_optional __swiftcall SyncedLocationKey.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 25705 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_4_33() & 1) != 0))
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 1701667182 && object == 0xE400000000000000;
    if (v8 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x616E6964726F6F63 && object == 0xEA00000000006574;
      if (v9 || (OUTLINED_FUNCTION_4_33() & 1) != 0)
      {

        v7 = 2;
      }

      else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001C96D2560 == object)
      {

        v7 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_4_33();

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *v3 = v7;
  return result;
}

WeatherCore::SyncedLocationKey::CodingKeys_optional __swiftcall SyncedLocationKey.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  if ((intValue + 1) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x2010003u >> (8 * (intValue + 1));
  }

  *v1 = v2;
  return intValue;
}

unint64_t SyncedLocationKey.CodingKeys.stringValue.getter()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x616E6964726F6F63;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95FF1BC@<X0>(uint64_t *a1@<X8>)
{
  result = SyncedLocationKey.CodingKeys.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C95FF21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95FFD90();
  v5 = sub_1C95FF5E8();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t sub_1C95FF274(uint64_t a1)
{
  v2 = sub_1C95FF5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95FF2B0(uint64_t a1)
{
  v2 = sub_1C95FF5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 SyncedLocationKey.init(id:name:coordinate:additionalFields:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u64[1] = a4;
  result = *a5;
  a7[2] = *a5;
  a7[3].n128_u64[0] = a6;
  return result;
}

uint64_t SyncedLocationKey.init(location:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  sub_1C96A66B4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  v10 = sub_1C96A6F04();
  sub_1C94DBDDC(a1);

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return result;
}

uint64_t SyncedLocationKey.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6F50);
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = v1[2];
  v15[1] = v1[3];
  v15[2] = v9;
  v10 = v1[4];
  v11 = v1[5];
  v15[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95FF5E8();
  sub_1C96A7F54();
  LOBYTE(v16) = 0;
  v12 = v15[3];
  sub_1C96A7D24();
  if (!v12)
  {
    v13 = v15[0];
    LOBYTE(v16) = 1;
    sub_1C96A7D24();
    v16 = v10;
    v17 = v11;
    v18 = 2;
    sub_1C959FD78();
    sub_1C96A7D74();
    v16 = v13;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6218);
    sub_1C959DB1C();
    sub_1C96A7D74();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_1C95FF5E8()
{
  result = qword_1EC3A6F58;
  if (!qword_1EC3A6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F58);
  }

  return result;
}

uint64_t SyncedLocationKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6F60);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95FF5E8();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v6 = OUTLINED_FUNCTION_4_51();
  v14 = v7;
  LOBYTE(v15) = 1;
  v12 = OUTLINED_FUNCTION_4_51();
  v13 = v8;
  sub_1C95A0300();
  sub_1C96A7CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6218);
  sub_1C959DA60();
  sub_1C96A7CB4();
  v10 = OUTLINED_FUNCTION_0_84();
  v11(v10);
  *a2 = v6;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v15;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A53C4();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C95FF904@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  sub_1C96A53C4();
  sub_1C96A53C4();

  return sub_1C96A53C4();
}

uint64_t sub_1C95FF968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94947B4();
  v7 = sub_1C9494910();

  return MEMORY[0x1EEDF52D8](a1, a2, a3, v6, v7);
}

uint64_t sub_1C95FFA70(uint64_t a1)
{
  v2 = sub_1C96000E8();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

void static SyncedLocationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v12 || (sub_1C96A7DE4() & 1) != 0)
  {
    v13 = v2 == v7 && v3 == v8;
    if (v13 || (sub_1C96A7DE4()) && v5 == v10 && v4 == v9)
    {

      sub_1C94D6458(v6, v11);
    }
  }
}

uint64_t SyncedLocationKey.hash(into:)(const void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_1C96A7144();
  sub_1C96A7144();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1CCA8D8A0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1CCA8D8A0](*&v7);

  return sub_1C95A0A70(a1, v5);
}

uint64_t SyncedLocationKey.hashValue.getter()
{
  OUTLINED_FUNCTION_1_56();
  sub_1C96A7EE4();
  SyncedLocationKey.hash(into:)(&v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C95FFC9C()
{
  OUTLINED_FUNCTION_1_56();
  sub_1C96A7EE4();
  SyncedLocationKey.hash(into:)(&v1);
  return sub_1C96A7F24();
}

unint64_t sub_1C95FFCE0()
{
  result = qword_1EC3A6F68;
  if (!qword_1EC3A6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F68);
  }

  return result;
}

unint64_t sub_1C95FFD38()
{
  result = qword_1EC3A6F70;
  if (!qword_1EC3A6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F70);
  }

  return result;
}

unint64_t sub_1C95FFD90()
{
  result = qword_1EC3A6F78;
  if (!qword_1EC3A6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F78);
  }

  return result;
}

unint64_t sub_1C95FFDEC()
{
  result = qword_1EC3A6F80;
  if (!qword_1EC3A6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F80);
  }

  return result;
}

unint64_t sub_1C95FFE44()
{
  result = qword_1EC3A6F88;
  if (!qword_1EC3A6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F88);
  }

  return result;
}

unint64_t sub_1C95FFE9C()
{
  result = qword_1EC3A6F90;
  if (!qword_1EC3A6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6F90);
  }

  return result;
}

unint64_t sub_1C95FFF08()
{
  result = qword_1EC3A6FA0;
  if (!qword_1EC3A6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6FA0);
  }

  return result;
}

unint64_t sub_1C95FFF60()
{
  result = qword_1EC3A6FA8;
  if (!qword_1EC3A6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6FA8);
  }

  return result;
}

unint64_t sub_1C95FFFB8()
{
  result = qword_1EC3A6FB0;
  if (!qword_1EC3A6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6FB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncedLocationKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C96000E8()
{
  result = qword_1EC3A6FB8;
  if (!qword_1EC3A6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6FB8);
  }

  return result;
}

uint64_t sub_1C9600140@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34[-v8];
  v10 = type metadata accessor for UserIdentity();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB7D040);
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v13))
  {
    v14 = OUTLINED_FUNCTION_29();
    *v14 = 0;
    _os_log_impl(&dword_1C945E000, v12, v13, "Attempting app upgrade KVS migration", v14, 2u);
    OUTLINED_FUNCTION_26();
  }

  if ((sub_1C9600544(a1) & 1) == 0)
  {
    v19 = sub_1C96A6134();
    v20 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v20))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v21, v22, "App upgrade KVS migration not required - exiting");
      OUTLINED_FUNCTION_26();
    }

    v37 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
    OUTLINED_FUNCTION_23();
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C959DF94();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C9600814(v9);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v16))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v17, v18, "App upgrade KVS migration incomplete - unable to migrate user identity");
      OUTLINED_FUNCTION_26();
    }

    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
    OUTLINED_FUNCTION_23();
LABEL_13:
    result = sub_1C96A56A4();
    v24 = result;
    goto LABEL_17;
  }

  sub_1C956CAA4(v9, v3);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1C959DD5C(v3, v25, v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v35 = 1;
  (*(v28 + 16))(&v35, 0xD000000000000026, 0x80000001C96D4440, MEMORY[0x1E69E6530], v27, v28);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(v30 + 32))(v29, v30);
  v31 = sub_1C96A6134();
  v32 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v32))
  {
    v33 = OUTLINED_FUNCTION_29();
    *v33 = 0;
    _os_log_impl(&dword_1C945E000, v31, v32, "App upgrade KVS migration completed successfully", v33, 2u);
    OUTLINED_FUNCTION_26();
  }

  v34[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
  OUTLINED_FUNCTION_23();
  v24 = sub_1C96A56A4();
  result = sub_1C94B648C(v3);
LABEL_17:
  *a3 = v24;
  return result;
}

uint64_t sub_1C9600544(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(&v4, 0xD000000000000026, 0x80000001C96D4440, MEMORY[0x1E69E6530], v1, v2);
  return v5 & 1 | (v4 < 1);
}

uint64_t sub_1C96005D8()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C9600610(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return sub_1C96006B4(v7, v10, v4, v5, v8, v6, v9);
}

uint64_t sub_1C96006B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[3] = a4;
  v17[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v16[3] = a5;
  v16[4] = a7;
  v13 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
  sub_1C96A5554();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v15;
}

uint64_t sub_1C9600814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C960087C()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A6FC0);
  __swift_project_value_buffer(v6, qword_1EC3A6FC0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t (*static SetWindUnitIntent.title.modify())()
{
  if (qword_1EC3A4708 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A45C4();
  __swift_project_value_buffer(v0, qword_1EC3A6FC0);
  OUTLINED_FUNCTION_19_1();
  return j_j__swift_endAccess;
}

uint64_t sub_1C9600B90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4708, MEMORY[0x1E6968E10], qword_1EC3A6FC0);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9600C40(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4708, MEMORY[0x1E6968E10], qword_1EC3A6FC0);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9600CF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A6FD8);
  __swift_project_value_buffer(v10, qword_1EC3A6FD8);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3E54();
}

uint64_t sub_1C9600FDC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_1C9601070@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_1();
  return (*(v9 + 16))(a4, v8, v7);
}

uint64_t sub_1C9601154(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  v8 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static SetWindUnitIntent.description.modify())()
{
  if (qword_1EC3A4710 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3E34();
  __swift_project_value_buffer(v0, qword_1EC3A6FD8);
  OUTLINED_FUNCTION_19_1();
  return j__swift_endAccess;
}

uint64_t sub_1C96012C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4710, MEMORY[0x1E695A200], qword_1EC3A6FD8);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9601370(uint64_t a1)
{
  v2 = sub_1C9600FDC(&qword_1EC3A4710, MEMORY[0x1E695A200], qword_1EC3A6FD8);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9601428()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A6FF0);
  __swift_project_value_buffer(v0, qword_1EC3A6FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t static SetWindUnitIntent.supportedModes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4718 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3B84();
  __swift_project_value_buffer(v2, qword_1EC3A6FF0);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t static SetWindUnitIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7008);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7010);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C96017C4();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7020);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  return sub_1C96A3F14();
}

unint64_t sub_1C96017C4()
{
  result = qword_1EC3A7018;
  if (!qword_1EC3A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7018);
  }

  return result;
}

uint64_t sub_1C96018A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9601818();
  *a1 = result;
  return result;
}

uint64_t SetWindUnitIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v34 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C96A4C14();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v16 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = sub_1C96A6FF4();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = sub_1C96A45C4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7028);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EDB94A40);
  v28 = *(v18 + 16);
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v38 = 5;
  v29 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v34 + 104))(v35, *MEMORY[0x1E695A500], v36);
  sub_1C9603CDC();
  *v37 = sub_1C96A3C94();
  return sub_1C954DDE0();
}

uint64_t SetWindUnitIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C9601D50, 0, 0);
}

uint64_t sub_1C9601D50()
{
  v5 = v0;
  sub_1C96A3C64();
  v1 = *(v0 + 32);
  if (qword_1EDB80318 != -1)
  {
    swift_once();
  }

  v4 = v1;
  UnitManager.setPreferredWindSpeedUnit(_:)(&v4);
  sub_1C9488854();
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD00000000000002FLL, 0x80000001C96D4500);
  sub_1C96A3BB4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C9601E4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return SetWindUnitIntent.perform()(a1);
}

uint64_t sub_1C9601EE8(uint64_t a1)
{
  v2 = sub_1C96017C4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C9601F24()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  SetWindUnitIntent.init()(&v7);
  sub_1C96017C4();
  sub_1C96A3E24();
  sub_1C96A3E04();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3DF4();

  return v5;
}

uint64_t sub_1C9602068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70D0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70D8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C96017C4();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v29 = sub_1C9604024();
  v25 = a1;
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v24 = sub_1C96A3D34();
  v6 = v28;
  v26 = *(v27 + 8);
  v27 += 8;
  v26(v4, v28);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v23 = sub_1C96A3D34();
  v7 = v26;
  v26(v4, v6);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v7(v4, v28);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v8 = v26;
  v26(v4, v28);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v20 = sub_1C96A3D34();
  v8(v4, v28);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v19 = sub_1C96A3D34();
  v9 = v28;
  v26(v4, v28);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v18 = sub_1C96A3D34();
  v10 = v26;
  v26(v4, v9);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v11 = sub_1C96A3D34();
  v10(v4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C96B2AC0;
  v13 = v23;
  *(v12 + 32) = v24;
  *(v12 + 40) = v13;
  v14 = v21;
  *(v12 + 48) = v22;
  *(v12 + 56) = v14;
  v15 = v19;
  *(v12 + 64) = v20;
  *(v12 + 72) = v15;
  *(v12 + 80) = v18;
  *(v12 + 88) = v11;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C96028E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C960183C();
  *a1 = result;
  return result;
}

uint64_t sub_1C9602920()
{
  sub_1C96A3D04();
  sub_1C9601870();
}

uint64_t sub_1C9602980()
{
  v0 = sub_1C96A3D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1C9604024();
  sub_1C96A3D04();

  sub_1C96017C4();
  sub_1C96A3D84();
  v4 = sub_1C96A3D74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96AA1C0;
  *(v5 + 32) = v4;
  v6 = sub_1C96A3D64();

  return v6;
}

uint64_t sub_1C9602AF0()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  v4 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C96B20F0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1C96A3D44();

  return v6;
}

uint64_t sub_1C9602C0C()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  sub_1C96017C4();
  sub_1C96A3CE4();
  sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_17_2();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v0;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C9602D2C()
{
  v0 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96AA1C0;
  *(v1 + 32) = v0;
  v2 = sub_1C96A3D44();

  return v2;
}

uint64_t sub_1C9602DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3C3D90);
  __swift_project_value_buffer(v10, qword_1EC3C3D90);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C9603080()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v58 = v40 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = v40 - v3;
  v4 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C96A45A4();
  v7 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = sub_1C96A45C4();
  *&v43 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70C8);
  v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v53 = *(*(v12 - 8) + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96B20F0;
  v54 = v12;
  v46 = *(v12 + 48);
  v47 = v14;
  v48 = v14 + v13;
  *(v14 + v13) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v15 = v60;
  v16 = __swift_project_value_buffer(v60, qword_1EDB94A40);
  v56 = *(v7 + 16);
  v49 = v16;
  v56(v9, v16, v15);
  v55 = v6;
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v17 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v59);
  v52 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v52);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998);
  v19 = v15;
  v20 = *(v43 + 72);
  v44 = v18;
  v45 = v20;
  v42 = *(v43 + 80);
  v40[1] = (v42 + 32) & ~v42;
  v21 = swift_allocObject();
  v43 = xmmword_1C96AA1C0;
  *(v21 + 16) = xmmword_1C96AA1C0;
  sub_1C96A6FA4();
  v22 = v16;
  v50 = v7 + 16;
  v23 = v56;
  v56(v9, v22, v15);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v24 = v48;
  sub_1C96A3E94();
  v41 = (v24 + v53);
  v46 = *(v54 + 48);
  *v41 = 1;
  sub_1C96A6FA4();
  v25 = v49;
  v23(v9, v49, v19);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v59);
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v52);
  *(swift_allocObject() + 16) = v43;
  sub_1C96A6FA4();
  v26 = v60;
  v56(v9, v25, v60);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  v27 = v48;
  v28 = v53;
  v29 = v54;
  v30 = *(v54 + 48);
  v45 = (v48 + 2 * v53);
  v46 = v30;
  *v45 = 2;
  sub_1C96A6FA4();
  v40[0] = v9;
  v31 = v49;
  v32 = v56;
  v56(v9, v49, v26);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v59);
  v33 = v52;
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v52);
  sub_1C96A3EA4();
  v46 = *(v29 + 48);
  *(v27 + 3 * v28) = 3;
  sub_1C96A6FA4();
  v34 = v40[0];
  v32(v40[0], v31, v60);
  sub_1C96A4BC4();
  v35 = v34;
  sub_1C96A45D4();
  v36 = v51;
  v37 = v59;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v59);
  v38 = v58;
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v33);
  sub_1C96A3EA4();
  *(v27 + 4 * v53) = 4;
  sub_1C96A6FA4();
  v56(v35, v49, v60);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v52);
  sub_1C96A3EA4();
  sub_1C96A3EB4();
  sub_1C96041D4();
  result = sub_1C96A6F04();
  qword_1EC3C3DA8 = result;
  return result;
}

uint64_t sub_1C96039FC()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C9603A48(char a1)
{
  result = 6844525;
  switch(a1)
  {
    case 1:
      result = 6844523;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 7628386;
      break;
    case 4:
      result = 7566443;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9603AD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C96039FC();
  *a1 = result;
  return result;
}

uint64_t sub_1C9603B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9603A48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9603B30@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4720 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3C3D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C9603BD8(uint64_t a1)
{
  v2 = sub_1C9603CDC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C9603C24()
{
  if (qword_1EC3A4728 != -1)
  {
    swift_once();
  }

  return sub_1C96A53C4();
}

uint64_t sub_1C9603C80(uint64_t a1)
{
  v2 = sub_1C960407C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C9603CDC()
{
  result = qword_1EC3A7030;
  if (!qword_1EC3A7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7030);
  }

  return result;
}

unint64_t sub_1C9603D34()
{
  result = qword_1EC3A7038;
  if (!qword_1EC3A7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7038);
  }

  return result;
}

unint64_t sub_1C9603D8C()
{
  result = qword_1EC3A7040;
  if (!qword_1EC3A7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7040);
  }

  return result;
}

unint64_t sub_1C9603E1C()
{
  result = qword_1EC3A7048;
  if (!qword_1EC3A7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7048);
  }

  return result;
}

unint64_t sub_1C9603E74()
{
  result = qword_1EC3A7050;
  if (!qword_1EC3A7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7050);
  }

  return result;
}

unint64_t sub_1C9603ECC()
{
  result = qword_1EC3A7058;
  if (!qword_1EC3A7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7058);
  }

  return result;
}

unint64_t sub_1C9603F24()
{
  result = qword_1EC3A7060;
  if (!qword_1EC3A7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7060);
  }

  return result;
}

unint64_t sub_1C9603F7C()
{
  result = qword_1EC3A7068;
  if (!qword_1EC3A7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7068);
  }

  return result;
}

unint64_t sub_1C9603FD0()
{
  result = qword_1EC3A7070;
  if (!qword_1EC3A7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7070);
  }

  return result;
}

unint64_t sub_1C9604024()
{
  result = qword_1EC3A7078;
  if (!qword_1EC3A7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7078);
  }

  return result;
}

unint64_t sub_1C960407C()
{
  result = qword_1EC3A7080;
  if (!qword_1EC3A7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7080);
  }

  return result;
}

unint64_t sub_1C9604124()
{
  result = qword_1EC3A7088;
  if (!qword_1EC3A7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7088);
  }

  return result;
}

unint64_t sub_1C960417C()
{
  result = qword_1EC3A7090;
  if (!qword_1EC3A7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7090);
  }

  return result;
}

unint64_t sub_1C96041D4()
{
  result = qword_1EC3A7098;
  if (!qword_1EC3A7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7098);
  }

  return result;
}

_BYTE *sub_1C9604284(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t UserIdentityChange.change.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for UserIdentityChange();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PreciptationNotificationConfigurationProvider.__allocating_init(notificationConfigurationManager:notificationDeliveryScheduler:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1C94670AC(a2, v4 + 24);
  return v4;
}

uint64_t PreciptationNotificationConfigurationProvider.init(notificationConfigurationManager:notificationDeliveryScheduler:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1C94670AC(a2, v2 + 24);
  return v2;
}

uint64_t PreciptationNotificationConfigurationProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  return v0;
}

uint64_t PreciptationNotificationConfigurationProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t PreciptationNotificationConfigurationProvider.configuration(for:)(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSubscription(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C94A9950();
  v5 = sub_1C96A7704();
  sub_1C96A5774();

  v6 = sub_1C96A7704();
  sub_1C9605118(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationSubscription);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1C9605178(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for NotificationSubscription);
  type metadata accessor for PrecipitationNotificationConfiguration();
  v9 = sub_1C96A5654();

  return v9;
}

uint64_t sub_1C96046C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v53 = a2;
  v5 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = type metadata accessor for PrecipitationNotificationConfiguration();
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = sub_1C96A4A54();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v25 = a1[6];
  v26 = a1[7];
  v27 = a1[8];
  v28 = a1[9];
  v29 = a1[10];
  v51 = a3;
  sub_1C9604CCC(v53, a3, v21);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v30 = v10[5];
  v52 = v21;
  v53 = v19;
  (*(v19 + 16))(&v17[v30], v21, v18);
  *&v17[v10[6]] = v22;
  *&v17[v10[7]] = v23;
  *&v17[v10[8]] = v24;
  *&v17[v10[9]] = v29;
  *&v17[v10[10]] = v25;
  *&v17[v10[11]] = v26;
  *&v17[v10[12]] = v27;
  *&v17[v10[13]] = v28;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v31 = sub_1C96A6154();
  __swift_project_value_buffer(v31, qword_1EDB7AC90);
  sub_1C9605118(v17, v14, type metadata accessor for PrecipitationNotificationConfiguration);
  sub_1C9605118(v51, v9, type metadata accessor for NotificationSubscription);
  v32 = sub_1C96A6134();
  v33 = sub_1C96A76A4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v49 = v9;
    v35 = v34;
    v36 = swift_slowAlloc();
    v51 = v18;
    v37 = v54;
    v38 = v36;
    v55 = v36;
    *v35 = 136446723;
    sub_1C9605118(v14, v37, type metadata accessor for PrecipitationNotificationConfiguration);
    v39 = sub_1C96A70A4();
    v41 = v40;
    sub_1C96051D8(v14, type metadata accessor for PrecipitationNotificationConfiguration);
    v42 = sub_1C9484164(v39, v41, &v55);

    *(v35 + 4) = v42;
    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    v43 = v50;
    sub_1C9605178(v49, v50, type metadata accessor for NotificationSubscription);
    v44 = *v43;
    v45 = v43[1];
    sub_1C96A53C4();
    sub_1C96051D8(v43, type metadata accessor for NotificationSubscription);
    v46 = sub_1C9484164(v44, v45, &v55);

    *(v35 + 24) = v46;
    _os_log_impl(&dword_1C945E000, v32, v33, "Using notification configuration: %{public}s for subscription: %{private,mask.hash}s", v35, 0x20u);
    swift_arrayDestroy();
    v18 = v51;
    MEMORY[0x1CCA8E3D0](v38, -1, -1);
    MEMORY[0x1CCA8E3D0](v35, -1, -1);
  }

  else
  {

    sub_1C96051D8(v9, type metadata accessor for NotificationSubscription);
    sub_1C96051D8(v14, type metadata accessor for PrecipitationNotificationConfiguration);
  }

  sub_1C9605118(v17, v54, type metadata accessor for PrecipitationNotificationConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70E8);
  swift_allocObject();
  v47 = sub_1C96A56A4();
  sub_1C96051D8(v17, type metadata accessor for PrecipitationNotificationConfiguration);
  (v53[1])(v52, v18);
  return v47;
}

uint64_t sub_1C9604CCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - v7;
  v9 = sub_1C96A4A54();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - v13;
  v15 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC3A4748 != -1)
  {
    swift_once();
  }

  if (sub_1C96A4E94())
  {

    return sub_1C96A4954();
  }

  v23[0] = v9;
  v23[1] = a3;
  v19 = a1[6];
  v20 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v19);
  (*(v20 + 16))(a2, v19, v20);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C9470AFC(v14, &qword_1EC3A70F0);
    return sub_1C96A4954();
  }

  sub_1C9605178(v14, v17, type metadata accessor for PrecipitationNotificationDeliverySchedule);
  sub_1C94D63E8(&v17[*(v15 + 20)], v8);
  v21 = v23[0];
  if (__swift_getEnumTagSinglePayload(v8, 1, v23[0]) == 1)
  {
    sub_1C96051D8(v17, type metadata accessor for PrecipitationNotificationDeliverySchedule);
    sub_1C9470AFC(v8, &unk_1EC3A5430);
    return sub_1C96A4954();
  }

  v22 = v24;
  (*(v24 + 32))(v11, v8, v21);
  sub_1C96A4974();
  (*(v22 + 8))(v11, v21);
  return sub_1C96051D8(v17, type metadata accessor for PrecipitationNotificationDeliverySchedule);
}

uint64_t sub_1C9605118(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9605178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C96051D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t LocationsConfiguration.init(savedLocationDedupingThreshold:locationsOfInterestDedupingThreshold:locationsOfInterestLowAccuracyMatchDistanceThreshold:locationsOfInterestHighAccuracyMatchDistanceThreshold:locationsOfInterestSupportURLiOS:locationsOfInterestSupportURLmacOS:shouldTrackComponentExposureEvents:)@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  v49 = a8;
  v50 = a7;
  v47 = a6;
  v48 = a5;
  v45 = a4;
  v46 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_24();
  v43 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v26 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_24();
  v44 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v43 - v30;
  v32 = 5000;
  if (a2)
  {
    v33 = 5000;
  }

  else
  {
    v33 = a1;
  }

  v34 = 1600;
  if ((v45 & 1) == 0)
  {
    v34 = v46;
  }

  *a9 = v33;
  a9[1] = v34;
  v35 = 30000;
  if ((v47 & 1) == 0)
  {
    v35 = v48;
  }

  if ((v49 & 1) == 0)
  {
    v32 = v50;
  }

  a9[2] = v35;
  a9[3] = v32;
  v50 = a10;
  sub_1C947F224(a10, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_52();
    sub_1C96A4754();
    result = OUTLINED_FUNCTION_6_0(v22);
    if (v37)
    {
      __break(1u);
      goto LABEL_22;
    }

    v38 = OUTLINED_FUNCTION_13_35();
    a1(v38, v22, v26);
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      sub_1C947F1BC(v25);
    }
  }

  else
  {
    v39 = OUTLINED_FUNCTION_13_35();
    a1(v39, v25, v26);
  }

  v40 = type metadata accessor for LocationsConfiguration();
  a1(a9 + v40[8], v31, v26);
  sub_1C947F224(a11, v19);
  OUTLINED_FUNCTION_6_0(v19);
  if (!v37)
  {
    sub_1C947F1BC(a11);
    sub_1C947F1BC(v50);
    v42 = v44;
    a1(v44, v19, v26);
LABEL_20:
    result = (a1)(a9 + v40[9], v42, v26);
    *(a9 + v40[10]) = (a12 == 2) | a12 & 1;
    return result;
  }

  v41 = v43;
  OUTLINED_FUNCTION_52();
  sub_1C96A4754();
  result = OUTLINED_FUNCTION_6_0(v41);
  if (!v37)
  {
    sub_1C947F1BC(a11);
    sub_1C947F1BC(v50);
    v42 = v44;
    a1(v44, v41, v26);
    OUTLINED_FUNCTION_6_0(v19);
    if (!v37)
    {
      sub_1C947F1BC(v19);
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t LocationsConfiguration.locationsOfInterestSupportURLiOS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationsConfiguration() + 32);
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LocationsConfiguration.locationsOfInterestSupportURLmacOS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationsConfiguration() + 36);
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LocationsConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7100);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947EF84();
  sub_1C96A7F54();
  v17 = 0;
  OUTLINED_FUNCTION_0_59();
  sub_1C96A7D54();
  if (!v1)
  {
    v16 = 1;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D54();
    v15 = 2;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D54();
    v14 = 3;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D54();
    type metadata accessor for LocationsConfiguration();
    v13 = 4;
    sub_1C96A4764();
    sub_1C96058F0();
    OUTLINED_FUNCTION_10_33();
    v12 = 5;
    OUTLINED_FUNCTION_10_33();
    v11 = 6;
    OUTLINED_FUNCTION_0_59();
    sub_1C96A7D34();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C96058F0()
{
  result = qword_1EDB7FD80;
  if (!qword_1EDB7FD80)
  {
    sub_1C96A4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FD80);
  }

  return result;
}

uint64_t sub_1C9605948()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C96059C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9605948();
  *a1 = result;
  return result;
}

unint64_t sub_1C96059F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947EFF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9605A1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9605994();
  *a1 = result;
  return result;
}

uint64_t sub_1C9605A44(uint64_t a1)
{
  v2 = sub_1C947EF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9605A80(uint64_t a1)
{
  v2 = sub_1C947EF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9605ADC()
{
  result = qword_1EC3A7108;
  if (!qword_1EC3A7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7108);
  }

  return result;
}

char *sub_1C9605B48(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x1CCA8D440](v5, a1);
  }

  result = sub_1C96A7BB4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C9605BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1C96A5CF4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1C96A5CF4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t PrecipitationNotificationPolicyHandler.policy(for:with:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v566 = a2;
  v560 = a4;
  v520 = type metadata accessor for PrecipitationNotification();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v8);
  v526 = sub_1C96A5CB4();
  OUTLINED_FUNCTION_1();
  v525 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_6_36(v11);
  v535 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_1();
  v534 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v15);
  v16 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v543 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v21);
  v564 = sub_1C96A5CF4();
  OUTLINED_FUNCTION_1();
  v561 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_51_0();
  v554 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7110);
  MEMORY[0x1EEE9AC00](v32 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_51_0();
  v563 = v37;
  v558 = sub_1C96A4A94();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_37_0();
  v556 = v41;
  v547 = sub_1C96A5FF4();
  OUTLINED_FUNCTION_1();
  v550 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_37_0();
  v549 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v45 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_6_36(v47);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_51_0();
  v568 = v50;
  v51 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_18_1();
  v553 = v65;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_18_1();
  v567 = v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v513[-v70];
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v72 = sub_1C96A6154();
  v73 = __swift_project_value_buffer(v72, qword_1EDB7AC90);
  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(a1, v71, v74);
  v569 = v73;
  v75 = sub_1C96A6134();
  v76 = sub_1C96A76A4();
  v77 = os_log_type_enabled(v75, v76);
  v559 = v16;
  v565 = a1;
  v562 = a3;
  if (v77)
  {
    v78 = OUTLINED_FUNCTION_102();
    v79 = OUTLINED_FUNCTION_8_4();
    v570 = v79;
    *v78 = 141558275;
    *(v78 + 4) = 1752392040;
    OUTLINED_FUNCTION_9_33();
    v557 = v39;
    v81 = v80;
    v82 = v567;
    sub_1C960A530(v71, v567, v80);
    v83 = *v82;
    v84 = v82[1];
    sub_1C96A53C4();
    sub_1C960A590(v82, v81);
    v85 = sub_1C9484164(v83, v84, &v570);
    a1 = v565;

    *(v78 + 14) = v85;
    v86 = v81;
    v39 = v557;
    sub_1C960A590(v71, v86);
    OUTLINED_FUNCTION_60_4(&dword_1C945E000, v87, v76, "Evaluating notification policy for subscription: %{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    OUTLINED_FUNCTION_26();
    v16 = v559;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v71, v88);
  }

  v89 = Schedule;
  v90 = v568;
  sub_1C960A530(a1, v568 + *(Schedule + 20), type metadata accessor for NotificationSubscription);
  v91 = v549;
  sub_1C96A5D54();
  v92 = v548;
  sub_1C96A5FA4();
  (*(v550 + 1))(v91, v547);
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v16);
  v549 = *(v89 + 24);
  PrecipitationNotificationConfiguration.reschedulingDate(from:)(v92, v90 + v549);
  sub_1C9470AFC(v92, &unk_1EC3A5430);
  v93 = v556;
  sub_1C96A4A84();
  v94 = sub_1C96A4A64();
  v96 = v95;
  v97 = *(v39 + 8);
  v557 = v39 + 8;
  v550 = v97;
  (v97)(v93, v558);
  *v90 = v94;
  v90[1] = v96;
  *(v90 + *(v89 + 28)) = 0x408C200000000000;
  v98 = v90;
  v99 = v16;
  v100 = v552;
  sub_1C960A530(v98, v552, type metadata accessor for PrecipitationNotificationFetchSchedule);
  v101 = a1;
  v102 = v551;
  sub_1C960A530(a1, v551, type metadata accessor for NotificationSubscription);
  v103 = sub_1C96A6134();
  v104 = sub_1C96A76A4();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = OUTLINED_FUNCTION_8_4();
    v106 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_65_4(v106);
    *v105 = 136446723;
    OUTLINED_FUNCTION_11_31();
    sub_1C960A6AC(v107, v108);
    v109 = sub_1C96A7DB4();
    v111 = sub_1C9484164(v109, v110, &v570);

    *(v105 + 4) = v111;
    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v100, v112);
    *(v105 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v105 + 14) = v113;
    *(v105 + 22) = 2081;
    v89 = v567;
    sub_1C960A530(v102, v567, type metadata accessor for NotificationSubscription);
    v114 = *v89;
    v115 = *(v89 + 8);
    sub_1C96A53C4();
    sub_1C960A590(v89, type metadata accessor for NotificationSubscription);
    v116 = sub_1C9484164(v114, v115, &v570);

    *(v105 + 24) = v116;
    sub_1C960A590(v102, type metadata accessor for NotificationSubscription);
    _os_log_impl(&dword_1C945E000, v103, v104, "Determine next scheduling opportunity: %{public}s for subscription: %{private,mask.hash}s", v105, 0x20u);
    swift_arrayDestroy();
    v101 = v565;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v100, v117);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v102, v118);
  }

  v119 = v564;
  v120 = v553;
  v121 = sub_1C96A5D34();
  v122 = v121;
  if (!*(v121 + 16))
  {
    v553 = v121;
    OUTLINED_FUNCTION_1_58();
    v137 = v544;
    sub_1C960A530(v101, v544, v138);
    v139 = v569;
    v140 = sub_1C96A6134();
    v141 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v141))
    {
      OUTLINED_FUNCTION_102();
      v142 = OUTLINED_FUNCTION_23_20();
      v570 = v142;
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v137, v567, v143);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v139 + 14) = v89;

      sub_1C960A590(v137, v101);
      _os_log_impl(&dword_1C945E000, v140, v141, "Rescheduling notification for subscription: %{private,mask.hash}s due to insufficient summaries", v139, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v142);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v137, v181);
    }

LABEL_23:
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v568, v560, v183);
    type metadata accessor for PrecipitationNotificationPolicy();
    return OUTLINED_FUNCTION_32_5();
  }

  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(v101, v120, v123);
  sub_1C96A53C4();
  v124 = v569;
  v125 = sub_1C96A6134();
  v126 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_28_15(v126))
  {
    OUTLINED_FUNCTION_8_4();
    v127 = OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_44_6(v127);
    *v124 = 134349571;
    *(v124 + 4) = *(v122 + 16);

    *(v124 + 6) = 2160;
    OUTLINED_FUNCTION_25();
    *(v124 + 14) = v128;
    *(v124 + 11) = 2081;
    v99 = v567;
    sub_1C960A530(v120, v567, type metadata accessor for NotificationSubscription);
    OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_59_3();
    OUTLINED_FUNCTION_22_21();
    OUTLINED_FUNCTION_34_9();

    *(v124 + 3) = v89;
    v129 = OUTLINED_FUNCTION_63_4();
    v101 = v565;
    sub_1C960A590(v129, v130);
    OUTLINED_FUNCTION_15_28();
    _os_log_impl(v131, v132, v133, v134, v135, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    v119 = v564;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_0_85();
    v136 = sub_1C960A590(v120, v144);
  }

  v145 = v554;
  v146 = v561;
  MEMORY[0x1EEE9AC00](v136);
  *&v513[-16] = v147;
  v148 = v563;
  sub_1C95F6F2C(sub_1C960A480, v122, v563);
  v149 = v546;
  sub_1C960A4A0(v148, v546);
  if (__swift_getEnumTagSinglePayload(v149, 1, v119) == 1)
  {
    sub_1C9470AFC(v149, &qword_1EC3A7110);
    OUTLINED_FUNCTION_1_58();
    v150 = v539;
    sub_1C960A530(v101, v539, v151);
    v152 = v569;
    v153 = sub_1C96A6134();
    v154 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_28_15(v154))
    {
      OUTLINED_FUNCTION_102();
      v155 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v155);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v150, v567, v156);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v152 + 14) = v145;

      sub_1C960A590(v150, &off_1C96AA000);
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v157, v158, v159, v160, v161, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v150, v182);
    }

    sub_1C9470AFC(v563, &qword_1EC3A7110);
    goto LABEL_23;
  }

  v162 = *(v146 + 32);
  v547 = v146 + 32;
  v546 = v162;
  v162(v145, v149, v119);
  v163 = *(v146 + 16);
  v164 = v540;
  v551 = v146 + 16;
  v548 = v163;
  (v163)(v540, v145, v119);
  OUTLINED_FUNCTION_1_58();
  OUTLINED_FUNCTION_62_4(v101, v165, &v570);
  v166 = sub_1C96A6134();
  v167 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_30_0(v167))
  {
    v168 = OUTLINED_FUNCTION_8_4();
    v553 = v122;
    v169 = v168;
    v570 = OUTLINED_FUNCTION_58_3();
    *v169 = 136446723;
    OUTLINED_FUNCTION_26_12();
    sub_1C960A6AC(v170, v171);
    v172 = v164;
    v173 = sub_1C96A7DB4();
    OUTLINED_FUNCTION_71_3(v173, v174);
    OUTLINED_FUNCTION_69_3();
    *(v169 + 4) = v146;
    v175 = OUTLINED_FUNCTION_57_3(v561);
    v176(v175);
    *(v169 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v169 + 14) = v177;
    *(v169 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v178 = v567;
    sub_1C960A530(v99, v567, v179);
    v180 = *v178;
    v119 = v178[1];
    sub_1C96A53C4();
    sub_1C960A590(v178, v172);
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_47_3();
    *(v169 + 24) = v180;
    OUTLINED_FUNCTION_70_1();
    _os_log_impl(&dword_1C945E000, v166, v167, "Current summary: %{public}s for subscription: %{private,mask.hash}s", v169, 0x20u);
    swift_arrayDestroy();
    v145 = v554;
    OUTLINED_FUNCTION_26();
    v122 = v553;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v185 = OUTLINED_FUNCTION_57_3(v146);
    v186(v185);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v99, v187);
  }

  v188 = v541;
  sub_1C96A5C84();
  v189 = v559;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v188, 1, v559);
  v191 = v565;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9470AFC(v188, &unk_1EC3A5430);
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v191, v192, &v567);
    v193 = sub_1C96A6134();
    v194 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_28_15(v194))
    {
      OUTLINED_FUNCTION_102();
      v195 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v195);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v99, v567, v196);
      sub_1C96A53C4();
      v197 = OUTLINED_FUNCTION_63_4();
      sub_1C960A590(v197, v198);
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v199, v200, v201, v202, v203, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v99, v222);
    }

    sub_1C9470AFC(v563, &qword_1EC3A7110);
    v223 = v560;
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v224, v223, v225);
    type metadata accessor for PrecipitationNotificationPolicy();
    OUTLINED_FUNCTION_32_5();
LABEL_37:
    OUTLINED_FUNCTION_52_5();
    return v251();
  }

  OUTLINED_FUNCTION_31_6();
  v205 = v545;
  v206 = (*(v204 + 32))(v545, v188, v189);
  MEMORY[0x1EEE9AC00](v206);
  *&v513[-16] = v145;
  *&v513[-8] = v205;
  v207 = v542;
  sub_1C95F6F2C(sub_1C960A510, v122, v542);
  v208 = v207;
  v209 = v537;
  sub_1C960A4A0(v208, v537);
  if (__swift_getEnumTagSinglePayload(v209, 1, v119) == 1)
  {
    sub_1C9470AFC(v209, &qword_1EC3A7110);
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v191, v210, &v559);
    v211 = sub_1C96A6134();
    v212 = sub_1C96A7684();
    if (OUTLINED_FUNCTION_28_15(v212))
    {
      OUTLINED_FUNCTION_102();
      v213 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v213);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v99, v567, v214);
      sub_1C96A53C4();
      v215 = OUTLINED_FUNCTION_63_4();
      sub_1C960A590(v215, v216);
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v217, v218, v219, v220, v221, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v99, v245);
    }

    v246 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_53_2(v246);
    OUTLINED_FUNCTION_53_2(v563);
    v247 = v560;
    v248 = v543;
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v249, v247, v250);
    type metadata accessor for PrecipitationNotificationPolicy();
    OUTLINED_FUNCTION_32_5();
    (*(v248 + 8))(v545, v559);
    goto LABEL_37;
  }

  v553 = v122;
  v546(v538, v209, v119);
  v226 = OUTLINED_FUNCTION_55_4(&v561);
  v548(v226);
  OUTLINED_FUNCTION_1_58();
  v227 = v531;
  sub_1C960A530(v191, v531, v228);
  v229 = sub_1C96A6134();
  v230 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_30_0(v230))
  {
    v231 = v227;
    v232 = OUTLINED_FUNCTION_8_4();
    v233 = OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_65_4(v233);
    *v232 = 136446723;
    OUTLINED_FUNCTION_26_12();
    sub_1C960A6AC(v234, v235);
    v236 = sub_1C96A7DB4();
    v238 = OUTLINED_FUNCTION_71_3(v236, v237);

    *(v232 + 4) = v238;
    OUTLINED_FUNCTION_52_5();
    v239();
    *(v232 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v232 + 14) = v240;
    *(v232 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v241 = v231;
    v242 = v567;
    sub_1C960A530(v241, v567, v243);
    v244 = *v242;
    sub_1C96A53C4();
    sub_1C960A590(v242, v99);
    OUTLINED_FUNCTION_22_21();
    OUTLINED_FUNCTION_34_9();

    *(v232 + 24) = v244;
    v145 = v554;
    OUTLINED_FUNCTION_70_1();
    _os_log_impl(&dword_1C945E000, v229, v230, "Next summary: %{public}s for subscription: %{private,mask.hash}s", v232, 0x20u);
    swift_arrayDestroy();
    v191 = v565;
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_38_0();
  }

  else
  {

    OUTLINED_FUNCTION_52_5();
    v252();
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v227, v253);
  }

  v254 = v562;
  v255 = v532;
  sub_1C96A5CC4();
  v256 = sub_1C96A5DC4() & 1;
  v257 = *(v534 + 8);
  v258 = v255;
  v259 = v535;
  v257(v258, v535);
  v260 = v533;
  sub_1C96A5CC4();
  v261 = sub_1C96A5DC4() & 1;
  v257(v260, v259);
  v262 = v560;
  v263 = v568;
  if (v256 == v261)
  {
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v191, v283, &v558);
    v284 = v569;
    v285 = sub_1C96A6134();
    v286 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_28_15(v286))
    {
      OUTLINED_FUNCTION_102();
      v569 = OUTLINED_FUNCTION_23_20();
      v570 = v569;
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      sub_1C960A530(v260, v567, v287);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v284 + 14) = v145;
      v145 = v554;

      sub_1C960A590(v530, v191);
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v288, v289, v290, v291, v292, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v569);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v260, v317);
    }

    v318 = OUTLINED_FUNCTION_64_4();
    v320 = *(v319 - 256);
    v320(v318);
    v321 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_53_2(v321);
    OUTLINED_FUNCTION_53_2(v563);
    v322 = v543;
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v263, v262, v323);
    type metadata accessor for PrecipitationNotificationPolicy();
    swift_storeEnumTagMultiPayload();
    (*(v322 + 8))(v545, v559);
    return (v320)(v145, v119);
  }

  v547 = type metadata accessor for PrecipitationNotificationConfiguration();
  v264 = v536;
  sub_1C96A4974();
  v265 = *(v543 + 16);
  v266 = v528;
  v544 = v543 + 16;
  v541 = v265;
  v265(v528, v264, v559);
  OUTLINED_FUNCTION_1_58();
  v267 = v191;
  v268 = v527;
  sub_1C960A530(v267, v527, v269);
  v270 = sub_1C96A6134();
  v271 = sub_1C96A76A4();
  if (os_log_type_enabled(v270, v271))
  {
    v272 = OUTLINED_FUNCTION_8_4();
    v570 = OUTLINED_FUNCTION_58_3();
    *v272 = 136446723;
    OUTLINED_FUNCTION_11_31();
    sub_1C960A6AC(v273, v274);
    LODWORD(v540) = v271;
    v275 = sub_1C96A7DB4();
    OUTLINED_FUNCTION_71_3(v275, v276);
    OUTLINED_FUNCTION_69_3();
    *(v272 + 4) = v262;
    v277 = OUTLINED_FUNCTION_43_12();
    v278(v277);
    *(v272 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v272 + 14) = v279;
    *(v272 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v280 = v567;
    sub_1C960A530(v268, v567, v281);
    v282 = *v280;
    v119 = v280[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_47_3();
    *(v272 + 24) = v282;
    sub_1C960A590(v268, v266);
    _os_log_impl(&dword_1C945E000, v270, v540, "Notification should be send after: %{public}s for subscription: %{private,mask.hash}s", v272, 0x20u);
    swift_arrayDestroy();
    v145 = v554;
    OUTLINED_FUNCTION_26();
    v254 = v562;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v293 = OUTLINED_FUNCTION_43_12();
    v294(v293);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v268, v295);
  }

  v296 = &off_1C96AA000;
  v297 = *(v547 + 20);
  OUTLINED_FUNCTION_11_31();
  sub_1C960A6AC(v298, v299);
  OUTLINED_FUNCTION_49_6();
  v300 = sub_1C96A6F64();
  v301 = v254;
  v302 = v565;
  v303 = v568;
  if (v300)
  {
    OUTLINED_FUNCTION_1_58();
    v304 = v302;
    v305 = v522;
    sub_1C960A530(v304, v522, v306);
    v307 = v569;
    v308 = sub_1C96A6134();
    v309 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_28_15(v309))
    {
      OUTLINED_FUNCTION_102();
      v310 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_44_6(v310);
      OUTLINED_FUNCTION_2_57(7.2225e-34);
      v296 = v567;
      sub_1C960A530(v305, v567, v311);
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_34_9();

      *(v307 + 14) = v145;
      v145 = v554;

      v303 = v568;
      sub_1C960A590(v305, v301);
      OUTLINED_FUNCTION_15_28();
      _os_log_impl(v312, v313, v314, v315, v316, 0x16u);
      OUTLINED_FUNCTION_19_24();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v305, v357);
    }

    v358 = OUTLINED_FUNCTION_4_53();
    (v296)(v358);
    v359 = OUTLINED_FUNCTION_64_4();
    v361 = *(v360 - 256);
    v361(v359);
    v362 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_53_2(v362);
    OUTLINED_FUNCTION_53_2(v563);
    OUTLINED_FUNCTION_3_42();
    sub_1C960A64C(v303, v560, v363);
    type metadata accessor for PrecipitationNotificationPolicy();
    OUTLINED_FUNCTION_32_5();
    v364 = OUTLINED_FUNCTION_49_6();
    (v296)(v364, v301);
    return (v361)(v145, v119);
  }

  v324 = v529;
  v325 = v538;
  sub_1C9608D68(v553, v538, v301, v529);
  sub_1C960970C(v324, v325, v302, v145, v301, &v570);
  v326 = v570;
  if ((sub_1C95495CC(v570, 0) & 1) != 0 && !ForecastSummary.meetsNotificationThresholds(with:)(v301))
  {
    v394 = v516;
    v395 = v548;
    (v548)(v516, v325, v119);
    v396 = OUTLINED_FUNCTION_55_4(&v544);
    v395(v396);
    v397 = sub_1C96A6134();
    v398 = sub_1C96A76A4();
    if (os_log_type_enabled(v397, v398))
    {
      v399 = v394;
      v400 = OUTLINED_FUNCTION_102();
      v567 = OUTLINED_FUNCTION_58_3();
      v571 = v567;
      *v400 = 136446466;
      LODWORD(v566) = v398;
      v401 = sub_1C96A5C24();
      OUTLINED_FUNCTION_29_10(v401, v402);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0);
      v403 = OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_72_1(v403, v404);
      OUTLINED_FUNCTION_69_3();
      OUTLINED_FUNCTION_46_3();
      v297 = v552;
      v552(v399, v564);
      *(v400 + 12) = 2082;
      v405 = sub_1C96A5C14();
      OUTLINED_FUNCTION_29_10(v405, v406);
      v407 = OUTLINED_FUNCTION_68_2();
      v409 = OUTLINED_FUNCTION_72_1(v407, v408);

      *(v400 + 14) = v409;
      v145 = v554;

      (v297)(&off_1C96AA000, v564);
      _os_log_impl(&dword_1C945E000, v397, v566, "Rescheduling precipitation starting notification due to forecast summary threshold %{public}s - %{public}s", v400, 0x16u);
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_38_0();

      v410 = OUTLINED_FUNCTION_39_6();
      sub_1C9470AFC(v410, &qword_1EC3A7110);
      v411 = OUTLINED_FUNCTION_4_53();
      (off_1C96AA000)(v411);
      (v297)(v325, v564);
      v119 = v564;
      v412 = OUTLINED_FUNCTION_30_10();
      sub_1C9470AFC(v412, &qword_1EC3A7110);
      v413 = v563;
LABEL_81:
      sub_1C9470AFC(v413, &qword_1EC3A7110);
      OUTLINED_FUNCTION_3_42();
      sub_1C960A64C(v303, v560, v487);
      type metadata accessor for PrecipitationNotificationPolicy();
      OUTLINED_FUNCTION_32_5();
      v488 = OUTLINED_FUNCTION_49_6();
      (v296)(v488, v397);
      return (v297)(v145, v119);
    }

    v461 = OUTLINED_FUNCTION_35_7();
    (v297)(v461);
    (v297)(v394, v119);

    v462 = OUTLINED_FUNCTION_39_6();
    sub_1C9470AFC(v462, v463);
    v464 = OUTLINED_FUNCTION_4_53();
    (off_1C96AA000)(v464);
    (v297)(v325, v119);
    v465 = OUTLINED_FUNCTION_30_10();
LABEL_80:
    OUTLINED_FUNCTION_53_2(v465);
    v413 = v563;
    goto LABEL_81;
  }

  if ((sub_1C95495CC(v326, 1) & 1) != 0 && !ForecastSummary.meetsNotificationThresholds(with:)(v562))
  {
    v397 = v514;
    v429 = v548;
    (v548)(v514, v145, v119);
    v296 = v515;
    v429(v515, v145, v119);
    v430 = sub_1C96A6134();
    v431 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_30_0(v431))
    {
      v432 = OUTLINED_FUNCTION_102();
      v567 = OUTLINED_FUNCTION_58_3();
      v571 = v567;
      *v432 = 136446466;
      v433 = sub_1C96A5C24();
      OUTLINED_FUNCTION_29_10(v433, v434);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0);
      v435 = OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_72_1(v435, v436);
      OUTLINED_FUNCTION_69_3();
      OUTLINED_FUNCTION_46_3();
      v297 = v552;
      v552(v397, v564);
      *(v432 + 12) = 2082;
      v437 = sub_1C96A5C14();
      OUTLINED_FUNCTION_29_10(v437, v438);
      v439 = OUTLINED_FUNCTION_68_2();
      v441 = OUTLINED_FUNCTION_72_1(v439, v440);

      *(v432 + 14) = v441;
      v145 = v554;

      (v297)(v296, v564);
      _os_log_impl(&dword_1C945E000, v430, v431, "Rescheduling precipitation stopping notification due to forecast summary threshold %{public}s - %{public}s", v432, 0x16u);
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_38_0();

      v442 = OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_53_2(v442);
      v443 = OUTLINED_FUNCTION_4_53();
      (v296)(v443);
      (v297)(v538, v564);
      v119 = v564;
    }

    else
    {

      v484 = OUTLINED_FUNCTION_35_7();
      (v297)(v484);
      (v297)(v397, v119);

      v485 = OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_53_2(v485);
      v486 = OUTLINED_FUNCTION_4_53();
      (v296)(v486);
      (v297)(v538, v119);
    }

    v465 = OUTLINED_FUNCTION_30_10();
    goto LABEL_80;
  }

  v551 = v297;
  v327 = v523;
  v328 = v566;
  sub_1C9609F68(v326, v523);
  v329 = v520;
  v330 = v524;
  sub_1C96A5CC4();
  sub_1C96A5CC4();
  (*(v525 + 16))(v330 + *(v329 + 32), v327, v526);
  v331 = *(v329 + 36);
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v332 + 16))(v330 + v331, v328);
  OUTLINED_FUNCTION_33_9();
  v333();
  sub_1C96A5C84();
  sub_1C96A4A84();
  v334 = sub_1C96A4A64();
  v336 = v335;
  OUTLINED_FUNCTION_51_5();
  v337();
  *v330 = v334;
  *(v330 + 8) = v336;
  v338 = v565;
  *(v330 + 16) = v326;
  OUTLINED_FUNCTION_24_17();
  v339 = v521;
  sub_1C960A530(v330, v521, v340);
  OUTLINED_FUNCTION_1_58();
  v341 = v518;
  sub_1C960A530(v338, v518, v342);
  v343 = sub_1C96A6134();
  v344 = sub_1C96A76A4();
  if (os_log_type_enabled(v343, v344))
  {
    v345 = OUTLINED_FUNCTION_8_4();
    v570 = OUTLINED_FUNCTION_58_3();
    *v345 = 136446723;
    v346 = v339;
    v347 = PrecipitationNotification.description.getter();
    v349 = OUTLINED_FUNCTION_71_3(v347, v348);

    *(v345 + 4) = v349;
    OUTLINED_FUNCTION_10_34();
    sub_1C960A590(v339, v350);
    *(v345 + 12) = 2160;
    OUTLINED_FUNCTION_25();
    *(v345 + 14) = v351;
    *(v345 + 22) = 2081;
    OUTLINED_FUNCTION_6_44();
    v352 = v567;
    sub_1C960A530(v341, v567, v353);
    v355 = *v352;
    v354 = v352[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_70_1();
    v356 = sub_1C9484164(v355, v354, &v570);

    *(v345 + 24) = v356;
    v119 = v564;
    sub_1C960A590(v341, v346);
    _os_log_impl(&dword_1C945E000, v343, v344, "Constructed notification: %{public}s for subscription: %{private,mask.hash}s", v345, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    v338 = v565;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_10_34();
    sub_1C960A590(v339, v365);
    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v341, v366);
  }

  v367 = v519;
  v368 = v536;
  v369 = sub_1C96A6F64();
  v370 = v550;
  if ((v369 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_58();
    v382 = v517;
    sub_1C960A530(v338, v517, v383);
    v384 = sub_1C96A6134();
    v385 = sub_1C96A76A4();
    if (os_log_type_enabled(v384, v385))
    {
      v386 = OUTLINED_FUNCTION_102();
      v387 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_65_4(v387);
      *v386 = 141558275;
      OUTLINED_FUNCTION_25();
      *(v386 + 4) = v388;
      OUTLINED_FUNCTION_9_33();
      v390 = v389;
      v391 = v567;
      sub_1C960A530(v382, v567, v389);
      v392 = *v391;
      v119 = v391[1];
      sub_1C96A53C4();
      sub_1C960A590(v391, v390);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_47_3();
      *(v386 + 14) = v392;

      sub_1C960A590(v382, v390);
      OUTLINED_FUNCTION_60_4(&dword_1C945E000, v393, v385, "Notification date is before the current date; notifying for subscription: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v338);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_38_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v382, v444);
    }

    v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118);
    v446 = v560 + *(v445 + 48);
    v447 = v560 + *(v445 + 64);
    v448 = v524;
    sub_1C960A530(v524, v560, type metadata accessor for PrecipitationNotification);
    OUTLINED_FUNCTION_25_17();
    v449 = v565;
    sub_1C960A530(v565, v446, v450);
    v451 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
    v370 = v559;
    __swift_storeEnumTagSinglePayload(v446 + *(v451 + 20), 1, 1, v559);
    sub_1C960A530(v449, &v447[*(Schedule + 20)], v385);
    OUTLINED_FUNCTION_41_9();
    sub_1C96A49B4();
    sub_1C96A4A84();
    v569 = sub_1C96A4A64();
    v567 = v452;
    OUTLINED_FUNCTION_51_5();
    v453();
    sub_1C960A590(v448, type metadata accessor for PrecipitationNotification);
    v454 = OUTLINED_FUNCTION_14_27();
    v455(v454);
    OUTLINED_FUNCTION_36_5(&v557);
    OUTLINED_FUNCTION_31_6();
    v456 = v546;
    (v546)(v536, v370);
    v457 = OUTLINED_FUNCTION_17_28();
    v370(v457);
    v458 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_54_6(v458);
    OUTLINED_FUNCTION_54_6(v563);
    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v568, v459);
    OUTLINED_FUNCTION_56_3(v567);
    swift_storeEnumTagMultiPayload();
    v460 = OUTLINED_FUNCTION_49_6();
    v456(v460, v370);
    return (v370)(v554, v119);
  }

  if (sub_1C96A4994() & 1) != 0 && (sub_1C96A49A4())
  {
    OUTLINED_FUNCTION_1_58();
    OUTLINED_FUNCTION_62_4(v338, v371, &v540);
    v372 = sub_1C96A6134();
    v373 = sub_1C96A76A4();
    if (os_log_type_enabled(v372, v373))
    {
      v374 = OUTLINED_FUNCTION_102();
      v375 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_65_4(v375);
      *v374 = 141558275;
      OUTLINED_FUNCTION_25();
      *(v374 + 4) = v376;
      OUTLINED_FUNCTION_9_33();
      v378 = v377;
      v379 = v567;
      sub_1C960A530(v370, v567, v377);
      v380 = *v379;
      v119 = v379[1];
      sub_1C96A53C4();
      sub_1C960A590(v379, v378);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_47_3();
      *(v374 + 14) = v380;

      sub_1C960A590(v370, v378);
      OUTLINED_FUNCTION_60_4(&dword_1C945E000, v381, v373, "Notification date is after backoff timer, but before next scheduling opportunity; notifying for subscription: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v338);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_38_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_85();
      sub_1C960A590(v370, v489);
    }

    v490 = v560;
    v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118);
    v492 = v490 + *(v491 + 48);
    v493 = v490 + *(v491 + 64);
    OUTLINED_FUNCTION_24_17();
    v569 = v494;
    v495 = OUTLINED_FUNCTION_55_4(&v552);
    sub_1C960A530(v495, v496, v497);
    OUTLINED_FUNCTION_25_17();
    v498 = v565;
    sub_1C960A530(v565, v492, v499);
    v500 = *(type metadata accessor for PrecipitationNotificationDeliverySchedule() + 20);
    v501 = v559;
    OUTLINED_FUNCTION_33_9();
    v502();
    __swift_storeEnumTagSinglePayload(v492 + v500, 0, 1, v501);
    sub_1C960A530(v498, v493 + *(Schedule + 20), v373);
    OUTLINED_FUNCTION_41_9();
    sub_1C96A4974();
    sub_1C96A4A84();
    v503 = sub_1C96A4A64();
    v566 = v504;
    v567 = v503;
    OUTLINED_FUNCTION_51_5();
    v505();
    sub_1C960A590(v370, v569);
    v506 = OUTLINED_FUNCTION_14_27();
    v507(v506);
    OUTLINED_FUNCTION_36_5(&v557);
    OUTLINED_FUNCTION_31_6();
    v508 = v546;
    (v546)();
    v509 = OUTLINED_FUNCTION_17_28();
    v370(v509);
    v510 = OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_54_6(v510);
    OUTLINED_FUNCTION_54_6(v563);
    OUTLINED_FUNCTION_5_42();
    sub_1C960A590(v568, v511);
    OUTLINED_FUNCTION_56_3(v566);
    swift_storeEnumTagMultiPayload();
    v512 = OUTLINED_FUNCTION_49_6();
    v508(v512, v501);
    return (v370)(v554, v119);
  }

  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(v338, v367, v414);
  v415 = v569;
  v416 = sub_1C96A6134();
  v417 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_28_15(v417))
  {
    OUTLINED_FUNCTION_102();
    v418 = OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_44_6(v418);
    OUTLINED_FUNCTION_2_57(7.2225e-34);
    v419 = v567;
    sub_1C960A530(v367, v567, v420);
    OUTLINED_FUNCTION_61_2();
    v421 = v419;
    v370 = v550;
    sub_1C960A590(v421, v338);
    OUTLINED_FUNCTION_22_21();
    OUTLINED_FUNCTION_34_9();

    *(v415 + 14) = v368;
    v368 = v536;

    v422 = OUTLINED_FUNCTION_63_4();
    v338 = v565;
    sub_1C960A590(v422, v423);
    OUTLINED_FUNCTION_15_28();
    _os_log_impl(v424, v425, v426, v427, v428, 0x16u);
    OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_0_85();
    sub_1C960A590(v367, v466);
  }

  v467 = v560;
  OUTLINED_FUNCTION_1_58();
  sub_1C960A530(v338, v467 + v468, v469);
  v470 = v568;
  v471 = v559;
  OUTLINED_FUNCTION_33_9();
  v472();
  v473 = v556;
  sub_1C96A4A84();
  v569 = sub_1C96A4A64();
  v567 = v474;
  (v370)(v473, v558);
  OUTLINED_FUNCTION_10_34();
  sub_1C960A590(v524, v475);
  v476 = OUTLINED_FUNCTION_14_27();
  v477(v476);
  OUTLINED_FUNCTION_36_5(&v557);
  OUTLINED_FUNCTION_31_6();
  v478 = v546;
  (v546)(v368, v471);
  v479 = OUTLINED_FUNCTION_17_28();
  v370(v479);
  v480 = OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_54_6(v480);
  OUTLINED_FUNCTION_54_6(v563);
  OUTLINED_FUNCTION_5_42();
  sub_1C960A590(v470, v481);
  v482 = v567;
  *v467 = v569;
  v467[1] = v482;
  *(v467 + *(Schedule + 28)) = 0;
  type metadata accessor for PrecipitationNotificationPolicy();
  OUTLINED_FUNCTION_32_5();
  v483 = OUTLINED_FUNCTION_49_6();
  v478(v483, v471);
  return (v370)(v554, v119);
}