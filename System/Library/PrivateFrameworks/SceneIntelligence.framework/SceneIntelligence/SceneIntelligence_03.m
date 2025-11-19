uint64_t sub_21DE665CC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  sub_21DE5CD00(v3, &qword_27CE93F90, &qword_21DECD500);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DE66740, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_21DE66740()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t AFMAnnotation.postProcess(tgResponse:sanitizerResource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a1;
  if (*v3)
  {
    v6 = swift_task_alloc();
    v4[9] = v6;
    v7 = sub_21DE67A08();
    sub_21DE67960();
    *v6 = v4;
    v6[1] = sub_21DE66ACC;
    v8 = &type metadata for VerticalIntegrationContentClassifier;
    v9 = (v4 + 2);
    v10 = 0x800000021DED9790;
    v11 = a3;
    v12 = 0xD00000000000002ELL;
    v13 = &type metadata for VerticalIntegrationContentClassifier;
    v14 = v7;
  }

  else
  {
    v15 = type metadata accessor for StructuredText();
    v16 = swift_task_alloc();
    v4[7] = v16;
    v17 = sub_21DE67A5C(&qword_27CE93FD0, type metadata accessor for StructuredText);
    sub_21DE67A5C(&qword_27CE93FE0, type metadata accessor for StructuredText);
    *v16 = v4;
    v16[1] = sub_21DE66994;
    v12 = 0x7275746375727453;
    v10 = 0xEF74786574206465;
    v9 = (v4 + 5);
    v8 = v15;
    v11 = a3;
    v13 = v15;
    v14 = v17;
  }

  return sub_21DEC2968(v9, v8, v11, v12, v10, v13, v14);
}

uint64_t sub_21DE66994()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_21DE66C24;
  }

  else
  {
    v3 = sub_21DE66AA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DE66AA8()
{
  v1 = *(v0 + 48);
  *v1 = *(v0 + 40);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_21DE66ACC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_21DE66C3C;
  }

  else
  {
    v3 = sub_21DE66BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DE66BE0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v0 + 32) | 0x4000;
  v4 = *(v0 + 48);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v1;
  *(v4 + 16) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_21DE66C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (*v6)
  {
    return sub_21DE782B0(a2, a3, a4, a5 & 1, a6 & 1);
  }

  else
  {
    return sub_21DE56D70(a2, a3, a4, a5 & 1, a6 & 1);
  }
}

unint64_t sub_21DE66CE4()
{
  if (*v0)
  {
    result = 0xD000000000000024;
  }

  else
  {
    result = 0x7275746375727473;
  }

  *v0;
  return result;
}

uint64_t sub_21DE66D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE66E1C(uint64_t a1)
{
  v2 = sub_21DE68658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE66E58(uint64_t a1)
{
  v2 = sub_21DE68658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE66E94(uint64_t a1)
{
  v2 = sub_21DE68700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE66ED0(uint64_t a1)
{
  v2 = sub_21DE68700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE66F0C(uint64_t a1)
{
  v2 = sub_21DE686AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE66F48(uint64_t a1)
{
  v2 = sub_21DE686AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AFMAnnotation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941D8, &qword_21DECD7A0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941E0, &qword_21DECD7A8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941E8, &qword_21DECD7B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68658();
  sub_21DEC7810();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_21DE686AC();
    v18 = v22;
    sub_21DEC7530();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_21DE68700();
    sub_21DEC7530();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t AFMAnnotation.hashValue.getter()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t AFMAnnotation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941F0, &qword_21DECD7B8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE941F8, &qword_21DECD7C0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94200, &qword_21DECD7C8);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE68658();
  v17 = v37;
  sub_21DEC77E0();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_21DEC7520();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_21DEC7340();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94038, &qword_21DECD5E0) + 48);
    *v25 = &type metadata for AFMAnnotation;
    sub_21DEC7490();
    sub_21DEC7330();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_21DE686AC();
    sub_21DEC7480();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_21DE68700();
    sub_21DEC7480();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

BOOL _s17SceneIntelligence7AFMDataO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 8);
  v9 = *a1;
  v10 = v2;
  sub_21DEC7770();
  AFMData.hash(into:)(v8);
  v6 = sub_21DEC77B0();
  *&v9 = v3;
  *(&v9 + 1) = v4;
  v10 = v5;
  sub_21DEC7770();
  AFMData.hash(into:)(v8);
  return v6 == sub_21DEC77B0();
}

unint64_t sub_21DE677CC()
{
  result = qword_280F7A6F8;
  if (!qword_280F7A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A6F8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21DE67864()
{
  result = qword_280F7B510[0];
  if (!qword_280F7B510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B510);
  }

  return result;
}

unint64_t sub_21DE678B8()
{
  result = qword_280F7B358;
  if (!qword_280F7B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B358);
  }

  return result;
}

unint64_t sub_21DE6790C()
{
  result = qword_280F7B030[0];
  if (!qword_280F7B030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B030);
  }

  return result;
}

unint64_t sub_21DE67960()
{
  result = qword_280F7A708;
  if (!qword_280F7A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A708);
  }

  return result;
}

unint64_t sub_21DE679B4()
{
  result = qword_27CE95778;
  if (!qword_27CE95778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95778);
  }

  return result;
}

unint64_t sub_21DE67A08()
{
  result = qword_280F7A700;
  if (!qword_280F7A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A700);
  }

  return result;
}

uint64_t sub_21DE67A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DE67AA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL _s17SceneIntelligence11ImageMarginO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        v5 = *a1;
        v6 = *a2;
        if (v2 == v3)
        {
          return 1;
        }
      }
    }

    else if (v4 == 2)
    {
      v10 = *a1;
      v11 = *a2;
      if (v2 == v3)
      {
        return *(a1 + 8) == *(a2 + 8);
      }
    }
  }

  else if (!*(a2 + 16))
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s17SceneIntelligence8AFMChunkO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  v12 = v3;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v9);
  v6 = sub_21DEC77B0();
  v7 = a2[1];
  v10 = *a2;
  v11 = v7;
  v12 = v4;
  sub_21DEC7770();
  AFMChunk.hash(into:)(v9);
  return v6 == sub_21DEC77B0();
}

unint64_t sub_21DE67CF0()
{
  result = qword_27CE94040;
  if (!qword_27CE94040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94040);
  }

  return result;
}

unint64_t sub_21DE67D44()
{
  result = qword_27CE95780;
  if (!qword_27CE95780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95780);
  }

  return result;
}

unint64_t sub_21DE67D98()
{
  result = qword_27CE95788;
  if (!qword_27CE95788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95788);
  }

  return result;
}

unint64_t sub_21DE67DEC()
{
  result = qword_27CE95790;
  if (!qword_27CE95790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95790);
  }

  return result;
}

unint64_t sub_21DE67E40()
{
  result = qword_27CE95798;
  if (!qword_27CE95798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95798);
  }

  return result;
}

unint64_t sub_21DE67E94()
{
  result = qword_27CE957A0;
  if (!qword_27CE957A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957A0);
  }

  return result;
}

unint64_t sub_21DE67EE8()
{
  result = qword_27CE957A8;
  if (!qword_27CE957A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957A8);
  }

  return result;
}

unint64_t sub_21DE67F3C()
{
  result = qword_27CE957B0;
  if (!qword_27CE957B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957B0);
  }

  return result;
}

unint64_t sub_21DE67F90()
{
  result = qword_27CE957B8;
  if (!qword_27CE957B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957B8);
  }

  return result;
}

unint64_t sub_21DE67FE4()
{
  result = qword_27CE957C0;
  if (!qword_27CE957C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957C0);
  }

  return result;
}

unint64_t sub_21DE68038()
{
  result = qword_27CE957C8;
  if (!qword_27CE957C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957C8);
  }

  return result;
}

unint64_t sub_21DE6808C()
{
  result = qword_27CE957D0;
  if (!qword_27CE957D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957D0);
  }

  return result;
}

unint64_t sub_21DE680E0()
{
  result = qword_27CE957D8;
  if (!qword_27CE957D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957D8);
  }

  return result;
}

unint64_t sub_21DE68134()
{
  result = qword_27CE957E0;
  if (!qword_27CE957E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957E0);
  }

  return result;
}

unint64_t sub_21DE68188()
{
  result = qword_27CE957E8;
  if (!qword_27CE957E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957E8);
  }

  return result;
}

unint64_t sub_21DE681FC()
{
  result = qword_27CE94138;
  if (!qword_27CE94138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94138);
  }

  return result;
}

uint64_t sub_21DE68270(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DE682A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21DE68310()
{
  result = qword_27CE957F0;
  if (!qword_27CE957F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957F0);
  }

  return result;
}

unint64_t sub_21DE68364()
{
  result = qword_27CE957F8;
  if (!qword_27CE957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE957F8);
  }

  return result;
}

unint64_t sub_21DE683B8()
{
  result = qword_27CE95800;
  if (!qword_27CE95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95800);
  }

  return result;
}

unint64_t sub_21DE6840C()
{
  result = qword_27CE95808;
  if (!qword_27CE95808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95808);
  }

  return result;
}

unint64_t sub_21DE68460()
{
  result = qword_27CE94168;
  if (!qword_27CE94168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94168);
  }

  return result;
}

unint64_t sub_21DE684B4()
{
  result = qword_27CE94190;
  if (!qword_27CE94190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94190);
  }

  return result;
}

unint64_t sub_21DE68508()
{
  result = qword_27CE95810;
  if (!qword_27CE95810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95810);
  }

  return result;
}

unint64_t sub_21DE6855C()
{
  result = qword_27CE95818;
  if (!qword_27CE95818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95818);
  }

  return result;
}

unint64_t sub_21DE685B0()
{
  result = qword_27CE95820;
  if (!qword_27CE95820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95820);
  }

  return result;
}

unint64_t sub_21DE68604()
{
  result = qword_27CE95828;
  if (!qword_27CE95828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95828);
  }

  return result;
}

unint64_t sub_21DE68658()
{
  result = qword_27CE95830;
  if (!qword_27CE95830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95830);
  }

  return result;
}

unint64_t sub_21DE686AC()
{
  result = qword_27CE95838;
  if (!qword_27CE95838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE95838);
  }

  return result;
}

unint64_t sub_21DE68700()
{
  result = qword_27CE95840[0];
  if (!qword_27CE95840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE95840);
  }

  return result;
}

unint64_t sub_21DE68758()
{
  result = qword_280F7A6F0;
  if (!qword_280F7A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7A6F0);
  }

  return result;
}

unint64_t sub_21DE687B0()
{
  result = qword_27CE94208;
  if (!qword_27CE94208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94208);
  }

  return result;
}

uint64_t sub_21DE6884C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21DE68898()
{
  result = qword_27CE94220;
  if (!qword_27CE94220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94220);
  }

  return result;
}

unint64_t sub_21DE688F4()
{
  result = qword_27CE94228;
  if (!qword_27CE94228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94228);
  }

  return result;
}

unint64_t sub_21DE6894C()
{
  result = qword_27CE94230;
  if (!qword_27CE94230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94230);
  }

  return result;
}

unint64_t sub_21DE689A4()
{
  result = qword_27CE94238;
  if (!qword_27CE94238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94238);
  }

  return result;
}

unint64_t sub_21DE689FC()
{
  result = qword_27CE94240;
  if (!qword_27CE94240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94240);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21DE68A70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 18))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 7) & 0x7C | (*(a1 + 16) >> 14)) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DE68AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DE68B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 34))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 32) >> 6) & 0x78 | (*(a1 + 32) >> 13)) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DE68BC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (((-a2 >> 3) & 0xF) - 16 * a2) << 9;
    }
  }

  return result;
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

uint64_t sub_21DE68C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DE68CC8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_21DE68D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DE68DC8(uint64_t result, int a2, int a3)
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

void sub_21DE68E48()
{
  sub_21DE69558(319, &qword_280F7AB48, MEMORY[0x277D0E588]);
  if (v0 <= 0x3F)
  {
    sub_21DE69558(319, &qword_280F7AB50, MEMORY[0x277D0E560]);
    if (v1 <= 0x3F)
    {
      sub_21DEC6C30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t dispatch thunk of PromptFormatting.formatPrompt(input:sanitizerResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21DE69070;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21DE69070(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
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

uint64_t sub_21DE69210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE6924C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21DE69298(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_21DE692E4(uint64_t a1, int a2)
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

uint64_t sub_21DE6932C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21DE6939C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21DE693E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_21DE6945C()
{
  sub_21DEC6B90();
  if (v0 <= 0x3F)
  {
    sub_21DEC6B70();
    if (v1 <= 0x3F)
    {
      sub_21DE69558(319, &qword_280F7A6E8, MEMORY[0x277D0E698]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21DE69558(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DEC71C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21DE695AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE695FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21DE69650(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21DE69668(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageFormat(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ImageFormat(uint64_t result, int a2, int a3)
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

uint64_t sub_21DE696E8(uint64_t a1)
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

uint64_t sub_21DE69704(uint64_t result, int a2)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageMargin(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImageMargin(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21DE69800(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21DE69848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BoundingBox.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BoundingBox.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AFMChunk.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AFMChunk.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredText.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StructuredText.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SceneObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Event.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Event.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21DE6A0A0()
{
  result = qword_27CE96660[0];
  if (!qword_27CE96660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96660);
  }

  return result;
}

unint64_t sub_21DE6A0F8()
{
  result = qword_27CE96770[0];
  if (!qword_27CE96770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96770);
  }

  return result;
}

unint64_t sub_21DE6A150()
{
  result = qword_27CE96880[0];
  if (!qword_27CE96880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96880);
  }

  return result;
}

unint64_t sub_21DE6A1A8()
{
  result = qword_27CE96990[0];
  if (!qword_27CE96990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96990);
  }

  return result;
}

unint64_t sub_21DE6A200()
{
  result = qword_27CE96BA0[0];
  if (!qword_27CE96BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96BA0);
  }

  return result;
}

unint64_t sub_21DE6A258()
{
  result = qword_27CE96DB0[0];
  if (!qword_27CE96DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96DB0);
  }

  return result;
}

unint64_t sub_21DE6A2B0()
{
  result = qword_27CE96FC0[0];
  if (!qword_27CE96FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE96FC0);
  }

  return result;
}

unint64_t sub_21DE6A308()
{
  result = qword_27CE971D0[0];
  if (!qword_27CE971D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE971D0);
  }

  return result;
}

unint64_t sub_21DE6A360()
{
  result = qword_27CE973E0[0];
  if (!qword_27CE973E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE973E0);
  }

  return result;
}

unint64_t sub_21DE6A3B8()
{
  result = qword_27CE975F0;
  if (!qword_27CE975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE975F0);
  }

  return result;
}

unint64_t sub_21DE6A410()
{
  result = qword_27CE97800[0];
  if (!qword_27CE97800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE97800);
  }

  return result;
}

unint64_t sub_21DE6A468()
{
  result = qword_27CE97A10[0];
  if (!qword_27CE97A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE97A10);
  }

  return result;
}

unint64_t sub_21DE6A4C0()
{
  result = qword_27CE97C20[0];
  if (!qword_27CE97C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE97C20);
  }

  return result;
}

unint64_t sub_21DE6A518()
{
  result = qword_27CE98230[0];
  if (!qword_27CE98230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98230);
  }

  return result;
}

unint64_t sub_21DE6A570()
{
  result = qword_27CE98640[0];
  if (!qword_27CE98640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98640);
  }

  return result;
}

unint64_t sub_21DE6A5C8()
{
  result = qword_27CE98850[0];
  if (!qword_27CE98850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98850);
  }

  return result;
}

unint64_t sub_21DE6A620()
{
  result = qword_27CE98A60[0];
  if (!qword_27CE98A60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98A60);
  }

  return result;
}

unint64_t sub_21DE6A678()
{
  result = qword_27CE98C70[0];
  if (!qword_27CE98C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98C70);
  }

  return result;
}

