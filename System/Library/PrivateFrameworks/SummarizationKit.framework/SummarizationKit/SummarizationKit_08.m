uint64_t sub_22808764C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280876B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228087718(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialSummariesOperation(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2280889C4;

  return sub_22807A908(a1, v10, v11, v1 + 32, v1 + v6, v12, v13, v1 + v9);
}

uint64_t objectdestroy_102Tm()
{
  v1 = (type metadata accessor for PartialSummariesOperation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[6];

  v9 = v0[8];

  v10 = (v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v10);
  v11 = v10[5];

  v12 = v10[6];

  v13 = v1[9];
  v14 = sub_22813797C();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);
  v15 = *(v0 + v4);

  v16 = *(v0 + v5);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + v6));

  return MEMORY[0x2821FE8E8](v0, v6 + 40, v2 | 7);
}

uint64_t sub_2280879B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialSummariesOperation(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2280889C8;

  return sub_22807A908(a1, v10, v11, v1 + 32, v1 + v6, v12, v13, v1 + v9);
}

uint64_t objectdestroy_73Tm(void (*a1)(void))
{
  __swift_destroy_boxed_opaque_existential_1Tm_7((v1 + 16));
  a1(*(v1 + 56));

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_228087BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889CC;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

uint64_t sub_228087CA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889D0;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

uint64_t sub_228087D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_228087DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280889D4;

  return sub_228077FFC(a1, v4, v5, v6);
}

uint64_t sub_228087E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280889D8;

  return sub_228078764(a1, v4, v5, v6);
}

uint64_t sub_228087F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2280889DC;

  return sub_228078D50(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_193Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_79Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280880F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280889E0;

  return sub_2280782FC(a1, v5, v4);
}

uint64_t sub_2280881A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889E4;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

void sub_228088294(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  os_unfair_lock_lock((a2 + 16));
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v7;
  v8[3] = v6;

  sub_228044C70(v8, a3, (a2 + 24));

  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_228088344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280883AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22808840C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E0, &unk_22813C4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_50Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280884BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280889E8;

  return sub_228084674(a1, v5);
}

uint64_t sub_228088574(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280889EC;

  return sub_228084674(a1, v5);
}

void sub_228088654()
{
  sub_2280886E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TelemetrySignalCollector();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280886E8()
{
  if (!qword_27D81ED28)
  {
    v0 = sub_228138C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D81ED28);
    }
  }
}

void sub_228088770()
{
  sub_228088824();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TelemetrySignalCollector();
    if (v1 <= 0x3F)
    {
      sub_228088888();
      if (v2 <= 0x3F)
      {
        sub_22813797C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_228088824()
{
  result = qword_2813C7EE0;
  if (!qword_2813C7EE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813C7EE0);
  }

  return result;
}

void sub_228088888()
{
  if (!qword_27D81ED40)
  {
    v0 = sub_22813956C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D81ED40);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2280888EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228088934(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t Com_Apple_Summarizationkit_Proto_Rule.id.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t Com_Apple_Summarizationkit_Proto_Category.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_228088B24()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228088B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22808B3AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_228088BDC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_228088C58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_228088CBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Com_Apple_Summarizationkit_Proto_Rule.id.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_228088E08;
}

void sub_228088E08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_Rule.clearID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

void Com_Apple_Summarizationkit_Proto_Rule.category.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.category.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.inputRegex.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.inputRegex.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.output.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_228088FB4(v2, v3, v4);
}

uint64_t sub_228088FB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_228088FC8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_228088FC8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.output.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_228089024(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

uint64_t sub_228089024(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_228089038(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_228089038(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.matchOnly.setter(char a1)
{
  v2 = a1 & 1;
  result = sub_228089024(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t (*Com_Apple_Summarizationkit_Proto_Rule.matchOnly.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 48) == 0) & *(v1 + 32);
  return sub_228089100;
}

uint64_t sub_228089100(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[8];
  result = sub_228089024(*(*a1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.outputValue.getter()
{
  if (*(v0 + 48) != 1)
  {
    return 0;
  }

  v2 = v0 + 32;
  v1 = *(v0 + 32);
  sub_228088FC8(v1, *(v2 + 8), 1u);
  return v1;
}

uint64_t (*Com_Apple_Summarizationkit_Proto_Rule.outputValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 48) == 1)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    sub_228088FC8(v3, v4, 1u);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_228089208;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.outputTemplate.getter()
{
  if (*(v0 + 48) != 2)
  {
    return 0;
  }

  v2 = v0 + 32;
  v1 = *(v0 + 32);
  sub_228088FC8(v1, *(v2 + 8), 2u);
  return v1;
}

uint64_t sub_228089268(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_228089024(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t (*Com_Apple_Summarizationkit_Proto_Rule.outputTemplate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 48) == 2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    sub_228088FC8(v3, v4, 2u);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_228089324;
}

uint64_t sub_22808932C(uint64_t *a1, char a2, char a3)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  if (a2)
  {
    v10 = a1[1];

    sub_228089024(v7, v8, v9);
    *(v5 + 32) = v6;
    *(v5 + 40) = v4;
    *(v5 + 48) = a3;
  }

  else
  {
    result = sub_228089024(*(v5 + 32), *(v5 + 40), *(v5 + 48));
    *(v5 + 32) = v6;
    *(v5 + 40) = v4;
    *(v5 + 48) = a3;
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v3 = a1 + *(v2 + 28);
  result = sub_228137D6C();
  v5 = (a1 + *(v2 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.rules.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
  return sub_228137D6C();
}

uint64_t sub_2280897A0()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C60F8);
  __swift_project_value_buffer(v0, qword_2813C60F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "special_char_removal";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "url_to_domain";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "link_presentation_removal";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "reaction_removal";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "boilerplate_text_removal";
  *(v15 + 8) = 24;
  *(v15 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_228089A94()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C61C8);
  __swift_project_value_buffer(v0, qword_2813C61C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813E510;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "category";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "input_regex";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "match_only";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "output_value";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "output_template";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_228089EF8();
            break;
          case 5:
            sub_228089FA4(a1, v5, a2, a3, 1);
            break;
          case 6:
            sub_228089FA4(a1, v5, a2, a3, 2);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 32);
            sub_228137E6C();
            break;
          case 2:
            sub_22808B3AC();
            sub_228137E1C();
            break;
          case 3:
            sub_228137E7C();
            break;
        }
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_228089FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_228137E6C();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 48) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_228137DDC();
      v9 = *(a2 + 48);
    }

    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = v12;
    *(a2 + 48) = a5;
    return sub_228089024(v10, v11, v9);
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_Rule.traverse<A>(visitor:)()
{
  result = sub_22808A1DC(v0);
  if (!v1)
  {
    if (*v0)
    {
      v11 = *v0;
      v12 = *(v0 + 8);
      sub_22808B3AC();
      sub_228137F2C();
    }

    v3 = *(v0 + 24);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_228137F6C();
    }

    if (*(v0 + 48) > 1u)
    {
      if (*(v0 + 48) != 2)
      {
        goto LABEL_15;
      }

      v6 = *(v0 + 32);
      v7 = *(v0 + 40);
    }

    else
    {
      if (!*(v0 + 48))
      {
        v5 = *(v0 + 32);
        sub_228137F1C();
LABEL_15:
        v10 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) + 28);
        return sub_228137D5C();
      }

      v8 = *(v0 + 32);
      v9 = *(v0 + 40);
    }

    sub_228137F6C();
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_22808A1DC(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_228137F6C();
  }

  return result;
}

uint64_t sub_22808A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1;
  v4 = a2 + *(a1 + 28);
  result = sub_228137D6C();
  v6 = (a2 + *(a1 + 32));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_22808A318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22808A38C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22808A400(uint64_t a1, uint64_t a2))()
{
  result = nullsub_63;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_22808A458(uint64_t a1, uint64_t a2)
{
  v4 = sub_22808B6E4(&qword_27D81ED80, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22808A4F8(uint64_t a1)
{
  v2 = sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22808A564()
{
  sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

  return sub_228137EDC();
}

uint64_t sub_22808A600()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5E50);
  __swift_project_value_buffer(v0, qword_2813C5E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rules";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_228137FAC();
}

uint64_t sub_22808A7F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228137E4C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
        sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKFilterRules.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_228137F4C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0), sub_22808B6E4(&qword_2813C61B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule), result = sub_228137F7C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKFilterRules.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_22803C3E8(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0) + 24);
  sub_228137D7C();
  sub_22808B6E4(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_22808AB90(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228139AAC();
  a1(0);
  sub_22808B6E4(a2, a3);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22808AC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return sub_228137D6C();
}

uint64_t sub_22808AC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22808ACD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22808AD4C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_64;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_22808ADA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22808B6E4(&qword_27D81ED78, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22808AE44@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22808AEE0(uint64_t a1)
{
  v2 = sub_22808B6E4(&qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22808AF4C()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22808AFA4()
{
  sub_22808B6E4(&qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  return sub_228137EDC();
}

uint64_t sub_22808B020()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_22808B074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_22803C3E8(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_228137D7C();
  sub_22808B6E4(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t _s16SummarizationKit37Com_Apple_Summarizationkit_Proto_RuleV12OneOf_OutputO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_228089038(*a1, v3, 0);
      sub_228089038(v5, v6, 0);
      v14 = v5 ^ v2 ^ 1;
      return v14 & 1;
    }

LABEL_19:
    sub_228088FC8(v5, v6, v7);
    sub_228089038(v2, v3, v4);
    sub_228089038(v5, v6, v7);
    v14 = 0;
    return v14 & 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      if (v2 != v5 || v3 != v6)
      {
        v9 = *a1;
        v10 = sub_2281399BC();
        sub_228088FC8(v5, v6, 1u);
        sub_228088FC8(v2, v3, 1u);
        sub_228089038(v2, v3, 1u);
        v11 = v5;
        v12 = v6;
        v13 = 1;
LABEL_17:
        sub_228089038(v11, v12, v13);
        return v10 & 1;
      }

      v14 = 1;
      sub_228088FC8(*a1, v3, 1u);
      sub_228088FC8(v2, v3, 1u);
      sub_228089038(v2, v3, 1u);
      sub_228089038(v2, v3, 1u);
      return v14 & 1;
    }

    goto LABEL_18;
  }

  if (v7 != 2)
  {
LABEL_18:
    v18 = *(a1 + 8);

    goto LABEL_19;
  }

  v15 = *a1;
  if (v2 != v5 || v3 != v6)
  {
    v10 = sub_2281399BC();
    sub_228088FC8(v5, v6, 2u);
    sub_228088FC8(v2, v3, 2u);
    sub_228089038(v2, v3, 2u);
    v11 = v5;
    v12 = v6;
    v13 = 2;
    goto LABEL_17;
  }

  sub_228088FC8(v15, v3, 2u);
  sub_228088FC8(v2, v3, 2u);
  sub_228089038(v2, v3, 2u);
  sub_228089038(v2, v3, 2u);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_22808B374(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22808B3AC()
{
  result = qword_2813C60E8;
  if (!qword_2813C60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60E8);
  }

  return result;
}

uint64_t _s16SummarizationKit37Com_Apple_Summarizationkit_Proto_RuleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v5 = *(v4 + 32);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_2281399BC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *a1;
  v12 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v11 != 1)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }
    }

    else if (v12 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v12 == 3)
    {
      if (v11 != 3)
      {
        return 0;
      }
    }

    else if (v11 != 4)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[4];
  v13 = a1[5];
  v15 = *(a1 + 48);
  v17 = *(a2 + 32);
  v16 = *(a2 + 40);
  v18 = *(a2 + 48);
  if (v15 != 255)
  {
    v25 = a1[4];
    v26 = v13;
    v27 = v15;
    if (v18 != 255)
    {
      v22 = v17;
      v23 = v16;
      v24 = v18;
      sub_228088FB4(v14, v13, v15);
      sub_228088FB4(v17, v16, v18);
      sub_228088FB4(v14, v13, v15);
      v19 = _s16SummarizationKit37Com_Apple_Summarizationkit_Proto_RuleV12OneOf_OutputO2eeoiySbAE_AEtFZ_0(&v25, &v22);
      sub_228089038(v22, v23, v24);
      sub_228089038(v25, v26, v27);
      sub_228089024(v14, v13, v15);
      if (v19)
      {
        goto LABEL_39;
      }

      return 0;
    }

    sub_228088FB4(v14, v13, v15);
    sub_228088FB4(v17, v16, 0xFFu);
    sub_228088FB4(v14, v13, v15);
    sub_228089038(v14, v13, v15);
LABEL_36:
    sub_228089024(v14, v13, v15);
    sub_228089024(v17, v16, v18);
    return 0;
  }

  sub_228088FB4(a1[4], a1[5], 0xFFu);
  if (v18 != 255)
  {
    sub_228088FB4(v17, v16, v18);
    goto LABEL_36;
  }

  sub_228088FB4(v17, v16, 0xFFu);
  sub_228089024(v14, v13, 0xFFu);
LABEL_39:
  v21 = *(v4 + 28);
  sub_228137D7C();
  sub_22808B6E4(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_22808B6E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22808B734()
{
  result = qword_2813C60D0;
  if (!qword_2813C60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60D0);
  }

  return result;
}

unint64_t sub_22808B78C()
{
  result = qword_27D81ED58;
  if (!qword_27D81ED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81ED60, &qword_22813E568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81ED58);
  }

  return result;
}

unint64_t sub_22808B7F4()
{
  result = qword_2813C60D8;
  if (!qword_2813C60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C60D8);
  }

  return result;
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);

  result = sub_228089024(v9, v10, v11);
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = a5;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_Category(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_Category(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22808BB40(uint64_t a1)
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

uint64_t sub_22808BB60(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_22808BBB8()
{
  sub_22808BC8C(319, qword_2813C61E0);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      sub_22808BC8C(319, &qword_2813C46E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22808BC8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22813977C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22808BCF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22808BD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_22808BDC8()
{
  sub_22808BE5C();
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22808BE5C()
{
  if (!qword_2813C46D8)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(255);
    v0 = sub_22813956C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C46D8);
    }
  }
}

uint64_t SKConfiguration.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_22808BF68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 104);
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

unint64_t sub_22808BFD0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for SKConfiguration();
  swift_getMetatypeMetadata();
  v3 = sub_2281392EC();
  v29 = 0xD000000000000018;
  v30 = 0x8000000228146700;
  MEMORY[0x22AAB1970](v3);

  MEMORY[0x22AAB1970](2618, 0xE200000000000000);

  MEMORY[0x22AAB1970](0xD00000000000002BLL, 0x8000000228146720);
  sub_22808BF68(v28);
  v4 = v28[0];
  if (*(v28[0] + 16) && (v5 = sub_22808CA2C(2u), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
  }

  else
  {
    v8 = 0xE100000000000000;
    v9 = 48;
  }

  strcpy(v28, "\tFrom UAF: ");
  HIDWORD(v28[1]) = -352321536;
  MEMORY[0x22AAB1970](v9, v8);

  v10 = 0xE100000000000000;
  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v28[0], v28[1]);

  sub_22808BF68(v28);
  v11 = v28[0];
  if (*(v28[0] + 16) && (v12 = sub_22808CA2C(1u), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v15 = *v14;
    v10 = v14[1];
  }

  else
  {
    v15 = 48;
  }

  strcpy(v28, "\tFrom Bundle: ");
  HIBYTE(v28[1]) = -18;
  MEMORY[0x22AAB1970](v15, v10);

  v16 = 0xE100000000000000;
  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v28[0], v28[1]);

  sub_22808BF68(v28);
  v17 = v28[0];
  if (*(v28[0] + 16) && (v18 = sub_22808CA2C(3u), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 16 * v18);
    v21 = *v20;
    v16 = v20[1];
  }

  else
  {
    v21 = 48;
  }

  strcpy(v28, "\tFrom Path: ");
  BYTE5(v28[1]) = 0;
  HIWORD(v28[1]) = -5120;
  MEMORY[0x22AAB1970](v21, v16);

  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v28[0], v28[1]);

  sub_22808BF68(&v26);
  v22 = v27;

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = 0xE300000000000000;
      v24 = 6709621;
    }

    else
    {
      v23 = 0xE400000000000000;
      v24 = 1752457584;
    }
  }

  else if (v22)
  {
    v23 = 0xE600000000000000;
    v24 = 0x656C646E7562;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  v28[0] = 0xD000000000000012;
  v28[1] = 0x8000000228146750;
  MEMORY[0x22AAB1970](v24, v23);

  MEMORY[0x22AAB1970](10, 0xE100000000000000);

  MEMORY[0x22AAB1970](v28[0], v28[1]);

  return v29;
}

uint64_t sub_22808C414()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_22808C488()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_22808C4DC()
{
  v0 = sub_228028A68(&unk_283B5AFF8);
  result = swift_arrayDestroy();
  qword_2813C6920 = v0;
  return result;
}

uint64_t sub_22808C528()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EDA0, &unk_22813EC30);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7D8, &qword_22813BD00) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22813A4B0;
  result = sub_228137BDC();
  off_2813C6910 = v3;
  return result;
}

uint64_t sub_22808C61C()
{
  v1 = *v0;
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_22808C6CC()
{
  *v0;
  *v0;
  *v0;
  sub_22813923C();
}

uint64_t sub_22808C768()
{
  v1 = *v0;
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_22808C814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22808E1A8();
  *a2 = result;
  return result;
}

void sub_22808C844(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE300000000000000;
  v5 = 6709621;
  if (*v1 != 2)
  {
    v5 = 1752457584;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C646E7562;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SKConfiguration.__deallocating_deinit()
{
  SKConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_22808C91C(unsigned int a1)
{
  v3 = MEMORY[0x22AAB2030](*(v1 + 40), a1, 4);

  return sub_22808D130(a1, v3);
}

unint64_t sub_22808C964(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_228139AAC();
  sub_22813923C();
  v6 = sub_228139AEC();

  return sub_22808D19C(a1, a2, v6);
}

unint64_t sub_22808C9DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_228139A9C();
  return sub_22808D980(a1, v4);
}

unint64_t sub_22808CA2C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_228139AAC();
  sub_22813923C();

  v4 = sub_228139AEC();

  return sub_22808D254(a1, v4);
}

uint64_t sub_22808CB04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22808CB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22808CBA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKConfigurationStatus.SKConfigurationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKConfigurationStatus.SKConfigurationSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22808CDD0()
{
  result = qword_2813C6F70[0];
  if (!qword_2813C6F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813C6F70);
  }

  return result;
}

unint64_t sub_22808CE24(char a1)
{
  v3 = *(v1 + 40);
  sub_228139AAC();
  MEMORY[0x22AAB2060](a1 & 1);
  v4 = sub_228139AEC();

  return sub_22808D3F4(a1 & 1, v4);
}

unint64_t sub_22808CEA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 40);
  sub_228139AAC();
  MEMORY[0x22AAB2060](a1[5]);
  v8 = sub_228139AEC();
  return sub_22808D464(a1, v8, a2, a3);
}

