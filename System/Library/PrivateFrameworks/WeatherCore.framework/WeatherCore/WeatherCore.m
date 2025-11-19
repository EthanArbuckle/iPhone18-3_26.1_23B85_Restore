uint64_t type metadata accessor for AppConfiguration()
{
  result = qword_1EDB7F200;
  if (!qword_1EDB7F200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9460BBC()
{
  sub_1C96A4A54();
  if (v0 <= 0x3F)
  {
    sub_1C9460DE8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocationsConfiguration();
      if (v2 <= 0x3F)
      {
        sub_1C9461074(319, &qword_1EDB7CEC8);
        if (v3 <= 0x3F)
        {
          sub_1C9461074(319, &qword_1EDB7CED8);
          if (v4 <= 0x3F)
          {
            sub_1C9461074(319, &qword_1EDB7CE20);
            if (v5 <= 0x3F)
            {
              sub_1C9461074(319, &qword_1EDB7CE38);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C9460DE8()
{
  if (!qword_1EDB7CEE8)
  {
    type metadata accessor for EndpointConfiguration();
    v0 = sub_1C96A7344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7CEE8);
    }
  }
}

uint64_t type metadata accessor for EndpointConfiguration()
{
  result = qword_1EDB7E3E0;
  if (!qword_1EDB7E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9460E8C()
{
  v0 = sub_1C96A4764();
  if (v1 <= 0x3F)
  {
    sub_1C9460F40();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_1C9460F40()
{
  if (!qword_1EDB7FD70)
  {
    sub_1C96A4764();
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7FD70);
    }
  }
}

uint64_t type metadata accessor for LocationsConfiguration()
{
  result = qword_1EDB7E098;
  if (!qword_1EDB7E098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9460FE4()
{
  result = sub_1C96A4764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C9461074(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C96A7344();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for SavedLocation()
{
  result = qword_1EDB7A248;
  if (!qword_1EDB7A248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C946110C()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Location()
{
  result = qword_1EDB7FE80;
  if (!qword_1EDB7FE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94611C0()
{
  sub_1C96A4DF4();
  if (v0 <= 0x3F)
  {
    sub_1C96162DC(319, &qword_1EDB80050, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1C9461318();
      if (v2 <= 0x3F)
      {
        sub_1C96162DC(319, &qword_1EDB7FDA8, sub_1C94B7264);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C94612C0()
{
  if (!qword_1EDB80050)
  {
    sub_1C96A4A54();
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB80050);
    }
  }
}

void sub_1C9461318()
{
  if (!qword_1EDB7FDC0)
  {
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7FDC0);
    }
  }
}

uint64_t type metadata accessor for LocationOfInterest()
{
  result = qword_1EDB7C308;
  if (!qword_1EDB7C308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94613B4()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_1C9461318();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CurrentLocation()
{
  result = qword_1EDB79F58;
  if (!qword_1EDB79F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C94614BC()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C9461550()
{
  sub_1C9566898(319, &unk_1EDB79F70, type metadata accessor for CurrentLocation);
  if (v0 <= 0x3F)
  {
    sub_1C9566898(319, &qword_1EDB7A270, type metadata accessor for SavedLocation);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1C946162C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5(unint64_t *a1, uint64_t *a2)
{

  return sub_1C9469CB4(a1, a2);
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_1C950B5B8(va, 0);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_1C96A7D44();
}

void OUTLINED_FUNCTION_40()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x1EEE44048](v4, a2, a3, 0);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1C96A4F34();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return type metadata accessor for PrecipitationNotificationLocalizationToken();
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return sub_1C9489990();
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_1C96A4F44();
}

void OUTLINED_FUNCTION_3_37()
{
}

uint64_t OUTLINED_FUNCTION_3_39()
{

  return sub_1C96A3E24();
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1C96A4BD4();
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return sub_1C96A4C14();
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_3_46()
{

  JUMPOUT(0x1CCA8CB00);
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return sub_1C9489AF8(v1, v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_3_57@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = a1;
  *&v10 = v1;
  *(&v10 + 1) = v3;
  *&v11 = v5;
  *(&v11 + 1) = v6;
  *(v4 + 40) = v11;
  *(v4 + 24) = v10;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  return v9 + 40;
}

void *OUTLINED_FUNCTION_3_58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[7] = a2;
  result[8] = v2;
  result[4] = v3;
  result[12] = a2;
  result[13] = v2;
  result[9] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_1C96A7144();
}

uint64_t OUTLINED_FUNCTION_3_65()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_3_66()
{
  *v1 = v4;
  *(v1 + 8) = v3;
  v8 = *(v5 - 168);
  *(v1 + 16) = *(v5 - 160);
  *(v1 + 24) = v2;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = *(v5 - 252);
  v9 = *(v5 - 248);
  *(v1 + 56) = *(v5 - 240);
  *(v1 + 64) = v9;
  v10 = (v1 + v0[6]);
  v11 = *(v5 - 72);
  *v10 = v8;
  v10[1] = v11;
  v12 = (v1 + v0[8]);
  v13 = *(v5 - 184);
  *v12 = *(v5 - 176);
  v12[1] = v13;
  v14 = (v1 + v0[9]);
  v15 = *(v5 - 200);
  *v14 = *(v5 - 192);
  v14[1] = v15;
  v16 = (v1 + v0[10]);
  v17 = *(v5 - 216);
  *v16 = *(v5 - 208);
  v16[1] = v17;
  v18 = (v1 + v0[11]);
  v19 = *(v5 - 232);
  *v18 = *(v5 - 224);
  v18[1] = v19;
}

uint64_t sub_1C9462084()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C96AC330;
  type metadata accessor for AutomationAssembly();
  v3 = OUTLINED_FUNCTION_0_34();
  *(v2 + 56) = v1;
  *(v2 + 64) = sub_1C946307C(&qword_1EDB7EBB0, type metadata accessor for AutomationAssembly);
  *(v2 + 32) = v3;
  type metadata accessor for ManagerAssembly();
  v4 = OUTLINED_FUNCTION_0_34();
  *(v2 + 96) = v1;
  *(v2 + 104) = sub_1C946307C(&unk_1EDB7F4B8, type metadata accessor for ManagerAssembly);
  *(v2 + 72) = v4;
  type metadata accessor for MonitorAssembly();
  v5 = OUTLINED_FUNCTION_0_34();
  *(v2 + 136) = v1;
  *(v2 + 144) = sub_1C946307C(qword_1EDB7F370, type metadata accessor for MonitorAssembly);
  *(v2 + 112) = v5;
  type metadata accessor for ServiceAssembly();
  v6 = OUTLINED_FUNCTION_0_34();
  *(v2 + 176) = v1;
  *(v2 + 184) = sub_1C946307C(qword_1EDB7F2D0, type metadata accessor for ServiceAssembly);
  *(v2 + 152) = v6;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_1C96A5084();
}

__n128 OUTLINED_FUNCTION_0_5()
{
  v2 = *(v0 + 32);
  *(v1 - 160) = *(v0 + 16);
  *(v1 - 144) = v2;
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 - 128) = result;
  *(v1 - 112) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_1C96A50E4();
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return sub_1C96A7BA4();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_1(unint64_t *a1)
{

  return sub_1C955D018(a1);
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return sub_1C9495F48();
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_0_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_71()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return sub_1C96A4A14();
}

uint64_t OUTLINED_FUNCTION_0_75()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_83()
{

  return sub_1C9499C50(v0, type metadata accessor for LocationsConfiguration);
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return sub_1C96A7544();
}

uint64_t OUTLINED_FUNCTION_0_88()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_89()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_91()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_93()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_94()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_95()
{

  return sub_1C96A7C74();
}

char *OUTLINED_FUNCTION_0_96@<X0>(unint64_t a1@<X8>)
{

  return sub_1C94B6C6C((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_0_97(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_0_100()
{

  return sub_1C94B37E0(v0, type metadata accessor for UserIdentity);
}

uint64_t OUTLINED_FUNCTION_0_101()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_108()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_109()
{

  return sub_1C96A7004();
}

uint64_t OUTLINED_FUNCTION_0_111()
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_0_112()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_0_113()
{

  return sub_1C96A79E4();
}

_OWORD *sub_1C946306C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C946307C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C9463174(uint64_t a1)
{
  v2 = sub_1C96A57B4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A5594();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a1;
  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for AutomationDataService();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  v28 = *MEMORY[0x1E69D6AD0];
  v14 = *(v10 + 104);
  v29 = v10 + 104;
  v30 = v14;
  (v14)(v13);
  sub_1C96A5064();

  v15 = *(v10 + 8);
  v27[1] = v10 + 8;
  v31 = v15;
  v16 = OUTLINED_FUNCTION_38();
  v17(v16);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B90);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  v18 = *(v4 + 104);
  v18(v7, *MEMORY[0x1E69D6BE8], v2);
  sub_1C96A5034();

  v19 = *(v4 + 8);
  v19(v7, v2);
  v18(v7, *MEMORY[0x1E69D6BF0], v2);
  sub_1C96A5034();

  v19(v7, v2);
  v20 = v28;
  v21 = v30;
  v30(v13, v28, v8);
  sub_1C96A5064();

  v22 = OUTLINED_FUNCTION_38();
  v31(v22);
  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for StubPPTWeatherDataManager();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for StubPPTSavedLocationsManager();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  v21(v13, v20, v8);
  sub_1C96A5064();

  v23 = OUTLINED_FUNCTION_38();
  v24 = v31;
  v31(v23);
  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for StubPPTSavedSingleLocationManager();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  v21(v13, v20, v8);
  sub_1C96A5064();

  v25 = OUTLINED_FUNCTION_38();
  return v24(v25);
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_1C96A5084();
}

uint64_t OUTLINED_FUNCTION_16_0()
{
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return sub_1C96A7D44();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return sub_1C948E888(v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return sub_1C96A7D44();
}

void OUTLINED_FUNCTION_1_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_36(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = 1752392040;
  *(result + 12) = 2049;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_54@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);

  return sub_1C9499B10(v3);
}

void OUTLINED_FUNCTION_1_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_66()
{

  return sub_1C96A50E4();
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return sub_1C96A7D14();
}

char *OUTLINED_FUNCTION_1_69()
{

  return sub_1C94B6C6C(0, v0, 0);
}

id OUTLINED_FUNCTION_1_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14)
{

  return sub_1C963D3EC(0xD000000000000015, a2, a3, v16 | 0x8000000000000000, v17, v15, v18, a8, v14, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_1_80()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_82()
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_1_83()
{

  return sub_1C96A5544();
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_1_87()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_14_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_82_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1 + 24);

  return __swift_project_boxed_opaque_existential_1((a1 + v1), v3);
}

void OUTLINED_FUNCTION_38_0()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1C94C4364(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_43_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

BOOL OUTLINED_FUNCTION_43_5()
{

  return os_log_type_enabled(v1, v0);
}

BOOL OUTLINED_FUNCTION_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_43_12()
{
  result = v1;
  *(v2 - 312) = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_43_14()
{
  *(v7 - 144) = v5;
  *(v7 - 136) = v1;
  *(v7 - 128) = v4;
  *(v7 - 120) = v0;
  *(v7 - 112) = v6;
  *(v7 - 104) = v3;
  *(v7 - 96) = v2;
}

void *OUTLINED_FUNCTION_28_0(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t sub_1C9464160(uint64_t a1)
{
  sub_1C96A52C4();
  OUTLINED_FUNCTION_1();
  v100 = v3;
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_37_0();
  v99 = v4;
  OUTLINED_FUNCTION_15_4();
  sub_1C96A57B4();
  OUTLINED_FUNCTION_1();
  v112 = v5;
  v113 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_0();
  v111 = v7;
  OUTLINED_FUNCTION_15_4();
  v8 = sub_1C96A5594();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5334();
  v98[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070);
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v14 = *MEMORY[0x1E69D6AD0];
  v16 = v10 + 104;
  v15 = *(v10 + 104);
  v17 = OUTLINED_FUNCTION_7_48();
  v15(v17);
  OUTLINED_FUNCTION_12_38();

  v18 = *(v10 + 8);
  v19 = OUTLINED_FUNCTION_41_0();
  v18(v19);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D40);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v20 = OUTLINED_FUNCTION_7_48();
  v15(v20);
  OUTLINED_FUNCTION_12_38();

  v21 = OUTLINED_FUNCTION_41_0();
  v18(v21);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D48);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v22 = OUTLINED_FUNCTION_7_48();
  v15(v22);
  OUTLINED_FUNCTION_12_38();

  v23 = OUTLINED_FUNCTION_41_0();
  v18(v23);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D50);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v104 = v14;
  (v15)(v13, v14, v8);
  v110 = v15;
  OUTLINED_FUNCTION_12_38();

  v24 = OUTLINED_FUNCTION_41_0();
  v18(v24);
  v103 = v18;
  v105 = v10 + 8;
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D58);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v25 = OUTLINED_FUNCTION_7_48();
  v15(v25);
  OUTLINED_FUNCTION_12_38();

  v26 = OUTLINED_FUNCTION_41_0();
  v18(v26);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D60);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  v102 = a1;
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5360);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5488);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v106 = *MEMORY[0x1E69D6BF0];
  v27 = v112;
  v28 = v113;
  v107 = *(v113 + 104);
  v108 = v113 + 104;
  v29 = v111;
  v107(v111);
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v109 = *(v28 + 8);
  v113 = v28 + 8;
  v109(v29, v27);
  v30 = v104;
  v31 = v110;
  (v110)(v13, v104, v8);
  sub_1C96A5064();

  v32 = OUTLINED_FUNCTION_41_0();
  v33 = v103;
  v103(v32);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D68);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  (v31)(v13, v30, v8);
  v34 = v16;
  OUTLINED_FUNCTION_10_43();

  v33(v13, v8);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5078);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D70);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v35 = v111;
  v36 = v112;
  (v107)(v111, v106, v112);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v109(v35, v36);
  v37 = v104;
  v98[1] = v34;
  v38 = v110;
  (v110)(v13, v104, v8);
  sub_1C96A5064();

  v39 = v103;
  (v103)(v13, v8);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D78);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v98[0] = v8;
  (v38)(v13, v37, v8);
  OUTLINED_FUNCTION_10_43();

  v39(v13, v8);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D80);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v40 = v111;
  v41 = v112;
  v42 = v107;
  (v107)(v111, *MEMORY[0x1E69D6BE8], v112);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v43 = v109;
  v109(v40, v41);
  (v42)(v40, v106, v41);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_9_42();
  v43(v40, v41);
  v44 = v98[0];
  v45 = v110;
  (v110)(v13, v104, v98[0]);
  OUTLINED_FUNCTION_10_43();

  v46 = OUTLINED_FUNCTION_41_0();
  v47 = v103;
  v103(v46);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D88);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v48 = OUTLINED_FUNCTION_3_54();
  v45(v48);
  OUTLINED_FUNCTION_10_43();

  v49 = OUTLINED_FUNCTION_41_0();
  v47(v49);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D90);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v50 = OUTLINED_FUNCTION_3_54();
  v45(v50);
  OUTLINED_FUNCTION_10_43();

  v51 = OUTLINED_FUNCTION_41_0();
  v47(v51);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D98);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v52 = OUTLINED_FUNCTION_3_54();
  v45(v52);
  OUTLINED_FUNCTION_10_43();

  v53 = OUTLINED_FUNCTION_41_0();
  v47(v53);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5088);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  v54 = OUTLINED_FUNCTION_3_54();
  v110(v54);
  sub_1C96A5064();

  v55 = OUTLINED_FUNCTION_41_0();
  v47(v55);
  v56 = v47;
  sub_1C96A5334();
  sub_1C96A5484();

  v57 = OUTLINED_FUNCTION_3_54();
  v58 = v110;
  v110(v57);
  sub_1C96A5064();

  v59 = OUTLINED_FUNCTION_41_0();
  v56(v59);
  sub_1C96A5334();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v60 = OUTLINED_FUNCTION_3_54();
  v58(v60);
  OUTLINED_FUNCTION_10_43();

  v61 = OUTLINED_FUNCTION_41_0();
  v56(v61);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v62 = OUTLINED_FUNCTION_3_54();
  v58(v62);
  OUTLINED_FUNCTION_10_43();

  v63 = OUTLINED_FUNCTION_41_0();
  v56(v63);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v64 = OUTLINED_FUNCTION_3_54();
  v58(v64);
  OUTLINED_FUNCTION_10_43();

  v65 = OUTLINED_FUNCTION_41_0();
  v56(v65);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DB0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v66 = OUTLINED_FUNCTION_3_54();
  v58(v66);
  OUTLINED_FUNCTION_10_43();

  v67 = OUTLINED_FUNCTION_41_0();
  v56(v67);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DB8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v68 = OUTLINED_FUNCTION_3_54();
  v58(v68);
  OUTLINED_FUNCTION_10_43();

  v69 = OUTLINED_FUNCTION_41_0();
  v56(v69);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DC0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DC8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v70 = OUTLINED_FUNCTION_11_40();
  v71(v70);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v72 = OUTLINED_FUNCTION_14_35();
  v73(v72);
  (v58)(v13, v104, v44);
  sub_1C96A5064();

  v74 = OUTLINED_FUNCTION_41_0();
  v75 = v103;
  v103(v74);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5190);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v76 = OUTLINED_FUNCTION_3_54();
  v58(v76);
  OUTLINED_FUNCTION_10_43();

  v77 = OUTLINED_FUNCTION_41_0();
  v75(v77);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DE0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DE8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v78 = OUTLINED_FUNCTION_3_54();
  v58(v78);
  OUTLINED_FUNCTION_10_43();

  v79 = OUTLINED_FUNCTION_41_0();
  v75(v79);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DF0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DF8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v80 = OUTLINED_FUNCTION_3_54();
  v58(v80);
  OUTLINED_FUNCTION_10_43();

  v81 = OUTLINED_FUNCTION_41_0();
  v75(v81);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5490);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v82 = OUTLINED_FUNCTION_3_54();
  v58(v82);
  OUTLINED_FUNCTION_10_43();

  v83 = OUTLINED_FUNCTION_41_0();
  v75(v83);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E00);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E08);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  type metadata accessor for NotificationStore();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E10);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v84 = OUTLINED_FUNCTION_3_54();
  v58(v84);
  OUTLINED_FUNCTION_10_43();

  v85 = OUTLINED_FUNCTION_41_0();
  v75(v85);
  sub_1C96A5334();
  sub_1C946B5D0(0, &qword_1EDB7CD98);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();
  OUTLINED_FUNCTION_9_42();
  v86 = OUTLINED_FUNCTION_3_54();
  v58(v86);
  OUTLINED_FUNCTION_10_43();

  v87 = OUTLINED_FUNCTION_41_0();
  v75(v87);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E18);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v88 = OUTLINED_FUNCTION_3_54();
  v58(v88);
  OUTLINED_FUNCTION_10_43();

  v89 = OUTLINED_FUNCTION_41_0();
  v75(v89);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E20);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E28);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v90 = OUTLINED_FUNCTION_11_40();
  v91(v90);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();

  v92 = OUTLINED_FUNCTION_14_35();
  v93(v92);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E30);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E38);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E40);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5344();
  sub_1C96A5464();

  sub_1C96A5354();
  __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  v95 = v99;
  v94 = v100;
  v96 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x1E69D6500], v101);
  sub_1C96A54F4();
  (*(v94 + 8))(v95, v96);
  return __swift_destroy_boxed_opaque_existential_1Tm(v114);
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_1C96A5714();
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return sub_1C96A6F94();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_15_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return sub_1C96A4DF4();
}

