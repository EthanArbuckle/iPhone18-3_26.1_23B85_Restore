uint64_t sub_26B8EACD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26B8EAF30()
{
  result = qword_281228F40;
  if (!qword_281228F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F40);
  }

  return result;
}

unint64_t sub_26B8EAF88()
{
  result = qword_281228F48;
  if (!qword_281228F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F48);
  }

  return result;
}

unint64_t sub_26B8EAFE0()
{
  result = qword_281228F28;
  if (!qword_281228F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F28);
  }

  return result;
}

unint64_t sub_26B8EB038()
{
  result = qword_281228F20;
  if (!qword_281228F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F20);
  }

  return result;
}

unint64_t sub_26B8EB094()
{
  result = qword_281228F38;
  if (!qword_281228F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F38);
  }

  return result;
}

unint64_t sub_26B8EB0EC()
{
  result = qword_281228F30;
  if (!qword_281228F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F30);
  }

  return result;
}

unint64_t sub_26B8EB144()
{
  result = qword_281228F18;
  if (!qword_281228F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F18);
  }

  return result;
}

unint64_t sub_26B8EB19C()
{
  result = qword_281228F10;
  if (!qword_281228F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F10);
  }

  return result;
}

unint64_t sub_26B8EB1F8()
{
  result = qword_281228F08;
  if (!qword_281228F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F08);
  }

  return result;
}

uint64_t sub_26B8EB260(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EC52C;

  return sub_26B8EB318(a1, v5);
}

uint64_t sub_26B8EB318(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB7BC;

  return v7(a1);
}

uint64_t sub_26B8EB410()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B8EB6C8;

  return sub_26B8EB4B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_26B8EB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_26B9AC804();
  v6[12] = sub_26B9AC7F4();
  v8 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8EB554, v8, v7);
}

uint64_t sub_26B8EB554()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  sub_26B9AA924();
  sub_26B9AA914();
  v0[7] = v4;
  v0[8] = v3;

  sub_26B9ACB64();
  *(swift_allocObject() + 16) = v2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261C0, &qword_26B9B0600);
  sub_26B9AA904();

  sub_26B8EACD8((v0 + 2), &qword_2804261C8, &unk_26B9B0608);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26B8EB690()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8EB6C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26B8EB7BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 16);

  v6 = v1[8];
  v7 = sub_26B9AC3D4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26B8EBDF8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B8EBE48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EC52C;

  return sub_26B8EB318(a1, v5);
}

uint64_t sub_26B8EBF00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26B8EC52C;

  return sub_26B8EBFCC(a1, v4, v5, v7);
}

uint64_t sub_26B8EBFCC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26B8EB6C8;

  return v8();
}

uint64_t sub_26B8EC0B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26B8EC52C;

  return sub_26B8EC174(v2, v3, v5);
}

uint64_t sub_26B8EC174(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_26B8EC52C;

  return v7();
}

uint64_t sub_26B8EC25C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B8EC52C;

  return sub_26B8EC310(v2, v3, v4);
}

uint64_t sub_26B8EC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_26B9AC804();
  v3[9] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8EC3B0, v5, v4);
}

uint64_t sub_26B8EC3B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  v0[10] = _Block_copy(v3);
  v0[11] = sub_26B9AC504();
  v0[12] = v6;
  v7 = v4;
  v0[13] = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8EC46C, v9, v8);
}

uint64_t sub_26B8EC46C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[7];

  v6 = &v5[OBJC_IVAR___SUIAppIntentsQueryHelper_searchString];
  swift_beginAccess();
  v7 = *(v6 + 1);
  *v6 = v4;
  *(v6 + 1) = v2;

  v3[2](v3);
  _Block_release(v3);
  v8 = v0[1];

  return v8();
}

uint64_t sub_26B8EC534(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26B9AAD04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26B8EC5E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AAD04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B8EC8A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8EC8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426148, &qword_26B9B0458);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26B8EC974()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8EC9B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8EC9EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8ECA24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8ECA78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8ECACC()
{
  v1 = sub_26B9AB984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_26B8ECB70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B8ECB98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8ECBE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8ECC1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26B8ECCC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8ECCFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8ECD44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B8ECD94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8ECDDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26B9ABF24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_26B9AC0E4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_26B9ABFF4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_26B9AB984();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_26B8ECFF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26B9ABF24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_26B9AC0E4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_26B9ABFF4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_26B9AB984();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[10];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_26B8ED204()
{
  v1 = sub_26B9ABFD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v17 = *(v6 + 64);
  v18 = sub_26B9AC294();
  v9 = *(v18 - 8);
  v10 = *(v9 + 80);
  v16 = *(v9 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = sub_26B9AC2D4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  v14 = (v8 + v17 + v10) & ~v10;
  (*(v9 + 8))(v0 + v14, v18);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v3 | v7 | v10 | 7);
}

uint64_t sub_26B8ED44C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26B9AC204();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_26B9AB984();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_26B9AC0E4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_26B8ED618(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26B9AC204();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_26B9AB984();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_26B9AC0E4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_26B8ED7E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26B9AB984();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_26B9AC0E4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26B8ED908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26B9AB984();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_26B9AC0E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

__n128 sub_26B8EDA38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26B8EDA44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26B8EDB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26B8EDCC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8EDD0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26B9AC3D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26B8EDDB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AC3D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B8EDE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C48, &qword_26B9B4078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8EDEE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D28, &qword_26B9B4168);
  sub_26B9AB624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D30, &qword_26B9B4170);
  sub_26B9AB624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D38, &qword_26B9B4178);
  sub_26B9AB624();
  sub_26B9AB624();
  sub_26B9AB624();
  sub_26B8F7938(&qword_280426D40, &qword_280426D28, &qword_26B9B4168);
  swift_getWitnessTable();
  sub_26B8F7938(&qword_280426D68, &qword_280426D30, &qword_26B9B4170);
  swift_getWitnessTable();
  sub_26B8F7938(&qword_280426D78, &qword_280426D38, &qword_26B9B4178);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26B8EE0EC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B8EE134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9ABF24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26B8EE264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B9ABF24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26B8EE394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9ABE84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26B8EE460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B9ABE84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_26B8EE564()
{
  v1 = (type metadata accessor for RunnableParameterQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v6 = v1[7];
  v7 = sub_26B9AB984();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B8EE668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26B9AB984();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26B8EE714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AB984();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B8EE7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9AB984();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26B9AC0E4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26B8EE8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26B9AB984();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26B9AC0E4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26B8EE9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9ABE84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26B8EEA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9ABE84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26B8EEA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26B8EEB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9ABE84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26B9AB984();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26B8EEC04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26B9AB984();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26B8EED00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8EED38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26B8EEDE8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_26B8EEED8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B8EEF18()
{
  v1 = *(v0 + 16);
  v2 = sub_26B9AC334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v4 | v8;
  (*(v3 + 8))(v0 + v5, v2);
  v12 = *(v0 + v6);

  (*(v7 + 8))(v0 + v9, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_26B8EF038()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B8EF08C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8EF0D4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8EF144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26B9AB504();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_26B8EF1F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AB504();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id SUISGeneralLog()
{
  if (SUISGeneralLog_once != -1)
  {
    SUISGeneralLog_cold_1();
  }

  v1 = SUISGeneralLog_generalLog;

  return v1;
}

uint64_t __SUISGeneralLog_block_invoke()
{
  SUISGeneralLog_generalLog = os_log_create("com.apple.SpotlightUIShared", "general");

  return MEMORY[0x2821F96F8]();
}

id SUISPasteboardIndexingLog()
{
  if (SUISPasteboardIndexingLog_once != -1)
  {
    SUISPasteboardIndexingLog_cold_1();
  }

  v1 = SUISPasteboardIndexingLog_pasteboardIndexingLog;

  return v1;
}

uint64_t __SUISPasteboardIndexingLog_block_invoke()
{
  SUISPasteboardIndexingLog_pasteboardIndexingLog = os_log_create("com.apple.SpotlightUIShared", "pasteboardIndexing");

  return MEMORY[0x2821F96F8]();
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

uint64_t sub_26B8F3474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B18, &qword_26B9AE6B8);
  v0 = [objc_opt_self() queryHelperKey];
  sub_26B9AC504();

  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  result = sub_26B9AA8B4();
  qword_280433C70 = result;
  return result;
}

uint64_t sub_26B8F3534()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_26B9AB004();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_26B9AB224() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_26B9AC4B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_26B9AB014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v12, qword_280433C78);
  __swift_project_value_buffer(v12, qword_280433C78);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_26B9AB024();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_26B9AADD4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26B8F3878()
{
  v1 = v0[3];
  sub_26B9AA894();
  v2 = v0[2];
  v0[4] = v2;
  v3 = (*MEMORY[0x277D85000] & *v2) + 88;
  v0[5] = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v0[6] = v3 & 0xFFFFFFFFFFFFLL | 0x68A2000000000000;
  sub_26B9AC804();
  v0[7] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8F394C, v5, v4);
}

uint64_t sub_26B8F394C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  v6 = v4(v5);
  v8 = v7;

  v0[8] = v6;
  v0[9] = v8;

  return MEMORY[0x2822009F8](sub_26B8F39D4, 0, 0);
}

uint64_t sub_26B8F39D4()
{
  v1 = sub_26B8F4678(v0[8], v0[9]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26B8F3A38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_26B8F3A5C, 0, 0);
}

uint64_t sub_26B8F3A5C()
{
  v1 = v0[4];
  sub_26B9AA894();
  v2 = v0[2];
  v0[5] = v2;
  v3 = (*MEMORY[0x277D85000] & *v2) + 88;
  v0[6] = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v0[7] = v3 & 0xFFFFFFFFFFFFLL | 0x68A2000000000000;
  sub_26B9AC804();
  v0[8] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8F3B30, v5, v4);
}

uint64_t sub_26B8F3B30()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v6 = v4(v5);
  v8 = v7;

  v0[9] = v6;
  v0[10] = v8;

  return MEMORY[0x2822009F8](sub_26B8F3BB8, 0, 0);
}

uint64_t sub_26B8F3BB8()
{
  v1 = v0[3];
  *v1 = sub_26B8F4678(v0[9], v0[10]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26B8F3C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CBA070] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_26B8F4BAC();
  *v5 = v2;
  v5[1] = sub_26B8F3CD4;

  return MEMORY[0x28210BDA8](a2, v6);
}

uint64_t sub_26B8F3CD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_26B8F3DE8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B18, &qword_26B9AE6B8);
  v2 = [objc_opt_self() queryHelperKey];
  sub_26B9AC504();

  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  result = sub_26B9AA8B4();
  *a1 = result;
  return result;
}

uint64_t sub_26B8F3EB0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA080] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_26B8F4BAC();
  *v6 = v2;
  v6[1] = sub_26B8F4CF4;

  return MEMORY[0x28210BDB8](a1, a2, v7);
}

uint64_t sub_26B8F3F64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CBA078] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_26B8F4BAC();
  *v5 = v2;
  v5[1] = sub_26B8F4CE8;

  return MEMORY[0x28210BDB0](a2, v6);
}