unint64_t sub_22808CF24(uint64_t a1, char a2)
{
  v4 = *(v2 + 40);
  v5 = a2 & 1;
  sub_228139AAC();
  sub_22801E940();
  sub_2281391EC();
  v6 = sub_228139AEC();
  return sub_22808D6B0(a1, v5, v6);
}

unint64_t sub_22808CFAC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_228139AAC();
  sub_22813923C();

  v4 = sub_228139AEC();

  return sub_22808D778(a1, v4);
}

unint64_t sub_22808D0CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_228139A9C();
  return sub_22808D980(a1, v4);
}

unint64_t sub_22808D130(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2281399BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22808D254(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 6709621 : 1752457584;
      v8 = v6 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x656C646E7562 : 0x6E776F6E6B6E75;
      v10 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 6709621 : 1752457584;
      v14 = v5 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v15 = v5 ? 0x656C646E7562 : 0x6E776F6E6B6E75;
      v16 = v5 ? 0xE600000000000000 : 0xE700000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_2281399BC();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22808D3F4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D464(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = a4;
    v11 = ~v6;
    v27 = ~v6;
    do
    {
      sub_227FC8234(*(v4 + 48) + 48 * v7, v32, a3, v8);
      sub_227FE77E0(v32, v31);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_227FE77E0(a1, v30);
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v13 = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v30);
      if (DynamicType == v13)
      {
        v14 = a3;
        v15 = v5;
        v16 = v33;
        v17 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v18 = (*(v17 + 24))(v16, v17);
        v20 = v19;
        v21 = a1[3];
        v22 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v21);
        if (v18 == (*(v22 + 24))(v21, v22) && v20 == v23)
        {

          sub_22808E1F4(v32, v14, a4);
          return v7;
        }

        v25 = sub_2281399BC();

        v8 = a4;
        sub_22808E1F4(v32, v14, a4);
        v5 = v15;
        a3 = v14;
        v11 = v27;
        v4 = v28;
        if (v25)
        {
          return v7;
        }
      }

      else
      {
        sub_22808E1F4(v32, a3, v8);
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_22808D6B0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v3 + 48) + 16 * result);
      if (a2)
      {
        if (a1 <= 1)
        {
          if (a1)
          {
            if (v8 == 1)
            {
              return result;
            }
          }

          else if (!v8)
          {
            return result;
          }
        }

        else if (a1 == 2)
        {
          if (v8 == 2)
          {
            return result;
          }
        }

        else if (a1 == 3)
        {
          if (v8 == 3)
          {
            return result;
          }
        }

        else if (v8 == 4)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D778(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    v5 = 0xE500000000000000;
    v17 = a1;
    while (1)
    {
      v6 = *(*(v18 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v18 + 48) + v4))
        {
          v7 = 0x656E694C706F74;
        }

        else
        {
          v7 = 0x6369706F74;
        }

        if (*(*(v18 + 48) + v4))
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE800000000000000;
        v7 = 0x736973706F6E7973;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x6F436C6175736976;
        }

        else
        {
          v7 = 0x6F546C6175736976;
        }

        if (v6 == 3)
        {
          v8 = 0xEE0073747065636ELL;
        }

        else
        {
          v8 = 0xED0000656E694C70;
        }
      }

      if (v17 == 3)
      {
        v9 = 0x6F436C6175736976;
      }

      else
      {
        v9 = 0x6F546C6175736976;
      }

      if (v17 == 3)
      {
        v10 = 0xEE0073747065636ELL;
      }

      else
      {
        v10 = 0xED0000656E694C70;
      }

      if (v17 == 2)
      {
        v9 = 0x736973706F6E7973;
        v10 = 0xE800000000000000;
      }

      if (v17)
      {
        v11 = 0x656E694C706F74;
      }

      else
      {
        v11 = 0x6369706F74;
      }

      if (v17)
      {
        v5 = 0xE700000000000000;
      }

      v12 = v17 <= 1 ? v11 : v9;
      v13 = v17 <= 1 ? v5 : v10;
      if (v7 == v12 && v8 == v13)
      {
        break;
      }

      v14 = sub_2281399BC();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        v5 = 0xE500000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22808D980(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22808D9EC(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_22808DA18()
{
  v1 = *(v0 + 40);
  sub_228139AAC();
  MEMORY[0x22AAB2060](0);
  v2 = sub_228139AEC();

  return sub_22808D9EC(v2);
}

uint64_t sub_22808DA70(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = a1;
  v47 = sub_22813882C();
  v2 = *(v47 - 8);
  v3 = *(v2 + 8);
  MEMORY[0x28223BE20](v47, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED90, &unk_22813EC18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v34 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7D8, &qword_22813BD00);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v31 - v21;
  if (qword_2813C6918 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v23 = qword_2813C6920;

    v24 = sub_2280EAEE0(v44, v46, v23);

    if (v24)
    {
      return 1;
    }

    if (qword_2813C6908 != -1)
    {
      swift_once();
    }

    v26 = v34;
    v42 = *(off_2813C6910 + 2);
    if (!v42)
    {
      break;
    }

    v41 = off_2813C6910 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v27 = v43 + 16;
    v37 = v2 + 16;
    v38 = v19;
    v39 = (v43 + 8);
    v36 = v2 + 8;

    v19 = 0;
    *&v29 = 136315394;
    v31 = v29;
    v32 = v6;
    v40 = v28;
    v45 = v27;
    v35 = v22;
    while (v19 < *(v28 + 16))
    {
      (*(v43 + 16))(v22, &v41[*(v43 + 72) * v19], v11);
      v2 = v22;
      sub_228137BEC();
      (*v39)(v22, v11);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED98, &qword_22813EC28);
      if ((*(*(v30 - 8) + 48))(v26, 1, v30) != 1)
      {

        sub_22808E1F4(v26, &qword_27D81ED90, &unk_22813EC18);
        return 1;
      }

      sub_22808E1F4(v26, &qword_27D81ED90, &unk_22813EC18);
      v28 = v40;
      if (v42 == ++v19)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  return 0;
}

uint64_t sub_22808E1A8()
{
  v0 = sub_22813995C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22808E1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SKConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKConfigurationError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22808E3AC()
{
  result = qword_27D81EDA8;
  if (!qword_27D81EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EDA8);
  }

  return result;
}

uint64_t sub_22808E410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 144);
  v5 = *(v2 + 152);
  v7 = *(v2 + 160);
  v9 = *(v2 + 168);
  v8 = *(v2 + 176);
  v10 = v3[276];
  v11 = objc_opt_self();

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v12 = byte_2813C4638;
  if (byte_2813C4638 != 1)
  {

    if (!v7)
    {
      return v5;
    }

LABEL_7:

    v13 = sub_227FE3D98(&unk_283B5AB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
    swift_arrayDestroy();
    if (*(v13 + 16) && (v14 = sub_22808C964(a1, a2), (v15 & 1) != 0))
    {
      v5 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {

      v16 = v3[13];
      v5 = v3[14];
      v18 = v3[15];
      v17 = v3[16];

      if (v12)
      {
        v18(&v28, v10);

        v5 = v28;
        goto LABEL_14;
      }
    }

LABEL_14:
    v20 = v3[24];
    v19 = v3[25];
    v22 = v3[26];
    v21 = v3[27];

    if (v12)
    {
      v22(&v28, v10);

      v19 = v28;
      if (*(v28 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (*(v19 + 16))
      {
LABEL_16:
        v23 = sub_22808C964(a1, a2);
        v25 = v24;

        if (v25)
        {
          v5 = *(*(v19 + 56) + 8 * v23);
        }

        goto LABEL_21;
      }
    }

LABEL_21:

    return v5;
  }

  v9(&v28, v10);

  if (v29)
  {
    goto LABEL_7;
  }

  return v28;
}

uint64_t sub_22808E6E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  v8 = *(v3 + 992);
  v9 = *(v3 + 1000);
  v10 = *(v3 + 1008);
  v11 = *(v3 + 1016);
  v12 = *(v3 + 1024);
  v40 = v4[276];
  v13 = objc_opt_self();

  v39 = v13;

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v14 = byte_2813C4638;
  if (byte_2813C4638 != 1)
  {

    if (!v10)
    {
      return v9;
    }

LABEL_7:
    v41 = a1;
    v42 = a2;

    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v15 = 0xE500000000000000;
    v16 = 0x6369706F74;
    v17 = 0xE800000000000000;
    v18 = 0x736973706F6E7973;
    v19 = 0xEE0073747065636ELL;
    v20 = 0x6F436C6175736976;
    if (v7 != 3)
    {
      v20 = 0x6F546C6175736976;
      v19 = 0xED0000656E694C70;
    }

    if (v7 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (v7)
    {
      v16 = 0x656E694C706F74;
      v15 = 0xE700000000000000;
    }

    if (v7 <= 1)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    if (v7 <= 1)
    {
      v22 = v15;
    }

    else
    {
      v22 = v17;
    }

    MEMORY[0x22AAB1970](v21, v22);

    v24 = v41;
    v23 = v42;
    v25 = sub_227FE3D98(&unk_283B5ACB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
    swift_arrayDestroy();
    if (*(v25 + 16) && (v26 = sub_22808C964(v24, v23), (v27 & 1) != 0))
    {
      v9 = *(*(v25 + 56) + 8 * v26);
    }

    else
    {

      v28 = v4[119];
      v9 = v4[120];
      v29 = v4[121];
      v30 = v4[122];

      if (v14)
      {
        v29(&v41, v40);

        v9 = v41;
        goto LABEL_26;
      }
    }

LABEL_26:
    v31 = v4[130];
    v32 = v4[131];
    v33 = v4[132];
    v34 = v4[133];

    if (v14)
    {
      v33(&v41, v40);

      v32 = v41;
      if (*(v41 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (*(v32 + 16))
      {
LABEL_28:
        v35 = sub_22808C964(v24, v23);
        v37 = v36;

        if (v37)
        {
          v9 = *(*(v32 + 56) + 8 * v35);
        }

        goto LABEL_33;
      }
    }

LABEL_33:

    return v9;
  }

  v11(&v41, v40);

  if (v42)
  {
    goto LABEL_7;
  }

  return v41;
}

uint64_t sub_22808EAB4()
{
  v0 = sub_227FE3E94(&unk_283B5AD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC8, &qword_22813F008);
  result = swift_arrayDestroy();
  off_2813C7718 = v0;
  return result;
}

double sub_22808EB10(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  v8 = *(v3 + 1384);
  v9 = *(v3 + 1392);
  v10 = *(v3 + 1400);
  v11 = *(v3 + 1408);
  v12 = *(v3 + 1416);
  v39 = *(v4 + 276);
  v13 = objc_opt_self();

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v14 = byte_2813C4638;
  if (byte_2813C4638 != 1)
  {

    if (!v10)
    {
      return v9;
    }

LABEL_7:
    v40 = *&a1;
    v41 = a2;

    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v15 = 0xE500000000000000;
    v16 = 0x6369706F74;
    v17 = 0xE800000000000000;
    v18 = 0x736973706F6E7973;
    v19 = 0xEE0073747065636ELL;
    v20 = 0x6F436C6175736976;
    if (v7 != 3)
    {
      v20 = 0x6F546C6175736976;
      v19 = 0xED0000656E694C70;
    }

    if (v7 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (v7)
    {
      v16 = 0x656E694C706F74;
      v15 = 0xE700000000000000;
    }

    if (v7 <= 1)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    if (v7 <= 1)
    {
      v22 = v15;
    }

    else
    {
      v22 = v17;
    }

    MEMORY[0x22AAB1970](v21, v22);

    v24 = *&v40;
    v23 = v41;
    if (qword_2813C7710 != -1)
    {
      swift_once();
    }

    v25 = off_2813C7718;
    if (*(off_2813C7718 + 2) && (v26 = sub_22808C964(v24, v23), (v27 & 1) != 0))
    {
      v9 = *(v25[7] + 8 * v26);
    }

    else
    {
      v28 = *(v4 + 168);
      v9 = v4[169];
      v29 = *(v4 + 170);
      v30 = *(v4 + 171);

      if (v14)
      {
        v29(&v40, v39);

        v9 = v40;
      }

      else
      {
      }
    }

    v31 = *(v4 + 179);
    v32 = v4[180];
    v33 = *(v4 + 181);
    v34 = *(v4 + 182);

    if (v14)
    {
      v33(&v40, v39);

      v32 = v40;
      if (*(*&v40 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (*(*&v32 + 16))
      {
LABEL_29:
        v35 = sub_22808C964(v24, v23);
        v37 = v36;

        if (v37)
        {
          v9 = *(*(*&v32 + 56) + 8 * v35);
        }

        goto LABEL_34;
      }
    }

LABEL_34:

    return v9;
  }

  v11(&v40, v39);

  if (v41)
  {
    goto LABEL_7;
  }

  return v40;
}

uint64_t sub_22808EED0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for ModelBundleIdentifier();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v52 - v22;
  v58 = a1;
  sub_227FC8614(a1, &v52 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = v5;
  v54 = v4;
  v52 = v9;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v9, v23, v4);
      v57 = sub_22813746C();
      v26 = v25;
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v57 = 0xD000000000000045;
      v26 = 0x8000000228144A90;
    }
  }

  else
  {
    v27 = v55;
    v28 = v23;
    v29 = v56;
    (*(v55 + 32))(v14, v28, v56);
    v57 = sub_22813746C();
    v26 = v30;
    (*(v27 + 8))(v14, v29);
  }

  v31 = v2[230];
  v32 = v2[231];
  v33 = v2[232];
  v34 = v2[233];
  v35 = v2[276];
  v36 = objc_opt_self();

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v33(&v59, v35);

    v32 = v59;
    if (*(v59 + 16))
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*(v32 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  v37 = sub_22808C964(v57, v26);
  v39 = v38;

  if (v39)
  {
    v40 = *(*(v32 + 56) + 8 * v37);

    return v40;
  }

LABEL_14:

  if (qword_2813C7700 != -1)
  {
    swift_once();
  }

  v42 = off_2813C7708;
  sub_227FC8614(v58, v20);
  v43 = swift_getEnumCaseMultiPayload();
  if (!v43)
  {
    v44 = v55;
    v45 = v56;
    (*(v55 + 32))(v14, v20, v56);
LABEL_20:
    v46 = sub_22813746C();
    v48 = v47;
    (*(v44 + 8))(v14, v45);
    if (v42[2])
    {
      goto LABEL_21;
    }

LABEL_24:

    return 0;
  }

  if (v43 == 1)
  {
    v14 = v52;
    v44 = v53;
    v45 = v54;
    (*(v53 + 32))(v52, v20, v54);
    goto LABEL_20;
  }

  v46 = 0xD000000000000045;
  v48 = 0x8000000228144A90;
  if (!v42[2])
  {
    goto LABEL_24;
  }

LABEL_21:
  v49 = sub_22808C964(v46, v48);
  v51 = v50;

  if (v51)
  {
    return *(v42[7] + 8 * v49);
  }

  return 0;
}

uint64_t sub_22808F3E4()
{
  v0 = sub_227FE3D98(&unk_283B5AE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
  result = swift_arrayDestroy();
  off_2813C7708 = v0;
  return result;
}

uint64_t sub_22808F440()
{
  type metadata accessor for InternalSettings();
  swift_allocObject();
  result = sub_22808F4E8(0xD00000000000001ALL, 0x8000000228144370);
  qword_2813C76F8 = result;
  return result;
}

void *sub_22808F494()
{
  type metadata accessor for InternalSettings();
  swift_allocObject();
  result = sub_22808F4E8(0xD000000000000022, 0x8000000228146FC0);
  off_27D81EDB0 = result;
  return result;
}

uint64_t sub_22808F4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v130 = a2;
  v7 = byte_2813C4629;
  v8 = swift_allocObject();
  v10 = v8;
  *(v8 + 16) = 0xD000000000000015;
  *(v8 + 24) = 0x8000000228146FF0;
  if (qword_2813C7720 != -1)
  {
    v8 = swift_once();
  }

  v11 = qword_2813C7728;
  MEMORY[0x28223BE20](v8, v9);
  os_unfair_lock_lock((v11 + 24));
  sub_228093C7C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 16) = 0xD000000000000015;
  *(v3 + 24) = 0x8000000228146FF0;
  *(v3 + 32) = v7;
  *(v3 + 40) = sub_227FC7494;
  *(v3 + 48) = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = 0xD000000000000017;
  *(v12 + 24) = 0x8000000228147010;
  MEMORY[0x28223BE20](v12, v13);
  os_unfair_lock_lock((v11 + 24));
  sub_228094144((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 56) = 0xD000000000000017;
  *(v3 + 64) = 0x8000000228147010;
  *(v3 + 72) = v7;
  *(v3 + 80) = sub_2280944F4;
  *(v3 + 88) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000010;
  *(v14 + 24) = 0x8000000228147030;
  MEMORY[0x28223BE20](v14, v15);
  os_unfair_lock_lock((v11 + 24));
  sub_228093CA4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 96) = 0xD000000000000010;
  *(v3 + 104) = 0x8000000228147030;
  *(v3 + 112) = 15;
  *(v3 + 120) = sub_228093CA0;
  *(v3 + 128) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD00000000000001ELL;
  *(v16 + 24) = 0x8000000228147050;
  MEMORY[0x28223BE20](v16, v17);
  os_unfair_lock_lock((v11 + 24));
  sub_228093CD0((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 136) = 0xD00000000000001ELL;
  *(v3 + 144) = 0x8000000228147050;
  *(v3 + 152) = 0;
  *(v3 + 160) = 1;
  *(v3 + 168) = sub_228093CC8;
  *(v3 + 176) = v16;
  v18 = sub_227FE3D98(&unk_283B5AB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEC0, &qword_22813F000);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  v19[2] = 0xD000000000000019;
  v19[3] = 0x8000000228147070;
  v19[4] = v18;
  MEMORY[0x28223BE20](v19, v20);

  os_unfair_lock_lock((v11 + 24));
  sub_228093D20((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 184) = 0xD000000000000019;
  *(v3 + 192) = 0x8000000228147070;
  *(v3 + 200) = v18;
  *(v3 + 208) = sub_228093CF0;
  *(v3 + 216) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = 0xD00000000000001DLL;
  *(v21 + 24) = 0x8000000228147090;
  MEMORY[0x28223BE20](v21, v22);
  os_unfair_lock_lock((v11 + 24));
  sub_22809415C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 224) = 0xD00000000000001DLL;
  *(v3 + 232) = 0x8000000228147090;
  *(v3 + 240) = 1;
  *(v3 + 248) = sub_2280944F8;
  *(v3 + 256) = v21;
  v23 = swift_allocObject();
  v23[2] = 0xD000000000000029;
  v23[3] = 0x80000002281470B0;
  v23[4] = 0;
  MEMORY[0x28223BE20](v23, v24);
  os_unfair_lock_lock((v11 + 24));
  sub_228093D60((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 264) = 0xD000000000000029;
  *(v3 + 272) = 0x80000002281470B0;
  *(v3 + 280) = 0;
  *(v3 + 288) = sub_228093D54;
  *(v3 + 296) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = 0xD000000000000039;
  *(v25 + 24) = 0x80000002281470E0;
  MEMORY[0x28223BE20](v25, v26);
  os_unfair_lock_lock((v11 + 24));
  sub_228094174((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 304) = 0xD000000000000039;
  *(v3 + 312) = 0x80000002281470E0;
  *(v3 + 320) = 0;
  *(v3 + 328) = sub_2280944FC;
  *(v3 + 336) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000020;
  *(v27 + 24) = 0x8000000228147120;
  MEMORY[0x28223BE20](v27, v28);
  os_unfair_lock_lock((v11 + 24));
  sub_22809418C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 344) = 0xD000000000000020;
  *(v3 + 352) = 0x8000000228147120;
  *(v3 + 360) = 10;
  *(v3 + 368) = sub_228094500;
  *(v3 + 376) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = 0xD000000000000025;
  *(v29 + 24) = 0x8000000228147150;
  MEMORY[0x28223BE20](v29, v30);
  os_unfair_lock_lock((v11 + 24));
  sub_2280941A4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 384) = 0xD000000000000025;
  *(v3 + 392) = 0x8000000228147150;
  *(v3 + 400) = 0;
  *(v3 + 408) = sub_228094504;
  *(v3 + 416) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = 0xD000000000000025;
  *(v31 + 24) = 0x8000000228147180;
  MEMORY[0x28223BE20](v31, v32);
  os_unfair_lock_lock((v11 + 24));
  sub_2280941BC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 424) = 0xD000000000000025;
  *(v3 + 432) = 0x8000000228147180;
  *(v3 + 440) = 0;
  *(v3 + 448) = sub_228094508;
  *(v3 + 456) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = 0xD00000000000001CLL;
  *(v33 + 24) = 0x80000002281471B0;
  MEMORY[0x28223BE20](v33, v34);
  os_unfair_lock_lock((v11 + 24));
  sub_2280941D4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 464) = 0xD00000000000001CLL;
  *(v3 + 472) = 0x80000002281471B0;
  *(v3 + 480) = 10;
  *(v3 + 488) = sub_22809450C;
  *(v3 + 496) = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = 0xD000000000000040;
  *(v35 + 24) = 0x80000002281471D0;
  MEMORY[0x28223BE20](v35, v36);
  os_unfair_lock_lock((v11 + 24));
  sub_2280941EC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 504) = 0xD000000000000040;
  *(v3 + 512) = 0x80000002281471D0;
  *(v3 + 520) = 1;
  *(v3 + 528) = sub_228094510;
  *(v3 + 536) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = 0xD00000000000001FLL;
  *(v37 + 24) = 0x8000000228147220;
  MEMORY[0x28223BE20](v37, v38);
  os_unfair_lock_lock((v11 + 24));
  sub_228094204((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 544) = 0xD00000000000001FLL;
  *(v3 + 552) = 0x8000000228147220;
  *(v3 + 560) = 1;
  *(v3 + 568) = sub_228094514;
  *(v3 + 576) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = 0xD000000000000019;
  *(v39 + 24) = 0x8000000228147240;
  MEMORY[0x28223BE20](v39, v40);
  os_unfair_lock_lock((v11 + 24));
  sub_22809421C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 584) = 0xD000000000000019;
  *(v3 + 592) = 0x8000000228147240;
  *(v3 + 600) = 300;
  *(v3 + 608) = sub_228094518;
  *(v3 + 616) = v39;
  v41 = swift_allocObject();
  v41[2] = 0xD00000000000001DLL;
  v41[3] = 0x8000000228147260;
  v41[4] = &unk_283B5AF08;
  MEMORY[0x28223BE20](v41, v42);
  os_unfair_lock_lock((v11 + 24));
  sub_228094234((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 624) = 0xD00000000000001DLL;
  *(v3 + 632) = 0x8000000228147260;
  *(v3 + 640) = &unk_283B5AF08;
  *(v3 + 648) = sub_228094130;
  *(v3 + 656) = v41;
  v43 = swift_allocObject();
  v43[2] = 0xD000000000000025;
  v43[3] = 0x8000000228147280;
  v44 = MEMORY[0x277D84F90];
  v43[4] = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v43, v45);
  os_unfair_lock_lock((v11 + 24));
  sub_22809424C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 664) = 0xD000000000000025;
  *(v3 + 672) = 0x8000000228147280;
  *(v3 + 680) = v44;
  *(v3 + 688) = sub_228094134;
  *(v3 + 696) = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = 0xD000000000000014;
  *(v46 + 24) = 0x80000002281472B0;
  MEMORY[0x28223BE20](v46, v47);
  os_unfair_lock_lock((v11 + 24));
  sub_228094264((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 704) = 0xD000000000000014;
  *(v3 + 712) = 0x80000002281472B0;
  *(v3 + 720) = 1;
  *(v3 + 728) = sub_22809451C;
  *(v3 + 736) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = 0xD000000000000014;
  *(v48 + 24) = 0x80000002281472D0;
  MEMORY[0x28223BE20](v48, v49);
  os_unfair_lock_lock((v11 + 24));
  sub_22809427C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 744) = 0xD000000000000014;
  *(v3 + 752) = 0x80000002281472D0;
  *(v3 + 760) = 1;
  *(v3 + 768) = sub_228094520;
  *(v3 + 776) = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = 0xD000000000000015;
  *(v50 + 24) = 0x80000002281472F0;
  MEMORY[0x28223BE20](v50, v51);
  os_unfair_lock_lock((v11 + 24));
  sub_228094294((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 784) = 0xD000000000000015;
  *(v3 + 792) = 0x80000002281472F0;
  *(v3 + 800) = 1;
  *(v3 + 808) = sub_228094524;
  *(v3 + 816) = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = 0xD000000000000017;
  *(v52 + 24) = 0x8000000228147310;
  MEMORY[0x28223BE20](v52, v53);
  os_unfair_lock_lock((v11 + 24));
  sub_2280942AC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 824) = 0xD000000000000017;
  *(v3 + 832) = 0x8000000228147310;
  *(v3 + 840) = 0;
  *(v3 + 848) = sub_228094528;
  *(v3 + 856) = v52;
  v54 = swift_allocObject();
  *(v54 + 16) = 0xD00000000000002DLL;
  *(v54 + 24) = 0x8000000228147330;
  MEMORY[0x28223BE20](v54, v55);
  os_unfair_lock_lock((v11 + 24));
  sub_228093D8C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 864) = 0xD00000000000002DLL;
  *(v3 + 872) = 0x8000000228147330;
  *(v3 + 880) = 2;
  *(v3 + 888) = sub_228093D84;
  *(v3 + 896) = v54;
  v56 = swift_allocObject();
  *(v56 + 16) = 0xD00000000000002DLL;
  *(v56 + 24) = 0x8000000228147360;
  MEMORY[0x28223BE20](v56, v57);
  os_unfair_lock_lock((v11 + 24));
  sub_2280942C4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 904) = 0xD00000000000002DLL;
  *(v3 + 912) = 0x8000000228147360;
  *(v3 + 920) = 0;
  *(v3 + 928) = sub_22809452C;
  *(v3 + 936) = v56;
  v58 = swift_allocObject();
  strcpy((v58 + 16), "maximumTokens");
  *(v58 + 30) = -4864;
  MEMORY[0x28223BE20](v58, v59);
  os_unfair_lock_lock((v11 + 24));
  sub_2280942DC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  strcpy((v3 + 944), "maximumTokens");
  *(v3 + 958) = -4864;
  *(v3 + 960) = 300;
  *(v3 + 968) = sub_228094530;
  *(v3 + 976) = v58;
  v60 = swift_allocObject();
  *(v60 + 16) = 0xD00000000000001BLL;
  *(v60 + 24) = 0x8000000228147390;
  MEMORY[0x28223BE20](v60, v61);
  os_unfair_lock_lock((v11 + 24));
  sub_2280940B8((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 984) = 0xD00000000000001BLL;
  *(v3 + 992) = 0x8000000228147390;
  *(v3 + 1000) = 0;
  *(v3 + 1008) = 1;
  *(v3 + 1016) = sub_22809409C;
  *(v3 + 1024) = v60;
  v62 = sub_227FE3D98(&unk_283B5ACB0);
  swift_arrayDestroy();
  v63 = swift_allocObject();
  v63[2] = 0xD000000000000016;
  v63[3] = 0x80000002281473B0;
  v63[4] = v62;
  MEMORY[0x28223BE20](v63, v64);

  os_unfair_lock_lock((v11 + 24));
  sub_2280942F4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1032) = 0xD000000000000016;
  *(v3 + 1040) = 0x80000002281473B0;
  *(v3 + 1048) = v62;
  *(v3 + 1056) = sub_228094138;
  *(v3 + 1064) = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = 1265659764;
  *(v65 + 24) = 0xE400000000000000;
  MEMORY[0x28223BE20](v65, v66);
  os_unfair_lock_lock((v11 + 24));
  sub_22809430C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1072) = 1265659764;
  *(v3 + 1080) = 0xE400000000000000;
  *(v3 + 1088) = 1;
  *(v3 + 1096) = sub_228094534;
  *(v3 + 1104) = v65;
  v67 = swift_allocObject();
  *(v67 + 16) = 0xD000000000000016;
  *(v67 + 24) = 0x80000002281473D0;
  MEMORY[0x28223BE20](v67, v68);
  os_unfair_lock_lock((v11 + 24));
  sub_228094324((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1112) = 0xD000000000000016;
  *(v3 + 1120) = 0x80000002281473D0;
  *(v3 + 1128) = 1;
  *(v3 + 1136) = sub_228094538;
  *(v3 + 1144) = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = 0xD000000000000018;
  *(v69 + 24) = 0x80000002281473F0;
  MEMORY[0x28223BE20](v69, v70);
  os_unfair_lock_lock((v11 + 24));
  sub_228093DE4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1152) = 0xD000000000000018;
  *(v3 + 1160) = 0x80000002281473F0;
  *(v3 + 1168) = 0;
  *(v3 + 1176) = 1;
  *(v3 + 1184) = sub_228093DDC;
  *(v3 + 1192) = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = 0x74617265706D6574;
  *(v71 + 24) = 0xEB00000000657275;
  MEMORY[0x28223BE20](v71, v72);
  os_unfair_lock_lock((v11 + 24));
  sub_228093E08((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1200) = 0x74617265706D6574;
  *(v3 + 1208) = 0xEB00000000657275;
  *(v3 + 1216) = 0x3FF0000000000000;
  *(v3 + 1224) = sub_228093E04;
  *(v3 + 1232) = v71;
  v73 = swift_allocObject();
  *(v73 + 16) = 0x65536D6F646E6172;
  *(v73 + 24) = 0xEA00000000006465;
  MEMORY[0x28223BE20](v73, v74);
  os_unfair_lock_lock((v11 + 24));
  sub_2280940D0((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1240) = 0x65536D6F646E6172;
  *(v3 + 1248) = 0xEA00000000006465;
  *(v3 + 1256) = 0;
  *(v3 + 1264) = 1;
  *(v3 + 1272) = sub_2280940A0;
  *(v3 + 1280) = v73;
  v75 = swift_allocObject();
  *(v75 + 16) = 0xD000000000000016;
  *(v75 + 24) = 0x8000000228147410;
  MEMORY[0x28223BE20](v75, v76);
  os_unfair_lock_lock((v11 + 24));
  sub_2280940E8((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1288) = 0xD000000000000016;
  *(v3 + 1296) = 0x8000000228147410;
  *(v3 + 1304) = 0;
  *(v3 + 1312) = 1;
  *(v3 + 1320) = sub_2280940A4;
  *(v3 + 1328) = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = 0x74756F656D6974;
  *(v77 + 24) = 0xE700000000000000;
  MEMORY[0x28223BE20](v77, v78);
  os_unfair_lock_lock((v11 + 24));
  sub_22809433C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1336) = 0x74756F656D6974;
  *(v3 + 1344) = 0xE700000000000000;
  *(v3 + 1352) = 0x403E000000000000;
  *(v3 + 1360) = sub_22809453C;
  *(v3 + 1368) = v77;
  v79 = swift_allocObject();
  *(v79 + 16) = 0xD000000000000015;
  *(v79 + 24) = 0x8000000228147430;
  MEMORY[0x28223BE20](v79, v80);
  os_unfair_lock_lock((v11 + 24));
  sub_228094100((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1376) = 0xD000000000000015;
  *(v3 + 1384) = 0x8000000228147430;
  *(v3 + 1392) = 0;
  *(v3 + 1400) = 1;
  *(v3 + 1408) = sub_2280940A8;
  *(v3 + 1416) = v79;
  if (qword_2813C7710 != -1)
  {
    swift_once();
  }

  v81 = off_2813C7718;
  v82 = swift_allocObject();
  v82[2] = 0xD000000000000010;
  v82[3] = 0x8000000228147450;
  v82[4] = v81;
  MEMORY[0x28223BE20](v82, v83);
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v11 + 24));
  sub_228093E5C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1424) = 0xD000000000000010;
  *(v3 + 1432) = 0x8000000228147450;
  *(v3 + 1440) = v81;
  *(v3 + 1448) = sub_228093E2C;
  *(v3 + 1456) = v82;
  v84 = swift_allocObject();
  *(v84 + 16) = 0x743A726576726573;
  *(v84 + 24) = 0xEB000000004B706FLL;
  MEMORY[0x28223BE20](v84, v85);
  os_unfair_lock_lock((v11 + 24));
  sub_228094354((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1464) = 0x743A726576726573;
  *(v3 + 1472) = 0xEB000000004B706FLL;
  *(v3 + 1480) = 1;
  *(v3 + 1488) = sub_228094540;
  *(v3 + 1496) = v84;
  v86 = swift_allocObject();
  *(v86 + 16) = 0xD00000000000001FLL;
  *(v86 + 24) = 0x8000000228147470;
  MEMORY[0x28223BE20](v86, v87);
  os_unfair_lock_lock((v11 + 24));
  sub_228094118((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1504) = 0xD00000000000001FLL;
  *(v3 + 1512) = 0x8000000228147470;
  *(v3 + 1520) = 0;
  *(v3 + 1528) = 1;
  *(v3 + 1536) = sub_2280940AC;
  *(v3 + 1544) = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = 0xD000000000000012;
  *(v88 + 24) = 0x8000000228147490;
  MEMORY[0x28223BE20](v88, v89);
  os_unfair_lock_lock((v11 + 24));
  sub_22809436C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1552) = 0xD000000000000012;
  *(v3 + 1560) = 0x8000000228147490;
  *(v3 + 1568) = 0;
  *(v3 + 1576) = sub_228094544;
  *(v3 + 1584) = v88;
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000025;
  v90[3] = 0x80000002281474B0;
  v90[4] = &unk_283B5AF38;
  MEMORY[0x28223BE20](v90, v91);
  os_unfair_lock_lock((v11 + 24));
  sub_228094384((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1592) = 0xD000000000000025;
  *(v3 + 1600) = 0x80000002281474B0;
  *(v3 + 1608) = &unk_283B5AF38;
  *(v3 + 1616) = sub_22809413C;
  *(v3 + 1624) = v90;
  v92 = swift_allocObject();
  *(v92 + 16) = 0xD000000000000019;
  *(v92 + 24) = 0x80000002281474E0;
  MEMORY[0x28223BE20](v92, v93);
  os_unfair_lock_lock((v11 + 24));
  sub_22809439C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1632) = 0xD000000000000019;
  *(v3 + 1640) = 0x80000002281474E0;
  *(v3 + 1648) = 1;
  *(v3 + 1656) = sub_228094548;
  *(v3 + 1664) = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = 0xD000000000000026;
  *(v94 + 24) = 0x8000000228147500;
  MEMORY[0x28223BE20](v94, v95);
  os_unfair_lock_lock((v11 + 24));
  sub_2280943B4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1672) = 0xD000000000000026;
  *(v3 + 1680) = 0x8000000228147500;
  *(v3 + 1688) = 1;
  *(v3 + 1696) = sub_22809454C;
  *(v3 + 1704) = v94;
  v96 = swift_allocObject();
  *(v96 + 16) = 0xD00000000000001DLL;
  *(v96 + 24) = 0x8000000228147530;
  MEMORY[0x28223BE20](v96, v97);
  os_unfair_lock_lock((v11 + 24));
  sub_2280943CC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1712) = 0xD00000000000001DLL;
  *(v3 + 1720) = 0x8000000228147530;
  *(v3 + 1728) = 256;
  *(v3 + 1736) = sub_228094550;
  *(v3 + 1744) = v96;
  v98 = swift_allocObject();
  *(v98 + 16) = 0xD00000000000002DLL;
  *(v98 + 24) = 0x8000000228147550;
  MEMORY[0x28223BE20](v98, v99);
  os_unfair_lock_lock((v11 + 24));
  sub_2280943E4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1752) = 0xD00000000000002DLL;
  *(v3 + 1760) = 0x8000000228147550;
  *(v3 + 1768) = 4;
  *(v3 + 1776) = sub_228094554;
  *(v3 + 1784) = v98;
  v100 = swift_allocObject();
  *(v100 + 16) = 0xD000000000000034;
  *(v100 + 24) = 0x8000000228147580;
  MEMORY[0x28223BE20](v100, v101);
  os_unfair_lock_lock((v11 + 24));
  sub_2280943FC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1792) = 0xD000000000000034;
  *(v3 + 1800) = 0x8000000228147580;
  *(v3 + 1808) = 1;
  *(v3 + 1816) = sub_228094558;
  *(v3 + 1824) = v100;
  if (qword_2813C7700 != -1)
  {
    swift_once();
  }

  v102 = off_2813C7708;
  v103 = swift_allocObject();
  v103[2] = 0xD000000000000022;
  v103[3] = 0x80000002281475C0;
  v103[4] = v102;
  MEMORY[0x28223BE20](v103, v104);
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v11 + 24));
  sub_228094414((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1832) = 0xD000000000000022;
  *(v3 + 1840) = 0x80000002281475C0;
  *(v3 + 1848) = v102;
  *(v3 + 1856) = sub_228094140;
  *(v3 + 1864) = v103;
  v105 = swift_allocObject();
  *(v105 + 16) = 0xD00000000000001BLL;
  *(v105 + 24) = 0x80000002281475F0;
  MEMORY[0x28223BE20](v105, v106);
  os_unfair_lock_lock((v11 + 24));
  sub_22809442C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1872) = 0xD00000000000001BLL;
  *(v3 + 1880) = 0x80000002281475F0;
  *(v3 + 1888) = 1;
  *(v3 + 1896) = sub_22809455C;
  *(v3 + 1904) = v105;
  v107 = swift_allocObject();
  *(v107 + 16) = 0xD000000000000022;
  *(v107 + 24) = 0x8000000228147610;
  MEMORY[0x28223BE20](v107, v108);
  os_unfair_lock_lock((v11 + 24));
  sub_228094444((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1912) = 0xD000000000000022;
  *(v3 + 1920) = 0x8000000228147610;
  *(v3 + 1928) = 1;
  *(v3 + 1936) = sub_228094560;
  *(v3 + 1944) = v107;
  v109 = swift_allocObject();
  *(v109 + 16) = 0xD00000000000001FLL;
  *(v109 + 24) = 0x8000000228147640;
  MEMORY[0x28223BE20](v109, v110);
  os_unfair_lock_lock((v11 + 24));
  sub_22809445C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1952) = 0xD00000000000001FLL;
  *(v3 + 1960) = 0x8000000228147640;
  *(v3 + 1968) = 0x40CC200000000000;
  *(v3 + 1976) = sub_228094564;
  *(v3 + 1984) = v109;
  v111 = swift_allocObject();
  *(v111 + 16) = 0x436E6F6973736573;
  *(v111 + 24) = 0xEF4C545465686361;
  MEMORY[0x28223BE20](v111, v112);
  os_unfair_lock_lock((v11 + 24));
  sub_228094474((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 1992) = 0x436E6F6973736573;
  *(v3 + 2000) = 0xEF4C545465686361;
  *(v3 + 2008) = 0x403E000000000000;
  *(v3 + 2016) = sub_228094568;
  *(v3 + 2024) = v111;
  v113 = swift_allocObject();
  *(v113 + 16) = 0xD000000000000032;
  *(v113 + 24) = 0x8000000228147660;
  MEMORY[0x28223BE20](v113, v114);
  os_unfair_lock_lock((v11 + 24));
  sub_22809448C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 2032) = 0xD000000000000032;
  *(v3 + 2040) = 0x8000000228147660;
  *(v3 + 2048) = 4;
  *(v3 + 2056) = sub_22809456C;
  *(v3 + 2064) = v113;
  v115 = swift_allocObject();
  *(v115 + 16) = 0xD000000000000024;
  *(v115 + 24) = 0x80000002281476A0;
  MEMORY[0x28223BE20](v115, v116);
  os_unfair_lock_lock((v11 + 24));
  sub_2280944A4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 2072) = 0xD000000000000024;
  *(v3 + 2080) = 0x80000002281476A0;
  *(v3 + 2088) = 2;
  *(v3 + 2096) = sub_2280940B0;
  *(v3 + 2104) = v115;
  v117 = swift_allocObject();
  *(v117 + 16) = 0xD000000000000023;
  *(v117 + 24) = 0x80000002281476D0;
  MEMORY[0x28223BE20](v117, v118);
  os_unfair_lock_lock((v11 + 24));
  sub_2280944BC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 2112) = 0xD000000000000023;
  *(v3 + 2120) = 0x80000002281476D0;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = sub_2280940B4;
  *(v3 + 2144) = v117;
  v119 = swift_allocObject();
  *(v119 + 16) = 0xD000000000000019;
  *(v119 + 24) = 0x8000000228147700;
  MEMORY[0x28223BE20](v119, v120);
  os_unfair_lock_lock((v11 + 24));
  sub_2280944D4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  *(v3 + 2152) = 0xD000000000000019;
  *(v3 + 2160) = 0x8000000228147700;
  *(v3 + 2168) = 1;
  *(v3 + 2176) = sub_228094570;
  *(v3 + 2184) = v119;
  v121 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v122 = sub_22813927C();
  v123 = [v121 initWithSuiteName_];

  if (v123)
  {
    *(v3 + 2192) = a1;
    *(v3 + 2200) = v130;
    *(v3 + 2208) = v123;
    v124 = v123;
    os_unfair_lock_lock((v11 + 24));
    sub_228093F88((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));

    return v3;
  }

  else
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v126 = sub_22813882C();
    __swift_project_value_buffer(v126, &unk_2813C89F0);
    v127 = sub_22813880C();
    v128 = sub_2281396DC();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_227FC3000, v127, v128, "NSUserDefaults.init(suiteName:) unexpectedly returned nil", v129, 2u);
      MEMORY[0x22AAB28A0](v129, -1, -1);
    }

    result = sub_2281398FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_228091CF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEE0, &qword_22813F028);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  qword_2813C7728 = result;
  return result;
}