unint64_t sub_21DE6A6D0()
{
  result = qword_27CE98E80[0];
  if (!qword_27CE98E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE98E80);
  }

  return result;
}

unint64_t sub_21DE6A728()
{
  result = qword_27CE99090[0];
  if (!qword_27CE99090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99090);
  }

  return result;
}

unint64_t sub_21DE6A780()
{
  result = qword_27CE994A0[0];
  if (!qword_27CE994A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE994A0);
  }

  return result;
}

unint64_t sub_21DE6A7D8()
{
  result = qword_27CE995B0;
  if (!qword_27CE995B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE995B0);
  }

  return result;
}

unint64_t sub_21DE6A830()
{
  result = qword_27CE995B8[0];
  if (!qword_27CE995B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE995B8);
  }

  return result;
}

unint64_t sub_21DE6A888()
{
  result = qword_27CE99640;
  if (!qword_27CE99640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99640);
  }

  return result;
}

unint64_t sub_21DE6A8E0()
{
  result = qword_27CE99648[0];
  if (!qword_27CE99648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99648);
  }

  return result;
}

unint64_t sub_21DE6A938()
{
  result = qword_27CE996D0;
  if (!qword_27CE996D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE996D0);
  }

  return result;
}

unint64_t sub_21DE6A990()
{
  result = qword_27CE996D8[0];
  if (!qword_27CE996D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE996D8);
  }

  return result;
}

unint64_t sub_21DE6A9E8()
{
  result = qword_27CE99760;
  if (!qword_27CE99760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99760);
  }

  return result;
}

unint64_t sub_21DE6AA40()
{
  result = qword_27CE99768[0];
  if (!qword_27CE99768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99768);
  }

  return result;
}

unint64_t sub_21DE6AA98()
{
  result = qword_27CE997F0;
  if (!qword_27CE997F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE997F0);
  }

  return result;
}

unint64_t sub_21DE6AAF0()
{
  result = qword_27CE997F8[0];
  if (!qword_27CE997F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE997F8);
  }

  return result;
}

unint64_t sub_21DE6AB48()
{
  result = qword_27CE99880;
  if (!qword_27CE99880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99880);
  }

  return result;
}

unint64_t sub_21DE6ABA0()
{
  result = qword_27CE99888[0];
  if (!qword_27CE99888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99888);
  }

  return result;
}

unint64_t sub_21DE6ABF8()
{
  result = qword_27CE99910;
  if (!qword_27CE99910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99910);
  }

  return result;
}

unint64_t sub_21DE6AC50()
{
  result = qword_27CE99918[0];
  if (!qword_27CE99918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99918);
  }

  return result;
}

unint64_t sub_21DE6ACA8()
{
  result = qword_27CE999A0;
  if (!qword_27CE999A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE999A0);
  }

  return result;
}

unint64_t sub_21DE6AD00()
{
  result = qword_27CE999A8[0];
  if (!qword_27CE999A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE999A8);
  }

  return result;
}

unint64_t sub_21DE6AD58()
{
  result = qword_27CE99A30;
  if (!qword_27CE99A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99A30);
  }

  return result;
}

unint64_t sub_21DE6ADB0()
{
  result = qword_27CE99A38[0];
  if (!qword_27CE99A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99A38);
  }

  return result;
}

unint64_t sub_21DE6AE08()
{
  result = qword_27CE99AC0;
  if (!qword_27CE99AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99AC0);
  }

  return result;
}

unint64_t sub_21DE6AE60()
{
  result = qword_27CE99AC8[0];
  if (!qword_27CE99AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99AC8);
  }

  return result;
}

unint64_t sub_21DE6AEB8()
{
  result = qword_27CE99B50;
  if (!qword_27CE99B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99B50);
  }

  return result;
}

unint64_t sub_21DE6AF10()
{
  result = qword_27CE99B58[0];
  if (!qword_27CE99B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99B58);
  }

  return result;
}

unint64_t sub_21DE6AF68()
{
  result = qword_27CE99BE0;
  if (!qword_27CE99BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99BE0);
  }

  return result;
}

unint64_t sub_21DE6AFC0()
{
  result = qword_27CE99BE8[0];
  if (!qword_27CE99BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99BE8);
  }

  return result;
}

unint64_t sub_21DE6B018()
{
  result = qword_27CE99C70;
  if (!qword_27CE99C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99C70);
  }

  return result;
}

unint64_t sub_21DE6B070()
{
  result = qword_27CE99C78;
  if (!qword_27CE99C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99C78);
  }

  return result;
}

unint64_t sub_21DE6B0C8()
{
  result = qword_27CE99D00;
  if (!qword_27CE99D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99D00);
  }

  return result;
}

unint64_t sub_21DE6B120()
{
  result = qword_27CE99D08[0];
  if (!qword_27CE99D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99D08);
  }

  return result;
}

unint64_t sub_21DE6B178()
{
  result = qword_27CE99D90;
  if (!qword_27CE99D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99D90);
  }

  return result;
}

unint64_t sub_21DE6B1D0()
{
  result = qword_27CE99D98[0];
  if (!qword_27CE99D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99D98);
  }

  return result;
}

unint64_t sub_21DE6B228()
{
  result = qword_27CE99E20;
  if (!qword_27CE99E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99E20);
  }

  return result;
}

unint64_t sub_21DE6B280()
{
  result = qword_27CE99E28[0];
  if (!qword_27CE99E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99E28);
  }

  return result;
}

unint64_t sub_21DE6B2D8()
{
  result = qword_27CE99EB0;
  if (!qword_27CE99EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99EB0);
  }

  return result;
}

unint64_t sub_21DE6B330()
{
  result = qword_27CE99EB8[0];
  if (!qword_27CE99EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99EB8);
  }

  return result;
}

unint64_t sub_21DE6B388()
{
  result = qword_27CE99F40;
  if (!qword_27CE99F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99F40);
  }

  return result;
}

unint64_t sub_21DE6B3E0()
{
  result = qword_27CE99F48[0];
  if (!qword_27CE99F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99F48);
  }

  return result;
}

unint64_t sub_21DE6B438()
{
  result = qword_27CE99FD0;
  if (!qword_27CE99FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE99FD0);
  }

  return result;
}

unint64_t sub_21DE6B490()
{
  result = qword_27CE99FD8[0];
  if (!qword_27CE99FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE99FD8);
  }

  return result;
}

unint64_t sub_21DE6B4E8()
{
  result = qword_27CE9A060;
  if (!qword_27CE9A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A060);
  }

  return result;
}

unint64_t sub_21DE6B540()
{
  result = qword_27CE9A068[0];
  if (!qword_27CE9A068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A068);
  }

  return result;
}

unint64_t sub_21DE6B598()
{
  result = qword_27CE9A0F0;
  if (!qword_27CE9A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A0F0);
  }

  return result;
}

unint64_t sub_21DE6B5F0()
{
  result = qword_27CE9A0F8[0];
  if (!qword_27CE9A0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A0F8);
  }

  return result;
}

unint64_t sub_21DE6B648()
{
  result = qword_27CE9A180;
  if (!qword_27CE9A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A180);
  }

  return result;
}

unint64_t sub_21DE6B6A0()
{
  result = qword_27CE9A188[0];
  if (!qword_27CE9A188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A188);
  }

  return result;
}

unint64_t sub_21DE6B6F8()
{
  result = qword_27CE9A210;
  if (!qword_27CE9A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A210);
  }

  return result;
}

unint64_t sub_21DE6B750()
{
  result = qword_27CE9A218[0];
  if (!qword_27CE9A218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A218);
  }

  return result;
}

unint64_t sub_21DE6B7A8()
{
  result = qword_27CE9A2A0;
  if (!qword_27CE9A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A2A0);
  }

  return result;
}

unint64_t sub_21DE6B800()
{
  result = qword_27CE9A2A8[0];
  if (!qword_27CE9A2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A2A8);
  }

  return result;
}

unint64_t sub_21DE6B858()
{
  result = qword_27CE9A330;
  if (!qword_27CE9A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9A330);
  }

  return result;
}

unint64_t sub_21DE6B8B0()
{
  result = qword_27CE9A338[0];
  if (!qword_27CE9A338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A338);
  }

  return result;
}

unint64_t sub_21DE6B908()
{
  result = qword_280F7B1C0;
  if (!qword_280F7B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B1C0);
  }

  return result;
}

unint64_t sub_21DE6B960()
{
  result = qword_280F7B1C8[0];
  if (!qword_280F7B1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B1C8);
  }

  return result;
}

unint64_t sub_21DE6B9B8()
{
  result = qword_280F7B020;
  if (!qword_280F7B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B020);
  }

  return result;
}

unint64_t sub_21DE6BA10()
{
  result = qword_280F7B028;
  if (!qword_280F7B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B028);
  }

  return result;
}

unint64_t sub_21DE6BA68()
{
  result = qword_280F7B370[0];
  if (!qword_280F7B370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7B370);
  }

  return result;
}

unint64_t sub_21DE6BAC0()
{
  result = qword_280F7B368;
  if (!qword_280F7B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B368);
  }

  return result;
}

unint64_t sub_21DE6BB18()
{
  result = qword_280F7B500;
  if (!qword_280F7B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B500);
  }

  return result;
}

unint64_t sub_21DE6BB70()
{
  result = qword_280F7B508;
  if (!qword_280F7B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7B508);
  }

  return result;
}

uint64_t sub_21DE6BBC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF6D657449746E65 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021DED9820 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021DED9840 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x747845746E657665 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000027 && 0x800000021DED9860 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21DE6BE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275746375727473 && a2 == 0xEE00747865546465;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF6D657449746E65 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021DED97F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21DE6BFE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 6778986 && a2 == 0xE300000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6778480 && a2 == 0xE300000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7275536567616D69 && a2 == 0xEC00000065636166)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21DE6C0F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65766974616C6572 && a2 == 0xEE00706F72436F54;
  if (v3 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xEF6567616D496F54 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void ModelInformation.log(logger:)()
{
  v0 = sub_21DEC6B10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94248, &qword_21DED0148);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_21DEC6AE0();
  v14 = 0xE000000000000000;
  if (v13)
  {
    v15 = v12;
    v33 = 0;
    v34 = 0xE000000000000000;
    v16 = v13;

    sub_21DEC72F0();

    v33 = 0xD000000000000011;
    v34 = 0x800000021DED98B0;
    MEMORY[0x223D4B2A0](v15, v16);
    swift_bridgeObjectRelease_n();
    v17 = v33;
    v14 = v34;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_21DEC6B20();
  if (*(v18 + 16))
  {
    (*(v1 + 16))(v11, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 56))(v11, 0, 1, v0);
  }

  else
  {

    (*(v1 + 56))(v11, 1, 1, v0);
  }

  sub_21DE6C6F0(v11, v9);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    sub_21DE6C760(v11);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v1 + 32))(v4, v9, v0);
    v33 = sub_21DEC6AF0();
    v34 = v21;
    v22 = 0xE300000000000000;
    MEMORY[0x223D4B2A0](3044896, 0xE300000000000000);
    v23 = sub_21DEC6B00();
    if (v24)
    {
      v22 = v24;
    }

    else
    {
      v23 = 4144959;
    }

    MEMORY[0x223D4B2A0](v23, v22);

    v19 = v33;
    v20 = v34;
    (*(v1 + 8))(v4, v0);
    sub_21DE6C760(v11);
  }

  v25 = sub_21DEC6D00();
  v26 = sub_21DEC7190();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315394;
    if (v20)
    {
      v29 = v19;
    }

    else
    {
      v29 = 0x206E776F6E6B6E55;
    }

    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = 0xED00007465737361;
    }

    v31 = sub_21DE56544(v29, v30, &v33);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = sub_21DE56544(v17, v14, &v33);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_21DE0D000, v25, v26, "making a request to %s%s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D4D340](v28, -1, -1);
    MEMORY[0x223D4D340](v27, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21DE6C6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94248, &qword_21DED0148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE6C760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94248, &qword_21DED0148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DE6C7C8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21DEC7590();
  }

  return result;
}

uint64_t sub_21DE6C7F4()
{
  sub_21DEC70B0();
  swift_getWitnessTable();
  result = sub_21DEC7170();
  if ((result & 1) == 0)
  {
    swift_getWitnessTable();
    return sub_21DEC75D0();
  }

  return result;
}

uint64_t sub_21DE6C8D8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;

  EventDateTimeComponents.init(string:)(a1, a2, v11);
  if (v4)
  {

    v12 = type metadata accessor for EventDateTimeComponents();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_21DE6CA98(v11);
    a1 = 0;
    a2 = 0xE000000000000000;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = type metadata accessor for EventDateTimeComponents();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    sub_21DE6CA98(v11);

    if (a4)
    {
LABEL_8:
      sub_21DEC7590();
    }
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    goto LABEL_8;
  }
}

uint64_t sub_21DE6CA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL BoundingBox.isValid.getter()
{
  if (*v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = v0[1] == 0;
  }

  return !v1 || v0[2] != 0 || v0[3] != 0;
}

uint64_t BoundingBox.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21DEC72F0();

  v5 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v5);

  MEMORY[0x223D4B2A0](0x203A78616D78202CLL, 0xE800000000000000);
  v6 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v6);

  MEMORY[0x223D4B2A0](0x203A6E696D79202CLL, 0xE800000000000000);
  v7 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v7);

  MEMORY[0x223D4B2A0](0x203A78616D79202CLL, 0xE800000000000000);
  v8 = sub_21DEC7600();
  MEMORY[0x223D4B2A0](v8);

  return 0x203A6E696D78;
}

SceneIntelligence::BoundingBox __swiftcall BoundingBox.init(xmin:ymin:xmax:ymax:)(Swift::Int xmin, Swift::Int ymin, Swift::Int xmax, Swift::Int ymax)
{
  *v4 = xmin;
  v4[1] = ymin;
  v4[2] = xmax;
  v4[3] = ymax;
  result.ymax = ymax;
  result.xmax = xmax;
  result.ymin = ymin;
  result.xmin = xmin;
  return result;
}

uint64_t sub_21DE6CD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE6FCC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE6CDB8(uint64_t a1)
{
  v2 = sub_21DE6D008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6CDF4(uint64_t a1)
{
  v2 = sub_21DE6D008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoundingBox.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94258, &qword_21DED0160);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6D008();
  sub_21DEC7810();
  v18 = 0;
  sub_21DEC75C0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = 1;
  sub_21DEC75C0();
  v16 = 2;
  sub_21DEC75C0();
  v15 = 3;
  sub_21DEC75C0();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21DE6D008()
{
  result = qword_27CE9A3C0[0];
  if (!qword_27CE9A3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9A3C0);
  }

  return result;
}