uint64_t sub_26B8F4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B8F40D4;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_26B8F40D4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_26B8F41D4(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_26B8F4978();
  *v6 = v2;
  v6[1] = sub_26B8EB6C8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_26B8F4288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EB6C8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_26B8F4340@<X0>(void *a1@<X8>)
{
  if (qword_280427510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280433C70;
  return sub_26B9AAAE4();
}

uint64_t sub_26B8F43C0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B10, &qword_26B9AE6B0);
  result = sub_26B9AC524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B8F4410@<X0>(uint64_t a1@<X8>)
{
  if (qword_280427518 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AADE4();
  v3 = __swift_project_value_buffer(v2, qword_280433C78);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8F44D0(uint64_t a1)
{
  v2 = sub_26B8EAF30();

  return MEMORY[0x28210B488](a1, v2);
}

void sub_26B8F451C()
{
  sub_26B8F4920();

  JUMPOUT(0x26D6848D0);
}

uint64_t sub_26B8F4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B8EC52C;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_26B8F462C(uint64_t a1)
{
  v2 = sub_26B8EB144();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_26B8F4678(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AB004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_26B9AB224() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = *(*(sub_26B9AC4B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = *(*(sub_26B9AB014() - 8) + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B20, qword_26B9AE6C0);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v4);
  sub_26B9AB024();
  v12 = sub_26B9AAA44();
  v14[1] = a1;
  v14[2] = a2;
  sub_26B9AAAE4();
  sub_26B9AAA24();

  return v12;
}

unint64_t sub_26B8F48C8()
{
  result = qword_280425B28;
  if (!qword_280425B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B28);
  }

  return result;
}

unint64_t sub_26B8F4920()
{
  result = qword_280425B30;
  if (!qword_280425B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B30);
  }

  return result;
}

unint64_t sub_26B8F4978()
{
  result = qword_280425B38;
  if (!qword_280425B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B38);
  }

  return result;
}

unint64_t sub_26B8F49D0()
{
  result = qword_280425B40;
  if (!qword_280425B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B40);
  }

  return result;
}

unint64_t sub_26B8F4A28()
{
  result = qword_280425B48;
  if (!qword_280425B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B48);
  }

  return result;
}

unint64_t sub_26B8F4A84()
{
  result = qword_280425B50;
  if (!qword_280425B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B50);
  }

  return result;
}

unint64_t sub_26B8F4ADC()
{
  result = qword_280425B58;
  if (!qword_280425B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425B60, qword_26B9AE7D0);
    sub_26B8EB094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26B8F4BAC()
{
  result = qword_280425B68;
  if (!qword_280425B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B68);
  }

  return result;
}

unint64_t sub_26B8F4C10()
{
  result = qword_280425B70;
  if (!qword_280425B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425B78, &qword_26B9AEA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B70);
  }

  return result;
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

unint64_t sub_26B8F4CF8()
{
  result = qword_280425B90;
  if (!qword_280425B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B90);
  }

  return result;
}

uint64_t sub_26B8F4D4C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8 - v1;
  v3 = sub_26B9AB014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v6 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v6, qword_280433C90);
  __swift_project_value_buffer(v6, qword_280433C90);
  sub_26B9AAFF4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_26B9AADD4();
}

uint64_t type metadata accessor for SearchEntityFilter()
{
  result = qword_2804285C0;
  if (!qword_2804285C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B8F4F14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7274536E656B6F74;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7274536E656B6F74;
    }

    else
    {
      v5 = 0x7954797469746E65;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000676E69;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    if (v4)
    {
      v6 = 0x800000026B9B7390;
    }

    else
    {
      v6 = 0x800000026B9B7370;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x7954797469746E65;
    v2 = 0xEA00000000006570;
  }

  v7 = 0x800000026B9B7390;
  if (!a2)
  {
    v7 = 0x800000026B9B7370;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26B9ACEB4();
  }

  return v10 & 1;
}

uint64_t sub_26B8F5064()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8F513C()
{
  *v0;
  *v0;
  *v0;
  sub_26B9AC574();
}

uint64_t sub_26B8F5200()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8F52D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B8F6B8C();
  *a2 = result;
  return result;
}

void sub_26B8F5304(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7274536E656B6F74;
  if (*v1 != 2)
  {
    v3 = 0x7954797469746E65;
    v2 = 0xEA00000000006570;
  }

  v4 = 0x800000026B9B7370;
  if (*v1)
  {
    v4 = 0x800000026B9B7390;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_26B8F5398()
{
  v1 = 0x7274536E656B6F74;
  if (*v0 != 2)
  {
    v1 = 0x7954797469746E65;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26B8F5428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B8F6B8C();
  *a1 = result;
  return result;
}

uint64_t sub_26B8F5468(uint64_t a1)
{
  v2 = sub_26B8F5760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B8F54A4(uint64_t a1)
{
  v2 = sub_26B8F5760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B8F54E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B98, &qword_26B9AEBD8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B8F5760();
  sub_26B9AD014();
  v11 = *v3;
  sub_26B9AAA14();
  LOBYTE(v17) = 0;
  sub_26B9ACE24();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v12 = v3[1];
    sub_26B9AAA14();
    LOBYTE(v17) = 1;
    sub_26B9ACE14();

    v13 = v3[2];
    sub_26B9AAA14();
    LOBYTE(v17) = 2;
    sub_26B9ACE14();

    v14 = v3[3];
    sub_26B9AAA14();
    v16[15] = 3;
    sub_26B8F57B4();
    sub_26B9ACE44();
    return (*(v6 + 8))(v9, v5);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26B8F5760()
{
  result = qword_2804278B0[0];
  if (!qword_2804278B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804278B0);
  }

  return result;
}

unint64_t sub_26B8F57B4()
{
  result = qword_280425BA0;
  if (!qword_280425BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425BA0);
  }

  return result;
}

uint64_t sub_26B8F5808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425BA8, &qword_26B9AEBE0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v36 = &v29 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v29 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v29 - v9;
  v35 = sub_26B9AB014();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v13 = (type metadata accessor for SearchEntityFilter() - 8);
  v14 = *(*v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B20, qword_26B9AE6C0);
  sub_26B9AAFF4();
  v32 = sub_26B9AAA44();
  *v16 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B80, &qword_26B9AEB98);
  sub_26B9AAFF4();
  v31 = sub_26B9AAA44();
  v16[1] = v31;
  sub_26B9AAFF4();
  v16[2] = sub_26B9AAA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B88, &unk_26B9AEBA0);
  sub_26B9AAFF4();
  sub_26B8F4CF8();
  v16[3] = sub_26B9AAA34();
  v17 = v13[10];
  sub_26B9AAFF4();
  v18 = v38;
  (*(v11 + 56))(v10, 1, 1, v35);
  v19 = v36;
  v20 = sub_26B9AACD4();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_26B9AACF4();
  v21 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_26B8F5760();
  v22 = v37;
  sub_26B9AD004();
  if (v22)
  {
    sub_26B8F5D70(v16);
  }

  else
  {
    v23 = v33;
    LOBYTE(v39) = 0;
    v24 = v34;
    v39 = sub_26B9ACDE4();
    v40 = v25;
    sub_26B9AAA24();
    LOBYTE(v39) = 1;
    v39 = sub_26B9ACDD4();
    v40 = v26;
    sub_26B9AAA24();
    LOBYTE(v39) = 2;
    v39 = sub_26B9ACDD4();
    v40 = v27;
    sub_26B9AAA24();
    v41 = 3;
    sub_26B8F5E18();
    sub_26B9ACE04();
    v41 = v39;
    sub_26B9AAA24();
    (*(v23 + 8))(v19, v24);
    sub_26B8F5E6C(v16, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_26B8F5D70(uint64_t a1)
{
  v2 = type metadata accessor for SearchEntityFilter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26B8F5E18()
{
  result = qword_280425BB0;
  if (!qword_280425BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425BB0);
  }

  return result;
}

uint64_t sub_26B8F5E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntityFilter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8F5ED0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26B9AB1F4();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v21 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = sub_26B9AB014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B20, qword_26B9AE6C0);
  sub_26B9AAFF4();
  *a1 = sub_26B9AAA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B80, &qword_26B9AEB98);
  sub_26B9AAFF4();
  a1[1] = sub_26B9AAA44();
  sub_26B9AAFF4();
  a1[2] = sub_26B9AAA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B88, &unk_26B9AEBA0);
  sub_26B9AAFF4();
  sub_26B8F4CF8();
  a1[3] = sub_26B9AAA34();
  v15 = *(type metadata accessor for SearchEntityFilter() + 32);
  sub_26B9AAFF4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v16 = sub_26B9AACD4();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_26B9AACF4();
  sub_26B9AA884();
  v17 = sub_26B9AB1C4();
  v19 = v18;
  (*(v21 + 8))(v5, v22);
  v23 = v17;
  v24 = v19;
  sub_26B9AAA24();
  LOBYTE(v23) = 0;
  return sub_26B9AAA24();
}

uint64_t sub_26B8F62D4(uint64_t a1)
{
  v2 = sub_26B8F83E4(&qword_280425CC0, type metadata accessor for SearchEntityFilter);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_26B8F6350()
{
  sub_26B8F83E4(&qword_280425CC0, type metadata accessor for SearchEntityFilter);

  return sub_26B9AA884();
}

uint64_t sub_26B8F63F0(uint64_t a1)
{
  v2 = sub_26B8F83E4(&qword_280425BB8, type metadata accessor for SearchEntityFilter);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_26B8F646C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26B9AAD04();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26B8F64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26B8EB6C8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_26B8F65A4(uint64_t a1)
{
  v2 = sub_26B8F83E4(&qword_280425C00, type metadata accessor for SearchEntityFilter);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_26B8F6620()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8 - v1;
  v3 = sub_26B9AB014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v6 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v6, qword_280433CA8);
  __swift_project_value_buffer(v6, qword_280433CA8);
  sub_26B9AAFF4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_26B9AADD4();
}

uint64_t sub_26B8F67A4()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B8F6818()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

unint64_t sub_26B8F685C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B8F7528(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B8F6978@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26B9AADE4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26B8F6A14(uint64_t a1)
{
  v2 = sub_26B8F4CF8();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_26B8F6A64(uint64_t a1)
{
  v2 = sub_26B8F7BA0();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_26B8F6AB0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](a1);
  v4 = sub_26B9ACFF4();

  return sub_26B8F6B1C(a1, v4);
}

unint64_t sub_26B8F6B1C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_26B8F6B8C()
{
  v0 = sub_26B9ACDC4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26B8F6BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD0, &qword_26B9AF2E8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD8, &unk_26B9AF2F0);
    v8 = sub_26B9ACD84();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_26B8F842C(v10, v6);
      v12 = *v6;
      result = sub_26B8F6AB0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_26B9AAD04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_26B8F6DA0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v54 - v1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v54 - v4;
  v6 = sub_26B9AB014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CC8, &qword_26B9AF2E0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD0, &qword_26B9AF2E8);
  v63 = v9;
  v10 = *(v9 - 8);
  v58 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v56 = 8 * v58;
  v12 = swift_allocObject();
  v55 = v12;
  *(v12 + 16) = xmmword_26B9AEB80;
  v13 = (v12 + v11);
  v14 = *(v9 + 48);
  *v13 = 0;
  sub_26B9AAFF4();
  v15 = *(v7 + 56);
  v65 = v7 + 56;
  v61 = v6;
  v62 = v15;
  v16 = v6;
  v15(v5, 1, 1, v6);
  v17 = sub_26B9AACD4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v64 = v18 + 56;
  v60 = v17;
  v19(v2, 1, 1, v17);
  v59 = v19;
  v57 = v13;
  v20 = v5;
  v21 = v2;
  sub_26B9AACF4();
  v22 = v58;
  v23 = &v13[v58];
  v24 = v63;
  v54 = *(v63 + 48);
  *v23 = 1;
  sub_26B9AAFF4();
  v62(v20, 1, 1, v16);
  v19(v2, 1, 1, v17);
  sub_26B9AACF4();
  v25 = 2 * v22;
  v26 = v57;
  v54 = *(v24 + 48);
  v57[2 * v22] = 2;
  sub_26B9AAFF4();
  v28 = v61;
  v27 = v62;
  v62(v20, 1, 1, v61);
  v59(v2, 1, 1, v60);
  sub_26B9AACF4();
  v29 = v58;
  v30 = v63;
  v54 = *(v63 + 48);
  v26[v25 + v58] = 3;
  sub_26B9AAFF4();
  v27(v20, 1, 1, v28);
  v32 = v59;
  v31 = v60;
  v59(v21, 1, 1, v60);
  sub_26B9AACF4();
  v33 = 4 * v29;
  v34 = v26;
  v35 = &v26[4 * v29];
  v36 = *(v30 + 48);
  *v35 = 4;
  sub_26B9AAFF4();
  v37 = v62;
  v62(v20, 1, 1, v61);
  v32(v21, 1, 1, v31);
  sub_26B9AACF4();
  v38 = v58;
  v54 = *(v63 + 48);
  v34[v33 + v58] = 5;
  sub_26B9AAFF4();
  v39 = v61;
  v37(v20, 1, 1, v61);
  v40 = v59;
  v41 = v60;
  v59(v21, 1, 1, v60);
  sub_26B9AACF4();
  v42 = v57;
  v43 = &v57[6 * v38];
  v44 = v63;
  v54 = *(v63 + 48);
  *v43 = 6;
  sub_26B9AAFF4();
  v45 = v39;
  v46 = v62;
  v62(v20, 1, 1, v45);
  v40(v21, 1, 1, v41);
  sub_26B9AACF4();
  v47 = &v42[v56 - v58];
  v58 = *(v44 + 48);
  *v47 = 7;
  sub_26B9AAFF4();
  v48 = v61;
  v46(v20, 1, 1, v61);
  v50 = v59;
  v49 = v60;
  v59(v21, 1, 1, v60);
  sub_26B9AACF4();
  v51 = *(v63 + 48);
  v42[v56] = 8;
  sub_26B9AAFF4();
  v62(v20, 1, 1, v48);
  v50(v21, 1, 1, v49);
  sub_26B9AACF4();
  v52 = sub_26B8F6BD8(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v52;
}

unint64_t sub_26B8F7528(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_26B8F78A0()
{
  result = qword_280425C28;
  if (!qword_280425C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C28);
  }

  return result;
}

uint64_t sub_26B8F7938(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26B8F7984()
{
  result = qword_280425C40;
  if (!qword_280425C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C40);
  }

  return result;
}

unint64_t sub_26B8F79DC()
{
  result = qword_280425C48;
  if (!qword_280425C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C48);
  }

  return result;
}

