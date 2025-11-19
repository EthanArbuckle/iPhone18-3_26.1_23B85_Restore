void *sub_274547760(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  result = a2();
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  v11 = (MEMORY[0x277D84F90] + 32);
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1;
  while (1)
  {
    if (v6 == v7)
    {
      v26 = v10[3];
      if (v26 >= 2)
      {
        v27 = v26 >> 1;
        v25 = __OFSUB__(v27, v8);
        v28 = v27 - v8;
        if (v25)
        {
          goto LABEL_32;
        }

        v10[2] = v28;
      }

      return v10;
    }

    if (v9)
    {
      result = MEMORY[0x277C58B20](v7, a1);
    }

    else
    {
      if (v7 >= *(v12 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v7 + 32);
    }

    v13 = result;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (!v8)
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v15 = v6;
      v16 = v9;
      v17 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      v19 = swift_allocObject();
      _swift_stdlib_malloc_size_0(v19);
      OUTLINED_FUNCTION_4_25();
      v19[2] = v18;
      v19[3] = v20;
      v21 = (v19 + 4);
      v22 = v10[3];
      v23 = v22 >> 1;
      if (v10[2])
      {
        if (v19 != v10 || v21 >= &v10[2 * v23 + 4])
        {
          memmove(v19 + 4, v10 + 4, 16 * v23);
        }

        v10[2] = 0;
      }

      v11 = (v21 + 16 * v23);
      v8 = (v3 & 0x7FFFFFFFFFFFFFFFLL) - (v22 >> 1);

      v10 = v19;
      v9 = v16;
      v6 = v15;
      v12 = v29;
      a1 = v30;
    }

    v25 = __OFSUB__(v8--, 1);
    if (v25)
    {
      goto LABEL_30;
    }

    *v11 = v7;
    v11[1] = v13;
    v11 += 2;
    ++v7;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_274547920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_10Tm_0()
{

  sub_2743F459C();
  sub_2743F459C();
  if (*(v0 + 168))
  {
    if (*(v0 + 152))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 128);
    }
  }

  else
  {
  }

  sub_274482198(*(v0 + 208), *(v0 + 216));

  return swift_deallocObject();
}

void sub_274547A5C(uint64_t *a1)
{
  v3 = *(sub_274637EEC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2745447F0(a1, v6, v7, v1 + v4, v8, v9);
}

uint64_t sub_274547B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274547BD8()
{
  result = qword_280950C48;
  if (!qword_280950C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950BB0);
    sub_274547C90();
    sub_274458A14(&qword_280950C78, &qword_280950C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C48);
  }

  return result;
}

unint64_t sub_274547C90()
{
  result = qword_280950C50;
  if (!qword_280950C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950BA8);
    sub_274547D4C();
    sub_274544E64(&qword_280950C70, type metadata accessor for ModuleSummaryModalViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C50);
  }

  return result;
}

unint64_t sub_274547D4C()
{
  result = qword_280950C58;
  if (!qword_280950C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950B88);
    sub_274458A14(&qword_280950B90, &qword_280950B88);
    swift_getOpaqueTypeConformance2();
    sub_274458A14(&qword_280950C60, &qword_280950C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return sub_27463920C();
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_2745457E8(v0, v1 - 320);
}

void *OUTLINED_FUNCTION_10_21(void *a1)
{

  return memcpy(a1, (v1 - 320), 0xE8uLL);
}

uint64_t sub_274547F98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274547FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_274548078@<X0>(uint64_t a1@<X0>, id a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C90);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C98);
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950CA0);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - v11;
  v13 = *v2;
  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  v36[0] = *(v2 + 8);
  v36[1] = v14;
  v40 = *(v2 + 32);
  v41 = *(v2 + 40);
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  v16[1] = *v2;
  v16[2] = v17;
  *(v16 + 41) = *(v2 + 25);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950CA8);
  (*(*(v18 - 8) + 16))(v6, v37, v18);
  v19 = &v6[*(v4 + 44)];
  *v19 = sub_274548B00;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = 0;
  if (!v13)
  {
    sub_274548B08(&v40, v39);
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274548B80(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    v33 = v15;
LABEL_8:
    result = sub_27463978C();
    __break(1u);
    return result;
  }

  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  v20[1] = *v2;
  v20[2] = v21;
  *(v20 + 41) = *(v2 + 25);
  sub_2744CE5D8(v6, v9, &qword_280950C90);
  v22 = &v9[*(v7 + 36)];
  *v22 = v13;
  *(v22 + 1) = sub_274548B78;
  *(v22 + 2) = v20;
  if (!v15)
  {
    v34 = v13;
    sub_274548B08(&v40, v39);
    sub_274548B08(&v40, v39);
    type metadata accessor for WorkflowEditorResults(0);
    sub_274548B80(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    v35 = v34;
    goto LABEL_8;
  }

  v23 = swift_allocObject();
  v24 = *(v2 + 16);
  v23[1] = *v2;
  v23[2] = v24;
  *(v23 + 41) = *(v2 + 25);
  sub_2744CE5D8(v9, v12, &qword_280950C98);
  v25 = &v12[*(v10 + 36)];
  *v25 = v15;
  *(v25 + 1) = sub_274548C14;
  *(v25 + 2) = v23;
  sub_2744CE5D8(v12, v38, &qword_280950CA0);
  v26 = v15;
  v27 = v13;
  sub_274548B08(&v40, v39);
  v28 = v26;
  v38 = v27;
  sub_274548B08(&v40, v39);
  v29 = v28;
  sub_274548B08(&v40, v39);
  v30 = v29;
  v31 = v38;

  return v31;
}

void sub_2745484A4(uint64_t a1)
{
  if (!*a1)
  {
    type metadata accessor for WorkflowEditorOptions(0);
    v4 = &qword_28094A730;
    v5 = type metadata accessor for WorkflowEditorOptions;
LABEL_8:
    sub_274548B80(v4, v5);
    sub_27463978C();
    __break(1u);
    return;
  }

  v2 = *a1;
  sub_2745485A8();

  v3 = *(a1 + 16);
  if (!v3)
  {
    type metadata accessor for WorkflowEditorResults(0);
    v4 = &unk_28094C450;
    v5 = type metadata accessor for WorkflowEditorResults;
    goto LABEL_8;
  }

  v6 = v3;
  sub_274548874();
}

uint64_t sub_2745485A8()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v0 + 40);
  v5 = *(v0 + 32);
  v27 = v5;
  v6 = v28;

  if ((v6 & 1) == 0)
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274548C1C(&v27);
    result = (*(v2 + 8))(v4, v1);
    v5 = v20;
  }

  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    if (v26)
    {
      if (v26 == 1)
      {
        v19[1] = 0x6E696C6165766552;
        v19[2] = 0xEA00000000002067;
        v15 = [v20 localizedName];
        v16 = sub_27463B6AC();
        v18 = v17;

        MEMORY[0x277C57EA0](v16, v18);

        sub_27443C9D4(v9, v10, v11, v12, v13, v14, 1);
      }
    }

    else
    {
      sub_27443C9D4(v20, v21, v22, v23, v24, v25, 0);
    }

    sub_27463875C();
  }

  return result;
}

uint64_t sub_274548874()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 40);
  v5 = *(v0 + 32);
  v15 = v5;
  v6 = v16;

  if ((v6 & 1) == 0)
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274548C1C(&v15);
    result = (*(v2 + 8))(v4, v1);
    v5 = v13;
  }

  if (v5)
  {
    v9 = sub_27443A0F0();
    v10 = v9;
    if (v9)
    {
      v12[1] = [v9 numberOfItems];
      v13 = sub_27463C66C();
      v14 = v11;
      MEMORY[0x277C57EA0](0x736D65746920, 0xE600000000000000);
    }

    sub_27463875C();
  }

  return result;
}

uint64_t sub_274548B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274548B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_15()
{
  j_j__swift_release(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_274548C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274548C84()
{
  result = qword_280950CB0;
  if (!qword_280950CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950CA0);
    sub_274548D3C();
    sub_27440CA78(&qword_280950CE0, &qword_280950CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950CB0);
  }

  return result;
}

unint64_t sub_274548D3C()
{
  result = qword_280950CB8;
  if (!qword_280950CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C98);
    sub_274548DF4();
    sub_27440CA78(&qword_280950CD0, &qword_280950CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950CB8);
  }

  return result;
}

unint64_t sub_274548DF4()
{
  result = qword_280950CC0;
  if (!qword_280950CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C90);
    sub_27440CA78(&qword_280950CC8, &qword_280950CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950CC0);
  }

  return result;
}

uint64_t sub_274548EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  swift_storeEnumTagMultiPayload();
  v8 = (v7 + v4[5]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  *v8 = sub_27463979C();
  v8[1] = v9;
  v10 = v4[6];
  *(v7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  swift_storeEnumTagMultiPayload();
  v11 = (v7 + v4[7]);
  v14[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE00);
  sub_27463ACDC();
  v12 = v14[3];
  *v11 = v14[2];
  v11[1] = v12;
  MEMORY[0x277C57160](v7, a1, v4, a2);
  return sub_27454DFF4(v7);
}

uint64_t sub_27454905C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E28);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = *(v1 + 2);
  v22 = *v1;
  *&v23 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0);
  MEMORY[0x277C575F0](v20, v9);
  v10 = *&v20[0];
  v11 = 1;
  if (*&v20[0])
  {
    sub_274549210(*&v20[0]);
    v12 = sub_274549424();
    v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E38) + 36)];
    *v13 = 0u;
    *(v13 + 1) = 0u;
    v13[32] = 1;
    *(v13 + 5) = v12;
    v14 = *(v2 + 18);
    v15 = v2[8];
    v20[3] = v2[7];
    v20[4] = v15;
    v21 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40);
    sub_27463AD0C();

    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    OUTLINED_FUNCTION_8_4();
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 1) = v22;
    *(v16 + 2) = v17;
    *(v16 + 3) = v24;
    v18 = &v7[*(v4 + 36)];
    *v18 = sub_274484054;
    v18[1] = v16;
    sub_274400880(v7, a1);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v4);
}

uint64_t sub_274549210(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  sub_27454DE7C(v1, &v13);
  v7 = swift_allocObject();
  sub_27454DEB4(&v13, v7 + 16);
  sub_27463AD5C();
  v8 = *(v1 + 104);
  LOBYTE(v13) = *(v1 + 96);
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
  sub_27463ACEC();
  v9 = v12[7];
  KeyPath = swift_getKeyPath();
  v13 = a1;
  LOBYTE(v14) = v9;
  v15 = KeyPath;
  v16 = 0;
  sub_27454E488(&qword_280950E68, &unk_280950E58);
  sub_27454DEF4();
  sub_27463A6AC();

  return (*(v4 + 8))(v6, v3);
}

id sub_274549424()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 2);
  v19 = *v0;
  *&v20 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0);
  MEMORY[0x277C575F0](&v18, v6);
  v7 = v18;
  if (!v18)
  {
    return 0;
  }

  v8 = *(v0 + 6);
  if (*(v0 + 56) == 1)
  {
    swift_unknownObjectRetain();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  sub_27463BC0C();
  v12 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();
  sub_274482198(v8, 0);
  (*(v2 + 8))(v4, v1);
  v8 = v19;
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = *(v0 + 8);
  if ((*(v0 + 72) & 1) == 0)
  {

    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27447FCE8(v9, 0);
    (*(v2 + 8))(v4, v1);
    v9 = v19;
    if (v19)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_11:

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:
  sub_2744C6DD8();
  if (BYTE8(v19))
  {
    sub_27454D6A8(&v19, &qword_28094E090);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_27454D6A8(&v19, &unk_280950E50);
  }

  v15 = *(v0 + 18);
  v16 = v0[8];
  v19 = v0[7];
  v20 = v16;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40);
  sub_27463ACEC();
  v17 = objc_allocWithZone(WFVariableEditingAnchor);
  return sub_2745AFB44(v7, v8, v9, Strong);
}

void sub_274549754(uint64_t a1)
{
  v2 = sub_274549424();
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 104);
    v15[0] = *(a1 + 96);
    v16 = v4;
    LOBYTE(v14[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
    sub_27463ACFC();
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      v7 = sub_27443C514();

      if (v7)
      {
        [v7 finishEditingReturningToKeyboard_];
      }

      v8 = *(a1 + 24);
      sub_27454DE7C(a1, v15);
      v9 = swift_allocObject();
      sub_27454DEB4(v15, v9 + 16);
      sub_27454DE7C(a1, v14);
      v10 = swift_allocObject();
      sub_27454DEB4(v14, v10 + 16);
      objc_allocWithZone(WFVariableEditingOptions);
      v11 = v6;
      v12 = v3;
      v13 = sub_2745AFA0C(v12, v8, sub_27454DF48, v9, sub_27454DFEC, v10);
      sub_27443C58C(v13);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t sub_274549944(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0);
  return sub_27463AEBC();
}

uint64_t sub_274549A04(uint64_t a1, void *a2, char a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = sub_27463A0DC();
  sub_274549A88(v9 & 1, v8, a3, a4, a5 & 1);

  return sub_27463871C();
}

uint64_t sub_274549A88(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = sub_274639ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a5 & 1) == 0)
  {

    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(a4, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(a4) = v16[15];
  }

  v14 = a1 & 1;
  if (a3)
  {
    v14 = 2;
  }

  if (a4)
  {
    return v14;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_274549C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_8_4();
  v5 = swift_allocObject();
  v6 = *(v2 + 16);
  *(v5 + 1) = *v2;
  *(v5 + 2) = v6;
  *(v5 + 3) = *(v2 + 32);
  v14 = *(v2 + 40);
  sub_27454D660(&v14, &v13, &qword_280950E78);
  v7 = sub_27463B0CC();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E80);
  OUTLINED_FUNCTION_0_4();
  (*(v10 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E88);
  v12 = (a2 + *(result + 36));
  *v12 = sub_27454E050;
  v12[1] = v5;
  v12[2] = v7;
  v12[3] = v9;
  return result;
}

uint64_t sub_274549D08@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_274639E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27463AB7C();
  v9 = *(a1 + 40);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8A8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_274648570;
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v40 = 0xD000000000000010;
    v41 = 0x800000027468CB80;
    v16 = v9;
    sub_27463A04C();
    sub_2746393CC();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v25 = v11 + v18;
    v26 = v12 + v20;
    if (v15)
    {
      v25 = v18;
      v26 = v20;
      v27 = v22;
    }

    else
    {
      v27 = v13;
    }

    *(v10 + 32) = v16;
    *(v10 + 40) = v25;
    *(v10 + 48) = v26;
    if (v15)
    {
      v28 = v24;
    }

    else
    {
      v28 = v14;
    }

    *(v10 + 56) = v27;
    *(v10 + 64) = v28;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v29 = sub_27463AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_274648570;
  v40 = 0xD00000000000001BLL;
  v41 = 0x8000000274688E00;
  sub_27463A04C();
  sub_2746393CC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  (*(v5 + 8))(v7, v4);
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  *(v30 + 48) = v36;
  *(v30 + 56) = v38;
  *a2 = v8;
  a2[1] = v10;
  a2[2] = v29;
  a2[3] = v30;
}

uint64_t sub_27454A020@<X0>(void *a1@<X8>)
{
  if (qword_280949320 != -1)
  {
    swift_once();
  }

  *a1 = qword_280950CF0;
}

uint64_t sub_27454A090()
{
  sub_27463BF8C();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v0[1];
  }

  MEMORY[0x277C58ED0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x277C58ED0](*&v6);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  Width = CGRectGetWidth(v10);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x277C58ED0](*&Width);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  Height = CGRectGetHeight(v11);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  return MEMORY[0x277C58ED0](*&Height);
}

uint64_t sub_27454A1C8()
{
  sub_27463C74C();
  sub_27454A090();
  return sub_27463C7AC();
}

uint64_t sub_27454A280()
{
  sub_27463C74C();
  sub_27454A090();
  return sub_27463C7AC();
}

BOOL sub_27454A2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_27454A154(v5, v7);
}

uint64_t sub_27454A324()
{
  v0 = sub_274639FEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for VariableEditorModifier();
  sub_2744C690C();
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_27454D660(v15, v6, &qword_28094A610);
  sub_27454D660(v12, &v6[v16], &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    sub_27454D660(v6, v9, &qword_28094A610);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_27454D7DC(&unk_28094BC90, MEMORY[0x277CE0570]);
      v17 = sub_27463B5BC();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_27454D6A8(v12, &qword_28094A610);
      sub_27454D6A8(v15, &qword_28094A610);
      v20(v9, v0);
      sub_27454D6A8(v6, &qword_28094A610);
      return v17 & 1;
    }

    sub_27454D6A8(v12, &qword_28094A610);
    sub_27454D6A8(v15, &qword_28094A610);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_27454D6A8(v12, &qword_28094A610);
  sub_27454D6A8(v15, &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_27454D6A8(v6, &unk_28094BC50);
    v17 = 0;
    return v17 & 1;
  }

  sub_27454D6A8(v6, &qword_28094A610);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_27454A744@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_274638DAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VariableEditorModifier();
  v9 = *(v1 + *(v8 + 20));
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_27443C514();

    if (v12)
    {
      v45 = v4;
      v46 = v7;
      v44 = v5;
      v47 = a1;
      v13 = (v2 + *(v10 + 28));
      v15 = *v13;
      v14 = v13[1];
      v49 = v15;
      v50 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950DF0);
      sub_27463ACEC();
      v16 = 0;
      v17 = v48;
      v18 = *(v48 + 16);
      v19 = v48 + 64;
      while (v18 != v16)
      {
        if (v16 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v20 = *(v19 - 32);
        sub_274412734(0, &qword_28094C5E0);
        v21 = v20;
        v22 = [v12 anchor];
        v23 = sub_27463BF7C();

        if (v23)
        {

          v34 = sub_27463AD2C();

          a1 = v47;
          *v47 = v34;
          v35 = MEMORY[0x277CDE248];
          goto LABEL_14;
        }

        ++v16;
        v19 += 40;
      }

      v24 = v46;
      sub_274638C2C();
      v25 = v12;
      v26 = sub_274638D9C();
      v27 = sub_27463BC1C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = [v25 anchor];
        v31 = [v30 variable];

        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_2743F0000, v26, v27, "Unable to find anchor for variable: %@", v28, 0xCu);
        sub_27454D6A8(v29, &qword_280950E00);
        v32 = v29;
        v24 = v46;
        MEMORY[0x277C5A270](v32, -1, -1);
        MEMORY[0x277C5A270](v28, -1, -1);
        v33 = v25;
      }

      else
      {
        v33 = v26;
        v26 = v25;
      }

      a1 = v47;
      v37 = v44;
      v36 = v45;

      (*(v37 + 8))(v24, v36);
    }

    sub_27463B1BC();
    *a1 = v38;
    a1[1] = v39;
    v35 = MEMORY[0x277CDE250];
