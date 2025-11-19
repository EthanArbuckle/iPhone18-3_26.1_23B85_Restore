uint64_t OUTLINED_FUNCTION_86_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_86_8()
{
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[68];
  v5 = v0[67];
}

uint64_t OUTLINED_FUNCTION_86_10()
{

  return type metadata accessor for RCHFlow();
}

void OUTLINED_FUNCTION_86_12()
{
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 152);
  v7 = *(v1 + 120);
  v6 = *(v1 + 128);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
}

void *initializeWithCopy for ResolveConfirmProcessingResult(void *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(a2 + 8);
      v6 = *(a2 + 16);
      a1[1] = v7;
      a1[2] = v6;
      v8 = v5;
      sub_1DD0DCF8C();
    }

    a1[1] = *(a2 + 8);
    v19 = v5;
    sub_1DD0DCF8C();
  }

  v9 = *(a2 + 16);
  a1[1] = *(a2 + 8);
  a1[2] = v9;
  v10 = v5;

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
  v12 = a1 + v11;
  v13 = a2 + v11;
  *(a1 + v11) = *(a2 + v11);
  v14 = *(type metadata accessor for ParameterClause() + 20);
  v15 = &v12[v14];
  v16 = (v13 + v14);
  v17 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v18 = sub_1DD0DC76C();
      (*(*(v18 - 8) + 16))(v15, v16, v18);
      goto LABEL_29;
    case 1u:
      v28 = sub_1DD0DC76C();
      (*(*(v28 - 8) + 16))(v15, v16, v28);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v15[*(v29 + 48)] = *&v16[*(v29 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v22 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v22;
      *(v15 + 2) = *(v16 + 2);

      goto LABEL_29;
    case 3u:
      *v15 = *v16;
      swift_unknownObjectRetain();
      goto LABEL_29;
    case 4u:
      v20 = sub_1DD0DB1EC();
      (*(*(v20 - 8) + 16))(v15, v16, v20);
      goto LABEL_29;
    case 5u:
      v30 = *v16;
      *v15 = *v16;
      v31 = v30;
      goto LABEL_29;
    case 6u:
      v32 = sub_1DD0DB4BC();
      (*(*(v32 - 8) + 16))(v15, v16, v32);
      v33 = type metadata accessor for USOParse();
      v34 = v33[5];
      v35 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v16[v34], 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v15[v34], &v16[v34], *(*(v36 - 8) + 64));
      }

      else
      {
        (*(*(v35 - 8) + 16))(&v15[v34], &v16[v34], v35);
        __swift_storeEnumTagSinglePayload(&v15[v34], 0, 1, v35);
      }

      v68 = v33[6];
      v69 = &v15[v68];
      v70 = &v16[v68];
      v71 = *(v70 + 1);
      *v69 = *v70;
      *(v69 + 1) = v71;
      v72 = v33[7];
      v73 = &v15[v72];
      v74 = &v16[v72];
      v73[4] = v74[4];
      *v73 = *v74;

      goto LABEL_29;
    case 7u:
      v23 = sub_1DD0DB4BC();
      (*(*(v23 - 8) + 16))(v15, v16, v23);
      v24 = type metadata accessor for USOParse();
      v25 = v24[5];
      v26 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v16[v25], 1, v26))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v15[v25], &v16[v25], *(*(v27 - 8) + 64));
      }

      else
      {
        (*(*(v26 - 8) + 16))(&v15[v25], &v16[v25], v26);
        __swift_storeEnumTagSinglePayload(&v15[v25], 0, 1, v26);
      }

      v48 = v24[6];
      v49 = &v15[v48];
      v50 = &v16[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v24[7];
      v53 = &v15[v52];
      v54 = &v16[v52];
      v53[4] = v54[4];
      *v53 = *v54;
      v55 = type metadata accessor for LinkParse();
      v56 = v55[5];
      v57 = &v15[v56];
      v58 = &v16[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;
      v60 = v55[6];
      v61 = &v15[v60];
      v62 = &v16[v60];
      v63 = *(v62 + 1);
      *v61 = *v62;
      *(v61 + 1) = v63;
      v64 = v55[7];
      v65 = &v15[v64];
      v66 = &v16[v64];
      v67 = *(v66 + 1);
      *v65 = *v66;
      *(v65 + 1) = v67;

      goto LABEL_29;
    case 8u:
      v37 = sub_1DD0DD12C();
      (*(*(v37 - 8) + 16))(v15, v16, v37);
      v38 = type metadata accessor for NLRouterParse();
      v39 = *(v38 + 20);
      v40 = &v15[v39];
      v41 = &v16[v39];
      v42 = *(v41 + 1);
      *v40 = *v41;
      *(v40 + 1) = v42;
      v90 = v38;
      v43 = *(v38 + 24);
      v44 = &v15[v43];
      v45 = &v16[v43];
      v46 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v45, 1, v46))
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v44, v45, *(*(v47 - 8) + 64));
      }

      else
      {
        v75 = sub_1DD0DB4BC();
        (*(*(v75 - 8) + 16))(v44, v45, v75);
        v76 = v46[5];
        v89 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v45[v76], 1, v89))
        {
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v44[v76], &v45[v76], *(*(v77 - 8) + 64));
        }

        else
        {
          (*(*(v89 - 8) + 16))(&v44[v76], &v45[v76]);
          __swift_storeEnumTagSinglePayload(&v44[v76], 0, 1, v89);
        }

        v78 = v46[6];
        v79 = &v44[v78];
        v80 = &v45[v78];
        v81 = *(v80 + 1);
        *v79 = *v80;
        *(v79 + 1) = v81;
        v82 = v46[7];
        v83 = &v44[v82];
        v84 = &v45[v82];
        v83[4] = v84[4];
        *v83 = *v84;

        __swift_storeEnumTagSinglePayload(v44, 0, 1, v46);
      }

      v85 = *(v90 + 28);
      v86 = *&v16[v85];
      *&v15[v85] = v86;
      v87 = v86;
      goto LABEL_29;
    case 9u:
      v21 = sub_1DD0DD08C();
      (*(*(v21 - 8) + 16))(v15, v16, v21);
LABEL_29:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v15, v16, *(*(v17 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCB3B308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = *v4;
  v5[40] = *v4;
  v5[41] = *a2;
  v7 = *(*(type metadata accessor for ParameterClause() - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v8 = *(v6 + 80);
  v5[44] = v8;
  v9 = *(v8 - 8);
  v5[45] = v9;
  v10 = *(v9 + 64) + 15;
  v5[46] = swift_task_alloc();
  v11 = type metadata accessor for ResolveConfirmProcessingResult();
  v5[47] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB14324, 0, 0);
}

uint64_t sub_1DCB3B4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

unint64_t sub_1DCB3B4FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

void sub_1DCB3B54C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v1 + *(*v1 + 152);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v2;
  v11 = *(v4 + 40);
  *(v4 + 40) = v3;
  sub_1DCB150B8(v6, v5, v7, v8, v9, v11);

  sub_1DCB3B5B8();
}

void sub_1DCB3B5B8()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3B800(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DAF2C();

  return v3;
}

void sub_1DCB3B864()
{
  OUTLINED_FUNCTION_50();
  v19 = v1;
  OUTLINED_FUNCTION_70();
  v2 = sub_1DD0DD89C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v7 = sub_1DD0DD85C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v14 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57DD0);
  v15 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if ((sub_1DD0DE92C() & 1) == 0)
  {

    v16 = *(v10 + 8);
    v17 = OUTLINED_FUNCTION_19();
    v18(v17);
    OUTLINED_FUNCTION_49();
    return;
  }

  if ((v19 & 1) == 0)
  {
    if (v0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (HIDWORD(v0))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v0 & 0xFFFFF800) != 0xD800)
  {
    if (v0 >> 16 <= 0x10)
    {
LABEL_10:
      sub_1DD0DCF8C();
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1DCB3BAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = v3;
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v10 = a3(v3);
    if (v10)
    {
      v11 = v10;
      v7 = swift_dynamicCastUnknownClass();
      if (!v7)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t IntentResolutionRecord.init(app:intent:intentResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_221(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_221_0()
{
  v2 = *(v0 - 136);

  return sub_1DD0DC61C();
}

void sub_1DCB3BBC0(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = v3;
  oslog = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = INIntent.debugDescriptionLite.getter();
    v11 = sub_1DCB10E9C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DCAFC000, oslog, v6, "Intent updated: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }
}

uint64_t sub_1DCB3BD10(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_207()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v3 + 128);
  v6 = *(v3 + 32);
  v5 = *(v3 + 40);

  return sub_1DCB17CA0(v3 + 88, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return type metadata accessor for AceOutput();
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return sub_1DD0DD8FC();
}

uint64_t sub_1DCB3BE6C(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DAF2C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return sub_1DCB4F1DC(a1, a2, v2, v3);
}

BOOL OUTLINED_FUNCTION_94_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return sub_1DD0DEDFC();
}

uint64_t OUTLINED_FUNCTION_94_3(uint64_t a1)
{
  *(v1 + 576) = a1;
}

void OUTLINED_FUNCTION_94_4()
{

  sub_1DCBB9980(v0);
}

void OUTLINED_FUNCTION_94_5()
{
  v2[12] = v1;
  v2[13] = v0;
  v2[14] = v3;
}

void OUTLINED_FUNCTION_94_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_94_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_99_1()
{

  return sub_1DD0DD8FC();
}

double OUTLINED_FUNCTION_99_2()
{
  v2 = *(v1 + 16);
  *(v1 + 16) = 3;
  v3 = *(v1 + 24);
  *(v1 + 24) = 3;
  sub_1DCD070F8(v2, v3);

  return static ExecuteResponse.ongoing(requireInput:)(1, v0);
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_175(uint64_t result)
{
  *(v1 + 104) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  return result;
}

void *OUTLINED_FUNCTION_175_0(void *result)
{
  result[2] = v1;
  result[3] = v4;
  result[4] = v3;
  result[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_93_2()
{
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);

  return sub_1DD0DEC1C();
}

uint64_t OUTLINED_FUNCTION_93_3(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

void OUTLINED_FUNCTION_93_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

id OUTLINED_FUNCTION_93_9(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_93_12()
{
  v4 = v2 + *(v1 + 52);

  return __swift_getEnumTagSinglePayload(v4, 1, v0);
}

uint64_t OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2)
{

  return sub_1DCB4F1DC(a1, a2, v2, v3);
}

BOOL OUTLINED_FUNCTION_95_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_95_3()
{

  return sub_1DD0DDE9C();
}

void OUTLINED_FUNCTION_95_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_95_10()
{

  return swift_beginAccess();
}

id sub_1DCB3C2E8(id result, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
      sub_1DD0DCF8C();
    case 1:
      sub_1DD0DCF8C();
    case 6:
      sub_1DD0DCF8C();
    case 7:

      result = sub_1DCB8E3C0(result, a2);
      break;
    case 8:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCB3C3FC()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 40))
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x74656C706D6F632ELL;
      break;
    case 8:
      result = 0x726F7272652ELL;
      break;
    case 9:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCB3C564(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1DCB3C5D0(a1, a2, a3);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v10 = *(v7 + 32);
  *(v7 + 32) = 0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3C5D0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1DCB3C628(a1, a2, a3);
  return v9;
}

uint64_t sub_1DCB3C628(uint64_t a1, uint64_t a2, __int128 *a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 104), a1);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v6 + 112));
  OUTLINED_FUNCTION_66();
  *(v3 + *(v7 + 120)) = a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -96;
  return v3;
}

void sub_1DCB3C730(void *a1, uint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:

      a1 = a2;

      goto LABEL_4;
    case 2:

      break;
    case 3:
      v3 = a3 & 0x1F;

      sub_1DCBB1310(a1, a2, v3);
      break;
    case 4:

LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB3C80C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB3C8F0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[32];

  sub_1DCB3C978(v3, type metadata accessor for ResolveConfirmProcessingResult);
  OUTLINED_FUNCTION_65_15();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCB3C978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void destroy for ResolveConfirmProcessingResult(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v6 = *(a1 + 16);

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
      v8 = (a1 + *(type metadata accessor for ParameterClause() + 20) + v7);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v9 = sub_1DD0DC76C();
          goto LABEL_17;
        case 1u:
          v23 = sub_1DD0DC76C();
          (*(*(v23 - 8) + 8))(v8, v23);
          v24 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
          goto LABEL_5;
        case 2u:
          v11 = *(v8 + 1);

          v12 = *(v8 + 2);
          goto LABEL_33;
        case 3u:
          v13 = *v8;

          swift_unknownObjectRelease();
          return;
        case 4u:
          v9 = sub_1DD0DB1EC();
          goto LABEL_17;
        case 5u:
          v5 = *v8;
          goto LABEL_9;
        case 6u:
          v25 = sub_1DD0DB4BC();
          (*(*(v25 - 8) + 8))(v8, v25);
          v26 = type metadata accessor for USOParse();
          v27 = *(v26 + 20);
          v28 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v8[v27], 1, v28))
          {
            (*(*(v28 - 8) + 8))(&v8[v27], v28);
          }

          v22 = *(v26 + 24);
          goto LABEL_32;
        case 7u:
          v14 = sub_1DD0DB4BC();
          (*(*(v14 - 8) + 8))(v8, v14);
          v15 = type metadata accessor for USOParse();
          v16 = *(v15 + 20);
          v17 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v8[v16], 1, v17))
          {
            (*(*(v17 - 8) + 8))(&v8[v16], v17);
          }

          v18 = *&v8[*(v15 + 24) + 8];

          v19 = type metadata accessor for LinkParse();
          v20 = *&v8[v19[5] + 8];

          v21 = *&v8[v19[6] + 8];

          v22 = v19[7];
LABEL_32:
          v29 = *&v8[v22 + 8];
LABEL_33:

          break;
        case 8u:
          v30 = sub_1DD0DD12C();
          (*(*(v30 - 8) + 8))(v8, v30);
          v31 = type metadata accessor for NLRouterParse();
          v32 = *&v8[v31[5] + 8];

          v33 = &v8[v31[6]];
          v34 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v33, 1, v34))
          {
            v35 = sub_1DD0DB4BC();
            (*(*(v35 - 8) + 8))(v33, v35);
            v36 = *(v34 + 20);
            v37 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v33 + v36, 1, v37))
            {
              (*(*(v37 - 8) + 8))(v33 + v36, v37);
            }

            v38 = *(v33 + *(v34 + 24) + 8);
          }

          v5 = *&v8[v31[7]];
          goto LABEL_9;
        case 9u:
          v9 = sub_1DD0DD08C();
LABEL_17:
          v10 = *(*(v9 - 8) + 8);

          v10(v8, v9);
          break;
        default:
          return;
      }

      break;
    case 1:

      v4 = *(a1 + 8);

      v5 = *(a1 + 16);
LABEL_9:

      break;
    case 0:

      v3 = *(a1 + 8);
LABEL_5:

      break;
  }
}

uint64_t sub_1DCB3CEF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB3CFD8()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  sub_1DCB0E9D8(v5, &qword_1ECCAABD0, &qword_1DD0EA240);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t AnnotatedIntent.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 96));

  return v0;
}

uint64_t AnnotatedIntent.__deallocating_deinit()
{
  AnnotatedIntent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ParameterResolutionResult.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t SiriKitIntentExecutionBehavior.__deallocating_deinit()
{
  SiriKitIntentExecutionBehavior.deinit();
  OUTLINED_FUNCTION_5_13();

  return swift_deallocClassInstance();
}

uint64_t SiriKitIntentExecutionBehavior.deinit()
{
  v1 = *(v0 + 56);
  sub_1DCB3D1F0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 72);

  v3 = *(v0 + 96);

  return v0;
}

void sub_1DCB3D1F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
  }
}

double static ExecuteResponse.complete()()
{
  v1 = OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for ExecuteResponse(v1);
  v3 = *(v2 + 36);
  v4 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(v0 + v3, v5, v6, v4);
  *v0 = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = -4;
  return OUTLINED_FUNCTION_26_15((v0 + *(v2 + 40)));
}