unint64_t sub_26B8F7A34()
{
  result = qword_280425C50;
  if (!qword_280425C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C50);
  }

  return result;
}

unint64_t sub_26B8F7A98()
{
  result = qword_280425C58;
  if (!qword_280425C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C58);
  }

  return result;
}

unint64_t sub_26B8F7AF0()
{
  result = qword_280425C60;
  if (!qword_280425C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C60);
  }

  return result;
}

unint64_t sub_26B8F7B48()
{
  result = qword_280425C68;
  if (!qword_280425C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C68);
  }

  return result;
}

unint64_t sub_26B8F7BA0()
{
  result = qword_280425C70;
  if (!qword_280425C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C70);
  }

  return result;
}

unint64_t sub_26B8F7C48()
{
  result = qword_280425C78;
  if (!qword_280425C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C78);
  }

  return result;
}

unint64_t sub_26B8F7CA0()
{
  result = qword_280425C80;
  if (!qword_280425C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C80);
  }

  return result;
}

unint64_t sub_26B8F7CF8()
{
  result = qword_280425C88;
  if (!qword_280425C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C88);
  }

  return result;
}

void sub_26B8F7D74()
{
  sub_26B8F7FB8(319, &qword_280425C90, sub_26B8F7E70);
  if (v0 <= 0x3F)
  {
    sub_26B8F7EC4();
    if (v1 <= 0x3F)
    {
      sub_26B8F7FB8(319, &qword_280425CB8, sub_26B8F7B48);
      if (v2 <= 0x3F)
      {
        sub_26B9AAD04();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26B8F7E70()
{
  result = qword_280425C98;
  if (!qword_280425C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C98);
  }

  return result;
}

void sub_26B8F7EC4()
{
  if (!qword_280425CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425CA8, &qword_26B9AF178);
    sub_26B8F7F34();
    v0 = sub_26B9AAA54();
    if (!v1)
    {
      atomic_store(v0, &qword_280425CA0);
    }
  }
}

unint64_t sub_26B8F7F34()
{
  result = qword_280425CB0;
  if (!qword_280425CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425CA8, &qword_26B9AF178);
    sub_26B8F7E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425CB0);
  }

  return result;
}

void sub_26B8F7FB8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_26B9AAA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchEntityFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchEntityFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B8F82E0()
{
  result = qword_280428750[0];
  if (!qword_280428750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280428750);
  }

  return result;
}

unint64_t sub_26B8F8338()
{
  result = qword_280428860;
  if (!qword_280428860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280428860);
  }

  return result;
}

unint64_t sub_26B8F8390()
{
  result = qword_280428868[0];
  if (!qword_280428868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280428868);
  }

  return result;
}

uint64_t sub_26B8F83E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B8F842C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD0, &qword_26B9AF2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8F84B4()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9AB224();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26B9AC4B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26B9AB014();
  __swift_allocate_value_buffer(v9, qword_280433CC8);
  __swift_project_value_buffer(v9, qword_280433CC8);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B8F86A8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v3 = &v26 - v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_26B9AB004();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B9AB224();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_26B9AC4B4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_26B9AB014();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v10 + 104))(v13, *MEMORY[0x277CC9110], v9);
  sub_26B9AB024();
  v21 = *(v19 + 56);
  v21(v8, 1, 1, v18);
  v21(v27, 1, 1, v18);
  sub_26B9AACC4();
  v22 = sub_26B9AACD4();
  (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
  v23 = v28;
  sub_26B9AAC44();
  v24 = sub_26B9AAC34();
  return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
}

unint64_t sub_26B8F8AB8()
{
  result = qword_280425CF8;
  if (!qword_280425CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425CF8);
  }

  return result;
}

uint64_t sub_26B8F8B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425FC0, &unk_26B9AF550);
  v0 = sub_26B9AAC64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B9AF300;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x277CB9FF8], v0);
  qword_280433CE8 = v4;
  return result;
}

unint64_t sub_26B8F8BF0()
{
  result = qword_280425D18;
  if (!qword_280425D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425D18);
  }

  return result;
}

unint64_t sub_26B8F8C44()
{
  result = qword_280425D20;
  if (!qword_280425D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425D20);
  }

  return result;
}

uint64_t sub_26B8F8CA0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_26B9AACB4();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  sub_26B9AC804();
  v2[9] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_26B8F8D94, v7, v6);
}

uint64_t sub_26B8F8D94()
{
  v1 = *(*(v0 + 40) + 24);
  sub_26B9AA894();
  v2 = [*(v0 + 16) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(*(v0 + 40) + 16);
    sub_26B9AA894();
    v4 = *(v0 + 24);
    *(v0 + 96) = v4;
    if (v4)
    {
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v9 = [objc_allocWithZone(SUIUpdateSearchQueryCommand) init];
      *(v0 + 104) = v9;
      v10 = v8[1];
      sub_26B9AAA74();
      [v9 setQueryKind_];
      v11 = *v8;
      v12 = v9;
      sub_26B9AAA74();
      sub_26B9AACA4();
      (*(v6 + 8))(v5, v7);
      v13 = sub_26B9AC4C4();

      [v12 setSearchString_];

      v14 = *(MEMORY[0x277D4C810] + 4);
      v22 = (*MEMORY[0x277D4C810] + MEMORY[0x277D4C810]);
      v15 = swift_task_alloc();
      *(v0 + 112) = v15;
      *v15 = v0;
      v15[1] = sub_26B8F9094;

      return v22(v12, 0, 0);
    }

    else
    {
      v19 = *(v0 + 72);

      sub_26B9AA8F4();
      sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0]);
      swift_allocError();
      sub_26B9AA8E4();
      swift_willThrow();
      v20 = *(v0 + 64);

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    v17[1] = sub_26B8F925C;
    v18 = *(v0 + 40);

    return sub_26B8F94F4();
  }
}

uint64_t sub_26B8F9094()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_26B8F947C;
  }

  else
  {
    v7 = sub_26B8F91D0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26B8F91D0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[4];

  sub_26B9AA9F4();

  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26B8F925C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_26B8F9410;
  }

  else
  {
    v7 = sub_26B8F9398;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26B8F9398()
{
  v1 = v0[9];
  v2 = v0[4];

  sub_26B9AA9F4();
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B8F9410()
{
  v1 = v0[9];

  v2 = v0[17];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B8F947C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[15];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26B8F94F4()
{
  v1[9] = v0;
  sub_26B9AC804();
  v1[10] = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_26B8F958C, v3, v2);
}

uint64_t sub_26B8F958C()
{
  v0[13] = *(v0[9] + 24);
  sub_26B9AA894();
  v0[14] = v0[7];
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_26B8F9648;

  return sub_26B905ACC(ObjectType);
}

uint64_t sub_26B8F9648()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26B8F978C, v5, v4);
}

uint64_t sub_26B8F978C()
{
  v1 = *(v0 + 104);
  sub_26B9AA894();
  v2 = [*(v0 + 64) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
    *(v0 + 16) = *v3;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v6 = *(MEMORY[0x277CB9C20] + 4);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    v8 = sub_26B8F8AB8();
    *v7 = v0;
    v7[1] = sub_26B8F992C;

    return MEMORY[0x28210B500](v0 + 144, 1, &type metadata for SearchSpotlightIntentInternal, v8);
  }

  else
  {
    v9 = *(v0 + 80);

    sub_26B9AA8F4();
    sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_26B9AA8D4();
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_26B8F992C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_26B8F9AA4;
  }

  else
  {
    v6 = sub_26B8F9A40;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26B8F9A40()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B8F9AA4()
{
  v1 = v0[10];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8F9B08@<X0>(void *a1@<X8>)
{
  if (qword_2804288F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280433CE8;
}

uint64_t sub_26B8F9BAC(uint64_t a1)
{
  v3 = sub_26B9AACB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_26B9AAA84();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_26B8F9C9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_26B9AAA64();
  return sub_26B8F9D10;
}

void sub_26B8F9D14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26B8F9D60@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804288F0 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AB014();
  v3 = __swift_project_value_buffer(v2, qword_280433CC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8F9EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CF0, &unk_26B9AF320);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26B9AAD84();
  return sub_26B9AAD44();
}

uint64_t sub_26B8F9F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B8FA034;

  return sub_26B8F8CA0(a1);
}

uint64_t sub_26B8FA034()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_26B8FA128@<D0>(uint64_t a1@<X8>)
{
  sub_26B8FA1A8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_26B8FA16C(uint64_t a1)
{
  v2 = sub_26B8F8AB8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_26B8FA1A8@<X0>(uint64_t *a1@<X8>)
{
  v63 = a1;
  v60 = sub_26B9AADA4();
  v64 = *(v60 - 8);
  v1 = *(v64 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D00, &qword_26B9AFA00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_26B9AB004();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26B9AB224();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_26B9AC4B4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_26B9AB014();
  v56 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425F70, &qword_26B9AF330);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v14 + 104))(v17, *MEMORY[0x277CC9110], v13);
  v27 = v26;
  sub_26B9AB024();
  v28 = *(v23 + 56);
  v55 = v23 + 56;
  v57 = v28;
  v29 = v12;
  v28(v12, 1, 1, v22);
  v30 = sub_26B9AA9E4();
  v31 = *(*(v30 - 8) + 56);
  v32 = v8;
  v31(v8, 1, 1, v30);
  v33 = *MEMORY[0x277CBA308];
  v34 = *(v64 + 104);
  v64 += 104;
  v53 = v34;
  v36 = v59;
  v35 = v60;
  v34(v59, v33, v60);
  v54 = v27;
  v62 = sub_26B9AAAB4();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425D10, &qword_26B9AF338);
  sub_26B9AAFF4();
  v57(v29, 1, 1, v56);
  LOBYTE(v65) = 0;
  v31(v32, 1, 1, v30);
  v31(v61, 1, 1, v30);
  v53(v36, v33, v35);
  sub_26B8F8BF0();
  sub_26B9ACC04();
  sub_26B8F8C44();
  v37 = sub_26B9AAAA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425D28, &unk_26B9AF340);
  sub_26B9AC394();
  v65 = sub_26B9AC384();
  v66 = v38;
  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  v39 = sub_26B9AA8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D90, &unk_26B9AF350);
  v40 = objc_opt_self();
  v41 = [v40 presentationHelperKey];
  v42 = sub_26B9AC504();
  v44 = v43;

  v65 = v42;
  v66 = v44;
  sub_26B9ACB64();
  sub_26B9AA914();
  v45 = sub_26B9AA8B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B18, &qword_26B9AE6B8);
  v46 = [v40 queryHelperKey];
  v47 = sub_26B9AC504();
  v49 = v48;

  v65 = v47;
  v66 = v49;
  sub_26B9ACB64();
  sub_26B9AA914();
  result = sub_26B9AA8B4();
  v51 = v63;
  *v63 = v62;
  v51[1] = v37;
  v51[2] = v39;
  v51[3] = v45;
  v51[4] = result;
  return result;
}

