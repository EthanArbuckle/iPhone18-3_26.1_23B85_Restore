_BYTE *sub_266E7CBE0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E7CCACLL);
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

uint64_t sub_266E7CD10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_266E7CD88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266E7C6F8();
  *a2 = result;
  return result;
}

uint64_t sub_266E7CDB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E7C750(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_266E7CDFC()
{
  result = qword_2800E96B0;
  if (!qword_2800E96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96B0);
  }

  return result;
}

unint64_t sub_266E7CE54()
{
  result = qword_2800E96B8;
  if (!qword_2800E96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96B8);
  }

  return result;
}

uint64_t sub_266E7CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

unint64_t sub_266E7CF78()
{
  result = qword_2800E96C0;
  if (!qword_2800E96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96C0);
  }

  return result;
}

unint64_t sub_266E7CFCC()
{
  result = qword_2800E96C8;
  if (!qword_2800E96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96C8);
  }

  return result;
}

unint64_t sub_266E7D020()
{
  result = qword_2800E96D0;
  if (!qword_2800E96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96D0);
  }

  return result;
}

unint64_t sub_266E7D074()
{
  result = qword_2800E96D8;
  if (!qword_2800E96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96D8);
  }

  return result;
}

unint64_t sub_266E7D0C8()
{
  result = qword_2800E96E0;
  if (!qword_2800E96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96E0);
  }

  return result;
}

unint64_t sub_266E7D11C()
{
  result = qword_2800E96E8;
  if (!qword_2800E96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96E8);
  }

  return result;
}

unint64_t sub_266E7D170()
{
  result = qword_2800E96F0;
  if (!qword_2800E96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96F0);
  }

  return result;
}

unint64_t sub_266E7D1C4()
{
  result = qword_2800E96F8;
  if (!qword_2800E96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E96F8);
  }

  return result;
}

unint64_t sub_266E7D218()
{
  result = qword_2800E9700;
  if (!qword_2800E9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9700);
  }

  return result;
}

uint64_t sub_266E7D26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_266E9CFA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9560, &unk_266E9FEA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9570, &qword_266E9F5F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
  sub_266E9CD04();
  v14 = sub_266E9CD14();
  (*(v10 + 8))(v13, v9);
  v22 = a1;
  v14(&v23, &v22);

  sub_266E595F8(&v23, v24);
  if (qword_2800E8D88 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_2800EC7F8);
  (*(v4 + 16))(v8, v15, v3);
  v16 = sub_266E9CF84();
  v17 = sub_266E9D194();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_266E51000, v16, v17, "IdentityNLIntentHelper building NLv4 intent", v18, 2u);
    MEMORY[0x26D5F66A0](v18, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  return sub_266E595F8(v24, v21);
}

double OUTLINED_FUNCTION_6_5()
{
  v1 = *(v0 - 160);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_266E7D6EC()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  sub_266E7D73C(&v2, &v3);
  return v3;
}

uint64_t sub_266E7D73C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_266E9D014();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_266E9D234();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_266E59C2C(v9);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_266E7D84C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v0 + 16) = sub_266E7D8A8(0xD000000000000017, 0x8000000266EA1E60);
  return v0;
}

id sub_266E7D8A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266E9D014();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_266E7D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266E7D9F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UserAccount()
{
  result = qword_2800E9710;
  if (!qword_2800E9710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E7DAF4()
{
  sub_266E7DB94();
  if (v0 <= 0x3F)
  {
    sub_266E7DBEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266E7DB94()
{
  if (!qword_2800E9720)
  {
    sub_266E9BE84();
    v0 = sub_266E9D214();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E9720);
    }
  }
}

void sub_266E7DBEC()
{
  if (!qword_2800E9728)
  {
    v0 = sub_266E9D214();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E9728);
    }
  }
}

uint64_t sub_266E7DC3C()
{
  sub_266E9D294();
  MEMORY[0x26D5F5CB0](0xD000000000000016, 0x8000000266EA2940);
  v1 = type metadata accessor for UserAccount();
  MEMORY[0x26D5F5CB0](*(v0 + v1[6]), *(v0 + v1[6] + 8));
  MEMORY[0x26D5F5CB0](0x4164756F6C43692CLL, 0xEF3D44495344746CLL);
  v2 = (v0 + v1[5]);
  v7 = *v2;
  v8 = v2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  v3 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v3);

  MEMORY[0x26D5F5CB0](0x766974634173692CLL, 0xEA00000000003D65);
  if (*(v0 + v1[8]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v1[8]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D5F5CB0](v4, v5);

  MEMORY[0x26D5F5CB0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_266E7DDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266E9BE84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __dst - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __dst - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93C8, &unk_266E9EF20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = __dst - v16;
  v18 = *(v15 + 56);
  sub_266E64B68(a1, __dst - v16);
  sub_266E64B68(a2, &v17[v18]);
  OUTLINED_FUNCTION_0_12(v17);
  if (!v19)
  {
    sub_266E64B68(v17, v12);
    OUTLINED_FUNCTION_0_12(&v17[v18]);
    if (!v19)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_266E65254();
      v22 = sub_266E9D004();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_266E54DA8(v17, &qword_2800E9360, &qword_266E9EE20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_266E54DA8(v17, &qword_2800E93C8, &unk_266E9EF20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_12(&v17[v18]);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_266E54DA8(v17, &qword_2800E9360, &qword_266E9EE20);
LABEL_13:
  v24 = type metadata accessor for UserAccount();
  v25 = v24[5];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = *v26 == *v28 && v27 == v29;
    if (!v30 && (sub_266E9D3E4() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v29)
  {
    goto LABEL_10;
  }

  v31 = v24[6];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v32 == *v34 && v33 == v34[1];
  if (v35 || (sub_266E9D3E4() & 1) != 0)
  {
    memcpy(__dst, (a1 + v24[7]), sizeof(__dst));
    memcpy(v37, (a2 + v24[7]), sizeof(v37));
    if (sub_266E612CC(__dst, v37))
    {
      v20 = *(a1 + v24[8]) ^ *(a2 + v24[8]) ^ 1;
      return v20 & 1;
    }
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t get_enum_tag_for_layout_string_20SiriIdentityInternal31ExecutionDeviceResolutionResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266E7E13C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266E7E198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_266E7E1E8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_266E7E218(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_266E78CB4();
  return sub_266E9D1F4() & 1;
}

id IdentifyUserIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t IdentifyUserIntentHandler.resolveIdentity(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[18] = v0;
  v2 = sub_266E9CFA4();
  v1[19] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v1[20] = v3;
  v5 = *(v4 + 64);
  v1[21] = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E7E388()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[20];
  v1 = v0[21];
  __swift_project_value_buffer(v0[19], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v7);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v8, v9, "IdentifyUserIntentHandler.resolveIdentity");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_16();
  v15(v14);
  sub_266E9CCF4();
  sub_266E9CCE4();
  sub_266E9CCC4();

  v16 = sub_266E9CE44();

  if (v16 == 2 || (v16 & 1) == 0)
  {
    sub_266E80168();
    v19 = sub_266E54468();
    v0[23] = v19;
    if (v19)
    {
      v20 = v19;
      v0[2] = v0;
      v0[7] = v0 + 27;
      v0[3] = sub_266E7E764;
      v21 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9738, &qword_266EA00A0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_266E7EA58;
      v0[13] = &block_descriptor_0;
      v0[14] = v21;
      [v20 isRecognizeMyVoiceAvailable_];

      return MEMORY[0x282200938](v0 + 2);
    }

    else
    {
      v0[24] = 0;
      v22 = swift_task_alloc();
      v0[25] = v22;
      *v22 = v0;
      OUTLINED_FUNCTION_11_1(v22);

      return sub_266E7FB64();
    }
  }

  else
  {
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_266E7E650;

    return sub_266E7F2A8();
  }
}

uint64_t sub_266E7E650()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 176);
  v5 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v6 = v5;

  v7 = *(v3 + 168);

  v8 = *(v5 + 8);

  return v8(v2);
}

uint64_t sub_266E7E764()
{
  OUTLINED_FUNCTION_7_0();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_266E7E838, 0, 0);
}

uint64_t sub_266E7E838()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 184);
  if (*(v0 + 216))
  {
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(4);

    v2 = *(v0 + 168);

    v3 = OUTLINED_FUNCTION_5_4();

    return v4(v3);
  }

  else
  {
    *(v0 + 192) = v1;
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_11_1(v6);

    return sub_266E7FB64();
  }
}

uint64_t sub_266E7E904()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = *(v1 + 200);
  v9 = *v0;
  *(v2 + 208) = v4;

  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E7E9F4()
{
  OUTLINED_FUNCTION_7_0();

  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  v3 = OUTLINED_FUNCTION_5_4();

  return v4(v3);
}

uint64_t sub_266E7EA58(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return sub_266E7EA9C(v3, a2);
}

uint64_t sub_266E7EADC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266E7EB98;

  return IdentifyUserIntentHandler.resolveIdentity(for:)();
}

uint64_t sub_266E7EB98()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t IdentifyUserIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E7ED8C()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D90 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_2800EC810);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v7);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v8, v9, "IdentifyUserIntentHandler.confirm");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_16();
  v15(v14);
  v16 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(1, 0);

  v17 = OUTLINED_FUNCTION_5_4();

  return v18(v17);
}

uint64_t sub_266E7EED8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E80410;

  return IdentifyUserIntentHandler.confirm(intent:)();
}

uint64_t IdentifyUserIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E7F030()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v7);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v8, v9, "IdentifyUserIntentHandler.handle");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_16();
  v15(v14);
  v16 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(4, 0);

  v17 = OUTLINED_FUNCTION_5_4();

  return v18(v17);
}

uint64_t sub_266E7F16C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_266E905F0(a6, v10);
}

uint64_t sub_266E7F1F0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E80410;

  return IdentifyUserIntentHandler.handle(intent:)();
}

uint64_t sub_266E7F2A8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(*(sub_266E9CE64() - 8) + 64);
  v0[2] = OUTLINED_FUNCTION_18();
  v2 = sub_266E9C434();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v6 = sub_266E9C464();
  v0[7] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_18();
  v10 = sub_266E9CFA4();
  v0[10] = v10;
  OUTLINED_FUNCTION_5_1(v10);
  v0[11] = v11;
  v13 = *(v12 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266E7F468()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[18];
  v2 = v0[10];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    OUTLINED_FUNCTION_20_4(&dword_266E51000, v9, v10, "IdentifyUserIntentHandler.resolveDeviceHasMultiUserEnabled");
    MEMORY[0x26D5F66A0](v8, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[9];

  v15 = *(v13 + 8);
  v15(v11, v12);
  sub_266E9CCF4();
  sub_266E9CCE4();
  sub_266E9CCB4();

  sub_266E9C674();

  if (sub_266E86BC4())
  {
    v16 = v0[12];
    v17 = OUTLINED_FUNCTION_15_1();
    (v5)(v17);
    v18 = sub_266E9CF84();
    v19 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v19))
    {
      v20 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v20);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v21, v22, "Unknown User won't be recognized. Bailing out");
      OUTLINED_FUNCTION_10();
    }

    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];

    v26 = OUTLINED_FUNCTION_7_5();
    (v15)(v26);
LABEL_9:
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    v27 = 3;
LABEL_10:
    v112 = static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(v27);
    goto LABEL_11;
  }

  v39 = v0[9];
  v40 = sub_266E9C3C4();
  v113 = v15;
  if ((sub_266E86CF0(v40 & 1) & 1) == 0)
  {
    v64 = v0[9];
    v66 = v0[5];
    v65 = v0[6];
    v67 = v0[3];
    v68 = v0[4];
    sub_266E9C444();
    sub_266E9C414();
    LOBYTE(v64) = sub_266E9C3E4();
    v69 = *(v68 + 8);
    v69(v66, v67);
    v69(v65, v67);
    v70 = v0[10];
    if (v64)
    {
      v5(v0[14], v4, v70);
      v71 = sub_266E9CF84();
      v72 = sub_266E9D194();
      if (OUTLINED_FUNCTION_31_0(v72))
      {
        v73 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v73);
        OUTLINED_FUNCTION_16_1(&dword_266E51000, v74, v75, "User Ambiguous");
        OUTLINED_FUNCTION_10();
      }

      v76 = v0[14];
      v77 = v0[10];
      v78 = v0[11];

      v79 = OUTLINED_FUNCTION_7_5();
      (v15)(v79);
      type metadata accessor for UserIdentifyIdentityResolutionResult();
      v27 = 2;
      goto LABEL_10;
    }

    v5(v0[13], v4, v70);
    v80 = sub_266E9CF84();
    v81 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v81))
    {
      v82 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v82);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v83, v84, "User Unrecognized");
      OUTLINED_FUNCTION_10();
    }

    v85 = v0[13];
    v86 = v0[10];
    v87 = v0[11];

    v88 = OUTLINED_FUNCTION_7_5();
    (v15)(v88);
    goto LABEL_9;
  }

  v41 = v0[17];
  v42 = OUTLINED_FUNCTION_15_1();
  (v5)(v42);
  v43 = sub_266E9CF84();
  v44 = sub_266E9D194();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_5_0();
    *v45 = 0;
    _os_log_impl(&dword_266E51000, v43, v44, "User Identified", v45, 2u);
    MEMORY[0x26D5F66A0](v45, -1, -1);
  }

  v46 = v0[17];
  v47 = v0[10];
  v48 = v0[11];
  v49 = v0[9];

  v113(v46, v47);
  v50 = sub_266E9C454();
  v51 = v50;
  if (v50)
  {
  }

  v52 = v0[9];
  v53 = sub_266E9C454();
  if (!v53)
  {
    if (v51)
    {
      goto LABEL_31;
    }

LABEL_34:
    v100 = v0[16];
    v101 = OUTLINED_FUNCTION_15_1();
    (v5)(v101);
    v102 = sub_266E9CF84();
    v103 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v103))
    {
      v104 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v104);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v105, v106, "Missing MeCard");
      OUTLINED_FUNCTION_10();
    }

    v107 = v0[16];
    v108 = v0[10];
    v109 = v0[11];

    v110 = OUTLINED_FUNCTION_7_5();
    (v113)(v110);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    v27 = 7;
    goto LABEL_10;
  }

  v54 = v53;
  v55 = sub_266E9408C();

  if (!v51)
  {
    goto LABEL_34;
  }

  if (v55)
  {
LABEL_31:
    v89 = v0[15];
    v90 = OUTLINED_FUNCTION_15_1();
    (v5)(v90);
    v91 = sub_266E9CF84();
    v92 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v92))
    {
      v93 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v93);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v94, v95, "Partial MeCard");
      OUTLINED_FUNCTION_10();
    }

    v96 = v0[15];
    v97 = v0[10];
    v98 = v0[11];

    v99 = OUTLINED_FUNCTION_7_5();
    (v113)(v99);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    v27 = 5;
    goto LABEL_10;
  }

  v56 = v0[9];
  v58 = v0[5];
  v57 = v0[6];
  v60 = v0[3];
  v59 = v0[4];
  v61 = v0[2];
  sub_266E9CCE4();
  sub_266E9CCB4();

  sub_266E9C694();

  sub_266E9C444();
  sub_266E9C424();
  sub_266E9C3E4();
  v62 = *(v59 + 8);
  v62(v58, v60);
  v62(v57, v60);
  sub_266E86EB8();
  type metadata accessor for Identity();
  sub_266E9CCE4();
  sub_266E9CCC4();

  sub_266E9CE34();

  sub_266E9CE54();
  sub_266E803B4(v61);
  v63 = sub_266E54644();
  type metadata accessor for UserIdentifyIdentityResolutionResult();
  v112 = static IdentityResolutionResult.success(with:)(v63);

LABEL_11:
  v29 = v0[17];
  v28 = v0[18];
  v31 = v0[15];
  v30 = v0[16];
  v33 = v0[13];
  v32 = v0[14];
  v34 = v0[12];
  v35 = v0[6];
  v36 = v0[5];
  v111 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v37 = v0[1];

  return v37(v112);
}

uint64_t sub_266E7FB64()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E7FC24()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v8);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v9, v10, "IdentifyUserIntentHandler.resolveDeviceNotSupportingMultiUser");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[6];
  v12 = v0[2];
  v13 = v0[3];

  v0[10] = *(v13 + 8);
  v14 = OUTLINED_FUNCTION_16();
  v15(v14);
  sub_266E9C294();
  v16 = sub_266E9C634();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[11] = sub_266E9C624();
  v19 = *(MEMORY[0x277D5BEF8] + 4);
  v22 = (*MEMORY[0x277D5BEF8] + MEMORY[0x277D5BEF8]);
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_266E7FDC0;

  return v22();
}

