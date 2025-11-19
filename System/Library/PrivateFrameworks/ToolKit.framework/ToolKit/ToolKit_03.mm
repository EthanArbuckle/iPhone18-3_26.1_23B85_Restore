uint64_t sub_1C8CDCA00()
{
  OUTLINED_FUNCTION_347_0();
  if ((~*(v0 + 24) & 0xF000000000000007) != 0)
  {
  }

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDCA6C()
{
  OUTLINED_FUNCTION_347_0();
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CDCAA8()
{
  OUTLINED_FUNCTION_347_0();
  v1 = *(v0 + 24);

  sub_1C8D43CA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C8CDCB64()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CDCD00()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_7ToolKit08CompoundaB14PropertyFilterOySSG_0(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1C8CDCE1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_161_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C8CDCE54()
{
  v1 = type metadata accessor for ToolInvocation();
  v2 = *(*(v1 - 1) + 80);
  v66 = *(*(v1 - 1) + 64);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
  OUTLINED_FUNCTION_11(v67);
  v4 = v3;
  v5 = *(v3 + 80);
  v65 = *(v6 + 64);

  v7 = v0 + ((v2 + 24) & ~v2);
  v8 = sub_1C906204C();
  OUTLINED_FUNCTION_13_1(v8);
  (*(v9 + 8))(v7);
  v10 = (v7 + v1[5]);
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[5];

  v14 = v10[6];

  v15 = v10[7];

  v16 = v10[9];

  if (v10[11])
  {

    v17 = v10[13];

    v18 = v10[15];

    v19 = v10[17];

    v20 = v10[19];

    v21 = v10[21];

    v22 = v10[23];
  }

  v23 = v10[25];

  v24 = v10[26];

  v25 = v10[28];

  v26 = v10[30];

  v27 = v10[33];

  v28 = v10[35];

  if (v10[38])
  {

    v29 = v10[39];

    v30 = v10[41];

    v31 = v10[43];

    v32 = v10[46];

    v33 = v10[48];
  }

  v34 = v10[50];

  v35 = v10[52];

  v36 = v10[54];

  v37 = v10[56];

  v38 = v10[58];

  v39 = v10[60];

  v40 = type metadata accessor for ToolDefinition(0);
  v41 = v10 + v40[16];
  v42 = type metadata accessor for ToolIcon(0);
  if (!__swift_getEnumTagSinglePayload(v41, 1, v42))
  {
    OUTLINED_FUNCTION_127();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v45 = *(v41 + 8);

      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      v47 = sub_1C9061EBC();
      OUTLINED_FUNCTION_13_1(v47);
      (*(v48 + 8))(v41 + v46);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v44 = *(v41 + 8);
    }
  }

  v49 = *(v10 + v40[17]);

  v50 = *(v10 + v40[18]);

  v51 = v10 + v40[19];
  if (*(v51 + 1))
  {

    v52 = *(v51 + 3);
  }

  v53 = *(v10 + v40[20]);

  v54 = *(v10 + v40[23]);

  v55 = *(v10 + v40[24] + 8);

  v56 = *(v10 + v40[26]);

  v57 = *(v10 + v40[27]);

  v58 = *(v7 + v1[6]);

  v59 = v7 + v1[7];
  if (*(v59 + 16) != 1)
  {

    v60 = *(v59 + 32);
  }

  v61 = (((v2 + 24) & ~v2) + v66 + v5) & ~v5;
  v62 = (v65 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v61, v67);
  v63 = *(v0 + v62);

  return MEMORY[0x1EEE6BDD0](v0, v62 + 8, v2 | v5 | 7);
}

uint64_t sub_1C8CDD24C()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_161_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDD298()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDD3F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CDD438()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDD730()
{
  sub_1C8D06E10(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C8CDD89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E32DE0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CDD8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E32E60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CDDB7C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1C8D0C7B0();
}

uint64_t sub_1C8CDDBA0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_1C8CE53D0();
}

uint64_t sub_1C8CDDC4C()
{
  OUTLINED_FUNCTION_156_3();
  v3 = sub_1C90620BC();
  v4 = OUTLINED_FUNCTION_179(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_18_10(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1C8CDDCE0()
{
  OUTLINED_FUNCTION_44_0();
  v4 = sub_1C90620BC();
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_227_0();

    return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_1C8CDDDA0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_223();
  v6 = type metadata accessor for ToolInvocation();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
    v12 = OUTLINED_FUNCTION_179(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B8, &unk_1C9085198);
      v16 = OUTLINED_FUNCTION_179(v15);
      if (*(v17 + 84) != v3)
      {
        return OUTLINED_FUNCTION_18_10(*(v4 + a3[8]));
      }

      v9 = v16;
      v14 = a3[6];
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1C8CDDED4()
{
  OUTLINED_FUNCTION_44_0();
  v4 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_179(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_227_0();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == v3)
    {
      v7 = v9;
      v11 = v2[5];
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B8, &unk_1C9085198);
      result = OUTLINED_FUNCTION_179(v12);
      if (*(v14 + 84) != v3)
      {
        *(v1 + v2[8]) = v0;
        return result;
      }

      v7 = result;
      v11 = v2[6];
    }

    v6 = v1 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

uint64_t sub_1C8CDE034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    return OUTLINED_FUNCTION_166_2();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1C8CDE0B4()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *(v1 + 8) = v0 + 2;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
    v5 = OUTLINED_FUNCTION_37_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDE130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    return OUTLINED_FUNCTION_166_2();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  v8 = OUTLINED_FUNCTION_179(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 24);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
    v11 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sub_1C8CDE1FC()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 253)
  {
    *(v1 + 8) = v0 + 2;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
    OUTLINED_FUNCTION_179(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
      v8 = *(v4 + 28);
    }

    v9 = OUTLINED_FUNCTION_37_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_1C8CDE2D4()
{
  OUTLINED_FUNCTION_223();
  v2 = sub_1C9061EBC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v0, v2);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CDE318(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 2);
  }

  else
  {
    v4 = 0;
  }

  sub_1C9061EBC();
  v5 = OUTLINED_FUNCTION_227_0();

  return __swift_storeEnumTagSinglePayload(v5, v4, a3, v6);
}

uint64_t sub_1C8CDE414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_21_0(*(a1 + 56));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1C8CDE49C()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 56) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
    v5 = OUTLINED_FUNCTION_37_1(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_21_0(*(a1 + *(a3 + 24)));
  }

  v9 = v7;
  v10 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1C8CDE5D0()
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_37_1(*(v2 + 20));

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C8CDE95C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8CDEADC()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CDEB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C906204C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C8CDEBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C906204C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C8CDECB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8E796D0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8CDECE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8CDED20()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
  v2 = sub_1C906427C();
  OUTLINED_FUNCTION_11(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 32);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t sub_1C8CDEE00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

ToolKit::ToolVisibilityFlag sub_1C8CDEF30@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ToolVisibilityFlag.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C8CDEF70@<X0>(uint64_t *a1@<X8>)
{
  result = ToolVisibilityFlag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CDF0A8(char a1)
{
  if (a1)
  {
    return 0x6C61757145726FLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C8CDF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8D0C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CDF1AC(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_133_3();
  }

  if (a1 == 1)
  {
    return 0x7261507473726966;
  }

  return 0x7261506472696874;
}

uint64_t sub_1C8CDF200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E91810();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CDF234(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1C8CDF26C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E923B4();
  *a1 = result;
  return result;
}

uint64_t _s7ToolKit8ToolFlagVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_80(*a1);
  }

  else
  {
    return 0;
  }
}

void *sub_1C8CDF42C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_242_2(result, (a2 - 1));
  }

  return result;
}

uint64_t sub_1C8CDF714(char a1)
{
  if (a1)
  {
    return 0x7250797469746E65;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8CDF80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EACFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit06SystemA8ProtocolO8MetadataO_0(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 9)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1C8CDFAAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 10;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1C8CDFB7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CDFBC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDFE0C()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_108_1(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CDFEC0()
{
  OUTLINED_FUNCTION_19_11();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
    OUTLINED_FUNCTION_179(v7);
    if (*(v8 + 84) == v6)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      v9 = *(v5 + 24);
    }

    v10 = OUTLINED_FUNCTION_37_1(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1C8CDFFD8()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v0);
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CE0044()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v4 = OUTLINED_FUNCTION_37_1(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CE00A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CE00F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ToolKitProtoChangeset.Partial(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1C8CE015C()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CE01C8()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_37_1(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CE0234()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CE02A0()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_37_1(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CE03A0()
{
  v1 = type metadata accessor for ToolDefinition(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v63 = sub_1C90620BC();
  OUTLINED_FUNCTION_11(v63);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v10 = *(v9 + 64);
  v11 = *(v0 + 16);

  v12 = (v0 + v3);
  v13 = *(v0 + v3 + 8);

  v14 = *(v0 + v3 + 24);

  v15 = *(v0 + v3 + 40);

  v16 = *(v0 + v3 + 48);

  v17 = *(v0 + v3 + 56);

  v18 = *(v0 + v3 + 72);

  if (*(v0 + v3 + 88))
  {

    v19 = v12[13];

    v20 = v12[15];

    v21 = v12[17];

    v22 = v12[19];

    v23 = v12[21];

    v24 = v12[23];
  }

  v25 = v10 + v8;
  v26 = v12[25];

  v27 = v12[26];

  v28 = v12[28];

  v29 = v12[30];

  v30 = v12[33];

  v31 = v12[35];

  if (v12[38])
  {

    v32 = v12[39];

    v33 = v12[41];

    v34 = v12[43];

    v35 = v12[46];

    v36 = v12[48];
  }

  v37 = v25 + 7;
  v38 = v12[50];

  v39 = v12[52];

  v40 = v12[54];

  v41 = v12[56];

  v42 = v12[58];

  v43 = v12[60];

  v44 = v12 + v1[16];
  v45 = type metadata accessor for ToolIcon(0);
  if (!__swift_getEnumTagSinglePayload(v44, 1, v45))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v48 = *(v44 + 8);

      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      v50 = sub_1C9061EBC();
      OUTLINED_FUNCTION_13_1(v50);
      (*(v51 + 8))(v44 + v49);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v47 = *(v44 + 8);
    }
  }

  v52 = v37 & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v12 + v1[17]);

  v54 = *(v12 + v1[18]);

  v55 = v12 + v1[19];
  if (*(v55 + 1))
  {

    v56 = *(v55 + 3);
  }

  v57 = *(v12 + v1[20]);

  v58 = *(v12 + v1[23]);

  v59 = *(v12 + v1[24] + 8);

  v60 = *(v12 + v1[26]);

  v61 = *(v12 + v1[27]);

  (*(v6 + 8))(v0 + v8, v63);
  if (*(v0 + v52 + 8) >= 5uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v52 + 16, v2 | v7 | 7);
}

uint64_t sub_1C8CE0714()
{
  v1 = sub_1C90620BC();
  OUTLINED_FUNCTION_11(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 121) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  v11 = *(v0 + 7);

  v12 = *(v0 + 9);

  v13 = *(v0 + 12);

  v14 = *(v0 + 14);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C8CE07FC()
{
  v1 = *(v0 + 16);

  sub_1C8ED37F0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);

  v7 = *(v0 + 216);

  return MEMORY[0x1EEE6BDD0](v0, 225, 7);
}

uint64_t sub_1C8CE08AC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8ED3AE8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8CE096C(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  result = sub_1C8CE092C(a1, *a2, a3 & 1);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1C8CE0A08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE0B94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE0DC0()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CE0E10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CE0EA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CE11CC()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CE12A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CE1338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CE1508()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE17D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE1810()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  if (v0[16])
  {

    v7 = v0[17];

    v8 = v0[19];

    v9 = v0[21];

    v10 = v0[24];

    v11 = v0[26];
  }

  v12 = v0[29];

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1C8CE18AC()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CE18E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CE1934()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE1990()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CE1ED4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE1F08()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE1F3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C8CE1F88()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE1FBC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CE205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C90620BC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8CE2104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C90620BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C8CE21C4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE2220()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE2258()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE22B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C8CE22FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C8CE2604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C8F409E4();
  *a2 = result;
  return result;
}

uint64_t sub_1C8CE2668()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE269C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  OUTLINED_FUNCTION_93_6();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1C8CE26EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  sub_1C8E1B758(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1C8CE2748()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C8CE2A18()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_204_4(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_292();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v12 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC313F20, &unk_1C9074D20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    OUTLINED_FUNCTION_195_3();
    v19 = OUTLINED_FUNCTION_49();
    sub_1C8CD20B4(v19, v20);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CE2CE8(uint64_t result)
{
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 8);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2D4C(uint64_t result)
{
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 8);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2D84(uint64_t result)
{
  if (*(result + 32))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 24);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2DF0(uint64_t result)
{
  if (*(result + 8))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *v1;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2E28(uint64_t result)
{
  if (*(result + 24))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 16);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2E60(uint64_t result)
{
  if (*(result + 40))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 32);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2E98(uint64_t result)
{
  if (*(result + 56))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 48);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2ED0(uint64_t result)
{
  if (*(result + 72))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 64);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2F08(uint64_t result)
{
  if (*(result + 88))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 80);
    return sub_1C9063B8C();
  }

  return result;
}

void sub_1C8CE2FE8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_204_4(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_292();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC3139D8, &qword_1C9072A40);
  }

  else
  {
    OUTLINED_FUNCTION_248_3();
    sub_1C900BE74();
    sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
    OUTLINED_FUNCTION_195_3();
    v19 = OUTLINED_FUNCTION_49();
    sub_1C8CD20B4(v19, v20);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C8CE316C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_204_4(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_292();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v12 = type metadata accessor for ToolKitProtoTypeInstance(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
  }

  else
  {
    OUTLINED_FUNCTION_234_3();
    sub_1C900BE74();
    OUTLINED_FUNCTION_229_4();
    sub_1C8CD1B00(v19, v20);
    OUTLINED_FUNCTION_195_3();
    v21 = OUTLINED_FUNCTION_49();
    sub_1C8CD20B4(v21, v22);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CE38D0(uint64_t result)
{
  if (*(result + 32))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 24);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE3964(uint64_t result)
{
  if (*(result + 64))
  {
    OUTLINED_FUNCTION_219_2();
    v2 = *(v1 + 56);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE39D8@<X0>(_DWORD *a1@<X8>)
{
  result = Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE3E08()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

__n128 sub_1C8CE4484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C8CE47CC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8CE4810()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C8CE4BAC(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_10_48(a1);
}

uint64_t sub_1C8CE4CC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CE4D0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CE4D50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB50, &qword_1C90C7448);
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CE4E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolRecord();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C8CE4EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ToolRecord();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C8CE5018(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CE50AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CE515C()
{
  sub_1C8CE7B78(v0[2], v0[3]);
  v1 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CE528C()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

char *sub_1C8CE5358(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_9(a3, result, a2);
  }

  return result;
}

uint64_t sub_1C8CE5404(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IntentStateChange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C8CE5448(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8CE5490(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C8CE54BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CE537C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CE54E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t _s7ToolKit14TypeIdentifierO015MeasurementUnitC0O9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CE5698(char a1)
{
  result = 0x64496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0x64726F7779656BLL;
      break;
    case 3:
      result = 0x726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CE5714()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CE5760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CE54E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CE57A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CE563C();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE57D0(uint64_t a1)
{
  v2 = sub_1C8CE6F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CE580C(uint64_t a1)
{
  v2 = sub_1C8CE6F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8CE5848(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3122B8, &qword_1C90662A8);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8CE6F6C();
  sub_1C9064E1C();
  v14 = *v3;
  v21[15] = 0;
  OUTLINED_FUNCTION_12_0();
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v21[14] = 1;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v21[13] = 2;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v19 = v3[5];
    v21[12] = 3;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B6C();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C8CE59E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3122A8, &qword_1C90662A0);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8CE6F6C();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_7();
  v10 = sub_1C9064A7C();
  OUTLINED_FUNCTION_1_7();
  v11 = sub_1C9064A0C();
  v13 = v12;
  v22 = v11;
  v23 = v10;
  OUTLINED_FUNCTION_1_7();
  v14 = sub_1C9064A0C();
  v16 = v15;
  v21 = v14;
  OUTLINED_FUNCTION_1_7();
  v17 = sub_1C9064A4C();
  v18 = OUTLINED_FUNCTION_0();
  v19(v18);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v23;
  a2[1] = v22;
  a2[2] = v13;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v17;
  return result;
}

double sub_1C8CE5C10@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C8CE59E0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_1C8CE5C6C@<D0>(_OWORD *a1@<X8>)
{
  sub_1C8CE5CAC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C8CE5CAC@<X0>(void *a1@<X8>)
{
  if (qword_1EDA60980 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EDA6E590);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EDA66928 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E848);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v15 = v5;
  v7 = v6;

  if (qword_1EDA60970 != -1)
  {
    OUTLINED_FUNCTION_3_7();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E578);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v9 = v8;
  v11 = v10;

  if (qword_1EDA66938 != -1)
  {
    OUTLINED_FUNCTION_2_2();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6E860);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v13 = v12;

  *a1 = v4;
  a1[1] = v7;
  a1[2] = v15;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v13;
  return result;
}

uint64_t sub_1C8CE5EBC()
{
  sub_1C8CE6DD0();

  return sub_1C9062B4C();
}

uint64_t sub_1C8CE6004()
{
  if (qword_1EDA60980 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EDA6E590);
  sub_1C9062E5C();
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  if (qword_1EDA66928 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E848);
  sub_1C9062E5C();
  v5 = v0[1];
  v7 = v0[2];

  OUTLINED_FUNCTION_13_0();
  if (qword_1EDA60970 != -1)
  {
    OUTLINED_FUNCTION_3_7();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E578);
  sub_1C9062E5C();
  v6 = v0[3];
  v8 = v0[4];

  OUTLINED_FUNCTION_13_0();
  if (qword_1EDA66938 != -1)
  {
    OUTLINED_FUNCTION_2_2();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E860);
  sub_1C9062E5C();
  v3 = v0[5];
  return OUTLINED_FUNCTION_6();
}

uint64_t sub_1C8CE61A8()
{
  v0 = aSearchkeywords_5[0];

  return v0;
}

uint64_t sub_1C8CE6220(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8CE6F6C();
  return sub_1C9062E8C();
}

uint64_t default argument 0 of IndexingLog.init(path:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA6D908 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9061EBC();
  v3 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t default argument 2 of ToolDatabase.Accessor.iterate(over:scope:localeOptions:block:)@<X0>(uint64_t a1@<X8>)
{
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  result = type metadata accessor for ToolDatabaseLocaleOptions();
  *(a1 + *(result + 20)) = 0;
  return result;
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

uint64_t sub_1C8CE6470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C8CE64B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE6590(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CE65B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1C8CE663C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8CE7A70();
  *a1 = result;
  return result;
}

void sub_1C8CE6678(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1C8CE66AC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1C8CE66B4()
{
  v1 = OUTLINED_FUNCTION_7_1();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1C8CE66DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C8EB0C54();
}

uint64_t sub_1C8CE66E8()
{
  OUTLINED_FUNCTION_7_1();
  result = sub_1C8DDCC04();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C8CE671C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8EAC8AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8CE6748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C9061EFC();
  result = sub_1C8CE7B78(v3, v4);
  *a2 = v5;
  return result;
}

uint64_t sub_1C8CE6794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D792EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8CE67C0(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EC312358, type metadata accessor for LSPersistentIdentifier);
  v3 = sub_1C8CE69CC(&qword_1EC312360, type metadata accessor for LSPersistentIdentifier);
  v4 = sub_1C8CE7BE4();

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C8CE6880(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EC3122C0, type metadata accessor for WFMeasurementUnitType);
  v3 = sub_1C8CE69CC(&qword_1EC3122C8, type metadata accessor for WFMeasurementUnitType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C8CE69CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8CE6A5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C9063EBC();

  *a2 = v5;
  return result;
}

uint64_t sub_1C8CE6AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8CE6AD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8CE6AD4(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EDA60498, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_1C8CE69CC(&qword_1EC312350, type metadata accessor for ProgressUserInfoKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C8CE6B90(uint64_t a1)
{
  v2 = sub_1C8CE69CC(&qword_1EC312338, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = sub_1C8CE69CC(&unk_1EC312340, type metadata accessor for LNSystemProtocolIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C8CE6C90()
{
  result = qword_1EC312220;
  if (!qword_1EC312220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312220);
  }

  return result;
}

unint64_t sub_1C8CE6CE8()
{
  result = qword_1EDA66918;
  if (!qword_1EDA66918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66918);
  }

  return result;
}

unint64_t sub_1C8CE6D3C(void *a1)
{
  a1[1] = sub_1C8CE6D7C();
  a1[2] = sub_1C8CE6DD0();
  a1[3] = sub_1C8CE6E24();
  result = sub_1C8CE6E78();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8CE6D7C()
{
  result = qword_1EDA60960;
  if (!qword_1EDA60960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60960);
  }

  return result;
}

unint64_t sub_1C8CE6DD0()
{
  result = qword_1EC312228;
  if (!qword_1EC312228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312228);
  }

  return result;
}

unint64_t sub_1C8CE6E24()
{
  result = qword_1EDA66910;
  if (!qword_1EDA66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66910);
  }

  return result;
}

unint64_t sub_1C8CE6E78()
{
  result = qword_1EC312238;
  if (!qword_1EC312238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312238);
  }

  return result;
}

unint64_t sub_1C8CE6ED0()
{
  result = qword_1EC312240;
  if (!qword_1EC312240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312240);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C8CE6F6C()
{
  result = qword_1EDA66960;
  if (!qword_1EDA66960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66960);
  }

  return result;
}

uint64_t sub_1C8CE6FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C8CE71D0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C8CE7030()
{
  v0 = sub_1C9061F3C();
  v2 = v1;
  sub_1C9061F4C();

  return sub_1C8CE7B78(v0, v2);
}

uint64_t sub_1C8CE7090()
{
  sub_1C9063EEC();
  sub_1C9063FBC();
}

uint64_t sub_1C8CE70E4()
{
  sub_1C9063EEC();
  sub_1C9064D7C();
  sub_1C9063FBC();
  v0 = sub_1C9064DBC();

  return v0;
}

uint64_t sub_1C8CE7158()
{
  v0 = sub_1C9061F3C();
  v2 = v1;
  sub_1C9064D7C();
  sub_1C9061F4C();
  v3 = sub_1C9064DBC();
  sub_1C8CE7B78(v0, v2);
  return v3;
}

uint64_t sub_1C8CE71D0()
{
  v0 = sub_1C9061F3C();
  v2 = v1;
  v3 = sub_1C9061F3C();
  v5 = v4;
  v6 = MEMORY[0x1CCA7F9A0](v0, v2, v3, v4);
  sub_1C8CE7B78(v3, v5);
  sub_1C8CE7B78(v0, v2);
  return v6 & 1;
}

uint64_t sub_1C8CE7284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CE72A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchKeywordRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SearchKeywordRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8CE746C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1C8CE7594()
{
  result = qword_1EC312300;
  if (!qword_1EC312300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312300);
  }

  return result;
}

unint64_t sub_1C8CE779C()
{
  result = qword_1EDA66948;
  if (!qword_1EDA66948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66948);
  }

  return result;
}

unint64_t sub_1C8CE77F4()
{
  result = qword_1EDA66950;
  if (!qword_1EDA66950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66950);
  }

  return result;
}

uint64_t sub_1C8CE7848(uint64_t a1, id *a2)
{
  result = sub_1C9061F0C();
  *a2 = 0;
  return result;
}

uint64_t sub_1C8CE78D8(uint64_t a1, id *a2)
{
  result = sub_1C9063ECC();
  *a2 = 0;
  return result;
}

uint64_t sub_1C8CE7950(uint64_t a1, id *a2)
{
  v3 = sub_1C9061F2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C8CE79F0(uint64_t a1, id *a2)
{
  v3 = sub_1C9063EDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C8CE7A70()
{
  v0 = sub_1C9061F3C();
  v2 = v1;
  v3 = sub_1C9061EFC();
  sub_1C8CE7B78(v0, v2);
  return v3;
}

uint64_t sub_1C8CE7AB8()
{
  sub_1C9063EEC();
  v0 = sub_1C9063EBC();

  return v0;
}

uint64_t sub_1C8CE7AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1C9061F3C();
  v5 = v4;
  v6 = a2();
  sub_1C8CE7B78(v3, v5);
  return v6;
}

uint64_t sub_1C8CE7B40()
{
  v0 = sub_1C9063EEC();
  v1 = MEMORY[0x1CCA81B20](v0);

  return v1;
}

uint64_t sub_1C8CE7B78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C8CE7BD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C8CE7B78(a1, a2);
  }

  return a1;
}

unint64_t sub_1C8CE7BE4()
{
  result = qword_1EC312368;
  if (!qword_1EC312368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312368);
  }

  return result;
}

uint64_t sub_1C8CE7CC8()
{
  v0 = sub_1C9061EBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA6D908 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDA6D910);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  type metadata accessor for IndexingLog();
  v6 = swift_allocObject();
  result = IndexingLog.init(path:)(v4);
  off_1EDA63980 = v6;
  return result;
}

uint64_t IndexingLog.__allocating_init(path:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IndexingLog.init(path:)(a1);
  return v2;
}

uint64_t static IndexingLog.shared.getter()
{
  if (qword_1EDA63970 != -1)
  {
    swift_once();
  }
}

uint64_t IndexingLog.init(path:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = objc_opt_self();
  v11 = sub_1C9061E5C();
  v13 = sub_1C8CE8DC8(v11, v12, v10);
  v14 = type metadata accessor for IndexingLog.Entry();
  objc_allocWithZone(MEMORY[0x1E698F318]);
  v15 = v13;
  *(v2 + 16) = sub_1C8CE8D40(0xD000000000000012, 0x80000001C90C9480, v13, v14);
  sub_1C906428C();
  v16 = sub_1C90642AC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;

  sub_1C8CE80E4(0, 0, v9, &unk_1C90668C8, v17);

  v18 = sub_1C9061EBC();
  OUTLINED_FUNCTION_10_0(v18);
  (*(v19 + 8))(a1);
  return v2;
}

uint64_t sub_1C8CE807C()
{
  OUTLINED_FUNCTION_7();
  [*(*(v0 + 16) + 16) pruneStreamBySize_];
  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t sub_1C8CE80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_4(v14, v24);
  v15 = sub_1C90642AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8CE92CC(v5);
  }

  else
  {
    sub_1C906429C();
    OUTLINED_FUNCTION_10_0(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C8CE92CC(a3);
    OUTLINED_FUNCTION_2();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1C906424C();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9063F7C();
  OUTLINED_FUNCTION_2();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  v22 = swift_task_create();

  sub_1C8CE92CC(a3);

  return v22;
}

uint64_t sub_1C8CE8364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_4(v14, v24);
  v15 = sub_1C90642AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8CE92CC(v5);
  }

  else
  {
    sub_1C906429C();
    OUTLINED_FUNCTION_10_0(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C8CE92CC(a3);
    OUTLINED_FUNCTION_2();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3124F0, &qword_1C9066918);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1C906424C();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9063F7C();
  OUTLINED_FUNCTION_2();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3124F0, &qword_1C9066918);
  v21 = swift_task_create();

  sub_1C8CE92CC(a3);

  return v21;
}

void IndexingLog.read(reader:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 16) publisher];
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C8CE974C;
  v13 = &block_descriptor;
  v6 = _Block_copy(&v10);
  OUTLINED_FUNCTION_2();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v14 = sub_1C8CE8FFC;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C8CE974C;
  v13 = &block_descriptor_7;
  v8 = _Block_copy(&v10);

  v9 = [v5 sinkWithCompletion:v6 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v6);
}

id sub_1C8CE8774(void *a1, void (*a2)(char *))
{
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v14 - v10;
  result = [a1 eventBody];
  if (result)
  {
    v13 = result;
    sub_1C8CE919C(result + OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry, v7);

    sub_1C8CE964C(v7, v11);
    a2(v11);
    return sub_1C8CE9200(v11);
  }

  return result;
}

void sub_1C8CE886C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t IndexingLog.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C8CE893C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1C906387C();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  OUTLINED_FUNCTION_10_0(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  result = 0;
  if (a3 == 1)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1C8CE9144(a1, a2);
    sub_1C906386C();
    sub_1C8CE90EC();
    sub_1C9063A7C();
    sub_1C8CE919C(v20, v17);
    v22 = objc_allocWithZone(v4);
    sub_1C8CE919C(v17, v22 + OBJC_IVAR____TtCC7ToolKit11IndexingLog5Entry_protoEntry);
    v24.receiver = v22;
    v24.super_class = v4;
    objc_msgSendSuper2(&v24, sel_init);
    sub_1C8CE9200(v17);
    sub_1C8CE9200(v20);
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

uint64_t sub_1C8CE8BB0()
{
  type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  sub_1C8CE90EC();
  return sub_1C9063A8C();
}

id sub_1C8CE8CF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C8CE8D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1C9063EBC();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

id sub_1C8CE8DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9063EBC();

  v5 = [a3 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  return v5;
}

uint64_t type metadata accessor for IndexingLog.Entry()
{
  result = qword_1EDA63988;
  if (!qword_1EDA63988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8CE8E70()
{
  OUTLINED_FUNCTION_4_2();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1_4(v6);
  *v7 = v8;
  v7[1] = sub_1C8CE8F18;

  return sub_1C8CE805C(v2, v3, v4, v5);
}

uint64_t sub_1C8CE8F18()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8CE905C()
{
  result = type metadata accessor for ToolKitProtoIndexingLogEntry(319);
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

unint64_t sub_1C8CE90EC()
{
  result = qword_1EDA64C68[0];
  if (!qword_1EDA64C68[0])
  {
    type metadata accessor for ToolKitProtoIndexingLogEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA64C68);
  }

  return result;
}

uint64_t sub_1C8CE9144(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C8CE919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CE9200(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8CE925C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CE92CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8CE9334(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C8CE9428;

  return v6(v2 + 32);
}

uint64_t sub_1C8CE9428()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v6;

  *v2 = *(v6 + 32);
  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8CE952C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_1C8CE95BC()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_1C8CE964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CE96B0()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

double HashableCGSize.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HashableCGSize.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA82830](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1CCA82830](*&v3);
}

uint64_t sub_1C8CE97C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8CE9858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CE97C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CE98A0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CE98CC(uint64_t a1)
{
  v2 = sub_1C8CE9A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CE9908(uint64_t a1)
{
  v2 = sub_1C8CE9A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HashableCGSize.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312500, &qword_1C9066950);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38();
  v9 = *v1;
  v10 = v1[1];
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8CE9A88();
  OUTLINED_FUNCTION_358();
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_183();
  sub_1C8CD23F0(v15, v16);
  sub_1C9064B8C();
  v17 = *(v5 + 8);
  v18 = OUTLINED_FUNCTION_112();
  v19(v18);
  OUTLINED_FUNCTION_277();
}

unint64_t sub_1C8CE9A88()
{
  result = qword_1EC312508;
  if (!qword_1EC312508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312508);
  }

  return result;
}

uint64_t HashableCGSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_298();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1CCA82830](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1CCA82830](*&v4);
  return sub_1C9064DBC();
}

void HashableCGSize.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312518, &qword_1C9066958);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = v2[3];
  v12 = v2[4];
  v13 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8CE9A88();
  OUTLINED_FUNCTION_355();
  if (!v0)
  {
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_183();
    sub_1C8CD23F0(v15, v16);
    sub_1C9064A6C();
    v17 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_125();
    v19(v18);
    *v4 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CE9CD4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C9064D7C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1CCA82830](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1CCA82830](*&v4);
  return sub_1C9064DBC();
}

uint64_t DisplayRepresentation.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t DisplayRepresentation.subtitle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_266(v2, v3, *(v1 + 32), a1);
}

uint64_t DisplayRepresentation.altText.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_266(v2, v3, *(v1 + 56), a1);
}

uint64_t sub_1C8CE9D94(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return OUTLINED_FUNCTION_264();
  }

  else
  {
    return sub_1C8CE9144(a1, a2);
  }
}

uint64_t DisplayRepresentation.image.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for DisplayRepresentation(v0) + 28);
  return sub_1C8CC1D3C();
}

uint64_t DisplayRepresentation.snippetPluginModel.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = (v1 + *(type metadata accessor for DisplayRepresentation(v2) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return sub_1C8CE9E30(v4, v5, v6, v7);
}

uint64_t sub_1C8CE9E30(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C8CE9144(result, a2);
  }

  return result;
}

uint64_t DisplayRepresentation.synonyms.getter()
{
  v1 = *(v0 + *(type metadata accessor for DisplayRepresentation(0) + 36));
}

void DisplayRepresentation.init(title:subtitle:altText:image:synonyms:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = *a3;
  *(a6 + 32) = v8;
  *(a6 + 40) = *a4;
  *(a6 + 56) = v9;
  v10 = *(type metadata accessor for DisplayRepresentation(0) + 28);
  sub_1C8CB21A0();
  OUTLINED_FUNCTION_331();
  *(a6 + v11) = a5;
}

__n128 DisplayRepresentation.init(title:subtitle:altText:image:snippetPluginModel:synonyms:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 16);
  v11 = *(a4 + 16);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  *(a7 + 32) = v10;
  *(a7 + 40) = *a4;
  *(a7 + 56) = v11;
  v12 = type metadata accessor for DisplayRepresentation(0);
  v13 = v12[7];
  sub_1C8CB21A0();
  v14 = (a7 + v12[8]);
  result = *a5;
  v16 = *(a5 + 16);
  *v14 = *a5;
  v14[1] = v16;
  *(a7 + v12[9]) = a6;
  return result;
}

void DisplayRepresentation.init(title:subtitle:altText:image:synonyms:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_102();
  v23 = type metadata accessor for DisplayRepresentation.Image(v22);
  OUTLINED_FUNCTION_108_2(v3, 1, v23);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_115();
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_381();
    sub_1C8D04DE8();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    v29 = v25;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  if (v5)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  *v17 = v15;
  *(v17 + 8) = v13;
  if (v5)
  {
    v31 = v7;
  }

  else
  {
    v31 = 0;
  }

  if (v9)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  if (v9)
  {
    v33 = v11;
  }

  else
  {
    v33 = 0;
  }

  *(v17 + 16) = v33;
  *(v17 + 24) = v9;
  *(v17 + 32) = v32;
  *(v17 + 40) = v31;
  *(v17 + 48) = v5;
  *(v17 + 56) = v30;
  v34 = type metadata accessor for DisplayRepresentation(0);
  v35 = v34[7];
  sub_1C8CB21A0();
  v36 = (v17 + v34[8]);
  *v36 = 0u;
  v36[1] = 0u;
  *(v17 + v34[9]) = v1;
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.init(title:subtitle:altText:image:snippetPluginModel:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_164();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_73();
  v57 = v22[1];
  v58 = *v22;
  type metadata accessor for DisplayRepresentation.Image(0);
  v41 = OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_108_2(v41, v42, v43);
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_115();
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_224();
    sub_1C8D04DE8();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_300();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    v49 = v45;
  }

  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  if (v24)
  {
    v50 = 1;
  }

  else
  {
    v50 = -1;
  }

  *v36 = v34;
  *(v36 + 8) = v32;
  if (v24)
  {
    v51 = v26;
  }

  else
  {
    v51 = 0;
  }

  if (v28)
  {
    v52 = 1;
  }

  else
  {
    v52 = -1;
  }

  if (v28)
  {
    v53 = v30;
  }

  else
  {
    v53 = 0;
  }

  *(v36 + 16) = v53;
  *(v36 + 24) = v28;
  *(v36 + 32) = v52;
  *(v36 + 40) = v51;
  *(v36 + 48) = v24;
  *(v36 + 56) = v50;
  v54 = type metadata accessor for DisplayRepresentation(0);
  v55 = v54[7];
  sub_1C8CB21A0();
  v56 = (v36 + v54[8]);
  *v56 = v58;
  v56[1] = v57;
  *(v36 + v54[9]) = a21;
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.init(title:snippetPluginModel:synonyms:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DisplayRepresentation(0);
  v11 = v10[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = -1;
  v16 = (v9 + v10[8]);
  v17 = v3[1];
  *v16 = *v3;
  v16[1] = v17;
  *(v9 + v10[9]) = v1;
  OUTLINED_FUNCTION_421();
}

void DisplayRepresentation.init(title:)()
{
  OUTLINED_FUNCTION_223();
  v3 = v2;
  v4 = *(type metadata accessor for DisplayRepresentation(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = -1;
  OUTLINED_FUNCTION_331();
  *(v3 + v9) = MEMORY[0x1E69E7CC0];
}

void static DisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_223();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312538, &qword_1C9066970);
  OUTLINED_FUNCTION_13_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_201();
  v17 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v17 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v155 = v4;
  v156 = v5;
  v154 = v3;
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  if (*(v1 + 32) == 255)
  {
    if (v22 != 255)
    {
      goto LABEL_17;
    }

    v152 = v2;
    v40 = OUTLINED_FUNCTION_124_0();
    sub_1C8CD1ABC(v40, v41, 255);
    sub_1C8CD1ABC(v20, v21, 255);
    v42 = OUTLINED_FUNCTION_124_0();
    sub_1C8CD32C0(v42, v43, 255);
  }

  else
  {
    if (v22 == 255)
    {
      goto LABEL_17;
    }

    v152 = v2;
    v23 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD1ABC(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD1ABC(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_124_0();
    v33 = sub_1C8CF32F0(v29, v30, v31, v20, v21, v32);
    v34 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD32C0(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD32C0(v37, v38, v39);
    if ((v33 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v45 = *(v1 + 40);
  v44 = *(v1 + 48);
  v46 = *(v0 + 40);
  v47 = *(v0 + 48);
  v48 = *(v0 + 56);
  if (*(v1 + 56) == 255)
  {
    if (v48 == 255)
    {
      v78 = OUTLINED_FUNCTION_124_0();
      sub_1C8CD1ABC(v78, v79, 255);
      sub_1C8CD1ABC(v46, v47, 255);
      v80 = OUTLINED_FUNCTION_124_0();
      sub_1C8CD32C0(v80, v81, 255);
      goto LABEL_20;
    }

LABEL_17:
    v66 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD1ABC(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD1ABC(v69, v70, v71);
    v72 = OUTLINED_FUNCTION_101_0();
    sub_1C8CD32C0(v72, v73, v74);
    v75 = OUTLINED_FUNCTION_99_0();
    sub_1C8CD32C0(v75, v76, v77);
    goto LABEL_18;
  }

  if (v48 == 255)
  {
    goto LABEL_17;
  }

  v49 = OUTLINED_FUNCTION_101_0();
  sub_1C8CD1ABC(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_99_0();
  sub_1C8CD1ABC(v52, v53, v54);
  v55 = OUTLINED_FUNCTION_124_0();
  v59 = sub_1C8CF32F0(v55, v56, v57, v46, v47, v58);
  v60 = OUTLINED_FUNCTION_99_0();
  sub_1C8CD32C0(v60, v61, v62);
  v63 = OUTLINED_FUNCTION_101_0();
  sub_1C8CD32C0(v63, v64, v65);
  if ((v59 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  v82 = type metadata accessor for DisplayRepresentation(0);
  v83 = v82[7];
  v84 = *(v13 + 48);
  OUTLINED_FUNCTION_368();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_368();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v152, 1, v156);
  if (v17)
  {
    OUTLINED_FUNCTION_92_0(v152 + v84);
    if (v17)
    {
      sub_1C8CBE41C(v152, &qword_1EC312528);
      goto LABEL_30;
    }

LABEL_28:
    sub_1C8CBE41C(v152, &qword_1EC312538);
    goto LABEL_18;
  }

  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_92_0(v152 + v84);
  if (v85)
  {
    sub_1C8CBE41C(v155, &qword_1EC312530);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_368();
  sub_1C8CB21A0();
  OUTLINED_FUNCTION_107();
  v86 = sub_1C8CF3488();
  sub_1C8CBE41C(v154, &qword_1EC312530);
  sub_1C8CBE41C(v155, &qword_1EC312530);
  sub_1C8CBE41C(v152, &qword_1EC312528);
  if ((v86 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_30:
  v87 = v82[8];
  v89 = *(v1 + v87);
  v88 = *(v1 + v87 + 8);
  v91 = *(v1 + v87 + 16);
  v90 = *(v1 + v87 + 24);
  v92 = (v0 + v87);
  v93 = *v92;
  v157 = v92[1];
  v95 = v92[2];
  v94 = v92[3];
  v96 = OUTLINED_FUNCTION_112();
  if (!v90)
  {
    sub_1C8CE9E30(v96, v97, v91, 0);
    if (!v94)
    {
      sub_1C8CE9E30(v93, v157, v95, 0);
      v90 = 0;
      v145 = v91;
LABEL_47:
      v150 = OUTLINED_FUNCTION_112();
      sub_1C8CF6A1C(v150, v151, v145, v90);
LABEL_48:
      sub_1C8CEB10C(*(v1 + v82[9]), *(v0 + v82[9]));
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_96();
    sub_1C8CE9E30(v119, v120, v121, v94);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_244();
  if (!v94)
  {
    sub_1C8CE9E30(v98, v99, v100, v101);
    OUTLINED_FUNCTION_96();
    sub_1C8CE9E30(v122, v123, v124, 0);
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_244();
    sub_1C8CE9E30(v125, v126, v127, v128);
    v129 = OUTLINED_FUNCTION_112();
    sub_1C8CE7B78(v129, v130);

LABEL_42:
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_244();
    sub_1C8CF6A1C(v131, v132, v133, v134);
    OUTLINED_FUNCTION_96();
    v138 = v94;
LABEL_44:
    sub_1C8CF6A1C(v135, v136, v137, v138);
    goto LABEL_18;
  }

  sub_1C8CE9E30(v98, v99, v100, v101);
  OUTLINED_FUNCTION_286();
  sub_1C8CE9E30(v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_112();
  sub_1C8CE9E30(v106, v107, v91, v90);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_366();
  if ((MEMORY[0x1CCA7F9A0]() & 1) == 0)
  {
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_286();
    sub_1C8CF6A1C(v139, v140, v141, v142);
    v143 = OUTLINED_FUNCTION_112();
    sub_1C8CE7B78(v143, v144);

    v135 = OUTLINED_FUNCTION_112();
    v137 = v91;
    v138 = v90;
    goto LABEL_44;
  }

  if (v91 == v95 && v90 == v94)
  {
    v145 = v91;
    OUTLINED_FUNCTION_244();
    sub_1C8CF6A1C(v146, v147, v148, v149);
    sub_1C8CE7B78(v89, v88);

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_286();
  v153 = sub_1C9064C2C();
  OUTLINED_FUNCTION_286();
  sub_1C8CF6A1C(v109, v110, v111, v112);
  v113 = OUTLINED_FUNCTION_334();
  sub_1C8CE7B78(v113, v114);

  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_244();
  sub_1C8CF6A1C(v115, v116, v117, v118);
  if (v153)
  {
    goto LABEL_48;
  }

LABEL_18:
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEA9F4()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_304();
  v45 = type metadata accessor for DisplayRepresentation(v4);
  v5 = OUTLINED_FUNCTION_13_1(v45);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v44);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v43 = type metadata accessor for EnumerationCaseDefinition(0);
  v16 = OUTLINED_FUNCTION_8_3(v43);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_218();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_234();
  v21 = *(v3 + 16);
  if (v21 == *(v0 + 16) && v21 && v3 != v0)
  {
    OUTLINED_FUNCTION_28_0(v20);
    v23 = v3 + v22;
    v24 = v0 + v22;
    v42 = *(v25 + 72);
    v26 = &qword_1EC312788;
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      sub_1C8D02900();
      sub_1C8D02900();
      v27 = *v2 == *v46 && v2[1] == v46[1];
      if (!v27 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v28 = v26;
      v29 = *(v43 + 20);
      v30 = *(v44 + 48);
      sub_1C8CC1D3C();
      v26 = v28;
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_108_2(v1, 1, v45);
      if (v27)
      {
        v31 = OUTLINED_FUNCTION_400();
        OUTLINED_FUNCTION_108_2(v31, v32, v45);
        if (!v27)
        {
          goto LABEL_20;
        }

        v33 = OUTLINED_FUNCTION_100();
        sub_1C8CBE41C(v33, v34);
        sub_1C8D02958();
        OUTLINED_FUNCTION_378();
        sub_1C8D02958();
      }

      else
      {
        OUTLINED_FUNCTION_93();
        sub_1C8CC1D3C();
        v35 = OUTLINED_FUNCTION_400();
        OUTLINED_FUNCTION_108_2(v35, v36, v45);
        if (v37)
        {
          OUTLINED_FUNCTION_59();
          sub_1C8D02958();
LABEL_20:
          sub_1C8CBE41C(v1, &qword_1EC312A20);
          break;
        }

        OUTLINED_FUNCTION_192();
        sub_1C8D04DE8();
        static DisplayRepresentation.== infix(_:_:)();
        v39 = v38;
        sub_1C8D02958();
        OUTLINED_FUNCTION_145();
        sub_1C8D02958();
        v40 = OUTLINED_FUNCTION_287();
        sub_1C8CBE41C(v40, v41);
        sub_1C8D02958();
        v26 = v28;
        sub_1C8D02958();
        if ((v39 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v24 += v42;
      v23 += v42;
      if (!--v21)
      {
        goto LABEL_22;
      }
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_274_0();
    sub_1C8D02958();
  }

LABEL_22:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEADC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v15 = *v3;
      v10 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v10 && (OUTLINED_FUNCTION_319() & 1) == 0)
      {
        break;
      }

      if (v6 != v9 || v5 != v8)
      {
        OUTLINED_FUNCTION_112();
        if ((sub_1C9064C2C() & 1) == 0)
        {
          break;
        }
      }

      v16 = v15;
      v17 = v7;
      swift_retain_n();
      swift_retain_n();

      static TypeInstance.== infix(_:_:)(&v17, &v16);
      v14 = v12;

      if ((v14 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C8CEAF48()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  OUTLINED_FUNCTION_143();
  v3 = sub_1C9063C4C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v0 + 16);
  if (v10 == *(v2 + 16) && v10 && v0 != v2)
  {
    v11 = *(v6 + 80);
    OUTLINED_FUNCTION_139();
    v13 = v0 + v12;
    v14 = v2 + v12;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v17 = (v15 - 8);
    v27 = *(v15 + 56);
    v28 = v16;
    while (1)
    {
      v18 = OUTLINED_FUNCTION_249();
      v28(v18);
      if (!v10)
      {
        break;
      }

      v19 = OUTLINED_FUNCTION_117();
      v20 = v15;
      v28(v19);
      OUTLINED_FUNCTION_58_0();
      sub_1C8CD23F0(&qword_1EDA62BA8, v21);
      OUTLINED_FUNCTION_116();
      v22 = sub_1C9063EAC();
      v23 = *v17;
      v24 = OUTLINED_FUNCTION_94();
      v23(v24);
      v25 = OUTLINED_FUNCTION_206();
      v23(v25);
      if (v22)
      {
        v14 += v27;
        v13 += v27;
        v26 = v10-- == 1;
        v15 = v20;
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEB10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    do
    {
      OUTLINED_FUNCTION_314();
      v5 = v5 && v3 == v4;
      if (!v5 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_313();
    }

    while (!v5);
  }
}

void sub_1C8CEB188()
{
  OUTLINED_FUNCTION_164();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
    goto LABEL_46;
  }

  v3 = (v0 + 56);
  v4 = (v1 + 56);
  while (2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(v4 - 1);
    v8 = *v4;
    if (*(v3 - 3) != *(v4 - 3) || *(v3 - 2) != *(v4 - 2))
    {
      v10 = *(v3 - 2);
      v11 = *(v4 - 2);
      if ((sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v3 += 32;
    switch(v6 >> 5)
    {
      case 1u:
        if ((v8 & 0xE0) == 0x20)
        {
          goto LABEL_24;
        }

        goto LABEL_43;
      case 2u:
        if ((v8 & 0xE0) != 0x40)
        {
          goto LABEL_43;
        }

        goto LABEL_18;
      case 3u:
        if ((v8 & 0xE0) != 0x60)
        {
          goto LABEL_43;
        }

LABEL_18:
        v12 = OUTLINED_FUNCTION_106_1();
        sub_1C8D07154(v12, v13);

        v14 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07154(v14, v15);

        v16 = OUTLINED_FUNCTION_125();
        sub_1C8D07154(v16, v17);
        v18 = OUTLINED_FUNCTION_106_1();
        sub_1C8D07154(v18, v19);
        OUTLINED_FUNCTION_136();
        sub_1C8D2A4D8();
        v21 = v20;
        v22 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07168(v22, v23);
        v24 = OUTLINED_FUNCTION_125();
        sub_1C8D07168(v24, v25);
        v26 = OUTLINED_FUNCTION_125();
        sub_1C8D07168(v26, v27);
        v28 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07168(v28, v29);

        v30 = OUTLINED_FUNCTION_125();
        sub_1C8D07168(v30, v31);
        if (v21 & 1) == 0 || ((v8 ^ v6))
        {
          goto LABEL_45;
        }

        goto LABEL_25;
      case 4u:
        if ((v8 & 0xE0) != 0x80)
        {
          goto LABEL_43;
        }

        goto LABEL_24;
      case 5u:
        if ((v8 & 0xE0) == 0xA0)
        {
          goto LABEL_24;
        }

        goto LABEL_43;
      case 6u:
        v52 = v8 & 0xE0;
        if (v5 | v6 ^ 0xC0)
        {
          v54 = v52 == 192 && v7 == 1;
          if (!v54 || v8 != 192)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v53 = v52 == 192 && v7 == 0;
          if (!v53 || v8 != 192)
          {
            goto LABEL_44;
          }
        }

        v55 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07154(v55, v56);

        v57 = OUTLINED_FUNCTION_394();
        sub_1C8D07154(v57, v58);
        v59 = OUTLINED_FUNCTION_394();
        sub_1C8D07154(v59, v60);
        v61 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07168(v61, v62);
        v63 = OUTLINED_FUNCTION_394();
        sub_1C8D07168(v63, v64);
        v65 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07168(v65, v66);

        v67 = OUTLINED_FUNCTION_394();
        sub_1C8D07168(v67, v68);
        goto LABEL_25;
      default:
        if (v8 < 0x20)
        {
LABEL_24:
          v32 = OUTLINED_FUNCTION_106_1();
          sub_1C8D07154(v32, v33);

          v34 = OUTLINED_FUNCTION_95_0();
          sub_1C8D07154(v34, v35);

          v36 = OUTLINED_FUNCTION_125();
          sub_1C8D07154(v36, v37);
          v38 = OUTLINED_FUNCTION_106_1();
          sub_1C8D07154(v38, v39);
          OUTLINED_FUNCTION_136();
          sub_1C8D2A4D8();
          v41 = v40;
          v42 = OUTLINED_FUNCTION_95_0();
          sub_1C8D07168(v42, v43);
          v44 = OUTLINED_FUNCTION_125();
          sub_1C8D07168(v44, v45);
          v46 = OUTLINED_FUNCTION_125();
          sub_1C8D07168(v46, v47);
          v48 = OUTLINED_FUNCTION_95_0();
          sub_1C8D07168(v48, v49);

          v50 = OUTLINED_FUNCTION_125();
          sub_1C8D07168(v50, v51);
          if ((v41 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_25:

          sub_1C8D07168(v5, v6);
          v4 += 32;
          if (!--v2)
          {
            goto LABEL_46;
          }

          continue;
        }

LABEL_43:
        v69 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07154(v69, v70);
LABEL_44:

        v71 = OUTLINED_FUNCTION_95_0();
        sub_1C8D07154(v71, v72);

        v73 = OUTLINED_FUNCTION_125();
        sub_1C8D07154(v73, v74);
        v75 = OUTLINED_FUNCTION_106_1();
        sub_1C8D07168(v75, v76);
        v77 = OUTLINED_FUNCTION_125();
        sub_1C8D07168(v77, v78);

        v79 = OUTLINED_FUNCTION_125();
        sub_1C8D07168(v79, v80);
LABEL_45:

        sub_1C8D07168(v5, v6);
LABEL_46:
        OUTLINED_FUNCTION_163();
        return;
    }
  }
}

void sub_1C8CEB4A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v23 = a2 + 32;
    v24 = a1 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_43;
      }

      v4 = (v24 + 32 * v3);
      v5 = *v4;
      v6 = (v23 + 32 * v3);
      v7 = *v6;
      v8 = *(*v4 + 16);
      if (v8 != *(*v6 + 16))
      {
        return;
      }

      v9 = v4[2];
      v25 = v4[1];
      v10 = v4[3];
      v12 = v6[1];
      v11 = v6[2];
      if (v8)
      {
        v13 = v5 == v7;
      }

      else
      {
        v13 = 1;
      }

      v14 = v6[3];
      if (!v13)
      {
        v15 = (v5 + 40);
        v16 = (v7 + 40);
        while (v8)
        {
          v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
          if (!v17 && (sub_1C9064C2C() & 1) == 0)
          {
            return;
          }

          v15 += 2;
          v16 += 2;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

LABEL_19:
      if (v9)
      {
        if (!v11)
        {
          return;
        }

        v18 = v25 == v12 && v9 == v11;
        if (!v18 && (OUTLINED_FUNCTION_319() & 1) == 0)
        {
          return;
        }
      }

      else if (v11)
      {
        return;
      }

      v19 = *(v10 + 16);
      if (v19 != *(v14 + 16))
      {
        return;
      }

      if (v19 && v10 != v14)
      {
        break;
      }

LABEL_38:
      if (++v3 == v2)
      {
        return;
      }
    }

    while (1)
    {
      OUTLINED_FUNCTION_314();
      v22 = v13 && v20 == v21;
      if (!v22 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_313();
      if (v13)
      {
        goto LABEL_38;
      }
    }
  }
}

uint64_t sub_1C8CEB63C(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_225(a1, a2);
  if (v8)
  {
    if (!v5 || v6 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_417(v22);
      OUTLINED_FUNCTION_417(__src);
      OUTLINED_FUNCTION_354(v23);
      OUTLINED_FUNCTION_354(v20);
      sub_1C8D07294(v22, v19);
      sub_1C8D07294(v23, v19);
      v9 = static ParameterDefinition.== infix(_:_:)(__src);
      OUTLINED_FUNCTION_404(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v20[0]);
      sub_1C8D072F0(v24);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C8D072F0(__dst);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v2 += 136;
      v3 += 136;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C8CEB710(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_225(a1, a2);
  if (v8)
  {
    if (!v5 || v6 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_416(v22);
      OUTLINED_FUNCTION_416(__src);
      OUTLINED_FUNCTION_418(v23);
      OUTLINED_FUNCTION_418(v20);
      sub_1C8D07344(v22, v19);
      sub_1C8D07344(v23, v19);
      v9 = static RuntimeRequirement.== infix(_:_:)(__src, v20);
      OUTLINED_FUNCTION_403(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v20[0]);
      sub_1C8D0722C(v24);
      memcpy(__dst, __src, 0x61uLL);
      sub_1C8D0722C(__dst);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v3 += 104;
      v2 += 104;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C8CEB7E4()
{
  OUTLINED_FUNCTION_164();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_143();
  v33 = type metadata accessor for ComparisonPredicate.Template(v9);
  v10 = OUTLINED_FUNCTION_8_3(v33);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_87();
  v18 = *(v1 + 16);
  if (v18 == *(v8 + 16) && v18 && v1 != v8)
  {
    OUTLINED_FUNCTION_28_0(v17);
    OUTLINED_FUNCTION_389(v19);
    while (1)
    {
      OUTLINED_FUNCTION_100();
      sub_1C8D02900();
      if (!v18)
      {
        break;
      }

      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_254();
      sub_1C8D02900();
      OUTLINED_FUNCTION_272();
      v20 = v20 && v3 == v2;
      if (!v20 && (OUTLINED_FUNCTION_299() & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != v18 || v5 != v4)
      {
        OUTLINED_FUNCTION_327();
        if ((sub_1C9064C2C() & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_406();
      swift_retain_n();

      v22 = OUTLINED_FUNCTION_271();
      static TypeInstance.== infix(_:_:)(v22, v23);
      v25 = v24;

      v6 = v35;

      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }

      v35 = *(v0 + 40);
      v26 = *(v15 + 40);
      v34 = v26;
      sub_1C8CD37AC(v35);
      sub_1C8CD37AC(v26);
      v27 = OUTLINED_FUNCTION_271();
      v18 = static ComparisonPredicate.Comparison.Template.== infix(_:_:)(v27, v28);
      sub_1C8CD37D8(v34);
      sub_1C8CD37D8(v35);
      if ((v18 & 1) == 0 || (OUTLINED_FUNCTION_405() & 1) == 0)
      {
LABEL_24:
        OUTLINED_FUNCTION_175();
        sub_1C8D02958();
        OUTLINED_FUNCTION_134();
        sub_1C8D02958();
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_154();
      v29 = OUTLINED_FUNCTION_227();
      sub_1C8D06F98(v29, v30, v3, v4, v5);
      v31 = OUTLINED_FUNCTION_271();
      v2 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(v31, v32);
      OUTLINED_FUNCTION_348();
      sub_1C8D06FF4(v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_175();
      sub_1C8D02958();
      OUTLINED_FUNCTION_134();
      sub_1C8D02958();
      if (v2)
      {
        OUTLINED_FUNCTION_289();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEBA80()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v80 = type metadata accessor for ComparisonPredicate(0);
  v5 = OUTLINED_FUNCTION_13_1(v80);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129C0, &qword_1C9068DA0);
  OUTLINED_FUNCTION_13_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_201();
  v13 = type metadata accessor for ComparisonPredicateTypeOrPredicate(0);
  v14 = OUTLINED_FUNCTION_8_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27_2();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_306();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_234();
  v25 = *(v4 + 16);
  if (v25 != *(v2 + 16) || !v25 || v4 == v2)
  {
    goto LABEL_49;
  }

  v76 = v24;
  OUTLINED_FUNCTION_28_0(v23);
  v27 = v4 + v26;
  v28 = v2 + v26;
  v77 = *(v29 + 72);
  v79 = v0;
  v78 = v9;
  while (1)
  {
    OUTLINED_FUNCTION_381();
    sub_1C8D02900();
    sub_1C8D02900();
    v30 = (v0 + *(v9 + 48));
    sub_1C8D02900();
    sub_1C8D02900();
    OUTLINED_FUNCTION_382();
    v82 = v27;
    v81 = v28;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_157_0();
    sub_1C8D02900();
    v62 = v76[1];
    v90 = *v76;
    v91 = v62;
    v63 = v76[3];
    v92 = v76[2];
    v93 = v63;
    OUTLINED_FUNCTION_226_1();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D07050(&v90);
      goto LABEL_47;
    }

    v64 = v30[1];
    v86 = *v30;
    v87 = v64;
    v65 = v30[3];
    v88 = v30[2];
    v89 = v65;
    v66 = v90 == v86 && *(&v90 + 1) == *(&v86 + 1);
    if (!v66 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_43;
    }

    v67 = v92;
    v68 = v93;
    v69 = v88;
    v70 = v89;
    v71 = v91 == v87 && *(&v91 + 1) == *(&v87 + 1);
    if (!v71 && (OUTLINED_FUNCTION_299() & 1) == 0)
    {
      goto LABEL_43;
    }

    if (v67 != v69 || *(&v67 + 1) != *(&v69 + 1))
    {
      OUTLINED_FUNCTION_206();
      if ((sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v84 = v70;
    v85 = v68;
    swift_retain_n();
    swift_retain_n();

    static TypeInstance.== infix(_:_:)(&v85, &v84);
    v74 = v73;

    if ((v74 & 1) == 0)
    {
LABEL_43:
      sub_1C8D07050(&v86);
      sub_1C8D07050(&v90);
      goto LABEL_44;
    }

    v75 = *(&v89 + 1);
    v84 = *(&v89 + 1);
    v85 = *(&v93 + 1);
    sub_1C8CD37AC(*(&v93 + 1));
    sub_1C8CD37AC(v75);
    LOBYTE(v75) = static ComparisonPredicateType.ComparisonType.== infix(_:_:)(&v85, &v84);
    sub_1C8CD37D8(v84);
    sub_1C8CD37D8(v85);
    sub_1C8D07050(&v86);
    sub_1C8D07050(&v90);
    if ((v75 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_40:
    OUTLINED_FUNCTION_19();
    v0 = v79;
    sub_1C8D02958();
    OUTLINED_FUNCTION_371();
    OUTLINED_FUNCTION_166_0();
    sub_1C8D02958();
    OUTLINED_FUNCTION_274_0();
    sub_1C8D02958();
    v28 = v81 + v77;
    v27 = v82 + v77;
    --v25;
    v9 = v78;
    if (!v25)
    {
      goto LABEL_49;
    }
  }

  OUTLINED_FUNCTION_157_0();
  sub_1C8D02900();
  OUTLINED_FUNCTION_226_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_152();
    sub_1C8D04DE8();
    v32 = v19[2];
    v31 = v19[3];
    v33 = v19[4];
    v34 = v83[2];
    v35 = v83[3];
    v36 = v83[4];
    v37 = *v19 == *v83 && v19[1] == v83[1];
    if (!v37 && (OUTLINED_FUNCTION_299() & 1) == 0)
    {
      goto LABEL_42;
    }

    if (v32 != v34 || v31 != v35)
    {
      OUTLINED_FUNCTION_206();
      if ((sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    *&v90 = v33;
    *&v86 = v36;
    swift_retain_n();
    swift_retain_n();

    static TypeInstance.== infix(_:_:)(&v90, &v86);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_42;
    }

    v41 = v19[6];
    *&v90 = v19[5];
    *(&v90 + 1) = v41;
    v42 = v83[6];
    *&v86 = v83[5];
    *(&v86 + 1) = v42;
    sub_1C8D06E80(v90, v41);
    v43 = OUTLINED_FUNCTION_94();
    sub_1C8D06E80(v43, v44);
    v45 = static ComparisonPredicate.Comparison.== infix(_:_:)(&v90, &v86);
    sub_1C8D06F08(v86, SBYTE8(v86));
    sub_1C8D06F08(v90, SBYTE8(v90));
    if ((v45 & 1) == 0)
    {
      goto LABEL_42;
    }

    v46 = *(v80 + 24);
    if ((_s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_42;
    }

    v47 = *(v80 + 28);
    v48 = v19 + v47;
    v49 = *(v19 + v47);
    v50 = *(v19 + v47 + 8);
    v51 = *(v19 + v47 + 16);
    v52 = *(v19 + v47 + 24);
    v53 = v83 + v47;
    v54 = *v53;
    v55 = *(v53 + 1);
    v56 = *(v53 + 2);
    v57 = *(v53 + 3);
    v58 = v48[32];
    v59 = v53[32];
    *&v90 = v49;
    *(&v90 + 1) = v50;
    *&v91 = v51;
    *(&v91 + 1) = v52;
    LOBYTE(v92) = v58;
    *&v86 = v54;
    *(&v86 + 1) = v55;
    *&v87 = v56;
    *(&v87 + 1) = v57;
    LOBYTE(v88) = v59;
    sub_1C8D06F98(v49, v50, v51, v52, v58);
    v60 = OUTLINED_FUNCTION_94();
    sub_1C8D06F98(v60, v61, v56, v57, v59);
    LOBYTE(v54) = static ContentItemClassDescriptor.Inner.== infix(_:_:)(&v90, &v86);
    sub_1C8D06FF4(v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
    OUTLINED_FUNCTION_348();
    if ((v54 & 1) == 0)
    {
LABEL_42:
      OUTLINED_FUNCTION_20_1();
      sub_1C8D02958();
      OUTLINED_FUNCTION_155_1();
      sub_1C8D02958();
LABEL_44:
      OUTLINED_FUNCTION_19();
      sub_1C8D02958();
      OUTLINED_FUNCTION_371();
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_20_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_155_1();
    sub_1C8D02958();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_46_0();
  sub_1C8D02958();
LABEL_47:
  sub_1C8CBE41C(v0, &qword_1EC3129C0);
LABEL_48:
  OUTLINED_FUNCTION_166_0();
  sub_1C8D02958();
  OUTLINED_FUNCTION_274_0();
  sub_1C8D02958();
LABEL_49:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEC1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a1 + 40);
      v4 = (a2 + 40);
      do
      {
        v5 = *v3;
        v6 = *(v3 - 1);
        v7 = *v4;
        v12 = *(v4 - 1);
        v13 = v6;

        static TypeInstance.== infix(_:_:)(&v13, &v12);
        v9 = v8;

        if ((v9 ^ 1 | (v5 ^ v7)))
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
      v10 = (v9 ^ 1 | v5 ^ v7) ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1C8CEC2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static TypedValue.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1C8CEC394()
{
  OUTLINED_FUNCTION_164();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_143();
  v33 = type metadata accessor for ComparisonPredicate(v9);
  v10 = OUTLINED_FUNCTION_8_3(v33);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_87();
  v18 = *(v1 + 16);
  if (v18 == *(v8 + 16) && v18 && v1 != v8)
  {
    OUTLINED_FUNCTION_28_0(v17);
    OUTLINED_FUNCTION_389(v19);
    while (1)
    {
      OUTLINED_FUNCTION_100();
      sub_1C8D02900();
      if (!v18)
      {
        break;
      }

      OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_254();
      sub_1C8D02900();
      OUTLINED_FUNCTION_272();
      v20 = v20 && v3 == v2;
      if (!v20 && (OUTLINED_FUNCTION_299() & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != v18 || v5 != v4)
      {
        OUTLINED_FUNCTION_327();
        if ((sub_1C9064C2C() & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_406();
      swift_retain_n();

      v22 = OUTLINED_FUNCTION_271();
      v24 = static TypeInstance.== infix(_:_:)(v22, v23);

      v6 = v36;

      if ((v24 & 1) == 0)
      {
        goto LABEL_24;
      }

      v36 = *(v0 + 40);
      v37 = *(v0 + 48);
      v34 = *(v15 + 40);
      v35 = *(v15 + 48);
      sub_1C8D06E80(v36, v37);
      v25 = OUTLINED_FUNCTION_227();
      sub_1C8D06E80(v25, v26);
      v27 = OUTLINED_FUNCTION_271();
      v18 = static ComparisonPredicate.Comparison.== infix(_:_:)(v27, v28);
      sub_1C8D06F08(v34, v35);
      sub_1C8D06F08(v36, v37);
      if ((v18 & 1) == 0 || (OUTLINED_FUNCTION_405() & 1) == 0)
      {
LABEL_24:
        OUTLINED_FUNCTION_20_1();
        sub_1C8D02958();
        OUTLINED_FUNCTION_134();
        sub_1C8D02958();
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_154();
      v29 = OUTLINED_FUNCTION_227();
      sub_1C8D06F98(v29, v30, v3, v4, v5);
      v31 = OUTLINED_FUNCTION_271();
      v2 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(v31, v32);
      OUTLINED_FUNCTION_20_1();
      sub_1C8D02958();
      OUTLINED_FUNCTION_134();
      sub_1C8D02958();
      OUTLINED_FUNCTION_348();
      sub_1C8D06FF4(v36, v37, v38, v39, v40);
      if (v2)
      {
        OUTLINED_FUNCTION_289();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEC630()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v4);
  v5 = OUTLINED_FUNCTION_13_1(v32);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_63_0(v13, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312930, &unk_1C9068D10);
  OUTLINED_FUNCTION_13_1(v31);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  v30 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(v17);
  v18 = OUTLINED_FUNCTION_8_3(v30);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_64_0();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0(v22);
  OUTLINED_FUNCTION_110_0(v23);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v26)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v24, v25);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v28);
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_190_0();
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v26)
  {
    OUTLINED_FUNCTION_189();
    sub_1C8D04DE8();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)();
    v0 = v27;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312928);
    if ((v0 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_188();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312930);
LABEL_20:
  OUTLINED_FUNCTION_187();
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEC964(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      v3 = a1 == a2;
      if (a1 != a2)
      {
        v4 = (a1 + 40);
        v5 = (a2 + 40);
        do
        {
          v7 = *(v4 - 1);
          v6 = *v4;
          v8 = *v4 >> 62;
          v10 = *(v5 - 1);
          v9 = *v5;
          v11 = *v5 >> 62;
          if (v3)
          {
            v12 = *v4 >> 62;
            if (v7)
            {
              v14 = *v4 >> 62;
              v13 = 0;
            }

            else
            {
              v14 = *v4 >> 62;
              v13 = v6 == 0xC000000000000000;
            }

            v15 = *v4 >> 62;
            v24 = 0;
            if (v13)
            {
              v17 = *v4 >> 62;
              v16 = *v5 >> 62 == 3;
            }

            else
            {
              v17 = *v4 >> 62;
              v16 = 0;
            }

            v18 = *v4 >> 62;
            if (v16)
            {
              v19 = *v4 >> 62;
              if (!v10)
              {
                v20 = *v4 >> 62;
                if (v9 == 0xC000000000000000)
                {
                  v21 = *v4 >> 62;
                  goto LABEL_87;
                }

                v22 = *v4 >> 62;
              }
            }

            else
            {
              v114 = *v4 >> 62;
            }
          }

          else
          {
            v23 = *v4 >> 62;
            v24 = 0;
            v25 = *v4 >> 62;
            switch(v8)
            {
              case 0uLL:
                v24 = BYTE6(v6);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v7), v7))
                {
                  goto LABEL_93;
                }

                v24 = HIDWORD(v7) - v7;
                break;
              case 2uLL:
                v27 = *(v7 + 16);
                v26 = *(v7 + 24);
                v28 = __OFSUB__(v26, v27);
                v24 = v26 - v27;
                if (!v28)
                {
                  break;
                }

                goto LABEL_94;
              case 3uLL:
                break;
              default:
                goto LABEL_111;
            }
          }

          v29 = *v5 >> 62;
          v30 = *v4 >> 62;
          switch(v11)
          {
            case 1uLL:
              LODWORD(v31) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                __break(1u);
LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
LABEL_106:
                __break(1u);
              }

              v31 = v31;
LABEL_33:
              v35 = *v4 >> 62;
              if (v24 != v31)
              {
                v36 = *v4 >> 62;
                goto LABEL_89;
              }

              v37 = *v4 >> 62;
              if (v24 >= 1)
              {
                v39 = *v4 >> 62;
                v40 = v10 >> 32;
                switch(v8)
                {
                  case 1:
                    if (v7 >> 32 < v7)
                    {
                      goto LABEL_95;
                    }

                    v64 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v64, v65);
                    v66 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v66, v67);
                    v68 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v68, v69);
                    v70 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v70, v71);
                    v72 = OUTLINED_FUNCTION_125();
                    sub_1C8CE9144(v72, v73);
                    if (!sub_1C906195C() || !__OFSUB__(v7, sub_1C906197C()))
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_98;
                  case 2:
                    v47 = *(v7 + 16);
                    v117 = *(v7 + 24);
                    v48 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v48, v49);
                    v50 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v50, v51);
                    v52 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v52, v53);
                    v54 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v54, v55);
                    v56 = OUTLINED_FUNCTION_125();
                    sub_1C8CE9144(v56, v57);
                    if (sub_1C906195C() && __OFSUB__(v47, sub_1C906197C()))
                    {
                      goto LABEL_97;
                    }

                    if (__OFSUB__(v117, v47))
                    {
                      goto LABEL_96;
                    }

LABEL_61:
                    sub_1C906196C();
                    v74 = OUTLINED_FUNCTION_151();
                    sub_1C8D00A6C(v74, v75, v9, v76);
                    v77 = OUTLINED_FUNCTION_93();
                    sub_1C8CE7B78(v77, v78);
                    v79 = OUTLINED_FUNCTION_93();
                    sub_1C8CE7B78(v79, v80);
                    v81 = OUTLINED_FUNCTION_125();
                    sub_1C8CE7B78(v81, v82);
                    v83 = __s1[0];
                    v84 = OUTLINED_FUNCTION_93();
                    sub_1C8CE7B78(v84, v85);
                    v86 = OUTLINED_FUNCTION_93();
                    sub_1C8CE7B78(v86, v87);
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_89;
                    }

                    goto LABEL_87;
                  case 3:
                    memset(__s1, 0, 14);
                    if (v11 == 2)
                    {
                      v88 = *(v10 + 16);
                      v120 = *(v10 + 24);
                      v89 = OUTLINED_FUNCTION_93();
                      sub_1C8CE9144(v89, v90);
                      v91 = OUTLINED_FUNCTION_125();
                      sub_1C8CE9144(v91, v92);
                      v93 = sub_1C906195C();
                      if (v93)
                      {
                        v94 = sub_1C906197C();
                        if (__OFSUB__(v88, v94))
                        {
                          goto LABEL_103;
                        }

                        v93 += v88 - v94;
                      }

                      v28 = __OFSUB__(v120, v88);
                      v95 = &v120[-v88];
                      if (v28)
                      {
                        goto LABEL_102;
                      }

                      v96 = sub_1C906196C();
                      if (!v93)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_74;
                    }

                    if (v11 != 1)
                    {
LABEL_59:
                      __s2 = v10;
                      v123 = v9;
                      v124 = BYTE2(v9);
                      v125 = BYTE3(v9);
                      v126 = BYTE4(v9);
                      v127 = BYTE5(v9);
                      if (memcmp(__s1, &__s2, BYTE6(v9)))
                      {
                        goto LABEL_89;
                      }

                      goto LABEL_87;
                    }

                    if (v40 < v10)
                    {
                      goto LABEL_99;
                    }

                    v58 = OUTLINED_FUNCTION_93();
                    sub_1C8CE9144(v58, v59);
                    v60 = OUTLINED_FUNCTION_125();
                    sub_1C8CE9144(v60, v61);
                    v62 = sub_1C906195C();
                    if (v62)
                    {
                      v118 = v62;
                      v63 = sub_1C906197C();
                      if (__OFSUB__(v10, v63))
                      {
                        goto LABEL_106;
                      }

                      v119 = &v118[v10 - v63];
                    }

                    else
                    {
                      v119 = 0;
                    }

                    v105 = sub_1C906196C();
                    v104 = v119;
                    if (!v119)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_83;
                  default:
                    LOWORD(__s1[0]) = *(v4 - 1);
                    BYTE2(__s1[0]) = BYTE2(v7);
                    BYTE3(__s1[0]) = BYTE3(v7);
                    BYTE4(__s1[0]) = BYTE4(v7);
                    BYTE5(__s1[0]) = BYTE5(v7);
                    BYTE6(__s1[0]) = BYTE6(v7);
                    HIBYTE(__s1[0]) = HIBYTE(v7);
                    LOWORD(__s1[1]) = v6;
                    BYTE2(__s1[1]) = BYTE2(v6);
                    BYTE3(__s1[1]) = BYTE3(v6);
                    BYTE4(__s1[1]) = BYTE4(v6);
                    BYTE5(__s1[1]) = BYTE5(v6);
                    if (!v11)
                    {
                      goto LABEL_59;
                    }

                    if (v11 == 1)
                    {
                      if (v40 < v10)
                      {
                        goto LABEL_100;
                      }

                      v41 = OUTLINED_FUNCTION_93();
                      sub_1C8CE9144(v41, v42);
                      v43 = OUTLINED_FUNCTION_125();
                      sub_1C8CE9144(v43, v44);
                      v45 = sub_1C906195C();
                      if (v45)
                      {
                        v115 = v45;
                        v46 = sub_1C906197C();
                        if (__OFSUB__(v10, v46))
                        {
                          goto LABEL_105;
                        }

                        v116 = &v115[v10 - v46];
                      }

                      else
                      {
                        v116 = 0;
                      }

                      v105 = sub_1C906196C();
                      v104 = v116;
                      if (!v116)
                      {
                        goto LABEL_109;
                      }

LABEL_83:
                      if (v105 >= v40 - v10)
                      {
                        v103 = v40 - v10;
                      }

                      else
                      {
                        v103 = v105;
                      }
                    }

                    else
                    {
                      v97 = *(v10 + 16);
                      v121 = *(v10 + 24);
                      v98 = OUTLINED_FUNCTION_93();
                      sub_1C8CE9144(v98, v99);
                      v100 = OUTLINED_FUNCTION_125();
                      sub_1C8CE9144(v100, v101);
                      v93 = sub_1C906195C();
                      if (v93)
                      {
                        v102 = sub_1C906197C();
                        if (__OFSUB__(v97, v102))
                        {
                          goto LABEL_104;
                        }

                        v93 += v97 - v102;
                      }

                      v28 = __OFSUB__(v121, v97);
                      v95 = &v121[-v97];
                      if (v28)
                      {
                        goto LABEL_101;
                      }

                      v96 = sub_1C906196C();
                      if (!v93)
                      {
                        __break(1u);
LABEL_108:
                        __break(1u);
LABEL_109:
                        __break(1u);
LABEL_110:
                        __break(1u);
                        v112 = OUTLINED_FUNCTION_93();
                        sub_1C8CE7B78(v112, v113);

                        __break(1u);
LABEL_111:
                        JUMPOUT(0);
                      }

LABEL_74:
                      if (v96 >= v95)
                      {
                        v103 = v95;
                      }

                      else
                      {
                        v103 = v96;
                      }

                      v104 = v93;
                    }

                    v106 = memcmp(__s1, v104, v103);
                    v107 = OUTLINED_FUNCTION_125();
                    sub_1C8CE7B78(v107, v108);
                    v109 = OUTLINED_FUNCTION_93();
                    sub_1C8CE7B78(v109, v110);
                    if (v106)
                    {
                      goto LABEL_89;
                    }

                    break;
                }
              }

              else
              {
                v38 = *v4 >> 62;
              }

              break;
            case 2uLL:
              v34 = *(v10 + 16);
              v33 = *(v10 + 24);
              v28 = __OFSUB__(v33, v34);
              v31 = v33 - v34;
              if (!v28)
              {
                goto LABEL_33;
              }

              goto LABEL_92;
            case 3uLL:
              if (v24)
              {
                goto LABEL_89;
              }

              break;
            default:
              v32 = *v4 >> 62;
              v31 = BYTE6(v9);
              goto LABEL_33;
          }

LABEL_87:
          v4 += 2;
          v5 += 2;
          v3 = --v2 == 0;
        }

        while (v2);
      }
    }

    result = 1;
  }

  else
  {
LABEL_89:
    result = 0;
  }

  *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C8CECF90()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  v33 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(v4);
  v5 = OUTLINED_FUNCTION_13_1(v33);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312910, &qword_1C9074DC0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_63_0(v13, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312918, &qword_1C9068D00);
  OUTLINED_FUNCTION_13_1(v32);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  v31 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(v17);
  v18 = OUTLINED_FUNCTION_8_3(v31);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_64_0();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0(v22);
  OUTLINED_FUNCTION_110_0(v23);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v26)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v24, v25);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v29);
    v0 = OUTLINED_FUNCTION_204();
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v26)
  {
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)();
    v28 = v27;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312910);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_231();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312918);
LABEL_20:
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CED2F0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_143();
  v83 = type metadata accessor for ToolKitProtoToolSummaryString.Component(v5);
  v6 = OUTLINED_FUNCTION_8_3(v83);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_218();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_87();
  v11 = *(v1 + 16);
  if (v11 != *(v4 + 16) || !v11 || v1 == v4)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_28_0(v10);
  v13 = v1 + v12;
  OUTLINED_FUNCTION_255(v14);
  v82 = v15;
  while (1)
  {
    OUTLINED_FUNCTION_212();
    sub_1C8D02900();
    sub_1C8D02900();
    v17 = *v0;
    v16 = v0[1];
    v18 = *(v0 + 16);
    v19 = *v84;
    v20 = v84[1];
    v21 = *(v84 + 16);
    if (v18 == 255)
    {
      if (v21 != 255)
      {
LABEL_30:
        v65 = OUTLINED_FUNCTION_39_1();
        sub_1C8D06DF8(v65, v66, v67);
        v68 = OUTLINED_FUNCTION_118();
        v70 = v21;
        goto LABEL_33;
      }

      v30 = OUTLINED_FUNCTION_107();
      sub_1C8D06DE0(v30, v31, 255);
      v32 = OUTLINED_FUNCTION_118();
      sub_1C8D06DE0(v32, v33, 255);
      goto LABEL_25;
    }

    if (v21 == 255)
    {
      goto LABEL_30;
    }

    if (v18)
    {
      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v17 == v19 && v16 == v20)
      {
LABEL_24:
        v45 = OUTLINED_FUNCTION_40_1();
        sub_1C8D06DE0(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_107();
        sub_1C8D06DE0(v48, v49, v21);
        v50 = OUTLINED_FUNCTION_40_1();
        sub_1C8D06DE0(v50, v51, v52);
        v53 = OUTLINED_FUNCTION_107();
        j__OUTLINED_FUNCTION_265(v53, v54, v55);
        v56 = OUTLINED_FUNCTION_107();
        j__OUTLINED_FUNCTION_265(v56, v57, v58);
      }

      else
      {
        OUTLINED_FUNCTION_107();
        OUTLINED_FUNCTION_376();
        v80 = sub_1C9064C2C();
        v23 = OUTLINED_FUNCTION_39_1();
        sub_1C8D06DE0(v23, v24, v25);
        v26 = OUTLINED_FUNCTION_107();
        j__OUTLINED_FUNCTION_265(v26, v27, 1);
        v28 = OUTLINED_FUNCTION_118();
        j__OUTLINED_FUNCTION_265(v28, v29, 1);
        if ((v80 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      v59 = OUTLINED_FUNCTION_40_1();
      sub_1C8D06DF8(v59, v60, v61);
      goto LABEL_26;
    }

    if (v21)
    {
      break;
    }

    if (v17 == v19 && v16 == v20)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_376();
    v81 = sub_1C9064C2C();
    v35 = OUTLINED_FUNCTION_39_1();
    sub_1C8D06DE0(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_107();
    j__OUTLINED_FUNCTION_265(v38, v39, 0);
    v40 = OUTLINED_FUNCTION_118();
    j__OUTLINED_FUNCTION_265(v40, v41, 0);
    v42 = OUTLINED_FUNCTION_40_1();
    sub_1C8D06DF8(v42, v43, v44);
    if ((v81 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_26:
    v62 = *(v83 + 20);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v63);
    v64 = sub_1C9063EAC();
    sub_1C8D02958();
    OUTLINED_FUNCTION_249();
    sub_1C8D02958();
    if (v64)
    {
      v2 += v82;
      v13 += v82;
      if (--v11)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  v71 = OUTLINED_FUNCTION_39_1();
  sub_1C8D06DE0(v71, v72, v73);
  v74 = OUTLINED_FUNCTION_107();
  j__OUTLINED_FUNCTION_265(v74, v75, v76);
  v77 = OUTLINED_FUNCTION_118();
  j__OUTLINED_FUNCTION_265(v77, v78, v79);
LABEL_32:
  v68 = OUTLINED_FUNCTION_40_1();
LABEL_33:
  sub_1C8D06DF8(v68, v69, v70);
LABEL_34:
  sub_1C8D02958();
  OUTLINED_FUNCTION_206();
  sub_1C8D02958();
LABEL_35:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CED6A4()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_83_1();
  v6 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(v5);
  v7 = OUTLINED_FUNCTION_8_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_103_1();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_17(v11);
    while (1)
    {
      OUTLINED_FUNCTION_112();
      sub_1C8D02900();
      OUTLINED_FUNCTION_398();
      sub_1C8D02900();
      v12 = *v2 == *v1 && v2[1] == v1[1];
      if (!v12 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v13 = *(v6 + 20);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v14);
      v15 = OUTLINED_FUNCTION_280();
      sub_1C8D02958();
      OUTLINED_FUNCTION_268();
      sub_1C8D02958();
      if (v15)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_93();
    sub_1C8D02958();
  }

LABEL_17:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CED86C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  v33 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(v4);
  v5 = OUTLINED_FUNCTION_13_1(v33);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_63_0(v13, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A80, &qword_1C9068E60);
  OUTLINED_FUNCTION_13_1(v32);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  v31 = type metadata accessor for ToolKitProtoRuntimeRequirement(v17);
  v18 = OUTLINED_FUNCTION_8_3(v31);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_64_0();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0(v22);
  OUTLINED_FUNCTION_110_0(v23);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v26)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v24, v25);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v29);
    v0 = OUTLINED_FUNCTION_204();
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v26)
  {
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)();
    v28 = v27;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312A78);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_231();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312A80);
LABEL_20:
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEDBCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_2_3();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_1C9069088[v5];
    v9 = qword_1C9069088[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C8CEDC30()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  v5 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(v4);
  v6 = OUTLINED_FUNCTION_8_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_232();
  v11 = *(v3 + 16);
  if (v11 == *(v0 + 16) && v11 && v3 != v0)
  {
    v12 = 0;
    OUTLINED_FUNCTION_28_0(v10);
    v14 = *(v13 + 72);
    while (1)
    {
      sub_1C8D02900();
      if (v12 == v11)
      {
        break;
      }

      sub_1C8D02900();
      v15 = *v2;
      v16 = *v1;
      v17 = *(*v2 + 16);
      if (v17 != *(*v1 + 16))
      {
        goto LABEL_42;
      }

      if (v17)
      {
        v18 = v15 == v16;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = (v15 + 40);
        v20 = (v16 + 40);
        while (v17)
        {
          v21 = *(v19 - 1) == *(v20 - 1) && *v19 == *v20;
          if (!v21 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_42;
          }

          v19 += 2;
          v20 += 2;
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
        break;
      }

LABEL_19:
      v22 = v2[3];
      v23 = v1[3];
      if (v22)
      {
        if (!v23)
        {
          goto LABEL_42;
        }

        v24 = v2[2] == v1[2] && v22 == v23;
        if (!v24 && (sub_1C9064C2C() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v23)
      {
        goto LABEL_42;
      }

      v25 = v2[1];
      v26 = v1[1];
      v27 = *(v25 + 16);
      if (v27 != *(v26 + 16))
      {
        goto LABEL_42;
      }

      if (v27 && v25 != v26)
      {
        v28 = (v25 + 40);
        v29 = (v26 + 40);
        while (1)
        {
          v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
          if (!v30 && (sub_1C9064C2C() & 1) == 0)
          {
            break;
          }

          v28 += 2;
          v29 += 2;
          if (!--v27)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        sub_1C8D02958();
        OUTLINED_FUNCTION_93();
        sub_1C8D02958();
        goto LABEL_43;
      }

LABEL_38:
      v31 = *(v5 + 28);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v32);
      v33 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_287();
      sub_1C8D02958();
      if ((v33 & 1) != 0 && ++v12 != v11)
      {
        continue;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8CEDF1C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  v33 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(v4);
  v5 = OUTLINED_FUNCTION_13_1(v33);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_63_0(v13, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312950, &qword_1C9068D30);
  OUTLINED_FUNCTION_13_1(v32);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  v31 = type metadata accessor for ToolKitProtoSystemToolProtocol(v17);
  v18 = OUTLINED_FUNCTION_8_3(v31);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_64_0();
  if (!v26 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_28_0(v22);
  OUTLINED_FUNCTION_110_0(v23);
  while (1)
  {
    OUTLINED_FUNCTION_293();
    sub_1C8D02900();
    OUTLINED_FUNCTION_127();
    sub_1C8D02900();
    OUTLINED_FUNCTION_78_1();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_151();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_24_3(v2);
    if (!v26)
    {
      break;
    }

    OUTLINED_FUNCTION_24_3(v2 + v0);
    if (!v26)
    {
      goto LABEL_19;
    }

    v24 = OUTLINED_FUNCTION_112();
    sub_1C8CBE41C(v24, v25);
LABEL_13:
    OUTLINED_FUNCTION_301();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v29);
    v0 = OUTLINED_FUNCTION_204();
    sub_1C8D02958();
    OUTLINED_FUNCTION_200_0();
    sub_1C8D02958();
    if (v0)
    {
      OUTLINED_FUNCTION_62_2();
      if (!v26)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_85();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_24_3(v2 + v0);
  if (!v26)
  {
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_337();
    static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)();
    v28 = v27;
    sub_1C8D02958();
    OUTLINED_FUNCTION_253();
    sub_1C8D02958();
    sub_1C8CBE41C(v2, &qword_1EC312948);
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_231();
  sub_1C8D02958();
LABEL_19:
  sub_1C8CBE41C(v2, &qword_1EC312950);
LABEL_20:
  sub_1C8D02958();
  OUTLINED_FUNCTION_155_1();
  sub_1C8D02958();
LABEL_21:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEE2D0()
{
  OUTLINED_FUNCTION_164();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_143();
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v6);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312930, &unk_1C9068D10);
  OUTLINED_FUNCTION_13_1(v62);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  v65 = v18;
  v19 = OUTLINED_FUNCTION_111();
  v20 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(v19);
  v21 = OUTLINED_FUNCTION_13_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312940, &qword_1C9068D20);
  OUTLINED_FUNCTION_13_1(v64);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_109_0();
  v66 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(v32);
  v33 = OUTLINED_FUNCTION_8_3(v66);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_306();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_87();
  v38 = *(v1 + 16);
  if (v38 == *(v5 + 16) && v38 && v1 != v5)
  {
    v59 = v3;
    v60 = v7;
    OUTLINED_FUNCTION_28_0(v37);
    v40 = v1 + v39;
    v41 = v5 + v39;
    v61 = *(v42 + 72);
    v63 = v20;
    while (1)
    {
      OUTLINED_FUNCTION_100();
      sub_1C8D02900();
      OUTLINED_FUNCTION_203();
      sub_1C8D02900();
      v43 = *v0 == *v2 && v0[1] == v2[1];
      if (!v43 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v44 = *(v66 + 20);
      v45 = *(v64 + 48);
      sub_1C8CC1D3C();
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_108_2(v3, 1, v63);
      if (v43)
      {
        OUTLINED_FUNCTION_108_2(v3 + v45, 1, v63);
        if (!v43)
        {
          goto LABEL_29;
        }

        sub_1C8CBE41C(v3, &qword_1EC312938);
      }

      else
      {
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_108_2(v3 + v45, 1, v63);
        if (v46)
        {
          sub_1C8D02958();
LABEL_29:
          v57 = &qword_1EC312940;
          goto LABEL_33;
        }

        sub_1C8D04DE8();
        v47 = *(v62 + 48);
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_366();
        sub_1C8CC1D3C();
        v48 = OUTLINED_FUNCTION_230();
        OUTLINED_FUNCTION_108_2(v48, v49, v60);
        if (v43)
        {
          OUTLINED_FUNCTION_108_2(v65 + v47, 1, v60);
          v3 = v59;
          if (!v43)
          {
            goto LABEL_31;
          }

          sub_1C8CBE41C(v65, &qword_1EC312928);
        }

        else
        {
          OUTLINED_FUNCTION_366();
          sub_1C8CC1D3C();
          OUTLINED_FUNCTION_108_2(v65 + v47, 1, v60);
          if (v50)
          {
            OUTLINED_FUNCTION_188();
            sub_1C8D02958();
            v3 = v59;
LABEL_31:
            sub_1C8CBE41C(v65, &qword_1EC312930);
LABEL_32:
            OUTLINED_FUNCTION_187();
            sub_1C8D02958();
            sub_1C8D02958();
            v57 = &qword_1EC312938;
LABEL_33:
            sub_1C8CBE41C(v3, v57);
            break;
          }

          OUTLINED_FUNCTION_189();
          LOBYTE(v47) = v65;
          sub_1C8D04DE8();
          static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)();
          v58 = v51;
          sub_1C8D02958();
          sub_1C8D02958();
          sub_1C8CBE41C(v65, &qword_1EC312928);
          v3 = v59;
          if ((v58 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v52 = *(v63 + 20);
        sub_1C90637EC();
        OUTLINED_FUNCTION_0_7();
        sub_1C8CD23F0(&qword_1EC312920, v53);
        sub_1C9063EAC();
        OUTLINED_FUNCTION_190_0();
        sub_1C8D02958();
        sub_1C8D02958();
        sub_1C8CBE41C(v3, &qword_1EC312938);
        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      v54 = *(v66 + 24);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v55);
      v56 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v56)
      {
        v41 += v61;
        v40 += v61;
        if (--v38)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_134();
    sub_1C8D02958();
  }

LABEL_35:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEE988(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_2_3();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C8CEE9DC()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  v5 = type metadata accessor for ToolKitProtoTypedValue(v4);
  v6 = OUTLINED_FUNCTION_8_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_310();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_103_1();
  if (v11 && v3 && v1 != v0)
  {
    OUTLINED_FUNCTION_17(v10);
    while (1)
    {
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_336();
      sub_1C8D02900();
      OUTLINED_FUNCTION_309();
      if (v11)
      {
        OUTLINED_FUNCTION_308_0();
        goto LABEL_17;
      }

      if ((~v2 & 0xF000000000000007) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_105();
      v12 = OUTLINED_FUNCTION_323();
      static ToolKitProtoTypedValueKind.== infix(_:_:)(v12, v13);
      OUTLINED_FUNCTION_347_1();
      OUTLINED_FUNCTION_361();
      sub_1C8CD0FB0(v0);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      v14 = *(v5 + 20);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v15);
      v0 = OUTLINED_FUNCTION_281();
      v2 = type metadata accessor for ToolKitProtoTypedValue;
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v0)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105();

LABEL_17:
    sub_1C8CD0FB0(v0);
    sub_1C8CD0FB0(v2);
LABEL_18:
    sub_1C8D02958();
    OUTLINED_FUNCTION_206();
    sub_1C8D02958();
  }

LABEL_19:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEEBF0()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_304();
  v42 = type metadata accessor for ToolKitProtoTypeInstance(v5);
  v6 = OUTLINED_FUNCTION_13_1(v42);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v14);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1(v41);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_72();
  v44 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v18 = OUTLINED_FUNCTION_8_3(v44);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_306();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_234();
  v23 = *(v4 + 16);
  if (v23 == *(v0 + 16) && v23 && v4 != v0)
  {
    OUTLINED_FUNCTION_28_0(v22);
    v39 = *(v24 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_381();
      sub_1C8D02900();
      sub_1C8D02900();
      v25 = *v3 == *v2 && v3[1] == v2[1];
      if (!v25 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v26 = v3[2] == v2[2] && v3[3] == v2[3];
      if (!v26 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v27 = *(v44 + 24);
      v28 = *(v41 + 48);
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_108_2(v1, 1, v42);
      if (v25)
      {
        OUTLINED_FUNCTION_108_2(v1 + v28, 1, v42);
        if (!v25)
        {
          goto LABEL_33;
        }

        sub_1C8CBE41C(v1, &qword_1EC312A58);
      }

      else
      {
        OUTLINED_FUNCTION_360();
        OUTLINED_FUNCTION_108_2(v1 + v28, 1, v42);
        if (v29)
        {
          OUTLINED_FUNCTION_169();
          sub_1C8D02958();
LABEL_33:
          v38 = &qword_1EC312A60;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_172();
        sub_1C8D04DE8();
        v30 = *v43;
        v31 = *v40;
        if ((~*v43 & 0xF000000000000007) != 0)
        {
          if ((~v31 & 0xF000000000000007) == 0)
          {
            sub_1C8CD1784(v30);
            sub_1C8CD1784(v31);
            sub_1C8CD1784(v30);

LABEL_35:
            sub_1C8CD0FB0(v30);
            sub_1C8CD0FB0(v31);
LABEL_36:
            sub_1C8D02958();
            sub_1C8D02958();
            v38 = &qword_1EC312A58;
LABEL_37:
            sub_1C8CBE41C(v1, v38);
            break;
          }

          sub_1C8CD1784(v30);
          sub_1C8CD1784(v31);
          sub_1C8CD1784(v30);
          OUTLINED_FUNCTION_323();
          static ToolKitProtoTypeInstanceKind.== infix(_:_:)();
          v33 = v32;

          OUTLINED_FUNCTION_361();
          sub_1C8CD0FB0(v30);
          if ((v33 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1C8CD1784(v30);
          sub_1C8CD1784(v31);
          if ((~v31 & 0xF000000000000007) != 0)
          {
            goto LABEL_35;
          }

          sub_1C8CD0FB0(v30);
        }

        v34 = *(v42 + 20);
        sub_1C90637EC();
        OUTLINED_FUNCTION_0_7();
        sub_1C8CD23F0(&qword_1EC312920, v35);
        LOBYTE(v34) = sub_1C9063EAC();
        OUTLINED_FUNCTION_52_2();
        sub_1C8D02958();
        OUTLINED_FUNCTION_254();
        sub_1C8D02958();
        sub_1C8CBE41C(v1, &qword_1EC312A58);
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      v36 = *(v44 + 28);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v37);
      LOBYTE(v36) = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_378();
      sub_1C8D02958();
      if (v36)
      {
        OUTLINED_FUNCTION_370();
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_274_0();
    sub_1C8D02958();
  }

LABEL_39:
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEF13C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_128_0();
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(v4);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v43 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_63_0(v14, v43);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_13_1(v48);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_35();
  v45 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v18);
  v19 = OUTLINED_FUNCTION_8_3(v45);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_218();
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v43 - v24);
  v26 = *(v1 + 16);
  if (v26 == *(v0 + 16) && v26 && v1 != v0)
  {
    v46 = v2;
    v47 = v5;
    OUTLINED_FUNCTION_28_0(v23);
    v28 = v1 + v27;
    OUTLINED_FUNCTION_255(v29);
    v44 = v30;
    v31 = v45;
    while (1)
    {
      OUTLINED_FUNCTION_293();
      sub_1C8D02900();
      v32 = v49;
      sub_1C8D02900();
      v33 = *v25 == *v32 && v25[1] == v32[1];
      if (!v33 && (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v34 = *(v31 + 20);
      v35 = *(v48 + 48);
      v36 = v46;
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_360();
      OUTLINED_FUNCTION_108_2(v36, 1, v47);
      if (v33)
      {
        OUTLINED_FUNCTION_92_0(v36 + v35);
        if (!v33)
        {
          goto LABEL_22;
        }

        sub_1C8CBE41C(v36, &qword_1EC312A48);
      }

      else
      {
        OUTLINED_FUNCTION_360();
        OUTLINED_FUNCTION_92_0(v36 + v35);
        if (v37)
        {
          OUTLINED_FUNCTION_49_0();
          sub_1C8D02958();
LABEL_22:
          sub_1C8CBE41C(v36, &qword_1EC312A50);
          break;
        }

        sub_1C8D04DE8();
        OUTLINED_FUNCTION_382();
        static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
        v39 = v38;
        v31 = v45;
        sub_1C8D02958();
        sub_1C8D02958();
        sub_1C8CBE41C(v36, &qword_1EC312A48);
        if ((v39 & 1) == 0)
        {
          break;
        }
      }

      v40 = *(v31 + 24);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v41);
      v42 = sub_1C9063EAC();
      sub_1C8D02958();
      OUTLINED_FUNCTION_200_0();
      sub_1C8D02958();
      if (v42)
      {
        v3 += v44;
        v28 += v44;
        if (--v26)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_155_1();
    sub_1C8D02958();
  }

LABEL_24:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEF5F0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_143();
  v39 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(v5);
  v6 = OUTLINED_FUNCTION_13_1(v39);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A68, &qword_1C9074DB0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_63_0(v14, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A70, &qword_1C9068E50);
  OUTLINED_FUNCTION_13_1(v38);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_201();
  v37 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  v18 = OUTLINED_FUNCTION_8_3(v37);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_234();
  v23 = *(v1 + 16);
  if (v23 == *(v4 + 16) && v23 && v1 != v4)
  {
    OUTLINED_FUNCTION_28_0(v22);
    v25 = v1 + v24;
    OUTLINED_FUNCTION_255(v26);
    v36 = v27;
    while (1)
    {
      OUTLINED_FUNCTION_381();
      sub_1C8D02900();
      OUTLINED_FUNCTION_300();
      sub_1C8D02900();
      v28 = *(v38 + 48);
      sub_1C8CC1D3C();
      sub_1C8CC1D3C();
      OUTLINED_FUNCTION_24_3(v0);
      if (v29)
      {
        OUTLINED_FUNCTION_24_3(v0 + v28);
        if (!v29)
        {
          OUTLINED_FUNCTION_167();
          sub_1C8D02958();
          OUTLINED_FUNCTION_274_0();
LABEL_17:
          sub_1C8D02958();
          sub_1C8CBE41C(v0, &qword_1EC312A70);
          break;
        }

        sub_1C8CBE41C(v0, &qword_1EC312A68);
      }

      else
      {
        OUTLINED_FUNCTION_134();
        sub_1C8CC1D3C();
        OUTLINED_FUNCTION_24_3(v0 + v28);
        if (v29)
        {
          sub_1C8D02958();
          OUTLINED_FUNCTION_378();
          sub_1C8D02958();
          OUTLINED_FUNCTION_231();
          goto LABEL_17;
        }

        sub_1C8D04DE8();
        OUTLINED_FUNCTION_337();
        static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)();
        v31 = v30;
        sub_1C8D02958();
        OUTLINED_FUNCTION_117();
        sub_1C8D02958();
        sub_1C8CBE41C(v0, &qword_1EC312A68);
        if ((v31 & 1) == 0)
        {
          OUTLINED_FUNCTION_167();
          sub_1C8D02958();
          OUTLINED_FUNCTION_274_0();
          sub_1C8D02958();
          break;
        }
      }

      v32 = *(v37 + 20);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v33);
      v34 = sub_1C9063EAC();
      sub_1C8D02958();
      sub_1C8D02958();
      if (v34)
      {
        v2 += v36;
        v25 += v36;
        if (--v23)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CEFA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1C8CEFA7C()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_304();
  v5 = type metadata accessor for ToolKitProtoTypeInstance(v4);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v14);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1(v44);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_142();
  v46 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v18 = OUTLINED_FUNCTION_8_3(v46);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_144();
  MEMORY[0x1EEE9AC00](v21);
  v24 = v40 - v23;
  v25 = *(v3 + 16);
  if (v25 != *(v1 + 16) || !v25 || v3 == v1)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_28_0(v22);
  v40[1] = *(v26 + 72);
  v41 = v24;
  v42 = v5;
  while (1)
  {
    OUTLINED_FUNCTION_327();
    sub_1C8D02900();
    OUTLINED_FUNCTION_114();
    sub_1C8D02900();
    if (*v24 != *v2)
    {
      goto LABEL_28;
    }

    v27 = *(v46 + 20);
    v28 = *(v44 + 48);
    OUTLINED_FUNCTION_244();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_244();
    sub_1C8CC1D3C();
    OUTLINED_FUNCTION_92_0(v0);
    if (!v29)
    {
      break;
    }

    OUTLINED_FUNCTION_92_0(v0 + v28);
    if (!v29)
    {
      OUTLINED_FUNCTION_165();
      sub_1C8D02958();
LABEL_24:
      sub_1C8D02958();
      sub_1C8CBE41C(v0, &qword_1EC312A60);
      goto LABEL_29;
    }

    sub_1C8CBE41C(v0, &qword_1EC312A58);
    v24 = v41;
LABEL_18:
    v37 = *(v46 + 24);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v38);
    v39 = sub_1C9063EAC();
    sub_1C8D02958();
    sub_1C8D02958();
    if (v39)
    {
      OUTLINED_FUNCTION_370();
      if (!v29)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_244();
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_92_0(v0 + v28);
  if (v29)
  {
    OUTLINED_FUNCTION_165();
    sub_1C8D02958();
    sub_1C8D02958();
    OUTLINED_FUNCTION_169();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_172();
  v30 = v43;
  sub_1C8D04DE8();
  v31 = *v45;
  v32 = *v30;
  if ((~*v45 & 0xF000000000000007) == 0)
  {
    v40[0] = ~v32 & 0xF000000000000007;
    sub_1C8CD1784(v31);
    sub_1C8CD1784(v32);
    if (v40[0])
    {
      goto LABEL_26;
    }

    sub_1C8CD0FB0(v31);
    goto LABEL_17;
  }

  v48 = *v45;
  if ((~v32 & 0xF000000000000007) != 0)
  {
    v47 = v32;
    sub_1C8CD1784(v31);
    sub_1C8CD1784(v32);
    sub_1C8CD1784(v31);
    OUTLINED_FUNCTION_323();
    static ToolKitProtoTypeInstanceKind.== infix(_:_:)();
    v34 = v33;

    OUTLINED_FUNCTION_361();
    sub_1C8CD0FB0(v31);
    if ((v34 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    v35 = *(v42 + 20);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v36);
    sub_1C9063EAC();
    OUTLINED_FUNCTION_191_1();
    sub_1C8D02958();
    OUTLINED_FUNCTION_278();
    sub_1C8D02958();
    sub_1C8CBE41C(v0, &qword_1EC312A58);
    v24 = v41;
    if ((v31 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  sub_1C8CD1784(v31);
  sub_1C8CD1784(v32);
  sub_1C8CD1784(v31);

LABEL_26:
  sub_1C8CD0FB0(v31);
  sub_1C8CD0FB0(v32);
LABEL_27:
  OUTLINED_FUNCTION_52_2();
  sub_1C8D02958();
  sub_1C8D02958();
  sub_1C8CBE41C(v0, &qword_1EC312A58);
LABEL_28:
  sub_1C8D02958();
  OUTLINED_FUNCTION_130_1();
  sub_1C8D02958();
LABEL_29:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CEFFC8()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  v5 = type metadata accessor for ToolKitProtoTypeInstance(v4);
  v6 = OUTLINED_FUNCTION_8_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_310();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_103_1();
  if (v11 && v3 && v1 != v0)
  {
    OUTLINED_FUNCTION_17(v10);
    while (1)
    {
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_336();
      sub_1C8D02900();
      OUTLINED_FUNCTION_309();
      if (v11)
      {
        OUTLINED_FUNCTION_308_0();
        goto LABEL_17;
      }

      if ((~v2 & 0xF000000000000007) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_323();
      static ToolKitProtoTypeInstanceKind.== infix(_:_:)();
      OUTLINED_FUNCTION_347_1();
      OUTLINED_FUNCTION_361();
      sub_1C8CD0FB0(v0);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      v12 = *(v5 + 20);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v13);
      OUTLINED_FUNCTION_281();
      OUTLINED_FUNCTION_191_1();
      v2 = v14;
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v0)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105();

LABEL_17:
    sub_1C8CD0FB0(v0);
    sub_1C8CD0FB0(v2);
LABEL_18:
    OUTLINED_FUNCTION_52_2();
    sub_1C8D02958();
    OUTLINED_FUNCTION_206();
    sub_1C8D02958();
  }

LABEL_19:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CF01BC()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_83_1();
  v5 = type metadata accessor for ToolKitProtoRestrictionContext(v4);
  v6 = OUTLINED_FUNCTION_8_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_310();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_103_1();
  if (v11 && v3 && v1 != v0)
  {
    OUTLINED_FUNCTION_17(v10);
    while (1)
    {
      OUTLINED_FUNCTION_212();
      sub_1C8D02900();
      OUTLINED_FUNCTION_336();
      sub_1C8D02900();
      OUTLINED_FUNCTION_309();
      if (v11)
      {
        OUTLINED_FUNCTION_308_0();
        goto LABEL_17;
      }

      if ((~v2 & 0xF000000000000007) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_323();
      static ToolKitProtoRestrictionContextKind.== infix(_:_:)();
      OUTLINED_FUNCTION_347_1();
      OUTLINED_FUNCTION_361();
      sub_1C8CD0FB0(v0);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      v12 = *(v5 + 20);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v13);
      v0 = OUTLINED_FUNCTION_281();
      v2 = type metadata accessor for ToolKitProtoRestrictionContext;
      sub_1C8D02958();
      OUTLINED_FUNCTION_330();
      sub_1C8D02958();
      if (v0)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105();

LABEL_17:
    sub_1C8CD0FB0(v0);
    sub_1C8CD0FB0(v2);
LABEL_18:
    sub_1C8D02958();
    OUTLINED_FUNCTION_206();
    sub_1C8D02958();
  }

LABEL_19:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CF0478()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_27_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(v5 + 16);
  if (v11 == *(v3 + 16) && v11 && v5 != v3)
  {
    OUTLINED_FUNCTION_28_0(v10);
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_125();
      sub_1C8D02900();
      sub_1C8D02900();
      v17 = OUTLINED_FUNCTION_112();
      v18 = v1(v17);
      OUTLINED_FUNCTION_93();
      sub_1C8D02958();
      OUTLINED_FUNCTION_148();
      sub_1C8D02958();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_163();
}

void sub_1C8CF05E8()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_83_1();
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(v5);
  v7 = OUTLINED_FUNCTION_8_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_103_1();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_17(v11);
    while (1)
    {
      OUTLINED_FUNCTION_112();
      sub_1C8D02900();
      OUTLINED_FUNCTION_398();
      sub_1C8D02900();
      if (*v2 != *v1 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      v13 = *(v6 + 24);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v14);
      v15 = OUTLINED_FUNCTION_280();
      sub_1C8D02958();
      OUTLINED_FUNCTION_268();
      sub_1C8D02958();
      if (v15)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_93();
    sub_1C8D02958();
  }

LABEL_14:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF07B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_2_3();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C8CF0804()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_83_1();
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(v5);
  v7 = OUTLINED_FUNCTION_8_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_178();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_103_1();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_17(v11);
    while (1)
    {
      OUTLINED_FUNCTION_112();
      sub_1C8D02900();
      OUTLINED_FUNCTION_398();
      sub_1C8D02900();
      if (*v2 != *v1)
      {
        break;
      }

      v13 = v2[1];
      v14 = v1[1];
      if (v13 == 2)
      {
        if (v14 != 2)
        {
          break;
        }
      }

      else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
      {
        break;
      }

      v15 = v1[16];
      if (v2[16])
      {
        if (!v1[16])
        {
          break;
        }
      }

      else
      {
        if (*(v2 + 1) != *(v1 + 1))
        {
          v15 = 1;
        }

        if (v15)
        {
          break;
        }
      }

      v16 = *(v6 + 28);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_7();
      sub_1C8CD23F0(&qword_1EC312920, v17);
      v18 = OUTLINED_FUNCTION_280();
      sub_1C8D02958();
      OUTLINED_FUNCTION_268();
      sub_1C8D02958();
      if (v18)
      {
        OUTLINED_FUNCTION_31_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1C8D02958();
    OUTLINED_FUNCTION_93();
    sub_1C8D02958();
  }

LABEL_24:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

void sub_1C8CF0A10()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for ToolKitProtoLinkSnapshot(v5);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  v11 = OUTLINED_FUNCTION_13_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v114 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v115 = v19;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E0, &unk_1C9068DC0);
  OUTLINED_FUNCTION_13_1(v117);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  v119 = v23;
  v24 = OUTLINED_FUNCTION_111();
  v120 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v24);
  v25 = OUTLINED_FUNCTION_13_1(v120);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v29 = v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E8, &qword_1C909DFE0);
  OUTLINED_FUNCTION_13_1(v123);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v125 = v33;
  v34 = OUTLINED_FUNCTION_111();
  v35 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(v34);
  v36 = OUTLINED_FUNCTION_13_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  v118 = v39;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_216();
  v121 = v41;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_243(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  OUTLINED_FUNCTION_9(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  v128 = v48;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F8, &qword_1C9068DD8);
  OUTLINED_FUNCTION_13_1(v129);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  v52 = OUTLINED_FUNCTION_109_0();
  v127 = type metadata accessor for ToolKitProtoChangeset.Provenance(v52);
  v53 = OUTLINED_FUNCTION_8_3(v127);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_27_2();
  v126 = v56 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v108 - v60;
  v62 = *(v0 + 16);
  if (v62 != *(v4 + 16) || !v62 || v0 == v4)
  {
    goto LABEL_53;
  }

  v112 = v10;
  v110 = v1;
  v109 = v6;
  OUTLINED_FUNCTION_28_0(v59);
  OUTLINED_FUNCTION_255(v63);
  v124 = v65;
  v116 = v61;
  v113 = v29;
  v122 = v35;
  while (1)
  {
    v130 = v64;
    sub_1C8D02900();
    v131 = v62;
    OUTLINED_FUNCTION_278();
    sub_1C8D02900();
    v66 = *(v129 + 48);
    OUTLINED_FUNCTION_325();
    sub_1C8CC1D3C();
    sub_1C8CC1D3C();
    v67 = OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_108_2(v67, v68, v35);
    if (!v70)
    {
      break;
    }

    OUTLINED_FUNCTION_108_2(v2 + v66, 1, v35);
    v69 = v131;
    if (!v70)
    {
      goto LABEL_42;
    }

LABEL_37:
    sub_1C8CBE41C(v2, &qword_1EC3129F0);
    v104 = *(v127 + 20);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_7();
    sub_1C8CD23F0(&qword_1EC312920, v105);
    v106 = sub_1C9063EAC();
    sub_1C8D02958();
    sub_1C8D02958();
    if (v106)
    {
      v10 += v124;
      v64 = v130 + v124;
      v62 = v69 - 1;
      if (v62)
      {
        continue;
      }
    }

    goto LABEL_53;
  }

  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v2 + v66, 1, v35);
  if (!v70)
  {
    sub_1C8D04DE8();
    v71 = *(v123 + 48);
    v35 = v122;
    v72 = v125;
    sub_1C8D02900();
    OUTLINED_FUNCTION_322();
    sub_1C8D02900();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = v131;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_152();
        v86 = v72;
        v87 = v118;
        sub_1C8D02900();
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1C8D02958();
          goto LABEL_46;
        }

        v88 = v110;
        sub_1C8D04DE8();
        v89 = *v87;
        v90 = *v88;
        sub_1C8F56D1C();
        if (v91)
        {
          v92 = *(v109 + 20);
          sub_1C90637EC();
          OUTLINED_FUNCTION_0_7();
          sub_1C8CD23F0(&qword_1EC312920, v93);
          if (OUTLINED_FUNCTION_407())
          {
            sub_1C8D02958();
            OUTLINED_FUNCTION_254();
            sub_1C8D02958();
            v35 = v122;
            goto LABEL_36;
          }
        }

        sub_1C8D02958();
        OUTLINED_FUNCTION_148();
        sub_1C8D02958();
        OUTLINED_FUNCTION_57_2();
        sub_1C8D02958();
        goto LABEL_51;
      case 2:
        v85 = swift_getEnumCaseMultiPayload() == 2;
        goto LABEL_20;
      case 3:
        v85 = swift_getEnumCaseMultiPayload() == 3;
LABEL_20:
        v86 = v72;
        if (!v85)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      default:
        OUTLINED_FUNCTION_152();
        v74 = v121;
        sub_1C8D02900();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1C8D02958();
          v86 = v72;
LABEL_46:
          sub_1C8CBE41C(v86, &qword_1EC3129E8);
        }

        else
        {
          v75 = v113;
          sub_1C8D04DE8();
          v76 = *v74;
          v77 = *v75;
          sub_1C8F57AC8();
          if ((v78 & 1) == 0)
          {
            goto LABEL_50;
          }

          v79 = *(v120 + 20);
          v111 = *(v117 + 48);
          v80 = v119;
          sub_1C8CC1D3C();
          OUTLINED_FUNCTION_376();
          sub_1C8CC1D3C();
          v81 = v112;
          OUTLINED_FUNCTION_108_2(v80, 1, v112);
          if (v70)
          {
            v82 = OUTLINED_FUNCTION_400();
            OUTLINED_FUNCTION_108_2(v82, v83, v81);
            v84 = v80;
            if (!v70)
            {
              goto LABEL_49;
            }

            sub_1C8CBE41C(v80, &qword_1EC3129D8);
LABEL_34:
            v102 = *(v120 + 24);
            sub_1C90637EC();
            OUTLINED_FUNCTION_0_7();
            sub_1C8CD23F0(&qword_1EC312920, v103);
            if ((sub_1C9063EAC() & 1) == 0)
            {
              goto LABEL_50;
            }

            sub_1C8D02958();
            OUTLINED_FUNCTION_119();
            sub_1C8D02958();
LABEL_36:
            sub_1C8D02958();
            sub_1C8D02958();
            OUTLINED_FUNCTION_206();
            sub_1C8D02958();
            goto LABEL_37;
          }

          v94 = v115;
          OUTLINED_FUNCTION_376();
          sub_1C8CC1D3C();
          v95 = OUTLINED_FUNCTION_400();
          OUTLINED_FUNCTION_108_2(v95, v96, v81);
          if (!v97)
          {
            v98 = v114;
            sub_1C8D04DE8();
            v99 = *v94 == *v98 && v94[1] == v98[1];
            if (!v99 && (sub_1C9064C2C() & 1) == 0 || v94[2] != v98[2])
            {
              sub_1C8D02958();
              OUTLINED_FUNCTION_148();
              sub_1C8D02958();
              sub_1C8CBE41C(v119, &qword_1EC3129D8);
              goto LABEL_50;
            }

            v100 = *(v112 + 24);
            sub_1C90637EC();
            OUTLINED_FUNCTION_0_7();
            sub_1C8CD23F0(&qword_1EC312920, v101);
            LOBYTE(v100) = OUTLINED_FUNCTION_407();
            sub_1C8D02958();
            OUTLINED_FUNCTION_254();
            sub_1C8D02958();
            sub_1C8CBE41C(v119, &qword_1EC3129D8);
            v35 = v122;
            if ((v100 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_34;
          }

          sub_1C8D02958();
          v84 = v80;
LABEL_49:
          sub_1C8CBE41C(v84, &qword_1EC3129E0);
LABEL_50:
          sub_1C8D02958();
          OUTLINED_FUNCTION_93();
          sub_1C8D02958();
          OUTLINED_FUNCTION_57_2();
          sub_1C8D02958();
        }

LABEL_51:
        sub_1C8D02958();
        OUTLINED_FUNCTION_134();
        sub_1C8D02958();
        v107 = &qword_1EC3129F0;
        goto LABEL_52;
    }
  }

  OUTLINED_FUNCTION_57_2();
  sub_1C8D02958();
LABEL_42:
  v107 = &qword_1EC3129F8;
LABEL_52:
  sub_1C8CBE41C(v2, v107);
  sub_1C8D02958();
  OUTLINED_FUNCTION_130_1();
  sub_1C8D02958();
LABEL_53:
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF15C4(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_225(a1, a2);
  if (v8)
  {
    if (!v5 || v6 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_416(v22);
      OUTLINED_FUNCTION_416(__src);
      OUTLINED_FUNCTION_418(v23);
      OUTLINED_FUNCTION_418(v20);
      sub_1C8CC1340(v22, v19);
      sub_1C8CC1340(v23, v19);
      v9 = static ContainerDefinition.== infix(_:_:)(__src);
      OUTLINED_FUNCTION_403(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v20[0]);
      sub_1C8CC15FC(v24);
      memcpy(__dst, __src, 0x61uLL);
      sub_1C8CC15FC(__dst);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v3 += 104;
      v2 += 104;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C8CF1698()
{
  OUTLINED_FUNCTION_422();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 48);
    v4 = (v0 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (v7)
      {
        if ((*v3 & 1) == 0)
        {
          goto LABEL_23;
        }

        if (v6 != v9 || v5 != v8)
        {
          v12 = *(v4 - 2);
          OUTLINED_FUNCTION_85();
          v13 = sub_1C9064C2C();
          v14 = OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_264(v14, v15, 1);
          v16 = OUTLINED_FUNCTION_56_1();
          j__OUTLINED_FUNCTION_264(v16, v17, v18);
          v19 = OUTLINED_FUNCTION_56_1();
          j__OUTLINED_FUNCTION_265(v19, v20, v21);
          v22 = OUTLINED_FUNCTION_100();
          v24 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        if (*v3)
        {
LABEL_23:
          v41 = OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_264(v41, v42, v43);
          v44 = OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_264(v44, v45, v7);
          v46 = OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_265(v46, v47, v7);
          v48 = OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_265(v48, v49, v50);
          break;
        }

        if (v6 != v9 || v5 != v8)
        {
          v26 = *(v4 - 2);
          OUTLINED_FUNCTION_85();
          v13 = sub_1C9064C2C();
          v27 = OUTLINED_FUNCTION_100();
          j__OUTLINED_FUNCTION_264(v27, v28, 0);
          v29 = OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_264(v29, v30, 0);
          v31 = OUTLINED_FUNCTION_95_0();
          j__OUTLINED_FUNCTION_265(v31, v32, 0);
          v22 = OUTLINED_FUNCTION_100();
          v24 = 0;
LABEL_18:
          j__OUTLINED_FUNCTION_265(v22, v23, v24);
          if ((v13 & 1) == 0)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      v33 = OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_264(v33, v34, v7);
      v35 = OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_264(v35, v36, v7);
      v37 = OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_265(v37, v38, v7);
      v39 = OUTLINED_FUNCTION_95_0();
      j__OUTLINED_FUNCTION_265(v39, v40, v7);
LABEL_21:
      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_421();
}

void sub_1C8CF1868()
{
  OUTLINED_FUNCTION_164();
  v5 = *(v0 + 16);
  if (v5 == *(v1 + 16) && v5 && v0 != v1)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    v9 = (v0 + 32);
    v10 = (v1 + 32);
    do
    {
      v11 = v9[1];
      v25[0] = *v9;
      v25[1] = v11;
      v26[0] = v9[2];
      v12 = v26[0];
      *(v26 + 9) = *(v9 + 41);
      v22 = v25[0];
      v23 = v11;
      v24[0] = v12;
      *(v24 + 9) = *(v26 + 9);
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      *(v28 + 9) = *(v10 + 41);
      v16 = *(v28 + 9);
      v27[1] = v14;
      v28[0] = v15;
      v27[0] = v13;
      v19 = v13;
      v20 = v14;
      v21[0] = v15;
      *(v21 + 9) = v16;
      v8(v25, v18);
      v8(v27, v18);
      v17 = v7(&v22, &v19);
      v29[0] = v19;
      v29[1] = v20;
      v30[0] = v21[0];
      *(v30 + 9) = *(v21 + 9);
      v6(v29);
      v31[0] = v22;
      v31[1] = v23;
      v32[0] = v24[0];
      *(v32 + 9) = *(v24 + 9);
      v6(v31);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v9 += 4;
      v10 += 4;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CF19B4(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_225(a1, a2);
  if (v8)
  {
    if (!v5 || v6 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_384();
    while (1)
    {
      OUTLINED_FUNCTION_417(v22);
      OUTLINED_FUNCTION_417(__src);
      OUTLINED_FUNCTION_354(v23);
      OUTLINED_FUNCTION_354(v20);
      sub_1C8D073F4(v22, v19);
      sub_1C8D073F4(v23, v19);
      v9 = static RestrictionContext.== infix(_:_:)(__src, v20);
      OUTLINED_FUNCTION_404(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v20[0]);
      sub_1C8D073A0(v24);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C8D073A0(__dst);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v2 += 136;
      v3 += 136;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C8CF1A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C90C96A0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8CF1C78(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x74786554746C61;
      break;
    case 3:
      result = 0x6567616D69;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CF1D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CF1A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CF1D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CF1C70();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CF1D7C(uint64_t a1)
{
  v2 = sub_1C8CF6A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8CF1DB8(uint64_t a1)
{
  v2 = sub_1C8CF6A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312540, &qword_1C9066978);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8CF6A5C();
  OUTLINED_FUNCTION_358();
  v15 = *v2;
  v16 = v2[1];
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v1)
  {
    v36 = v2[2];
    v40 = v2[3];
    v43 = *(v2 + 32);
    OUTLINED_FUNCTION_275();
    sub_1C8CD1ABC(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_208_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_43_1();
    sub_1C8D07450(v22, v23);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    sub_1C8CD32C0(v36, v40, v43);
    v37 = v2[5];
    v41 = v2[6];
    v44 = *(v2 + 56);
    sub_1C8CD1ABC(v37, v41, v44);
    v24 = OUTLINED_FUNCTION_208_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_43_1();
    sub_1C8D07450(v26, v27);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    sub_1C8CD32C0(v37, v41, v44);
    v35 = type metadata accessor for DisplayRepresentation(0);
    v28 = v35[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_43_1();
    sub_1C8D07450(v29, v30);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    v31 = (v2 + v35[8]);
    v38 = *v31;
    v42 = v31[1];
    v45 = v31[2];
    v46 = v31[3];
    sub_1C8CE9E30(*v31, v42, v45, v46);
    sub_1C8CF6AF8();
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    sub_1C8CF6A1C(v38, v42, v45, v46);
    v39 = *(v2 + v35[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&qword_1EDA6B530);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v32 = *(v7 + 8);
  v33 = OUTLINED_FUNCTION_93();
  v34(v33);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = *v0;
  v13 = v0[1];
  sub_1C9063FBC();
  v14 = *(v0 + 32);
  if (v14 == 255)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    v15 = v0[2];
    v16 = v0[3];
    OUTLINED_FUNCTION_284();
    if (v14)
    {
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_118();
      sub_1C9063FBC();
    }

    else
    {
      OUTLINED_FUNCTION_359();
      OUTLINED_FUNCTION_118();
      sub_1C9061F4C();
    }
  }

  v17 = *(v0 + 56);
  if (v17 == 255)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    v18 = v0[5];
    v19 = v0[6];
    OUTLINED_FUNCTION_284();
    if (v17)
    {
      OUTLINED_FUNCTION_341();
      OUTLINED_FUNCTION_118();
      sub_1C9063FBC();
    }

    else
    {
      OUTLINED_FUNCTION_359();
      OUTLINED_FUNCTION_118();
      sub_1C9061F4C();
    }
  }

  v20 = type metadata accessor for DisplayRepresentation(0);
  v21 = v20[7];
  sub_1C8CC1D3C();
  OUTLINED_FUNCTION_108_2(v1, 1, v4);
  if (v22)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    sub_1C8CB21A0();
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_390();
    sub_1C8CF44A4();
    v23 = OUTLINED_FUNCTION_288();
    sub_1C8CBE41C(v23, v24);
  }

  v25 = (v0 + v20[8]);
  if (v25[3])
  {
    v27 = v25[1];
    v26 = v25[2];
    v28 = *v25;
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_210();
    sub_1C9061F4C();
    OUTLINED_FUNCTION_117();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  sub_1C8CC1590(v3, *(v0 + v20[9]));
  OUTLINED_FUNCTION_163();
}

void DisplayRepresentation.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_86();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312560, &qword_1C9066998);
  OUTLINED_FUNCTION_11(v37);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_109_0();
  v38 = type metadata accessor for DisplayRepresentation(v10);
  v11 = OUTLINED_FUNCTION_13_1(v38);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v15 = v14;
  v17 = v2[3];
  v16 = v2[4];
  v18 = OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_217(v18, v19);
  sub_1C8CF6A5C();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    *v15 = sub_1C9064A0C();
    *(v15 + 8) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312548, &qword_1C9066980);
    OUTLINED_FUNCTION_275();
    OUTLINED_FUNCTION_42_1();
    sub_1C8D07450(v21, v22);
    OUTLINED_FUNCTION_270_0();
    OUTLINED_FUNCTION_279();
    *(v15 + 16) = OUTLINED_FUNCTION_374();
    *(v15 + 32) = v23;
    v24 = OUTLINED_FUNCTION_278();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_42_1();
    sub_1C8D07450(v26, v27);
    OUTLINED_FUNCTION_270_0();
    OUTLINED_FUNCTION_279();
    *(v15 + 40) = OUTLINED_FUNCTION_374();
    *(v15 + 56) = v28;
    v29 = OUTLINED_FUNCTION_300();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    LOBYTE(v39) = 3;
    OUTLINED_FUNCTION_42_1();
    sub_1C8D07450(v31, v32);
    OUTLINED_FUNCTION_279();
    v33 = v38[7];
    sub_1C8CB21A0();
    sub_1C8D02768();
    OUTLINED_FUNCTION_270_0();
    sub_1C90649EC();
    v34 = (v15 + v38[8]);
    *v34 = v39;
    v34[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    sub_1C8CA669C(&unk_1EDA6B520);
    OUTLINED_FUNCTION_270_0();
    sub_1C9064A6C();
    v35 = OUTLINED_FUNCTION_135_0();
    v36(v35);
    *(v15 + v38[9]) = v39;
    OUTLINED_FUNCTION_159();
    sub_1C8D02900();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_59();
    sub_1C8D02958();
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentation.debugDescription.getter()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_13_1(v68);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_269_0(v9);
  OUTLINED_FUNCTION_373(0x6C746974u);
  MEMORY[0x1CCA81A90](*v0, *(v0 + 8));
  sub_1C8D00CA4();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    OUTLINED_FUNCTION_90();
    v11 = v63;
  }

  *(v11 + 16) = v12 + 1;
  v13 = v11 + 16 * v12;
  *(v13 + 32) = v70;
  *(v13 + 40) = v71;
  if (*(v0 + 32) != 255)
  {
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    OUTLINED_FUNCTION_372();
    v70 = v16;
    v71 = 0xEA0000000000203ALL;
    v17 = OUTLINED_FUNCTION_221();
    sub_1C8CD1ABC(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_245();
    v23 = sub_1C8CF2CEC(v20, v21, v22);
    MEMORY[0x1CCA81A90](v23);

    v24 = *(v11 + 16);
    if (v24 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v64;
    }

    v25 = OUTLINED_FUNCTION_221();
    sub_1C8CD32C0(v25, v26, v27);
    *(v11 + 16) = v24 + 1;
    v28 = v11 + 16 * v24;
    *(v28 + 32) = v70;
    *(v28 + 40) = 0xEA0000000000203ALL;
  }

  if (*(v0 + 56) != 255)
  {
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    v70 = 0x7478657420746C61;
    v71 = 0xEA0000000000203ALL;
    v31 = OUTLINED_FUNCTION_221();
    sub_1C8CD1ABC(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_245();
    v37 = sub_1C8CF2CEC(v34, v35, v36);
    MEMORY[0x1CCA81A90](v37);

    v38 = *(v11 + 16);
    if (v38 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v65;
    }

    v39 = OUTLINED_FUNCTION_221();
    sub_1C8CD32C0(v39, v40, v41);
    *(v11 + 16) = v38 + 1;
    v42 = v11 + 16 * v38;
    *(v42 + 32) = 0x7478657420746C61;
    *(v42 + 40) = 0xEA0000000000203ALL;
  }

  v43 = type metadata accessor for DisplayRepresentation(0);
  v44 = *(v43 + 28);
  sub_1C8CC1D3C();
  v45 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v45, v46, v68);
  if (v47)
  {
    sub_1C8CBE41C(v1, &qword_1EC312528);
  }

  else
  {
    sub_1C8CB21A0();
    OUTLINED_FUNCTION_373(0x67616D69u);
    v48 = sub_1C8CF2DB0();
    MEMORY[0x1CCA81A90](v48);

    v49 = *(v11 + 16);
    if (v49 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v67;
    }

    sub_1C8CBE41C(v69, &qword_1EC312530);
    *(v11 + 16) = v49 + 1;
    v50 = v11 + 16 * v49;
    *(v50 + 32) = v70;
    *(v50 + 40) = v71;
  }

  if (*(*(v0 + *(v43 + 36)) + 16))
  {

    v51 = OUTLINED_FUNCTION_181();
    __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
    OUTLINED_FUNCTION_156();
    sub_1C8D07450(v53, v54);
    OUTLINED_FUNCTION_379();
    sub_1C9063E9C();

    v55 = OUTLINED_FUNCTION_288();
    MEMORY[0x1CCA81A90](v55);

    v56 = *(v11 + 16);
    if (v56 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v11 = v66;
    }

    *(v11 + 16) = v56 + 1;
    v57 = v11 + 16 * v56;
    *(v57 + 32) = 0x736D6E796F6E7973;
    *(v57 + 40) = 0xEA0000000000203ALL;
  }

  sub_1C906478C();

  v58 = OUTLINED_FUNCTION_209();
  __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
  OUTLINED_FUNCTION_156();
  sub_1C8D07450(v60, v61);
  OUTLINED_FUNCTION_379();
  sub_1C9063E9C();

  v62 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v62);

  OUTLINED_FUNCTION_340();
  OUTLINED_FUNCTION_163();
}