void OUTLINED_FUNCTION_16_42()
{
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
}

void *sub_267BA7E0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF8, &qword_267EFF0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_267BA7F4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267BA7F5C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_267EF99D8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_267BA7F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF8, &qword_267EFF0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BA800C(uint64_t a1)
{
  sub_267B9AB18(v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_0(v9, v10);
  (*(v3 + 24))(v8, v2, v3);
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_267EF45A8();
  v5 = *(a1 + 352);
  *(a1 + 344) = v4;
  *(a1 + 352) = v6;

  __swift_destroy_boxed_opaque_existential_0(v8);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_267BA80BC(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_267EF9F28();
      __break(1u);
      goto LABEL_22;
    }

    sub_267BA7F9C(i, &v31);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_267BA7F4C(&v33, v28);
    v9 = *a3;
    v11 = sub_267BA9948();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
      sub_267EF9C78();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_267BA7F4C(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_267CFA060(v14);
  v16 = *a3;
  v17 = sub_267BA9948();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v28);

    return;
  }

LABEL_22:
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F167A0);
  sub_267EF9C58();
  MEMORY[0x26D608E60](39, 0xE100000000000000);
  sub_267EF9C98();
  __break(1u);
}

uint64_t sub_267BA83C4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t Parse.DirectInvocation.description.getter()
{
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD000000000000030, 0x8000000267F1D360);
  v0 = sub_267EF4BC8();
  MEMORY[0x26D608E60](v0);

  MEMORY[0x26D608E60](0x4472657375202C22, 0xED0000203A617461);
  sub_267BA85B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C668, &unk_267F0B0F0);
  v1 = sub_267EF9098();
  MEMORY[0x26D608E60](v1);

  MEMORY[0x26D608E60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267BA85B8()
{
  result = sub_267EF4BD8();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {

    v3 = MEMORY[0x277D84F90];
    return sub_267BA89C8(v3);
  }

  v45 = MEMORY[0x277D84F90];
  sub_267BA8920(0, v2, 0);
  v3 = v45;
  result = sub_267BA7F44(v1);
  v5 = result;
  v7 = v6;
  v8 = 0;
  v9 = v1 + 64;
  v34 = *MEMORY[0x277D5C2D8];
  v32 = v6;
  v33 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v9 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_34;
    }

    if (*(v1 + 36) != v7)
    {
      goto LABEL_35;
    }

    v35 = v4;
    v36 = v3;
    v11 = (*(v1 + 48) + 16 * v5);
    v13 = *v11;
    v12 = v11[1];
    sub_267BA2E04(*(v1 + 56) + 32 * v5, v42);
    v40[0] = v13;
    v40[1] = v12;
    sub_267BA7F4C(v42, v41);
    sub_267BA2E04(v41, v39);
    if (v13 == sub_267EF9028() && v12 == v14)
    {

LABEL_15:
      v17 = sub_267EBFB68();
      v18 = sub_267EF9838();
      v38 = v17;
      *&v37 = v18;
      __swift_destroy_boxed_opaque_existential_0(v39);
      sub_267BA7F4C(&v37, v39);
      goto LABEL_16;
    }

    v16 = sub_267EF9EA8();

    if (v16)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_267BA7F4C(v39, v44);
    *&v43 = v13;
    *(&v43 + 1) = v12;

    result = sub_267B9F98C(v40, &qword_28022C060, &qword_267F09478);
    v3 = v36;
    v45 = v36;
    v20 = *(v36 + 16);
    v19 = *(v36 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_267BA8920((v19 > 1), v20 + 1, 1);
      v3 = v45;
    }

    *(v3 + 16) = v20 + 1;
    v21 = (v3 + 48 * v20);
    v22 = v43;
    v23 = v44[1];
    v21[3] = v44[0];
    v21[4] = v23;
    v21[2] = v22;
    v24 = 1 << *(v1 + 32);
    if (v5 >= v24)
    {
      goto LABEL_36;
    }

    v9 = v1 + 64;
    v25 = *(v1 + 64 + 8 * v10);
    if ((v25 & (1 << v5)) == 0)
    {
      goto LABEL_37;
    }

    if (*(v1 + 36) != v7)
    {
      goto LABEL_38;
    }

    v26 = v25 & (-2 << (v5 & 0x3F));
    if (v26)
    {
      v24 = __clz(__rbit64(v26)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v10 << 6;
      v28 = v10 + 1;
      v29 = (v1 + 72 + 8 * v10);
      while (v28 < (v24 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_267C96654(v5, v7, v35 & 1);
          v24 = __clz(__rbit64(v30)) + v27;
          goto LABEL_28;
        }
      }

      result = sub_267C96654(v5, v7, v35 & 1);
    }

LABEL_28:
    v4 = 0;
    ++v8;
    v5 = v24;
    v7 = v32;
    if (v8 == v33)
    {

      return sub_267BA89C8(v3);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_267BA8920(void *a1, int64_t a2, char a3)
{
  result = sub_267BA7E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_267BA8944(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &qword_28022D2F8, 0x277D58238);
  v3 = sub_267EF92D8();

  [a2 setInferenceCommsAppSelectionTrainingAppDependentSignals_];
}

uint64_t sub_267BA89F0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_267EF9CF8();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t OUTLINED_FUNCTION_50_2()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[28];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[17];

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_50_4@<X0>(uint64_t a1@<X8>)
{

  return sub_267C26980(v2, v1 + a1, v4, v3);
}

uint64_t OUTLINED_FUNCTION_50_5@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267C2FB6C(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_50_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_50_8()
{
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
}

uint64_t OUTLINED_FUNCTION_50_9()
{
  v3 = *(v0 + 8);
  *(v2 - 120) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v2 - 112) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t result)
{
  v3[6] = v2;
  v3[9] = result;
  v3[10] = v4;
  v3[11] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_11()
{
  v2 = *(*(v0 + 752) + 48);
  *(v0 + 776) = v2;

  return sub_267BEB520(v2 + 152, v0 + 256);
}

uint64_t OUTLINED_FUNCTION_50_13()
{
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[144];
  *(v1 - 96) = v0[143];
  result = v0[111];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[93];
  v11 = v0[87];
  v12 = *(v0[110] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_361()
{
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_50_14()
{

  return sub_267BA33E8(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_50_15()
{

  return sub_267EF4328();
}

void OUTLINED_FUNCTION_50_16()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_50_17()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[42];
  v8 = v0[43];
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{
  *(a1 + 8) = sub_267C0DFE8;
  v2 = v1[93];
  v3 = v1[92];
  return v1[96];
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_267EF8F28();
}

uint64_t OUTLINED_FUNCTION_1_16()
{
  v4 = v1[99];
  v5 = v1[96];
  v6 = v1[95];
  v7 = v1[94];
  v2 = v1[93];
  v8 = v1[92];
  v9 = v1[91];
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_18()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = *(v0[49] + 24);
  return 1;
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20()
{
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[73];
  v2 = v0[70];
  v10 = v0[69];
  return v1;
}

uint64_t OUTLINED_FUNCTION_45_3()
{
}

uint64_t OUTLINED_FUNCTION_1_27()
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_1_28@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

void OUTLINED_FUNCTION_1_29()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 272) = 1;
  *(v0 - 264) = 1;
  *(v0 - 256) = 1;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_1_30()
{
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v10 = v0[71];
  v11 = v0[68];
}

__n128 *OUTLINED_FUNCTION_1_31(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "resolutionType");
  result[2].n128_u8[15] = -18;
  return result;
}

__n128 OUTLINED_FUNCTION_1_32(uint64_t a1)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_1_41()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_42()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[37];
  v10 = *(v0[44] + 8);
  return v0[45];
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267BE24FC(&a9, a2, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return sub_267BBD0EC(0, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_1_45@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 120);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_46()
{
  result = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[32];
  v8 = v0[33];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_48()
{
  v1 = *(v0 + 352);
  *(v0 + 584) = *(v0 + 336);
  result = *(v0 + 520);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  *(v0 + 600) = v1;
  *(v0 + 329) = *(v0 + 368);
  *(v0 + 616) = *(v4 + 8);
  *(v0 + 624) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_49(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_50()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[21];
  v9 = *(v0[22] + 8);
  return v0[23];
}

void OUTLINED_FUNCTION_1_51()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 200);
}

void OUTLINED_FUNCTION_1_55()
{
  v2 = v0[117];
  *(v1 - 176) = v0[118];
  *(v1 - 168) = v2;
  v3 = v0[111];
  *(v1 - 160) = v0[114];
  *(v1 - 152) = v3;
  v4 = v0[105];
  *(v1 - 144) = v0[108];
  *(v1 - 136) = v4;
  v5 = v0[102];
  *(v1 - 128) = v0[104];
  *(v1 - 120) = v5;
  v6 = v0[96];
  *(v1 - 112) = v0[99];
  *(v1 - 104) = v6;
}

__n128 OUTLINED_FUNCTION_1_56(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = *(v1 - 192);
  v3 = *(v1 - 176);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1)
{
  *(a1 + 8) = sub_267DB184C;
  v3 = *(v1 + 72);
  *(v2 + 32) = 0;
  *(v2 + 40) = v3;
  return 0x696A6F6D6E6567;
}

uint64_t OUTLINED_FUNCTION_1_60(uint64_t a1)
{
  *(a1 + 8) = sub_267BB8278;
  v2 = v1[50];
  v3 = v1[33];
  v4 = v1[29];
  return v1[49];
}

unint64_t OUTLINED_FUNCTION_1_61(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return 0xD00000000000001CLL;
}

__n128 *OUTLINED_FUNCTION_2_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6D614E70756F7267;
  result[2].n128_u64[1] = 0xE900000000000065;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_62()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_64()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_1_67()
{
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[48];
  v8 = *(v0[49] + 8);
  return v0[50];
}

uint64_t OUTLINED_FUNCTION_1_68(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_267BA33E8(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_1_69()
{
  v2 = v0[272];
  v3 = v0[271];
  v4 = v0[270];
  v5 = v0[269];
  v6 = v0[268];
  v7 = v0[267];
  v8 = v0[264];
  v9 = v0[261];
  v10 = v0[258];
  v11 = v0[255];
}

uint64_t OUTLINED_FUNCTION_1_70()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_73()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[87];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[78];
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
}

uint64_t OUTLINED_FUNCTION_1_74()
{
  *(v0 + 128) = v1;
  *(v0 + 57) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 24);
  *(v0 + 152) = *(v0 + 40);
  *(v0 + 58) = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_1_75(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_267BA33E8(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_1_76(uint64_t a1)
{
  *(a1 + 8) = sub_267E4F510;
  v3 = *(v2 + 88);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_77(uint64_t a1)
{
  *(a1 + 8) = sub_267E52BD4;
  v2 = v1[28];
  v3 = v1[29];
  return v1[32];
}

uint64_t OUTLINED_FUNCTION_1_78()
{

  return sub_267EF89B8();
}

uint64_t OUTLINED_FUNCTION_1_79@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_267EF9DA8();
}

void *OUTLINED_FUNCTION_1_81()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_1_82()
{
  v2 = *v0;

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_1_83(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

void *OUTLINED_FUNCTION_1_84()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_1_86(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);

  return sub_267C1D46C(v3);
}

uint64_t OUTLINED_FUNCTION_1_87()
{
  v11 = v0[40];
  v12 = v0[54];
  v13 = v0[34];
  v14 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[22];
  v8 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v8);
  v9 = *(v7 + 8);
  return v8;
}

uint64_t OUTLINED_FUNCTION_1_91()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[138];
  result = v0[137];
  v11 = v0[136];
  v8 = v0[134];
  v9 = v0[133];
  v12 = v0[130];
  v10 = *(v0[135] + 8);
  return result;
}

unint64_t sub_267BA9948()
{
  OUTLINED_FUNCTION_16_9();
  v1 = *(v0 + 40);
  sub_267EF9FC8();
  sub_267EF9128();
  sub_267EFA018();
  v2 = OUTLINED_FUNCTION_46_2();

  return sub_267BAB9D4(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24()
{
  v2 = v0[101];
  v3 = v0[97];
  v4 = v0[96];

  return sub_267EF90F8();
}

void OUTLINED_FUNCTION_24_3()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
}

void OUTLINED_FUNCTION_24_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_24_5@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_24_6@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v2, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_61_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_24_8@<X0>(uint64_t a1@<X8>)
{
  sub_267B9A5E8((v2 - 208), v1 + a1);
  sub_267B9A5E8((v2 - 128), v1 + 16);
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v2 = *(v1 + 48);
  v3 = *(*(v1 + 56) + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_10(uint64_t a1)
{
  *(a1 + 8) = sub_267D059E8;
  v2 = *(v1 + 752);
  return v1 + 672;
}

uint64_t OUTLINED_FUNCTION_24_12@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

void OUTLINED_FUNCTION_24_14()
{
  strcpy((v1 + 848), "useDoneButton");
  *(v1 + 862) = -4864;
  v3 = *(v0 + *(v2 + 80));
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  *(v1 + 536) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_18()
{
  v5 = v1[19];
  v4 = v1[20];
  v6 = v1[10];
  v7 = v1[25];

  return __swift_storeEnumTagSinglePayload(v7, v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_24_19()
{

  return sub_267EF9C98();
}

void OUTLINED_FUNCTION_24_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_24_22()
{
  v1 = v0[161];
  result = v0[154];
  v3 = v0[153];
  v4 = v0[119];
  v5 = v0[114];
  v6 = v0[113];
  return result;
}

uint64_t OUTLINED_FUNCTION_24_25()
{
  v2 = v0[70];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[64];

  return sub_267EF2D18();
}

uint64_t OUTLINED_FUNCTION_24_26()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_24_27()
{
  v1 = *(v0 + 632);
  v7 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  __swift_project_boxed_opaque_existential_0(*(v0 + 568), *(*(v0 + 568) + 24));
  v8 = *v3;

  return sub_267BB8364();
}

uint64_t OUTLINED_FUNCTION_24_29()
{
  v3 = *(v1 + 56);

  return sub_267BBD0EC(v0, (v3 & 0xC000000000000001) == 0, v3);
}

uint64_t OUTLINED_FUNCTION_24_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_24_34(void *result)
{
  *(v4 + 488) = result;
  result[2] = v3;
  result[3] = v6;
  result[4] = v7;
  result[5] = v8;
  result[6] = v5;
  result[7] = v2;
  result[8] = v9;
  v10 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_36()
{
  v2 = v0[43];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[30];
}

uint64_t OUTLINED_FUNCTION_24_41()
{

  return sub_267C2FB6C(v2, v1 + v4, v0, v3);
}

uint64_t OUTLINED_FUNCTION_24_42()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_267EF4CC8();
}

void OUTLINED_FUNCTION_24_43()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_24_45()
{

  return sub_267EF9EA8();
}

uint64_t sub_267BA9F38(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_4_9()
{

  return sub_267EF9128();
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_19(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

void OUTLINED_FUNCTION_4_20()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

__n128 OUTLINED_FUNCTION_4_21(__n128 *a1)
{
  *(v1 + 40) = a1;
  result = *(v1 + 24);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[6], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[7], 1, 1, v1);
  v4 = v2 + v3[8];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_267EF4CC8();
}

uint64_t OUTLINED_FUNCTION_4_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_4_37@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 144);

  return sub_267EF9DA8();
}

uint64_t OUTLINED_FUNCTION_4_41()
{
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_4_44@<X0>(uint64_t a1@<X8>)
{

  return sub_267D75EC4(v1 + a1, type metadata accessor for TimedSentMessageContext);
}

uint64_t OUTLINED_FUNCTION_4_45(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v4);
  v6 = *(v5 + 8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t result)
{
  *(result + 8) = sub_267DB1980;
  v2 = *(v1 + 72);
  return result;
}

void *OUTLINED_FUNCTION_4_48@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  result = __swift_project_boxed_opaque_existential_0(a1 + 2, a1[5]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_49@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_4_50()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_4_51()
{
}

id OUTLINED_FUNCTION_4_52(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_4_54()
{
  result = v0;
  v3 = **(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_55()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_56()
{
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[176];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[171];
}

uint64_t OUTLINED_FUNCTION_4_57()
{
  v2 = v0[54];
  result = v0[55];
  v3 = v0[52];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v7 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[42];
  v11 = v0[43];
  v12 = v0[41];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_58()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_59@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v3[6] = a2;
  v3[9] = a1;
  v3[10] = 0x6E65697069636572;
  v3[11] = 0xE900000000000074;
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_60(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

unint64_t OUTLINED_FUNCTION_4_62()
{
  result = v2 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v1;
  v4 = *(v0 + 32);
  return result;
}

unint64_t OUTLINED_FUNCTION_4_65()
{
  v2 = *v0;

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_4_66(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

double OUTLINED_FUNCTION_4_68()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_69(uint64_t result)
{
  *(v2 + 48) = result;
  v3 = v1 + *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_70()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_74()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 40);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_76()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[15];
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  v2 = *(v0 + 432);

  return sub_267C37B28(v0 + 16, v0 + 72);
}

void *OUTLINED_FUNCTION_21_4(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_267BA33E8(0x614C664F65746144, 0xEE00746E69487473, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_21_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_21_13(uint64_t a1, uint64_t a2)
{
  v3[54] = a1;
  v3[55] = a2;
  v3[56] = *(v4 + 96);

  return memcpy(v3 + 2, v2, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_21_15@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 56);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

id OUTLINED_FUNCTION_21_16()
{

  return sub_267BC20F4(v1, 0, 0, 0, v0);
}

void OUTLINED_FUNCTION_21_17()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
}

uint64_t OUTLINED_FUNCTION_21_20()
{
  v1 = v0[161];
  result = v0[154];
  v3 = v0[153];
  v4 = v0[119];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  return result;
}

void OUTLINED_FUNCTION_21_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_26()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[66];
  v6 = v0[63];
}

uint64_t OUTLINED_FUNCTION_21_27()
{
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v0[9] + 56);

  return type metadata accessor for MessagesApp(0);
}

void OUTLINED_FUNCTION_21_28()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
}

uint64_t OUTLINED_FUNCTION_21_30()
{
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[30];
}

void OUTLINED_FUNCTION_21_32()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v10 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
}

uint64_t OUTLINED_FUNCTION_21_33()
{
  v2 = *(v0 - 240);

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_21_37()
{

  return sub_267C2FB6C(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[21];
}

void OUTLINED_FUNCTION_59_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_7_16()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  v1 = v0[132];
  v2 = v0[129];
  v3 = v0[126];
  v4 = v0[125];
  v5 = v0[124];
  v8 = v0[123];
  v9 = v0[120];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[114];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
  v16 = v0[108];
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  __swift_destroy_boxed_opaque_existential_0(v0 + 53);
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1)
{
  *(a1 + 8) = sub_267CA97D0;
  v2 = *(v1 + 88);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_7_21()
{
  v2 = v0[43];
  result = v0[44];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22] + 8;
  v13 = v0[23];
  return v0[25];
}

uint64_t OUTLINED_FUNCTION_7_28()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

_OWORD *OUTLINED_FUNCTION_7_29()
{
  *v0 = 0u;
  v0[1] = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_7_30()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_31()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_33(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_267BC1E20(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_7_34(uint64_t result)
{
  *(result + 8) = sub_267D9E604;
  v2 = *(v1 + 56);
  return result;
}

void *OUTLINED_FUNCTION_7_37()
{
  v1 = *(v0 - 96);
  result = __swift_project_boxed_opaque_existential_0((v0 - 128), *(v0 - 104));
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_7_40()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_7_41()
{
}

void *OUTLINED_FUNCTION_7_43()
{
  v2 = v0[12];
  v3 = v0[11];

  return __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
}

id OUTLINED_FUNCTION_7_45()
{

  return sub_267BEA714(v1, (v0 + 112));
}

uint64_t OUTLINED_FUNCTION_7_49()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v1 + 8);
  return v2;
}

unint64_t OUTLINED_FUNCTION_7_50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_54()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 160);
}

uint64_t OUTLINED_FUNCTION_7_55()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_56(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 272);
  return v2;
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  v1 = *(v0 + 888);
  v9 = *(v0 + 864);
  v10 = *(v0 + 856);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 768);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  __swift_project_boxed_opaque_existential_0(*(v0 + 760), *(*(v0 + 760) + 24));
  v11 = *v5;

  return sub_267BB8364();
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_25_7()
{
  v2 = *(v0 + 424);

  return sub_267C37B60(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[27];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[17];

  return sub_267EF7C18();
}

void OUTLINED_FUNCTION_25_11()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

void OUTLINED_FUNCTION_25_13(uint64_t a1@<X8>)
{
  v5 = v3[100];
  v6 = v3[99];
  v7 = v3[98];
  *(v4 + 144) = v1;
  *(v4 + 168) = a1;
  *(v4 + 176) = 0x7473614C7369;
  *(v4 + 184) = 0xE600000000000000;
  *(v4 + 192) = v7;
  *(v4 + 216) = v2;
  *(v4 + 224) = 0x74737269467369;
  *(v4 + 232) = 0xE700000000000000;
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  return sub_267EF2B48();
}

id OUTLINED_FUNCTION_25_15()
{

  return sub_267BC20F4(v0, 0, 0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_21()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
}

uint64_t OUTLINED_FUNCTION_25_22()
{
  v3 = *v0;
  v1[167] = 0;
  v4 = v1[160];
  v5 = v1[87];
  result = __swift_storeEnumTagSinglePayload(v3, 0, 1, v1[159]);
  v7 = *(v4 + v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_23()
{
  result = *(v0 - 176);
  v2 = *(v0 - 168);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_29()
{
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
}

void OUTLINED_FUNCTION_25_30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[11];
}

uint64_t OUTLINED_FUNCTION_25_31@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

void OUTLINED_FUNCTION_25_32()
{

  sub_267C9DA84();
}

uint64_t OUTLINED_FUNCTION_25_33()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_25_34@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_25_35(uint64_t a1, uint64_t a2)
{
  v5 = v3[19];
  v7 = v3[13];
  v6 = v3[14];
  v9 = v3[11];
  v8 = v3[12];
  v10 = v3[10];
  v11 = v3[7];
  __swift_storeEnumTagSinglePayload(v5, a2, 1, v4);
  v12 = v11 + *(v2 + 28);

  return sub_267BD3DDC(v5, v12);
}

void OUTLINED_FUNCTION_25_37()
{
  v2 = *(v0 + 16) + 1;

  sub_267C7103C();
}

__n128 *OUTLINED_FUNCTION_25_41(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "screenshotHint");
  result[2].n128_u8[15] = -18;
  return result;
}

void OUTLINED_FUNCTION_25_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  __swift_destroy_boxed_opaque_existential_0(a14);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_25_44()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_25_45()
{

  return MEMORY[0x2821BB218](v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_46()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_47_9()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 48));
}

void OUTLINED_FUNCTION_47_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_13()
{
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_0((v0 + 96), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_47_14()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  result = v0[28];
  v6 = v0[29];
  return result;
}

uint64_t OUTLINED_FUNCTION_47_18@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  *(v1 - 96) = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47_19()
{
  v2 = v0[40];
  v1 = v0[41];
  result = v0[27];
  v4 = v0[25];
  v5 = *(v0[26] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_20()
{
  result = v0[19];
  v2 = v0[17];
  v3 = *(v0[18] + 88);
  return result;
}

unint64_t sub_267BAB9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_267EF9EA8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_12_6()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[40];
  v8 = v0[41];
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>)
{
  sub_267B9A5E8((v1 + 624), v2 + a1);
  sub_267B9A5E8((v1 + 448), v2 + 16);
  __swift_destroy_boxed_opaque_existential_0((v3 - 224));

  return __swift_destroy_boxed_opaque_existential_0((v3 - 176));
}

uint64_t OUTLINED_FUNCTION_12_9@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

void OUTLINED_FUNCTION_12_10(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
}

void OUTLINED_FUNCTION_12_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_13@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[14], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[15], 1, 1, v1);
  v4 = v2 + v3[16];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 48);
}

void OUTLINED_FUNCTION_12_14()
{
  *(v0 + 16) = v1;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  v7 = *(v5 - 176);
  v8 = *(v5 - 192);
}

uint64_t *OUTLINED_FUNCTION_12_15()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  return v0;
}

void OUTLINED_FUNCTION_12_16(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  *a1 = a17;
  *(a1 + 8) = *(v18 - 104);
  *(a1 + 16) = v17;
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_267EF8F28();
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return sub_267EF9978();
}

uint64_t OUTLINED_FUNCTION_12_26()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return sub_267B9F98C(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_34()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_35()
{

  return sub_267EF3FC8();
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_267EF9A68();
}

uint64_t OUTLINED_FUNCTION_12_39()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 248));
  __swift_destroy_boxed_opaque_existential_0((v0 - 208));

  return __swift_destroy_boxed_opaque_existential_0((v0 - 168));
}

void *OUTLINED_FUNCTION_12_40(uint64_t a1, const void *a2)
{
  *(v2 + 168) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;

  return memcpy((v2 + 16), a2, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_12_43()
{
  v1 = v0[89];
  result = v0[73];
  v3 = v0[71];
  v4 = v0[60];
  v5 = *(v0[72] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_44()
{
  v2 = *(v0 - 224);

  return sub_267E6362C(v2);
}

unint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_12_50()
{

  return sub_267EF8FE8();
}

uint64_t OUTLINED_FUNCTION_12_51()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = *(v0[17] + 8);
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_12_53()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_267EF5E08();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return __swift_storeEnumTagSinglePayload(v1 + v0, 0, 1, v2);
}

void OUTLINED_FUNCTION_14_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_14_9()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  sub_267C16E28(v1, v2);

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_15()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 128);
  v4 = *(v0 - 120);
  v5 = *(v0 - 368);
  v6 = *(v0 - 136);

  return sub_267EF9D88();
}

uint64_t OUTLINED_FUNCTION_14_16(uint64_t a1, unint64_t a2)
{

  return sub_267BA33E8(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_55_2(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_18()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_14_25@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 68);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

char *OUTLINED_FUNCTION_14_29(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_14_31()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

unint64_t OUTLINED_FUNCTION_14_34()
{
  v5 = v2[12];
  v4 = v2[13];
  v6 = v2[11];
  *(v3 + 16) = v1;
  v7 = *(v5 + 32);
  return v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_14_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_14_38()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_44()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_14_48()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return sub_267EF9DF8();
}

uint64_t OUTLINED_FUNCTION_5_8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  result = v0[33];
  v5 = v0[31];
  v6 = *(v0[32] + 8);
  return result;
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_5_17()
{
  v2 = *(v0 - 152);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_5_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_5_21()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

void OUTLINED_FUNCTION_5_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[6], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[7], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[8], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[9], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[10], 1, 1, v1);
  v4 = v2 + v3[11];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return sub_267CDAEC8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_30()
{
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v7 = *(v1 + 208);
  v6 = *(v1 + 216);
  *(v1 + 48) = *(v1 + 200);
  *(v1 + 56) = v7;
  *(v1 + 16) = *(v1 + 232);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 64) = v0;
  *(v1 + 72) = v2;

  return sub_267EF9938();
}

void OUTLINED_FUNCTION_5_32()
{

  objc_setAssociatedObject(v1, v2, v0, 1);
}

uint64_t OUTLINED_FUNCTION_5_33(uint64_t a1)
{
  *(a1 + 8) = sub_267D2A784;
  v2 = *(v1 + 640);
  return v1 + 256;
}

uint64_t OUTLINED_FUNCTION_5_34()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_35()
{
  v1 = *(v0 - 120);
  v2 = *(*(v0 - 128) + 8);
  return *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_5_36()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
  v3 = v0 + *(v2 + 20);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_37()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);

  return sub_267EF3BC8();
}

uint64_t OUTLINED_FUNCTION_5_39(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 520);
  v4 = *(v2 + 440);
  return v2 + 336;
}

uint64_t OUTLINED_FUNCTION_5_40(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_267D6360C(v1, va);
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t result)
{
  *(result + 8) = sub_267D66E10;
  v2 = *(v1 + 544);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_44()
{
  result = v0[151];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[148];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[145];
  v8 = v0[144];
  v9 = v0[143];
  v10 = v0[142];
  v11 = v0[141];
  v12 = v0[140];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_45()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_46(uint64_t a1)
{
  v4 = *(v1 - 232);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_5_47()
{
  result = v0[17];
  v3 = v0[14];
  v4 = v0[9];
  *(v1 + 32) = *(v1 + 20) & 1;
  *(v1 + 24) = v3;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_49()
{
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[25];
}

uint64_t OUTLINED_FUNCTION_5_51()
{
}

uint64_t OUTLINED_FUNCTION_5_53()
{
  v1 = v0[48];
  v2 = v0[37];
  v3 = *(v0[49] + 8);
  return v0[50];
}

void OUTLINED_FUNCTION_5_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

double OUTLINED_FUNCTION_5_57()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_59()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_60()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_5_62(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  return sub_267EF8478();
}

void OUTLINED_FUNCTION_5_63()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_5_64()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_5_65()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_68(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

void OUTLINED_FUNCTION_5_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  v7 = a6 + *a6;
}

void OUTLINED_FUNCTION_5_71()
{
  v1 = v0[52];
  v6 = v0[50];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[28];
  v5 = v0[23];
}

uint64_t OUTLINED_FUNCTION_5_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

double OUTLINED_FUNCTION_148()
{
  result = 0.0;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_148_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 56);
}

void OUTLINED_FUNCTION_148_1()
{
  v3 = v1[83];
  v4 = v1[80];
  v5 = v1[79];
  v8 = v1[78];
  v9 = v1[77];
  v10 = v1[75];
  v11 = v1[72];
  v6 = v1[71];
  v12 = v1[68];
  v13 = v1[67];
  v7 = v1[64];
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_40_9()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_40_10()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
}

uint64_t OUTLINED_FUNCTION_40_12()
{
  v2 = *(v0 + 208);
  v3 = **(v0 + 144);
}

uint64_t OUTLINED_FUNCTION_40_13()
{
  v2 = *(v0 - 120);

  return sub_267EF8478();
}

uint64_t OUTLINED_FUNCTION_40_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(a15 + 16) = a18;
  v22 = a15 + 16 * v21;
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  return v20;
}

uint64_t OUTLINED_FUNCTION_40_15()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_40_16()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[10];
  v6 = v0[9];
  v5 = *(v1 + 2072);
}

void OUTLINED_FUNCTION_40_17()
{
  v3 = v1 + *(v0 + 28);
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_40_19()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
}

uint64_t OUTLINED_FUNCTION_40_20(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_21()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_40_23()
{
}

uint64_t OUTLINED_FUNCTION_40_25()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_27()
{
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v11 = v0[12];
  v12 = v0[11];
  v13 = v0[9];
  v6 = v0[7];
  v10 = v0[8];
  v8 = v0[4];
  v7 = v0[5];

  return sub_267EF79B8();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267C2FB6C(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_49_6()
{
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_13()
{
  v4 = v1[160];
  v5 = v1[159];
  v6 = v1[144];
  *(v3 - 112) = v1[143];
  v7 = v1[108];
  v8 = v1[107];
  v9 = v1[106];
  *(v3 - 128) = v4;
  *(v3 - 120) = v9;
  v10 = v1[93];
  v11 = v1[87];
  v12 = *(v2 + 8);
  return v0;
}

void OUTLINED_FUNCTION_460(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_49_16()
{
  v1 = v0[49];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_49_18()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
}

uint64_t OUTLINED_FUNCTION_49_19()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v5 = v0[35];
  v7 = v0[31];
  v6 = v0[32];
}

uint64_t OUTLINED_FUNCTION_49_20()
{
  result = *(v0 - 264);
  v2 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_267DEC2BC(v10, v9, v8, 1, v7, 0, a7);
}

uint64_t OUTLINED_FUNCTION_49_22()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_49_23()
{
  v2 = *(v0 - 88);

  return sub_267EF8FE8();
}

void *OUTLINED_FUNCTION_49_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[17] = a1;
  v3[18] = a2;
  v3[20] = a3;
  return v3 + 17;
}

void OUTLINED_FUNCTION_49_25()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
}

uint64_t OUTLINED_FUNCTION_17_7@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_267BCD994(v2 + a2, v4, v3 + a2, a1);
}

void OUTLINED_FUNCTION_17_9(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[142];
  v5 = v0[117];
  v6 = v0[114];
  v7 = v0[107];
  v8 = v0[105];

  return sub_267EF3CB8();
}

void OUTLINED_FUNCTION_17_11(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, uint64_t a11)
{
  a10 = a1;
  LOBYTE(a11) = 4;

  sub_267C5E230(&a10, a3, a4, a5, a6, a7, a8, a9, a10.n128_i64[0], a10.n128_i64[1], a11);
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  v1 = v0[71];
  __swift_project_boxed_opaque_existential_0(v0 + 67, v0[70]);

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_17_17@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 60);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_267EF4708();
}

uint64_t OUTLINED_FUNCTION_17_21(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_24()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void *OUTLINED_FUNCTION_17_25()
{
  v2 = v0[16];
  v3 = v0[15];

  return __swift_project_boxed_opaque_existential_0(v0 + 12, v3);
}

void OUTLINED_FUNCTION_17_32(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t OUTLINED_FUNCTION_17_33@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17_34(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_17_35()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{
  *(v1 + 1160) = a1;

  return sub_267C253C4();
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return ConversationEventStore.Event.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_31_7()
{
  v2 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_31_14@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 40);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_31_15()
{
  v1 = *(v0 + 240);
  *(v0 + 264) = *(v0 + 56);
  *(v0 + 280) = *(v0 + 72);
  *(v0 + 89) = *(v0 + 88);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

void OUTLINED_FUNCTION_31_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  sub_267DB7C44();
}

uint64_t OUTLINED_FUNCTION_31_17()
{
  v1 = v0[157];
  v2 = v0[154];
  v3 = v0[153];
  result = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  return result;
}

uint64_t OUTLINED_FUNCTION_31_18()
{
  result = v1;
  v3 = *(v0 + 120);
  return result;
}

__n128 OUTLINED_FUNCTION_31_19()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  return *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_31_20()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  v13[60] = a1;
  v13[61] = a2;
  v13[62] = *(a12 + 96);

  return memcpy(v13 + 2, a13, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_31_22()
{
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[28];

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_31_24()
{

  return sub_267EF78C8();
}

uint64_t OUTLINED_FUNCTION_31_29(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return sub_267EF9128();
}

void *OUTLINED_FUNCTION_9_6()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

id OUTLINED_FUNCTION_92_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  v1 = v0[11];
  v2 = *(v0[12] + 96);
  return v0[14];
}

void OUTLINED_FUNCTION_9_11()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_9_16(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_267C956D0(sub_267C96444, a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_9_23()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[20];

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_25(uint64_t a1)
{
  v2[29] = *(a1 + v1 + 32);
  v2[30] = *(a1 + v1 + 40);
  v2[31] = *(a1 + v1 + 48);
  v2[32] = *(a1 + v1 + 56);
}

uint64_t OUTLINED_FUNCTION_9_26()
{
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
}

double OUTLINED_FUNCTION_9_29()
{
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_9_30()
{

  sub_267C72494();
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_36()
{
  v2 = v0[147];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[126];
  v6 = v0[125];
  v7 = v0[122];
  v8 = v0[120];
  v9 = **(v1 - 136);
  return v0[130];
}

uint64_t OUTLINED_FUNCTION_9_37@<X0>(char a1@<W0>, char a2@<W8>, char a3, char a4, char a5)
{
  v11 = *(v5 + 80) & 1;
  v12 = *(v5 + 48) & 1;

  return sub_267C01144(a1, a2 & 1, v11, v6, v12, v7 & 1, v8 & 1, v9 & 1, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_9_39()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_40()
{
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
}

id OUTLINED_FUNCTION_9_41@<X0>(void *a1@<X8>)
{
  v3 = v1[40];
  v4 = v1[37];
  v1[59] = a1;

  return a1;
}

id OUTLINED_FUNCTION_9_42(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return [v13 a2];
}

uint64_t OUTLINED_FUNCTION_9_43()
{

  return sub_267EF89B8();
}

double OUTLINED_FUNCTION_9_44()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 5;
  return result;
}

void *OUTLINED_FUNCTION_9_45()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_46(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_48@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_9_51()
{
  v2 = *(v0 - 264);

  return sub_267EF89F8();
}

uint64_t OUTLINED_FUNCTION_9_52@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

BOOL OUTLINED_FUNCTION_9_53(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_55()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_56()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_9_58()
{
  v1 = **(v0 - 224);
  result = *(v0 - 176);
  v3 = *(v0 - 192);
  return result;
}

void *OUTLINED_FUNCTION_9_60()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v3);
}

void OUTLINED_FUNCTION_2_16()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[104];
  v7 = v0[103];
}

void OUTLINED_FUNCTION_2_18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{
  *(a1 + 8) = sub_267C4109C;
  v2 = *(v1 + 544);
  return *(v1 + 528);
}

void OUTLINED_FUNCTION_2_24()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_2_31()
{

  return sub_267EF9DA8();
}

void OUTLINED_FUNCTION_2_34(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 65);
  *(v1 + 56) = a1;
  v5 = *(v1 + 64);
  *(v1 + 64) = 0;
  *(v1 + 65) = 1;

  sub_267D240BC(v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_267EF9C98();
}

uint64_t OUTLINED_FUNCTION_2_37()
{

  return sub_267EF9C98();
}

uint64_t OUTLINED_FUNCTION_2_38@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_267EF9E18();
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return sub_267EF3F48();
}

uint64_t OUTLINED_FUNCTION_2_40()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_267BA33E8(v2, v1, va);
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_46()
{
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[148];
  v7 = v0[147];
  v8 = v0[146];
  v9 = v0[145];
  v10 = v0[144];
  v11 = v0[143];
  v12 = v0[142];
  v18 = v0[141];
  v19 = v0[140];
  v20 = v0[139];
  v21 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[133];
  v25 = v0[130];
  v26 = v0[129];
  v27 = v0[128];
  v28 = v0[125];
  v29 = v0[124];
  v30 = v0[123];
  v31 = v0[122];
  v32 = v0[119];
  v33 = v0[118];
  v13 = v0[114];
  *(v1 - 176) = v0[117];
  *(v1 - 168) = v13;
  v14 = v0[108];
  *(v1 - 160) = v0[111];
  *(v1 - 152) = v14;
  v15 = v0[104];
  *(v1 - 144) = v0[105];
  *(v1 - 136) = v15;
  v16 = v0[99];
  *(v1 - 128) = v0[102];
  *(v1 - 120) = v16;
  *(v1 - 112) = v0[96];
}

uint64_t OUTLINED_FUNCTION_2_47()
{

  return sub_267C2FB6C(v2 - 128, v2 - 192, v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return sub_267EF3F98();
}

uint64_t OUTLINED_FUNCTION_2_51()
{

  return sub_267EF3F48();
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return sub_267EF92D8();
}

uint64_t OUTLINED_FUNCTION_2_54()
{

  return sub_267EF9948();
}

unint64_t OUTLINED_FUNCTION_2_55()
{
  result = v2 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v1;
  v4 = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_2_59(uint8_t *buf)
{
  *buf = 0;

  _os_log_impl(v2, v1, v4, v3, buf, 2u);
}

uint64_t OUTLINED_FUNCTION_2_62(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_2_65()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_2_66()
{

  return sub_267EF3F48();
}

uint64_t OUTLINED_FUNCTION_2_68@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_71()
{
  v4 = *(v1 + 72);
  v5 = *(v1 + 56);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_2_72()
{
  v3 = v0[32];
  v4 = v0[31];
  v5 = v0[30];
  v6 = v0[29];
  v7 = v0[28];
  v8 = v0[25];
}

uint64_t OUTLINED_FUNCTION_2_76()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
  v4 = v3 + *(v2 + 20);

  return sub_267BD3DDC(v0, v4);
}

uint64_t OUTLINED_FUNCTION_2_77()
{
  result = *(v0 - 248);
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_78()
{

  return sub_267EF9D88();
}

uint64_t sub_267BAEBEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{
  *(a1 + 8) = sub_267C20078;
  v2 = v1[27];
  result = v1[23];
  v4 = v1[24];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[36];
  v5 = v0[33];
}

uint64_t OUTLINED_FUNCTION_22_7()
{
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_11@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_22_12()
{
}

uint64_t OUTLINED_FUNCTION_22_13()
{
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return sub_267EF3B08();
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
}

void OUTLINED_FUNCTION_22_18()
{
  v1[68] = v0;
  v2 = v1[65];
  v3 = v1[57];
  v4 = v1[54];
}

void OUTLINED_FUNCTION_22_19()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[11];
}

void *OUTLINED_FUNCTION_22_21()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_22_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v20 = a20[71];
  result = a20[69];
  v22 = a20[67];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_26()
{
  result = v0[30];
  v2 = v0[28];
  v3 = *(v0[29] + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_22_29()
{
  v2[14].n128_u64[0] = v1;
  v2[14].n128_u64[1] = v0;
  result = v2[1];
  v2[11] = result;
  return result;
}

void OUTLINED_FUNCTION_22_31()
{
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[8];
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_22_33()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

uint64_t OUTLINED_FUNCTION_22_37()
{

  return sub_267EF4708();
}

uint64_t OUTLINED_FUNCTION_22_38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_22_40()
{
  sub_267B9A5E8((v0 + 16), *(v0 + 224));
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_267B9F98C(v1 + v0, v2, v3);
}

void *OUTLINED_FUNCTION_44_6()
{

  return __swift_project_boxed_opaque_existential_0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1)
{
  *(v1 + 1304) = a1;

  return sub_267C90570();
}

void OUTLINED_FUNCTION_44_14()
{
  *(v2 - 104) = v0;
  v3 = v1[161];
  v4 = v1[157];
  v5 = v1[154];
  v6 = v1[153];
}

uint64_t OUTLINED_FUNCTION_44_17(uint64_t a1, void *a2)
{
  *a2 = 0xD00000000000002CLL;
  a2[1] = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_44_20()
{

  sub_267BB78E4(v0 & v1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_44_22(uint64_t a1)
{
  v3 = v2[107];
  v4 = v2[104];
  v5 = v2[103];
  v6 = v2[102];
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  __swift_destroy_boxed_opaque_existential_0(v2 + 14);
  __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t OUTLINED_FUNCTION_44_25()
{

  return sub_267EF4C98();
}

uint64_t OUTLINED_FUNCTION_62_6()
{
  result = v0[96];
  v2 = v0[94];
  v3 = *(v0[95] + 8);
  return result;
}

double OUTLINED_FUNCTION_62_8()
{
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_11()
{
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  v8 = v0[30];
}

uint64_t OUTLINED_FUNCTION_62_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_14()
{
}

void OUTLINED_FUNCTION_53_6()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 24);
  v3 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_53_7()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  return sub_267EF2D18();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_10()
{
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[60];
  v6 = v0[53];
}

void OUTLINED_FUNCTION_53_12(uint64_t a1@<X8>)
{
  *(v1 + 32) = a1;

  sub_267C7220C();
}

void OUTLINED_FUNCTION_53_13()
{
  *v1 = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v2;
  *(v1 + 80) = v0;
  v5 = *(v1 + 192);
}

void *OUTLINED_FUNCTION_33_0()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_0((v0 - 128), v3);
}

void OUTLINED_FUNCTION_53_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[24] = 0;
  v12[25] = 0;
  v12[26] = a12;
  v12[27] = a10;
}

uint64_t OUTLINED_FUNCTION_53_15()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

double OUTLINED_FUNCTION_53_17()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

void OUTLINED_FUNCTION_53_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_267BA33E8(v8, v9, va);
}

void OUTLINED_FUNCTION_53_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

id OUTLINED_FUNCTION_53_24(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[103];
  v7 = v0[102];
  v13 = v0[101];
  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[98];
  v11 = v0[97];
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
  v4 = v3 + *(v2 + 20);

  return sub_267BD3DDC(v1, v4);
}

uint64_t OUTLINED_FUNCTION_19_11()
{
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
}

uint64_t OUTLINED_FUNCTION_19_14(void *a1)
{
  v5 = *(v3 - 128);
  a1[2] = v1;
  a1[3] = v5;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_19_17@<X0>(uint64_t a1@<X8>)
{
  result = __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v5 = *(v3 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_23()
{
  v1 = v0[160];
  v2 = v0[159];
  result = v0[154];
  v4 = v0[153];
  v5 = v0[151];
  v6 = v0[150];
  v7 = v0[149];
  return result;
}

void OUTLINED_FUNCTION_19_26(void *a1@<X8>)
{
  v1[29] = a1[5];
  v1[30] = a1[6];
  v1[31] = a1[7];
  v1[32] = a1[8];
}

uint64_t OUTLINED_FUNCTION_19_28@<X0>(uint64_t a1@<X8>)
{

  return sub_267DCE628(v1 + a1, type metadata accessor for TimedSentMessageContext);
}

uint64_t OUTLINED_FUNCTION_19_29()
{

  return sub_267EF8238();
}

uint64_t OUTLINED_FUNCTION_19_30()
{
  sub_267B9A5E8(v0, v1 + 376);
  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 + 376, v3);
}

void *OUTLINED_FUNCTION_19_32()
{
  v2 = *(v0 + 112);

  return __swift_project_boxed_opaque_existential_0((v0 + 88), v2);
}

uint64_t OUTLINED_FUNCTION_19_34()
{
  __swift_destroy_boxed_opaque_existential_0((v1 - 136));
  __swift_destroy_boxed_opaque_existential_0(v0 + 253);
  __swift_destroy_boxed_opaque_existential_0(v0 + 270);
  __swift_destroy_boxed_opaque_existential_0((v1 - 176));
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0(v0 + 197);
  __swift_destroy_boxed_opaque_existential_0(v0 + 202);
  __swift_destroy_boxed_opaque_existential_0(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0(v0 + 213);
  __swift_destroy_boxed_opaque_existential_0(v0 + 218);
  __swift_destroy_boxed_opaque_existential_0(v0 + 100);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 105);
}

uint64_t OUTLINED_FUNCTION_19_38()
{
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[33];
}

uint64_t OUTLINED_FUNCTION_19_40()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_42()
{
  v2 = *(*(v1 - 376) + 8);
  result = v0;
  v4 = *(v1 - 368);
  return result;
}

void OUTLINED_FUNCTION_19_43()
{
  *(v1 - 128) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_19_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return 0;
}

void OUTLINED_FUNCTION_19_47()
{

  sub_267C70CB0();
}

uint64_t OUTLINED_FUNCTION_19_48(uint64_t a1)
{
  *(a1 + 8) = sub_267BDC09C;
  v2 = v1[171];
  v3 = v1[170];
  v4 = v1[169];
  return 0;
}

unint64_t sub_267BAFCAC()
{
  result = qword_28022BB40;
  if (!qword_28022BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BB40);
  }

  return result;
}

const char *sub_267BAFD08(char a1)
{
  result = "confirmation_context_training";
  switch(a1)
  {
    case 1:
      result = "blushing_phantom";
      break;
    case 2:
      result = "MessageEditing";
      break;
    case 3:
      result = "dialog_improvements_v4";
      break;
    case 4:
      result = "reading_intelligence";
      break;
    case 5:
      result = "flex";
      break;
    case 6:
      result = "SiriX";
      break;
    case 7:
      result = "correction_ui";
      break;
    case 8:
      result = "auto_send_auto_enable";
      break;
    case 9:
      result = "last_name_reduction_all_locales";
      break;
    case 10:
      result = "announce_check_in_messages";
      break;
    case 11:
      result = "Zelkova";
      break;
    case 12:
      result = "text_summarization";
      break;
    case 13:
      result = "CatchUp";
      break;
    case 14:
      result = "multilingual_message_reading";
      break;
    case 15:
      result = "smart_replies";
      break;
    case 16:
      result = "shareSheetSupport";
      break;
    case 17:
      result = "reaction_reading";
      break;
    case 18:
    case 19:
      result = "SMART";
      break;
    case 20:
      result = "send_later";
      break;
    case 21:
      result = "montara";
      break;
    case 22:
      result = "location_smart_reply";
      break;
    case 23:
      result = "photosSharing";
      break;
    case 24:
      result = "carplay_tapbacks";
      break;
    case 25:
      result = "carplay_tapbacks_voice_support";
      break;
    case 26:
      result = "photoPicker";
      break;
    case 27:
      result = "Solarium";
      break;
    case 28:
      result = "readingRequestSummarization";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return sub_267BB170C(v1 + 240, v1 + 304, v0, v2);
}

void *OUTLINED_FUNCTION_72_1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result[2] = v11;
  result[3] = v17;
  result[4] = v14;
  result[5] = v18;
  result[6] = v16;
  result[7] = v15;
  result[8] = a11;
  result[9] = v13;
  result[10] = a10;
  v19 = *v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_2()
{

  return sub_267EF8348();
}

void *OUTLINED_FUNCTION_72_3(void *result)
{
  result[2] = 0xD000000000000012;
  result[3] = v1;
  result[4] = 0xD000000000000022;
  result[5] = v2;
  return result;
}

id OUTLINED_FUNCTION_72_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

void *OUTLINED_FUNCTION_72_13()
{

  return sub_267DF9C34(v1, v0);
}

uint64_t OUTLINED_FUNCTION_72_15()
{
  v11 = v0[37];
  v2 = v0[35];
  v10 = v0[34];
  v3 = v0[32];
  v4 = v0[33];
  v8 = v0[38];
  v9 = v0[31];
  v5 = v0[29];
  v7 = v0[27];

  return sub_267EF78A8();
}

uint64_t OUTLINED_FUNCTION_72_16()
{

  return sub_267EF4128();
}

uint64_t OUTLINED_FUNCTION_97_1()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_97_2()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
}

uint64_t OUTLINED_FUNCTION_97_3()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_267BBD0EC(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_97_5(char a1, char a2)
{
  *(v2 + 105) = a2;
  *(v2 + 104) = a1;
  return 0;
}

void OUTLINED_FUNCTION_97_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

unint64_t OUTLINED_FUNCTION_97_8()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_97_9()
{
}

uint64_t OUTLINED_FUNCTION_97_11()
{

  return sub_267EF9328();
}

uint64_t sub_267BB020C()
{
  v203 = v1;
  v3 = *(v1 + 928);
  v4 = *(v1 + 912);
  v5 = *(v1 + 864);
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_83();
  sub_267BC0ABC(v5 + v6, v3);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = *(v1 + 928);
      v8 = *(v1 + 864);
      v9 = *(v1 + 856);
      v10 = *(v7 + 25);
      v11 = v7[1];
      *(v1 + 256) = *v7;
      *(v1 + 272) = v11;
      *(v1 + 281) = v10;
      sub_267E301F8(v1 + 256);
      v12 = v1 + 256;
      goto LABEL_61;
    case 1u:
      v72 = OUTLINED_FUNCTION_45_22();
      *(v1 + 160) = v74;
      *(v1 + 176) = v73;
      *(v1 + 185) = v72;
      sub_267BBF30C(v1 + 160, v1 + 208);
      if (*(v1 + 248))
      {
        sub_267BBF344(v1 + 208);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v75 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v75, qword_280240FB0);
        v76 = sub_267EF89F8();
        v77 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v77))
        {
          v78 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v78);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v79, v80, v81, v82, v83, 2u);
          OUTLINED_FUNCTION_26();
        }

        v84 = *(v1 + 920);
        v85 = *(v1 + 912);

        sub_267BBF30C(v1 + 160, v84);
        OUTLINED_FUNCTION_26_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267B9FF94(v84, v5 + v6);
        swift_endAccess();
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v1 + 936) = v86;
        *v86 = v87;
        v88 = sub_267E2F8B4;
        goto LABEL_51;
      }

      sub_267B9A5E8((v1 + 208), v1 + 584);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v157 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v157, qword_280240FB0);
      v158 = sub_267EF89F8();
      v159 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v159))
      {
        v160 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v160);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v161, v162, v163, v164, v165, 2u);
        OUTLINED_FUNCTION_26();
      }

      v166 = *(v1 + 864);

      sub_267B9AFEC(v1 + 584, v1 + 624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229208, &qword_267EFCB90);
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_267EFCC90;
      v168 = v166[5];
      v169 = v166[6];
      OUTLINED_FUNCTION_76_12(v166 + 2);
      v171 = *(v170 + 8);
      v172 = OUTLINED_FUNCTION_7_1();
      v173(v172);
      v174 = *(v166 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs);
      *(v1 + 728) = &type metadata for MessagesFeatureFlagsImpl;
      *(v1 + 736) = &off_2878D1228;
      v175 = type metadata accessor for SearchForMessagesUnsupportedUseCaseCheckFlowStrategy();
      v176 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 704, &type metadata for MessagesFeatureFlagsImpl);
      v176[11] = &type metadata for MessagesFeatureFlagsImpl;
      v176[12] = &off_2878D1228;
      sub_267B9A5E8((v1 + 664), (v176 + 2));
      v176[7] = v174;

      __swift_destroy_boxed_opaque_existential_0((v1 + 704));
      *(v167 + 56) = v175;
      *(v167 + 64) = &off_2878D7DC0;
      *(v167 + 32) = v176;
      v177 = v166[5];
      v178 = v166[6];
      OUTLINED_FUNCTION_76_12(v166 + 2);
      v180 = *(v179 + 8);
      v181 = OUTLINED_FUNCTION_7_1();
      v182(v181);
      if (qword_2802286F0 != -1)
      {
        OUTLINED_FUNCTION_4_0();
      }

      v183 = *(v1 + 864);
      v201 = *(v1 + 856);
      sub_267B9AFEC(qword_2802405A0, v1 + 544);
      v184 = sub_267EF72E8();
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 544, *(v1 + 568));
      *(v1 + 488) = &type metadata for CATProvider;
      *(v1 + 496) = &off_2878CE7A0;
      *(v1 + 448) = &type metadata for TTSUtil;
      *(v1 + 456) = &off_2878D0CB0;
      *(v1 + 424) = v184;
      *(v1 + 432) = &off_2878D0918;
      v185 = type metadata accessor for UnsupportedWithLowQualityVoiceOnWatchStrategy();
      v186 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v1 + 464, &type metadata for CATProvider);
      v187 = *__swift_mutable_project_boxed_opaque_existential_1(v1 + 424, &type metadata for TTSUtil);
      *(v186 + 80) = &type metadata for CATProvider;
      *(v186 + 88) = &off_2878CE7A0;
      *(v186 + 120) = &type metadata for TTSUtil;
      *(v186 + 128) = &off_2878D0CB0;
      *(v186 + 96) = v187;
      sub_267B9A5E8((v1 + 304), v186 + 16);
      __swift_destroy_boxed_opaque_existential_0((v1 + 424));
      __swift_destroy_boxed_opaque_existential_0((v1 + 464));
      __swift_destroy_boxed_opaque_existential_0((v1 + 544));
      *(v167 + 96) = v185;
      *(v167 + 104) = &off_2878CF9E8;
      *(v167 + 72) = v186;
      sub_267B9AFEC((v166 + 2), v1 + 384);
      type metadata accessor for RequestSupportCheckFlow();
      swift_allocObject();
      *(v1 + 840) = sub_267E90F8C((v1 + 624), v167, (v1 + 384));
      sub_267B9AFEC(v1 + 584, v1 + 344);
      OUTLINED_FUNCTION_46_19();
      v188 = swift_allocObject();
      *(v188 + 16) = v183;
      sub_267B9A5E8((v1 + 344), v188 + 24);
      sub_267BC1DB4(&qword_280229230, type metadata accessor for RequestSupportCheckFlow);

      sub_267EF3FC8();

      __swift_destroy_boxed_opaque_existential_0((v1 + 584));
      v12 = v1 + 160;
LABEL_61:
      sub_267BBF344(v12);
      goto LABEL_62;
    case 2u:
      v17 = OUTLINED_FUNCTION_45_22();
      *(v1 + 112) = v19;
      *(v1 + 128) = v18;
      *(v1 + 137) = v17;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v20 = sub_267EF8A08();
      __swift_project_value_buffer(v20, qword_280240FB0);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95C8();
      if (os_log_type_enabled(v21, v22))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v28 = *(v1 + 920);
      v29 = *(v1 + 912);
      v30 = *(v1 + 864);

      sub_267BBF30C(v1 + 112, v28);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3();
      sub_267B9FF94(v28, v5 + v6);
      swift_endAccess();
      v31 = v30[5];
      v32 = v30[6];
      OUTLINED_FUNCTION_76_12(v30 + 2);
      v34 = *(v33 + 8);
      v35 = OUTLINED_FUNCTION_7_1();
      v36(v35);
      v37 = *(v1 + 536);
      __swift_project_boxed_opaque_existential_0((v1 + 504), *(v1 + 528));
      OUTLINED_FUNCTION_7_1();
      v38 = sub_267EF3C58();
      __swift_destroy_boxed_opaque_existential_0((v1 + 504));
      if (v38)
      {
        v39 = sub_267EF89F8();
        v40 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v40))
        {
          v41 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v41);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v42, v43, v44, v45, v46, 2u);
          OUTLINED_FUNCTION_26();
        }

        v47 = *(v1 + 856);

        v48 = type metadata accessor for MessagesPostPersonalDomainActivityNotificationFlowStrategy();
        v49 = OUTLINED_FUNCTION_49();
        v202[3] = v48;
        v202[4] = sub_267BC1DB4(&qword_28022C568, type metadata accessor for MessagesPostPersonalDomainActivityNotificationFlowStrategy);
        v202[0] = v49;
        v50 = sub_267EF33A8();
        OUTLINED_FUNCTION_97(v50);
        *(v1 + 816) = sub_267EF3398();
        sub_267EF3FE8();
        sub_267BBF344(v1 + 112);

LABEL_62:
        OUTLINED_FUNCTION_10_40();

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_89();

        __asm { BRAA            X1, X16 }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 944) = v86;
      *v86 = v152;
      v88 = sub_267E2FA1C;
LABEL_51:
      v86[1] = v88;
      v153 = *(v1 + 864);
      v154 = *(v1 + 856);
      OUTLINED_FUNCTION_89();

      return sub_267BBFC38();
    case 3u:
      v51 = OUTLINED_FUNCTION_45_22();
      *(v1 + 64) = v53;
      *(v1 + 80) = v52;
      *(v1 + 89) = v51;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95C8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v57);
        _os_log_impl(&dword_267B93000, v55, v56, "#SearchForMessagesFlow ready to start", v0, 2u);
        OUTLINED_FUNCTION_26();
      }

      v58 = *(v1 + 864);
      v59 = *(v1 + 856);

      sub_267BBFD44();
      v12 = v1 + 64;
      goto LABEL_61;
    case 4u:
      v13 = **(v1 + 928);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v14 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
      v15 = v13;
      v16 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_95();
      if (OUTLINED_FUNCTION_99())
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 5u:
      v13 = **(v1 + 928);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v89 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v89, qword_280240FB0);
      v90 = v13;
      v16 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_95();
      if (OUTLINED_FUNCTION_99())
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    case 6u:
      v91 = *(v1 + 928);
      v92 = *(v1 + 904);
      v93 = *(v1 + 880);
      v94 = *(v1 + 872);
      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C898, &unk_267F0B870) + 48);
      v96 = *v91;
      v97 = v91[1];
      *(v1 + 41) = *(v91 + 25);
      *(v1 + 16) = v96;
      *(v1 + 32) = v97;
      (*(v93 + 32))(v92, v91 + v95, v94);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v98 = *(v1 + 904);
      v99 = *(v1 + 896);
      v100 = *(v1 + 880);
      v101 = *(v1 + 872);
      v102 = sub_267EF8A08();
      __swift_project_value_buffer(v102, qword_280240FB0);
      v103 = *(v100 + 16);
      v104 = OUTLINED_FUNCTION_61_0();
      v103(v104);
      v105 = sub_267EF89F8();
      v106 = sub_267EF95D8();
      v107 = OUTLINED_FUNCTION_10_2(v106);
      v108 = *(v1 + 896);
      if (v107)
      {
        v109 = *(v1 + 888);
        v110 = *(v1 + 880);
        v111 = *(v1 + 872);
        OUTLINED_FUNCTION_48();
        v200 = OUTLINED_FUNCTION_64_2();
        v202[0] = v200;
        *v101 = 136315138;
        (v103)(v109, v108, v111);
        v112 = sub_267EF9098();
        v114 = v113;
        v117 = *(v110 + 8);
        v116 = v110 + 8;
        v115 = v117;
        v117(v108, v111);
        v118 = sub_267BA33E8(v112, v114, v202);

        *(v101 + 4) = v118;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v200);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {
        v191 = *(v1 + 880);
        v192 = *(v1 + 872);

        v193 = *(v191 + 8);
        v116 = v191 + 8;
        v115 = v193;
        v193(v108, v192);
      }

      *(v1 + 960) = v115;
      *(v1 + 952) = v116;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 968) = v194;
      *v194 = v195;
      v194[1] = sub_267E2FB84;
      v196 = *(v1 + 904);
      v197 = *(v1 + 864);
      v198 = *(v1 + 856);
      OUTLINED_FUNCTION_89();

      return sub_267BBF808();
    case 7u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v60 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v60, qword_280240FB0);
      v61 = sub_267EF89F8();
      v62 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v62))
      {
        v63 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v63);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_26();
      }

      v69 = *(v1 + 928);
      v70 = *(v1 + 856);

      sub_267EF4018();
      v71 = v69;
      goto LABEL_49;
    case 8u:
      v13 = **(v1 + 928);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v124 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v124, qword_280240FB0);
      v125 = v13;
      v16 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_95();
      if (OUTLINED_FUNCTION_99())
      {
LABEL_42:
        OUTLINED_FUNCTION_48();
        v126 = OUTLINED_FUNCTION_55_0();
        v202[0] = v126;
        OUTLINED_FUNCTION_61_15(4.8149e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
        v127 = OUTLINED_FUNCTION_110_1();
        sub_267BA33E8(v127, v128, v202);
        OUTLINED_FUNCTION_79();
        *(v2 + 4) = v5;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v129, v130, v131, v132, v133, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v126);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_29_1();
      }

LABEL_43:

      v134 = *(v1 + 856);
      sub_267EF4018();

      goto LABEL_62;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v135 = *(v1 + 864);
      v136 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v136, qword_280240FB0);

      v137 = sub_267EF89F8();
      v138 = sub_267EF95E8();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = *(v1 + 920);
        v140 = *(v1 + 912);
        OUTLINED_FUNCTION_48();
        v141 = OUTLINED_FUNCTION_64_2();
        v202[0] = v141;
        *v135 = 136315138;
        sub_267BC0ABC(v5 + v6, v139);
        v142 = sub_267EF9098();
        v144 = sub_267BA33E8(v142, v143, v202);

        *(v135 + 4) = v144;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v145, v146, v147, v148, v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v141);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v150 = *(v1 + 928);
      v151 = *(v1 + 856);
      sub_267EF4018();
      v71 = v150;
LABEL_49:
      sub_267B9F658(v71);
      goto LABEL_62;
  }
}

uint64_t sub_267BB1160()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_46_19();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void OUTLINED_FUNCTION_61_5(uint64_t a1@<X8>)
{
  v2 = *(v1 + 978);
  *(v1 + 936) = a1;
  *(v1 + 980) = v2;
}

uint64_t OUTLINED_FUNCTION_61_8(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_323(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void *OUTLINED_FUNCTION_61_11(uint64_t a1)
{
  *(v3 - 112) = v2;
  *(v3 - 96) = v1;

  return sub_267BE8B74(0, a1 & ~(a1 >> 63), 0);
}

double OUTLINED_FUNCTION_61_12()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

double OUTLINED_FUNCTION_61_13()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_14()
{
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  v8 = v0[30];
}

id OUTLINED_FUNCTION_61_15(float a1)
{
  *v2 = a1;
  *v3 = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_61_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267BA33E8(v10, v9, &a9);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return sub_267BB170C(v0 + 240, v0 + 432, v1, v2);
}

uint64_t OUTLINED_FUNCTION_73_4()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
}

void OUTLINED_FUNCTION_73_5()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v5 = *(v0[13] + 72);
}

uint64_t OUTLINED_FUNCTION_73_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[36] = a2;
  v2[39] = result;
  v2[40] = 0x746365666665;
  v2[41] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_7()
{
  v2 = v0[138];
  v3 = v0[102];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
}

uint64_t OUTLINED_FUNCTION_176@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v5 = *v1;
  v6 = *(*(v3 + v2) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_9()
{

  return sub_267EF9B28();
}

uint64_t *OUTLINED_FUNCTION_73_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

uint64_t OUTLINED_FUNCTION_68_3()
{
  v2 = *(v0 + 800);
  v3 = *(v0 + 776);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v2 = v0[32];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_267D5D51C(a13, v13);
}

void OUTLINED_FUNCTION_68_7()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_267EF8348();
}

BOOL OUTLINED_FUNCTION_68_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_68_11()
{
  v2 = *(*v0 + 16);

  return sub_267BCEA7C(v2);
}

uint64_t OUTLINED_FUNCTION_68_15()
{
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[30];
  v9 = v0[27];
}

uint64_t type metadata accessor for SearchForMessagesCATs()
{
  result = qword_28022A9B0;
  if (!qword_28022A9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB1654()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_26_3();
  return sub_267BA1948(v3, v4);
}

uint64_t sub_267BB16A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_267BB170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_61_0();
  v9(v8);
  return a2;
}

unint64_t OUTLINED_FUNCTION_38_2()
{
  *(v0 + 16) = *(v1 + *(v2 + 24));

  return sub_267C10434();
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

id OUTLINED_FUNCTION_38_4()
{
  v2 = v0[60];
  __swift_project_boxed_opaque_existential_0(v0 + 56, v0[59]);
  v3 = *(v2 + 24);

  return v1;
}

void OUTLINED_FUNCTION_90_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_38_5()
{
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v13 = v0[9];
  v14 = v0[15];
  v11 = v0[5];
  v12 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_267EF7958();
}

uint64_t *OUTLINED_FUNCTION_38_7()
{
  v3 = *(v1 - 96);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_38_8()
{
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1096);

  return sub_267BD5F58(v3, type metadata accessor for ReadComponentPatternCommonParameters);
}

void *OUTLINED_FUNCTION_38_10()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_38_11@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 64);
  result = *(v2 + 48);
  v3[36] = v1;
  v3[39] = a1;
  v3[40] = 1954047348;
  v3[41] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_38_12()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_36_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_38_14()
{
  v6 = *(v3 + 256);

  sub_267BFEC0C(v2, v0, v1, v5);
}

uint64_t OUTLINED_FUNCTION_38_15(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v2[36] = *(v3 + 96);

  return sub_267DB4110();
}

uint64_t OUTLINED_FUNCTION_38_16()
{
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[157];
  *(v1 - 144) = v0[154];
  v6 = v0[149];
  v7 = v0[148];
  result = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  *(v1 - 136) = v0[133];
  *(v1 - 128) = v4;
  v11 = v0[132];
  *(v1 - 112) = v7;
  *(v1 - 104) = v11;
  *(v1 - 120) = v0[131];
  v12 = v0[93];
  v13 = v0[87];
  v14 = *(v9 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_18()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[7];
  v10 = *(v0[17] + 8);
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_38_19(uint64_t a1)
{

  return sub_267B9FF34(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_22()
{
  v2 = *(v0 + 560);

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_38_23(uint64_t a1, uint64_t a2)
{
  v4 = v3[68];
  __swift_storeEnumTagSinglePayload(v3[73], a2, 1, v3[77]);

  return memcpy(v3 + 17, v2, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_38_24()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
}

uint64_t OUTLINED_FUNCTION_38_27()
{
}

uint64_t OUTLINED_FUNCTION_38_30()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_38_31()
{
  v2 = *(v0 + 328);
  v3 = *(v0 + 344);

  return sub_267EF8F28();
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  v2 = *(v0 + 72);

  return sub_267B9AB18(v0 + 448);
}

void OUTLINED_FUNCTION_82_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_82_4()
{
  v2 = *(v0 + 216);
  v4 = *(v0 + 208);

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_82_5()
{
  *(v5 - 136) = v0[160];
  *(v5 - 128) = v4;
  v7 = v0[159];
  *(v5 - 104) = v3;
  v8 = v0[141];
  v9 = v0[140];
  *(v5 - 120) = v2;
  *(v5 - 112) = v9;
  v10 = v0[108];
  v11 = v0[106];
  v12 = v0[93];
  *(v5 - 144) = v0[87];
}

uint64_t OUTLINED_FUNCTION_82_7()
{
}

uint64_t OUTLINED_FUNCTION_82_8()
{
}

uint64_t OUTLINED_FUNCTION_82_9@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  __swift_destroy_boxed_opaque_existential_0(v2 + 157);
  __swift_destroy_boxed_opaque_existential_0(v2 + 167);

  return __swift_destroy_boxed_opaque_existential_0(v2 + 172);
}

uint64_t OUTLINED_FUNCTION_82_10()
{
  v2 = v0[45];
  v3 = v0[23];
  v4 = *(v0[24] + 104);
}

void OUTLINED_FUNCTION_82_11()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_267EF7B68();
}

uint64_t OUTLINED_FUNCTION_55_4@<X0>(uint64_t a1@<X8>)
{

  return sub_267C12220(v2, v1 + a1);
}

void OUTLINED_FUNCTION_55_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_8()
{
  v2 = *(v0 + 40);

  return sub_267EF9FC8();
}

uint64_t OUTLINED_FUNCTION_55_10()
{
  v1 = v0[215];
  v2 = v0[213];
  return v0[217] + 152;
}

uint64_t OUTLINED_FUNCTION_55_11()
{
  v2 = *(v0 + 129);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 272);
  v7 = *(v0 + 376);
  v8 = *(v0 + 360);
}

uint64_t OUTLINED_FUNCTION_55_12()
{
  result = v0[83];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[75];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[68];
  return result;
}

void OUTLINED_FUNCTION_55_14()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
}

__n128 OUTLINED_FUNCTION_55_15()
{
  v1 = *(v0 + 1424);
  result = *(v1 + 25);
  v4 = *v1;
  v3 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_55_17()
{
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_267B9F98C(v1 + v0, v2, v3);
}

void OUTLINED_FUNCTION_43_4(uint64_t a1@<X8>)
{
  v2[87] = v1;
  v2[86] = v3;
  v2[83] = a1;
}

uint64_t OUTLINED_FUNCTION_43_5()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = *(v0[23] + 8);
  return v0[24];
}

void OUTLINED_FUNCTION_43_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_9()
{
  v2 = *(v0 + 960);

  return sub_267BD5F58(v2, type metadata accessor for TextComponent);
}

uint64_t OUTLINED_FUNCTION_43_11()
{
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
}

unint64_t OUTLINED_FUNCTION_43_12()
{
  *(v1 - 80) = *(v0 + 192);
  *(v0 + 192) = 0x8000000000000000;
  v3 = *(v1 - 88);

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_43_14()
{
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[158];
  v4 = v0[156];
  v5 = v0[155];
  return v0[154];
}

void OUTLINED_FUNCTION_43_16()
{
  v1 = v0[141];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[93];
}

uint64_t OUTLINED_FUNCTION_43_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 24) = &a9 - v9;

  return sub_267EF2728();
}

uint64_t OUTLINED_FUNCTION_43_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  result = v0[14];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  return result;
}

void OUTLINED_FUNCTION_15_17()
{
  v1 = *(v0 + 56);
  *(v1 + 213) = 1;
  *(*(v1 + 216) + 24) = 1;
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_15_21@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 56), 1, 1, v2);
  v4 = v1 + *(v3 + 60);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_15_24()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
}

void OUTLINED_FUNCTION_15_25()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
}

uint64_t OUTLINED_FUNCTION_15_27()
{
  v1 = v0[35];
  result = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  v5 = *(v0[27] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_28(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_15_31@<X0>(uint64_t a1@<X8>)
{

  return sub_267B9AFEC(v1 + 40 * a1 + 32, v2 + 256);
}

void OUTLINED_FUNCTION_15_35()
{
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
}

double OUTLINED_FUNCTION_15_37()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_15_38(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return 0xD00000000000001CLL;
}

uint64_t OUTLINED_FUNCTION_15_39(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_15_41()
{
  v9 = v0[89];
  v10 = v0[88];
  v2 = v0[86];
  v11 = v0[87];
  v12 = v0[85];
  v13 = v0[84];
  v14 = v0[82];
  v15 = v0[79];
  v16 = v0[76];
  v17 = v0[73];
  v18 = v0[70];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  *(v1 - 96) = v0[64];
  v6 = v0[60];
  v7 = *(v4 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_15_42()
{

  return sub_267BA1B7C(v0);
}

uint64_t OUTLINED_FUNCTION_15_43()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_15_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 248) = &a9 - v9;

  return sub_267EF4D38();
}

uint64_t OUTLINED_FUNCTION_15_46()
{

  return sub_267B9AFEC(v0 + 16, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_15_47()
{

  return sub_267EF8238();
}

void *OUTLINED_FUNCTION_129(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_57_7()
{
  sub_267BA7F4C((v0 + 16), (v0 + 48));

  return sub_267BA9F38(0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_57_9()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = *(v0 + 108);
  v6 = *(v0 + 107);
  v7 = *(v0 + 106);
  v8 = *(v0 + 105);
  v9 = *(v0 + 104);

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_57_10()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));
  v4 = *(v2 + 8);
  result = v0;
  *(v3 - 120) = v2 + 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_11()
{
  v2 = *(v0 + 72);

  return sub_267EF8998();
}

uint64_t OUTLINED_FUNCTION_57_15()
{
  result = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = *(v0[40] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_16(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v2, a2, 1, *(v3 + 296));

  return sub_267EF70C8();
}

uint64_t OUTLINED_FUNCTION_57_17()
{
}

uint64_t OUTLINED_FUNCTION_57_18(uint64_t result)
{
  *(v3 + 168) = result;
  *(v3 + 176) = v2;
  *(v3 + 184) = 0xE800000000000000;
  *(v3 + 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_20()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return sub_267EF9FC8();
}

void OUTLINED_FUNCTION_10_7()
{
  v1 = *(v0 - 88);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v5 = *(v0 - 168);
  v4 = *(v0 - 160);
  v6 = *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_10_8()
{
  v1 = v0[31];
  __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);

  return sub_267EF3C48();
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  v4 = *(v0 + 120);

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_10_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_10_12()
{
  v3 = v1[54];
  v5 = v1[46];
  v4 = v1[47];
  v7 = v1[44];
  v6 = v1[45];
  v8 = v1[42];
  v9 = v1[43];
  v10 = v1[41];
  v11 = v1[40];
  v12 = v1[39];
  v13 = v1[38];
  v14 = v1[35];
  v15 = v1[33];
  v16 = v1[32];
}

uint64_t OUTLINED_FUNCTION_10_13()
{
  result = *(v0 - 136);
  v2 = *(v0 - 280);
  return result;
}

void OUTLINED_FUNCTION_10_14(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2)
{

  return sub_267BB16A4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[12];
  v8 = *(v0[18] + 8);
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_10_17()
{
  *(v1 - 65) = v0;

  return sub_267EF9DF8();
}

void *OUTLINED_FUNCTION_10_21()
{
  v2 = *(v0 - 56);
  v3 = *(v0 - 64);

  return __swift_project_boxed_opaque_existential_0((v0 - 88), v3);
}

void OUTLINED_FUNCTION_10_22(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return sub_267EF9CE8();
}

uint64_t OUTLINED_FUNCTION_10_24()
{
  v4 = v1[11];
  v3 = v1[12];
  v6 = v1[9];
  v5 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  v9 = v1[5];
  v12 = v1[4];
  v10 = *(v0 + 40);
  v13 = v1[3];
  v14 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_28()
{
  *v6 = v0;
  *(v6 + 8) = v1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  result = v2 + 8;
  v8 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_30()
{
  v3 = v0[157];
  v4 = v0[155];
  v5 = v0[152];
  v6 = v0[146];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];
  *(v1 - 112) = v0[115];
  *(v1 - 104) = v6;
  v10 = v0[92];
  *(v1 - 120) = v0[91];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
}

void OUTLINED_FUNCTION_10_32()
{
  v0[13] = v1;
  v2 = v0[17];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[29];
  v10 = *(v0[25] + 16);
}

uint64_t OUTLINED_FUNCTION_10_35()
{
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
}

double OUTLINED_FUNCTION_10_37(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return v5;
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_10_40()
{
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
}

void OUTLINED_FUNCTION_10_44()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_10_48(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_267BB2D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BB2D8C()
{
  v1 = *(MEMORY[0x277D55C68] + 4);
  v6 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_267BB2E68();
  *v2 = v0;
  v2[1] = sub_267BC442C;
  v4 = MEMORY[0x277D84F90];

  return v6(0xD000000000000014, 0x8000000267F18B90, v4, &type metadata for LabelsCATsSimple.SnippetLabelsDialogIds, v3);
}

unint64_t sub_267BB2E68()
{
  result = qword_28022B400;
  if (!qword_28022B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B400);
  }

  return result;
}

uint64_t sub_267BB2EBC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BC4D6C;

  return v7(a1);
}

uint64_t sub_267BB2FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_267BF1CB4;

  return sub_267BB3068(a1, v4, v5, v6);
}

uint64_t sub_267BB3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = *(*(sub_267EF8268() - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BB30F8, 0, 0);
}

uint64_t sub_267BB30F8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[3];
  v2 = *(v1 + 216);
  v7 = (*(v1 + 208) + **(v1 + 208));
  v3 = *(*(v1 + 208) + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_267BC4B20;
  v5 = v0[4];

  return v7(v5);
}

uint64_t sub_267BB31E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BF1CB4;

  return sub_267BB3280(a1);
}

uint64_t sub_267BB3280(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BB3310, 0, 0);
}

uint64_t sub_267BB3310()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v1 = sub_267EF8A08();
  v0[7] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#CATLabels loading label CATs", v4, 2u);
    MEMORY[0x26D60A7B0](v4, -1, -1);
  }

  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  type metadata accessor for LabelsCATsSimple();
  sub_267EF7B68();
  v0[8] = sub_267EF79E8();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_267BC452C;

  return sub_267BB2D8C();
}

uint64_t type metadata accessor for LabelsCATsSimple()
{
  result = qword_28022B3F0;
  if (!qword_28022B3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DirectInvocationUseCases()
{
  result = qword_28022CBA8;
  if (!qword_28022CBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB3554(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_267BB3794(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_267EF79C8();
  (*(v8 + 8))(a2, v2);
  sub_267BB2D24(a1);
  return v16;
}

uint64_t sub_267BB36B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_47();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_75(v1);

  return v4(v3);
}

uint64_t sub_267BB3740(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267BB3554(a1, a2);
}

uint64_t sub_267BB3794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BB3824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  if (!a1)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  sub_267BB40A0(a2, a3, a1);
  if (!*(&v21 + 1))
  {
LABEL_6:
    sub_267B9FF34(&v20, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_13_46())
  {
    *a4 = v18;
    a4[1] = v19;
    type metadata accessor for DirectInvocationUseCases();
    OUTLINED_FUNCTION_23_28();
    v8 = OUTLINED_FUNCTION_19_41();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

LABEL_7:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);

  v13 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_40_23();
  if (os_log_type_enabled(v13, v4))
  {
    OUTLINED_FUNCTION_48();
    *&v20 = OUTLINED_FUNCTION_5_4();
    *v5 = 136315138;
    if (v6)
    {
      v14 = sub_267EF8F08();
      v6 = v15;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_25_38();
    }

    v16 = sub_267BA33E8(v14, v6, &v20);

    *(v5 + 4) = v16;
    OUTLINED_FUNCTION_18_36(&dword_267B93000);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_32_0();
  }

  type metadata accessor for DirectInvocationUseCases();
  v8 = OUTLINED_FUNCTION_55();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_89_2()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[31];
}

uint64_t OUTLINED_FUNCTION_89_3()
{
  result = v0 + 32;
  v2 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_89_13()
{
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v8 = v0[24];
  v5 = v0[16];
  v7 = v0[13];

  return sub_267EF78A8();
}

uint64_t sub_267BB3B08(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_267BB3B24(a1);
}

uint64_t sub_267BB3B24(uint64_t *a1)
{
  v1 = *a1;
  sub_267EF7C38();

  sub_267EF7C08();
  return sub_267EF3AD8();
}

uint64_t sub_267BB3B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_267BB3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v15 = sub_267EF92D8();

    if (a4)
    {
LABEL_3:
      v16 = sub_267EF8FF8();

      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  if (a7)
  {
    v17 = sub_267EF8FF8();
  }

  else
  {
    v17 = 0;
  }

  if (a9)
  {
    v18 = sub_267EF8FF8();
  }

  else
  {
    v18 = 0;
  }

  if (a10)
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v19 = sub_267EF92D8();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v15 outgoingMessageType:a2 content:v16 speakableGroupName:a5 conversationIdentifier:v17 serviceName:v18 sender:a11 attachments:v19];

  return v20;
}

uint64_t sub_267BB3D8C(uint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0(0xD000000000000016, 0x8000000267F0FDD0, a1);
  if (!*(&v25 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v24, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_13_46())
  {
    v2 = v22;
    v1 = v23;
    sub_267BB40A0(0x6C646E7542707061, 0xEB00000000644965, v3);
    v4 = OUTLINED_FUNCTION_13_46();
    if (v4)
    {
      OUTLINED_FUNCTION_37_23(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23);
      OUTLINED_FUNCTION_23_28();
      v12 = OUTLINED_FUNCTION_19_41();
      return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    }
  }

LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);

  v17 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_40_23();
  if (os_log_type_enabled(v17, v1))
  {
    OUTLINED_FUNCTION_48();
    *&v24 = OUTLINED_FUNCTION_5_4();
    *v2 = 136315138;
    if (v3)
    {
      v18 = sub_267EF8F08();
      v3 = v19;
    }

    else
    {
      v18 = OUTLINED_FUNCTION_25_38();
    }

    v20 = sub_267BA33E8(v18, v3, &v24);

    *(v2 + 4) = v20;
    OUTLINED_FUNCTION_18_36(&dword_267B93000);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_32_0();
  }

  type metadata accessor for DirectInvocationUseCases();
  v12 = OUTLINED_FUNCTION_55();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t OUTLINED_FUNCTION_104_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 104);
  v4 = *(v2 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1)
{
  v1[8] = a1;
  v1[4] = v2;
  v1[5] = v3;
}

uint64_t OUTLINED_FUNCTION_104_5()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_104_6()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_104_8()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 - 120));
}

double sub_267BB40A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_120_2(a1, a2, a3);
  if (v5 && (v6 = v4, v7 = sub_267BA9948(), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 32 * v7;

    sub_267BA2E04(v9, v3);
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_121_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_121_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_121_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_121_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void *OUTLINED_FUNCTION_121_6(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_267BB41B0(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t OUTLINED_FUNCTION_60_7()
{
  v3 = v0[119];
  v4 = v0[117];
  *(v1 - 168) = v0[118];
  *(v1 - 160) = v4;
  v5 = v0[111];
  *(v1 - 152) = v0[114];
  *(v1 - 144) = v5;
  v6 = v0[105];
  *(v1 - 136) = v0[108];
  *(v1 - 128) = v6;
  v7 = v0[102];
  *(v1 - 120) = v0[104];
  *(v1 - 112) = v7;
  v8 = v0[96];
  *(v1 - 104) = v0[99];
  *(v1 - 96) = v8;
  v9 = v0[87];
}

uint64_t OUTLINED_FUNCTION_60_9()
{
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
}

uint64_t OUTLINED_FUNCTION_60_12()
{
  v2 = *(v0 + 280);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 456);

  return sub_267EF3C98();
}

void OUTLINED_FUNCTION_60_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_60_17(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  v2 = *(v0 - 200);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 224, v2);
}

uint64_t OUTLINED_FUNCTION_125_1()
{
}

void OUTLINED_FUNCTION_125_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_125_6()
{
  *(v4 - 216) = v3;
  *(v4 - 208) = v1;
  *(v4 - 272) = v2;
  *(v4 - 176) = v0;
}

uint64_t sub_267BB4430(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *OUTLINED_FUNCTION_41_1()
{
  v2 = v0[11];
  v3 = v0[10];

  return __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
}

uint64_t OUTLINED_FUNCTION_41_2()
{
  v16 = *(v0 + 128);
  v17 = *(v0 + 112);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = **(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_41_4()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_0((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return sub_267EF9328();
}

uint64_t OUTLINED_FUNCTION_41_11()
{
  v2 = v0[34];
  result = v0[35];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_41_13()
{
  result = __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v5 = *(v2 - 144);
  v4 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_41_18()
{
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[46];
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[35];
}

uint64_t OUTLINED_FUNCTION_41_21()
{

  return sub_267EF97F8();
}

uint64_t sub_267BB46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267BA83C4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

unint64_t sub_267BB478C()
{
  result = qword_280229068;
  if (!qword_280229068)
  {
    sub_267EF7B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229068);
  }

  return result;
}

unint64_t sub_267BB47E4()
{
  result = qword_280229078;
  if (!qword_280229078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229070, &qword_267EFC428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229078);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{
  *(v1 + 632) = a1;
  *(v1 + 600) = 22;

  return sub_267EF5128();
}

void OUTLINED_FUNCTION_67_0()
{
  v2 = v1[1];
  *(v0 + 64) = *v1;
  *(v0 + 48) = v2;
}

void OUTLINED_FUNCTION_67_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_4(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_267BA33E8(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_67_5(uint64_t a1)
{
  *(a1 + 8) = sub_267D80964;
  v3 = *(v2 + 280);
  return v1;
}

BOOL OUTLINED_FUNCTION_67_6()
{
  v5 = *(v2 + 8);

  return sub_267C00EC4(v3, v0, v1, v5);
}

void OUTLINED_FUNCTION_67_7()
{
  v1 = *(v0 - 336);
  v2 = *(v0 - 344);
  v3 = *(v0 - 352);
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];

  return sub_267EF4938();
}

uint64_t OUTLINED_FUNCTION_67_9(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, unint64_t a2)
{

  return sub_267BA33E8(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_67_11()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 54);
}

uint64_t OUTLINED_FUNCTION_67_13()
{
}

uint64_t sub_267BB4A3C()
{
  v0 = sub_267EF7B88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  type metadata accessor for LabelsCATs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229060, &qword_267EFC420);
  v3 = *(v1 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF7B78();
  sub_267BB478C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229070, &qword_267EFC428);
  sub_267BB47E4();
  sub_267EF99C8();
  return sub_267EF78E8();
}

uint64_t type metadata accessor for LabelsCATs()
{
  result = qword_280229EE0;
  if (!qword_280229EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB4BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267BB2D24(a1);
  return v12;
}

uint64_t sub_267BB4D58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267BB4BEC(a1, a2);
}

uint64_t OUTLINED_FUNCTION_83_0()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v2 = *(*(v1 + 8) + 8);

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_267EF78E8();
}

uint64_t OUTLINED_FUNCTION_83_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_83_5()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83_6()
{
  *(v4 - 136) = v0[160];
  *(v4 - 128) = v2;
  v6 = v0[159];
  *(v4 - 112) = v3;
  v7 = v0[141];
  *(v4 - 120) = v0[140];
  v8 = v0[108];
  v9 = v0[106];
  v10 = v0[93];
  *(v4 - 144) = v0[87];
}

uint64_t OUTLINED_FUNCTION_83_8(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  v2 = *(v0 + 56);

  return sub_267EF7B68();
}

uint64_t OUTLINED_FUNCTION_63_4()
{

  return sub_267EF9A68();
}

void OUTLINED_FUNCTION_63_6(uint64_t a1@<X8>)
{
  *(v1 + 128) = v3 - 1;
  *(v1 + 136) = (a1 - 32) | 0x8000000000000000;
  v4 = *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_63_8()
{
  result = v0[102];
  v2 = v0[100];
  v3 = *(v0[101] + 8);
  return result;
}

double OUTLINED_FUNCTION_63_10()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_12(uint64_t result)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_63_15()
{

  return sub_267EF8348();
}

unint64_t sub_267BB5034()
{
  result = qword_28022B130;
  if (!qword_28022B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B130);
  }

  return result;
}

uint64_t sub_267BB5088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_267BB52B4(a1);
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D5C230]);
  v6 = sub_267BB5B04(v4);
  v7 = sub_267BB5B84(v6);
  if (v8)
  {
    *a2 = v7;
    a2[1] = v8;
    v9 = type metadata accessor for DirectInvocationUseCases();
    swift_storeEnumTagMultiPayload();
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);

    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      if (a1)
      {
        v18 = sub_267EF8F08();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_267BA33E8(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_267B93000, v14, v15, "#DirectInvocationUseCases invalid user data for triggerGatekeeper: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D60A7B0](v17, -1, -1);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    v12 = type metadata accessor for DirectInvocationUseCases();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_267BB52B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB90, &qword_267F0D0A8);
    v2 = sub_267EF9CF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_267BA2E04(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_267BA7F4C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_267BA7F4C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_267BA7F4C(v32, v33);
    v15 = *(v2 + 40);
    result = sub_267EF9AC8();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_267BA7F4C(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double OUTLINED_FUNCTION_96()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_96_1(uint64_t a1, unint64_t a2)
{

  return sub_267BB8FCC(1uLL, a1, a2);
}

uint64_t OUTLINED_FUNCTION_96_3(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, v6, v5, v7, a5);
}

void OUTLINED_FUNCTION_96_6()
{
  v5 = v1[160];
  v6 = v1[159];
  v7 = v1[143];
  *(v3 - 120) = v1[142];
  *(v3 - 112) = v0;
  v8 = v1[108];
  v9 = v1[106];
  *(v3 - 136) = v5;
  *(v3 - 128) = v9;
  v10 = v1[93];
  v11 = v1[87];
}

uint64_t OUTLINED_FUNCTION_96_7()
{

  return sub_267EF7B58();
}

uint64_t OUTLINED_FUNCTION_96_8()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_98_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + a1) + 24);

  return sub_267EF4888();
}

uint64_t OUTLINED_FUNCTION_98_3()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));

  return sub_267EF7C38();
}

void OUTLINED_FUNCTION_98_4()
{
}

uint64_t OUTLINED_FUNCTION_98_7()
{
  v3 = *(v0 + 104);
  v4 = *(v1 - 1);
  v5 = *v1;
}

uint64_t OUTLINED_FUNCTION_98_9(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267BA33E8(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_98_10()
{
  v2 = v0[43];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[35];
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v4 = *(v0[27] + 8);
  return v0[28];
}

uint64_t OUTLINED_FUNCTION_45_12()
{
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[156];
  v6 = v0[152];

  return sub_267EF3D38();
}

double OUTLINED_FUNCTION_45_13()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_15()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_16(uint64_t a1)
{
  *v1 = a1;

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_20()
{
  v2 = *(v0 + 632);
  v3 = *(v0 + 576);

  return sub_267EF90F8();
}

void OUTLINED_FUNCTION_45_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

__n128 OUTLINED_FUNCTION_45_22()
{
  v1 = *(v0 + 928);
  result = *(v1 + 25);
  v4 = *v1;
  v3 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_45_27()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[37];
  v9 = v0[38];
}

uint64_t OUTLINED_FUNCTION_45_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x2821BB850](a1, a2, a3, a4, a5, a6, a7);
}

__n128 OUTLINED_FUNCTION_45_29(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = vextq_s8(*(v1 + 1136), *(v1 + 1136), 8uLL);
  return *(v1 + 1104);
}

void OUTLINED_FUNCTION_100_2()
{
}

uint64_t OUTLINED_FUNCTION_100_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_100_6()
{
  *(v0 + v1[11]) = v4;
  *(v0 + v1[12]) = v3;
  *(v0 + v1[13]) = v2;
}

uint64_t OUTLINED_FUNCTION_100_7()
{

  return sub_267DC8AC4(v1, v2 + v0);
}

uint64_t OUTLINED_FUNCTION_100_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_100_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;

  return sub_267EF8248();
}

id sub_267BB5B04(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_267EF8EE8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t sub_267BB5B84(void *a1)
{
  v2 = [a1 appBundleId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t type metadata accessor for GatekeeperCATs()
{
  result = qword_28022C068;
  if (!qword_28022C068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BB5C64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267BB5CB8(a1, a2);
}

uint64_t sub_267BB5CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267BB2D24(a1);
  return v12;
}

uint64_t sub_267BB5F08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267BB5F5C(a1, a2);
}

uint64_t sub_267BB5F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267C2FB6C(a1, &v14 - v11, &qword_280229E20, &unk_267EFDCC0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267B9F98C(a1, &qword_280229E20, &unk_267EFDCC0);
  return v12;
}

BOOL sub_267BB60E8()
{
  if (sub_267BB6154(0xD000000000000016, 0x8000000267F1A5B0))
  {
    return 1;
  }

  return sub_267BB6154(0xD000000000000011, 0x8000000267F1A5D0);
}

BOOL sub_267BB6154(uint64_t a1, unint64_t a2)
{
  v6 = sub_267EF89E8();
  v7 = OUTLINED_FUNCTION_4_6(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_55();
  v12 = sub_267EF7C18();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    v16 = qword_280240FC8;
    sub_267EF89C8();
    sub_267EF9698();
    OUTLINED_FUNCTION_8_47();
    if (qword_2802287A8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_0(qword_280240E08, qword_280240E20);
    v17 = sub_267BB62F8(v14, v15, a1, a2);

    sub_267EF9688();
    OUTLINED_FUNCTION_8_47();
    (*(v9 + 8))(v3, v2);
  }

  else
  {
    return 0;
  }

  return v17;
}

BOOL sub_267BB62F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  sub_267EF95D8();

  v10 = &unk_267EFC000;
  if (OUTLINED_FUNCTION_99())
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = OUTLINED_FUNCTION_52();
    *&v66[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = OUTLINED_FUNCTION_0_53();
    OUTLINED_FUNCTION_45();
    _os_log_impl(v13, v14, v15, v16, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (qword_2802287B0 != -1)
  {
    swift_once();
  }

  v17 = *__swift_project_boxed_opaque_existential_0(qword_280240E30, qword_280240E48);
  v18 = sub_267BB6BA4(a3, a4);
  *&v66[0] = a1;
  *(&v66[0] + 1) = a2;
  MEMORY[0x28223BE20](v18);
  v19 = sub_267BC2B54();

  if (v19)
  {

    v20 = sub_267EF89F8();
    sub_267EF95C8();

    if (OUTLINED_FUNCTION_99())
    {
      v21 = swift_slowAlloc();
      *&v66[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = OUTLINED_FUNCTION_0_53();
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_267BA33E8(a3, a4, v66);
      OUTLINED_FUNCTION_45();
      _os_log_impl(v22, v23, v24, v25, v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    return 0;
  }

  v26 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  OUTLINED_FUNCTION_43();

  v29 = sub_267BC2BFC(a1, a2, 0);
  v30 = sub_267BC3164([v29 compatibilityObject], &selRef_bundleType);
  v32 = v31;
  v33 = *MEMORY[0x277CC1E08];
  v34 = sub_267EF9028();
  if (!v32)
  {

    goto LABEL_34;
  }

  if (v30 == v34 && v32 == v35)
  {
  }

  else
  {
    v37 = sub_267EF9EA8();

    if ((v37 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v38 = [v29 infoDictionary];
  v39 = sub_267EF8FF8();
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v40 = [v38 objectForKey:v39 ofClass:swift_getObjCClassFromMetadata()];

  if (v40)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66[0] = v64;
  v66[1] = v65;
  v10 = &unk_267EFC000;
  if (*(&v65 + 1))
  {
    if (swift_dynamicCast())
    {
      v41 = v63;
      if ([v63 BOOLValue] && (v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]), OUTLINED_FUNCTION_43(), , (v43 = sub_267BEB478(a1, a2)) != 0))
      {
        v44 = v43;
        v45 = sub_267EF8FF8();
        v46 = [v44 BOOLForKey_];

        if ((v46 & 1) == 0)
        {

          v51 = sub_267EF89F8();
          v52 = sub_267EF95D8();

          if (!os_log_type_enabled(v51, v52))
          {
            goto LABEL_41;
          }

          v53 = OUTLINED_FUNCTION_48();
          v54 = OUTLINED_FUNCTION_52();
          *&v66[0] = v54;
          *v53 = 136315138;
          *(v53 + 4) = OUTLINED_FUNCTION_0_53();
          v55 = "AppIntentSupportResolver# Skipping hidden internal app %s";
          goto LABEL_40;
        }

        v10 = &unk_267EFC000;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_267B9FF34(v66, &qword_28022AEF0, &qword_267EFCDE0);
  }

LABEL_34:
  v47 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v47)
  {

    v56 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_99())
    {
      v57 = OUTLINED_FUNCTION_48();
      v58 = OUTLINED_FUNCTION_52();
      *&v66[0] = v58;
      *v57 = v10[9];
      *(v57 + 4) = OUTLINED_FUNCTION_0_53();
      OUTLINED_FUNCTION_45();
      _os_log_impl(v59, v60, v61, v62, v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_45;
  }

  v41 = v47;
  if (sub_267BC2D54(v47))
  {
    v48 = *MEMORY[0x277CD3858];
    v49 = sub_267EF9028();
    v50 = sub_267BC2EE0(v49);

    if (v50)
    {
      v27 = sub_267BC2F78(a3, a4, v50);

      return v27;
    }
  }

  v51 = sub_267EF89F8();
  v52 = sub_267EF95C8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_48();
    v54 = OUTLINED_FUNCTION_52();
    *&v66[0] = v54;
    *v53 = v10[9];
    *(v53 + 4) = OUTLINED_FUNCTION_0_53();
    v55 = "AppIntentSupportResolver# %s does not have intents app extension";
LABEL_40:
    _os_log_impl(&dword_267B93000, v51, v52, v55, v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

LABEL_41:

LABEL_45:
  return 0;
}

uint64_t sub_267BB6BA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF89E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = sub_267BB7170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CA40, &qword_267F0C858);
  if (sub_267EF9098() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_267EF9EA8();

    if ((v12 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v13 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  OUTLINED_FUNCTION_1_78();
  v14 = v2[5];
  v15 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v14);
  v16 = (*(v15 + 8))(0xD000000000000014, 0x8000000267F1BFC0, 0xD000000000000031, 0x8000000267F0F890, v14, v15);
  if (!v16)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v6;
      v48[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = OUTLINED_FUNCTION_3_73();
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_267BA33E8(0xD000000000000031, 0x8000000267F0F890, v48);
      _os_log_impl(&dword_267B93000, v35, v36, "DisallowedAppsProvider#getSendMessageIntentDisallowedApps - missing trial level for expected factor: %s in namespace: %s", v37, 0x16u);
      swift_arrayDestroy();
      v6 = v47;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF9688();
    OUTLINED_FUNCTION_1_78();
    goto LABEL_30;
  }

  v17 = v16;
  sub_267EF9688();
  OUTLINED_FUNCTION_1_78();
  if ([v17 levelOneOfCase] != 11)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v39 = sub_267EF8A08();
    __swift_project_value_buffer(v39, qword_280240FB0);
    v40 = v17;
    v41 = sub_267EF89F8();
    v42 = sub_267EF95E8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v6;
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v43 = 136315394;
      *(v43 + 4) = OUTLINED_FUNCTION_3_73();
      *(v43 + 12) = 1024;
      *(v43 + 14) = [v40 levelOneOfCase];

      _os_log_impl(&dword_267B93000, v41, v42, "DisallowedAppsProvider#getSendMessageIntentDisallowedApps - Trial factor %s is set as unsupported type: %d", v43, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v44 + 8))(v9, v5);
      return MEMORY[0x277D84F90];
    }

LABEL_30:
    (*(v6 + 8))(v9, v5);
    return MEMORY[0x277D84F90];
  }

  result = sub_267BC31D0(v17);
  if (v19)
  {
    v48[0] = result;
    v48[1] = v19;
    sub_267BB5034();
    v20 = sub_267EF9998();

    v21 = *(v20 + 16);
    if (v21)
    {
      v46 = v5;
      v47 = v6;
      v48[0] = MEMORY[0x277D84F90];
      sub_267BC7934(0, v21, 0);
      v22 = v48[0];
      v23 = (v20 + 56);
      do
      {
        v24 = *(v23 - 3);
        v25 = *(v23 - 2);
        v26 = *(v23 - 1);
        v27 = *v23;

        v28 = MEMORY[0x26D608DB0](v24, v25, v26, v27);
        v30 = v29;

        v48[0] = v22;
        v32 = *(v22 + 16);
        v31 = *(v22 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_267BC7934((v31 > 1), v32 + 1, 1);
          v22 = v48[0];
        }

        *(v22 + 16) = v32 + 1;
        v33 = v22 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v23 += 4;
        --v21;
      }

      while (v21);
      (*(v47 + 8))(v9, v46);

      return v22;
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_267BB7170()
{
  result = qword_28022AE60;
  if (!qword_28022AE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022AE60);
  }

  return result;
}

uint64_t sub_267BB71B4()
{
  **(v1 + 264) = vextq_s8(*(v1 + 328), *(v1 + 328), 8uLL);
  v3 = *(v1 + 328);
  v108 = *(v1 + 336);
  v4 = *(*(v1 + 232) + 416);
  *(v1 + 344) = v4;
  if (!v4)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v22);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v23, v24, "#TextComponent Current conversation is nil!!");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_44_17(v25, v26);
    OUTLINED_FUNCTION_30_26();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_98();

    __asm { BRAA            X1, X16 }
  }

  v104 = v3;
  v5 = *(v1 + 312);
  v6 = *(v1 + 264);
  sub_267BFF55C(v6, v5);

  sub_267BFF5C0();
  *(v1 + 352) = v7;
  sub_267C00468(v5);
  if (*(v6 + 72))
  {
    v8 = *(v1 + 288);
    v9 = *(v1 + 296);
    v10 = *(v1 + 280);
    v11 = *(v1 + 232);
    v12 = v11[6];
    __swift_project_boxed_opaque_existential_0(v11 + 2, v11[5]);
    v13 = *(v12 + 8);
    v14 = OUTLINED_FUNCTION_10_0();
    v15(v14);
    v2 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_10_0();
    sub_267EF3B68();

    OUTLINED_FUNCTION_42_20();

    v16 = *(v8 + 8);
    v0 = (v8 + 8);
    v17 = OUTLINED_FUNCTION_63();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  OUTLINED_FUNCTION_45_18();
  if ((v29 & 1) == 0)
  {
    v30 = *(v1 + 272);
    INMessageEffectType.description.getter(v0[10]);
    sub_267EF90F8();

    v0 = *(v1 + 264);
  }

  v31 = *(v1 + 272);
  v32 = *(v1 + 232);
  sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = v0[7];
  v38 = v0[8];
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v39 = *(v32 + 256);

  v40 = OUTLINED_FUNCTION_63();
  v42 = sub_267BBF2B0(v40, v41, v39);

  OUTLINED_FUNCTION_34_20();
  v43 = OUTLINED_FUNCTION_63();
  v45 = sub_267BBF2B0(v43, v44, v2);
  v47 = v46;

  *(v1 + 376) = v45;
  *(v1 + 384) = v47;
  if (v45 == 2)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  if (v106)
  {
    v49 = [v106 displayName];
    sub_267EF9028();

    v50 = sub_267EF9118();
  }

  else
  {
    v50 = 0;
  }

  OUTLINED_FUNCTION_25_28();
  if (v45 != 2 && (v51 & 1) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v48 <= -1.0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v48 >= 1.84467441e19)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v52 = *(v1 + 232);
  v53 = v48;

  sub_267BB78E4(BYTE4(v102) & v42, v50 & 1, v48);

  OUTLINED_FUNCTION_53_14(v54, v55, v56, v57, v58, v59, v60, v61, v102, v104, v106, v108);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v62 = *(v52 + 248);

  v63 = OUTLINED_FUNCTION_63();
  sub_267BB7A18(v63, v64, v62);

  v65 = *(v1 + 88);
  if (v65 == 1)
  {
    OUTLINED_FUNCTION_40_16();
    if (!v66)
    {
      OUTLINED_FUNCTION_0();
    }

    v67 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v67, qword_280240FB0);

    v68 = sub_267EF89F8();
    v69 = sub_267EF95D8();

    if (os_log_type_enabled(v68, v69))
    {
      v53 = OUTLINED_FUNCTION_48();
      v70 = OUTLINED_FUNCTION_52();
      *v53 = 136315138;
      v71 = OUTLINED_FUNCTION_44_0();
      *(v53 + 4) = sub_267BA33E8(v71, v72, v73);
      _os_log_impl(&dword_267B93000, v68, v69, "#TextComponent processedContent is .differentLanguage(%s)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_46_17(v74, v75, v76, v77, v78, v79, v80, v81, v103, v105, v107, v109);
  }

  else
  {
    if (v65 != 255)
    {
      sub_267B9FF34(v1 + 56, &qword_280229918, &qword_267F003B0);
    }

    v4 = 0;
    v37 = 0;
  }

  *(v1 + 392) = v4;
  *(v1 + 400) = v37;
  if (v107)
  {
    v82 = [v107 displayName];
    v53 = sub_267EF9028();

    LOBYTE(v82) = sub_267EF9118();

    if (v82)
    {
      v83 = [v107 displayName];
      sub_267EF9028();

      v84 = [objc_allocWithZone(sub_267EF67F8()) init];

      v53 = sub_267EF67B8();
      v86 = v85;

      *(v1 + 208) = v53;
      *(v1 + 216) = v86;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v87 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v87, qword_280240FB0);
      v88 = sub_267EF89F8();
      v89 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v89))
      {
        v90 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v90);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v91, v92, "#TextComponent message from a shortcode..normalizing");
        OUTLINED_FUNCTION_26();
      }
    }
  }

  v42 = *(*(v1 + 264) + 40);
  if (sub_267BAF0DC(v42))
  {
    OUTLINED_FUNCTION_1_9();
    if (!v53)
    {
      v93 = *(v42 + 32);
LABEL_42:
      *(v1 + 408) = v93;
      v94 = swift_task_alloc();
      *(v1 + 416) = v94;
      *v94 = v1;
      OUTLINED_FUNCTION_12_33(v94);
      OUTLINED_FUNCTION_98();

      return sub_267BB7B40();
    }

LABEL_51:
    v93 = MEMORY[0x26D609870](0, v42);
    goto LABEL_42;
  }

  *(v1 + 440) = 0;
  *(v1 + 448) = 0;
  *(*(v1 + 344) + 82) = 0;
  v97 = swift_task_alloc();
  *(v1 + 456) = v97;
  *v97 = v1;
  OUTLINED_FUNCTION_1_60(v97);
  OUTLINED_FUNCTION_98();

  return sub_267BB8698(v98, v99, v100);
}

void sub_267BB78E4(char a1, char a2, uint64_t a3)
{
  v7 = [*(v3 + 16) smsContext];
  if (!v7)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v27 = sub_267EF89F8();
    v9 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v9, v10, v11, v12, v13, v14, v15, v16, v24, v27))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v17);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v18, v19, "#SMSReadMessageSelfLogger smsContext is not initialized!", v20, v21, v22, v23, v25, v26);
      OUTLINED_FUNCTION_4_4();
    }

    goto LABEL_13;
  }

  v26 = v7;
  if ((a1 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    [v26 addIsSenderShortCodeList:1];
    v7 = v26;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [v7 addIsLongMessageList:1];
  v7 = v26;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (a3)
  {
LABEL_12:
    [v26 addMessageDurationsInSeconds:a3];
LABEL_13:
    v7 = v26;
  }

LABEL_14:
}

void sub_267BB7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_120_2(a1, a2, a3);
  if (v5 && (v6 = v4, v7 = sub_267BA9948(), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 40 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);
    v15 = OUTLINED_FUNCTION_50_7();
    sub_267BB7AA0(v15, v16, v17, v18, v14);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
  }

  *v3 = v10;
  *(v3 + 8) = v11;
  *(v3 + 16) = v12;
  *(v3 + 24) = v13;
  *(v3 + 32) = v14;
}

uint64_t sub_267BB7AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_267BB7B00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267BB7B40()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267BB7B68()
{
  v1 = sub_267BB8214(*(v0 + 16));
  if (!v2)
  {
    if (qword_280228818 != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v30);
    v33 = "#INMessage+RREntityHelpers extractOneTimeCode: no content";
    goto LABEL_24;
  }

  v3 = v1;
  v4 = v2;
  v5 = [*(v0 + 16) sender];
  if (!v5)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v34 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
    v28 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (!os_log_type_enabled(v28, v35))
    {
      goto LABEL_25;
    }

    v36 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v36);
    v33 = "#INMessage+RREntityHelpers extractOneTimeCode: not detecting auth code for non-shortcode sender";
LABEL_24:
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v31, v32, v33);
    OUTLINED_FUNCTION_26();
LABEL_25:

    v37 = 0;
    v38 = 0;
    goto LABEL_33;
  }

  v6 = v5;
  v47 = v0;
  v7 = [v5 displayName];

  sub_267EF9028();
  sub_267EF9118();

  v8 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];

  v9 = MEMORY[0x26D608EC0](v3, v4);

  v10 = objc_opt_self();
  v11 = sub_267EF8FF8();
  v46 = v8;
  v12 = [v10 scanString:v11 range:0 configuration:{v9, v8}];

  sub_267BA9F38(0, &qword_28022C2C0, 0x277D04218);
  OUTLINED_FUNCTION_37_18();
  v13 = sub_267EF92F8();

  v14 = sub_267BAF0DC(v13);
  v15 = 0;
  v0 = v13 & 0xFFFFFFFFFFFFFF8;
  v16 = *MEMORY[0x277D04048];
  while (1)
  {
    if (v14 == v15)
    {

      v37 = 0;
      v38 = 0;
      v0 = v47;
      goto LABEL_33;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D609870](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v17 = *(v13 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v19 = [v17 type];
    result = sub_267EF9028();
    if (!v16)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    v23 = v21;

    if (v22 == sub_267EF9028() && v23 == v24)
    {
      break;
    }

    OUTLINED_FUNCTION_109();
    v26 = sub_267EF9EA8();

    if (v26)
    {
      goto LABEL_28;
    }

    ++v15;
  }

LABEL_28:

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v39 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95D8();
  v0 = v47;
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_32();
    *v42 = 0;
    _os_log_impl(&dword_267B93000, v40, v41, "#INMessage+RREntityHelpers extractOneTimeCode: Auth code found", v42, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v43 = [v18 value];
  v37 = sub_267EF9028();
  v38 = v44;

LABEL_33:
  v45 = *(v0 + 8);

  return v45(v37, v38);
}

uint64_t sub_267BB802C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 416);
  v5 = *(v3 + 408);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v10 + 424) = v8;
  *(v10 + 432) = v9;

  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t OUTLINED_FUNCTION_92_7()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_92_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_92_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[23];
  result = v2[12];
  v5 = v2[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_92_12()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[3];
  return v0[2];
}

uint64_t sub_267BB8214(void *a1)
{
  v1 = [a1 content];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267BB8278()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 456);
  *v2 = *v0;
  *(v1 + 91) = v5;
  *(v1 + 464) = v6;
  *(v1 + 472) = v7;

  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BB8364()
{
  v1 = *(v0 + 416);
  if (v1)
  {
    v2 = *(v1 + 88);
    v3 = *(v1 + 96);
    OUTLINED_FUNCTION_4_58();
    v4 = *(v0 + 56);

    v5 = sub_267BB8BC4();

    if (v5)
    {
      v7 = *(v5 + 88);
      v6 = *(v5 + 96);

      if (v2 == v7 && v3 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_267EF9EA8();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

const char *sub_267BB8450(char a1)
{
  switch(a1)
  {
    case 27:
      return "SwiftUI";
    case 6:
      return "SiriMail";
    case 11:
      return "Zelkova";
  }

  v1 = "ResponseFramework";
  v2 = "SiriMessages";
  if (a1 == 1)
  {
    v2 = "SiriInCall";
  }

  if (a1 != 18)
  {
    v1 = v2;
  }

  if (a1 == 13)
  {
    return "ProactiveHarvesting";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_115_2(uint64_t a1@<X8>)
{
  *(v2 + 752) = v1;
  *(v2 + 760) = a1;
  v4 = *(v3 + 72);
}

uint64_t OUTLINED_FUNCTION_115_3()
{
}

uint64_t OUTLINED_FUNCTION_115_4(__n128 a1)
{
  a1.n128_u64[0] = 5.0;
  v10 = *(v7 - 136);
  v9 = *(v7 - 128);

  return MEMORY[0x2821BEEF8](v4, v6, v5, v9, v2, v1 & 1, v3, a1);
}

void *OUTLINED_FUNCTION_115_5(uint64_t a1)
{

  return sub_267BE8B74(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_267BB8608()
{
  if (*(v0 + 432))
  {
    v2 = *(v0 + 89);
  }

  OUTLINED_FUNCTION_12();
  *(v0 + 440) = *(v0 + 424);
  *(v0 + 448) = v3;
  *(*(v0 + 344) + 82) = v4;
  v5 = swift_task_alloc();
  *(v0 + 456) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_1_60(v5);

  return sub_267BB8698(v6, v7, v8);
}

uint64_t sub_267BB8698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = sub_267EF2E38();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BB875C, 0, 0);
}

uint64_t sub_267BB875C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[29];
  v0[17] = &type metadata for Features;
  v2 = sub_267BAFCAC();
  *(v0 + 112) = 14;
  v0[18] = v2;
  v3 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  if ((v3 & 1) != 0 && v1)
  {
    v4 = v0[29];
    v5 = sub_267EF72E8();
    sub_267BA9F38(0, &qword_28022A0A8, 0x277CE2028);
    v6 = *MEMORY[0x277CEF5E0];
    v7 = sub_267EF9028();
    v0[35] = sub_267C944A0(v7, v8);
    ConversationEventStore.init()((v0 + 2));
    v9 = [v5 assistantVoiceMaps];
    v10 = sub_267EF72B8();

    v0[36] = sub_267C90434(v10);
    v11 = swift_task_alloc();
    v0[37] = v11;
    *v11 = v0;
    v11[1] = sub_267DDE2B4;
    v12 = v0[28];

    return sub_267C9C508();
  }

  else
  {
    v14 = v0[34];

    v15 = v0[1];

    return v15(0, 0, 0);
  }
}

uint64_t sub_267BB8940()
{
  v1 = *(v0 + 232);
  if (*(v1 + 88))
  {
    sub_267BFF55C(*(v0 + 264), *(v0 + 312));
    OUTLINED_FUNCTION_10(dword_267F08D40);
    v2 = swift_task_alloc();
    *(v0 + 480) = v2;
    *v2 = v0;
    v2[1] = sub_267DDD7F0;
    v3 = *(v0 + 312);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    OUTLINED_FUNCTION_46_0();

    __asm { BR              X3 }
  }

  v8 = *(v0 + 360);
  v23 = *(v0 + 352);
  v9 = *(v0 + 304);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 240);
  v22 = *(v0 + 464);
  v21 = *(v0 + 440);
  v14 = __swift_project_boxed_opaque_existential_0(*(v0 + 256), *(*(v0 + 256) + 24));
  v24 = *(v11 + *(v9 + 64));
  v25 = *v12;
  sub_267BB8364();
  v15 = swift_task_alloc();
  *(v0 + 544) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v1;
  *(v15 + 32) = v11;
  *(v15 + 40) = v0 + 208;
  *(v15 + 48) = v21;
  *(v15 + 64) = v22;
  *(v15 + 80) = v8;
  *(v15 + 88) = v10;
  *(v15 + 96) = v23;
  *(v15 + 104) = v13;
  *(v15 + 112) = v0 + 192;
  v16 = *v14;
  v17 = swift_task_alloc();
  *(v0 + 552) = v17;
  *v17 = v0;
  v17[1] = sub_267BD6EF0;
  v18 = *(v0 + 91);
  OUTLINED_FUNCTION_46_0();

  return sub_267BB8BDC();
}

uint64_t sub_267BB8B44()
{
  OUTLINED_FUNCTION_53_5();
  if (!v2)
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v1(result - 1, (v0 & 0xC000000000000001) == 0, v0);
      if ((v0 & 0xC000000000000001) == 0)
      {
        v5 = *(v0 + 8 * v4 + 32);
      }
    }

    v6 = OUTLINED_FUNCTION_3();
    return MEMORY[0x26D609870](v6);
  }

  result = OUTLINED_FUNCTION_63_4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_267BB8BDC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 109) = v4;
  *(v1 + 108) = v5;
  v10 = OUTLINED_FUNCTION_13_26(v6, v7, v8, v9);
  TextComponentParameters = type metadata accessor for SearchForMessagesReadTextComponentParameters(v10);
  OUTLINED_FUNCTION_79_3(TextComponentParameters);
  v13 = *(v12 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267BB8C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v53 = *(v12 + 109);
  v16 = *(v12 + 108);
  v17 = *(v12 + 107);
  v18 = *(v12 + 106);
  v19 = *(v12 + 105);
  v20 = *(v12 + 104);
  v21 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_19_17(v14[6]);
  v23 = OUTLINED_FUNCTION_42_13(v22);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  OUTLINED_FUNCTION_31_14(v14[9]);
  v26 = OUTLINED_FUNCTION_42_13(v14[11]);
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  OUTLINED_FUNCTION_30_18(v14[13]);
  v29 = OUTLINED_FUNCTION_42_13(v14[20]);
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v21);
  v32 = OUTLINED_FUNCTION_42_13(v14[21]);
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v21);
  v35 = OUTLINED_FUNCTION_42_13(v14[23]);
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v21);
  OUTLINED_FUNCTION_16_20(v14[24]);
  *(v13 + v38) = 0;
  *(v13 + v14[12]) = 0;
  *(v13 + v14[14]) = v20;
  *(v13 + v14[15]) = v19;
  *(v13 + v14[16]) = v18;
  *(v13 + v14[17]) = v17;
  *(v13 + v14[19]) = v16;
  *(v13 + v14[22]) = 0;
  *(v13 + v14[25]) = v53;
  OUTLINED_FUNCTION_1_3();
  v54 = v39;
  v40 = *(v15 + 4);
  v41 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_134_0(v41);
  *v42 = v43;
  OUTLINED_FUNCTION_19_0(v42);
  OUTLINED_FUNCTION_40();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v54, a10, a11, a12);
}

uint64_t sub_267BB8E14(void (*a1)(void))
{
  a1(0);
  v1 = sub_267EF5658();
  sub_267BB8F30(v1, v2);
  v4 = v3;

  if (v4)
  {
    sub_267EF8F68();
  }

  OUTLINED_FUNCTION_73_2();
  v5 = OUTLINED_FUNCTION_46_2();
  MEMORY[0x26D608E60](v5);

  v6 = sub_267EF5658();
  OUTLINED_FUNCTION_96_1(v6, v7);
  sub_267BB9090();

  sub_267EF9188();

  return v9;
}

uint64_t sub_267BB8F30(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_267EF9258();
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_144(uint64_t a1@<X8>)
{
  *(v2 + 560) = v1;
  *(v2 + 568) = a1;
  v4 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_144_0()
{
  v2 = v0[138];
  v3 = v0[102];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
}

uint64_t OUTLINED_FUNCTION_144_1()
{

  return sub_267EF9098();
}

unint64_t sub_267BB8FCC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_267EF9168();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_267EF9278();
      OUTLINED_FUNCTION_74_0();

      return OUTLINED_FUNCTION_50_7();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_267BB9090()
{
  result = qword_28022A0D8;
  if (!qword_28022A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A0D8);
  }

  return result;
}

unint64_t sub_267BB9114(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_267EF9098();
  sub_267BB9258(5);
  sub_267BB9090();
  sub_267EF9188();

  MEMORY[0x26D608E60](0x2E65756C61562ELL, 0xE700000000000000);

  a5(a1);
  sub_267EF8F68();

  v7 = OUTLINED_FUNCTION_37_1();
  MEMORY[0x26D608E60](v7);

  return 0xD000000000000012;
}

uint64_t sub_267BB9258(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_267EF9168();
    sub_267EF9278();
    OUTLINED_FUNCTION_74_0();

    return OUTLINED_FUNCTION_50_7();
  }

  return result;
}

uint64_t sub_267BB9308(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    case 5:
      result = 1953063287;
      break;
    case 6:
      result = 0x65756E69746E6F63;
      break;
    case 7:
      result = 1819042147;
      break;
    default:
      return result;
  }

  return result;
}

void sub_267BB93FC()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v127 = v3;
  v4 = sub_267EF53D8();
  v129 = OUTLINED_FUNCTION_58(v4);
  v130 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v116 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  *&v125 = v15;
  OUTLINED_FUNCTION_115();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v116 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v116 - v20;
  v128 = sub_267EF4158();
  v22 = OUTLINED_FUNCTION_58(v128);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v29 = v28 - v27;
  v30 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v31 = *(v30 + 8);
  v32 = OUTLINED_FUNCTION_53_0();
  v33(v32, v30);
  sub_267EF4148();
  OUTLINED_FUNCTION_62_1(v132, v133);
  sub_267EF3B98();
  v126 = v29;
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v132);
  LODWORD(v123) = v2;
  if (v2 < 2u)
  {
    v124 = v24;
    v34 = sub_267EF6268();
    OUTLINED_FUNCTION_97(v34);
    v35 = sub_267EF6258();
    v36 = sub_267EF6018();
    OUTLINED_FUNCTION_97(v36);
    v122 = sub_267EF6008();
    sub_267EF6218();
    v37 = sub_267EF6448();
    OUTLINED_FUNCTION_97(v37);
    v38 = sub_267EF6438();
    sub_267EF61F8();
    v121 = v38;
    OUTLINED_FUNCTION_22_0();
    sub_267DFDDC4();
    v39 = v14;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v40 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
    v41 = *(v130 + 16);
    v41(v10, v14, v129);
    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v43))
    {
      v44 = OUTLINED_FUNCTION_48();
      v117 = v44;
      v119 = OUTLINED_FUNCTION_52();
      v131 = v119;
      *v44 = 136315138;
      v45 = v125;
      v46 = OUTLINED_FUNCTION_61_4();
      v118 = v42;
      v47 = v129;
      (v41)(v46);
      sub_267EF5458();
      v116[3] = v38;
      v133 = v47;
      OUTLINED_FUNCTION_115_7();
      v134 = sub_267EDB6D8(v48, v49);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v132);
      v41(boxed_opaque_existential_0, v45, v47);
      v51 = sub_267EF5448();
      v120 = v35;
      v53 = v52;
      v54 = v41;
      v55 = v10;
      v56 = *(v130 + 8);
      v56(v45, v47);
      v57 = v55;
      v41 = v54;
      v56(v57, v47);
      v58 = v56;
      __swift_destroy_boxed_opaque_existential_0(v132);
      v59 = sub_267BA33E8(v51, v53, &v131);

      *(v117 + 1) = v59;
      v60 = v118;
      OUTLINED_FUNCTION_109_10();
      _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v119);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v58 = *(v130 + 8);
      v58(v10, v129);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
    OUTLINED_FUNCTION_229_1();
    v92 = v91 & ~v90;
    v93 = swift_allocObject();
    v125 = xmmword_267EFC020;
    *(v93 + 16) = xmmword_267EFC020;
    v41(v93 + v92, v39, v129);
    v94 = v126;
    sub_267EF4088();
    if (qword_280228900 != -1)
    {
      OUTLINED_FUNCTION_7_3();
    }

    sub_267BB8DFC();
    sub_267EF40D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v95 = OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_191_1(v95);
    v95[2].n128_u64[0] = sub_267BB90E4(2);
    v95[2].n128_u64[1] = v96;
    sub_267EF40A8();
    v97 = OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_191_1(v97);
    v97[2].n128_u64[0] = sub_267BB90E4(2);
    v97[2].n128_u64[1] = v98;
    sub_267EF4108();
    v99 = sub_267EF4748();
    OUTLINED_FUNCTION_97(v99);
    sub_267EF4738();
    v100 = v124;
    if (qword_280228860 != -1)
    {
      swift_once();
    }

    sub_267EF5648();
    sub_267EF4708();

    sub_267EF4728();

    sub_267EF4138();
    if (v123)
    {
      v101 = OUTLINED_FUNCTION_225_0();
      OUTLINED_FUNCTION_191_1(v101);
      if (qword_280228830 != -1)
      {
        swift_once();
      }

      v101[2].n128_u64[0] = sub_267BCEF48();
      v101[2].n128_u64[1] = v102;
    }

    else
    {
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_267EFCE30;
      if (qword_280228898 != -1)
      {
        swift_once();
      }

      *(v104 + 32) = sub_267BCEF14();
      *(v104 + 40) = v105;
      if (qword_280228870 != -1)
      {
        swift_once();
      }

      *(v104 + 48) = sub_267BCEF2C();
      *(v104 + 56) = v106;
      if (qword_280228888 != -1)
      {
        swift_once();
      }

      *(v104 + 64) = sub_267BCEF48();
      *(v104 + 72) = v107;
    }

    sub_267EF4118();

    v58(v39, v129);
LABEL_35:
    (*(v100 + 32))(v127, v94, v128);
    v103 = 0;
    goto LABEL_36;
  }

  if (v2 == 3)
  {
    v124 = v24;
    v66 = sub_267EF6268();
    OUTLINED_FUNCTION_97(v66);
    v67 = sub_267EF6258();
    sub_267EF6228();
    v68 = sub_267EF6448();
    OUTLINED_FUNCTION_97(v68);
    v69 = sub_267EF6438();
    sub_267EF61F8();
    OUTLINED_FUNCTION_22_0();
    sub_267DFDDC4();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v70 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
    v71 = *(v130 + 16);
    v71(v19, v21, v129);
    v72 = sub_267EF89F8();
    v73 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v73))
    {
      v74 = OUTLINED_FUNCTION_48();
      v123 = v67;
      v75 = v129;
      v76 = v74;
      v120 = v74;
      v121 = OUTLINED_FUNCTION_52();
      v131 = v121;
      *v76 = 136315138;
      v122 = v69;
      v77 = v125;
      v71(v125, v19, v75);
      sub_267EF5458();
      v119 = v72;
      v133 = v75;
      OUTLINED_FUNCTION_115_7();
      v134 = sub_267EDB6D8(v78, v79);
      v80 = __swift_allocate_boxed_opaque_existential_0(v132);
      v71(v80, v77, v75);
      v81 = sub_267EF5448();
      LODWORD(v118) = v73;
      v83 = v82;
      v84 = v71;
      v85 = *(v130 + 8);
      v85(v77, v75);
      v86 = OUTLINED_FUNCTION_44_0();
      (v85)(v86);
      v87 = v85;
      v71 = v84;
      __swift_destroy_boxed_opaque_existential_0(v132);
      sub_267BA33E8(v81, v83, &v131);
      OUTLINED_FUNCTION_53_0();

      v89 = v119;
      v88 = v120;
      *(v120 + 4) = v81;
      _os_log_impl(&dword_267B93000, v89, v118, "#makeNeedsValueContextFor submitting NLv4 dialog act: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v121);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {

      v87 = *(v130 + 8);
      v87(v19, v129);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
    OUTLINED_FUNCTION_229_1();
    v110 = v109 & ~v108;
    v111 = swift_allocObject();
    v125 = xmmword_267EFC020;
    *(v111 + 16) = xmmword_267EFC020;
    v71((v111 + v110), v21, v129);
    v94 = v126;
    sub_267EF4088();
    if (qword_280228900 != -1)
    {
      OUTLINED_FUNCTION_7_3();
    }

    sub_267BB8DFC();
    sub_267EF40E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v112 = OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_191_1(v112);
    v112[2].n128_u64[0] = sub_267BB90E4(2);
    v112[2].n128_u64[1] = v113;
    sub_267EF40B8();
    v114 = OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_191_1(v114);
    v100 = v124;
    if (qword_280228848 != -1)
    {
      swift_once();
    }

    v114[2].n128_u64[0] = sub_267BCEF48();
    v114[2].n128_u64[1] = v115;
    sub_267EF40C8();

    v87(v21, v129);
    goto LABEL_35;
  }

  (*(v24 + 8))(v126, v128);
  v103 = 1;
LABEL_36:
  __swift_storeEnumTagSinglePayload(v127, v103, 1, v128);
  OUTLINED_FUNCTION_47();
}