uint64_t sub_228091D40(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v11);
    return sub_228094034(&v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    sub_228094034(&v11);
    *(&v12 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v11) = a4 & 1;

    return sub_2280249EC(&v11, a2, a3);
  }
}

uint64_t sub_228091E04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v11);
    return sub_228094034(&v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    sub_228094034(&v11);
    *(&v12 + 1) = MEMORY[0x277D83B88];
    *&v11 = a4;

    return sub_2280249EC(&v11, a2, a3);
  }
}

uint64_t sub_228091EC4(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v11);
    return sub_228094034(&v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    sub_228094034(&v11);
    *(&v12 + 1) = MEMORY[0x277D839F8];
    *&v11 = a4;

    return sub_2280249EC(&v11, a2, a3);
  }
}

uint64_t sub_228091F8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_22808C964(a2, a3), (v13 & 1) != 0))
  {
    sub_228029260(*(v11 + 56) + 32 * v12, &v15);
    return sub_228094034(&v15);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_228094034(&v15);
    *(&v16 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    *&v15 = a4;

    return sub_2280249EC(&v15, a2, a3);
  }
}

uint64_t sub_228092068(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v14);
    return sub_228094034(&v14);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    sub_228094034(&v14);
    if (a4)
    {
      *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      *&v12 = a4;
      sub_227FE5EA8(&v12, &v14);
    }

    else
    {
      v13 = 0u;
      v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v15 + 1) = sub_228093FE8();
      *&v14 = v11;
    }

    return sub_2280249EC(&v14, a2, a3);
  }
}