LABEL_14:
    v40 = *v35;
    v41 = sub_27463A0AC();
    return (*(*(v41 - 8) + 104))(a1, v40, v41);
  }

  else
  {
LABEL_16:
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27454AB68()
{
  v1 = type metadata accessor for VariableEditorModifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_27454D594(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_27463B9CC();
  v4 = sub_27463B9BC();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_27454D824(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for VariableEditorModifier);
  sub_27454D594(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_27463B9BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_27454D824(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for VariableEditorModifier);
  sub_27463AF0C();
  return v11[1];
}

void sub_27454AD1C(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VariableEditorModifier() + 20));
  if (v3)
  {
    v4 = v3;
    v5 = sub_27443C514();

    if (v5)
    {
    }

    *a2 = v5 != 0;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27454ADE8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a1 & 1) == 0)
  {
    v4 = *(a4 + *(type metadata accessor for VariableEditorModifier() + 20));
    if (v4)
    {
      v5 = v4;
      v6 = sub_27443C514();

      if (v6)
      {
        [v6 finishEditingReturningToKeyboard_];
      }

      v7 = v5;
      sub_27443C58C(0);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t sub_27454AEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D38);
  MEMORY[0x28223BE20](v32);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D40);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for VariableEditorModifier();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D48);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  if (sub_27454A324())
  {
    sub_27454B2E8(a1, v6);
    sub_27454D660(v6, v9, &qword_280950D38);
    swift_storeEnumTagMultiPayload();
    sub_27454D048();
    sub_27454D29C();
    sub_274639DDC();
    v15 = v6;
    v16 = &qword_280950D38;
  }

  else
  {
    v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D70) + 36)];
    sub_27454BAF8(v2, v17);
    v18 = sub_27463B0CC();
    v30[0] = v7;
    v30[1] = a2;
    v19 = a1;
    v20 = v18;
    v22 = v21;
    v23 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D90) + 36));
    *v23 = v20;
    v23[1] = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D80);
    (*(*(v24 - 8) + 16))(v14, v19, v24);
    v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D60) + 36)];
    *v25 = 0xD000000000000010;
    *(v25 + 1) = 0x800000027468CB80;
    sub_27454D594(v2, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v27 = swift_allocObject();
    sub_27454D824(v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for VariableEditorModifier);
    v28 = &v14[*(v12 + 36)];
    *v28 = sub_27454D5F8;
    v28[1] = v27;
    sub_27454D660(v14, v9, &qword_280950D48);
    swift_storeEnumTagMultiPayload();
    sub_27454D048();
    sub_27454D29C();
    sub_274639DDC();
    v15 = v14;
    v16 = &qword_280950D48;
  }

  return sub_27454D6A8(v15, v16);
}

uint64_t sub_27454B2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v71 = a2;
  v4 = type metadata accessor for VariableEditorModifier();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v7;
  v9 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950DB0);
  MEMORY[0x28223BE20](v10);
  v69 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E08);
  v68 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E10);
  MEMORY[0x28223BE20](v72);
  v16 = &v51 - v15;
  v17 = *(v3 + *(v5 + 28));
  if (v17)
  {
    v18 = v17;
    v19 = sub_27443B22C();

    if (v19)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D80);
      (*(*(v20 - 8) + 16))(v16, v70, v20);
      swift_storeEnumTagMultiPayload();
      sub_27454E488(&qword_280950D78, &qword_280950D80);
      v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B0C0);
      v22 = sub_27454D3C4();
      v23 = sub_27454D4A8();
      v76 = v10;
      v77 = v21;
      v78 = v22;
      v79 = v23;
      swift_getOpaqueTypeConformance2();
      return sub_274639DDC();
    }

    else
    {
      v54 = sub_27454AB68();
      v53 = v25;
      LODWORD(v64) = v26;
      v27 = v18;
      v59 = v27;
      v67 = sub_27443C514();

      v56 = v9;
      sub_27454D594(v3, v9);
      v66 = v12;
      v57 = *(v6 + 80);
      v65 = v16;
      v62 = v3;
      v63 = v8;
      v28 = (v57 + 16) & ~v57;
      v58 = v28;
      v29 = swift_allocObject();
      v61 = type metadata accessor for VariableEditorModifier;
      v52 = v29;
      sub_27454D824(v9, v29 + v28, type metadata accessor for VariableEditorModifier);
      __src[0] = 0;
      __src[1] = 0;
      LOBYTE(__src[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFC8);
      sub_27463ACDC();
      v31 = v76;
      v30 = v77;
      v32 = v10;
      v55 = v10;
      v33 = v78;
      v34 = v79;
      v74 = v78;
      v60 = v14;
      v35 = v64 & 1;
      v36 = v54;
      v37 = v53;
      __src[0] = v54;
      __src[1] = v53;
      LOBYTE(__src[2]) = v64 & 1;
      __src[3] = v67;
      __src[4] = sub_27454DAF4;
      __src[5] = v29;
      __src[6] = v76;
      __src[7] = v77;
      LOBYTE(__src[8]) = v78;
      __src[9] = v79;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D80);
      v38 = v69;
      (*(*(v64 - 8) + 16))(v69, v70, v64);
      memcpy((v38 + *(v32 + 36)), __src, 0x50uLL);
      v76 = v36;
      v77 = v37;
      LOBYTE(v78) = v35;
      v79 = v67;
      v80 = sub_27454DAF4;
      v81 = v52;
      v82 = v31;
      v83 = v30;
      v84 = v33;
      v85 = v34;
      sub_27454D660(__src, v73, &qword_280950DD0);
      sub_27454D6A8(&v76, &qword_280950DD0);
      v39 = v59;
      v40 = sub_27443C514();

      v73[0] = v40;
      v41 = v56;
      sub_27454D594(v62, v56);
      v42 = v58;
      v43 = swift_allocObject();
      sub_27454D824(v41, v43 + v42, v61);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B0C0);
      v45 = sub_27454D3C4();
      v46 = sub_27454D4A8();
      v47 = v60;
      v48 = v55;
      sub_27463AA3C();

      sub_27454D6A8(v38, &unk_280950DB0);
      v49 = v68;
      v50 = v66;
      (*(v68 + 16))(v65, v47, v66);
      swift_storeEnumTagMultiPayload();
      sub_27454E488(&qword_280950D78, &qword_280950D80);
      v73[0] = v48;
      v73[1] = v44;
      v73[2] = v45;
      v73[3] = v46;
      swift_getOpaqueTypeConformance2();
      sub_274639DDC();
      return (*(v49 + 8))(v47, v50);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27454BAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for VariableEditorModifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v13[0] = sub_27463A0AC();
  v6 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_27463AB7C();
  sub_27454AB68();
  sub_27454A744(v8);
  sub_27454D594(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_27454D824(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for VariableEditorModifier);
  v13[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949488);
  sub_27454D764(&qword_280949490, &qword_280949488, &unk_2746467C0, sub_27440AFCC);
  sub_27463A6DC();

  (*(v6 + 8))(v8, v13[0]);
}

void sub_27454BD7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VariableEditorModifier() + 20));
  if (v3)
  {
    v4 = v3;
    v5 = sub_27443C514();

    sub_27454BE5C(v5, a2);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_27454BE5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VariableConfigurationSheet();
  MEMORY[0x28223BE20](v4);
  v6 = (&v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809494A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-1] - v11;
  if (a1)
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    v13 = a1;
    v6[1] = sub_27463979C();
    v6[2] = v14;
    v15 = v4[6];
    *(v6 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
    swift_storeEnumTagMultiPayload();
    v16 = v4[7];
    *(v6 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
    swift_storeEnumTagMultiPayload();
    *v6 = v13;
    v17 = [v13 anchor];
    v18 = [v17 variable];

    sub_2745AA868(v18, v24);
    sub_27463ACDC();
    v19 = __src[1];
    v20 = __src[2];
    v21 = (v6 + v4[8]);
    *v21 = __src[0];
    v21[1] = v19;
    v21[2] = v20;
    sub_27463B0CC();
    sub_27463973C();
    sub_27454D824(v6, v9, type metadata accessor for VariableConfigurationSheet);
    memcpy(&v9[*(v7 + 36)], __src, 0x70uLL);
    sub_27454DE34(v9, v12, &qword_2809494A0);
    sub_27454DE34(v12, a2, &qword_2809494A0);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_27454C1C4()
{
  type metadata accessor for VariableEditorModifier();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950DF0);
  return sub_27463ACFC();
}

uint64_t sub_27454C260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27463B1EC();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_27463B21C();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VariableEditorModifier();
  v9 = v8 - 8;
  v38 = *(v8 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_27463B23C();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = *(a3 + *(v9 + 28));
  if (v17)
  {
    v18 = v17;
    v19 = sub_27443C514();

    if (v19)
    {
      v20 = [v19 anchor];

      if (v20)
      {
        v21 = [v20 variableProvider];
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = v22;
          v24 = [v22 workflow];
          if (v24)
          {

            sub_274412734(0, &qword_28094AF90);
            v37 = v21;
            v35 = sub_27463BCEC();
            sub_27463B22C();
            sub_27463B28C();
            v36 = *(v44 + 8);
            v44 += 8;
            v36(v13, v11);
            sub_27454D594(a3, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
            v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
            v26 = swift_allocObject();
            sub_27454D824(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for VariableEditorModifier);
            *(v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
            v49 = sub_27454DD74;
            v50 = v26;
            aBlock = MEMORY[0x277D85DD0];
            v46 = 1107296256;
            v47 = sub_27443E0E8;
            v48 = &block_descriptor_27;
            v27 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            sub_27463B20C();
            aBlock = MEMORY[0x277D84F90];
            sub_27454D7DC(&qword_28094E100, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
            sub_27454E488(&qword_28094E110, &unk_28094AFA0);
            v28 = v40;
            v29 = v43;
            sub_27463C1EC();
            v30 = v35;
            MEMORY[0x277C58400](v16, v7, v28, v27);

            _Block_release(v27);
            swift_unknownObjectRelease();

            (*(v42 + 8))(v28, v29);
            (*(v39 + 8))(v7, v41);
            return (v36)(v16, v11);
          }
        }

        swift_unknownObjectRelease();
      }
    }

    aBlock = sub_27454AB68();
    v46 = v32;
    LOBYTE(v47) = v33 & 1;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
    sub_27463AEBC();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27454C894()
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_27454C900(uint64_t a1, uint64_t a2)
{
  v16[0] = a2;
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - v11;
  sub_27454D660(a1, v9, &unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27454DE34(v9, v12, &unk_28094D7C0);
  }

  else
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v14 = sub_27463969C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    return sub_27454D6A8(v12, &unk_28094D7C0);
  }

  v16[3] = v16[0];
  sub_27463968C();
  return (*(*(v14 - 8) + 8))(v12, v14);
}

uint64_t type metadata accessor for VariableEditorModifier()
{
  result = qword_280950D00;
  if (!qword_280950D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27454CC64()
{
  sub_27454CD9C(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274481024();
    if (v1 <= 0x3F)
    {
      sub_27454CD9C(319, &qword_28094BC00, &qword_28094A610, &unk_2746493F0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_27454CD9C(319, &unk_280950D20, &qword_28094DE00, &unk_2746517B0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27454CD9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v7 = OUTLINED_FUNCTION_54_1();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient13WeakReferenceVySo6UIViewCGSg(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27454CE24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_27454CE64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27454CED8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_27454CF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_27454CFBC()
{
  result = qword_280950D30;
  if (!qword_280950D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D30);
  }

  return result;
}

unint64_t sub_27454D048()
{
  result = qword_280950D50;
  if (!qword_280950D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D48);
    sub_27454D100();
    sub_27454E488(&qword_280950D98, &unk_280950DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D50);
  }

  return result;
}

unint64_t sub_27454D100()
{
  result = qword_280950D58;
  if (!qword_280950D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D60);
    sub_27454D1B8();
    sub_27454E488(&qword_28094A548, &unk_28094A550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D58);
  }

  return result;
}

unint64_t sub_27454D1B8()
{
  result = qword_280950D68;
  if (!qword_280950D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D70);
    sub_27454E488(&qword_280950D78, &qword_280950D80);
    sub_27454E488(&qword_280950D88, &unk_280950D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D68);
  }

  return result;
}

unint64_t sub_27454D29C()
{
  result = qword_280950DA8;
  if (!qword_280950DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D38);
    sub_27454E488(&qword_280950D78, &qword_280950D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B0C0);
    sub_27454D3C4();
    sub_27454D4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DA8);
  }

  return result;
}

unint64_t sub_27454D3C4()
{
  result = qword_280950DC0;
  if (!qword_280950DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950DB0);
    sub_27454E488(&qword_280950D78, &unk_280950D80);
    sub_27454E488(&qword_280950DC8, &unk_280950DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DC0);
  }

  return result;
}

unint64_t sub_27454D4A8()
{
  result = qword_280950DD8;
  if (!qword_280950DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B0C0);
    sub_27454D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DD8);
  }

  return result;
}

unint64_t sub_27454D52C()
{
  result = qword_280950DE0;
  if (!qword_280950DE0)
  {
    sub_274412734(255, &qword_280950DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DE0);
  }

  return result;
}

uint64_t sub_27454D594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableEditorModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27454D5F8()
{
  v0 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();

  return sub_27454C1C4();
}

uint64_t sub_27454D660(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3);
  OUTLINED_FUNCTION_0_4();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return v3;
}

uint64_t sub_27454D6A8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_60_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_27454D6FC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  sub_27454BD7C(v1 + v4, a1);
}

uint64_t sub_27454D764(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27454D7DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27454D824(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_4();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return a2;
}

void sub_27454D87C(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_27454AD1C(v5, a1);
}

uint64_t objectdestroy_26Tm_0()
{
  type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  OUTLINED_FUNCTION_54_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!OUTLINED_FUNCTION_5_28(v6))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v7 + 8))(v1 + v4, v2);
    }
  }

  else
  {
  }

  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_6_18(v9))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v10 + 8))(v5 + v8, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_17();

  return swift_deallocObject();
}

void sub_27454DA84(_BYTE *a1)
{
  v3 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_27454ADE8(a1, v5, v6, v7);
}

uint64_t sub_27454DAF4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_30_2();

  return sub_27454C238(a1, a2);
}

uint64_t objectdestroyTm_16()
{
  type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  OUTLINED_FUNCTION_54_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!OUTLINED_FUNCTION_5_28(v6))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v7 + 8))(v1 + v4, v2);
    }
  }

  else
  {
  }

  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_6_18(v9))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v10 + 8))(v5 + v8, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_17();

  return swift_deallocObject();
}

uint64_t sub_27454DCFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_30_2();

  return sub_27454C260(a1, a2, v2 + v6);
}

uint64_t sub_27454DD74()
{
  type metadata accessor for VariableEditorModifier();

  return sub_27454C894();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27454DE34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3);
  OUTLINED_FUNCTION_0_4();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return v3;
}

unint64_t sub_27454DEF4()
{
  result = qword_280950E70;
  if (!qword_280950E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950E70);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  sub_274482198(*(v0 + 64), *(v0 + 72));
  sub_27447FCE8(*(v0 + 80), *(v0 + 88));
  if (*(v0 + 105))
  {
    if ((*(v0 + 104) & 1) == 0)
    {
      MEMORY[0x277C5A3A0](v0 + 96);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_27454DFF4(uint64_t a1)
{
  v2 = type metadata accessor for VariableEditorModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27454E058(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_27454E098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27454E0FC()
{
  result = qword_280950EA0;
  if (!qword_280950EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950EA8);
    sub_27454D048();
    sub_27454D29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EA0);
  }

  return result;
}

unint64_t sub_27454E188()
{
  result = qword_280950EC0;
  if (!qword_280950EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950E28);
    sub_27454E240();
    sub_27454E488(&qword_280950ED8, &unk_280950EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EC0);
  }

  return result;
}

unint64_t sub_27454E240()
{
  result = qword_280950EC8;
  if (!qword_280950EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950E58);
    sub_27454E488(&qword_280950E68, &unk_280950E58);
    sub_27454DEF4();
    swift_getOpaqueTypeConformance2();
    sub_27454E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EC8);
  }

  return result;
}

unint64_t sub_27454E350()
{
  result = qword_280950ED0;
  if (!qword_280950ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950ED0);
  }

  return result;
}

unint64_t sub_27454E3A4()
{
  result = qword_280950EE8;
  if (!qword_280950EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950E88);
    sub_27454E488(&qword_280950EF0, &qword_280950E80);
    sub_27454E488(&qword_280950EF8, &unk_280950F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EE8);
  }

  return result;
}

uint64_t sub_27454E488(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_28(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t WFSwitchParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_2745501EC(&qword_28094B550, type metadata accessor for ParameterStateStore);

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_27454FE0C;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27454FE14();
  swift_retain_n();
  v5 = v1;
  return sub_27463AE9C();
}

id WFSwitchParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (!a1)
  {
    v13 = 0;
    goto LABEL_6;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
LABEL_6:
    v16 = &selRef_localizedOffDisplayName;
LABEL_7:
    v17 = [v2 *v16];
    v18 = sub_27463B6AC();
    v20 = v19;

    sub_274457D08(v18, v20, v12);
    return v12;
  }

  swift_unknownObjectRetain();
  v14 = [v13 variable];
  if (!v14)
  {
    v22 = [v13 number];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 BOOLValue];

      if (v24)
      {
        v16 = &selRef_localizedOnDisplayName;
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v15 = v14;
  [v12 populateWith_];

  swift_unknownObjectRelease();
  return v12;
}

id sub_27454E898(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFSwitchParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27454E900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v57 = v4;
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950F20);
  OUTLINED_FUNCTION_1();
  v59 = v15;
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v53 - v16;
  v17 = *v1;
  v18 = *(v1 + 24);
  v65 = *(v1 + 8);
  v66 = v18;
  v67 = *(v1 + 40);
  v19 = v17;
  v20 = sub_274465DAC();
  v54 = v21;
  v55 = v20;
  v53 = v22;
  v23 = (v10 + v7[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745501EC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  *v23 = sub_27463979C();
  v23[1] = v24;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(KeyPath);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v27);
  v28 = v10 + v7[19];
  *v28 = swift_getKeyPath();
  v28[40] = 0;
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v29);
  v62 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_29();
  v62 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_29();
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v31 = v19;
  sub_27444A564(v31);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *v10 = sub_27463950C();
  v10[1] = v32;
  v33 = [v31 localizedLabel];
  v34 = sub_27463B6AC();
  v36 = v35;

  v10[2] = v34;
  v10[3] = v36;
  v37 = [v31 localizedDescription];
  if (v37)
  {
    v38 = v37;
    v39 = sub_27463B6AC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v10[4] = v39;
  v10[5] = v41;
  v43 = v54;
  v42 = v55;
  v10[6] = 1;
  v10[7] = v42;
  v44 = v53;
  v10[8] = v43;
  v10[9] = v44;
  sub_27454EE38(v2, v10 + v7[13]);

  *(v10 + v7[14]) = 1;
  sub_274400A48(v10, v13);
  sub_27463A16C();
  OUTLINED_FUNCTION_7_8();
  v47 = sub_27440CA78(v45, v46);
  v48 = v56;
  sub_27463A82C();
  (*(v57 + 8))(v6, v58);
  v49 = sub_274400AB0(v13);
  MEMORY[0x28223BE20](v49);
  *(&v53 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8);
  v63 = v7;
  v64 = v47;
  OUTLINED_FUNCTION_2_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_30();
  sub_27440CA78(v50, &qword_28094D4E8);
  v51 = v60;
  sub_27463A88C();
  return (*(v59 + 8))(v48, v51);
}

uint64_t sub_27454EE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F58);
  MEMORY[0x28223BE20](v65);
  v62 = &v51 - v3;
  v61 = sub_274639B0C();
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F60);
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v51 - v5;
  v53 = sub_274639ABC();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8);
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F68);
  MEMORY[0x28223BE20](v58);
  v11 = &v51 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F70);
  v66 = *(v67 - 8);
  *&v12 = MEMORY[0x28223BE20](v67).n128_u64[0];
  v68 = &v51 - v13;
  v14 = [*a1 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  __src[0] = v15;
  __src[1] = v17;
  v18 = *(a1 + 24);
  v70 = *(a1 + 8);
  v71 = v18;
  v72 = *(a1 + 40);
  sub_27454F7B4();
  sub_274412BBC();
  sub_27463AE4C();
  sub_274639BAC();
  v19 = sub_27463A52C();
  v21 = v20;
  LOBYTE(v15) = v22;
  sub_2745500C4(a1, __src);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x81uLL);
  sub_27440CA78(&unk_280950F40, &qword_28094D4E8);
  sub_27463A7FC();
  v24 = v61;

  v25 = v15 & 1;
  v26 = v62;
  v27 = v19;
  v28 = v68;
  v29 = v21;
  v30 = v60;
  sub_274412C10(v27, v29, v25);

  v31 = v9;
  v32 = v58;
  (*(v59 + 8))(v31, v7);
  v33 = sub_274550104();
  sub_27463A71C();
  sub_27440CB1C(v11, &qword_280950F68);
  sub_2744C6ABC();
  v34 = __src[3];
  sub_27440CB1C(__src, &unk_2809507C0);
  if (v34 || ((v35 = v54, v36 = *(a1 + 120), *(a1 + 128) != 1) ? (, sub_27463BC0C(), v38 = sub_27463A2FC(), sub_274638CEC(), v38, sub_274639AAC(), swift_getAtKeyPath(), sub_274435568(v36, 0), (*(v52 + 8))(v35, v53), v37 = LOBYTE(__src[0])) : (v37 = *(a1 + 120)), v28 = v68, v37 == 2))
  {
    v39 = v55;
    sub_274639AFC();
    __src[0] = v32;
    __src[1] = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = sub_2745501EC(&unk_280950F80, MEMORY[0x277CDDDF0]);
    v42 = v57;
    v43 = v67;
    sub_27463A6EC();
    (*(v56 + 8))(v39, v24);
    v44 = v63;
    (*(v30 + 16))(v26, v42, v63);
    swift_storeEnumTagMultiPayload();
    __src[0] = v43;
    __src[1] = v24;
    __src[2] = OpaqueTypeConformance2;
    __src[3] = v41;
    swift_getOpaqueTypeConformance2();
    sub_274639DDC();
    (*(v30 + 8))(v42, v44);
    v50 = v43;
    v46 = v66;
  }

  else
  {
    v46 = v66;
    v47 = v67;
    (*(v66 + 16))(v26, v68, v67);
    swift_storeEnumTagMultiPayload();
    __src[0] = v32;
    __src[1] = v33;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = sub_2745501EC(&unk_280950F80, MEMORY[0x277CDDDF0]);
    __src[0] = v47;
    __src[1] = v24;
    __src[2] = v48;
    __src[3] = v49;
    swift_getOpaqueTypeConformance2();
    sub_274639DDC();
    v50 = v47;
  }

  return (*(v46 + 8))(v28, v50);
}