uint64_t sub_266E7FDC0()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v7 + 104) = v6;

  v8 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266E7FEC8()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
    if (sub_266E9408C())
    {
      v3 = *(v0 + 72);
      (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 16));
      v4 = sub_266E9CF84();
      v5 = sub_266E9D194();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = OUTLINED_FUNCTION_5_0();
        *v6 = 0;
        OUTLINED_FUNCTION_20_4(&dword_266E51000, v7, v8, "Partial MeCard");
        MEMORY[0x26D5F66A0](v6, -1, -1);
      }

      v9 = *(v0 + 80);
      v10 = *(v0 + 40);
      v11 = *(v0 + 16);
      v12 = *(v0 + 24);

      v9(v10, v11);
      type metadata accessor for UserIdentifyIdentityResolutionResult();
      static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(5);
    }

    else
    {
      type metadata accessor for Identity();
      v24 = sub_266E54644();
      type metadata accessor for UserIdentifyIdentityResolutionResult();
      static IdentityResolutionResult.success(with:)(v24);
    }
  }

  else
  {
    v13 = *(v0 + 72);
    (*(v0 + 64))(*(v0 + 32), *(v0 + 56), *(v0 + 16));
    v14 = sub_266E9CF84();
    v15 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v15))
    {
      v16 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v16);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v17, v18, "User Unknown");
      OUTLINED_FUNCTION_10();
    }

    v19 = *(v0 + 80);
    v21 = *(v0 + 24);
    v20 = *(v0 + 32);
    v22 = *(v0 + 16);

    v23 = OUTLINED_FUNCTION_16();
    v19(v23);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(8);
  }

  v26 = *(v0 + 40);
  v25 = *(v0 + 48);
  v27 = *(v0 + 32);

  v28 = OUTLINED_FUNCTION_5_4();

  return v29(v28);
}

id IdentifyUserIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentifyUserIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IdentifyUserIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentifyUserIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266E80168()
{
  result = qword_2800E9730;
  if (!qword_2800E9730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9730);
  }

  return result;
}

uint64_t sub_266E801EC()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_9_2(v5);

  return v7(v6);
}

uint64_t sub_266E80284()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_9_2(v5);

  return v7(v6);
}

uint64_t sub_266E8031C()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_9_2(v5);

  return v7(v6);
}

uint64_t sub_266E803B4(uint64_t a1)
{
  v2 = sub_266E9CE64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_20_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_266E8048C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D48 != -1)
  {
    swift_once();
  }

  v6 = qword_2800E92F8;
  sub_266E9CF64();
  sub_266E9D1D4();
  sub_266E9CF44();
  v7 = &v5[*(v2 + 20)];
  *v7 = "AccountServicesInstanceCreation";
  *(v7 + 1) = 31;
  *(v7 + 8) = 258;
  v8 = type metadata accessor for AccountServicesNoOp();
  v9 = swift_allocObject();
  a1[3] = v8;
  a1[4] = &off_2878764E8;
  *a1 = v9;
  sub_266E9D1C4();
  sub_266E9CF54();
  return sub_266E541C0(v5);
}

unint64_t sub_266E8067C()
{
  result = qword_2800E9740;
  if (!qword_2800E9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9740);
  }

  return result;
}

BOOL sub_266E806D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static Proximity.< infix(_:_:)();
}

BOOL sub_266E806DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266E806E8();
}

BOOL sub_266E80724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266E80730();
}

BOOL sub_266E80768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266E80774();
}

uint64_t sub_266E807B4(uint64_t a1, void *a2)
{
  v3 = sub_266E9C1D4();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_266E9CFA4();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v21 = __swift_project_value_buffer(v12, qword_2800EC7E0);
  (*(v15 + 16))(v20, v21, v12);
  v22 = sub_266E9CF84();
  v23 = sub_266E9D194();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_5_0();
    *v24 = 0;
    _os_log_impl(&dword_266E51000, v22, v23, "IdentifyUserIntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v24, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v15 + 8))(v20, v12);
  sub_266E9C254();
  v25 = objc_allocWithZone(type metadata accessor for IdentifyUserIntentHandler());

  [v25 init];
  type metadata accessor for UserIdentifyIntent();
  v26 = a2;
  sub_266E9C1C4();
  v27 = sub_266E9C244();
  (*(v6 + 8))(v11, v3);
  return v27;
}

uint64_t sub_266E80A34()
{
  v0 = sub_266E9CFA4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = __swift_project_value_buffer(v0, qword_2800EC7E0);
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_5_0();
    *v12 = 0;
    _os_log_impl(&dword_266E51000, v10, v11, "IdentifyUserFlowStrategy.actionForInput() called", v12, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_6_0();
  v15(v14);
  return sub_266E9C384();
}

uint64_t sub_266E80B9C(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_266E9C7E4();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_266E9CFA4();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E80CE8, 0, 0);
}

uint64_t sub_266E80CE8()
{
  v88 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = __swift_project_value_buffer(*(v0 + 136), qword_2800EC7E0);
  v4 = *(v2 + 16);
  v5 = OUTLINED_FUNCTION_6_0();
  v4(v5);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    _os_log_impl(&dword_266E51000, v6, v7, "IdentifyUserFlowStrategy.makeIntentFromParse() called", v8, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 96);

  v13 = *(v11 + 8);
  v13(v9, v10);
  sub_266E7B898(v12, v0 + 56);
  v14 = *(v0 + 136);
  if (!*(v0 + 80))
  {
    v86 = v13;
    v36 = *(v0 + 152);
    v37 = *(v0 + 128);
    v38 = *(v0 + 104);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);
    sub_266E59548(v0 + 56);
    v41 = OUTLINED_FUNCTION_6_0();
    v4(v41);
    v42 = *(v39 + 16);
    v42(v37, v40, v38);
    v43 = sub_266E9CF84();
    v44 = sub_266E9D1A4();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v49 = *(v0 + 128);
    v48 = *(v0 + 136);
    if (v45)
    {
      v84 = *(v0 + 144);
      v85 = *(v0 + 136);
      v50 = *(v0 + 112);
      v51 = *(v0 + 120);
      v52 = *(v0 + 104);
      v83 = *(v0 + 152);
      v53 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v87 = v82;
      *v53 = 136315138;
      v42(v51, v49, v52);
      v54 = sub_266E9D034();
      v55 = v44;
      v57 = v56;
      (*(v50 + 8))(v49, v52);
      v58 = sub_266E6E7D4(v54, v57, &v87);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_266E51000, v43, v55, "Unable to make intent from parse %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v59 = v83;
      v60 = v85;
    }

    else
    {
      v70 = *(v0 + 104);
      v69 = *(v0 + 112);

      (*(v69 + 8))(v49, v70);
      v59 = v46;
      v60 = v48;
    }

    v86(v59, v60);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v71 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_12();
    sub_266E8198C(v72, 255, v73);
    swift_allocError();
    *v74 = v71;
    swift_willThrow();
LABEL_19:
    v76 = *(v0 + 168);
    v75 = *(v0 + 176);
    v78 = *(v0 + 152);
    v77 = *(v0 + 160);
    v80 = *(v0 + 120);
    v79 = *(v0 + 128);

    v81 = *(v0 + 8);

    return v81();
  }

  v15 = *(v0 + 168);
  sub_266E595F8((v0 + 56), v0 + 16);
  type metadata accessor for UserIdentifyIntent();
  v16 = sub_266E68014((v0 + 16));
  (v4)(v15, v3, v14);
  v17 = sub_266E9CF84();
  v18 = sub_266E9D194();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_5_0();
    *v19 = 0;
    _os_log_impl(&dword_266E51000, v17, v18, "Finished creating intent from parse", v19, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v20 = *(v0 + 168);
  v21 = *(v0 + 136);
  v22 = *(v0 + 144);

  v13(v20, v21);
  if ([v16 caseType] == 4)
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 136);
    v25 = OUTLINED_FUNCTION_6_0();
    v4(v25);
    v26 = sub_266E9CF84();
    v27 = sub_266E9D1A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_5_0();
      *v28 = 0;
      _os_log_impl(&dword_266E51000, v26, v27, "Unsupported Intent Case Type", v28, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);

    v13(v29, v30);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v32 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_12();
    sub_266E8198C(v33, 255, v34);
    swift_allocError();
    *v35 = v32;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_19;
  }

  v62 = *(v0 + 168);
  v61 = *(v0 + 176);
  v64 = *(v0 + 152);
  v63 = *(v0 + 160);
  v66 = *(v0 + 120);
  v65 = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v67 = *(v0 + 8);

  return v67(v16);
}

uint64_t sub_266E8135C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E58A70;

  return sub_266E80B9C(a1);
}

uint64_t sub_266E813F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for IdentifyUserFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266E8143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for IdentifyUserFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E59610;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_266E81508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for IdentifyUserFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E59610;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_266E815D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for IdentifyUserFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E59610;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_266E816A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for IdentifyUserFlowStrategy();
  *v13 = v6;
  v13[1] = sub_266E59244;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266E8177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for IdentifyUserFlowStrategy();
  *v13 = v6;
  v13[1] = sub_266E59610;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266E81858(uint64_t a1, void *a2)
{
  v3 = sub_266E807B4(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_266E8198C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_266E819EC()
{
  type metadata accessor for BaseDialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2800E9760 = result;
  return result;
}

uint64_t sub_266E81A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[6] = a4;
  v5[7] = v6;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = sub_266E9CFA4();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E81B38, 0, 0);
}

uint64_t sub_266E81B38()
{
  v28 = v0;
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_266E9CF84();
  v8 = sub_266E9D194();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v14 = v0[4];
    v13 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_266E6E7D4(v14, v13, &v27);
    _os_log_impl(&dword_266E51000, v7, v8, "SiriIdentity CAT: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[14] = v17;
  v18 = v0[7];
  v19 = v0[4];
  v20 = swift_task_alloc();
  v0[15] = v20;
  v21 = *(v0 + 5);
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 40) = v18;
  v22 = *(MEMORY[0x277D85A40] + 4);
  v23 = swift_task_alloc();
  v0[16] = v23;
  v24 = sub_266E9C5D4();
  *v23 = v0;
  v23[1] = sub_266E81DAC;
  v25 = v0[3];

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000016, 0x8000000266EA2B30, sub_266E8257C, v20, v24);
}

uint64_t sub_266E81DAC()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266E81F00, 0, 0);
  }

  else
  {
    v4 = v3[15];
    v5 = v3[10];
    v6 = v3[11];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_266E81F00()
{
  v33 = v0;
  v1 = v0[15];

  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[8];
  v7 = __swift_project_value_buffer(v6, qword_2800EC7C8);
  v4(v5, v7, v6);
  v8 = v2;
  v9 = sub_266E9CF84();
  v10 = sub_266E9D1A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[17];
    v31 = v0[14];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    v0[2] = v11;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
    v18 = sub_266E9D034();
    v20 = sub_266E6E7D4(v18, v19, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_266E51000, v9, v10, "Error while executing dialog: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    v31(v12, v14);
  }

  else
  {
    v21 = v0[14];
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];

    v21(v22, v24);
  }

  v25 = v0[17];
  v26 = v0[10];
  v27 = v0[11];
  swift_willThrow();

  v28 = v0[1];
  v29 = v0[17];

  return v28();
}

uint64_t sub_266E82144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v22 = sub_266E9CDA4();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_266E9CD74();
  if (qword_2800E8D70 != -1)
  {
    swift_once();
  }

  sub_266E9CD54();
  v13 = sub_266E9CD44();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  (*(v9 + 16))(v12, v18, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  sub_266E9CD94();
  sub_266E9CD64();

  (*(v4 + 8))(v7, v22);
  return sub_266E82698(v23);
}

uint64_t sub_266E823C0(uint64_t a1)
{
  v2 = sub_266E9C5D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9778, &qword_266EA0448);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v12 - v9);
  sub_266E82700(a1, v12 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
    return sub_266E9D144();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
    return sub_266E9D154();
  }
}

uint64_t sub_266E82588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266E8261C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438) - 8) + 80);

  return sub_266E823C0(a1);
}

uint64_t sub_266E82698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9770, &qword_266EA0440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E82700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9778, &qword_266EA0448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E82770(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  sub_266E846B4(a1, v7);
  v5 = sub_266E8493C(v4, v7, a2);
  sub_266E54DA8(a1, &qword_2800E93F0, &qword_266E9F028);
  return v5;
}