uint64_t sub_228092194(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_22808C964(a2, a3), (v9 & 1) != 0))
  {
    sub_228029260(*(v7 + 56) + 32 * v8, &v14);
    return sub_228094034(&v14);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    sub_228094034(&v14);
    if (a4 == 2)
    {
      v13 = 0u;
      v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v15 + 1) = sub_228093FE8();
      *&v14 = v11;
    }

    else
    {
      *(&v13 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v12) = a4 & 1;
      sub_227FE5EA8(&v12, &v14);
    }

    return sub_2280249EC(&v14, a2, a3);
  }
}

uint64_t sub_2280922B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_22808C964(a2, a3), (v13 & 1) != 0))
  {
    sub_228029260(*(v11 + 56) + 32 * v12, &v18);
    return sub_228094034(&v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    sub_228094034(&v18);
    if (a5)
    {
      v17 = 0u;
      v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v19 + 1) = sub_228093FE8();
      *&v18 = v15;
    }

    else
    {
      *(&v17 + 1) = a6;
      *&v16 = a4;
      sub_227FE5EA8(&v16, &v18);
    }

    return sub_2280249EC(&v18, a2, a3);
  }
}

void sub_2280923D8(uint64_t *a1, uint64_t a2)
{
  sub_2280936F0(*a1);
  v3 = *(a2 + 2208);
  v4 = sub_2281391AC();

  [v3 registerDefaults_];
}

uint64_t sub_22809245C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  v4 = *(v0 + 88);

  v5 = *(v0 + 104);
  v6 = *(v0 + 128);

  v7 = *(v0 + 144);
  v8 = *(v0 + 176);

  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v11 = *(v0 + 216);

  v12 = *(v0 + 232);
  v13 = *(v0 + 256);

  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v16 = *(v0 + 296);

  v17 = *(v0 + 312);
  v18 = *(v0 + 336);

  v19 = *(v0 + 352);
  v20 = *(v0 + 376);

  v21 = *(v0 + 392);
  v22 = *(v0 + 416);

  v23 = *(v0 + 432);
  v24 = *(v0 + 456);

  v25 = *(v0 + 472);
  v26 = *(v0 + 496);

  v27 = *(v0 + 512);
  v28 = *(v0 + 536);

  v29 = *(v0 + 552);
  v30 = *(v0 + 576);

  v31 = *(v0 + 592);
  v32 = *(v0 + 616);

  v33 = *(v0 + 632);
  v34 = *(v0 + 640);
  v35 = *(v0 + 656);

  v36 = *(v0 + 672);
  v37 = *(v0 + 680);
  v38 = *(v0 + 696);

  v39 = *(v0 + 712);
  v40 = *(v0 + 736);

  v41 = *(v0 + 752);
  v42 = *(v0 + 776);

  v43 = *(v0 + 792);
  v44 = *(v0 + 816);

  v45 = *(v0 + 832);
  v46 = *(v0 + 856);

  v47 = *(v0 + 872);
  v48 = *(v0 + 896);

  v49 = *(v0 + 912);
  v50 = *(v0 + 936);

  v51 = *(v0 + 952);
  v52 = *(v0 + 976);

  v53 = *(v0 + 992);
  v54 = *(v0 + 1024);

  v55 = *(v0 + 1040);
  v56 = *(v0 + 1048);
  v57 = *(v0 + 1064);

  v58 = *(v0 + 1080);
  v59 = *(v0 + 1104);

  v60 = *(v0 + 1120);
  v61 = *(v0 + 1144);

  v62 = *(v0 + 1160);
  v63 = *(v0 + 1192);

  v64 = *(v0 + 1208);
  v65 = *(v0 + 1232);

  v66 = *(v0 + 1248);
  v67 = *(v0 + 1280);

  v68 = *(v0 + 1296);
  v69 = *(v0 + 1328);

  v70 = *(v0 + 1344);
  v71 = *(v0 + 1368);

  v72 = *(v0 + 1384);
  v73 = *(v0 + 1416);

  v74 = *(v0 + 1432);
  v75 = *(v0 + 1440);
  v76 = *(v0 + 1456);

  v77 = *(v0 + 1472);
  v78 = *(v0 + 1496);

  v79 = *(v0 + 1512);
  v80 = *(v0 + 1544);

  v81 = *(v0 + 1560);
  v82 = *(v0 + 1584);

  v83 = *(v0 + 1600);
  v84 = *(v0 + 1608);
  v85 = *(v0 + 1624);

  v86 = *(v0 + 1640);
  v87 = *(v0 + 1664);

  v88 = *(v0 + 1680);
  v89 = *(v0 + 1704);

  v90 = *(v0 + 1720);
  v91 = *(v0 + 1744);

  v92 = *(v0 + 1760);
  v93 = *(v0 + 1784);

  v94 = *(v0 + 1800);
  v95 = *(v0 + 1824);

  v96 = *(v0 + 1840);
  v97 = *(v0 + 1848);
  v98 = *(v0 + 1864);

  v99 = *(v0 + 1880);
  v100 = *(v0 + 1904);

  v101 = *(v0 + 1920);
  v102 = *(v0 + 1944);

  v103 = *(v0 + 1960);
  v104 = *(v0 + 1984);

  v105 = *(v0 + 2000);
  v106 = *(v0 + 2024);

  v107 = *(v0 + 2040);
  v108 = *(v0 + 2064);

  v109 = *(v0 + 2080);
  v110 = *(v0 + 2104);

  v111 = *(v0 + 2120);
  v112 = *(v0 + 2144);

  v113 = *(v0 + 2160);
  v114 = *(v0 + 2184);

  v115 = *(v0 + 2200);

  return v0;
}

uint64_t sub_228092910()
{
  sub_22809245C();

  return swift_deallocClassInstance();
}

