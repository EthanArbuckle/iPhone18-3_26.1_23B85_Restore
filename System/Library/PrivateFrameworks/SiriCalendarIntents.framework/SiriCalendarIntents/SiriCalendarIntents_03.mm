unint64_t sub_266589E60()
{
  result = qword_28007DA78;
  if (!qword_28007DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA78);
  }

  return result;
}

unint64_t sub_266589EB8()
{
  result = qword_28007DA80;
  if (!qword_28007DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA80);
  }

  return result;
}

unint64_t sub_266589F10()
{
  result = qword_28007DA88;
  if (!qword_28007DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA88);
  }

  return result;
}

unint64_t sub_266589F68()
{
  result = qword_28007DA90;
  if (!qword_28007DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA90);
  }

  return result;
}

unint64_t sub_266589FC0()
{
  result = qword_28007DA98;
  if (!qword_28007DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA98);
  }

  return result;
}

unint64_t sub_26658A018()
{
  result = qword_28007DAA0;
  if (!qword_28007DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAA0);
  }

  return result;
}

unint64_t sub_26658A070()
{
  result = qword_28007DAA8;
  if (!qword_28007DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAA8);
  }

  return result;
}

unint64_t sub_26658A0C8()
{
  result = qword_28007DAB0;
  if (!qword_28007DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAB0);
  }

  return result;
}

unint64_t sub_26658A120()
{
  result = qword_28007DAB8;
  if (!qword_28007DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAB8);
  }

  return result;
}

unint64_t sub_26658A178()
{
  result = qword_28007DAC0;
  if (!qword_28007DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAC0);
  }

  return result;
}

unint64_t sub_26658A1D0()
{
  result = qword_28007DAC8;
  if (!qword_28007DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAC8);
  }

  return result;
}

unint64_t sub_26658A228()
{
  result = qword_28007DAD0;
  if (!qword_28007DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAD0);
  }

  return result;
}

unint64_t sub_26658A280()
{
  result = qword_28007DAD8;
  if (!qword_28007DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAD8);
  }

  return result;
}

unint64_t sub_26658A2D8()
{
  result = qword_28007DAE0;
  if (!qword_28007DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAE0);
  }

  return result;
}

unint64_t sub_26658A330()
{
  result = qword_28007DAE8;
  if (!qword_28007DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAE8);
  }

  return result;
}

unint64_t sub_26658A388()
{
  result = qword_28007DAF0;
  if (!qword_28007DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14()
{
  v2 = *(v0 - 200);

  return sub_26666C968();
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return sub_26666CA08();
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  *(v4 - 192) = v0;
  *(v4 - 184) = v1;
  *(v4 - 176) = v2;
  v6 = *(v4 - 104);
  v7 = *(v4 - 96);
  *(v4 - 88) = v3;

  return sub_26666C9F8();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_26666C838();
}

uint64_t OUTLINED_FUNCTION_16_5()
{
  v2 = *(v0 - 200);

  return sub_26666C968();
}

uint64_t OUTLINED_FUNCTION_17_3()
{
  v2 = *(v0 - 88);

  return sub_26666CBD8();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_26666CBE8();
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_26658A5F0()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_26658A628(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  v2 = a1[19];

  *(v1 + 27) = v2;
  return v1;
}

double sub_26658A670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x800000026667CED0 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD000000000000016 && 0x800000026667CEF0 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000015 && 0x800000026667CF10 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v12 = a1 == 0xD00000000000001ALL && 0x800000026667CF30 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_26658A78C()
{
  v0 = sub_26666C958();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26658A7D8(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26658A878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26658A78C();
  *a2 = result;
  return result;
}

unint64_t sub_26658A8A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26658A7D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26658A8DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26658A78C();
  *a1 = result;
  return result;
}

uint64_t sub_26658A910(uint64_t a1)
{
  v2 = sub_26658AEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26658A94C(uint64_t a1)
{
  v2 = sub_26658AEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26658A988()
{

  return MEMORY[0x2821FE8D8](v0, 28, 7);
}

uint64_t sub_26658A9E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB18, &qword_266671868);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26658AEF8();
  sub_26666CBE8();
  v15 = v3[24];
  v20[15] = 0;
  OUTLINED_FUNCTION_0_8();
  if (!v2)
  {
    v16 = v3[25];
    v20[14] = 1;
    OUTLINED_FUNCTION_0_8();
    v17 = v3[26];
    v20[13] = 2;
    OUTLINED_FUNCTION_0_8();
    v18 = v3[27];
    v20[12] = 3;
    OUTLINED_FUNCTION_0_8();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_26658AB5C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_26658ABD0(a1);
  return v2;
}

uint64_t sub_26658ABD0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB08, &qword_266671860);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v17 - v12;
  *(v1 + 16) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26658AEF8();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetSingleOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8() & 1;
    v20 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8() & 1;
    v19 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8() & 1;
    v18 = 3;
    v16 = OUTLINED_FUNCTION_1_8();
    (*(v8 + 8))(v13, v5);
    *(v3 + 27) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26658AE00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26658AB5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26658AEB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetSingleOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26658AEF8()
{
  result = qword_28007DB10;
  if (!qword_28007DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetSingleOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26658B02C()
{
  result = qword_28007DB20;
  if (!qword_28007DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB20);
  }

  return result;
}

unint64_t sub_26658B084()
{
  result = qword_28007DB28;
  if (!qword_28007DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB28);
  }

  return result;
}

unint64_t sub_26658B0DC()
{
  result = qword_28007DB30;
  if (!qword_28007DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB30);
  }

  return result;
}

uint64_t sub_26658B138(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_26658B178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26658B1E0()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[17] = v10;
  v11 = *(v10 - 8);
  v1[18] = v11;
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v19);
  v21 = *(v20 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26658B39C, 0, 0);
}

void sub_26658B39C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB38, &qword_26667BAE0);
  v3 = sub_266669CB8();
  v4 = sub_26658C0E0(v3);
  v6 = v5;
  v7 = *__swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  v8 = type metadata accessor for EventProvider();
  *(v0 + 16) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = &off_287806290;
  sub_26655358C(v0 + 16, v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v6)
  {
    v9 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    v10 = sub_26655A8B4();
    v11 = sub_26665140C(v4, v6, v10);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v11)
    {
      sub_2665EF638(v11);
      if (v12)
      {
        v13 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v11 = 0;
  }

  v14 = [**(v0 + 112) searchQuery];
  if (v14)
  {
    v15 = v14;
    sub_26666C308();
    v13 = v16;
  }

  else
  {

    v13 = 0;
  }

LABEL_9:
  *(v0 + 200) = v11;
  v17 = *(v0 + 104);
  v18 = sub_266669CC8();
  v19 = [v18 unsupportedReason];

  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v20 = *(*(v0 + 112) + 48);
  v21 = *(v0 + 192);
  sub_26666C358();

  v22 = sub_26666BDA8();
  v23 = 1;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  if (v13)
  {
    v24 = *(v0 + 184);
    sub_26666C358();

    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 184), v23, 1, v22);
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_26658B688;
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);

  sub_2665DDDDC();
}

uint64_t sub_26658B688(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = v4[26];
  *v6 = *v2;
  v5[27] = v1;

  v8 = v4[24];
  v9 = v4[23];
  if (v1)
  {
    OUTLINED_FUNCTION_27(v9);
    OUTLINED_FUNCTION_27(v8);
    v10 = sub_26658BC9C;
  }

  else
  {
    v5[28] = a1;
    OUTLINED_FUNCTION_27(v9);
    OUTLINED_FUNCTION_27(v8);
    v10 = sub_26658B80C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26658B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[21];
  v15 = v14[22];
  v18 = v14[19];
  v17 = v14[20];
  v19 = v14[15];
  v20 = v14[16];
  v21 = v14[14];
  v22 = v21[11];
  __swift_project_boxed_opaque_existential_1(v21 + 7, v21[10]);
  v23 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  *v16 = 0;
  v16[1] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v23);
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_2666696D8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = swift_task_alloc();
  v14[29] = v39;
  *v39 = v14;
  v39[1] = sub_26658B9A0;
  v40 = v14[28];
  v42 = v14[21];
  v41 = v14[22];
  v44 = v14[19];
  v43 = v14[20];
  v45 = v14[12];
  v56 = v14[16];
  v57 = v14[15];
  OUTLINED_FUNCTION_4_7();

  return sub_2665643AC(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26658B9A0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);
  v8 = *(*v0 + 128);
  v9 = *(*v0 + 120);
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_266557D74(v9, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v2, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_26658BBDC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_5_8(*(v0 + 224));

  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_4_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26658BC9C()
{
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_5_8(*(v0 + 200));

  v2 = *(v0 + 8);
  v3 = *(v0 + 216);

  return v2();
}

uint64_t sub_26658BD78()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB38, &qword_26667BAE0);
  v2 = sub_266669CB8();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26658BDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266557FE8;

  return sub_26658B1E0();
}

uint64_t sub_26658BE94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26658BF28;

  return sub_26658BD58(a1);
}

uint64_t sub_26658BF28()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_26658C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2665582C8;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

uint64_t sub_26658C0E0(void *a1)
{
  v2 = [a1 targetEventIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26666C308();

  return v3;
}

void OUTLINED_FUNCTION_5_8(void *a1@<X8>)
{
  v4 = v1[22];
  v3 = v1[23];
  v6 = v1[20];
  v5 = v1[21];
  v7 = v1[19];
  v9 = v1[15];
  v8 = v1[16];
}

uint64_t sub_26658C170()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[12] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_26658C2E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_26655358C(*(v0 + 72) + 16, v0 + 16);
  v3 = *(v0 + 40);
  *(v0 + 144) = v3;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v4 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_26658C3D0;
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);

  return sub_26658C9DC();
}

uint64_t sub_26658C3D0()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = v4[21];
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v5[22] = v0;

  if (v0)
  {
    v9 = v5[17];
    sub_266557D74(v5[16], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v9, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[23] = v3;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26658C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[18];
  v16 = v14[19];
  v18 = v14[14];
  v17 = v14[15];
  v20 = v14[10];
  v19 = v14[11];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_2666696D8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_26656CFC4();
  v33 = swift_task_alloc();
  v14[24] = v33;
  *v33 = v14;
  v33[1] = sub_26658C664;
  v34 = v14[23];
  v35 = v14[20];
  v36 = v14[17];
  v38 = v14[15];
  v37 = v14[16];
  v39 = v14[14];
  v40 = v14[7];
  v45 = v14[18];
  v46 = v14[19];
  v43 = v14[11];
  v44 = v14[10];

  return sub_2665643AC(v40, v36, v37, v34, 0, 0, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26658C664()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[24];
  v3 = v1[23];
  v18 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[12];
  v9 = v1[11];
  v10 = v1[10];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  sub_266557D74(v10, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v9, &unk_28007DE20, &unk_26666EAE0);
  (*(v7 + 8))(v6, v8);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v4, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v18, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26658C8B4()
{
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26658C948()
{
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 176);

  return v1();
}

uint64_t sub_26658C9DC()
{
  OUTLINED_FUNCTION_14();
  v1[9] = v2;
  v1[10] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v6 = sub_266668D98();
  v1[12] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v10 = sub_266669AE8();
  v1[15] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[16] = v11;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26658CB10()
{
  v63 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v5 = sub_266669AD8();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);

  v9 = sub_2665FAB78();
  v10 = v9;
  if (v9 == 4)
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_49();
    *v11 = v5;
    *(v11 + 8) = v7;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v12 = 1;
LABEL_29:
    *(v11 + 32) = v12;
    swift_willThrow();
    goto LABEL_30;
  }

  LOBYTE(v13) = v9;

  if (v10 != 1)
  {
    if (v10 == 3)
    {
      v14 = v0[9];
      v13 = *(v0[10] + 8);
      v15 = sub_266669CC8();
      v16 = [v15 unsupportedReason];

      if (v16 >= 0xFFFFFFFF80000000)
      {
        if (v16 <= 0x7FFFFFFF)
        {
          v17 = v0[17];
          v18 = v0[15];
          v59 = v0[14];
          v19 = v0[9];
          v20 = v0[10];
          sub_266669CD8();
          v61 = sub_266669AC8();
          v60 = v21;
          v8(v17, v18);
          v22 = sub_266669CB8();
          v23 = sub_26658DE5C(v22);
          v24 = v20[11];
          __swift_project_boxed_opaque_existential_1(v20 + 7, v20[10]);
          sub_266669648();
          v25 = v0[14];
          v26 = v0[11];
          sub_26666C358();

          v27 = sub_26666BDA8();
          __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
          v28 = swift_task_alloc();
          *(v28 + 16) = v23;
          *(v28 + 24) = v25;
          v0[22] = sub_26656DD3C(sub_266570114, v28, v61, v60 & 1);

          v29 = swift_task_alloc();
          v0[23] = v29;
          *v29 = v0;
          v29[1] = sub_26658D324;
          v30 = v0[11];
          OUTLINED_FUNCTION_17_4();

          return sub_2665D916C();
        }

        __break(1u);
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (qword_28156C150 == -1)
    {
LABEL_15:
      v38 = sub_26666C168();
      __swift_project_value_buffer(v38, qword_28156D7E8);
      v39 = sub_26666C148();
      v40 = sub_26666C608();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v62 = v42;
        *v41 = 136315138;
        if (v13)
        {
          if (v13 == 1)
          {
            v43 = 0x656D695465746164;
          }

          else
          {
            v43 = 0x6E6F697461636F6CLL;
          }

          if (v13 == 1)
          {
            v44 = 0xED000065676E6152;
          }

          else
          {
            v44 = 0xE800000000000000;
          }
        }

        else
        {
          v44 = 0xE500000000000000;
          v43 = 0x656C746974;
        }

        v50 = sub_2665BFC90(v43, v44, &v62);

        *(v41 + 4) = v50;
        _os_log_impl(&dword_266549000, v39, v40, "[CreateEvent UnsupportedValueStrategy] unexpected parameter: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      sub_26656CBFC();
      v51 = OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_15_6(v51, v52);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_1_1();
    goto LABEL_15;
  }

  v33 = v0[9];
  v34 = sub_266669CC8();
  v0[5] = sub_266552C44(0, &qword_28007DB48, 0x277CD3D40);
  v0[2] = v34;
  v13 = sub_2665F052C(v0 + 2);
  v0[19] = v13;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = &off_279BCF000;
  if ([v13 unsupportedReason] != 1)
  {
    if (qword_28156C150 == -1)
    {
LABEL_24:
      v45 = sub_26666C168();
      __swift_project_value_buffer(v45, qword_28156D7E8);
      v46 = v13;
      v47 = sub_26666C148();
      v48 = sub_26666C608();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = [v46 v5[485]];

        _os_log_impl(&dword_266549000, v47, v48, "[CreateEvent UnsupportedValueStrategy] unexpected unsupported reason: %ld", v49, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      sub_26656CBFC();
      v55 = OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_15_6(v55, v56);
      *(v57 + 32) = v58;
      swift_willThrow();

LABEL_30:
      OUTLINED_FUNCTION_5_9();

      OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_17_4();

      __asm { BRAA            X1, X16 }
    }

LABEL_38:
    OUTLINED_FUNCTION_1_1();
    goto LABEL_24;
  }

  v35 = *v0[10];
  v36 = swift_task_alloc();
  v0[20] = v36;
  *v36 = v0;
  v36[1] = sub_26658D19C;
  OUTLINED_FUNCTION_17_4();

  return sub_266657B8C();
}

uint64_t sub_26658D19C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3[6] = v1;
  v3[7] = v2;
  v3[8] = v0;
  v4 = v3[20];
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v7 + 168) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26658D2A4()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5_9();

  v2 = OUTLINED_FUNCTION_14_4();

  return v3(v2);
}

uint64_t sub_26658D324(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = v4[23];
  v8 = *v2;
  *v6 = *v2;
  v5[24] = v1;

  v9 = v4[22];
  if (v1)
  {
    sub_266557D74(v5[11], &unk_28007D130, &unk_266671DF0);

    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v14 = v5[13];
    v13 = v5[14];
    v16 = v5[11];
    v15 = v5[12];

    sub_266557D74(v16, &unk_28007D130, &unk_266671DF0);
    (*(v14 + 8))(v13, v15);
    v18 = v5[17];
    v17 = v5[18];
    v19 = v5[14];
    v20 = v5[11];

    v21 = v8[1];

    return v21(a1);
  }
}

uint64_t sub_26658D51C()
{
  OUTLINED_FUNCTION_11();
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[24];
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_26658D5AC()
{
  OUTLINED_FUNCTION_11();

  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_26658D62C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  v10 = &v54[-v9];
  v11 = sub_266669AE8();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v12, v17);
  v57 = &v54[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v54[-v22];
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v54[-v25];
  sub_266669CD8();
  v27 = sub_266669AD8();
  v29 = v28;
  v58 = *(v14 + 8);
  v59 = v11;
  v58(v26, v11);
  if (v27 == 0x656D695465746164 && v29 == 0xED000065676E6152)
  {
LABEL_11:

    goto LABEL_12;
  }

  v31 = sub_26666CAC8();

  if ((v31 & 1) == 0)
  {
    sub_266669CD8();
    v32 = sub_266669AD8();
    v34 = v33;
    v58(v23, v59);
    if (v32 != 0x656C746974 || v34 != 0xE500000000000000)
    {
      v36 = sub_26666CAC8();

      v37 = v36 & 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  v37 = 1;
LABEL_13:
  v38 = v10;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v39 = sub_26666C168();
  __swift_project_value_buffer(v39, qword_28156D7E8);
  (*(v5 + 16))(v10, a1, v2);
  v40 = sub_26666C148();
  v41 = sub_26666C618();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61 = v56;
    *v42 = 136446466;
    v60 = v37;
    v43 = sub_26666C318();
    v55 = v41;
    v45 = v5;
    v46 = v38;
    v47 = sub_2665BFC90(v43, v44, &v61);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    v48 = v57;
    sub_266669CD8();
    v49 = sub_266669AD8();
    v51 = v50;
    v58(v48, v59);
    (*(v45 + 8))(v46, v2);
    v52 = sub_2665BFC90(v49, v51, &v61);

    *(v42 + 14) = v52;
    _os_log_impl(&dword_266549000, v40, v55, "[CreateEvent.UnsupportedValueStrategy] Returning %{public}s as unsupported behavior for %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  return v37;
}

uint64_t sub_26658DA8C()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669AE8();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_26658DB48()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v5 = sub_266669AD8();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);

  v9 = sub_2665FAB78();
  v10 = v0[5];
  v11 = v0[6];
  if (v9 == 4)
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_49();
    *v12 = v5;
    *(v12 + 8) = v7;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_4_7();

    __asm { BRAA            X1, X16 }
  }

  v15 = v9;
  v16 = v0[2];
  v17 = v0[3];

  v18 = sub_266669CB8();
  sub_266669CD8();
  v19 = sub_266669AC8();
  v21 = v20;
  v8(v10, v17);
  sub_2665827C8(v15, v19, v21 & 1);

  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_4_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26658DD10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_26658C170();
}

uint64_t sub_26658DDB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656FEA4;

  return sub_26658DA8C();
}

uint64_t sub_26658DE5C(void *a1)
{
  v2 = [a1 participants];

  if (!v2)
  {
    return 0;
  }

  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
}

double OUTLINED_FUNCTION_15_6(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t type metadata accessor for Signpost.OpenSignpost()
{
  result = qword_28156C1E8;
  if (!qword_28156C1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26658DFEC()
{
  result = sub_26666C0B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_26658E0BC(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_26666C0B8();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_26666C0D8();
  v18 = sub_26666C638();
  result = sub_26666C698();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_26666C098();
      _os_signpost_emit_with_name_impl(&dword_266549000, v17, v18, v21, a1, "", v20, 2u);
      MEMORY[0x266789690](v20, -1, -1);
LABEL_10:

      (*(v10 + 16))(v16, a4, v7);
      v22 = sub_26666C128();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      return sub_26666C118();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v25;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26658E268()
{
  sub_26658E540();
  result = sub_26666C6A8();
  qword_28156D800 = result;
  return result;
}

uint64_t sub_26658E2D0(const char *a1, uint64_t a2, char a3)
{
  v4 = sub_26666C0F8();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_26666C0B8();
  v15 = OUTLINED_FUNCTION_3_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15, v20);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = sub_26666C0D8();
  sub_26666C108();
  v30 = sub_26666C628();
  result = sub_26666C698();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v17 + 8))(v23, v14);
  }

  if ((a3 & 1) == 0)
  {
    v26 = a1;
    if (a1)
    {
LABEL_9:

      sub_26666C138();

      if ((*(v7 + 88))(v13, v4) == *MEMORY[0x277D85B00])
      {
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v13, v4);
        v27 = "";
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_26666C098();
      _os_signpost_emit_with_name_impl(&dword_266549000, v24, v30, v29, v26, v27, v28, 2u);
      MEMORY[0x266789690](v28, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v26 = &v32;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_26658E540()
{
  result = qword_28156C070;
  if (!qword_28156C070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156C070);
  }

  return result;
}

uint64_t sub_26658E584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26658E624, 0, 0);
}

uint64_t sub_26658E624()
{
  sub_26656704C(*(v0 + 16));
  if (v1)
  {
    v2 = *(v0 + 40);
    sub_26666C358();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v4, v3, 1, v6);
  v7 = [v5 dateTimeRange];
  if (v7)
  {
    v8 = v7;
    sub_26666BB78();
    v9 = sub_2665CAB68(v8);
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 48) = v9;
  v10 = [*(v0 + 16) dateTimeRange];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for CalendarEventRecurrence();
    v12 = sub_2665CAE4C(v11);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 56) = v12;
  v13 = [*(v0 + 16) dateTimeRange];
  if (v13)
  {
    v14 = v13;
    sub_2665D2370();
  }

  v15 = sub_2665670B0(*(v0 + 16));
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 24);
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    sub_2665511FC(sub_266557CC8, v18, v16);
    v20 = v19;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  *(v0 + 64) = v20;
  v21 = *(v0 + 16);
  sub_26666BD58();
  *(v0 + 72) = sub_2665CAF44([v21 location]);
  v22 = swift_task_alloc();
  *(v0 + 80) = v22;
  *v22 = v0;
  v22[1] = sub_26658E894;
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);

  return sub_2665D8954();
}

uint64_t sub_26658E894(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[10];
  v6 = *v2;
  (*v2)[11] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  sub_266583058(v4[5]);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26658EA8C, 0, 0);
  }

  else
  {

    v11 = v6[1];

    return v11(a1);
  }
}

uint64_t sub_26658EA8C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_26658EAF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 83))
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