uint64_t BoundingBox.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94260, &qword_21DED0168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6D008();
  sub_21DEC77E0();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_21DEC7500();
    v19 = 1;
    v12 = sub_21DEC7500();
    v18 = 2;
    v16 = sub_21DEC7500();
    v17 = 3;
    v15 = sub_21DEC7500();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    v14 = v15;
    a2[2] = v16;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21DE6D27C()
{
  v1 = 0x6E69646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0x746E6F4374786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_21DE6D2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE6FE1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE6D30C(uint64_t a1)
{
  v2 = sub_21DE6FF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6D348(uint64_t a1)
{
  v2 = sub_21DE6FF40();

  return MEMORY[0x2821FE720](a1, v2);
}

SceneIntelligence::SceneObject::Category_optional __swiftcall SceneObject.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SceneObject.Category.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x74706965636552;
    v7 = 0xD000000000000011;
    if (v1 != 10)
    {
      v7 = 0x726568744FLL;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C20726568744FLL;
    v9 = 1766222167;
    if (v1 != 7)
    {
      v9 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x637320746E657645;
    v3 = 0x73696C206F646F54;
    v4 = 0x676E6970706F6853;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000013;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000011;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_21DE6D58C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SceneObject.Category.rawValue.getter();
  v4 = v3;
  if (v2 == SceneObject.Category.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DEC7610();
  }

  return v7 & 1;
}

uint64_t sub_21DE6D628()
{
  v1 = *v0;
  sub_21DEC7770();
  SceneObject.Category.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE6D690()
{
  v2 = *v0;
  SceneObject.Category.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DE6D6F4()
{
  v1 = *v0;
  sub_21DEC7770();
  SceneObject.Category.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DE6D764@<X0>(unint64_t *a1@<X8>)
{
  result = SceneObject.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_21DE6D84C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE6D8A8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

uint64_t sub_21DE6D900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_21DE6D944(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

double sub_21DE6D9D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 128))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE6DA30(_OWORD *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(*v2 + 136))(v5);
}

__n128 sub_21DE6DA88@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_21DE6DAD0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_21DE6DB18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE6DB64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t sub_21DE6DBB8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_21DE6DBF0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

BOOL sub_21DE6DC88()
{
  v1 = (*(*v0 + 152))();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_21DEC7400();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D4B690](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*v7 + 120))();

    v5 = v6 + 1;
  }

  while ((v8 & 1) == 0);

  return v4 != v6;
}

unint64_t sub_21DE6DDB4()
{
  (*(*v0 + 104))(&v24);
  v1 = SceneObject.Category.rawValue.getter();
  v28 = sub_21DEBCAD8(0x79726F6765746163, 0xE800000000000000, v1, v2);
  v29 = v3;
  v4 = *(*v0 + 128);
  v5 = v4(&v24);
  if (v24)
  {
    v6 = 0;
  }

  else
  {
    v6 = v25 == 0;
  }

  v7 = v6 && v26 == 0;
  if (!v7 || v27)
  {
    (v4)(&v24, v5);
    v8 = BoundingBox.description.getter();
    v10 = sub_21DEBCAD8(0x6E69646E756F7267, 0xE900000000000067, v8, v9);
    MEMORY[0x223D4B2A0](v10);
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  result = (*(*v0 + 152))(v5);
  v12 = result;
  if (!(result >> 62))
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_21:

    v18 = 0;
    v17 = 0xE000000000000000;
LABEL_22:
    v19 = sub_21DEBCBBC();
    v20 = sub_21DEBCBC4(v19, v18, v17);
    v22 = v21;

    v23 = sub_21DEBCAD8(0x746E6F4374786574, 0xEB00000000746E65, v20, v22);
    MEMORY[0x223D4B2A0](v23);

    return v28;
  }

  result = sub_21DEC7400();
  v13 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (v13 >= 1)
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D4B690](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      ++v14;
      type metadata accessor for TextContentItem();
      sub_21DE70268(&qword_27CE94268, 255, type metadata accessor for TextContentItem);
      v15 = sub_21DEC7600();
      MEMORY[0x223D4B2A0](v15);

      MEMORY[0x223D4B2A0](10, 0xE100000000000000);
    }

    while (v13 != v14);

    v17 = v25;
    v18 = v24;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t SceneObject.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SceneObject.init(from:)(a1);
  return v2;
}

__n128 SceneObject.__allocating_init(category:grounding:textContent:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t SceneObject.init(category:grounding:textContent:)(_BYTE *a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v4 = a2[1];
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t sub_21DE6E528(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942A0, &unk_21DED0180);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE6FF40();
  v12 = sub_21DEC7810();
  (*(*v4 + 104))(&v33, v12);
  LOBYTE(v31) = 0;
  sub_21DE7000C();
  v13 = sub_21DEC75D0();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v29 = v7;
  v30 = v6;
  v15 = *(*v4 + 128);
  v16 = v15(&v33, v13);
  if (v33 == 0 && __PAIR128__(v34, 0) == *(&v34 + 1))
  {
    v17 = v30;
  }

  else
  {
    v15(&v33, v16);
    v31 = v33;
    v32 = v34;
    v35 = 1;
    sub_21DE70060();
    v17 = v30;
    v16 = sub_21DEC75D0();
  }

  v18 = (*(*v4 + 152))(v16);
  v19 = v18;
  *&v33 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
LABEL_22:
    v20 = sub_21DEC7400();
    if (v20)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_9:
      v27 = v3;
      v28 = v10;
      v21 = 0;
      v17 = v19 & 0xC000000000000001;
      v3 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v10 = MEMORY[0x223D4B690](v21, v19);
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v24 = v33;
            v17 = v30;
            v10 = v28;
            goto LABEL_24;
          }
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v10 = *(v19 + 8 * v21 + 32);

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v10 + 120))())
        {
          sub_21DEC7380();
          v23 = *(v33 + 16);
          sub_21DEC73A0();
          sub_21DEC73B0();
          sub_21DEC7390();
        }

        else
        {
        }

        ++v21;
        if (v22 == v20)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_24:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    v26 = sub_21DEC7400();
    v25 = v29;
    if (!v26)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v25 = v29;
  if (*(v24 + 16))
  {
LABEL_27:
    *&v33 = v24;
    LOBYTE(v31) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94288, &qword_21DED0178);
    sub_21DE700B4(&qword_27CE942B8, &qword_27CE942C0);
    sub_21DEC75D0();
  }

LABEL_28:
  (*(v25 + 8))(v10, v17);
}

uint64_t SceneObject.deinit()
{
  v1 = *(v0 + 56);

  return v0;
}

uint64_t SceneObject.__deallocating_deinit()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21DE6E9EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE6EAB0()
{
  if (*v0)
  {
    return 0x737463656A626FLL;
  }

  else
  {
    return 0x6E6F6974706163;
  }
}

uint64_t sub_21DE6EAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737463656A626FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE6EBC0(uint64_t a1)
{
  v2 = sub_21DE70178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE6EBFC(uint64_t a1)
{
  v2 = sub_21DE70178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE6EC38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE6EC84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE6ECEC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21DE6ED38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21DE6ED8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE6EDD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

unint64_t sub_21DE6EE2C()
{
  v1 = (*(*v0 + 96))();
  v14 = sub_21DEBCAD8(0x6E6F6974706163, 0xE700000000000000, v1, v2);
  result = (*(*v0 + 120))();
  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v9 = sub_21DEBCBBC();
    v10 = sub_21DEBCBC4(v9, 0, 0xE000000000000000);
    v12 = v11;

    v13 = sub_21DEBCAD8(0x6A624F656E656373, 0xEC00000073746365, v10, v12);
    MEMORY[0x223D4B2A0](v13);

    return v14;
  }

  result = sub_21DEC7400();
  v5 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D4B690](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      ++v6;
      v8 = (*(*v7 + 184))();
      MEMORY[0x223D4B2A0](v8);

      MEMORY[0x223D4B2A0](10, 0xE100000000000000);
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

BOOL sub_21DE6F048()
{
  v1 = (*(*v0 + 120))();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_21DEC7400();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D4B690](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*v7 + 176))();

    v5 = v6 + 1;
  }

  while ((v8 & 1) == 0);

  return v4 != v6;
}

uint64_t sub_21DE6F174()
{
  v0 = sub_21DEC66F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_21DEC6730();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21DEC6720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FE8, &unk_21DECD590);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_21DED0150;
  sub_21DEC66E0();
  sub_21DEC66D0();
  sub_21DE70268(&unk_280F7AB60, 255, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FF0, &qword_21DED0190);
  sub_21DE6884C(&qword_280F7A6E0, &qword_27CE93FF0, &qword_21DED0190);
  sub_21DEC7280();
  sub_21DEC6700();
  type metadata accessor for StructuredText();
  sub_21DE70268(&qword_27CE93FE0, v8, type metadata accessor for StructuredText);
  v9 = sub_21DEC6710();

  return v9;
}

void *StructuredText.__allocating_init(caption:sceneObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *StructuredText.init(caption:sceneObjects:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t StructuredText.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  StructuredText.init(from:)(a1);
  return v2;
}

void *StructuredText.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942C8, &qword_21DED0198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE70178();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for StructuredText();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v29) = 0;
    v11 = sub_21DEC74A0();
    v13 = v12;
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xE000000000000000;
    if (v12)
    {
      v15 = v12;
    }

    v1[2] = v14;
    v1[3] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942D8, &qword_21DED01A0);
    v28 = 1;
    sub_21DE701CC(&qword_27CE942E0, &qword_27CE942E8);

    sub_21DEC74E0();
    if (v29)
    {
      v1[4] = v29;
      if (v13)
      {
LABEL_12:

        (*(v6 + 8))(v9, v5);
        goto LABEL_9;
      }
    }

    else
    {
      v1[4] = MEMORY[0x277D84F90];
      v30 = v1 + 4;
      v17 = sub_21DEA4260(a1);
      v18 = MEMORY[0x277D84F90];
      if (v17)
      {
        v18 = v17;
      }

      v27 = v18;
      v19 = v30;
      swift_beginAccess();
      v20 = *v19;
      *v19 = v27;

      if (v13)
      {
        goto LABEL_12;
      }
    }

    v21 = sub_21DEA43DC(a1);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    (*(v6 + 8))(v9, v5);
    swift_beginAccess();
    v25 = v3[3];
    v3[2] = v23;
    v3[3] = v24;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE6F7F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942F0, &qword_21DED01A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE70178();
  v11 = sub_21DEC7810();
  (*(*v3 + 96))(v11);
  LOBYTE(v28) = 0;
  sub_21DEC7590();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  v26 = v6;

  v14 = (*(*v3 + 120))(v13);
  v15 = v14;
  v28 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_18;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_5:
    v23[1] = 0;
    v24 = v9;
    v25 = v5;
    v17 = 0;
    v5 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D4B690](v17, v15);
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v20 = v28;
          v9 = v24;
          v5 = v25;
          goto LABEL_20;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          v16 = sub_21DEC7400();
          if (!v16)
          {
            break;
          }

          goto LABEL_5;
        }

        v9 = *(v15 + 8 * v17 + 32);

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_15;
        }
      }

      if ((*(*v9 + 176))())
      {
        sub_21DEC7380();
        v19 = *(v28 + 16);
        sub_21DEC73A0();
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v17;
      if (v18 == v16)
      {
        goto LABEL_16;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_20:

  v27 = 1;
  if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = sub_21DEC7400();
    v21 = v26;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v21 = v26;
  if (*(v20 + 16))
  {
LABEL_23:
    v28 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942D8, &qword_21DED01A0);
    sub_21DE701CC(&qword_27CE942F8, &qword_27CE94300);
    sub_21DEC75D0();
  }

LABEL_24:
  (*(v21 + 8))(v9, v5);
}

uint64_t StructuredText.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t StructuredText.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21DE6FC04@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE6FCC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852403064 && a2 == 0xE400000000000000;
  if (v3 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852403065 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2019650936 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2019650937 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21DE6FE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646E756F7267 && a2 == 0xE900000000000067 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEB00000000746E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21DE6FF40()
{
  result = qword_27CE94278;
  if (!qword_27CE94278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94278);
  }

  return result;
}

unint64_t sub_21DE6FFB8()
{
  result = qword_27CE94280;
  if (!qword_27CE94280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94280);
  }

  return result;
}

unint64_t sub_21DE7000C()
{
  result = qword_27CE942A8;
  if (!qword_27CE942A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942A8);
  }

  return result;
}

unint64_t sub_21DE70060()
{
  result = qword_27CE942B0;
  if (!qword_27CE942B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942B0);
  }

  return result;
}

uint64_t sub_21DE700B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94288, &qword_21DED0178);
    sub_21DE70268(a2, 255, type metadata accessor for TextContentItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DE70178()
{
  result = qword_27CE942D0;
  if (!qword_27CE942D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942D0);
  }

  return result;
}

uint64_t sub_21DE701CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE942D8, &qword_21DED01A0);
    sub_21DE70268(a2, v5, type metadata accessor for SceneObject);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DE70268(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_21DE702B4()
{
  result = qword_27CE94308;
  if (!qword_27CE94308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94308);
  }

  return result;
}

unint64_t sub_21DE7030C()
{
  result = qword_27CE94310;
  if (!qword_27CE94310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94310);
  }

  return result;
}

unint64_t sub_21DE70364()
{
  result = qword_27CE94318;
  if (!qword_27CE94318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94318);
  }

  return result;
}

unint64_t sub_21DE703BC()
{
  result = qword_27CE94320;
  if (!qword_27CE94320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94320);
  }

  return result;
}

unint64_t sub_21DE70458()
{
  result = qword_27CE94338;
  if (!qword_27CE94338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94338);
  }

  return result;
}

unint64_t sub_21DE704B0()
{
  result = qword_27CE94340;
  if (!qword_27CE94340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94340);
  }

  return result;
}

unint64_t sub_21DE70508()
{
  result = qword_27CE94348;
  if (!qword_27CE94348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94348);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneObject.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneObject.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DE70AEC()
{
  result = qword_27CE9B150[0];
  if (!qword_27CE9B150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9B150);
  }

  return result;
}

unint64_t sub_21DE70B44()
{
  result = qword_27CE9B260;
  if (!qword_27CE9B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE9B260);
  }

  return result;
}

unint64_t sub_21DE70B9C()
{
  result = qword_27CE9B268[0];
  if (!qword_27CE9B268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE9B268);
  }

  return result;
}

unint64_t sub_21DE70BF0()
{
  result = qword_27CE94350;
  if (!qword_27CE94350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94350);
  }

  return result;
}

uint64_t sub_21DE70C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_21DEC69D0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = sub_21DEC6910();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *MEMORY[0x277CC9968];
  v26 = v4[13];
  v26(v7, v19, v3);
  sub_21DEC69A0();
  v25 = v4[1];
  v25(v7, v3);
  v27 = *(v15 + 48);
  if (v27(v13, 1, v14) == 1)
  {
    sub_21DE5CD00(v13, &qword_27CE94358, &qword_21DED08A0);
    return (*(v15 + 16))(v29, a1, v14);
  }

  else
  {
    v24 = a1;
    v23 = *(v15 + 32);
    v23(v18, v13, v14);
    v26(v7, *MEMORY[0x277CC99A8], v3);
    v21 = v28;
    sub_21DEC69A0();
    v25(v7, v3);
    (*(v15 + 8))(v18, v14);
    v22 = v27;
    if (v27(v21, 1, v14) == 1)
    {
      (*(v15 + 16))(v29, v24, v14);
      result = v22(v21, 1, v14);
      if (result != 1)
      {
        return sub_21DE5CD00(v21, &qword_27CE94358, &qword_21DED08A0);
      }
    }

    else
    {
      return (v23)(v29, v21, v14);
    }
  }

  return result;
}