unint64_t sub_228092968(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_22813977C();
  if (v3 <= 0x3F)
  {
    result = sub_228092DFC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228092A00(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_228092B80(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

unint64_t sub_228092DFC()
{
  result = qword_27D81EE38[0];
  if (!qword_27D81EE38[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D81EE38);
  }

  return result;
}

unint64_t sub_228092E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_228092DFC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228092EE4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_22809302C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_228093214(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = sub_22813927C();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
    sub_227FE5EA8(&v8, v9);
    sub_228094034(v9);
    v6 = sub_22813927C();
    v7 = [a1 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_228094034(v9);
    v7 = 2;
  }

  *a2 = v7;
}

void sub_228093300(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22813927C();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
    sub_227FE5EA8(&v8, v9);
    sub_228094034(v9);
    v6 = sub_22813927C();
    v7 = [a1 integerForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_228094034(v9);
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v5 == 0;
}

void sub_2280933F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22813927C();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
    sub_227FE5EA8(&v9, v10);
    sub_228094034(v10);
    v6 = sub_22813927C();
    [a1 doubleForKey_];
    v8 = v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_228094034(v10);
    v8 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v5 == 0;
}

uint64_t sub_2280934F8@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, void *a5@<X8>)
{
  v10 = sub_22813927C();
  v11 = [a1 valueForKey_];

  if (v11)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    result = swift_dynamicCast();
    if (result)
    {
      *a5 = v13;
      return result;
    }
  }

  else
  {
    sub_228094034(v16);
  }

  *a5 = a2;
}

uint64_t sub_2280935F8@<X0>(void *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = sub_22813927C();
  v7 = [a1 valueForKey_];

  if (v7)
  {
    sub_2281397DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    result = swift_dynamicCast();
    if (result)
    {
      *a3 = v9;
      return result;
    }
  }

  else
  {
    sub_228094034(v12);
  }

  *a3 = a2;
}

uint64_t sub_2280936F0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_228093850(v10, v7, v3);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v13 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v13;
    goto LABEL_2;
  }

  v14 = swift_slowAlloc();
  v15 = v2;
  v16 = sub_2280939B4(v14, v7, v3);
  result = MEMORY[0x22AAB28A0](v14, -1, -1);
  if (!v15)
  {
    result = v16;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_228093850(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_228029260(*(a3 + 56) + 32 * v14, v19);
    __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    DynamicType = swift_getDynamicType();
    v16 = sub_228093FE8();
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    if (DynamicType != v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_228093A2C(v20, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_228093A2C(v20, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2280939B4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_228093850(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_228093A2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
  result = sub_22813993C();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_228029260(v17 + 32 * v16, v34);
    sub_227FE5EA8(v34, v33);
    v21 = *(v9 + 40);
    sub_228139AAC();

    sub_22813923C();
    result = sub_228139AEC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_227FE5EA8(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_228093CC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_228093300(a1, a2);
}

uint64_t sub_228093CF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_2280934F8(a1, v2[4], &qword_27D81EED8, &qword_22813F020, a2);
}

uint64_t sub_228093D54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_2280935F8(a1, v2[4], a2);
}

void sub_228093D84(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_228093214(a1, a2);
}

void sub_228093DDC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2280933F8(a1, a2);
}

uint64_t sub_228093E2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_2280934F8(a1, v2[4], &qword_27D81EED0, &unk_22813F010, a2);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_228093ED0(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_22813927C();
  [a1 doubleForKey_];
  v9 = v8;

  *a2 = v9;
}

void sub_228093F30(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_22813927C();
  v8 = [a1 integerForKey_];

  *a2 = v8;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_228093FE8()
{
  result = qword_2813C45F8;
  if (!qword_2813C45F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C45F8);
  }

  return result;
}

uint64_t sub_228094034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E830, &unk_22813C630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228094574@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v31 = a3;
  v6 = type metadata accessor for ModelBundleIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v10 = byte_2813C4629;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v11 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v11 = &qword_2813C76F8;
  }

  v12 = *v11;
  v14 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v15 = *(v13 + 8);
  v16 = *(v15 + 8);

  v17 = v16(v14, v15);
  v18 = *(v4 + 32);
  v33 = v18;
  v27 = sub_22808E6E4(v17, v19, &v33);

  if (v10)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v20 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v20 = &qword_2813C76F8;
  }

  v21 = *v20;

  v22 = v16(v14, v15);
  v32 = v18;
  v24 = sub_22808EB10(v22, v23, &v32);

  v25 = v29;
  sub_227FC8614(v30, v29);
  return sub_2280F8BF4(v25, v27, 0, v24, 0, v31);
}

uint64_t type metadata accessor for SummarizationParameters()
{
  result = qword_2813C85F0;
  if (!qword_2813C85F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2280948DC()
{
  result = sub_2280949A0();
  if (v1 <= 0x3F)
  {
    result = sub_228088824();
    if (v2 <= 0x3F)
    {
      result = sub_228137A9C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2280949A0()
{
  result = qword_2813C7C00[0];
  if (!qword_2813C7C00[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EEE8, &qword_22813F048);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, qword_2813C7C00);
  }

  return result;
}

uint64_t sub_228094A6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22813882C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  return sub_22813881C();
}

void sub_228094B98()
{
  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  byte_2813C49D0 = byte_2813C4638;
}

uint64_t sub_228094C10()
{
  v0 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v2 = *(*v1 + 24);
  v3 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  v6 = *(*v1 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v5(&v8, v6);

    v3 = v8;
  }

  else
  {
  }

  byte_2813C49C1 = v3;
  return result;
}

uint64_t sub_228094DFC()
{
  v0 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v2 = *(*v1 + 64);
  v3 = *(*v1 + 72);
  v5 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v6 = *(*v1 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v5(&v8, v6);

    v3 = v8;
  }

  else
  {
  }

  byte_27D81EEF2 = v3;
  return result;
}

uint64_t sub_228094FE8()
{
  v0 = sub_22813882C();
  __swift_allocate_value_buffer(v0, qword_2813C4990);
  __swift_project_value_buffer(v0, qword_2813C4990);
  sub_228095048();
  sub_22813975C();
  return sub_22813883C();
}

unint64_t sub_228095048()
{
  result = qword_2813C45D8;
  if (!qword_2813C45D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C45D8);
  }

  return result;
}

uint64_t sub_228095094()
{
  v0 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v2 = *(*v1 + 2080);
  v3 = *(*v1 + 2088);
  v4 = *(*v1 + 2096);
  v5 = *(*v1 + 2104);
  v6 = *(*v1 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v8, v6);

    v3 = v8;
  }

  else
  {
  }

  return (v3 == 2) | v3 & 1u;
}

void sub_22809528C(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v48 - v10;
  v12 = sub_2281386FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v50 = &v48 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v48 - v23;
  v25 = *MEMORY[0x277CCA7E8];
  v26 = sub_2281392AC();
  v28 = sub_228017498(v26, v27, 3, a1);

  if (v28)
  {
    v53 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v29 = swift_dynamicCast();
    v30 = *(v13 + 56);
    v30(v11, v29 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v42 = *(v13 + 32);
      v42(v24, v11, v12);
      v42(a2, v24, v12);
      v30(a2, 0, 1, v12);
      return;
    }

    v51 = v30;
  }

  else
  {
    v51 = *(v13 + 56);
    v51(v11, 1, 1, v12);
  }

  sub_227FCB758(v11, &qword_27D81E598, &qword_22813B300);
  v31 = *MEMORY[0x277CCA578];
  v32 = sub_2281392AC();
  v34 = sub_228017324(v32, v33, 3, a1);

  if (!v34)
  {
    goto LABEL_12;
  }

  v49 = a2;
  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_11:

    a2 = v49;
LABEL_12:
    v41 = v51;
    v40 = v52;
    v51(v52, 1, 1, v12);
LABEL_13:
    sub_227FCB758(v40, &qword_27D81E598, &qword_22813B300);
    v41(a2, 1, 1, v12);
    return;
  }

  v36 = 0;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
      return;
    }

    v37 = *(v34 + 8 * v36 + 32);
    v53 = v37;
    v38 = v37;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v36;

    if (v35 == v36)
    {
      goto LABEL_11;
    }
  }

  (*(v13 + 8))(v18, v12);
  v53 = v37;
  v40 = v52;
  v43 = swift_dynamicCast();
  v41 = v51;
  v51(v40, v43 ^ 1u, 1, v12);
  v44 = (*(v13 + 48))(v40, 1, v12);
  a2 = v49;
  if (v44 == 1)
  {
    goto LABEL_13;
  }

  v45 = v49;
  v46 = *(v13 + 32);
  v47 = v50;
  v46(v50, v40, v12);
  v46(v45, v47, v12);
  v41(v45, 0, 1, v12);
}

uint64_t sub_228095768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_2281386FC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = *(MEMORY[0x277D0E4E0] + 4);
  v11 = swift_task_alloc();
  v3[13] = v11;
  *v11 = v3;
  v11[1] = sub_2280958E4;

  return MEMORY[0x2821669F8](a2, a3);
}

uint64_t sub_2280958E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_22809C85C;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_22809C854;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_228095A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_2281386FC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = *(MEMORY[0x277D0E4C0] + 4);
  v11 = swift_task_alloc();
  v3[13] = v11;
  *v11 = v3;
  v11[1] = sub_228095B94;

  return MEMORY[0x2821669C0](a2, a3);
}

uint64_t sub_228095B94(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_228095DAC;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_228095CC8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_228095CC8()
{
  (*(v0[10] + 56))(v0[3], 1, 1, v0[9]);
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];

  v10 = v0[1];

  return v10(v2, v1);
}

uint64_t sub_228095DAC()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);

    v11 = *(v8 + 32);
    v11(v6, v5, v7);
    v12 = sub_228096454(v9, v10, v6);
    v13 = *(v0 + 80);
    v47 = v12;
    v48 = v23;
    v24 = *(v0 + 64);
    v45 = v11;
    v46 = *(v0 + 56);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 32);
    v28 = *(v0 + 72);
    (*(v13 + 8))(*(v0 + 88));
    sub_2280991F8(v25, v24, &qword_27D81E598, &qword_22813B300);
    sub_2280991F8(v26, v46, &qword_27D81E598, &qword_22813B300);
    sub_2280991F8(v24, v27, &qword_27D81E598, &qword_22813B300);
    v29 = *(v13 + 48);
    v30 = v29(v27, 1, v28);
    if (v30 == 1)
    {
      v31 = *(v0 + 72);
      v32 = *(v0 + 32);
      sub_2280991F8(*(v0 + 56), *(v0 + 24), &qword_27D81E598, &qword_22813B300);
      if (v29(v32, 1, v31) != 1)
      {
        sub_227FCB758(*(v0 + 32), &qword_27D81E598, &qword_22813B300);
      }
    }

    else
    {
      v34 = *(v0 + 72);
      v33 = *(v0 + 80);
      v36 = *(v0 + 24);
      v35 = *(v0 + 32);
      sub_227FCB758(*(v0 + 56), &qword_27D81E598, &qword_22813B300);
      v45(v36, v35, v34);
      (*(v33 + 56))(v36, 0, 1, v34);
    }

    v38 = *(v0 + 88);
    v37 = *(v0 + 96);
    v40 = *(v0 + 56);
    v39 = *(v0 + 64);
    v42 = *(v0 + 40);
    v41 = *(v0 + 48);
    v43 = *(v0 + 32);

    v44 = *(v0 + 8);

    return v44(v47, v48);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_228096114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v11 = sub_2281386FC();
  v5[9] = v11;
  v12 = *(v11 - 8);
  v5[10] = v12;
  v13 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v14 = *(a5 + 16);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v5[13] = v16;
  *v16 = v5;
  v16[1] = sub_228096320;

  return v18(a2, a3, a4, a5);
}

uint64_t sub_228096320(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_22809C860;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_22809C858;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

unint64_t sub_228096454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v171 = a2;
  v170 = a1;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F8, &qword_22813DE20);
  v4 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161, v5);
  v160 = &v155 - v6;
  v7 = sub_22813867C();
  v172 = *(v7 - 8);
  v173 = v7;
  v8 = *(v172 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v166 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v174 = &v155 - v13;
  v14 = sub_22813882C();
  v179 = *(v14 - 8);
  v15 = *(v179 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v169 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v165 = &v155 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v163 = &v155 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v159 = &v155 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v162 = &v155 - v29;
  v167 = sub_22813869C();
  v164 = *(v167 - 8);
  v30 = *(v164 + 64);
  v32 = MEMORY[0x28223BE20](v167, v31);
  v158 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v168 = &v155 - v35;
  v181 = sub_2281386AC();
  v189 = *(v181 - 8);
  v36 = *(v189 + 64);
  MEMORY[0x28223BE20](v181, v37);
  v188 = &v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2281386DC();
  v186 = *(v39 - 8);
  v187 = v39;
  v40 = *(v186 + 64);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v155 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_2281386CC();
  v183 = *(v190 - 8);
  v44 = *(v183 + 64);
  MEMORY[0x28223BE20](v190, v45);
  v182 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2281386FC();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v51 = MEMORY[0x28223BE20](v47, v50);
  v53 = &v155 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v155 - v55;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v176 = v14;
  v57 = __swift_project_value_buffer(v14, qword_2813C8A20);
  v58 = *(v48 + 16);
  v58(v56, a3, v47);
  v178 = v57;
  v59 = a3;
  v60 = sub_22813880C();
  v180 = sub_2281396DC();
  v61 = os_log_type_enabled(v60, v180);
  v184 = v58;
  v185 = v48 + 16;
  if (v61)
  {
    v175 = v48;
    v177 = v59;
    v62 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v191 = v156;
    v157 = v62;
    *v62 = 136446210;
    v58(v53, v56, v47);
    sub_228099194();
    v63 = sub_22813999C();
    if (v63)
    {
      v64 = v63;
      v65 = v175;
      (*(v175 + 8))(v53, v47);
    }

    else
    {
      v64 = swift_allocError();
      v65 = v175;
      (*(v175 + 32))(v69, v53, v47);
    }

    v68 = v186;
    v70 = sub_228136E1C();

    v71 = NSError.loggingDescription.getter();
    v73 = v72;

    (*(v65 + 8))(v56, v47);
    v74 = sub_227FCC340(v71, v73, &v191);

    v75 = v157;
    *(v157 + 1) = v74;
    _os_log_impl(&dword_227FC3000, v60, v180, "GMS guardrails rejected with error message: %{public}s", v75, 0xCu);
    v76 = v156;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v156);
    MEMORY[0x22AAB28A0](v76, -1, -1);
    MEMORY[0x22AAB28A0](v75, -1, -1);

    v67 = v177;
    v66 = v190;
  }

  else
  {

    (*(v48 + 8))(v56, v47);
    v65 = v48;
    v66 = v190;
    v67 = v59;
    v68 = v186;
  }

  sub_2281386EC();
  v77 = v187;
  v78 = (*(v68 + 88))(v43, v187);
  v80 = v188;
  v79 = v189;
  if (v78 != *MEMORY[0x277D0DB78])
  {
    (*(v68 + 8))(v43, v77);
    sub_228099194();
    swift_allocError();
    v184(v86, v67, v47);
    swift_willThrow();
    return v65;
  }

  (*(v68 + 96))(v43, v77);
  v81 = v183;
  v82 = v182;
  (*(v183 + 32))();
  sub_2281386BC();
  v83 = v181;
  v84 = (*(v79 + 88))(v80, v181);
  if (v84 == *MEMORY[0x277D0DA90])
  {
    goto LABEL_11;
  }

  if (v84 == *MEMORY[0x277D0DA98])
  {
    v175 = v65;
    v177 = v67;
    (*(v79 + 96))(v80, v83);
    (*(v172 + 32))(v174, v80, v173);
    sub_2281385FC();
    v88 = sub_2281392EC();
    v90 = v89;
    if (qword_2813C49C8 != -1)
    {
      swift_once();
    }

    v91 = v178;
    v92 = v179;
    v93 = v176;
    v94 = v163;
    if ((byte_2813C49D0 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v91 = __swift_project_value_buffer(v93, qword_2813C4990);
    }

    v188 = *(v92 + 16);
    (v188)(v94, v91, v93);

    v95 = sub_22813880C();
    v96 = sub_2281396BC();

    v97 = os_log_type_enabled(v95, v96);
    v155 = v47;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v191 = v99;
      *v98 = 136380675;
      v100 = sub_227FCC340(v88, v90, &v191);

      *(v98 + 4) = v100;
      _os_log_impl(&dword_227FC3000, v95, v96, "ViolationCategory is: %{private}s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v99);
      MEMORY[0x22AAB28A0](v99, -1, -1);
      v101 = v98;
      v92 = v179;
      MEMORY[0x22AAB28A0](v101, -1, -1);
    }

    else
    {
    }

    v189 = *(v92 + 8);
    (v189)(v94, v93);
    v105 = v93;
    v107 = v172;
    v106 = v173;
    v108 = v165;
    v109 = v169;
    v110 = v188;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v178 = __swift_project_value_buffer(v105, qword_2813C4990);
    }

    v110(v108, v178, v105);
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    if (byte_27D81EEF2 == 1)
    {
      (*(v92 + 32))(v109, v108, v105);
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v113 = __swift_project_value_buffer(v105, qword_2813C4990);
      v110(v109, v113, v105);
      (v189)(v108, v105);
    }

    v114 = v166;
    (*(v107 + 16))(v166, v174, v106);
    v115 = sub_22813880C();
    v116 = v106;
    v117 = sub_2281396DC();
    if (os_log_type_enabled(v115, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v191 = v119;
      *v118 = 136380675;
      v120 = sub_22813866C();
      v122 = v121;
      v123 = v116;
      v124 = *(v107 + 8);
      v124(v114, v123);
      v125 = v124;
      v126 = sub_227FCC340(v120, v122, &v191);

      *(v118 + 4) = v126;
      _os_log_impl(&dword_227FC3000, v115, v117, "Text sanitizer rejected text: %{private}s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v119);
      MEMORY[0x22AAB28A0](v119, -1, -1);
      MEMORY[0x22AAB28A0](v118, -1, -1);

      (v189)(v169, v176);
      v127 = v182;
      v128 = v155;
      v129 = v184;
      v116 = v173;
    }

    else
    {

      v130 = *(v107 + 8);
      v130(v114, v106);
      v125 = v130;
      (v189)(v109, v176);
      v127 = v182;
      v128 = v155;
      v129 = v184;
    }

    v131 = v174;
    v65 = sub_22813866C();
    v125(v131, v116);
    (*(v183 + 8))(v127, v190);
    v132 = *(v175 + 56);
    v132(v170, 1, 1, v128);
    v133 = v171;
    v129(v171, v177, v128);
    v132(v133, 0, 1, v128);
  }

  else
  {
    if (v84 != *MEMORY[0x277D0DAA0])
    {
      if (v84 == *MEMORY[0x277D0DAB0])
      {
        v111 = swift_allocObject();
        *(v111 + 16) = 17;
        *(v111 + 24) = 0;
        *(v111 + 32) = 0;
        v65 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x80000002281477A0, 113, sub_2280991EC);
        sub_227FDB3CC();
        swift_allocError();
        *v112 = 17;
        *(v112 + 8) = v65;
        swift_willThrow();
        (*(v81 + 8))(v82, v66);
        (*(v79 + 8))(v80, v83);
        return v65;
      }

LABEL_11:
      sub_228099194();
      swift_allocError();
      v184(v85, v67, v47);
      swift_willThrow();
      (*(v81 + 8))(v82, v66);
      (*(v79 + 8))(v80, v83);
      return v65;
    }

    v175 = v65;
    v177 = v67;
    (*(v79 + 96))(v80, v83);
    (*(v164 + 32))(v168, v80, v167);
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v102 = v176;
    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v178 = __swift_project_value_buffer(v102, qword_2813C4990);
    }

    v103 = *(v179 + 16);
    v103(v162, v178, v102);
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    if (byte_27D81EEF2 == 1)
    {
      v104 = v159;
      (*(v179 + 32))(v159, v162, v102);
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v134 = __swift_project_value_buffer(v102, qword_2813C4990);
      v104 = v159;
      v103(v159, v134, v102);
      (*(v179 + 8))(v162, v102);
    }

    v135 = v164;
    v136 = v158;
    v137 = v167;
    (*(v164 + 16))(v158, v168, v167);
    v138 = v104;
    v139 = sub_22813880C();
    v140 = sub_2281396DC();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = v136;
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v191 = v143;
      *v142 = 136380675;
      v189 = sub_22813868C();
      v155 = v47;
      v145 = v144;
      v146 = v137;
      v147 = *(v135 + 8);
      v147(v141, v146);
      v148 = v147;
      v149 = sub_227FCC340(v189, v145, &v191);
      v47 = v155;

      *(v142 + 4) = v149;
      _os_log_impl(&dword_227FC3000, v139, v140, "Deny list rejected text: %{private}s.", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_1(v143);
      v150 = v143;
      v82 = v182;
      MEMORY[0x22AAB28A0](v150, -1, -1);
      MEMORY[0x22AAB28A0](v142, -1, -1);

      (*(v179 + 8))(v159, v176);
      v137 = v167;
    }

    else
    {

      v151 = *(v135 + 8);
      v151(v136, v137);
      v148 = v151;
      (*(v179 + 8))(v138, v176);
    }

    v152 = v168;
    v65 = sub_22813868C();
    v148(v152, v137);
    (*(v183 + 8))(v82, v190);
    v153 = v170;
    v184(v170, v177, v47);
    v154 = *(v175 + 56);
    v154(v153, 0, 1, v47);
    v154(v171, 1, 1, v47);
  }

  return v65;
}