uint64_t sub_26658EB38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26658EBA4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_266668D38();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for OpenCalendarViewIntent();
  v1[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26658ECE0, 0, 0);
}

uint64_t sub_26658ECE0()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_26658ED80;
  v2 = *(v0 + 80);

  return sub_26658FDD4();
}

uint64_t sub_26658ED80()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26658EE78, 0, 0);
}

uint64_t sub_26658EE78()
{
  v35 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  sub_26658F758(v2, v1);
  v4 = sub_26666C148();
  v5 = sub_26666C618();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136315138;
    sub_26658F758(v7, v8);
    v12 = sub_26666C318();
    v14 = v13;
    sub_26658F7BC(v7);
    v15 = sub_2665BFC90(v12, v14, v34);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_266549000, v4, v5, "[OpenCalendarViewToFindEventsWrapper] Converting OpenCalendarView to INFindEventsIntent: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x266789690](v11, -1, -1);
    MEMORY[0x266789690](v10, -1, -1);
  }

  else
  {

    sub_26658F7BC(v7);
  }

  v16 = v0[6];
  v17 = v0[3];
  sub_26655E020(v0[10], v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = v0[5];
    v20 = v0[3];
    v21 = v0[4];
    (*(v21 + 32))(v19, v0[6], v20);
    sub_26658F1A0(v19, v34);
    (*(v21 + 8))(v19, v20);
    v18 = v34[0];
  }

  v22 = v0[9];
  v23 = v0[10];
  v24 = v0[8];
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[2];
  objc_allocWithZone(MEMORY[0x277CD3C10]);
  v28 = v18;
  v29 = sub_26660B190(0, 0, v18, 0, 0, 0);
  v30 = __swift_project_boxed_opaque_existential_1((v27 + 40), *(v27 + 64));
  v31 = sub_26658F818(v29, 1, *v30, v27);

  sub_26658F7BC(v23);

  v32 = v0[1];

  return v32(v31);
}

id sub_26658F1A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v28 - v21;
  v23 = sub_266668D38();
  (*(*(v23 - 8) + 16))(v22, a1, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v23);
  sub_266668E58();
  v24 = sub_266668E68();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v24);
  sub_266668EA8();
  v25 = sub_266668EB8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v25);
  v26 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  result = sub_26658F56C(v22, v19, v13, v8);
  *a2 = result;
  return result;
}

uint64_t sub_26658F3DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658F46C;

  return sub_26658EBA4();
}

uint64_t sub_26658F46C()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

id sub_26658F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_266668D38();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) != 1)
  {
    v11 = sub_266668C88();
    OUTLINED_FUNCTION_0_15();
    (*(v12 + 8))(a1, v10);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v10) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_266668C88();
    OUTLINED_FUNCTION_0_15();
    (*(v14 + 8))(a2, v10);
  }

  v15 = sub_266668E68();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v15) != 1)
  {
    v16 = sub_266668E18();
    OUTLINED_FUNCTION_0_15();
    (*(v17 + 8))(a3, v15);
  }

  v18 = sub_266668EB8();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v18) != 1)
  {
    v19 = sub_266668E88();
    (*(*(v18 - 8) + 8))(a4, v18);
  }

  v20 = [v5 initWithStartDate:v11 endDate:v13 onCalendar:v16 inTimeZone:v19];

  return v20;
}

uint64_t sub_26658F758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenCalendarViewIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26658F7BC(uint64_t a1)
{
  v2 = type metadata accessor for OpenCalendarViewIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26658F818(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v45[3] = &type metadata for CalendarReferenceResolver;
  v45[4] = &off_28780BAC8;
  v45[0] = a3;

  v7 = a1;
  if ((a2 & 1) != 0 && (sub_2665667CC() & 1) != 0 && *(a4 + 81) == 4)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_266549000, v9, v10, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v11, 2u);
      MEMORY[0x266789690](v11, -1, -1);
    }

    v12 = *__swift_project_boxed_opaque_existential_1(v45, &type metadata for CalendarReferenceResolver);
    sub_26663E15C();
    if (v13)
    {
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266549000, v14, v15, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v16, 2u);
        MEMORY[0x266789690](v16, -1, -1);
      }

      v17 = sub_26666AA08();
      v19 = v18;
      if (sub_26666A9E8())
      {
        v20 = sub_26655F060();
      }

      else
      {
        v20 = 0;
      }

      v24 = objc_allocWithZone(MEMORY[0x277CD3C10]);
      v25 = sub_26660B190(v17, v19, v20, 0, 0, 0);

      v7 = v25;
    }

    else
    {
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266549000, v21, v22, "[FindEventsIntentWrapping] No calendar event found in SRR", v23, 2u);
        MEMORY[0x266789690](v23, -1, -1);
      }
    }
  }

  v26 = v7;
  v27 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v28 = sub_26666C168();
  __swift_project_value_buffer(v28, qword_28156D7E8);
  v29 = sub_26666C148();
  v30 = sub_26666C618();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&dword_266549000, v29, v30, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v31, 0xCu);
    sub_26658FD5C(v32);
    MEMORY[0x266789690](v32, -1, -1);
    MEMORY[0x266789690](v31, -1, -1);
  }

  sub_26658FCF4(a4, v44);
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v38 = sub_26666C318();
    v40 = v39;
    sub_26658FD2C(v44);
    v41 = sub_2665BFC90(v38, v40, &v43);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_266549000, v34, v35, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x266789690](v37, -1, -1);
    MEMORY[0x266789690](v36, -1, -1);
  }

  else
  {

    sub_26658FD2C(v44);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

uint64_t sub_26658FD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DCA0, &qword_26666E370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26658FDD4()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for OpenCalendarViewIntent();
  v1[9] = v6;
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB58, &qword_266671CB0);
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_26666A718();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_26658FF7C()
{
  v2 = *(*(v0 + 40) + 80);
  sub_26666A808();
  v3 = *(v0 + 16);
  *(v0 + 168) = v3;
  if (!v3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    v31 = sub_26666C148();
    v32 = sub_26666C5F8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266549000, v31, v32, "[OpenCalendarViewUSOIntentWrapper] Bare uso intent of summarise::commonCalendar. Creating default intent to open to day view", v33, 2u);
      OUTLINED_FUNCTION_12();
    }

    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v36 = *(v0 + 72);

    sub_266668D38();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    *(v34 + *(v36 + 20)) = 0;
    sub_26658F758(v34, v35);
    v41 = sub_26666C148();
    v42 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v42))
    {
      v43 = *(v0 + 96);
      v45 = *(v0 + 72);
      v44 = *(v0 + 80);
      v46 = OUTLINED_FUNCTION_21();
      v47 = swift_slowAlloc();
      v99 = v47;
      *v46 = 136315138;
      sub_26658F758(v44, v43);
      v48 = sub_26666C318();
      v50 = v49;
      sub_26658F7BC(v44);
      v51 = sub_2665BFC90(v48, v50, &v99);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_266549000, v41, v42, "[OpenCalendarViewUSOIntentWrapper] parsed intent: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v67 = *(v0 + 80);

      sub_26658F7BC(v67);
    }

    v68 = *(v0 + 152);
    v69 = *(v0 + 160);
    v70 = *(v0 + 144);
    v72 = *(v0 + 112);
    v71 = *(v0 + 120);
    OUTLINED_FUNCTION_2_14();
    sub_2665922E8(v1, v73);

    v74 = *(v0 + 8);
    OUTLINED_FUNCTION_14_2();

    __asm { BRAA            X1, X16 }
  }

  v4 = sub_26666A698();
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 40), *(*(v0 + 40) + 64));
    v6 = sub_266591F84(v4, *v5, MEMORY[0x277D5E8E0]);
    if (v6)
    {
      v7 = v6;

      v4 = v7;
    }
  }

  *(v0 + 176) = v4;
  v8 = sub_26666A688();
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  if (v8)
  {
    v11 = *(v0 + 120);
    sub_26666A708();

    if (__swift_getEnumTagSinglePayload(v10, 1, v9) != 1)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 120), *(v0 + 128));
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v13 = *(v0 + 152);
      v12 = *(v0 + 160);
      v14 = *(v0 + 128);
      v15 = *(v0 + 136);
      v16 = sub_26666C168();
      __swift_project_value_buffer(v16, qword_28156D7E8);
      v17 = *(v15 + 16);
      v17(v13, v12, v14);
      v18 = sub_26666C148();
      v19 = sub_26666C618();
      v20 = OUTLINED_FUNCTION_7_2(v19);
      v21 = *(v0 + 152);
      if (v20)
      {
        v98 = v19;
        v22 = *(v0 + 136);
        v23 = *(v0 + 144);
        v24 = *(v0 + 128);
        OUTLINED_FUNCTION_21();
        v97 = OUTLINED_FUNCTION_13();
        v99 = v97;
        *v14 = 136315138;
        v17(v23, v21, v24);
        v96 = sub_26666C318();
        v26 = v25;
        v27 = *(v22 + 8);
        v27(v21, v24);
        v28 = sub_2665BFC90(v96, v26, &v99);

        *(v14 + 4) = v28;
        OUTLINED_FUNCTION_5_10(&dword_266549000, v29, v98, "[OpenCalendarViewUSOIntentWrapper] Using viewPeriod %s to calculate target calendar app view");
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_12();
      }

      else
      {
        v81 = *(v0 + 128);
        v82 = *(v0 + 136);

        v27 = *(v82 + 8);
        v27(v21, v81);
      }

      v83 = *(v0 + 160);
      v84 = *(v0 + 128);
      v85 = *(v0 + 40);
      v66 = sub_266590B3C(v83);
      v27(v83, v84);
      goto LABEL_35;
    }
  }

  else
  {
    v52 = *(v0 + 120);
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v9);
  }

  sub_266557D74(*(v0 + 120), &qword_28007DB58, &qword_266671CB0);
  if (v4)
  {
    v56 = qword_28156C150;

    if (v56 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v57 = sub_26666C168();
    __swift_project_value_buffer(v57, qword_28156D7E8);

    v58 = sub_26666C148();
    v59 = sub_26666C618();

    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_21();
      v60 = OUTLINED_FUNCTION_13();
      v99 = v60;
      *v10 = 136315138;
      *(v0 + 24) = v4;
      sub_26666A6E8();

      v61 = sub_26666C318();
      v63 = sub_2665BFC90(v61, v62, &v99);

      *(v10 + 4) = v63;
      OUTLINED_FUNCTION_5_10(&dword_266549000, v64, v59, "[OpenCalendarViewUSOIntentWrapper] Using viewDate %s to calculate target calendar app view");
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    v65 = *(v0 + 40);
    v66 = sub_266590F2C();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v77 = sub_26666C168();
    __swift_project_value_buffer(v77, qword_28156D7E8);
    v78 = sub_26666C148();
    v79 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_2(v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_266549000, v78, v79, "[OpenCalendarViewUSOIntentWrapper] could not calculate target view from viewDate or viewPeriod using .day", v80, 2u);
      OUTLINED_FUNCTION_12();
    }

    v66 = 0;
  }

LABEL_35:
  *(v0 + 208) = v66;
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  if (qword_28007CDB0 != -1)
  {
    swift_once();
  }

  v86 = *(v0 + 56);
  v87 = sub_26666B628();
  __swift_project_value_buffer(v87, qword_2800956E0);
  *(v0 + 184) = sub_266668D38();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v92 = swift_task_alloc();
  *(v0 + 192) = v92;
  *v92 = v0;
  v92[1] = sub_26659074C;
  v93 = *(v0 + 56);
  OUTLINED_FUNCTION_14_2();

  __asm { BR              X4 }
}

uint64_t sub_26659074C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *(v4 + 56);
  v7 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v8 = v7;
  *(v10 + 200) = v9;

  sub_266557D74(v6, &qword_28007D140, &qword_26666F140);
  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_266590868()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = [*(v0 + 200) startDate];

    if (v2)
    {
      v3 = *(v0 + 48);
      sub_266668CE8();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v11 = *(v0 + 64);
    v12 = *(v0 + 48);
    __swift_storeEnumTagSinglePayload(v12, v4, 1, *(v0 + 184));
    sub_266557CE4(v12, v11);
  }

  else
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 64);
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 112);
  v15 = *(v0 + 72);
  sub_266557CE4(*(v0 + 64), v14);
  *(v14 + *(v15 + 20)) = v13;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v18 = sub_26666C168();
  __swift_project_value_buffer(v18, qword_28156D7E8);
  sub_26658F758(v17, v16);
  v19 = sub_26666C148();
  v20 = sub_26666C618();
  v21 = OUTLINED_FUNCTION_7_2(v20);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 104);
  if (v21)
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);
    v27 = OUTLINED_FUNCTION_21();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315138;
    sub_26658F758(v24, v25);
    v29 = sub_26666C318();
    v31 = v30;
    sub_26658F7BC(v24);
    v32 = sub_2665BFC90(v29, v31, &v42);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_266549000, v19, v20, "[OpenCalendarViewUSOIntentWrapper] parsed intent: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    sub_26658F7BC(v24);
  }

  v33 = *(v0 + 152);
  v34 = *(v0 + 160);
  v35 = *(v0 + 144);
  v36 = *(v0 + 112);
  v37 = *(v0 + 120);
  OUTLINED_FUNCTION_2_14();
  sub_2665922E8(v36, v38);

  v39 = *(v0 + 8);
  OUTLINED_FUNCTION_14_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266590B3C(uint64_t a1)
{
  v2 = sub_26666A718();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v33 - v14;
  v16 = *(v3 + 16);
  v16(&v33 - v14, a1, v2);
  v17 = (*(v3 + 88))(v15, v2);
  if (v17 == *MEMORY[0x277D5E930])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D5E920])
  {
    return 3;
  }

  if (v17 == *MEMORY[0x277D5E958] || v17 == *MEMORY[0x277D5E980])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D5E978])
  {
    return 0;
  }

  if (v17 == *MEMORY[0x277D5E938])
  {
    return 2;
  }

  v20 = v17 == *MEMORY[0x277D5E970] || v17 == *MEMORY[0x277D5E940];
  v21 = v20 || v17 == *MEMORY[0x277D5E948];
  if (v21 || v17 == *MEMORY[0x277D5E928])
  {
    return 0;
  }

  if (v17 == *MEMORY[0x277D5E960] || v17 == *MEMORY[0x277D5E968])
  {
    return 2;
  }

  if (v17 != *MEMORY[0x277D5E950])
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v24 = sub_26666C168();
    __swift_project_value_buffer(v24, qword_28156D7E8);
    v16(v12, a1, v2);
    v25 = sub_26666C148();
    v26 = sub_26666C608();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v27 = 136315138;
      v16(v8, v12, v2);
      v34 = sub_26666C318();
      v29 = v28;
      v30 = *(v3 + 8);
      v30(v12, v2);
      v31 = sub_2665BFC90(v34, v29, &v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_266549000, v25, v26, "[OpenCalendarViewUSOIntentWrapper] unexpected viewPeriod of %s returning .day", v27, 0xCu);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x266789690](v32, -1, -1);
      MEMORY[0x266789690](v27, -1, -1);
    }

    else
    {

      v30 = *(v3 + 8);
      v30(v12, v2);
    }

    v30(v15, v2);
    return 0;
  }

  return 1;
}