void sub_1DCB3D2C0()
{
  OUTLINED_FUNCTION_125();
  v22 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[11] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v5, v6, "Confirm routing pushing ConfirmIntentFlow.");
    OUTLINED_FUNCTION_62();
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];

  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v0[12] = *(v7 + 80);
  v15 = *(v8 + 80);
  v14 = *(v8 + 88);
  swift_getAssociatedTypeWitness();
  IntentResolutionRecord.init(app:intent:intentResponse:)(v12, v13, v9, v20);
  v16 = v20[0];
  v17 = v20[1];
  v0[13] = v20[0];
  v0[14] = v17;
  v18 = v21;
  v0[15] = v21;
  v19 = *(v10 + *(*v10 + 120));
  v0[2] = v16;
  v0[3] = v17;
  v0[4] = v18;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3D474()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB3D558(uint64_t a1)
{
  *(v2 + 384) = v1;
  *(v2 + 392) = *v1;
  *(v2 + 400) = *a1;
  *(v2 + 416) = *(a1 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB3D5A4()
{
  OUTLINED_FUNCTION_40_23(*(v0 + 384));
  OUTLINED_FUNCTION_24_28();
  if (!v1 && *(v0 + 96))
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 104);
    v19 = *(v0 + 400);
    v20 = *(v0 + 416);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(*(v0 + 384));
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    *(v0 + 424) = v5;
    *(v0 + 432) = v4;
    if (v5)
    {
      v6 = *(v0 + 416);
      v8 = *(v0 + 384);
      v7 = *(v0 + 392);
      v9 = swift_task_alloc();
      *(v0 + 440) = v9;
      v10 = *(v0 + 400);
      *(v9 + 16) = v5;
      *(v9 + 24) = v4;
      *(v9 + 32) = v8;
      *(v9 + 40) = v10;
      *(v9 + 56) = v6;
      v11 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_90_10(&dword_1DCAFC000, v15, v14, "No completion configured for ConfirmIntentFlow. Completing with nil");
    OUTLINED_FUNCTION_62();
  }

  v16 = OUTLINED_FUNCTION_129();

  return v17(v16);
}

uint64_t sub_1DCB3D80C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB3D8F8()
{
  v32 = v0;
  if (v0[17])
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];
    v4 = v0[8];
    v5 = v0[5];
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    *(v4 + 16) = v0[6];
    *(v4 + 24) = 0;
    v8 = *(v4 + 32);
    *(v4 + 32) = 64;
    sub_1DCB3C730(v6, v7, v8);
    sub_1DCF6E3B8();
  }

  v9 = v0[11];
  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v11))
  {
    v12 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v12);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v13, v14, "No ConfirmIntentFlow was provided. This will be treated as inferred confirmation. Proceeding to complete.");
    OUTLINED_FUNCTION_62();
  }

  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[8];
  v20 = v0[5];
  v21 = v0[6];

  v31 = 0;
  v22 = *(v21 + 24);
  ConfirmIntentAnswer.init(confirmationResponse:intent:)(&v31, v22, v29);
  v23 = v30;
  v24 = *(v19 + 16);
  v25 = *(v19 + 24);
  *(v19 + 16) = v29[0];
  *(v19 + 24) = v23;
  LOBYTE(v16) = *(v19 + 32);
  *(v19 + 32) = 96;
  v26 = v22;
  sub_1DCB3C730(v24, v25, v16);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v27();
}

uint64_t sub_1DCB3DA94()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = OUTLINED_FUNCTION_52_27();
  sub_1DCB150B8(v6, v7, v8, v9, v10, 0);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

_BYTE *ConfirmIntentAnswer.init(confirmationResponse:intent:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1DCB3DB1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB3DC00()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 33);

  sub_1DCB3C730(v1, v2, v3);
  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCB3DC80()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for SiriKitEventPayload(0);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_16();
  v15 = (v14 - v13);
  type metadata accessor for SiriKitEvent.SiriKitOverridesEventBuilder();
  OUTLINED_FUNCTION_136();
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = v16;
  if (v1)
  {
    v1(&v17);
  }

  *v15 = v7;
  v15[1] = v5;
  v15[2] = v3;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB3DD8C(uint64_t a1, void *a2)
{
  v5 = sub_1DD0DAFDC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriKitEventPayload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB22FCC(a1, v14);
  sub_1DD0DAFBC();
  sub_1DCB23AC0(a1, a2, v20);
  v19[0] = v20[0];
  v19[1] = v20[1];
  v19[2] = v20[2];
  v15 = *(v2 + 48);
  v16 = *(v2 + 52);
  swift_allocObject();
  v17 = sub_1DCB23C70(v14, v9, v19);

  sub_1DCB22AA4(a1);
  return v17;
}

id sub_1DCB3DEC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1DD0DAEFC();
    sub_1DCB2C520(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

void sub_1DCB3DF34()
{
  OUTLINED_FUNCTION_20_10();
  Flow.eraseToAnyFlow()();
  type metadata accessor for AnyChildCompletion();
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  sub_1DCB3DF34();
}

{
  sub_1DCB817D8();
}

uint64_t AnyChildCompletion.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_88_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_116();
  AnyChildCompletion.init<A>(_:)();
  return v0;
}

uint64_t OUTLINED_FUNCTION_75_2()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_75_3()
{

  return sub_1DCB0E9D8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_75_5@<X0>(void *a1@<X8>)
{
  result = a1[1];
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_11()
{
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[110];
  v5 = v0[108];
}

uint64_t OUTLINED_FUNCTION_75_14()
{
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
}

uint64_t OUTLINED_FUNCTION_75_16()
{
  v2 = v0[65];
  v3 = v0[62];
  v5 = v0[59];
  v4 = v0[60];
}

uint64_t OUTLINED_FUNCTION_75_17()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  return swift_task_alloc();
}

uint64_t sub_1DCB3E244(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ExecuteResponse.retriggerNL.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecuteResponse(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = OUTLINED_FUNCTION_33_1();
  sub_1DCB3E244(v6, v7);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t destroy for ExecuteResponse(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 24);

  v6 = *(a1 + 48);
  if (v6 <= 0xFB)
  {
    sub_1DCD21390(*(a1 + 32), *(a1 + 40), v6);
  }

  v7 = a1 + *(a2 + 36);
  v8 = type metadata accessor for PluginAction();
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = *(v7 + 8);

    v10 = v7 + v8[5];
    v11 = sub_1DD0DB04C();
    v12 = *(*(v11 - 8) + 8);
    v12(v10, v11);
    v13 = type metadata accessor for Input(0);
    v14 = v10 + v13[5];
    type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_1DD0DC76C();
        goto LABEL_8;
      case 1u:
        v27 = sub_1DD0DC76C();
        (*(*(v27 - 8) + 8))(v14, v27);
        v28 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

        break;
      case 2u:
        v16 = *(v14 + 8);

        v17 = *(v14 + 16);

        break;
      case 3u:
        v18 = *v14;
        swift_unknownObjectRelease();
        break;
      case 4u:
        v15 = sub_1DD0DB1EC();
        goto LABEL_8;
      case 5u:

        break;
      case 6u:
        v61 = v12;
        v29 = sub_1DD0DB4BC();
        (*(*(v29 - 8) + 8))(v14, v29);
        v59 = type metadata accessor for USOParse();
        v30 = *(v59 + 20);
        v31 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v14 + v30, 1, v31))
        {
          (*(*(v31 - 8) + 8))(v14 + v30, v31);
        }

        v26 = *(v59 + 24);
        goto LABEL_19;
      case 7u:
        v61 = v12;
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 8))(v14, v19);
        v58 = type metadata accessor for USOParse();
        v20 = *(v58 + 20);
        v21 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v14 + v20, 1, v21))
        {
          (*(*(v21 - 8) + 8))(v14 + v20, v21);
        }

        v22 = *(v14 + *(v58 + 24) + 8);

        v23 = type metadata accessor for LinkParse();
        v24 = *(v14 + v23[5] + 8);

        v25 = *(v14 + v23[6] + 8);

        v26 = v23[7];
LABEL_19:
        v32 = *(v14 + v26 + 8);

        goto LABEL_25;
      case 8u:
        v61 = v12;
        v33 = sub_1DD0DD12C();
        (*(*(v33 - 8) + 8))(v14, v33);
        v34 = type metadata accessor for NLRouterParse();
        v35 = *(v14 + v34[5] + 8);

        v36 = v14 + v34[6];
        v60 = type metadata accessor for USOParse();
        if (!__swift_getEnumTagSinglePayload(v36, 1, v60))
        {
          v37 = sub_1DD0DB4BC();
          (*(*(v37 - 8) + 8))(v36, v37);
          v57 = *(v60 + 20);
          v56 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v36 + v57, 1, v56))
          {
            (*(*(v56 - 8) + 8))(v36 + v57);
          }

          v38 = *(v36 + *(v60 + 24) + 8);
        }

LABEL_25:
        v12 = v61;
        break;
      case 9u:
        v15 = sub_1DD0DD08C();
LABEL_8:
        (*(*(v15 - 8) + 8))(v14, v15);
        break;
      default:
        break;
    }

    v39 = *(v10 + v13[6]);

    v40 = (v10 + v13[7]);
    if (v40[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    v41 = *(v7 + v8[6]);

    v42 = *(v7 + v8[8] + 8);

    v43 = v7 + v8[9];
    v44 = type metadata accessor for ActionParaphrase(0);
    if (!__swift_getEnumTagSinglePayload(v43, 1, v44))
    {
      v45 = *(v43 + 8);

      v46 = v43 + *(v44 + 20);
      v47 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (!__swift_getEnumTagSinglePayload(v46, 1, v47))
      {
        v48 = *(v46 + 8);

        v49 = *(v46 + 24);

        v50 = *(v47 + 24);
        v51 = sub_1DD0DB66C();
        (*(*(v51 - 8) + 8))(v46 + v50, v51);
      }
    }

    v52 = v8[10];
    if (!__swift_getEnumTagSinglePayload(v7 + v52, 1, v11))
    {
      v12(v7 + v52, v11);
    }
  }

  v53 = a1 + *(a2 + 40);
  result = *(v53 + 8);
  if (result)
  {

    v55 = *(v53 + 24);
  }

  return result;
}

void initializeWithCopy for ExecuteResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v2 = *(a2 + 48);
  sub_1DD0DCF8C();
}

uint64_t type metadata accessor for PluginAction()
{
  result = qword_1EDE4EB78;
  if (!qword_1EDE4EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB3F5F8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Input(0);
    v9 = OUTLINED_FUNCTION_11_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      v14 = OUTLINED_FUNCTION_11_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        v12 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1DCB3F72C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCB3F7C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_54_9();
    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD0, &qword_1DD0EDF38);
    v8 = OUTLINED_FUNCTION_59_2(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

uint64_t sub_1DCB3F870(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Input(0);
    v9 = OUTLINED_FUNCTION_11_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
      v14 = OUTLINED_FUNCTION_11_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
        v12 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DCB3F98C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCB3FA6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB3FB64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47_3();

  return v0();
}

uint64_t sub_1DCB3FBB8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *(v2 + 704);
  *v4 = *v1;
  *(v3 + 712) = v0;

  v6 = *(v2 + 680);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCB3FCE4()
{
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_23_5();
  v7 = (v0 + *v0);
  v1 = v0[1];
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_10(v3);

  return v7(v5);
}

uint64_t sub_1DCB3FDDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 176) = v0;

  if (v0)
  {
    v9 = sub_1DCE20D60;
  }

  else
  {
    v9 = sub_1DCB3FEDC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCB3FEDC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v2 = v0[20];
  sub_1DCB0E9D8((v0 + 2), &qword_1ECCA79F8, &qword_1DD0FA160);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCB3FF64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_29();

  return v2();
}

void OUTLINED_FUNCTION_34_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

id OUTLINED_FUNCTION_34_7(uint64_t *a1)
{

  return sub_1DCC1EF18(a1, v1);
}

uint64_t OUTLINED_FUNCTION_34_9(unint64_t *a1)
{

  return sub_1DCC5DEBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_34_12()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_34_13@<X0>(char a1@<W8>)
{
  *(v1 + 168) = a1;
  result = v1 + 11;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_34_15(uint64_t a1@<X8>)
{
  v5 = (v3 + a1);
  v6 = v5[1];
  v7 = v5[2];
  v2[7] = *v5;
  v2[8] = v6;
  v2[9] = v7;
  v8 = *(v1 + 224);
  v9 = *(*(v1 + 232) + 16);

  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_34_17()
{
  v4 = *(v3 - 176);
  *(v3 - 120) = v0;
  *(v3 - 112) = v4;
  *(v3 - 104) = v1;
  *(v3 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_34_18()
{

  return sub_1DD0DEEBC();
}

uint64_t OUTLINED_FUNCTION_34_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

void OUTLINED_FUNCTION_34_21()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_34_22()
{
  v2 = (*(v0 + 80) + 16) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return v2 + 16;
}

__n128 OUTLINED_FUNCTION_34_25(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = v3;
  v5 = a2[1];
  *(v4 + 72) = *a2;
  *(v4 + 88) = v5;
  *(v4 + 97) = *(a2 + 25);
  v6 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v6;
  result = *(a3 + 32);
  *(v4 + 48) = result;
  *(v4 + 64) = *(a3 + 48);
  return result;
}

void OUTLINED_FUNCTION_34_27(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a1[6] = v18;
  a1[7] = v19;
  a1[8] = a18;
  a1[9] = v20;
  a1[10] = v21;
  a1[11] = v22;
  a1[12] = v23;
  a1[13] = a17;
}

uint64_t OUTLINED_FUNCTION_34_28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_34_29()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 3, v0);
}

void OUTLINED_FUNCTION_34_30(char a1@<W8>)
{
  *v1 = a1;
  *(v1 + 8) = 0x54746E6572727543;
  *(v1 + 16) = 0xEB000000006B7361;
}

uint64_t OUTLINED_FUNCTION_34_31(uint64_t a1)
{
  *(v1 + 488) = a1;
  v3 = *(v2 + 80);
  return 0;
}

uint64_t OUTLINED_FUNCTION_34_34()
{

  return swift_once();
}

id OUTLINED_FUNCTION_34_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1DCF352A0(va);
}

uint64_t OUTLINED_FUNCTION_34_36()
{

  return sub_1DCAFF9E8((v0 + 136), v0 + 96);
}

uint64_t OUTLINED_FUNCTION_34_37()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 1, 1, v1);
}

void OUTLINED_FUNCTION_34_38()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_34_42()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_43@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  v5 = v4[1];
  *(v2 - 120) = *v4;
  *(v2 - 112) = v5;
}

__n128 OUTLINED_FUNCTION_34_45()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  return result;
}

double sub_1DCB404E0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_47_10(v4);
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  return OUTLINED_FUNCTION_10_32();
}

uint64_t sub_1DCB4053C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[12];
  v8 = v5[11];
  v9 = v5[10];
  v10 = *v1;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  *(v3 + 120) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    v12 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCB406A0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[12];
  v2 = v0[9];
  sub_1DCB40710(v0[3], v0[4], v0[5]);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t initializeWithCopy for TemplatingSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);

  if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v8 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v8;
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  *(a1 + 80) = *(a2 + 80);
  v10 = *(a2 + 96);
  if (v10)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v10;
    v11 = *(a2 + 112);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = v11;
  }

  else
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  v12 = *(a2 + 128);
  if (v12)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = v12;
    v13 = *(a2 + 144);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
  }

  v14 = *(a2 + 160);
  if (v14)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v14;
    v15 = *(a2 + 176);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = v15;
  }

  else
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
  }

  v16 = *(a2 + 192);
  if (v16)
  {
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v16;
    v17 = *(a2 + 208);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = v17;
  }

  else
  {
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
  }

  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t destroy for TemplatingSection(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  if (a1[7])
  {

    v5 = a1[9];
  }

  if (a1[12])
  {

    v6 = a1[14];
  }

  if (a1[16])
  {

    v7 = a1[18];
  }

  if (a1[20])
  {

    v8 = a1[22];
  }

  result = a1[24];
  if (result)
  {

    v10 = a1[26];
  }

  return result;
}

uint64_t TemplatingText.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCB40994(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DCB409A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t destroy for TemplatingText(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t sub_1DCB40A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemplatingText(uint64_t a1, int a2)
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

uint64_t destroy for TemplatingResult(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];

  v6 = a1[5];

  if (a1[7] >= 3uLL)
  {
  }

  v7 = a1[8];
}

uint64_t sub_1DCB40AF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_1DCE20C70;
  }

  else
  {
    v9 = sub_1DCB40BF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCB40BF4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  (*(v0 + 32))(0, 0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCB40C58(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8) + 80);

  return sub_1DCB40CD4(a1);
}

uint64_t sub_1DCB40CD4(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  sub_1DCB246E8(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCB40D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  v31 = a2;
  DynamicType = swift_getDynamicType();
  v32 = a3;
  v33 = DynamicType;
  swift_getMetatypeMetadata();
  v14 = sub_1DD0DE02C();
  v16 = v15;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);

  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = a4;
    v22 = v21;
    v33 = v21;
    *v20 = 136315138;
    v23 = sub_1DCB10E9C(v14, v16, &v33);

    *(v20 + 4) = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v24 = v22;
    a4 = v29;
    MEMORY[0x1E12A8390](v24, -1, -1);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  else
  {
  }

  (*(v8 + 16))(v12, v30, v7);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v12, v7);
  (*(a4 + 32))(sub_1DCB40C58, v26, v32, a4);
}