uint64_t sub_27454F7B4()
{
  v1 = v0;
  sub_27463B9CC();
  sub_27454FFB8(v0, &v10);
  v2 = sub_27463B9BC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v0[1];
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = v0[2];
  sub_27454FFB8(v0, &v10);
  v6 = sub_27463B9BC();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v1[1];
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = v1[2];
  sub_27463AF0C();
  return v10;
}

uint64_t StoredParameterState<A>.BOOL.getter(uint64_t a1)
{
  v3 = v1[1];
  v33 = *v1;
  v34 = v3;
  v35 = v1[2];
  sub_27463B9CC();
  v4 = *(*(a1 - 8) + 16);
  v4(&v27, &v33, a1);
  v5 = sub_27463B9BC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v16 = OUTLINED_FUNCTION_4_26(v6, v8, v9, v10, v11, v12, v13, v14, v27, v28, v29, v30, v31, v32, v33, v34, v15);
  (v4)(&v27, &v33, a1, v16);
  v17 = sub_27463B9BC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v7;
  OUTLINED_FUNCTION_4_26(v18, v19, v20, v18, v21, v22, v23, v24, v27, v28, v29, v30, v31, v32, v33, v34, v25);
  sub_27463AF0C();
  return v27;
}

uint64_t sub_27454FA0C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5 = v1;
  v6 = *(a1 + 40);
  sub_27454F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
  MEMORY[0x277C575F0](&v3);
  sub_27463AEBC();
}

uint64_t sub_27454FACC(id *a1)
{
  v1 = [*a1 localizedLabel];
  sub_27463B6AC();

  sub_27454F7B4();
  sub_274412BBC();
  return sub_27463AE4C();
}

id sub_27454FB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v6);
  v3 = v6;
  if (v6)
  {
    v4 = [v6 number];

    if (v4)
    {
      v3 = [v4 BOOLValue];
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_27454FC10(__int128 *a1@<X2>, unsigned __int8 *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  type metadata accessor for StoredParameterState();
  StoredParameterState.wrappedValue.getter();
  if (v8 && (v3 = [v8 number], v8, v3))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_27454FCB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D7C198]) initWithBoolValue_];
  v6 = v5;
  (*(a4 + 32))(&v6);
}

uint64_t sub_27454FD28(unsigned __int8 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a1;
  v6 = a4[1];
  v11 = *a4;
  v12 = v6;
  v13 = a4[2];
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = type metadata accessor for StoredParameterState();
  (*(*(v8 - 8) + 16))(v10, a4, v8);
  v10[0] = [v7 initWithBoolValue_];
  StoredParameterState.wrappedValue.setter(v10);
}

unint64_t sub_27454FE14()
{
  result = qword_280950F08;
  if (!qword_280950F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950F08);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27454FEE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_27454FF20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27454FFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_274550028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27454FB8C(a1, a2, a3);
  *a4 = result & 1;
  return result;
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_274550104()
{
  result = qword_280950F78;
  if (!qword_280950F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950F68);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8);
    sub_2745501EC(&qword_28094A6C0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950F78);
  }

  return result;
}

uint64_t sub_2745501EC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 OUTLINED_FUNCTION_4_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a17)
{
  *(a1 + 32) = v17;
  *(a1 + 40) = a15;
  *(a1 + 56) = a16;
  result = a17;
  *(a1 + 72) = a17;
  return result;
}

void OUTLINED_FUNCTION_5_29()
{
  v2 = *(v1 - 136);
  *v0 = *(v1 - 144);
  *(v0 + 8) = v2;
}

uint64_t sub_274550294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_27463B6AC();
  v7 = v6;

  swift_unknownObjectRetain();
  v4(v5, v7, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_274550320()
{
  v1 = OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_274550374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SummaryCoordinator();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

id sub_2745503B0()
{
  result = [v0 currentEditorIsEditing];
  if ((result & 1) == 0)
  {

    return [v0 setUpdateBlock_];
  }

  return result;
}

uint64_t sub_274550400()
{
  type metadata accessor for SummaryCoordinator();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(WFModuleSummaryCoordinator) init];
  return v0;
}

uint64_t sub_274550450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v127 = a1;
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951068);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v94 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951070);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v126 = &v94 - v11;
  v12 = *(v1 + 224);
  v13 = *(v2 + 232);
  v14 = *(v2 + 240);
  v15 = type metadata accessor for SummaryCoordinator();
  v17 = sub_274556B78(&unk_280951078, v16, type metadata accessor for SummaryCoordinator);
  v124 = v13;
  v125 = v12;
  v123 = v14;
  v122 = v15;
  v120 = v17;
  v117 = *(sub_27463920C() + 16);

  v18 = *v2;
  v114 = *(v2 + 8);
  v115 = v18;
  v19 = *(v2 + 16);
  v20 = *(v2 + 32);
  v21 = *(v2 + 112);
  LODWORD(v18) = *(v2 + 120);
  v118 = *(v2 + 24);
  v113 = v19;
  if (v18 == 1)
  {

    sub_27450AF48(v21, 1);
  }

  else
  {

    sub_27450AF48(v21, 0);
    sub_27463BC0C();
    v22 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v21, 0);
    v23 = OUTLINED_FUNCTION_5_30();
    v24(v23);
    v21 = v129;
  }

  v25 = *(v2 + 128);
  v26 = *(v2 + 136);
  v116 = v21;
  if (v26 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v27 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v25, 0);
    v28 = OUTLINED_FUNCTION_5_30();
    v29(v28);
    v25 = v129;
  }

  sub_2744C6F1C();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_27440CB1C(v138, &unk_28094A0F0);
  v30 = *(v2 + 160);
  v31 = *(v2 + 168);
  v112 = v25;
  if (v31 == 1)
  {
    *&v104 = v30;
  }

  else
  {

    sub_27463BC0C();
    v32 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v30, 0);
    (*(v4 + 8))(v6, v3);
    *&v104 = v129;
  }

  v107 = *(v2 + 40);
  v33 = *(v2 + 48);
  v101 = *(v2 + 56);
  v34 = v101;
  v102 = v33;
  v35 = *(v2 + 64);
  v37 = *(v2 + 88);
  v99 = *(v2 + 80);
  v36 = v99;
  v100 = v35;
  v98 = v37;
  v38 = *(v2 + 104);
  v39 = *(v2 + 176);
  v128.i64[0] = *(v2 + 184);
  v40 = *(v2 + 200);
  v103 = *(v2 + 192);
  v42 = *(v2 + 208);
  v41 = *(v2 + 216);
  v105 = v40;
  v106 = v42;
  v108 = v39;
  v109 = v41;
  v43 = *(v2 + 72);
  v44 = *(v2 + 96);
  v134 = v39;
  v135.i64[0] = v128.i64[0];
  v135.i64[1] = v103;
  v136.i64[0] = v40;
  v136.i64[1] = v42;
  v137 = v41;

  sub_274483110(v34, v35);
  sub_274483110(v36, v37);
  v45 = v38;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951088);
  sub_27463AD0C();
  v95 = v130;
  v96 = v129;
  v97 = v133;
  sub_27440CA78(&qword_280950FF0, &unk_2809521A0);
  LOBYTE(v35) = v104 & 1;
  v104 = v131;
  v94 = v132;
  v47 = v114;
  v46 = v115;
  *v9 = v117;
  *(v9 + 1) = v46;
  v48 = v113;
  *(v9 + 2) = v47;
  *(v9 + 3) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0);
  *(v9 + 4) = sub_27463950C();
  *(v9 + 5) = v49;
  *(v9 + 6) = v20;
  v50 = v112;
  *(v9 + 7) = v116;
  *(v9 + 8) = v50;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v9[80] = v35;
  v9[81] = v107;
  v51 = v103;
  v52 = v100;
  v53 = v101;
  *(v9 + 11) = v102;
  *(v9 + 12) = v53;
  *(v9 + 13) = v52;
  v9[112] = v43;
  v54 = v98;
  *(v9 + 15) = v99;
  *(v9 + 16) = v54;
  v9[136] = v44;
  v55 = v95;
  v56 = v96;
  *(v9 + 18) = v38;
  *(v9 + 19) = v56;
  *(v9 + 20) = v55;
  *(v9 + 184) = v94;
  *(v9 + 168) = v104;
  *(v9 + 25) = v97;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  *(v9 + 26) = sub_27463979C();
  *(v9 + 27) = v57;
  v58 = type metadata accessor for SummaryHostingView(0);
  v59 = *(v58 + 80);
  *&v9[v59] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(KeyPath);
  v61 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v61);
  v62 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v62);
  v63 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v63);
  v64 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v64);
  v65 = &v9[*(v58 + 104)];
  *v65 = swift_getKeyPath();
  v65[9] = 0;
  sub_274556FA8(v2, &v129);
  v66 = swift_allocObject();
  sub_274556FE0(&v129, v66 + 16);
  v67 = &v9[*(v119.i64[0] + 36)];
  *v67 = 0;
  *(v67 + 1) = 0;
  *(v67 + 2) = sub_274557018;
  *(v67 + 3) = v66;
  v68 = v108;
  v129 = v108;
  v130 = v128.i64[0];
  *&v131 = v51;
  v69 = v105;
  *(&v131 + 1) = v105;
  v70 = v106;
  *&v132 = v106;
  v71 = v109;
  *(&v132 + 1) = v109;
  sub_27463ACEC();
  v72 = v134;
  if (v134)
  {
    v73 = v134;
  }

  v129 = v68;
  v130 = v128.i64[0];
  *&v131 = v51;
  *(&v131 + 1) = v69;
  *&v132 = v70;
  *(&v132 + 1) = v71;
  sub_27463ACEC();
  v74.i64[0] = 0;
  v75.i64[0] = v134;
  v76 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v75, v74)).i64[0], 0);
  v128 = vandq_s8(v135, v76);
  v119 = vandq_s8(v136, v76);
  v77 = v134 == 0;

  v78 = v126;
  sub_274557428(v9, v126, &qword_280951068);
  v79 = v78 + *(v121 + 36);
  v80 = v119;
  *v79 = v128;
  *(v79 + 16) = v80;
  *(v79 + 32) = v77;
  *(v79 + 40) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648560;
  v82 = *(sub_27463920C() + 16);

  *(inited + 32) = v82;
  if (sub_274453594(inited))
  {
    sub_274574834(inited, v83, v84, v85, v86, v87, v88, v89, v94);
    v91 = v90;
  }

  else
  {
    swift_setDeallocating();
    sub_2744EBB98();
    v91 = MEMORY[0x277D84FA0];
  }

  v92 = v127;
  sub_274557428(v78, v127, &qword_280951070);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951090);
  *(v92 + *(result + 36)) = v91;
  return result;
}

void sub_274550D6C()
{
  type metadata accessor for SummaryCoordinator();
  sub_274556B78(&unk_280951078, v0, type metadata accessor for SummaryCoordinator);
  v1 = *(sub_27463920C() + 16);

  sub_2745503B0();
}

void sub_274550E2C()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_27463C27C())
    {
      sub_274574834(MEMORY[0x277D84F90], v2, v3, v4, v5, v6, v7, v8, v0);
    }

    else
    {
      v1 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  qword_280965ED8 = v1;
}

uint64_t sub_274550ED4@<X0>(void *a1@<X8>)
{
  if (qword_280949328 != -1)
  {
    swift_once();
  }

  *a1 = qword_280965ED8;
}

id sub_274550F44()
{
  v1 = v0 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  result = *(v1 + 64);
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return [result viewController];
    }
  }

  return result;
}

void sub_274551020(void *a1)
{
  v1 = [a1 templateView];
  if (v1)
  {
    v2 = v1;
    [v1 invalidateIntrinsicContentSize];
  }
}

uint64_t sub_274551104@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  result = swift_beginAccess();
  v5 = *(v3 + 104);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
    sub_27463AEBC();
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_274551264()
{
  sub_27463B14C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0);
  sub_27463946C();
}

uint64_t sub_2745512E8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  result = swift_beginAccess();
  v5 = *(v3 + 128);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
    sub_27463AEBC();
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_274551430(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v4 + v12, v11);
  v13 = *(v11 + 26);
  if (v13)
  {
    v16[0] = a2;
    v16[1] = a1 & 1;
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = 0;
    v16[5] = 0;
    v17 = 0;
    v14 = v13;
    swift_unknownObjectRetain();

    sub_27443CA58();

    return sub_274557084(v11);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274551648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v7 + v16, v15);
  if (a6)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a6;
    *(v17 + 24) = a7;
    v18 = sub_27440CBD0;
  }

  else
  {
    v18 = CGSizeMake;
    v17 = 0;
  }

  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v21 = *(v15 + 7);
  if (!v21)
  {
    sub_2744069F0(a6);
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v19);
  v26[-2] = v15;
  v26[-1] = a1;
  swift_unknownObjectRetain();
  sub_2744069F0(a6);
  sub_27463B13C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0);
  sub_27463946C();

  v22 = *(v15 + 26);
  if (v22)
  {
    v26[1] = a1;
    v26[2] = v21;
    v26[3] = sub_27440CB74;
    v26[4] = v20;
    v26[5] = a4;
    v26[6] = a5;
    v27 = 1;
    swift_unknownObjectRetain();
    v23 = v22;
    v24 = a1;

    sub_27443CA58();

    swift_unknownObjectRelease();
LABEL_8:

    return sub_274557084(v15);
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_274551A50(void *a1, double a2, double a3, double a4, double a5)
{
  v39 = sub_27463B1EC();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_27463B21C();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v5 + v18, v17);
  v19 = [a1 anchor];
  v20 = *(v17 + 20);
  v21 = *(v17 + 25);
  aBlock = *(v17 + 19);
  v49 = v20;
  v22 = *(v17 + 184);
  v50 = *(v17 + 168);
  v51 = v22;
  v52 = v21;
  v43 = v19;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v23 = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809510A8);
  sub_27463AEBC();
  sub_274557084(v17);

  v24 = [a1 anchor];
  v25 = [a1 resultType];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  *(v27 + 48) = a4;
  *(v27 + 56) = a5;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v29 = objc_allocWithZone(WFVariableEditingOptions);
  v30 = a1;
  v31 = sub_2745AFA0C(v24, v25, sub_274557338, v27, sub_27445B60C, v28);
  sub_274412734(0, &qword_28094AF90);
  v32 = sub_27463BCEC();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v31;
  *&v51 = sub_274557394;
  *(&v51 + 1) = v34;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  *&v50 = sub_27443E0E8;
  *(&v50 + 1) = &block_descriptor_68;
  v35 = _Block_copy(&aBlock);

  v36 = v31;
  sub_27463B20C();
  v43 = MEMORY[0x277D84F90];
  sub_274556B78(&qword_28094E100, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
  v37 = v39;
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v14, v12, v35);
  _Block_release(v35);

  (*(v42 + 8))(v12, v37);
  (*(v40 + 8))(v14, v41);
}

id sub_274551FB4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v13 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v49[-v20];
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
      swift_beginAccess();
      sub_274557020(v23 + v24, v21);
      v25 = a1;

      v26 = [a7 anchor];
      v27 = [v26 variableProvider];

      v28 = [a7 anchor];
      v29 = [v28 parameter];

      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
        swift_beginAccess();
        sub_274557020(v31 + v32, v18);

        sub_2744C6DD8();
        sub_274557084(v18);
        if (v54 != 1)
        {
          v33 = swift_unknownObjectWeakLoadStrong();
          sub_27440CB1C(&v53, &qword_280950E50);
          goto LABEL_10;
        }

        sub_27440CB1C(&v53, &qword_28094E090);
      }

      v33 = 0;
LABEL_10:
      v41 = objc_allocWithZone(WFVariableEditingAnchor);
      v42 = v25;
      v43 = sub_2745AFB44(v42, v27, v29, v33);
      v44 = *(v21 + 20);
      v45 = *(v21 + 25);
      v53 = *(v21 + 19);
      v54 = v44;
      v46 = *(v21 + 184);
      v55 = *(v21 + 168);
      v56 = v46;
      v57 = v45;
      *&v50 = v43;
      *(&v50 + 1) = a2;
      *&v51 = a3;
      *(&v51 + 1) = a4;
      v52 = a5;
      v47 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809510A8);
      sub_27463AEBC();

      sub_274557084(v21);

      goto LABEL_11;
    }
  }

  else
  {
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
      swift_beginAccess();
      sub_274557020(v35 + v36, v15);

      v37 = *(v15 + 20);
      v38 = *(v15 + 25);
      v53 = *(v15 + 19);
      v54 = v37;
      v39 = *(v15 + 184);
      v55 = *(v15 + 168);
      v56 = v39;
      v57 = v38;
      v52 = 0.0;
      v51 = 0u;
      v50 = 0u;
      v40 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809510A8);
      sub_27463AEBC();
      sub_274557084(v15);

LABEL_11:
    }
  }

  return [a7 variableDidChange_];
}

void sub_2745523E0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
    swift_beginAccess();
    sub_274557020(v10 + v11, v8);

    v12 = *(v8 + 26);
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = v12;
    sub_274557084(v8);
    v14 = sub_27443C514();

    if (v14)
    {
      [v14 finishEditingReturningToKeyboard_];
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v16 + v17, v5);

  v18 = *(v5 + 26);
  if (!v18)
  {
LABEL_9:
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
    return;
  }

  v19 = v18;
  sub_274557084(v5);
  v20 = a2;
  sub_27443C58C(a2);
}