unint64_t sub_26B8FA8C4()
{
  result = qword_280425DA8;
  if (!qword_280425DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425DA8);
  }

  return result;
}

uint64_t sub_26B8FA960(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B8FA9B0()
{
  result = qword_280425DB8;
  if (!qword_280425DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425DB8);
  }

  return result;
}

unint64_t sub_26B8FAA08()
{
  result = qword_280425DC0;
  if (!qword_280425DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425DC0);
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

uint64_t sub_26B8FAAA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26B8FAAF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26B8FAB48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_26B9AB014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v7, qword_280433CF0);
  __swift_project_value_buffer(v7, qword_280433CF0);
  sub_26B9AAFF4();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_26B9AADD4();
}

uint64_t sub_26B8FACC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657474696D6D6F63;
  }

  else
  {
    v4 = 0x707954756F597361;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x657474696D6D6F63;
  }

  else
  {
    v6 = 0x707954756F597361;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26B9ACEB4();
  }

  return v9 & 1;
}

uint64_t sub_26B8FAD6C()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FADF0()
{
  *v0;
  sub_26B9AC574();
}

uint64_t sub_26B8FAE60()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FAEE0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B9ACDC4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26B8FAF40(uint64_t *a1@<X8>)
{
  v2 = 0x707954756F597361;
  if (*v1)
  {
    v2 = 0x657474696D6D6F63;
  }

  v3 = 0xE900000000000064;
  if (!*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B8FB040@<X0>(uint64_t a1@<X8>)
{
  if (qword_280428B80 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AADE4();
  v3 = __swift_project_value_buffer(v2, qword_280433CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26B8FB0E8(uint64_t a1)
{
  v2 = sub_26B8F8C44();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_26B8FB138(uint64_t a1)
{
  v2 = sub_26B8FBB98();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_26B8FB184(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();

  v5 = sub_26B9ACFF4();

  return sub_26B8FB22C(a1 & 1, v5);
}

unint64_t sub_26B8FB22C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x657474696D6D6F63;
    }

    else
    {
      v6 = 0x707954756F597361;
    }

    if (a1)
    {
      v7 = 0xE900000000000064;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x657474696D6D6F63 : 0x707954756F597361;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000064 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_26B9ACEB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_26B8FB360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F18, &qword_26B9AF888);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F20, &qword_26B9AF890);
    v8 = sub_26B9ACD84();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B8FBE4C(v10, v6);
      v12 = *v6;
      result = sub_26B8FB184(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_26B9AAD04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_26B8FB534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_26B9AB014();
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F10, &qword_26B9AF880);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F18, &qword_26B9AF888);
  v27 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B9AF560;
  v15 = (v14 + v13);
  v23 = *(v11 + 48);
  *v15 = 0;
  sub_26B9AAFF4();
  v16 = *(v9 + 56);
  v24 = v9 + 56;
  v26 = v16;
  v17 = v7;
  v16(v7, 1, 1, v8);
  v18 = sub_26B9AACD4();
  v19 = *(*(v18 - 8) + 56);
  v19(v3, 1, 1, v18);
  sub_26B9AACF4();
  v23 = *(v27 + 48);
  v15[v12] = 1;
  sub_26B9AAFF4();
  v26(v17, 1, 1, v25);
  v19(v3, 1, 1, v18);
  sub_26B9AACF4();
  v20 = sub_26B8FB360(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v20;
}

unint64_t sub_26B8FB8BC()
{
  result = qword_280425EB0;
  if (!qword_280425EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EB0);
  }

  return result;
}

unint64_t sub_26B8FB914()
{
  result = qword_280425EB8;
  if (!qword_280425EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425EC0, &qword_26B9AF610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EB8);
  }

  return result;
}

unint64_t sub_26B8FB97C()
{
  result = qword_280425EC8;
  if (!qword_280425EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EC8);
  }

  return result;
}

unint64_t sub_26B8FB9D4()
{
  result = qword_280425ED0;
  if (!qword_280425ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425ED0);
  }

  return result;
}

unint64_t sub_26B8FBA2C()
{
  result = qword_280425ED8;
  if (!qword_280425ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425ED8);
  }

  return result;
}

unint64_t sub_26B8FBA90()
{
  result = qword_280425EE0;
  if (!qword_280425EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EE0);
  }

  return result;
}

unint64_t sub_26B8FBAE8()
{
  result = qword_280425EE8;
  if (!qword_280425EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EE8);
  }

  return result;
}

unint64_t sub_26B8FBB40()
{
  result = qword_280425EF0;
  if (!qword_280425EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EF0);
  }

  return result;
}

unint64_t sub_26B8FBB98()
{
  result = qword_280425EF8;
  if (!qword_280425EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EF8);
  }

  return result;
}

unint64_t sub_26B8FBC40()
{
  result = qword_280425F00;
  if (!qword_280425F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F00);
  }

  return result;
}

unint64_t sub_26B8FBC9C()
{
  result = qword_280425F08;
  if (!qword_280425F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchSpotlightQueryKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchSpotlightQueryKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B8FBE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F18, &qword_26B9AF888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8FBEC4()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9AB224();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26B9AC4B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26B9AB014();
  __swift_allocate_value_buffer(v9, qword_280433D08);
  __swift_project_value_buffer(v9, qword_280433D08);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B8FC0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_26B9AB004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_26B9AB224();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_26B9AC4B4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_26B9AB014();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_26B9AB024();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_26B9AAC54();
  v18 = sub_26B9AAC34();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

unint64_t sub_26B8FC3C0()
{
  result = qword_280425F30;
  if (!qword_280425F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F30);
  }

  return result;
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

uint64_t sub_26B8FC478(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_26B8FC498, 0, 0);
}

uint64_t sub_26B8FC498()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(SUIUpdateSearchQueryCommand) init];
  v0[5] = v2;
  [v2 setQueryKind_];
  [v2 setSearchString_];
  sub_26B9AA894();
  v0[6] = v0[2];
  v3 = *(MEMORY[0x277D4C810] + 4);
  v6 = (*MEMORY[0x277D4C810] + MEMORY[0x277D4C810]);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26B8FC5A0;

  return v6(v2, 0, 0);
}

uint64_t sub_26B8FC5A0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_26B8FC728;
  }

  else
  {

    v4 = sub_26B8FC6BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B8FC6BC()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_26B9AA9F4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8FC728()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_26B8FC794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F38, &qword_26B9AF8A8);
  sub_26B9AA924();
  sub_26B9AA914();
  return sub_26B9AA8C4();
}

unint64_t sub_26B8FC7E4()
{
  result = qword_280425F40;
  if (!qword_280425F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F40);
  }

  return result;
}

unint64_t sub_26B8FC83C()
{
  result = qword_280425F48;
  if (!qword_280425F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F48);
  }

  return result;
}

uint64_t sub_26B8FC8C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280429290 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AB014();
  v3 = __swift_project_value_buffer(v2, qword_280433D08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8FC990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F28, &unk_26B9AF898);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26B9AAD84();
  return sub_26B9AAD44();
}

uint64_t sub_26B8FCA68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return sub_26B8FC478(a1, v4);
}

uint64_t sub_26B8FCB08@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F38, &qword_26B9AF8A8);
  sub_26B9AA924();
  sub_26B9AA914();
  result = sub_26B9AA8C4();
  *a1 = result;
  return result;
}

uint64_t sub_26B8FCB64(uint64_t a1)
{
  v2 = sub_26B8FC3C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_26B8FCBB4()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9AB224();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26B9AC4B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26B9AB014();
  __swift_allocate_value_buffer(v9, qword_280433D20);
  __swift_project_value_buffer(v9, qword_280433D20);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B8FCDA8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = sub_26B9AB004();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B9AB224();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_26B9AC4B4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_26B9AB014();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v12 + 104))(v15, *MEMORY[0x277CC9110], v11);
  sub_26B9AB024();
  v23 = *(v21 + 56);
  v23(v10, 1, 1, v20);
  v23(v29, 1, 1, v20);
  sub_26B9AACC4();
  v24 = sub_26B9AACD4();
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  v25 = v30;
  sub_26B9AAC44();
  v26 = sub_26B9AAC34();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

unint64_t sub_26B8FD1B8()
{
  result = qword_280425F68;
  if (!qword_280425F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F68);
  }

  return result;
}

uint64_t sub_26B8FD20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425FC0, &unk_26B9AF550);
  v0 = sub_26B9AAC64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B9AF300;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x277CB9FF8], v0);
  qword_280433D40 = v4;
  return result;
}

uint64_t sub_26B8FD314(uint64_t a1)
{
  v2 = sub_26B9AACB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_26B9AAA84();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_26B8FD404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_26B9AACB4();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_26B9AC804();
  v4[11] = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();
  v4[12] = v9;
  v4[13] = v8;

  return MEMORY[0x2822009F8](sub_26B8FD4FC, v9, v8);
}

uint64_t sub_26B8FD4FC()
{
  v1 = *(v0 + 56);
  sub_26B9AA894();
  v2 = [*(v0 + 16) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(v0 + 48);
    sub_26B9AA894();
    v4 = *(v0 + 24);
    *(v0 + 112) = v4;
    if (v4)
    {
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      v7 = *(v0 + 64);
      v8 = *(v0 + 40);
      v9 = [objc_allocWithZone(SUIUpdateSearchQueryCommand) init];
      *(v0 + 120) = v9;
      [v9 setQueryKind_];
      v10 = v9;
      sub_26B9AAA74();
      sub_26B9AACA4();
      (*(v6 + 8))(v5, v7);
      v11 = sub_26B9AC4C4();

      [v10 setSearchString_];

      v12 = *(MEMORY[0x277D4C810] + 4);
      v22 = (*MEMORY[0x277D4C810] + MEMORY[0x277D4C810]);
      v13 = swift_task_alloc();
      *(v0 + 128) = v13;
      *v13 = v0;
      v13[1] = sub_26B8FD7E4;

      return v22(v10, 0, 0);
    }

    else
    {
      v19 = *(v0 + 88);

      sub_26B9AA8F4();
      sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0]);
      swift_allocError();
      sub_26B9AA8E4();
      swift_willThrow();
      v20 = *(v0 + 80);

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_26B8FD9AC;
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v18 = *(v0 + 40);

    return sub_26B8FDC44(v18, v16, v17);
  }
}

uint64_t sub_26B8FD7E4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_26B8FDBCC;
  }

  else
  {
    v7 = sub_26B8FD920;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26B8FD920()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[4];

  sub_26B9AA9F4();

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26B8FD9AC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_26B8FDB60;
  }

  else
  {
    v7 = sub_26B8FDAE8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26B8FDAE8()
{
  v1 = v0[11];
  v2 = v0[4];

  sub_26B9AA9F4();
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B8FDB60()
{
  v1 = v0[11];

  v2 = v0[19];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26B8FDBCC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];

  v4 = v0[17];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26B8FDC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_26B9AC804();
  v3[10] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_26B8FDCE0, v5, v4);
}