uint64_t sub_2280978F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137AEC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v39 - v11;
  v13 = sub_228137A3C();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_228137BCC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v24 = sub_22813882C();
  __swift_project_value_buffer(v24, qword_2813C89F0);
  (*(v19 + 16))(v23, v1, v18);
  v25 = sub_22813880C();
  v26 = sub_2281396DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[2] = a1;
    v29 = v28;
    v42 = v28;
    *v27 = 136446210;
    v30 = sub_228139B8C();
    v39[0] = v17;
    v39[1] = v7;
    v31 = v30;
    v32 = v12;
    v34 = v33;
    (*(v19 + 8))(v23, v18);
    v35 = sub_227FCC340(v31, v34, &v42);
    v12 = v32;

    *(v27 + 4) = v35;
    v17 = v39[0];
    _os_log_impl(&dword_227FC3000, v25, v26, "Could not convert %{public}s to StringResponseSanitizer", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v29);
    MEMORY[0x22AAB28A0](v29, -1, -1);
    MEMORY[0x22AAB28A0](v27, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v23, v18);
  }

  v36 = sub_228137A7C();
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  (*(v40 + 104))(v17, *MEMORY[0x277D0E578], v41);
  sub_228137AAC();
  sub_228137A0C();
  v37 = sub_228137A1C();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  return sub_228137A8C();
}

uint64_t sub_228097D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_228137AEC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v66 = &v60 - v12;
  v13 = sub_228137A3C();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228137A9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E8, &qword_22813F0E0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v60 - v31;
  v33 = *(a1 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v30, v35);
  v60 = &v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v67 = v33;
  v39 = *(v33 + 16);
  v61 = v3;
  v41 = &v60 - v40;
  v39();
  if (swift_dynamicCast())
  {
    sub_2280991F8(v32, v28, &qword_27D81E8E8, &qword_22813F0E0);
    (*(v18 + 16))(v68, &v28[*(v23 + 36)], v17);
    sub_227FCB758(v28, &qword_27D81E8E8, &qword_22813F0E0);
    v42 = a1;
    v43 = v67;
  }

  else
  {
    v42 = a1;
    if (swift_dynamicCast())
    {
      (*(v18 + 32))(v68, v22, v17);
      v43 = v67;
    }

    else
    {
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v44 = sub_22813882C();
      __swift_project_value_buffer(v44, qword_2813C89F0);
      v45 = v60;
      (v39)(v60, v61, v42);
      v46 = sub_22813880C();
      v47 = sub_2281396DC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 136446210;
        swift_getDynamicType();
        v50 = v42;
        v51 = sub_228139B8C();
        v53 = v52;
        v43 = v67;
        (*(v67 + 8))(v45, v50);
        v54 = sub_227FCC340(v51, v53, &v69);

        *(v48 + 4) = v54;
        v42 = v50;
        _os_log_impl(&dword_227FC3000, v46, v47, "Could not convert %{public}s to StringResponseSanitizer", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_1(v49);
        MEMORY[0x22AAB28A0](v49, -1, -1);
        MEMORY[0x22AAB28A0](v48, -1, -1);
      }

      else
      {

        v43 = v67;
        (*(v67 + 8))(v45, v42);
      }

      v55 = sub_228137A7C();
      v56 = v64;
      (*(*(v55 - 8) + 56))(v64, 1, 1, v55);
      (*(v62 + 104))(v56, *MEMORY[0x277D0E578], v63);
      sub_228137AAC();
      v57 = v66;
      sub_228137A0C();
      v58 = sub_228137A1C();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      sub_228137A8C();
    }
  }

  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_228098368(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D0E4E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22809C878;

  return MEMORY[0x2821669F8](a1, a2);
}

uint64_t sub_228098410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D0E4D8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22809C880;

  return MEMORY[0x2821669F0](a1, a2, a3);
}

uint64_t sub_2280984C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C87C;

  return sub_228095768(a1, a2, a3);
}

uint64_t sub_22809858C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D0E4C0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22809C884;

  return MEMORY[0x2821669C0](a1, a2);
}

uint64_t sub_228098634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D0E4B8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2280986E4;

  return MEMORY[0x2821669B8](a1, a2, a3);
}

uint64_t sub_2280986E4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280987F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C888;

  return sub_228095A18(a1, a2, a3);
}

uint64_t sub_2280988F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *(a3 + 36);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v11 = *(v9 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_22809C88C;

  return v15(a1, a2, v5, v10, v9);
}

uint64_t sub_228098A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 36);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(v9 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_22809C890;

  return v15(a1, a2, a3, v10, v9);
}

uint64_t sub_228098B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22809C894;

  return sub_2280988F0(a1, a2, a3);
}

uint64_t sub_228098C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22809C898;

  return sub_228098A34(a1, a2, a3, a4);
}

uint64_t sub_228098CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22809C89C;

  return sub_228096114(a1, a2, a3, a4, a5);
}

void sub_228098DAC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v5 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v5 = &qword_2813C76F8;
  }

  v6 = *(*v5 + 832);
  v7 = *(*v5 + 840);
  v8 = *(*v5 + 848);
  v9 = *(*v5 + 856);
  v10 = *(*v5 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v8(v25, v10);

    if ((v25[0] & 1) == 0)
    {
LABEL_14:
      sub_227FDB3CC();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      swift_willThrow();

      return;
    }
  }

  else
  {

    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v12 = sub_22813882C();
  __swift_project_value_buffer(v12, qword_2813C89F0);
  sub_228004954(a3, v25);

  v13 = sub_22813880C();
  v14 = sub_2281396BC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 134349314;
    *(v15 + 4) = qword_22813F180[a1];

    *(v15 + 12) = 2082;
    v17 = v26;
    v18 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v25);
    v22 = sub_227FCC340(v19, v21, &v28);

    *(v15 + 14) = v22;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v16);
    MEMORY[0x22AAB28A0](v16, -1, -1);
    MEMORY[0x22AAB28A0](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_1(v25);
  }
}

unint64_t sub_228099194()
{
  result = qword_27D81E5A8;
  if (!qword_27D81E5A8)
  {
    sub_2281386FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E5A8);
  }

  return result;
}

uint64_t sub_2280991F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228099260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v121 = a4;
  v125 = a3;
  v124 = a2;
  v5 = sub_22813863C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22813865C();
  v109 = *(v113 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x28223BE20](v113, v12);
  v108 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2281386AC();
  v126 = *(v117 - 8);
  v14 = *(v126 + 64);
  v16 = MEMORY[0x28223BE20](v117, v15);
  v107 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v106 = &v102 - v19;
  v118 = sub_22813867C();
  v112 = *(v118 - 8);
  v20 = *(v112 + 64);
  v22 = MEMORY[0x28223BE20](v118, v21);
  v105 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v104 = &v102 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v123 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v102 - v32;
  v34 = sub_2281386DC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v114 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v102 - v41;
  v43 = sub_2281386CC();
  v119 = *(v43 - 8);
  v120 = v43;
  v44 = *(v119 + 64);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v111 = &v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v110 = &v102 - v49;
  v134 = MEMORY[0x277D84F90];
  sub_22809C164(a1, v33);
  v50 = sub_2281386FC();
  v51 = *(v50 - 8);
  v122 = *(v51 + 48);
  v52 = v122(v33, 1, v50);
  v116 = v34;
  v115 = v35;
  if (v52 == 1)
  {
    sub_227FCB758(v33, &qword_27D81E598, &qword_22813B300);
LABEL_7:
    v55 = v126;
    goto LABEL_8;
  }

  sub_2281386EC();
  (*(v51 + 8))(v33, v50);
  if ((*(v35 + 88))(v42, v34) != *MEMORY[0x277D0DB78])
  {
    (*(v35 + 8))(v42, v34);
    goto LABEL_7;
  }

  (*(v35 + 96))(v42, v34);
  v53 = v110;
  (*(v119 + 32))(v110, v42, v120);
  v54 = v106;
  sub_2281386BC();
  v55 = v126;
  v56 = v117;
  if ((*(v126 + 88))(v54, v117) == *MEMORY[0x277D0DA98])
  {
    (*(v55 + 96))(v54, v56);
    v57 = v104;
    (*(v112 + 32))(v104, v54, v118);
    v58 = v108;
    sub_2281385CC();
    v103 = sub_22813864C();
    v106 = *(v109 + 8);
    (v106)(v58, v113);
    sub_227FED3FC(v103);
    sub_22813861C();
    v103 = sub_22813864C();
    v59 = v58;
    v55 = v126;
    (v106)(v59, v113);
    sub_227FED3FC(v103);
    (*(v112 + 8))(v57, v118);
    (*(v119 + 8))(v110, v120);
  }

  else
  {
    (*(v119 + 8))(v53, v120);
    (*(v55 + 8))(v54, v56);
  }

LABEL_8:
  v60 = v123;
  sub_22809C164(v124, v123);
  if (v122(v60, 1, v50) == 1)
  {
    sub_227FCB758(v60, &qword_27D81E598, &qword_22813B300);
  }

  else
  {
    v61 = v114;
    sub_2281386EC();
    (*(v51 + 8))(v60, v50);
    v62 = v115;
    v63 = v116;
    if ((*(v115 + 88))(v61, v116) == *MEMORY[0x277D0DB78])
    {
      (*(v62 + 96))(v61, v63);
      v64 = v119;
      v65 = v111;
      v66 = v61;
      v67 = v120;
      (*(v119 + 32))(v111, v66, v120);
      v68 = v107;
      sub_2281386BC();
      v69 = v117;
      if ((*(v55 + 88))(v68, v117) == *MEMORY[0x277D0DA98])
      {
        (*(v55 + 96))(v68, v69);
        v70 = v112;
        v71 = v105;
        (*(v112 + 32))(v105, v68, v118);
        v72 = v108;
        sub_2281385CC();
        v73 = sub_22813864C();
        v126 = *(v109 + 8);
        v74 = v113;
        (v126)(v72, v113);
        sub_227FED3FC(v73);
        sub_22813861C();
        v75 = sub_22813864C();
        (v126)(v72, v74);
        sub_227FED3FC(v75);
        (*(v70 + 8))(v71, v118);
        (*(v119 + 8))(v111, v120);
      }

      else
      {
        (*(v64 + 8))(v65, v67);
        (*(v55 + 8))(v68, v69);
      }
    }

    else
    {
      (*(v62 + 8))(v61, v63);
    }
  }

  v76 = 0;
  v77 = v134;
  v78 = *(v134 + 16);
  v79 = v6 + 16;
  while (1)
  {
    v80 = v76;
    if (v78 == v76)
    {
      break;
    }

    if (v76 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    (*(v6 + 16))(v10, v77 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v76++, v5);
    v81 = sub_22813862C();
    (*(v6 + 8))(v10, v5);
    if (v81)
    {
      v79 = 1;
      goto LABEL_22;
    }
  }

  v79 = v125;
LABEL_22:

  if (qword_2813C49E0 == -1)
  {
    goto LABEL_23;
  }

LABEL_28:
  swift_once();
LABEL_23:
  v82 = sub_22813882C();
  __swift_project_value_buffer(v82, qword_2813C8A20);
  v83 = v121;
  sub_228004954(v121, v131);
  sub_228004954(v83, v128);
  v84 = sub_22813880C();
  v85 = sub_2281396BC();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = v78 != v80;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v127 = v88;
    *v87 = 67110146;
    *(v87 + 4) = v79 & 1;
    *(v87 + 8) = 2080;
    v89 = v132;
    v90 = v133;
    __swift_project_boxed_opaque_existential_1(v131, v132);
    v91 = (*(v90 + 16))(v89, v90);
    v93 = v92;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v131);
    v94 = sub_227FCC340(v91, v93, &v127);

    *(v87 + 10) = v94;
    *(v87 + 18) = 2080;
    v96 = v129;
    v95 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v97 = (*(*(v95 + 8) + 8))(v96);
    v99 = v98;
    __swift_destroy_boxed_opaque_existential_0Tm_1(v128);
    v100 = sub_227FCC340(v97, v99, &v127);

    *(v87 + 20) = v100;
    *(v87 + 28) = 1024;
    *(v87 + 30) = v86;
    *(v87 + 34) = 1024;
    *(v87 + 36) = v125 & 1;
    _os_log_impl(&dword_227FC3000, v84, v85, "StringSanitizationUtils.shouldThrowError returning %{BOOL}d for [requestIdentifier: %s, useCaseIdentifier: %s]; hasRegionalSource = %{BOOL}d, shouldThrowErrorIfFinalDecisionUnsafe = %{BOOL}d", v87, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v88, -1, -1);
    MEMORY[0x22AAB28A0](v87, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_1(v131);
    __swift_destroy_boxed_opaque_existential_0Tm_1(v128);
  }

  return v79 & 1;
}