uint64_t sub_266590F2C()
{
  if (sub_2665913F8())
  {
    return 0;
  }

  if (sub_266591630())
  {
    return 1;
  }

  if ((sub_2665917B4() & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v1 = sub_26666C168();
    __swift_project_value_buffer(v1, qword_28156D7E8);

    v2 = sub_26666C148();
    v3 = sub_26666C5F8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      sub_26666A6E8();

      v6 = sub_26666C318();
      v8 = sub_2665BFC90(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_266549000, v2, v3, "[OpenCalendarViewUSOIntentWrapper] Could not determine date granularity from %s using .day as default ", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x266789690](v5, -1, -1);
      MEMORY[0x266789690](v4, -1, -1);
    }

    return 0;
  }

  return 2;
}

uint64_t sub_2665910D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2665910FC, 0, 0);
}

uint64_t sub_2665910FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);

    *(v0 + 48) = sub_26666A6A8();
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_26659128C;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 72);
    v6 = *(v0 + 24);

    return sub_26660988C();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_266549000, v9, v10, "[CalendarDateTimeResolving] UsoEntity_common_DateTime not present or is empty, not resolving date component range", v11, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_26659128C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v8 = v7;
  *(v10 + 64) = v9;

  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266591398()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2665913F8()
{
  v0 = sub_26666A718();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB70, &qword_266671CD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v17 - v9;
  if (sub_26666A6D8())
  {
LABEL_10:

    goto LABEL_11;
  }

  if (!sub_26666A6C8())
  {
    v12 = sub_26666A5D8();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
LABEL_6:
    sub_266557D74(v10, &qword_28007DB70, &qword_266671CD0);
    if (!sub_26666A6C8() || (v13 = sub_26666A5F8(), , !v13))
    {
      if (!sub_26666A6C8() || (v14 = sub_26666A598(), , !v14))
      {
        (*(v1 + 104))(v5, *MEMORY[0x277D5E940], v0);
        v15 = sub_2665918E4(v5);
        (*(v1 + 8))(v5, v0);
        return v15 & 1;
      }
    }

    goto LABEL_10;
  }

  sub_26666A5C8();

  v11 = sub_26666A5D8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  sub_266557D74(v10, &qword_28007DB70, &qword_266671CD0);
LABEL_11:
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_266591630()
{
  v0 = sub_26666A718();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26666A6C8() && (v6 = sub_26666A5A8(), , v6))
  {
  }

  else
  {
    v7 = v1[13];
    v7(v5, *MEMORY[0x277D5E950], v0);
    v8 = sub_2665918E4(v5);
    v9 = v1[1];
    v9(v5, v0);
    if ((v8 & 1) == 0)
    {
      v7(v5, *MEMORY[0x277D5E920], v0);
      v10 = sub_2665918E4(v5);
      v9(v5, v0);
      return v10 & 1;
    }
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t sub_2665917B4()
{
  v0 = sub_26666A718();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26666A6C8() && (v6 = sub_26666A5B8(), , v6))
  {

    v7 = 1;
  }

  else
  {
    (*(v1 + 104))(v5, *MEMORY[0x277D5E960], v0);
    v7 = sub_2665918E4(v5);
    (*(v1 + 8))(v5, v0);
  }

  return v7 & 1;
}

uint64_t sub_2665918E4(uint64_t a1)
{
  v2 = sub_26666A6B8();
  v3 = v2;
  if (v2)
  {
    v4 = sub_26666A6F8();

    if (v4)
    {
      MEMORY[0x28223BE20](v5, v6);
      v8[2] = a1;
      v3 = sub_266591E70(sub_26659234C, v8, v4);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_266591998(uint64_t *a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_26666A718();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB60, &qword_266671CC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB58, &qword_266671CB0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v34 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v34 - v24;
  v26 = *a1;
  sub_26666A3D8();
  if (v37 && (v27 = sub_26666AD18(), , v27))
  {
    sub_26666A708();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v3);
  }

  (*(v4 + 16))(v22, v36, v3);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v3);
  v28 = *(v8 + 48);
  sub_26659236C(v25, v12, &qword_28007DB58, &qword_266671CB0);
  sub_26659236C(v22, &v12[v28], &qword_28007DB58, &qword_266671CB0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
  {
    sub_26659236C(v12, v18, &qword_28007DB58, &qword_266671CB0);
    if (__swift_getEnumTagSinglePayload(&v12[v28], 1, v3) != 1)
    {
      v30 = &v12[v28];
      v31 = v35;
      (*(v4 + 32))(v35, v30, v3);
      sub_2665923D4();
      v29 = sub_26666C2E8();
      v32 = *(v4 + 8);
      v32(v31, v3);
      sub_266557D74(v22, &qword_28007DB58, &qword_266671CB0);
      sub_266557D74(v25, &qword_28007DB58, &qword_266671CB0);
      v32(v18, v3);
      sub_266557D74(v12, &qword_28007DB58, &qword_266671CB0);
      return v29 & 1;
    }

    sub_266557D74(v22, &qword_28007DB58, &qword_266671CB0);
    sub_266557D74(v25, &qword_28007DB58, &qword_266671CB0);
    (*(v4 + 8))(v18, v3);
    goto LABEL_10;
  }

  sub_266557D74(v22, &qword_28007DB58, &qword_266671CB0);
  sub_266557D74(v25, &qword_28007DB58, &qword_266671CB0);
  if (__swift_getEnumTagSinglePayload(&v12[v28], 1, v3) != 1)
  {
LABEL_10:
    sub_266557D74(v12, &qword_28007DB60, &qword_266671CC8);
    v29 = 0;
    return v29 & 1;
  }

  sub_266557D74(v12, &qword_28007DB58, &qword_266671CB0);
  v29 = 1;
  return v29 & 1;
}

BOOL sub_266591DC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_266591E70(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_2665C485C(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x266788B60](v7, a3);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_266591F84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_26666C228();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v32 - v20;
  sub_26666A218();
  v22 = sub_26666C038();

  if ((v22 & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v23 = sub_26666C168();
    __swift_project_value_buffer(v23, qword_28156D7E8);

    v24 = sub_26666C148();
    v25 = sub_26666C618();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_21();
      v26 = OUTLINED_FUNCTION_13();
      v32 = a1;
      v33 = v26;
      *v10 = 136315138;
      a3(0);

      v27 = sub_26666C318();
      v29 = sub_2665BFC90(v27, v28, &v33);

      *(v10 + 4) = v29;
      OUTLINED_FUNCTION_5_10(&dword_266549000, v30, v25, "[CalendarReferenceResolver] %s has no reference to resolve");
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    return 0;
  }

  sub_26666A218();
  sub_26663C5A0();

  sub_26659236C(v21, v18, &qword_28007ED70, &qword_266671CC0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_266557D74(v21, &qword_28007ED70, &qword_266671CC0);
    return 0;
  }

  (*(v6 + 32))(v10, v18, v5);
  sub_26666C218();
  a3(0);
  sub_26666A7D8();

  (*(v6 + 8))(v10, v5);
  sub_266557D74(v21, &qword_28007ED70, &qword_266671CC0);
  return v33;
}

uint64_t sub_2665922E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenCalendarViewIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26659236C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2665923D4()
{
  result = qword_28007DB68;
  if (!qword_28007DB68)
  {
    sub_26666A718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB68);
  }

  return result;
}

uint64_t sub_266592434(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_266592474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_14()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v7 = v0[7];
  v8 = v0[6];
  v5 = v0[4];
}

void OUTLINED_FUNCTION_5_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t type metadata accessor for UpdateEventCATsSimple()
{
  result = qword_28007DB78;
  if (!qword_28007DB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665925A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665925B4()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_26666EED0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v4 = *(MEMORY[0x277D55C70] + 4);
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2665926E0;
  v6 = v0[3];

  return v8(0xD000000000000027, 0x800000026667E2C0, v2);
}

uint64_t sub_2665926E0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_6_5();

    return v14(v13);
  }
}

uint64_t sub_266592808()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_24_1();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_266592864()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 96) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266592900()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_266671D50;
  strcpy((v2 + 32), "updatedEvent");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 24);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000026667E280;
  v5 = 0;
  if (v4)
  {
    v5 = sub_26666BB78();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  *(v2 + 96) = v4;
  *(v2 + 120) = v5;
  *(v2 + 128) = 0x656C74695477656ELL;
  *(v2 + 136) = 0xE800000000000000;
  sub_266566430(v7, v6, &unk_28007D130, &unk_266671DF0);
  v8 = sub_26666BDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  v10 = *(v0 + 64);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  if (EnumTagSinglePayload == 1)
  {
    v13 = *(v0 + 24);

    sub_266594028(v10, &unk_28007D130, &unk_266671DF0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v8;
    __swift_allocate_boxed_opaque_existential_1((v2 + 144));
    OUTLINED_FUNCTION_4_5(v8);
    (*(v14 + 32))();
  }

  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  *(v2 + 176) = 0x7469766E4977656ELL;
  *(v2 + 184) = 0xEB00000000736565;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v2 + 192) = v16;
  *(v2 + 216) = v17;
  *(v2 + 224) = 0x7461636F4C77656ELL;
  *(v2 + 232) = 0xEB000000006E6F69;
  v18 = 0;
  if (v15)
  {
    v18 = sub_26666BD58();
  }

  else
  {
    *(v2 + 248) = 0;
    *(v2 + 256) = 0;
  }

  v19 = *(v0 + 96);
  *(v2 + 240) = v15;
  *(v2 + 264) = v18;
  *(v2 + 272) = 0x776F6C6C6F467369;
  *(v2 + 280) = 0xEA00000000007055;
  *(v2 + 312) = MEMORY[0x277D839B0];
  *(v2 + 288) = v19;
  v20 = *(MEMORY[0x277D55C70] + 4);
  v25 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 80) = v21;
  *v21 = v22;
  v21[1] = sub_266592C28;
  v23 = *(v0 + 56);

  return v25(0xD000000000000019, 0x800000026667E2A0, v2);
}

uint64_t sub_266592C28()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = OUTLINED_FUNCTION_5_11();

    return v15(v14);
  }
}

uint64_t sub_266592D58()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_24_1();
  v4 = v0[11];

  return v3();
}

uint64_t sub_266592DBC(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266592DE0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_266671D60);
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 66);
  v6 = *(v0 + 65);
  v7 = *(v0 + 64);
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  v2[5].n128_u64[0] = 0x4C794264656B7361;
  v2[5].n128_u64[1] = 0xEF6E6F697461636FLL;
  v8 = MEMORY[0x277D839B0];
  v2[6].n128_u8[0] = v7;
  v2[7].n128_u64[1] = v8;
  v2[8].n128_u64[0] = 0x49794264656B7361;
  v2[8].n128_u64[1] = 0xEF7365657469766ELL;
  v2[9].n128_u8[0] = v6;
  v2[10].n128_u64[1] = v8;
  v2[11].n128_u64[0] = 0xD000000000000015;
  v2[11].n128_u64[1] = 0x800000026667E230;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v2[12].n128_u64[1] = 0;
    v2[13].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  v2[12].n128_u64[0] = v9;
  v2[13].n128_u64[1] = v10;
  v11 = *(MEMORY[0x277D55C70] + 4);
  v16 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 48) = v12;
  *v12 = v13;
  v12[1] = sub_266592FCC;
  v14 = *(v0 + 32);

  return v16(0xD000000000000021, 0x800000026667E250, v2);
}

uint64_t sub_266592FCC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_6_5();

    return v14(v13);
  }
}

uint64_t sub_2665930F4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_24_1();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_266593150()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665931E0()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_26666EED0;
  *(v3 + 32) = 0x756C6156746F6C73;
  *(v3 + 40) = 0xE900000000000065;
  sub_266566430(v2, v1, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_14_5() == 1)
  {
    sub_266594028(v0[4], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_5(v4);
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_17_5();
    v7();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v12 = v8;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_266593388;
  v10 = v0[3];

  return v12(0xD00000000000001ELL, 0x800000026667E210, v3);
}

uint64_t sub_266593388()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_5_11();

    return v15(v14);
  }
}

uint64_t sub_2665934B8()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_24_1();
  v4 = v0[7];

  return v3();
}

uint64_t sub_26659351C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_26658BF28;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000023, 0x800000026667E1E0, v3);
}

uint64_t sub_2665935D4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665935EC()
{
  OUTLINED_FUNCTION_36_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000026667E1C0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55C70];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_7_9(v3);
  v10 = v4;
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 32) = v6;
  *v6 = v7;
  v6[1] = sub_26659370C;
  v8 = *(v0 + 16);

  return v10(0xD000000000000023, 0x800000026667E190, v2);
}

uint64_t sub_26659370C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_6_5();

    return v14(v13);
  }
}

uint64_t sub_266593834()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_24_1();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_266593890()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266593930()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_266671D70;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x800000026667E140;
  sub_266566430(v2, v1, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_14_5() == 1)
  {
    sub_266594028(v0[6], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_5(v4);
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_17_5();
    v7();
  }

  v8 = v0[5];
  v9 = v0[3];
  *(v3 + 80) = 0x746954746E657665;
  *(v3 + 88) = 0xEA0000000000656CLL;
  sub_266566430(v9, v8, &unk_28007D130, &unk_266671DF0);
  if (OUTLINED_FUNCTION_14_5() == 1)
  {
    sub_266594028(v0[5], &unk_28007D130, &unk_266671DF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_4_5(v4);
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_17_5();
    v12();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v18 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[8] = v14;
  *v14 = v15;
  v14[1] = sub_266593B7C;
  v16 = v0[4];

  return v18(0xD000000000000022, 0x800000026667E160, v3);
}

uint64_t sub_266593B7C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = OUTLINED_FUNCTION_5_11();

    return v16(v15);
  }
}

uint64_t sub_266593CB8()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_24_1();
  v5 = v0[9];

  return v4();
}

uint64_t sub_266593D28()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_17_5();
  return sub_266593D78(v3, v4);
}

uint64_t sub_266593D78(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  sub_266566430(a1, &v22 - v19, &qword_28007D2B0, &qword_26666E5F0);
  (*(v8 + 16))(v13, a2, v2);
  v20 = sub_26666BDB8();
  (*(v8 + 8))(a2, v2);
  sub_266594028(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v20;
}

uint64_t sub_266593EF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v13, a2, v3);
  v16 = sub_26666BDC8();
  (*(v8 + 8))(a2, v3);
  return v16;
}