uint64_t sub_266E827F8()
{
  OUTLINED_FUNCTION_7_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266E9C5D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_266E9CFA4();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[15] = v9;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266E82948()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[15];
  v1 = v0[16];
  __swift_project_value_buffer(v0[14], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_21_3(&dword_266E51000, v8, v9, "IdentifyUserUnsupportedValueFlowStrategy.makeUnsupportedValueOutput");
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[3];

  (*(v11 + 8))(v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9780, &qword_266EA0530);
  v14 = sub_266E9C714();
  v15 = [v14 unsupportedReason];

  v16 = UserIdentifyIdentityUnsupportedReason.init(rawValue:)(v15);
  if ((v17 & 1) == 0)
  {
    switch(v16)
    {
      case 2:
        v30 = *OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_9_4(&dword_266EA1210);
        OUTLINED_FUNCTION_20();
        v0[27] = v31;
        *v31 = v32;
        v31[1] = sub_266E83964;
        v33 = v0[8];
        goto LABEL_24;
      case 3:
        v50 = v0[4];
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[29] = v51;
        *v51 = v52;
        v51[1] = sub_266E83BBC;
        v53 = v0[7];
        OUTLINED_FUNCTION_21();

        return sub_266E6738C(v54);
      case 4:
        v38 = *__swift_project_boxed_opaque_existential_0((v0[4] + 16), *(v0[4] + 40));
        OUTLINED_FUNCTION_9_4(&dword_266EA1210);
        OUTLINED_FUNCTION_20();
        v0[23] = v39;
        *v39 = v40;
        v39[1] = sub_266E834AC;
        v41 = v0[10];
        goto LABEL_24;
      case 5:
        v42 = *(v0[4] + 104);
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[19] = v43;
        *v43 = v44;
        v43[1] = sub_266E83140;
        v45 = v0[12];
        OUTLINED_FUNCTION_21();

        return sub_266E67264(v46, v47);
      case 6:
        v34 = *OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_9_4(&dword_266EA1210);
        OUTLINED_FUNCTION_20();
        v0[25] = v35;
        *v35 = v36;
        v35[1] = sub_266E83704;
        v37 = v0[9];
        goto LABEL_24;
      case 7:
        v56 = *(v0[4] + 104);
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[21] = v57;
        *v57 = v58;
        v57[1] = sub_266E832F4;
        v59 = v0[11];
        OUTLINED_FUNCTION_21();

        return sub_266E6713C(v60, v61);
      case 8:
        v63 = *OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_9_4(&dword_266EA1210);
        OUTLINED_FUNCTION_20();
        v0[17] = v64;
        *v64 = v65;
        v64[1] = sub_266E82EE4;
        v66 = v0[13];
LABEL_24:
        OUTLINED_FUNCTION_21();

        __asm { BR              X3 }

        return result;
      default:
        break;
    }
  }

  type metadata accessor for IdentityFlowError();
  swift_allocObject();
  v18 = sub_266E89698(3);
  sub_266E8465C();
  swift_allocError();
  *v19 = v18;
  swift_willThrow();
  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v26 = v0[8];
  v25 = v0[9];
  v27 = v0[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_266E82EE4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E82FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[13];
  OUTLINED_FUNCTION_18_5();
  v13 = v10[12];
  v12 = v10[13];
  v14 = v10[16];
  v16 = v10[10];
  v15 = v10[11];
  OUTLINED_FUNCTION_2_7();
  v17(v12);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_266E8309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[18];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83140()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E83238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v12 = *(v11 + 96);
  OUTLINED_FUNCTION_18_5();
  v13 = *(v11 + 128);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_6();
  v14(v10);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_266E832F4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E833EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[11];
  OUTLINED_FUNCTION_18_5();
  v12 = v10[16];
  v14 = v10[12];
  v13 = v10[13];
  v16 = v10[10];
  v15 = v10[11];
  OUTLINED_FUNCTION_2_7();
  v17(v15);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_266E834AC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E835A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v12 = *(v10 + 80);
  OUTLINED_FUNCTION_18_5();
  v13 = *(v10 + 128);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_6();
  v14(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_266E83660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[24];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83704()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E837FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[9];
  OUTLINED_FUNCTION_18_5();
  v12 = v10[16];
  v14 = v10[12];
  v13 = v10[13];
  v16 = v10[10];
  v15 = v10[11];
  v18 = v10[8];
  v17 = v10[9];
  OUTLINED_FUNCTION_5_6();
  v19(v17);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_266E838C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[26];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83964()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E83A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v12 = *(v10 + 64);
  OUTLINED_FUNCTION_18_5();
  v13 = *(v10 + 128);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_6();
  v14(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_266E83B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[28];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83BBC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E83CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[7];
  OUTLINED_FUNCTION_18_5();
  v12 = v10[16];
  v14 = v10[12];
  v13 = v10[13];
  v16 = v10[10];
  v15 = v10[11];
  v18 = v10[8];
  v17 = v10[9];
  (*(v10[6] + 8))(v10[7], v10[5]);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_266E83D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[20];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[22];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  v11 = v10[30];
  v12 = v10[16];
  OUTLINED_FUNCTION_0_13();
  v13 = v10[7];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266E83F6C()
{
  OUTLINED_FUNCTION_7_0();
  v0[2] = v1;
  v2 = sub_266E9CFA4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E8401C()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[4];
  v1 = v0[5];
  __swift_project_value_buffer(v0[3], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_21_3(&dword_266E51000, v8, v9, "IdentifyUserUnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue");
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  (*(v11 + 8))(v10, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9780, &qword_266EA0530);
  v14 = sub_266E9C704();

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_266E84174@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  v7 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  sub_266E9C2B4();
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = sub_266E9C834();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v10 = MEMORY[0x277D5C1D8];
  a1[3] = v9;
  a1[4] = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  sub_266E9C4A4();
  sub_266E54DA8(v12, &qword_2800E94D0, &unk_266E9F5C0);
  return sub_266E54DA8(v6, &qword_2800E94C0, &unk_266E9EFC0);
}

uint64_t sub_266E842E0()
{
  sub_266E5D044(v0 + 16);
  v1 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  return v0;
}

uint64_t sub_266E84310()
{
  sub_266E842E0();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_266E84368()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E5C6A4;

  return sub_266E827F8();
}

uint64_t sub_266E84414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E844A8;

  return sub_266E83F6C();
}

uint64_t sub_266E844A8()
{
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_266E84598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_266E765F8;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

unint64_t sub_266E8465C()
{
  result = qword_2800E94F0;
  if (!qword_2800E94F0)
  {
    type metadata accessor for IdentityFlowError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E94F0);
  }

  return result;
}

uint64_t sub_266E846B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93F0, &qword_266E9F028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E84724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = type metadata accessor for BaseDialogProvider();
  v17[4] = &off_287876528;
  v17[0] = a1;
  sub_266E5CE50(v17, &v14);
  sub_266E846B4(a2, v13);
  sub_266E5CE50(&v14, __src);
  sub_266E846B4(v13, &v10);
  if (v11)
  {
    sub_266E54DA8(v13, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(&v14);
    sub_266E5D10C(&v10, v12);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E54DA8(v13, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(&v14);
    if (v11)
    {
      sub_266E54DA8(&v10, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(v12, &__src[40]);
  sub_266E5CE50(&__src[40], v12);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_266E5D10C(v12, v8 + 16);
  *&__src[80] = v8;
  memcpy((a4 + 16), __src, 0x58uLL);
  if (!a3)
  {
    sub_266E9CCF4();
    a3 = sub_266E79A78();
  }

  *(a4 + 104) = a3;
  sub_266E846B4(a2, &v14);
  if (v15)
  {
    sub_266E54DA8(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_266E5D10C(&v14, __src);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E54DA8(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(v17);
    if (v15)
    {
      sub_266E54DA8(&v14, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(__src, a4 + 112);
  return a4;
}

uint64_t sub_266E8493C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BaseDialogProvider();
  v16[3] = v6;
  v16[4] = &off_287876528;
  v16[0] = a1;
  type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_266E84724(*v11, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

void OUTLINED_FUNCTION_0_13()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
}

void OUTLINED_FUNCTION_2_7()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = *(v0[6] + 8);
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_5_6()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v0[6] + 8);
}

uint64_t OUTLINED_FUNCTION_9_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_266E84174(v3);
}

void *OUTLINED_FUNCTION_19_3()
{
  v2 = *(v0 + 32);
  v3 = *(v2 + 40);

  return __swift_project_boxed_opaque_existential_0((v2 + 16), v3);
}

void OUTLINED_FUNCTION_21_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

_OWORD *sub_266E84B4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9788, &qword_266EA0538);
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v50 - v10;
  v12 = sub_266E9CFA4();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v50 - v21;
  v22 = *a1;
  v23 = sub_266E9CA94();
  if (v2)
  {
    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_1_6();
    }

    v24 = __swift_project_value_buffer(v12, qword_2800EC7F8);
    (*(v15 + 16))(v20, v24, v12);
    v25 = v2;
    v26 = sub_266E9CF84();
    v27 = sub_266E9D1A4();

    v55 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52 = v28;
      v29 = swift_slowAlloc();
      v54 = v4;
      v53 = v29;
      v60[0] = v29;
      *v28 = 136315138;
      *&v58 = v2;
      v30 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
      v31 = sub_266E9D034();
      v51 = v26;
      v33 = v7;
      v34 = sub_266E6E7D4(v31, v32, v60);

      v35 = v52;
      *(v52 + 1) = v34;
      v7 = v33;
      v36 = v51;
      _os_log_impl(&dword_266E51000, v51, v55, "failed generating verb -- User Dialog Act to tasks: %s", v35, 0xCu);
      v37 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      v38 = v37;
      v4 = v54;
      MEMORY[0x26D5F66A0](v38, -1, -1);
      MEMORY[0x26D5F66A0](v35, -1, -1);
    }

    else
    {
    }

    (*(v15 + 8))(v20, v12);
    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v39 = v23;
  }

  if (sub_266E8B274(v39))
  {
    sub_266E8B278(0, (v39 & 0xC000000000000001) == 0, v39);
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x26D5F5ED0](0, v39);
    }

    else
    {
      v40 = *(v39 + 32);
    }

    sub_266E9CC64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
    sub_266E9CD04();
    v41 = sub_266E9CD14();
    (*(v7 + 8))(v11, v4);
    v60[0] = v40;
    v41(v60);
  }

  else
  {

    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_1_6();
    }

    v43 = __swift_project_value_buffer(v12, qword_2800EC7F8);
    v44 = v56;
    (*(v15 + 16))(v56, v43, v12);
    v45 = sub_266E9CF84();
    v46 = sub_266E9D1A4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_266E51000, v45, v46, "did not get USOTask. Bailing", v47, 2u);
      MEMORY[0x26D5F66A0](v47, -1, -1);
    }

    (*(v15 + 8))(v44, v12);
    v58 = 0uLL;
    *v59 = 3;
    memset(&v59[8], 0, 32);
    v59[40] = 3;
    v60[0] = 0;
    v60[1] = 0;
    v61 = 3;
    v62 = 0u;
    v63 = 0u;
    v64 = 3;
    sub_266E869A0(&v58, v57);
    sub_266E869FC(v60);
    v48 = v65;
    v65[3] = &type metadata for IdentityNLv4Intent;
    v48[4] = &off_2878766D0;
    result = swift_allocObject();
    *v48 = result;
    v49 = *v59;
    result[1] = v58;
    result[2] = v49;
    result[3] = *&v59[16];
    *(result + 57) = *&v59[25];
  }

  return result;
}

_OWORD *sub_266E85108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v170 = a2;
  v3 = sub_266E9CFA4();
  v168 = *(v3 - 8);
  v169 = v3;
  v4 = *(v168 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v153 = &v150 - v8;
  v163 = sub_266E9CAB4();
  v152 = *(v163 - 8);
  v9 = *(v152 + 64);
  MEMORY[0x28223BE20](v163);
  v162 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_266E9CA14();
  v164 = *(v167 - 8);
  v11 = *(v164 + 64);
  v12 = MEMORY[0x28223BE20](v167);
  v166 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v150 = &v150 - v15;
  MEMORY[0x28223BE20](v14);
  v151 = &v150 - v16;
  v161 = sub_266E9CAF4();
  v165 = *(v161 - 8);
  v17 = *(v165 + 64);
  MEMORY[0x28223BE20](v161);
  v158 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9790, &qword_266EA0540);
  v19 = *(*(v160 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v160);
  v155 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v150 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9798, qword_266EA0548);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v154 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v156 = &v150 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v157 = &v150 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v150 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v150 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v150 - v38;
  v40 = sub_266E9CB24();
  v159 = *(v40 - 8);
  v41 = *(v159 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v150 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  sub_266E9CB34();
  if (!v184)
  {
    goto LABEL_37;
  }

  sub_266E60D4C(v183, v173, &qword_2800E9278, &qword_266E9F5F0);
  sub_266E9CBE4();
  if (swift_dynamicCast())
  {

    sub_266E9CBC4();
    if (v177)
    {
      v45 = sub_266E9CB04();
      v47 = v46;

      if (v47)
      {
        sub_266E9CBC4();

        v48 = v177;
        v168 = v45;
        v169 = v177;
        v167 = v47;
        if (!v177)
        {
          v54 = 0;
LABEL_47:
          v166 = 0;
LABEL_48:
          v96 = v159;
          (*(v159 + 104))(v43, *MEMORY[0x277D5E868], v40);
          v97 = sub_266E9CB14();
          v99 = v98;
          (*(v96 + 8))(v43, v40);
          if (!v48)
          {

            v102 = 0;
            v103 = 0;
LABEL_61:
            v175 = 0uLL;
            *v176 = 3;
            *&v176[8] = v168;
            *&v176[16] = v167;
            *&v176[24] = v102;
            *&v176[32] = v103;
            v176[40] = 0;
            v177 = 0;
            v178 = 0;
            v179 = 3;
            *&v180 = v168;
            *(&v180 + 1) = v167;
            *&v181 = v102;
            *(&v181 + 1) = v103;
            v182 = 0;
            sub_266E869A0(&v175, v174);
            sub_266E869FC(&v177);
            v106 = v170;
            v170[3] = &type metadata for IdentityNLv4Intent;
            v106[4] = &off_2878766D0;
            v93 = swift_allocObject();
            *v106 = v93;

LABEL_62:

            v107 = *v176;
            v93[1] = v175;
            v93[2] = v107;
            v93[3] = *&v176[16];
            v95 = *&v176[25];
            goto LABEL_99;
          }

          if (v54 == v97 && v48 == v99)
          {

            if (!v166)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v101 = sub_266E9D3E4();

            v102 = 0;
            if ((v101 & 1) == 0)
            {
              v103 = 0;
              goto LABEL_61;
            }

            v103 = 0;
            if (!v166)
            {
              goto LABEL_61;
            }
          }

          v104 = sub_266E9C9D4();

          if (v104)
          {
            v102 = sub_266E9CC84();
            v103 = v105;

            goto LABEL_61;
          }

LABEL_60:
          v102 = 0;
          v103 = 0;
          goto LABEL_61;
        }

        sub_266E9C9C4();

        v49 = sub_266E9CCA4();

        v50 = sub_266E98240(1701667182, 0xE400000000000000, v49);

        if (!v50)
        {
          goto LABEL_46;
        }

        v51 = sub_266E8B274(v50);
        if ((v51 & 0x8000000000000000) == 0)
        {
          if (v51 > 1)
          {
            sub_266E8B278(1, (v50 & 0xC000000000000001) == 0, v50);
            if ((v50 & 0xC000000000000001) == 0)
            {
              v52 = *(v50 + 40);

              goto LABEL_11;
            }

LABEL_104:
            MEMORY[0x26D5F5ED0](1, v50);
LABEL_11:

            v53 = sub_266E9CC94();

            if (v53)
            {

              v54 = sub_266E9C9E4();
              v48 = v55;
              v166 = v53;

              goto LABEL_48;
            }

            goto LABEL_46;
          }

LABEL_46:
          v54 = 0;
          v48 = 0;
          goto LABEL_47;
        }

LABEL_103:
        __break(1u);
        goto LABEL_104;
      }
    }

LABEL_34:
    __swift_destroy_boxed_opaque_existential_0(v173);
    sub_266E54DA8(v183, &qword_2800E9278, &qword_266E9F5F0);
    v175 = 0uLL;
    *v176 = 3;
    memset(&v176[8], 0, 32);
    v176[40] = 3;
    v177 = 0;
    v178 = 0;
    v179 = 3;
    v180 = 0u;
    v181 = 0u;
    v182 = 3;
    sub_266E869A0(&v175, v174);
    sub_266E869FC(&v177);
    v76 = v170;
    v170[3] = &type metadata for IdentityNLv4Intent;
    v76[4] = &off_2878766D0;
    result = swift_allocObject();
    *v76 = result;
    v78 = *v176;
    result[1] = v175;
    result[2] = v78;
    result[3] = *&v176[16];
    *(result + 57) = *&v176[25];
    return result;
  }

  sub_266E9CC34();
  v56 = swift_dynamicCast();
  v57 = MEMORY[0x277D5E828];
  if (v56)
  {
    v58 = v172;

    sub_266E9CB44();
    v169 = v58;

    if (v177)
    {
      sub_266E9CAE4();

      v59 = v161;
    }

    else
    {
      v59 = v161;
      __swift_storeEnumTagSinglePayload(v39, 1, 1, v161);
    }

    (*(v165 + 104))(v37, *v57, v59);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v59);
    v75 = *(v160 + 48);
    sub_266E60D4C(v39, v23, &qword_2800E9798, qword_266EA0548);
    sub_266E60D4C(v37, &v23[v75], &qword_2800E9798, qword_266EA0548);
    if (__swift_getEnumTagSinglePayload(v23, 1, v59) == 1)
    {
      sub_266E54DA8(v37, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v39, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(&v23[v75], 1, v59) == 1)
      {
        sub_266E54DA8(v23, &qword_2800E9798, qword_266EA0548);
LABEL_43:
        v175 = 0uLL;
        *v176 = 3;
        memset(&v176[8], 0, 32);
        v176[40] = 1;
        v177 = 0;
        v178 = 0;
        v179 = 3;
        v180 = 0u;
        v181 = 0u;
        v182 = 1;
        sub_266E869A0(&v175, v174);
        sub_266E869FC(&v177);
        v92 = v170;
        v170[3] = &type metadata for IdentityNLv4Intent;
        v92[4] = &off_2878766D0;
        v93 = swift_allocObject();
        *v92 = v93;
LABEL_44:

        v94 = *v176;
        v93[1] = v175;
        v93[2] = v94;
        v93[3] = *&v176[16];
        v95 = *&v176[25];
LABEL_99:
        *(v93 + 57) = v95;
        goto LABEL_100;
      }
    }

    else
    {
      sub_266E60D4C(v23, v34, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(&v23[v75], 1, v59) != 1)
      {
        v88 = v165;
        v89 = &v23[v75];
        v90 = v158;
        (*(v165 + 32))(v158, v89, v59);
        sub_266E86A98();
        LODWORD(v168) = sub_266E9D004();
        v91 = *(v88 + 8);
        v91(v90, v59);
        sub_266E54DA8(v37, &qword_2800E9798, qword_266EA0548);
        sub_266E54DA8(v39, &qword_2800E9798, qword_266EA0548);
        v91(v34, v59);
        sub_266E54DA8(v23, &qword_2800E9798, qword_266EA0548);
        if (v168)
        {
          goto LABEL_43;
        }

LABEL_33:

        goto LABEL_34;
      }

      sub_266E54DA8(v37, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v39, &qword_2800E9798, qword_266EA0548);
      (*(v165 + 8))(v34, v59);
    }

    sub_266E54DA8(v23, &qword_2800E9790, &qword_266EA0540);
    goto LABEL_33;
  }

  sub_266E9CBD4();
  if (swift_dynamicCast())
  {
    v60 = v172;

    sub_266E9CB44();

    v61 = v177;
    if (!v177)
    {
      goto LABEL_98;
    }

    v62 = sub_266E9CB64();
    v153 = v61;
    if (!v62)
    {
LABEL_67:
      v50 = v61;
      v109 = sub_266E9CA64();
      if (v109)
      {
        v157 = v60;
        v169 = *(v109 + 16);
        if (v169)
        {
          v40 = 0;
          v165 = v109 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
          v161 = v164 + 16;
          LODWORD(v160) = *MEMORY[0x277D5E6E0];
          v158 = (v152 + 8);
          v159 = v152 + 104;
          v168 = v164 + 8;
          while (v40 < *(v109 + 16))
          {
            v110 = v109;
            (*(v164 + 16))(v166, v165 + *(v164 + 72) * v40, v167);
            v111 = sub_266E9CA04();
            v113 = v112;
            v50 = v162;
            v43 = v163;
            (*v159)(v162, v160, v163);
            v114 = sub_266E9CAA4();
            v116 = v115;
            (*v158)(v50, v43);
            if (v113)
            {
              if (v111 == v114 && v113 == v116)
              {

LABEL_95:

                v139 = v164 + 32;
                v138 = *(v164 + 32);
                v140 = v150;
                v141 = v167;
                v138(v150, v166, v167);
                v142 = v151;
                v138(v151, v140, v141);
                v143 = sub_266E9C9F4();
                v175 = 0uLL;
                *v176 = 3;
                *&v176[8] = v143;
                *&v176[16] = v144;
                *&v176[32] = 0;
                v176[40] = 2;
                v177 = 0;
                v178 = 0;
                v179 = 3;
                *&v180 = v143;
                *(&v180 + 1) = v144;
                v181 = 0uLL;
                v182 = 2;
                sub_266E869A0(&v175, v174);
                sub_266E869FC(&v177);
                v145 = v170;
                v170[3] = &type metadata for IdentityNLv4Intent;
                v145[4] = &off_2878766D0;
                v146 = swift_allocObject();
                *v145 = v146;

                v147 = *v176;
                v146[1] = v175;
                v146[2] = v147;
                v146[3] = *&v176[16];
                *(v146 + 57) = *&v176[25];
                (*(v139 - 24))(v142, v141);
                goto LABEL_100;
              }

              v118 = sub_266E9D3E4();

              if (v118)
              {
                goto LABEL_95;
              }
            }

            else
            {
            }

            ++v40;
            (*v168)(v166, v167);
            v109 = v110;
            if (v169 == v40)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
          goto LABEL_103;
        }

LABEL_80:
      }

      v119 = sub_266E9CB54();
      if (v120)
      {
        v175 = 0uLL;
        *v176 = 3;
        *&v176[8] = v119;
        *&v176[16] = v120;
        *&v176[32] = 0;
        v176[40] = 2;
        v177 = 0;
        v178 = 0;
        v179 = 3;
        *&v180 = v119;
        *(&v180 + 1) = v120;
        v181 = 0uLL;
        v182 = 2;
        sub_266E869A0(&v175, v174);
        sub_266E869FC(&v177);
        v121 = v170;
        v170[3] = &type metadata for IdentityNLv4Intent;
        v121[4] = &off_2878766D0;
        v93 = swift_allocObject();
        *v121 = v93;
        goto LABEL_62;
      }

      if (sub_266E9CB64())
      {
        v128 = sub_266E9CB04();
        if (v129)
        {
          v175 = 0uLL;
          *v176 = 3;
          *&v176[8] = v128;
          *&v176[16] = v129;
          *&v176[32] = 0;
          v176[40] = 2;
          v177 = 0;
          v178 = 0;
          v179 = 3;
          *&v180 = v128;
          *(&v180 + 1) = v129;
          v181 = 0uLL;
          v182 = 2;
          sub_266E869A0(&v175, v174);
          sub_266E869FC(&v177);
          v130 = v170;
          v170[3] = &type metadata for IdentityNLv4Intent;
          v130[4] = &off_2878766D0;
          v131 = swift_allocObject();
          *v130 = v131;

          v132 = *v176;
          v131[1] = v175;
          v131[2] = v132;
          v131[3] = *&v176[16];
          *(v131 + 57) = *&v176[25];
          goto LABEL_100;
        }
      }

LABEL_98:
      v175 = 0uLL;
      *v176 = 3;
      memset(&v176[8], 0, 32);
      v176[40] = 2;
      v177 = 0;
      v178 = 0;
      v179 = 3;
      v180 = 0u;
      v181 = 0u;
      v182 = 2;
      sub_266E869A0(&v175, v174);
      sub_266E869FC(&v177);
      v148 = v170;
      v170[3] = &type metadata for IdentityNLv4Intent;
      v148[4] = &off_2878766D0;
      v93 = swift_allocObject();
      *v148 = v93;

      v149 = *v176;
      v93[1] = v175;
      v93[2] = v149;
      v93[3] = *&v176[16];
      v95 = *&v176[25];
      goto LABEL_99;
    }

    v43 = v157;
    v169 = v62;
    sub_266E9CAE4();
    v63 = *v57;
    v64 = v156;
    v65 = v161;
    (*(v165 + 104))(v156, v63, v161);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    v66 = *(v160 + 48);
    v67 = v155;
    sub_266E60D4C(v43, v155, &qword_2800E9798, qword_266EA0548);
    sub_266E60D4C(v64, v67 + v66, &qword_2800E9798, qword_266EA0548);
    if (__swift_getEnumTagSinglePayload(v67, 1, v65) == 1)
    {
      sub_266E54DA8(v64, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v43, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v65) == 1)
      {
        sub_266E54DA8(v67, &qword_2800E9798, qword_266EA0548);
LABEL_93:
        v175 = 0uLL;
        *v176 = 259;
        memset(&v176[8], 0, 32);
        v176[40] = 2;
        v177 = 0;
        v178 = 0;
        v179 = 259;
        v180 = 0u;
        v181 = 0u;
        v182 = 2;
        sub_266E869A0(&v175, v174);
        sub_266E869FC(&v177);
        v137 = v170;
        v170[3] = &type metadata for IdentityNLv4Intent;
        v137[4] = &off_2878766D0;
        v93 = swift_allocObject();
        *v137 = v93;

        goto LABEL_44;
      }
    }

    else
    {
      v108 = v154;
      sub_266E60D4C(v67, v154, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(v67 + v66, 1, v65) != 1)
      {
        v133 = v165;
        v134 = v67 + v66;
        v135 = v158;
        (*(v165 + 32))(v158, v134, v65);
        sub_266E86A98();
        v43 = sub_266E9D004();
        v136 = *(v133 + 8);
        v136(v135, v65);
        sub_266E54DA8(v156, &qword_2800E9798, qword_266EA0548);
        sub_266E54DA8(v157, &qword_2800E9798, qword_266EA0548);
        v136(v108, v65);
        sub_266E54DA8(v155, &qword_2800E9798, qword_266EA0548);
        if (v43)
        {
          goto LABEL_93;
        }

        goto LABEL_66;
      }

      sub_266E54DA8(v156, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v157, &qword_2800E9798, qword_266EA0548);
      (*(v165 + 8))(v108, v65);
    }

    sub_266E54DA8(v67, &qword_2800E9790, &qword_266EA0540);
LABEL_66:

    v61 = v153;
    goto LABEL_67;
  }

  sub_266E9CB74();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v173);
LABEL_37:
    if (qword_2800E8D88 != -1)
    {
      swift_once();
    }

    v79 = v169;
    v80 = __swift_project_value_buffer(v169, qword_2800EC7F8);
    v81 = v168;
    (*(v168 + 16))(v7, v80, v79);
    v82 = sub_266E9CF84();
    v83 = sub_266E9D184();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_266E51000, v82, v83, "#Transformer did not have a valid task. Returning Empty Intent", v84, 2u);
      MEMORY[0x26D5F66A0](v84, -1, -1);
    }

    (*(v81 + 8))(v7, v79);
    v175 = 0uLL;
    *v176 = 3;
    memset(&v176[8], 0, 32);
    v176[40] = 3;
    v177 = 0;
    v178 = 0;
    v179 = 3;
    v180 = 0u;
    v181 = 0u;
    v182 = 3;
    sub_266E869A0(&v175, v174);
    sub_266E869FC(&v177);
    v85 = v170;
    v170[3] = &type metadata for IdentityNLv4Intent;
    v85[4] = &off_2878766D0;
    v86 = swift_allocObject();
    *v85 = v86;
    v87 = *v176;
    v86[1] = v175;
    v86[2] = v87;
    v86[3] = *&v176[16];
    *(v86 + 57) = *&v176[25];
    return sub_266E54DA8(v183, &qword_2800E9278, &qword_266E9F5F0);
  }

  sub_266E9C974();

  v69 = v168;
  v68 = v169;
  if (!v171)
  {
    if (qword_2800E8D88 != -1)
    {
      swift_once();
    }

    v122 = __swift_project_value_buffer(v68, qword_2800EC7F8);
    v123 = v153;
    (*(v69 + 16))(v153, v122, v68);
    v124 = sub_266E9CF84();
    v125 = sub_266E9D184();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_266E51000, v124, v125, "#Transformer found a noVerb task with no entity. Returning Empty Intent", v126, 2u);
      MEMORY[0x26D5F66A0](v126, -1, -1);
    }

    (*(v69 + 8))(v123, v68);
    v175 = 0uLL;
    *v176 = 3;
    memset(&v176[8], 0, 32);
    v176[40] = 3;
    v177 = 0;
    v178 = 0;
    v179 = 3;
    v180 = 0u;
    v181 = 0u;
    v182 = 3;
    sub_266E869A0(&v175, v174);
    sub_266E869FC(&v177);
    v127 = v170;
    v170[3] = &type metadata for IdentityNLv4Intent;
    v127[4] = &off_2878766D0;
    v93 = swift_allocObject();
    *v127 = v93;
    goto LABEL_44;
  }

  v70 = sub_266E9CB04();
  v175 = 0uLL;
  *v176 = 3;
  *&v176[8] = v70;
  *&v176[16] = v71;
  *&v176[32] = 0;
  v176[40] = 2;
  v177 = 0;
  v178 = 0;
  v179 = 3;
  *&v180 = v70;
  *(&v180 + 1) = v71;
  v181 = 0uLL;
  v182 = 2;
  sub_266E869A0(&v175, v174);
  sub_266E869FC(&v177);
  v72 = v170;
  v170[3] = &type metadata for IdentityNLv4Intent;
  v72[4] = &off_2878766D0;
  v73 = swift_allocObject();
  *v72 = v73;

  v74 = *v176;
  v73[1] = v175;
  v73[2] = v74;
  v73[3] = *&v176[16];
  *(v73 + 57) = *&v176[25];