uint64_t OUTLINED_FUNCTION_15_26()
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15_27()
{
}

uint64_t OUTLINED_FUNCTION_15_33()
{

  return sub_1C96A7B54();
}

uint64_t OUTLINED_FUNCTION_15_36()
{
}

void OUTLINED_FUNCTION_15_37()
{

  sub_1C94FBB88();
}

uint64_t OUTLINED_FUNCTION_15_39()
{

  return sub_1C948EBA4(v0, type metadata accessor for LocationDataModel);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C96A62D4();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return sub_1C96A5064();
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return swift_once();
}

void OUTLINED_FUNCTION_31(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_6_15(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE500000000000000, v4, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_1C96A4DF4();
}

void OUTLINED_FUNCTION_6_17()
{

  os_unfair_lock_lock(v0 + 6);
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_19(unint64_t *a1)
{

  return sub_1C955D018(a1);
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return sub_1C9489990();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_1C95933D4();
}

uint64_t OUTLINED_FUNCTION_6_34(unint64_t *a1)
{

  return sub_1C94892C0(a1);
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return type metadata accessor for Location();
}

void OUTLINED_FUNCTION_39_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

double OUTLINED_FUNCTION_6_43()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_46@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_1C96A7C44();
}

void OUTLINED_FUNCTION_6_48()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_6_51()
{
}

uint64_t OUTLINED_FUNCTION_6_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

unint64_t OUTLINED_FUNCTION_6_54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    return a9;
  }

  else
  {
    return v10;
  }
}

unint64_t OUTLINED_FUNCTION_6_60(float a1)
{
  *v3 = a1;
  *(v3 + 4) = 1752392040;
  *(v3 + 12) = 2081;

  return sub_1C9484164(v2, v1, (v4 - 136));
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_11_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_41(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 + *(a1 + 44)) = 0;
  *v19 = v18;
  *(v19 + 8) = v16;
  *(v19 + 16) = a15;
  *(v19 + 24) = v17;
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  *(v19 + 48) = v15;
  *(v19 + 56) = a13;
  *(v19 + 64) = a12;
  return v19 + *(a1 + 20);
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_1C96A7DB4();
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_11_17()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return MEMORY[0x1EEE45510](v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_11_20()
{

  return sub_1C96A7924();
}

uint64_t OUTLINED_FUNCTION_11_25@<X0>(unint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  a2.n128_u64[0] = *v2;
  v5[10] = a2;
  a2.n128_u64[0] = *a1;
  v5[8] = a2;
  a2.n128_u64[0] = *v4;
  v5[11] = a2;
  a2.n128_u64[0] = *v3;
  v5[9] = a2;

  return sub_1C96A66B4();
}

uint64_t OUTLINED_FUNCTION_11_30()
{
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return sub_1C96A53C4();
}

double OUTLINED_FUNCTION_11_32()
{

  *&result = *&CLLocationCoordinate2DMake(v1, v2);
  return result;
}

void OUTLINED_FUNCTION_12_5()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return sub_1C96A5504();
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_42()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return swift_arrayInitWithCopy();
}

BOOL OUTLINED_FUNCTION_14_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_14_11(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return sub_1C948F150(v1, v0);
}

id OUTLINED_FUNCTION_14_14@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return sub_1C96A53C4();
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_1C96A4F24();
}

uint64_t OUTLINED_FUNCTION_14_23()
{

  return sub_1C96A4314();
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_1C95F5B4C(v0, type metadata accessor for DarwinNotifications);
}

_OWORD *OUTLINED_FUNCTION_14_26()
{

  return sub_1C946306C((v0 - 112), (v0 - 144));
}

void OUTLINED_FUNCTION_14_28()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return type metadata accessor for SyncedData();
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return type metadata accessor for PrecipitationNotification();
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_14_37()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return sub_1C96A7DE4();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C9466CF8()
{
  v0 = sub_1C96A5594();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5080);
  sub_1C96A5484();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1C96A5064();

  return (*(v1 + 8))(v3, v0);
}

void sub_1C9466EA8()
{
  if (!qword_1EDB7D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A6380);
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7D080);
    }
  }
}

uint64_t sub_1C9466F0C@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5010);
  result = sub_1C96A5274();
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5030);
  result = sub_1C96A5274();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5020);
  result = sub_1C96A5274();
  if (v9)
  {
    type metadata accessor for AppConfigurationRemoteSettingsProvider();
    v5 = swift_allocObject();
    *(v5 + 56) = 7;
    sub_1C94670AC(&v8, v5 + 16);
    type metadata accessor for AppConfigurationService();
    v6 = swift_allocObject();
    v7 = sub_1C946FE0C(v12, v10, v5, v6);
    result = sub_1C9470218(&qword_1EDB7DF60, type metadata accessor for AppConfigurationService);
    *a2 = v7;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C94670AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C94670C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubAppConfigurationDataService();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xD000000000001184;
  *(result + 32) = 0x80000001C96CCAF0;
  a1[3] = v2;
  a1[4] = &protocol witness table for StubAppConfigurationDataService;
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_0()
{
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_1C96A6224();
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v2 = *(v0 + 96);
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  v7 = *(v2 + 288);
  *(v2 + 288) = 0x80;

  return sub_1C94AF5A0(v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return sub_1C96A5134();
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return sub_1C96A7F04();
}

uint64_t OUTLINED_FUNCTION_13_23()
{
  v2 = *(v0 - 80);
  *(v0 - 128) = *(v0 - 96);
  *(v0 - 112) = v2;

  return sub_1C96A62A4();
}

uint64_t OUTLINED_FUNCTION_13_24()
{

  return sub_1C948E940(v0, type metadata accessor for CurrentLocation);
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_13_27()
{
}

uint64_t OUTLINED_FUNCTION_13_28()
{

  return sub_1C96A6BE4();
}

uint64_t OUTLINED_FUNCTION_13_32()
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

_OWORD *OUTLINED_FUNCTION_13_33()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C946306C(v4, (v2 - 144));
}

BOOL OUTLINED_FUNCTION_13_34()
{

  return sub_1C94CF63C();
}

uint64_t OUTLINED_FUNCTION_13_39()
{

  return sub_1C96A72C4();
}

uint64_t OUTLINED_FUNCTION_13_42()
{
}

uint64_t OUTLINED_FUNCTION_13_43()
{

  return LegacyNotificationSubscriptionManager.subscription(with:)(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_13_45()
{

  return sub_1C96A7CD4();
}

uint64_t OUTLINED_FUNCTION_13_46(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_13_47@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 40 * a1);
  v5 = *v3;
  result = v3[1];
  *(v2 + 184) = result;
  v6 = v3[2];
  v7 = v3[3];
  *(v2 + 192) = v7;
  LOWORD(v3) = *(v3 + 16);
  *(v2 + 16) = v5;
  *(v2 + 24) = result;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  *(v2 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_1C9470AFC(v3, v1);
}

uint64_t OUTLINED_FUNCTION_36_7()
{
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1)
{

  return sub_1C9470AFC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1C96A61C4();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return sub_1C948CC3C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_1C96A5554();
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return sub_1C96A7F04();
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return sub_1C96A7C04();
}

void OUTLINED_FUNCTION_12_37(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 80) = a2;
  *(a1 + 96) = a4;
  *(a1 + 112) = a3;
  *(a1 + 128) = 0x401C000000000000;
  *(a1 + 136) = 0;
  *(a1 + 137) = 33686018;
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_1C96A5064();
}

uint64_t OUTLINED_FUNCTION_12_39()
{

  return sub_1C948EAF4(v0, type metadata accessor for LocationModel);
}

void OUTLINED_FUNCTION_12_40()
{
  *(v0 + 12) = 2160;
  *(v0 + 14) = 1752392040;
  *(v0 + 22) = 2081;
}

uint64_t OUTLINED_FUNCTION_12_44()
{

  return sub_1C9484328(v0, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_1C954BFB8();
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return sub_1C96A51A4();
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_31_10(char a1@<W8>)
{
  v4 = 0;
  *(v1 + 544) = 0u;
  *(v1 + 560) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 576) = a1;
  v5 = 0;

  WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)((v2 - 240), (v1 + 496), 2, *(&v5 - 8));
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_9_12(float a1)
{
  *v2 = a1;
  *(v2 + 4) = 1752392040;
  *(v2 + 12) = 2113;

  return v1;
}

void OUTLINED_FUNCTION_9_13(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE800000000000000, v4, v3, a2, a3);
}

BOOL OUTLINED_FUNCTION_9_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_9_20@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C9573A60(v3 + a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_9_21()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_9_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_28()
{
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return sub_1C96A6254();
}

double OUTLINED_FUNCTION_9_37@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  *(v2 - 256) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_42()
{
}

uint64_t OUTLINED_FUNCTION_9_44()
{

  return sub_1C96A4F44();
}

double OUTLINED_FUNCTION_9_47(uint64_t a1)
{

  return sub_1C94FA584(a1, 0xE800000000000000, v1);
}

uint64_t sub_1C946829C(uint64_t a1)
{
  v2 = sub_1C96A5594();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = a1;
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5008);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v35 = *MEMORY[0x1E69D6AD0];
  v34 = *(v4 + 104);
  v34(v7);
  OUTLINED_FUNCTION_6_10();

  v8 = *(v4 + 8);
  v32[2] = v4 + 8;
  v33 = v8;
  v9 = OUTLINED_FUNCTION_2_14();
  v10(v9);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5010);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_7_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5018);
  v11 = sub_1C96A57B4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = *(v14 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C96AB910;
  v18 = v17 + v16;
  v19 = *(v13 + 104);
  v19(v18, *MEMORY[0x1E69D6BE8], v11);
  v19(v18 + v15, *MEMORY[0x1E69D6BF0], v11);
  v19(v18 + 2 * v15, *MEMORY[0x1E69D6BF8], v11);
  sub_1C96A5044();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5020);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C68);
  OUTLINED_FUNCTION_3_5();
  sub_1C96A5054();
  OUTLINED_FUNCTION_7_10();
  v20 = v34;
  (v34)(v7, v35, v2);
  sub_1C96A5064();

  v21 = OUTLINED_FUNCTION_2_14();
  v22 = v33;
  v33(v21);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5028);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  type metadata accessor for ActiveUserService();
  OUTLINED_FUNCTION_3_5();
  sub_1C96A5054();
  OUTLINED_FUNCTION_7_10();
  v23 = OUTLINED_FUNCTION_1_14();
  v20(v23);
  sub_1C96A5064();

  v24 = OUTLINED_FUNCTION_2_14();
  v22(v24);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5030);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v25 = OUTLINED_FUNCTION_1_14();
  v20(v25);
  OUTLINED_FUNCTION_6_10();

  v26 = OUTLINED_FUNCTION_2_14();
  v22(v26);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v27 = OUTLINED_FUNCTION_1_14();
  v20(v27);
  OUTLINED_FUNCTION_6_10();

  v28 = OUTLINED_FUNCTION_2_14();
  v22(v28);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5048);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v29 = OUTLINED_FUNCTION_1_14();
  v20(v29);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_7_10();
  v30 = OUTLINED_FUNCTION_2_14();
  v22(v30);
  type metadata accessor for GeocodeService(0);
  OUTLINED_FUNCTION_3_5();
  sub_1C96A5054();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5050);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5344();
  sub_1C96A5464();
}