uint64_t sub_266593FF0()
{
  v0 = sub_26666BDE8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_266594028(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_9@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

__n128 *OUTLINED_FUNCTION_11_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E657665;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t ComposeEventAppIntent.title.getter()
{
  v1 = *v0;
  sub_26666BFD8();
  return v3;
}

uint64_t (*ComposeEventAppIntent.title.modify())()
{
  v2 = OUTLINED_FUNCTION_0_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_15(v3);
  v4 = *v0;
  *(v1 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ComposeEventAppIntent.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(v1 + 8);
  sub_26655E020(a1, &v11 - v9);
  sub_26666BFE8();
  return sub_266574608(a1);
}

uint64_t (*ComposeEventAppIntent.startDate.modify())()
{
  v2 = OUTLINED_FUNCTION_0_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_15(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t sub_2665943DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  sub_26655E020(a1, &v11 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB0, &qword_266671E20);
  OUTLINED_FUNCTION_7(v8);
  v9 = sub_26666BFB8();
  sub_266574608(a1);
  return v9;
}

uint64_t ComposeEventAppIntent.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(v1 + 16);
  sub_26655E020(a1, &v11 - v9);
  sub_26666BFE8();
  return sub_266574608(a1);
}

uint64_t (*ComposeEventAppIntent.endDate.modify())()
{
  v2 = OUTLINED_FUNCTION_0_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_15(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t property wrapper backing initializer of ComposeEventAppIntent.isAllDay()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB8, &qword_266671E28);
  OUTLINED_FUNCTION_7(v0);
  return sub_26666BFB8();
}

uint64_t ComposeEventAppIntent.isAllDay.getter()
{
  v1 = *(v0 + 24);
  sub_26666BFD8();
  return v3;
}

uint64_t (*ComposeEventAppIntent.isAllDay.modify())()
{
  v2 = OUTLINED_FUNCTION_0_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_15(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t _s19SiriCalendarIntents21ComposeEventAppIntentV5titleSSSgvpfP_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBA8, &unk_266671E10);
  OUTLINED_FUNCTION_7(v0);
  return sub_26666BFB8();
}

uint64_t ComposeEventAppIntent.location.getter()
{
  v1 = *(v0 + 32);
  sub_26666BFD8();
  return v3;
}

uint64_t (*ComposeEventAppIntent.location.modify())()
{
  v2 = OUTLINED_FUNCTION_0_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_15(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t property wrapper backing initializer of ComposeEventAppIntent.focus()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBC0, &qword_266671E30);
  OUTLINED_FUNCTION_7(v0);
  return sub_26666BFB8();
}

uint64_t ComposeEventAppIntent.focus.getter()
{
  v1 = *(v0 + 40);
  sub_26666BFD8();
  return v3;
}

uint64_t (*ComposeEventAppIntent.focus.modify())()
{
  v2 = OUTLINED_FUNCTION_0_16();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_15(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = sub_26666BFC8();
  return sub_26659492C;
}

void sub_266594930(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static ComposeEventAppIntent.Focus.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = *static ComposeEventAppIntent.Focus.enumIdentifier;

  return v0;
}

uint64_t static ComposeEventAppIntent.Focus.enumIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ComposeEventAppIntent.Focus.enumIdentifier = a1;
  qword_28007DBA0 = a2;
}

SiriCalendarIntents::ComposeEventAppIntent::Focus_optional __swiftcall ComposeEventAppIntent.Focus.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_26666C958();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t ComposeEventAppIntent.Focus.rawValue.getter(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x7961447472617473;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x796144646E65;
      break;
    case 4:
      result = 0x656D6954646E65;
      break;
    case 5:
      result = 0x6E65727275636572;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266594C1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266603F00();
}

SiriCalendarIntents::ComposeEventAppIntent::Focus_optional sub_266594C40@<W0>(Swift::String *a1@<X0>, SiriCalendarIntents::ComposeEventAppIntent::Focus_optional *a2@<X8>)
{
  result.value = ComposeEventAppIntent.Focus.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_266594C70@<X0>(uint64_t *a1@<X8>)
{
  result = ComposeEventAppIntent.Focus.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266594C9C()
{
  swift_beginAccess();
  v0 = *static ComposeEventAppIntent.Focus.enumIdentifier;

  return v0;
}

uint64_t sub_266594D00(uint64_t a1)
{
  v2 = sub_266595724();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_266594D3C(uint64_t a1)
{
  v2 = sub_266595724();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_266594D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2665952A8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_266594DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266595724();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_266594E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2665952A8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t ComposeEventAppIntent.init(snippetModel:focus:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v37 - v13;
  v40 = 0;
  v41 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBA8, &unk_266671E10);
  OUTLINED_FUNCTION_7(v15);
  sub_26666BFB8();
  sub_266668D38();
  OUTLINED_FUNCTION_4_15();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB0, &qword_266671E20);
  OUTLINED_FUNCTION_7(v16);
  v37[0] = sub_26666BFB8();
  sub_266574608(v14);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_3_16();
  v37[1] = sub_26666BFB8();
  sub_266574608(v14);
  v40 = 0;
  v41 = 0;
  v17 = *(v15 + 48);
  v18 = *(v15 + 52);
  swift_allocObject();
  v19 = sub_26666BFB8();
  LOBYTE(v40) = 7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBC0, &qword_266671E30);
  OUTLINED_FUNCTION_7(v20);

  v21 = sub_26666BFB8();
  if (a1[4])
  {
    v22 = a1[3];
    v23 = a1[4];
  }

  else
  {
    v22 = a1[1];
    v24 = a1[2];
  }

  v40 = v22;
  v41 = v23;
  v25 = *(v15 + 48);
  v26 = *(v15 + 52);
  swift_allocObject();

  v27 = sub_26666BFB8();

  v28 = type metadata accessor for Snippet.ComposeEventModel();
  sub_26655E020(a1 + v28[7], v14);
  sub_26655E020(v14, v11);
  OUTLINED_FUNCTION_3_16();

  v29 = sub_26666BFB8();

  sub_266574608(v14);
  sub_26655E020(a1 + v28[8], v14);
  sub_26655E020(v14, v11);
  OUTLINED_FUNCTION_3_16();

  v30 = sub_26666BFB8();

  sub_266574608(v14);
  LOBYTE(v40) = *(a1 + v28[9]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB8, &qword_266671E28);
  OUTLINED_FUNCTION_7(v31);

  v32 = sub_26666BFB8();
  v33 = (a1 + v28[12]);
  v34 = v33[1];
  v40 = *v33;
  v41 = v34;

  sub_26666BFE8();

  LOBYTE(v40) = v38;
  sub_26666BFE8();

  result = sub_266574860(a1);
  v36 = v39;
  *v39 = v27;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v32;
  v36[4] = v19;
  v36[5] = v21;
  return result;
}

unint64_t sub_2665951F8()
{
  result = qword_28007DBC8;
  if (!qword_28007DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBC8);
  }

  return result;
}

unint64_t sub_266595250()
{
  result = qword_28007DBD0;
  if (!qword_28007DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBD0);
  }

  return result;
}

unint64_t sub_2665952A8()
{
  result = qword_28007DBD8;
  if (!qword_28007DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBD8);
  }

  return result;
}

unint64_t sub_266595300()
{
  result = qword_28007DBE0;
  if (!qword_28007DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBE0);
  }

  return result;
}

unint64_t sub_266595358()
{
  result = qword_28007DBE8;
  if (!qword_28007DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBE8);
  }

  return result;
}

unint64_t sub_2665953BC()
{
  result = qword_28007DBF0;
  if (!qword_28007DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007DBF8, &qword_266671F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBF0);
  }

  return result;
}

unint64_t sub_266595420()
{
  result = qword_28007DC00;
  if (!qword_28007DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC00);
  }

  return result;
}

unint64_t sub_266595478()
{
  result = qword_28007DC08;
  if (!qword_28007DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC08);
  }

  return result;
}

unint64_t sub_2665954D0()
{
  result = qword_28007DC10;
  if (!qword_28007DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC10);
  }

  return result;
}

uint64_t sub_266595524(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_266595564(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ComposeEventAppIntent.Focus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComposeEventAppIntent.Focus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266595724()
{
  result = qword_28007DC18;
  if (!qword_28007DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_16()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  return sub_26655E020(v1, v2);
}

uint64_t sub_2665957F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 < 0 || sub_26666C4F8() <= a1)
  {
    v5 = 1;
  }

  else
  {
    sub_26666C518();
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v5, 1, a2);
}

_BYTE *storeEnumTagSinglePayload for ParticipantListComparator(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26659595C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC30, &qword_266672208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266672100;
  *(inited + 32) = sub_266595ABC;
  *(inited + 40) = 0;
  *(inited + 48) = sub_266595B34;
  *(inited + 56) = 0;
  *(inited + 64) = sub_266595C18;
  *(inited + 72) = 0;
  v5 = a1;
  v6 = a2;
  v7 = 0;
  while (1)
  {
    v8 = v7 + 16;
    if (v7 == 48)
    {
      break;
    }

    v9 = inited + v7;
    v11 = *(v9 + 32);
    v10 = *(v9 + 40);
    v15 = v6;
    v16 = v5;

    v11(&v14, &v16, &v15);

    v7 = v8;
    if (v14)
    {
      v15 = v6;
      v16 = v5;

      v11(&v14, &v16, &v15);

      swift_setDeallocating();
      sub_266639188();
      v12 = v14;
      goto LABEL_6;
    }
  }

  swift_setDeallocating();
  sub_266639188();
  v12 = 0;
LABEL_6:

  return v12;
}

uint64_t sub_266595ABC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_266666780() & 1;
  result = sub_266666780();
  if (v6 == (result & 1))
  {
    v8 = 0;
  }

  else
  {
    result = sub_266666780();
    v8 = -1;
    if ((result & 1) == 0)
    {
      v8 = 1;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t sub_266595B34@<X0>(id *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 status];
  if (v6 > 7)
  {
    v7 = 99;
  }

  else
  {
    v7 = qword_266672220[v6];
  }

  result = [v5 status];
  if (result > 7)
  {
    v9 = 99;
  }

  else
  {
    v9 = qword_266672220[result];
  }

  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v4 status];
    if (v11 > 7)
    {
      v12 = 99;
    }

    else
    {
      v12 = qword_266672220[v11];
    }

    result = [v5 status];
    if (result > 7)
    {
      v13 = 99;
    }

    else
    {
      v13 = qword_266672220[result];
    }

    v14 = v12 >= v13;
    v10 = -1;
    if (v14)
    {
      v10 = 1;
    }
  }

  *a3 = v10;
  return result;
}

uint64_t sub_266595C18@<X0>(id *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC38, &unk_266672210);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v26 - v9;
  v11 = *a2;
  v12 = [*a1 person];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 displayName];

    v15 = sub_26666C308();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v26[2] = v15;
  v26[3] = v17;
  v18 = [v11 person];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 displayName];

    v19 = sub_26666C308();
    v22 = v21;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v26[0] = v19;
  v26[1] = v22;
  v23 = sub_266668D98();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
  sub_266595F88();
  v24 = sub_26666C708();
  sub_266595FDC(v10);

  *a3 = v24;
  return result;
}

uint64_t sub_266595DF0()
{
  sub_26666CB88();
  sub_266668ED8();
  return sub_26666CBC8();
}

uint64_t sub_266595E88()
{
  v1 = *v0;
  sub_26666CB88();
  sub_266668ED8();
  return sub_26666CBC8();
}

uint64_t sub_266595ECC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266595DDC();
}

unint64_t sub_266595EDC()
{
  result = qword_28007DC20;
  if (!qword_28007DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC20);
  }

  return result;
}

unint64_t sub_266595F34()
{
  result = qword_28007DC28;
  if (!qword_28007DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC28);
  }

  return result;
}

unint64_t sub_266595F88()
{
  result = qword_28156C140;
  if (!qword_28156C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156C140);
  }

  return result;
}

uint64_t sub_266595FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC38, &unk_266672210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266596044(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266596058()
{
  v40 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = *(v0 + 72);
  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C618();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = OUTLINED_FUNCTION_21();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
    swift_beginAccess();
    v10 = *(v6 + v9);
    sub_26659A3E0();

    v11 = sub_26666C558();
    v13 = v12;

    v14 = sub_2665BFC90(v11, v13, &v39);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_266549000, v4, v5, "[UpdateEvent.IntentHandler] parametersToUpdate: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_12();
  }

  v15 = *(v0 + 64);
  v16 = __swift_project_boxed_opaque_existential_1((*(v0 + 72) + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider), *(*(v0 + 72) + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider + 24));
  v17 = sub_2666514C0(v15, *v16);
  if ([v17 unsupportedReason])
  {
    v18 = sub_26666C148();
    v19 = sub_26666C618();
    if (!OUTLINED_FUNCTION_7_1(v19))
    {
      goto LABEL_14;
    }

LABEL_10:
    v25 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v25);
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_12();
    goto LABEL_14;
  }

  v20 = *(v0 + 72);
  v21 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
  OUTLINED_FUNCTION_41();
  v22 = *(*(v20 + v21) + 16);
  v18 = sub_26666C148();
  v23 = sub_26666C618();
  v24 = OUTLINED_FUNCTION_7_1(v23);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v24)
  {
    v31 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v31);
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
    OUTLINED_FUNCTION_12();
  }

  sub_266552C44(0, &unk_28007D170, 0x277CD4218);
  v18 = v17;
  v17 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_14:

  OUTLINED_FUNCTION_8();

  return v37(v17);
}

uint64_t sub_266596358(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26655603C;

  return sub_266596044(v6);
}

uint64_t sub_26659641C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_266596430()
{
  v1 = sub_26659A29C(*(v0 + 40), &selRef_setTitle);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v5 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v5, qword_28156D7E8);

    v6 = sub_26666C148();
    v7 = sub_26666C618();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_21();
      v9 = swift_slowAlloc();
      v42 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2665BFC90(v3, v4, &v42);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_9_5();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_6();
    v15 = sub_26666C2F8();

    v16 = [v6 successWithResolvedString:v15];
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
    OUTLINED_FUNCTION_41();
    v19 = *(v17 + v18);
    if (*(v19 + 16))
    {
      v20 = *(v19 + 40);
      sub_26666CB88();

      sub_26666C368();
      v21 = sub_26666CBC8();
      v22 = -1 << *(v19 + 32);
      v23 = v21 & ~v22;
      if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          switch(*(*(v19 + 48) + v23))
          {
            case 1:

              goto LABEL_22;
            case 2:
            case 3:
              goto LABEL_13;
            case 4:
              OUTLINED_FUNCTION_5_12();
              goto LABEL_13;
            default:
              OUTLINED_FUNCTION_19_6();
LABEL_13:
              v25 = sub_26666CAC8();

              if (v25)
              {
LABEL_22:

                if (qword_28156C150 != -1)
                {
                  OUTLINED_FUNCTION_1_1();
                }

                v33 = sub_26666C168();
                OUTLINED_FUNCTION_11_4(v33, qword_28156D7E8);
                v34 = sub_26666C148();
                v35 = sub_26666C618();
                if (OUTLINED_FUNCTION_9(v35))
                {
                  v36 = OUTLINED_FUNCTION_20();
                  OUTLINED_FUNCTION_15(v36);
                  OUTLINED_FUNCTION_4_0(&dword_266549000, v37, v38, "[UpdateEvent.IntentHandler] No title set on intent, returning needsValue");
                  OUTLINED_FUNCTION_10();
                }

                sub_266552C44(0, &unk_28007D170, 0x277CD4218);
                v32 = [swift_getObjCClassFromMetadata() needsValue];
                goto LABEL_27;
              }

              v23 = (v23 + 1) & v24;
              if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_15;
              }

              break;
          }
        }
      }

LABEL_15:
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v26 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
    v27 = sub_26666C148();
    v28 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v28))
    {
      v29 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v29);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v30, v31, "[UpdateEvent.IntentHandler] setTitle not required");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &unk_28007D170, 0x277CD4218);
    v32 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_27:
    v39 = v32;
  }

  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_47_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2665968E8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_26659641C(v6);
}

uint64_t sub_2665969AC()
{
  OUTLINED_FUNCTION_14();
  v1[15] = v2;
  v1[16] = v0;
  v3 = sub_266668EB8();
  v1[17] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[18] = v4;
  v6 = *(v5 + 64);
  v1[19] = OUTLINED_FUNCTION_19();
  v7 = sub_266668E68();
  v1[20] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[21] = v8;
  v10 = *(v9 + 64);
  v1[22] = OUTLINED_FUNCTION_19();
  v11 = sub_266668B08();
  v1[23] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[24] = v12;
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_19();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v16 = sub_266668D38();
  v1[27] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[28] = v17;
  v19 = *(v18 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266596B8C, 0, 0);
}

uint64_t sub_266596B8C()
{
  v2 = [*(v0 + 120) setDateTimeRange];
  if (v2)
  {
    v3 = v2;
    v4 = &off_279BCF000;
    v5 = [v2 startDate];
    if (v5)
    {
      v6 = v5;
      v8 = *(v0 + 240);
      v7 = *(v0 + 248);
      v9 = *(v0 + 216);
      v10 = *(v0 + 224);
      sub_266668CE8();

      sub_266668CF8();
      OUTLINED_FUNCTION_15_2();
      LOBYTE(v6) = sub_266668CA8();
      v11 = *(v10 + 8);
      v11(v8, v9);
      if (v6)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v12 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v12, qword_28156D7E8);
        v13 = sub_26666C148();
        v14 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v14))
        {
          v15 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v15);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v16, v17, "[UpdateEvent.IntentHandler] past setDateTimeRange given, returning unsupported");
          OUTLINED_FUNCTION_10();
        }

        v18 = *(v0 + 248);
        v19 = *(v0 + 216);

        sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
        v20 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v11(v18, v19);