LABEL_100:
  __swift_destroy_boxed_opaque_existential_0(v173);
  return sub_266E54DA8(v183, &qword_2800E9278, &qword_266E9F5F0);
}

unsigned __int8 *sub_266E8697C@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 3;
  if (v2 != 1)
  {
    v3 = 4;
  }

  v4 = v2 == 0;
  v5 = 2;
  if (!v4)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_266E86A50()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

unint64_t sub_266E86A98()
{
  result = qword_2800E97A0;
  if (!qword_2800E97A0)
  {
    sub_266E9CAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97A0);
  }

  return result;
}

uint64_t InProcessHandlingStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 24);

  v8(a2, a3);
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v10 = a1;
  sub_266E9C1C4();
  v11 = sub_266E9C1D4();

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v11);
}

uint64_t sub_266E86BC4()
{
  v0 = sub_266E9CDD4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266E9C3B4();
  v10 = v9;
  sub_266E9CDC4();
  v11 = sub_266E9CDB4();
  v13 = v12;
  (*(v3 + 8))(v7, v0);
  if (v10)
  {
    if (v8 == v11 && v10 == v13)
    {
      v15 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_2_8();
      v15 = sub_266E9D3E4();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_266E86CF0(char a1)
{
  v2 = sub_266E9C434();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v8);
  sub_266E9C444();
  sub_266E9C424();
  v9 = OUTLINED_FUNCTION_7_6();
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_1_13();
  v10(v11);
  v12 = OUTLINED_FUNCTION_25();
  v10(v12);
  if (v9 & 1) != 0 || (sub_266E9C444(), sub_266E9C3F4(), v13 = OUTLINED_FUNCTION_7_6(), v14 = OUTLINED_FUNCTION_1_13(), v10(v14), v15 = OUTLINED_FUNCTION_25(), v10(v15), (v13))
  {
    v16 = 1;
  }

  else
  {
    sub_266E9C444();
    sub_266E9C404();
    v16 = OUTLINED_FUNCTION_7_6();
    v18 = OUTLINED_FUNCTION_1_13();
    v10(v18);
    v19 = OUTLINED_FUNCTION_25();
    v10(v19);
    if (v16 & 1) == 0 && (a1)
    {
      sub_266E9C444();
      sub_266E9C414();
      v16 = OUTLINED_FUNCTION_7_6();
      v20 = OUTLINED_FUNCTION_1_13();
      v10(v20);
      v21 = OUTLINED_FUNCTION_25();
      v10(v21);
    }
  }

  return v16 & 1;
}

uint64_t sub_266E86EB8()
{
  v0 = sub_266E9C434();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_6();
  sub_266E9C424();
  OUTLINED_FUNCTION_2_8();
  v7 = sub_266E9C3E4();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_30();
  v8(v9);
  v10 = OUTLINED_FUNCTION_1_13();
  v8(v10);
  if (v7)
  {
    v11 = 1;
  }

  else
  {
    sub_266E9C444();
    sub_266E9C3F4();
    OUTLINED_FUNCTION_2_8();
    v11 = sub_266E9C3E4();
    v12 = OUTLINED_FUNCTION_30();
    v8(v12);
    v13 = OUTLINED_FUNCTION_1_13();
    v8(v13);
  }

  return v11 & 1;
}

uint64_t sub_266E86FE4()
{
  v0 = sub_266E9C434();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_6();
  sub_266E9C424();
  OUTLINED_FUNCTION_2_8();
  v7 = sub_266E9C3E4();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_30();
  v8(v9);
  v10 = OUTLINED_FUNCTION_1_13();
  v8(v10);
  if (v7)
  {
    goto LABEL_4;
  }

  sub_266E9C444();
  sub_266E9C3F4();
  OUTLINED_FUNCTION_2_8();
  v11 = sub_266E9C3E4();
  v12 = OUTLINED_FUNCTION_30();
  v8(v12);
  v13 = OUTLINED_FUNCTION_1_13();
  v8(v13);
  if (v11)
  {
    goto LABEL_4;
  }

  sub_266E9C444();
  sub_266E9C404();
  OUTLINED_FUNCTION_2_8();
  v14 = sub_266E9C3E4();
  v15 = OUTLINED_FUNCTION_30();
  v8(v15);
  v16 = OUTLINED_FUNCTION_1_13();
  v8(v16);
  if (v14)
  {
LABEL_4:
    v17 = 1;
  }

  else
  {
    sub_266E9C444();
    sub_266E9C414();
    OUTLINED_FUNCTION_2_8();
    v17 = sub_266E9C3E4();
    v19 = OUTLINED_FUNCTION_30();
    v8(v19);
    v20 = OUTLINED_FUNCTION_1_13();
    v8(v20);
  }

  return v17 & 1;
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return sub_266E9C444();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_266E9C3E4();
}

double IdentityFlowProvider.init()@<D0>(uint64_t a1@<X8>)
{
  sub_266E9C7F4();
  sub_266E9C1A4();
  *(a1 + 104) = &type metadata for IdentityFlowFactoryImpl;
  *(a1 + 112) = &off_2878767E8;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 145) = 0u;
  return result;
}

uint64_t IdentityFlowProvider.makeFlow(for:)(uint64_t a1)
{
  v132 = a1;
  v125 = sub_266E9C7D4();
  v1 = OUTLINED_FUNCTION_2_1(v125);
  v123 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v5);
  v121 = v112 - v6;
  v7 = sub_266E9C7E4();
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v133 = v9;
  v134 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v14 = MEMORY[0x28223BE20](v13);
  v126 = v112 - v15;
  MEMORY[0x28223BE20](v14);
  v128 = v112 - v16;
  v135 = sub_266E9CFA4();
  v17 = OUTLINED_FUNCTION_2_1(v135);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v112 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v112 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v112 - v30;
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v135, qword_2800EC7C8);
  v34 = v19 + 16;
  v33 = *(v19 + 16);
  v129 = v32;
  v130 = v33;
  (v33)(v31);
  v35 = sub_266E9CF84();
  v36 = sub_266E9D1B4();
  v37 = os_log_type_enabled(v35, v36);
  v131 = v29;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_266E51000, v35, v36, "Making flow from parse", v38, 2u);
    v34 = v19 + 16;
    v29 = v131;
    OUTLINED_FUNCTION_4_0();
  }

  v41 = *(v19 + 8);
  v40 = v19 + 8;
  v39 = v41;
  v42 = v31;
  v43 = v135;
  v41(v42, v135);
  v130(v29, v129, v43);
  v44 = v133 + 16;
  v45 = *(v133 + 16);
  v46 = v128;
  v45(v128, v132, v134);
  v47 = sub_266E9CF84();
  v48 = sub_266E9D194();
  v49 = os_log_type_enabled(v47, v48);
  v119 = v44;
  v118 = v45;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v122 = v39;
    v51 = v50;
    v52 = swift_slowAlloc();
    v113 = v25;
    v53 = v52;
    v138[0] = v52;
    *v51 = 136315138;
    v112[1] = v34;
    v54 = v134;
    v45(v126, v46, v134);
    v55 = sub_266E9D034();
    v120 = v40;
    v56 = v55;
    v58 = v57;
    v128 = *(v133 + 8);
    (v128)(v46, v54);
    v59 = sub_266E6E7D4(v56, v58, v138);

    *(v51 + 4) = v59;
    v40 = v120;
    _os_log_impl(&dword_266E51000, v47, v48, "Received parse: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v25 = v113;
    OUTLINED_FUNCTION_4_0();
    v39 = v122;
    OUTLINED_FUNCTION_4_0();
  }

  else
  {

    v128 = *(v133 + 8);
    (v128)(v46, v134);
  }

  v39(v131, v135);
  sub_266E7B898(v132, &v136);
  if (v137)
  {
    sub_266E595F8(&v136, v138);
    v60 = v139;
    v61 = v140;
    __swift_project_boxed_opaque_existential_0(v138, v139);
    if ((*(v61 + 48))(v60, v61) || (v84 = v139, v85 = v140, __swift_project_boxed_opaque_existential_0(v138, v139), (*(v85 + 40))(v84, v85), !v86))
    {
LABEL_10:
      v62 = v127;
      v63 = sub_266E87DF0(v138);
      v64 = v63;
      if (*(v62 + 160) == 1 && v63)
      {
        *&v136 = v63;
        sub_266E88804();
        v65 = sub_266E9C134();

        __swift_destroy_boxed_opaque_existential_0(v138);
        return v65;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v138);
      }

      return v64;
    }

    sub_266E9CCF4();
    if (static SiriEnvironment.getUserIdentity()() && (sub_266E9C684() & 1) != 0)
    {

      goto LABEL_10;
    }

    v102 = v114;
    v130(v114, v129, v135);
    v103 = sub_266E9CF84();
    v104 = sub_266E9D194();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_266E51000, v103, v104, "Contacts Reformation flow. Will fall back to server.", v105, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v39(v102, v135);
    __swift_destroy_boxed_opaque_existential_0(v138);
    return 0;
  }

  sub_266E59548(&v136);
  v66 = v124;
  v67 = v134;
  v68 = v118;
  v118(v124, v132, v134);
  if ((*(v133 + 88))(v66, v67) != *MEMORY[0x277D5C150])
  {
    v120 = v40;
    v87 = v117;
    v130(v117, v129, v135);
    v88 = v115;
    v68(v115, v132, v134);
    v89 = sub_266E9CF84();
    v90 = v68;
    v91 = sub_266E9D1A4();
    if (os_log_type_enabled(v89, v91))
    {
      v92 = swift_slowAlloc();
      v93 = v134;
      v94 = v92;
      v95 = swift_slowAlloc();
      v138[0] = v95;
      *v94 = 136315138;
      v90(v126, v88, v93);
      v96 = sub_266E9D034();
      v97 = v39;
      v99 = v98;
      v100 = OUTLINED_FUNCTION_6_7();
      (v128)(v100, v93);
      v101 = sub_266E6E7D4(v96, v99, v138);

      *(v94 + 4) = v101;
      _os_log_impl(&dword_266E51000, v89, v91, "Received unsupported parse: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v97(v117, v135);
    }

    else
    {

      v109 = OUTLINED_FUNCTION_6_7();
      (v128)(v109);
      v39(v87, v135);
    }

    (v128)(v124, v134);
    return 0;
  }

  v122 = v39;
  (*(v133 + 96))(v66, v134);
  v69 = v123;
  v70 = v121;
  v71 = v125;
  (*(v123 + 32))(v121, v66, v125);
  v130(v25, v129, v135);
  v72 = v116;
  (*(v69 + 16))(v116, v70, v71);
  v73 = sub_266E9CF84();
  v74 = sub_266E9D1B4();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = v25;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v138[0] = v77;
    *v76 = 136315138;
    v78 = sub_266E9C7B4();
    v80 = v79;
    v81 = OUTLINED_FUNCTION_5_7();
    v72(v81);
    v82 = sub_266E6E7D4(v78, v80, v138);

    *(v76 + 4) = v82;
    _os_log_impl(&dword_266E51000, v73, v74, "Received direct invocation with identifier %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    v83 = v75;
  }

  else
  {

    v106 = OUTLINED_FUNCTION_5_7();
    v72(v106);
    v83 = v25;
  }

  v122(v83, v135);
  type metadata accessor for SwitchProfileWrapperFlow();
  v138[0] = sub_266E59DA8();
  sub_266E887AC();
  v107 = sub_266E9C134();

  if (*(v127 + 160) == 1)
  {
    v138[0] = v107;
    sub_266E88804();
    v64 = sub_266E9C134();

    v108 = OUTLINED_FUNCTION_3_9();
    v72(v108);
  }

  else
  {
    v110 = OUTLINED_FUNCTION_3_9();
    v72(v110);
    return v107;
  }

  return v64;
}