size_t OUTLINED_FUNCTION_4_8(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_13()
{
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{
  *(a1 + 8) = sub_1C9528190;
  *(v3 + 16) = v2;
  return v1 + 208;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return sub_1C96A4F74();
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return type metadata accessor for Location();
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return sub_1C96A4534();
}

void OUTLINED_FUNCTION_4_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_37()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  __swift_project_boxed_opaque_existential_1((v1 - 144), v2);

  sub_1C956C79C(v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_4_39()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_4_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_1C95F97C0(v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_4_50(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return sub_1C96A7C84();
}

uint64_t OUTLINED_FUNCTION_4_55()
{

  return sub_1C96A7D74();
}

_WORD *OUTLINED_FUNCTION_4_58(_WORD *result)
{
  *(v2 - 144) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_60(unint64_t *a1)
{

  return sub_1C9633BA0(a1);
}

uint64_t OUTLINED_FUNCTION_4_64()
{

  return sub_1C96A7C04();
}

void OUTLINED_FUNCTION_4_65()
{

  JUMPOUT(0x1CCA8D8A0);
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_4_67(uint64_t a1, unint64_t *a2)
{

  return sub_1C946B5D0(0, a2);
}

uint64_t OUTLINED_FUNCTION_4_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_69()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_4_70()
{

  return sub_1C96A7EE4();
}

void sub_1C94690E0()
{
  sub_1C9466EA8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C94691E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PermanentURLFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for PermanentURLFactory;
  *a1 = result;
  return result;
}

void sub_1C946924C(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038);
  sub_1C96A5274();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040);
    sub_1C96A5274();
    if (v6)
    {
      v4 = type metadata accessor for IdentityService();
      swift_allocObject();
      IdentityService.init(keyValueStoreProvider:iCloudStatusProvider:)();
      a2[3] = v4;
      a2[4] = &protocol witness table for IdentityService;
      *a2 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C946934C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDB7D5B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB7D5B8;
  a1[3] = type metadata accessor for UbiquitousKeyValueStoreProvider();
  a1[4] = &protocol witness table for UbiquitousKeyValueStoreProvider;
  *a1 = v2;

  return sub_1C96A3D04();
}

uint64_t sub_1C94693D0()
{
  type metadata accessor for iCloudStatusProvider();
  inited = swift_initStaticObject();
  type metadata accessor for UbiquitousKeyValueStoreProvider();
  v1 = swift_allocObject();
  result = sub_1C9469470(inited, v1);
  qword_1EDB7D5B8 = result;
  return result;
}

uint64_t sub_1C9469470(uint64_t a1, uint64_t a2)
{
  v31 = sub_1C96A5174();
  MEMORY[0x1EEE9AC00](v31);
  v30 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A65E4();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A7724();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v35[3] = type metadata accessor for iCloudStatusProvider();
  v35[4] = &protocol witness table for iCloudStatusProvider;
  v35[0] = a1;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(a2 + 16) = sub_1C96A5124();
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + 64) = MEMORY[0x1E69E7CC0];
  v14 = v13;
  sub_1C9469B6C(v35, a2 + 88);
  v28[1] = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v34 = v14;
  v28[3] = sub_1C9469C18(&qword_1EDB7CDC0, MEMORY[0x1E69E8030]);
  v28[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  v28[4] = MEMORY[0x1E69E6328];
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68);
  sub_1C96A79E4();
  sub_1C96A6594();
  v15 = sub_1C96A7714();
  v16 = *(v33 + 8);
  v33 += 8;
  v16(v8, v32);
  v17 = *(v29 + 8);
  v17(v11, v9);
  *(a2 + 72) = v15;
  sub_1C96A65D4();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C96A79E4();
  v18 = sub_1C96A7714();
  v17(v11, v9);
  v16(v8, v32);
  *(a2 + 80) = v18;
  v19 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C9469C18(&qword_1EDB7D098, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6540);
  swift_allocObject();
  *(a2 + 40) = sub_1C96A5544();
  v34 = v19;
  sub_1C96A79E4();
  swift_allocObject();
  *(a2 + 32) = sub_1C96A5544();
  v34 = v19;
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6638);
  swift_allocObject();
  *(a2 + 24) = sub_1C96A5544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6640);
  swift_allocObject();
  v20 = sub_1C96A54E4();
  *(a2 + 48) = v20;
  *(a2 + 56) = 0;
  v21 = objc_opt_self();
  sub_1C96A3D04();
  v22 = [v21 defaultCenter];
  v23 = *MEMORY[0x1E696A9E8];
  sub_1C96A3D04();
  v24 = sub_1C9469CFC();
  [v22 addObserver:a2 selector:sel_handleLocationsChangedExternally_ name:v23 object:v24];

  v25 = [v21 defaultCenter];
  sub_1C96A3D04();
  v26 = sub_1C9469D80();
  [v25 addObserver:a2 selector:sel_migrateToEncryptedStoreIfNeededAndHandleLocationsChangedExternally_ name:v23 object:v26];

  sub_1C946BEF4(v20);

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return a2;
}

uint64_t sub_1C9469B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C9469BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C9469C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C9469C60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9469CB4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C9469D3C@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1C9469E78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for iCloudStatusProvider();
  result = swift_initStaticObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for iCloudStatusProvider;
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for IdentityService()
{
  result = qword_1EDB7C618;
  if (!qword_1EDB7C618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9469F0C()
{
  if (!qword_1EDB7F998[0])
  {
    type metadata accessor for UserIdentity();
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, qword_1EDB7F998);
    }
  }
}

uint64_t type metadata accessor for UserIdentity()
{
  result = qword_1EDB7F9E0;
  if (!qword_1EDB7F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9469FB0()
{
  result = sub_1C96A4A54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void IdentityService.init(keyValueStoreProvider:iCloudStatusProvider:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v55 = v2;
  v53 = v3;
  v54 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v52 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v51 = v7 - v6;
  v48 = sub_1C96A6574();
  OUTLINED_FUNCTION_1();
  v47 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v11 - v10);
  sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v14 - v13);
  v45 = sub_1C96A7754();
  OUTLINED_FUNCTION_1();
  v44 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v18 - v17);
  sub_1C96A7724();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v21 - v20);
  v50 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v49 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  v26 = v25 - v24;
  v27 = sub_1C96A5114();
  v28 = OUTLINED_FUNCTION_7(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB7CDE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_1EDB7CDE8;
  *(v0 + 16) = qword_1EDB7CDE8;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v30 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lastKnownIdentity;
  v31 = type metadata accessor for UserIdentity();
  __swift_storeEnumTagSinglePayload(v0 + v30, 1, 1, v31);
  v32 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService_observers) = MEMORY[0x1E69E7CC0];
  v33 = v32;
  v34 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lock;
  v35 = v29;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v0 + v34) = sub_1C96A5124();
  v36 = OBJC_IVAR____TtC11WeatherCore15IdentityService_notifyQueue;
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  sub_1C96A6594();
  v56[0] = v33;
  sub_1C946F8C0(&qword_1EDB7CDC0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68);
  sub_1C96A79E4();
  (*(v44 + 104))(v43, *MEMORY[0x1E69E8090], v45);
  *(v0 + v36) = sub_1C96A7784();
  v37 = OBJC_IVAR____TtC11WeatherCore15IdentityService_appUpgradeKvsMigrator;
  type metadata accessor for AppUpgradeKeyValueStoreMigrator();
  swift_allocObject();
  *(v0 + v37) = sub_1C946C868();
  *(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService____lazy_storage___unencryptedStore) = 0;
  v38 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lazyUnencryptedStore;
  sub_1C946F8C0(&qword_1EDB7D098, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6540);
  swift_allocObject();
  *(v0 + v38) = sub_1C96A5544();
  *(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService____lazy_storage___encryptedStore) = 0;
  v39 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lazyEncryptedStore;
  v56[0] = MEMORY[0x1E69E7CC0];
  sub_1C96A79E4();
  swift_allocObject();
  *(v0 + v39) = sub_1C96A5544();
  sub_1C9469B6C(v55, v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService_iCloudStatusProvider);
  (*(v47 + 104))(v46, *MEMORY[0x1E69E7FA0], v48);
  v40 = sub_1C96A7794();
  (*(v47 + 8))(v46, v48);
  sub_1C9469B6C(v53, v57);
  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  sub_1C94670AC(v57, v41 + 24);
  v56[4] = sub_1C946FE00;
  v56[5] = v41;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 1107296256;
  v56[2] = sub_1C946FCF8;
  v56[3] = &block_descriptor_9;
  v42 = _Block_copy(v56);
  sub_1C96A3D04();
  sub_1C96A6594();
  sub_1C946F8C0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v26, v51, v42);
  _Block_release(v42);

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  (*(v52 + 8))(v51, v54);
  (*(v49 + 8))(v26, v50);

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C946A920()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C946A960()
{
  v0 = objc_opt_self();
  OUTLINED_FUNCTION_1_43();
  v1 = sub_1C96A7004();
  v2 = [v0 wc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_1EDB7CDE8 = v2;
}

unint64_t sub_1C946AA30()
{
  result = qword_1EDB7D0A8;
  if (!qword_1EDB7D0A8)
  {
    sub_1C96A5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D0A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return sub_1C948E888(v0, type metadata accessor for SavedLocation);
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return type metadata accessor for UserIdentity();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_25()
{

  return sub_1C96A66B4();
}

uint64_t OUTLINED_FUNCTION_7_26()
{

  return sub_1C96A7D44();
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_31@<X0>(char a1@<W8>)
{
  *(v1 + 1272) = a1;

  return sub_1C96A7D44();
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return sub_1C95EAF44(v0, type metadata accessor for DataProtectionData);
}

uint64_t OUTLINED_FUNCTION_7_34()
{

  return sub_1C96A7CB4();
}

double OUTLINED_FUNCTION_7_35()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_36()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char w8_0@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 - 97) = w8_0;

  sub_1C9618150(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return sub_1C96A6144();
}

uint64_t OUTLINED_FUNCTION_7_41(unint64_t *a1)
{

  return sub_1C9469CB4(a1, v1);
}

void OUTLINED_FUNCTION_7_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_55(uint64_t result)
{
  *(v2 + 14) = result;
  *(v2 + 22) = 2160;
  *(v2 + 24) = v1;
  *(v2 + 32) = 1025;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return swift_arrayInitWithCopy();
}

unint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9476F90(a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_1C96A7DE4();
}

void OUTLINED_FUNCTION_10_14()
{
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_1C95739FC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return sub_1C96A7B94();
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_10_40()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_10_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_43()
{

  return sub_1C96A5064();
}

void OUTLINED_FUNCTION_10_46()
{

  JUMPOUT(0x1CCA8CB00);
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return sub_1C96A7C04();
}

uint64_t OUTLINED_FUNCTION_10_49()
{

  return sub_1C96A7844();
}

uint64_t sub_1C946B5D0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  sub_1C946306C((v0 - 152), (v0 - 120));

  return sub_1C9484328(v0 - 120, v0 - 152);
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_1C96A7B84();
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_1C96A7784();
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return sub_1C96A7B54();
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_2_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_1C96A4534();
}

void OUTLINED_FUNCTION_2_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return type metadata accessor for SavedLocation();
}

uint64_t OUTLINED_FUNCTION_2_50()
{
}

uint64_t OUTLINED_FUNCTION_2_51()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_53(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_2_56()
{

  return sub_1C96A6F94();
}

void OUTLINED_FUNCTION_2_57(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_2_59()
{
  v1[12] = sub_1C9613A14;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_60()
{

  return sub_1C96A7544();
}

uint64_t OUTLINED_FUNCTION_2_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_69()
{

  return sub_1C96A7C84();
}

uint64_t OUTLINED_FUNCTION_2_77()
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_79()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_83()
{

  return sub_1C96A7EE4();
}

uint64_t OUTLINED_FUNCTION_2_85()
{

  return swift_dynamicCast();
}

uint64_t sub_1C946BDD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5008);
  result = sub_1C96A5274();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E00);
    result = sub_1C96A5274();
    if (v6[3])
    {
      v5 = type metadata accessor for AppConfigurationManager();
      swift_allocObject();
      result = AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)(v7, v8, v6);
      a2[3] = v5;
      a2[4] = &protocol witness table for AppConfigurationManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C946BEF4(uint64_t a1)
{
  sub_1C96A5774();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A5664();
}

uint64_t sub_1C946C008()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C946C044()
{
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7D040);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "Store might require migration, starting migrator", v3, 2u);
    MEMORY[0x1CCA8E3D0](v3, -1, -1);
  }

  return sub_1C96A5774();
}

uint64_t sub_1C946C188(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C96A6154();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C946C230()
{
  sub_1C9469F0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_1C96A7D74();
}

void OUTLINED_FUNCTION_28_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

void OUTLINED_FUNCTION_8_12(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE600000000000000, v4, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_1C96A56A4();
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_1C9573924(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_49()
{

  return sub_1C96A6FA4();
}

void OUTLINED_FUNCTION_8_52()
{

  JUMPOUT(0x1CCA8D880);
}

uint64_t sub_1C946C868()
{
  v1 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C946AA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C946C9C4();
  sub_1C96A79E4();
  sub_1C96A5134();
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = sub_1C96A5124();
  return v0;
}

unint64_t sub_1C946C9C4()
{
  result = qword_1EDB7CEA0;
  if (!qword_1EDB7CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CEA0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

{
  return sub_1C9484328(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

{
  return sub_1C9484328(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_17_3()
{
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return sub_1C96A7D74();
}

__n128 *OUTLINED_FUNCTION_19_5(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

id OUTLINED_FUNCTION_19_9()
{

  return sub_1C9550094(v1, v0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_19_10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v3;

  return MEMORY[0x1EEDC5E80](v4, v5);
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_19_14@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_19_19()
{

  return sub_1C96A6CC4();
}

void OUTLINED_FUNCTION_19_24()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_19_25()
{

  return sub_1C948986C(v0, type metadata accessor for LocationDataModel);
}

uint64_t OUTLINED_FUNCTION_19_26()
{

  return sub_1C96A5544();
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1)
{

  return sub_1C9470AFC(a1, v1);
}

__n128 *OUTLINED_FUNCTION_19_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 25705;
  result[2].n128_u64[1] = 0xE200000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_33(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return sub_1C95515E0(v2, v4);
}

uint64_t sub_1C946CFA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

id sub_1C946D054(void *a1)
{
  v1 = a1;
  CLLocation.debugDescription.getter();

  v2 = sub_1C96A7004();

  return v2;
}

uint64_t CLLocation.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96AEF50;
  [v0 coordinate];
  v2 = MEMORY[0x1E69E63B0];
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v4;
  [v0 coordinate];
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v5;

  return MEMORY[0x1EEDC5E80](0x25202C66332E2528, 0xEC0000002966332ELL);
}

void sub_1C946D18C()
{
  if (byte_1EDB7DF80 == 1)
  {
    sub_1C96A4FD4();
    sub_1C96A4FB4();
    v0 = sub_1C96A4FA4();

    v1 = sub_1C96A7004();
    v2 = sub_1C96A7004();
    [v0 setObject:v1 forKey:v2];

    byte_1EDB7DF80 = 0;
  }
}

uint64_t AppConfigurationStore.read()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  sub_1C96A4FC4();

  sub_1C96A4704();
  v20 = *(v12 + 8);
  v33 = v12 + 8;
  v31 = v20;
  v20(v16, v10);
  v32 = v19;
  v21 = sub_1C96A47B4();
  v23 = v22;
  sub_1C96A4184();
  OUTLINED_FUNCTION_23();
  sub_1C96A4174();
  OUTLINED_FUNCTION_3_31();
  sub_1C946DA2C(v24, 255, v25);
  sub_1C96A4154();

  v26 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v27 + 16))(v5, v9, v26);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
  sub_1C9482E28(v5);
  sub_1C9482EF0();
  sub_1C9482F3C(v21, v23);
  v31(v32, v10);
  OUTLINED_FUNCTION_2_44();
  sub_1C948CDA4(v9, a1, v28);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t sub_1C946DA2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1C946DAA0()
{
  result = qword_1EDB7F220;
  if (!qword_1EDB7F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F220);
  }

  return result;
}

unint64_t sub_1C946DAF8()
{
  result = qword_1EDB7F230;
  if (!qword_1EDB7F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F230);
  }

  return result;
}

uint64_t sub_1C946DB4C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A60);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  result = sub_1C96A7F44();
  if (!v2)
  {
    v27 = 30;
    sub_1C96A7C24();
    v12 = v26[0];
    LOBYTE(v26[0]) = 29;
    sub_1C9475C94();
    v13 = sub_1C96A7C34();
    if (v13)
    {
      v14 = v13;
      sub_1C96A53C4();
      v15 = sub_1C96A4B54();
      sub_1C9476C24(v14, v15, v12, *(&v12 + 1), v26);

      if (*(&v26[0] + 1))
      {
        v16 = a2;
        v17 = v14;
        v19 = v12 >> 64;
        v18 = v12;
LABEL_15:
        sub_1C946E044(v17, v18, v19, v26, v16);
        return (*(v7 + 8))(v10, v5);
      }

      if (qword_1EDB7CFF0 != -1)
      {
        OUTLINED_FUNCTION_5_34();
        swift_once();
      }

      v25 = sub_1C96A6154();
      __swift_project_value_buffer(v25, qword_1EDB7CFF8);
      v21 = sub_1C96A6134();
      v22 = sub_1C96A76A4();
      if (!os_log_type_enabled(v21, v22))
      {
LABEL_14:

        memset(v26, 0, sizeof(v26));
        v16 = a2;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_15;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Failed to find an appropriage language config from the list of available language configs. Loading the default language configuration.";
    }

    else
    {

      if (qword_1EDB7CFF0 != -1)
      {
        OUTLINED_FUNCTION_5_34();
        swift_once();
      }

      v20 = sub_1C96A6154();
      __swift_project_value_buffer(v20, qword_1EDB7CFF8);
      v21 = sub_1C96A6134();
      v22 = sub_1C96A76A4();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_14;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Failed to find a list of language configs. Loading the default language configuration.";
    }

    _os_log_impl(&dword_1C945E000, v21, v22, v24, v23, 2u);
    MEMORY[0x1CCA8E3D0](v23, -1, -1);
    goto LABEL_14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_arrayDestroy();
}

unint64_t sub_1C946DFF0()
{
  result = qword_1EDB7CF18;
  if (!qword_1EDB7CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CF18);
  }

  return result;
}

unint64_t sub_1C946E044@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = result;
  v8 = *a4;
  v7 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  if (a3)
  {
    v11 = a3;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = sub_1C96A4B54();
    if (v13[2])
    {
      a2 = v13[4];
      v11 = v13[5];
      sub_1C96A53C4();

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2 = 0x53552D6E65;

      v11 = 0xE500000000000000;
      if (!v7)
      {
LABEL_8:
        v14 = sub_1C96A4B54();
        if (v14[2])
        {
          v8 = v14[4];
          v7 = v14[5];
          sub_1C96A53C4();
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x53552D6E65;
        }

        result = sub_1C947660C();
        v9 = result;
        v10 = v15;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v16 = v5;
  }

  *a5 = v16;
  a5[1] = a2;
  a5[2] = v11;
  a5[3] = v8;
  a5[4] = v7;
  a5[5] = v9;
  a5[6] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1C96A7924();
}

void *OUTLINED_FUNCTION_40_6(void *a1)
{

  return memcpy(a1, (v1 + 1184), 0x98uLL);
}

unint64_t OUTLINED_FUNCTION_40_8(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C94F02CC();
}

void OUTLINED_FUNCTION_40_11()
{
}

unint64_t sub_1C946E298(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C946E2DC()
{
  result = qword_1EDB7D900;
  if (!qword_1EDB7D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D900);
  }

  return result;
}

uint64_t AppStoreReviewConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D10);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946E5F4();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    sub_1C96A7C24();
    v27 = v29;
    LOBYTE(v23) = 1;
    sub_1C96A7C24();
    v11 = v26;
    LOBYTE(v21) = 2;
    sub_1C96A7C24();
    v20 = v23;
    HIDWORD(v19) = v24;
    v28 = 3;
    sub_1C96A7C24();
    v12 = v21;
    v13 = v22;
    if (v11)
    {
      v14 = 0x3F847AE147AE147BLL;
    }

    else
    {
      sub_1C96A7534();
      v14 = v15;
    }

    (*(v7 + 8))(v10, v5);
    v16 = 15;
    if (!HIDWORD(v19))
    {
      v16 = v20;
    }

    v17 = 630720000.0;
    *a2 = v27 & 1;
    *(a2 + 8) = v14;
    if (!v13)
    {
      v17 = v12;
    }

    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C946E5A0()
{
  result = qword_1EDB7D918;
  if (!qword_1EDB7D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D918);
  }

  return result;
}

unint64_t sub_1C946E5F4()
{
  result = qword_1EDB7D920;
  if (!qword_1EDB7D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D920);
  }

  return result;
}

unint64_t sub_1C946E650(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C946E6F8()
{
  result = qword_1EDB7E400;
  if (!qword_1EDB7E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E400);
  }

  return result;
}

unint64_t sub_1C946E750()
{
  result = qword_1EDB7EAF0;
  if (!qword_1EDB7EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EAF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EndpointConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C946E870);
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

WeatherCore::ContentEnvironment_optional __swiftcall ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1C96A7BE4();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C946E8FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A5FC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return sub_1C96A53C4();
}

void OUTLINED_FUNCTION_44_5(char a1@<W8>)
{
  v5 = (v4 + v3);
  *v5 = a1 & 1;
  v5[1] = v1;
  v5[2] = v2;
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_16()
{

  return sub_1C96A5504();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_1C96A6F94();
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return sub_1C96A7A74();
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_1C95D0D4C(v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return sub_1C96A70F4();
}

uint64_t OUTLINED_FUNCTION_18_30()
{

  return sub_1C96A7C04();
}

uint64_t OUTLINED_FUNCTION_18_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_33()
{
  *(v1 - 240) = v0;

  return swift_slowAlloc();
}

uint64_t getEnumTagSinglePayload for AppStoreReviewConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C946EF04()
{
  result = qword_1EDB7E328;
  if (!qword_1EDB7E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E328);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_30_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_20_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return type metadata accessor for Beaufort.Category.Range(0);
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return sub_1C96A6F34();
}

uint64_t OUTLINED_FUNCTION_20_20()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_1C9476F90(v1, v0);
}

void OUTLINED_FUNCTION_20_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_25()
{

  return type metadata accessor for EndpointConfiguration();
}

int64x2_t OUTLINED_FUNCTION_20_29@<Q0>(uint64_t a1@<X8>)
{
  v6 = (v5 + v1);
  result = vdupq_n_s64(0x408C200000000000uLL);
  *v6 = result;
  v6[1].i64[0] = 0x40A5180000000000;
  v6[1].i64[1] = v4 + 2;
  v6[2].i64[0] = a1;
  v6[2].i64[1] = v2;
  v6[3].i64[0] = v3;
  v6[3].i64[1] = 50;
  return result;
}

double OUTLINED_FUNCTION_16_5()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_1C96A7D74();
}

void OUTLINED_FUNCTION_21_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_11(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return sub_1C96A4264();
}

uint64_t OUTLINED_FUNCTION_16_23@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return sub_1C95B2A9C((v1 - 144));
}

uint64_t OUTLINED_FUNCTION_16_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;
  *(v1 - 88) = 0;
  return v1 - 96;
}

void *OUTLINED_FUNCTION_16_25()
{
  v0[7] = v2;
  v0[8] = v4;
  v0[9] = v3;
  v0[10] = v5;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v1;
  return v0 + 7;
}

uint64_t OUTLINED_FUNCTION_16_27()
{

  return sub_1C96A7B84();
}

void OUTLINED_FUNCTION_16_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_30()
{

  JUMPOUT(0x1CCA8CB00);
}

uint64_t OUTLINED_FUNCTION_16_33()
{

  return sub_1C96A7DE4();
}

void OUTLINED_FUNCTION_16_35(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0xC0F5180000000000;
  a1[2].n128_u16[4] = 0;
}

uint64_t OUTLINED_FUNCTION_16_37()
{
  *(v1 + 16) = v0;

  return sub_1C94670AC((v3 - 144), v1 + 40 * v2 + 32);
}

void OUTLINED_FUNCTION_16_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x26u);
}