uint64_t sub_1DCB4105C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB410E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCB4130C(uint64_t a1)
{
  if (*(a1 + 72) <= 2u)
  {
    return *(a1 + 72);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DCB4132C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB41510();
}

uint64_t sub_1DCB413DC()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 720);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v2[91] = v0;

  if (v0)
  {
    memcpy(v2 + 42, v2 + 22, 0x49uLL);
    sub_1DCB431E0((v2 + 42));
  }

  else
  {
    memcpy(v2 + 52, v2 + 22, 0x49uLL);
    sub_1DCB431E0((v2 + 52));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCB41510()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  memcpy(v1 + 2, v3, 0x49uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DCB411DC, 0, 0);
}

uint64_t sub_1DCB4159C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v7 + 128) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD3A35C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1DCB416D8()
{
  v1 = OUTLINED_FUNCTION_18_5();
  v2(v1);
  OUTLINED_FUNCTION_0_7();
  sub_1DCB42D14(v0, v3);
  OUTLINED_FUNCTION_9_6();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCB417A0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCB418CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a4())
  {
    OUTLINED_FUNCTION_27_14();
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    oslog = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_44_8(&dword_1DCAFC000, v8, v9, v10, v11, v12, v13, v14, v15, oslog);
      OUTLINED_FUNCTION_62();
    }
  }
}

uint64_t sub_1DCB41998()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = OUTLINED_FUNCTION_45_7();
  sub_1DCB099BC(v6, v7, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_169();
    v12 = sub_1DCB41A90(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  sub_1DCB0E9D8(v0, &qword_1ECCA2618, &unk_1DD0E5C50);
  return v12;
}

uint64_t sub_1DCB41A90(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v31 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E69CEA50]) init];
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69CEA58]) init];
  if (!v21)
  {

LABEL_9:
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57DA0);
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DCAFC000, v27, v28, "[ConversationSELFHelper] Failed to create context SELF objects", v29, 2u);
      MEMORY[0x1E12A8390](v29, -1, -1);
    }

    return 0;
  }

  v22 = v21;
  [v21 setEagerStatus_];
  result = sub_1DCB41DFC();
  if (v24)
  {
LABEL_6:
    [v20 setEnded_];
    sub_1DCB099BC(a2, v18, &qword_1ECCA2618, &unk_1DD0E5C50);
    if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
    {
      v25 = 0;
    }

    else
    {
      (*(v5 + 32))(v13, v18, v4);
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v5 + 16))(v10, v13, v4);
      v25 = sub_1DCB0DEDC(v10);
      (*(v5 + 8))(v13, v4);
    }

    [v20 setHypothesisId_];

    [a1 setIntentFinalExecutionContext_];
    v30 = a1;
    return a1;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    [v22 setMaxRss_];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB41DFC()
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(&v6, 0x90uLL);
  if (getrusage(0, &v6))
  {
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v0 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v0, qword_1EDE57DA0);
    v1 = sub_1DD0DD8EC();
    v2 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DCAFC000, v1, v2, "[ConversationSELFHelper] Could not get maxrss; getrusage indicated error", v3, 2u);
      MEMORY[0x1E12A8390](v3, -1, -1);
    }

    result = 0;
  }

  else
  {
    result = v6.ru_maxrss;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DCB41F98(uint64_t a1)
{
  v2 = type metadata accessor for NLContextUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB41FF4(unint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, void, unint64_t))
{
  v7 = sub_1DCB09A70(a1);
  v8 = sub_1DCB09A70(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  a2(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DCB420B8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DD0DEB3C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DD0DEC7C();
  *v1 = result;
  return result;
}

void sub_1DCB42158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void *, uint64_t, void, uint64_t))
{
  OUTLINED_FUNCTION_50();
  v71 = v27;
  v72 = v28;
  v74 = v29;
  LODWORD(v73) = v30;
  v70 = v31;
  OUTLINED_FUNCTION_102_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v33 = OUTLINED_FUNCTION_20_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_37_6();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v69 - v41;
  memcpy(v80, v25, 0x48uLL);
  type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_41_2();
  v43 = swift_allocObject();
  *(v43 + 16) = v22;
  memcpy(v77, v25, 0x48uLL);
  v44 = v73;
  v73 = v43;
  v45 = a21(v77, v23, v70, v44);
  sub_1DCB4F1DC(v71, v42, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB4F1DC(v72, v79, &unk_1ECCA3280, &unk_1DD0E23D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v46 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_67_2(v46, xmmword_1DD0E15D0);
  v78 = MEMORY[0x1E69E7CC0];
  v47 = v42;
  sub_1DCB4F1DC(v42, v26, &unk_1ECCA3270, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_10(v26);
  if (v48)
  {
    v50 = v45;
    v49 = v45;
    sub_1DCB16D50(v26, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v77[0] = 0;
    v50 = v45;
    v51 = v45;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v77);
    v52 = sub_1DCB41F98(v26);
    MEMORY[0x1E12A6920](v52);
    OUTLINED_FUNCTION_30_6();
    if (*(v53 + 16) >= *(v53 + 24) >> 1)
    {
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_100_1();
    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v47, v24, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_7_10(v24);
  if (v48)
  {
    sub_1DCB16D50(v24, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v54 = OUTLINED_FUNCTION_88_3();
    v55 = sub_1DCB41F98(v54);
    MEMORY[0x1E12A6920](v55);
    OUTLINED_FUNCTION_20_6(v78);
    if (v56)
    {
      OUTLINED_FUNCTION_91();
    }

    OUTLINED_FUNCTION_54_3();
    sub_1DD0DE3AC();
  }

  sub_1DCB41FF4(v46, sub_1DCB420B0, sub_1DCF77950);

  OUTLINED_FUNCTION_114(v57);

  v58 = OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_32_0(v58);
  sub_1DCBB6C68(v47, v21 + v59);
  v60 = OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_8_10(v60);
  v61 = *MEMORY[0x1E69D0678];
  v62 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v62);
  v64 = *(v63 + 104);
  v65 = OUTLINED_FUNCTION_53();
  v66(v65);
  OUTLINED_FUNCTION_3_11();
  sub_1DCB6C5E8(v79, v67);
  OUTLINED_FUNCTION_48_3();
  *v21 = v47;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_58_2(v76);
  OUTLINED_FUNCTION_73_5(v77);
  sub_1DCBBF670(v80, &v75);
  v68 = sub_1DCB431E0(v77);
  OUTLINED_FUNCTION_72_0(v68, v76);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB42504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DCB193FC;

  return sub_1DCB425D8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_1DCB425D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return OUTLINED_FUNCTION_0_12(sub_1DCB425F4);
}

uint64_t sub_1DCB425F4()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "#LegacySiriKitOutputPublisher: deprecated implementation being used; please use SiriKitOutputPublisher instead");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[2];

  v8 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v9 = *(v8 + 8);
  OUTLINED_FUNCTION_25_1();
  v16 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1DCB40AF4;
  v14 = OUTLINED_FUNCTION_19_33(v0[3]);

  return v16(v14);
}

id sub_1DCB42788(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  if (a10 == 2)
  {
LABEL_5:
  }

  if (a10 != 1)
  {
    if (a10)
    {
      return result;
    }

    sub_1DCB40994(a7, a8);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1DCB428E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v26 - v10;
  if (!*a1)
  {
    v27 = v9;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = __swift_project_value_buffer(v14, qword_1EDE57E00);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v11, v15, v14);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    v17 = v11;
    v18 = v27;
    sub_1DCBCF6C8(v17, v27);
    if (__swift_getEnumTagSinglePayload(v18, 1, v14) == 1)
    {
      sub_1DCBCF738(v27);
    }

    else
    {
      v19 = sub_1DD0DD8EC();
      v20 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v28 = v22;
        *v21 = 136315650;
        v23 = sub_1DD0DEC3C();
        v25 = sub_1DCB10E9C(v23, v24, &v28);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2048;
        *(v21 + 14) = 52;
        *(v21 + 22) = 2080;
        *(v21 + 24) = sub_1DCB10E9C(0xD0000000000000DBLL, 0x80000001DD11A590, &v28);
        _os_log_impl(&dword_1DCAFC000, v19, v20, "FatalError at %s:%lu - %s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v22, -1, -1);
        MEMORY[0x1E12A8390](v21, -1, -1);
      }

      (*(v16 + 8))(v27, v14);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000DBLL, 0x80000001DD11A590);
  }

  v12 = a1[1];
  *a2 = *a1;
  a2[1] = v12;
  return swift_unknownObjectRetain();
}

void sub_1DCB42C24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  if (a10 == 2)
  {
LABEL_5:

    return;
  }

  if (a10 != 1)
  {
    if (a10)
    {
      return;
    }

    sub_1DCB409A8(a7, a8);
    goto LABEL_5;
  }
}

uint64_t sub_1DCB42D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB42D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB42DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB42E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t destroy for AceOutput(uint64_t *a1, int *a2)
{
  v4 = *a1;

  sub_1DCB42C24(a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], *(a1 + 80));
  if (a1[14])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 11);
  }

  v5 = a1 + a2[7];
  v6 = type metadata accessor for NLContextUpdate();
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = *(v5 + 8);

    v8 = *(v5 + 16);

    v9 = *(v5 + 24);

    v10 = *(v5 + 40);

    v11 = *(v5 + 48);

    v12 = *(v5 + 56);

    v13 = *(v5 + 80);

    v14 = *(v5 + 96);

    v15 = *(v5 + 104);

    v16 = *(v5 + 120);

    v17 = *(v5 + 152);

    v18 = *(v5 + 160);

    v19 = *(v5 + 168);

    v20 = *(v5 + 192);

    v21 = *(v5 + 208);

    v22 = *(v5 + 216);

    v23 = *(v5 + 224);

    v24 = *(v5 + 232);

    v25 = *(v5 + 240);

    if (*(v5 + 256))
    {

      v26 = *(v5 + 264);
    }

    v27 = *(v5 + 280);

    v28 = *(v6 + 128);
    v29 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(v5 + v28, 1, v29))
    {
      (*(*(v29 - 8) + 8))(v5 + v28, v29);
    }

    v30 = *(v5 + *(v6 + 140) + 8);
  }

  v31 = a2[8];
  v32 = sub_1DD0DD15C();
  (*(*(v32 - 8) + 8))(a1 + v31, v32);
  v33 = a2[9];
  v34 = sub_1DD0DD10C();
  result = __swift_getEnumTagSinglePayload(a1 + v33, 1, v34);
  if (!result)
  {
    v36 = *(*(v34 - 8) + 8);

    return v36(a1 + v33, v34);
  }

  return result;
}

uint64_t initializeWithCopy for DialogEngineOutput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_1DCB42788(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return a1;
}

uint64_t sub_1DCB43248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    v10 = a1 + *(a3 + 128);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void OUTLINED_FUNCTION_42_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_42_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 912) = v1;
  *(v2 + 880) = a1;

  return type metadata accessor for SiriKitDefaultPresentationElementsProvider();
}

void OUTLINED_FUNCTION_42_8(void *a1)
{

  sub_1DCC65C8C(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return sub_1DD0DE02C();
}

id OUTLINED_FUNCTION_42_10(float a1)
{
  *v3 = a1;
  *(v2 + 80) = v1;

  return v1;
}

id OUTLINED_FUNCTION_42_11(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_42_12()
{
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
}

uint64_t OUTLINED_FUNCTION_42_13()
{
  v2 = *(v0 + 288);

  return sub_1DCD0ED08(v2, type metadata accessor for AceOutput);
}

void OUTLINED_FUNCTION_42_16()
{

  JUMPOUT(0x1E12A6780);
}

__n128 OUTLINED_FUNCTION_42_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(a1 + 16) = v10;
  result = a9;
  *(a1 + 24) = a9;
  *(a1 + 40) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void OUTLINED_FUNCTION_23_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_19()
{
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_42_20(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v5;
  a2[6] = v8;
  return v4;
}

uint64_t OUTLINED_FUNCTION_42_21()
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  *(v1 + 256) = *(v2 + 40);
  *v0 = v3;
  *(v0 + 8) = v4;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 48) = v8;
  *(v0 + 56) = *(v1 + 256);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_42_22(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 + 272));
}

uint64_t OUTLINED_FUNCTION_42_23()
{

  return sub_1DD0DE0FC();
}

uint64_t OUTLINED_FUNCTION_42_25()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_26(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *v2 = a1;
  *(v2 + 8) = 256;
  return v3;
}

uint64_t OUTLINED_FUNCTION_42_30()
{

  return type metadata accessor for PromptResult();
}

uint64_t OUTLINED_FUNCTION_42_31()
{
  v4 = *(v2 + 160);

  return sub_1DCB16D50(v2 + 136, v1, v0);
}

_OWORD *OUTLINED_FUNCTION_42_33()
{

  return sub_1DCB20B30(v0, v0 + 2);
}

void OUTLINED_FUNCTION_42_37(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a2);

  sub_1DD0DCF8C();
}

uint64_t type metadata accessor for AceOutput()
{
  result = qword_1EDE46580;
  if (!qword_1EDE46580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB43704()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DCE21B5C;
  }

  else
  {
    v3 = sub_1DCB43818;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCB43818()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[18];
  v2 = v0[19] + 1;
  v0[19] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_29();

    return v3();
  }

  else
  {
    sub_1DCB17CA0(v0[17] + 40 * v2 + 32, (v0 + 2));
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_12_4();
    v12 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_0_73();

    return v11(v10);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for AceOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v57 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);

  sub_1DCB42788(v5, v6, v7, v8, v9, v10, v57, v11, v12, v13);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v14 = a2;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v57;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  v15 = *(a2 + 112);
  if (v15)
  {
    v16 = *(a2 + 120);
    *(a1 + 112) = v15;
    *(a1 + 120) = v16;
    (**(v15 - 8))(a1 + 88, a2 + 88);
  }

  else
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
  }

  v17 = a3;
  v18 = a3[7];
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v19, v20, *(*(v22 - 8) + 64));
  }

  else
  {
    *v19 = *v20;
    v23 = *(v20 + 2);
    *(v19 + 1) = *(v20 + 1);
    *(v19 + 2) = v23;
    v24 = *(v20 + 4);
    v25 = *(v20 + 5);
    *(v19 + 3) = *(v20 + 3);
    *(v19 + 4) = v24;
    v27 = *(v20 + 7);
    v26 = *(v20 + 6);
    *(v19 + 5) = v25;
    *(v19 + 6) = v26;
    v28 = *(v20 + 8);
    v19[72] = v20[72];
    *(v19 + 7) = v27;
    *(v19 + 8) = v28;
    v29 = *(v20 + 11);
    *(v19 + 10) = *(v20 + 10);
    *(v19 + 11) = v29;
    v55 = *(v20 + 13);
    *(v19 + 12) = *(v20 + 12);
    *(v19 + 13) = v55;
    v30 = *(v20 + 15);
    *(v19 + 14) = *(v20 + 14);
    *(v19 + 15) = v30;
    v31 = *(v20 + 16);
    *(v19 + 16) = v31;
    v19[136] = v20[136];
    v32 = *(v20 + 19);
    v56 = *(v20 + 18);
    *(v19 + 18) = v56;
    *(v19 + 19) = v32;
    v33 = *(v20 + 21);
    *(v19 + 20) = *(v20 + 20);
    *(v19 + 21) = v33;
    v19[176] = v20[176];
    v34 = *(v20 + 24);
    *(v19 + 23) = *(v20 + 23);
    *(v19 + 24) = v34;
    v19[200] = v20[200];
    v35 = *(v20 + 27);
    *(v19 + 26) = *(v20 + 26);
    *(v19 + 27) = v35;
    v36 = *(v20 + 30);
    v37 = *(v20 + 29);
    *(v19 + 28) = *(v20 + 28);
    *(v19 + 29) = v37;
    *(v19 + 30) = v36;
    v38 = *(v20 + 32);

    v39 = v31;
    v40 = v56;

    if (v38)
    {
      *(v19 + 31) = *(v20 + 31);
      *(v19 + 32) = v38;
      *(v19 + 33) = *(v20 + 33);
    }

    else
    {
      *(v19 + 248) = *(v20 + 248);
      *(v19 + 33) = *(v20 + 33);
    }

    v41 = *(v20 + 35);
    *(v19 + 34) = *(v20 + 34);
    *(v19 + 35) = v41;
    v42 = v21[32];
    v43 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(&v20[v42], 1, v43))
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&v19[v42], &v20[v42], *(*(v44 - 8) + 64));
    }

    else
    {
      (*(*(v43 - 8) + 16))(&v19[v42], &v20[v42], v43);
      __swift_storeEnumTagSinglePayload(&v19[v42], 0, 1, v43);
    }

    v14 = a2;
    v19[v21[33]] = v20[v21[33]];
    v19[v21[34]] = v20[v21[34]];
    v45 = v21[35];
    v46 = &v19[v45];
    v47 = &v20[v45];
    v48 = v47[1];
    *v46 = *v47;
    v46[1] = v48;

    __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
    v17 = a3;
  }

  v49 = v17[8];
  v50 = sub_1DD0DD15C();
  (*(*(v50 - 8) + 16))(a1 + v49, v14 + v49, v50);
  v51 = v17[9];
  v52 = sub_1DD0DD10C();
  if (__swift_getEnumTagSinglePayload(v14 + v51, 1, v52))
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy((a1 + v51), (v14 + v51), *(*(v53 - 8) + 64));
  }

  else
  {
    (*(*(v52 - 8) + 16))(a1 + v51, v14 + v51, v52);
    __swift_storeEnumTagSinglePayload(a1 + v51, 0, 1, v52);
  }

  *(a1 + v17[10]) = *(v14 + v17[10]);
  return a1;
}