uint64_t sub_266E87DF0(void *a1)
{
  v2 = v1;
  v4 = sub_266E9CFA4();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_2800E8D48 != -1)
  {
    swift_once();
  }

  v12 = qword_2800E92F8;
  sub_266E9CF64();
  sub_266E9D1D4();
  sub_266E9CF54();
  v13 = &v11[*(v8 + 20)];
  *v13 = "MakeFlow";
  *(v13 + 1) = 8;
  *(v13 + 8) = 2;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v14);
  switch((*(v15 + 48))(v14, v15))
  {
    case 1u:
      type metadata accessor for UserIdentifyIntent();
      v16 = sub_266E68014(a1);
      __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v17 = sub_266E8F214();
      goto LABEL_11;
    case 2u:
      v18 = sub_266E88258(a1);
      break;
    case 3u:
      if (qword_2800E8D78 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v4, qword_2800EC7C8);
      v20 = v30;
      (*(v30 + 16))(v7, v19, v4);
      sub_266E5CE50(a1, v33);
      v21 = sub_266E9CF84();
      v22 = sub_266E9D1A4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32 = v24;
        *v23 = 136315138;
        sub_266E5CE50(v33, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
        v25 = sub_266E9D034();
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_0(v33);
        v28 = sub_266E6E7D4(v25, v27, &v32);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_266E51000, v21, v22, "Received unsupported intent: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x26D5F66A0](v24, -1, -1);
        MEMORY[0x26D5F66A0](v23, -1, -1);

        (*(v30 + 8))(v7, v4);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v33);
        (*(v20 + 8))(v7, v4);
      }

      v18 = 0;
      break;
    default:
      type metadata accessor for UserIdentifyIntent();
      v16 = sub_266E68014(a1);
      __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v17 = sub_266E8F500();
LABEL_11:
      v18 = v17;

      break;
  }

  sub_266E9D1C4();
  sub_266E9CF54();
  sub_266E541C0(v11);
  return v18;
}

uint64_t sub_266E88258(void *a1)
{
  v37 = sub_266E9CFA4();
  v36 = *(v37 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_266E9C314();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E5CE50(a1, v41);
  sub_266E88934((v1 + 15), v40);
  sub_266E5CE50(v1, v39);
  sub_266E8FE20(v41, v40, v39, v42);
  v14 = v43;
  sub_266E889A4(v42);
  type metadata accessor for SwitchProfileIntent();
  v34 = a1;
  v15 = sub_266E68424(a1);
  v16 = v1[8];
  v38 = v1[9];
  __swift_project_boxed_opaque_existential_0(v1 + 5, v16);
  sub_266E9C284();
  (*(v10 + 104))(v13, *MEMORY[0x277D5BB10], v9);
  v17 = [v15 typeName];
  sub_266E9D024();

  v18 = sub_266E9C224();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);
  *(swift_allocObject() + 16) = v14;
  sub_266E9C274();
  sub_266E9C1B4();

  if (v14 == 3)
  {
    if (qword_2800E8D78 != -1)
    {
      swift_once();
    }

    v19 = v37;
    v20 = __swift_project_value_buffer(v37, qword_2800EC7C8);
    v21 = v36;
    v22 = v35;
    (*(v36 + 16))(v35, v20, v19);
    sub_266E5CE50(v34, v42);
    v23 = sub_266E9CF84();
    v24 = sub_266E9D1A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315138;
      sub_266E5CE50(v42, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
      v27 = sub_266E9D034();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0(v42);
      v30 = sub_266E6E7D4(v27, v29, v40);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_266E51000, v23, v24, "makeFlow unsupported for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D5F66A0](v26, -1, -1);
      MEMORY[0x26D5F66A0](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v42);
    }

    (*(v21 + 8))(v22, v19);
    return 0;
  }

  else
  {
    type metadata accessor for SwitchProfileWrapperFlow();
    *&v42[0] = sub_266E59DA8();
    sub_266E887AC();
    v31 = sub_266E9C134();
  }

  return v31;
}

uint64_t sub_266E88758(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_266E68B7C(a2, 3, 0x100000000, 0x100000000);
  return sub_266E9C264();
}

unint64_t sub_266E887AC()
{
  result = qword_2800E92F0;
  if (!qword_2800E92F0)
  {
    type metadata accessor for SwitchProfileWrapperFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E92F0);
  }

  return result;
}

unint64_t sub_266E88804()
{
  result = qword_2800E97A8;
  if (!qword_2800E97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriIdentityInternal0B21FeatureFlagsProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266E88878(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_266E888B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E88934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97B0, &qword_266EA0628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_9()
{
  v1 = *(v0 - 272) + 8;
  result = *(v0 - 288);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  result = v0;
  v3 = *(*(v1 - 272) + 8);
  v4 = *(v1 - 256);
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_266E88A74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266E88AC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_266E88B3C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_266E88B7C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_266E88BAC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_266E88BF0(unsigned __int8 a1, char a2)
{
  v2 = 0x796669746E656469;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x796669746E656469;
  switch(v4)
  {
    case 1:
      v5 = 0x73696C6261747365;
      v3 = 0xE900000000000068;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x796669646F6DLL;
      break;
    case 3:
      v5 = 0x74736575516B7361;
      v3 = 0xEB000000006E6F69;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6579297;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x74754F676F6CLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x73696C6261747365;
      v6 = 0xE900000000000068;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
      break;
    case 3:
      v2 = 0x74736575516B7361;
      v6 = 0xEB000000006E6F69;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6579297;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x74754F676F6CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_14();
  }

  return v8 & 1;
}

uint64_t sub_266E88DB8(unsigned __int8 a1, char a2)
{
  v2 = 1718379891;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1718379891;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x70756F7267;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x746E756F636361;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x70756F7267;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 25705;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x746E756F636361;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_14();
  }

  return v8 & 1;
}

uint64_t sub_266E88EF4(char a1, char a2)
{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_2_9();
    if (v3)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_9();
    if (v7)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_14();
  }

  return v11 & 1;
}

uint64_t sub_266E88FB8(char a1)
{
  sub_266E9D484();
  IdentityVerb.rawValue.getter(a1);
  OUTLINED_FUNCTION_1_14();

  return sub_266E9D4A4();
}

uint64_t sub_266E89008()
{
  sub_266E9D484();
  sub_266E89220();
  return sub_266E9D4A4();
}

uint64_t sub_266E8905C(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](10 * a1 + 10);
  return sub_266E9D4A4();
}

uint64_t sub_266E890B4(uint64_t a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E89124()
{
  sub_266E9D074();
}

uint64_t sub_266E89220()
{
  sub_266E9D074();
}

uint64_t sub_266E892D0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_9();
  }

  sub_266E9D074();
}

uint64_t sub_266E89378(uint64_t a1, unsigned __int8 a2)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](10 * a2 + 10);
  return sub_266E9D4A4();
}

uint64_t sub_266E893C8(uint64_t a1, char a2)
{
  sub_266E9D484();
  if (a2)
  {
    OUTLINED_FUNCTION_2_9();
  }

  sub_266E9D074();

  return sub_266E9D4A4();
}

uint64_t sub_266E8944C()
{
  sub_266E9D484();
  sub_266E89220();
  return sub_266E9D4A4();
}

uint64_t sub_266E89490(uint64_t a1, char a2)
{
  sub_266E9D484();
  IdentityVerb.rawValue.getter(a2);
  OUTLINED_FUNCTION_1_14();

  return sub_266E9D4A4();
}

uint64_t sub_266E894DC(uint64_t a1, uint64_t a2)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a2);
  return sub_266E9D4A4();
}

uint64_t sub_266E89520(uint64_t a1)
{
  if (a1 == 30)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 40)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 20)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 10)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266E89580@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266E89520(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_266E895AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E89554(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_266E895D8()
{
  BYTE8(v2) = 0;
  sub_266E9D294();
  MEMORY[0x26D5F5CB0](0xD000000000000013, 0x8000000266EA2D40);
  *&v2 = *(v0 + 16);
  sub_266E9D314();
  MEMORY[0x26D5F5CB0](10272, 0xE200000000000000);
  MEMORY[0x26D5F5CB0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x26D5F5CB0](41, 0xE100000000000000);
  return *(&v2 + 1);
}

uint64_t sub_266E89698(char a1)
{
  *(v1 + 16) = a1;
  v2 = 0xED0000726F727245;
  v3 = 0x206E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000266EA2CB0;
      v3 = 0xD00000000000004CLL;
      break;
    case 2:
      v2 = 0x8000000266EA2C70;
      v3 = 0xD00000000000003ELL;
      break;
    case 3:
      break;
    default:
      v3 = 0xD000000000000038;
      v2 = 0x8000000266EA2D00;
      break;
  }

  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t sub_266E89754()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for IdentityFlowErrorCode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E8987CLL);
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

unint64_t sub_266E898B8()
{
  result = qword_2800E97B8;
  if (!qword_2800E97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return sub_266E9D3E4();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_266E9D074();
}

uint64_t sub_266E8999C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97C0, qword_266EA0870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266E9F380;
  *(v6 + 32) = v1;

  sub_266E9CA74();
  v7 = sub_266E9CA84();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  MEMORY[0x26D5F5680](v6, v5);

  sub_266E89FB4(v5);
  sub_266E9C944();
}

uint64_t sub_266E89B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266E9C924();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v63 = sub_266E9C894();
  v16 = OUTLINED_FUNCTION_2_1(v63);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_2();
  v65 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v26 = sub_266E9C854();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v61 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_266E9C8C4();
  v29 = OUTLINED_FUNCTION_2_1(v64);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_2();
  v60 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v50 - v37;
  v62 = a1;
  result = sub_266E8B274(a1);
  v53 = a2;
  v54 = v4;
  v51 = v12;
  v52 = v7;
  v50 = v15;
  if (!result)
  {
LABEL_12:
    v47 = v50;
    sub_266E9C914();
    sub_266E9C904();
    sub_266E9C8E4();
    v48 = v52;
    v49 = v54;
    (*(v52 + 16))(v51, v47, v54);
    sub_266E9C8D4();
    return (*(v48 + 8))(v47, v49);
  }

  if (result >= 1)
  {
    v40 = 0;
    v58 = (v31 + 16);
    v59 = v62 & 0xC000000000000001;
    v56 = v18 + 8;
    v57 = (v18 + 16);
    v55 = v18 + 32;
    v41 = MEMORY[0x277D84F90];
    do
    {
      v42 = result;
      if (v59)
      {
        MEMORY[0x26D5F5ED0](v40, v62);
      }

      else
      {
        v43 = *(v62 + 8 * v40 + 32);
      }

      sub_266E9C8B4();
      sub_266E8999C();
      sub_266E9C8A4();
      sub_266E9C884();
      (*v58)(v60, v38, v64);
      sub_266E9C874();
      (*v57)(v65, v25, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_266E55C84(0, *(v41 + 16) + 1, 1, v41);
      }

      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        v41 = sub_266E55C84(v44 > 1, v45 + 1, 1, v41);
      }

      ++v40;

      v46 = v63;
      (*(v18 + 8))(v25, v63);
      (*(v31 + 8))(v38, v64);
      *(v41 + 16) = v45 + 1;
      (*(v18 + 32))(v41 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v45, v65, v46);
      result = v42;
    }

    while (v42 != v40);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E89FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97C0, qword_266EA0870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E8A01C(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_266E9D354())
    {
      goto LABEL_3;
    }

    return 23899;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 23899;
  }