uint64_t sub_1C946F618()
{
  v0 = sub_1C946A9D8();
  v1 = sub_1C9469D80();
  v2 = [v0 storeRequiresMigration_];

  if (v2)
  {
    v3 = sub_1C946A9D8();
    v4 = sub_1C9469CFC();
    v5 = sub_1C9469D80();
    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128);
    swift_allocObject();
    sub_1C96A5714();

    v6 = sub_1C96A55A4();
    v7 = sub_1C96A5644();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6620);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v7;
}

uint64_t sub_1C946F7BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C96A4A54();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

id sub_1C946F83C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(WCCloudMigrator) init];
  *a1 = result;
  return result;
}

uint64_t sub_1C946F878(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C946F8C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C946F908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C946F950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C946F998(unint64_t *a1, void (*a2)(uint64_t))
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

size_t OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_1C94A0404(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_23_12(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_23_17()
{

  JUMPOUT(0x1CCA8CB00);
}

_OWORD *OUTLINED_FUNCTION_23_19()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_1C946306C(v4, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_22()
{
}

uint64_t sub_1C946FCF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1C96A3D04();
  v1(v2);
}

uint64_t sub_1C946FD3C(uint64_t a1, void *a2)
{
  sub_1C9469B6C(a2, v7);
  swift_beginAccess();
  sub_1C946CFA8(v7, a1 + 24, &qword_1EC3A6548);
  swift_endAccess();
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(a1, &protocol witness table for IdentityService, v4, v5);
  return _s11WeatherCore15IdentityServiceC15accountSignedInyyF_0();
}

uint64_t *sub_1C946FE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = *a4;
  v8 = sub_1C96A65E4();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C96A7724();
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A5404();
  MEMORY[0x1EEE9AC00](v12);
  v25[3] = type metadata accessor for AppConfigurationRemoteSettingsProvider();
  v25[4] = &protocol witness table for AppConfigurationRemoteSettingsProvider;
  v25[0] = a3;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C9470218(&unk_1EDB7D088, MEMORY[0x1E69D67A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390);
  sub_1C9469C60(&qword_1EDB7CE88, &unk_1EC3A6390);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A60);
  swift_allocObject();
  a4[2] = sub_1C96A5314();
  *(a4 + 152) = 7;
  sub_1C9469B6C(a1, (a4 + 3));
  sub_1C9469B6C(a2, (a4 + 13));
  sub_1C9469B6C(v25, (a4 + 8));
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C9470218(&qword_1EDB7CDC0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68);
  v13 = v18;
  sub_1C96A79E4();
  v14 = v19;
  sub_1C96A6594();
  v15 = sub_1C96A7714();
  (*(v21 + 8))(v14, v22);
  v16 = (*(v20 + 8))(v11, v13);
  a4[18] = v15;
  sub_1C9470568(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return a4;
}

uint64_t sub_1C9470218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C9470260(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C96A7BB4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t _s11WeatherCore15IdentityServiceC15accountSignedInyyF_0()
{
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    sub_1C9469B6C(v0 + 24, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v3 + 8);
    sub_1C96A3D04();
    v5(sub_1C94C7708, v4, v2, v3);

    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return result;
}

uint64_t sub_1C9470374()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94703AC()
{
  v0 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C9470794(&qword_1EDB7D0A8, 255, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38);
  sub_1C9469C60(&qword_1EDB7CEA0, &qword_1EC3A4A38);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  result = sub_1C96A5124();
  qword_1EDB7DF78 = result;
  return result;
}

uint64_t sub_1C9470568(uint64_t a1)
{
  if (qword_1EDB7DF70 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();
}

uint64_t UbiquitousKeyValueStoreProvider.perform(performBlock:)(uint64_t a1, uint64_t a2)
{
  sub_1C946B5D0(0, &qword_1EDB7CD48);
  sub_1C96A5784();
  OUTLINED_FUNCTION_54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1C96A3D04();
  sub_1C96A5644();
}

uint64_t sub_1C947073C()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C9470794(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C94707DC(uint64_t a1, uint64_t a2)
{
  result = sub_1C9470794(&qword_1EDB7DF68, a2, type metadata accessor for AppConfigurationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9470834@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t AppConfigurationStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_1C9470A40(v9, v6, &unk_1EC3A5430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62D0);
  OUTLINED_FUNCTION_23();
  v11 = sub_1C96A55B4();
  sub_1C9470AFC(v9, &unk_1EC3A5430);
  *(v1 + 16) = v11;
  v13 = 0;
  v14 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62D8);
  OUTLINED_FUNCTION_23();
  *(v1 + 24) = sub_1C96A55B4();
  sub_1C9470B54();
  return v1;
}

uint64_t sub_1C94709F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_51(a1, a2, a3);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

uint64_t sub_1C9470A40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9470AA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C9470AFC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C9470B54()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7FCD0 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v1 == 1)
  {
    sub_1C946DA2C(&qword_1EC3A6300, v0, type metadata accessor for AppConfigurationStore);
    sub_1C96A4FE4();
    sub_1C95A1538();
  }
}

uint64_t sub_1C9470C6C()
{
  v1 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v5, qword_1EDB80028);
  v7 = OUTLINED_FUNCTION_5_1();
  v8(v7);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E88], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7FCD8 = result;
  return result;
}

uint64_t sub_1C9470E14()
{
  v0 = sub_1C96A4F34();
  __swift_allocate_value_buffer(v0, qword_1EDB80028);
  v1 = __swift_project_value_buffer(v0, qword_1EDB80028);
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x80000001C96D2580;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t OUTLINED_FUNCTION_5_9(float a1)
{
  *v3 = a1;
  *(v3 + 4) = 1752392040;
  *(v3 + 12) = 2081;

  return sub_1C9484164(v2, v1, (v4 - 144));
}

uint64_t OUTLINED_FUNCTION_5_15(uint64_t a1, uint64_t *a2)
{

  return sub_1C953C744(v3, a2, v2, v4);
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_5_29(unint64_t *a1)
{

  return sub_1C94892C0(a1);
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_5_37()
{

  return sub_1C95F97C0(v0, type metadata accessor for LocationDataModel);
}

uint64_t OUTLINED_FUNCTION_5_38()
{
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_5_43()
{

  return sub_1C96A4C14();
}

uint64_t OUTLINED_FUNCTION_5_47()
{

  return sub_1C96A79E4();
}

uint64_t OUTLINED_FUNCTION_5_48(unint64_t *a1)
{

  return sub_1C9633BA0(a1);
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return sub_1C96A3E24();
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_52@<X0>(char a1@<W8>)
{
  *(v1 - 66) = a1;

  return sub_1C96A7CE4();
}

id OUTLINED_FUNCTION_5_55()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_5_57()
{
  *(v1 - 72) = v0;

  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_5_59()
{

  return sub_1C96A7144();
}

double OUTLINED_FUNCTION_5_60()
{

  return sub_1C94FA584(0x7261646E6F636573, 0xED0000656D614E79, v0);
}

uint64_t type metadata accessor for AppConfigurationManager()
{
  result = qword_1EDB7DFB0;
  if (!qword_1EDB7DFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C947151C()
{
  result = type metadata accessor for AppConfiguration();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v366 = a3;
  v353 = a2;
  v349 = *v3;
  v355 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v333 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24();
  v319 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_1();
  v324 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_1();
  v320 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_0();
  v322 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24();
  v341 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_1();
  v325 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_1();
  v318 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_1();
  v323 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  v356 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  v327 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_1();
  v321 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_1();
  v340 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_1();
  v317 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_1();
  v326 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_1();
  v329 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51_0();
  v330 = v39;
  OUTLINED_FUNCTION_15_4();
  v360 = type metadata accessor for LocationsConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_24();
  v343 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_1();
  v334 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_1();
  v344 = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_51_0();
  v331 = v47;
  OUTLINED_FUNCTION_15_4();
  v350 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v362 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_24();
  v359 = v50;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_51_0();
  v339 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0);
  v54 = OUTLINED_FUNCTION_7(v53);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_24();
  v342 = v55;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_1();
  v336 = v57;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_1();
  v345 = v59;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_51_0();
  v361 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v63 = OUTLINED_FUNCTION_7(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_24();
  v335 = v64;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_1();
  v346 = v66;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_18_1();
  v338 = v68;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_51_0();
  v348 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62E0);
  v72 = OUTLINED_FUNCTION_7(v71);
  MEMORY[0x1EEE9AC00](v72);
  v354 = &v317 - v73;
  OUTLINED_FUNCTION_15_4();
  v358 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_24();
  v357 = v75;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_18_1();
  v328 = v77;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_18_1();
  v363 = v79;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_18_1();
  v332 = v81;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_51_0();
  v337 = v83;
  OUTLINED_FUNCTION_15_4();
  v364 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v367 = v84;
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_14();
  v88 = v87 - v86;
  v89 = sub_1C96A7724();
  OUTLINED_FUNCTION_1();
  v368 = v90;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_14();
  v94 = v93 - v92;
  v95 = sub_1C96A5114();
  v96 = OUTLINED_FUNCTION_7(v95);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_14();
  v97 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  v98 = sub_1C96A5124();
  v365 = v3;
  *(v3 + v97) = v98;
  v99 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_observers) = MEMORY[0x1E69E7CC0];
  v100 = v99;
  v101 = (v4 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationService);
  v102 = v353;
  *v101 = a1;
  v101[1] = v102;
  sub_1C9469B6C(v366, v4 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore);
  v353 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  *__src = v100;
  v352 = sub_1C946F950(&qword_1EDB7CDC0, MEMORY[0x1E69E8030]);
  v347 = a1;
  swift_unknownObjectRetain();
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68);
  sub_1C96A79E4();
  sub_1C96A6594();
  v103 = sub_1C96A7714();
  v104 = *(v367 + 8);
  v367 += 8;
  v104(v88, v364);
  v105 = *(v368 + 8);
  v368 += 8;
  v105(v94, v89);
  v106 = v365;
  *(v365 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_refreshQueue) = v103;
  *__src = MEMORY[0x1E69E7CC0];
  sub_1C96A79E4();
  sub_1C96A6594();
  v107 = sub_1C96A7714();
  v104(v88, v364);
  v108 = v94;
  v109 = v358;
  v105(v108, v89);
  *(v106 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_notifyQueue) = v107;
  v110 = v366[3];
  v111 = v366[4];
  __swift_project_boxed_opaque_existential_1(v366, v110);
  v112 = v354;
  (*(v111 + 24))(v110, v111);
  p_superclass = _TtC11WeatherCore19LocationMatchHelper.superclass;
  v114 = &xmmword_1C96B5000;
  if (__swift_getEnumTagSinglePayload(v112, 1, v109) == 1)
  {
    sub_1C9470AFC(v112, &qword_1EC3A62E0);
    if (qword_1EDB7CFF0 != -1)
    {
      OUTLINED_FUNCTION_0_58();
    }

    v115 = sub_1C96A6154();
    __swift_project_value_buffer(v115, qword_1EDB7CFF8);
    v116 = sub_1C96A6134();
    v117 = sub_1C96A76A4();
    v118 = OUTLINED_FUNCTION_21(v117);
    v119 = v355;
    v120 = v360;
    v121 = v340;
    if (v118)
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v122, v123, "AppConfiguration is not cached, falling back to the default configuration");
      OUTLINED_FUNCTION_26();
    }

    v124 = v348;
    OUTLINED_FUNCTION_3();
    v125 = v350;
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v350);
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v120);
    v132 = v124;
    v133 = v338;
    sub_1C9470A40(v132, v338, &unk_1EC3A5430);
    v134 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v134, v135, v125);
    v136 = v345;
    if (v137)
    {
      v154 = v339;
      sub_1C96A4954();
      v138 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_23_1(v138, v139, v125);
      v140 = v133;
      v155 = v363;
      if (!v137)
      {
        sub_1C9470AFC(v140, &unk_1EC3A5430);
      }
    }

    else
    {
      v154 = v339;
      (*(v362 + 32))(v339, v133, v125);
      v155 = v363;
    }

    (*(v362 + 32))(v155, v154, v125);
    *(v155 + v109[5]) = 0x40F5180000000000;
    *(v155 + v109[6]) = 3;
    *(v155 + v109[7]) = 0x411A5E0000000000;
    *(v155 + v109[8]) = 0x40BF400000000000;
    *(v155 + v109[9]) = 0x40BF400000000000;
    *(v155 + v109[10]) = 0x40F5180000000000;
    OUTLINED_FUNCTION_25_23(v155 + v109[11]);
    if (qword_1EDB7BF10 != -1)
    {
      OUTLINED_FUNCTION_4_5();
    }

    OUTLINED_FUNCTION_27_17();
    *(v155 + v109[12]) = qword_1EDB7BF18;
    *(v155 + v109[13]) = 257;
    v156 = (v155 + v109[14]);
    *v156 = &unk_1F48FACF0;
    v156[1] = 0x3FF0000000000000;
    v156[2] = 0;
    v156[3] = 0;
    v157 = qword_1EDB7D890;
    sub_1C96A53C4();
    if (v157 != -1)
    {
      OUTLINED_FUNCTION_10_42();
    }

    *(v155 + v109[15]) = qword_1EDB7D898;
    sub_1C9470A40(v361, v136, &qword_1EC3A62F0);
    v158 = OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_23_1(v158, v159, v120);
    if (v137)
    {
      v160 = v330;
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v119);
      v164 = v329;
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v119);
      v168 = v344;
      *v344 = xmmword_1C96B4F40;
      v168[1] = xmmword_1C96B4F50;
      v169 = v160;
      v170 = v326;
      sub_1C9470A40(v169, v326, &qword_1EC3A4A70);
      OUTLINED_FUNCTION_14_16(v170);
      if (v137)
      {
        sub_1C96A53C4();
        v171 = v317;
        OUTLINED_FUNCTION_33_12();
        result = OUTLINED_FUNCTION_14_16(v171);
        if (v137)
        {
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        OUTLINED_FUNCTION_28_20();
        v178 = v322;
        OUTLINED_FUNCTION_40_10();
        v136();
        v173 = v326;
        OUTLINED_FUNCTION_14_16(v326);
        v179 = v321;
        if (!v137)
        {
          sub_1C9470AFC(v173, &qword_1EC3A4A70);
        }

        v164 = v329;
      }

      else
      {
        OUTLINED_FUNCTION_28_20();
        v178 = v322;
        (v136)(v322);
        sub_1C96A53C4();
        v179 = v321;
      }

      (v136)(v344 + *(v120 + 32), v178, v119);
      sub_1C9470A40(v164, v121, &qword_1EC3A4A70);
      OUTLINED_FUNCTION_14_16(v121);
      if (v137)
      {
        OUTLINED_FUNCTION_33_12();
        result = OUTLINED_FUNCTION_14_16(v179);
        if (v137)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_36_9(v329);
        OUTLINED_FUNCTION_36_9(v330);
        (v136)(v320, v179, v119);
        OUTLINED_FUNCTION_14_16(v121);
        if (!v137)
        {
          sub_1C9470AFC(v121, &qword_1EC3A4A70);
        }
      }

      else
      {
        OUTLINED_FUNCTION_36_9(v164);
        OUTLINED_FUNCTION_36_9(v330);
        (v136)(v320, v121, v119);
      }

      v180 = v344;
      OUTLINED_FUNCTION_40_10();
      v136();
      *(v180 + *(v120 + 40)) = 1;
      OUTLINED_FUNCTION_0_104();
      v177 = v331;
      sub_1C9482980(v180, v331, v181);
      v182 = v345;
      v183 = OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_23_1(v183, v184, v120);
      v109 = v358;
      v114 = &xmmword_1C96B5000;
      v155 = v363;
      if (!v137)
      {
        sub_1C9470AFC(v182, &qword_1EC3A62F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_104();
      v174 = v136;
      v175 = v331;
      sub_1C9482980(v174, v331, v176);
      v177 = v175;
      sub_1C96A53C4();
    }

    OUTLINED_FUNCTION_0_104();
    sub_1C9482980(v177, v155 + v185, v186);
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_9_41();
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_17_35(v155 + v109[17]);
    OUTLINED_FUNCTION_16_35(v187, xmmword_1C96B4F60);
    *(v188 + 48) = xmmword_1C96B4F70;
    *(v188 + 64) = xmmword_1C96B4F80;
    OUTLINED_FUNCTION_12_37(v188, xmmword_1C96B4F90, xmmword_1C96B4F80, xmmword_1C96B4FA0);
    *(v189 + 144) = xmmword_1C96B4FB0;
    *(v155 + v109[18]) = MEMORY[0x1E69E7CC0];
    v190 = 1;
    v372 = 1;
    OUTLINED_FUNCTION_45_9(v155 + v109[19]);
    *(v191 + 24) = xmmword_1C96AA490;
    *(v191 + 40) = 1;
    *(v191 + 48) = v192;
    *(v191 + 56) = &unk_1F48FD060;
    v193 = v155 + v109[20];
    *v193 = 1;
    *(v193 + 2) = 1;
    sub_1C96A4EE4();
    sub_1C96A53C4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_8_46();
    }

    sub_1C96A4EB4();

    OUTLINED_FUNCTION_34_12();
    v194 = OUTLINED_FUNCTION_20_29(0x80000001C96CC960);
    v195[4] = xmmword_1C96B4FC0;
    v195[5] = xmmword_1C96B4FD0;
    v195[6] = xmmword_1C96AC0B0;
    v196 = v155 + v109[23];
    *v196 = v194;
    *(v196 + 16) = xmmword_1C96B4FE0;
    *(v196 + 32) = xmmword_1C96B4FF0;
    *(v196 + 48) = xmmword_1C96B5000;
    *(v196 + 64) = xmmword_1C96B5010;
    *(v196 + 80) = xmmword_1C96B5020;
    OUTLINED_FUNCTION_41_13(xmmword_1C96B5030, xmmword_1C96B5040);
    v197 = v155 + v109[22];
    v198 = vdupq_n_s64(0x3FC999999999999AuLL);
    *v197 = v198;
    *(v197 + 16) = xmmword_1C96B5050;
    *(v197 + 32) = vdupq_n_s64(0x4143C68000000000uLL);
    *(v197 + 48) = 10;
    *(v197 + 56) = 1;
    v199 = (v155 + v109[24]);
    *v199 = v198;
    v199[1] = v198;
    v199[2].i64[0] = 0x3FC999999999999ALL;
    OUTLINED_FUNCTION_46_5(v200);
    *(v201 + 32) = 1;
    v202 = sub_1C947660C();
    v203 = (v155 + v109[26]);
    *v203 = v202;
    v203[1] = v204;
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_7_47();
    }

    *(v155 + v109[27]) = qword_1EDB7D640;
    v205 = (v155 + v109[29]);
    *v205 = xmmword_1C96B5060;
    v205[1] = xmmword_1C96B5070;
    v206 = (v155 + v109[30]);
    *v206 = 0;
    v206[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_15((v155 + v109[31]), xmmword_1C96B5080, xmmword_1C96B5090);
    *(v207 + 42) = v374;
    *(v207 + 46) = v375;
    *(v207 + 48) = v114[10];
    LOBYTE(v369) = 1;
    OUTLINED_FUNCTION_31_10(1);
    memcpy((v155 + v109[32]), __src, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_1C96AA1C0;
    sub_1C96A53C4();
    v209 = sub_1C96A4B54();
    if (v209[2])
    {
      v190 = v209[4];
      v210 = v209[5];
      sub_1C96A53C4();
    }

    else
    {
      v210 = 0xE500000000000000;
      OUTLINED_FUNCTION_38_8();
    }

    v211 = sub_1C947660C();
    *(v208 + 32) = v190;
    *(v208 + 40) = v210;
    *(v208 + 48) = v211;
    *(v208 + 56) = v212;
    *(v363 + v109[33]) = v208;
    v213 = sub_1C96A4B54();
    if (v213[2])
    {
      v190 = v213[4];
      v214 = v213[5];
      sub_1C96A53C4();
    }

    else
    {
      v214 = 0xE500000000000000;
      OUTLINED_FUNCTION_38_8();
    }

    v147 = v357;

    v215 = v363;
    v216 = (v363 + v109[34]);
    *v216 = v190;
    v216[1] = v214;
    v217 = MEMORY[0x1E69E7CC0];
    *(v215 + v109[35]) = MEMORY[0x1E69E7CC0];
    sub_1C9470AFC(v361, &qword_1EC3A62F0);
    sub_1C9470AFC(v348, &unk_1EC3A5430);
    *(v215 + v109[36]) = v217;
    v218 = v332;
    sub_1C9482980(v215, v332, type metadata accessor for AppConfiguration);
    v150 = v365;
    sub_1C9482980(v218, v365 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig, type metadata accessor for AppConfiguration);
    v153 = v359;
    p_superclass = _TtC11WeatherCore19LocationMatchHelper.superclass;
  }

  else
  {
    OUTLINED_FUNCTION_2_71();
    v141 = v337;
    sub_1C9482980(v112, v337, v142);
    if (qword_1EDB7CFF0 != -1)
    {
      OUTLINED_FUNCTION_0_58();
    }

    v143 = sub_1C96A6154();
    __swift_project_value_buffer(v143, qword_1EDB7CFF8);
    v144 = sub_1C96A6134();
    v145 = sub_1C96A76A4();
    v146 = OUTLINED_FUNCTION_21(v145);
    v147 = v357;
    v119 = v355;
    v120 = v360;
    if (v146)
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v148, v149, "Successfully loaded AppConfiguration from cache");
      p_superclass = (_TtC11WeatherCore19LocationMatchHelper + 8);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_2_71();
    v150 = v365;
    sub_1C9482980(v141, v365 + v151, v152);
    v153 = v359;
  }

  if (qword_1EDB7FCB8 != -1)
  {
    OUTLINED_FUNCTION_29_14();
  }

  OUTLINED_FUNCTION_24_21();
  sub_1C946F950(v219, v220);
  sub_1C96A4E44();
  if (__src[0] != 1)
  {
    sub_1C9482FEC();
    swift_unknownObjectRelease();
LABEL_93:
    __swift_destroy_boxed_opaque_existential_1Tm(v366);
    return v150;
  }

  if (p_superclass[510] != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v221 = sub_1C96A6154();
  __swift_project_value_buffer(v221, qword_1EDB7CFF8);
  v222 = sub_1C96A6134();
  v223 = sub_1C96A76A4();
  v224 = OUTLINED_FUNCTION_21(v223);
  v225 = v336;
  if (v224)
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_1_57(&dword_1C945E000, v226, v227, "Force loading the default configuration");
    v153 = v359;
    OUTLINED_FUNCTION_26();
  }

  v228 = v346;
  v229 = OUTLINED_FUNCTION_94();
  v230 = v350;
  __swift_storeEnumTagSinglePayload(v229, v231, 1, v350);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v120);
  v235 = v228;
  v236 = v230;
  v237 = v335;
  sub_1C9470A40(v235, v335, &unk_1EC3A5430);
  v238 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_23_1(v238, v239, v236);
  if (v137)
  {
    sub_1C96A4954();
    v240 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v240, v241, v236);
    v242 = v237;
    v243 = v341;
    if (!v137)
    {
      sub_1C9470AFC(v242, &unk_1EC3A5430);
    }
  }

  else
  {
    (*(v362 + 32))(v153, v237, v236);
    v243 = v341;
  }

  (*(v362 + 32))(v147, v153, v236);
  *(v147 + v109[5]) = 0x40F5180000000000;
  *(v147 + v109[6]) = 3;
  *(v147 + v109[7]) = 0x411A5E0000000000;
  *(v147 + v109[8]) = 0x40BF400000000000;
  *(v147 + v109[9]) = 0x40BF400000000000;
  *(v147 + v109[10]) = 0x40F5180000000000;
  OUTLINED_FUNCTION_25_23(v147 + v109[11]);
  if (qword_1EDB7BF10 != -1)
  {
    OUTLINED_FUNCTION_4_5();
  }

  OUTLINED_FUNCTION_27_17();
  *(v147 + v109[12]) = qword_1EDB7BF18;
  *(v147 + v109[13]) = 257;
  v244 = (v147 + v109[14]);
  *v244 = &unk_1F48FACF0;
  v244[1] = 0x3FF0000000000000;
  v244[2] = 0;
  v244[3] = 0;
  v245 = qword_1EDB7D890;
  sub_1C96A53C4();
  if (v245 != -1)
  {
    OUTLINED_FUNCTION_10_42();
  }

  *(v147 + v109[15]) = qword_1EDB7D898;
  v246 = v342;
  sub_1C9470A40(v225, v342, &qword_1EC3A62F0);
  v247 = OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_23_1(v247, v248, v120);
  if (!v137)
  {
    OUTLINED_FUNCTION_0_104();
    v261 = v334;
    sub_1C9482980(v246, v334, v262);
    sub_1C96A53C4();
LABEL_78:
    OUTLINED_FUNCTION_0_104();
    sub_1C9482980(v261, v147 + v275, v276);
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_9_41();
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_17_35(v147 + v109[17]);
    OUTLINED_FUNCTION_16_35(v277, xmmword_1C96B4F60);
    *(v278 + 48) = xmmword_1C96B4F70;
    *(v278 + 64) = xmmword_1C96B4F80;
    OUTLINED_FUNCTION_12_37(v278, xmmword_1C96B4F90, xmmword_1C96B4F80, xmmword_1C96B4FA0);
    *(v279 + 144) = xmmword_1C96B4FB0;
    *(v147 + v109[18]) = MEMORY[0x1E69E7CC0];
    v373 = 1;
    OUTLINED_FUNCTION_45_9(v147 + v109[19]);
    *(v280 + 24) = xmmword_1C96AA490;
    *(v280 + 40) = 1;
    *(v280 + 48) = v281;
    *(v280 + 56) = &unk_1F48FD088;
    v282 = v147 + v109[20];
    *v282 = 1;
    *(v282 + 2) = 1;
    v283 = v147;
    v284 = v109;
    sub_1C96A4EE4();
    sub_1C96A53C4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_8_46();
    }

    sub_1C96A4EB4();

    v285 = 0x80000001C96CC990;
    v286 = 0xD000000000000068;
    if (!__src[0])
    {
      v286 = 0;
      v285 = 0;
    }

    v287 = v283 + v109[21];
    v288 = vdupq_n_s64(0x408C200000000000uLL);
    *v287 = v288;
    *(v287 + 16) = 0x40A5180000000000;
    *(v287 + 24) = 0xD000000000000022;
    *(v287 + 32) = 0x80000001C96CC960;
    *(v287 + 40) = v286;
    *(v287 + 48) = v285;
    *(v287 + 56) = 50;
    *(v287 + 64) = xmmword_1C96B4FC0;
    *(v287 + 80) = xmmword_1C96B4FD0;
    *(v287 + 96) = xmmword_1C96AC0B0;
    v289 = v283 + v109[23];
    *v289 = v288;
    *(v289 + 16) = xmmword_1C96B4FE0;
    *(v289 + 32) = xmmword_1C96B4FF0;
    *(v289 + 48) = xmmword_1C96B5000;
    *(v289 + 64) = xmmword_1C96B5010;
    *(v289 + 80) = xmmword_1C96B5020;
    *(v289 + 96) = xmmword_1C96B5030;
    *(v289 + 112) = xmmword_1C96B5040;
    *(v289 + 128) = 0x3FE999999999999ALL;
    *&v290 = OUTLINED_FUNCTION_47_6();
    *v291 = v290;
    *(v291 + 16) = xmmword_1C96B5050;
    *(v291 + 32) = vdupq_n_s64(0x4143C68000000000uLL);
    *(v291 + 48) = 10;
    *(v291 + 56) = 1;
    v292 = v283 + v109[24];
    *v292 = v290;
    *(v292 + 16) = v290;
    *(v292 + 32) = v293;
    v294 = v283 + v109[25];
    *v294 = v295;
    *(v294 + 8) = 0x80000001C96CC960;
    *(v294 + 16) = v296 + 21;
    *(v294 + 24) = 0x80000001C96D2630;
    *(v294 + 32) = 1;
    v297 = sub_1C947660C();
    v298 = (v283 + v109[26]);
    *v298 = v297;
    v298[1] = v299;
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_7_47();
    }

    *(v283 + v109[27]) = qword_1EDB7D640;
    v300 = (v283 + v109[29]);
    *v300 = xmmword_1C96B5060;
    v300[1] = xmmword_1C96B5070;
    v301 = (v283 + v109[30]);
    *v301 = 0;
    v301[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_15((v283 + v109[31]), xmmword_1C96B5080, xmmword_1C96B5090);
    *(v302 + 42) = v369;
    *(v302 + 46) = v370;
    *(v302 + 48) = xmmword_1C96B50A0;
    v371 = 1;
    OUTLINED_FUNCTION_31_10(1);
    memcpy((v283 + v109[32]), __src, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8);
    v303 = swift_allocObject();
    *(v303 + 16) = xmmword_1C96AA1C0;
    sub_1C96A53C4();
    v304 = sub_1C96A4B54();
    v305 = v304;
    if (v304[2])
    {
      v307 = v304[4];
      v306 = v304[5];
      sub_1C96A53C4();
    }

    else
    {
      v306 = 0xE500000000000000;
      v307 = 0x53552D6E65;
    }

    v308 = sub_1C947660C();
    *(v303 + 32) = v307;
    *(v303 + 40) = v306;
    *(v303 + 48) = v308;
    *(v303 + 56) = v309;
    *(v283 + v284[33]) = v303;
    v310 = sub_1C96A4B54();
    if (v310[2])
    {
      v305 = v310[4];
      v311 = v310[5];
      sub_1C96A53C4();
    }

    else
    {
      v311 = 0xE500000000000000;
      OUTLINED_FUNCTION_38_8();
    }

    swift_unknownObjectRelease();

    v312 = (v283 + v284[34]);
    *v312 = v305;
    v312[1] = v311;
    v313 = MEMORY[0x1E69E7CC0];
    *(v283 + v284[35]) = MEMORY[0x1E69E7CC0];
    sub_1C9470AFC(v225, &qword_1EC3A62F0);
    sub_1C9470AFC(v346, &unk_1EC3A5430);
    *(v283 + v284[36]) = v313;
    OUTLINED_FUNCTION_2_71();
    v314 = v328;
    sub_1C9482980(v283, v328, v315);
    v316 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig;
    v150 = v365;
    swift_beginAccess();
    sub_1C965B08C(v314, v150 + v316);
    swift_endAccess();
    goto LABEL_93;
  }

  v249 = v327;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v250, v251, v252, v119);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v253, v254, v255, v119);
  v256 = v343;
  *v343 = xmmword_1C96B4F40;
  v256[1] = xmmword_1C96B4F50;
  v257 = v323;
  sub_1C9470A40(v249, v323, &qword_1EC3A4A70);
  if (__swift_getEnumTagSinglePayload(v257, 1, v119) == 1)
  {
    sub_1C96A53C4();
    v258 = v318;
    OUTLINED_FUNCTION_33_12();
    result = OUTLINED_FUNCTION_14_16(v258);
    if (!v137)
    {
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_40_10();
      v249();
      OUTLINED_FUNCTION_14_16(v257);
      v259 = v325;
      v243 = v341;
      if (!v137)
      {
        sub_1C9470AFC(v257, &qword_1EC3A4A70);
      }

      v260 = v324;
      goto LABEL_71;
    }

    goto LABEL_95;
  }

  OUTLINED_FUNCTION_28_20();
  v263 = v257;
  v260 = v324;
  (v249)(v324, v263, v119);
  sub_1C96A53C4();
  v259 = v325;