uint64_t sub_26B8FDCE0()
{
  v1 = v0[9];
  sub_26B9AA894();
  v0[13] = v0[5];
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_26B8FDD94;

  return sub_26B905ACC(ObjectType);
}

uint64_t sub_26B8FDD94()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26B8FDED8, v5, v4);
}

uint64_t sub_26B8FDED8()
{
  v1 = *(v0 + 72);
  sub_26B9AA894();
  v2 = [*(v0 + 48) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v3;
    v4 = *(MEMORY[0x277CB9C20] + 4);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    v6 = sub_26B8FD1B8();
    *v5 = v0;
    v5[1] = sub_26B8FE074;

    return MEMORY[0x28210B500](v0 + 136, 1, &type metadata for SearchSpotlightIntent, v6);
  }

  else
  {
    v7 = *(v0 + 80);

    sub_26B9AA8F4();
    sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_26B9AA8D4();
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26B8FE074()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_26B8FE188;
  }

  else
  {
    v6 = sub_26B8F9A40;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26B8FE188()
{
  v1 = v0[10];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8FE1F0@<X0>(void *a1@<X8>)
{
  if (qword_280429428 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280433D40;
}

uint64_t sub_26B8FE270(uint64_t a1)
{
  v3 = sub_26B9AACB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_26B9AAA84();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_26B8FE360(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_26B9AAA64();
  return sub_26B8F9D10;
}

uint64_t sub_26B8FE3D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_280429420 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AB014();
  v3 = __swift_project_value_buffer(v2, qword_280433D20);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8FE4D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F60, &unk_26B9AF9F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26B9AAD84();
  return sub_26B9AAD44();
}

uint64_t sub_26B8FE5B4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EB6C8;

  return sub_26B8FD404(a1, v4, v5, v6);
}

uint64_t sub_26B8FE668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B8FE6D0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_26B8FE694(uint64_t a1)
{
  v2 = sub_26B8FD1B8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_26B8FE6D0()
{
  v0 = sub_26B9AADA4();
  v32 = *(v0 - 8);
  v33 = v0;
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v0);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D00, &qword_26B9AFA00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_26B9AB004();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B9AB224();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_26B9AC4B4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_26B9AB014();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425F70, &qword_26B9AF330);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9110], v10);
  sub_26B9AB024();
  (*(v20 + 56))(v9, 1, 1, v19);
  v22 = sub_26B9AA9E4();
  (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  (*(v32 + 104))(v31, *MEMORY[0x277CBA308], v33);
  v23 = sub_26B9AAAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425D28, &unk_26B9AF340);
  sub_26B9AC394();
  v34 = sub_26B9AC384();
  v35 = v24;
  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  sub_26B9AA8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D90, &unk_26B9AF350);
  v25 = [objc_opt_self() presentationHelperKey];
  v26 = sub_26B9AC504();
  v28 = v27;

  v34 = v26;
  v35 = v28;
  sub_26B9ACB64();
  sub_26B9AA914();
  sub_26B9AA8B4();
  return v23;
}

unint64_t sub_26B8FEBFC()
{
  result = qword_280425F80;
  if (!qword_280425F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F80);
  }

  return result;
}

unint64_t sub_26B8FEC58()
{
  result = qword_280425F90;
  if (!qword_280425F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F90);
  }

  return result;
}

unint64_t sub_26B8FECB0()
{
  result = qword_280425F98;
  if (!qword_280425F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F98);
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

uint64_t sub_26B8FED50(uint64_t *a1, int a2)
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

uint64_t sub_26B8FED98(uint64_t result, int a2, int a3)
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

uint64_t sub_26B8FEDE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_26B9AB004();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9AB224();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_26B9AC4B4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_26B9AB014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v15, qword_280433D48);
  __swift_project_value_buffer(v15, qword_280433D48);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_26B9AB024();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_26B9AADD4();
}

uint64_t sub_26B8FF0D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v64 = &v43 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v43 - v5;
  v68 = sub_26B9AB004();
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v68);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26B9AB224();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_26B9AC4B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = sub_26B9AB014();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v58);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A0, &qword_26B9B0018);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A8, &qword_26B9B0020);
  v66 = v18;
  v19 = *(v18 - 8);
  v57 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v53 = 2 * v57;
  v21 = swift_allocObject();
  v54 = v21;
  *(v21 + 16) = xmmword_26B9AFBD0;
  v65 = v21 + v20;
  v51 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v59 = *MEMORY[0x277CC9110];
  v44 = *(v6 + 104);
  v67 = v6 + 104;
  v22 = v9;
  v44(v9);
  v23 = v17;
  sub_26B9AB024();
  v24 = *(v14 + 56);
  v56 = v14 + 56;
  v62 = v24;
  v25 = v63;
  v26 = v58;
  v24(v63, 1, 1, v58);
  v60 = sub_26B9AACD4();
  v27 = *(v60 - 8);
  v28 = *(v27 + 56);
  v61 = v27 + 56;
  v29 = v64;
  v28(v64, 1, 1, v60);
  v52 = v28;
  v30 = v65;
  v55 = v23;
  sub_26B9AACF4();
  v31 = *(v66 + 48);
  v50 = (v30 + v57);
  v51 = v31;
  *v50 = 1;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v32 = v44;
  (v44)(v22, v59, v68);
  sub_26B9AB024();
  v33 = v56;
  v62(v25, 1, 1, v26);
  v28(v29, 1, 1, v60);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260B0, &qword_26B9B0028);
  v57 = *(v33 + 16);
  v48 = *(v33 + 24);
  v47 = ((v48 + 32) & ~v48) + 2 * v57;
  v46 = (v48 + 32) & ~v48;
  v34 = swift_allocObject();
  v45 = xmmword_26B9AF560;
  *(v34 + 16) = xmmword_26B9AF560;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v35 = v59;
  v36 = v68;
  v37 = v32;
  (v32)(v22, v59, v68);
  sub_26B9AB024();
  sub_26B9AC4A4();
  sub_26B9AB214();
  (v32)(v22, v35, v36);
  sub_26B9AB024();
  v38 = v63;
  v39 = v64;
  sub_26B9AACE4();
  v51 = v65 + v53;
  v53 = *(v66 + 48);
  *v51 = 2;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v40 = v68;
  v37(v22, v35, v68);
  sub_26B9AB024();
  v62(v38, 1, 1, v58);
  v52(v39, 1, 1, v60);
  *(swift_allocObject() + 16) = v45;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v37(v22, v35, v40);
  sub_26B9AB024();
  sub_26B9AC4A4();
  sub_26B9AB214();
  v37(v22, v35, v40);
  sub_26B9AB024();
  sub_26B9AACE4();
  v41 = sub_26B900DA0(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280433D60 = v41;
  return result;
}

uint64_t sub_26B8FF9E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  if (v2 != 1)
  {
    v4 = 0x65736F6C63;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C67676F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1852141679;
  if (*a2 != 1)
  {
    v8 = 0x65736F6C63;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26B9ACEB4();
  }

  return v11 & 1;
}

uint64_t sub_26B8FFACC()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FFB60()
{
  *v0;
  *v0;
  sub_26B9AC574();
}

uint64_t sub_26B8FFBE0()
{
  v1 = *v0;
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FFC70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B900F74();
  *a2 = result;
  return result;
}

void sub_26B8FFCA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x65736F6C63;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26B8FFD28(uint64_t a1)
{
  v2 = sub_26B901014();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_26B8FFD74()
{
  if (qword_2804296B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_26B8FFDEC(uint64_t a1)
{
  v2 = sub_26B9017D8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_26B8FFE48()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9AB224();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26B9AC4B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26B9AB014();
  __swift_allocate_value_buffer(v9, qword_280433D68);
  __swift_project_value_buffer(v9, qword_280433D68);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B90003C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_26B9AB004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_26B9AB224();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_26B9AC4B4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_26B9AB014();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_26B9AB024();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_26B9AAC54();
  v18 = sub_26B9AAC34();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_26B90036C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B9AAA94();
  *a2 = result;
  return result;
}

uint64_t sub_26B900400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_26B9AC804();
  v3[8] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_26B90049C, v5, v4);
}

uint64_t sub_26B90049C()
{
  v1 = *(v0 + 48);
  sub_26B9AAA74();
  sub_26B9AAA74();
  if (*(v0 + 105))
  {
    if (*(v0 + 105) == 1)
    {
LABEL_3:
      v2 = *(v0 + 56);
      sub_26B9AA894();
      *(v0 + 88) = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = sub_26B90060C;

      return sub_26B905ACC(ObjectType);
    }
  }

  else
  {
    v6 = *(v0 + 56);
    sub_26B9AA894();
    v7 = [*(v0 + 32) spotlightIsVisible];
    swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  sub_26B9AA894();
  [*(v0 + 16) dismissSpotlight];
  swift_unknownObjectRelease();
  v10 = *(v0 + 40);
  sub_26B9AA9F4();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26B90060C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_26B900750, v5, v4);
}

uint64_t sub_26B900750()
{
  v1 = v0[8];

  v2 = v0[5];
  sub_26B9AA9F4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26B9007F8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_26B9008B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD8, &qword_26B9AFBE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FE0, &qword_26B9AFBF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_26B9AAD74();
  sub_26B9AAD64();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FF0, &qword_26B9AFC20);
  sub_26B9AAD54();

  sub_26B9AAD64();
  sub_26B9AAD94();
  return sub_26B9AAD44();
}

uint64_t sub_26B900A58(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EB6C8;

  return sub_26B900400(a1, v5, v4);
}

uint64_t sub_26B900B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B901068();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B900B2C(uint64_t a1)
{
  v2 = sub_26B900FC0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_26B900B68(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_26B9ACFB4();
  sub_26B9AC574();

  v4 = sub_26B9ACFF4();

  return sub_26B900C20(a1, v4);
}

unint64_t sub_26B900C20(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1852141679;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x65736F6C63;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v8 != 0x656C67676F74)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x656C67676F74;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1852141679;
      }

      else
      {
        v10 = 0x65736F6C63;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_26B9ACEB4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_26B900DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A8, &qword_26B9B0020);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260B8, &unk_26B9B0030);
    v8 = sub_26B9ACD84();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B901CA4(v10, v6);
      v12 = *v6;
      result = sub_26B900B68(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_26B9AAD04();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_26B900F74()
{
  v0 = sub_26B9ACDC4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26B900FC0()
{
  result = qword_280425FE8;
  if (!qword_280425FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425FE8);
  }

  return result;
}

unint64_t sub_26B901014()
{
  result = qword_280426000;
  if (!qword_280426000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426000);
  }

  return result;
}

uint64_t sub_26B901068()
{
  v0 = sub_26B9AADA4();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D00, &qword_26B9AFA00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v34 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - v11;
  v13 = sub_26B9AB004();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26B9AB224();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_26B9AC4B4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_26B9AB014();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FF8, qword_26B9AFC28);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v14 + 104))(v17, *MEMORY[0x277CC9110], v13);
  sub_26B9AB024();
  (*(v23 + 56))(v12, 1, 1, v22);
  v40 = 1;
  v25 = sub_26B9AA9E4();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v34, 1, 1, v25);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  sub_26B901014();
  v27 = sub_26B9AAAA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D90, &unk_26B9AF350);
  v28 = [objc_opt_self() presentationHelperKey];
  v29 = sub_26B9AC504();
  v31 = v30;

  v38 = v29;
  v39 = v31;
  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  sub_26B9AA8B4();
  return v27;
}

unint64_t sub_26B901574()
{
  result = qword_280426010;
  if (!qword_280426010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426010);
  }

  return result;
}

unint64_t sub_26B9015CC()
{
  result = qword_280426018;
  if (!qword_280426018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426018);
  }

  return result;
}

unint64_t sub_26B901624()
{
  result = qword_280426020;
  if (!qword_280426020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426020);
  }

  return result;
}