void sub_274552690()
{
  v1 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v0 + v4, v3);
  v5 = *(v3 + 26);
  if (v5)
  {
    v6 = v5;
    sub_274557084(v3);

    sub_27443CE38();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

id sub_274552870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryHostingView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745528E0()
{
  result = type metadata accessor for SummaryHostingView(319);
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

id sub_274552990()
{
  v1 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274557020(v0, v3);
  v4 = type metadata accessor for SummaryHostingView.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  sub_274557020(v3, v5 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_274557084(v3);
  return v6;
}

uint64_t sub_274552A58()
{
  v0 = sub_274638D4C();
  v55 = *(v0 - 8);
  v56 = v0;
  MEMORY[0x28223BE20](v0);
  v64 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_274639ABC();
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_274638D1C();
  v4 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v69 = sub_274638D3C();
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = sub_274638BEC();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x28223BE20](v19);
  v65 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v21 = sub_274638D2C();
  v22 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v23 = swift_slowAlloc();
    v68 = v11;
    v24 = v23;
    *v23 = 0;
    v25 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v21, v22, v25, "SummaryViewMake", "Making summary view", v24, 2u);
    v11 = v68;
    MEMORY[0x277C5A270](v24, -1, -1);
  }

  v26 = v67;
  (*(v4 + 16))(v60, v10, v67);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v27 = v69;
  (*(v11 + 16))(v15, v18, v69);
  v28 = v65;
  sub_274638BFC();
  v30 = *(v4 + 8);
  v29 = (v4 + 8);
  v60 = v30;
  (v30)(v10, v26);
  v32 = *(v11 + 8);
  v31 = v11 + 8;
  v57 = v32;
  v32(v18, v27);
  v33 = (v61 + *(type metadata accessor for SummaryHostingView(0) + 92));
  v34 = *v33;
  v35 = *(v33 + 8);

  v36 = v34;
  if ((v35 & 1) == 0)
  {
    sub_27463BC0C();
    v37 = sub_27463A2FC();
    sub_274638CEC();

    v38 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v34, 0);
    (*(v63 + 8))(v38, v2);
    v36 = v72;
  }

  v68 = v31;
  if (v36)
  {
    v39 = sub_27463876C();
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_allocWithZone(type metadata accessor for SummaryViewHost()) initWithUseCase_];

  if ((v35 & 1) == 0)
  {
    sub_27463BC0C();
    v41 = sub_27463A2FC();
    sub_274638CEC();

    v42 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v34, 0);
    (*(v63 + 8))(v42, v2);
    v34 = v72;
  }

  v43 = v64;
  v64 = v29;
  *&v40[OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics] = v34;

  [v40 setExtendSlotBackgroundOffEdges_];
  v44 = v66;
  if (v39)
  {

    sub_27463877C();
  }

  sub_274638BAC();
  v45 = sub_274638BCC();
  v47 = v46;
  sub_274638BDC();
  v48 = sub_274638D2C();
  sub_274638D5C();
  LODWORD(v63) = sub_27463BD3C();
  result = sub_27463C08C();
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((v47 & 1) == 0)
  {
    if (v45)
    {
      v51 = v55;
      v50 = v56;
LABEL_20:

      sub_274638D8C();

      if ((*(v51 + 88))(v43, v50) == *MEMORY[0x277D85B00])
      {
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v51 + 8))(v43, v50);
        v52 = "";
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = sub_274638D0C();
      _os_signpost_emit_with_name_impl(&dword_2743F0000, v48, v63, v54, v45, v52, v53, 2u);
      MEMORY[0x277C5A270](v53, -1, -1);
      v28 = v65;
      v44 = v66;
LABEL_24:

      (v60)(v70, v67);
      v57(v44, v69);
      (*(v58 + 8))(v28, v59);
      return v40;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v45))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v45 & 0xFFFFF800) != 0xD800)
  {
    v51 = v55;
    v50 = v56;
    if (v45 >> 16 <= 0x10)
    {
      v45 = &v71;
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2745532CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v141 = a2;
  v144 = a1;
  v119 = sub_274638D4C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v134 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_274638C1C();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2746395EC();
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for SummaryHostingView(0);
  v126 = *(v147 - 1);
  MEMORY[0x28223BE20](v147);
  v127 = v8;
  v140 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_274639ABC();
  v146 = *(v142 - 1);
  MEMORY[0x28223BE20](v142);
  v137 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_274638D1C();
  v145 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v133 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v118 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v118 - v15;
  v138 = sub_274638D3C();
  v17 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v118 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v118 - v23;
  v124 = sub_274638BEC();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v143 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v26 = sub_274638D2C();
  v27 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v26, v27, v29, "SummaryViewUpdate", "Making summary view", v28, 2u);
    MEMORY[0x277C5A270](v28, -1, -1);
  }

  v30 = v145;
  v31 = v139;
  (*(v145 + 16))(v13, v16, v139);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v32 = v138;
  (*(v17 + 16))(v21, v24, v138);
  sub_274638BFC();
  v33 = *(v30 + 8);
  v145 = v30 + 8;
  v122 = v33;
  v33(v16, v31);
  v34 = *(v17 + 8);
  v125 = v17 + 8;
  v121 = v34;
  v34(v24, v32);
  v35 = v3 + v147[23];
  v36 = *v35;
  v37 = *(v35 + 8);

  if (v37)
  {
    v38 = v144;
    v39 = v137;
    if (v36)
    {
LABEL_5:
      v137 = sub_27463876C();

      goto LABEL_8;
    }
  }

  else
  {
    sub_27463BC0C();
    v40 = sub_27463A2FC();
    sub_274638CEC();

    v39 = v137;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v36, 0);
    (v146)[1](v39, v142);
    v38 = v144;
    if (aBlock)
    {
      goto LABEL_5;
    }
  }

  v137 = 0;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951098);
  sub_27463A1BC();
  v41 = v156;
  v42 = v140;
  sub_274557020(v3, v140);
  v43 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_2745570E0(v42, v41 + v43);
  swift_endAccess();

  v44 = *v3;
  sub_27463A1BC();
  v45 = aBlock;
  [v44 setDelegate_];

  if ([v38 delegate])
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46 && v46 != v44)
    {
      [v46 setTemplateView_];
    }

    swift_unknownObjectRelease();
  }

  v47 = [v44 templateView];
  if (!v47 || (v48 = v47, v47, v48 != v38))
  {
    [v44 setTemplateView_];
  }

  v128 = *(v3 + 80);
  if (v128 == 1)
  {
    v141 = *(v3 + 24);
  }

  else if (sub_274453594(MEMORY[0x277D84F90]))
  {
    sub_274573900(MEMORY[0x277D84F90], v49, v50, v51, v52, v53, v54, v55, v118);
    v141 = v56;
  }

  else
  {
    v141 = MEMORY[0x277D84FA0];
  }

  v57 = v3 + v147[22];
  v58 = *v57;
  v59 = *(v57 + 8);
  if (v59 == 1)
  {
    if (v58)
    {
LABEL_23:
      v60 = &selRef_wf_slotTemplateSlotRunningTitleColor;
      goto LABEL_26;
    }
  }

  else
  {

    sub_27463BC0C();
    v61 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v58, 0);
    (v146)[1](v39, v142);
    if (aBlock)
    {
      goto LABEL_23;
    }
  }

  v60 = &selRef_wf_slotTemplateSlotDisabledTitleColor;
LABEL_26:
  v136 = [objc_opt_self() *v60];
  if (v59)
  {
    v62 = v142;
    if (v58)
    {
LABEL_28:
      v63 = &selRef_wf_slotTemplateSlotRunningBackgroundColor;
      goto LABEL_31;
    }
  }

  else
  {

    sub_27463BC0C();
    v64 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v58, 0);
    v62 = v142;
    (v146)[1](v39, v142);
    if (aBlock)
    {
      goto LABEL_28;
    }
  }

  v63 = &selRef_wf_slotTemplateSlotDisabledBackgroundColor;
LABEL_31:
  v142 = [objc_opt_self() *v63];
  sub_27463A1BC();
  v65 = aBlock;
  v66 = sub_27463B66C();
  sub_274412734(0, &qword_28094AE40);
  sub_27445B7F8();
  v67 = sub_27463BA3C();
  v68 = sub_274554818();
  sub_274557144(v66, v67, v141, v68, v44);

  [v44 setVariableProvider_];
  v120 = v65;
  [v44 setVariableUIDelegate_];
  [v44 setAuxiliaryViewPresenter_];
  swift_unknownObjectRelease();
  v69 = v3 + v147[21];
  v70 = *v69;
  if (*(v69 + 8) != 1)
  {

    sub_27463BC0C();
    v71 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v70, 0);
    (v146)[1](v39, v62);
    LOBYTE(v70) = aBlock;
  }

  v72 = v144;
  [v44 setProcessing_];
  v73 = v140;
  sub_274557020(v3, v140);
  v74 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v75 = swift_allocObject();
  sub_274557234(v73, v75 + v74);
  v152 = sub_274557298;
  v153 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v149 = 1107296256;
  v150 = sub_274550294;
  v151 = &block_descriptor_28;
  v76 = _Block_copy(&aBlock);

  [v44 setUpdateBlock_];
  _Block_release(v76);
  [v44 setTemplateView_];
  v77 = v3 + v147[24];
  v78 = *v77;
  if (*(v77 + 8) == 1)
  {
    v79 = v146;
  }

  else
  {

    sub_27463BC0C();
    v80 = sub_27463A2FC();
    sub_274638CEC();

    v72 = v144;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v78, 0);
    v79 = v146;
    (v146)[1](v39, v62);
    LOBYTE(v78) = aBlock;
  }

  [v44 setAllowsPickingVariables_];
  v81 = objc_opt_self();
  v82 = [v81 preferredFontForTextStyle_];
  [v82 pointSize];
  v84 = v83;

  v85 = [v81 systemFontOfSize:v84 weight:*MEMORY[0x277D74410]];
  v86 = [v81 systemFontOfSize_];
  v147 = v85;
  [v72 setFont_];
  v146 = v86;
  [v72 setUnpopulatedFont_];
  [v72 setDisabledSlotTitleColor:v136 backgroundColor:v142 animated:0];
  sub_27463A1CC();
  sub_2746398FC();
  (v79)[1](v39, v62);
  [v72 setTextAlignment_];
  [v72 setHorizontalPadding_];
  sub_274412734(0, &qword_280951020);
  v87 = sub_27463B7FC();
  [v72 setExclusionRects_];

  if (*(v3 + 144))
  {
    [v72 setTextColor_];
  }

  else
  {
    v88 = [objc_opt_self() wf_labelColor];
    [v72 setTextColor_];
  }

  v89 = *(v3 + 104);
  if (v89)
  {
    v90 = *(v3 + 112);
    v91 = *(v3 + 96);

    [v72 setShowsDisclosureArrow_];
    aBlock = v91;
    v149 = v89;
    LOBYTE(v150) = v90 & 1;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
    MEMORY[0x277C575F0](&v156, v92);
    [v72 setDisclosureArrowIsOpen_];
  }

  else
  {
    [v72 setShowsDisclosureArrow_];
    [v72 setDisclosureArrowIsOpen_];
  }

  v93 = v131;
  v94 = v130;
  v95 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277D79BE8], v132);
  v96 = sub_274638C0C();
  (*(v93 + 8))(v94, v95);
  if ((v96 & 1) != 0 && (v97 = *(v3 + 128)) != 0)
  {
    v98 = *(v3 + 136);
    v99 = *(v3 + 120);

    [v72 setShowsOutputButton_];
    aBlock = v99;
    v149 = v97;
    LOBYTE(v150) = v98 & 1;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20);
    MEMORY[0x277C575F0](&v156, v100);
    [v72 setOutputButtonIsOpen_];
  }

  else
  {
    [v72 setShowsOutputButton_];
    [v72 setOutputButtonIsOpen_];
  }

  if ((v128 & 1) != 0 || ([v44 currentEditorIsEditing] & 1) == 0)
  {

    v103 = v134;
    v104 = v133;
    goto LABEL_53;
  }

  v101 = *(v3 + 208);
  if (v101)
  {
    v102 = v101;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v103 = v134;
    v104 = v133;
    if (v154 == 2 && !(v149 | aBlock | v150 | v151 | v152 | v153))
    {
      [v44 cancelEditingWithCompletionHandler_];
    }

    else
    {
      sub_27443C9D4(aBlock, v149, v150, v151, v152, v153, v154);
    }

LABEL_53:
    v105 = v135;
    v106 = v143;
    if (v137)
    {

      sub_27463877C();
    }

    sub_274638BAC();
    v107 = sub_274638BCC();
    v109 = v108;
    sub_274638BDC();
    v110 = sub_274638D2C();
    sub_274638D5C();
    v111 = sub_27463BD3C();
    if ((sub_27463C08C() & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v109)
    {
      if (!HIDWORD(v107))
      {
        if ((v107 & 0xFFFFF800) == 0xD800)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v112 = v119;
        v113 = v118;
        if (v107 >> 16 <= 0x10)
        {
          v107 = &v155;
          goto LABEL_63;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else
    {
      if (v107)
      {
        v112 = v119;
        v113 = v118;
LABEL_63:

        sub_274638D8C();

        if ((*(v113 + 88))(v103, v112) == *MEMORY[0x277D85B00])
        {
          v114 = "[Error] Interval already ended";
        }

        else
        {
          (*(v113 + 8))(v103, v112);
          v114 = "";
        }

        v115 = swift_slowAlloc();
        *v115 = 0;
        v116 = sub_274638D0C();
        _os_signpost_emit_with_name_impl(&dword_2743F0000, v110, v111, v116, v107, v114, v115, 2u);
        MEMORY[0x277C5A270](v115, -1, -1);
        v105 = v135;
        v106 = v143;
LABEL_67:

        v122(v104, v139);
        v121(v105, v138);
        return (*(v123 + 8))(v106, v124);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_73:
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_274554818()
{
  v1 = *(v0 + 24);
  if ((v1 & 0xC000000000000001) != 0)
  {

    sub_27463C23C();
    sub_274412734(0, &qword_28094AE40);
    sub_27445B7F8();
    sub_27463BA7C();
    v1 = v35;
    v2 = v36;
    v3 = v37;
    v4 = v38;
    v5 = v39;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  v32 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_27463C2BC() || (sub_274412734(0, &qword_28094AE40), swift_dynamicCast(), (v12 = v34) == 0))
      {
LABEL_28:
        sub_274406A24();
        return v32;
      }

      goto LABEL_17;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_28;
    }

LABEL_17:
    v13 = [v12 key];
    v14 = sub_27463B6AC();

    v34 = v14;
    v15 = sub_2746387FC();

    if (v15 && (swift_getObjectType(), v16 = sub_2746385AC(), , v16))
    {
      v17 = [v12 key];
      v18 = sub_27463B6AC();
      v20 = v19;

      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = v32;
      v31 = v18;
      v21 = sub_274534C48(v18, v20);
      v33 = v22;
      if (__OFADD__(v34[2], (v22 & 1) == 0))
      {
        goto LABEL_30;
      }

      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD58);
      if (sub_27463C4CC())
      {
        v24 = sub_274534C48(v31, v20);
        if ((v33 & 1) != (v25 & 1))
        {
          goto LABEL_32;
        }

        v23 = v24;
        if (v33)
        {
          goto LABEL_27;
        }

LABEL_24:
        v34[(v23 >> 6) + 8] |= 1 << v23;
        v26 = (v34[6] + 16 * v23);
        *v26 = v31;
        v26[1] = v20;
        *(v34[7] + 8 * v23) = v16;
        swift_unknownObjectRelease();

        v27 = v34[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v32 = v34;
        v34[2] = v29;
      }

      else
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_27:

        v32 = v34;
        *(v34[7] + 8 * v23) = v16;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_28;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_274554C00(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_274638DAC();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274639ABC();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = a1;
  v36[1] = a2;

  v12 = sub_2746387FC();

  if (v12)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2746385BC();
  }

  v30 = v11;
  v31 = v9;
  v14 = v8;
  v32 = v6;
  v33 = a1;
  if (*(v2 + 56))
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      swift_unknownObjectRetain();
      v17 = sub_27463B66C();
      v18 = [v16 parameterForKey_];

      if (v18)
      {
        v19 = v3 + *(type metadata accessor for SummaryHostingView(0) + 100);
        v20 = *v19;
        if (*(v19 + 8))
        {
          swift_unknownObjectRetain();
          v21 = v18;
          sub_27455732C(v20, 1);
        }

        else
        {
          swift_unknownObjectRetain();
          v27 = v18;
          sub_27455732C(v20, 0);
          sub_27463BC0C();
          v28 = sub_27463A2FC();
          sub_274638CEC();

          v29 = v30;
          sub_274639AAC();
          swift_getAtKeyPath();
          sub_27447FCE8(v20, 0);
          (*(v34 + 8))(v29, v31);
        }

        type metadata accessor for ParameterStateStore();
        ParameterStateStore.__allocating_init(action:parameter:undoManager:)();
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_2746385BC();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  v22 = v14;
  sub_274638C2C();

  v23 = sub_274638D9C();
  v24 = sub_27463BBFC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2745E7980(v33, a2, v36);
    _os_log_impl(&dword_2743F0000, v23, v24, "Unable to update parameter state for key: %s, since action or parameter is missing", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x277C5A270](v26, -1, -1);
    MEMORY[0x277C5A270](v25, -1, -1);
  }

  return (*(v35 + 8))(v22, v32);
}

uint64_t sub_274555044(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v57 = sub_274638D4C();
  v62 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_274639ABC();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_274638D1C();
  v5 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v73 = sub_274638D3C();
  v13 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = sub_274638BEC();
  v65 = *(v22 - 8);
  v66 = v22;
  MEMORY[0x28223BE20](v22);
  v71 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v24 = sub_274638D2C();
  v25 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v26 = swift_slowAlloc();
    v67 = v15;
    v27 = v13;
    v28 = v5;
    v29 = v26;
    *v26 = 0;
    v30 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v24, v25, v30, "SummaryViewReset", "Resetting summary view", v29, 2u);
    v31 = v29;
    v5 = v28;
    v13 = v27;
    v15 = v67;
    MEMORY[0x277C5A270](v31, -1, -1);
  }

  v32 = v72;
  (*(v5 + 16))(v9, v12, v72);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v33 = v73;
  (*(v13 + 16))(v18, v21, v73);
  v34 = v71;
  sub_274638BFC();
  v35 = *(v5 + 8);
  v67 = (v5 + 8);
  v64 = v35;
  v35(v12, v32);
  v37 = *(v13 + 8);
  v36 = (v13 + 8);
  v63 = v37;
  v37(v21, v33);
  v38 = v68 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  v39 = (v38 + *(type metadata accessor for SummaryHostingView(0) + 92));
  v40 = *v39;
  LOBYTE(v38) = *(v39 + 8);

  if ((v38 & 1) == 0)
  {
    sub_27463BC0C();
    v41 = sub_27463A2FC();
    sub_274638CEC();

    v42 = v58;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v40, 0);
    (*(v59 + 8))(v42, v60);
    v40 = v75;
  }

  v43 = v70;
  v70 = v36;
  if (v40)
  {
    sub_27463874C();
  }

  [*v69 setTemplateView_];
  sub_2745503B0();
  sub_274638BAC();
  v44 = sub_274638BCC();
  v46 = v45;
  sub_274638BDC();
  v47 = sub_274638D2C();
  sub_274638D5C();
  v48 = sub_27463BD3C();
  result = sub_27463C08C();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((v46 & 1) == 0)
  {
    v51 = v61;
    v50 = v62;
    if (v44)
    {
      v52 = v57;
LABEL_15:

      sub_274638D8C();

      if ((*(v50 + 88))(v51, v52) == *MEMORY[0x277D85B00])
      {
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v51, v52);
        v53 = "";
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = sub_274638D0C();
      _os_signpost_emit_with_name_impl(&dword_2743F0000, v47, v48, v55, v44, v53, v54, 2u);
      MEMORY[0x277C5A270](v54, -1, -1);
      v34 = v71;
      v32 = v72;
LABEL_19:

      v64(v43, v32);
      v63(v15, v73);
      return (*(v65 + 8))(v34, v66);
    }

    __break(1u);
    goto LABEL_21;
  }

  v51 = v61;
  v50 = v62;
  if (HIDWORD(v44))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v44 & 0xFFFFF800) != 0xD800)
  {
    v52 = v57;
    if (v44 >> 16 <= 0x10)
    {
      v44 = &v74;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2745557F8(uint64_t a1, uint64_t a2)
{
  v60 = sub_274638D4C();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274638D1C();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = v58 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v58 - v9;
  v69 = sub_274638D3C();
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = v58 - v15;
  MEMORY[0x28223BE20](v16);
  v67 = v58 - v17;
  v18 = sub_274638BEC();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_274639ABC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (a2 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view);
  swift_beginAccess();
  v26 = v25 + *(type metadata accessor for SummaryHostingView(0) + 92);
  v27 = *v26;
  v28 = v26[8];

  v65 = v13;
  if ((v28 & 1) == 0)
  {
    sub_27463BC0C();
    v59 = v21;
    v29 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v27, 0);
    (*(v22 + 8))(v24, v59);
    v27 = v74;
  }

  v31 = v71;
  v30 = v72;
  v32 = v67;
  if (v27)
  {
    sub_27463874C();
  }

  [*v25 setTemplateView_];
  v33 = *v25;
  sub_2745503B0();

  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v34 = sub_274638D2C();
  v35 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v34, v35, v37, "SummaryViewDismantle", "Dismantling summary view", v36, 2u);
    v38 = v36;
    v30 = v72;
    MEMORY[0x277C5A270](v38, -1, -1);
  }

  (*(v31 + 16))(v68, v10, v30);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v39 = v69;
  (*(v11 + 16))(v66, v32, v69);
  sub_274638BFC();
  v68 = *(v31 + 8);
  (v68)(v10, v30);
  v40 = *(v11 + 8);
  v40(v32, v39);
  v41 = v65;
  sub_274638BAC();
  v67 = sub_274638BCC();
  LODWORD(v66) = v42;
  v43 = v31 + 8;
  sub_274638BDC();
  v44 = sub_274638D2C();
  v45 = v20;
  v46 = v11 + 8;
  v47 = v39;
  v48 = v70;
  sub_274638D5C();
  LODWORD(v59) = sub_27463BD3C();
  result = sub_27463C08C();
  v50 = v72;
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v58[0] = v40;
  v58[1] = v46;
  v71 = v43;
  if ((v66 & 1) == 0)
  {
    v52 = v61;
    v51 = v62;
    v53 = v67;
    if (v67)
    {
      v54 = v60;
LABEL_15:

      sub_274638D8C();

      if ((*(v51 + 88))(v52, v54) == *MEMORY[0x277D85B00])
      {
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v51 + 8))(v52, v54);
        v55 = "";
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v48 = v70;
      v57 = sub_274638D0C();
      _os_signpost_emit_with_name_impl(&dword_2743F0000, v44, v59, v57, v53, v55, v56, 2u);
      MEMORY[0x277C5A270](v56, -1, -1);
      v50 = v72;
      v40 = v58[0];
LABEL_19:

      (v68)(v48, v50);
      v40(v41, v47);
      return (*(v63 + 8))(v45, v64);
    }

    __break(1u);
    goto LABEL_21;
  }

  v52 = v61;
  v51 = v62;
  if (HIDWORD(v67))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v67 & 0xFFFFF800) != 0xD800)
  {
    v54 = v60;
    if (v67 >> 16 <= 0x10)
    {
      v53 = &v73;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_274555FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v21 = a2;
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = type metadata accessor for SummaryHostingView(0);
  sub_2745573B8(a1 + *(v15 + 80), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274557428(v11, v14, &unk_28094D7C0);
  }

  else
  {
    sub_27463BC0C();
    v16 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v17 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v17);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v14, &unk_28094D7C0);
  }

  else
  {
    v22 = v21;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v17 - 8) + 8))(v14, v17);
  }

  *a3 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_2745562CC(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SummaryViewHost();
  objc_msgSendSuper2(&v4, sel_willMoveToWindow_, a1);
  return sub_27455638C(a1 != 0);
}