LABEL_3:
  v2 = sub_266E8A858(a1);
  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97C8, &qword_266EA0940);
    sub_266E8B048();
    v13 = sub_266E9CFF4();
    v15 = v14;

    MEMORY[0x26D5F5CB0](v13, v15);

    MEMORY[0x26D5F5CB0](23818, 0xE200000000000000);
    return 592475;
  }

  v3 = v2;
  v16 = MEMORY[0x277D84F90];
  result = sub_266E8ACA4(0, v2 & ~(v2 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D5F5ED0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_266E9CEB4();
      v7 = sub_266E9D034();
      v9 = v8;
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_266E8ACA4((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v3 != v5);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E8A1F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266E9F380;
  sub_266E9CF14();
  *(v0 + 32) = sub_266E9CF04();
  return v0;
}

uint64_t sub_266E8A260(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v4 = sub_266E9CFA4();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8A320, 0, 0);
}

uint64_t sub_266E8A320()
{
  v36 = v0;
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 134218242;
    v11 = *(v0 + 72);
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(v0 + 72);
      }

      v13 = sub_266E9D354();
      v14 = *(v0 + 72);
    }

    else
    {
      v13 = *(v11 + 16);
    }

    v19 = *(v0 + 96);
    v34 = *(v0 + 104);
    v20 = *(v0 + 88);
    *(v9 + 4) = v13;

    *(v9 + 12) = 2080;

    v22 = sub_266E8ABF4(v21);

    v23 = sub_266E8A01C(v22);
    v25 = v24;

    v26 = sub_266E6E7D4(v23, v25, &v35);

    *(v9 + 14) = v26;
    _os_log_impl(&dword_266E51000, v6, v7, "SwitchProfileDeviceResolutionStrategy.processDevices() Found %ld capable remote devices: %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F66A0](v10, -1, -1);
    MEMORY[0x26D5F66A0](v9, -1, -1);

    (*(v19 + 8))(v34, v20);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);

    (*(v16 + 8))(v15, v17);
  }

  v27 = *(v0 + 80);
  v28 = *(v27 + 72);
  v29 = *(v27 + 88);
  v30 = *(v27 + 56);
  *(v0 + 64) = *(v27 + 104);
  *(v0 + 32) = v28;
  *(v0 + 48) = v29;
  *(v0 + 16) = v30;
  v31 = swift_task_alloc();
  *(v0 + 112) = v31;
  *v31 = v0;
  v31[1] = sub_266E8A5EC;
  v32 = *(v0 + 72);

  return sub_266E55200(v0 + 16, v32);
}

uint64_t sub_266E8A5EC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_266E8A6EC, 0, 0);
}

uint64_t sub_266E8A6EC()
{
  result = sub_266E8A858(v0[15]);
  v2 = v0[15];
  if (result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D5F5ED0](0, v0[15]);
      v9 = v0[15];
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v3 = *(v2 + 32);
    }

    sub_266E9CEA4();
    v4 = sub_266E9CF34();
    if (sub_266E9CF34() >= v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v6 = v0[15];

    v3 = 0;
    v5 = 3;
  }

  v7 = v0[13];

  v8 = v0[1];

  return v8(v3, v5);
}

uint64_t sub_266E8A7DC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[11];
  v2 = v0[13];

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_266E8A858(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_266E9D354();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_266E8A87C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_266E8A974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_266E8AA70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_15(a3, result);
  }

  return result;
}

char *sub_266E8AA90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_15(a3, result);
  }

  return result;
}

uint64_t sub_266E8AAF8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_1_15();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_1_15();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

unint64_t sub_266E8ABD0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *sub_266E8ABF4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_266E9D354();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_266E8A87C(v2, 0);

    v1 = sub_266E8B0AC(&v5, v3 + 4, v2, v1);
    sub_266E8B26C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *sub_266E8ACA4(char *a1, int64_t a2, char a3)
{
  result = sub_266E8ACE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_266E8ACC4(size_t a1, int64_t a2, char a3)
{
  result = sub_266E8ADEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266E8ACE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97D8, &qword_266EA0948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_266E8ADEC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97E8, &unk_266EA0960);
  v10 = *(sub_266E9C304() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266E9C304() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_266E8AAF8(a4 + v16, v8, v13 + v16, MEMORY[0x277D5BAF8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void (*sub_266E8AFB4(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_266E8ABC0(a3);
  sub_266E8ABD0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D5F5ED0](a2, a3);
  }

  *a1 = v7;
  return sub_266E8B040;
}

unint64_t sub_266E8B048()
{
  result = qword_2800E97D0;
  if (!qword_2800E97D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E97C8, &qword_266EA0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97D0);
  }

  return result;
}

uint64_t sub_266E8B0AC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_266E9D344();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_266E9D364() || (sub_266E9CEB4(), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 48) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266E8B2A0()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_266E9C5D4();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = sub_266E9CFA4();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8B40C, 0, 0);
}

uint64_t sub_266E8B40C()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "IdentifyUserIdentityHandleIntentStrategy.makeIntentHandledResponse()", v7, 2u);
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = v0[8];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9638, &unk_266E9F9F0);
  v12 = sub_266E9C6C4();
  v13 = [v12 identity];
  v0[19] = v13;

  if (v13 && (v14 = [v13 isMultiUserContext]) != 0 && (v15 = v14, v16 = objc_msgSend(v14, sel_BOOLValue), v15, v16))
  {
    v17 = [v13 highConfidence];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 BOOLValue];
    }

    else
    {
      v19 = 0;
    }

    v24 = [v13 setupInProgress];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 BOOLValue];
    }

    else
    {
      v26 = 0;
    }

    v27 = v0[9];
    v28 = swift_task_alloc();
    v0[20] = v28;
    *v28 = v0;
    v28[1] = sub_266E8B710;
    v29 = v0[14];

    return sub_266E67580(v29, v19, v26);
  }

  else
  {
    v20 = *(v0[9] + 144);
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_266E8B9D8;
    v22 = v0[13];

    return sub_266E66F18(v22, v20);
  }
}

uint64_t sub_266E8B710()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(*v1 + 160);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;
  *(v5 + 168) = v0;

  if (v0)
  {
    v6 = sub_266E8BCA0;
  }

  else
  {
    v6 = sub_266E8B818;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266E8B818()
{
  v1 = v0[19];
  v2 = v0[15];
  v14 = v0[18];
  v3 = v0[12];
  v15 = v0[13];
  v4 = v0[10];
  v13 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  (*(v3 + 32))(v2);
  v7 = *(v5 + 128);
  __swift_project_boxed_opaque_existential_0((v5 + 104), v7);
  sub_266E9C2B4();
  sub_266E8BDC8(v1);
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  sub_266E9C834();
  OUTLINED_FUNCTION_2_10();
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v10;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_4_7();
  sub_266E9C4A4();

  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v4, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v3 + 8))(v2, v13);

  OUTLINED_FUNCTION_8_0();

  return v11();
}

uint64_t sub_266E8B9D8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(*v1 + 176);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;
  *(v5 + 184) = v0;

  if (v0)
  {
    v6 = sub_266E8BD34;
  }

  else
  {
    v6 = sub_266E8BAE0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266E8BAE0()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v15 = v0[18];
  v4 = v0[15];
  v5 = v0[10];
  v14 = v0[11];
  v6 = v0[9];
  v7 = v0[7];
  (*(v3 + 32))(v4);
  v8 = *(v6 + 128);
  __swift_project_boxed_opaque_existential_0((v6 + 104), v8);
  sub_266E9C2B4();
  sub_266E8BDC8(v1);
  v9 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_266E9C834();
  OUTLINED_FUNCTION_2_10();
  v10 = MEMORY[0x277D5C1D8];
  v7[3] = v11;
  v7[4] = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_4_7();
  sub_266E9C4A4();

  sub_266E54DA8(v8, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v5, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v3 + 8))(v4, v14);

  OUTLINED_FUNCTION_8_0();

  return v12();
}

uint64_t sub_266E8BCA0()
{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_8_0();

  return v2();
}

uint64_t sub_266E8BD34()
{
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_8_0();

  return v2();
}

uint64_t sub_266E8BDC8(uint64_t a1)
{
  v2 = sub_266E9CE24();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266E9CFA4();
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v38 - v22;
  sub_266E9CCF4();
  if (sub_266E9CCD4())
  {
    sub_266E9CCB4();

    sub_266E9C674();

    v24 = sub_266E9C464();
    v25 = 0;
  }

  else
  {
    v24 = sub_266E9C464();
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v25, 1, v24);
  if (a1 && (v26 = sub_266E54758(v23)) != 0)
  {
    v27 = v26;
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v28 = __swift_project_value_buffer(v9, qword_2800EC7E0);
    (*(v12 + 16))(v19, v28, v9);
    v29 = sub_266E9CF84();
    v30 = sub_266E9D194();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266E51000, v29, v30, "Building views for user", v31, 2u);
      MEMORY[0x26D5F66A0](v31, -1, -1);
    }

    (*(v12 + 8))(v19, v9);
    sub_266E5CE50(v38[1] + 104, v40);
    sub_266E9CE14();
    v32 = sub_266E9CE04();

    (*(v39 + 8))(v8, v2);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v33 = __swift_project_value_buffer(v9, qword_2800EC7E0);
    (*(v12 + 16))(v17, v33, v9);
    v34 = sub_266E9CF84();
    v35 = sub_266E9D1A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266E51000, v34, v35, "Not building views: Couldn't convert identity to contact", v36, 2u);
      MEMORY[0x26D5F66A0](v36, -1, -1);
    }

    (*(v12 + 8))(v17, v9);
    v32 = MEMORY[0x277D84F90];
  }

  sub_266E54DA8(v23, &qword_2800E91C0, &unk_266E9EC70);
  return v32;
}

uint64_t sub_266E8C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_266E8C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_266E8C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_266E8C474()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E7B80C;

  return sub_266E8B2A0();
}

uint64_t sub_266E8C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_266E8C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_266E8C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E7B674;

  return MEMORY[0x2821B9C38](a1, a2, v10, a4);
}

uint64_t sub_266E8C76C()
{
  v1 = sub_266E807B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_266E8C7CC()
{
  result = qword_2800E97F0;
  if (!qword_2800E97F0)
  {
    type metadata accessor for IdentifyUserHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97F0);
  }

  return result;
}

double OUTLINED_FUNCTION_2_10()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
}

uint64_t sub_266E8C870(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  sub_266E846B4(a2, v7);
  v5 = sub_266E8DF2C(v4, a1, v7);
  sub_266E8E054(a2);
  return v5;
}

uint64_t sub_266E8C8E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9800, &qword_266EA0C38);
  v2[4] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = sub_266E9CFA4();
  v2[7] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v2[8] = v8;
  v10 = *(v9 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8CA00, 0, 0);
}

uint64_t sub_266E8CA00()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_266E9CF84();
  v10 = sub_266E9D194();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = sub_266E9C6C4();
    v17 = [v16 switchType];

    (*(v13 + 8))(v12, v14);
    *(v15 + 4) = v17;
    _os_log_impl(&dword_266E51000, v9, v10, "SwitchProfileHandleIntentStrategy.makeIntentHandledResponse() called for %ld", v15, 0xCu);
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
    (*(v13 + 8))(v0[6], v0[4]);
  }

  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[2];

  (*(v19 + 8))(v18, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266E9F380;
  *(v23 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  v24 = sub_266E9C834();
  v25 = MEMORY[0x277D5C1D8];
  v22[3] = v24;
  v22[4] = v25;
  __swift_allocate_boxed_opaque_existential_1Tm(v22);
  sub_266E9C824();

  OUTLINED_FUNCTION_8_0();

  return v26();
}

uint64_t sub_266E8CC74(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9800, &qword_266EA0C38);
  v3[8] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v3[9] = v5;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_266E9CFA4();
  v3[11] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v3[12] = v9;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8CDA8, 0, 0);
}

uint64_t sub_266E8CDA8()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v58 = __swift_project_value_buffer(v0[11], qword_2800EC7E0);
  v59 = *(v2 + 16);
  v59(v1);
  (*(v3 + 16))(v4, v6, v5);
  v7 = sub_266E9CF84();
  v8 = sub_266E9D194();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_266E9C6C4();
    v15 = [v14 switchType];

    (*(v10 + 8))(v11, v12);
    *(v13 + 4) = v15;
    _os_log_impl(&dword_266E51000, v7, v8, "SwitchProfileHandleIntentStrategy.makeFailureHandlingIntentResponse() called for %ld", v13, 0xCu);
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
    (*(v10 + 8))(v0[10], v0[8]);
  }

  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[8];
  v20 = v0[6];

  v21 = *(v18 + 8);
  v21(v16, v17);
  v22 = sub_266E9C6B4();
  v23 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  swift_beginAccess();
  v24 = *&v22[v23];

  if (v24 == 101)
  {
    v25 = v0[8];
    v26 = v0[6];
    v27 = sub_266E9C6C4();
    sub_266E8DD6C(v27, &selRef_homeUserId);
    if (v28 || (v29 = v0[8], v30 = v0[6], v31 = sub_266E9C6C4(), sub_266E8DD6C(v31, &selRef_iCloudAltDSID), v32))
    {
    }

    else
    {
      v46 = v0[8];
      v47 = v0[6];
      v48 = sub_266E9C6C4();
      v49 = [v48 account];

      if (v49)
      {
        v50 = [v49 displayString];

        sub_266E9D024();
        v33 = v51;

        goto LABEL_11;
      }

      (v59)(v0[14], v58, v0[11]);
      v52 = sub_266E9CF84();
      v53 = sub_266E9D1A4();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v0[14];
      v56 = v0[11];
      if (v54)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_266E51000, v52, v53, "Missing name in resolved Account.", v57, 2u);
        OUTLINED_FUNCTION_4_0();
      }

      v21(v55, v56);
    }

    v33 = 0;
LABEL_11:
    v0[16] = v33;
    v34 = v0[7];
    v35 = swift_task_alloc();
    v0[17] = v35;
    *v35 = v0;
    v35[1] = sub_266E8D290;
    v36 = v0[5];

    return sub_266E6649C();
  }

  (v59)(v0[13], v58, v0[11]);
  v38 = sub_266E9CF84();
  v39 = sub_266E9D1A4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_266E51000, v38, v39, "Hit an error case.", v40, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v41 = v0[13];
  v42 = v0[11];
  v43 = v0[7];

  v21(v41, v42);
  v44 = swift_task_alloc();
  v0[19] = v44;
  *v44 = v0;
  v44[1] = sub_266E8D3F8;
  v45 = v0[5];

  return sub_266E65988();
}

uint64_t sub_266E8D290()
{
  v3 = *(*v1 + 136);
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v2;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266E8D564, 0, 0);
  }

  else
  {
    v5 = v2[16];

    v7 = v2[14];
    v6 = v2[15];
    v8 = v2[13];
    v9 = v2[10];

    OUTLINED_FUNCTION_8_0();

    return v10();
  }
}

uint64_t sub_266E8D3F8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[10];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_266E8D564()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];

  OUTLINED_FUNCTION_8_0();

  return v7();
}

uint64_t sub_266E8D5F4()
{
  sub_266E5D044(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_266E8D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_266E8D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_266E8D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_266E8D8A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266E8E0BC;

  return sub_266E8C8E8(a1, a2);
}

uint64_t sub_266E8D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_266E8DA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_266E8DACC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266E8DB78;

  return sub_266E8CC74(a1, a2);
}

uint64_t sub_266E8DB78()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;

  OUTLINED_FUNCTION_8_0();

  return v4();
}

uint64_t sub_266E8DC60()
{
  v2 = *v0;
  sub_266E601C4();
  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_266E8DCC4()
{
  result = qword_2800E97F8;
  if (!qword_2800E97F8)
  {
    type metadata accessor for SwitchProfileHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97F8);
  }

  return result;
}

void *sub_266E8DD18(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_266E8DD3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_266E8DD6C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_266E9D024();

  return v4;
}

uint64_t sub_266E8DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = type metadata accessor for BaseDialogProvider();
  v17[4] = &off_287876528;
  v17[0] = a1;
  *(a4 + 104) = 0;
  sub_266E5CE50(v17, v15);
  sub_266E846B4(a3, v14);
  sub_266E5CE50(v15, __src);
  sub_266E846B4(v14, &v11);
  if (v12)
  {
    sub_266E8E054(v14);
    __swift_destroy_boxed_opaque_existential_0(v15);
    sub_266E5D10C(&v11, v13);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E8E054(v14);
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (v12)
    {
      sub_266E8E054(&v11);
    }
  }

  sub_266E5D10C(v13, &__src[5]);
  sub_266E5CE50(&__src[5], v13);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_266E5D10C(v13, v8 + 16);
  __src[10] = v8;
  sub_266E8E054(a3);
  __swift_destroy_boxed_opaque_existential_0(v17);
  memcpy((a4 + 16), __src, 0x58uLL);
  v9 = *(a4 + 104);
  *(a4 + 104) = a2;

  return a4;
}