uint64_t sub_1DCB43F10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    v8 = v5 + *(a4 + 128);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB44520()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB4465C, 0, 0);
}

uint64_t sub_1DCB445C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB44520();
}

uint64_t sub_1DCB4465C()
{
  v23 = v0;
  v1 = *(v0 + 136);
  v2 = *(*(v0 + 144) + 16);
  *(swift_task_alloc() + 16) = v1;
  sub_1DCB44A98(sub_1DCB44BB8, v2, v0 + 16);

  sub_1DCB09910(v0 + 16, v0 + 96, &qword_1ECCA79F8, &qword_1DD0FA160);
  if (!*(v0 + 120))
  {
    sub_1DCB0E9D8(v0 + 96, &qword_1ECCA79F8, &qword_1DD0FA160);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = sub_1DD0DD8FC();
    v12 = __swift_project_value_buffer(v11, qword_1EDE57E00);
    v13 = *(v11 - 8);
    (*(v13 + 16))(v9, v12, v11);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    sub_1DCB09910(v9, v10, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1DCB0E9D8(*(v0 + 152), &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v14 = *(v0 + 152);
      v15 = sub_1DD0DD8EC();
      v16 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_83();
        v22[0] = swift_slowAlloc();
        *v17 = 136315650;
        v18 = sub_1DD0DEC3C();
        v20 = sub_1DCB10E9C(v18, v19, v22);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2048;
        *(v17 + 14) = 106;
        *(v17 + 22) = 2080;
        *(v17 + 24) = sub_1DCB10E9C(0xD000000000000023, 0x80000001DD11F140, v22);
        _os_log_impl(&dword_1DCAFC000, v15, v16, "FatalError at %s:%lu - %s", v17, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_62();
      }

      (*(v13 + 8))(*(v0 + 152), v11);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000023, 0x80000001DD11F140);
  }

  sub_1DCAFF9E8((v0 + 96), v0 + 56);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v4 = *(v3 + 16);
  v21 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1DCB3FDDC;
  v7 = OUTLINED_FUNCTION_19_33(*(v0 + 136));

  return v21(v7);
}

uint64_t sub_1DCB44A98@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1DCB17CA0(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      if (v8)
      {
        return sub_1DCAFF9E8(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DCB44B50(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

uint64_t sub_1DCB44BD8(uint64_t a1)
{
  v3 = type metadata accessor for AceOutput();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DCB17CA0(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  v10 = swift_dynamicCast();
  if (v10)
  {
    OUTLINED_FUNCTION_0_7();
    sub_1DCB42D14(v9, v11);
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v10) = (*(v13 + 24))(ObjectType, v13);
  }

  return v10 & 1;
}

uint64_t sub_1DCB44CE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB3FF64;

  return sub_1DCB44D84(a1, v4);
}

uint64_t sub_1DCB44D84(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB44DA4, 0, 0);
}

uint64_t sub_1DCB44DA4()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v0[18] = v2;
  v0[19] = 0;
  if (v2)
  {
    sub_1DCB17CA0(v1 + 32, (v0 + 2));
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_12_4();
    v12 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_0_73(v7);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DCB44EDC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB44F74();
}

uint64_t sub_1DCB44F74()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCE3F80;

  return sub_1DCB45004();
}

uint64_t sub_1DCB45004()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0) - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_38();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for AceOutput();
  v1[16] = v5;
  OUTLINED_FUNCTION_99(v5);
  v1[17] = v6;
  v1[18] = *(v7 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50) - 8) + 64);
  v1[21] = OUTLINED_FUNCTION_38();
  v9 = sub_1DD0DB04C();
  v1[22] = v9;
  OUTLINED_FUNCTION_99(v9);
  v1[23] = v10;
  v12 = *(v11 + 64);
  v1[24] = OUTLINED_FUNCTION_38();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1DCB451A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42D0, &qword_1DD0EB878);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t initializeWithCopy for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  v9 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v9;
  *(a1 + 64) = v8;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  v11 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;
  v12 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v12;
  v31 = *(a2 + 128);
  *(a1 + 128) = v31;
  *(a1 + 136) = *(a2 + 136);
  v13 = *(a2 + 152);
  v30 = *(a2 + 144);
  *(a1 + 144) = v30;
  *(a1 + 152) = v13;
  v14 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v14;
  *(a1 + 176) = *(a2 + 176);
  v15 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v15;
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 232);
  v32 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v17;
  *(a1 + 240) = v32;
  v33 = *(a2 + 256);

  v18 = v31;
  v19 = v30;

  if (v33)
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v33;
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
  }

  v20 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v20;
  v21 = a3[32];
  v22 = sub_1DD0DD72C();

  if (__swift_getEnumTagSinglePayload(a2 + v21, 1, v22))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v21), (a2 + v21), *(*(v23 - 8) + 64));
  }

  else
  {
    (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
    __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v22);
  }

  v24 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[35];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;

  return a1;
}

uint64_t sub_1DCB4554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void *sub_1DCB455C0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    v9 = OUTLINED_FUNCTION_11_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = sub_1DD0DD15C();
      v14 = OUTLINED_FUNCTION_11_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
        v12 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t initializeWithCopy for AceOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v54 = *(a2 + 64);
  v55 = *(a2 + 16);
  v12 = *(a2 + 80);

  sub_1DCB42788(v5, v55, v6, v7, v8, v9, v10, v54, v11, v12);
  *(a1 + 8) = v5;
  *(a1 + 16) = v55;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v13 = a2;
  *(a1 + 56) = v10;
  *(a1 + 64) = v54;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  v14 = *(a2 + 112);
  if (v14)
  {
    v15 = *(a2 + 120);
    *(a1 + 112) = v14;
    *(a1 + 120) = v15;
    (**(v14 - 8))(a1 + 88, a2 + 88);
  }

  else
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
  }

  v16 = a3;
  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v18, v19, *(*(v21 - 8) + 64));
  }

  else
  {
    v57 = a2;
    *v18 = *v19;
    v22 = *(v19 + 2);
    *(v18 + 1) = *(v19 + 1);
    *(v18 + 2) = v22;
    v23 = *(v19 + 4);
    *(v18 + 3) = *(v19 + 3);
    *(v18 + 4) = v23;
    v24 = *(v19 + 6);
    *(v18 + 5) = *(v19 + 5);
    *(v18 + 6) = v24;
    v25 = *(v19 + 8);
    v51 = *(v19 + 7);
    v18[72] = v19[72];
    *(v18 + 7) = v51;
    *(v18 + 8) = v25;
    v26 = *(v19 + 11);
    *(v18 + 10) = *(v19 + 10);
    *(v18 + 11) = v26;
    v27 = *(v19 + 13);
    *(v18 + 12) = *(v19 + 12);
    *(v18 + 13) = v27;
    v28 = *(v19 + 15);
    *(v18 + 14) = *(v19 + 14);
    *(v18 + 15) = v28;
    v53 = *(v19 + 16);
    *(v18 + 16) = v53;
    v18[136] = v19[136];
    v29 = *(v19 + 19);
    v52 = *(v19 + 18);
    *(v18 + 18) = v52;
    *(v18 + 19) = v29;
    v30 = *(v19 + 21);
    *(v18 + 20) = *(v19 + 20);
    *(v18 + 21) = v30;
    v18[176] = v19[176];
    v31 = *(v19 + 24);
    *(v18 + 23) = *(v19 + 23);
    *(v18 + 24) = v31;
    v18[200] = v19[200];
    v32 = *(v19 + 27);
    *(v18 + 26) = *(v19 + 26);
    *(v18 + 27) = v32;
    v34 = *(v19 + 30);
    v33 = *(v19 + 29);
    *(v18 + 28) = *(v19 + 28);
    *(v18 + 29) = v33;
    *(v18 + 30) = v34;
    v56 = *(v19 + 32);

    v35 = v53;
    v36 = v52;

    if (v56)
    {
      *(v18 + 31) = *(v19 + 31);
      *(v18 + 32) = v56;
      *(v18 + 33) = *(v19 + 33);
    }

    else
    {
      *(v18 + 248) = *(v19 + 248);
      *(v18 + 33) = *(v19 + 33);
    }

    v37 = *(v19 + 35);
    *(v18 + 34) = *(v19 + 34);
    *(v18 + 35) = v37;
    v38 = v20[32];
    v39 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(&v19[v38], 1, v39))
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&v18[v38], &v19[v38], *(*(v40 - 8) + 64));
    }

    else
    {
      (*(*(v39 - 8) + 16))(&v18[v38], &v19[v38], v39);
      __swift_storeEnumTagSinglePayload(&v18[v38], 0, 1, v39);
    }

    v13 = v57;
    v18[v20[33]] = v19[v20[33]];
    v18[v20[34]] = v19[v20[34]];
    v41 = v20[35];
    v42 = &v18[v41];
    v43 = &v19[v41];
    v44 = v43[1];
    *v42 = *v43;
    v42[1] = v44;

    __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
    v16 = a3;
  }

  v45 = v16[8];
  v46 = sub_1DD0DD15C();
  (*(*(v46 - 8) + 16))(a1 + v45, v13 + v45, v46);
  v47 = v16[9];
  v48 = sub_1DD0DD10C();
  if (__swift_getEnumTagSinglePayload(v13 + v47, 1, v48))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy((a1 + v47), (v13 + v47), *(*(v49 - 8) + 64));
  }

  else
  {
    (*(*(v48 - 8) + 16))(a1 + v47, v13 + v47, v48);
    __swift_storeEnumTagSinglePayload(a1 + v47, 0, 1, v48);
  }

  *(a1 + v16[10]) = *(v13 + v16[10]);
  return a1;
}

uint64_t sub_1DCB45CB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB45D48(a1);
}

uint64_t sub_1DCB45D48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB45D68, 0, 0);
}

id NLContextUpdate.doConvertToServerContextUpdate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v66 - v5;
  v7 = sub_1DD0DD72C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = type metadata accessor for NLContextUpdate();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v66 - v26;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  v29 = __swift_project_value_buffer(v28, qword_1EDE57E00);
  sub_1DCB46478(v1, v27);
  v70 = v29;
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v31))
  {
    v32 = OUTLINED_FUNCTION_151();
    v69 = v16;
    v33 = v32;
    v34 = OUTLINED_FUNCTION_83();
    v68 = v10;
    v35 = v34;
    v71 = v34;
    *v33 = 136642819;
    sub_1DCB46478(v27, v24);
    v36 = sub_1DD0DE02C();
    v67 = v6;
    v37 = v1;
    v38 = v17;
    v39 = v7;
    v41 = v40;
    sub_1DCB41F98(v27);
    v42 = sub_1DCB10E9C(v36, v41, &v71);
    v7 = v39;
    v17 = v38;
    v1 = v37;
    v6 = v67;

    *(v33 + 4) = v42;
    _os_log_impl(&dword_1DCAFC000, v30, v31, "NLContextUpdate.doConvertToServerContextUpdate(): input NL context update is %{sensitive}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v10 = v68;
    OUTLINED_FUNCTION_80();
    v16 = v69;
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCB41F98(v27);
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E69C7990]) init];
  v44 = *(v1 + 8);
  if (v44)
  {
    sub_1DCB10E5C(0, &qword_1EDE461F0, 0x1E69C77B8);
    OUTLINED_FUNCTION_75_0();
    v44 = sub_1DD0DE2DC();
  }

  [v43 setApplicationContext_];

  v45 = *(v1 + 16);
  if (v45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7488, &unk_1DD0F8960);
    OUTLINED_FUNCTION_75_0();
    v45 = sub_1DD0DE2DC();
  }

  [v43 setAttachments_];

  sub_1DCB09910(v1 + *(v17 + 128), v6, &unk_1ECCA73E0, &unk_1DD0F8320);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v6, &unk_1ECCA73E0, &unk_1DD0F8320);
LABEL_16:
    v53 = sub_1DD0DD8EC();
    v54 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DCAFC000, v53, v54, "Generating NFCU prompt context data from NLContextUpdate fields", v55, 2u);
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB57994();
    if (v56 >> 60 == 15)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_1DD0DAEFC();
      v58 = OUTLINED_FUNCTION_131();
      sub_1DCB2C520(v58, v59);
    }

    [v43 setPromptContextProto_];

    goto LABEL_22;
  }

  v46 = (*(v10 + 32))(v16, v6, v7);
  v47 = MEMORY[0x1E12A5D70](v46);
  if (v48 >> 60 == 15)
  {
    (*(v10 + 8))(v16, v7);
    goto LABEL_16;
  }

  v49 = v47;
  v50 = v48;
  v51 = sub_1DD0DD6FC();
  if (v52 >> 60 == 15)
  {
    (*(v10 + 8))(v16, v7);
    sub_1DCB2C520(v49, v50);
    goto LABEL_16;
  }

  v61 = v51;
  v62 = v52;
  v69 = v16;
  v63 = sub_1DD0DD8EC();
  v64 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v64))
  {
    v65 = swift_slowAlloc();
    v68 = v10;
    *v65 = 0;
    _os_log_impl(&dword_1DCAFC000, v63, v64, "Generating NFCU prompt context data from POMMES context", v65, 2u);
    v10 = v68;
    OUTLINED_FUNCTION_80();
  }

  sub_1DCE06D88(v61, v62, v43);
  sub_1DCE06DE0(v49, v50, v43);
  sub_1DCB2C520(v49, v50);
  sub_1DCB2C520(v61, v62);
  (*(v10 + 8))(v69, v7);
LABEL_22:
  [v43 setSiriKitMetrics_];
  [v43 setSystemDialogActOutput_];
  [v43 setResetFlowTaskState_];
  return v43;
}

uint64_t sub_1DCB46478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of OutputPublisherAsync.publish(output:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(OUTLINED_FUNCTION_73_0(a1, a2, a3) + 8);
  OUTLINED_FUNCTION_25_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_11_51(v8);

  return v11(v10);
}

uint64_t sub_1DCB46690()
{
  OUTLINED_FUNCTION_42();
  v1[70] = v0;
  v1[69] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[71] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DD10C();
  v1[72] = v6;
  v7 = *(v6 - 8);
  v1[73] = v7;
  v8 = *(v7 + 64);
  v1[74] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for NLContextUpdate();
  v1[75] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[76] = OUTLINED_FUNCTION_38();
  v12 = sub_1DD0DD15C();
  v1[77] = v12;
  v13 = *(v12 - 8);
  v1[78] = v13;
  v14 = *(v13 + 64);
  v1[79] = OUTLINED_FUNCTION_38();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v15);
  v17 = *(v16 + 64) + 15;
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v18);
  v20 = *(v19 + 64);
  v1[82] = OUTLINED_FUNCTION_38();
  v21 = type metadata accessor for AceOutput();
  v1[83] = v21;
  OUTLINED_FUNCTION_20_0(v21);
  v23 = *(v22 + 64);
  v1[84] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1DCB46878()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB417A0;

  return sub_1DCB46690();
}