uint64_t sub_27455638C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics);
  if (result)
  {
    if (!v2)
    {
      return result;
    }

    sub_27463874C();
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    sub_27463878C();
  }
}

id sub_27455645C()
{
  if (*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics])
  {

    sub_27463874C();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_274556528(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SummaryViewHost();
  return objc_msgSendSuper2(&v4, sel_initWithUseCase_, a1);
}

uint64_t sub_2745565F0()
{
  v0 = sub_274412734(319, &qword_280950FD0);
  if (v1 <= 0x3F)
  {
    sub_2745569F8();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_274556A6C();
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_274556BC0(319, &qword_280950FF8, &qword_280951000, &unk_2746594B8, MEMORY[0x277D83D88]);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_274556BC0(319, &qword_280951008, &qword_280951010, &unk_2746594C8, MEMORY[0x277D83D88]);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_274556B10(319, &qword_280951018, &qword_280951020, 0x277D7D7A8, MEMORY[0x277D83940]);
            v0 = v10;
            if (v11 <= 0x3F)
            {
              sub_274556BC0(319, &unk_28094C490, &qword_280950E20, &unk_27464D880, MEMORY[0x277D83D88]);
              v0 = v12;
              if (v13 <= 0x3F)
              {
                sub_274556B10(319, &unk_280951028, qword_28094A770, 0x277D75348, MEMORY[0x277D83D88]);
                v0 = v14;
                if (v15 <= 0x3F)
                {
                  sub_274556BC0(319, &qword_280951038, &unk_280951040, &unk_2746594F0, MEMORY[0x277CE11F8]);
                  v0 = v16;
                  if (v17 <= 0x3F)
                  {
                    sub_274481024();
                    v0 = v18;
                    if (v19 <= 0x3F)
                    {
                      sub_274556BC0(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
                      v0 = v20;
                      if (v21 <= 0x3F)
                      {
                        sub_27453EAA0();
                        v0 = v22;
                        if (v23 <= 0x3F)
                        {
                          sub_274556BC0(319, &qword_28094DCB0, &qword_28094DCB8, &unk_2746514F0, MEMORY[0x277CDF468]);
                          if (v25 > 0x3F)
                          {
                            return v24;
                          }

                          else
                          {
                            sub_274556BC0(319, &qword_28094C4C0, &qword_28094C4C8, &unk_27464D888, MEMORY[0x277CDF468]);
                            v0 = v26;
                            if (v27 <= 0x3F)
                            {
                              sub_274556BC0(319, &unk_280951050, &qword_28094E090, &unk_274651B80, MEMORY[0x277CDF468]);
                              v0 = v28;
                              if (v29 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                                return 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_2745569F8()
{
  if (!qword_280950FD8)
  {
    sub_274412734(255, &qword_28094AE40);
    sub_27445B7F8();
    v0 = sub_27463BA9C();
    if (!v1)
    {
      atomic_store(v0, &qword_280950FD8);
    }
  }
}

void sub_274556A6C()
{
  if (!qword_280950FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809521A0);
    sub_27440CA78(&qword_280950FF0, &unk_2809521A0);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_280950FE0);
    }
  }
}

void sub_274556B10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_274412734(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_274556B78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_274556BC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274556C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_274556C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double *sub_274556D24(double *result, int a2, id a3)
{
  v3 = result;
  v4 = 0;
  if (*result != 0.0)
  {
    result = [a3 heightForWidth_];
    v4 = v5;
  }

  *(v3 + 1) = v4;
  return result;
}

id sub_274556D88@<X0>(void *a1@<X8>)
{
  result = sub_274552990();
  *a1 = result;
  return result;
}

uint64_t sub_274556DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274556B78(&qword_2809510A0, 255, type metadata accessor for SummaryHostingView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274556E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274556B78(&qword_2809510A0, 255, type metadata accessor for SummaryHostingView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274556EE4()
{
  sub_274556B78(&qword_2809510A0, 255, type metadata accessor for SummaryHostingView);
  sub_274639D9C();
  __break(1u);
}

uint64_t sub_274557020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryHostingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274557084(uint64_t a1)
{
  v2 = type metadata accessor for SummaryHostingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745570E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryHostingView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_274557144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_274412734(0, &qword_28094AE40);
  sub_27445B7F8();
  v8 = sub_27463BA3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
  v9 = sub_27463B4BC();

  [a5 setSummaryFormatString:a1 withParameters:a2 editableParameters:v8 parameterStates:v9];
}

uint64_t sub_274557234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryHostingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_27455732C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2745573B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274557428(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2745574D8()
{
  result = qword_280951110;
  if (!qword_280951110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951090);
    sub_274557590();
    sub_27440CA78(&qword_280951130, &qword_280951138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951110);
  }

  return result;
}

unint64_t sub_274557590()
{
  result = qword_280951118;
  if (!qword_280951118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951070);
    sub_27455761C();
    sub_27454E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951118);
  }

  return result;
}

unint64_t sub_27455761C()
{
  result = qword_280951120;
  if (!qword_280951120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951068);
    sub_274556B78(&qword_280951060, 255, type metadata accessor for SummaryHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

CGSize __swiftcall WFActionDetailsViewController.contentSizeThatFits(_:)(CGSize a1)
{
  sub_274559F74();
  v2 = [v1 traitCollection];
  [v2 displayScale];

  v3 = BSFloatRoundForScale();
  v4 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView];
  CGSizeMake(v3);
  [v4 sizeThatFits_];
  sub_274557AD4();

  CGSizeMake(v5);
  result.height = v7;
  result.width = v6;
  return result;
}

id sub_274557868()
{
  v0 = sub_27463B66C();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

uint64_t sub_2745578CC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_2745579CC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_27440CBD0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_27455793C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27440CB74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2744069F0(v1);
  return sub_274557A24(v4, v3);
}

uint64_t sub_2745579CC()
{
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  v2 = *v1;
  sub_2744069F0(*v1);
  return v2;
}

uint64_t sub_274557A24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_274406A94(v6);
}

void sub_274557AD4()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v0 = [objc_opt_self() sharedContext];
    v1 = [v0 keyWindow];

    if (v1)
    {
      [v1 safeAreaInsets];

      v2 = [MEMORY[0x277D75418] currentDevice];
      [v2 userInterfaceIdiom];
    }
  }
}

double sub_274557BA0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_274557BE0(double a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v253 = a4;
  *&v250 = a3;
  LODWORD(v255) = a2;
  v6 = sub_2746381FC();
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v246 = v10;
  v257 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView;
  *(v4 + v11) = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{27.0, 27.0}];
  v12 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  *(v4 + v12) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton) = 0;
  v14 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator;
  *(v4 + v14) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator;
  *(v4 + v15) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton;
  *(v4 + v16) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v17 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton;
  *(v4 + v17) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v18 = (v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  *v18 = 0;
  v18[1] = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelTopPadding) = 0x4038000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelConstrainedTopPadding) = 0x4030000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelHorizontalPadding) = 0x404E000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleDescriptionSpacing) = 0x4032000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset) = 0;
  v19 = v8 + 16;
  v20 = *(v8 + 16);
  v254 = a1;
  v20(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_action, a1, v6);
  v21 = type metadata accessor for WFActionDetailsViewController();
  v260 = v4;
  v261 = v21;
  v251 = v21;
  OUTLINED_FUNCTION_16_12();
  v24 = objc_msgSendSuper2(v22, v23);
  v25 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView;
  v26 = *&v24[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView];
  v27 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_action;
  v28 = v257;
  v256 = v20;
  v20(v257, &v24[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_action], v6);
  v29 = v24;
  v30 = v26;
  v31 = v28;
  v32 = sub_2746381DC();
  v247 = v8;
  v34 = *(v8 + 8);
  v33 = v8 + 8;
  v35 = v31;
  v36 = v34;
  v34(v35, v6);
  [v30 setIcon_];

  v37 = [v29 view];
  if (!v37)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = v37;
  [v37 addSubview_];

  v39 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  v40 = *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel];
  v41 = objc_opt_self();
  v42 = v40;
  v258 = v41;
  v43 = [v41 clearColor];
  [v42 setBackgroundColor_];

  v44 = *&v29[v39];
  v45 = &v24[v27];
  v46 = v257;
  (v256)(v257, v45, v6);
  v47 = v44;
  v48 = sub_2746381EC();
  v50 = v49;
  v252 = v6;
  v36(v46, v6);
  sub_27455AA28(v48, v50, v47);

  [*&v29[v39] setNumberOfLines_];
  v51 = [v29 view];

  if (!v51)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v52 = v33;
  v53 = v36;
  v54 = v46;
  [v51 addSubview_];

  if (v255)
  {
    v55 = [objc_opt_self() buttonWithType_];
    sub_274412734(0, &unk_280951140);
    OUTLINED_FUNCTION_5();
    swift_allocObject();
    v56 = swift_unknownObjectWeakInit();
    v64 = OUTLINED_FUNCTION_0_38(v56, v57, v58, v59, v60, v61, v62, v63, 0, 0);
    v65 = OUTLINED_FUNCTION_4_28();
    [v65 v66];

    v67 = [v29 view];
    if (!v67)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v68 = v67;
    [v67 addSubview_];

    v69 = *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton];
    *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton] = v55;

    v52 = v33;
  }

  v255 = v19;
  v248 = v53;
  v249 = v52;
  v70 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView;
  v71 = *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView];
  v72 = DrawerAction.attributedDescription.getter();
  v73 = OUTLINED_FUNCTION_4_28();
  [v73 v74];

  [*&v29[v70] setScrollEnabled_];
  [*&v29[v70] setEditable_];
  [*&v29[v70] setSelectable_];
  v75 = *&v29[v70];
  v76 = OUTLINED_FUNCTION_22_8(v75, sel_clearColor);
  v77 = OUTLINED_FUNCTION_4_28();
  [v77 v78];

  [*&v29[v70] setTextContainerInset_];
  v79 = *&v29[v70];
  v80 = v29;
  [v79 setDelegate_];
  v81 = *&v29[v70];
  v259[3] = v251;
  v259[0] = v80;
  v82 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v83 = v81;
  v84 = sub_27455A888(v259, sel_handleTapOnDescriptionTextView_);
  [v83 addGestureRecognizer_];

  v85 = [v80 view];
  if (!v85)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v86 = v85;
  [v85 addSubview_];

  if ((sub_2746381AC() & 1) == 0)
  {
    goto LABEL_10;
  }

  v87 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton;
  v88 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
  v89 = OUTLINED_FUNCTION_22_8(v88, sel_systemBlueColor);
  v90 = OUTLINED_FUNCTION_4_28();
  [v90 v91];

  v92 = *&v80[v87];
  v93 = objc_allocWithZone(MEMORY[0x277D75348]);
  v94 = v92;
  v95 = sub_27451A6B0(sub_274558F5C, 0);
  v96 = OUTLINED_FUNCTION_4_28();
  [v96 v97];

  v98 = [v80 view];
  if (v98)
  {
    v99 = v98;
    [v98 addSubview_];

    v100 = v80;
    v101 = v254;
    sub_274558FC8(v100);
    v102 = *&v80[v87];
    sub_274412734(0, &unk_280951140);
    v103 = v252;
    (v256)(v54, v101, v252);
    v104 = v247;
    v105 = (*(v247 + 80) + 24) & ~*(v247 + 80);
    v106 = swift_allocObject();
    v107 = OUTLINED_FUNCTION_10_22(v106);
    (*(v104 + 32))(v107 + v105, v54, v103);
    v108 = v100;
    v109 = v102;
    OUTLINED_FUNCTION_0_38(v109, v110, v111, v112, v113, v114, v115, v116, 0, 0);
    OUTLINED_FUNCTION_12_14();
    [v109 addAction:v101 forControlEvents:64];

    v117 = *&v80[v87];
    OUTLINED_FUNCTION_5();
    v118 = swift_allocObject();
    OUTLINED_FUNCTION_10_22(v118);
    v119 = v117;
    OUTLINED_FUNCTION_0_38(v119, v120, v121, v122, v123, v124, v125, v126, 0, 0);
    OUTLINED_FUNCTION_12_14();
    [v119 addAction:v101 forControlEvents:17];

    v127 = *&v80[v87];
    OUTLINED_FUNCTION_5();
    v128 = swift_allocObject();
    OUTLINED_FUNCTION_10_22(v128);
    v129 = v108;
    v130 = v127;
    v138 = OUTLINED_FUNCTION_0_38(v130, v131, v132, v133, v134, v135, v136, v137, 0, 0);
    v139 = OUTLINED_FUNCTION_4_28();
    [v139 v140];

LABEL_10:
    v141 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton;
    v142 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton];
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v143 = qword_28094BB00;
      v144 = sub_27463B66C();
      v145 = sub_27463B66C();

      v146 = [v143 localizedStringForKey:v144 value:v145 table:0];

      v147 = sub_27463B6AC();
      v149 = v148;

      sub_27455A9B4(v147, v149, 0, v142);
      v150 = *(v141 + v80);
      v151 = v258;
      v152 = [v258 whiteColor];
      v153 = OUTLINED_FUNCTION_4_28();
      [v153 v154];

      v155 = *(v141 + v80);
      v156 = [v151 whiteColor];
      v157 = OUTLINED_FUNCTION_4_28();
      [v157 v158];

      v159 = [v80 traitCollection];
      v160 = [v159 preferredContentSizeCategory];

      LOBYTE(v159) = sub_27463BDFC();
      v161 = MEMORY[0x277D76918];
      v162 = MEMORY[0x277D74420];
      if (v159)
      {
        v163 = *(v141 + v80);
        sub_274412734(0, &unk_280951150);
        v164 = v163;
        v165 = sub_274557868();
        if (v165)
        {
          v166 = v165;
          v167 = [objc_opt_self() _preferredFontForTextStyle_weight_];
          if (!v167)
          {
            goto LABEL_55;
          }

          v168 = v167;
          v169 = [objc_opt_self() configurationWithFont_];

          v170 = [v166 imageWithConfiguration_];
        }

        else
        {
          v170 = 0;
        }

        v171 = OUTLINED_FUNCTION_20_12();
        [v171 v172];
      }

      v173 = *(v141 + v80);
      v174 = OUTLINED_FUNCTION_22_8(v173, sel_systemBlueColor);
      v175 = OUTLINED_FUNCTION_4_28();
      [v175 v176];

      v177 = [v80 view];
      if (!v177)
      {
        goto LABEL_52;
      }

      [v177 addSubview_];

      v178 = *(v141 + v80);
      sub_274412734(0, &unk_280951140);
      OUTLINED_FUNCTION_5();
      v179 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v180 = swift_allocObject();
      v181 = v250;
      v180[2] = v179;
      v180[3] = v181;
      v180[4] = v253;
      v182 = v178;

      OUTLINED_FUNCTION_0_38(v183, v184, v185, v186, v187, v188, v189, v190, 0, 0);
      OUTLINED_FUNCTION_12_14();
      v191 = OUTLINED_FUNCTION_20_12();
      [v191 v192];

      v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
      inited = swift_initStackObject();
      v250 = xmmword_27464AEE0;
      *(inited + 16) = xmmword_27464AEE0;
      v194 = *(v141 + v80);
      *(inited + 32) = v194;
      v255 = inited + 32;
      v142 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
      *(inited + 40) = v142;
      v256 = inited & 0xFFFFFFFFFFFFFF8;
      v257 = *v161;
      v195 = *v162;
      v196 = v194;
      v197 = v142;
      v198 = 0;
      v199 = 0;
      do
      {
        v200 = v198;
        if ((inited & 0xC000000000000001) != 0)
        {
          v201 = MEMORY[0x277C58B20](v199, inited);
        }

        else
        {
          if (v199 >= *(v256 + 16))
          {
            goto LABEL_45;
          }

          v201 = *(v255 + 8 * v199);
        }

        v202 = v201;
        if ((_UISolariumEnabled() & 1) == 0)
        {
          v203 = [v202 layer];
          [v203 setCornerRadius_];
        }

        [v202 setAdjustsImageWhenHighlighted_];
        v204 = [v202 titleLabel];
        if (v204)
        {
          v205 = v204;
          v206 = objc_allocWithZone(MEMORY[0x277D75520]);
          v207 = [v206 initForTextStyle_];
          v208 = [objc_opt_self() systemFontOfSize:17.0 weight:v195];
          v209 = [v207 scaledFontForFont:v208 maximumPointSize:35.0];

          [v205 setFont_];
        }

        v210 = [v80 view];
        if (!v210)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v211 = v210;
        v212 = [v210 effectiveUserInterfaceLayoutDirection];

        if (v212)
        {
          v213 = 0.0;
        }

        else
        {
          v213 = -10.0;
        }

        if (v212)
        {
          v214 = -10.0;
        }

        else
        {
          v214 = 0.0;
        }

        [v202 setImageEdgeInsets_];
        OUTLINED_FUNCTION_5();
        v215 = swift_allocObject();
        OUTLINED_FUNCTION_10_22(v215);
        v216 = v202;
        OUTLINED_FUNCTION_0_38(v216, v217, v218, v219, v220, v221, v222, v223, 0, 0);
        OUTLINED_FUNCTION_12_14();
        v141 = &selRef_editingContext;
        v224 = OUTLINED_FUNCTION_20_12();
        [v224 v225];

        OUTLINED_FUNCTION_5();
        v226 = swift_allocObject();
        OUTLINED_FUNCTION_10_22(v226);
        v142 = v216;
        OUTLINED_FUNCTION_0_38(v142, v227, v228, v229, v230, v231, v232, v233, 0, 0);
        OUTLINED_FUNCTION_12_14();
        v234 = OUTLINED_FUNCTION_20_12();
        [v234 v235];

        v198 = 1;
        v199 = 1;
      }

      while ((v200 & 1) == 0);
      swift_setDeallocating();
      sub_2744EBB98();
      v236 = swift_initStackObject();
      *(v236 + 16) = v250;
      v237 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator];
      *(v236 + 32) = v237;
      v238 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator];
      *(v236 + 40) = v238;
      v141 = (v236 & 0xC000000000000001);
      v239 = v237;
      v240 = v238;
      v142 = 0;
      while (1)
      {
        if (v142 == 2)
        {

          swift_setDeallocating();
          sub_2744EBB98();
          v248(v254, v252);
          return;
        }

        if (!v141)
        {
          break;
        }

        v241 = MEMORY[0x277C58B20](v142, v236);
LABEL_40:
        v242 = v241;
        v243 = OUTLINED_FUNCTION_22_8([v241 setAlpha_], sel_separatorColor);
        [v242 setBackgroundColor_];

        v244 = [v80 view];
        if (!v244)
        {
          goto LABEL_48;
        }

        v245 = v244;
        ++v142;
        [v244 addSubview_];
      }

      if (v142 < *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
    }

    v241 = *(v236 + 8 * v142 + 32);
    goto LABEL_40;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_274558EBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
    swift_beginAccess();
    v3 = *v2;
    sub_2744069F0(*v2);

    if (v3)
    {
      v3();
      sub_274406A94(v3);
    }
  }
}