LABEL_71:
  (v249)(v343 + *(v120 + 32), v260, v119);
  v264 = v356;
  sub_1C9470A40(v356, v259, &qword_1EC3A4A70);
  OUTLINED_FUNCTION_14_16(v259);
  if (!v137)
  {
    OUTLINED_FUNCTION_36_9(v264);
    OUTLINED_FUNCTION_36_9(v327);
    v267 = OUTLINED_FUNCTION_39_10();
    (v249)(v267);
LABEL_76:
    v268 = v360;
    v269 = v343;
    OUTLINED_FUNCTION_40_10();
    v249();
    *(v269 + *(v268 + 40)) = 1;
    OUTLINED_FUNCTION_0_104();
    v270 = v269;
    v261 = v334;
    sub_1C9482980(v270, v334, v271);
    v272 = v342;
    v273 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v273, v274, v268);
    v147 = v357;
    if (!v137)
    {
      sub_1C9470AFC(v272, &qword_1EC3A62F0);
    }

    goto LABEL_78;
  }

  sub_1C96A4754();
  result = OUTLINED_FUNCTION_14_16(v243);
  if (!v137)
  {
    OUTLINED_FUNCTION_36_9(v264);
    OUTLINED_FUNCTION_36_9(v327);
    v265 = OUTLINED_FUNCTION_39_10();
    (v249)(v265);
    v266 = v325;
    OUTLINED_FUNCTION_14_16(v325);
    if (!v137)
    {
      sub_1C9470AFC(v266, &qword_1EC3A4A70);
    }

    goto LABEL_76;
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_1C949A950(v0, type metadata accessor for Location);
}