uint64_t sub_1DCB46910()
{
  v74 = v0;
  v3 = v0[83];
  v4 = v0[82];
  sub_1DCB17CA0(v0[69], (v0 + 62));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  if (!swift_dynamicCast())
  {
    v19 = v0[82];
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v0[83]);
    sub_1DCB0E9D8(v19, &qword_1ECCA1BD0, &qword_1DD0EB860);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v20 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v20, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "Output is not an AceOutput! handle() should have never been called.", v23, 2u);
      MEMORY[0x1E12A8390](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000077;
    *(inited + 56) = 0x80000001DD112700;
    v25 = sub_1DD0DDE9C();
    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DCF7E450(0xD000000000000016, 0x80000001DD1126E0, 1002, v25);
    swift_willThrow();
    OUTLINED_FUNCTION_3_14();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_16_1();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[84];
  v6 = v0[82];
  v7 = v0[70];
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v0[83]);
  sub_1DCB4554C(v6, v5, type metadata accessor for AceOutput);
  v8 = v7[8];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v7[7]);
  v9 = *(v8 + 128);
  v10 = OUTLINED_FUNCTION_20();
  if ((v11(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_19_5();
  v12 = v0[81];
  v13 = v0[75];
  sub_1DCB09910(v15 + *(v14 + 28), v12, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DCB0E9D8(v0[81], &unk_1ECCA3270, &qword_1DD0E0F70);
LABEL_5:
    v16 = v0[84];
    v17 = *v16;

    goto LABEL_14;
  }

  v29 = v0[84];
  v30 = v0[81];
  v73 = 0;
  v31 = NLContextUpdate.doConvertToAceContextUpdate(options:)(&v73);
  OUTLINED_FUNCTION_2_17();
  sub_1DCB42D14(v30, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1DD0E15D0;
  *(v33 + 32) = v31;
  v34 = *v29;
  v73 = v33;

  sub_1DCBB920C(v35);
  v18 = v73;
  v16 = v0[84];
LABEL_14:
  v0[85] = v18;
  v36 = v0[83];
  v37 = v0[80];
  v38 = v0[75];
  (*(v0[78] + 16))(v0[79], &v16[*(v36 + 32)], v0[77]);
  sub_1DCB09910(&v16[*(v36 + 28)], v37, &unk_1ECCA3270, &qword_1DD0E0F70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
  v40 = v0[80];
  if (EnumTagSinglePayload != 1)
  {
    v45 = v0[70];
    sub_1DCB4554C(v40, v0[76], type metadata accessor for NLContextUpdate);
    v47 = *(v45 + 16);
    v46 = *(v45 + 24);
    swift_getObjectType();
    v48 = *(v46 + 8);
    v72 = v48 + *v48;
    v49 = v48[1];
    v50 = swift_task_alloc();
    v0[86] = v50;
    *v50 = v0;
    v50[1] = sub_1DCB59CF0;
    v51 = v0[76];
    OUTLINED_FUNCTION_16_1();

    __asm { BRAA            X3, X16 }
  }

  sub_1DCB0E9D8(v40, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_19_5();
  v41 = v0[72];
  v42 = v0[71];
  sub_1DCB09910(v44 + *(v43 + 36), v42, &unk_1ECCAAEC0, &qword_1DD103A40);
  if (__swift_getEnumTagSinglePayload(v42, 1, v41) == 1)
  {
    sub_1DCB0E9D8(v0[71], &unk_1ECCAAEC0, &qword_1DD103A40);
  }

  else
  {
    v54 = OUTLINED_FUNCTION_6_3();
    v55(v54);
    v36 = *(v2 + 56);
    __swift_project_boxed_opaque_existential_1((v2 + 32), v36);
    v56 = OUTLINED_FUNCTION_8_9();
    v57(v56);
    v58 = *(v1 + 8);
    v59 = OUTLINED_FUNCTION_20();
    v60(v59);
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_26_1(v61);
  if (v36)
  {
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_10_11();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_23_5();
    v71 = v36 + *v36;
    v62 = *(v36 + 4);
    v63 = swift_task_alloc();
    v64 = OUTLINED_FUNCTION_14_9(v63);
    *v64 = v65;
    OUTLINED_FUNCTION_1_10(v64);
    OUTLINED_FUNCTION_16_1();

    __asm { BRAA            X4, X16 }
  }

  v68 = swift_task_alloc();
  v0[88] = v68;
  *v68 = v0;
  OUTLINED_FUNCTION_4_6(v68);
  OUTLINED_FUNCTION_16_1();

  return AceServiceInvokerAsync.submitAllSerial(_:executionSource:)();
}

uint64_t initializeBufferWithCopyOfBuffer for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  v9 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v9;
  *(a1 + 64) = v8;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  v11 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;
  v12 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v12;
  v31 = *(a2 + 128);
  *(a1 + 128) = v31;
  *(a1 + 136) = *(a2 + 136);
  v13 = *(a2 + 152);
  v30 = *(a2 + 144);
  *(a1 + 144) = v30;
  *(a1 + 152) = v13;
  v14 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v14;
  *(a1 + 176) = *(a2 + 176);
  v15 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v15;
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 232);
  v32 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v17;
  *(a1 + 240) = v32;
  v33 = *(a2 + 256);

  v18 = v31;
  v19 = v30;

  if (v33)
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v33;
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
  }

  v20 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v20;
  v21 = a3[32];
  v22 = sub_1DD0DD72C();

  if (__swift_getEnumTagSinglePayload(a2 + v21, 1, v22))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v21), (a2 + v21), *(*(v23 - 8) + 64));
  }

  else
  {
    (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
    __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v22);
  }

  v24 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[35];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;

  return a1;
}

uint64_t sub_1DCB473BC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[5];
  v2 = (*(v0[4] + 16))(v0[2], v0[3]);
  v3 = v0[1];
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_1DCB47434()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_129();

  return v6(v5);
}

void OUTLINED_FUNCTION_134_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_134_2()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 120) != 0;
}

uint64_t sub_1DCB47578()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_129();

  return v6(v5);
}

uint64_t sub_1DCB4765C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCB4776C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16))(*(v0 + 56));
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 32);
    v5 = *(v4 + 24);
    (*(v4 + 16))();
  }

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_28_3()
{
  result = *(v0 + 16);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_6@<X0>(uint64_t a1@<X8>)
{
  v3[148] = v5;
  v3[149] = v1;
  v3[145] = v2;
  v3[153] = v6;
  v3[154] = v4;
  v3[150] = a1;

  return type metadata accessor for SiriKitAuthoredFlow();
}

id OUTLINED_FUNCTION_28_8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_28_12()
{
}

void OUTLINED_FUNCTION_28_13(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

__n128 OUTLINED_FUNCTION_28_15()
{
  *(v1 + v3[6]) = *(v2 + v3[6]);
  v4 = v3[7];
  v5 = v1 + v4;
  v6 = v2 + v4;
  result = *v6;
  v8 = *(v6 + 16);
  *v5 = *v6;
  *(v5 + 16) = v8;
  *(v5 + 32) = *(v6 + 32);
  *(v1 + v3[8]) = *(v2 + v3[8]);
  v9 = *(v0 + 24);
  return result;
}

void OUTLINED_FUNCTION_28_16()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 304);
  v3 = *(v0 - 296);
}

uint64_t OUTLINED_FUNCTION_28_18(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v3 + 32);
  *(v3 + 72) = v2;
  *(v3 + 80) = v1;
  return result;
}

void OUTLINED_FUNCTION_28_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_28_22(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_28_23()
{

  return sub_1DD0DEC3C();
}

uint64_t OUTLINED_FUNCTION_28_26(uint64_t a1)
{
  v4 = v2 + *(a1 + 20);

  return sub_1DCC333DC(v1, v4);
}

uint64_t OUTLINED_FUNCTION_28_29()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 200) = 0;
  *(v0 - 208) = 0;
  return *(v0 - 264);
}

uint64_t OUTLINED_FUNCTION_28_30(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 280);
  v4 = *(v2 + 240);
  return result;
}

id OUTLINED_FUNCTION_28_32(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_28_33()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v1 + 80);
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_28_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_35()
{

  return sub_1DD0DF24C();
}

void *OUTLINED_FUNCTION_28_36(void *result)
{
  result[2] = v2;
  result[3] = v1;
  v4 = *(v3 - 264);
  result[4] = *(v3 - 256);
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_38(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

void *OUTLINED_FUNCTION_28_39(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

void *OUTLINED_FUNCTION_28_42(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __src, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __dst)
{

  return memcpy(&__dst, &__src, 0x48uLL);
}

uint64_t sub_1DCB47C10()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v9 + 88) = v0;

  if (v0)
  {
    v10 = sub_1DCFAAD08;
  }

  else
  {
    v10 = sub_1DCB47D18;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DCB47D18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_11_67();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t storeEnumTagSinglePayload for Parse.DirectInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DCB47DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_70();
  v29 = sub_1DD0DB04C();
  v30 = OUTLINED_FUNCTION_9(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30, v35);
  OUTLINED_FUNCTION_10_2();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &a9 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &a9 - v48;
  v50 = [objc_allocWithZone(*v26) init];
  if (v50)
  {
    v51 = v50;
    v52 = [objc_allocWithZone(MEMORY[0x1E69CE9A8]) init];
    if (v52)
    {
      v53 = v52;
      [v52 *v24];
      sub_1DCB099BC(v28, v49, &qword_1ECCA2618, &unk_1DD0E5C50);
      if (__swift_getEnumTagSinglePayload(v49, 1, v29) == 1)
      {
        v54 = 0;
      }

      else
      {
        (*(v32 + 32))(v42, v49, v29);
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        (*(v32 + 16))(v38, v42, v29);
        v54 = sub_1DCB0DEDC(v38);
        (*(v32 + 8))(v42, v29);
      }

      [v53 setHypothesisId_];

      [v20 setExecutionCommitContext_];
      v61 = v20;
      goto LABEL_13;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v55 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v55, qword_1EDE57DA0);
  v56 = sub_1DD0DD8EC();
  v57 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v57))
  {
    v58 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v58);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v59, v60, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

void sub_1DCB48074(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DCB0D344();
  if (v7)
  {
    v8 = v7;
    sub_1DCB48144(v7, a1 & 1, a5);
  }
}

void sub_1DCB480D0(char a1)
{
  v3 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_20_0(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  sub_1DCB48074(a1, v5, v6, v7, v8);
}

void *sub_1DCB48144(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69CEA00]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x1E69CE9F8]) init];
    if (v14)
    {
      v15 = v14;
      [v13 setHasTopicChanged_];
      [v15 setEnded_];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v7 + 16))(v11, a3, v6);
      v16 = sub_1DCB0DEDC(v11);
      [v15 setHypothesisId_];

      [a1 setFlowPluginInputContext_];
      v17 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57DA0);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "[ConversationSELFHelper] Failed to create context SELF objects", v21, 2u);
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  return 0;
}

uint64_t sub_1DCB483A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = v5[20];
  v7 = v5[12];
  v8 = v5[11];
  v9 = v5[10];
  v10 = *v1;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  *(v3 + 168) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    v12 = *(v3 + 152);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCB4850C()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[12];

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCB4858C()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DCB0D344();
  if (v4)
  {
    v5 = v4;
    v6 = v0[5];
    sub_1DCB52F18();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v0[17] = v8;
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v20 = v0[9];
  v12 = v0[4];
  v13 = v0[3];
  (*(v11 + 16))(v9, v0[5], v10);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v0[18] = v15;
  *(v15 + 2) = v20;
  *(v15 + 3) = v13;
  *(v15 + 4) = v12;
  (*(v11 + 32))(&v15[v14], v9, v10);
  v16 = v0[9];
  v17 = v0[4];
  if (v8)
  {
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB487FC()
{
  v1 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_1DCB488BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1DCB48998(a1, a2, a3, a4))
  {
    OUTLINED_FUNCTION_27_14();
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    v24 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v14);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] buildEagerExecutionContextStartedMessage failed to be emitted", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void *sub_1DCB48998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;

  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1DCB48A48(v8, a3, a4);

    return v10;
  }

  else
  {

    return 0;
  }
}

void *sub_1DCB48A48(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEA30]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x1E69CEA48]) init];
    if (v8)
    {
      v9 = v8;
      [v8 setPlugin_];
      [v7 setStartedOrChanged_];
      [a1 setIntentEagerExecutionContext_];

      v10 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57DA0);
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DCAFC000, v12, v13, "[ConversationSELFHelper] Failed to create context SELF objects", v14, 2u);
    MEMORY[0x1E12A8390](v14, -1, -1);
  }

  return 0;
}

void sub_1DCB48BD4()
{
  sub_1DCB0D344();
  if (v1 && (v2 = v1, v23 = sub_1DCB48CC8(v1), v2, v23))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v3();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    v24 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v14);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] buildEagerExecutionContextEndedMessage failed to be emitted", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void *sub_1DCB48CC8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CEA30]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69CEA38]) init];
    if (v4)
    {
      v5 = v4;
      [v4 setExists_];
      [v3 setEnded_];
      [a1 setIntentEagerExecutionContext_];

      v6 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57DA0);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "[ConversationSELFHelper] Failed to create context SELF objects", v10, 2u);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  return 0;
}

void sub_1DCB48E34()
{
  sub_1DCB48EEC();
  if (v0)
  {
    OUTLINED_FUNCTION_27_14();
    v1();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57DA0);
    v21 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v3, v4, v5, v6, v7, v8, v9, v10, v18, v21))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v11);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v12, v13, "[ConversationSELFHelper] buildFinalExecutionContextStartedMessage failed to be emitted", v14, v15, v16, v17, v19, v20);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCB48EEC()
{
  OUTLINED_FUNCTION_50();
  v19 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  sub_1DCB099BC(v7, &v18 - v14, &qword_1ECCA2618, &unk_1DD0E5C50);

  sub_1DCB0D344();
  if (v16)
  {
    v17 = v16;
    sub_1DCB49054(v16, v19, v5, v3, v15);
  }

  else
  {
  }

  sub_1DCB0E9D8(v15, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_49();
}

id sub_1DCB49054(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v52 = a5;
  v9 = sub_1DD0DB04C();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v48 - v21;
  v23 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v24 = [objc_allocWithZone(MEMORY[0x1E69CEA50]) init];
  if (v24)
  {
    v25 = v24;
    v50 = v14;
    v26 = [objc_allocWithZone(MEMORY[0x1E69CEA68]) init];
    if (v26)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(a2))
      {
        v14 = v26;
        v49 = a1;
        [v26 setStackDepth_];
        v23 = a3;
        [v14 setPlugin_];
        if (qword_1EDE4D8C8 == -1)
        {
LABEL_6:
          v27 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v27, qword_1EDE57DA0);

          v28 = v14;
          v29 = sub_1DD0DD8EC();
          v30 = sub_1DD0DE6CC();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v48 = v17;
            v32 = v31;
            v33 = swift_slowAlloc();
            v53 = v33;
            *v32 = 136315394;
            *(v32 + 4) = sub_1DCB10E9C(v23, a4, &v53);
            *(v32 + 12) = 2080;
            [v28 plugin];
            v34 = sub_1DD0DE7BC();
            v36 = sub_1DCB10E9C(v34, v35, &v53);

            *(v32 + 14) = v36;
            _os_log_impl(&dword_1DCAFC000, v29, v30, "[ConversationSELFHelper] For plugin %s choosing plugin %s", v32, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A8390](v33, -1, -1);
            v37 = v32;
            v17 = v48;
            MEMORY[0x1E12A8390](v37, -1, -1);
          }

          v38 = v50;
          [v25 setStartedOrChanged_];
          sub_1DCB099BC(v52, v22, &qword_1ECCA2618, &unk_1DD0E5C50);
          if (__swift_getEnumTagSinglePayload(v22, 1, v9) == 1)
          {
            v39 = 0;
          }

          else
          {
            v45 = v51;
            (*(v51 + 32))(v17, v22, v9);
            sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
            (*(v45 + 16))(v38, v17, v9);
            v39 = sub_1DCB0DEDC(v38);
            (*(v45 + 8))(v17, v9);
          }

          [v25 setHypothesisId_];

          v44 = v49;
          [v49 setIntentFinalExecutionContext_];

          v46 = v44;
          return v44;
        }

LABEL_21:
        swift_once();
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v40 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v40, qword_1EDE57DA0);
  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DCAFC000, v41, v42, "[ConversationSELFHelper] Failed to create context SELF objects", v43, 2u);
    MEMORY[0x1E12A8390](v43, -1, -1);
  }

  return 0;
}

void sub_1DCB4955C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEE0, &qword_1DD10D518);
  swift_getKeyPath();
  OUTLINED_FUNCTION_80_10();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v0, v1, v2);
  OUTLINED_FUNCTION_68();
  sub_1DD0DCEDC();
}

void sub_1DCB4967C()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = type metadata accessor for IdentifiedUser();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1DCB49618();
}

uint64_t destroy for IdentifiedUser(id *a1, int *a2)
{
  v4 = a2[5];
  v5 = sub_1DD0DB0FC();
  if (!__swift_getEnumTagSinglePayload(a1 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  v6 = *(a1 + a2[6] + 8);

  v7 = *(a1 + a2[7] + 8);

  v8 = *(a1 + a2[8] + 8);

  v9 = *(a1 + a2[10] + 8);

  v10 = *(a1 + a2[11] + 8);

  v11 = *(a1 + a2[12] + 8);

  v12 = a2[14];
  v13 = sub_1DD0DD17C();
  v14 = *(*(v13 - 8) + 8);

  return v14(a1 + v12, v13);
}

uint64_t IdentifiedUser.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for IdentifiedUser();
  v3 = v2[5];
  v4 = sub_1DD0DB0FC();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_27_42(v2[6]);
  v5 = v2[7];
  if (qword_1EDE49A88 != -1)
  {
    OUTLINED_FUNCTION_6_89();
  }

  v6 = (a1 + v5);
  v7 = *algn_1EDE49A98;
  v8 = qword_1EDE49AA0;
  *v6 = qword_1EDE49A90;
  v6[1] = v7;
  v6[2] = v8;
  OUTLINED_FUNCTION_27_42(v2[8]);
  *(a1 + v2[9]) = 0;
  OUTLINED_FUNCTION_27_42(v2[10]);
  OUTLINED_FUNCTION_27_42(v2[11]);
  OUTLINED_FUNCTION_27_42(v2[12]);
  *(a1 + v2[13]) = 0;
  v9 = v2[14];
  v10 = *MEMORY[0x1E69D06E8];
  v11 = sub_1DD0DD17C();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 104))(a1 + v9, v10);
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  v13 = a1 + v2[17];
  *v13 = 0;
  v13[4] = 1;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 0;
  v14 = a1 + v2[20];
  *v14 = 0;
  v14[4] = 1;
}