unint64_t sub_26B90167C()
{
  result = qword_280426028;
  if (!qword_280426028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426028);
  }

  return result;
}

unint64_t sub_26B9016D4()
{
  result = qword_280426030;
  if (!qword_280426030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426030);
  }

  return result;
}

unint64_t sub_26B90172C()
{
  result = qword_280426038;
  if (!qword_280426038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426038);
  }

  return result;
}

unint64_t sub_26B901780()
{
  result = qword_280426040;
  if (!qword_280426040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426040);
  }

  return result;
}

unint64_t sub_26B9017D8()
{
  result = qword_280426048;
  if (!qword_280426048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426048);
  }

  return result;
}

unint64_t sub_26B901884()
{
  result = qword_280426050;
  if (!qword_280426050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426050);
  }

  return result;
}

unint64_t sub_26B9018DC()
{
  result = qword_280426058;
  if (!qword_280426058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426058);
  }

  return result;
}

unint64_t sub_26B901934()
{
  result = qword_280426060;
  if (!qword_280426060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426060);
  }

  return result;
}

unint64_t sub_26B9019D0()
{
  result = qword_280426078;
  if (!qword_280426078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426078);
  }

  return result;
}

unint64_t sub_26B901A28()
{
  result = qword_280426080;
  if (!qword_280426080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426080);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B901AC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B901B08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ToggleSpotlightIntent.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToggleSpotlightIntent.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B901CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A8, &qword_26B9B0020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ParameterQueryInvocationKind.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B901DC0()
{
  v0 = sub_26B9AB394();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9AB334();
  v5 = sub_26B9AB384();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ParameterSummaryBoolParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_26B9AC0E4() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_26B9AB984();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_26B9AB394();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  sub_26B9AC804();
  v3[12] = sub_26B9AC7F4();
  v12 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B902044, v12, v11);
}

uint64_t sub_26B902044()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v15 = v0[6];
  v16 = v0[5];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  sub_26B9AB334();
  v10 = sub_26B9AB384();
  v17 = v11;
  v18 = v10;
  (*(v4 + 8))(v2, v3);
  (*(v5 + 16))(v6, v8, v15);
  sub_26B9AB304();
  v9[3] = type metadata accessor for BoolParameterQuery();
  v9[4] = sub_26B904E20(&qword_2804260C0, type metadata accessor for BoolParameterQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  BoolParameterQuery.init(searchString:toolInvocation:parameterDefinition:)(v18, v17, v6, v16, boxed_opaque_existential_1);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26B9021B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(*(sub_26B9AC0E4() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = sub_26B9AB984();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_26B9AB394();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *v2;
  v3[10] = v11;
  v3[11] = v12;
  sub_26B9AC804();
  v3[12] = sub_26B9AC7F4();
  v14 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B902330, v14, v13);
}

uint64_t sub_26B902330()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  v15 = v0[5];
  v16 = v0[4];
  v9 = v0[2];

  sub_26B9AB334();
  v10 = sub_26B9AB384();
  v17 = v11;
  v18 = v10;
  (*(v4 + 8))(v3, v6);
  (*(v7 + 16))(v5, v8, v15);
  sub_26B9AB304();
  v9[3] = type metadata accessor for BoolParameterQuery();
  v9[4] = sub_26B904E20(&qword_2804260C0, type metadata accessor for BoolParameterQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  BoolParameterQuery.init(searchString:toolInvocation:parameterDefinition:)(v18, v17, v5, v16, boxed_opaque_existential_1);

  v13 = v0[1];

  return v13();
}

uint64_t ParameterSummaryEnumerationParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v7 = *(*(sub_26B9AC0E4() - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v8 = sub_26B9AB984();
  *(v4 + 72) = v8;
  v9 = *(v8 - 8);
  *(v4 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v11 = sub_26B9AB394();
  *(v4 + 96) = v11;
  v12 = *(v11 - 8);
  *(v4 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v14 = *(*(sub_26B9AC204() - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 160) = *a3;
  sub_26B9AC804();
  *(v4 + 128) = sub_26B9AC7F4();
  v16 = sub_26B9AC7C4();
  *(v4 + 136) = v16;
  *(v4 + 144) = v15;

  return MEMORY[0x2822009F8](sub_26B90268C, v16, v15);
}

uint64_t sub_26B90268C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v16 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  sub_26B9AB354();
  sub_26B9AB334();
  v0[2] = sub_26B9AB384();
  v0[3] = v10;
  (*(v4 + 8))(v2, v3);
  (*(v6 + 16))(v5, v9, v7);
  sub_26B9AB304();
  v11 = *(MEMORY[0x277D7D548] + 4);
  v17 = (*MEMORY[0x277D7D548] + MEMORY[0x277D7D548]);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_26B9027C8;
  v14 = v0[6];
  v13 = v0[7];

  return v17(v13);
}

uint64_t sub_26B9027C8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = sub_26B902A20;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = sub_26B9028EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26B9028EC()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 160);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  v10[3] = type metadata accessor for AppEnumQuery();
  v10[4] = sub_26B904E20(&qword_2804260D0, type metadata accessor for AppEnumQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  AppEnumQuery.init(definition:searchString:toolInvocation:parameterDefinition:showAllCases:selectedValue:)(v5, v2, v3, v7, v8, (v4 & 1) == 0, v9, boxed_opaque_existential_1);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26B902A20()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);

  v3 = sub_26B9ABE84();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 160);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 88);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 32);
  v12[3] = type metadata accessor for AppEnumQuery();
  v12[4] = sub_26B904E20(&qword_2804260D0, type metadata accessor for AppEnumQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  AppEnumQuery.init(definition:searchString:toolInvocation:parameterDefinition:showAllCases:selectedValue:)(v7, v4, v5, v9, v10, (v6 & 1) == 0, v11, boxed_opaque_existential_1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26B902B98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EC52C;

  return ParameterSummaryEnumerationParameter.buildQuery(invocation:kind:)(a1, a2, a3);
}

uint64_t ParameterSummaryEntityParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v7 = sub_26B9AB394();
  *(v4 + 64) = v7;
  v8 = *(v7 - 8);
  *(v4 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v10 = sub_26B9AC0E4();
  *(v4 + 88) = v10;
  v11 = *(v10 - 8);
  *(v4 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v13 = sub_26B9ABF94();
  *(v4 + 112) = v13;
  v14 = *(v13 - 8);
  *(v4 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 185) = *a3;
  sub_26B9AC804();
  *(v4 + 136) = sub_26B9AC7F4();
  v17 = sub_26B9AC7C4();
  *(v4 + 144) = v17;
  *(v4 + 152) = v16;

  return MEMORY[0x2822009F8](sub_26B902E40, v17, v16);
}

uint64_t sub_26B902E40()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  sub_26B9AB344();
  sub_26B9AB304();
  sub_26B9AB334();
  *(v0 + 16) = sub_26B9AB384();
  *(v0 + 24) = v8;
  (*(v5 + 8))(v4, v6);
  *(v0 + 184) = v1;
  v9 = *(MEMORY[0x277D7D548] + 4);
  v14 = (*MEMORY[0x277D7D548] + MEMORY[0x277D7D548]);
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_26B902F50;
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);

  return v14(v11);
}

uint64_t sub_26B902F50()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 144);
    v6 = *(v2 + 152);

    return MEMORY[0x2822009F8](sub_26B9033B8, v5, v6);
  }

  else
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    *(v2 + 168) = v8;
    v9 = swift_task_alloc();
    *(v2 + 176) = v9;
    *v9 = v4;
    v9[1] = sub_26B9030F0;
    v10 = *(v2 + 128);
    v11 = *(v2 + 104);
    v12 = *(v2 + 56);
    v13 = *(v2 + 32);
    v14 = *(v2 + 40);

    return static ToolKitQueryHelper.resolveQuery(for:parameter:invocation:searchString:kind:selectedValue:)(v13, v10, v11, v14, v7, v8, (v2 + 184), v12);
  }
}

uint64_t sub_26B9030F0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v13 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 104);
  v7 = *(*v0 + 96);
  v8 = *(*v0 + 88);
  v9 = *(*v0 + 56);
  v14 = *v0;

  sub_26B8EACD8(v9, &qword_2804260C8, &qword_26B9B0050);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  v10 = *(v1 + 152);
  v11 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26B903324, v11, v10);
}

uint64_t sub_26B903324()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26B9033B8()
{
  v1 = *(v0 + 56);
  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 168) = v3;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_26B9030F0;
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return static ToolKitQueryHelper.resolveQuery(for:parameter:invocation:searchString:kind:selectedValue:)(v9, v6, v7, v10, v4, v3, (v0 + 184), v8);
}

uint64_t sub_26B9034B4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EC52C;

  return ParameterSummaryEntityParameter.buildQuery(invocation:kind:)(a1, a2, a3);
}

uint64_t ParameterSummaryLocationParameter.buildQuery(invocation:kind:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26B9AB394();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_26B9AC804();
  v2[7] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B90365C, v7, v6);
}

uint64_t sub_26B90365C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  sub_26B9AB334();
  v7 = sub_26B9AB384();
  v9 = v8;
  (*(v4 + 8))(v2, v3);
  v10 = nullsub_1(v7, v9);
  v12 = v11;
  v6[3] = &type metadata for LocationParameterQuery;
  v6[4] = sub_26B903738();
  *v6 = v10;
  v6[1] = v12;

  v13 = v0[1];

  return v13();
}

unint64_t sub_26B903738()
{
  result = qword_2804260D8;
  if (!qword_2804260D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260D8);
  }

  return result;
}

uint64_t sub_26B90378C(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_26B9AB394();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;
  sub_26B9AC804();
  v2[7] = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B903884, v9, v8);
}

uint64_t sub_26B903884()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  sub_26B9AB334();
  v7 = sub_26B9AB384();
  v9 = v8;
  (*(v4 + 8))(v3, v5);
  v10 = nullsub_1(v7, v9);
  v12 = v11;
  v6[3] = &type metadata for LocationParameterQuery;
  v6[4] = sub_26B903738();
  *v6 = v10;
  v6[1] = v12;

  v13 = v0[1];

  return v13();
}

uint64_t ParameterSummaryPersonParameter.buildQuery(invocation:kind:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26B9AB394();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_26B9AC804();
  v2[7] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B903A54, v7, v6);
}

uint64_t sub_26B903A54()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  sub_26B9AB334();
  v6 = sub_26B9AB384();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v2, v3);

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v14 = v0[2];
    sub_26B9AB334();
    v15 = sub_26B9AB384();
    v17 = v16;
    v9(v11, v13);
    v18 = j_nullsub_1(v15, v17);
    v20 = v19;
    v14[3] = &type metadata for PersonParameterQuery;
    v14[4] = sub_26B903BB0();
    *v14 = v18;
    v14[1] = v20;
  }

  else
  {
    v21 = v0[2];
    *(v21 + 24) = &type metadata for EmptyQuery;
    *(v21 + 32) = sub_26B903C04();
    EmptyQuery.init()();
  }

  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

unint64_t sub_26B903BB0()
{
  result = qword_2804260E0;
  if (!qword_2804260E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260E0);
  }

  return result;
}

unint64_t sub_26B903C04()
{
  result = qword_2804260E8;
  if (!qword_2804260E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260E8);
  }

  return result;
}

uint64_t sub_26B903C58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return ParameterSummaryPersonParameter.buildQuery(invocation:kind:)(a1);
}

uint64_t ParameterSummaryFileParameter.buildQuery(invocation:kind:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26B9ABFF4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_26B9ABEB4();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_26B9AC0E4();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  sub_26B9AC804();
  v2[17] = sub_26B9AC7F4();
  v17 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B903F34, v17, v16);
}