void (*sub_21DE71044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>))(uint64_t *, void)
{
  v191 = a4;
  v192 = a1;
  v190 = a5;
  v187 = sub_21DEC69D0();
  v189 = *(v187 - 8);
  v7 = *(v189 + 8);
  MEMORY[0x28223BE20](v187);
  v186 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v185 = (&v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v184 = (&v166 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v182 = &v166 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v176 = &v166 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v183 = (&v166 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v180 = &v166 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v181 = &v166 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v175 = &v166 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v166 - v27;
  v29 = sub_21DEC6910();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  v32 = MEMORY[0x28223BE20](v29);
  v179 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v178 = &v166 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v174 = &v166 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v170 = &v166 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v177 = &v166 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v172 = &v166 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v173 = &v166 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v169 = &v166 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v166 - v48;
  v50 = sub_21DEC69F0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 8);
  MEMORY[0x28223BE20](v50);
  v54 = &v166 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = a2;
  v204 = a3;
  v55 = a3;
  v56 = v191;
  v205 = v191;
  sub_21DEC69B0();
  sub_21DE75554(a2, v55, v56, &v200);
  v57 = v201;
  v58 = v202;
  __swift_project_boxed_opaque_existential_1(&v200, v201);
  (*(v58 + 80))(v57, v58);
  v59 = v29;
  v60 = *(v30 + 6);
  if (v60(v28, 1, v59) == 1)
  {
    (*(v51 + 1))(v54, v50);
    sub_21DE5CD00(v28, &qword_27CE94358, &qword_21DED08A0);
    (*(v30 + 7))(v190, 1, 1, v59);
    return __swift_destroy_boxed_opaque_existential_0(&v200);
  }

  v167 = v60;
  v168 = v50;
  v61 = v30;
  v62 = *(v30 + 4);
  v191 = v49;
  v63 = v49;
  v188 = v59;
  v64 = v62;
  v171 = v30 + 32;
  (v62)(v63, v28, v59);
  v65 = EventDateComponents.year.getter();
  v66 = EventDateComponents.month.getter();
  v67 = EventDateComponents.day.getter();
  v68 = v67;
  if (v65 && v66 && v67)
  {
    (*(v51 + 1))(v54, v168);
    v69 = v190;
    v70 = v190;
    v71 = v191;
LABEL_13:
    v74 = v188;
    (v64)(v70, v71, v188);
    goto LABEL_63;
  }

  v72 = v191;
  sub_21DEC68E0();
  if (v73 >= 0.0)
  {
    (*(v51 + 1))(v54, v168);
    v69 = v190;
    v70 = v190;
    v71 = v72;
    goto LABEL_13;
  }

  v74 = v188;
  if (v65)
  {
    if (v66)
    {
      v75 = v51;
      if (v68)
      {
        (*(v51 + 1))(v54, v168, v187);
        v69 = v190;
        (v64)(v190, v191, v74);
LABEL_63:
        (v61[7])(v69, 0, 1, v74);
        return __swift_destroy_boxed_opaque_existential_0(&v200);
      }

      v166 = v54;
      sub_21DE5CC9C(&v200, &v197);
      v99 = v198;
      v100 = v199;
      __swift_mutable_project_boxed_opaque_existential_1(&v197, v198);
      result = (*(v100 + 72))(&v194, v99, v100);
      if (!__OFADD__(*v101, 1))
      {
        v80 = v64;
        ++*v101;
        result(&v194, 0);
        v102 = v198;
        v103 = v199;
        __swift_project_boxed_opaque_existential_1(&v197, v198);
        v93 = v185;
        (*(v103 + 80))(v102, v103);
        v74 = v188;
        v104 = v167(v93, 1, v188);
        v85 = v191;
        if (v104 == 1)
        {
          goto LABEL_26;
        }

        v94 = v179;
        (v64)(v179, v93, v74);
        v95 = v74;
        sub_21DEC68E0();
        v130 = v131;
        v75[1](v166, v168);
LABEL_40:
        v98 = v61[1];
        v69 = v190;
        if (v130 >= 0.0)
        {
LABEL_41:
          v98(v85, v95);
          v132 = v69;
          v133 = v94;
LABEL_42:
          v80(v132, v133, v95);
          (v61[7])(v69, 0, 1, v95);
LABEL_43:
          __swift_destroy_boxed_opaque_existential_0(&v197);
          return __swift_destroy_boxed_opaque_existential_0(&v200);
        }

LABEL_23:
        v98(v94, v95);
        v74 = v95;
LABEL_28:
        __swift_destroy_boxed_opaque_existential_0(&v197);
LABEL_62:
        v80(v69, v85, v74);
        goto LABEL_63;
      }

      goto LABEL_71;
    }

    v75 = v51;
    v166 = v54;
    if (v68)
    {
      sub_21DE5CC9C(&v200, &v197);
      v88 = v198;
      v89 = v199;
      __swift_mutable_project_boxed_opaque_existential_1(&v197, v198);
      result = (*(v89 + 48))(&v194, v88, v89);
      v85 = v191;
      if (!__OFADD__(*v90, 1))
      {
        v80 = v64;
        ++*v90;
        result(&v194, 0);
        v91 = v198;
        v92 = v199;
        __swift_project_boxed_opaque_existential_1(&v197, v198);
        v93 = v184;
        (*(v92 + 80))(v91, v92);
        v74 = v188;
        if (v167(v93, 1, v188) == 1)
        {
LABEL_26:
          v75[1](v166, v168);
          v87 = v93;
          goto LABEL_27;
        }

        v94 = v178;
        (v64)(v178, v93, v74);
        v95 = v74;
        sub_21DEC68E0();
        v97 = v96;
        v75[1](v166, v168);
        v98 = v61[1];
        v69 = v190;
        if (v97 > 0.0)
        {
          goto LABEL_41;
        }

        goto LABEL_23;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v184 = v51;
    v185 = v30;
    v123 = *MEMORY[0x277CC9968];
    v124 = v187;
    v125 = v186;
    v126 = v189;
    v183 = *(v189 + 13);
    v183();
    v127 = v182;
    sub_21DEC69A0();
    v128 = *(v126 + 1);
    v128(v125, v124);
    v74 = v188;
    if (v167(v127, 1, v188) == 1)
    {
      v184[1](v166, v168);
      sub_21DE5CD00(v127, &qword_27CE94358, &qword_21DED08A0);
      v69 = v190;
      v61 = v185;
      (v64)(v190, v191, v74);
      goto LABEL_63;
    }

    v136 = v174;
    v189 = v64;
    (v64)(v174, v127, v74);
    v137 = v186;
    v138 = v187;
    (v183)(v186, *MEMORY[0x277CC9988], v187);
    v139 = v166;
    v140 = sub_21DEC69E0();
    v128(v137, v138);
    v141 = v201;
    v142 = v202;
    __swift_project_boxed_opaque_existential_1(&v200, v201);
    if (v140 == (*(v142 + 8))(v141, v142))
    {
      sub_21DEC68E0();
      v144 = v143;
      (*(v51 + 1))(v139, v168);
      v61 = v185;
      v145 = v185[1];
      v69 = v190;
      v146 = v191;
      v74 = v188;
      if (v144 >= 0.0)
      {
        v145(v191, v188);
        (v189)(v69, v136, v74);
      }

      else
      {
        v145(v136, v188);
        (v189)(v69, v146, v74);
      }

      goto LABEL_63;
    }

    v61 = v185;
    v185[1](v136, v74);
    (*(v51 + 1))(v139, v168);
    v69 = v190;
    v80 = v189;
    goto LABEL_61;
  }

  if (!v66)
  {
    v105 = v54;
    v106 = *(v189 + 13);
    v107 = (v189 + 8);
    if (v68)
    {
      v108 = v186;
      v109 = v187;
      v106(v186, *MEMORY[0x277CC9998], v187);
      v110 = v181;
      v111 = v105;
      sub_21DEC69A0();
      (*v107)(v108, v109);
      v74 = v188;
      v80 = v64;
      if (v167(v110, 1, v188) != 1)
      {
        v112 = v173;
        (v64)(v173, v110, v74);
        sub_21DEC68E0();
        v114 = v113;
        (*(v51 + 1))(v111, v168);
        v115 = *(v30 + 1);
        v69 = v190;
        if (v114 >= 0.0)
        {
          v115(v191, v74);
          (v64)(v69, v112, v74);
          (*(v30 + 7))(v69, 0, 1, v74);
          return __swift_destroy_boxed_opaque_existential_0(&v200);
        }

        v115(v112, v74);
        goto LABEL_61;
      }
    }

    else
    {
      v134 = v186;
      v135 = v187;
      v106(v186, *MEMORY[0x277CC9968], v187);
      v110 = v175;
      v111 = v105;
      sub_21DEC69A0();
      (*v107)(v134, v135);
      v74 = v188;
      v80 = v64;
      if (v167(v110, 1, v188) != 1)
      {
        v162 = v169;
        (v64)(v169, v110, v74);
        sub_21DEC68E0();
        v164 = v163;
        (*(v51 + 1))(v111, v168);
        v165 = v61[1];
        v69 = v190;
        if (v164 >= 0.0)
        {
          v165(v191, v74);
          (v64)(v69, v162, v74);
          (v61[7])(v69, 0, 1, v74);
          return __swift_destroy_boxed_opaque_existential_0(&v200);
        }

        v165(v162, v74);
        goto LABEL_61;
      }
    }

    (*(v51 + 1))(v111, v168);
    sub_21DE5CD00(v110, &qword_27CE94358, &qword_21DED08A0);
    v69 = v190;
LABEL_61:
    v85 = v191;
    goto LABEL_62;
  }

  v166 = v54;
  if (v68)
  {
    sub_21DE5CC9C(&v200, &v197);
    v76 = v198;
    v77 = v199;
    __swift_mutable_project_boxed_opaque_existential_1(&v197, v198);
    result = (*(v77 + 24))(&v194, v76, v77);
    if (!__OFADD__(*v79, 1))
    {
      v80 = v64;
      ++*v79;
      result(&v194, 0);
      v81 = v198;
      v82 = v199;
      __swift_project_boxed_opaque_existential_1(&v197, v198);
      v83 = v183;
      (*(v82 + 80))(v81, v82);
      v74 = v188;
      v84 = v167(v83, 1, v188);
      v85 = v191;
      v86 = v168;
      if (v84 == 1)
      {
        (*(v51 + 1))(v166, v168);
        v87 = v83;
LABEL_27:
        sub_21DE5CD00(v87, &qword_27CE94358, &qword_21DED08A0);
        v69 = v190;
        goto LABEL_28;
      }

      v94 = v177;
      (v64)(v177, v83, v74);
      v95 = v74;
      sub_21DEC68E0();
      v130 = v129;
      (*(v51 + 1))(v166, v86);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_70;
  }

  sub_21DE5CC9C(&v200, &v197);
  v116 = v198;
  v117 = v199;
  __swift_mutable_project_boxed_opaque_existential_1(&v197, v198);
  result = (*(v117 + 72))(&v194, v116, v117);
  if (__OFADD__(*v118, 1))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v80 = v64;
  v119 = v51;
  ++*v118;
  result(&v194, 0);
  v120 = v198;
  v121 = v199;
  __swift_project_boxed_opaque_existential_1(&v197, v198);
  v122 = v180;
  (*(v121 + 80))(v120, v121);
  v95 = v188;
  if (v167(v122, 1, v188) == 1)
  {
    sub_21DE5CD00(v122, &qword_27CE94358, &qword_21DED08A0);
    v85 = v191;
  }

  else
  {
    v147 = v172;
    (v64)(v172, v122, v95);
    sub_21DEC68E0();
    v148 = *(v30 + 1);
    v85 = v191;
    if (v149 >= 0.0)
    {
      v148(v191, v95);
      v119[1](v166, v168);
      v133 = v147;
      v69 = v190;
      v132 = v190;
      goto LABEL_42;
    }

    v148(v147, v95);
  }

  sub_21DE5CC9C(&v200, &v194);
  v150 = v195;
  v151 = v196;
  __swift_mutable_project_boxed_opaque_existential_1(&v194, v195);
  result = (*(v151 + 24))(v193, v150, v151);
  if (!__OFADD__(*v152, 1))
  {
    ++*v152;
    result(v193, 0);
    v153 = v195;
    v154 = v196;
    __swift_mutable_project_boxed_opaque_existential_1(&v194, v195);
    (*(v154 + 64))(1, v153, v154);
    v155 = v195;
    v156 = v196;
    __swift_project_boxed_opaque_existential_1(&v194, v195);
    v157 = v176;
    (*(v156 + 80))(v155, v156);
    v74 = v188;
    if (v167(v157, 1, v188) == 1)
    {
      v119[1](v166, v168);
      sub_21DE5CD00(v157, &qword_27CE94358, &qword_21DED08A0);
      v69 = v190;
    }

    else
    {
      v158 = v170;
      (v64)(v170, v157, v74);
      sub_21DEC68E0();
      v160 = v159;
      v119[1](v166, v168);
      v161 = v61[1];
      v69 = v190;
      if (v160 >= 0.0)
      {
        v161(v85, v74);
        (v64)(v69, v158, v74);
        (v61[7])(v69, 0, 1, v74);
        __swift_destroy_boxed_opaque_existential_0(&v194);
        goto LABEL_43;
      }

      v161(v158, v74);
    }

    __swift_destroy_boxed_opaque_existential_0(&v194);
    goto LABEL_28;
  }

LABEL_73:
  __break(1u);
  return result;
}

void (*sub_21DE72744@<X0>(uint64_t a1@<X0>, char *a2@<X8>))(uint64_t *, void)
{
  v191 = a2;
  v186 = sub_21DEC69D0();
  v185 = *(v186 - 8);
  v4 = *(v185 + 8);
  MEMORY[0x28223BE20](v186);
  v187 = v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v184 = (v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v183 = (v165 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v181 = v165 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v174 = v165 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v182 = v165 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v178 = v165 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v179 = v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v173 = v165 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v165 - v24;
  v26 = sub_21DEC6910();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v177 = v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v176 = v165 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v180 = v165 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v170 = v165 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v175 = v165 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v171 = v165 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v172 = v165 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v169 = v165 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = v165 - v45;
  v47 = sub_21DEC69F0();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = v165 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v189 = a1;
  v190 = v2;
  sub_21DE75AB0(&v199);
  v52 = v200;
  v53 = v201;
  __swift_project_boxed_opaque_existential_1(&v199, v200);
  v54 = v52;
  v55 = v27;
  (*(v53 + 80))(v54, v53);
  v56 = v27 + 48;
  v57 = *(v27 + 48);
  if (v57(v25, 1, v26) == 1)
  {
    (*(v48 + 8))(v51, v47);
    sub_21DE5CD00(v25, &qword_27CE94358, &qword_21DED08A0);
    (*(v55 + 56))(v191, 1, 1, v26);
    return __swift_destroy_boxed_opaque_existential_0(&v199);
  }

  v165[0] = v57;
  v165[1] = v56;
  v166 = v47;
  v167 = v48;
  v58 = v55;
  v59 = *(v55 + 32);
  v188 = v46;
  v60 = v46;
  v61 = v26;
  v62 = v26;
  v63 = v59;
  v168 = v55 + 32;
  v59(v60, v25, v62);
  v64 = EventDateTimeComponents.year.getter();
  v65 = EventDateTimeComponents.month.getter();
  v66 = EventDateTimeComponents.day.getter();
  v67 = v66;
  if (v64 && v65 && v66)
  {
    (*(v167 + 8))(v51, v166);
    v68 = v191;
    v69 = v191;
    v70 = v188;
LABEL_13:
    v63(v69, v70, v61);
    (*(v58 + 56))(v68, 0, 1, v61);
    return __swift_destroy_boxed_opaque_existential_0(&v199);
  }

  v71 = v188;
  sub_21DEC68E0();
  v72 = v51;
  if (v73 >= 0.0)
  {
    (*(v167 + 8))(v51, v166);
    v68 = v191;
    v69 = v191;
    v70 = v71;
    goto LABEL_13;
  }

  if (v64)
  {
    v74 = v58;
    v75 = v61;
    v76 = v63;
    if (v65)
    {
      if (v67)
      {
        (*(v167 + 8))(v72, v166);
        v77 = v191;
        v78 = v188;
        goto LABEL_45;
      }

      sub_21DE5CC9C(&v199, &v196);
      v101 = v197;
      v102 = v198;
      __swift_mutable_project_boxed_opaque_existential_1(&v196, v197);
      result = (*(v102 + 72))(&v193, v101, v102);
      v93 = v167;
      if (!__OFADD__(*v103, 1))
      {
        ++*v103;
        result(&v193, 0);
        v104 = v197;
        v105 = v198;
        __swift_project_boxed_opaque_existential_1(&v196, v197);
        v96 = v184;
        (*(v105 + 80))(v104, v105);
        if ((v165[0])(v96, 1, v75) == 1)
        {
          goto LABEL_26;
        }

        v97 = v177;
        (v63)();
        sub_21DEC68E0();
        v129 = v130;
        (*(v93 + 8))(v72, v166);
LABEL_39:
        v100 = *(v74 + 8);
        v77 = v191;
        v78 = v188;
        if (v129 >= 0.0)
        {
LABEL_40:
          v100(v78, v75);
LABEL_41:
          v76(v77, v97, v75);
          (*(v74 + 56))(v77, 0, 1, v75);
LABEL_42:
          __swift_destroy_boxed_opaque_existential_0(&v196);
          return __swift_destroy_boxed_opaque_existential_0(&v199);
        }

LABEL_23:
        v100(v97, v75);
LABEL_28:
        __swift_destroy_boxed_opaque_existential_0(&v196);
        goto LABEL_45;
      }

      goto LABEL_74;
    }

    if (v67)
    {
      sub_21DE5CC9C(&v199, &v196);
      v90 = v197;
      v91 = v198;
      __swift_mutable_project_boxed_opaque_existential_1(&v196, v197);
      result = (*(v91 + 48))(&v193, v90, v91);
      v93 = v167;
      if (!__OFADD__(*v92, 1))
      {
        ++*v92;
        result(&v193, 0);
        v94 = v197;
        v95 = v198;
        __swift_project_boxed_opaque_existential_1(&v196, v197);
        v96 = v183;
        (*(v95 + 80))(v94, v95);
        if ((v165[0])(v96, 1, v75) == 1)
        {
LABEL_26:
          (*(v93 + 8))(v72, v166);
          v89 = v96;
          goto LABEL_27;
        }

        v97 = v176;
        (v63)();
        sub_21DEC68E0();
        v99 = v98;
        (*(v93 + 8))(v72, v166);
        v100 = *(v74 + 8);
        v77 = v191;
        v78 = v188;
        if (v99 > 0.0)
        {
          goto LABEL_40;
        }

        goto LABEL_23;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v190 = v63;
    v121 = *MEMORY[0x277CC9968];
    v122 = v185;
    v123 = v186;
    v124 = v187;
    v184 = *(v185 + 13);
    v184();
    v125 = v181;
    sub_21DEC69A0();
    v126 = v125;
    v127 = *(v122 + 1);
    v127(v124, v123);
    if ((v165[0])(v126, 1, v61) == 1)
    {
      (*(v167 + 8))(v72, v166);
      sub_21DE5CD00(v126, &qword_27CE94358, &qword_21DED08A0);
    }

    else
    {
      v185 = v127;
      v190(v180, v126, v61);
      (v184)(v124, *MEMORY[0x277CC9988], v123);
      v140 = sub_21DEC69E0();
      v185(v124, v123);
      v141 = v200;
      v142 = v201;
      __swift_project_boxed_opaque_existential_1(&v199, v200);
      if (v140 == (*(v142 + 8))(v141, v142))
      {
        v143 = v180;
        sub_21DEC68E0();
        v145 = v144;
        (*(v167 + 8))(v72, v166);
        v146 = *(v74 + 8);
        v77 = v191;
        v78 = v188;
        if (v145 >= 0.0)
        {
          v146(v188, v75);
          v190(v77, v143, v75);
          goto LABEL_47;
        }

        v146(v143, v75);
        goto LABEL_67;
      }

      (*(v74 + 8))(v180, v75);
      (*(v167 + 8))(v72, v166);
    }

    v77 = v191;
    v78 = v188;
LABEL_67:
    v76 = v190;
    goto LABEL_45;
  }

  if (!v65)
  {
    v106 = *(v185 + 13);
    v107 = (v185 + 8);
    v74 = v58;
    v75 = v61;
    if (v67)
    {
      v108 = v187;
      v109 = v186;
      v106(v187, *MEMORY[0x277CC9998], v186);
      v110 = v179;
      v78 = v188;
      sub_21DEC69A0();
      (*v107)(v108, v109);
      v111 = (v165[0])(v110, 1, v75);
      v112 = v167;
      v113 = v166;
      if (v111 != 1)
      {
        v135 = v172;
        v136 = v110;
        v76 = v63;
        v63(v172, v136, v75);
        sub_21DEC68E0();
        v138 = v137;
        (*(v112 + 8))(v72, v113);
        v139 = *(v74 + 8);
        v77 = v191;
        if (v138 >= 0.0)
        {
          v139(v78, v75);
          v133 = v77;
          v134 = v135;
          goto LABEL_46;
        }

        v139(v135, v75);
LABEL_45:
        v133 = v77;
        v134 = v78;
LABEL_46:
        v76(v133, v134, v75);
LABEL_47:
        (*(v74 + 56))(v77, 0, 1, v75);
        return __swift_destroy_boxed_opaque_existential_0(&v199);
      }
    }

    else
    {
      v131 = v187;
      v132 = v186;
      v106(v187, *MEMORY[0x277CC9968], v186);
      v110 = v173;
      v78 = v188;
      sub_21DEC69A0();
      (*v107)(v131, v132);
      if ((v165[0])(v110, 1, v75) != 1)
      {
        v161 = v169;
        v63(v169, v110, v75);
        sub_21DEC68E0();
        v163 = v162;
        (*(v167 + 8))(v72, v166);
        v164 = *(v74 + 8);
        v77 = v191;
        if (v163 >= 0.0)
        {
          v164(v78, v75);
          v63(v77, v161, v75);
          goto LABEL_47;
        }

        v164(v161, v75);
        v76 = v63;
        goto LABEL_45;
      }
    }

    (*(v167 + 8))(v72, v166);
    sub_21DE5CD00(v110, &qword_27CE94358, &qword_21DED08A0);
    v77 = v191;
    v76 = v63;
    goto LABEL_45;
  }

  v74 = v58;
  v75 = v61;
  if (v67)
  {
    sub_21DE5CC9C(&v199, &v196);
    v79 = v197;
    v80 = v198;
    __swift_mutable_project_boxed_opaque_existential_1(&v196, v197);
    result = (*(v80 + 24))(&v193, v79, v80);
    if (!__OFADD__(*v82, 1))
    {
      v76 = v63;
      ++*v82;
      result(&v193, 0);
      v83 = v197;
      v84 = v198;
      __swift_project_boxed_opaque_existential_1(&v196, v197);
      v85 = v182;
      (*(v84 + 80))(v83, v84);
      v86 = (v165[0])(v85, 1, v75);
      v87 = v167;
      v88 = v166;
      if (v86 == 1)
      {
        (*(v167 + 8))(v72, v166);
        v89 = v85;
LABEL_27:
        sub_21DE5CD00(v89, &qword_27CE94358, &qword_21DED08A0);
        v77 = v191;
        v78 = v188;
        goto LABEL_28;
      }

      v97 = v175;
      v63(v175, v85, v75);
      sub_21DEC68E0();
      v129 = v128;
      (*(v87 + 8))(v72, v88);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_73;
  }

  sub_21DE5CC9C(&v199, &v196);
  v114 = v197;
  v115 = v198;
  __swift_mutable_project_boxed_opaque_existential_1(&v196, v197);
  result = (*(v115 + 72))(&v193, v114, v115);
  if (__OFADD__(*v116, 1))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v76 = v63;
  ++*v116;
  result(&v193, 0);
  v117 = v197;
  v118 = v198;
  __swift_project_boxed_opaque_existential_1(&v196, v197);
  v119 = v178;
  (*(v118 + 80))(v117, v118);
  if ((v165[0])(v119, 1, v61) == 1)
  {
    sub_21DE5CD00(v119, &qword_27CE94358, &qword_21DED08A0);
    v120 = v167;
  }

  else
  {
    v97 = v171;
    v63(v171, v119, v61);
    sub_21DEC68E0();
    v147 = *(v74 + 8);
    v120 = v167;
    if (v148 >= 0.0)
    {
      v147(v188, v61);
      (*(v120 + 8))(v72, v166);
      v77 = v191;
      goto LABEL_41;
    }

    v147(v97, v61);
  }

  sub_21DE5CC9C(&v199, &v193);
  v149 = v194;
  v150 = v195;
  __swift_mutable_project_boxed_opaque_existential_1(&v193, v194);
  result = (*(v150 + 24))(v192, v149, v150);
  if (!__OFADD__(*v151, 1))
  {
    ++*v151;
    result(v192, 0);
    v152 = v194;
    v153 = v195;
    __swift_mutable_project_boxed_opaque_existential_1(&v193, v194);
    (*(v153 + 64))(1, v152, v153);
    v154 = v194;
    v155 = v195;
    __swift_project_boxed_opaque_existential_1(&v193, v194);
    v156 = v174;
    (*(v155 + 80))(v154, v155);
    if ((v165[0])(v156, 1, v75) == 1)
    {
      (*(v120 + 8))(v72, v166);
      sub_21DE5CD00(v156, &qword_27CE94358, &qword_21DED08A0);
      v77 = v191;
      v78 = v188;
    }

    else
    {
      v157 = v170;
      (v63)();
      sub_21DEC68E0();
      v159 = v158;
      (*(v120 + 8))(v72, v166);
      v160 = *(v74 + 8);
      v77 = v191;
      v78 = v188;
      if (v159 >= 0.0)
      {
        v160(v188, v75);
        v63(v77, v157, v75);
        (*(v74 + 56))(v77, 0, 1, v75);
        __swift_destroy_boxed_opaque_existential_0(&v193);
        goto LABEL_42;
      }

      v160(v157, v75);
    }

    __swift_destroy_boxed_opaque_existential_0(&v193);
    goto LABEL_28;
  }

LABEL_76:
  __break(1u);
  return result;
}

void (*sub_21DE73DA4@<X0>(NSObject *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v208 = a4;
  v201 = sub_21DEC69D0();
  v200 = *(v201 - 8);
  v8 = *(v200 + 64);
  MEMORY[0x28223BE20](v201);
  v203 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v199 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v198 = &v180 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v196 = &v180 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v197 = &v180 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v180 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v193 = &v180 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v194 = &v180 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v188 = &v180 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v180 - v28;
  v30 = sub_21DEC6910();
  v209 = *(v30 - 8);
  v31 = *(v209 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v192 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v191 = &v180 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v195 = &v180 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v190 = &v180 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v185 = &v180 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v186 = &v180 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v187 = &v180 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v184 = &v180 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v180 - v48;
  v50 = sub_21DEC69F0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v180 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v205 = a1;
  v206 = a2;
  v55 = a2;
  v56 = a3;
  v207 = v4;
  sub_21DE76128(a1, v54, v55, a3, &v217);
  v57 = v218;
  v58 = v219;
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v59 = v57;
  v60 = v209;
  (*(v58 + 80))(v59, v58);
  v61 = *(v60 + 48);
  if (v61(v29, 1, v30) == 1)
  {
    (*(v51 + 8))(v54, v50);
    sub_21DE5CD00(v29, &qword_27CE94358, &qword_21DED08A0);
    (*(v60 + 56))(v208, 1, 1, v30);
    return __swift_destroy_boxed_opaque_existential_0(&v217);
  }

  v181 = v61;
  v182 = v60 + 48;
  v183 = v54;
  v62 = *(v60 + 32);
  v63 = v49;
  v204 = v30;
  v64 = v30;
  v65 = v62;
  v202 = v60 + 32;
  (v62)(v49, v29, v64);
  v66 = v206;
  v67 = v56[1](v206, v56);
  v68 = v56[4](v66, v56);
  v69 = v56[7](v66, v56);
  v70 = v69;
  if (v67 && v68 && v69 || (v71 = v49, sub_21DEC68E0(), v72 >= 0.0))
  {
    (*(v51 + 8))(v183, v50);
    v78 = v208;
    v81 = v204;
    (v65)(v208, v63, v204);
    v79 = v209;
    goto LABEL_14;
  }

  v73 = v204;
  v74 = v65;
  v75 = v51;
  if (v67)
  {
    v207 = v74;
    v76 = v50;
    v77 = v183;
    if (v68)
    {
      if (v70)
      {
        (*(v75 + 8))(v183, v50);
LABEL_11:
        v78 = v208;
        v79 = v209;
LABEL_12:
        v80 = v207;
        goto LABEL_60;
      }

      sub_21DE5CC9C(&v217, &v214);
      v104 = v215;
      v105 = v216;
      __swift_mutable_project_boxed_opaque_existential_1(&v214, v215);
      result = (*(v105 + 72))(&v211, v104, v105);
      if (!__OFADD__(*v106, 1))
      {
        ++*v106;
        result(&v211, 0);
        v107 = v215;
        v108 = v216;
        __swift_project_boxed_opaque_existential_1(&v214, v215);
        v97 = v199;
        (*(v108 + 80))(v107, v108);
        v73 = v204;
        if (v181(v97, 1, v204) == 1)
        {
          goto LABEL_27;
        }

        v98 = v192;
        v135 = v97;
        v100 = v207;
        (v207)(v192, v135, v73);
        sub_21DEC68E0();
        v137 = v136;
        (*(v75 + 8))(v77, v50);
        v79 = v209;
        v103 = *(v209 + 8);
        v78 = v208;
        if (v137 < 0.0)
        {
          goto LABEL_39;
        }

LABEL_24:
        v103(v71, v73);
        (v100)(v78, v98, v73);
LABEL_54:
        (*(v79 + 56))(v78, 0, 1, v73);
LABEL_55:
        __swift_destroy_boxed_opaque_existential_0(&v214);
        return __swift_destroy_boxed_opaque_existential_0(&v217);
      }

      goto LABEL_74;
    }

    if (v70)
    {
      sub_21DE5CC9C(&v217, &v214);
      v92 = v215;
      v93 = v216;
      __swift_mutable_project_boxed_opaque_existential_1(&v214, v215);
      result = (*(v93 + 48))(&v211, v92, v93);
      if (!__OFADD__(*v94, 1))
      {
        ++*v94;
        result(&v211, 0);
        v95 = v215;
        v96 = v216;
        __swift_project_boxed_opaque_existential_1(&v214, v215);
        v97 = v198;
        (*(v96 + 80))(v95, v96);
        v73 = v204;
        if (v181(v97, 1, v204) == 1)
        {
LABEL_27:
          (*(v75 + 8))(v77, v50);
          sub_21DE5CD00(v97, &qword_27CE94358, &qword_21DED08A0);
          v78 = v208;
          v79 = v209;
          v80 = v207;
          goto LABEL_59;
        }

        v98 = v191;
        v99 = v97;
        v100 = v207;
        (v207)(v191, v99, v73);
        sub_21DEC68E0();
        v102 = v101;
        (*(v75 + 8))(v77, v50);
        v79 = v209;
        v103 = *(v209 + 8);
        v78 = v208;
        if (v102 <= 0.0)
        {
LABEL_39:
          v103(v98, v73);
          v80 = v100;
          goto LABEL_59;
        }

        goto LABEL_24;
      }

      goto LABEL_73;
    }

    v124 = *MEMORY[0x277CC9968];
    v125 = v200;
    v126 = v203;
    v127 = v201;
    v206 = *(v200 + 104);
    v206(v203, v124, v201);
    v128 = v196;
    sub_21DEC69A0();
    v129 = v128;
    v200 = *(v125 + 8);
    (v200)(v126, v127);
    v130 = v128;
    v73 = v204;
    if (v181(v130, 1, v204) == 1)
    {
      (*(v75 + 8))(v77, v76);
      sub_21DE5CD00(v129, &qword_27CE94358, &qword_21DED08A0);
      goto LABEL_11;
    }

    v199 = v76;
    (v207)(v195, v129, v73);
    v206(v126, *MEMORY[0x277CC9988], v127);
    v147 = sub_21DEC69E0();
    (v200)(v126, v127);
    v148 = v218;
    v149 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, v218);
    if (v147 != (*(v149 + 8))(v148, v149))
    {
      v176 = v77;
      v79 = v209;
      (*(v209 + 8))(v195, v73);
      (*(v75 + 8))(v176, v199);
      v78 = v208;
      goto LABEL_12;
    }

    v150 = v195;
    sub_21DEC68E0();
    v152 = v151;
    (*(v75 + 8))(v77, v199);
    v79 = v209;
    v153 = *(v209 + 8);
    v78 = v208;
    if (v152 < 0.0)
    {
      v73 = v204;
      v153(v150, v204);
      goto LABEL_12;
    }

    v81 = v204;
    v153(v71, v204);
    (v207)(v78, v150, v81);
LABEL_14:
    (*(v79 + 56))(v78, 0, 1, v81);
    return __swift_destroy_boxed_opaque_existential_0(&v217);
  }

  v80 = v74;
  v82 = v50;
  v83 = v183;
  v84 = v203;
  if (!v68)
  {
    v109 = *(v200 + 104);
    v110 = (v200 + 8);
    if (v70)
    {
      v111 = v201;
      v109(v203, *MEMORY[0x277CC9998], v201);
      v112 = v194;
      v113 = v84;
      sub_21DEC69A0();
      v114 = v112;
      (*v110)(v113, v111);
      v115 = v112;
      v73 = v204;
      v116 = v181(v115, 1, v204);
      v78 = v208;
      if (v116 != 1)
      {
        v143 = v187;
        (v80)(v187, v114, v73);
        sub_21DEC68E0();
        v145 = v144;
        (*(v75 + 8))(v83, v82);
        v79 = v209;
        v146 = *(v209 + 8);
        if (v145 >= 0.0)
        {
          v146(v71, v73);
          v170 = v78;
          v171 = v143;
LABEL_61:
          (v80)(v170, v171, v73);
          (*(v79 + 56))(v78, 0, 1, v73);
          return __swift_destroy_boxed_opaque_existential_0(&v217);
        }

        v146(v143, v73);
LABEL_60:
        v170 = v78;
        v171 = v71;
        goto LABEL_61;
      }

      (*(v75 + 8))(v83, v82);
      sub_21DE5CD00(v114, &qword_27CE94358, &qword_21DED08A0);
    }

    else
    {
      v138 = v201;
      v109(v203, *MEMORY[0x277CC9968], v201);
      v139 = v188;
      sub_21DEC69A0();
      v140 = v138;
      v141 = v139;
      (*v110)(v84, v140);
      v142 = v139;
      v73 = v204;
      if (v181(v142, 1, v204) != 1)
      {
        v172 = v184;
        (v80)(v184, v141, v73);
        sub_21DEC68E0();
        v174 = v173;
        (*(v75 + 8))(v83, v82);
        v79 = v209;
        v175 = *(v209 + 8);
        if (v174 >= 0.0)
        {
          v175(v71, v73);
          v179 = v208;
          (v80)(v208, v172, v73);
          (*(v79 + 56))(v179, 0, 1, v73);
          return __swift_destroy_boxed_opaque_existential_0(&v217);
        }

        v175(v172, v73);
        v78 = v208;
        goto LABEL_60;
      }

      (*(v75 + 8))(v83, v82);
      sub_21DE5CD00(v141, &qword_27CE94358, &qword_21DED08A0);
      v78 = v208;
    }

    v79 = v209;
    goto LABEL_60;
  }

  if (v70)
  {
    sub_21DE5CC9C(&v217, &v214);
    v85 = v215;
    v86 = v216;
    __swift_mutable_project_boxed_opaque_existential_1(&v214, v215);
    result = (*(v86 + 24))(&v211, v85, v86);
    if (!__OFADD__(*v88, 1))
    {
      ++*v88;
      result(&v211, 0);
      v89 = v215;
      v90 = v216;
      __swift_project_boxed_opaque_existential_1(&v214, v215);
      v91 = v197;
      (*(v90 + 80))(v89, v90);
      v73 = v204;
      if (v181(v91, 1, v204) == 1)
      {
        (*(v75 + 8))(v83, v82);
        sub_21DE5CD00(v91, &qword_27CE94358, &qword_21DED08A0);
        v78 = v208;
        v79 = v209;
LABEL_59:
        __swift_destroy_boxed_opaque_existential_0(&v214);
        goto LABEL_60;
      }

      v131 = v190;
      v80();
      sub_21DEC68E0();
      v133 = v132;
      (*(v75 + 8))(v83, v82);
      v79 = v209;
      v134 = *(v209 + 8);
      v78 = v208;
      if (v133 < 0.0)
      {
        v134(v131, v73);
        goto LABEL_59;
      }

      v134(v71, v73);
      (v80)(v78, v131, v73);
      goto LABEL_54;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_21DE5CC9C(&v217, &v214);
  v117 = v215;
  v118 = v216;
  __swift_mutable_project_boxed_opaque_existential_1(&v214, v215);
  result = (*(v118 + 72))(&v211, v117, v118);
  if (__OFADD__(*v119, 1))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  ++*v119;
  result(&v211, 0);
  v120 = v215;
  v121 = v216;
  __swift_project_boxed_opaque_existential_1(&v214, v215);
  v122 = v193;
  (*(v121 + 80))(v120, v121);
  v123 = v204;
  if (v181(v122, 1, v204) == 1)
  {
    sub_21DE5CD00(v122, &qword_27CE94358, &qword_21DED08A0);
  }

  else
  {
    v154 = v186;
    (v80)(v186, v122, v123);
    sub_21DEC68E0();
    v155 = v209;
    v156 = *(v209 + 8);
    if (v157 >= 0.0)
    {
      v156(v71, v123);
      (*(v75 + 8))(v83, v82);
      v177 = v154;
      v178 = v208;
      (v80)(v208, v177, v123);
      (*(v155 + 56))(v178, 0, 1, v123);
      goto LABEL_55;
    }

    v156(v154, v123);
  }

  sub_21DE5CC9C(&v217, &v211);
  v158 = v212;
  v159 = v213;
  __swift_mutable_project_boxed_opaque_existential_1(&v211, v212);
  result = (*(v159 + 24))(v210, v158, v159);
  if (!__OFADD__(*v160, 1))
  {
    ++*v160;
    result(v210, 0);
    v161 = v212;
    v162 = v213;
    __swift_mutable_project_boxed_opaque_existential_1(&v211, v212);
    (*(v162 + 64))(1, v161, v162);
    v163 = v212;
    v164 = v213;
    __swift_project_boxed_opaque_existential_1(&v211, v212);
    v165 = v189;
    (*(v164 + 80))(v163, v164);
    v73 = v204;
    if (v181(v165, 1, v204) == 1)
    {
      (*(v75 + 8))(v83, v82);
      sub_21DE5CD00(v165, &qword_27CE94358, &qword_21DED08A0);
      v78 = v208;
      v79 = v209;
    }

    else
    {
      v166 = v185;
      v80();
      sub_21DEC68E0();
      v168 = v167;
      (*(v75 + 8))(v83, v82);
      v79 = v209;
      v169 = *(v209 + 8);
      v78 = v208;
      if (v168 >= 0.0)
      {
        v169(v71, v73);
        (v80)(v78, v166, v73);
        (*(v79 + 56))(v78, 0, 1, v73);
        __swift_destroy_boxed_opaque_existential_0(&v211);
        goto LABEL_55;
      }

      v169(v166, v73);
    }

    __swift_destroy_boxed_opaque_existential_0(&v211);
    goto LABEL_59;
  }

LABEL_76:
  __break(1u);
  return result;
}

void (*sub_21DE75554@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>))(uint64_t *, void)
{
  v44 = a4;
  v7 = sub_21DEC6D20();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = sub_21DEC69D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v50 = a2;
  v51 = a3;
  v48[0] = a1;
  v48[1] = a2;
  v48[2] = a3;
  if (!EventDateComponents.year.getter())
  {
    (*(v18 + 104))(v21, *MEMORY[0x277CC9988], v17);
    v22 = sub_21DEC69E0();
    (*(v18 + 8))(v21, v17);
    EventDateComponents.year.setter(v22);
  }

  if (!EventDateComponents.month.getter())
  {
    (*(v18 + 104))(v21, *MEMORY[0x277CC9998], v17);
    v23 = sub_21DEC69E0();
    (*(v18 + 8))(v21, v17);
    EventDateComponents.month.setter(v23);
  }

  if (!EventDateComponents.day.getter())
  {
    (*(v18 + 104))(v21, *MEMORY[0x277CC9968], v17);
    v24 = sub_21DEC69E0();
    (*(v18 + 8))(v21, v17);
    EventDateComponents.day.setter(v24);
  }

  v25 = v48;
  sub_21DE76A88(v16);
  v26 = sub_21DEC6910();
  v27 = *(*(v26 - 8) + 48);
  v28 = v27(v16, 1, v26);
  result = sub_21DE5CD00(v16, &qword_27CE94358, &qword_21DED08A0);
  if (v28 != 1)
  {
    goto LABEL_17;
  }

  if (!EventDateComponents.day.getter())
  {
    EventDateComponents.day.setter(1);
  }

  if (EventDateComponents.month.getter())
  {
LABEL_13:
    v25 = v48;
    sub_21DE76A88(v14);
    v31 = v27(v14, 1, v26);
    result = sub_21DE5CD00(v14, &qword_27CE94358, &qword_21DED08A0);
    if (v31 == 1)
    {
      v32 = sub_21DEBD114();
      (*(v42 + 16))(v41, v32, v43);
      v33 = v49;
      v34 = v50;
      v35 = v51;
      v36 = sub_21DEC6D00();
      v37 = sub_21DEC71B0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134218496;
        v45 = v33;
        v46 = v34;
        v47 = v35;
        *(v38 + 4) = EventDateComponents.month.getter();
        *(v38 + 12) = 2048;
        v45 = v33;
        v46 = v34;
        v47 = v35;
        *(v38 + 14) = EventDateComponents.day.getter();
        *(v38 + 22) = 2048;
        v45 = v33;
        v46 = v34;
        v47 = v35;
        *(v38 + 24) = EventDateComponents.year.getter();
        _os_log_impl(&dword_21DE0D000, v36, v37, "Cannot get valid date components from %ld/%ld/%ld", v38, 0x20u);
        MEMORY[0x223D4D340](v38, -1, -1);
      }

      result = (*(v42 + 8))(v41, v43);
      v25 = &v49;
    }

LABEL_17:
    v39 = v44;
    *(v44 + 24) = &type metadata for EventDateComponents;
    *(v39 + 32) = &off_282F27888;
    v40 = v25[2];
    *v39 = *v25;
    *(v39 + 16) = v40;
    return result;
  }

  result = EventDateComponents.month.modify();
  if (!__OFADD__(*v30, 1))
  {
    ++*v30;
    result(&v45, 0);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21DE75AB0@<X0>(uint64_t *a1@<X8>))()
{
  v2 = v1;
  v58 = a1;
  v3 = sub_21DEC6D20();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = sub_21DEC69D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for EventDateTimeComponents();
  v18 = *(*(v57 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v57);
  v52 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v51 = &v51 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v56 = &v51 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  sub_21DE77950(v1, &v51 - v25);
  if (!EventDateTimeComponents.year.getter())
  {
    (*(v14 + 104))(v17, *MEMORY[0x277CC9988], v13);
    v27 = sub_21DEC69E0();
    (*(v14 + 8))(v17, v13);
    EventDateTimeComponents.year.setter(v27);
  }

  if (!EventDateTimeComponents.month.getter())
  {
    (*(v14 + 104))(v17, *MEMORY[0x277CC9998], v13);
    v28 = sub_21DEC69E0();
    (*(v14 + 8))(v17, v13);
    EventDateTimeComponents.month.setter(v28);
  }

  if (!EventDateTimeComponents.day.getter())
  {
    (*(v14 + 104))(v17, *MEMORY[0x277CC9968], v13);
    v29 = sub_21DEC69E0();
    (*(v14 + 8))(v17, v13);
    EventDateTimeComponents.day.setter(v29);
  }

  sub_21DE77280(v12);
  v30 = sub_21DEC6910();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v12, 1, v30);
  sub_21DE5CD00(v12, &qword_27CE94358, &qword_21DED08A0);
  if (v32 != 1)
  {
    goto LABEL_16;
  }

  if (!EventDateTimeComponents.day.getter())
  {
    EventDateTimeComponents.day.setter(1);
  }

  v33 = EventDateTimeComponents.month.getter();
  v34 = v56;
  if (!v33)
  {
    result = EventDateTimeComponents.month.modify();
    if (__OFADD__(*v36, 1))
    {
      __break(1u);
      return result;
    }

    ++*v36;
    (result)(v59, 0);
  }

  sub_21DE77280(v10);
  v37 = v31(v10, 1, v30);
  sub_21DE5CD00(v10, &qword_27CE94358, &qword_21DED08A0);
  if (v37 != 1)
  {
LABEL_16:
    v47 = v58;
    v58[3] = v57;
    v47[4] = &off_282F278E8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    return sub_21DE77A74(v26, boxed_opaque_existential_1);
  }

  v38 = sub_21DEBD114();
  (*(v54 + 16))(v53, v38, v55);
  sub_21DE77950(v2, v34);
  v39 = v51;
  sub_21DE77950(v2, v51);
  v40 = v52;
  sub_21DE77950(v2, v52);
  v41 = sub_21DEC6D00();
  v42 = sub_21DEC71B0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134218496;
    v44 = EventDateTimeComponents.month.getter();
    sub_21DE779B4(v34);
    *(v43 + 4) = v44;
    *(v43 + 12) = 2048;
    v45 = EventDateTimeComponents.day.getter();
    sub_21DE779B4(v39);
    *(v43 + 14) = v45;
    *(v43 + 22) = 2048;
    v46 = EventDateTimeComponents.year.getter();
    sub_21DE779B4(v40);
    *(v43 + 24) = v46;
    _os_log_impl(&dword_21DE0D000, v41, v42, "Cannot get valid date components from %ld/%ld/%ld", v43, 0x20u);
    MEMORY[0x223D4D340](v43, -1, -1);
  }

  else
  {
    sub_21DE779B4(v40);
    sub_21DE779B4(v39);
    sub_21DE779B4(v34);
  }

  (*(v54 + 8))(v53, v55);
  v49 = v58;
  v58[3] = v57;
  v49[4] = &off_282F278E8;
  v50 = __swift_allocate_boxed_opaque_existential_1(v49);
  sub_21DE77950(v2, v50);
  return sub_21DE779B4(v26);
}

void (*sub_21DE76128@<X0>(NSObject *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>))(_BYTE *, void)
{
  v6 = v5;
  v89 = a1;
  v90 = a2;
  v87 = a5;
  v9 = sub_21DEC6D20();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v76 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - v16;
  v18 = sub_21DEC69D0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*(a3 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v74 = &v70 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v73 = &v70 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  v88 = v34;
  v77 = *(v34 + 16);
  v78 = v34 + 16;
  v77(&v70 - v32, v5, a3);
  v35 = *(a4 + 8);
  v72 = a4 + 8;
  v71 = v35;
  if (!v35(a3, a4))
  {
    (*(v19 + 104))(v23, *MEMORY[0x277CC9988], v18);
    v36 = sub_21DEC69E0();
    (*(v19 + 8))(v23, v18);
    (*(a4 + 16))(v36, a3, a4);
  }

  v84 = *(a4 + 32);
  v85 = a4 + 32;
  if (!v84(a3, a4))
  {
    (*(v19 + 104))(v23, *MEMORY[0x277CC9998], v18);
    v37 = sub_21DEC69E0();
    (*(v19 + 8))(v23, v18);
    (*(a4 + 40))(v37, a3, a4);
  }

  v75 = v27;
  v38 = *(a4 + 56);
  v86 = v6;
  v82 = v38;
  v83 = a4 + 56;
  if (!v38(a3, a4))
  {
    (*(v19 + 104))(v23, *MEMORY[0x277CC9968], v18);
    v39 = sub_21DEC69E0();
    (*(v19 + 8))(v23, v18);
    (*(a4 + 64))(v39, a3, a4);
  }

  v40 = *(a4 + 80);
  v40(a3, a4);
  v41 = sub_21DEC6910();
  v42 = *(*(v41 - 8) + 48);
  v43 = v42(v17, 1, v41);
  sub_21DE5CD00(v17, &qword_27CE94358, &qword_21DED08A0);
  if (v43 != 1)
  {
    v64 = v87;
    v87[3] = a3;
    v64[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
    return (*(v88 + 32))(boxed_opaque_existential_1, v33, a3);
  }

  v90 = v33;
  if (!v82(a3, a4))
  {
    (*(a4 + 64))(1, a3, a4);
  }

  if (!v84(a3, a4))
  {
    result = (*(a4 + 48))(v91, a3, a4);
    if (__OFADD__(*v45, 1))
    {
      __break(1u);
      return result;
    }

    ++*v45;
    result(v91, 0);
  }

  v46 = v76;
  v47 = v90;
  v40(a3, a4);
  v48 = v42(v46, 1, v41);
  sub_21DE5CD00(v46, &qword_27CE94358, &qword_21DED08A0);
  if (v48 == 1)
  {
    v49 = sub_21DEBD114();
    (*(v80 + 16))(v79, v49, v81);
    v50 = v73;
    v51 = v86;
    v52 = v77;
    v77(v73, v86, a3);
    v53 = v74;
    v52(v74, v51, a3);
    v54 = v75;
    v52(v75, v51, a3);
    v55 = sub_21DEC6D00();
    v56 = sub_21DEC71B0();
    v89 = v55;
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v53;
      v58 = swift_slowAlloc();
      *v58 = 134218496;
      v59 = v84(a3, a4);
      v60 = *(v88 + 8);
      v60(v50, a3);
      *(v58 + 4) = v59;
      *(v58 + 12) = 2048;
      v61 = v82(a3, a4);
      v60(v57, a3);
      *(v58 + 14) = v61;
      *(v58 + 22) = 2048;
      v51 = v86;
      v62 = v71(a3, a4);
      v60(v54, a3);
      *(v58 + 24) = v62;
      v63 = v89;
      _os_log_impl(&dword_21DE0D000, v89, v56, "Cannot get valid date components from %ld/%ld/%ld", v58, 0x20u);
      MEMORY[0x223D4D340](v58, -1, -1);
    }

    else
    {
      v60 = *(v88 + 8);
      v60(v54, a3);
      v60(v53, a3);
      v60(v50, a3);
      v63 = v89;
    }

    (*(v80 + 8))(v79, v81);
    v68 = v87;
    v87[3] = a3;
    v68[4] = a4;
    v69 = __swift_allocate_boxed_opaque_existential_1(v68);
    v77(v69, v51, a3);
    return (v60)(v90, a3);
  }

  else
  {
    v66 = v87;
    v87[3] = a3;
    v66[4] = a4;
    v67 = __swift_allocate_boxed_opaque_existential_1(v66);
    return (*(v88 + 32))(v67, v47, a3);
  }
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

uint64_t sub_21DE76A88@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94368, &qword_21DED08B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_21DEC67D0();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DEC69F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v23 = v1[1];
  v24 = v1[2];
  sub_21DEC69B0();
  v25 = *(v18 + 56);
  v39 = v17;
  v25(v12, 1, 1, v17);
  v26 = sub_21DEC6A20();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v34 = 1;
  v33 = 0;
  v32 = 1;
  v31 = 0;
  sub_21DEC67C0();
  if (sub_21DEC67B0())
  {
    v27 = v36;
    v28 = sub_21DEC6990();
    MEMORY[0x28223BE20](v28);
    v33 = v21;
    sub_21DE76EF0(sub_21DE76EC4, &v31, v40);
    sub_21DE5CD00(v27, &qword_27CE94358, &qword_21DED08A0);
    (*(v37 + 8))(v16, v38);
  }

  else
  {
    (*(v37 + 8))(v16, v38);
    v29 = sub_21DEC6910();
    (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  }

  return (*(v18 + 8))(v21, v39);
}

uint64_t sub_21DE76EF0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = sub_21DEC6910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v19 - v14;
  sub_21DE5C6E4(v5, v19 - v14, &qword_27CE94358, &qword_21DED08A0);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = a3;
    return (*(v8 + 56))(v17, v16, 1, v7);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v20(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    return (*(v8 + 56))(v17, v16, 1, v7);
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t (*sub_21DE7710C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateComponents.year.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE77184(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateComponents.month.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE771FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateComponents.day.modify();
  return sub_21DE7726C;
}

uint64_t sub_21DE77280@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94368, &qword_21DED08B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v37 - v5;
  v6 = sub_21DEC67D0();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = sub_21DEC6A20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v38 = sub_21DEC69F0();
  v24 = *(v38 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v38);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DEC69B0();
  v28 = *(type metadata accessor for EventDateTimeComponents() + 36);
  sub_21DE5C6E4(v2 + v28, v15, &qword_27CE94360, &qword_21DED08A8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21DE5CD00(v15, &qword_27CE94360, &qword_21DED08A8);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v21, v23, v16);
    sub_21DEC69C0();
    (*(v17 + 8))(v23, v16);
  }

  v29 = v38;
  (*(v24 + 56))(v39, 1, 1, v38);
  sub_21DE5C6E4(v2 + v28, v37, &qword_27CE94360, &qword_21DED08A8);
  v30 = v2[3];
  v31 = v2[4];
  v32 = *v2;
  v33 = v2[1];
  v36 = v2[2];
  sub_21DEC67C0();
  if (sub_21DEC67B0())
  {
    sub_21DEC6990();
    (*(v40 + 8))(v9, v41);
    return (*(v24 + 8))(v27, v29);
  }

  else
  {
    (*(v40 + 8))(v9, v41);
    (*(v24 + 8))(v27, v29);
    v35 = sub_21DEC6910();
    return (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  }
}

uint64_t (*sub_21DE777A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateTimeComponents.year.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE77818(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateTimeComponents.month.modify();
  return sub_21DE77AD8;
}

uint64_t (*sub_21DE77890(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = EventDateTimeComponents.day.modify();
  return sub_21DE77AD8;
}

void sub_21DE77900(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21DE77950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE779B4(uint64_t a1)
{
  v2 = type metadata accessor for EventDateTimeComponents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21DE77A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE77ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_21DEC6E00();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE77BD8, 0, 0);
}

uint64_t sub_21DE77BD8()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v0[12] = sub_21DE661F8();
  v0[13] = v5;
  v0[2] = v3;
  v0[3] = v2;

  sub_21DE9F0D0();
  sub_21DE5C6E4(v4, v1, &qword_27CE93F90, &qword_21DECD500);
  v6 = type metadata accessor for SanitizerResource(0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_21DE5CD00(v0[11], &qword_27CE93F90, &qword_21DECD500);
    v8 = v0[2];
    v7 = v0[3];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];

    sub_21DEC6DF0();
    v12 = sub_21DEC6DC0();
    v14 = v13;

    (*(v10 + 8))(v9, v11);
    v15 = v0[13];
    if (v14 >> 60 == 15)
    {
      v16 = v0[12];
      sub_21DE689A4();
      swift_allocError();
      *v17 = v16;
      *(v17 + 8) = v15;
      *(v17 + 16) = 0xD000000000000023;
      *(v17 + 24) = 0x800000021DED9A40;
      *(v17 + 32) = 0;
      *(v17 + 40) = 1;
      swift_willThrow();

      v29 = v0[10];
      v28 = v0[11];

      v30 = v0[1];
    }

    else
    {
      v23 = v0[4];
      v24 = v0[13];

      v25 = sub_21DEC66C0();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_21DEC66B0();
      sub_21DE67A08();
      sub_21DEC6690();

      sub_21DE56358(v12, v14);

      v32 = v0[10];
      v31 = v0[11];

      v30 = v0[1];
    }

    return v30();
  }

  else
  {
    v19 = v0[2];
    v18 = v0[3];
    v0[14] = v18;
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_21DE77EF4;
    v21 = v0[11];

    return sub_21DE61EF8(v19, v18);
  }
}

uint64_t sub_21DE77EF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = v6[13];

    v10 = sub_21DE78234;
  }

  else
  {
    v11 = v6[11];
    v6[17] = a2;
    v6[18] = a1;
    sub_21DE5CDA8(v11);
    v10 = sub_21DE78038;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_21DE78038()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  sub_21DEC6DF0();
  v8 = sub_21DEC6DC0();
  v10 = v9;

  (*(v6 + 8))(v5, v7);
  v11 = v0[13];
  if (v10 >> 60 == 15)
  {
    v12 = v0[12];
    sub_21DE689A4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = v11;
    *(v13 + 16) = 0xD000000000000023;
    *(v13 + 24) = 0x800000021DED9A40;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    swift_willThrow();

LABEL_4:
    v20 = v0[10];
    v19 = v0[11];

    v21 = v0[1];
    goto LABEL_5;
  }

  v14 = v0[4];
  v15 = v0[13];

  v16 = sub_21DEC66C0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_21DEC66B0();
  sub_21DE67A08();
  sub_21DEC6690();

  sub_21DE56358(v8, v10);

  if (v3)
  {
    goto LABEL_4;
  }

  v24 = v0[10];
  v23 = v0[11];

  v21 = v0[1];
LABEL_5:

  return v21();
}

uint64_t sub_21DE78234()
{
  sub_21DE5CDA8(v0[11]);
  v1 = v0[16];
  v2 = v0[14];

  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21DE782B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F88, &qword_21DECD4B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v17 = a2;
  v18 = v5;
  v19 = a3;
  v20 = a4 & 1;
  v21 = a1;
  v22 = a5;
  (*(v14 + 104))(&v16[-v13], *MEMORY[0x277D858A0]);
  return sub_21DEC7130();
}

uint64_t sub_21DE783EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v42 = a7;
  v41 = a6;
  v44 = a5;
  v43 = a4;
  v39 = a3;
  v46 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = &v35 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v38);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA8, &qword_21DECD518);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v35 - v21;
  if (a2[2])
  {
  }

  else
  {
    a2 = static AFMChunkType.allCases.getter();
  }

  v23 = sub_21DE5C898(3, a2);

  if (v23)
  {
    v24 = sub_21DEC70F0();
    v25 = *(*(v24 - 8) + 56);
    v37 = v22;
    v25(v22, 1, 1, v24);
    v26 = v38;
    (*(v15 + 16))(v18, v39, v38);
    v27 = *(v12 + 16);
    v36 = v11;
    v27(v45, v46, v11);
    sub_21DE5C6E4(v41, v47, &qword_27CE93F90, &qword_21DECD500);
    v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v12 + 80) + v29 + 9) & ~*(v12 + 80);
    v31 = (v13 + *(v40 + 80) + v30) & ~*(v40 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    (*(v15 + 32))(v32 + v28, v18, v26);
    v33 = v32 + v29;
    *v33 = v43;
    *(v33 + 8) = v44 & 1;
    (*(v12 + 32))(v32 + v30, v45, v36);
    sub_21DE5754C(v47, v32 + v31);
    *(v32 + v31 + v9) = v42 & 1;
    sub_21DE5C3E4(0, 0, v37, &unk_21DED0900, v32);
  }

  else
  {
    v48 = 0;
    return sub_21DEC7120();
  }
}

uint64_t sub_21DE78828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 211) = v37;
  *(v8 + 344) = a7;
  *(v8 + 352) = a8;
  *(v8 + 210) = a6;
  *(v8 + 328) = a4;
  *(v8 + 336) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB0, &qword_21DECD550);
  *(v8 + 360) = v9;
  v10 = *(v9 - 8);
  *(v8 + 368) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v12 = sub_21DEC6D20();
  *(v8 + 384) = v12;
  v13 = *(v12 - 8);
  *(v8 + 392) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v15 = sub_21DEC6B30();
  *(v8 + 408) = v15;
  v16 = *(v15 - 8);
  *(v8 + 416) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FB8, &qword_21DECD558) - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v19 = sub_21DEC6C00();
  *(v8 + 440) = v19;
  v20 = *(v19 - 8);
  *(v8 + 448) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC0, &qword_21DECD560) - 8) + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  v23 = sub_21DEC6BE0();
  *(v8 + 472) = v23;
  v24 = *(v23 - 8);
  *(v8 + 480) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  v26 = sub_21DEC6BC0();
  *(v8 + 496) = v26;
  v27 = *(v26 - 8);
  *(v8 + 504) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v29 = sub_21DEC6BA0();
  *(v8 + 520) = v29;
  v30 = *(v29 - 8);
  *(v8 + 528) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v32 = sub_21DEC6910();
  *(v8 + 544) = v32;
  v33 = *(v32 - 8);
  *(v8 + 552) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DE78C08, 0, 0);
}

uint64_t sub_21DE78C08()
{
  v1 = v0[71];
  v2 = v0[67];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];
  v6 = v0[41];
  sub_21DEC68F0();
  v0[35] = 0;
  v0[36] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  sub_21DEC6A80();
  sub_21DEC6BB0();
  (*(v4 + 8))(v3, v5);
  v7 = sub_21DE79B30();
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[72] = v9;
  *v9 = v0;
  v9[1] = sub_21DE78D24;
  v10 = v0[67];
  v11 = v0[65];

  return MEMORY[0x282200308](v0 + 2, v11, v7);
}

uint64_t sub_21DE78D24()
{
  v2 = *(*v1 + 576);
  v5 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_21DE792CC;
  }

  else
  {
    v3 = sub_21DE78E38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DE78E38()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    v3 = *(v0 + 464);
    sub_21DE5CC84((v0 + 16), v0 + 56);
    sub_21DE5CC9C(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FD8, &qword_21DECD570);
    v4 = swift_dynamicCast();
    v5 = *(v2 + 56);
    if (v4)
    {
      v7 = *(v0 + 480);
      v6 = *(v0 + 488);
      v8 = *(v0 + 464);
      v9 = *(v0 + 472);
      v11 = *(v0 + 416);
      v10 = *(v0 + 424);
      v12 = *(v0 + 400);
      v13 = *(v0 + 384);
      v14 = *(v0 + 392);
      v49 = v13;
      v50 = *(v0 + 408);
      v5(v8, 0, 1, v9);
      (*(v7 + 32))(v6, v8, v9);
      sub_21DEC6BD0();
      v15 = sub_21DEBD150();
      (*(v14 + 16))(v12, v15, v49);
      ModelInformation.log(logger:)();
      (*(v14 + 8))(v12, v49);
      (*(v11 + 8))(v10, v50);
      (*(v7 + 8))(v6, v9);
    }

    else
    {
      v21 = *(v0 + 464);
      v23 = *(v0 + 432);
      v22 = *(v0 + 440);
      v5(v21, 1, 1, *(v0 + 472));
      sub_21DE5CD00(v21, &qword_27CE93FC0, &qword_21DECD560);
      sub_21DE5CC9C(v0 + 56, v0 + 136);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v30 = *(v0 + 440);
        v31 = *(v0 + 448);
        v32 = *(v0 + 432);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        (*(v31 + 56))(v32, 1, 1, v30);
        sub_21DE5CD00(v32, &qword_27CE93FB8, &qword_21DECD558);
        goto LABEL_12;
      }

      v25 = *(v0 + 448);
      v24 = *(v0 + 456);
      v27 = *(v0 + 432);
      v26 = *(v0 + 440);
      v28 = *(v0 + 210);
      (*(v25 + 56))(v27, 0, 1, v26);
      (*(v25 + 32))(v24, v27, v26);
      v29 = sub_21DEC6BF0();
      MEMORY[0x223D4B2A0](v29);

      if (v28)
      {
        (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
      }

      else
      {
        v38 = *(v0 + 568);
        v39 = *(v0 + 560);
        v40 = *(v0 + 552);
        v41 = *(v0 + 544);
        v42 = *(v0 + 336);
        sub_21DEC68F0();
        sub_21DEC68E0();
        v44 = v43;
        (*(v40 + 8))(v39, v41);
        v46 = *(v0 + 448);
        v45 = *(v0 + 456);
        v47 = *(v0 + 440);
        if (v44 > v42)
        {
          v48 = *(v0 + 344);
          *(v0 + 320) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
          sub_21DEC7120();
        }

        (*(v46 + 8))(v45, v47);
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_12:
    v33 = sub_21DE79B30();
    v34 = *(MEMORY[0x277D856D0] + 4);
    v35 = swift_task_alloc();
    *(v0 + 576) = v35;
    *v35 = v0;
    v35[1] = sub_21DE78D24;
    v36 = *(v0 + 536);
    v37 = *(v0 + 520);

    return MEMORY[0x282200308](v0 + 16, v37, v33);
  }

  (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  *(v0 + 592) = v17;
  *(v0 + 600) = v16;
  v18 = swift_task_alloc();
  *(v0 + 608) = v18;
  *v18 = v0;
  v18[1] = sub_21DE794C4;
  v19 = *(v0 + 352);

  return sub_21DE77ADC(v0 + 256, v19, v17, v16);
}

uint64_t sub_21DE792CC()
{
  *(v0 + 296) = *(v0 + 584);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FC8, &qword_21DECD568);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_21DE7935C, 0, 0);
}

uint64_t sub_21DE7935C()
{
  (*(v0[66] + 8))(v0[67], v0[65]);
  v1 = v0[36];

  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[43];
  v0[38] = v0[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  (*(v3 + 8))(v2, v4);
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[67];
  v9 = v0[64];
  v10 = v0[61];
  v12 = v0[57];
  v11 = v0[58];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[50];
  v18 = v0[47];

  v16 = v0[1];

  return v16();
}

uint64_t sub_21DE794C4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v7 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = *(v2 + 600);

    v5 = sub_21DE797E4;
  }

  else
  {
    v5 = sub_21DE795E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21DE795E0()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 273);
  v5 = *(v0 + 600);
  if (*(v0 + 211) == 1)
  {
    *(v0 + 216) = *(v0 + 592);
    v6 = v0 + 216;
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v4)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v3 | 0xE000;
    *(v0 + 224) = v5;
    *(v0 + 232) = v2;
    *(v0 + 240) = v1;
  }

  else
  {
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 360);
    v13 = *(v0 + 344);

    *(v0 + 176) = v2;
    *(v0 + 184) = v1;
    v6 = v0 + 176;
    v14 = 256;
    if (!v4)
    {
      v14 = 0;
    }

    *(v0 + 192) = v14 | v3;
    *(v0 + 200) = 0;
    v12 = 24576;
  }

  *(v6 + 32) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7110();
  (*(v8 + 8))(v7, v9);
  v15 = *(v0 + 568);
  v16 = *(v0 + 552);
  v17 = *(v0 + 544);
  v18 = *(v0 + 344);
  *(v0 + 312) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  (*(v16 + 8))(v15, v17);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  v21 = *(v0 + 536);
  v22 = *(v0 + 512);
  v23 = *(v0 + 488);
  v25 = *(v0 + 456);
  v24 = *(v0 + 464);
  v27 = *(v0 + 424);
  v26 = *(v0 + 432);
  v28 = *(v0 + 400);
  v31 = *(v0 + 376);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_21DE797E4()
{
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[43];
  v0[38] = v0[77];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  sub_21DEC7120();
  (*(v2 + 8))(v1, v3);
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[67];
  v8 = v0[64];
  v9 = v0[61];
  v11 = v0[57];
  v10 = v0[58];
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[50];
  v17 = v0[47];

  v15 = v0[1];

  return v15();
}