id sub_274558F5C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray4Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray5Color;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_274558FC8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
  sub_27463816C();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v3 = qword_28094BB00;
  v4 = sub_27463B66C();
  v5 = sub_27463B66C();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_27463B6AC();
  v9 = v8;

  sub_27455A9B4(v7, v9, 0, v2);
  v10 = [a1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  LOBYTE(v10) = sub_27463BDFC();
  if (v10)
  {
    sub_27463816C();
    sub_274412734(0, &unk_280951150);
    v12 = sub_274557868();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() _preferredFontForTextStyle_weight_];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      v16 = [objc_opt_self() configurationWithFont_];

      v17 = [v13 imageWithConfiguration_];
    }

    else
    {
      v17 = 0;
    }

    [v2 setImage:v17 forState:0];
  }
}

void sub_2745592B4(uint64_t a1, char *a2)
{
  v3 = sub_27463815C();
  *v4 = !*v4;
  v3(&v5, 0);
  sub_274558FC8(a2);
}

uint64_t sub_274559334(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
    swift_beginAccess();
    v7 = *v6;
    sub_2744069F0(*v6);

    if (v7)
    {
      v7();
      Strong = sub_274406A94(v7);
    }
  }

  return a3(Strong);
}

void sub_2745593F4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v10 = a3;
  v11 = sub_2745FB6C4(a5, v8, a1, 1.0);
  [v11 startAnimation];
}

void sub_274559498()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{27.0, 27.0}];
  v2 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton) = 0;
  v4 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v6 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v8 = (v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelTopPadding) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelConstrainedTopPadding) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelHorizontalPadding) = 0x404E000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleDescriptionSpacing) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset) = 0;
  sub_27463C56C();
  __break(1u);
}

id sub_27455966C()
{
  v1 = v0;
  v65.receiver = v0;
  v65.super_class = type metadata accessor for WFActionDetailsViewController();
  v2 = objc_msgSendSuper2(&v65, sel_viewWillLayoutSubviews);
  v3 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton;
  v4 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton];
  if (v4)
  {
    v5 = v4;
    sub_27455A10C();
    CGRectGetWidth(v66);
    [v5 setFrame_];
  }

  v7 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView];
  CGSizeMake(v2);
  v8 = OUTLINED_FUNCTION_19_11();
  [v8 v9];
  sub_27455A10C();
  CGRectGetWidth(v67);
  sub_27455A10C();
  CGRectGetWidth(v68);
  sub_274559F74();
  v64 = v7;
  [v7 frame];
  CGRectGetMidY(v69);
  v10 = OUTLINED_FUNCTION_15_14();
  [v10 displayScale];

  v11 = BSFloatRoundForScale();
  v12 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel];
  CGSizeMake(v11);
  v13 = OUTLINED_FUNCTION_19_11();
  [v13 v14];
  v15 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView];
  [v12 frame];
  CGRectGetMaxY(v70);
  sub_27455A10C();
  CGRectGetWidth(v71);
  sub_27455A10C();
  CGRectGetHeight(v72);
  v63 = v12;
  [v12 frame];
  CGRectGetMaxY(v73);
  sub_274557AD4();
  OUTLINED_FUNCTION_11_15(v16);
  [v15 v17];
  OUTLINED_FUNCTION_16_14();
  [v15 setFrame_];
  _UISolariumEnabled();
  if (sub_2746381AC())
  {
    sub_27455A10C();
    CGRectGetWidth(v74);
    v18 = OUTLINED_FUNCTION_15_14();
    [v18 displayScale];

    BSFloatRoundForScale();
    v19 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
    OUTLINED_FUNCTION_16_14();
    CGRectGetMaxY(v75);
    [v19 setFrame_];
    v21 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton];
    sub_27455A10C();
    CGRectGetWidth(v76);
    OUTLINED_FUNCTION_16_14();
    CGRectGetMaxY(v77);
  }

  else
  {
    v21 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton];
    OUTLINED_FUNCTION_16_14();
    CGRectGetMaxY(v78);
    sub_27455A10C();
    CGRectGetWidth(v79);
  }

  CGSizeMake(v22);
  v23 = OUTLINED_FUNCTION_19_11();
  [v23 v24];
  v25 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
  v26 = [v25 layer];
  v62 = v25;
  [v25 bounds];
  [v26 setCornerRadius_];

  v27 = [v21 layer];
  [v21 bounds];
  [v27 setCornerRadius_];

  v28 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator];
  OUTLINED_FUNCTION_16_14();
  CGRectGetMinY(v82);
  [v15 bounds];
  CGRectGetWidth(v83);
  v29 = OUTLINED_FUNCTION_15_14();
  [v29 displayScale];

  OUTLINED_FUNCTION_11_15(v30);
  [v28 v31];
  v32 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator];
  OUTLINED_FUNCTION_16_14();
  CGRectGetMaxY(v84);
  v33 = OUTLINED_FUNCTION_15_14();
  [v33 displayScale];

  [v15 bounds];
  CGRectGetWidth(v85);
  v34 = OUTLINED_FUNCTION_15_14();
  [v34 displayScale];

  OUTLINED_FUNCTION_11_15(v35);
  [v32 v36];
  v37 = OUTLINED_FUNCTION_15_14();
  v38 = [v37 layoutDirection];

  if (v38 != 1)
  {
    return _s14WorkflowEditor29WFActionDetailsViewControllerC06scrollE9DidScrollyySo08UIScrollE0CF_0();
  }

  result = OUTLINED_FUNCTION_17_11();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v40 = result;
  [result &selRef_deselectAllButtonTitle];
  OUTLINED_FUNCTION_6_6();

  v41 = OUTLINED_FUNCTION_2_28();
  [v64 frame];
  CGRectGetMaxX(v86);
  OUTLINED_FUNCTION_9_18();
  [v64 v42];
  [v64 setFrame_];
  v43 = *&v1[v3];
  if (!v43)
  {
LABEL_11:
    result = OUTLINED_FUNCTION_17_11();
    if (result)
    {
      v48 = result;
      [result &selRef_deselectAllButtonTitle];
      OUTLINED_FUNCTION_6_6();

      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_14_13();
      [v63 v49];
      CGRectGetMaxX(v88);
      OUTLINED_FUNCTION_9_18();
      [v63 v50];
      [v63 setFrame_];
      result = OUTLINED_FUNCTION_17_11();
      if (result)
      {
        v51 = result;
        [result &selRef_deselectAllButtonTitle];
        OUTLINED_FUNCTION_6_6();

        OUTLINED_FUNCTION_2_28();
        OUTLINED_FUNCTION_14_13();
        [v15 v52];
        CGRectGetMaxX(v89);
        OUTLINED_FUNCTION_9_18();
        [v15 v53];
        [v15 setFrame_];
        result = OUTLINED_FUNCTION_17_11();
        if (result)
        {
          v54 = result;
          [result &selRef_deselectAllButtonTitle];
          OUTLINED_FUNCTION_6_6();

          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_14_13();
          [v21 v55];
          CGRectGetMaxX(v90);
          OUTLINED_FUNCTION_9_18();
          [v21 v56];
          v57 = OUTLINED_FUNCTION_19_11();
          [v57 v58];
          result = OUTLINED_FUNCTION_17_11();
          if (result)
          {
            v59 = result;
            [result &selRef_deselectAllButtonTitle];
            OUTLINED_FUNCTION_6_6();

            OUTLINED_FUNCTION_2_28();
            OUTLINED_FUNCTION_14_13();
            [v62 v60];
            CGRectGetMaxX(v91);
            OUTLINED_FUNCTION_9_18();
            [v62 v61];
            [v62 setFrame_];
            return _s14WorkflowEditor29WFActionDetailsViewControllerC06scrollE9DidScrollyySo08UIScrollE0CF_0();
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v43;
  result = OUTLINED_FUNCTION_17_11();
  if (result)
  {
    v45 = result;
    [result &selRef_deselectAllButtonTitle];
    OUTLINED_FUNCTION_6_6();

    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_14_13();
    [v44 v46];
    CGRectGetMaxX(v87);
    OUTLINED_FUNCTION_9_18();
    [v44 v47];
    [v44 setFrame_];

    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

id _s14WorkflowEditor29WFActionDetailsViewControllerC06scrollE9DidScrollyySo08UIScrollE0CF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView);
  [v1 contentSize];
  v3 = v2;
  [v1 frame];
  if (v4 >= v3)
  {
    v5 = 0.0;
    [*(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator) setAlpha_];
  }

  else
  {
    [v1 contentOffset];
    v5 = 0.0;
    v6 = 1.0;
    if (v7 <= 0.0)
    {
      v6 = 0.0;
    }

    [*(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator) setAlpha_];
    [v1 contentOffset];
    v9 = v8;
    [v1 frame];
    v11 = v9 + v10;
    [v1 contentSize];
    if (v12 > v11)
    {
      v5 = 1.0;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator);

  return [v13 setAlpha_];
}

double sub_274559F74()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  [v2 pointSize];
  v4 = v3;

  if (v4 <= 30.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  v16 = *&v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274659B30;
  *(inited + 32) = v16;
  *(inited + 40) = vaddq_f64(vdupq_lane_s64(v16, 0), xmmword_274659B40);
  v7 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  v8 = *MEMORY[0x277D74420];
  v9 = 32;
  v10 = 0.0;
  do
  {
    if (v9 == 56)
    {
      break;
    }

    v11 = *(v0 + v7);
    v12 = [v1 systemFontOfSize:*(inited + v9) weight:v8];
    [v11 setFont_];

    CGSizeMake(v13);
    [v11 sizeThatFits_];
    v10 = v14;
    v9 += 8;
  }

  while (v14 >= 30.0);

  return v10;
}

id sub_27455A10C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    OUTLINED_FUNCTION_6_6();

    OUTLINED_FUNCTION_16_12();
    return swift_beginAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_27455A1A4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_274637E2C();
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_9();
  v11 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView);
  [a1 locationInView_];
  v13 = v12;
  v15 = v14;
  v16 = [v11 layoutManager];
  v17 = [v11 textContainer];
  v18 = [v16 characterIndexForPoint:v17 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v13, v15}];

  v19 = [v11 textStorage];
  v20 = [v19 length];

  if (v18 < v20)
  {
    v21 = [v11 attributedText];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 attributesAtIndex:v18 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_2744D0860();
      v24 = sub_27463B4CC();

      sub_27452F5DC(v28, *MEMORY[0x277D740E8], v24);

      if (v28[3])
      {
        v25 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v6, v25 ^ 1u, 1, v7);
        if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
        {
          (*(v9 + 32))(v2, v6, v7);
          v26 = [objc_opt_self() sharedContext];
          v27 = sub_274637DFC();
          [v26 openURL_];

          (*(v9 + 8))(v2, v7);
          return;
        }
      }

      else
      {
        sub_27443FF80(v28, &unk_28094A230);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      }

      sub_27443FF80(v6, &qword_280949E10);
    }

    else
    {
      __break(1u);
    }
  }
}

id WFActionDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFActionDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFActionDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WFActionDetailsViewController.contentHeightProvidingView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_27455A888(void *a1, uint64_t a2)
{
  v5 = a1[3];
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_4_0();
    v8 = v7;
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_25_9();
    (*(v8 + 16))(v3);
    v10 = sub_27463C69C();
    (*(v8 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

void sub_27455A9B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_27463B66C();

  [a4 setTitle:v6 forState:a3];
}

void sub_27455AA28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setText_];
}

uint64_t type metadata accessor for WFActionDetailsViewController()
{
  result = qword_280951160;
  if (!qword_280951160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27455AB64(uint64_t a1)
{
  sub_2746381FC();
  v3 = *(v1 + 16);

  sub_2745592B4(a1, v3);
}

uint64_t sub_27455AC64()
{
  result = sub_2746381FC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return MEMORY[0x2821DE0D8](0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, a9, a10, 0, v10, v11);
}

double OUTLINED_FUNCTION_2_28()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

id OUTLINED_FUNCTION_15_14()
{

  return [v0 (v1 + 1016)];
}

id OUTLINED_FUNCTION_16_14()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_17_11()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_22_8(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 272);

  return [v4 a2];
}

uint64_t sub_27455B048()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_27455B0A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for NativeViewRepresentable();
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  *v5 = swift_getKeyPath();
  v5[40] = 0;
}

id sub_27455B184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, sel_overrideUserInterfaceStyle);
}

void sub_27455B210(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ViewController();
  objc_msgSendSuper2(&v3, sel_setOverrideUserInterfaceStyle_, a1);
  sub_27455B25C();
}

void sub_27455B25C()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 setOverrideUserInterfaceStyle_];
  }
}

void sub_27455B2DC(void *a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if ([v5 overrideUserInterfaceStyle])
  {
    [a1 setOverrideUserInterfaceStyle_];
  }

  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_27443E0E8;
    v11[3] = &block_descriptor_29;
    a3 = _Block_copy(v11);
  }

  v10 = type metadata accessor for ViewController();
  v12.receiver = v5;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
}