uint64_t sub_26B903F34()
{
  v1 = v0[17];
  v2 = v0[3];

  v3 = sub_26B901DC0();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v26 = v0[2];
    *(v26 + 24) = &type metadata for EmptyQuery;
    *(v26 + 32) = sub_26B903C04();
    EmptyQuery.init()();
    goto LABEL_27;
  }

  v7 = v0[15];
  v73 = v0[14];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v15 = v0[3];
  v16 = sub_26B9AB304();
  MEMORY[0x26D685FA0](v16);
  (*(v9 + 8))(v8, v10);
  sub_26B97BCE4(v14);
  (*(v12 + 8))(v11, v13);
  if ((*(v7 + 48))(v14, 1, v73) == 1)
  {
    v18 = v0[2];
    v17 = v0[3];
    sub_26B8EACD8(v0[7], &qword_2804260F0, &qword_26B9B0D10);
    v19 = sub_26B901DC0();
    v21 = nullsub_1(v19, v20);
    v23 = v22;
    v25 = v24;
    v18[3] = &type metadata for FileParameterQuery;
    v18[4] = sub_26B904368();
    *v18 = v21;
    v18[1] = v23;
    v18[2] = v25;
LABEL_27:
    v65 = v0[16];
    v66 = v0[13];
    v67 = v0[10];
    v69 = v0[6];
    v68 = v0[7];

    v70 = v0[1];

    return v70();
  }

  v27 = v0[16];
  v28 = v0[14];
  sub_26B9043BC(v0[7], v27);
  v29 = *(v27 + *(v28 + 20));
  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_26:
    v55 = v0[16];
    v57 = v0[2];
    v56 = v0[3];
    v58 = sub_26B901DC0();
    v60 = nullsub_1(v58, v59);
    v62 = v61;
    v64 = v63;
    v57[3] = &type metadata for FileParameterQuery;
    v57[4] = sub_26B904368();
    *v57 = v60;
    v57[1] = v62;
    v57[2] = v64;
    sub_26B904420(v55);
    goto LABEL_27;
  }

  v31 = v0[5];
  v33 = *(v31 + 16);
  v32 = v31 + 16;
  v74 = v33;
  v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v71 = *(v32 + 56);
  v72 = *MEMORY[0x277D72E68];
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v36 = v0[6];
    v37 = v0[4];
    v74(v36, v34, v37);
    v38 = (*(v32 + 72))(v36, v37);
    v39 = v0[6];
    v40 = v0[4];
    if (v38 != v72)
    {
      (*(v32 - 8))(v0[6], v40);
      goto LABEL_10;
    }

    result = (*(v32 + 80))(v0[6], v40);
    v42 = *v39;
    v43 = *(*v39 + 16);
    v44 = v35[2];
    v45 = v44 + v43;
    if (__OFADD__(v44, v43))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v45 <= v35[3] >> 1)
    {
      if (!*(v42 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v44 <= v45)
      {
        v54 = v44 + v43;
      }

      else
      {
        v54 = v44;
      }

      v35 = sub_26B9049FC(isUniquelyReferenced_nonNull_native, v54, 1, v35);
      if (!*(v42 + 16))
      {
LABEL_24:

        if (v43)
        {
          __break(1u);
          goto LABEL_26;
        }

        goto LABEL_10;
      }
    }

    v47 = (v35[3] >> 1) - v35[2];
    result = sub_26B9AB414();
    v48 = *(result - 8);
    if (v47 < v43)
    {
      goto LABEL_31;
    }

    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = *(v48 + 72);
    swift_arrayInitWithCopy();

    if (v43)
    {
      v51 = v35[2];
      v52 = __OFADD__(v51, v43);
      v53 = v51 + v43;
      if (v52)
      {
        goto LABEL_32;
      }

      v35[2] = v53;
    }

LABEL_10:
    v34 += v71;
    if (!--v30)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_26B904368()
{
  result = qword_2804260F8;
  if (!qword_2804260F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260F8);
  }

  return result;
}

uint64_t sub_26B9043BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B904420(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B90447C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return ParameterSummaryFileParameter.buildQuery(invocation:kind:)(a1);
}

uint64_t ParameterSummaryCustomEnumerableParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  v7 = (*v5 + *MEMORY[0x277D7D588]);
  *(v4 + 32) = *v7;
  v8 = v7[1];
  *(v4 + 40) = v8;
  v9 = *(v8 + 16);
  v10 = sub_26B9AB314();
  *(v4 + 48) = v10;
  v11 = *(v10 - 8);
  *(v4 + 56) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v13 = sub_26B9ACA34();
  *(v4 + 72) = v13;
  v14 = *(v13 - 8);
  *(v4 + 80) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 112) = *a3;
  sub_26B9AC804();
  *(v4 + 104) = sub_26B9AC7F4();
  v17 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9046D0, v17, v16);
}

uint64_t sub_26B9046D0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v2, 1, 1, v7);
  sub_26B9AB324();
  if ((*(v4 + 88))(v3, v5) == *MEMORY[0x277D7D550])
  {
    v10 = *(v0 + 96);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    v14 = *(v0 + 32);
    (*(*(v0 + 80) + 8))(v10, *(v0 + 72));
    (*(v12 + 96))(v11, v13);
    (*(v8 + 32))(v10, v11, v14);
    v9(v10, 0, 1, v14);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  v29 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v30 = *(v0 + 64);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);
  v23 = sub_26B901DC0();
  v25 = v24;
  (*(v17 + 16))(v15, v16, v18);
  v22[3] = type metadata accessor for CustomEnumerableParameterQuery();
  v22[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  CustomEnumerableParameterQuery.init(searchString:showAllCases:selectedValue:)(v23, v25, (v29 & 1) == 0, v15, boxed_opaque_existential_1);
  (*(v17 + 8))(v16, v18);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_26B904950(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EC52C;

  return ParameterSummaryCustomEnumerableParameter.buildQuery(invocation:kind:)(a1, v8, a3);
}

size_t sub_26B9049FC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426130, qword_26B9B0298);
  v10 = *(sub_26B9AB414() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9AB414() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26B904BD8()
{
  result = qword_280426100;
  if (!qword_280426100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426100);
  }

  return result;
}

uint64_t sub_26B904C2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904C68(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426108, MEMORY[0x277D7D560]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904CC0(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426110, MEMORY[0x277D7D580]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904D18(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426118, MEMORY[0x277D7D568]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904D70(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426120, MEMORY[0x277D7D578]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904DC8(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426128, MEMORY[0x277D7D570]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of QueryDrivenParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26B8EB6C8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_26B904FC4()
{
  v1 = (v0 + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_26B90501C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id AppIntentsQueryHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentsQueryHelper.init()()
{
  v1 = &v0[OBJC_IVAR___SUIAppIntentsQueryHelper_searchString];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppIntentsQueryHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26B9050F8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_26B9AC804();
  v3[8] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B905194, v5, v4);
}

uint64_t sub_26B905194()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = (v2 + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = v4;
  v5[1] = v3;

  v7 = v0[1];

  return v7();
}

id AppIntentsQueryHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentsQueryHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AppIntentsQueryHelper.update(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EB6C8;

  return v10(a1, a2);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B905410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_26B9056CC(a3, v24 - v10);
  v12 = sub_26B9AC824();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26B90573C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26B9AC814();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_26B9AC7C4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_26B9AC554() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    sub_26B9AAAE4();
    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_26B90573C(a3);

    return v22;
  }

LABEL_8:
  sub_26B90573C(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26B9056CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B90573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9057A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EB6C8;

  return sub_26B8EB318(a1, v5);
}

uint64_t _s17SpotlightUIShared22WindowCollapseSignpostO9hashValueSivg_0()
{
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](0);
  return sub_26B9ACFF4();
}

uint64_t sub_26B9058D0()
{
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](0);
  return sub_26B9ACFF4();
}

uint64_t sub_26B905920()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9AB224();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26B9AC4B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B905ACC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_26B9AC804();
  v2[5] = sub_26B9AC7F4();
  v4 = sub_26B9AC7C4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_26B905B68, v4, v3);
}

uint64_t sub_26B905B68()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  *(v0 + 64) = sub_26B9AC7F4();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v6;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_26B905C78;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_26B905C78()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26B905DD8, v6, v5);
}

uint64_t sub_26B905DD8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

void sub_26B905E38(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426148, &qword_26B9B0458);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_26B906140;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B9061AC;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  [a2 presentSpotlightWithCompletionHandler_];
  _Block_release(v11);
}

unint64_t sub_26B905FF4()
{
  result = qword_280426140;
  if (!qword_280426140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426140);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SUIAppIntentError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SUIAppIntentError(_WORD *result, int a2, int a3)
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

uint64_t sub_26B906140()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426148, &qword_26B9B0458) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26B9AC7E4();
}

uint64_t sub_26B9061AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_26B9AAAE4();
  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t sub_26B906208()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261A0, &qword_26B9B0540);
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v29);
  v3 = &v20 - v2;
  v4 = sub_26B9AAAF4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261A8, &qword_26B9B0548);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26B900FC0();
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AABB4();

  sub_26B9AABC4();
  v27 = *MEMORY[0x277CB9F50];
  v26 = v5[13];
  v23 = v4;
  v26(v8);
  sub_26B9AABA4();
  v11 = v5[1];
  v24 = v5 + 1;
  v25 = v11;
  v11(v8, v4);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v28 = sub_26B9AAB14();
  v21 = *(v0 + 8);
  v12 = v29;
  v21(v3, v29);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AABB4();

  sub_26B9AABC4();
  sub_26B9AABE4();
  v22 = sub_26B9AAB14();
  v13 = v21;
  v21(v3, v12);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AABB4();

  sub_26B9AABC4();
  v14 = v23;
  (v26)(v8, v27, v23);
  sub_26B9AABA4();
  v25(v8, v14);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v15 = sub_26B9AAB14();
  v13(v3, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261B0, &qword_26B9B0578);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26B9AFBD0;
  v17 = v22;
  *(v16 + 32) = v28;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_26B9AAB04();

  return v18;
}

uint64_t sub_26B9066BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B900398();
  *a2 = result;
  return result;
}

uint64_t sub_26B9066EC(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *a1;
  return sub_26B9003CC();
}

uint64_t sub_26B9066FC(uint64_t a1)
{
  v33 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426188, &qword_26B9B0528);
  v34 = *(v30 - 8);
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = &v23 - v2;
  v4 = sub_26B9AAAF4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426190, &qword_26B9B0530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26B8FD1B8();
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  v32 = sub_26B9075BC();
  sub_26B9AAAE4();

  sub_26B9AABB4();

  sub_26B9AABC4();
  LODWORD(v29) = *MEMORY[0x277CB9F50];
  v28 = v5[13];
  v24 = v4;
  v28(v8);
  sub_26B9AABA4();
  v11 = v5[1];
  v26 = v5 + 1;
  v27 = v11;
  v11(v8, v4);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v31 = sub_26B9AAB14();
  v12 = *(v34 + 8);
  v34 += 8;
  v25 = v12;
  v13 = v30;
  v12(v3, v30);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AAAE4();

  sub_26B9AABB4();

  sub_26B9AABC4();
  v14 = v24;
  (v28)(v8, v29, v24);
  sub_26B9AABA4();
  v27(v8, v14);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v29 = sub_26B9AAB14();
  v15 = v13;
  v16 = v13;
  v17 = v25;
  v25(v3, v16);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AAAE4();

  sub_26B9AABB4();

  sub_26B9AABC4();
  sub_26B9AABE4();
  v18 = sub_26B9AAB14();
  v17(v3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426198, &qword_26B9B0538);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26B9AFBD0;
  v20 = v29;
  *(v19 + 32) = v31;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = sub_26B9AAB04();

  return v21;
}

uint64_t sub_26B906C64(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  return sub_26B8FD2F0();
}

uint64_t sub_26B906C74(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26B9AACB4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  return sub_26B8FD314(v7);
}