id OUTLINED_FUNCTION_25_11()
{
  v2 = *(v0 + 2648);

  return v2;
}

void OUTLINED_FUNCTION_25_18(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = v5;
  a1[1] = v4;
  v8 = (v7 + *(v6 + 32));
  *v8 = a3;
  v8[1] = a4;
}

uint64_t OUTLINED_FUNCTION_25_19()
{
}

id OUTLINED_FUNCTION_25_20(float a1)
{
  *v2 = a1;
  *(v3 - 136) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_25_21@<X0>(uint64_t a1@<X8>)
{

  return sub_1C949A614(v2, v1 - a1);
}

void OUTLINED_FUNCTION_25_22()
{

  sub_1C949C668();
}

void OUTLINED_FUNCTION_25_23(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0x3F847AE147AE147BLL;
  *(a1 + 16) = 15;
  *(a1 + 24) = 0x41C2CC0300000000;
}

uint64_t OUTLINED_FUNCTION_25_24()
{

  return sub_1C96A7C74();
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  **(v0 + 16) = *(v0 + 40);

  return sub_1C96A7844();
}

uint64_t OUTLINED_FUNCTION_27_14()
{
}

void *OUTLINED_FUNCTION_27_15(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1, unint64_t a2)
{

  return sub_1C94D48EC(a1, a2, v2, v3);
}

uint64_t AppConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v376 = a2;
  v375 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v367 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v368 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51_0();
  v369 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_24();
  v365 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_1();
  v370 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_1();
  v364 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_1();
  v366 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_1();
  v377 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_0();
  v373 = v20;
  OUTLINED_FUNCTION_15_4();
  v378 = type metadata accessor for LocationsConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24();
  v379 = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_0();
  v374 = v24;
  OUTLINED_FUNCTION_15_4();
  v384 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v372 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v371 = v28 - v27;
  OUTLINED_FUNCTION_15_4();
  v380 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14();
  v383 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0);
  v33 = OUTLINED_FUNCTION_7(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_24();
  v381 = v34;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_51_0();
  v382 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v38 = OUTLINED_FUNCTION_7(v37);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = v246 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A60);
  OUTLINED_FUNCTION_1();
  v385 = v45;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v246 - v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  v49 = v560;
  sub_1C96A7F44();
  if (v49)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v361 = v41;
  v50 = v384;
  v363 = v48;
  v362 = v43;
  v560 = v44;
  sub_1C946DB4C(a1, &v501);
  v51 = v501;
  v52 = v507;
  v53 = v509;
  v54 = v510;
  v55 = v511;
  v56 = sub_1C947C4C4(a1);
  v360 = 0;
  v317 = v54;
  v303 = v53;
  v358 = v56;
  v304 = v52;
  v305 = v51;
  v359 = v58;
  v306 = a1;
  LOBYTE(v501) = 0;
  OUTLINED_FUNCTION_26_9();
  sub_1C946E298(v59);
  sub_1C96A7C24();
  LOBYTE(v501) = 1;
  OUTLINED_FUNCTION_8_32();
  v334 = v551;
  v333 = v552;
  LOBYTE(v501) = 2;
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v332 = v549;
  v331 = v550;
  LOBYTE(v501) = 3;
  OUTLINED_FUNCTION_8_32();
  v330 = v547;
  v329 = v548;
  LOBYTE(v501) = 4;
  OUTLINED_FUNCTION_8_32();
  v328 = v545;
  v327 = v546;
  LOBYTE(v501) = 5;
  OUTLINED_FUNCTION_8_32();
  v323 = v543;
  v322 = v544;
  LOBYTE(v501) = 6;
  OUTLINED_FUNCTION_8_32();
  v320 = v541;
  v319 = v542;
  LOBYTE(v501) = 7;
  sub_1C946E2DC();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v60 = v537;
  v61 = v538;
  v258 = v539;
  v259 = v540;
  type metadata accessor for EndpointConfiguration();
  LOBYTE(v501) = 8;
  sub_1C946E298(&unk_1EDB7E3F0);
  OUTLINED_FUNCTION_62_3();
  v318 = sub_1C96A7C34();
  LOBYTE(v501) = 9;
  sub_1C946EF04();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v321 = v536;
  LOBYTE(v501) = 10;
  sub_1C947DAE8();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v324 = v532;
  v325 = v533;
  v263 = v535;
  v264 = v534;
  LOBYTE(v501) = 11;
  sub_1C947E0C4();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v326 = v531;
  LOBYTE(v501) = 12;
  OUTLINED_FUNCTION_18_23();
  sub_1C946E298(v62);
  v63 = v378;
  sub_1C96A7C24();
  LOBYTE(v399) = 13;
  sub_1C947F2F8();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v272 = v501;
  v348 = v502;
  v344 = v503;
  v343 = v504;
  v557 = v505;
  v558 = v506;
  v345 = v507;
  v346 = v508;
  v342 = v509;
  v268 = BYTE1(v510);
  v269 = v510;
  v555 = *(&v510 + 2);
  v556 = HIWORD(v510);
  v64 = v511;
  v65 = v512;
  v335 = v513;
  v66 = v514;
  v67 = v515;
  v68 = v516;
  v69 = v517;
  v70 = v518;
  v341 = v519;
  v340 = v520;
  v349 = v521;
  v307 = v522;
  v339 = v523;
  v338 = v524;
  v337 = v525;
  v336 = v526;
  v554 = v528;
  v553 = v527;
  v347 = v529;
  v267 = v530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A68);
  LOBYTE(v399) = 14;
  sub_1C9478FAC(&unk_1EDB7CEB8);
  OUTLINED_FUNCTION_62_3();
  sub_1C96A7C24();
  v271 = v500;
  LOBYTE(v399) = 15;
  sub_1C94790E0();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v261 = v490;
  v270 = v491;
  v260 = v492;
  v278 = v493;
  v277 = v494;
  v279 = v496;
  v273 = v497;
  v275 = v498;
  v276 = v495;
  v274 = v499;
  LOBYTE(v399) = 16;
  sub_1C94793D0();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v265 = v488;
  v266 = v489;
  LOBYTE(v399) = 17;
  sub_1C9481108();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v280 = v477;
  v281 = v476;
  v287 = v480;
  v246[4] = v481;
  v246[2] = v479;
  v246[3] = v482;
  v246[1] = v483;
  v285 = v484;
  v286 = v485;
  v282 = v478;
  v283 = v486;
  v284 = v487;
  LOBYTE(v399) = 18;
  sub_1C9479FEC();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v350 = v466;
  v351 = v467;
  v352 = v468;
  v353 = v469;
  v354 = v470;
  v355 = v471;
  v356 = v472;
  v357 = v473;
  v289 = v474;
  v288 = v475;
  LOBYTE(v399) = 19;
  sub_1C947A854();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v250 = v461;
  v251 = v460;
  v247 = v463;
  v248 = v462;
  v249 = v464;
  v290 = v465;
  LOBYTE(v399) = 28;
  sub_1C947AF60();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v310 = v454;
  v309 = v455;
  v308 = v456;
  v295 = v458;
  v296 = v457;
  v291 = v459;
  LOBYTE(v399) = 20;
  sub_1C948FB54();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v299 = v449;
  v300 = v450;
  v298 = v451;
  v262 = v452;
  v297 = v453;
  LOBYTE(v399) = 22;
  sub_1C9481978();
  v302 = v55;
  sub_1C96A53C4();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v301 = v448;
  LOBYTE(v399) = 23;
  sub_1C9481B7C();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  LOBYTE(v399) = 24;
  sub_1C947BD1C();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v311 = v443;
  v312 = v444;
  v313 = v445;
  v314 = v446;
  v294 = v447;
  LOBYTE(v399) = 25;
  sub_1C9481C9C();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v292 = v441;
  v293 = v442;
  LOBYTE(v399) = 26;
  sub_1C948BCF4();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v255 = v435;
  v256 = v436;
  v316 = v438;
  v252 = v437;
  v253 = v439;
  v257 = v440;
  LOBYTE(v399) = 27;
  sub_1C9482228();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  memcpy(__dst, v432, sizeof(__dst));
  v315 = v433;
  v254 = v434;
  v71 = v50;
  v72 = v361;
  sub_1C9470AA0(v362, v361, &unk_1EC3A5430);
  v73 = OUTLINED_FUNCTION_94();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, v74, v50);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C96A53C4();
    sub_1C96A53C4();
    v76 = v371;
    sub_1C96A4954();
    v77 = OUTLINED_FUNCTION_94();
    v79 = __swift_getEnumTagSinglePayload(v77, v78, v71);
    v80 = v380;
    v81 = v375;
    v82 = v372;
    if (v79 != 1)
    {
      sub_1C9470AFC(v72, &unk_1EC3A5430);
    }
  }

  else
  {
    v82 = v372;
    v76 = v371;
    (*(v372 + 32))(v371, v72, v71);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v80 = v380;
    v81 = v375;
  }

  v83 = v383;
  (*(v82 + 32))(v383, v76, v71);
  v84 = v334;
  if (v333)
  {
    v84 = 86400.0;
  }

  *(v83 + v80[5]) = v84;
  v85 = 3;
  if (!v331)
  {
    v85 = v332;
  }

  *(v83 + v80[6]) = v85;
  v86 = 0x411A5E0000000000;
  if (!v329)
  {
    v86 = v330;
  }

  *(v83 + v80[7]) = v86;
  v87 = 0x40BF400000000000;
  v88 = v328;
  if (v327)
  {
    v88 = 8000.0;
  }

  *(v83 + v80[8]) = v88;
  if (!v322)
  {
    v87 = v323;
  }

  *(v83 + v80[9]) = v87;
  v384 = 0x40F5180000000000;
  v89 = v320;
  if (v319)
  {
    v89 = 86400.0;
  }

  *(v83 + v80[10]) = v89;
  if (v60 == 2)
  {
    LOBYTE(v60) = 0;
    v90 = 0x41C2CC0300000000;
    v91 = 15;
    v61 = 0x3F847AE147AE147BLL;
    v92 = v381;
    v93 = v326;
    v94 = v324;
  }

  else
  {
    v92 = v381;
    v93 = v326;
    v94 = v324;
    v90 = v259;
    v91 = v258;
  }

  v95 = v318;
  v96 = v383 + v80[11];
  *v96 = v60 & 1;
  *(v96 + 8) = v61;
  *(v96 + 16) = v91;
  *(v96 + 24) = v90;
  if (v95)
  {
    v97 = v377;
    v98 = v325;
  }

  else
  {
    v97 = v377;
    v98 = v325;
    if (qword_1EDB7BF10 != -1)
    {
      OUTLINED_FUNCTION_23_18();
      swift_once();
    }

    OUTLINED_FUNCTION_31_5();
    swift_beginAccess();
    v95 = sub_1C96A53C4();
    v92 = v381;
  }

  v99 = v383;
  *(v383 + v80[12]) = v95;
  OUTLINED_FUNCTION_57_2((v321 == 2) | v321);
  if (v94)
  {
    v101 = v263;
    v100 = v264;
  }

  else
  {
    v100 = 0;
    v101 = 0;
    v98 = 1.0;
    v94 = &unk_1F48FACF0;
  }

  v102 = (v99 + v80[14]);
  *v102 = v94;
  v102[1] = v98;
  *(v102 + 2) = v100;
  *(v102 + 3) = v101;
  if (v93)
  {
    v103 = v335;
  }

  else
  {
    v103 = v335;
    if (qword_1EDB7D890 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    v93 = qword_1EDB7D898;
    sub_1C96A53C4();
  }

  *(v99 + v80[15]) = v93;
  sub_1C9470AA0(v382, v92, &qword_1EC3A62F0);
  v104 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v104, v105, v63) == 1)
  {
    v106 = v373;
    v107 = OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v107, v108, 1, v81);
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v81);
    v109 = v379;
    *v379 = xmmword_1C96B4F40;
    v109[1] = xmmword_1C96B4F50;
    v110 = v106;
    v111 = v366;
    sub_1C9470AA0(v110, v366, &qword_1EC3A4A70);
    v112 = OUTLINED_FUNCTION_94();
    if (__swift_getEnumTagSinglePayload(v112, v113, v81) == 1)
    {
      v114 = v364;
      OUTLINED_FUNCTION_52();
      sub_1C96A4754();
      result = OUTLINED_FUNCTION_14_16(v114);
      if (v115)
      {
        __break(1u);
        goto LABEL_116;
      }

      v116 = *(v367 + 32);
      v116(v369, v114, v81);
      v117 = OUTLINED_FUNCTION_94();
      if (__swift_getEnumTagSinglePayload(v117, v118, v81) != 1)
      {
        sub_1C9470AFC(v111, &qword_1EC3A4A70);
      }

      v119 = v369;
    }

    else
    {
      v116 = *(v367 + 32);
      v122 = v111;
      v119 = v369;
      v116(v369, v122, v81);
    }

    v123 = v370;
    v116(v379 + v63[8], v119, v81);
    sub_1C9470AA0(v97, v123, &qword_1EC3A4A70);
    OUTLINED_FUNCTION_14_16(v123);
    if (!v115)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1C9470AFC(v126, v127);
      OUTLINED_FUNCTION_41_7();
      v63 = v378;
      sub_1C9470AFC(v128, v129);
      v130 = v368;
      v116(v368, v123, v81);