uint64_t sub_21DE79928()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508) - 8);
  v6 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v0 + v4;
  v11 = *(v0 + v4);
  v12 = *(v10 + 8);
  v13 = v0 + v9;
  v14 = *(v0 + v9 + *(v8 + 64));
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_21DE577D0;

  return sub_21DE78828(v15, v16, v17, v0 + v3, v11, v12, v0 + v6, v13);
}

unint64_t sub_21DE79B30()
{
  result = qword_280F7AB58;
  if (!qword_280F7AB58)
  {
    sub_21DEC6BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7AB58);
  }

  return result;
}

uint64_t sub_21DE79BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v102 = a2;
  v101 = a1;
  v96 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94140, &qword_21DECD700);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v95 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v107 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94370, &qword_21DED0910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v88 - v15;
  v105 = sub_21DEC6B70();
  v98 = *(v105 - 8);
  v16 = *(v98 + 64);
  v17 = MEMORY[0x28223BE20](v105);
  v94 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v109 = &v88 - v19;
  v20 = sub_21DEC6AB0();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v100 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_21DEC6B90();
  v97 = *(v104 - 8);
  v23 = *(v97 + 64);
  v24 = MEMORY[0x28223BE20](v104);
  v92 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v88 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94378, &qword_21DED0918);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v88 - v29;
  v31 = sub_21DEC6AD0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a4 + 8);
  v99 = v5;
  v36(a3, a4);
  sub_21DEC6AC0();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_21DE5CD00(v30, &qword_27CE94378, &qword_21DED0918);
    sub_21DE689A4();
    swift_allocError();
    v37 = v102;
    *v38 = v101;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0xD000000000000014;
    *(v38 + 24) = 0x800000021DED9A70;
    *(v38 + 32) = 0;
    *(v38 + 40) = 0;
    swift_willThrow();
  }

  v40 = *(v32 + 32);
  v93 = v35;
  v40(v35, v30, v31);
  v41 = v31;
  v42 = v99;
  v43 = a4;
  v102 = (v36)(a3, a4);
  v101 = v44;
  (*(a4 + 16))(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94380, &qword_21DED0920);
  v45 = *(v32 + 72);
  v46 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_21DECCA20;
  v90 = v32;
  v48 = *(v32 + 16);
  v49 = v93;
  v91 = v41;
  v48(v47 + v46, v93, v41);
  sub_21DEC6AA0();
  v50 = v106;
  sub_21DEC6B80();
  v51 = v103;
  sub_21DEC6B40();
  v52 = sub_21DEC6B50();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v87 = (*(v43 + 48))(a3, v43);
  sub_21DEC6B60();
  v53 = (*(v43 + 24))(a3, v43);
  v55 = a3;
  v56 = v50;
  if (v54)
  {
    v110 = v53;
    *&v111 = v54;
    v57 = v107;
    v58 = v108;
    sub_21DE7A924(&v110, v42, a3, v43, &v114);
    if (v58)
    {

      (*(v98 + 8))(v109, v105);
      (*(v97 + 8))(v50, v104);
      return (*(v90 + 8))(v49, v91);
    }

    v60 = 0;
    v61 = v43;
    v62 = sub_21DEC6CA0();
    (*(*(v62 - 8) + 56))(v57, 0, 1, v62);
  }

  else
  {
    v59 = sub_21DEC6CA0();
    (*(*(v59 - 8) + 56))(v107, 1, 1, v59);
    v60 = v108;
    v61 = v43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94388, qword_21DED0928);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_21DED0150;
  *(v63 + 32) = (*(v61 + 40))(v55, v61);
  *(v63 + 40) = v64;
  *(v63 + 72) = 0;
  *(v63 + 104) = &type metadata for OCRPromptFormatting;
  *(v63 + 112) = &protocol witness table for OCRPromptFormatting;
  nullsub_1();
  *(v63 + 120) = 2;
  if (((*(v61 + 56))(v55, v61) & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for STXOutputFiltering();
  v65 = STXOutputFiltering.__allocating_init()();
  v66 = *(v63 + 16);
  if (!v66)
  {
    __break(1u);
    goto LABEL_23;
  }

  v110 = v65;
  v111 = v114;
  v112 = v115;
  v113 = 1;
  v122 = v63;
  if (v66 >= *(v63 + 24) >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_21DE7AAC8(1uLL, 1, 1, &v110);
LABEL_12:
    sub_21DE6396C(v63, 0, 0xE000000000000000, &v110);
    v63 = v110;
    v101 = *(&v111 + 1);
    v67 = v111;
    v68 = (*(v61 + 32))(v55, v61);
    v108 = v60;
    v103 = v63;
    v66 = &v123;
    v102 = v67;
    if (v69)
    {
      break;
    }

    if (v68)
    {
      v63 = v56;
      v49 = v55;
      v100 = sub_21DEC6E60();
      v89 = v70;
      goto LABEL_21;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v63 = sub_21DE7ABCC(1, v66 + 1, 1, v63);
    v122 = v63;
  }

  v66 = HIDWORD(v68);
  if (HIDWORD(v68))
  {
    goto LABEL_24;
  }

  v71 = v68 & 0xFFFFF800;
  v72 = 55296;
  if (v71 == 55296)
  {
    __break(1u);
    goto LABEL_30;
  }

  v71 = v68 >> 16;
  if (v68 >> 16 > 0x10)
  {
    __break(1u);
LABEL_27:
    v72 = (v68 & 0x3F) << 8;
    if (v68 < 0x800)
    {
      v73 = (v68 >> 6) + v72 + 33217;
      goto LABEL_20;
    }

LABEL_30:
    v86 = (v72 | (v68 >> 6) & 0x3F) << 8;
    if (v71)
    {
      v73 = (v68 >> 18) + ((v86 | (v68 >> 12) & 0x3F) << 8) - 2122219023;
    }

    else
    {
      v73 = (v68 >> 12) + v86 + 8487393;
    }

    goto LABEL_20;
  }

  v63 = v56;
  v49 = v55;
  if (v68 > 0x7F)
  {
    goto LABEL_27;
  }

  v73 = v68 + 1;
LABEL_20:
  v110 = ((v73 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v73) >> 3)))));
  v100 = sub_21DEC6E60();
  v89 = v74;