id sub_27455B4CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_27463B66C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_27455B5B0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_27455B644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27455B6A0()
{
  v1 = v0;
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for NativeViewRepresentable();
  sub_2744C6ABC();
  if (v15)
  {
    sub_27443557C(&v14, v17);
    sub_2744306B8(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0);
    if (swift_dynamicCast())
    {
      sub_27455C024(&v14);
      sub_2744C68C0();
      v7 = (*(v3 + 88))(v5, v2);
      if (v7 == *MEMORY[0x277CDF3D0])
      {
        v8 = 1;
      }

      else if (v7 == *MEMORY[0x277CDF3C0])
      {
        v8 = 2;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v8 = 0;
      }

      [v6 setOverrideUserInterfaceStyle_];
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_27455BFBC(&v14);
  }

  v9 = v6;
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor_];

    v13 = *(*v1 + 16);
    *(*v1 + 16) = v9;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27455B910(void *a1)
{
  v3 = sub_27463918C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274639ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NativeViewRepresentable();
  sub_27455BF4C(v1 + *(v11 + 24), v18);
  if (v20 == 1)
  {
    v21 = v18[0];
    v22 = v18[1];
    v23 = v19;
  }

  else
  {
    v16 = v3;
    v17 = v4;
    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    v3 = v16;
    v4 = v17;

    (*(v8 + 8))(v10, v7);
  }

  if (!*(&v22 + 1))
  {
    return sub_27455BFBC(&v21);
  }

  sub_27443557C(&v21, v24);
  sub_2744306B8(v24, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0);
  if (swift_dynamicCast())
  {
    sub_27455C024(v18);
    sub_2744C68C0();
    v13 = (*(v4 + 88))(v6, v3);
    if (v13 == *MEMORY[0x277CDF3D0])
    {
      v14 = 1;
    }

    else if (v13 == *MEMORY[0x277CDF3C0])
    {
      v14 = 2;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = 0;
    }

    [a1 setOverrideUserInterfaceStyle_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_27455BC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27455C078(&qword_2809511E8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27455BCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27455C078(&qword_2809511E8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27455BD28()
{
  sub_27455C078(&qword_2809511E8);
  sub_27463A26C();
  __break(1u);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NativeViewRepresentable()
{
  result = qword_2809511D0;
  if (!qword_2809511D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27455BE24()
{
  type metadata accessor for NativeViewControllerContext();
  sub_274435D7C();
  if (v0 <= 0x3F)
  {
    sub_27455BEB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27455BEB4()
{
  if (!qword_28094A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809507C0);
    v0 = sub_27463919C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094A5F0);
    }
  }
}

uint64_t sub_27455BF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27455BFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809507C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27455C078(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NativeViewRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27455C0BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_274453594(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2744535A4(v3 - 1, (a1 & 0xC000000000000001) == 0);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x277C58B20](v4, a1);
  }

  result = sub_27463C27C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

char *sub_27455C170(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
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

    return MEMORY[0x277C58B20](v5, a1);
  }

  result = sub_27463C27C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_27455C20C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    return *(v1 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

WorkflowEditor::WFSheetViewState_optional __swiftcall WFSheetViewState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_27455C26C@<X0>(uint64_t *a1@<X8>)
{
  result = WFSheetViewState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WFSheetViewGrabberVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_27455C380(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_27455C404(v2, v1);
}

uint64_t sub_27455C404(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
  OUTLINED_FUNCTION_72_1();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_27455C468(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27451265C;
}

void sub_27455C4F4()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  if (*(v0 + v1) == 3 && (*(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView);
    sub_27455CBF4();

    [v2 frame];
    [v2 setFrame_];
  }

  sub_274562BF8();
}

double sub_27455C5A8()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
  OUTLINED_FUNCTION_47();
  return *&v1[v0];
}

void sub_27455C5E0(double a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
  OUTLINED_FUNCTION_72_1();
  *&v3[v1] = a1;
  sub_27455C4F4();
}

uint64_t sub_27455C62C(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

id sub_27455C6C4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  result = swift_beginAccess();
  if (*(v5 + 8))
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0 && *v5 == *&a1)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = swift_beginAccess();
  if (*(v2 + v7) == 1 && (*(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) & 1) == 0)
  {
    v8 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView);
    v9 = sub_27455CBF4();
    sub_27455C20C(v9);

    [v8 frame];
    return [v8 setFrame_];
  }

  return result;
}

id sub_27455C7E4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  OUTLINED_FUNCTION_72_1();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_27455C6C4(v6, v7);
}

void (*sub_27455C848(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  OUTLINED_FUNCTION_29_3();
  v5 = *(v4 + 8);
  v3[3] = *v4;
  *(v3 + 32) = v5;
  return sub_27455C8CC;
}

void sub_27455C8CC(uint64_t a1)
{
  v1 = *a1;
  sub_27455C7E4(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

uint64_t sub_27455C950(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_29_3();
  return *v2;
}

uint64_t sub_27455C990(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  result = OUTLINED_FUNCTION_72_1();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id sub_27455CA34()
{
  if (sub_27455CBF4()[2])
  {

    return [v0 safeAreaInsets];
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_27455CA90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27455CB04(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_27455CB04@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility;
  result = OUTLINED_FUNCTION_47();
  *a1 = *(v1 + v3);
  return result;
}

id sub_27455CB4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility;
  OUTLINED_FUNCTION_31_4();
  *(v1 + v3) = v2;
  return sub_274563210();
}

uint64_t sub_27455CB90(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

char **sub_27455CBF4()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  OUTLINED_FUNCTION_29_3();
  sub_27456329C(&v2[v3], &v50);
  if (v51)
  {
    sub_2743F45D0(&v50, v52);
    OUTLINED_FUNCTION_33_5();
    Height = CGRectGetHeight(v55);
    v5 = v53;
    v6 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    OUTLINED_FUNCTION_33_5();
    CGRectGetWidth(v56);
    CGSizeMake(v7);
    (*(v6 + 16))(v5, v6);
    v48 = Height - v8;
    v9 = &selRef_editingContext;
    [v2 safeAreaInsets];
    if (v48 <= v10)
    {
      [v2 safeAreaInsets];
      Height = v23;
      v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
      OUTLINED_FUNCTION_29_3();
      v24 = *(v9 + v2);
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_23_10();
      if (v6 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_1_31(v25);
        sub_274450D6C();
        v9 = v47;
      }

      *(&_Q1 + 1) = 0;
      *&_Q1 = Height + v24;
    }

    else
    {
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_23_10();
      __asm { FMOV            V1.2D, #6.0 }

      *&_Q1 = v48;
      if (v6 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_1_31(v11);
        v49 = v17;
        sub_274450D6C();
        _Q1 = v49;
        v9 = v18;
      }
    }

    v9[2] = v5;
    *&v9[2 * v6 + 4] = _Q1;
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_27456337C(&v50);
    [v2 safeAreaInsets];
    Height = v19;
    v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
    OUTLINED_FUNCTION_29_3();
    v20 = *(v9 + v2);
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_23_10();
    if (v1 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_1_31(v21);
      sub_274450D6C();
      v9 = v46;
    }

    OUTLINED_FUNCTION_25_12(Height + v20);
    *(v22 + 40) = 0;
  }

  v26 = &v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset];
  OUTLINED_FUNCTION_29_3();
  if ((v26[1] & 1) == 0)
  {
    v27 = *v26;
    OUTLINED_FUNCTION_33_5();
    CGRectGetHeight(v57);
    OUTLINED_FUNCTION_37_4();
    if (_CF)
    {
      OUTLINED_FUNCTION_1_31(v28);
      sub_274450D6C();
      v9 = v42;
    }

    OUTLINED_FUNCTION_25_12(Height - v27);
    *(v29 + 40) = 0x4018000000000000;
  }

  v30 = &v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset];
  OUTLINED_FUNCTION_29_3();
  if ((v30[1] & 1) == 0)
  {
    v31 = *v30;
    OUTLINED_FUNCTION_33_5();
    CGRectGetHeight(v58);
    OUTLINED_FUNCTION_37_4();
    if (_CF)
    {
      OUTLINED_FUNCTION_1_31(v32);
      sub_274450D6C();
      v9 = v43;
    }

    OUTLINED_FUNCTION_25_12(Height - v31);
    *(v33 + 40) = 0x4034000000000000;
  }

  v34 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_29_3();
  if (v2[v34] == 1)
  {
    OUTLINED_FUNCTION_33_5();
    v35 = CGRectGetHeight(v59);
    sub_27455C20C(v9);
    if (v37)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274450D6C();
      v9 = v44;
    }

    v39 = v9[2];
    if (v39 >= v9[3] >> 1)
    {
      sub_274450D6C();
      v9 = v45;
    }

    v9[2] = (v39 + 1);
    v40 = &v9[2 * v39];
    *(v40 + 4) = v35 + 70.0;
    *(v40 + 5) = v38;
  }

  return v9;
}

id sub_27455CF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView);
  v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  swift_beginAccess();
  return [v1 setHidden_];
}

uint64_t sub_27455CFC8()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_47();
  return *(v0 + v1);
}

id sub_27455D000(char a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_31_4();
  *(v1 + v3) = a1;
  return sub_27455CF60();
}

uint64_t sub_27455D044(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

void sub_27455D0FC()
{
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider);
  swift_beginAccess();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = (*(v3 + 24))(v2, v3);
    (*(v5 + 8))(v8, v2);
    v10 = v9;
    sub_27455D568(v9);
  }
}

uint64_t sub_27455D250@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  OUTLINED_FUNCTION_47();
  return sub_27456329C(v1 + v3, a1);
}

uint64_t sub_27455D29C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  swift_beginAccess();
  sub_27456330C(a1, v1 + v3);
  swift_endAccess();
  sub_27455D0FC();
  return sub_27456337C(a1);
}

uint64_t sub_27455D308(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

uint64_t sub_27455D36C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets;
  OUTLINED_FUNCTION_47();
  return *(v0 + v1);
}

uint64_t sub_27455D3A4(char a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets;
  result = OUTLINED_FUNCTION_31_4();
  *(v1 + v3) = a1;
  return result;
}

void sub_27455D430(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27455D568(v1);
}

void sub_27455D460()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v3 _setShouldScrollAncestors_];
    v4 = [v3 panGestureRecognizer];
    [v4 addTarget:v0 action:sel_handlePanGestureWithRecognizer_];

    [v0 setNeedsLayout];
    [v0 layoutIfNeeded];
    sub_274562BF8();
  }
}

void *sub_27455D528()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_47();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27455D568(void *a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_31_4();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_27455D460();
}

uint64_t sub_27455D5C0(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

uint64_t sub_27455D624(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_27455D668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27455D868(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_27455D6DC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    v5 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = v2;
      (*(v6 + 8))(&v8, v1, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_27455D7A0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    v5 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = *(v1 + v3);
      (*(v6 + 16))(&v8, v1, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_27455D868@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = OUTLINED_FUNCTION_47();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_27455D8B0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  OUTLINED_FUNCTION_31_4();
  v4 = *(v1 + v3);
  v6[0] = v2;
  sub_27455D6DC(v6);
  *(v1 + v3) = v2;
  v6[0] = v4;
  return sub_27455D7A0(v6);
}

id sub_27455D94C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v1 initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

id sub_27455D9E0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(MEMORY[0x277D75348]);
    v6 = OUTLINED_FUNCTION_40_5();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_27455DA64(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 1)
  {
    v3 = 0.01;
    v4 = 0.0;
  }

  else
  {
    v3 = 0.08;
    v4 = 1.0;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

char *WFSheetView.init(initialState:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = *a1;
  OUTLINED_FUNCTION_29_10(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate);
  *(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v1) = 0x4000000000000000;
  v4 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange) = 0x4032000000000000;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal) = 1;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_unscaledContentOverlay;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
  v8 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView) = 0;
  v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass) = 0;
  v14 = (v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor) = 0;
  v15 = (v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state) = v3;
  v61 = v1;
  v62 = type metadata accessor for WFSheetView();
  v16 = OUTLINED_FUNCTION_7_16();
  v19 = objc_msgSendSuper2(v17, v18, v16);
  v20 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  v21 = *&v19[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  v22 = v19;
  v23 = [v21 layer];
  [v23 setShadowRadius_];

  v24 = [*&v19[v20] layer];
  [v24 setShadowPathIsBounds_];

  [v22 addSubview_];
  v25 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  [*&v19[v20] addSubview_];
  v26 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  v27 = *&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView];
  v28 = objc_allocWithZone(MEMORY[0x277D75348]);
  v29 = v27;
  v30 = OUTLINED_FUNCTION_40_5();
  [v29 setBackgroundColor_];

  [*&v22[v26] setAlpha_];
  v31 = [*&v22[v25] layer];
  [v31 setCornerRadius_];

  v32 = [*&v22[v25] layer];
  v33 = *MEMORY[0x277CDA138];
  [v32 setCornerCurve_];

  v34 = [*&v22[v25] layer];
  [v34 setMasksToBounds_];

  v35 = *&v22[v25];
  v36 = sub_27455D9E0();
  [v35 setBackgroundColor_];

  [*&v22[v25] addSubview_];
  v37 = *&v22[v25];
  v38 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  [v37 addSubview_];
  [*&v22[v38] setAnchorPoint_];
  [*&v22[v38] addSubview_];
  [*&v22[v38] addSubview_];
  v39 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  v40 = [*&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView] layer];
  [v40 setCornerRadius_];

  v41 = [*&v22[v39] layer];
  [v41 setCornerCurve_];

  v42 = *&v22[v39];
  v43 = objc_allocWithZone(MEMORY[0x277D75348]);
  v44 = v42;
  v45 = OUTLINED_FUNCTION_40_5();
  [v44 setBackgroundColor_];

  sub_274563210();
  [*&v22[v38] addSubview_];
  v46 = v62;
  v60 = v62;
  v59[0] = v22;
  v47 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v48 = sub_274563A90(v59, sel_handlePanGestureWithRecognizer_);
  [*&v19[v20] addGestureRecognizer_];
  v49 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  OUTLINED_FUNCTION_29_3();
  v50 = 1.0;
  if (v22[v49] != 3)
  {
    v50 = 0.0;
  }

  *&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction] = v50;
  sub_274562D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809512E0);
  OUTLINED_FUNCTION_2_6();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_274648570;
  v52 = sub_274638DBC();
  v53 = MEMORY[0x277D74BF0];
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  OUTLINED_FUNCTION_5();
  *(swift_allocObject() + 16) = ObjectType;
  sub_27463BF0C();
  swift_unknownObjectRelease();

  v60 = v46;
  v59[0] = v22;
  v54 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v55 = v22;
  v56 = sub_27455A888(v59, sel_handleDimmingLayerTap);
  [v56 setDelegate_];
  [v55 addGestureRecognizer_];

  return v55;
}

id sub_27455E204(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 1)
  {
    v3 = 0.957;
    v4 = 0.97;
  }

  else
  {
    v3 = 0.141;
    v4 = 0.145;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:1.0];
}

id sub_27455E288(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 2)
  {
    v3 = 0.2;
    v4 = 1.0;
  }

  else
  {
    v3 = 0.15;
    v4 = 0.0;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

void sub_27455E2FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView) layer];
  v5[0] = CGSizeMake(v1);
  v5[1] = v3;
  v5[2] = v5[0];
  v5[3] = v3;
  v6 = CGSizeMake(v2);
  v7 = v4;
  v8 = v6;
  v9 = v4;
  [v1 setCornerRadii_];
}

void sub_27455E404()
{
  OUTLINED_FUNCTION_29_10(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate);
  *(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v0) = 0x4000000000000000;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal) = 1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_unscaledContentOverlay;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
  v5 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView) = 0;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass) = 0;
  v11 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor) = 0;
  v12 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = 0;
  OUTLINED_FUNCTION_20_13();
  __break(1u);
}

void sub_27455E640()
{
  OUTLINED_FUNCTION_29_10(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate);
  *(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v0) = 0x4000000000000000;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal) = 1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_unscaledContentOverlay;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
  v5 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView) = 0;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass) = 0;
  v11 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor) = 0;
  v12 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = 0;
  OUTLINED_FUNCTION_20_13();
  __break(1u);
}

double *sub_27455E880()
{
  v1 = v0;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for WFSheetView();
  objc_msgSendSuper2(&v82, sel_layoutSubviews);
  result = sub_27455CBF4();
  v3 = result;
  v4 = *(result + 2);
  if (v4 <= 1)
  {
    if (v4 != 1)
    {
LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_41_5();
    v6 = *(v3 + 2);
    if (!v6)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = v3 + 4;
    if (v5 > v3[4])
    {
      v8 = 1;
      while (v8 <= v6)
      {
        v9 = *v7;
        result = OUTLINED_FUNCTION_41_5();
        if (v9 >= v10)
        {
          v6 = *(v3 + 2);
          if (!v6)
          {
            goto LABEL_32;
          }
        }

        else
        {
          result = OUTLINED_FUNCTION_41_5();
          v6 = *(v3 + 2);
          if (v8 >= v6)
          {
            goto LABEL_33;
          }

          if (v11 <= v7[2])
          {
            v68 = v7[1];
            v69 = v7[3] - v68;
            OUTLINED_FUNCTION_41_5();
            v71 = v68 + v69 * (v70 - *v7) / (v7[2] - *v7);
            goto LABEL_15;
          }
        }

        ++v8;
        v7 += 2;
        if (v4 == v8)
        {
          v71 = v3[2 * v6 + 3];
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v71 = v3[5];
LABEL_15:
  v12 = [v0 traitCollection];
  [v12 displayCornerRadius];

  sub_27455E2FC();
  OUTLINED_FUNCTION_18_9();
  CGRectGetHeight(v83);
  v13 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  result = OUTLINED_FUNCTION_29_3();
  v14 = ~v1[v13] + v4;
  if (v14 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 >= *(v3 + 2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_18_9();
  CGRectGetHeight(v84);
  v15 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  [v15 frame];
  if (v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture] == 1)
  {
    [v15 frame];
  }

  else
  {
    v16 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
    OUTLINED_FUNCTION_29_3();
    LOBYTE(v81.a) = v1[v16];
    sub_27456230C(&v81);
  }

  OUTLINED_FUNCTION_18_9();
  CGRectGetWidth(v85);
  v78 = v71 + v71;
  CGSizeMake(v17);
  v18 = OUTLINED_FUNCTION_36_5();
  [v18 v19];
  v20 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView];
  [v20 transform];
  v74 = *&v81.c;
  v75 = *&v81.a;
  ty = v81.ty;
  tx = v81.tx;
  v81.a = 1.0;
  v81.b = 0.0;
  v81.c = 0.0;
  v81.d = 1.0;
  v81.tx = 0.0;
  v81.ty = 0.0;
  [v20 setTransform_];
  [v15 bounds];
  [v20 setFrame_];
  [v20 bounds];
  v21 = OUTLINED_FUNCTION_27_8();
  [v21 v22];
  v23 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView];
  [v23 transform];
  v24 = v81.tx;
  v25 = v81.ty;
  v76 = *&v81.c;
  v77 = *&v81.a;
  OUTLINED_FUNCTION_34_7();
  [v23 v26];
  [v20 bounds];
  v27 = OUTLINED_FUNCTION_27_8();
  [v27 v28];
  *&v81.a = v77;
  *&v81.c = v76;
  v81.tx = v24;
  v81.ty = v25;
  [v23 setTransform_];
  [v15 bounds];
  CGRectGetWidth(v86);
  v29 = [v1 traitCollection];
  [v29 displayScale];

  v30 = [v1 traitCollection];
  [v30 displayScale];

  v31 = [v1 traitCollection];
  [v31 displayScale];

  CGSizeMake(v32);
  v33 = OUTLINED_FUNCTION_27_8();
  [v33 v34];
  v35 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  OUTLINED_FUNCTION_29_3();
  sub_27456329C(&v1[v35], &v79);
  if (v80)
  {
    sub_2743F45D0(&v79, &v81);
    OUTLINED_FUNCTION_18_9();
    CGRectGetWidth(v87);
    OUTLINED_FUNCTION_18_9();
    CGRectGetHeight(v88);
    OUTLINED_FUNCTION_39_5(v36);
    v37 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView];
    v38 = OUTLINED_FUNCTION_36_5();
    [v38 v39];
    v40 = OUTLINED_FUNCTION_7_16();
    [v41 v42];
    d = v81.d;
    v44 = v81.tx;
    __swift_project_boxed_opaque_existential_1(&v81, *&v81.d);
    v45 = (*(*&v44 + 8))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&v44));
    result = OUTLINED_FUNCTION_18_9();
    if (!*(v3 + 2))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v45 frame];
    v46 = OUTLINED_FUNCTION_27_8();
    [v46 v47];

    __swift_destroy_boxed_opaque_existential_1(&v81);
    v48 = &selRef_editingContext;
  }

  else
  {

    sub_27456337C(&v79);
    v37 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView];
    v48 = &selRef_editingContext;
    OUTLINED_FUNCTION_34_7();
    [v37 v49];
    OUTLINED_FUNCTION_18_9();
    v50 = OUTLINED_FUNCTION_36_5();
    [v50 v51];
    OUTLINED_FUNCTION_18_9();
    v52 = 1.0 - v78 / CGRectGetWidth(v89);
    OUTLINED_FUNCTION_18_9();
    Width = CGRectGetWidth(v90);
    CGAffineTransformMakeScale(&v81, v52, 1.0 - v78 / Width);
    [v37 setTransform_];
    v54 = *MEMORY[0x277CBF348];
    v55 = *(MEMORY[0x277CBF348] + 8);
    [v37 frame];
    v56 = OUTLINED_FUNCTION_36_5();
    [v56 v57];
    OUTLINED_FUNCTION_18_9();
    CGRectGetWidth(v91);
    OUTLINED_FUNCTION_18_9();
    CGRectGetHeight(v92);
    OUTLINED_FUNCTION_39_5(v58);
    v59 = OUTLINED_FUNCTION_27_8();
    [v59 v60];
  }

  OUTLINED_FUNCTION_18_9();
  if (v62 != *MEMORY[0x277CBF3A8] || v61 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass] = 1;
    v64 = &v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
    v65 = *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork];
    if (v65)
    {

      [v37 setNeedsLayout];
      v65([v37 layoutIfNeeded]);
      sub_274406A94(v65);
      v66 = *v64;
      *v64 = 0;
      v64[1] = 0;
      sub_274406A94(v66);
    }
  }

  sub_274562BF8();
  v67 = v48[371];
  *&v81.a = v75;
  *&v81.c = v74;
  v81.tx = tx;
  v81.ty = ty;
  return [v20 v67];
}

id sub_27455F08C(void *a1)
{
  v3 = sub_27455CBF4()[2];

  if (v3)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        sub_27455F45C(a1);
      }

      else if (v4 == 1)
      {
        *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 1;
        sub_27455F1F8(a1);
      }
    }

    else
    {
      sub_274560D60(a1);
      *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
    }

    v5 = OUTLINED_FUNCTION_38_4();

    return [v5 v6];
  }

  else
  {
    result = OUTLINED_FUNCTION_20_13();
    __break(1u);
  }

  return result;
}