LABEL_49:
      v131 = v379;
      v116(v379 + v63[9], v130, v81);
      *(v131 + v63[10]) = 1;
      OUTLINED_FUNCTION_0_74();
      v132 = v131;
      v120 = v374;
      sub_1C9482928(v132, v374);
      v133 = v381;
      v134 = OUTLINED_FUNCTION_94();
      v136 = __swift_getEnumTagSinglePayload(v134, v135, v63);
      v80 = v380;
      v99 = v383;
      v121 = v307;
      if (v136 != 1)
      {
        sub_1C9470AFC(v133, &qword_1EC3A62F0);
      }

      goto LABEL_51;
    }

    v124 = v365;
    OUTLINED_FUNCTION_52();
    sub_1C96A4754();
    result = OUTLINED_FUNCTION_14_16(v124);
    if (!v115)
    {
      sub_1C9470AFC(v377, &qword_1EC3A4A70);
      sub_1C9470AFC(v373, &qword_1EC3A4A70);
      v130 = v368;
      v116(v368, v124, v81);
      v125 = v370;
      OUTLINED_FUNCTION_14_16(v370);
      if (!v115)
      {
        sub_1C9470AFC(v125, &qword_1EC3A4A70);
      }

      goto LABEL_49;
    }

LABEL_116:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_0_74();
  v120 = v374;
  sub_1C9482928(v92, v374);
  v121 = v307;
LABEL_51:
  OUTLINED_FUNCTION_0_74();
  sub_1C9482928(v120, v99 + v137);
  v138 = v272;
  v399 = v272;
  v400 = v348;
  v401 = v344;
  v402 = v343;
  v403 = v557;
  v404 = v558;
  v405 = v345;
  v406 = v346;
  v407 = v342;
  v140 = v268;
  v139 = v269;
  v408 = v269;
  v409 = v268;
  v410 = v555;
  v411 = v556;
  v412 = v64;
  v413 = v65;
  v414 = v103;
  v415 = v66;
  v416 = v67;
  v417 = v68;
  v418 = v69;
  v419 = v70;
  v420 = v341;
  v421 = v340;
  v422 = v349;
  v423 = v121;
  v424 = v339;
  v425 = v338;
  v426 = v337;
  v427 = v336;
  v429 = v554;
  v428 = v553;
  v430 = v347;
  v141 = v267;
  v431 = v267;
  if (sub_1C94829E0(&v399) == 1)
  {
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    OUTLINED_FUNCTION_31_5();
    swift_beginAccess();
    v138 = off_1EDB7EF20;
    sub_1C96A53C4();
    v139 = 0;
    v140 = 0;
    v121 = 0;
    v70 = 9.5;
    OUTLINED_FUNCTION_63_3();
    v64 = 11.0;
    v143 = 2;
    v141 = 100;
    v144 = 20;
    v69 = 0x4022333333333333;
    v65 = 0x4021CCCCCCCCCCCDLL;
    v145 = 0xC0BC200000000000;
    v146 = 0xC0F5180000000000;
    v147 = 2;
    v148 = 2;
    v149 = 0xC0F5180000000000;
    v150 = 9.0;
    v151 = 7.5;
    v152 = 2;
    v153 = 2;
    v154 = 2;
    v155 = 2;
  }

  else
  {
    v397 = v557;
    v398 = v558;
    v395 = v555;
    v396 = v556;
    v393 = v553;
    v394 = v554;
    v142 = v349;
    v143 = v348;
    v144 = v347;
    v145 = v346;
    v146 = v345;
    v147 = v344;
    v148 = v343;
    v149 = v342;
    v150 = v341;
    v151 = v340;
    v152 = v339;
    v153 = v338;
    v154 = v337;
    v155 = v336;
  }

  v156 = v99 + v80[17];
  *v156 = v138;
  *(v156 + 8) = v143;
  *(v156 + 9) = v147;
  *(v156 + 10) = v148;
  *(v156 + 11) = v397;
  *(v156 + 15) = v398;
  *(v156 + 16) = v146;
  *(v156 + 24) = v145;
  *(v156 + 32) = v149;
  *(v156 + 40) = v139;
  *(v156 + 41) = v140;
  *(v156 + 42) = v395;
  *(v156 + 46) = v396;
  *(v156 + 48) = v64;
  *(v156 + 56) = v65;
  *(v156 + 64) = v103;
  *(v156 + 72) = v66;
  *(v156 + 80) = v67;
  *(v156 + 88) = v68;
  *(v156 + 96) = v69;
  *(v156 + 104) = v70;
  *(v156 + 112) = v150;
  *(v156 + 120) = v151;
  *(v156 + 128) = v142;
  *(v156 + 136) = v121;
  *(v156 + 137) = v152;
  *(v156 + 138) = v153;
  *(v156 + 139) = v154;
  *(v156 + 140) = v155;
  *(v156 + 143) = v394;
  *(v156 + 141) = v393;
  v157 = MEMORY[0x1E69E7CC0];
  *(v156 + 144) = v144;
  *(v156 + 152) = v141;
  v158 = v271;
  if (!v271)
  {
    v158 = v157;
  }

  *(v99 + v80[18]) = v158;
  v159 = v279;
  v160 = v278;
  v162 = v276;
  v161 = v277;
  v163 = v274;
  v164 = v275;
  v165 = v273;
  v166 = v270;
  if (v270)
  {
    v157 = v270;
    v167 = v314;
    v168 = v313;
    v169 = v312;
    v170 = v311;
    v171 = v310;
    v172 = v309;
    v173 = v308;
    v166 = v261;
    v174 = v260;
  }

  else
  {
    v174 = 0;
    v160 = 0;
    v159 = 0;
    v161 = 1;
    v162 = 1;
    v165 = 1;
    v164 = v157;
    v163 = &unk_1F48FC078;
    v167 = v314;
    v168 = v313;
    v169 = v312;
    v170 = v311;
    v171 = v310;
    v172 = v309;
    v173 = v308;
  }

  v175 = v165 & 1;
  v392 = v175;
  v176 = v99 + v80[19];
  *v176 = v166 & 1;
  *(v176 + 8) = v157;
  *(v176 + 16) = v174 & 1;
  *(v176 + 17) = v160 & 1;
  *(v176 + 18) = v161 & 1;
  *(v176 + 24) = v162;
  *(v176 + 32) = v159;
  *(v176 + 40) = v175;
  *(v176 + 48) = v164;
  *(v176 + 56) = v163;
  OUTLINED_FUNCTION_59_2();
  if (v115)
  {
    v178 = 1;
  }

  else
  {
    v178 = 0;
  }

  OUTLINED_FUNCTION_44_5(v178 | v177);
  v186 = "https://support.apple.com/HT211777";
  if (v287 == 1)
  {
    sub_1C96A4EE4();
    v141 = sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_24_15();
      swift_once();
    }

    sub_1C96A4EB4();

    v179 = xmmword_1C96B4FD0;
    v180 = xmmword_1C96B4FC0;
    v181 = 80000.0;
    v182 = 10000.0;
    v183 = 2700.0;
    v184 = 900.0;
    v185 = 900.0;
  }

  OUTLINED_FUNCTION_33_6(v80[21], v179, v180, v181, v182, v183, v184, v185);
  v389[0] = v350;
  v389[1] = v351;
  v389[2] = v352;
  v389[3] = v353;
  v389[4] = v354;
  v389[5] = v355;
  v389[6] = v356;
  v389[7] = v357;
  v390 = v289;
  v391 = v288;
  sub_1C948CB7C(v389);
  OUTLINED_FUNCTION_32_4();
  v189 = vbslq_s8(v188, xmmword_1C96B4FE0, v351);
  *v190 = vbslq_s8(v188, v187, v350);
  v190[1] = v189;
  v191 = vbslq_s8(v188, xmmword_1C96B5000, v353);
  v190[2] = vbslq_s8(v188, xmmword_1C96B4FF0, v352);
  v190[3] = v191;
  v192 = vbslq_s8(v188, xmmword_1C96B5020, v355);
  v190[4] = vbslq_s8(v188, xmmword_1C96B5010, v354);
  v190[5] = v192;
  v193 = vbslq_s8(v188, xmmword_1C96B5030, v356);
  v194 = vbslq_s8(v188, xmmword_1C96B5040, v357);
  v190[6] = v193;
  v190[7] = v194;
  v190[8].i64[0] = v195;
  OUTLINED_FUNCTION_59_2();
  if (v115)
  {
    *&v200 = OUTLINED_FUNCTION_66_3();
    v201 = *(v198 + 80);
    v197 = 1;
    v202 = 10;
    v203 = 0x4143C68000000000;
    v204 = 0x4143C68000000000;
  }

  else
  {
    v199 = v196 >> 8;
    v201 = v250;
    v200 = v251;
    v202 = v249;
    v204 = v247;
    v203 = v248;
  }

  v205 = v99 + v80[22];
  *v205 = v200;
  *(v205 + 16) = v201;
  *(v205 + 32) = v203;
  *(v205 + 40) = v204;
  *(v205 + 48) = v202;
  *(v205 + 56) = v197;
  *(v205 + 57) = v199;
  v206 = 0.2;
  if (v291)
  {
    v207 = 0.2;
  }

  else
  {
    v207 = v171;
  }

  if (v291)
  {
    v208 = 0.2;
  }

  else
  {
    v208 = v172;
  }

  if (v291)
  {
    v209 = 0.2;
  }

  else
  {
    v209 = v173;
  }

  v210 = v296;
  if (v291)
  {
    v210 = 0.2;
  }

  else
  {
    v206 = v295;
  }

  OUTLINED_FUNCTION_60_3(v80[24], v206, v207, v208, v209, v210);
  if (v211)
  {
    OUTLINED_FUNCTION_65_3();
    v218 = v262;
  }

  else
  {
    OUTLINED_FUNCTION_65_3();
  }

  v219 = v99 + v80[25];
  *v219 = v215;
  *(v219 + 8) = v214;
  *(v219 + 16) = v216;
  *(v219 + 24) = v218;
  *(v219 + 32) = v217 & 1;
  v220 = (v99 + v80[26]);
  v221 = v302;
  *v220 = v213;
  v220[1] = v221;
  if (!v212)
  {
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_1_45();
      swift_once();
    }

    v212 = sub_1C96A53C4();
  }

  *(v99 + v80[27]) = v212;
  v222 = 600.0;
  if (!v294)
  {
    v222 = v170;
  }

  v223 = 3.0;
  if (!v294)
  {
    v223 = v169;
  }

  v224 = 64800.0;
  if (!v294)
  {
    v224 = v168;
  }

  v225 = 5000.0;
  if (!v294)
  {
    v225 = v167;
  }

  v226 = (v99 + v80[29]);
  *v226 = v222;
  v226[1] = v223;
  v226[2] = v224;
  v226[3] = v225;
  v227 = v292;
  if (!v293)
  {
    v227 = 0;
  }

  v228 = 0xE000000000000000;
  if (v293)
  {
    v228 = v293;
  }

  v229 = (v99 + v80[30]);
  *v229 = v227;
  v229[1] = v228;
  if (v141 == 2)
  {
    v230 = 0;
    LOBYTE(v231) = 0;
    v232 = xmmword_1C96B5090;
    v233 = xmmword_1C96B5080;
    v234 = 0x4092C00000000000;
    v235 = 0x404E000000000000;
    v236 = v384;
  }

  else
  {
    v231 = v141 >> 8;
    v230 = v141;
    v234 = v257;
    v233 = v255;
    v232 = v256;
    v235 = v252;
    v236 = v253;
  }

  v237 = v99 + v80[31];
  *v237 = v233;
  *(v237 + 16) = v232;
  *(v237 + 32) = v235;
  *(v237 + 40) = v230;
  *(v237 + 41) = v231;
  *(v237 + 46) = HIWORD(v141);
  *(v237 + 42) = v141 >> 16;
  *(v237 + 48) = v236;
  *(v237 + 56) = v234;
  if (("https://support.apple.com/HT211777" & 0xFF) == 2)
  {
    v387 = 1;
    v561.value = 0.0;
    memset(&v386, 0, 80);
    v386.is_nil = 1;
    v561.is_nil = 0;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&v388, &v386, 2, v561);
  }

  else
  {
    memcpy(&v388, __dst, 0x50uLL);
    *&v388.useBackgroundReverseGeocodingPriority = "https://support.apple.com/HT211777";
    v388.timelineReloadDebouncingInterval = v254;
  }

  memcpy((v99 + v80[32]), &v388, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8);
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_1C96AA1C0;
  v239 = sub_1C96A4B54();
  if (v239[2])
  {
    v140 = v239[4];
    v186 = v239[5];
    sub_1C96A53C4();
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
  }

  v240 = sub_1C947660C();
  *(v238 + 32) = v140;
  *(v238 + 40) = v186;
  *(v238 + 48) = v240;
  *(v238 + 56) = v241;
  *(v99 + v80[33]) = v238;
  v242 = sub_1C96A4B54();
  if (v242[2])
  {
    v140 = v242[4];
    v186 = v242[5];
    sub_1C96A53C4();
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
  }

  v243 = v359;

  v244 = v358;

  v245 = (v99 + v80[34]);
  *v245 = v140;
  v245[1] = v186;
  *(v99 + v80[35]) = v244;
  sub_1C9470AFC(v382, &qword_1EC3A62F0);
  sub_1C9470AFC(v362, &unk_1EC3A5430);
  (*(v385 + 8))(v363, 0xD000000000000020);
  *(v99 + v80[36]) = v243;
  sub_1C9482928(v99, v376);
  return __swift_destroy_boxed_opaque_existential_1Tm(v306);
}

unint64_t sub_1C9475588()
{
  result = qword_1EDB7F228;
  if (!qword_1EDB7F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F228);
  }

  return result;
}