LABEL_21:
  v75 = v109;
  v76 = v97;
  v77 = v92;
  (*(v97 + 16))(v92, v63, v104);
  v78 = v98;
  v79 = v94;
  (*(v98 + 16))(v94, v75, v105);
  v80 = v107;
  v81 = v95;
  sub_21DE7A8B4(v107, v95);
  v99 = (*(v61 + 64))(v49, v61);
  v88 = v82;
  v110 = v103;
  *&v111 = v102;
  *(&v111 + 1) = v101;
  (*(v61 + 72))(&v120, v49, v61);
  v118 = v120;
  v119 = v121;
  v83 = (*(v61 + 80))(v49, v61);
  v85 = v84;
  (*(v61 + 88))(&v114, v49, v61);
  v116 = v114;
  v117 = v115;
  sub_21DE63DA0(v77, v79, v81, v100, v89, v99, v88, &v110, v96, v83, v85, &v118, &v116);
  sub_21DE5CD00(v80, &qword_27CE94140, &qword_21DECD700);
  (*(v78 + 8))(v109, v105);
  (*(v76 + 8))(v106, v104);
  return (*(v90 + 8))(v93, v91);
}

uint64_t sub_21DE7A8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94140, &qword_21DECD700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE7A924(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_21DEC6A40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *a1;
  v11 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94390, &qword_21DED0A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DECCA20;
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  v13 = *(a4 + 32);

  *(inited + 48) = v13(a3, a4);
  *(inited + 56) = v14;
  *(inited + 64) = v15;
  sub_21DE7AEDC(inited);
  swift_setDeallocating();
  sub_21DE5CD00(inited + 32, &qword_27CE94398, &qword_21DED0A28);
  (*(a4 + 8))(a3, a4);
  sub_21DEC6A30();
  if (v18)
  {

    *a5 = v18;
  }

  else
  {

    return sub_21DEC6C90();
  }

  return result;
}