LABEL_65:

        goto LABEL_73;
      }

      v11(*(v0 + 248), *(v0 + 216));
    }

    v36 = *(v0 + 128);
    v37 = sub_26659A29C(*(v0 + 120), &selRef_targetEventIdentifier);
    v39 = v38;
    v40 = (v36 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider);
    OUTLINED_FUNCTION_36_1((v36 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider), *(v36 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider + 24));
    v41 = type metadata accessor for EventProvider();
    OUTLINED_FUNCTION_48_0(v41, &off_287806290);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v39)
    {
      OUTLINED_FUNCTION_36_1((v0 + 56), *(v0 + 80));

      v42 = sub_26655A8B4();
      v43 = sub_26665140C(v37, v39, v42);

      swift_bridgeObjectRelease_n();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      if (v43)
      {
        v44 = v3;
        v45 = sub_2665D2370();

        if ((v45 & 1) != 0 && ([v43 isAllDay] & 1) == 0)
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v62 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v62, qword_28156D7E8);
          v63 = sub_26666C148();
          v64 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_2(v64))
          {
            v65 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_42_1(v65);
            OUTLINED_FUNCTION_29_3(&dword_266549000, v66, v67, "[UpdateEvent.IntentHandler] Target Event is not all day but date time value is all day. Pushing event to new day but keeping time.");
            OUTLINED_FUNCTION_4_2();
          }

          v68 = v44;
          sub_2665D289C();
          v70 = v69;

          goto LABEL_54;
        }

        v46 = [v44 startDate];
        if (!v46)
        {
          goto LABEL_45;
        }

        v47 = v46;
        v48 = *(v0 + 232);
        sub_266668CE8();

        v49 = [v44 endDateComponents];
        v50 = *(v0 + 208);
        v51 = *(v0 + 184);
        if (v49)
        {
          v4 = v49;
          v52 = *(v0 + 208);
          sub_266668A28();

          __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
          sub_266557D74(v50, &unk_28007DC90, &qword_266676EB0);
          v53 = v44;
          sub_2665D3034();
          v55 = v54;

          if ((v55 & 1) == 0)
          {
LABEL_44:
            (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
LABEL_45:
            v70 = v44;
            sub_2665D1CD4();

LABEL_54:
            v90 = *(v0 + 120);
            v3 = v70;
            v91 = sub_26659A29C(v90, &selRef_targetEventIdentifier);
            v93 = v92;
            v94 = __swift_project_boxed_opaque_existential_1(v40, v40[3]);
            v20 = sub_266616490(v3, *v94, v91, v93);

            if (v20)
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1();
              }

              v95 = sub_26666C168();
              OUTLINED_FUNCTION_11_4(v95, qword_28156D7E8);
              v96 = sub_26666C148();
              v97 = sub_26666C618();
              if (OUTLINED_FUNCTION_7_2(v97))
              {
                v98 = OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_42_1(v98);
                OUTLINED_FUNCTION_29_3(&dword_266549000, v99, v100, "[UpdateEvent.IntentHander] Conflicting results found, confirming");
                OUTLINED_FUNCTION_4_2();
              }
            }

            else
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1();
              }

              v101 = sub_26666C168();
              OUTLINED_FUNCTION_11_4(v101, qword_28156D7E8);
              v102 = sub_26666C148();
              v103 = sub_26666C618();
              if (OUTLINED_FUNCTION_7_1(v103))
              {
                v104 = OUTLINED_FUNCTION_21();
                v105 = swift_slowAlloc();
                *v104 = 138412290;
                *(v104 + 4) = v3;
                *v105 = v3;
                v106 = v3;
                _os_log_impl(&dword_266549000, v102, OS_LOG_TYPE_DEFAULT, "[UpdateEvent.IntentHandler] returning success for setDateTimeRange: %@", v104, 0xCu);
                sub_266557D74(v105, &unk_28007DCA0, &qword_26666E370);
                OUTLINED_FUNCTION_4_2();
                OUTLINED_FUNCTION_9_5();
              }

              v20 = [objc_opt_self() successWithResolvedDateComponentsRange_];
            }

            goto LABEL_65;
          }
        }

        else
        {
          __swift_storeEnumTagSinglePayload(*(v0 + 208), 1, 1, *(v0 + 184));
          sub_266557D74(v50, &unk_28007DC90, &qword_266676EB0);
        }

        v71 = v44;
        v72 = sub_2665D2370();

        if ((v72 & 1) == 0)
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v73 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v73, qword_28156D7E8);
          v74 = sub_26666C148();
          v75 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_2(v75))
          {
            v76 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_42_1(v76);
            _os_log_impl(&dword_266549000, v74, v75, "[UpdateEvent.IntentHandler] End date components are not set, using existing event duration or default duration as new time", v4, 2u);
            OUTLINED_FUNCTION_4_2();
          }

          v130 = v71;
          v126 = v43;
          if ([v43 isAllDay])
          {
            OUTLINED_FUNCTION_36_1(v40, v40[3]);
            sub_26655AAD0();
          }

          else
          {
            [v43 duration];
          }

          v77 = *(v0 + 240);
          v78 = *(v0 + 216);
          v79 = *(v0 + 200);
          v122 = v79;
          v123 = *(v0 + 224);
          v127 = *(v0 + 232);
          v128 = *(v0 + 192);
          v129 = *(v0 + 184);
          v80 = *(v0 + 168);
          v81 = *(v0 + 176);
          v82 = *(v0 + 152);
          v83 = *(v0 + 144);
          v124 = *(v0 + 136);
          v125 = *(v0 + 160);
          sub_266668E58();
          sub_266668EA8();
          sub_266668C78();
          sub_266668DD8();
          v84 = *(v123 + 8);
          v84(v77, v78);
          (*(v83 + 8))(v82, v124);
          (*(v80 + 8))(v81, v125);
          v85 = v130;
          v86 = sub_266668A18();
          v87 = sub_26666C2F8();
          [v85 setValue:v86 forKeyPath:v87];

          v70 = v85;
          v88 = sub_26666C578();
          v89 = sub_26666C2F8();
          [v70 setValue:v88 forKeyPath:v89];

          (*(v128 + 8))(v122, v129);
          v84(v127, v78);
          v43 = v126;
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v56 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v56, qword_28156D7E8);
    v57 = sub_26666C148();
    v58 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v58))
    {
      v59 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v59);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v60, v61, "[UpdateEvent.IntentHandler] targetEventIdentifier not found, returning unsupported");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v20 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_65;
  }

  v21 = *(v0 + 128);
  v22 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (!v23[2])
  {
LABEL_17:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v29 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v29, qword_28156D7E8);
    v30 = sub_26666C148();
    v31 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v31))
    {
      v32 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v32);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v33, v34, "[UpdateEvent.IntentHandler] setDateTimeRange not required");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v35 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_72;
  }

  v24 = v23[5];
  sub_26666CB88();

  sub_26666C368();
  v25 = sub_26666CBC8();
  OUTLINED_FUNCTION_20_5(v25);
  if ((v26 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  while (2)
  {
    switch(*(v23[6] + v1))
    {
      case 1:
      case 3:
        goto LABEL_14;
      case 2:

        goto LABEL_67;
      case 4:
        OUTLINED_FUNCTION_5_12();
        goto LABEL_14;
      default:
        OUTLINED_FUNCTION_19_6();
LABEL_14:
        v27 = sub_26666CAC8();

        if ((v27 & 1) == 0)
        {
          OUTLINED_FUNCTION_30_3();
          if ((v28 & 1) == 0)
          {
            goto LABEL_16;
          }

          continue;
        }

LABEL_67:

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v107 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v107, qword_28156D7E8);
        v108 = sub_26666C148();
        v109 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v109))
        {
          v110 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v110);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v111, v112, "[UpdateEvent.IntentHandler] No dateTimeRange set on intent, returning needsValue");
          OUTLINED_FUNCTION_10();
        }

        sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
        v35 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_72:
        v20 = v35;
LABEL_73:
        v114 = *(v0 + 240);
        v113 = *(v0 + 248);
        v115 = *(v0 + 232);
        v117 = *(v0 + 200);
        v116 = *(v0 + 208);
        v118 = *(v0 + 176);
        v119 = *(v0 + 152);

        OUTLINED_FUNCTION_8();

        return v120(v20);
    }
  }
}

uint64_t sub_2665977CC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_2665969AC();
}

uint64_t sub_266597890(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_2665978A4()
{
  v2 = v0[6];
  v3 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
  OUTLINED_FUNCTION_41();
  v4 = *(v2 + v3);
  if (!v4[2])
  {
    goto LABEL_12;
  }

  v5 = v4[5];
  sub_26666CB88();

  sub_26666C368();
  v6 = sub_26666CBC8();
  OUTLINED_FUNCTION_20_5(v6);
  if (v7)
  {
    while (1)
    {
      switch(*(v4[6] + v1))
      {
        case 1:
        case 2:
          goto LABEL_6;
        case 3:

          goto LABEL_10;
        case 4:
          OUTLINED_FUNCTION_5_12();
          goto LABEL_6;
        default:
          OUTLINED_FUNCTION_19_6();
LABEL_6:
          v8 = sub_26666CAC8();

          if (v8)
          {
LABEL_10:
            v10 = v0[5];

            v11 = [v10 setLocation];
            if (!v11)
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1();
              }

              v16 = sub_26666C168();
              OUTLINED_FUNCTION_11_4(v16, qword_28156D7E8);
              v17 = sub_26666C148();
              v18 = sub_26666C618();
              if (OUTLINED_FUNCTION_9(v18))
              {
                v19 = OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_15(v19);
                OUTLINED_FUNCTION_4_0(&dword_266549000, v20, v21, "[UpdateEvent.IntentHandler] No location set on intent and itent needs one, returning needsValue");
                OUTLINED_FUNCTION_10();
              }

              sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
              v22 = [swift_getObjCClassFromMetadata() needsValue];
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_47_0();

              __asm { BRAA            X2, X16 }
            }

LABEL_12:
            __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_locationProvider), *(v0[6] + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_locationProvider + 24));
            v12 = swift_task_alloc();
            v0[7] = v12;
            *v12 = v0;
            v12[1] = sub_266597BFC;
            v13 = v0[5];
            OUTLINED_FUNCTION_47_0();

            __asm { BR              X2 }
          }

          OUTLINED_FUNCTION_30_3();
          if ((v9 & 1) == 0)
          {
            goto LABEL_8;
          }

          break;
      }
    }
  }

LABEL_8:

  goto LABEL_12;
}

uint64_t sub_266597BFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_10();

  return v6(v5);
}

uint64_t sub_266597CFC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266597890(v6);
}

uint64_t sub_266597DD4()
{
  OUTLINED_FUNCTION_11();
  sub_26659A29C(*(v0 + 16), &selRef_setTitle);
  if (v1)
  {
  }

  else
  {
    v2 = [*(v0 + 16) setDateTimeRange];
    if (!v2)
    {
      sub_26659A310(*(v0 + 16), &selRef_addParticipants);
      sub_266637788();

      goto LABEL_10;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v3, qword_28156D7E8);
  v4 = sub_26666C148();
  v5 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v5))
  {
    v6 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v6);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v7, v8, "#UpdateEventIntentHandler already resolved setTitle or setDateTimeRange, returning notRequired for addParticipants");
    OUTLINED_FUNCTION_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  OUTLINED_FUNCTION_23();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26666E050;
  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  *(v9 + 32) = [swift_getObjCClassFromMetadata() notRequired];
LABEL_10:
  v10 = OUTLINED_FUNCTION_1_10();

  return v11(v10);
}

uint64_t sub_266597F94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266598054;

  return sub_266597DC0(v6);
}

uint64_t sub_266598054()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_18();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  v8 = sub_26666C488();

  (v3)[2](v3, v8);

  _Block_release(v3);
  v9 = *(v6 + 8);
  OUTLINED_FUNCTION_51_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2665981EC()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  if (sub_26659A310(*(v1 + 16), &selRef_removeParticipants))
  {

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v3 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v3, qword_28156D7E8);
    v4 = sub_26666C148();
    v5 = sub_26666C5F8();
    v6 = &selRef_unsupported;
    if (OUTLINED_FUNCTION_9(v5))
    {
      v7 = "[UpdateEvent.IntentHandler] encountered value for removeParticipants, returning unsupported";
LABEL_10:
      v10 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_28_3(v10);
      _os_log_impl(&dword_266549000, v4, v0, v7, v2, 2u);
      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v8, qword_28156D7E8);
    v4 = sub_26666C148();
    v9 = sub_26666C618();
    v6 = &selRef_notRequired;
    if (OUTLINED_FUNCTION_9(v9))
    {
      v7 = "[UpdateEvent.IntentHandler] no participants to remove, returning notRequired";
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  OUTLINED_FUNCTION_23();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26666E050;
  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  *(v11 + 32) = [swift_getObjCClassFromMetadata() *v6];
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2665983BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26659A944;

  return sub_2665981D8(v6);
}

uint64_t sub_266598490()
{
  OUTLINED_FUNCTION_11();
  v1 = [*(v0 + 16) removeLocation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v4 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v4, qword_28156D7E8);
    v5 = sub_26666C148();
    v6 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      v7[1] = v3;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, v10, v11, v12, 8u);
      OUTLINED_FUNCTION_12();
    }

    v13 = [objc_opt_self() successWithResolvedValue_];
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v14 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v16))
    {
      v17 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v17);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v18, v19, "[UpdateEvent.IntentHandler] Remove location is nil, returning notRequired");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
    v13 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v20 = v13;
  OUTLINED_FUNCTION_8();

  return v21();
}

uint64_t sub_266598684(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2665582C4;

  return sub_26659847C(v6);
}

uint64_t sub_266598744(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266598758()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_26666C168();
  v4 = __swift_project_value_buffer(v3, qword_28156D7E8);
  v5 = sub_26666C148();
  v6 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v6))
  {
    v7 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v7);
    _os_log_impl(&dword_266549000, v5, v0, "[UpdateEvent.IntentHandler] resolving update all occurrences", v2, 2u);
    OUTLINED_FUNCTION_12();
  }

  v8 = *(v1 + 96);
  v9 = *(v1 + 104);

  v10 = sub_26659A29C(v8, &selRef_targetEventIdentifier);
  v12 = v11;
  OUTLINED_FUNCTION_36_1(&v9[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider], *&v9[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider + 24]);
  v13 = type metadata accessor for EventProvider();
  OUTLINED_FUNCTION_48_0(v13, &off_287806290);

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (v12)
  {
    OUTLINED_FUNCTION_36_1((v1 + 56), *(v1 + 80));

    v14 = sub_26655A8B4();
    v15 = sub_26665140C(v10, v12, v14);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v1 + 56));
    if (v15)
    {
      if ([v15 hasRecurrenceRules])
      {
        v16 = [*(v1 + 96) updateAllOccurrences];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 BOOLValue];

          v19 = sub_26666C148();
          v20 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v20))
          {
            v21 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_44_0(v21);
            _os_log_impl(&dword_266549000, v19, v4, "[UpdateEvent.IntentHandler] Event is recurring and intent has a value for updateAllOccurrences, returning .success", v9, 2u);
            OUTLINED_FUNCTION_9_5();
          }

          v22 = [objc_opt_self() successWithResolvedValue_];
        }

        else
        {
          v36 = sub_26666C148();
          v37 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v37))
          {
            v38 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_3(v38);
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v39, v40, v41, v42, v43, 2u);
            OUTLINED_FUNCTION_12();
          }

          sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
          v22 = [swift_getObjCClassFromMetadata() needsValue];
        }
      }

      else
      {
        v28 = sub_26666C148();
        v29 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v29))
        {
          v30 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v30);
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v31, v32, v33, v34, v35, 2u);
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
        v22 = [swift_getObjCClassFromMetadata() notRequired];
      }

      v22;

      goto LABEL_23;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  }

  v23 = sub_26666C148();
  v24 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_9(v24))
  {
    v25 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v25);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v26, v27, "[UpdateEvent.IntentHandler] No EKEvent found for target event id, returning .unsupported");
    OUTLINED_FUNCTION_10();
  }

  sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
  [swift_getObjCClassFromMetadata() unsupported];
LABEL_23:
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_266598B1C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266598744(v6);
}

uint64_t sub_266598BE0()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v4 = sub_266668D38();
  v1[21] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[22] = v5;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266598CE4, 0, 0);
}

uint64_t sub_266598CE4()
{
  v128 = v0;
  v1 = *(v0 + 144);
  sub_26659A29C(*(v0 + 136), &selRef_targetEventIdentifier);
  v3 = v2;
  v4 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider;
  *(v0 + 200) = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider;
  OUTLINED_FUNCTION_36_1((&v1->isa + v4), *(&v1[3].isa + v4));
  v5 = type metadata accessor for EventProvider();
  *(v0 + 16) = v1;
  *(v0 + 40) = v5;
  *(v0 + 48) = &off_287806290;
  sub_26655358C(v0 + 16, v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_36_1((v0 + 56), *(v0 + 80));

  sub_26655A8B4();
  v6 = OUTLINED_FUNCTION_6();
  v7 = sub_26665140C(v6, v3, v1);
  *(v0 + 208) = v7;

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (!v7)
  {
LABEL_23:
    OUTLINED_FUNCTION_39_0();
    if (!v32)
    {
LABEL_74:
      OUTLINED_FUNCTION_1_1();
    }

    v33 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v33, qword_28156D7E8);
    v34 = sub_26666C148();
    v35 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v35))
    {
      v36 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v36);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v37, v38, "[UpdateEvent.IntentHandler] unexpectedly found nil targetEventIdentifier or nonexistent event for identifier");
      OUTLINED_FUNCTION_10();
    }

    v39 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v39, v40, MEMORY[0x277D84F90]);
    goto LABEL_28;
  }

  v8 = [*(v0 + 136) setDateTimeRange];
  if (v8)
  {
    v9 = v8;
    [v7 setAllDay_];
    v10 = [v9 startDate];
    if (v10)
    {
      v11 = *(v0 + 192);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      sub_266668CE8();

      v10 = v11;
      sub_266668C88();
      v14 = OUTLINED_FUNCTION_45_0();
      v15(v14);
    }

    [v7 setStartDate_];

    v1 = [v9 endDate];
    if (v1)
    {
      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v18 = *(v0 + 168);
      sub_266668CE8();

      v1 = v16;
      sub_266668C88();
      v19 = OUTLINED_FUNCTION_45_0();
      v20(v19);
    }

    [v7 setEndDate_];
  }

  v21 = sub_26659A29C(*(v0 + 136), &selRef_setTitle);
  if (v22)
  {
    sub_26659A37C(v21, v22, v7);
  }

  v23 = sub_26659A310(*(v0 + 136), &selRef_addParticipants);
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = v23;
  v25 = sub_26659A310(*(v0 + 136), &selRef_addParticipants);
  if (!v25)
  {
LABEL_42:
    OUTLINED_FUNCTION_39_0();
    if (!v32)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v67 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v67, qword_28156D7E8);
    v68 = sub_26666C148();
    v69 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v69))
    {
      v70 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_42_1(v70);
      OUTLINED_FUNCTION_29_3(&dword_266549000, v71, v72, "[UpdateEvent.IntentHandler] participants are not invitable, adding them to title");
      OUTLINED_FUNCTION_4_2();
    }

    v73 = *(v0 + 144);

    v74 = *(v73 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_commonCats);
    result = sub_2665EF638(v7);
    if (v75)
    {
      v76 = *(v0 + 160);
      v77 = *(v0 + 136);

      sub_26666C358();

      v78 = sub_26666BDA8();
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v78);
      v79 = sub_26659A310(v77, &selRef_addParticipants);
      if (v79)
      {
        v80 = v79;
        sub_266669E68();
        v81 = swift_task_alloc();
        *(v81 + 16) = v0 + 96;
        sub_2665511FC(sub_266557CC8, v81, v80);
        v83 = v82;

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      }

      else
      {
        v83 = MEMORY[0x277D84F90];
      }

      *(v0 + 216) = v83;
      __swift_storeEnumTagSinglePayload(*(v0 + 152), 1, 1, v78);
      v84 = swift_task_alloc();
      *(v0 + 224) = v84;
      *v84 = v0;
      v84[1] = sub_266599744;
      v85 = *(v0 + 152);
      v86 = *(v0 + 160);

      return sub_2665D8CB8();
    }

LABEL_76:
    __break(1u);
    return result;
  }

  v26 = v25;
  v126 = v24;
  v27 = sub_2665C485C(v25);
  v28 = 0;
  while (v27 != v28)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x266788B60](v28, v26);
    }

    else
    {
      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = v29;
    v31 = sub_266580A7C();

    ++v28;
    if ((v31 & 1) == 0)
    {

      goto LABEL_42;
    }
  }

  v48 = sub_266580B18(v24);

  result = sub_2665C485C(v48);
  if (!result)
  {
    goto LABEL_38;
  }

  v49 = result;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_76;
  }

  for (i = 0; i != v49; ++i)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x266788B60](i, v48);
    }

    else
    {
      v51 = *(v48 + 8 * i + 32);
    }

    v52 = v51;
    [v7 addAttendee_];
  }