uint64_t sub_266E8DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BaseDialogProvider();
  v16[3] = v6;
  v16[4] = &off_287876528;
  v16[0] = a1;
  type metadata accessor for SwitchProfileHandleIntentStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_266E8DDD8(*v11, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

uint64_t sub_266E8E054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93F0, &qword_266E9F028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E8E0D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v44 = a4;
  v47 = a3;
  v43 = a1;
  v8 = sub_266E9CFA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_2800EC7C8);
  (*(v9 + 16))(v12, v13, v8);
  v14 = a2;
  v15 = sub_266E9CF84();
  v16 = sub_266E9D1B4();

  v17 = os_log_type_enabled(v15, v16);
  v46 = a2;
  if (v17)
  {
    v42[1] = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51[0] = v19;
    *v18 = 136315138;
    if (a2 && (v20 = sub_266E9CE84(), v21))
    {
      v22 = v21;
    }

    else
    {

      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = sub_266E6E7D4(v20, v22, v51);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_266E51000, v15, v16, "IdentityFlowProducers.switchProfileFlowProducers() remoteDevice: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D5F66A0](v19, -1, -1);
    MEMORY[0x26D5F66A0](v18, -1, -1);

    (*(v9 + 8))(v12, v8);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  type metadata accessor for SwitchProfileIntent();
  type metadata accessor for SwitchProfileIntentResponse();
  sub_266E9C114();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  v24 = *(qword_2800EC768 + 80);
  v25 = *(qword_2800EC768 + 88);
  v26 = sub_266E9CDF4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  sub_266E9CDE4();
  sub_266E9C0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9810, &unk_266EA0CB0);
  sub_266E9C0E4();
  type metadata accessor for SwitchProfileHandleIntentStrategy();
  v29 = v47;
  sub_266E846B4(v47, v51);
  v30 = v14;
  v31 = v46;
  v51[0] = sub_266E8C870(v46, v51);
  sub_266E8FCFC(&qword_2800E9838, type metadata accessor for SwitchProfileHandleIntentStrategy);
  sub_266E9C094();

  sub_266E9C0D4();
  sub_266E5CE50(v43, v51);
  sub_266E846B4(v29, v50);
  sub_266E5CE50(v44, v49);
  sub_266E5CE50(v45, v48);
  v32 = v52;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (v42 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v36;
  v39 = v30;
  v40 = sub_266E8F7EC(v38, v31, v50, v49, v48);
  __swift_destroy_boxed_opaque_existential_0(v51);
  v51[0] = v40;
  type metadata accessor for SwitchProfileDisambiguationStrategy();
  sub_266E8FCFC(&qword_2800E9840, type metadata accessor for SwitchProfileDisambiguationStrategy);
  sub_266E9C0B4();

  sub_266E9C104();
  type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy();
  sub_266E846B4(v29, v51);
  v51[0] = sub_266E94300(v51);
  sub_266E8FCFC(&qword_2800E9848, type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy);
  sub_266E9C0C4();

  sub_266E9C0F4();
}

uint64_t sub_266E8E70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266E9CFA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2800EC7C8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D1B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266E51000, v10, v11, "IdentityFlowProducers.identifyUserProducers()", v12, 2u);
    MEMORY[0x26D5F66A0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    sub_266E9CCF4();
    v13 = sub_266E79A78();
  }

  type metadata accessor for UserIdentifyIntent();
  type metadata accessor for UserIdentifyIntentResponse();

  sub_266E9C114();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  v14 = *(qword_2800EC768 + 80);
  v15 = *(qword_2800EC768 + 88);
  v16 = sub_266E9CDF4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  sub_266E9CDE4();
  sub_266E9C0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  sub_266E9C0E4();
  sub_266E846B4(a2, v22);
  type metadata accessor for BaseDialogProvider();
  v19 = swift_allocObject();
  v22[0] = sub_266E8FBD8(v19, v22, type metadata accessor for IdentifyUserHandleIntentStrategy);
  type metadata accessor for IdentifyUserHandleIntentStrategy();
  sub_266E8FCFC(&qword_2800E9880, type metadata accessor for IdentifyUserHandleIntentStrategy);
  sub_266E9C094();

  sub_266E9C0D4();
  type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy();
  sub_266E846B4(a2, v22);

  v22[0] = sub_266E82770(v22, v13);
  sub_266E8FCFC(&qword_2800E9888, type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy);
  sub_266E9C0C4();

  sub_266E9C0F4();
}

uint64_t sub_266E8EB34(uint64_t a1, uint64_t a2)
{
  v3 = sub_266E9CFA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_2800EC7C8);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_266E9CF84();
  v10 = sub_266E9D1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266E51000, v9, v10, "IdentityFlowProducers.establishUserProducers()", v11, 2u);
    MEMORY[0x26D5F66A0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  type metadata accessor for UserIdentifyIntent();
  type metadata accessor for UserIdentifyIntentResponse();
  sub_266E9C114();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  v12 = *(qword_2800EC768 + 80);
  v13 = *(qword_2800EC768 + 88);
  v14 = sub_266E9CDF4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  sub_266E9CDE4();
  sub_266E9C0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  sub_266E9C0E4();
  sub_266E846B4(a2, v20);
  type metadata accessor for BaseDialogProvider();
  v17 = swift_allocObject();
  v20[0] = sub_266E8FBD8(v17, v20, type metadata accessor for EstablishUserHandleIntentStrategy);
  type metadata accessor for EstablishUserHandleIntentStrategy();
  sub_266E8FCFC(&qword_2800E98A0, type metadata accessor for EstablishUserHandleIntentStrategy);
  sub_266E9C094();

  sub_266E9C0D4();
}

uint64_t sub_266E8EE84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9808, &qword_266EA0CA8);
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9810, &unk_266EA0CB0);
  v15 = OUTLINED_FUNCTION_2_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_11();
  v23 = type metadata accessor for BaseDialogProvider();
  v24 = swift_allocObject();
  v39[3] = v23;
  v39[4] = &off_287876528;
  v39[0] = v24;
  sub_266E9C294();
  v25 = sub_266E9CED4();
  v26 = sub_266E9CEC4();
  v37[3] = v25;
  v37[4] = MEMORY[0x277D61F10];
  v37[0] = v26;
  sub_266E8E0D0(v39, a4, v40, v38, v37, v4);
  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_266E8E054(v40);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v39);
  v27 = *(v17 + 16);
  v36 = v14;
  v27(v22, v4, v14);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9818, &qword_266EA0CC0);
  OUTLINED_FUNCTION_3(v28);
  sub_266E9C124();
  v40[0] = a1;
  type metadata accessor for SwitchProfileFlowStrategy();
  sub_266E8FCFC(&qword_2800E9820, type metadata accessor for SwitchProfileFlowStrategy);

  OUTLINED_FUNCTION_7_8();
  sub_266E9C484();
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2();
  }

  v29 = *(qword_2800EC768 + 80);
  v30 = *(qword_2800EC768 + 88);
  v31 = sub_266E9CDF4();
  OUTLINED_FUNCTION_3(v31);

  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_3_10();
  sub_266E9CDE4();
  v32 = sub_266E9C474();

  (*(v11 + 8))(v5, v8);
  v40[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9828, &qword_266EA0CC8);
  sub_266E8F9EC(&qword_2800E9830, &qword_2800E9828, &qword_266EA0CC8);
  v33 = OUTLINED_FUNCTION_10_4();

  (*(v17 + 8))(v4, v36);
  return v33;
}

uint64_t sub_266E8F214()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9850, &qword_266EA0CD0);
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_11();
  sub_266E8E70C(0, v26);
  sub_266E8E054(v26);
  type metadata accessor for IdentifyUserFlowStrategy();
  swift_allocObject();
  v16 = OUTLINED_FUNCTION_4_8();
  v17(v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9860, &qword_266EA0CE0);
  OUTLINED_FUNCTION_3(v18);
  sub_266E9C124();
  v26[0] = v2;
  sub_266E8FCFC(&qword_2800E9868, type metadata accessor for IdentifyUserFlowStrategy);

  OUTLINED_FUNCTION_7_8();
  sub_266E9C484();
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2();
  }

  v19 = *(qword_2800EC768 + 80);
  v20 = *(qword_2800EC768 + 88);
  v21 = sub_266E9CDF4();
  v22 = OUTLINED_FUNCTION_3(v21);

  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_3_10();
  sub_266E9CDE4();
  v23 = OUTLINED_FUNCTION_11_2();

  (*(v6 + 8))(v1, v22);
  v26[0] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9870, &qword_266EA0CE8);
  sub_266E8F9EC(&qword_2800E9878, &qword_2800E9870, &qword_266EA0CE8);
  v24 = OUTLINED_FUNCTION_10_4();

  (*(v12 + 8))(v0);
  return v24;
}

uint64_t sub_266E8F500()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9890, &qword_266EA0CF0);
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_11();
  sub_266E8EB34(0, v26);
  sub_266E8E054(v26);
  type metadata accessor for EstablishUserFlowStrategy();
  swift_allocObject();
  v16 = OUTLINED_FUNCTION_4_8();
  v17(v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9860, &qword_266EA0CE0);
  OUTLINED_FUNCTION_3(v18);
  sub_266E9C124();
  v26[0] = v2;
  sub_266E8FCFC(&qword_2800E9898, type metadata accessor for EstablishUserFlowStrategy);

  OUTLINED_FUNCTION_7_8();
  sub_266E9C484();
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2();
  }

  v19 = *(qword_2800EC768 + 80);
  v20 = *(qword_2800EC768 + 88);
  v21 = sub_266E9CDF4();
  v22 = OUTLINED_FUNCTION_3(v21);

  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_3_10();
  sub_266E9CDE4();
  v23 = OUTLINED_FUNCTION_11_2();

  (*(v6 + 8))(v1, v22);
  v26[0] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9870, &qword_266EA0CE8);
  sub_266E8F9EC(&qword_2800E9878, &qword_2800E9870, &qword_266EA0CE8);
  v24 = OUTLINED_FUNCTION_10_4();

  (*(v12 + 8))(v0);
  return v24;
}

uint64_t sub_266E8F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for BaseDialogProvider();
  v23[3] = v10;
  v23[4] = &off_287876528;
  v23[0] = a1;
  type metadata accessor for SwitchProfileDisambiguationStrategy();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v22[3] = v10;
  v22[4] = &off_287876528;
  v22[0] = v17;
  *(v11 + 104) = 0;
  sub_266E5CE50(v22, v21);
  sub_266E846B4(a3, &v19);
  sub_266E654D0(v21, &v19, v11 + 16);
  *(v11 + 104) = a2;
  sub_266E5CE50(a4, v11 + 112);
  sub_266E5CE50(a5, v11 + 152);
  sub_266E846B4(a3, &v19);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_0(a5);
    __swift_destroy_boxed_opaque_existential_0(a4);
    sub_266E8E054(a3);
    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_266E5D10C(&v19, v21);
  }

  else
  {
    sub_266E9C7F4();
    __swift_destroy_boxed_opaque_existential_0(a5);
    __swift_destroy_boxed_opaque_existential_0(a4);
    sub_266E8E054(a3);
    __swift_destroy_boxed_opaque_existential_0(v22);
    if (v20)
    {
      sub_266E8E054(&v19);
    }
  }

  sub_266E5D10C(v21, v11 + 192);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v11;
}

uint64_t sub_266E8F9EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_266E8FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = type metadata accessor for BaseDialogProvider();
  v16[4] = &off_287876528;
  v16[0] = a1;
  sub_266E5CE50(v16, &v13);
  sub_266E846B4(a2, v12);
  sub_266E5CE50(&v13, __src);
  sub_266E846B4(v12, &v9);
  if (v10)
  {
    sub_266E8E054(v12);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    sub_266E5D10C(&v9, v11);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E8E054(v12);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    if (v10)
    {
      sub_266E8E054(&v9);
    }
  }

  sub_266E5D10C(v11, &__src[40]);
  sub_266E5CE50(&__src[40], v11);
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  sub_266E5D10C(v11, v6 + 16);
  *&__src[80] = v6;
  memcpy((a3 + 16), __src, 0x58uLL);
  sub_266E846B4(a2, &v13);
  if (v14)
  {
    sub_266E5D10C(&v13, __src);
  }

  else
  {
    sub_266E9C7F4();
    if (v14)
    {
      sub_266E8E054(&v13);
    }
  }

  sub_266E5D10C(__src, a3 + 104);
  sub_266E9CCF4();
  v7 = sub_266E79A78();
  sub_266E8E054(a2);
  __swift_destroy_boxed_opaque_existential_0(v16);
  *(a3 + 144) = v7;
  return a3;
}

uint64_t sub_266E8FBD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for BaseDialogProvider();
  v16[3] = v6;
  v16[4] = &off_287876528;
  v16[0] = a1;
  a3(0);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_266E8FA40(*v11, a2, v7);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

uint64_t sub_266E8FCFC(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_2_11()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v4 = *(v0 + 16);
  result = v1;
  *(v3 - 136) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return sub_266E9C134();
}

uint64_t OUTLINED_FUNCTION_11_2()
{
  v2 = *(v0 - 144);

  return sub_266E9C474();
}