void sub_228099F40(char a1, void (**a2)(char *, uint64_t), uint64_t a3, void (**a4)(char *, void, uint64_t), void (**a5)(char *, char *, uint64_t), uint64_t a6)
{
  v305 = a6;
  v336 = a5;
  v328 = a4;
  v334 = a3;
  v324 = a2;
  v342 = sub_2281386FC();
  v7 = *(v342 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v342, v9);
  v313 = &v295 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v337 = &v295 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EEF8, &unk_22813F0F0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v331 = &v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v341 = &v295 - v20;
  v345 = sub_22813867C();
  v325 = *(v345 - 8);
  v21 = *(v325 + 8);
  v23 = MEMORY[0x28223BE20](v345, v22);
  v310 = &v295 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v316 = &v295 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v306 = &v295 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v299 = &v295 - v32;
  v327 = sub_2281386AC();
  v332 = *(v327 - 8);
  v33 = *(v332 + 8);
  v35 = MEMORY[0x28223BE20](v327, v34);
  v309 = &v295 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v315 = &v295 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v304 = &v295 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v303 = &v295 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v302 = &v295 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v301 = &v295 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8, v53);
  v330 = &v295 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v59 = &v295 - v58;
  v61 = MEMORY[0x28223BE20](v57, v60);
  v300 = &v295 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v335 = (&v295 - v65);
  v67 = MEMORY[0x28223BE20](v64, v66);
  v298 = &v295 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v323 = (&v295 - v71);
  v73 = MEMORY[0x28223BE20](v70, v72);
  v297 = &v295 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v78 = (&v295 - v77);
  v80 = MEMORY[0x28223BE20](v76, v79);
  v296 = &v295 - v81;
  MEMORY[0x28223BE20](v80, v82);
  v84 = &v295 - v83;
  v338 = sub_2281386DC();
  v85 = *(v338 - 8);
  v86 = *(v85 + 8);
  v88 = MEMORY[0x28223BE20](v338, v87);
  v317 = &v295 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x28223BE20](v88, v90);
  v326 = &v295 - v92;
  v94 = MEMORY[0x28223BE20](v91, v93);
  v320 = (&v295 - v95);
  v97 = MEMORY[0x28223BE20](v94, v96);
  v319 = &v295 - v98;
  v100 = MEMORY[0x28223BE20](v97, v99);
  v322 = (&v295 - v101);
  MEMORY[0x28223BE20](v100, v102);
  v104 = &v295 - v103;
  v329 = sub_2281386CC();
  v105 = *(v329 - 8);
  v106 = *(v105 + 64);
  v108 = MEMORY[0x28223BE20](v329, v107);
  v308 = &v295 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x28223BE20](v108, v110);
  v314 = &v295 - v112;
  v114 = MEMORY[0x28223BE20](v111, v113);
  v312 = &v295 - v115;
  v117 = MEMORY[0x28223BE20](v114, v116);
  v119 = MEMORY[0x28223BE20](v117, v118);
  MEMORY[0x28223BE20](v119, v120);
  v339 = v85;
  v311 = v121;
  v318 = v122;
  v321 = v78;
  v307 = &v295 - v123;
  if (a1)
  {
    v124 = swift_allocObject();
    *(v124 + 16) = 45;
    *(v124 + 24) = 0;
    *(v124 + 32) = 0;
    v125 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x80000002281477A0, 178, sub_22809C874);
    v126 = sub_228133BC0(0, 1, 1, MEMORY[0x277D84F90]);
    v128 = *(v126 + 2);
    v127 = *(v126 + 3);
    if (v128 >= v127 >> 1)
    {
      v126 = sub_228133BC0((v127 > 1), v128 + 1, 1, v126);
    }

    *(v126 + 2) = v128 + 1;
    v340 = v126;
    v129 = &v126[16 * v128];
    v129[32] = 45;
    *(v129 + 5) = v125;
    v85 = v339;
  }

  else
  {
    v340 = MEMORY[0x277D84F90];
  }

  sub_22809C164(v324, v84);
  v130 = v342;
  v343 = *(v7 + 48);
  v344 = v7 + 48;
  v131 = v343(v84, 1, v342);
  v132 = MEMORY[0x277D0DB78];
  v333 = v7;
  if (v131 == 1)
  {
    sub_227FCB758(v84, &qword_27D81E598, &qword_22813B300);
    v133 = v130;
    v134 = v335;
    v135 = v7;
    v136 = v105;
    v137 = v328;
    v138 = v322;
    v139 = v132;
LABEL_13:
    v149 = v321;
    goto LABEL_14;
  }

  v140 = v105;
  sub_2281386EC();
  (*(v7 + 8))(v84, v130);
  v141 = v338;
  if ((*(v85 + 11))(v104, v338) != *v132)
  {
    v133 = v130;
    (*(v85 + 1))(v104, v141);
    v135 = v333;
    v136 = v140;
    v139 = MEMORY[0x277D0DB78];
    v134 = v335;
    v137 = v328;
    v138 = v322;
    goto LABEL_13;
  }

  (*(v85 + 12))(v104, v141);
  v136 = v140;
  v142 = v307;
  v143 = v104;
  v144 = v329;
  (*(v140 + 32))(v307, v143, v329);
  v145 = v301;
  sub_2281386BC();
  v146 = v332;
  v147 = v327;
  v148 = (*(v332 + 11))(v145, v327);
  v149 = v321;
  if (v148 == *MEMORY[0x277D0DAA0])
  {
    v150 = v144;
    (*(v146 + 1))(v145, v147);
    v151 = v296;
    sub_22809C164(v324, v296);
    v152 = v342;
    v153 = v343(v151, 1, v342);
    v154 = v333;
    v138 = v322;
    if (v153 == 1)
    {
      sub_227FCB758(v151, &qword_27D81E598, &qword_22813B300);
      v155 = 0;
    }

    else
    {
      sub_228099194();
      v155 = swift_allocError();
      (*(v154 + 32))(v182, v151, v152);
    }

    v183 = swift_allocObject();
    *(v183 + 16) = 40;
    *(v183 + 24) = 0;
    *(v183 + 32) = 0;
    v184 = sub_227FF96D4(v155, 0xD00000000000007CLL, 0x80000002281477A0, 185, sub_22809C870);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v185 = v340;
    }

    else
    {
      v185 = sub_228133BC0(0, *(v340 + 2) + 1, 1, v340);
    }

    v187 = *(v185 + 2);
    v186 = *(v185 + 3);
    if (v187 >= v186 >> 1)
    {
      v340 = sub_228133BC0((v186 > 1), v187 + 1, 1, v185);
    }

    else
    {
      v340 = v185;
    }

    (*(v140 + 8))(v307, v150);
    v85 = v339;
    v188 = v340;
    *(v340 + 2) = v187 + 1;
    v189 = &v188[16 * v187];
    v189[32] = 40;
    *(v189 + 5) = v184;
    v133 = v342;
    v135 = v333;
    v136 = v140;
    v139 = MEMORY[0x277D0DB78];
    v134 = v335;
    v137 = v328;
  }

  else
  {
    (*(v140 + 8))(v142, v144);
    (*(v146 + 1))(v145, v147);
    v133 = v342;
    v135 = v333;
    v85 = v339;
    v139 = MEMORY[0x277D0DB78];
    v134 = v335;
    v137 = v328;
    v138 = v322;
  }

LABEL_14:
  sub_22809C164(v137, v149);
  if (v343(v149, 1, v133) == 1)
  {
    sub_227FCB758(v149, &qword_27D81E598, &qword_22813B300);
    v156 = v336;
LABEL_21:
    v164 = v323;
    goto LABEL_22;
  }

  sub_2281386EC();
  v133 = v342;
  (*(v135 + 8))(v149, v342);
  v157 = v338;
  if ((*(v85 + 11))(v138, v338) != *v139)
  {
    (*(v85 + 1))(v138, v157);
    v156 = v336;
    v135 = v333;
    goto LABEL_21;
  }

  (*(v85 + 12))(v138, v157);
  v158 = v318;
  v159 = v329;
  (v136[4])(v318, v138, v329);
  v324 = v136;
  v160 = v302;
  sub_2281386BC();
  v161 = v332;
  v162 = v327;
  v163 = (*(v332 + 11))(v160, v327);
  v164 = v323;
  if (v163 == *MEMORY[0x277D0DAA0])
  {
    v165 = v324;
    (*(v161 + 1))(v160, v162);
    v166 = v297;
    sub_22809C164(v328, v297);
    v167 = v342;
    if (v343(v166, 1, v342) == 1)
    {
      sub_227FCB758(v166, &qword_27D81E598, &qword_22813B300);
      v168 = 0;
    }

    else
    {
      sub_228099194();
      v168 = swift_allocError();
      (*(v333 + 32))(v190, v166, v167);
    }

    v136 = v165;
    v156 = v336;
    v191 = swift_allocObject();
    *(v191 + 16) = 42;
    *(v191 + 24) = 0;
    *(v191 + 32) = 0;
    v192 = sub_227FF96D4(v168, 0xD00000000000007CLL, 0x80000002281477A0, 192, sub_22809C86C);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = MEMORY[0x277D0DB78];
    v195 = v333;
    if (isUniquelyReferenced_nonNull_native)
    {
      v196 = v340;
    }

    else
    {
      v196 = sub_228133BC0(0, *(v340 + 2) + 1, 1, v340);
    }

    v198 = *(v196 + 2);
    v197 = *(v196 + 3);
    v199 = v318;
    if (v198 >= v197 >> 1)
    {
      v340 = sub_228133BC0((v197 > 1), v198 + 1, 1, v196);
      v199 = v318;
    }

    else
    {
      v340 = v196;
    }

    v136[1](v199, v329);
    v200 = v340;
    *(v340 + 2) = v198 + 1;
    v201 = &v200[16 * v198];
    v201[32] = 42;
    *(v201 + 5) = v192;
    v133 = v342;
    v135 = v195;
    v139 = v194;
    v134 = v335;
  }

  else
  {
    v324[1](v158, v159);
    (*(v161 + 1))(v160, v162);
    v133 = v342;
    v135 = v333;
    v136 = v324;
    v156 = v336;
    v139 = MEMORY[0x277D0DB78];
  }

LABEL_22:
  sub_22809C164(v334, v164);
  if (v343(v164, 1, v133) == 1)
  {
    sub_227FCB758(v164, &qword_27D81E598, &qword_22813B300);
  }

  else
  {
    v169 = v136;
    v170 = v139;
    v171 = v319;
    sub_2281386EC();
    v133 = v342;
    (*(v135 + 8))(v164, v342);
    v172 = v338;
    v173 = v339;
    if ((*(v339 + 11))(v171, v338) == *v170)
    {
      (*(v173 + 12))(v171, v172);
      v174 = v311;
      v175 = v329;
      (v169[4])(v311, v171, v329);
      v176 = v303;
      sub_2281386BC();
      v177 = v332;
      v178 = v327;
      if ((*(v332 + 11))(v176, v327) == *MEMORY[0x277D0DA98])
      {
        v136 = v169;
        v179 = v333;
        (*(v177 + 12))(v176, v178);
        v180 = v299;
        (*(v325 + 4))(v299, v176, v345);
        if ((sub_22813860C() & 1) != 0 && (sub_2281385DC() & 1) == 0)
        {
          v181 = 51;
        }

        else
        {
          v181 = 41;
        }

        v202 = v298;
        sub_22809C164(v334, v298);
        v203 = v342;
        if (v343(v202, 1, v342) == 1)
        {
          sub_227FCB758(v202, &qword_27D81E598, &qword_22813B300);
          v204 = 0;
        }

        else
        {
          sub_228099194();
          v204 = swift_allocError();
          (*(v179 + 32))(v205, v202, v203);
        }

        v206 = swift_allocObject();
        *(v206 + 16) = v181;
        *(v206 + 24) = 0;
        *(v206 + 32) = 0;
        v207 = sub_227FF96D4(v204, 0xD00000000000007CLL, 0x80000002281477A0, 207, sub_22809C868);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v208 = v340;
        }

        else
        {
          v208 = sub_228133BC0(0, *(v340 + 2) + 1, 1, v340);
        }

        v210 = *(v208 + 2);
        v209 = *(v208 + 3);
        if (v210 >= v209 >> 1)
        {
          v340 = sub_228133BC0((v209 > 1), v210 + 1, 1, v208);
        }

        else
        {
          v340 = v208;
        }

        (*(v325 + 1))(v180, v345);
        v136[1](v311, v329);
        v211 = v340;
        *(v340 + 2) = v210 + 1;
        v212 = &v211[16 * v210];
        v212[32] = v181;
        *(v212 + 5) = v207;
        v133 = v342;
        v135 = v179;
        v139 = MEMORY[0x277D0DB78];
        v134 = v335;
        v156 = v336;
      }

      else
      {
        v169[1](v174, v175);
        (*(v177 + 1))(v176, v178);
        v133 = v342;
        v135 = v333;
        v136 = v169;
        v156 = v336;
        v139 = MEMORY[0x277D0DB78];
      }
    }

    else
    {
      (*(v173 + 1))(v171, v172);
      v135 = v333;
      v139 = MEMORY[0x277D0DB78];
      v136 = v169;
    }
  }

  sub_22809C164(v156, v134);
  if (v343(v134, 1, v133) == 1)
  {
    sub_227FCB758(v134, &qword_27D81E598, &qword_22813B300);
    v213 = v340;
    v214 = v341;
    v215 = *(v340 + 2);
    if (!v215)
    {
      goto LABEL_114;
    }

    goto LABEL_75;
  }

  v216 = v135;
  v217 = v320;
  sub_2281386EC();
  v133 = v342;
  v218 = v134;
  v219 = v217;
  (*(v216 + 8))(v218, v342);
  v220 = v339;
  v221 = v217;
  v222 = v338;
  if ((*(v339 + 11))(v221, v338) == *v139)
  {
    (*(v220 + 12))(v219, v222);
    v223 = v312;
    v224 = v329;
    (v136[4])(v312, v219, v329);
    v225 = v304;
    sub_2281386BC();
    v226 = v332;
    v227 = v327;
    if ((*(v332 + 11))(v225, v327) == *MEMORY[0x277D0DA98])
    {
      (*(v226 + 12))(v225, v227);
      (*(v325 + 4))(v306, v225, v345);
      if ((sub_22813860C() & 1) != 0 && (sub_2281385DC() & 1) == 0)
      {
        v228 = 52;
      }

      else
      {
        v228 = 43;
      }

      v229 = v300;
      sub_22809C164(v336, v300);
      v230 = v342;
      if (v343(v229, 1, v342) == 1)
      {
        sub_227FCB758(v229, &qword_27D81E598, &qword_22813B300);
        v231 = 0;
      }

      else
      {
        sub_228099194();
        v231 = swift_allocError();
        (*(v216 + 32))(v232, v229, v230);
      }

      v233 = swift_allocObject();
      *(v233 + 16) = v228;
      *(v233 + 24) = 0;
      *(v233 + 32) = 0;
      v234 = sub_227FF96D4(v231, 0xD00000000000007CLL, 0x80000002281477A0, 221, sub_22809C864);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v235 = v340;
      }

      else
      {
        v235 = sub_228133BC0(0, *(v340 + 2) + 1, 1, v340);
      }

      v236 = v136;
      v238 = *(v235 + 2);
      v237 = *(v235 + 3);
      if (v238 >= v237 >> 1)
      {
        v239 = sub_228133BC0((v237 > 1), v238 + 1, 1, v235);
      }

      else
      {
        v239 = v235;
      }

      (*(v325 + 1))(v306, v345);
      v236[1](v312, v329);
      v213 = v239;
      v136 = v236;
      *(v213 + 2) = v238 + 1;
      v240 = &v213[16 * v238];
      v240[32] = v228;
      *(v240 + 5) = v234;
      v214 = v341;
      v133 = v342;
      v135 = v216;
      v139 = MEMORY[0x277D0DB78];
      v215 = *(v213 + 2);
      if (v215)
      {
        goto LABEL_75;
      }

LABEL_114:

      if (qword_2813C49E0 == -1)
      {
LABEL_115:
        v291 = sub_22813882C();
        __swift_project_value_buffer(v291, qword_2813C8A20);
        v292 = sub_22813880C();
        v293 = sub_2281396EC();
        if (os_log_type_enabled(v292, v293))
        {
          v294 = swift_slowAlloc();
          *v294 = 0;
          _os_log_impl(&dword_227FC3000, v292, v293, "No errors found while trying to extract and throw error.", v294, 2u);
          MEMORY[0x22AAB28A0](v294, -1, -1);
        }

        return;
      }

LABEL_123:
      swift_once();
      goto LABEL_115;
    }

    v136[1](v223, v224);
    (*(v226 + 1))(v225, v227);
    v214 = v341;
    v133 = v342;
    v213 = v340;
    v139 = MEMORY[0x277D0DB78];
  }

  else
  {
    (*(v220 + 1))(v219, v222);
    v213 = v340;
    v214 = v341;
  }

  v135 = v216;
  v215 = *(v213 + 2);
  if (!v215)
  {
    goto LABEL_114;
  }