LABEL_38:
  OUTLINED_FUNCTION_39_0();
  if (!v32)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v53 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v53, qword_28156D7E8);

  v1 = sub_26666C148();
  v54 = sub_26666C618();

  if (os_log_type_enabled(v1, v54))
  {
    v55 = OUTLINED_FUNCTION_21();
    v56 = swift_slowAlloc();
    v127 = v56;
    *v55 = 136315138;
    v57 = sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    v58 = MEMORY[0x2667887F0](v48, v57);
    v60 = v59;

    v61 = sub_2665BFC90(v58, v60, &v127);

    *(v55 + 4) = v61;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

LABEL_54:
  if (sub_26659A310(*(v0 + 136), &selRef_removeParticipants))
  {
    OUTLINED_FUNCTION_34_1();
    sub_266580B18(v87);

    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    sub_26666C488();
    OUTLINED_FUNCTION_6();

    v88 = OUTLINED_FUNCTION_14_6();
    v89 = OUTLINED_FUNCTION_32_3();
    [v89 v90];
  }

  if ([*(v0 + 136) setLocation])
  {
    OUTLINED_FUNCTION_34_1();
    sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
    v91 = v1;
    v92 = sub_266653E0C(v91);
    v93 = OUTLINED_FUNCTION_32_3();
    [v93 v94];
  }

  v95 = [*(v0 + 136) updateAllOccurrences];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v96 = sub_26666C658();
  v97 = v96;
  if (v95)
  {
    OUTLINED_FUNCTION_15_2();
    sub_26666C678();
  }

  else
  {
  }

  v98 = *(v0 + 208);
  v99 = (*(v0 + 144) + *(v0 + 200));
  OUTLINED_FUNCTION_36_1(v99, v99[3]);
  v100 = OUTLINED_FUNCTION_15_2();
  v102 = sub_26655BCC8(v100, v101);
  if (v102)
  {
    v103 = v102;
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v104 = v103;
    sub_2665EB4F8();
    OUTLINED_FUNCTION_39_0();
    if (!v32)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v105 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v105, qword_28156D7E8);
    v106 = sub_26666C148();
    v107 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v107))
    {
      v108 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v108);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v109, v110, v111, v112, v113, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v114 = *(v0 + 208);

    v115 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_40_0(v115, v116, MEMORY[0x277D84F90]);
  }

  else
  {
    OUTLINED_FUNCTION_39_0();
    if (!v32)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v117 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v117, qword_28156D7E8);
    v118 = sub_26666C148();
    v119 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v119))
    {
      v120 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v120);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v121, v122, "[UpdateEvent.IntentHandler] event could not be updated, returning failure");
      OUTLINED_FUNCTION_10();
    }

    v123 = *(v0 + 208);

    v124 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v124, v125, MEMORY[0x277D84F90]);
  }

LABEL_28:
  v42 = *(v0 + 184);
  v41 = *(v0 + 192);
  v44 = *(v0 + 152);
  v43 = *(v0 + 160);

  v45 = OUTLINED_FUNCTION_1_10();

  return v46(v45);
}

uint64_t sub_266599744()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v5;

  v6 = v2[27];
  v7 = v2[20];
  v8 = v2[19];
  if (v0)
  {
  }

  sub_266557D74(v8, &unk_28007D130, &unk_266671DF0);
  v9 = OUTLINED_FUNCTION_25();
  sub_266557D74(v9, v10, &unk_266671DF0);
  OUTLINED_FUNCTION_51_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266599910()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  v1 = *(v0 + 232);
  v2 = sub_26655F6C8();
  v4 = v3;

  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    if (v5)
    {
      sub_26659A37C(v2, v4, *(v0 + 208));
    }

    else
    {
    }
  }

  else
  {
    v7 = *(v0 + 208);
  }

  if (sub_26659A310(*(v0 + 136), &selRef_removeParticipants))
  {
    OUTLINED_FUNCTION_34_1();
    sub_266580B18(v8);

    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    sub_26666C488();
    OUTLINED_FUNCTION_6();

    v9 = OUTLINED_FUNCTION_14_6();
    v10 = OUTLINED_FUNCTION_32_3();
    [v10 v11];
  }

  if ([*(v0 + 136) setLocation])
  {
    OUTLINED_FUNCTION_34_1();
    sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
    v12 = v7;
    v13 = sub_266653E0C(v12);
    v14 = OUTLINED_FUNCTION_32_3();
    [v14 v15];
  }

  v16 = [*(v0 + 136) updateAllOccurrences];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v17 = sub_26666C658();
  v18 = v17;
  if (v16)
  {
    OUTLINED_FUNCTION_15_2();
    sub_26666C678();
  }

  else
  {
  }

  v19 = *(v0 + 208);
  v20 = (*(v0 + 144) + *(v0 + 200));
  OUTLINED_FUNCTION_36_1(v20, v20[3]);
  v21 = OUTLINED_FUNCTION_15_2();
  v23 = sub_26655BCC8(v21, v22);
  if (v23)
  {
    v24 = v23;
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v25 = v24;
    sub_2665EB4F8();
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v26 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
    v27 = sub_26666C148();
    v28 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v28))
    {
      v29 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v29);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v35 = *(v0 + 208);

    v36 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_40_0(v36, v37, MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v38 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v38, qword_28156D7E8);
    v39 = sub_26666C148();
    v40 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v40))
    {
      v41 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v41);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v42, v43, "[UpdateEvent.IntentHandler] event could not be updated, returning failure");
      OUTLINED_FUNCTION_10();
    }

    v35 = *(v0 + 208);

    v44 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v44, v45, MEMORY[0x277D84F90]);
  }

  v47 = *(v0 + 184);
  v46 = *(v0 + 192);
  v49 = *(v0 + 152);
  v48 = *(v0 + 160);

  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_266599CF4()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();

  if (sub_26659A310(*(v1 + 136), &selRef_removeParticipants))
  {
    OUTLINED_FUNCTION_34_1();
    sub_266580B18(v2);

    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    sub_26666C488();
    OUTLINED_FUNCTION_6();

    v3 = OUTLINED_FUNCTION_14_6();
    v4 = OUTLINED_FUNCTION_32_3();
    [v4 v5];
  }

  if ([*(v1 + 136) setLocation])
  {
    OUTLINED_FUNCTION_34_1();
    sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
    v6 = v0;
    v7 = sub_266653E0C(v6);
    v8 = OUTLINED_FUNCTION_32_3();
    [v8 v9];
  }

  v10 = [*(v1 + 136) updateAllOccurrences];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v11 = sub_26666C658();
  v12 = v11;
  if (v10)
  {
    OUTLINED_FUNCTION_15_2();
    sub_26666C678();
  }

  else
  {
  }

  v13 = *(v1 + 208);
  v14 = (*(v1 + 144) + *(v1 + 200));
  OUTLINED_FUNCTION_36_1(v14, v14[3]);
  v15 = OUTLINED_FUNCTION_15_2();
  v17 = sub_26655BCC8(v15, v16);
  if (v17)
  {
    v18 = v17;
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v19 = v18;
    sub_2665EB4F8();
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v20 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v20, qword_28156D7E8);
    v21 = sub_26666C148();
    v22 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v22))
    {
      v23 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v23);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v29 = *(v1 + 208);

    v30 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_40_0(v30, v31, MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v32 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v32, qword_28156D7E8);
    v33 = sub_26666C148();
    v34 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v34))
    {
      v35 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v35);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v36, v37, "[UpdateEvent.IntentHandler] event could not be updated, returning failure");
      OUTLINED_FUNCTION_10();
    }

    v29 = *(v1 + 208);

    v38 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v38, v39, MEMORY[0x277D84F90]);
  }

  v41 = *(v1 + 184);
  v40 = *(v1 + 192);
  v43 = *(v1 + 152);
  v42 = *(v1 + 160);

  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_26659A08C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266598BE0();
}

id sub_26659A160()
{
  v2.receiver = v0;
  v2.super_class = _s13IntentHandlerCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26659A29C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_26666C308();
  }

  return OUTLINED_FUNCTION_25();
}

uint64_t sub_26659A310(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v4 = sub_26666C498();

  return v4;
}

void sub_26659A37C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();

  [a3 setTitle_];
}

unint64_t sub_26659A3E0()
{
  result = qword_28007DCB0;
  if (!qword_28007DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DCB0);
  }

  return result;
}

uint64_t sub_26659A434()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A4C4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A554()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A5E4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A674()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A704()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A794()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A824()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A8B4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_26666C2F8();
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t result)
{
  v2 = result & ~(-1 << *(v1 + 32));
  v3 = *(v1 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2;
  return result;
}

void OUTLINED_FUNCTION_29_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2666369A4(5, 0, a3, 0);
}

uint64_t *OUTLINED_FUNCTION_36_1(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v3 = *result;
  return result;
}

id OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2666369A4(3, 0, a3, v3);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[2] = v2;

  return sub_26655358C((v3 + 2), (v3 + 7));
}

uint64_t type metadata accessor for TaskParser()
{
  result = qword_28156CDB8;
  if (!qword_28156CDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26659ABA4()
{
  result = sub_266668D98();
  if (v1 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CF58);
    if (v2 <= 0x3F)
    {
      result = sub_26655EC10(319, qword_28156CB10);
      if (v3 <= 0x3F)
      {
        result = sub_26655EC10(319, &qword_28156CF50);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26659AC88@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266669E88();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v84 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26666B208();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v87 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_266669E58();
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v20, v25);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v82 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v82 - v34;
  result = sub_2665DA448(a1);
  if (result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 5;
  }

  else
  {
    v82 = v4;
    v83 = a2;
    v37 = (v22 + 2);
    v38 = v22[2];
    v38(v35, a1, v19);
    v39 = v22[11];
    v40 = OUTLINED_FUNCTION_6_6();
    v42 = v41(v40);
    if (v42 == *MEMORY[0x277D5C128])
    {
      v43 = v22[12];
      v44 = OUTLINED_FUNCTION_6_6();
      v45(v44);
      v46 = v11;
      (v87[4])(v18, v35, v11);
      sub_26659B44C(v18, &v90);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v47 = sub_26666C168();
      __swift_project_value_buffer(v47, qword_28156D7E8);
      sub_26657E808(&v90, v89, &unk_28007D200, &qword_26666FD20);
      v48 = sub_26666C148();
      v49 = sub_26666C618();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v88 = v51;
        *v50 = 136315138;
        OUTLINED_FUNCTION_7_10();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
        sub_26666C318();
        OUTLINED_FUNCTION_4_16();
        v52 = sub_2665BFC90(v32, a1, &v88);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_266549000, v48, v49, "[TaskParser] NLv3 parser parsed task: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        sub_26656CAEC(v89, &unk_28007D200, &qword_26666FD20);
      }

      result = (v87[1])(v18, v46);
      v66 = v83;
      v67 = v91[0];
      *v83 = v90;
      *(v66 + 16) = v67;
      *(v66 + 25) = *(v91 + 9);
    }

    else if (v42 == *MEMORY[0x277D5C160])
    {
      v53 = v22[12];
      v54 = OUTLINED_FUNCTION_6_6();
      v55(v54);
      v56 = v84;
      v57 = v85;
      (*(v84 + 32))(v85, v35, v82);
      sub_26659C324(v57, &v90);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v58 = sub_26666C168();
      __swift_project_value_buffer(v58, qword_28156D7E8);
      sub_26657E808(&v90, v89, &unk_28007D200, &qword_26666FD20);
      v59 = sub_26666C148();
      v60 = sub_26666C618();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v83;
      if (v61)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v88 = v64;
        *v63 = 136315138;
        OUTLINED_FUNCTION_7_10();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
        sub_26666C318();
        OUTLINED_FUNCTION_4_16();
        v65 = sub_2665BFC90(v32, a1, &v88);

        *(v63 + 4) = v65;
        _os_log_impl(&dword_266549000, v59, v60, "[TaskParser] USO parser parsed task: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        sub_26656CAEC(v89, &unk_28007D200, &qword_26666FD20);
      }

      result = (*(v56 + 8))(v85, v82);
      v78 = v91[0];
      *v62 = v90;
      v62[1] = v78;
      *(v62 + 25) = *(v91 + 9);
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v68 = sub_26666C168();
      __swift_project_value_buffer(v68, qword_28156D7E8);
      v38(v32, a1, v19);
      v69 = sub_26666C148();
      v70 = sub_26666C618();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v86 = v71;
        v87 = swift_slowAlloc();
        *&v90 = v87;
        *v71 = 136315138;
        v38(v28, v32, v19);
        v72 = sub_26666C318();
        v74 = v73;
        v75 = OUTLINED_FUNCTION_3_17();
        v37(v75);
        v76 = sub_2665BFC90(v72, v74, &v90);

        v77 = v86;
        *(v86 + 1) = v76;
        _os_log_impl(&dword_266549000, v69, v70, "[TaskParser] got unsupported parse type: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        v79 = OUTLINED_FUNCTION_3_17();
        v37(v79);
      }

      v80 = v83;
      *(v83 + 32) = 0;
      *v80 = 0u;
      *(v80 + 16) = 0u;
      *(v80 + 40) = -1;
      v81 = OUTLINED_FUNCTION_6_6();
      return (v37)(v81);
    }
  }

  return result;
}

void sub_26659B44C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper();
  v4 = *(*(EventsNLv3IntentWrapper - 8) + 64);
  MEMORY[0x28223BE20](EventsNLv3IntentWrapper, v5);
  v123 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateEventNLv3IntentWrapper();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated, v8);
  v125 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_266668D98();
  v127 = *(v134 - 8);
  v10 = *(v127 + 64);
  MEMORY[0x28223BE20](v134, v11);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CalendarNLv3Intent(0);
  v13 = *(*(v121 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v121, v14);
  v122 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v132 = &v119 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v119 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v119 - v26;
  v28 = sub_26666B208();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v34 = sub_26666C168();
  v35 = __swift_project_value_buffer(v34, qword_28156D7E8);
  v36 = *(v29 + 16);
  v136 = a1;
  v130 = (v29 + 16);
  v129 = v36;
  v36(v33, a1, v28);
  v37 = sub_26666C148();
  v38 = sub_26666C618();
  v39 = os_log_type_enabled(v37, v38);
  v135 = v22;
  v131 = v28;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v120 = a2;
    v41 = v40;
    v42 = swift_slowAlloc();
    v119 = v35;
    v43 = v42;
    v144 = v42;
    *v41 = 136315138;
    sub_266563A94(&qword_28007D2E0, MEMORY[0x277D5F458]);
    v44 = sub_26666CAA8();
    v46 = v45;
    (*(v29 + 8))(v33, v28);
    v47 = sub_2665BFC90(v44, v46, &v144);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_266549000, v37, v38, "[TaskParser] parsing NLv3 intent: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x266789690](v43, -1, -1);
    v48 = v41;
    a2 = v120;
    MEMORY[0x266789690](v48, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v33, v28);
  }

  v49 = v136;
  sub_26666B0F8();
  v50 = sub_26666A588();
  if (__swift_getEnumTagSinglePayload(v27, 1, v50) == 1)
  {
    sub_26656CAEC(v27, &qword_28007D230, &qword_26666E2B8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = sub_26666A548();
    v52 = v53;
    (*(*(v50 - 8) + 8))(v27, v50);
  }

  if (qword_28007CE30 != -1)
  {
    swift_once();
  }

  v54 = sub_26666A0F8();
  if (!v52)
  {

    goto LABEL_19;
  }

  if (v51 == v54 && v52 == v55)
  {

    goto LABEL_25;
  }

  v57 = sub_26666CAC8();

  if ((v57 & 1) == 0)
  {
LABEL_19:
    v58 = sub_26666C148();
    v59 = sub_26666C618();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_266549000, v58, v59, "[TaskParser] NLv3 intent is not a calendarEvent intent", v60, 2u);
      MEMORY[0x266789690](v60, -1, -1);
    }

    goto LABEL_22;
  }

LABEL_25:
  v62 = v135;
  v129(v135, v49, v131);
  if (!sub_26662E0D4())
  {
    if (sub_26662E328())
    {
      v100 = v125;
      sub_266571E2C(v62, v125);
      v101 = updated;
      v102 = v128;
      (*(v127 + 16))(v100 + *(updated + 20), v128, v134);
      v103 = type metadata accessor for TaskParser();
      sub_26655358C(v102 + v103[5], v100 + v101[6]);
      sub_26655358C(v102 + v103[6], v100 + v101[7]);
      sub_26655358C(v102 + v103[7], v100 + v101[8]);
      *(a2 + 24) = v101;
      *(a2 + 32) = &off_28780A6F0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      sub_26659D0A8(v100, boxed_opaque_existential_1, type metadata accessor for UpdateEventNLv3IntentWrapper);
      sub_266563A38(v62);
      v61 = 3;
      goto LABEL_23;
    }

    if (sub_26662E594() & 1) != 0 || (sub_26662E8E4())
    {
      v105 = v123;
      sub_266571E2C(v62, v123);
      v106 = type metadata accessor for TaskParser();
      v107 = EventsNLv3IntentWrapper;
      v108 = v128;
      sub_26655358C(v128 + v106[5], v105 + *(EventsNLv3IntentWrapper + 20));
      sub_26655358C(v108 + v106[6], v105 + *(v107 + 24));
      sub_26655358C(v108 + v106[7], v105 + *(v107 + 28));
      LOBYTE(v106) = sub_26662E594();
      *(a2 + 24) = v107;
      *(a2 + 32) = &off_287808F80;
      v109 = __swift_allocate_boxed_opaque_existential_1(a2);
      sub_26659D0A8(v105, v109, type metadata accessor for FindEventsNLv3IntentWrapper);
      sub_266563A38(v62);
      if (v106)
      {
        v61 = 1;
      }

      else
      {
        v61 = 2;
      }

      goto LABEL_23;
    }

    v110 = v122;
    sub_266571E2C(v62, v122);
    v111 = sub_26666C148();
    v112 = sub_26666C5F8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v144 = v114;
      *v113 = 136315138;
      sub_266563A94(&qword_28007DCC0, type metadata accessor for CalendarNLv3Intent);
      v115 = sub_26666CAA8();
      v117 = v116;
      sub_266563A38(v110);
      v118 = sub_2665BFC90(v115, v117, &v144);

      *(v113 + 4) = v118;
      _os_log_impl(&dword_266549000, v111, v112, "[TaskParser] unsupported calendarEvent intent: %s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x266789690](v114, -1, -1);
      MEMORY[0x266789690](v113, -1, -1);
    }

    else
    {

      sub_266563A38(v110);
    }

    sub_266563A38(v62);
LABEL_22:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v61 = -1;
LABEL_23:
    *(a2 + 40) = v61;
    return;
  }

  sub_266571E2C(v62, v132);
  v63 = v127;
  v64 = v128;
  (*(v127 + 16))(v133, v128, v134);
  v65 = type metadata accessor for TaskParser();
  sub_26655358C(v64 + v65[5], &v144);
  sub_26655358C(v64 + v65[6], &v143);
  sub_26655358C(v64 + v65[7], v141);
  v66 = v145;
  v67 = __swift_mutable_project_boxed_opaque_existential_1(&v144, v145);
  v136 = &v119;
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67, v67);
  v70 = &v119 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70);
  v72 = v142;
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
  v131 = &v119;
  v74 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v73, v73);
  v76 = (&v119 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  v79 = type metadata accessor for CalendarDateTimeResolver();
  v139 = v79;
  v140 = &off_28780BA58;
  v80 = __swift_allocate_boxed_opaque_existential_1(v138);
  sub_26659D0A8(v70, v80, type metadata accessor for CalendarDateTimeResolver);
  v137[4] = &off_28780BAC8;
  v137[3] = &type metadata for CalendarReferenceResolver;
  v137[0] = v78;
  EventNLv3IntentWrapper = type metadata accessor for CreateEventNLv3IntentWrapper();
  v82 = *(EventNLv3IntentWrapper + 48);
  v83 = *(EventNLv3IntentWrapper + 52);
  v84 = swift_allocObject();
  v85 = v139;
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v138, v139);
  v130 = &v119;
  v87 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v86, v86);
  v89 = &v119 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  v91 = __swift_mutable_project_boxed_opaque_existential_1(v137, &type metadata for CalendarReferenceResolver);
  v92 = *(qword_28780BAA8 + 64);
  MEMORY[0x28223BE20](v91, v91);
  v94 = (&v119 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94);
  v96 = *v94;
  v97 = (v84 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_dateTimeResolver);
  v97[3] = v79;
  v97[4] = &off_28780BA58;
  v98 = __swift_allocate_boxed_opaque_existential_1(v97);
  sub_26659D0A8(v89, v98, type metadata accessor for CalendarDateTimeResolver);
  v99 = (v84 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver);
  v99[3] = &type metadata for CalendarReferenceResolver;
  v99[4] = &off_28780BAC8;
  *v99 = v96;
  *(v84 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper____lazy_storage___resolvedCalendarEvent) = 1;
  sub_26659D0A8(v132, v84 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_calendarIntent, type metadata accessor for CalendarNLv3Intent);
  (*(v63 + 32))(v84 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_siriLocale, v133, v134);
  sub_26654B7D8(&v143, v84 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v138);
  __swift_destroy_boxed_opaque_existential_1(v141);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  *(a2 + 24) = EventNLv3IntentWrapper;
  *(a2 + 32) = &off_287806910;
  *a2 = v84;
  sub_266563A38(v135);
  *(a2 + 40) = 0;
}