uint64_t sub_26B906D44()
{
  v0 = sub_26B9AAB84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_26B9075BC();
  sub_26B9AAAE4();

  sub_26B8FD1B8();
  sub_26B9AAB74();
  v5 = sub_26B9AAB64();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426178, &qword_26B9B0518);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26B9AF300;
  *(v6 + 32) = v5;
  v7 = sub_26B9AAB54();

  return v7;
}

uint64_t sub_26B906EB4()
{
  v0 = sub_26B9AAB34();
  v1 = sub_26B9AAB34();
  v2 = sub_26B9AAB34();
  v3 = sub_26B9AAB34();
  v4 = sub_26B9AAB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426180, &qword_26B9B0520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9B0460;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_26B9AAB24();

  return v6;
}

uint64_t sub_26B906FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426158, &qword_26B9B04D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - v3;
  v5 = sub_26B9AAAF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426160, &qword_26B9B04E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_26B8FC3C0();
  sub_26B9AABD4();
  sub_26B9AABC4();
  (*(v6 + 104))(v9, *MEMORY[0x277CB9F50], v5);
  sub_26B9AABA4();
  (*(v6 + 8))(v9, v5);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v12 = sub_26B9AAB14();
  v13 = *(v1 + 8);
  v13(v4, v0);
  sub_26B9AAB94();
  v14 = sub_26B9AAB14();
  v13(v4, v0);
  sub_26B9AAB94();
  v15 = sub_26B9AAB14();
  v13(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426168, &qword_26B9B04E8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26B9AFBD0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  v17 = sub_26B9AAB04();

  return v17;
}

uint64_t sub_26B907348()
{
  v0 = sub_26B9AAC14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B9007BC();
  v18 = v5;
  sub_26B900FC0();
  sub_26B9AAC24();
  v6 = sub_26B9AAC04();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v17 = sub_26B8FE1EC();
  v18 = v8;
  v19 = v9;
  sub_26B8FD1B8();
  sub_26B9AAC24();
  v10 = sub_26B9AAC04();
  v11 = (v7)(v4, v0);
  v17 = sub_26B8FCBB0(v11);
  sub_26B8FC3C0();
  sub_26B9AAC24();
  v12 = sub_26B9AAC04();
  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426150, &qword_26B9B04D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B9AFBD0;
  *(v13 + 32) = v6;
  *(v13 + 40) = v10;
  *(v13 + 48) = v12;
  v14 = sub_26B9AABF4();

  return v14;
}

unint64_t sub_26B9075BC()
{
  result = qword_280426170;
  if (!qword_280426170)
  {
    sub_26B9AACB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426170);
  }

  return result;
}

uint64_t sub_26B90762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_26B9056CC(a3, v26 - v10);
  v12 = sub_26B9AC824();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_26B9AAAE4();
  if (v14 == 1)
  {
    sub_26B8EACD8(v11, &qword_280426FA0, &qword_26B9B02E0);
  }

  else
  {
    sub_26B9AC814();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26B9AC7C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26B9AC554() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_26B9AAAE4();
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26B8EACD8(a3, &qword_280426FA0, &qword_26B9B02E0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B8EACD8(a3, &qword_280426FA0, &qword_26B9B02E0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

SUIAppIntentsAnnotator __swiftcall SUIAppIntentsAnnotator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SUIAppIntentsAnnotator()
{
  result = qword_28042A660;
  if (!qword_28042A660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28042A660);
  }

  return result;
}

uint64_t sub_26B907A10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EB6C8;

  return sub_26B8EB318(a1, v5);
}

double sub_26B907AD4()
{
  v0 = type metadata accessor for BaseToolExecutionSessionManager();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  qword_28042A690 = v0;
  unk_28042A698 = &protocol witness table for BaseToolExecutionSessionManager;
  qword_28042A678 = v1;
  return result;
}

double BaseToolExecutionSessionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_26B907B58@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042A670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(&qword_28042A678, a1);
}

uint64_t sub_26B907BD8(uint64_t *a1)
{
  if (qword_28042A670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_28042A678, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B907C68())()
{
  if (qword_28042A670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B907D24(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.toolExecutionSessionManager.setter(uint64_t *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.toolExecutionSessionManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  return sub_26B907E4C;
}

void sub_26B907E4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

double BaseToolExecutionSessionManager.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_26B907F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B907FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_26B9AC804();
  v4[3] = sub_26B9AC7F4();
  v6 = *(*a4 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_26B9080D8;

  return v10();
}

uint64_t sub_26B9080D8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  if (v0)
  {

    v7 = sub_26B9AC7C4();
    v9 = v8;
    v10 = sub_26B90CBF4;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = sub_26B9AC7C4();
    v9 = v11;
    v10 = sub_26B908270;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_26B908270()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B9082D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return sub_26B907FA0(v3, v4, v5, v2);
}

uint64_t sub_26B908364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26B9056CC(a3, v27 - v11);
  v13 = sub_26B9AC824();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_26B9AAAE4();
  if (v15 == 1)
  {
    sub_26B90573C(v12);
  }

  else
  {
    sub_26B9AC814();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26B9AC7C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26B9AC554() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_26B9AAAE4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427070, &qword_26B9B0820);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26B90573C(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B90573C(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427070, &qword_26B9B0820);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26B908638()
{
  v1[2] = v0;
  sub_26B9AC804();
  v1[3] = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26B9086D0, v3, v2);
}

uint64_t sub_26B9086D0()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
    sub_26B9AAAE4();
    sub_26B9AC834();

    v3 = *(v1 + 16);
  }

  v4 = v0[2];
  *(v1 + 16) = 0;

  v5 = *(v4 + 24);
  v0[6] = v5;
  if (v5)
  {
    v6 = *(v4 + 32);
    v0[7] = v6;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_26B90885C;

    return sub_26B908E98(ObjectType, v6);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_26B908C74;
    v11 = v0[2];

    return sub_26B90A130();
  }
}

uint64_t sub_26B90885C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26B908984, v5, v4);
}

uint64_t sub_26B908984()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 24);

    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 8);

    return v4(v2, v3);
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);
    swift_unknownObjectRelease();
    v8 = *(v7 + 24);
    *(v0 + 72) = v8;
    if (v8)
    {
      v9 = *(*(v0 + 16) + 32);
      ObjectType = swift_getObjectType();
      v11 = *(MEMORY[0x277D726B8] + 4);
      swift_unknownObjectRetain();
      v12 = swift_task_alloc();
      *(v0 + 80) = v12;
      *v12 = v0;
      v12[1] = sub_26B908B18;

      return MEMORY[0x2821DAB68](ObjectType, v9);
    }

    else
    {
      v13 = swift_task_alloc();
      *(v0 + 88) = v13;
      *v13 = v0;
      v13[1] = sub_26B908C74;
      v14 = *(v0 + 16);

      return sub_26B90A130();
    }
  }
}

uint64_t sub_26B908B18()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  swift_unknownObjectRelease();
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v4;
  v5[1] = sub_26B908C74;
  v6 = *(v1 + 16);

  return sub_26B90A130();
}

uint64_t sub_26B908C74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = v6[4];
    v10 = v6[5];
    v11 = sub_26B908E34;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v9 = v6[4];
    v10 = v6[5];
    v11 = sub_26B908DA8;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_26B908DA8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[2];
  v3 = v0[3];

  v5 = *(v4 + 24);
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_26B908E34()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_26B908E98(uint64_t a1, uint64_t a2)
{
  v5 = sub_26B9ABAC4();
  v2[2] = v5;
  v6 = *(v5 - 8);
  v2[3] = v6;
  v7 = *(v6 + 64) + 15;
  v2[4] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[5] = v8;
  v9 = *(MEMORY[0x277D726C0] + 4);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_26B908FB4;

  return MEMORY[0x2821DAB70](v8, a1, a2);
}

uint64_t sub_26B908FB4()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26B9090B0, 0, 0);
}

uint64_t sub_26B9090B0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  result = (*(v3 + 88))(v1, v2);
  v7 = result == *MEMORY[0x277D72590] || result == *MEMORY[0x277D725A0] || result == *MEMORY[0x277D725A8] || result == *MEMORY[0x277D725B0];
  v8 = v7;
  if (v7 || (result != *MEMORY[0x277D72588] ? (v9 = result == *MEMORY[0x277D72598]) : (v9 = 1), v9))
  {
    v10 = v0[4];
    (*(v0[3] + 8))(v0[5], v0[2]);

    v11 = v0[1];

    return v11(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9091EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_26B909228()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (*(v0 + 16))
  {
    sub_26B9AAAE4();
    sub_26B9AC834();
  }

  v6 = sub_26B9AC824();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_26B9AC804();
  sub_26B9AAAE4();
  v8 = sub_26B9AC7F4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  v11 = sub_26B90762C(0, 0, v5, &unk_26B9B0648, v9);
  v12 = *(v1 + 16);
  *(v1 + 16) = v11;
}

uint64_t sub_26B9093C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_26B9AB584();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = sub_26B9ACD04();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_26B9AC804();
  v4[16] = sub_26B9AC7F4();
  v12 = sub_26B9AC7C4();
  v4[17] = v12;
  v4[18] = v11;

  return MEMORY[0x2822009F8](sub_26B909524, v12, v11);
}

uint64_t sub_26B909524()
{
  v1 = *(v0 + 120);
  sub_26B9ACF54();
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26B9095F0;
  v3 = *(v0 + 120);

  return sub_26B90C340(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26B9095F0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;

  v6 = v2[15];
  v7 = v2[14];
  v8 = v2[13];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[17];
    v10 = v3[18];
    v11 = sub_26B90CBEC;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[17];
    v10 = v3[18];
    v11 = sub_26B909784;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_26B909784()
{
  if (sub_26B9AC844())
  {
    v1 = v0[16];
    v2 = v0[12];
    v3 = v0[9];
    v4 = v0[10];

    v5 = sub_26B9A77DC();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_26B9AB564();
    v7 = sub_26B9AC914();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26B8E8000, v6, v7, "Not quiescing session pool because task was cancelled", v12, 2u);
      MEMORY[0x26D6879F0](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    goto LABEL_15;
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  v16 = sub_26B9A77DC();
  (*(v14 + 16))(v13, v16, v15);
  v17 = sub_26B9AB564();
  v18 = sub_26B9AC914();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26B8E8000, v17, v18, "Quiescing session pool and resigning focus if needed", v19, 2u);
    MEMORY[0x26D6879F0](v19, -1, -1);
  }

  v21 = v0[10];
  v20 = v0[11];
  v23 = v0[8];
  v22 = v0[9];

  (*(v21 + 8))(v20, v22);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 216))(Strong);
  }

  v25 = v0[8];
  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (!v26 || (v27 = *(v26 + 24), v0[20] = v27, v28 = *(v26 + 32), swift_unknownObjectRetain(), , !v27))
  {
    v32 = v0[16];

LABEL_15:
    v33 = v0[15];
    v34 = v0[11];
    v35 = v0[12];

    v36 = v0[1];

    return v36();
  }

  ObjectType = swift_getObjectType();
  v30 = *(MEMORY[0x277D726C8] + 4);
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_26B909AA8;

  return MEMORY[0x2821DAB78](ObjectType, v28);
}

uint64_t sub_26B909AA8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26B909BEC, v5, v4);
}

uint64_t sub_26B909BEC()
{
  v1 = v0[16];

  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B909C9C(uint64_t a1, uint64_t a2, void (*a3)(void, void, char *, uint64_t, void *))
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_26B9AC824();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v12 = sub_26B9AC7F4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v6;
  a3(0, 0, v10, a2, v13);
}

uint64_t sub_26B909DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_26B9AC804();
  v4[4] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_26B909E5C, v6, v5);
}

uint64_t sub_26B909E5C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v5 = *(MEMORY[0x277D726B0] + 4);
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_26B909F78;

    return MEMORY[0x2821DAB60](ObjectType, v3);
  }

  else
  {
    v7 = *(v0 + 32);

    **(v0 + 16) = *(v0 + 56) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26B909F78()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26B90A0BC, v5, v4);
}