void sub_27455F1F8(void *a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView) frame];
  v4 = (v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v4 = v5;
  *(v4 + 1) = v6;
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_29_3();
  v8 = *(v1 + v7);
  if (v8)
  {
    [v8 contentOffset];
  }

  else
  {
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = v9;
  swift_beginAccess();
  _UIUpdateRequestActivate();
  swift_endAccess();
  v11 = *(v1 + v7);
  if (v11)
  {
    sub_274412734(0, &qword_28094C5E0);
    v12 = v11;
    v13 = [v12 panGestureRecognizer];
    v14 = sub_27463BF7C();

    if (v14)
    {
      if (*(v2 + v10) >= 0.0)
      {

        v4[1] = v4[1] - *(v2 + v10);
      }

      else
      {
        [a1 velocityInView_];
        if (v15 <= 0.0)
        {

          *(v2 + v10) = 0x3FF0000000000000;
        }

        else
        {
          OUTLINED_FUNCTION_5();
          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          v17 = objc_allocWithZone(MEMORY[0x277D75D40]);
          v18 = v12;
          v19 = sub_2745FB6C4(sub_274564818, v16, 0.45, 1.0);
          [v19 startAnimation];
        }
      }
    }

    else
    {
    }
  }
}

id sub_27455F3F4(void *a1)
{
  [a1 contentInset];
  [a1 contentOffset];

  return [a1 setContentOffset_];
}

void sub_27455F45C(void *a1)
{
  v2 = v1;
  [a1 translationInView_];
  v5 = v4;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_29_3();
  v7 = *&v1[v6];
  if (v7 && (v8 = [v7 panGestureRecognizer]) != 0)
  {
    v9 = v8;
    sub_274412734(0, &qword_280951308);
    v10 = a1;
    v11 = sub_27463BF7C();
  }

  else
  {
    v11 = 0;
  }

  if (*&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset] <= 0.0 || (v11 & 1) == 0)
  {
    v12 = v5 + *&v1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin + 8];
    v13 = sub_27455CBF4();
    if (v13[2])
    {
      v14 = *(v13 + 4);

      if (v12 < v14)
      {
        objc_opt_self();
        v15 = swift_allocObject();
        *(v15 + 16) = v1;
        *(v15 + 24) = v11 & 1;
        *(v15 + 32) = v14;
        *(v15 + 40) = v12;
        *(v15 + 48) = a1;
        v65 = sub_27456477C;
        v66 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        OUTLINED_FUNCTION_9_19();
        v63 = v16;
        v64 = &block_descriptor_166;
        v17 = _Block_copy(&aBlock);
        v18 = a1;
        v19 = v1;

        v65 = CGSizeMake;
        v66 = 0;
        aBlock = MEMORY[0x277D85DD0];
        OUTLINED_FUNCTION_10_23();
        v63 = v20;
        v64 = &block_descriptor_169;
        v21 = _Block_copy(&aBlock);
        OUTLINED_FUNCTION_0_39();
        v22 = OUTLINED_FUNCTION_38_4();
        [v22 v23];
        _Block_release(v21);
        _Block_release(v17);
        OUTLINED_FUNCTION_5();
        v24 = swift_allocObject();
        *(v24 + 16) = v19;
        v65 = sub_274564794;
        v66 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_27443E0E8;
        v64 = &block_descriptor_175;
        v25 = _Block_copy(&aBlock);
        v26 = v19;

        v65 = CGSizeMake;
        v66 = 0;
        aBlock = MEMORY[0x277D85DD0];
        OUTLINED_FUNCTION_10_23();
        v63 = v27;
        v64 = &block_descriptor_178;
        v28 = _Block_copy(&aBlock);
        OUTLINED_FUNCTION_0_39();
        v29 = OUTLINED_FUNCTION_38_4();
        [v29 v30];
        _Block_release(v28);
        _Block_release(v25);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v31 = sub_27455CBF4();
    v32 = COERCE_DOUBLE(sub_27455C20C(v31));
    v34 = v33;

    if (v34 & 1) != 0 || v12 <= v32 || (v35 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal, OUTLINED_FUNCTION_29_3(), (v2[v35]))
    {
      v36 = [v2 window];
      [a1 velocityInView_];

      v37 = objc_opt_self();
      OUTLINED_FUNCTION_39();
      v38 = swift_allocObject();
      *(v38 + 16) = v2;
      *(v38 + 24) = v12;
      OUTLINED_FUNCTION_5_31();
      v62 = 1107296256;
      OUTLINED_FUNCTION_7_26();
      v63 = v39;
      v64 = &block_descriptor_148;
      v40 = _Block_copy(&aBlock);
      v41 = v2;

      v65 = CGSizeMake;
      v66 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_27456009C;
      v64 = &block_descriptor_151;
      v42 = _Block_copy(&aBlock);
      OUTLINED_FUNCTION_0_39();
      [v37 v43];
      _Block_release(v42);
      _Block_release(v40);
      sub_27455FB78(a1, v41);
      if (v11)
      {
        v44 = *&v2[v6];
        if (v44)
        {
          v45 = v44;
          [v45 contentInset];
          [v45 contentOffset];
          [v45 setContentOffset_];
LABEL_17:
        }
      }
    }

    else
    {
      objc_opt_self();
      v53 = swift_allocObject();
      *(v53 + 16) = v2;
      *(v53 + 24) = v32;
      *(v53 + 32) = v12;
      OUTLINED_FUNCTION_5_31();
      v62 = 1107296256;
      OUTLINED_FUNCTION_7_26();
      v63 = v54;
      v64 = &block_descriptor_157;
      v55 = _Block_copy(&aBlock);
      v56 = v2;

      v65 = CGSizeMake;
      v66 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_27456009C;
      v64 = &block_descriptor_160;
      v57 = _Block_copy(&aBlock);
      OUTLINED_FUNCTION_0_39();
      v58 = OUTLINED_FUNCTION_38_4();
      [v58 v59];
      _Block_release(v57);
      _Block_release(v55);
      sub_27455FB78(a1, v56);
      if (v11)
      {
        v60 = *&v2[v6];
        if (v60)
        {
          v45 = v60;
          [v45 contentOffset];
          [v45 setContentOffset_];
          goto LABEL_17;
        }
      }
    }

LABEL_18:
    [*&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView] frame];
    v47 = v46;
    v48 = sub_27455CBF4();
    v49 = COERCE_DOUBLE(sub_27455C20C(v48));
    v51 = v50;

    if (v51)
    {
      __break(1u);
    }

    else
    {
      if (v49 + -10.0 <= v47)
      {
        v52 = 1;
      }

      else
      {
        v52 = 3;
      }

      LOBYTE(aBlock) = v52;
      sub_27455D8B0(&aBlock);
    }
  }
}

void sub_27455FB78(void *a1, id a2)
{
  v4 = [a2 window];
  [a1 velocityInView_];
  v6 = v5;

  v7 = 1000.0;
  if (v6 <= 1000.0)
  {
    v7 = v6;
  }

  if (v7 > -1000.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -1000.0;
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v8;
  v22 = sub_2745647DC;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27443E0E8;
  v21 = &block_descriptor_214;
  v11 = _Block_copy(&v18);
  v12 = a2;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27456009C;
  v21 = &block_descriptor_217;
  v13 = _Block_copy(&v18);
  [v9 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v13);
  _Block_release(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v8;
  v22 = sub_2745647E8;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27443E0E8;
  v21 = &block_descriptor_223;
  v15 = _Block_copy(&v18);
  v16 = v12;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27456009C;
  v21 = &block_descriptor_226;
  v17 = _Block_copy(&v18);
  [v9 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v17);
  _Block_release(v15);
}

uint64_t sub_27455FE74(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_274564800;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_246;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_27456002C(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView);
  CGAffineTransformMakeScale(&v4, a2 / 30000.0 + 1.0, 1.0);
  return [v2 setTransform_];
}

uint64_t sub_27456009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_2745600FC(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745647F4;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_236;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745602B4(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView);
  CGAffineTransformMakeScale(&v4, 1.0, a2 / -15000.0 + 1.0);
  return [v2 setTransform_];
}

uint64_t sub_274560328(void *a1, char a2, void *a3, double a4, double a5)
{
  v10 = objc_opt_self();
  sub_27463BC8C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_27456479C;
  *(v18 + 24) = v17;
  v26[4] = sub_27440D744;
  v26[5] = v18;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_2745F36FC;
  v26[3] = &block_descriptor_198;
  v19 = _Block_copy(v26);
  v20 = a1;
  v21 = a3;

  LODWORD(v22) = v12;
  LODWORD(v23) = v14;
  LODWORD(v24) = v16;
  [v10 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v19);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

id sub_274560508(char *a1, char a2, void *a3, double a4, double a5)
{
  sub_27456360C(1.0);
  if ((a2 & 1) != 0 && (v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView, swift_beginAccess(), (v11 = *&a1[v10]) != 0) && ([v11 contentOffset], v12 != 0.0))
  {
    v16 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
    [v16 frame];
    [v16 setFrame_];
  }

  else
  {
    v13 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
    sub_27455CA34();
    log((a4 - a5) / v14 + 1.0);
    [v13 frame];
    [v13 setFrame_];
    sub_27455FB78(a3, a1);
  }

  [a1 setNeedsLayout];
  return [a1 layoutIfNeeded];
}

uint64_t sub_274560650(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274564900;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_188;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274560800(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  sub_27463BC8C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2745647D0;
  *(v14 + 24) = v13;
  v21[4] = sub_27440D744;
  v21[5] = v14;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_2745F36FC;
  v21[3] = &block_descriptor_208;
  v15 = _Block_copy(v21);
  v16 = a1;

  LODWORD(v17) = v8;
  LODWORD(v18) = v10;
  LODWORD(v19) = v12;
  [v6 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v15);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_2745609C4(char *a1, double a2, double a3)
{
  v4 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  log((a3 - a2) / *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange] + 1.0);
  [v4 frame];
  [v4 setFrame_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  [a1 setBackgroundColor_];
}

uint64_t sub_274560A9C(void *a1, double a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_27456480C;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_256;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

char **sub_274560C54(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  [v2 frame];
  v4 = v3;
  result = sub_27455CBF4();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(result + 4);

  result = sub_27455CBF4();
  if (result[2] < 2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(result + 6);

  result = sub_27455CBF4();
  if (!result[2])
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = v4 - v6;
  v9 = *(result + 4);

  sub_27456360C(1.0 - v8 / (v7 - v9));
  [v2 frame];
  [v2 setFrame_];
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

void sub_274560D60(void *a1)
{
  v2 = v1;
  v4 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v134 = v9 - v8;
  v10 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v133 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v132 = v14 - v13;
  v131 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v130 = v15;
  MEMORY[0x28223BE20](v16);
  v128 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v129 = &v122 - v20;
  [a1 translationInView_];
  v22 = v21;
  [a1 velocityInView_];
  v24 = v23;
  v25 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_29_3();
  v26 = *&v2[v25];
  if (v26 && (v27 = [v26 panGestureRecognizer]) != 0)
  {
    v28 = v27;
    sub_274412734(0, &qword_280951308);
    v29 = a1;
    v30 = sub_27463BF7C();
  }

  else
  {
    v30 = 0;
  }

  if (*&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset] > 0.0 && (v30 & 1) != 0)
  {
    swift_beginAccess();
    _UIUpdateRequestDeactivate();
    swift_endAccess();
    return;
  }

  v126 = v4;
  v124 = v10;
  v125 = v6;
  v31 = objc_opt_self();
  OUTLINED_FUNCTION_5();
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v139 = sub_2745646FC;
  v140 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = sub_27443E0E8;
  v138 = &block_descriptor_83;
  v33 = _Block_copy(&aBlock);
  v34 = v2;

  v139 = CGSizeMake;
  v140 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = sub_27456009C;
  v138 = &block_descriptor_86;
  v35 = _Block_copy(&aBlock);
  OUTLINED_FUNCTION_0_39();
  v127 = v31;
  [v31 v36];
  _Block_release(v35);
  _Block_release(v33);
  v37 = *&v34[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  OUTLINED_FUNCTION_42_5();
  v39 = v38;
  v40 = sub_27455CBF4();
  if (!v40[2])
  {
    goto LABEL_64;
  }

  v41 = *(v40 + 4);

  if (((v41 < v39) & v30) == 1)
  {
    v42 = *&v2[v25];
    if (!v42)
    {
      goto LABEL_15;
    }

    v43 = v42;
    [v43 contentInset];
    [v43 setContentOffset:0 animated:{0.0, -v44}];
  }

  v45 = *&v2[v25];
  if (v45)
  {
    v46 = v45;
    [v46 contentOffset];
    v48 = v47;
    [v46 contentInset];
    v50 = v49;

    if (((v48 != -v50) & v30) != 0)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v30)
  {
    return;
  }

LABEL_16:
  OUTLINED_FUNCTION_42_5();
  v52 = v51;
  v53 = sub_27455CBF4()[2];

  v54 = MEMORY[0x277D84F90];
  if (v53 < 3)
  {
    v30 = sub_27455CBF4();
    v61 = *(v30 + 16);
    if (!v61)
    {

      v63 = MEMORY[0x277D84F90];
      goto LABEL_35;
    }

    v123 = v37;
    aBlock = v54;
    v62 = sub_274451494(0, v61, 0);
    v63 = aBlock;
    v64 = *(aBlock + 16);
    v65 = 16 * v64;
    v66 = 32;
    do
    {
      v67 = CGSizeMake(v62);
      aBlock = v63;
      v68 = *(v63 + 24);
      if (v64 >= v68 >> 1)
      {
        v62 = sub_274451494((v68 > 1), v64 + 1, 1);
        v63 = aBlock;
      }

      *(v63 + 16) = v64 + 1;
      v69 = v63 + v65;
      *(v69 + 32) = 0;
      *(v69 + 40) = v67;
      v65 += 16;
      v66 += 16;
      ++v64;
      --v61;
    }

    while (v61);

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_42_5();
  v56 = v55;
  v57 = sub_27455CBF4();
  if (v57[2] < 2)
  {
    __break(1u);
    goto LABEL_58;
  }

  v59 = *(v57 + 6);

  v60 = sub_27455CBF4()[2];
  v123 = v37;
  if (v56 >= v59)
  {
    if (v60 >= 2)
    {

      if (sub_27455CBF4()[2] >= 3)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (!v60)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (sub_27455CBF4()[2] < 2)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:

    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

LABEL_30:

  aBlock = v54;
  v70 = sub_274451494(0, 2, 0);
  v63 = aBlock;
  v58 = CGSizeMake(v70);
  v37 = *(v63 + 16);
  v30 = *(v63 + 24);
  v72 = v30 >> 1;
  v53 = v37 + 1;
  if (v30 >> 1 <= v37)
  {
    goto LABEL_59;
  }

  while (1)
  {
    *(v63 + 16) = v53;
    v73 = v63 + 16 * v37;
    *(v73 + 32) = 0;
    *(v73 + 40) = v58;
    v74 = CGSizeMake(v71);
    v75 = v37 + 2;
    if (v72 <= v53)
    {
      sub_274451494((v30 > 1), v75, 1);
      v63 = aBlock;
    }

    *(v63 + 16) = v75;
    v76 = v63 + 16 * v53;
    *(v76 + 32) = 0;
    *(v76 + 40) = v74;
LABEL_34:
    v37 = v123;
LABEL_35:
    v24 = sub_274561CD0(v63, 0.0, v24 / 1000.0 * *MEMORY[0x277D76EC0] / (1.0 - *MEMORY[0x277D76EC0]) + v52);
    v52 = v77;

    v78 = sub_27455CBF4();
    if (!v78[2])
    {

LABEL_39:
      v81 = sub_27455CBF4();
      sub_27455C20C(v81);

      goto LABEL_40;
    }

    v79 = *(v78 + 4);

    OUTLINED_FUNCTION_42_5();
    if (v80 >= v79)
    {
      goto LABEL_39;
    }

    sub_27455CA34();
LABEL_40:
    [v34 bounds];
    Height = CGRectGetHeight(v141);
    if (Height < v52)
    {
      v83 = &v34[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate];
      OUTLINED_FUNCTION_29_3();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v84 = *(v83 + 1);
        ObjectType = swift_getObjectType();
        (*(v84 + 24))(v34, ObjectType, v84);
        swift_unknownObjectRelease();
      }
    }

    v53 = sub_27455CBF4()[2];

    if (v53 != 3)
    {
      goto LABEL_47;
    }

    v86 = sub_27455CBF4();
    if (v86[2] >= 2)
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v121 = v58;
    v71 = sub_274451494((v30 > 1), v53, 1);
    v58 = v121;
    v63 = aBlock;
    v30 = *(aBlock + 24);
    v72 = v30 >> 1;
  }

  v87 = *(v86 + 6);

  if (v52 == v87)
  {
    v88 = 2;
    goto LABEL_51;
  }

LABEL_47:
  v89 = sub_27455CBF4();
  v90 = COERCE_DOUBLE(sub_27455C20C(v89));
  v92 = v91;

  if (v92)
  {
    goto LABEL_65;
  }

  if (v90 + -10.0 <= v52)
  {
    v88 = 1;
  }

  else
  {
    v88 = 3;
  }

LABEL_51:
  LOBYTE(aBlock) = v88;
  sub_27455D8B0(&aBlock);
  OUTLINED_FUNCTION_5();
  v93 = swift_allocObject();
  *(v93 + 16) = v34;
  v139 = sub_274564704;
  v140 = v93;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  OUTLINED_FUNCTION_9_19();
  v137 = v94;
  v138 = &block_descriptor_92;
  v95 = _Block_copy(&aBlock);
  v96 = v34;

  v139 = CGSizeMake;
  v140 = 0;
  aBlock = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_8_23();
  v137 = v97;
  v138 = &block_descriptor_95;
  v98 = _Block_copy(&aBlock);
  OUTLINED_FUNCTION_0_39();
  v99 = v127;
  [v127 v100];
  _Block_release(v98);
  _Block_release(v95);
  v101 = swift_allocObject();
  *(v101 + 16) = v96;
  *(v101 + 24) = v24;
  *(v101 + 32) = v52;
  *(v101 + 40) = Height < v52;
  v139 = sub_27456470C;
  v140 = v101;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = sub_27443E0E8;
  v138 = &block_descriptor_101;
  v102 = _Block_copy(&aBlock);
  v103 = v96;

  OUTLINED_FUNCTION_39();
  v104 = swift_allocObject();
  *(v104 + 16) = Height < v52;
  *(v104 + 24) = v103;
  v139 = sub_27456471C;
  v140 = v104;
  aBlock = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_8_23();
  v137 = v105;
  v138 = &block_descriptor_107;
  v106 = _Block_copy(&aBlock);
  v107 = v103;

  OUTLINED_FUNCTION_0_39();
  [v99 v108];
  _Block_release(v106);
  _Block_release(v102);
  if (v22 > 0.0)
  {
    v109 = v126;
    v110 = *&v2[v25];
    if (v110)
    {
      [v110 setBounces_];
    }

    sub_274412734(0, &qword_28094AF90);
    v111 = sub_27463BCEC();
    v112 = v128;
    sub_27463B22C();
    v113 = v129;
    sub_27463B28C();
    v130 = *(v130 + 8);
    v114 = v131;
    (v130)(v112, v131);
    OUTLINED_FUNCTION_5();
    v115 = swift_allocObject();
    *(v115 + 16) = v107;
    v139 = sub_274564728;
    v140 = v115;
    aBlock = MEMORY[0x277D85DD0];
    v136 = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v137 = v116;
    v138 = &block_descriptor_113;
    v117 = _Block_copy(&aBlock);
    v118 = v107;

    v119 = v132;
    sub_27463B20C();
    aBlock = MEMORY[0x277D84F90];
    sub_27446E608();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    sub_274454390();
    v120 = v134;
    sub_27463C1EC();
    MEMORY[0x277C58400](v113, v119, v120, v117);
    _Block_release(v117);

    (*(v125 + 8))(v120, v109);
    (*(v133 + 8))(v119, v124);
    (v130)(v113, v114);
  }
}