void sub_26659C324(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = sub_266668D98();
  v116 = *(v117 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v117, v5);
  v111 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateEventUSOIntentWrapper();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated, v8);
  v113 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventUSOIntentWrapper = type metadata accessor for CreateEventUSOIntentWrapper();
  v10 = *(*(EventUSOIntentWrapper - 8) + 64);
  MEMORY[0x28223BE20](EventUSOIntentWrapper, v11);
  v114 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266669E88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v110 - v21;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v23 = sub_26666C168();
  v24 = __swift_project_value_buffer(v23, qword_28156D7E8);
  v25 = *(v14 + 16);
  v119 = a1;
  v25(v22, a1, v13);
  v110[1] = v24;
  v26 = sub_26666C148();
  v27 = sub_26666C618();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v110[0] = a2;
    v29 = v28;
    v30 = swift_slowAlloc();
    __src[0] = v30;
    *v29 = 136315138;
    v25(v19, v22, v13);
    v31 = sub_26666C318();
    v33 = v32;
    (*(v14 + 8))(v22, v13);
    v34 = sub_2665BFC90(v31, v33, __src);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_266549000, v26, v27, "[TaskParser] parsing USO Parse: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x266789690](v30, -1, -1);
    v35 = v29;
    a2 = v110[0];
    MEMORY[0x266789690](v35, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v22, v13);
  }

  v36 = sub_2665F1538();
  if (v36)
  {
    v37 = v36;
    v38 = v114;
    v39 = v118;
    (*(v116 + 16))(v114, v118, v117);
    v40 = type metadata accessor for TaskParser();
    v41 = EventUSOIntentWrapper;
    sub_26655358C(v39 + v40[5], v38 + *(EventUSOIntentWrapper + 20));
    sub_26655358C(v39 + v40[7], v38 + v41[6]);
    sub_26655358C(v39 + v40[6], v38 + v41[7]);
    *(v38 + v41[8]) = v37;
    *(a2 + 24) = v41;
    *(a2 + 32) = &off_287806A60;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_26659D0A8(v38, boxed_opaque_existential_1, type metadata accessor for CreateEventUSOIntentWrapper);
    *(a2 + 40) = 0;
    return;
  }

  v43 = sub_2665F1578();
  if (v43)
  {
    v44 = v43;
    v45 = type metadata accessor for TaskParser();
    v46 = a2;
    v47 = v118;
    sub_26655358C(v118 + v45[5], __src);
    sub_26655358C(v47 + v45[7], &__src[5]);
    sub_26655358C(v47 + v45[6], &__src[10]);
    __src[18] = sub_26666ADD8();
    __src[19] = &off_28780BC30;
    __src[15] = v44;
    *(a2 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(a2 + 32) = &off_28780BD68;
    v48 = swift_allocObject();
    *a2 = v48;
    memcpy((v48 + 16), __src, 0xA0uLL);
    v49 = 2;
LABEL_14:
    *(v46 + 40) = v49;
    return;
  }

  v50 = sub_2665F17DC();
  if (v50)
  {
    v51 = v50;
    v52 = type metadata accessor for TaskParser();
    v53 = v118;
    sub_26655358C(v118 + v52[5], __src);
    sub_26655358C(v53 + v52[7], &v122);
    sub_26655358C(v53 + v52[6], &v121);
    v54 = v116;
    v46 = a2;
    v55 = *(v116 + 16);
    v56 = v111;
    v57 = v117;
    v55(v111, v53, v117);
    v58 = v113;
    sub_26655358C(__src, v113);
    sub_26655358C(&v122, v58 + 40);
    sub_26655358C(&v121, v58 + 80);
    v59 = updated;
    v55((v58 + *(updated + 28)), v56, v57);
    *(v58 + *(v59 + 32)) = v51;
    v60 = (v58 + *(v59 + 36));
    v60[3] = &type metadata for FindEventUSOIntentWrapper;
    v60[4] = &off_28780BD68;
    v61 = swift_allocObject();
    *v60 = v61;
    sub_26655358C(__src, (v61 + 2));
    sub_26655358C(&v122, (v61 + 7));
    sub_26655358C(&v121, (v61 + 12));
    v61[20] = sub_26666ADF8();
    v61[21] = &off_28780BC58;
    v61[17] = v51;
    v62 = *(v54 + 8);
    swift_retain_n();
    v62(v56, v57);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    __swift_destroy_boxed_opaque_existential_1(&v122);
    __swift_destroy_boxed_opaque_existential_1(__src);
    *(v46 + 24) = v59;
    *(v46 + 32) = &off_28780BF78;
    v63 = __swift_allocate_boxed_opaque_existential_1(v46);
    sub_26659D0A8(v58, v63, type metadata accessor for UpdateEventUSOIntentWrapper);

    v49 = 3;
    goto LABEL_14;
  }

  v64 = sub_2665F181C();
  if (v64)
  {
    v65 = v64;
    v66 = type metadata accessor for TaskParser();
    v46 = a2;
    v67 = v118;
    sub_26655358C(v118 + *(v66 + 20), __src);
    sub_26655358C(v67 + *(v66 + 28), &__src[5]);
    __src[10] = v65;
    *(a2 + 24) = &type metadata for OpenCalendarViewUSOIntentWrapper;
    *(a2 + 32) = &off_287807F80;
    v68 = swift_allocObject();
    *a2 = v68;
    memcpy((v68 + 16), __src, 0x58uLL);
    v49 = 4;
    goto LABEL_14;
  }

  v69 = sub_2665F185C();
  if (v69)
  {
    v70 = v69;
    v71 = sub_26666AF88();
    v72 = &off_28780BB90;
LABEL_21:
    v123 = v71;
    v124 = v72;
    v122 = v70;
    v75 = type metadata accessor for TaskParser();
    v76 = v118;
    sub_26655358C(v118 + v75[5], __src);
    sub_26655358C(v76 + v75[7], &__src[5]);
    sub_26655358C(v76 + v75[6], &__src[10]);
    sub_26657E808(&v122, &__src[15], &qword_28007DCC8, &unk_2666724D0);
    *(a2 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(a2 + 32) = &off_28780BD68;
    v77 = swift_allocObject();
    *a2 = v77;
    memcpy((v77 + 16), __src, 0xA0uLL);
    *(a2 + 40) = 1;
LABEL_22:
    sub_26656CAEC(&v122, &qword_28007DCC8, &unk_2666724D0);
    return;
  }

  v73 = sub_2665F189C();
  if (v73)
  {
    v70 = v73;
    v71 = sub_26666AC28();
    v72 = &off_28780BC08;
    goto LABEL_21;
  }

  v74 = sub_2665F18DC();
  if (v74)
  {
    v70 = v74;
    v71 = sub_26666AEA8();
    v72 = &off_28780BBE0;
    goto LABEL_21;
  }

  v78 = a2;
  v79 = sub_2665F191C();
  if (v79)
  {
    v80 = v79;
    v81 = sub_26666B0C8();
    v82 = &off_28780BBB8;
LABEL_25:
    v123 = v81;
    v124 = v82;
    v122 = v80;
LABEL_30:
    v88 = type metadata accessor for TaskParser();
    v89 = v118;
    sub_26655358C(v118 + v88[5], __src);
    sub_26655358C(v89 + v88[7], &__src[5]);
    sub_26655358C(v89 + v88[6], &__src[10]);
    sub_26657E808(&v122, &__src[15], &qword_28007DCC8, &unk_2666724D0);
    *(v78 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(v78 + 32) = &off_28780BD68;
    v90 = swift_allocObject();
    *v78 = v90;
    memcpy((v90 + 16), __src, 0xA0uLL);
    *(v78 + 40) = 1;
    goto LABEL_22;
  }

  v83 = sub_2665F195C();
  if (v83)
  {
    v84 = v83;
    v85 = sub_26666C148();
    v86 = sub_26666C5F8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_266549000, v85, v86, "[TaskParser] Interpreting unsupported join event request as a find event request", v87, 2u);
      MEMORY[0x266789690](v87, -1, -1);
    }

    v123 = sub_26666AC18();
    v124 = &off_28780BC80;
    v122 = v84;
    goto LABEL_30;
  }

  v91 = sub_2665F199C();
  if (v91)
  {
    v80 = v91;
    v81 = sub_26666ADE8();
    v82 = &off_28780BCA8;
    goto LABEL_25;
  }

  if (sub_2665F19DC())
  {

    v92 = type metadata accessor for TaskParser();
    v93 = v118;
    sub_26655358C(v118 + v92[5], __src);
    sub_26655358C(v93 + v92[7], &__src[5]);
    sub_26655358C(v93 + v92[6], &__src[10]);
    memset(&__src[15], 0, 40);
    *(v78 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(v78 + 32) = &off_28780BD68;
    v94 = swift_allocObject();
    *v78 = v94;
    memcpy((v94 + 16), __src, 0xA0uLL);
    v95 = 2;
  }

  else if (sub_2665F1A1C())
  {

    v96 = type metadata accessor for TaskParser();
    v97 = v118;
    sub_26655358C(v118 + v96[5], __src);
    sub_26655358C(v97 + v96[7], &v122);
    sub_26655358C(v97 + v96[6], &v121);
    v98 = v116;
    v99 = *(v116 + 16);
    v100 = v111;
    v101 = v117;
    v99(v111, v97, v117);
    v102 = v113;
    sub_26655358C(__src, v113);
    sub_26655358C(&v122, v102 + 40);
    sub_26655358C(&v121, v102 + 80);
    v103 = updated;
    v99((v102 + *(updated + 28)), v100, v101);
    *(v102 + *(v103 + 32)) = 0;
    v104 = (v102 + *(v103 + 36));
    v104[3] = &type metadata for FindEventUSOIntentWrapper;
    v104[4] = &off_28780BD68;
    v105 = swift_allocObject();
    *v104 = v105;
    sub_26655358C(__src, v105 + 16);
    sub_26655358C(&v122, v105 + 56);
    sub_26655358C(&v121, v105 + 96);
    (*(v98 + 8))(v100, v101);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    __swift_destroy_boxed_opaque_existential_1(&v122);
    __swift_destroy_boxed_opaque_existential_1(__src);
    *(v105 + 168) = 0;
    *(v105 + 152) = 0u;
    *(v105 + 136) = 0u;
    *(v78 + 24) = v103;
    *(v78 + 32) = &off_28780BF78;
    v106 = __swift_allocate_boxed_opaque_existential_1(v78);
    sub_26659D0A8(v102, v106, type metadata accessor for UpdateEventUSOIntentWrapper);
    v95 = 3;
  }

  else
  {
    v107 = sub_26666C148();
    v108 = sub_26666C618();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_266549000, v107, v108, "[TaskParser] USO Task unsupported", v109, 2u);
      MEMORY[0x266789690](v109, -1, -1);
    }

    *(v78 + 32) = 0;
    *v78 = 0u;
    *(v78 + 16) = 0u;
    v95 = -1;
  }

  *(v78 + 40) = v95;
}

uint64_t sub_26659D0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return sub_26656CAEC(v2 - 184, v0, v1);
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_26657E808(v2 - 184, v2 - 240, v0, v1);
}