uint64_t sub_266E8FE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_266E9CFA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[24] = 3;
  sub_266E88934(a2, &v43);
  if (v44)
  {
    sub_266E595F8(&v43, &v45);
  }

  else
  {
    v46 = &type metadata for IdentityFeatureFlagsProvider;
    v47 = &protocol witness table for IdentityFeatureFlagsProvider;
  }

  sub_266E595F8(&v45, &v48);
  v14 = *&v49[16];
  v13 = *&v49[8];
  __swift_project_boxed_opaque_existential_0(&v48, *&v49[8]);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = sub_266E90498(a3);
  v17 = v16;
  if (v15 & 1) != 0 && (v16)
  {
    OUTLINED_FUNCTION_1_16();
    v19 = *(v18 + 48);
    v20 = OUTLINED_FUNCTION_0_16();
    if (v21(v20) == 2)
    {
      OUTLINED_FUNCTION_1_16();
      v23 = *(v22 + 32);
      v24 = OUTLINED_FUNCTION_0_16();
      v25(v24);
      if (v26)
      {

        __swift_destroy_boxed_opaque_existential_0(a3);
        sub_266E90554(a2);
        v49[24] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_16();
        v34 = *(v33 + 24);
        v35 = OUTLINED_FUNCTION_0_16();
        v37 = v36(v35);
        __swift_destroy_boxed_opaque_existential_0(a3);
        sub_266E90554(a2);
        if (v37)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        v49[24] = v38;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(a3);
      sub_266E90554(a2);
    }
  }

  else
  {
    v42 = a2;
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v8, qword_2800EC7E0);
    (*(v9 + 16))(v12, v27, v8);
    v28 = sub_266E9CF84();
    v29 = sub_266E9D194();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = a3;
      v31 = v30;
      *v30 = 67109376;
      *(v30 + 4) = v15 & 1;
      *(v30 + 8) = 1024;
      *(v30 + 10) = v17 & 1;
      _os_log_impl(&dword_266E51000, v28, v29, "Switch Profile feature not supported. feature enabled=%{BOOL}d isAllowedDevice=%{BOOL}d", v30, 0xEu);
      v32 = v31;
      a3 = v41;
      MEMORY[0x26D5F66A0](v32, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(a3);
    sub_266E90554(v42);
    (*(v9 + 8))(v12, v8);
  }

  v39 = *v49;
  *a4 = v48;
  a4[1] = v39;
  *(a4 + 25) = *&v49[9];
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UseCase.hashValue.getter(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E90218()
{
  v1 = *v0;
  sub_266E9D484();
  UseCase.hash(into:)(v3, v1);
  return sub_266E9D4A4();
}

unint64_t sub_266E90290()
{
  result = qword_2800E98A8;
  if (!qword_2800E98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E98A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E903B0);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266E903FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_266E9043C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E90498(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if (sub_266E9C2C4())
  {
    return 1;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if ((sub_266E9C2D4() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v6);
  return (*(v7 + 16))(v6, v7) & 1;
}

uint64_t sub_266E90554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97B0, &qword_266EA0628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E905F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_266E9D174();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_266EA0E50;
  v10[5] = v9;
  sub_266E918C4(0, 0, v7, &unk_266EA0E60, v10);
}

id sub_266E90700()
{
  sub_266E9CCF4();
  v1 = static SiriEnvironment.getUserIdentity()();
  if (v1)
  {
    v2 = v1;
    *&v0[OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_currentRequest] = sub_266E79C40();
    *&v0[OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_currentDevice] = sub_266E79A78();
    *&v0[OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_userIdentity] = v2;
    v4.receiver = v0;
    v4.super_class = type metadata accessor for EstablishUserIntentHandler();
    return objc_msgSendSuper2(&v4, sel_init);
  }

  else
  {
    result = sub_266E9D374();
    __break(1u);
  }

  return result;
}

uint64_t EstablishUserIntentHandler.resolveIdentity(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_266E9CE64() - 8) + 64);
  v1[4] = OUTLINED_FUNCTION_18();
  v4 = sub_266E9C434();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = sub_266E9C464();
  v1[9] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_18();
  v12 = sub_266E9CFA4();
  v1[12] = v12;
  OUTLINED_FUNCTION_5_1(v12);
  v1[13] = v13;
  v15 = *(v14 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_266E90990()
{
  v73 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    _os_log_impl(&dword_266E51000, v6, v7, "EstablishUserIntentHandler.resolveIdentity", v8, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[2];

  v13 = *(v10 + 8);
  v13(v9, v11);
  v14 = [v12 identity];
  if (v14)
  {
    v15 = v14;
    v68 = v0[15];
    v70 = v13;
    v16 = v0[11];
    v17 = v0[8];
    v61 = v0[10];
    v62 = v0[9];
    v66 = v4;
    v67 = v5;
    v19 = v0[6];
    v18 = v0[7];
    v21 = v0[4];
    v20 = v0[5];
    v63 = *(v0[3] + OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_userIdentity);
    v64 = v0[3];
    v65 = v0[12];
    sub_266E9C674();
    sub_266E9C444();
    sub_266E9C424();
    sub_266E9C3E4();
    v22 = *(v19 + 8);
    v22(v18, v20);
    v22(v17, v20);
    v23 = *(v61 + 8);
    v23(v16, v62);
    v24 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v24, sel_setFullConfidence_);

    sub_266E9C694();
    v25 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v25, sel_setSetupInProgress_);

    v26 = *(v64 + OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_currentRequest);
    sub_266E9CE34();
    sub_266E9CE54();
    sub_266E803B4(v21);
    v27 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v27, sel_setIsMultiUserContext_);

    sub_266E9C674();
    sub_266E86FE4();
    v23(v16, v62);
    v28 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v28, sel_setIsIdentifiedOrUnsure_);

    v67(v68, v66, v65);
    v29 = sub_266E9CF84();
    v30 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v30))
    {
      v31 = OUTLINED_FUNCTION_5_0();
      *v31 = 0;
      _os_log_impl(&dword_266E51000, v29, v23, "EstablishUserIntentHandler.resolveIdentity returning success", v31, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v32 = v0[15];
    v33 = v0[12];
    v34 = v0[13];

    v70(v32, v33);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static IdentityResolutionResult.success(with:)(v15);
  }

  else
  {
    v35 = v0[2];
    v5(v0[14], v4, v0[12]);
    v36 = v35;
    v37 = sub_266E9CF84();
    v38 = sub_266E9D194();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[13];
    v41 = v0[14];
    v42 = v0[12];
    if (v39)
    {
      v43 = v0[2];
      v69 = v0[14];
      v44 = swift_slowAlloc();
      v71 = v13;
      v72 = swift_slowAlloc();
      v45 = v72;
      *v44 = 136315138;
      v46 = [v43 description];
      v47 = sub_266E9D024();
      v49 = v48;

      v50 = sub_266E6E7D4(v47, v49, &v72);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_266E51000, v37, v38, "EstablishUserIntentHandler.resolveIdentity returning failure since Intent does not have Identity %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v71(v69, v42);
    }

    else
    {

      v13(v41, v42);
    }

    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(1);
  }

  v52 = v0[15];
  v51 = v0[16];
  v53 = v0[14];
  v54 = v0[11];
  v56 = v0[7];
  v55 = v0[8];
  v57 = v0[4];

  v58 = OUTLINED_FUNCTION_5_4();

  return v59(v58);
}

uint64_t sub_266E90F00(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266E90FC4;

  return EstablishUserIntentHandler.resolveIdentity(for:)();
}

uint64_t sub_266E90FC4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_8_0();

  return v10();
}

uint64_t EstablishUserIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E911B4()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D90 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_2800EC810);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v7, v8, "EstablishUserIntentHandler.confirm");
    OUTLINED_FUNCTION_4_0();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  (*(v10 + 8))(v9, v11);
  v12 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(1, 0);

  v13 = OUTLINED_FUNCTION_5_4();

  return v14(v13);
}

uint64_t sub_266E9130C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E920DC;

  return EstablishUserIntentHandler.confirm(intent:)();
}

uint64_t EstablishUserIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E91464()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[3];
  v1 = v0[4];
  __swift_project_value_buffer(v0[2], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v6))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v7, v8, "EstablishUserIntentHandler.handle");
    OUTLINED_FUNCTION_4_0();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  (*(v10 + 8))(v9, v11);
  v12 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(4, 0);

  v13 = OUTLINED_FUNCTION_5_4();

  return v14(v13);
}

uint64_t sub_266E915AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E920DC;

  return EstablishUserIntentHandler.handle(intent:)();
}

id EstablishUserIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EstablishUserIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266E916F4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_266E765F8;

  return v7();
}

uint64_t sub_266E917DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_266E5C6A4;

  return v8();
}

uint64_t sub_266E918C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_266E761D4(a3, v25 - v11);
  v13 = sub_266E9D174();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_266E91DE4(v12);
  }

  else
  {
    sub_266E9D164();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_266E9D134();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_266E9D054() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_266E91DE4(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_266E91DE4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_266E91B88()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_9(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_2(v5);

  return v8(v7);
}

uint64_t sub_266E91C20()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_9(v5);
  *v6 = v7;
  v6[1] = sub_266E765F8;

  return sub_266E916F4(v1, v2, v4);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266E91D1C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_9(v7);
  *v8 = v9;
  v8[1] = sub_266E765F8;

  return sub_266E917DC(a1, v3, v4, v6);
}

uint64_t sub_266E91DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E91E4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E91E84()
{
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_24_1(v4);

  return v7(v6);
}

uint64_t sub_266E91F1C()
{
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_24_1(v4);

  return v7(v6);
}

uint64_t sub_266E91FB4()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_9(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_2(v5);

  return v8(v7);
}

uint64_t sub_266E92048()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_9(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_2(v5);

  return v8(v7);
}

id OUTLINED_FUNCTION_17_4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_266E92114@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_266E9CFA4();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v65 = sub_266E9C8F4();
  v11 = OUTLINED_FUNCTION_2_1(v65);
  v72 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v71 = v16 - v15;
  v66 = sub_266E9C5B4();
  v17 = OUTLINED_FUNCTION_2_1(v66);
  v70 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v64 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  v25 = sub_266E927A0(a1);
  v26 = sub_266E929B8(v25);
  v76[0] = v25;
  sub_266E93934(v26, sub_266E55C44, MEMORY[0x277D5BAF8]);
  sub_266E92BB8(v76[0]);

  v27 = MEMORY[0x277D84F90];
  v76[0] = MEMORY[0x277D84F90];
  v28 = sub_266E8B274(a1);
  v29 = 0;
  v30 = a1;
  v73 = a1 & 0xFFFFFFFFFFFFFF8;
  v74 = a1 & 0xC000000000000001;
  v75 = v24;
  while (v28 != v29)
  {
    if (v74)
    {
      v31 = MEMORY[0x26D5F5ED0](v29, v30);
    }

    else
    {
      if (v29 >= *(v73 + 16))
      {
        goto LABEL_17;
      }

      v31 = *(v30 + 8 * v29 + 32);
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v33 = sub_266E9CC24();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_266E9CC14();
    v36 = sub_266E9CBA4();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_266E9CB94();
    v39 = [v32 displayString];
    sub_266E9D024();

    sub_266E9CB84();

    sub_266E9CC04();

    v40 = sub_266E9CC54();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_266E9CC44();
    sub_266E9CBF4();

    MEMORY[0x26D5F5CD0]();
    if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266E9D0E4();
    }

    sub_266E9D104();
    v27 = v76[0];
    ++v29;
    v24 = v75;
  }

  v43 = v71;
  sub_266E89B24(v27, v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98C8, &qword_266EA0EA0);
  v44 = v72;
  v45 = *(v72 + 72);
  v46 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_266E9ED60;
  v30 = v65;
  (*(v44 + 16))(v47 + v46, v43, v65);
  sub_266E9C534();
  if (qword_2800E8D80 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  OUTLINED_FUNCTION_0_3();
LABEL_12:
  v48 = v68;
  v49 = __swift_project_value_buffer(v68, qword_2800EC7E0);
  v50 = v67;
  (*(v67 + 16))(v10, v49, v48);
  v51 = sub_266E9CF84();
  v52 = sub_266E9D194();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v66;
  v55 = v70;
  if (v53)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v74 = v10;
    v58 = v57;
    v76[0] = v57;
    *v56 = 136315138;
    swift_beginAccess();
    (*(v55 + 16))(v64, v24, v54);
    v59 = sub_266E9D034();
    v61 = sub_266E6E7D4(v59, v60, v76);
    v55 = v70;

    *(v56 + 4) = v61;
    v24 = v75;
    _os_log_impl(&dword_266E51000, v51, v52, "NLContextUpdate for disambiguation: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    (*(v50 + 8))(v74, v48);
  }

  else
  {

    (*(v50 + 8))(v10, v48);
  }

  (*(v72 + 8))(v71, v30);
  v62 = v69;
  swift_beginAccess();
  (*(v55 + 16))(v62, v24, v54);
  return (*(v55 + 8))(v24, v54);
}

uint64_t sub_266E9274C()
{
  sub_266E9C5A4();
  OUTLINED_FUNCTION_4_9();
  sub_266E9C574();
  sub_266E9C584();
  sub_266E9C594();
  return sub_266E9C554();
}

size_t sub_266E927A0(unint64_t a1)
{
  v20 = sub_266E9C304();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266E9D354())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v22 = MEMORY[0x277D84F90];
    result = sub_266E8ACC4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v22;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = v2 + 32;
    v19 = a1 & 0xC000000000000001;
    v10 = a1;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v19)
      {
        v12 = MEMORY[0x26D5F5ED0](v9, a1);
      }

      else
      {
        if (v9 >= *(v17 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 8 * v9 + 32);
      }

      v13 = v12;
      v21 = v12;
      sub_266E92E1C(&v21, v5);

      v22 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_266E8ACC4(v14 > 1, v15 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v15 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v5, v20);
      ++v9;
      a1 = v10;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E929B8(uint64_t a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D0, &qword_266EA0EA8);
  v2 = OUTLINED_FUNCTION_4_3(v27);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = (&v25 - v5);
  v6 = 0;
  v28 = a1;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v8;
    }

    v9 = sub_266E9C304();
    OUTLINED_FUNCTION_4_3(v9);
    v11 = *(v10 + 16);
    v12 = v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6;
    v13 = v26;
    v14 = *(v27 + 48);
    *v26 = v6;
    v11(v13 + v14, v12, v9);
    v15 = v7;
    v16 = sub_266E930F4(v6, v13 + v14, v7);
    result = sub_266E651FC(v13, &qword_2800E98D0, &qword_266EA0EA8);
    v18 = *(v16 + 16);
    v19 = *(v8 + 16);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v20 > *(v8 + 24) >> 1)
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_266E55C44(result, v21, 1, v8);
      v8 = result;
    }

    if (*(v16 + 16))
    {
      if ((*(v8 + 24) >> 1) - *(v8 + 16) < v18)
      {
        goto LABEL_20;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v22 = *(v8 + 16);
        v23 = __OFADD__(v22, v18);
        v24 = v22 + v18;
        if (v23)
        {
          goto LABEL_21;
        }

        *(v8 + 16) = v24;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_19;
      }
    }

    ++v6;
    v7 = v15;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_266E92BB8(uint64_t a1)
{
  v2 = sub_266E9CFA4();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v11 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  (*(v5 + 16))(v10, v11, v2);

  v12 = sub_266E9CF84();
  v13 = sub_266E9D194();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_266E9C304();
    v17 = MEMORY[0x26D5F5D00](a1, v16);
    v19 = sub_266E6E7D4(v17, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_266E51000, v12, v13, "displayHints for makeDisambiguationUpdate: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    (*(v5 + 8))(v10, v2);
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  sub_266E9C5A4();
  OUTLINED_FUNCTION_4_9();
  sub_266E9C574();
  sub_266E9C554();
  sub_266E9C544();
  sub_266E9C564();
  sub_266E9C594();
  sub_266E9C584();

  return sub_266E9C524();
}

uint64_t sub_266E92E1C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D8, &qword_266EA0EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5;
  v7 = sub_266E9C364();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  v18 = *a1;
  sub_266E9C354();
  sub_266E9C354();
  sub_266E6ED54(v18);
  if (v19)
  {

    sub_266E9C324();
    sub_266E6ED54(v18);
    sub_266E9C334();
    sub_266E9C344();
    sub_266E9C324();
    v20 = [v18 displayString];
    sub_266E9D024();

    sub_266E9C334();
    sub_266E9C344();
  }

  v21 = v8[2];
  v21(v6, v17, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v21(v12, v15, v7);
  sub_266E9C2E4();
  v22 = v8[1];
  v22(v15, v7);
  return (v22)(v17, v7);
}

uint64_t sub_266E930F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v41 = sub_266E9C304();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D8, &qword_266EA0EB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v39 - v19;
  v21 = sub_266E9C364();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E9C2F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_266E651FC(v20, &qword_2800E98D8, &qword_266EA0EB0);
    result = sub_266E9D374();
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v42 = a3;
    if (a1 > 24)
    {
      a2 = MEMORY[0x277D84F90];
      v16 = v41;
      goto LABEL_7;
    }

    if (a1 < 0)
    {
      goto LABEL_29;
    }

    v27 = &unk_287875480 + 16 * a1;
    v28 = *(v27 + 4);
    v29 = *(v27 + 5);

    sub_266E93708(v25);

    a2 = sub_266E55C44(0, 1, 1, MEMORY[0x277D84F90]);
    a3 = *(a2 + 16);
    v26 = *(a2 + 24);
    v20 = (a3 + 1);
    if (a3 >= v26 >> 1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      *(a2 + 16) = v20;
      v30 = v16;
      v16 = v41;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a3, v30, v41);
      a3 = v42;
LABEL_7:
      v26 = a3 - 3;
      if (!__OFSUB__(a3, 3))
      {
        break;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      a2 = sub_266E55C44(v26 > 1, v20, 1, a2);
    }

    if (v26 == a1)
    {
      sub_266E93708(v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_266E55C44(0, *(a2 + 16) + 1, 1, a2);
      }

      v32 = *(a2 + 16);
      v31 = *(a2 + 24);
      if (v32 >= v31 >> 1)
      {
        a2 = sub_266E55C44(v31 > 1, v32 + 1, 1, a2);
      }

      *(a2 + 16) = v32 + 1;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32, v14, v16);
      a3 = v42;
    }

    if (a3 - 2 == a1)
    {
      sub_266E93708(v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_266E55C44(0, *(a2 + 16) + 1, 1, a2);
      }

      v34 = *(a2 + 16);
      v33 = *(a2 + 24);
      if (v34 >= v33 >> 1)
      {
        a2 = sub_266E55C44(v33 > 1, v34 + 1, 1, a2);
      }

      *(a2 + 16) = v34 + 1;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v40, v16);
      a3 = v42;
    }

    if (a3 - 1 == a1)
    {
      v35 = v39;
      sub_266E93708(v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_266E55C44(0, *(a2 + 16) + 1, 1, a2);
      }

      v37 = *(a2 + 16);
      v36 = *(a2 + 24);
      if (v37 >= v36 >> 1)
      {
        a2 = sub_266E55C44(v36 > 1, v37 + 1, 1, a2);
      }

      (*(v22 + 8))(v25, v21);
      *(a2 + 16) = v37 + 1;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, v35, v16);
    }

    else
    {
      (*(v22 + 8))(v25, v21);
    }

    return a2;
  }

  return result;
}

uint64_t sub_266E93708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D8, &qword_266EA0EB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_266E9C364();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_266E9C354();
  sub_266E9C324();

  sub_266E9C334();
  sub_266E9C344();
  v14 = *(v7 + 16);
  v14(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v14(v11, v13, v6);
  sub_266E9C2E4();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_266E93934(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266E93A48(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266E93A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}