uint64_t sub_1DCB49DC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_33_1();
  v7(v6);
  return a2;
}

uint64_t sub_1DCB49E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_5()
{
  v3 = *(v0 + 16);

  return sub_1DCB41F3C(v1 + 96, v1 + 256);
}

void OUTLINED_FUNCTION_23_6()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 50);
  v6 = *(v0 + 33) == 0;
}

uint64_t OUTLINED_FUNCTION_23_8()
{
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_23_17()
{

  return sub_1DD0DEC3C();
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_23_26()
{

  return memcpy((v0 + 240), v1, 0x48uLL);
}

double OUTLINED_FUNCTION_23_28()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_23_30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[2] = v2;

  sub_1DD0DCF8C();
}

double OUTLINED_FUNCTION_23_36()
{
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[46];
  v5 = v0[43];

  return static ExecuteResponse.ongoing(requireInput:)(1, v5);
}

uint64_t *OUTLINED_FUNCTION_23_38(uint64_t *result)
{
  v2 = *v1;
  v3 = *result;
  v4 = *(result + 24);
  v5 = result[4];
  v6 = *(result + 40);
  return result;
}

void OUTLINED_FUNCTION_23_39(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[13] = a1;
  v4[14] = a3;
  v4[10] = v3;
  __swift_project_boxed_opaque_existential_1(v4 + 10, a2);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_23_40()
{
  v2 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_23_43()
{
  result = *(v0 - 208);
  v2 = *(*(v0 - 200) + 8);
  return result;
}

void *OUTLINED_FUNCTION_198()
{

  return CommandFailure.init(errorCode:reason:)(-1, v0, v1);
}

void *OUTLINED_FUNCTION_198_0(void *result)
{
  v3 = *(v2 - 208);
  v4 = *(v2 - 200);
  result[2] = *(v2 - 176);
  result[3] = v3;
  v6 = *(v2 - 192);
  v5 = *(v2 - 184);
  result[4] = v4;
  result[5] = v6;
  result[6] = v5;
  result[7] = v1;
  return result;
}

void SiriEnvironment.userIdentity.getter()
{
  type metadata accessor for UserIdentityProvider();
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v0, v1, v2);

  sub_1DD0DCA7C();
}

void sub_1DCB4A3CC()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB4A3FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DCB4A468()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCB4A560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  v8 = sub_1DD0DB04C();
  v9 = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Parse(0);
    result = OUTLINED_FUNCTION_11_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_1DCB4A6EC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1DD0DD89C();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_16();
  v10 = sub_1DD0DD85C();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  v20 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if ((sub_1DD0DE92C() & 1) == 0)
  {

    (*(v13 + 8))(v19, v10);
    return;
  }

  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (HIDWORD(a2))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_76();
  if (!v22)
  {
    if (v21 >> 16 <= 0x10)
    {
LABEL_8:
      sub_1DD0DCF8C();
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Parse.DirectInvocation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t OUTLINED_FUNCTION_37_7()
{
  *v1 = v0;
  *(v1 + 8) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t a1)
{
  v2[143] = a1;
  v2[144] = v3;
  v2[140] = v1;

  return __swift_mutable_project_boxed_opaque_existential_1((v2 + 140), a1);
}

void OUTLINED_FUNCTION_37_11()
{
  *(v0 - 100) = *(v0 + 64);
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x1EEDC6A10](v4, a2, a2, a4, a4);
}

void OUTLINED_FUNCTION_37_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t *OUTLINED_FUNCTION_37_17@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 344);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm(v4);
}

__n128 OUTLINED_FUNCTION_37_22()
{
  v11 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 81);
  v9 = *(v0 + 82);
  v10 = *(v0 + 65) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[11];
  v4 = v2[9];
  return v2[10];
}

uint64_t OUTLINED_FUNCTION_37_25()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_26()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_37_28()
{
  result = *v1;
  *v0 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_30(uint64_t a1, void *a2)
{
  *a2 = v3;
  v5 = *(v2 + 112);
  **(v2 + 120) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_37_31@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  v4 = *(v1 + 80);
  return *(*(v1 + 88) + 8);
}

void OUTLINED_FUNCTION_37_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_37_33()
{

  JUMPOUT(0x1E12A6780);
}

void *OUTLINED_FUNCTION_37_36(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 192) = a1;
  a1[2] = a17;
  a1[3] = a18;
  a1[4] = a15;
  a1[5] = a16;
  v20 = a1 + 6;

  return memcpy(v20, (v18 + 112), 0x50uLL);
}

void OUTLINED_FUNCTION_37_37()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 160));
}

void OUTLINED_FUNCTION_37_38(__n128 a1)
{
  v4[2] = a1;
  v4[3].n128_u64[0] = v3;
  v4[3].n128_u8[8] = v1;
  v4[4].n128_u64[0] = v2;
}

void OUTLINED_FUNCTION_37_39(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u8[8] = v2;
  v4[4].n128_u64[0] = v3;
}

uint64_t sub_1DCB4AD3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t destroy for PrepareResponse(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t OUTLINED_FUNCTION_74_2()
{
  v2 = *(v0 + 36);

  return sub_1DD0DD10C();
}

void OUTLINED_FUNCTION_74_12()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v2 + 16);
}

id OUTLINED_FUNCTION_74_13(uint64_t a1, uint64_t a2)
{

  return sub_1DCB89BB0(a1, a2, 0);
}

uint64_t OUTLINED_FUNCTION_74_15()
{
  v2 = *(*(v0 + 64) + 16);
  result = v1;
  v4 = *(v0 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_17()
{
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[50];
}

uint64_t OUTLINED_FUNCTION_74_19()
{
}

double OUTLINED_FUNCTION_74_20()
{

  return sub_1DCB90D40(25705, 0xE200000000000000, v0);
}

void OUTLINED_FUNCTION_102_2()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
}

void OUTLINED_FUNCTION_102_3(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{

  sub_1DCEB2C84(a1, a2, a3, a4, a5, a6, a7, a8, v10, v8, v9);
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_102_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 936));

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 976));
}

void OUTLINED_FUNCTION_57_3()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  *(v1 - 448) = v0;
}

uint64_t OUTLINED_FUNCTION_57_6()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_57_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 88) = &a9 - v9;

  return sub_1DD0DE97C();
}

BOOL OUTLINED_FUNCTION_57_9()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_11()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_57_12()
{
  v4 = *(v2 - 216);
  v3 = *(v2 - 208);
  *v0 = *(v2 - 176);
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
  *(v0 + 24) = *(v2 - 196);
  *(v0 + 32) = *(v2 - 192);
  *(v0 + 40) = *(v2 - 180);
  return v1;
}

void OUTLINED_FUNCTION_57_13(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_57_16()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v6 = v0[4];
  v4 = v0[6];
  v5 = v0[3];
}