uint64_t sub_1C94755F0(char a1)
{
  result = 0x726665527473616CLL;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_53_1();
      result = v3 + 10;
      break;
    case 2:
      OUTLINED_FUNCTION_53_1();
      result = v7 + 6;
      break;
    case 3:
      OUTLINED_FUNCTION_53_1();
      result = v8 + 17;
      break;
    case 4:
      OUTLINED_FUNCTION_53_1();
      result = v5 + 23;
      break;
    case 5:
      OUTLINED_FUNCTION_53_1();
      result = v9 + 14;
      break;
    case 6:
      OUTLINED_FUNCTION_53_1();
      result = v10 + 18;
      break;
    case 7:
      result = 0x65726F7453707061;
      break;
    case 8:
      result = 0x746E696F70646E65;
      break;
    case 9:
      result = 0x7365727574616566;
      break;
    case 10:
      result = 0x65646F636F6567;
      break;
    case 11:
      result = 0x6369726F74736968;
      break;
    case 12:
      OUTLINED_FUNCTION_53_1();
      result = v6 | 4;
      break;
    case 13:
      result = 1936744813;
      break;
    case 14:
      OUTLINED_FUNCTION_53_1();
      result = v4 | 8;
      break;
    case 15:
      result = 0x6B726F7774656ELL;
      break;
    case 16:
      result = 1937204590;
      break;
    case 17:
      result = 0x6163696669746F6ELL;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x79636176697270;
      break;
    case 20:
    case 30:
      OUTLINED_FUNCTION_53_1();
      result = v11 | 1;
      break;
    case 21:
      result = 0x655774726F706572;
      break;
    case 22:
      OUTLINED_FUNCTION_53_1();
      result = v12 - 2;
      break;
    case 23:
      result = 0x7374696E75;
      break;
    case 24:
      result = 0x4472656874616577;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
      result = 0x4D72656874616577;
      break;
    case 27:
      result = 0x746567646977;
      break;
    case 28:
      result = 0x7250746567646977;
      break;
    case 29:
      result = 0x65676175676E616CLL;
      break;
    case 31:
      result = 0x6E656D7461657274;
      break;
    case 32:
      result = 0x53746E656D676573;
      break;
    default:
      return result;
  }

  return result;
}

void OUTLINED_FUNCTION_52_1()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return type metadata accessor for Location();
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return sub_1C96A6154();
}

_BYTE *storeEnumTagSinglePayload for AppConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
        JUMPOUT(0x1C9475BE0);
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C9475C94()
{
  result = qword_1EDB7E300;
  if (!qword_1EDB7E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E300);
  }

  return result;
}

uint64_t sub_1C9475CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LanguageConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73F8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9475FB4();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    sub_1C96A7C24();
    v11 = v18;
    v12 = v19;
    LOBYTE(v20) = 1;
    sub_1C94761D8();
    sub_1C96A7C24();
    v17[0] = v17[1];
    v23.value.onlineFeedbackURL._countAndFlagsBits = v17;
    v13.value._countAndFlagsBits = v11;
    v13.value._object = v12;
    v24 = LanguageConfiguration.init(language:reportWeather:)(v13, v23);
    (*(v7 + 8))(v10, v5, v24.reportWeather.onlineFeedbackURL._countAndFlagsBits, v24.reportWeather.onlineFeedbackURL._object);
    v14 = v21;
    v15 = v22;
    *a2 = v20;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9475F08()
{
  result = qword_1EDB7E310;
  if (!qword_1EDB7E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E310);
  }

  return result;
}

unint64_t sub_1C9475F60()
{
  result = qword_1EDB7E318;
  if (!qword_1EDB7E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E318);
  }

  return result;
}

unint64_t sub_1C9475FB4()
{
  result = qword_1EDB7E320;
  if (!qword_1EDB7E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E320);
  }

  return result;
}

uint64_t sub_1C9476010(char a1)
{
  if (a1)
  {
    return 0x655774726F706572;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

_BYTE *storeEnumTagSinglePayload for LanguageConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1C9476128);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NamedNetworkConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C94761D8()
{
  result = qword_1EDB7FC58;
  if (!qword_1EDB7FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC58);
  }

  return result;
}

uint64_t ReportWeatherConfiguration.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55C8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9476480();
  sub_1C96A7F44();
  if (!v2)
  {
    sub_1C96A7C24();
    v11 = v16[1];
    v17 = v16[0];
    v12 = sub_1C947660C();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    if (v11)
    {

      v12 = v17;
      v14 = v11;
    }

    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C94763D4()
{
  result = qword_1EDB7FC68;
  if (!qword_1EDB7FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC68);
  }

  return result;
}

unint64_t sub_1C947642C()
{
  result = qword_1EDB7FC70;
  if (!qword_1EDB7FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC70);
  }

  return result;
}

unint64_t sub_1C9476480()
{
  result = qword_1EDB7FC78;
  if (!qword_1EDB7FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C9476594);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s11WeatherMenuVwet(unsigned int *a1, int a2)
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

unint64_t sub_1C947660C()
{
  v0 = sub_1C96A4BE4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A4C14();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4BC4();
  sub_1C96A4BF4();
  (*(v8 + 8))(v11, v6);
  LOBYTE(v11) = Locale.Language.isJapanese.getter();
  (*(v2 + 8))(v5, v0);
  if (v11)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t Locale.Language.isJapanese.getter()
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
    v7 = v1 == 24938 && v0 == 0xE200000000000000;
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

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_1C96A7B84();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);

  return sub_1C948C8F0();
}

void *OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a14;

  return __swift_project_boxed_opaque_existential_1(&a11, v15);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_33()
{

  return memcpy((v0 + 1184), (v1 - 256), 0x98uLL);
}

void OUTLINED_FUNCTION_29_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_29_9()
{
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t result, char a2)
{
  *(v2 - 120) = result;
  *(v2 - 112) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_29_12()
{
  v2 = *(v0 - 240);
  *(v0 - 456) = *(v0 - 248);
  *(v0 - 432) = v2;

  return sub_1C95087DC(v0 - 248, v0 - 320);
}

uint64_t OUTLINED_FUNCTION_29_14()
{

  return swift_once();
}

uint64_t sub_1C9476AEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

WeatherCore::LanguageConfiguration __swiftcall LanguageConfiguration.init(language:reportWeather:)(Swift::String_optional language, WeatherCore::ReportWeatherConfiguration_optional reportWeather)
{
  object = language.value._object;
  countAndFlagsBits = language.value._countAndFlagsBits;
  v5 = v2;
  v6 = *reportWeather.value.onlineFeedbackURL._countAndFlagsBits;
  v7 = *(reportWeather.value.onlineFeedbackURL._countAndFlagsBits + 8);
  v8 = sub_1C96A4B54();
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];
    sub_1C96A53C4();
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x53552D6E65;
  }

  if (!object)
  {
    countAndFlagsBits = v10;
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = object;
  if (!v7)
  {
LABEL_6:
    v11 = sub_1C947660C();
    v6 = v11;
    v7 = v12;
  }

LABEL_7:
  *v5 = countAndFlagsBits;
  v5[1] = v9;
  v5[2] = v6;
  v5[3] = v7;
  result.reportWeather.onlineFeedbackURL._object = v14;
  result.reportWeather.onlineFeedbackURL._countAndFlagsBits = v13;
  result.language._object = v12;
  result.language._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1C9476BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *sub_1C9476C24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v43 = a5;
  v5 = a1[2];
  v41 = a1;
  v6 = (a1 + 7);
  v7 = MEMORY[0x1E69E7CC8];
  v40 = v5;
  if (v5)
  {
    while (1)
    {
      v46 = v5;
      v48 = v6;
      v50 = *(v6 - 8);
      v8 = sub_1C96A70B4();
      v10 = v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1C9476F90(v8, v10);
      if (__OFADD__(v7[2], (v12 & 1) == 0))
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AA0);
      if (sub_1C96A7B84())
      {
        v15 = sub_1C9476F90(v8, v10);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_28;
        }

        v13 = v15;
      }

      if (v14)
      {

        OUTLINED_FUNCTION_68_1((v7[7] + 32 * v13), v39, v40, v41, v42, v43, v44, v45, v46, v48, v50);
      }

      else
      {
        v7[(v13 >> 6) + 8] |= 1 << v13;
        v17 = (v7[6] + 16 * v13);
        *v17 = v8;
        v17[1] = v10;
        OUTLINED_FUNCTION_68_1((v7[7] + 32 * v13), v39, v40, v41, v42, v43, v44, v45, v46, v48, v50);

        v18 = v7[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v7[2] = v20;
      }

      v6 = v49 + 32;
      v5 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1C96A7E44();
    __break(1u);
  }

  else
  {
LABEL_11:
    v21 = *(v42 + 16);
    v22 = v42 + 40;
    if (!v21)
    {
LABEL_15:

      v28 = v45;
      v29 = v40;
      if (!v40)
      {
        return sub_1C94FB268(v41, v43);
      }

      for (i = v41 + 7; ; i += 4)
      {
        if (v28)
        {
          v32 = *(i - 1);
          v31 = *i;
          v34 = *(i - 3);
          v33 = *(i - 2);
          sub_1C946DFF0();
          sub_1C96A53C4();
          sub_1C96A53C4();
          result = sub_1C96A7994();
          if (!result)
          {
            *v43 = v34;
            v43[1] = v33;
            v43[2] = v32;
            v43[3] = v31;
            return result;
          }

          v28 = v45;
        }

        if (!--v29)
        {
          return sub_1C94FB268(v41, v43);
        }
      }
    }

    while (1)
    {
      v23 = sub_1C96A70B4();
      v25 = v24;
      if (v7[2])
      {
        v26 = v23;
        sub_1C96A53C4();
        sub_1C9476F90(v26, v25);
        LOBYTE(v26) = v27;

        if (v26)
        {
          break;
        }
      }

      v22 += 16;
      if (!--v21)
      {
        goto LABEL_15;
      }
    }

    v36 = sub_1C96A70B4();
    v38 = v37;

    sub_1C94FA7EC(v36, v38, v7, v43);
  }

  return result;
}

unint64_t sub_1C9476F90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_23_6();
  sub_1C96A7144();
  v4 = sub_1C96A7F24();

  return sub_1C9476FFC(a1, a2, v4);
}

unint64_t sub_1C9476FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C96A7DE4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C94770D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C96A4764();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t MapsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64D8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9477884();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v54 = v7;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64E0);
  LOBYTE(v64) = 0;
  sub_1C94779B8(&qword_1EDB7CEF0, &qword_1EDB7EF00);
  sub_1C96A7C24();
  v50 = v83;
  OUTLINED_FUNCTION_11_24(1);
  OUTLINED_FUNCTION_5_30();
  v53 = v82;
  OUTLINED_FUNCTION_11_24(2);
  OUTLINED_FUNCTION_5_30();
  v52 = v81;
  OUTLINED_FUNCTION_11_24(3);
  OUTLINED_FUNCTION_10_24();
  v12 = v79;
  v51 = v80;
  OUTLINED_FUNCTION_11_24(4);
  OUTLINED_FUNCTION_10_24();
  v13 = v77;
  v49 = v78;
  OUTLINED_FUNCTION_11_24(5);
  OUTLINED_FUNCTION_10_24();
  v14 = v75;
  v47 = v76;
  OUTLINED_FUNCTION_11_24(6);
  OUTLINED_FUNCTION_5_30();
  v45 = v74;
  OUTLINED_FUNCTION_11_24(7);
  sub_1C94788F4();
  sub_1C96A7C24();
  v43 = v73;
  OUTLINED_FUNCTION_12_25(8);
  sub_1C947FA08();
  sub_1C96A7C24();
  v37 = v65;
  v34 = v64;
  v38 = v67;
  v36 = v66;
  v16 = v68;
  v15 = v69;
  v35 = v70;
  v39 = v71;
  v41 = v72;
  OUTLINED_FUNCTION_12_25(9);
  OUTLINED_FUNCTION_5_30();
  v48 = v63;
  OUTLINED_FUNCTION_12_25(10);
  OUTLINED_FUNCTION_5_30();
  v46 = v62;
  OUTLINED_FUNCTION_12_25(11);
  OUTLINED_FUNCTION_5_30();
  v44 = v61;
  OUTLINED_FUNCTION_12_25(12);
  OUTLINED_FUNCTION_5_30();
  v42 = v60;
  OUTLINED_FUNCTION_12_25(13);
  OUTLINED_FUNCTION_19_16();
  v40 = v58;
  v17 = v59;
  OUTLINED_FUNCTION_12_25(14);
  OUTLINED_FUNCTION_19_16();
  v18 = v56;
  v19 = v57;
  v20 = sub_1C947FE2C(v50);

  if (!v20)
  {
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    OUTLINED_FUNCTION_108();
    swift_beginAccess();
    v20 = off_1EDB7EF20;
    sub_1C96A53C4();
  }

  (*(v54 + 8))(v10, v5);
  v21 = -86400.0;
  if (v51)
  {
    v22 = -86400.0;
  }

  else
  {
    v22 = v12;
  }

  v23 = -7200.0;
  if (!v49)
  {
    v23 = v13;
  }

  if (!v47)
  {
    v21 = v14;
  }

  v24 = v45 & 1;
  v25 = v43;
  if (v43 == 4)
  {
    v25 = 0;
  }

  if (v41)
  {
    v26 = 0;
    v27 = xmmword_1C96B4FA0;
    v28 = xmmword_1C96B4F90;
    v29 = xmmword_1C96B4F80;
    v30 = xmmword_1C96B4F70;
    v31 = 0x401C000000000000;
    v15 = 7.5;
    v16 = 9.0;
  }

  else
  {
    v26 = v39;
    v27 = v38;
    v29 = v37;
    v28 = v36;
    v31 = v35;
    v30 = v34;
  }

  *a2 = v20;
  v32 = 20;
  if (!v17)
  {
    v32 = v40;
  }

  *(a2 + 8) = v53;
  v33 = 100;
  *(a2 + 9) = v52;
  if (!v19)
  {
    v33 = v18;
  }

  *(a2 + 10) = 2;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v21;
  *(a2 + 40) = v24;
  *(a2 + 41) = v25;
  *(a2 + 48) = v30;
  *(a2 + 64) = v29;
  *(a2 + 80) = v28;
  *(a2 + 96) = v27;
  *(a2 + 112) = v16;
  *(a2 + 120) = v15;
  *(a2 + 128) = v31;
  *(a2 + 136) = v26;
  *(a2 + 137) = v48;
  *(a2 + 138) = v46;
  *(a2 + 139) = v44;
  *(a2 + 140) = v42;
  *(a2 + 144) = v32;
  *(a2 + 152) = v33;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C94777DC()
{
  result = qword_1EDB7EE50;
  if (!qword_1EDB7EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE50);
  }

  return result;
}

unint64_t sub_1C9477830()
{
  result = qword_1EDB7EE58;
  if (!qword_1EDB7EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE58);
  }

  return result;
}

unint64_t sub_1C9477884()
{
  result = qword_1EDB7EE60[0];
  if (!qword_1EDB7EE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7EE60);
  }

  return result;
}

uint64_t type metadata accessor for MapsConfiguration.EndpointConfiguration()
{
  result = qword_1EDB7EEF0;
  if (!qword_1EDB7EEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9477924()
{
  result = sub_1C96A4764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C94779B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A64E0);
    sub_1C947F368(a2, type metadata accessor for MapsConfiguration.EndpointConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9477A60(char a1)
{
  result = 0x746E696F70646E65;
  switch(a1)
  {
    case 1:
      result = 0x3250545448657375;
      break;
    case 2:
      OUTLINED_FUNCTION_29_7();
      result = v8 + 6;
      break;
    case 3:
      OUTLINED_FUNCTION_29_7();
      result = v9 + 11;
      break;
    case 4:
      OUTLINED_FUNCTION_29_7();
      result = v5 | 8;
      break;
    case 5:
      result = 0x72617453646E6977;
      break;
    case 6:
      result = 0x6C62617369447761;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6576654C6D6F6F7ALL;
      break;
    case 9:
      OUTLINED_FUNCTION_29_7();
      result = v7 | 2;
      break;
    case 10:
      OUTLINED_FUNCTION_29_7();
      result = v10 + 15;
      break;
    case 11:
      OUTLINED_FUNCTION_29_7();
      result = v4 + 7;
      break;
    case 12:
      OUTLINED_FUNCTION_29_7();
      result = v6 - 4;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      OUTLINED_FUNCTION_29_7();
      result = v3 - 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MapsConfiguration.EndpointConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64F0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v24 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94780D8();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v9;
  v29 = 0;
  sub_1C947812C();
  OUTLINED_FUNCTION_21_18();
  sub_1C96A7CB4();
  *v12 = v30;
  v28 = 1;
  OUTLINED_FUNCTION_8_26();
  sub_1C947F368(v13, v14);
  v15 = v25;
  OUTLINED_FUNCTION_21_18();
  sub_1C96A7CB4();
  (*(v23 + 32))(&v12[*(v24 + 20)], v7, v15);
  v27 = 2;
  sub_1C94784A8();
  OUTLINED_FUNCTION_21_18();
  sub_1C96A7C74();
  v26 = 4;
  OUTLINED_FUNCTION_21_18();
  v16 = sub_1C96A7C54();
  v17 = OUTLINED_FUNCTION_17_22();
  v18(v17);
  v12[*(v24 + 28)] = (v16 == 2) | v16 & 1;
  sub_1C947F8E0(v12, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C947F944(v12);
}