LABEL_75:
  v241 = 0;
  v335 = (v339 + 88);
  v336 = (v135 + 32);
  LODWORD(v334) = *v139;
  v324 = (v339 + 8);
  v323 = (v339 + 96);
  v322 = (v136 + 4);
  v321 = v136 + 1;
  v320 = (v332 + 88);
  LODWORD(v319) = *MEMORY[0x277D0DA98];
  v312 = v332 + 8;
  v339 = v325 + 56;
  v311 = (v332 + 96);
  v328 = (v325 + 32);
  v332 = v325 + 48;
  v333 = v135 + 8;
  v318 = (v325 + 8);
  v242 = (v213 + 40);
  v340 = v213;
  v325 = v59;
  while (1)
  {
    if (v241 >= *(v213 + 2))
    {
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v243 = *(v242 - 8);
    if ((v243 - 39) >= 0xC)
    {
      goto LABEL_78;
    }

    v244 = v213;
    v245 = *v242;

    sub_22809528C(v245, v59);
    if (v343(v59, 1, v133) != 1)
    {
      break;
    }

    sub_227FCB758(v59, &qword_27D81E598, &qword_22813B300);
    (*v339)(v214, 1, 1, v345);
LABEL_77:

    sub_227FCB758(v214, &qword_27D81EEF8, &unk_22813F0F0);
    v213 = v244;
LABEL_78:
    ++v241;
    v242 += 2;
    if (v215 == v241)
    {
      v263 = *(v213 + 2);
      if (!v263)
      {
        goto LABEL_114;
      }

      v264 = 0;
      v265 = (v213 + 40);
      v266 = v313;
      v267 = v330;
      while (1)
      {
        if (v264 >= *(v340 + 2))
        {
          goto LABEL_122;
        }

        v269 = *(v265 - 8);
        if ((v269 - 51) < 2u)
        {
          break;
        }

LABEL_95:
        ++v264;
        v265 += 2;
        if (v263 == v264)
        {
          if (!*(v340 + 2))
          {
            goto LABEL_114;
          }

          v245 = *(v340 + 5);
          v289 = v340[32];

          v290 = v289;
          goto LABEL_119;
        }
      }

      v270 = *v265;

      sub_22809528C(v270, v267);
      if (v343(v267, 1, v133) == 1)
      {
        sub_227FCB758(v267, &qword_27D81E598, &qword_22813B300);
        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v271 = sub_22813882C();
        __swift_project_value_buffer(v271, qword_2813C8A20);
        v272 = sub_22813880C();
        v273 = sub_2281396DC();
        if (os_log_type_enabled(v272, v273))
        {
          v274 = swift_slowAlloc();
          *v274 = 0;
          v275 = v274;
          v267 = v330;
          v266 = v313;
          MEMORY[0x22AAB28A0](v275, -1, -1);
        }

        v268 = v331;
        (*v339)(v331, 1, 1, v345);
        v133 = v342;
LABEL_94:

        sub_227FCB758(v268, &qword_27D81EEF8, &unk_22813F0F0);
        goto LABEL_95;
      }

      (*v336)(v266, v267, v133);
      v276 = v317;
      sub_2281386EC();
      v277 = v338;
      v278 = (*v335)(v276, v338);
      if (v278 == v334)
      {
        (*v323)(v276, v277);
        v279 = v308;
        v280 = v329;
        (*v322)(v308, v276, v329);
        v276 = v309;
        sub_2281386BC();
        (*v321)(v279, v280);
        v277 = v327;
        v281 = (*v320)(v276, v327);
        if (v281 == v319)
        {
          (*v311)(v276, v277);
          (*v328)(v331, v276, v345);
          v282 = 0;
          goto LABEL_109;
        }

        v283 = v312;
      }

      else
      {
        v283 = v324;
      }

      (*v283)(v276, v277);
      v282 = 1;
LABEL_109:
      v133 = v342;
      v268 = v331;
      v284 = v345;
      (*v339)(v331, v282, 1, v345);
      (*v333)(v266, v133);
      v285 = (*v332)(v268, 1, v284);
      v267 = v330;
      if (v285 != 1)
      {
        v286 = v310;
        v287 = v345;
        (*v328)(v310, v268, v345);
        v288 = sub_22813860C();
        (*v318)(v286, v287);
        if (v288)
        {

          sub_228098DAC(v269, v270, v305);

          return;
        }

        v133 = v342;
        v267 = v330;
        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  (*v336)(v337, v59, v133);
  v246 = v326;
  sub_2281386EC();
  v247 = v338;
  v248 = (*v335)(v246, v338);
  if (v248 == v334)
  {
    (*v323)(v246, v247);
    v249 = v314;
    v250 = v329;
    (*v322)(v314, v246, v329);
    v251 = v315;
    sub_2281386BC();
    (*v321)(v249, v250);
    v252 = v327;
    v253 = (*v320)(v251, v327);
    if (v253 == v319)
    {
      (*v311)(v251, v252);
      v254 = v341;
      (*v328)(v341, v251, v345);
      v255 = v254;
      v256 = 0;
    }

    else
    {
      (*v312)(v251, v252);
      v256 = 1;
      v255 = v341;
    }

    v133 = v342;
    v59 = v325;
  }

  else
  {
    (*v324)(v246, v247);
    v256 = 1;
    v255 = v341;
    v133 = v342;
  }

  v257 = v345;
  (*v339)(v255, v256, 1, v345);
  (*v333)(v337, v133);
  v258 = v257;
  v214 = v341;
  if ((*v332)(v341, 1, v258) == 1)
  {
    goto LABEL_77;
  }

  v259 = v316;
  v260 = v214;
  v261 = v345;
  (*v328)(v316, v260, v345);
  v262 = sub_2281385DC();
  (*v318)(v259, v261);
  if ((v262 & 1) == 0)
  {

    v214 = v341;
    v133 = v342;
    v213 = v340;
    v59 = v325;
    goto LABEL_78;
  }

  v290 = v243;
LABEL_119:
  sub_228098DAC(v290, v245, v305);
}

uint64_t sub_22809C164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22809C268(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22809C308(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = (v14 & ~v12) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v9 >= v11)
        {
          v24 = *(v8 + 48);

          return v24(a1);
        }

        else
        {
          v22 = *(v10 + 48);

          return v22((a1 + v14) & ~v12, v11, v6);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = (v14 & ~v12) + *(*(v6 - 8) + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_22809C55C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v13 + v14;
  v17 = ((v13 + v14) & ~v14) + *(*(v8 - 8) + 64);
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    v25 = *(v9 + 56);

    v25(a1, a2);
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v14, a2, v12, v8);
  }
}

uint64_t Summary.attributedStringValue(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  if (sub_22809CD84(&v6))
  {
    swift_getAtKeyPath();
  }

  else
  {
    v4 = sub_228136DBC();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }
}

uint64_t sub_22809CD84(_BYTE *a1)
{
  if (*a1 != 3)
  {
    return swift_getKeyPath();
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = sub_22813882C();
  __swift_project_value_buffer(v1, qword_2813C8A20);
  v2 = sub_22813880C();
  v3 = sub_2281396DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_227FCC340(0x6F436C6175736976, 0xEE0073747065636ELL, &v7);
    _os_log_impl(&dword_227FC3000, v2, v3, "Asked for attributedStringKeyPath for unsupported style: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAB28A0](v5, -1, -1);
    MEMORY[0x22AAB28A0](v4, -1, -1);
  }

  return 0;
}

unint64_t sub_22809CF1C()
{
  result = qword_27D81EF00;
  if (!qword_27D81EF00)
  {
    sub_228136DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF00);
  }

  return result;
}

uint64_t Summary.setAttributedStringValue(_:for:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v10 - v7;
  v11 = *a2;
  result = sub_22809CD84(&v11);
  if (result)
  {
    sub_22809F044(a1, v8, &qword_27D81ECF8, &qword_22813E298);
    swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_22809D2D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    return swift_getKeyPath();
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v3 = sub_22813882C();
  __swift_project_value_buffer(v3, qword_2813C8A20);
  v4 = sub_22813880C();
  v5 = sub_2281396DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    v8 = 0xE500000000000000;
    *v6 = 136446210;
    v9 = 0x6369706F74;
    v10 = 0xE800000000000000;
    v11 = 0x736973706F6E7973;
    if (v1 != 2)
    {
      v11 = 0x6F546C6175736976;
      v10 = 0xED0000656E694C70;
    }

    if (v1)
    {
      v9 = 0x656E694C706F74;
      v8 = 0xE700000000000000;
    }

    if (v1 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v1 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v14 = sub_227FCC340(v12, v13, &v15);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_227FC3000, v4, v5, "Asked for attributedStringKeyPath for unsupported style: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAB28A0](v7, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_22809D4A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136DEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v138 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_228136DBC();
  v136 = *(v137 - 8);
  v8 = *(v136 + 64);
  MEMORY[0x28223BE20](v137, v9);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_228136CDC();
  v12 = *(v142 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v142, v14);
  v141 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v139 = v11;
  *&v150 = 10;
  *(&v150 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v15, v16);
  v131 = &v150;

  v19 = sub_22809EC24(0x7FFFFFFFFFFFFFFFLL, 1, sub_22809F0AC, &v129, a1, a2, v18);
  v135 = 0;
  v20 = *(v19 + 16);
  v134 = v12;
  if (v20)
  {
    v153 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v20, 0);
    v21 = v153;
    v140 = v12 + 8;
    v133 = v19;
    v22 = (v19 + 56);
    v24 = (v12 + 8);
    v23 = v141;
    do
    {
      v143 = v20;
      v144 = v21;
      v25 = *(v22 - 1);
      v26 = *v22;
      v150 = *(v22 - 3);
      v151 = v25;
      v152 = v26;

      sub_228136C8C();
      sub_228045E64();
      v27 = sub_2281397AC();
      v29 = v28;
      v30 = *v24;
      v31 = v142;
      (*v24)(v23, v142);
      *&v145 = v27;
      *(&v145 + 1) = v29;
      v148 = 45;
      v149 = 0xE100000000000000;
      sub_22809F0C8();
      sub_22813965C();

      v145 = v150;
      v146 = v151;
      v147 = v152;
      sub_228136C8C();
      v32 = sub_2281397AC();
      v21 = v144;
      v33 = v32;
      v35 = v34;

      v30(v23, v31);

      v153 = v21;
      v37 = v21[2];
      v36 = v21[3];
      if (v37 >= v36 >> 1)
      {
        sub_228043AD4((v36 > 1), v37 + 1, 1);
        v21 = v153;
      }

      v21[2] = v37 + 1;
      v38 = &v21[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      v22 += 4;
      v20 = v143 - 1;
    }

    while (v143 != 1);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v41 = v21[2];
  v42 = v139;
  v43 = MEMORY[0x277D84F90];
  if (v41 > 1)
  {
LABEL_19:
    v67 = v21[2];
    v144 = v21;
    if (v67)
    {
      v153 = v43;
      sub_228043AD4(0, v67, 0);
      v43 = v153;
      v68 = sub_227FDB420();
      v69 = v21 + 5;
      do
      {
        v70 = *v69;
        *&v150 = *(v69 - 1);
        *(&v150 + 1) = v70;
        *&v145 = 42;
        *(&v145 + 1) = 0xE100000000000000;
        v148 = 0;
        v149 = 0xE000000000000000;
        v131 = v68;
        v132 = v68;
        v130 = v68;
        v129 = MEMORY[0x277D837D0];
        v71 = sub_2281397BC();
        v153 = v43;
        v74 = v43[2];
        v73 = v43[3];
        v75 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v143 = v71;
          v77 = v72;
          sub_228043AD4((v73 > 1), v74 + 1, 1);
          v72 = v77;
          v71 = v143;
          v43 = v153;
        }

        v43[2] = v75;
        v76 = &v43[2 * v74];
        v76[4] = v71;
        v76[5] = v72;
        v69 += 2;
        --v67;
      }

      while (v67);
LABEL_26:
      *&v150 = MEMORY[0x277D84F90];
      result = sub_228043AD4(0, v75, 0);
      v78 = 0;
      v79 = v43[2];
      v80 = v150;
      v142 = v144[2] - 1;
      v143 = v79;
      v81 = v43 + 5;
      while (v143 != v78)
      {
        if (v78 >= v43[2])
        {
          goto LABEL_72;
        }

        v83 = *(v81 - 1);
        v82 = *v81;

        if (v142 == v78)
        {
          result = sub_22813942C();
          if (result)
          {

            v84 = sub_22809F174(1);
            v86 = v85;
            v88 = v87;
            v90 = v89;

            v83 = MEMORY[0x22AAB18D0](v84, v86, v88, v90);
            v92 = v91;

            v82 = v92;
          }
        }

        *&v150 = v80;
        v94 = *(v80 + 16);
        v93 = *(v80 + 24);
        if (v94 >= v93 >> 1)
        {
          result = sub_228043AD4((v93 > 1), v94 + 1, 1);
          v80 = v150;
        }

        ++v78;
        *(v80 + 16) = v94 + 1;
        v95 = v80 + 16 * v94;
        *(v95 + 32) = v83;
        *(v95 + 40) = v82;
        v81 += 2;
        if (v75 == v78)
        {

          v42 = v139;
          goto LABEL_36;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v75 = v43[2];
    if (v75)
    {
      goto LABEL_26;
    }

    v80 = MEMORY[0x277D84F90];

LABEL_36:
    v96 = 0;
    v97 = *(v80 + 16);
    v98 = MEMORY[0x277D84F90];
LABEL_37:
    v99 = (v80 + 40 + 16 * v96);
    while (v97 != v96)
    {
      if (v96 >= *(v80 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      ++v96;
      v101 = *(v99 - 1);
      v100 = *v99;
      v99 += 2;
      v102 = HIBYTE(v100) & 0xF;
      if ((v100 & 0x2000000000000000) == 0)
      {
        v102 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (v102)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v98;
        if ((result & 1) == 0)
        {
          result = sub_228043AD4(0, *(v98 + 16) + 1, 1);
          v98 = v150;
        }

        v104 = *(v98 + 16);
        v103 = *(v98 + 24);
        if (v104 >= v103 >> 1)
        {
          result = sub_228043AD4((v103 > 1), v104 + 1, 1);
          v98 = v150;
        }

        *(v98 + 16) = v104 + 1;
        v105 = v98 + 16 * v104;
        *(v105 + 32) = v101;
        *(v105 + 40) = v100;
        v42 = v139;
        goto LABEL_37;
      }
    }

    *&v145 = MEMORY[0x277D84FA0];
    v106 = *(v98 + 16);
    v107 = MEMORY[0x277D84F90];
    v143 = v98;
    if (v106)
    {
      v108 = 0;
      v109 = v98 + 40;
LABEL_50:
      v144 = v107;
      v110 = (v109 + 16 * v108);
      v111 = v108;
      while (v111 < v106)
      {
        v108 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_74;
        }

        v113 = *(v110 - 1);
        v112 = *v110;
        v114 = sub_2281392FC();
        v116 = v115;

        v117 = sub_2280BD990(&v150, v114, v116);

        if (v117)
        {
          v107 = v144;
          result = swift_isUniquelyReferenced_nonNull_native();
          v148 = v107;
          if ((result & 1) == 0)
          {
            result = sub_228043AD4(0, v107[2] + 1, 1);
            v107 = v148;
          }

          v42 = v139;
          v119 = v107[2];
          v118 = v107[3];
          if (v119 >= v118 >> 1)
          {
            result = sub_228043AD4((v118 > 1), v119 + 1, 1);
            v107 = v148;
          }

          v107[2] = v119 + 1;
          v120 = &v107[2 * v119];
          v120[4] = v113;
          v120[5] = v112;
          if (v108 != v106)
          {
            goto LABEL_50;
          }

          goto LABEL_61;
        }

        ++v111;
        v110 += 2;
        if (v108 == v106)
        {
          v42 = v139;
          v107 = v144;
          goto LABEL_61;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_61:

    v121 = v107[2];
    if (v121)
    {
      *&v150 = MEMORY[0x277D84F90];
      sub_228043CBC(0, v121, 0);
      v40 = v150;
      v122 = v136;
      v144 = v107;
      v123 = v107 + 5;
      v124 = v137;
      do
      {
        v125 = *(v123 - 1);
        v126 = *v123;

        sub_228136DDC();
        sub_228136DCC();
        *&v150 = v40;
        v128 = *(v40 + 16);
        v127 = *(v40 + 24);
        if (v128 >= v127 >> 1)
        {
          sub_228043CBC(v127 > 1, v128 + 1, 1);
          v40 = v150;
        }

        *(v40 + 16) = v128 + 1;
        (*(v122 + 32))(v40 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v128, v42, v124);
        v123 += 2;
        --v121;
      }

      while (v121);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v40;
  }

  if (v41 == 1)
  {
    v44 = v21;
    v45 = v21[4];
    v46 = v44[5];

    *&v150 = v45;
    *(&v150 + 1) = v46;
    *&v145 = 59;
    *(&v145 + 1) = 0xE100000000000000;
    v148 = 44;
    v149 = 0xE100000000000000;
    v131 = sub_227FDB420();
    v132 = v131;
    v130 = v131;
    v129 = MEMORY[0x277D837D0];
    v47 = sub_2281397BC();
    v49 = v48;

    *&v150 = 44;
    *(&v150 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v50, v51);
    v131 = &v150;
    v52 = v49;
    v53 = v135;
    v54 = sub_22809EC24(0x7FFFFFFFFFFFFFFFLL, 1, sub_22809F240, &v129, v47, v52, &v154);
    v135 = v53;
    v55 = *(v54 + 16);
    if (v55)
    {
      *&v145 = v43;
      sub_228043AD4(0, v55, 0);
      v21 = v145;
      v56 = (v134 + 8);
      v144 = v54;
      v57 = (v54 + 56);
      do
      {
        v58 = *(v57 - 1);
        v59 = *v57;
        v150 = *(v57 - 3);
        v151 = v58;
        v152 = v59;

        v60 = v141;
        sub_228136C8C();
        sub_228045E64();
        v61 = sub_2281397AC();
        v63 = v62;
        (*v56)(v60, v142);

        *&v145 = v21;
        v65 = v21[2];
        v64 = v21[3];
        if (v65 >= v64 >> 1)
        {
          sub_228043AD4((v64 > 1), v65 + 1, 1);
          v21 = v145;
        }

        v21[2] = v65 + 1;
        v66 = &v21[2 * v65];
        v66[4] = v61;
        v66[5] = v63;
        v57 += 4;
        --v55;
      }

      while (v55);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    goto LABEL_19;
  }

LABEL_75:
  __break(1u);
  return result;
}