BOOL OUTLINED_FUNCTION_57_17(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 OUTLINED_FUNCTION_57_18()
{
  result = v0[1];
  v2 = v0[2].n128_u64[0];
  v3 = v0[2].n128_u64[1];
  v4 = v0[3].n128_u64[0];
  v5 = v0[3].n128_u8[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_57_20()
{
  *(v0 + 144) = v1;
  *(v0 + 120) = v2;
  sub_1DCB20B30((v0 + 120), (v0 + 152));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_22()
{
  v2 = *(v0 + 320) | 7;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_6()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  *v2 = 0;
  *(v2 + 8) = 512;
  return v2;
}

void OUTLINED_FUNCTION_55_7()
{

  sub_1DCC1EF90(v0, 4);
}

uint64_t OUTLINED_FUNCTION_55_9()
{
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_55_11()
{
  v3 = *(v1 - 464);

  return sub_1DCB29E58(v0, v3);
}

uint64_t OUTLINED_FUNCTION_55_12()
{
  v11 = *(v0 + 124);
  v2 = *(v0 + 123);
  v3 = *(v0 + 122);
  v4 = *(v0 + 121);
  v5 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t a1)
{
  *(v1 + 72) = a1;
}

id OUTLINED_FUNCTION_55_19()
{
  v2 = *v0;

  return v2;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t result)
{
  *(v3 + 64) = result;
  *(result + 16) = v2;
  *(result + 24) = v7;
  *(result + 32) = v5 & 1;
  *(result + 33) = HIBYTE(v5) & 1;
  *(result + 40) = v6;
  *(result + 48) = v4 & 1;
  *(result + 49) = BYTE1(v4) & 1;
  *(result + 50) = BYTE2(v4) & 1;
  *(result + 56) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a14 = 0;
  a18 = 4;

  sub_1DCC88D00(&a12);
}

uint64_t OUTLINED_FUNCTION_17_16()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void OUTLINED_FUNCTION_17_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_17_27@<D0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2 * a2;
  *(a1 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_29()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[2];
  v4 = *(v0[41] + 16);
  return v0[42];
}

uint64_t OUTLINED_FUNCTION_17_30()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_17_33()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_35(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_36()
{
  v3 = v1[15];
  v4 = v1[13];
  v6 = v1[5];
  v5 = v1[6];
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_17_38()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_39()
{
  v2 = *(v0 + 48);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

void OUTLINED_FUNCTION_17_42()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_17_43()
{
}

void *OUTLINED_FUNCTION_17_47()
{
  v1 = *(v0 + 64);
  v2 = v1[8];
  return __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
}

uint64_t OUTLINED_FUNCTION_17_51(uint64_t a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  sub_1DCB20B30((v2 + 56), (v2 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_17_52()
{
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 29;

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_17_53(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_54()
{

  return sub_1DCCE6C28(v0 + 144);
}

uint64_t sub_1DCB4BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - v11;
  sub_1DCB17C3C(a1, &v25, &qword_1ECCA1C08, &qword_1DD0E16D0);
  if (!v26)
  {
    sub_1DCB185D0(&v25, &qword_1ECCA1C08, &qword_1DD0E16D0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = __swift_project_value_buffer(v14, qword_1EDE57E00);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v12, v15, v14);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
    sub_1DCB17C3C(v12, v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
    {
      sub_1DCB185D0(v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v17 = sub_1DD0DD8EC();
      v18 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v25 = v27;
        *v19 = 136315650;
        v20 = sub_1DD0DEC3C();
        v22 = sub_1DCB10E9C(v20, v21, &v25);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 870;
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1DCB10E9C(0xD0000000000000D5, 0x80000001DD112DC0, &v25);
        _os_log_impl(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s", v19, 0x20u);
        v23 = v27;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v23, -1, -1);
        MEMORY[0x1E12A8390](v19, -1, -1);
      }

      (*(v16 + 8))(v9, v14);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000D5, 0x80000001DD112DC0);
  }

  return sub_1DCAFF9E8(&v25, a2);
}

uint64_t Flow.eraseToAnyFlow()()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  type metadata accessor for AnyFlow();
  (*(v6 + 16))(v2, v0, v1);
  OUTLINED_FUNCTION_116();
  return sub_1DCB4BF14();
}

uint64_t sub_1DCB4BF14()
{
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_57_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_116();
  sub_1DCAFF5AC();
  return v0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_11_1(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_1DCB4C0D4(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(a2, v3, v4);
}

unint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_1DCBB5C20();
}

uint64_t OUTLINED_FUNCTION_39_3()
{
  *(v0 + 120) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;

  return sub_1DCB6C5E8(v1 - 128, v0 + 88);
}

uint64_t OUTLINED_FUNCTION_148()
{
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

void OUTLINED_FUNCTION_39_8()
{

  JUMPOUT(0x1E12A6960);
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v8 = v0[55];
  v7 = v0[56];
}

uint64_t OUTLINED_FUNCTION_39_12()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_39_13()
{

  return sub_1DD0DBDEC();
}

uint64_t OUTLINED_FUNCTION_39_15(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1DD0DB3EC();
}

void OUTLINED_FUNCTION_39_17()
{
  v3 = *(v1 + 47);
  v4 = *(v1 + 46);
  v5 = *(v1 + 45);
  v6 = *(v1 + 44);
  v7 = *(v1 + 43);
  v9 = *(v1 + 88);
  v8 = *(v1 + 96);
  v10 = *(v1 + 72);
}

void OUTLINED_FUNCTION_39_18()
{
  v1 = *(v0 + 24);
  v11 = *(v0 + 16);
  v2 = *(v0 + 32);
  v10 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 73);
  v8 = *(v0 + 74);
  v9 = *(v0 + 57) == 0;
}

uint64_t OUTLINED_FUNCTION_39_20(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

__n128 OUTLINED_FUNCTION_39_21@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  return result;
}

void OUTLINED_FUNCTION_39_22()
{
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[76];
  v9 = v0[72];
  v10 = v0[69];
  v11 = v0[67];
}

void *OUTLINED_FUNCTION_39_23@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 192), (a1 + 192), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_39_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_27(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  return 0;
}

void OUTLINED_FUNCTION_39_33()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 184));
}

_OWORD *OUTLINED_FUNCTION_39_34()
{

  return sub_1DCC60044();
}

uint64_t OUTLINED_FUNCTION_92_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCB17CA0(v2, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_92_6()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = v0 + 16;
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
}

__n128 OUTLINED_FUNCTION_92_9()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 72) + 16);
  result = *(v1 + 25);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_11()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0[5]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0[6]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0[7]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0[11]);

  return sub_1DCB84C58(v1 - 208);
}

uint64_t OUTLINED_FUNCTION_92_12(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_92_13()
{
  sub_1DCB51C9C(v0);
}

uint64_t OUTLINED_FUNCTION_92_14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_92_15(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_92_16()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_25_3()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
}

void OUTLINED_FUNCTION_25_7(uint64_t a1@<X8>)
{
  *(v2 + 712) = a1;
  *(v2 + 680) = v3;
  *(v1 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return sub_1DCC65B64(v0);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DCB10E9C(v2, v3, va);
}

void OUTLINED_FUNCTION_25_11(uint64_t a1@<X8>)
{
  v6 = *(*(v3 + a1) + 17);

  ExecuteOnRemotePayload.makeExecuteOnRemoteRequest(targetDeviceId:currentRequest:device:shouldSendSpeechPackage:)(v2, v1, v4, v3 + 32, v6);
}

uint64_t OUTLINED_FUNCTION_25_12()
{
  v2 = *(v0 + 20);

  return type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
}

uint64_t OUTLINED_FUNCTION_25_13()
{
  v2 = *(*v0 + 40);

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  v3 = *(v1 - 312);

  return sub_1DCD58BCC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_25_16()
{
  v3 = *(v1 - 96);

  return sub_1DCB2479C(v0, v3, type metadata accessor for Input);
}

void *OUTLINED_FUNCTION_25_21(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[52];
  v4 = v2[50];
  v5 = v2[48];
  return v2 + 26;
}

uint64_t OUTLINED_FUNCTION_25_23()
{
  v3 = *(v2 - 112) + 8;
  result = v1 + v0;
  v5 = *(v2 - 168);
  return result;
}

void OUTLINED_FUNCTION_25_25(uint64_t a1@<X8>)
{
  v3 = (a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = *(v1 + v3);
  v9 = *(v1 + v4);
  v10 = *(v1 + v4 + 8);
  v11 = *(v1 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_25_26(_WORD *a1)
{
  *a1 = 0;

  return sub_1DD0DD83C();
}

uint64_t OUTLINED_FUNCTION_25_27()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_29(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_25_34@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v9 = v2[8];
  *(v1 + v2[9]) = 256;
  v8 = v2[10];
  *(v1 + v2[11]) = 0;
  v6 = v2[12];

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_25_35(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = v1;
  sub_1DCB20B30((v2 + 56), (v2 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 OUTLINED_FUNCTION_25_39()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  v0[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_40@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_25_41()
{
  result = *(v0 - 328);
  v2 = *(v0 - 336);
  v3 = *(v0 - 344);
  v4 = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_43()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_138_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];
  v11 = v0[6];
  v12 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return sub_1DD0DEDFC();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{
  v2[108] = a1;
  v2[109] = v3;
  v2[105] = v1;

  return __swift_mutable_project_boxed_opaque_existential_1((v2 + 105), a1);
}

uint64_t OUTLINED_FUNCTION_36_14()
{
  result = *(v0 - 96);
  v2 = *(v0 - 87);
  v3 = *(v0 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_15()
{

  return sub_1DD0DD8FC();
}

__n128 OUTLINED_FUNCTION_36_22(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, __int16 a10, unsigned __int8 a11)
{
  *(v13 + 80) = a1;
  result = *(v13 + 40);
  a1[1] = result;
  a1[2].n128_u64[0] = v19;
  a1[2].n128_u64[1] = v11;
  a1[3].n128_u64[0] = v18;
  a1[3].n128_u8[8] = v17;
  a1[3].n128_u8[9] = v16;
  a1[4].n128_u64[0] = v15;
  a1[4].n128_u8[8] = v14;
  a1[4].n128_u8[9] = a9;
  a1[4].n128_u8[10] = a11;
  a1[5].n128_u64[0] = v12;
  return result;
}

size_t OUTLINED_FUNCTION_36_24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCE1A10C(v4, a2, a3, a4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_36_25()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  v4 = *(v0 - 152);

  return sub_1DD0DEFBC();
}

void OUTLINED_FUNCTION_36_26()
{
  v2 = v0[60];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[53];
  v6 = v0[54];
}

uint64_t OUTLINED_FUNCTION_36_28()
{
  v2 = *(v0 - 128);

  return sub_1DD0DF22C();
}

void *OUTLINED_FUNCTION_36_30()
{
  v2 = (*(v0 + 448) + 16);

  return memcpy((v0 + 16), v2, 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_36_33@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[131] = a2;
  v2[130] = result;
  v2[127] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  v4 = *(v1 + 80);
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_36_37(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v4, v5 + 56, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_36_38()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  v2 = *result;
  return result;
}

__n128 OUTLINED_FUNCTION_36_39()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  result = *(v4 - 128);
  v6 = *(v4 - 112);
  *(v0 + 40) = result;
  *(v0 + 56) = v6;
  v7 = *(v4 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_40()
{

  return sub_1DD0DDA9C();
}

uint64_t OUTLINED_FUNCTION_36_41(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 80) = v2;
  *(v3 + 64) = a2;
  sub_1DCB20B30((v3 + 56), (v3 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_36_42@<D0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = 0;
  *v2 = v1;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 3;
  return result;
}

void *OUTLINED_FUNCTION_38_5()
{

  return memcpy((v1 - 160), v0, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_38_7()
{

  return sub_1DD0DE8EC();
}

__n128 OUTLINED_FUNCTION_38_8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = result;
  *(v0 + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCC7243C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_38_13(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1DD0DB04C();
}

uint64_t OUTLINED_FUNCTION_38_17(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = result;
  *(v6 + 56) = a2;
  v7 = *a3;
  *(v6 + 80) = v5;
  *(v6 + 88) = v7;
  *(v6 + 43) = *(a3 + 8);
  *(v6 + 44) = *(a3 + 9);
  *(v6 + 96) = a3[2];
  *(v6 + 45) = *(a3 + 24);
  *(v6 + 46) = *(a3 + 25);
  *(v6 + 47) = *(a3 + 26);
  return result;
}

void OUTLINED_FUNCTION_38_19()
{

  PatternFlowProviding.makeResponseFlowWithListPrompt<A>(items:paginationParameters:strategy:)();
}

uint64_t OUTLINED_FUNCTION_38_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_38_22()
{
  v2 = v0[47];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
}

void OUTLINED_FUNCTION_38_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_38_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_38_30()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
}

void OUTLINED_FUNCTION_38_31()
{

  Resolvable.resolvedValuePublisher.getter((v0 - 208));
}

_OWORD *OUTLINED_FUNCTION_38_32()
{

  return sub_1DCC60044();
}

__n128 OUTLINED_FUNCTION_38_33(__n128 *a1)
{
  v3[6].n128_u64[1] = a1;
  result = v3[5];
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u64[0] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_36()
{
  v3 = *(v1 + *(v0 + 56) + 8);
}

void sub_1DCB4D2A4()
{
  sub_1DCB0DF6C(v0 + 32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD8, &qword_1DD0EDF50);
  if (OUTLINED_FUNCTION_86_5())
  {
    sub_1DCAFF9E8(v2, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    OUTLINED_FUNCTION_20();
    sub_1DD0DCADC();
  }

  v3 = 0;
  memset(v2, 0, sizeof(v2));
  sub_1DCB0E9D8(v2, &qword_1ECCA4AE0, &qword_1DD0EDF58);
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
    sub_1DD0DCF8C();
  }

  sub_1DD0DCA6C();
}

uint64_t OUTLINED_FUNCTION_82_1()
{
  v1 = v0[4];
  v2 = *(v0[5] + 8);
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_82_3(uint64_t a1)
{
  *(v1 + 104) = a1;

  return type metadata accessor for WindowingAction();
}

void OUTLINED_FUNCTION_82_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

__n128 OUTLINED_FUNCTION_82_5(uint64_t a1)
{
  *(v2 + 64) = a1;
  result = *(v2 + 32);
  v4 = *(v2 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_10()
{
}

uint64_t OUTLINED_FUNCTION_82_11()
{
  v2 = *(v0 + 56);

  return swift_task_alloc();
}

uint64_t sub_1DCB4D4A0(uint64_t a1)
{
  sub_1DCB0DF6C(v1 + 32, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4AD8, &qword_1DD0EDF50);
  if (OUTLINED_FUNCTION_86_5())
  {
    sub_1DCAFF9E8(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_20();
    sub_1DD0DCAEC();
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1DCB0E9D8(v5, &qword_1ECCA4AE0, &qword_1DD0EDF58);
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_1DCB4D598()
{
  sub_1DCB0DF6C(v0 + 32, &v3);
  v1 = OUTLINED_FUNCTION_66_3();
  return OUTLINED_FUNCTION_87_4(v1);
}

void static SiriKitEventSender.current.getter(uint64_t *a1@<X8>)
{
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57DF8;
  a1[3] = type metadata accessor for RefreshableSiriKitEventSending();
  a1[4] = &off_1F5873940;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB4D6B0(uint64_t a1)
{
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SiriKitEvent.SiriKitOverridesEventBuilder.__deallocating_deinit()
{
  SiriKitEvent.SiriKitOverridesEventBuilder.deinit();
  OUTLINED_FUNCTION_136();

  return swift_deallocClassInstance();
}

uint64_t SiriKitEvent.SiriKitOverridesEventBuilder.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t OUTLINED_FUNCTION_163()
{
}

void OUTLINED_FUNCTION_163_0()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 352);

  JUMPOUT(0x1E12A4D20);
}

uint64_t sub_1DCB4D7CC()
{
  type metadata accessor for SiriKitEvent.SiriKitOverridesEventBuilder();
  OUTLINED_FUNCTION_136();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_156();
  v3 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  OUTLINED_FUNCTION_156();
  v5 = v0[14];
  v4 = v0[15];
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;

  return v1;
}

uint64_t SiriKitEvent.SiriKitEventBuilder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  return v0;
}

uint64_t sub_1DCB4D8F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_75_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_103_1()
{

  JUMPOUT(0x1E12A72C0);
}

void OUTLINED_FUNCTION_103_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_103_10()
{

  return sub_1DD0DBB3C();
}

uint64_t Input.inputOrAlternativesInterpretableAsUniversalAction.getter()
{
  v2 = v0;
  v3 = type metadata accessor for Parse(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7_50();
  v8 = type metadata accessor for USOParse();
  v9 = OUTLINED_FUNCTION_20_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v13 = type metadata accessor for Input(0);
  sub_1DCB29E58(v0 + *(v13 + 20), v0);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    OUTLINED_FUNCTION_4_42();
    sub_1DCB283D8(v0, v17);
    goto LABEL_5;
  }

  sub_1DCC6D300(v0, v1);
  v14 = sub_1DD0DB49C();
  OUTLINED_FUNCTION_0_22();
  sub_1DCB283D8(v1, v15);
  if ((v14 & 1) == 0)
  {
LABEL_5:
    v16 = Array<A>.interpretableAsUniversalAction.getter(*(v2 + *(v13 + 24)));
    return v16 & 1;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t Array<A>.interpretableAsUniversalAction.getter(uint64_t a1)
{
  v3 = type metadata accessor for USOParse();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_7_50();
  v9 = type metadata accessor for Parse(v8);
  v10 = OUTLINED_FUNCTION_4_16(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_8_60();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v31 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    OUTLINED_FUNCTION_10_56(v19);
    v24 = a1 + v23;
    v26 = *(v25 + 72);
    do
    {
      sub_1DCB29E58(v24, v21);
      sub_1DCB29E58(v21, v16);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1DCC6D300(v16, v1);
        v27 = sub_1DD0DB49C();
        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v1, v28);
        OUTLINED_FUNCTION_4_42();
        sub_1DCB283D8(v21, v29);
        if (v27)
        {
          return 1;
        }
      }

      else
      {
        sub_1DCB283D8(v21, type metadata accessor for Parse);
        sub_1DCB283D8(v16, type metadata accessor for Parse);
      }

      v24 += v26;
      --v22;
    }

    while (v22);
  }

  return 0;
}

uint64_t sub_1DCB4DCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D0, &qword_1DD105B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCB4DD44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB514AC(a1, v2);
  OUTLINED_FUNCTION_1_124(qword_1EDE4B5E8);
  sub_1DD0DCF8C();
}

uint64_t dispatch thunk of AnyFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 208);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

uint64_t sub_1DCB4DF50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB4DF64()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 104);
  v9 = (*(v1 + 96) + **(v1 + 96));
  v3 = *(*(v1 + 96) + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_76_6(v4);
  *v5 = v6;
  v5[1] = sub_1DCB3F98C;
  v7 = *(v0 + 16);

  return v9(v7);
}

uint64_t RefreshableDeviceState.isCarPlay.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isPhone.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 48);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

void static FlowSearchResult.flow(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for FlowSearchResult() + 24);
  v5 = type metadata accessor for NamedParseTransformer();
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  *a2 = a1;
  v6 = type metadata accessor for FlowToActingFlowAdapter(0);
  a2[4] = v6;
  a2[5] = &off_1EECFDA20;
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  swift_retain_n();
  sub_1DCB4E3B8();
}

uint64_t type metadata accessor for FlowSearchResult()
{
  result = qword_1EDE4B158;
  if (!qword_1EDE4B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NamedParseTransformer()
{
  result = qword_1EDE483B8;
  if (!qword_1EDE483B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB4E2DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_1DCB4E3B8()
{
  *(v0 + 16) = 0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

double sub_1DCB4E5AC@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCB0DF6C(v3 + 32, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void static Device.current.getter(uint64_t *a1@<X8>)
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v2 = qword_1EDE46630;
  sub_1DCB4E718(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  a1[3] = type metadata accessor for RefreshableDeviceState();
  a1[4] = &protocol witness table for RefreshableDeviceState;
  *a1 = v2;
  sub_1DD0DCF8C();
}

void sub_1DCB4E718(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 14);
  sub_1DCB4E778(&v3[4], a1);

  os_unfair_lock_unlock(v3 + 14);
}

uint64_t sub_1DCB4E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - v11;
  sub_1DCB099BC(a1, &v25, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (!v26)
  {
    sub_1DCB0E9D8(&v25, &qword_1ECCA8AB0, &qword_1DD0E23E0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = __swift_project_value_buffer(v14, qword_1EDE57E00);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v12, v15, v14);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
    sub_1DCB099BC(v12, v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
    {
      sub_1DCB0E9D8(v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v17 = sub_1DD0DD8EC();
      v18 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v25 = v27;
        *v19 = 136315650;
        v20 = sub_1DD0DEC3C();
        v22 = sub_1DCB10E9C(v20, v21, &v25);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 516;
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1DCB10E9C(0xD0000000000000C9, 0x80000001DD119080, &v25);
        _os_log_impl(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s", v19, 0x20u);
        v23 = v27;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v23, -1, -1);
        MEMORY[0x1E12A8390](v19, -1, -1);
      }

      (*(v16 + 8))(v9, v14);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000C9, 0x80000001DD119080);
  }

  return sub_1DCB18FF0(&v25, a2);
}

uint64_t RefreshableDeviceState.siriLocale.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 152);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t RefreshableDeviceState.isHomePod.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isMac.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isAppleTV.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.isTextToSpeechEnabled.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 96);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.siriVoiceGender.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 168);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t initializeWithCopy for UnlockDevicePolicy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

uint64_t RefreshableDeviceState.isWatch.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t sub_1DCB4F190(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DCB4F1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1_3(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t destroy for FlowSearchResult(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  v5 = a1 + *(a2 + 24);
  v6 = type metadata accessor for NamedParseTransformer();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (!result)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (!__swift_getEnumTagSinglePayload(v5, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v5, v8);
    }

    v9 = *(v6 + 20);
    sub_1DD0DCF7C();
  }

  return result;
}

uint64_t sub_1DCB4F370()
{
  v1 = v0[3];

  OUTLINED_FUNCTION_1_56();
  sub_1DCB4F3E0(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB4F3E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB4F438(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 0:
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    case 1:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v9 = a1[5];

      v10 = a1[6];
      goto LABEL_11;
    case 2:
      v4 = a1[1];

      v5 = a1[2];
      goto LABEL_11;
    case 3:
      v6 = *a1;
LABEL_11:

    case 4:
      v3 = a1[1];
      goto LABEL_7;
    case 5:
      v11 = *a1;
      v12 = a1[1];
      v13 = *(a1 + 16);

      return sub_1DCD21390(v11, v12, v13);
    case 6:
      v14 = a1[1];

      v15 = type metadata accessor for PluginAction();
      v16 = a1 + v15[5];
      v17 = sub_1DD0DB04C();
      v67 = *(*(v17 - 8) + 8);
      v67(v16, v17);
      v18 = type metadata accessor for Input(0);
      v19 = &v16[v18[5]];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          goto LABEL_21;
        case 1u:
          v33 = sub_1DD0DC76C();
          (*(*(v33 - 8) + 8))(v19, v33);
          v34 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v21 = *(v19 + 1);

          v22 = *(v19 + 2);
          goto LABEL_33;
        case 3u:
          v23 = *v19;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v20 = sub_1DD0DB1EC();
          goto LABEL_21;
        case 5u:
          v35 = *v19;
          goto LABEL_39;
        case 6u:
          v36 = sub_1DD0DB4BC();
          (*(*(v36 - 8) + 8))(v19, v36);
          v37 = type metadata accessor for USOParse();
          v38 = *(v37 + 20);
          v39 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v19[v38], 1, v39))
          {
            (*(*(v39 - 8) + 8))(&v19[v38], v39);
          }

          v32 = *(v37 + 24);
          goto LABEL_32;
        case 7u:
          v24 = sub_1DD0DB4BC();
          (*(*(v24 - 8) + 8))(v19, v24);
          v25 = type metadata accessor for USOParse();
          v26 = *(v25 + 20);
          v27 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v19[v26], 1, v27))
          {
            (*(*(v27 - 8) + 8))(&v19[v26], v27);
          }

          v28 = *&v19[*(v25 + 24) + 8];

          v29 = type metadata accessor for LinkParse();
          v30 = *&v19[v29[5] + 8];

          v31 = *&v19[v29[6] + 8];

          v32 = v29[7];
LABEL_32:
          v40 = *&v19[v32 + 8];
LABEL_33:

          break;
        case 8u:
          v41 = sub_1DD0DD12C();
          (*(*(v41 - 8) + 8))(v19, v41);
          v42 = type metadata accessor for NLRouterParse();
          v43 = *&v19[v42[5] + 8];

          v44 = &v19[v42[6]];
          v45 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v44, 1, v45))
          {
            v46 = sub_1DD0DB4BC();
            (*(*(v46 - 8) + 8))(v44, v46);
            v47 = *(v45 + 20);
            v48 = sub_1DD0DB3EC();
            v66 = v47;
            v49 = v44 + v47;
            v50 = v48;
            if (!__swift_getEnumTagSinglePayload(v49, 1, v48))
            {
              (*(*(v50 - 8) + 8))(v44 + v66, v50);
            }

            v51 = *(v44 + *(v45 + 24) + 8);
          }

          v35 = *&v19[v42[7]];
LABEL_39:

          break;
        case 9u:
          v20 = sub_1DD0DD08C();
LABEL_21:
          (*(*(v20 - 8) + 8))(v19, v20);
          break;
        default:
          break;
      }

      v52 = *&v16[v18[6]];

      v53 = &v16[v18[7]];
      if (v53[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }

      v54 = *(a1 + v15[6]);

      v55 = *(a1 + v15[8] + 8);

      v56 = a1 + v15[9];
      v57 = type metadata accessor for ActionParaphrase(0);
      if (!__swift_getEnumTagSinglePayload(v56, 1, v57))
      {
        v58 = *(v56 + 8);

        v59 = v56 + *(v57 + 20);
        v60 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (!__swift_getEnumTagSinglePayload(v59, 1, v60))
        {
          v61 = *(v59 + 8);

          v62 = *(v59 + 24);

          v63 = *(v60 + 24);
          v64 = sub_1DD0DB66C();
          (*(*(v64 - 8) + 8))(v59 + v63, v64);
        }
      }

      v65 = v15[10];
      result = __swift_getEnumTagSinglePayload(a1 + v65, 1, v17);
      if (!result)
      {

        return (v67)(a1 + v65, v17);
      }

      return result;
    case 7:
      v7 = a1[1];

      v8 = a1[3];
LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCB4FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

size_t Parse.usoTasks.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v124 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v13 = OUTLINED_FUNCTION_20_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v124 - v17;
  v19 = sub_1DD0DB5BC();
  v20 = OUTLINED_FUNCTION_10_57(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  OUTLINED_FUNCTION_16();
  v28 = v27 - v26;
  v29 = type metadata accessor for USOParse();
  v30 = OUTLINED_FUNCTION_20_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  OUTLINED_FUNCTION_16();
  v36 = v35 - v34;
  v37 = type metadata accessor for Parse(0);
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  OUTLINED_FUNCTION_16();
  v44 = (v43 - v42);
  sub_1DCB29E58(v1, v43 - v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v49 = *v44;
    v50 = v44[1];
    v51 = v44[2];
    v52 = *MEMORY[0x1E69D01D8];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_7_51();
    v54 = v54 && v53 == v50;
    if (v54)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_13_52();
      if ((v2 & 1) == 0)
      {
        v55 = *MEMORY[0x1E69D0210];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_7_51();
        if (v54 && v56 == v50)
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_13_52();
        if (v2)
        {
          goto LABEL_59;
        }

        v58 = *MEMORY[0x1E69D01F8];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_7_51();
        if (v54 && v59 == v50)
        {
LABEL_58:

          goto LABEL_59;
        }

        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_13_52();
        if (v2)
        {
          goto LABEL_59;
        }

        v61 = *MEMORY[0x1E69D0200];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_7_51();
        if (v54 && v62 == v50)
        {
        }

        else
        {
          OUTLINED_FUNCTION_3_89();
          OUTLINED_FUNCTION_13_52();
          if ((v2 & 1) == 0)
          {
            v64 = *MEMORY[0x1E69D01E8];
            sub_1DD0DDFBC();
            OUTLINED_FUNCTION_7_51();
            if (v54 && v65 == v50)
            {
            }

            else
            {
              OUTLINED_FUNCTION_3_89();
              OUTLINED_FUNCTION_13_52();
              if ((v2 & 1) == 0)
              {
                v67 = *MEMORY[0x1E69D01E0];
                sub_1DD0DDFBC();
                OUTLINED_FUNCTION_7_51();
                if (v54 && v68 == v50)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_3_89();
                  OUTLINED_FUNCTION_13_52();
                  if ((v2 & 1) == 0)
                  {
                    v70 = *MEMORY[0x1E69D0208];
                    if (sub_1DD0DDFBC() == v49 && v71 == v50)
                    {

                      goto LABEL_59;
                    }

                    v73 = v49;
                    v74 = sub_1DD0DF0AC();

                    if ((v74 & 1) == 0)
                    {
                      v75 = *MEMORY[0x1E69D01F0];
                      if (sub_1DD0DDFBC() != v73 || v76 != v50)
                      {
                        v78 = OUTLINED_FUNCTION_17_33();

                        if ((v78 & 1) == 0)
                        {
                          v79 = *MEMORY[0x1E69D01D0];
                          if (sub_1DD0DDFBC() == v73 && v80 == v50)
                          {
                          }

                          else
                          {
                            v82 = OUTLINED_FUNCTION_17_33();

                            if ((v82 & 1) == 0)
                            {

                              return MEMORY[0x1E69E7CC0];
                            }
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
                          v111 = OUTLINED_FUNCTION_11_52();
                          OUTLINED_FUNCTION_99(v111);
                          v113 = *(v112 + 72);
                          *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
                          v114 = sub_1DD0DBB6C();
                          OUTLINED_FUNCTION_73_1(v114);
                          v87 = OUTLINED_FUNCTION_15_50() & 0xFFFFFFFFFFFFLL | 0x575F000000000000;
                          v88 = 0xEE0074756F6B726FLL;
                          v89 = 0x627265566F6ELL;
                          goto LABEL_65;
                        }

                        goto LABEL_59;
                      }

                      goto LABEL_58;
                    }

LABEL_59:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
                    v91 = OUTLINED_FUNCTION_11_52();
                    OUTLINED_FUNCTION_99(v91);
                    v93 = *(v92 + 72);
                    *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
                    v94 = OUTLINED_FUNCTION_18_38();
                    OUTLINED_FUNCTION_73_1(v94);
                    OUTLINED_FUNCTION_16_40();
                    v88 = v18 | 0x8000000000000000;
                    v87 = 0xD000000000000010;
LABEL_60:
                    v90 = 0xE900000000000065;
                    goto LABEL_61;
                  }
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
                v106 = OUTLINED_FUNCTION_11_52();
                OUTLINED_FUNCTION_99(v106);
                v108 = *(v107 + 72);
                *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
                v109 = OUTLINED_FUNCTION_18_38();
                OUTLINED_FUNCTION_73_1(v109);
                OUTLINED_FUNCTION_9_58();
                OUTLINED_FUNCTION_16_40();
                v87 = v110 | 3;
                v88 = v18 | 0x8000000000000000;
                goto LABEL_60;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
            v101 = OUTLINED_FUNCTION_11_52();
            OUTLINED_FUNCTION_99(v101);
            v103 = *(v102 + 72);
            *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
            v104 = OUTLINED_FUNCTION_18_38();
            OUTLINED_FUNCTION_73_1(v104);
            OUTLINED_FUNCTION_9_58();
            v87 = v105 | 3;
            v88 = v18 | 0x8000000000000000;
LABEL_57:
            v89 = 1684104562;
            v90 = 0xE400000000000000;
            goto LABEL_61;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
        v96 = OUTLINED_FUNCTION_11_52();
        OUTLINED_FUNCTION_99(v96);
        v98 = *(v97 + 72);
        *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
        v99 = OUTLINED_FUNCTION_18_38();
        OUTLINED_FUNCTION_73_1(v99);
        OUTLINED_FUNCTION_9_58();
        v89 = 0x627265566F6ELL;
        v87 = v100 | 1;
        v88 = v18 | 0x8000000000000000;
LABEL_65:
        v90 = 0xE600000000000000;
LABEL_61:
        MEMORY[0x1E12A41B0](v87, v88, v89, v90);
        sub_1DCE33DD0();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7968, &unk_1DD0F9880);
    v83 = OUTLINED_FUNCTION_11_52();
    OUTLINED_FUNCTION_99(v83);
    v85 = *(v84 + 72);
    *(OUTLINED_FUNCTION_0_79() + 16) = xmmword_1DD0E07C0;
    v86 = sub_1DD0DBB6C();
    OUTLINED_FUNCTION_73_1(v86);
    v87 = OUTLINED_FUNCTION_15_50() & 0xFFFFFFFFFFFFLL | 0x4D5F000000000000;
    v88 = 0xEE00656761737365;
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v48 = *v44;
    v47 = sub_1DCE33A70();
    swift_unknownObjectRelease();
    return v47;
  }

  if (EnumCaseMultiPayload != 6)
  {
    sub_1DCB283D8(v44, type metadata accessor for Parse);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DCC6D300(v44, v36);
  v46 = sub_1DD0DB46C();
  sub_1DCC621EC(v46);

  if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
  {
    sub_1DCB0E9D8(v18, &qword_1ECCA29B8, &qword_1DD0E96C0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v115 = sub_1DD0DD8FC();
    v116 = __swift_project_value_buffer(v115, qword_1EDE57E00);
    v117 = *(v115 - 8);
    (*(v117 + 16))(v11, v116, v115);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v115);
    sub_1DCBCF6C8(v11, v0);
    if (__swift_getEnumTagSinglePayload(v0, 1, v115) == 1)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v118 = sub_1DD0DD8EC();
      v119 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v120 = 136315650;
        v121 = sub_1DD0DEC3C();
        v123 = sub_1DCB10E9C(v121, v122, &v125);

        *(v120 + 4) = v123;
        *(v120 + 12) = 2048;
        *(v120 + 14) = 64;
        *(v120 + 22) = 2080;
        *(v120 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD117620, &v125);
        _os_log_impl(&dword_1DCAFC000, v118, v119, "FatalError at %s:%lu - %s", v120, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v117 + 8))(v0, v115);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD117620);
  }

  (*(v22 + 32))(v28, v18, v2);
  v47 = sub_1DCE33C20();
  (*(v22 + 8))(v28, v2);
  sub_1DCB283D8(v36, type metadata accessor for USOParse);
  return v47;
}

uint64_t FlowPluginBundleImpl.bundlePath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriKitFlow::HandcraftedPluginManifestEntry_optional static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  OUTLINED_FUNCTION_3_62();
  v6 = OUTLINED_FUNCTION_2_55();
  v7 = sub_1DCB1D5C0(v6);
  v9 = v8;

  if (!v9)
  {
    goto LABEL_6;
  }

  if (qword_1EDE46960 != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  v10 = sub_1DCB508E0(v7, v9, qword_1EDE46968);

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  result.value = HandcraftedPluginManifestEntry.init(rawValue:)(v13).value;
  if (v16 != 38)
  {
    *a3 = v16;
  }

  else
  {
LABEL_6:

    v15._countAndFlagsBits = a1;
    v15._object = a2;
    return HandcraftedPluginManifestEntry.init(rawValue:)(v15);
  }

  return result;
}

uint64_t sub_1DCB508E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB21038(a1, a2);
  if (v4)
  {
    OUTLINED_FUNCTION_5_14(v3);
    sub_1DD0DCF8C();
  }

  return 0;
}

SiriKitFlow::HandcraftedPluginManifestEntry_optional __swiftcall HandcraftedPluginManifestEntry.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DF0FC();

  v5 = 0;
  v6 = 20;
  switch(v3)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 1;
      goto LABEL_34;
    case 2:
      v5 = 2;
      goto LABEL_34;
    case 3:
      v5 = 3;
      goto LABEL_34;
    case 4:
      v5 = 4;
      goto LABEL_34;
    case 5:
      v5 = 5;
      goto LABEL_34;
    case 6:
      v5 = 6;
      goto LABEL_34;
    case 7:
      v5 = 7;
      goto LABEL_34;
    case 8:
      v5 = 8;
      goto LABEL_34;
    case 9:
      v5 = 9;
      goto LABEL_34;
    case 10:
      v5 = 10;
      goto LABEL_34;
    case 11:
      v5 = 11;
      goto LABEL_34;
    case 12:
      v5 = 12;
      goto LABEL_34;
    case 13:
      v5 = 13;
      goto LABEL_34;
    case 14:
      v5 = 14;
      goto LABEL_34;
    case 15:
      v5 = 15;
      goto LABEL_34;
    case 16:
      v5 = 16;
      goto LABEL_34;
    case 17:
      v5 = 17;
      goto LABEL_34;
    case 18:
      v5 = 18;
      goto LABEL_34;
    case 19:
      v5 = 19;
LABEL_34:
      v6 = v5;
      break;
    case 20:
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    default:
      v6 = 38;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for HandcraftedPluginManifestEntry(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DCB50C00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  v10 = *v0;
  if (qword_1EDE4D9B8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDE4D9C0;
  LOBYTE(v32) = v10;
  v12 = HandcraftedPluginManifestEntry.rawValue.getter();
  v14 = sub_1DCB508E0(v12, v13, v11);

  if (!v14)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v32 = 0xD00000000000001DLL;
    v33 = 0x80000001DD11BC30;
    LOBYTE(v31) = v10;
    v16 = HandcraftedPluginManifestEntry.rawValue.getter();
    MEMORY[0x1E12A6780](v16);

    MEMORY[0x1E12A6780](0x7373696D20736920, 0xEC00000021676E69);
    v17 = v32;
    v18 = v33;
    v19 = qword_1EDE4F900;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    v21 = __swift_project_value_buffer(v20, qword_1EDE57E00);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v9, v21, v20);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
    sub_1DCBCF6C8(v9, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
    {
      sub_1DCBCF738(v6);
    }

    else
    {

      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v25 = 136315650;
        v26 = sub_1DD0DEC3C();
        v28 = sub_1DCB10E9C(v26, v27, &v31);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2048;
        *(v25 + 14) = 451;
        *(v25 + 22) = 2080;
        *(v25 + 24) = sub_1DCB10E9C(v17, v18, &v31);
        _os_log_impl(&dword_1DCAFC000, v23, v24, "FatalError at %s:%lu - %s", v25, 0x20u);
        v29 = v30;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v29, -1, -1);
        MEMORY[0x1E12A8390](v25, -1, -1);
      }

      (*(v22 + 8))(v6, v20);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v17, v18);
  }

  return v14;
}

uint64_t HandcraftedPluginManifestEntry.isPersonalDomain.getter()
{
  OUTLINED_FUNCTION_1_59();
  v0 = *(sub_1DCB50C00() + 48);

  return v0;
}

unint64_t HandcraftedPluginManifestEntry.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 2:
    case 5:
    case 0x23:
      result = 0xD00000000000002CLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 7:
    case 0x18:
    case 0x1C:
      result = 0xD000000000000029;
      break;
    case 8:
    case 0xF:
    case 0x21:
      result = 0xD00000000000002FLL;
      break;
    case 9:
    case 0xC:
    case 0x22:
    case 0x24:
      result = 0xD000000000000026;
      break;
    case 0xA:
    case 0xD:
    case 0x13:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD000000000000022;
      break;
    case 0xE:
    case 0x1A:
    case 0x1E:
      result = 0xD000000000000027;
      break;
    case 0x10:
      result = 0xD000000000000032;
      break;
    case 0x11:
    case 0x16:
    case 0x1D:
    case 0x25:
      result = 0xD000000000000021;
      break;
    case 0x12:
      result = 0xD000000000000016;
      break;
    case 0x14:
      result = 0xD000000000000025;
      break;
    case 0x15:
      result = 0xD000000000000031;
      break;
    case 0x17:
      result = 0xD00000000000002ELL;
      break;
    case 0x19:
      result = 0xD00000000000002ALL;
      break;
    case 0x1B:
      result = 0xD00000000000001FLL;
      break;
    case 0x1F:
      result = 0xD000000000000023;
      break;
    case 0x20:
      result = 0xD000000000000033;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HandcraftedPluginManifestEntry.sensitivityPolicy.getter()
{
  OUTLINED_FUNCTION_1_59();
  v0 = *(sub_1DCB50C00() + 56);

  return v0;
}

_BYTE *storeEnumTagSinglePayload for HandcraftedPluginManifestEntry(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
        JUMPOUT(0x1DCB51460);
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB514AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D0, &qword_1DD105B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCB51540()
{
  result = qword_1EDE4F210;
  if (!qword_1EDE4F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F210);
  }

  return result;
}

void Parse.DirectInvocation.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D70, &qword_1DD0FB028);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  v11 = *v0;
  v12 = v0[1];
  v33 = v0[2];
  v13 = v3[4];
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCB34FA8();
  sub_1DD0DF24C();
  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFBC();
  if (!v1)
  {
    v17 = v6;
    if (v33)
    {
      v18 = objc_opt_self();
      v19 = sub_1DD0DDE4C();
      v34[0] = 0;
      v20 = [v18 dataWithPropertyList:v19 format:200 options:0 error:v34];

      v21 = v34[0];
      if (v20)
      {
        v22 = sub_1DD0DAF2C();
        v24 = v23;

        v34[0] = v22;
        v34[1] = v24;
        sub_1DCB51540();
        OUTLINED_FUNCTION_56_2();
        sub_1DD0DEFFC();
        v25 = *(v17 + 8);
        v26 = OUTLINED_FUNCTION_53_16();
        v27(v26);
        sub_1DCB21A14(v22, v24);
        goto LABEL_8;
      }

      v28 = v21;
      sub_1DD0DAE0C();

      swift_willThrow();
    }

    v29 = *(v17 + 8);
    v30 = OUTLINED_FUNCTION_53_16();
    v31(v30);
    goto LABEL_8;
  }

  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_53_16();
  v16(v15);
LABEL_8:
  v32 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCB5181C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4A468;

  return v8(v1);
}

void OUTLINED_FUNCTION_70_0()
{

  sub_1DCFF21F0(0, 0, (v0 + 184));
}

uint64_t OUTLINED_FUNCTION_70_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[12] = result;
  v2[13] = a2;
  v2[9] = v3;
  return result;
}

void *OUTLINED_FUNCTION_70_5(uint64_t a1, uint64_t a2, size_t a3)
{

  return memcpy(v3, v4, a3);
}

BOOL OUTLINED_FUNCTION_45_1()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_70_6()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 144);

  return static ExecuteResponse.complete()();
}

uint64_t *OUTLINED_FUNCTION_70_8(uint64_t a1)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 + 40));
}

void OUTLINED_FUNCTION_70_10()
{

  sub_1DCB38954();
}

void *OUTLINED_FUNCTION_70_13()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_70_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[16];
  v3 = v2[17];
  v6 = v2[14];
  v5 = v2[15];
  return v2[12];
}

uint64_t OUTLINED_FUNCTION_70_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
}

uint64_t OUTLINED_FUNCTION_70_16(uint64_t result)
{
  v3 = *(v1 + 336);
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return sub_1DD0DE33C();
}

void OUTLINED_FUNCTION_65_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}