void sub_26659D170()
{
  v1 = v0;
  v2 = type metadata accessor for DayEventsReadingFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v7 = sub_26666C168();
  __swift_project_value_buffer(v7, qword_28156D7E8);

  v18 = sub_26666C148();
  v8 = sub_26666C618();

  if (os_log_type_enabled(v18, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
    swift_beginAccess();
    sub_2665A17A0(v1 + v11, v6);
    v12 = sub_2665A1520();
    v14 = v13;
    sub_2665A1748(v6, type metadata accessor for DayEventsReadingFlow.State);
    v15 = sub_2665BFC90(v12, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_266549000, v18, v8, "[DayEventsReadingFlow] transitioned to state %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266789690](v10, -1, -1);
    MEMORY[0x266789690](v9, -1, -1);
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_26659D39C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
  OUTLINED_FUNCTION_38();
  sub_2665A1D68(a1, v1 + v3);
  swift_endAccess();
  sub_26659D170();
  OUTLINED_FUNCTION_5_13();
  return sub_2665A1748(a1, v4);
}

void sub_26659D404()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v80 = v6;
  v8 = v7;
  v79 = type metadata accessor for DayEventsReadingFlow.Window(0);
  v9 = OUTLINED_FUNCTION_3_0(v79);
  v81 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  if (v5 >= 1 && v3 < v5)
  {
    v82 = v16;
    v18 = sub_2665C485C(v8);
    v19 = v18;
    if (v18 % v5)
    {
      v20 = v18 % v5;
    }

    else
    {
      v20 = v5;
    }

    v1 = sub_2665A1704(0, v18, v5);
    v90 = MEMORY[0x277D84F90];
    sub_266633AE8(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      goto LABEL_159;
    }

    v77 = v20;
    v78 = v3;
    v0 = v90;
    v87 = v8 >> 62;
    v84 = v19;
    v85 = v5;
    if (v1)
    {
      v21 = 0;
      v22 = 0;
      v86 = v8 & 0xC000000000000001;
      v83 = v1;
      while (1)
      {
        if (v22 >= v19)
        {
          goto LABEL_144;
        }

        if (__OFADD__(v22, v5))
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22 + v5;
        }

        if (__OFADD__(v22, v5))
        {
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (v19 >= v22 + v5)
        {
          v24 = v22 + v5;
        }

        else
        {
          v24 = v19;
        }

        if (v24 < v22)
        {
          goto LABEL_146;
        }

        v1 = v8 >> 62;
        if (v87)
        {
          v26 = sub_26666C768();
          v25 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v25 = v8 & 0xFFFFFFFFFFFFFF8;
          v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v26 < v22)
        {
          goto LABEL_147;
        }

        if (v22 < 0)
        {
          goto LABEL_148;
        }

        if (v87)
        {
          v27 = sub_26666C768();
        }

        else
        {
          v27 = *(v25 + 16);
        }

        if (v27 < v24)
        {
          goto LABEL_149;
        }

        if (!v86 || v22 == v24)
        {

          if (!v87)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v22 >= v24)
          {
            goto LABEL_156;
          }

          sub_26656CC50();

          v28 = v22;
          do
          {
            v29 = v28 + 1;
            sub_26666C808();
            v28 = v29;
          }

          while (v24 != v29);
          if (!v87)
          {
LABEL_36:
            v30 = (2 * v24) | 1;
            v1 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
            goto LABEL_39;
          }
        }

        sub_26666C928();
        v1 = v31;
        v22 = v32;
LABEL_39:
        v33 = v30 >> 1;
        if ((v30 & 1) == 0)
        {
          v34 = v33 - v22;
          v35 = __OFSUB__(v33, v22);
          swift_unknownObjectRetain();
          if (v35)
          {
            goto LABEL_155;
          }

          if (v34)
          {
            goto LABEL_45;
          }

LABEL_57:
          swift_unknownObjectRelease();
          v36 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }

        v1 = sub_26666CAD8();
        swift_unknownObjectRetain_n();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {
          swift_unknownObjectRelease();
          v38 = MEMORY[0x277D84F90];
        }

        v39 = *(v38 + 16);

        v34 = v33 - v22;
        if (__OFSUB__(v33, v22))
        {
          goto LABEL_157;
        }

        if (v39 != v34)
        {
          swift_unknownObjectRelease();
          if (!v34)
          {
            goto LABEL_57;
          }

LABEL_45:
          if (v34 < 1)
          {
            v36 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
            v36 = swift_allocObject();
            _swift_stdlib_malloc_size(v36);
            OUTLINED_FUNCTION_25_4();
            v36[2] = v34;
            v36[3] = v37;
          }

          swift_unknownObjectRelease();
          if (v22 == v33)
          {
            goto LABEL_163;
          }

          sub_26656CC50();
          swift_arrayInitWithCopy();
LABEL_58:
          v19 = v84;
          v5 = v85;
LABEL_59:
          swift_unknownObjectRelease();
          goto LABEL_60;
        }

        v36 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v19 = v84;
        v5 = v85;
        if (!v36)
        {
          v36 = MEMORY[0x277D84F90];
          goto LABEL_59;
        }

LABEL_60:
        v41 = *(v90 + 16);
        v40 = *(v90 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_266633AE8(v40 > 1, v41 + 1, 1);
        }

        ++v21;
        *(v90 + 16) = v41 + 1;
        *(v90 + 8 * v41 + 32) = v36;
        v22 = v23;
        v1 = v83;
        if (v21 == v83)
        {
          v42 = v8 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_65;
        }
      }
    }

    v23 = 0;
    v42 = v8 & 0xFFFFFFFFFFFFFF8;
    v86 = v8 & 0xC000000000000001;
LABEL_65:
    v88 = v42;
    while (1)
    {
      if (v23 >= v19)
      {
        if (v77 > v78)
        {
          v8 = v79;
          v1 = v80;
          goto LABEL_125;
        }

        v8 = v79;
        v1 = v80;
        if (*(v90 + 16) < 2uLL)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_121;
      }

      if (__OFADD__(v23, v5))
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v23 + v5;
      }

      if (__OFADD__(v23, v5))
      {
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (v19 >= v23 + v5)
      {
        v44 = v23 + v5;
      }

      else
      {
        v44 = v19;
      }

      if (v44 < v23)
      {
        goto LABEL_140;
      }

      if (v87)
      {
        v45 = sub_26666C768();
        v1 = v88;
      }

      else
      {
        v1 = v88;
        v45 = *(v88 + 16);
      }

      if (v45 < v23)
      {
        goto LABEL_141;
      }

      if (v23 < 0)
      {
        goto LABEL_142;
      }

      if (v87)
      {
        v46 = sub_26666C768();
      }

      else
      {
        v46 = *(v1 + 16);
      }

      if (v46 < v44)
      {
        goto LABEL_143;
      }

      if (!v86 || v23 == v44)
      {

        if (!v87)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v23 >= v44)
        {
          goto LABEL_153;
        }

        sub_26656CC50();

        v47 = v23;
        do
        {
          v48 = v47 + 1;
          sub_26666C808();
          v47 = v48;
        }

        while (v44 != v48);
        if (!v87)
        {
LABEL_89:
          v49 = (2 * v44) | 1;
          goto LABEL_92;
        }
      }

      sub_26666C928();
      v23 = v50;
LABEL_92:
      v51 = v49 >> 1;
      if ((v49 & 1) == 0)
      {
        v52 = v51 - v23;
        v53 = __OFSUB__(v51, v23);
        swift_unknownObjectRetain();
        if (v53)
        {
          goto LABEL_152;
        }

        if (v52)
        {
          goto LABEL_98;
        }

LABEL_111:
        swift_unknownObjectRelease();
        v1 = MEMORY[0x277D84F90];
        goto LABEL_112;
      }

      sub_26666CAD8();
      swift_unknownObjectRetain_n();
      v55 = swift_dynamicCastClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
        v55 = MEMORY[0x277D84F90];
      }

      v1 = *(v55 + 16);

      v52 = v51 - v23;
      if (__OFSUB__(v51, v23))
      {
        goto LABEL_154;
      }

      if (v1 != v52)
      {
        swift_unknownObjectRelease();
        if (!v52)
        {
          goto LABEL_111;
        }

LABEL_98:
        if (v52 < 1)
        {
          v1 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
          v1 = swift_allocObject();
          _swift_stdlib_malloc_size(v1);
          OUTLINED_FUNCTION_25_4();
          *(v1 + 16) = v52;
          *(v1 + 24) = v54;
        }

        swift_unknownObjectRelease();
        if (v23 == v51)
        {
          goto LABEL_162;
        }

        sub_26656CC50();
        swift_arrayInitWithCopy();
LABEL_112:
        v19 = v84;
        v5 = v85;
        goto LABEL_113;
      }

      v1 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v19 = v84;
      v5 = v85;
      if (v1)
      {
        goto LABEL_114;
      }

      v1 = MEMORY[0x277D84F90];
LABEL_113:
      swift_unknownObjectRelease();
LABEL_114:
      v57 = *(v90 + 16);
      v56 = *(v90 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_266633AE8(v56 > 1, v57 + 1, 1);
      }

      *(v90 + 16) = v57 + 1;
      *(v90 + 8 * v57 + 32) = v1;
      v23 = v43;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    sub_2665A16F0(v0);
    v0 = v76;
LABEL_121:
    v58 = *(v0 + 16);
    if (!v58)
    {
      break;
    }

    v59 = *(v0 + 32 + 8 * (v58 - 1));
    *(v0 + 16) = v58 - 1;
    if (v58 == 1)
    {
    }

    else
    {
      v60 = v58 - 2;
      v61 = *(v0 + 32 + 8 * v60);
      *(v0 + 16) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD30, &qword_2666725F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26666EED0;
      sub_2665C288C(v59);
      *(inited + 32) = v61;
      sub_2665C2C9C(inited);
    }

LABEL_125:
    v63 = *(v0 + 16);
    if (!v63)
    {
LABEL_138:

      OUTLINED_FUNCTION_27_0();
      return;
    }

    v89 = MEMORY[0x277D84F90];
    sub_266633A90();
    v64 = 0;
    v65 = *(v0 + 16);
    while (v65 != v64)
    {
      if (v64 >= *(v0 + 16))
      {
        goto LABEL_151;
      }

      v66 = *(v0 + 8 * v64 + 32);
      if (v66 >> 62)
      {
        if (v66 < 0)
        {
          v75 = *(v0 + 8 * v64 + 32);
        }

        sub_26666C768();
      }

      else
      {
        v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = v82;
      sub_266669DC8();
      v69 = *(v8 + 24);
      v70 = sub_266668D38();
      OUTLINED_FUNCTION_18_2(v70);
      (*(v71 + 16))(v82 + v69, v1);
      *(v82 + *(v8 + 20)) = v66;
      v72 = *(v89 + 16);
      if (v72 >= *(v89 + 24) >> 1)
      {
        sub_266633A90();
        v68 = v82;
      }

      *(v89 + 16) = v72 + 1;
      v73 = v89 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v72;
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v68, v74);
      if (v63 == ++v64)
      {
        goto LABEL_138;
      }
    }

LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
  }

  __break(1u);
LABEL_162:
  swift_unknownObjectRelease();
  __break(1u);
LABEL_163:
  swift_unknownObjectRelease();
  __break(1u);
}

void sub_26659DD78()
{
  OUTLINED_FUNCTION_28_0();
  v119 = v1;
  v120 = v0;
  v2 = sub_266669E18();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v117 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_1_0();
  v116 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD60, &qword_266672618);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v103 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  v18 = OUTLINED_FUNCTION_3_3(v17);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_19_7();
  v111 = v26;
  v27 = OUTLINED_FUNCTION_19_4();
  v110 = type metadata accessor for DayEventsReadingFlow.Window(v27);
  v28 = OUTLINED_FUNCTION_18_2(v110);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_19_7();
  v113 = v34;
  v35 = OUTLINED_FUNCTION_19_4();
  v36 = type metadata accessor for DayEventsReadingFlow.State(v35);
  v37 = OUTLINED_FUNCTION_18_2(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = &v103 - v46;
  MEMORY[0x28223BE20](v45, v48);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v51, v52);
  OUTLINED_FUNCTION_19_7();
  v118 = v53;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v54 = sub_26666C168();
  v55 = __swift_project_value_buffer(v54, qword_28156D7E8);

  v114 = v55;
  v56 = sub_26666C148();
  v57 = sub_26666C618();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_21();
    v105 = v16;
    v59 = v58;
    v60 = OUTLINED_FUNCTION_13_0();
    v106 = v36;
    v61 = v60;
    v121[0] = v60;
    *v59 = 136315138;
    v62 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
    v63 = v120;
    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_1_16();
    v64 = v63 + v62;
    v65 = v118;
    sub_2665A17A0(v64, v118);
    v66 = sub_2665A1520();
    v104 = v24;
    v68 = v67;
    OUTLINED_FUNCTION_5_13();
    sub_2665A1748(v65, v69);
    v70 = sub_2665BFC90(v66, v68, v121);
    v24 = v104;

    *(v59 + 4) = v70;
    _os_log_impl(&dword_266549000, v56, v57, "[DayEventsReadingFlow] Got input, current state: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v36 = v106;
    OUTLINED_FUNCTION_4_1();
    v16 = v105;
    OUTLINED_FUNCTION_4_1();
  }

  v71 = v120;
  OUTLINED_FUNCTION_23_4();
  sub_26655358C(v71 + 24, v121);
  __swift_project_boxed_opaque_existential_1(v121, v121[3]);
  v72 = v119;
  v73 = sub_26661A418();
  __swift_destroy_boxed_opaque_existential_1(v121);
  if (v73)
  {
    v74 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
    v75 = v120;
    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_1_16();
    v76 = v115;
    sub_2665A17A0(v75 + v74, v115);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_0_17();
      v77 = v113;
      sub_2665A1854(v76, v113);
      OUTLINED_FUNCTION_2_15();
      v78 = v118;
      sub_2665A17A0(v77, v118);
      swift_storeEnumTagMultiPayload();
      sub_26659D39C(v78);
      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v77, v79);
    }

    else
    {
      OUTLINED_FUNCTION_5_13();
      sub_2665A1748(v76, v91);
      OUTLINED_FUNCTION_1_16();
      v92 = v112;
      sub_2665A17A0(v120 + v74, v112);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v93 = v111;
        sub_2665A1CF8(v92, v111);
        sub_2665A17F8(v93, v24, &qword_28007DD28, &unk_2666725E0);
        v94 = 1;
        OUTLINED_FUNCTION_27_5(v24, 1, v110);
        if (!v95)
        {
          OUTLINED_FUNCTION_0_17();
          v96 = v108;
          sub_2665A1854(v24, v108);
          OUTLINED_FUNCTION_2_15();
          sub_2665A17A0(v96, v16);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_4_17();
          sub_2665A1748(v96, v97);
          v94 = 0;
        }

        __swift_storeEnumTagSinglePayload(v16, v94, 1, v36);
        OUTLINED_FUNCTION_27_5(v16, 1, v36);
        if (v95)
        {
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_27_5(v16, 1, v36);
          if (!v95)
          {
            sub_26656CAEC(v16, &qword_28007DD60, &qword_266672618);
          }
        }

        else
        {
          OUTLINED_FUNCTION_15_7();
          sub_2665A1854(v16, v47);
        }

        sub_26659D39C(v47);
        sub_26656CAEC(v111, &qword_28007DD28, &unk_2666725E0);
      }

      else
      {
        sub_2665A1748(v92, type metadata accessor for DayEventsReadingFlow.State);
        OUTLINED_FUNCTION_1_16();
        v98 = v109;
        sub_2665A17A0(v120 + v74, v109);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2665A1748(v98, type metadata accessor for DayEventsReadingFlow.State);
        if (!EnumCaseMultiPayload)
        {
          v100 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead;
          v101 = v120;
          OUTLINED_FUNCTION_23_4();
          if (*(*(v101 + v100) + 16))
          {
            OUTLINED_FUNCTION_38();
            v102 = v107;
            sub_2665FD334(v107);
            swift_endAccess();
          }

          else
          {
            v102 = v107;
          }

          swift_storeEnumTagMultiPayload();
          sub_26659D39C(v102);
        }
      }
    }
  }

  else
  {
    v80 = v117;
    v81 = v116;
    (*(v117 + 16))(v116, v72, v2);
    v82 = sub_26666C148();
    v83 = sub_26666C618();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = v2;
      v85 = OUTLINED_FUNCTION_21();
      v86 = OUTLINED_FUNCTION_13_0();
      v121[0] = v86;
      *v85 = 136315138;
      sub_2665A18AC(&qword_28007D6D8, MEMORY[0x277D5C118]);
      v87 = sub_26666CAA8();
      v89 = v88;
      (*(v80 + 8))(v81, v84);
      v90 = sub_2665BFC90(v87, v89, v121);

      *(v85 + 4) = v90;
      _os_log_impl(&dword_266549000, v82, v83, "[DayEventsReadingFlow] Skip request not found in input, Ignoring %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v80 + 8))(v81, v2);
    }
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26659E5FC()
{
  OUTLINED_FUNCTION_14();
  v1[34] = v2;
  v1[35] = v0;
  v3 = type metadata accessor for DayEventsReadingFlow.Window(0);
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v1[38] = *(v4 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v5 = type metadata accessor for DayEventsReadingFlow.State(0);
  v1[44] = v5;
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64) + 15;
  v1[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26659E71C, 0, 0);
}

uint64_t sub_26659E71C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 280);
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_1_16();
  sub_2665A17A0(v3 + v4, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = *(v0 + 360);
      v40 = *(v0 + 312);
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v41, v42);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v43 = sub_26666C168();
      __swift_project_value_buffer(v43, qword_28156D7E8);
      v44 = sub_26666C148();
      v45 = sub_26666C618();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_20();
        *v46 = 0;
        _os_log_impl(&dword_266549000, v44, v45, "[DayEventsReadingFlow] Prompting if the user would like to hear the next window.", v46, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v47 = *(v0 + 312);
      v49 = *(v0 + 272);
      v48 = *(v0 + 280);

      swift_beginAccess();
      v50 = __swift_project_boxed_opaque_existential_1((v48 + 24), *(v48 + 48));
      *(v0 + 40) = _s15ReadingStrategyVMa();
      *(v0 + 48) = &off_28780AAF8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2665A17A0(v50, boxed_opaque_existential_1);
      sub_26655358C(v0 + 16, v0 + 56);
      v52 = swift_allocObject();
      sub_26654B7D8((v0 + 56), v52 + 16);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      swift_endAccess();
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_266669B78();
      v53 = sub_2665A1998(v47, v0 + 96, v0 + 136, &unk_266672630, v52);

      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_266552F34(v0 + 96);
      *(v0 + 248) = v53;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD78, &qword_266672638);
      sub_26655369C(&qword_28007DD80, &qword_28007DD78, &qword_266672638);
      sub_266669838();

      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v47, v54);
      goto LABEL_25;
    case 2u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v25 = sub_26666C168();
      __swift_project_value_buffer(v25, qword_28156D7E8);
      v26 = sub_26666C148();
      v27 = sub_26666C5F8();
      if (OUTLINED_FUNCTION_7_2(v27))
      {
        v28 = OUTLINED_FUNCTION_20();
        *v28 = 0;
        _os_log_impl(&dword_266549000, v26, v27, "[DayEventsReadingFlow] In BargeIn state while in execute function, waiting for input.", v28, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v29 = *(v0 + 360);
      v30 = *(v0 + 272);

      sub_266669828();
      sub_26656CAEC(v29, &qword_28007DD28, &unk_2666725E0);
      goto LABEL_26;
    case 3u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v31 = *(v0 + 280);
      v32 = sub_26666C168();
      __swift_project_value_buffer(v32, qword_28156D7E8);

      v33 = sub_26666C148();
      v34 = sub_26666C618();
      v35 = OUTLINED_FUNCTION_7_2(v34);
      v36 = *(v0 + 280);
      if (v35)
      {
        v37 = OUTLINED_FUNCTION_21();
        *v37 = 134217984;
        v38 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead;
        OUTLINED_FUNCTION_23_4();
        *(v37 + 4) = *(*(v36 + v38) + 16);

        _os_log_impl(&dword_266549000, v33, v34, "[DayEventsReadingFlow] running window introduction flow windows: %ld", v37, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        v55 = *(v0 + 280);
      }

      v57 = *(v0 + 272);
      v56 = *(v0 + 280);

      sub_266669B78();
      v58 = sub_266668F88();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();
      *(v0 + 264) = sub_266668F78();

      sub_266669838();

      goto LABEL_25;
    case 4u:
      v24 = *(v0 + 272);
      sub_2666698A8();
      goto LABEL_26;
    default:
      v5 = *(v0 + 360);
      v6 = *(v0 + 344);
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v7, v8);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v9 = *(v0 + 336);
      v10 = *(v0 + 344);
      v11 = *(v0 + 328);
      v12 = sub_26666C168();
      __swift_project_value_buffer(v12, qword_28156D7E8);
      sub_2665A17A0(v10, v9);
      v13 = OUTLINED_FUNCTION_34_2();
      sub_2665A17A0(v13, v14);
      v15 = sub_26666C148();
      v16 = sub_26666C618();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 328);
      v19 = *(v0 + 336);
      if (v17)
      {
        v20 = *(v0 + 288);
        v21 = swift_slowAlloc();
        *v21 = 134218240;
        v22 = sub_2665C485C(*(v19 + *(v20 + 20)));
        sub_2665A1748(v19, type metadata accessor for DayEventsReadingFlow.Window);
        *(v21 + 4) = v22;
        *(v21 + 12) = 2048;
        v23 = sub_266669DD8();
        sub_2665A1748(v18, type metadata accessor for DayEventsReadingFlow.Window);
        *(v21 + 14) = v23;
        _os_log_impl(&dword_266549000, v15, v16, "[DayEventsReadingFlow] Reading %ld events on page %ld", v21, 0x16u);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        sub_2665A1748(*(v0 + 328), type metadata accessor for DayEventsReadingFlow.Window);
        sub_2665A1748(v19, type metadata accessor for DayEventsReadingFlow.Window);
      }

      v61 = *(v0 + 344);
      v62 = *(v0 + 320);
      v64 = *(v0 + 296);
      v63 = *(v0 + 304);
      v66 = *(v0 + 272);
      v65 = *(v0 + 280);

      OUTLINED_FUNCTION_2_15();
      v67 = OUTLINED_FUNCTION_25();
      sub_2665A17A0(v67, v68);
      v69 = (*(v64 + 80) + 24) & ~*(v64 + 80);
      *(swift_allocObject() + 16) = v65;
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v62, v70 + v69);

      sub_266669B78();
      v71 = sub_266668F88();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      swift_allocObject();
      *(v0 + 256) = sub_266668F78();

      sub_266669838();

      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v61, v74);
LABEL_25:

LABEL_26:
      v75 = *(v0 + 360);
      v76 = *(v0 + 336);
      v77 = *(v0 + 344);
      v79 = *(v0 + 320);
      v78 = *(v0 + 328);
      v80 = *(v0 + 312);

      OUTLINED_FUNCTION_24_1();

      return v81();
  }
}