unint64_t sub_21DE7AAC8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 48 * a3;
      v15 = (v9 + 32 + 48 * a2);
      v16 = 48 * v14;
      v17 = &v15[48 * v14];
      if (result != v15 || result >= v17)
      {
        result = memmove(result, v15, v16);
      }

      v19 = *(v9 + 16);
      v11 = __OFADD__(v19, v12);
      v20 = v19 + v12;
      if (!v11)
      {
        *(v9 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_21DE5CD00(a4, &qword_27CE943A8, &qword_21DED0A38);
  }

  result = sub_21DE7AFF0(a4, v10);
  if (a3 == 1)
  {
    return sub_21DE5CD00(a4, &qword_27CE943A8, &qword_21DED0A38);
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_21DE7ABCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94388, qword_21DED0928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21DE7ACF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21DE7AD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_21DE7ADAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21DEC7770();
  sub_21DEC6E90();
  v6 = sub_21DEC77B0();

  return sub_21DE7AE24(a1, a2, v6);
}

unint64_t sub_21DE7AE24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21DEC7610())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21DE7AEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943A0, &qword_21DED0A30);
    v3 = sub_21DEC7430();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21DE7ADAC(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t Array<A>.items<A>(ofType:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94288, &qword_21DED0178);
  sub_21DE7B250();
  return sub_21DEC7020();
}

uint64_t sub_21DE7B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  (*(**a1 + 88))(&v8);
  v5 = v8 >> 61;
  if ((v8 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        type metadata accessor for Contact();
      }

      else
      {
        type metadata accessor for Wifi();
      }
    }

    else
    {
      type metadata accessor for Event();
    }

    goto LABEL_13;
  }

  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      type metadata accessor for ParkingLocation();
    }

    else
    {
      type metadata accessor for ItemList();
    }

    goto LABEL_13;
  }

  if (v5 == 5)
  {
    type metadata accessor for FinancialTransaction();
LABEL_13:
    v6 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a2, v6 ^ 1u, 1, v4);
  }

  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

unint64_t sub_21DE7B250()
{
  result = qword_27CE943B0;
  if (!qword_27CE943B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94288, &qword_21DED0178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943B0);
  }

  return result;
}

uint64_t sub_21DE7B2B4()
{
  type metadata accessor for DateValidity();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DED0A40;
  *(v0 + 32) = sub_21DE812FC(&unk_282F27A20);
  result = sub_21DE812FC(&unk_282F27A80);
  *(v0 + 40) = result;
  qword_27CE9B2F8 = v0;
  return result;
}

uint64_t sub_21DE7B318(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  v4 = *(v1 + 32);
  if (*(v4 + 16) && (v5 = *(v4 + 40), v6 = sub_21DEC7760(), v7 = -1 << *(v4 + 32), v8 = v6 & ~v7, ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    result = 1;
    while (*(*(v4 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v10 = *(v1 + 40);
    if (*(v10 + 16) && (v11 = *(v10 + 40), v12 = sub_21DEC7760(), v13 = -1 << *(v10 + 32), v14 = v12 & ~v13, ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
    {
      v15 = ~v13;
      result = 1;
      while (*(*(v10 + 48) + 8 * v14) != a1)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DE7B46C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t EventDateComponents.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  if (*v0 >= 1)
  {
    v7 = *v0;
    v3 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v3);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](0x203A72616579, 0xE600000000000000);
  }

  if (v1 >= 1)
  {
    v4 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v4);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](0x203A68746E6F6DLL, 0xE700000000000000);
  }

  if (v2 >= 1)
  {
    v5 = sub_21DEC7600();
    MEMORY[0x223D4B2A0](v5);

    MEMORY[0x223D4B2A0](8236, 0xE200000000000000);
    MEMORY[0x223D4B2A0](0x203A796164, 0xE500000000000000);
  }

  return 0;
}

uint64_t EventDateComponents.dateString.getter()
{
  v1 = sub_21DEC6D20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  if (*v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9 && v8 == 0)
  {
    return 0;
  }

  if (qword_27CE9B2F0 == -1)
  {
    if (v6 > 0xC)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_once();
    if (v6 > 0xC)
    {
      goto LABEL_10;
    }
  }

  if ((v8 | 0x20) == 0x20 || (v25 = sub_21DE7B318(v6), (v27 & 1) == 0) && v8 >= v25 && v26 >= v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94430, &qword_21DED0E58);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D83B88];
    *(v22 + 16) = xmmword_21DED0A50;
    v24 = MEMORY[0x277D83C10];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = v7;
    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 72) = v6;
    *(v22 + 136) = v23;
    *(v22 + 144) = v24;
    *(v22 + 112) = v8;
    return sub_21DEC6DE0();
  }

LABEL_10:
  sub_21DE81464();
  v11 = swift_allocError();
  result = swift_willThrow();
  if (v11)
  {
    v13 = sub_21DEBD114();
    (*(v2 + 16))(v5, v13, v1);
    v14 = v11;
    v15 = sub_21DEC6D00();
    v16 = sub_21DEC71B0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_21DEC7710();
      v21 = sub_21DE56544(v19, v20, &v29);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21DE0D000, v15, v16, "Cannot compute date: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223D4D340](v18, -1, -1);
      MEMORY[0x223D4D340](v17, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}