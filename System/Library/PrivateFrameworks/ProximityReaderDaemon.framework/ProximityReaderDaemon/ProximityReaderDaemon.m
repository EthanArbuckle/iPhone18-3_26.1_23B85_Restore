uint64_t sub_2612451D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F270, &unk_2613A42A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26124526C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2612452BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2612452F4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261245344()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26124537C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2612453C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26124543C()
{
  v1 = (type metadata accessor for StoreAnalytics() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_26139FA0C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261245540(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26139FA0C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2612455EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26139FA0C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261245690()
{
  v1 = (type metadata accessor for StoreAnalytics() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_26139FA0C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26124578C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2612457C4()
{
  v1 = (type metadata accessor for StoreAnalytics() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_26139FA0C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[8]);

  v10 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2612458D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26124590C()
{
  v1 = (type metadata accessor for StoreAndForwardReadResult() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v31 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0 + v3;
  v11 = *(v0 + v3 + 8);

  sub_26124C6C4(*(v10 + 16), *(v10 + 24));
  v12 = v0 + v3 + v1[8];
  v13 = *(v6 + 8);
  v13(v12, v5);
  v14 = type metadata accessor for TransactionData(0);
  v15 = *(v12 + v14[5] + 8);

  v16 = *(v12 + v14[7] + 8);

  v17 = *(v12 + v14[9] + 8);

  v18 = *(v12 + v14[10] + 8);

  sub_26124C6C4(*(v12 + v14[11]), *(v12 + v14[11] + 8));
  v19 = *(v12 + v14[12] + 8);

  v20 = *(v12 + v14[13] + 8);

  v21 = *(v12 + v14[14] + 8);

  v22 = *(v12 + v14[15] + 8);

  v23 = *(v12 + v14[16] + 8);

  v24 = *(v12 + v14[23] + 8);

  v25 = *(v12 + v14[26]);

  v26 = *(v12 + v14[27] + 8);

  v27 = *(v12 + v14[29] + 8);

  v28 = *(v12 + v14[32] + 8);

  v29 = v10 + v1[9];
  sub_26124C6C4(*v29, *(v29 + 8));
  sub_26124C6C4(*(v29 + 16), *(v29 + 24));
  v13(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v31 | 7);
}

uint64_t sub_261245BB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261245C08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261245C40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261245C78()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261245CB0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261245CFC()
{
  v1 = sub_26139FEAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_261245DD4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_261245E78()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261245EB0()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TransactionContainer() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v13(v0 + v8, v1);
  v14 = *(v0 + v8 + v6[7] + 8);

  v15 = *(v0 + v8 + v6[8] + 8);

  v16 = *(v0 + v8 + v6[9] + 8);

  v17 = *(v0 + v8 + v6[10] + 8);

  v18 = *(v0 + v8 + v6[11] + 8);

  sub_26124C6C4(*(v0 + v8 + v6[12]), *(v0 + v8 + v6[12] + 8));
  v19 = *(v0 + v8 + v6[13] + 8);

  v20 = *(v0 + v8 + v6[14] + 8);

  v21 = *(v0 + v8 + v6[15] + 8);

  v22 = *(v0 + v8 + v6[18] + 8);

  v23 = *(v0 + v8 + v6[23] + 8);

  v24 = *(v0 + v8 + v6[24] + 8);

  v25 = *(v0 + v8 + v6[25] + 8);

  v26 = *(v0 + v8 + v6[26] + 8);

  v27 = *(v0 + v8 + v6[27] + 8);

  v28 = *(v0 + v8 + v6[28] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_261246104()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612461D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F13C();
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

    return (v10 + 1);
  }
}

uint64_t sub_261246290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26139F13C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26124634C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26124638C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2612463C4()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_261246564()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2612465A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26139F13C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_261246610(uint64_t a1, uint64_t a2)
{
  v4 = sub_26139F13C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_261246680()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2612466B8()
{
  v1 = sub_26139EC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 40);

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_261246788()
{
  v1 = sub_26139EC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26124684C()
{
  v1 = *(v0 + 16);
  sub_26129DF9C();
  sub_2613A25DC();
  v2 = sub_2613A1BEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_261246908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F0BC();
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

    return (v10 + 1);
  }
}

uint64_t sub_2612469C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26139F0BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261246A84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TransactionData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_261246B30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TransactionData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261246BD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261246C10()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261246C98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261246CD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_261246D94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261246E44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261246E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xB)
  {
    return v5 - 10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261246EF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 10);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_261246F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F13C();
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

    return (v10 + 1);
  }
}

uint64_t sub_261247044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26139F13C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261247100()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261247140()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2612471A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2612472C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261247300()
{
  v1 = (type metadata accessor for IdentityAnalyticsReporter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = v1[8];
  v10 = sub_26139FA0C();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[9]);

  v12 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_261247430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26139FA0C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2612474EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2613A006C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261247590(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IdentityAnalyticsReporter(0);
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
      v13 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2612476B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for IdentityAnalyticsReporter(0);
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
      v13 = type metadata accessor for IdentityAnalyticsRequestInformation(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2612477D8()
{
  v1 = (type metadata accessor for IdentityAnalyticsTransaction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = v0 + v3 + v1[7];
  v9 = *(v8 + 8);

  v10 = *(v8 + 24);

  v11 = type metadata accessor for IdentityAnalyticsReporter(0);
  v12 = *(v11 + 24);
  v13 = sub_26139FA0C();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = *(v8 + *(v11 + 28));

  v15 = v0 + v3 + v1[8];
  v16 = *(v15 + 8);

  v17 = *(type metadata accessor for IdentityAnalyticsRequestInformation(0) + 24);
  v18 = sub_2613A006C();
  (*(*(v18 - 8) + 8))(v15 + v17, v18);
  v19 = v0 + v3 + v1[9];
  v20 = *(v19 + 8);

  v21 = *(v19 + 24);

  v22 = *(v0 + v3 + v1[10] + 8);

  v23 = *(v0 + v3 + v1[11] + 8);

  v24 = *(v0 + v3 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2612479B8()
{
  v1 = (type metadata accessor for IdentityAnalyticsReporter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v5 + 24);

  v8 = v1[8];
  v9 = sub_26139FA0C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[9]);

  v11 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_261247AD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261247B14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26139EF7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_261247BC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26139EF7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261247C64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261247C9C()
{
  MEMORY[0x266701400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261247CD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261247D24()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261247D5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261247DD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261247E10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_26139EF7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_261247F64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261247FA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26124804C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261248200()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248238()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248270()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2612482B0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2612482E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26124832C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261248380()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2612483E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261248420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261248470()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2612484D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248508()
{
  MEMORY[0x266701400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248540()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26124861C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261248678()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2612486F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26124872C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261248780()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2612487D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248808()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261248858()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261248898()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_261248908()
{
  v1 = (type metadata accessor for TransactionData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = v0 + v3;
  v9 = sub_26139F13C();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + v1[7] + 8);

  v11 = *(v8 + v1[9] + 8);

  v12 = *(v8 + v1[11] + 8);

  v13 = *(v8 + v1[12] + 8);

  sub_26124C6C4(*(v8 + v1[13]), *(v8 + v1[13] + 8));
  v14 = *(v8 + v1[14] + 8);

  v15 = *(v8 + v1[15] + 8);

  v16 = *(v8 + v1[16] + 8);

  v17 = *(v8 + v1[17] + 8);

  v18 = *(v8 + v1[18] + 8);

  v19 = *(v8 + v1[25] + 8);

  v20 = *(v8 + v1[28]);

  v21 = *(v8 + v1[29] + 8);

  v22 = *(v8 + v1[31] + 8);

  v23 = *(v8 + v1[34] + 8);

  v24 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_261248B10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248B48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_261248B98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261248BD8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_261248C68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261248CA8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_261248D38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261248D80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261248DD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261248E2C()
{
  MEMORY[0x266701400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248E84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_26124C6C4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261248ECC()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261248F1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261248F68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261248FC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2612490F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261249168()
{
  v1 = (type metadata accessor for ValidationResponse() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_26139F13C();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[7], v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261249280()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2612492C8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261249310()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261249348()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26124940C()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612494D4()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_26124C6C4(*(v0 + v5), *(v0 + v5 + 8));
  sub_26124C6C4(*(v0 + v5 + 16), *(v0 + v5 + 24));
  v6 = *(v0 + v5 + 32);

  v7 = *(v0 + v5 + 48);

  return MEMORY[0x2821FE8E8](v0, v5 + 56, v3 | 7);
}

uint64_t sub_2612495D0()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612496A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2612496FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26139F13C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2612497B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26139F13C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261249A48()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261249AE8()
{
  v1 = sub_26139F33C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261249BB4()
{
  v1 = sub_26139F33C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261249C88()
{
  v1 = sub_2613A147C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2613A164C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_261249DE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261249E18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261249E84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261249F38()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_26124A008()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26124A040()
{
  v1 = sub_26139FA0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26124A0E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26124A168(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26124C6C4(a1, a2);
  }

  return a1;
}

uint64_t sub_26124A17C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_26124A1D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26124A200(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26124A218(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26124A228(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26124A238@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a2;
  v21 = a1;
  v22 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v8);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v23 = v18;
  v17(v10, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 8))(v10, a3);
  }

  else
  {
    (*(v13 + 32))(v16, v10, v12);
    v21(v16);
    result = (*(v13 + 8))(v16, v12);
    if (v4)
    {
      return result;
    }
  }

  return (v17)(v22, v23, a3);
}

uint64_t sub_26124A42C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a2;
  v21 = a1;
  v22 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v8);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v23 = v18;
  v17(v10, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v10, v12);
    v21(v16);
    result = (*(v13 + 8))(v16, v12);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    (*(v6 + 8))(v10, a3);
  }

  return (v17)(v22, v23, a3);
}

uint64_t sub_26124A620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26139ECAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26139ECEC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_26139ECDC();
  (*(v7 + 104))(v10, *MEMORY[0x277CC8778], v6);
  sub_26139ECBC();
  v14 = sub_26139ECCC();

  return v14;
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

uint64_t sub_26124AA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26124AAB4(uint64_t a1)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v38 - v6;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26124A620(a1);
  if (v13 >> 60 == 15)
  {
LABEL_2:
    result = 0;
    goto LABEL_7;
  }

  v15 = v12;
  v16 = v13;
  v17 = objc_opt_self();
  v18 = sub_26139EFFC();
  v42[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:4 error:v42];

  if (!v19)
  {
    v22 = v42[0];
    v23 = sub_26139EE7C();

    swift_willThrow();
    (*(v8 + 16))(v11, v1, a1);
    v24 = sub_2613A195C();
    v26 = v25;
    v27 = sub_26129B7C4();
    sub_26124AA44(v27, v7);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v7, 1, v28) == 1)
    {
      sub_26124A168(v15, v16);

      sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v40 = v23;

      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = v24;
        v35 = v33;
        v42[0] = v33;
        *v32 = 136315138;
        v36 = sub_26124C11C(v34, v26, v42);
        v39 = v30;
        v37 = v36;

        *(v32 + 4) = v37;
        v30 = v39;
        _os_log_impl(&dword_261243000, v39, v31, "Error encoding %s to Dictionary", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x266701350](v35, -1, -1);
        MEMORY[0x266701350](v32, -1, -1);
        sub_26124A168(v15, v16);
      }

      else
      {
        sub_26124A168(v15, v16);
      }

      (*(v29 + 8))(v7, v28);
    }

    goto LABEL_2;
  }

  v20 = v42[0];
  sub_2613A202C();
  sub_26124A168(v15, v16);
  swift_unknownObjectRelease();
  sub_2613A181C();
  if (swift_dynamicCast())
  {
    result = v41;
  }

  else
  {
    result = 0;
  }

LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26124AEF8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  if (!a2)
  {
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    sub_2613A195C();
  }

  sub_2613A1DAC();

  [v5 finishEncoding];
  v6 = [v5 encodedData];
  v7 = sub_26139F01C();

  return v7;
}

uint64_t sub_26124B218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v15[2] = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = sub_26139EC5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26139EC9C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_26139EC8C();
  (*(v7 + 104))(v10, *MEMORY[0x277CC86D0], v6);
  sub_26139EC6C();
  sub_26139EC7C();
  (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
}

void sub_26124B62C()
{
  v0 = sub_26139EF7C();
  __swift_allocate_value_buffer(v0, qword_281451EF8);
  __swift_project_value_buffer(v0, qword_281451EF8);
  sub_26124B678();
}

void sub_26124B678()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v22 - v2;
  v4 = [objc_opt_self() defaultManager];
  v22[0] = 0;
  v5 = [v4 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:v22];

  v6 = v22[0];
  if (v5)
  {
    sub_26139EF3C();
    v7 = v6;

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = v22[0];
    v10 = sub_26139EE7C();

    swift_willThrow();
    v11 = sub_26129B7C4();
    sub_26124AA44(v11, v3);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v3, 1, v12) == 1)
    {
      sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = v10;
      v15 = sub_2613A122C();
      v16 = sub_2613A1D7C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v10;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_261243000, v15, v16, "Could not load library URL: %@", v17, 0xCu);
        sub_26124C718(v18, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v18, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v13 + 8))(v3, v12);
    }

    sub_2613A220C();
    __break(1u);
  }
}

uint64_t sub_26124B988()
{
  v0 = sub_26139EF7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_281451EE0);
  __swift_project_value_buffer(v0, qword_281451EE0);
  if (qword_27FEA09B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281451EF8);
  (*(v1 + 16))(v5, v6, v0);
  sub_26139EF0C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_26124BAF8()
{
  v0 = sub_26139EF7C();
  __swift_allocate_value_buffer(v0, qword_27FEAEB58);
  __swift_project_value_buffer(v0, qword_27FEAEB58);
  sub_26128F68C(1);
  sub_261290010(&type metadata for SPSEnvironmentContext, &off_2873B6DC0);
  if (qword_27FEA09C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FEAEB40);
  sub_26139EF0C();
}

uint64_t sub_26124BC14()
{
  v0 = sub_26139EF7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27FEAEB70);
  __swift_project_value_buffer(v0, qword_27FEAEB70);
  if (qword_27FEA09C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27FEAEB58);
  (*(v1 + 16))(v5, v6, v0);
  sub_26139EF1C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_26124BDF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26139EF7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27FEA09B8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_281451EE0);
  (*(v4 + 16))(v8, v9, v3);
  sub_26139EF0C();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_26124BF70(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26139EF7C();

  return __swift_project_value_buffer(v3, a2);
}

void sub_26124BFC4(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v2 = a1 / 3600;
  v3 = ((((34953 * (a1 % 3600)) >> 16) >> 5) + ((((a1 % 3600) + ((-30583 * (a1 % 3600)) >> 16)) & 0x8000) >> 15));
  v4 = a1 % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2613A3CA0;
  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v3;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = v4;

  sub_2613A18EC();
}

uint64_t sub_26124C11C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26124C1E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26124C994(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26124C1E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26124C2F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2613A216C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26124C2F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26124C340(a1, a2);
  sub_26124C470(&unk_2873B56D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26124C340(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26124C55C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2613A216C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2613A1A4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26124C55C(v10, 0);
        result = sub_2613A20EC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26124C470(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26124C5D0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26124C55C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEA0260, &qword_2613A4820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26124C5D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEA0260, &qword_2613A4820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26124C6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26124C718(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26124C778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26124C7CC()
{
  result = qword_27FE9F200;
  if (!qword_27FE9F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F200);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26124C994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26124CA74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v6 = sub_2613A0FAC();

  if (!v6)
  {
    goto LABEL_37;
  }

  if (!*(v6 + 16) || (v7 = sub_26124E5EC(6911082, 0xE300000000000000), (v8 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v7, v61), (swift_dynamicCast() & 1) == 0))
  {
LABEL_36:

LABEL_37:
    v34 = sub_26129B64C();
    sub_26124AA44(v34, v5);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v5, 1, v35) == 1)
    {
      sub_26124D0CC(v5);
    }

    else
    {
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "SessionToken could not be parsed", v39, 2u);
        MEMORY[0x266701350](v39, -1, -1);
      }

      (*(v36 + 8))(v5, v35);
    }

    type metadata accessor for SessionToken();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = v60;
  if (!*(v6 + 16))
  {
    goto LABEL_35;
  }

  v10 = *&v59;
  v11 = sub_26124E5EC(7627113, 0xE300000000000000);
  if ((v12 & 1) == 0 || (sub_26124C994(*(v6 + 56) + 32 * v11, v61), (swift_dynamicCast() & 1) == 0) || !*(v6 + 16) || (v13 = *&v59, v14 = sub_26124E5EC(7370853, 0xE300000000000000), (v15 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v14, v61), (swift_dynamicCast() & 1) == 0) || !*(v6 + 16) || (v16 = v59, v17 = sub_26124E5EC(1684632694, 0xE400000000000000), (v18 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v17, v61), (swift_dynamicCast() & 1) == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v19 = v60;
  if (!*(v6 + 16) || (v20 = *&v59, v21 = sub_26124E5EC(6580592, 0xE300000000000000), (v22 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v21, v61), (swift_dynamicCast() & 1) == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v23 = v60;
  if (!*(v6 + 16) || (v24 = *&v59, v25 = sub_26124E5EC(1684631668, 0xE400000000000000), (v26 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v25, v61), (swift_dynamicCast() & 1) == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v58 = v60;
  if (!*(v6 + 16) || (v57 = *&v59, v27 = sub_26124E5EC(7234157, 0xE300000000000000), (v28 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v27, v61), (swift_dynamicCast() & 1) == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  v56 = v60;
  if (!*(v6 + 16) || (v55 = *&v59, v29 = sub_26124E5EC(6580589, 0xE300000000000000), (v30 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v29, v61), (swift_dynamicCast() & 1) == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v54 = v60;
  if (!*(v6 + 16) || (v53 = *&v59, v31 = sub_26124E5EC(6513517, 0xE300000000000000), (v32 & 1) == 0) || (sub_26124C994(*(v6 + 56) + 32 * v31, v61), (swift_dynamicCast() & 1) == 0) || (v52 = sub_26124D158(*&v59, v60), (v33 & 1) != 0))
  {

    goto LABEL_31;
  }

  *(v1 + 32) = v10;
  *(v1 + 40) = v9;
  sub_2613A0D2C();
  *(v1 + 16) = v13;
  *(v1 + 24) = v16 - v41;
  v42 = v56;
  *(v1 + 64) = v55;
  *(v1 + 72) = v42;
  v43 = v54;
  *(v1 + 48) = v53;
  *(v1 + 56) = v43;
  *(v1 + 80) = v52;
  *(v1 + 88) = v20;
  *(v1 + 96) = v19;
  *(v1 + 104) = v24;
  v45 = v57;
  v44 = v58;
  *(v1 + 112) = v23;
  *(v1 + 120) = v45;
  *(v1 + 128) = v44;
  if (*(v6 + 16) && (v46 = sub_26124E5EC(0x64697074666173, 0xE700000000000000), (v47 & 1) != 0))
  {
    sub_26124C994(*(v6 + 56) + 32 * v46, v61);

    v48 = swift_dynamicCast();
    v49 = *&v59;
    v50 = v60;
    if (!v48)
    {
      v49 = 0;
      v50 = 0;
    }
  }

  else
  {

    v49 = 0;
    v50 = 0;
  }

  *(v1 + 136) = v49;
  *(v1 + 144) = v50;
  return v1;
}

uint64_t sub_26124D0CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26124D158(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2613A216C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26124E93C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_26124D458()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

BOOL sub_26124D488()
{
  v1 = v0;
  v24 = sub_26139F0BC();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139F1EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26139F20C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  if (sub_26129B0F4(10))
  {
    sub_26139F1DC();
    (*(v7 + 104))(v10, *MEMORY[0x277CC99A0], v6);
    sub_26139F0AC();
    v16 = sub_26139F1FC();
    v23 = *(v2 + 8);
    v23(v5, v24);
    (*(v7 + 8))(v10, v6);
    v17 = (*(v12 + 8))(v15, v11);
    if ((v16 & 1) == 0)
    {
      return 1;
    }

    v19 = (*(*v1 + 160))(v17);
    sub_26139F0AC();
    sub_26139F07C();
    v21 = v22;
    v23(v5, v24);
  }

  else
  {
    v19 = (*(*v0 + 160))();
    sub_26139F0AC();
    sub_26139F07C();
    v21 = v20;
    (*(v2 + 8))(v5, v24);
  }

  return v19 <= v21;
}

uint64_t sub_26124D7A8()
{
  v1 = v0;
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0x3A69746A20202020, 0xE900000000000020);
  MEMORY[0x2666FFEA0](v1[4], v1[5]);
  MEMORY[0x2666FFEA0](0x746169202020200ALL, 0xEA0000000000203ALL);
  v2 = v0[2];
  sub_2613A1D2C();
  v3 = MEMORY[0x2666FFEA0](0x707865202020200ALL, 0xEA0000000000203ALL);
  (*(*v0 + 160))(v3);
  sub_2613A1D2C();
  MEMORY[0x2666FFEA0](0x64696D202020200ALL, 0xEA0000000000203ALL);
  MEMORY[0x2666FFEA0](v1[6], v1[7]);
  MEMORY[0x2666FFEA0](0x6E626D202020200ALL, 0xEA0000000000203ALL);
  MEMORY[0x2666FFEA0](v1[8], v1[9]);
  MEMORY[0x2666FFEA0](0x63636D202020200ALL, 0xEA0000000000203ALL);
  v6 = v0[10];
  v4 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v4);

  MEMORY[0x2666FFEA0](0x646970202020200ALL, 0xEA0000000000203ALL);
  MEMORY[0x2666FFEA0](v1[13], v1[14]);
  return 0;
}

double sub_26124D994()
{
  v1 = sub_26139F0BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 160))(v4);
  sub_26139F0AC();
  sub_26139F07C();
  v9 = v8;
  (*(v2 + 8))(v6, v1);
  return v7 - v9;
}

uint64_t sub_26124DA94(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_26124DAD4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4972656E74726170;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6513517;
    if (a1 != 5)
    {
      v7 = 1684632694;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7627113;
    v2 = 6911082;
    v3 = 6580589;
    if (a1 != 3)
    {
      v3 = 7234157;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7370853;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26124DBF4()
{
  v1 = *v0;
  sub_2613A256C();
  MEMORY[0x2667009F0](v1);
  return sub_2613A25CC();
}

uint64_t sub_26124DC68()
{
  v1 = *v0;
  sub_2613A256C();
  MEMORY[0x2667009F0](v1);
  return sub_2613A25CC();
}

uint64_t sub_26124DCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26124F3F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26124DCF4(uint64_t a1)
{
  v2 = sub_26124E664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26124DD30(uint64_t a1)
{
  v2 = sub_26124E664();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26124DD6C()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[18];

  return v0;
}

uint64_t sub_26124DDBC()
{
  sub_26124DD6C();

  return swift_deallocClassInstance();
}

uint64_t sub_26124DDF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F210, &qword_2613A3CB8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26124E664();
  sub_2613A262C();
  v11 = v3[2];
  v29[15] = 0;
  v12 = sub_2613A23AC();
  if (!v2)
  {
    (*(*v3 + 160))(v12);
    v29[14] = 1;
    sub_2613A23AC();
    v13 = v3[4];
    v14 = v3[5];
    v29[13] = 2;
    sub_2613A238C();
    v15 = v3[6];
    v16 = v3[7];
    v29[12] = 3;
    sub_2613A238C();
    v17 = v3[8];
    v18 = v3[9];
    v29[11] = 4;
    sub_2613A238C();
    v19 = v3[10];
    v29[10] = 5;
    sub_2613A23BC();
    v20 = v3[11];
    v21 = v3[12];
    v29[9] = 6;
    sub_2613A238C();
    v22 = v3[13];
    v23 = v3[14];
    v29[8] = 7;
    sub_2613A238C();
    v24 = v3[15];
    v25 = v3[16];
    v29[7] = 8;
    sub_2613A238C();
    v26 = v3[17];
    v27 = v3[18];
    v29[6] = 9;
    sub_2613A234C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26124E0B8(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_26124E108(a1);
  return v2;
}

void *sub_26124E108(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F218, qword_2613A3CC0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26124E664();
  sub_2613A260C();
  if (v2)
  {
    type metadata accessor for SessionToken();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23[31] = 0;
    sub_2613A22FC();
    v1[2] = v11;
    v23[30] = 1;
    sub_2613A22FC();
    v1[3] = v12;
    v23[29] = 2;
    v1[4] = sub_2613A22DC();
    v1[5] = v14;
    v23[28] = 3;
    v1[6] = sub_2613A22DC();
    v1[7] = v15;
    v23[27] = 4;
    v1[8] = sub_2613A22DC();
    v1[9] = v16;
    v23[26] = 5;
    v1[10] = sub_2613A230C();
    v23[25] = 6;
    v1[11] = sub_2613A22DC();
    v1[12] = v17;
    v23[24] = 7;
    v1[13] = sub_2613A22DC();
    v1[14] = v18;
    v23[15] = 8;
    v1[15] = sub_2613A22DC();
    v1[16] = v19;
    v23[14] = 9;
    v20 = sub_2613A229C();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v3[17] = v20;
    v3[18] = v22;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_26124E520@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26124E5A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 192))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26124E5EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2613A256C();
  sub_2613A19DC();
  v6 = sub_2613A25CC();

  return sub_26124F33C(a1, a2, v6);
}

unint64_t sub_26124E664()
{
  result = qword_27FEA09F0[0];
  if (!qword_27FEA09F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA09F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionToken.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionToken.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26124E838()
{
  result = qword_27FEA0C80[0];
  if (!qword_27FEA0C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA0C80);
  }

  return result;
}

unint64_t sub_26124E890()
{
  result = qword_27FEA0D90;
  if (!qword_27FEA0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0D90);
  }

  return result;
}

unint64_t sub_26124E8E8()
{
  result = qword_27FEA0D98[0];
  if (!qword_27FEA0D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA0D98);
  }

  return result;
}

unsigned __int8 *sub_26124E93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2613A1ADC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26124EEC8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2613A216C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26124EEC8()
{
  v0 = sub_2613A1AEC();
  v4 = sub_26124EF48(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26124EF48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2613A19CC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2613A1FAC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26124C55C(v9, 0);
  v12 = sub_26124F0A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2613A19CC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2613A216C();
LABEL_4:

  return sub_2613A19CC();
}

unint64_t sub_26124F0A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26124F2C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2613A1A8C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2613A216C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26124F2C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2613A1A5C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26124F2C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2613A1A9C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2666FFEE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_26124F33C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2613A241C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26124F3F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7627113 && a2 == 0xE300000000000000;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7370853 && a2 == 0xE300000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6911082 && a2 == 0xE300000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7234157 && a2 == 0xE300000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6513517 && a2 == 0xE300000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632694 && a2 == 0xE400000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613B7ED0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26124F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_26139EC4C();
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v11 = sub_26139EF7C();
  v6[35] = v11;
  v12 = *(v11 - 8);
  v6[36] = v12;
  v13 = *(v12 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v14 = sub_26139F64C();
  v6[39] = v14;
  v15 = *(v14 - 8);
  v6[40] = v15;
  v16 = *(v15 + 64) + 15;
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26124F8FC);
}

uint64_t sub_26124F8FC()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v8 = *(v0 + 208);
  sub_26139F3DC();
  sub_26139F5DC();
  (*(v2 + 8))(v1, v3);
  sub_26129017C(*(v8 + 96));
  sub_26128FAFC(46, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_26124FDE0(*(v0 + 272));
  }

  else
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v11 + 8))(v9, v10);
    (*(v11 + 32))(v9, v12, v10);
  }

  v13 = *(v0 + 264);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 208);
  (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  sub_2613A025C();
  sub_26139EBFC();
  sub_26139EBBC();
  v19 = v18[5];
  v20 = v18[8];
  v21 = v18[9];
  *(v0 + 80) = v18[4];
  *(v0 + 88) = v19;
  *(v0 + 96) = v20;
  *(v0 + 104) = v21;
  *(v0 + 112) = v15;
  *(v0 + 120) = v14;
  *(v0 + 128) = v17;
  *(v0 + 136) = v16;
  sub_26124FE48();

  sub_26124A620(&type metadata for SessionRequest);
  v22 = *(v0 + 96);
  v23 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v22;
  v24 = *(v0 + 128);
  *(v0 + 48) = v23;
  *(v0 + 64) = v24;
  sub_26124FE9C(v0 + 16);
  sub_26139EC2C();
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  v25[2] = v18;
  v25[3] = v17;
  v25[4] = v16;
  v25[5] = v13;
  v26 = *(MEMORY[0x277D859E0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 344) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F230, &qword_2613A3F10);
  *v27 = v0;
  v27[1] = sub_26124FBC0;

  return MEMORY[0x2822007B8](v0 + 144, 0, 0, 0xD000000000000037, 0x80000002613B7F20, sub_261250248, v25, v28);
}

uint64_t sub_26124FBC0()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26124FCD8);
}

uint64_t sub_26124FCD8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v14 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 200);
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 160);
  v13 = *(v0 + 144);
  (*(v5 + 8))(v3, v4);
  *v6 = v13;
  *(v6 + 16) = v12;
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  *(v6 + 48) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26124FDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26124FE48()
{
  result = qword_27FE9F228;
  if (!qword_27FE9F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F228);
  }

  return result;
}

uint64_t sub_26124FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v38 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F270, &unk_2613A42A0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v33 - v7;
  v9 = sub_26139EC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26139F64C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    type metadata accessor for MockUtils();
    v19 = sub_2612E5B40(v34, v35, v36);
    v21 = v20;
    v22 = sub_2612E6008();
    v24 = v23;
    sub_26139F3DC();
    sub_26139F5BC();
    (*(v15 + 8))(v18, v14);
    v40 = v19;
    v41 = v21;
    v42 = v22;
    v43 = v24;
    v44 = xmmword_2613A3EF0;
    v45 = 0;
    return sub_2613A1BDC();
  }

  else
  {
    v26 = *sub_2612A1E08();
    v27 = v9;
    (*(v10 + 16))(v13, v37, v9);
    v28 = v39;
    (*(v5 + 16))(v8, v38, v39);
    v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v30 = swift_allocObject();
    (*(v5 + 32))(v30 + v29, v8, v28);
    v31 = sub_261251960();

    v32 = sub_26125A798();
    (*(*v26 + 152))(v13, v32 & 1, sub_2612518E4, v30, &type metadata for SessionResponse, v31);

    return (*(v10 + 8))(v13, v27);
  }
}

uint64_t sub_261250254(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = sub_26139F64C();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_26139F3DC();
  sub_26139F5BC();
  (*(v3 + 8))(v6, v16);
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  sub_2612519B4(v7, v8, v9, v10, v11, v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F270, &unk_2613A42A0);
  return sub_2613A1BDC();
}

unint64_t sub_2612503C4()
{
  v1 = 0x6C646E7542707061;
  v2 = 0x6973736553646C6FLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656B6F54707370;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261250458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261250E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26125048C(uint64_t a1)
{
  v2 = sub_2612506C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612504C8(uint64_t a1)
{
  v2 = sub_2612506C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261250504(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F238, &qword_2613A3F18);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612506C4();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_2613A234C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2612506C4()
{
  result = qword_27FEA0E20[0];
  if (!qword_27FEA0E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA0E20);
  }

  return result;
}

uint64_t sub_261250730(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F546C656E72656BLL;
  v4 = 0xEB000000006E656BLL;
  if (v2 != 1)
  {
    v3 = 0x746E61686372656DLL;
    v4 = 0xEC0000006F676F4CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x546E6F6973736573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000006E656B6FLL;
  }

  v7 = 0x6F546C656E72656BLL;
  v8 = 0xEB000000006E656BLL;
  if (*a2 != 1)
  {
    v7 = 0x746E61686372656DLL;
    v8 = 0xEC0000006F676F4CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x546E6F6973736573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000006E656B6FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2613A241C();
  }

  return v11 & 1;
}

uint64_t sub_261250858()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261250914()
{
  *v0;
  *v0;
  sub_2613A19DC();
}

uint64_t sub_2612509BC()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261250A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261250FB0();
  *a2 = result;
  return result;
}

void sub_261250AA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E656B6FLL;
  v4 = 0xEB000000006E656BLL;
  v5 = 0x6F546C656E72656BLL;
  if (v2 != 1)
  {
    v5 = 0x746E61686372656DLL;
    v4 = 0xEC0000006F676F4CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546E6F6973736573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261250B1C()
{
  v1 = 0x6F546C656E72656BLL;
  if (*v0 != 1)
  {
    v1 = 0x746E61686372656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546E6F6973736573;
  }
}

uint64_t sub_261250B90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261250FB0();
  *a1 = result;
  return result;
}

uint64_t sub_261250BC4(uint64_t a1)
{
  v2 = sub_261250FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261250C00(uint64_t a1)
{
  v2 = sub_261250FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261250C3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F240, &qword_2613A3F20);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261250FFC();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_2613A238C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

double sub_261250DDC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261251050(a1, v6);
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

uint64_t sub_261250E38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736553646C6FLL && a2 == 0xEF6E656B6F546E6FLL || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656B6F54707370 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t sub_261250FB0()
{
  v0 = sub_2613A228C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_261250FFC()
{
  result = qword_27FE9F248;
  if (!qword_27FE9F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F248);
  }

  return result;
}

uint64_t sub_261251050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F268, &qword_2613A4298);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261250FFC();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  v11 = sub_2613A22DC();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_2613A22DC();
  v23 = v14;
  v25 = 2;
  v15 = sub_2613A22DC();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_2612512A0()
{
  result = qword_27FE9F250;
  if (!qword_27FE9F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F250);
  }

  return result;
}

unint64_t sub_2612512F8()
{
  result = qword_27FE9F258;
  if (!qword_27FE9F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F258);
  }

  return result;
}

unint64_t sub_261251350()
{
  result = qword_27FE9F260;
  if (!qword_27FE9F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F260);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2612513DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261251424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_261251498(uint64_t a1, int a2)
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

uint64_t sub_2612514E0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SessionResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SessionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2612517E0()
{
  result = qword_27FEA13B0[0];
  if (!qword_27FEA13B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA13B0);
  }

  return result;
}

unint64_t sub_261251838()
{
  result = qword_27FEA14C0;
  if (!qword_27FEA14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA14C0);
  }

  return result;
}

unint64_t sub_261251890()
{
  result = qword_27FEA14C8[0];
  if (!qword_27FEA14C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA14C8);
  }

  return result;
}

uint64_t sub_2612518E4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F270, &unk_2613A42A0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_261250254(a1, v4);
}

unint64_t sub_261251960()
{
  result = qword_27FE9F278;
  if (!qword_27FE9F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F278);
  }

  return result;
}

uint64_t sub_2612519B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

void sub_261251A54(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_26139F10C();
  [v2 setPartnerId_];
}

void sub_261251ABC(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_26139F11C();
}

void sub_261251B18(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_26139F10C();
  [v2 setTransactionId_];
}

id sub_261251B74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionExpirationCPUTime];
  *a2 = v4;
  return result;
}

id sub_261251BBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionCPUTime];
  *a2 = v4;
  return result;
}

id sub_261251C04@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 transactionCPUTimeCounter];
  *a2 = result;
  return result;
}

void sub_261251CB0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_26139F01C();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_261251D30(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_2613A18CC();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_261251DA4(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

uint64_t sub_261251E0C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 batchId];
  if (v3)
  {
    v4 = v3;
    sub_26139F11C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26139F13C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_261251EB0(uint64_t a1, void **a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  sub_2612528B8(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_26139F10C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setBatchId_];
}

id sub_261251FDC(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(v3) initWithContext_];
  v8 = *a2;
  v9 = a2[1];
  v10 = v7;
  v11 = sub_2613A189C();
  [v10 setSafSessionHash_];

  v12 = type metadata accessor for StoreAndForwardReadResult();
  v13 = a2 + *(v12 + 24);
  v14 = sub_26139F10C();
  [v10 setTransactionId_];

  v15 = sub_26139F10C();
  [v10 setPartnerId_];

  [v10 setTransactionCPUTimeCounter_];
  sub_2612FF320();
  [v10 setTransactionCPUTime_];
  sub_2612FF320();
  sub_2612FF364();
  [v10 setTransactionExpirationCPUTime_];
  v16 = a2[2];
  v17 = a2[3];
  v18 = sub_26139EFFC();
  [v10 setCardReaderBlob_];

  v19 = &v13[*(type metadata accessor for TransactionData(0) + 44)];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = sub_26139EFFC();
  [v10 setGeneralCardData_];

  v23 = (a2 + *(v12 + 28));
  v24 = *v23;
  v25 = v23[1];
  v26 = sub_26139EFFC();
  [v10 setSignature_];

  v27 = v23[2];
  v28 = v23[3];
  sub_26139F00C();
  v29 = sub_2613A189C();

  [v10 setKeyId_];

  [v10 setBatchId_];
  v30 = sub_26139F13C();
  (*(*(v30 - 8) + 8))(a3, v30);
  sub_261252238(a2);
  return v10;
}

uint64_t sub_261252238(uint64_t a1)
{
  v2 = type metadata accessor for StoreAndForwardReadResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ManagedTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedTransaction();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedTransaction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_261252400()
{
  v1 = v0;
  v2 = sub_26139F13C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = [v1 batchId];
  if (v11)
  {
    sub_26139F11C();

    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  sub_26125258C(v10);
  return v11 != 0;
}

uint64_t sub_26125258C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2612525F4()
{
  v1 = sub_2612FF320();
  v2 = [v0 transactionCPUTimeCounter];
  result = 0;
  if ((v2 & 0x80000000) == 0 && v1 == v2)
  {
    sub_2612FF320();
    v5 = v4;
    [v0 transactionCPUTime];
    v7 = v5 - v6;
    sub_2613A0DCC();
    return v7 < v8;
  }

  return result;
}

id static ManagedTransaction.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2613A189C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2612526DC()
{
  v1 = sub_26139F13C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [v0 transactionId];
  sub_26139F11C();

  v4 = [v0 cardReaderBlob];
  sub_26139F01C();

  v5 = [v0 generalCardData];
  sub_26139F01C();

  v6 = [v0 signature];
  sub_26139F01C();

  v7 = objc_allocWithZone(sub_2613A008C());
  return sub_2613A007C();
}

uint64_t sub_2612528B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261252928()
{
  v0 = *sub_2612A0F20();

  sub_2612A10E0();
  v2 = v1;

  return v2;
}

uint64_t sub_261252980()
{
  v0 = *sub_2612A0F20();

  v1 = sub_2612A0F70();

  return v1 & 1;
}

uint64_t sub_2612529C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CBE108];
  v3 = sub_2613A1EBC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_261252A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_261252A5C);
}

uint64_t sub_261252A5C()
{
  v2 = v0[2].i64[0];
  v1 = v0[2].i64[1];
  v3 = swift_allocObject();
  v0[4].i64[0] = v3;
  v3[1] = vextq_s8(v0[3], v0[3], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i64[1] = v1;

  v4 = swift_task_alloc();
  v0[4].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_261252B5C;
  v6 = v0[3].i64[0];
  v5 = v0[3].i64[1];
  v7 = v0[1].i64[0];
  v8 = v0[1].i64[1];

  return sub_2612E3358(v7, v8, sub_261252CFC, v3, v5);
}

uint64_t sub_261252B5C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261252C98);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_261252C98()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

id sub_261252CFC(void *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for Mock();
  if ((sub_26129B338(31) & 1) == 0 || (result = sub_261259280(), !v2))
  {
    v5(v4, a1);
    return [a1 reset];
  }

  return result;
}

void sub_261252DC4(void *a1, uint64_t a2, uint64_t a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40[-v8];
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Result = type metadata accessor for StoreAndForwardReadResult();
  v16 = *(*(Result - 8) + 64);
  MEMORY[0x28223BE20](Result - 8);
  v18 = &v40[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ManagedTransaction();
  sub_261259440(a2, v18);
  (*(v11 + 16))(v14, a3, v10);
  v19 = a1;
  v20 = sub_261251FDC(v19, v18, v14);
  v45[0] = 0;
  if ([v19 save_])
  {
    v21 = v45[0];
    v22 = sub_26129B8EC();
    sub_26125A870(v22, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v9, 1, v23) == 1)
    {

      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = v20;
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v43 = v27;
        v30 = v29;
        v44 = swift_slowAlloc();
        v45[0] = v44;
        *v30 = 136315138;
        v31 = [v26 transactionId];
        v41 = v28;
        v32 = v31;
        sub_26139F11C();

        sub_2612594A4();
        v33 = sub_2613A23EC();
        v42 = v26;
        v35 = v34;
        (*(v11 + 8))(v14, v10);
        v36 = sub_26124C11C(v33, v35, v45);

        *(v30 + 4) = v36;
        v37 = v43;
        _os_log_impl(&dword_261243000, v43, v41, "Saved [%s] transaction", v30, 0xCu);
        v38 = v44;
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x266701350](v38, -1, -1);
        MEMORY[0x266701350](v30, -1, -1);
      }

      else
      {
      }

      (*(v24 + 8))(v9, v23);
    }
  }

  else
  {
    v25 = v45[0];
    sub_26139EE7C();

    swift_willThrow();
  }

  v39 = *MEMORY[0x277D85DE8];
}

unint64_t sub_261253210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ManagedTransaction();
  v7 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2613A4300;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2612594FC();
  strcpy((v8 + 32), "safSessionHash");
  *(v8 + 47) = -18;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;

  v11 = sub_2613A1D5C();
  [v7 setPredicate_];

  [v7 setFetchLimit_];
  result = sub_2613A1EDC();
  if (v3)
  {

    return v4;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = sub_2613A221C();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2667005C0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v4 = v13;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_261253410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedTransaction();
  v5 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2613A4300;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2612594FC();
  strcpy((v6 + 32), "safSessionHash");
  *(v6 + 47) = -18;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;

  v9 = sub_2613A1D5C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2613A4310;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 32) = 0x64496863746162;
  *(v10 + 40) = 0xE700000000000000;
  v11 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2613A4320;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  v13 = v9;
  v14 = v11;
  v15 = sub_2613A1B6C();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v5 setPredicate_];
  [v5 setFetchLimit_];
  result = sub_2613A1EDC();
  if (v21)
  {

LABEL_11:
    return v16;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = 0;
    goto LABEL_11;
  }

  v19 = result;
  v20 = sub_2613A221C();
  result = v19;
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2667005C0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(result + 32);
LABEL_8:
    v16 = v18;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_261253720(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v63 = a1;
  v59 = a5;
  v56 = a4;
  v64 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = sub_26139F13C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v51 - v17;
  v60 = type metadata accessor for ManagedTransaction();
  v62 = static ManagedTransaction.fetchRequest()();
  v18 = sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v20 = swift_allocObject();
  v57 = xmmword_2613A4300;
  *(v20 + 16) = xmmword_2613A4300;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_2612594FC();
  strcpy((v20 + 32), "safSessionHash");
  *(v20 + 47) = -18;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  v23 = v64;
  *(v20 + 64) = v22;
  *(v20 + 72) = v23;
  *(v20 + 80) = a3;

  v24 = sub_2613A1D5C();
  sub_26125A870(v56, v11, &qword_27FE9F280, &unk_2613A42B0);
  v56 = *(v13 + 48);
  v25 = v56(v11, 1, v12);
  v61 = v12;
  v53 = v19;
  v54 = v18;
  v64 = v24;
  if (v25 == 1)
  {
    sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
    v26 = &unk_2613A4000;
  }

  else
  {
    v27 = v52;
    (*(v13 + 32))();
    v28 = swift_allocObject();
    *(v28 + 16) = v57;
    *(v28 + 56) = v21;
    *(v28 + 64) = v22;
    *(v28 + 32) = 0x64496863746162;
    *(v28 + 40) = 0xE700000000000000;
    v51 = v13;
    v29 = v27;
    v30 = sub_26139F10C();
    *(v28 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v28 + 104) = sub_261259B78();
    *(v28 + 72) = v30;
    v31 = sub_2613A1D5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v32 = swift_allocObject();
    v26 = &unk_2613A4000;
    *(v32 + 16) = xmmword_2613A4320;
    v33 = v64;
    *(v32 + 32) = v64;
    *(v32 + 40) = v31;
    v34 = v33;
    v35 = v31;
    v36 = sub_2613A1B6C();
    v13 = v51;

    v64 = [objc_opt_self() andPredicateWithSubpredicates_];

    v12 = v61;
    (*(v13 + 8))(v29, v12);
  }

  v37 = v58;
  sub_26125A870(v59, v58, &qword_27FE9F280, &unk_2613A42B0);
  if (v56(v37, 1, v12) == 1)
  {
    sub_26124C718(v37, &qword_27FE9F280, &unk_2613A42B0);
    v38 = v62;
    v39 = v64;
  }

  else
  {
    v40 = v55;
    (*(v13 + 32))(v55, v37, v12);
    v41 = swift_allocObject();
    *(v41 + 16) = v57;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = v22;
    *(v41 + 32) = 0x4972656E74726170;
    *(v41 + 40) = 0xE900000000000064;
    v42 = sub_26139F10C();
    *(v41 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v41 + 104) = sub_261259B78();
    *(v41 + 72) = v42;
    v43 = sub_2613A1D5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v44 = swift_allocObject();
    *(v44 + 16) = v26[50];
    v45 = v64;
    *(v44 + 32) = v64;
    *(v44 + 40) = v43;
    v46 = v45;
    v47 = v43;
    v48 = sub_2613A1B6C();

    v39 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v13 + 8))(v40, v61);
    v38 = v62;
  }

  [v38 setPredicate_];
  v49 = sub_2613A1ECC();

  return v49;
}

uint64_t sub_261253D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v57 = a7;
  v58 = a6;
  v59 = a5;
  v54 = a2;
  v55 = a4;
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_26139F13C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ManagedTransaction();
  v53 = static ManagedTransaction.fetchRequest()();
  v16 = sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v17 = swift_allocObject();
  v51 = xmmword_2613A4300;
  *(v17 + 16) = xmmword_2613A4300;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_2612594FC();
  strcpy((v17 + 32), "safSessionHash");
  *(v17 + 47) = -18;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  v20 = v54;
  *(v17 + 64) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = a3;

  v54 = v16;
  v21 = sub_2613A1D5C();
  sub_26125A870(v55, v11, &qword_27FE9F280, &unk_2613A42B0);
  v22 = v13;
  v23 = v12;
  v24 = (*(v13 + 48))(v11, 1, v12);
  v25 = &unk_2613A4000;
  if (v24 == 1)
  {
    sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
    v26 = v21;
  }

  else
  {
    v27 = *(v13 + 32);
    v28 = v52;
    v50 = v23;
    v27(v52, v11, v23);
    v29 = swift_allocObject();
    *(v29 + 16) = v51;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = v19;
    *(v29 + 32) = 0x64496863746162;
    *(v29 + 40) = 0xE700000000000000;
    v30 = v28;
    v31 = sub_26139F10C();
    *(v29 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v29 + 104) = sub_261259B78();
    *(v29 + 72) = v31;
    v32 = sub_2613A1D5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2613A4320;
    *(v33 + 32) = v21;
    *(v33 + 40) = v32;
    v34 = v21;
    v35 = v32;
    v36 = sub_2613A1B6C();

    v26 = [objc_opt_self() andPredicateWithSubpredicates_];

    v25 = &unk_2613A4000;
    (*(v22 + 8))(v30, v50);
  }

  v37 = v53;
  [v53 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v38 = swift_allocObject();
  *(v38 + 16) = v25[50];
  v39 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v40 = sub_2613A189C();
  v41 = [v39 initWithKey:v40 ascending:1];

  *(v38 + 32) = v41;
  v42 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v43 = sub_2613A189C();
  v44 = [v42 initWithKey:v43 ascending:1];

  *(v38 + 40) = v44;
  sub_261259BE0(0, &qword_27FE9F2A8, 0x277CCAC98);
  v45 = sub_2613A1B6C();

  [v37 setSortDescriptors_];

  if (v57)
  {
    [v37 setReturnsObjectsAsFaults_];
  }

  v46 = v59;
  [v37 setFetchBatchSize_];
  [v37 setFetchOffset_];
  if (v46 >= 1)
  {
    [v37 setFetchLimit_];
  }

  v47 = sub_2613A1EDC();

  return v47;
}

uint64_t sub_26125431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedTransaction();
  v7 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2613A4300;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2612594FC();
  strcpy((v8 + 32), "safSessionHash");
  *(v8 + 47) = -18;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;

  v11 = sub_2613A1D5C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2613A4300;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  strcpy((v12 + 32), "transactionId");
  *(v12 + 46) = -4864;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
  *(v12 + 104) = sub_261259C28(&qword_27FE9F2B8, &qword_27FE9F2B0, &qword_2613A4378);
  *(v12 + 72) = a4;

  v13 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2613A4320;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v15 = v11;
  v16 = v13;
  v17 = sub_2613A1B6C();

  v18 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  v19 = sub_2613A1EDC();

  return v19;
}

void sub_2612545BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v62 = v11;
  v21 = *(v11 + 56);
  v61 = v10;
  v21(&v52 - v19, 1, 1, v10);
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v57 = a4 - 1;
  v59 = a1;
  v60 = v4;
  v56 = type metadata accessor for ManagedTransaction();
  v55 = static ManagedTransaction.fetchRequest()();
  v22 = a2;
  v23 = sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v24 = swift_allocObject();
  v52 = xmmword_2613A4300;
  *(v24 + 16) = xmmword_2613A4300;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_2612594FC();
  strcpy((v24 + 32), "safSessionHash");
  *(v24 + 47) = -18;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = v22;
  *(v24 + 80) = a3;

  v53 = v23;
  v27 = sub_2613A1D5C();
  v58 = v20;
  sub_26125A870(v20, v18, &qword_27FE9F280, &unk_2613A42B0);
  v28 = &unk_2613A4000;
  if ((*(v62 + 48))(v18, 1, v61) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F280, &unk_2613A42B0);
  }

  else
  {
    v29 = v62;
    v30 = v54;
    v31 = v18;
    v32 = v61;
    (*(v62 + 32))(v54, v31, v61);
    v33 = swift_allocObject();
    *(v33 + 16) = v52;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = v26;
    *(v33 + 32) = 0x64496863746162;
    *(v33 + 40) = 0xE700000000000000;
    v34 = sub_26139F10C();
    *(v33 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v33 + 104) = sub_261259B78();
    *(v33 + 72) = v34;
    v35 = sub_2613A1D5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2613A4320;
    *(v36 + 32) = v27;
    *(v36 + 40) = v35;
    v37 = v27;
    v38 = v35;
    v39 = sub_2613A1B6C();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = &unk_2613A4000;
    (*(v29 + 8))(v30, v32);
  }

  v40 = v55;
  [v55 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v41 = swift_allocObject();
  *(v41 + 16) = v28[50];
  v42 = v27;
  v43 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v44 = sub_2613A189C();
  v45 = [v43 initWithKey:v44 ascending:1];

  *(v41 + 32) = v45;
  v46 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v47 = sub_2613A189C();
  v48 = [v46 initWithKey:v47 ascending:1];

  *(v41 + 40) = v48;
  sub_261259BE0(0, &qword_27FE9F2A8, 0x277CCAC98);
  v49 = sub_2613A1B6C();

  [v40 setSortDescriptors_];

  [v40 setFetchBatchSize_];
  [v40 setFetchOffset_];
  [v40 setFetchLimit_];
  v50 = v60;
  v5 = sub_2613A1EDC();
  sub_26124C718(v58, &qword_27FE9F280, &unk_2613A42B0);

  if (v50)
  {
    return;
  }

  if (v5 >> 62)
  {
LABEL_13:
    if (sub_2613A221C())
    {
      goto LABEL_8;
    }

LABEL_14:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2667005C0](0, v5);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(v5 + 32);
LABEL_11:

    return;
  }

  __break(1u);
}

void sub_261254C34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t, id), int a5, double a6)
{
  v72 = a1;
  v70 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v62 - v12;
  v77 = sub_26139F13C();
  v68 = *(v77 - 8);
  v13 = *(v68 + 64);
  v14 = MEMORY[0x28223BE20](v77);
  v76 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v67 = &v62 - v18;
  v71 = type metadata accessor for ManagedTransaction();
  v19 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v20 = swift_allocObject();
  v74 = xmmword_2613A4300;
  *(v20 + 16) = xmmword_2613A4300;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_2612594FC();
  strcpy((v20 + 32), "safSessionHash");
  *(v20 + 47) = -18;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  *(v20 + 64) = v22;
  *(v20 + 72) = a2;
  *(v20 + 80) = a3;

  v23 = sub_2613A1D5C();
  v24 = swift_allocObject();
  *(v24 + 16) = v74;
  *(v24 + 56) = v21;
  *(v24 + 64) = v22;
  v25 = MEMORY[0x277D84CC0];
  *(v24 + 32) = 0xD000000000000019;
  *(v24 + 40) = 0x80000002613B8080;
  v26 = MEMORY[0x277D84D30];
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 72) = a5;
  v27 = sub_2613A1D5C();
  v28 = swift_allocObject();
  *(v28 + 16) = v74;
  *(v28 + 56) = v21;
  *(v28 + 64) = v22;
  v29 = MEMORY[0x277D839F8];
  *(v28 + 32) = 0xD00000000000001CLL;
  *(v28 + 40) = 0x80000002613B8030;
  v30 = MEMORY[0x277D83A80];
  *(v28 + 96) = v29;
  *(v28 + 104) = v30;
  *(v28 + 72) = a6;
  v31 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2613A4330;
  *(v32 + 32) = v23;
  *(v32 + 40) = v27;
  *(v32 + 48) = v31;
  v64 = v23;
  v65 = v27;
  v33 = v31;
  v34 = sub_2613A1B6C();

  v35 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v19 setPredicate_];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2613A4340;
  v37 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v38 = sub_2613A189C();
  v39 = [v37 initWithKey:v38 ascending:1];

  *(v36 + 32) = v39;
  sub_261259BE0(0, &qword_27FE9F2A8, 0x277CCAC98);
  v40 = sub_2613A1B6C();

  [v19 setSortDescriptors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2C0, &qword_2613A4380);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2613A4310;
  *(v41 + 56) = v21;
  strcpy((v41 + 32), "transactionId");
  *(v41 + 46) = -4864;
  v42 = sub_2613A1B6C();

  [v19 setPropertiesToFetch_];

  v43 = v70;
  [v19 setFetchBatchSize_];
  if (v43 >= 1)
  {
    [v19 setFetchLimit_];
  }

  v44 = v73;
  v45 = sub_2613A1EDC();
  v66 = v44;
  if (v44)
  {

    return;
  }

  v46 = v45;
  if (v45 >> 62)
  {
    goto LABEL_23;
  }

  v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v62 = v33;
  v63 = v19;
  if (v47)
  {
LABEL_7:
    v48 = 0;
    v72 = v46 & 0xFFFFFFFFFFFFFF8;
    v73 = v46 & 0xC000000000000001;
    v49 = v69;
    v50 = (v68 + 32);
    v71 = (v68 + 56);
    *&v74 = MEMORY[0x277D84F90];
    v70 = (v68 + 48);
    while (1)
    {
      if (v73)
      {
        v51 = MEMORY[0x2667005C0](v48, v46);
        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v48 >= *(v72 + 16))
        {
          goto LABEL_22;
        }

        v51 = *(v46 + 8 * v48 + 32);
        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v47 = sub_2613A221C();
          v62 = v33;
          v63 = v19;
          if (!v47)
          {
            break;
          }

          goto LABEL_7;
        }
      }

      v33 = v46;
      v53 = v51;
      v54 = [v53 transactionId];
      v55 = v75;
      sub_26139F11C();

      v56 = *v50;
      v57 = v55;
      v19 = v77;
      (*v50)(v49, v57, v77);

      (*v71)(v49, 0, 1, v19);
      if ((*v70)(v49, 1, v19) == 1)
      {
        sub_26124C718(v49, &qword_27FE9F280, &unk_2613A42B0);
      }

      else
      {
        v58 = v67;
        v56(v67, v49, v19);
        v56(v76, v58, v19);
        v59 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_261258730(0, v59[2] + 1, 1, v59);
        }

        v19 = v59[2];
        v60 = v59[3];
        if (v19 >= v60 >> 1)
        {
          v59 = sub_261258730(v60 > 1, v19 + 1, 1, v59);
        }

        v59[2] = v19 + 1;
        v61 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        *&v74 = v59;
        v56(v59 + v61 + *(v68 + 72) * v19, v76, v77);
        v49 = v69;
      }

      v46 = v33;
      ++v48;
      if (v52 == v47)
      {
        goto LABEL_25;
      }
    }
  }

  *&v74 = MEMORY[0x277D84F90];
LABEL_25:
}

uint64_t sub_26125545C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  type metadata accessor for ManagedTransaction();
  v8 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2613A4300;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2612594FC();
  strcpy((v9 + 32), "safSessionHash");
  *(v9 + 47) = -18;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;

  v12 = sub_2613A1D5C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2613A4300;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  v14 = MEMORY[0x277D84CC0];
  *(v13 + 32) = 0xD000000000000019;
  *(v13 + 40) = 0x80000002613B8080;
  v15 = MEMORY[0x277D84D30];
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = a4;
  v16 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2613A4320;
  *(v17 + 32) = v12;
  *(v17 + 40) = v16;
  v18 = v12;
  v19 = v16;
  v20 = sub_2613A1B6C();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v8 setPredicate_];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2613A4320;
  v23 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v24 = sub_2613A189C();
  v25 = [v23 initWithKey:v24 ascending:1];

  *(v22 + 32) = v25;
  v26 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v27 = sub_2613A189C();
  v28 = [v26 initWithKey:v27 ascending:1];

  *(v22 + 40) = v28;
  sub_261259BE0(0, &qword_27FE9F2A8, 0x277CCAC98);
  v29 = sub_2613A1B6C();

  [v8 setSortDescriptors_];

  [v8 setFetchBatchSize_];
  if (a5 >= 1)
  {
    [v8 setFetchLimit_];
  }

  v30 = sub_2613A1EDC();

  return v30;
}

uint64_t sub_261255800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ManagedTransaction();
  v9 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2613A4300;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2612594FC();
  strcpy((v10 + 32), "safSessionHash");
  *(v10 + 47) = -18;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a2;
  *(v10 + 80) = a3;

  v13 = sub_2613A1D5C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2613A4300;
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 32) = 0x644979656BLL;
  *(v14 + 40) = 0xE500000000000000;
  *(v14 + 96) = v11;
  *(v14 + 104) = v12;
  *(v14 + 72) = a4;
  *(v14 + 80) = a5;

  v15 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2613A4320;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  v17 = v13;
  v18 = v15;
  v19 = sub_2613A1B6C();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v9 setPredicate_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2613A4320;
  v22 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v23 = sub_2613A189C();
  v24 = [v22 initWithKey:v23 ascending:1];

  *(v21 + 32) = v24;
  v25 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v26 = sub_2613A189C();
  v27 = [v25 initWithKey:v26 ascending:1];

  *(v21 + 40) = v27;
  sub_261259BE0(0, &qword_27FE9F2A8, 0x277CCAC98);
  v28 = sub_2613A1B6C();

  [v9 setSortDescriptors_];

  [v9 setFetchBatchSize_];
  [v9 setFetchLimit_];
  v29 = sub_2613A1EDC();

  return v29;
}

BOOL sub_261255BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedTransaction();
  v5 = static ManagedTransaction.fetchRequest()();
  if (a3)
  {
    sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2613A4300;
    v7 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v8 = sub_2612594FC();
    strcpy((v6 + 32), "safSessionHash");
    *(v6 + 47) = -18;
    *(v6 + 96) = v7;
    *(v6 + 104) = v8;
    *(v6 + 64) = v8;
    *(v6 + 72) = a2;
    *(v6 + 80) = a3;

    v9 = sub_2613A1D5C();
    [v5 setPredicate_];
  }

  [v5 setFetchLimit_];
  v10 = sub_2613A1ECC();

  return v10 > 0;
}

void sub_261255D18(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedTransaction();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  if (!v6)
  {
    sub_2613A18CC();
    v6 = sub_2613A189C();
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CBE380]) initWithEntityName_];

  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2613A4310;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2C8, &qword_2613A4388);
  *(v8 + 64) = sub_261259C28(&qword_27FE9F2D0, &qword_27FE9F2C8, &qword_2613A4388);
  *(v8 + 32) = a3;

  v9 = sub_2613A1D5C();
  [v7 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2D8, &qword_2613A4390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  sub_2613A209C();
  v11 = sub_26139F13C();
  *(inited + 96) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_261259CE0(inited);
  swift_setDeallocating();
  sub_26124C718(inited + 32, &qword_27FE9F2E0, &qword_2613A4398);
  v13 = sub_2613A17EC();

  [v7 setPropertiesToUpdate_];

  sub_2612E3828(a1, v7);
}

void sub_261255FE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v8 = sub_26139F13C();
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v64 - v20);
  v22 = v69;
  v23 = sub_261259550(a1, a2, a3, a4);
  if (!v22)
  {
    v67 = v21;
    v24 = v68;
    v69 = 0;
    if (v23)
    {
      v25 = a1;
      v26 = v23;
      [v25 deleteObject_];
      v70[0] = 0;
      if (![v25 save_])
      {
        v38 = v70[0];
        sub_26139EE7C();

        swift_willThrow();
        goto LABEL_18;
      }

      v66 = v26;
      v27 = v70[0];
      v28 = sub_26129B8EC();
      v29 = v67;
      sub_26125A870(v28, v67, &qword_27FE9F560, &qword_2613A3CB0);
      v30 = sub_2613A124C();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v29, 1, v30) == 1)
      {

        v32 = v29;
LABEL_8:
        sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
        goto LABEL_18;
      }

      v53 = v8;
      (*(v24 + 16))(v14, a4, v8);
      v54 = sub_2613A122C();
      v55 = sub_2613A1D9C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v70[0] = v65;
        *v56 = 136315138;
        sub_2612594A4();
        v57 = sub_2613A23EC();
        v58 = v53;
        v60 = v59;
        (*(v24 + 8))(v14, v58);
        v61 = sub_26124C11C(v57, v60, v70);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_261243000, v54, v55, "Transaction [%s] deleted successfully", v56, 0xCu);
        v62 = v65;
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
        MEMORY[0x266701350](v62, -1, -1);
        MEMORY[0x266701350](v56, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v14, v53);
      }

      (*(v31 + 8))(v67, v30);
    }

    else
    {
      v33 = v12;
      v34 = sub_26129B8EC();
      v35 = v19;
      sub_26125A870(v34, v19, &qword_27FE9F560, &qword_2613A3CB0);
      v36 = sub_2613A124C();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v19, 1, v36) == 1)
      {
        v32 = v19;
        goto LABEL_8;
      }

      v39 = v24;
      v40 = *(v24 + 16);
      v41 = v33;
      v42 = v8;
      v40(v33, a4, v8);
      v43 = sub_2613A122C();
      v44 = sub_2613A1D8C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v65 = v45;
        v67 = swift_slowAlloc();
        v70[0] = v67;
        *v45 = 136315138;
        sub_2612594A4();
        LODWORD(v66) = v44;
        v46 = sub_2613A23EC();
        v48 = v47;
        (*(v39 + 8))(v41, v42);
        v49 = sub_26124C11C(v46, v48, v70);

        v50 = v65;
        *(v65 + 4) = v49;
        v51 = v50;
        _os_log_impl(&dword_261243000, v43, v66, "Transaction [%s] could not be deleted", v50, 0xCu);
        v52 = v67;
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x266701350](v52, -1, -1);
        MEMORY[0x266701350](v51, -1, -1);
      }

      else
      {

        (*(v39 + 8))(v41, v42);
      }

      (*(v37 + 8))(v35, v36);
    }
  }

LABEL_18:
  v63 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261256620(void *a1, unsigned int (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v51 = a5;
  v58 = a4;
  v49 = a2;
  v55 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v52 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v47 - v11;
  v13 = sub_26139F13C();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v48 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v47[0] = v47 - v17;
  type metadata accessor for ManagedTransaction();
  v54 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2613A4340;
  v19 = sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v21 = swift_allocObject();
  v50 = xmmword_2613A4300;
  *(v21 + 16) = xmmword_2613A4300;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = sub_2612594FC();
  strcpy((v21 + 32), "safSessionHash");
  *(v21 + 47) = -18;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  v24 = v49;
  *(v21 + 64) = v23;
  *(v21 + 72) = v24;
  *(v21 + 80) = a3;

  *(v18 + 32) = sub_2613A1D5C();
  v59 = v18;
  v25 = v57;
  sub_26125A870(v58, v12, &qword_27FE9F280, &unk_2613A42B0);
  v26 = *(v25 + 48);
  v58 = v13;
  v49 = v26;
  v27 = v26(v12, 1, v13);
  v53 = v19;
  v47[1] = v20;
  if (v27 == 1)
  {
    sub_26124C718(v12, &qword_27FE9F280, &unk_2613A42B0);
    v28 = v58;
    v29 = v23;
  }

  else
  {
    v30 = v47[0];
    (*(v25 + 32))(v47[0], v12, v58);
    v31 = swift_allocObject();
    *(v31 + 16) = v50;
    *(v31 + 56) = v22;
    *(v31 + 64) = v23;
    *(v31 + 32) = 0x64496863746162;
    *(v31 + 40) = 0xE700000000000000;
    v32 = v25;
    v33 = sub_26139F10C();
    *(v31 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v31 + 104) = sub_261259B78();
    *(v31 + 72) = v33;
    sub_2613A1D5C();
    MEMORY[0x2666FFFD0]();
    v34 = v32;
    v35 = v30;
    v29 = v23;
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v44 = v35;
      v45 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2613A1B9C();
      v35 = v44;
      v34 = v57;
    }

    sub_2613A1BBC();
    v25 = v34;
    v28 = v58;
    (*(v34 + 8))(v35, v58);
  }

  v36 = v52;
  sub_26125A870(v51, v52, &qword_27FE9F280, &unk_2613A42B0);
  if (v49(v36, 1, v28) == 1)
  {
    sub_26124C718(v36, &qword_27FE9F280, &unk_2613A42B0);
  }

  else
  {
    v37 = v48;
    (*(v25 + 32))(v48, v36, v28);
    v38 = swift_allocObject();
    *(v38 + 16) = v50;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = v29;
    *(v38 + 32) = 0x4972656E74726170;
    *(v38 + 40) = 0xE900000000000064;
    v39 = sub_26139F10C();
    *(v38 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v38 + 104) = sub_261259B78();
    *(v38 + 72) = v39;
    sub_2613A1D5C();
    MEMORY[0x2666FFFD0]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2613A1B9C();
    }

    sub_2613A1BBC();
    (*(v25 + 8))(v37, v28);
  }

  v40 = sub_2613A1B6C();

  v41 = [objc_opt_self() andPredicateWithSubpredicates_];

  v42 = v54;
  [v54 setPredicate_];

  LOBYTE(v40) = sub_2612E3644(v55, v42);
  return v40 & 1;
}

void sub_261256C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedTransaction();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2613A4300;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2612594FC();
  strcpy((v8 + 32), "safSessionHash");
  *(v8 + 47) = -18;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;

  v11 = sub_2613A1D5C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2613A4300;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  strcpy((v12 + 32), "transactionId");
  *(v12 + 46) = -4864;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
  *(v12 + 104) = sub_261259C28(&qword_27FE9F2B8, &qword_27FE9F2B0, &qword_2613A4378);
  *(v12 + 72) = a4;

  v13 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2613A4320;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v15 = v11;
  v16 = v13;
  v17 = sub_2613A1B6C();

  v18 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  sub_2612E3644(a1, v7);
}

void sub_261256F30(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v44 = a2;
  v45 = a5;
  v46[7] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_26139F13C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedBatch();
  v42 = v15;
  v43 = v14;
  (*(v15 + 16))(v18, a4, v14);
  v19 = a1;

  sub_261259E1C(a6, v46);
  v20 = sub_261295DB8(v19, v44, a3, v18, v45, a6);
  v46[0] = 0;
  if ([v19 save_])
  {
    v21 = v46[0];
    v22 = sub_26129B8EC();
    sub_26125A870(v22, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v13, 1, v23) == 1)
    {

      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = v20;
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v45 = v13;
        v30 = v29;
        v41 = swift_slowAlloc();
        v46[0] = v41;
        *v30 = 136315138;
        v31 = [v26 batchId];
        v44 = v26;
        v32 = v31;
        sub_26139F11C();

        sub_2612594A4();
        v33 = v28;
        v34 = v43;
        v35 = sub_2613A23EC();
        v37 = v36;
        (*(v42 + 8))(v18, v34);
        v38 = sub_26124C11C(v35, v37, v46);

        *(v30 + 4) = v38;
        _os_log_impl(&dword_261243000, v27, v33, "Saved [%s] batch", v30, 0xCu);
        v39 = v41;
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x266701350](v39, -1, -1);
        v13 = v45;
        MEMORY[0x266701350](v30, -1, -1);
      }

      else
      {
      }

      (*(v24 + 8))(v13, v23);
    }
  }

  else
  {
    v25 = v46[0];
    sub_26139EE7C();

    swift_willThrow();
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26125735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_26139F13C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = sub_261259FA8(a1, a2, a3, v10);
  sub_26124C718(v10, &qword_27FE9F280, &unk_2613A42B0);
  if (!v3)
  {
    LOBYTE(a2) = v12 != 0;
  }

  return a2 & 1;
}

BOOL sub_261257484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v38 = a5;
  v34 = a2;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedBatch();
  v36 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v14 = swift_allocObject();
  v32 = xmmword_2613A4300;
  *(v14 + 16) = xmmword_2613A4300;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v16 = sub_2612594FC();
  strcpy((v14 + 32), "safSessionHash");
  *(v14 + 47) = -18;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  v17 = v34;
  *(v14 + 64) = v16;
  *(v14 + 72) = v17;
  *(v14 + 80) = a3;

  v18 = v10;
  v19 = sub_2613A1D5C();
  sub_26125A870(v35, v9, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v11 + 48))(v9, 1, v18) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F280, &unk_2613A42B0);
  }

  else
  {
    v20 = v33;
    (*(v11 + 32))();
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    *(v21 + 56) = v15;
    *(v21 + 64) = v16;
    *(v21 + 32) = 0x64496863746162;
    *(v21 + 40) = 0xE700000000000000;
    v22 = v20;
    v23 = sub_26139F10C();
    *(v21 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v21 + 104) = sub_261259B78();
    *(v21 + 72) = v23;
    v24 = sub_2613A1D5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2613A4320;
    *(v25 + 32) = v19;
    *(v25 + 40) = v24;
    v26 = v19;
    v27 = v24;
    v28 = sub_2613A1B6C();

    v19 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v11 + 8))(v22, v18);
  }

  v29 = v36;
  [v36 setPredicate_];
  v30 = sub_2612E3644(v37, v29);

  return v30;
}

uint64_t sub_261257890()
{
  sub_2613A256C();
  MEMORY[0x2667009F0](0);
  return sub_2613A25CC();
}

uint64_t sub_2612578FC()
{
  sub_2613A256C();
  MEMORY[0x2667009F0](0);
  return sub_2613A25CC();
}

void sub_261257948(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, double a6)
{
  v91 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v82 - v20;
  v22 = sub_26129B8EC();
  if (a4 < 1)
  {
    sub_26125A870(v22, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v16, 1, v27) == 1)
    {
      sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v76 = sub_2613A122C();
      v77 = sub_2613A1D8C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_261243000, v76, v77, "Invalid number of transactions to persist in the DB", v78, 2u);
        MEMORY[0x266701350](v78, -1, -1);
      }

      (*(v28 + 8))(v16, v27);
    }
  }

  else
  {
    v95 = a3;
    v90 = a1;
    v84 = v22;
    sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    v87 = v23;
    v82[0] = v25;
    v82[1] = v24 + 48;
    v26 = v25(v21, 1);
    v96 = v6;
    v83 = v19;
    v85 = v24;
    v86 = a4;
    if (v26 == 1)
    {
      sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = a4;
        _os_log_impl(&dword_261243000, v29, v30, "Saving [%ld] Mocked ManagedTransaction", v31, 0xCu);
        v32 = v31;
        v24 = v85;
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v24 + 8))(v21, v87);
    }

    sub_2612FF320();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4350;
    *(inited + 32) = 0x6973736553666173;
    v94 = (inited + 32);
    *(inited + 40) = 0xEE00687361486E6FLL;
    v36 = a2[1];
    v37 = MEMORY[0x277D837D0];
    *(inited + 48) = *a2;
    *(inited + 56) = v36;
    *(inited + 72) = v37;
    strcpy((inited + 80), "transactionId");
    *(inited + 94) = -4864;
    Result = type metadata accessor for StoreAndForwardReadResult();
    v39 = a2 + *(Result + 24);
    v40 = sub_26139F13C();
    *(inited + 120) = v40;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
    v42 = *(*(v40 - 8) + 16);
    v42(boxed_opaque_existential_0, v39, v40);
    *(inited + 128) = 0x4972656E74726170;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 168) = v40;
    v43 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
    v42(v43, v95, v40);
    *(inited + 176) = 0xD000000000000019;
    *(inited + 184) = 0x80000002613B8080;

    v44 = sub_2612FF320();
    v45 = MEMORY[0x277D84CC0];
    *(inited + 192) = v44;
    *(inited + 216) = v45;
    *(inited + 224) = 0xD000000000000012;
    *(inited + 232) = 0x80000002613B8060;
    v46 = MEMORY[0x277D839F8];
    *(inited + 240) = v34;
    *(inited + 264) = v46;
    *(inited + 272) = 0xD00000000000001CLL;
    *(inited + 280) = 0x80000002613B8030;
    *(inited + 288) = v34 + a6;
    *(inited + 312) = v46;
    strcpy((inited + 320), "cardReaderBlob");
    *(inited + 335) = -18;
    v47 = a2[2];
    v48 = a2[3];
    v49 = MEMORY[0x277CC9318];
    *(inited + 336) = v47;
    *(inited + 344) = v48;
    *(inited + 360) = v49;
    *(inited + 368) = 0x436C6172656E6567;
    v50 = v49;
    *(inited + 376) = 0xEF61746144647261;
    v51 = &v39[*(type metadata accessor for TransactionData(0) + 44)];
    v52 = *v51;
    v53 = v51[1];
    *(inited + 384) = *v51;
    *(inited + 392) = v53;
    *(inited + 408) = v50;
    *(inited + 416) = 0x644979656BLL;
    *(inited + 424) = 0xE500000000000000;
    v54 = (a2 + *(Result + 28));
    v55 = v54[2];
    v56 = v54[3];
    sub_26124C778(v47, v48);
    sub_26124C778(v52, v53);
    *(inited + 432) = sub_26139F00C();
    *(inited + 440) = v57;
    *(inited + 456) = MEMORY[0x277D837D0];
    *(inited + 464) = 0x727574616E676973;
    *(inited + 472) = 0xE900000000000065;
    v58 = *v54;
    v59 = v54[1];
    *(inited + 504) = MEMORY[0x277CC9318];
    *(inited + 480) = v58;
    *(inited + 488) = v59;
    sub_26124C778(v58, v59);
    v92 = sub_261259E78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
    swift_arrayDestroy();
    v60 = v86;
    if (__OFADD__(v86, 1))
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      v61 = 1.0 / (v86 + 1);
      type metadata accessor for ManagedTransaction();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v88 = v98;
      v89 = ObjCClassFromMetadata;
      do
      {
        v63 = sub_2613A0D6C();
        if (v60 >= v63)
        {
          v64 = v63;
        }

        else
        {
          v64 = v60;
        }

        v95 = MEMORY[0x266700BB0]();
        v65 = swift_allocObject();
        *(v65 + 16) = 0;
        v66 = swift_allocObject();
        *(v66 + 16) = v34;
        v93 = v66 + 16;
        v67 = swift_allocObject();
        *(v67 + 16) = v92;

        v68 = [v89 entityName];
        if (!v68)
        {
          sub_2613A18CC();
          v68 = sub_2613A189C();
        }

        v69 = swift_allocObject();
        *(v69 + 16) = v65;
        *(v69 + 24) = v64;
        *(v69 + 32) = v67;
        *(v69 + 40) = v66;
        *(v69 + 48) = v61;
        v94 = objc_allocWithZone(MEMORY[0x277CBE370]);
        v98[2] = sub_26125A458;
        v98[3] = v69;
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 1107296256;
        v98[0] = sub_2612586D8;
        v98[1] = &block_descriptor;
        v70 = _Block_copy(v97);

        v71 = [v94 initWithEntityName:v68 dictionaryHandler:v70];

        _Block_release(v70);

        v72 = v90;
        v73 = v96;
        sub_2612E3880(v90, v71);
        v96 = v73;
        if (v73)
        {

          [v72 reset];

          objc_autoreleasePoolPop(v95);
          return;
        }

        swift_beginAccess();
        v34 = *(v66 + 16);
        [v72 reset];

        objc_autoreleasePoolPop(v95);
        v74 = __OFSUB__(v60, v64);
        v60 -= v64;
        if (v74)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      while (v60 > 0);

      v75 = v83;
      sub_26125A870(v84, v83, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v82[0])(v75, 1, v87) == 1)
      {
        sub_26124C718(v75, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v79 = sub_2613A122C();
        v80 = sub_2613A1D9C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 134217984;
          *(v81 + 4) = v86;
          _os_log_impl(&dword_261243000, v79, v80, "Saved [%ld] mocked payments", v81, 0xCu);
          MEMORY[0x266701350](v81, -1, -1);
        }

        (*(v85 + 8))(v75, v87);
      }
    }
  }
}

uint64_t sub_261258340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26125A7B0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_261258F20(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_26124C718(a1, &qword_27FEA00C0, &unk_2613A44B0);
    sub_261258A14(a2, a3, v10);

    return sub_26124C718(v10, &qword_27FEA00C0, &unk_2613A44B0);
  }

  return result;
}

uint64_t sub_261258410(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F300, &unk_2613A51D0);
    v2 = sub_2613A224C();
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26124C994(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_26125A7B0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26125A7B0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26125A7B0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2613A207C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26125A7B0(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2612586D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

size_t sub_261258730(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F310, qword_2613A44C0);
  v10 = *(sub_26139F13C() - 8);
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
  v15 = *(sub_26139F13C() - 8);
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

unint64_t sub_261258908(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2613A207C();

  return sub_26125894C(a1, v5);
}

unint64_t sub_26125894C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26125A7C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266700500](v9, a1);
      sub_26125A81C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_261258A14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26124E5EC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2612590DC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_26125A7B0((*(v12 + 56) + 32 * v9), a3);
    sub_261258D70(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_261258AB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F308, &unk_2613A51C0);
  v36 = a2;
  result = sub_2613A223C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26125A7B0(v25, v37);
      }

      else
      {
        sub_26124C994(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26125A7B0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_261258D70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2613A256C();

      sub_2613A19DC();
      v14 = sub_2613A25CC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_261258F20(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26124E5EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2612590DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_261258AB8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26124E5EC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2613A249C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_26125A7B0(a1, v23);
  }

  else
  {
    sub_261259070(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_261259070(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26125A7B0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2612590DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F308, &unk_2613A51C0);
  v2 = *v0;
  v3 = sub_2613A222C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26124C994(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26125A7B0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_261259280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_26129B7C4();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "Simulating database error", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  sub_26125A8D8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_261259440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAndForwardReadResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2612594A4()
{
  result = qword_27FE9F570;
  if (!qword_27FE9F570)
  {
    sub_26139F13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F570);
  }

  return result;
}

unint64_t sub_2612594FC()
{
  result = qword_27FE9F290;
  if (!qword_27FE9F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F290);
  }

  return result;
}

uint64_t sub_261259550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v7 = sub_26139F13C();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = v58[8];
  MEMORY[0x28223BE20](v7);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v55 - v12;
  v62 = type metadata accessor for ManagedTransaction();
  v13 = static ManagedTransaction.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v14 = swift_allocObject();
  v61 = xmmword_2613A4300;
  *(v14 + 16) = xmmword_2613A4300;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v16 = sub_2612594FC();
  strcpy((v14 + 32), "safSessionHash");
  *(v14 + 47) = -18;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 64) = v16;
  *(v14 + 72) = a2;
  *(v14 + 80) = a3;

  v17 = sub_2613A1D5C();
  v18 = swift_allocObject();
  *(v18 + 16) = v61;
  *(v18 + 56) = v15;
  *(v18 + 64) = v16;
  strcpy((v18 + 32), "transactionId");
  *(v18 + 46) = -4864;
  v19 = a4;
  v20 = sub_26139F10C();
  *(v18 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
  *(v18 + 104) = sub_261259B78();
  *(v18 + 72) = v20;
  v21 = v13;
  v22 = sub_2613A1D5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2613A4320;
  *(v23 + 32) = v17;
  *(v23 + 40) = v22;
  v24 = v17;
  v25 = v22;
  v26 = sub_2613A1B6C();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v21 setPredicate_];
  v28 = v63;
  v29 = v64;
  v30 = sub_2613A1EDC();
  if (v29)
  {

    return v28;
  }

  v31 = v30;
  v63 = v25;
  v64 = v24;
  v33 = v59;
  v32 = v60;
  v34 = v57;
  v35 = v58;
  if (!(v30 >> 62))
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v57;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v40 = sub_26129B8EC();
    sub_26125A870(v40, v37, &qword_27FE9F560, &qword_2613A3CB0);
    v41 = sub_2613A124C();
    *&v61 = *(v41 - 8);
    v42 = *(v61 + 48);
    v62 = v41;
    if (v42(v37, 1) == 1)
    {
      sub_26124C718(v37, &qword_27FE9F560, &qword_2613A3CB0);
      v43 = v63;
    }

    else
    {
      v59 = v21;
      (v35[2])(v32, v19, v33);
      v44 = v35;
      v45 = sub_2613A122C();
      v46 = sub_2613A1D8C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v55 = v47;
        v58 = swift_slowAlloc();
        v65 = v58;
        *v47 = 136315138;
        sub_2612594A4();
        v56 = v46;
        v48 = v60;
        v49 = sub_2613A23EC();
        v51 = v50;
        (v44[1])(v48, v33);
        v52 = sub_26124C11C(v49, v51, &v65);
        v37 = v34;

        v53 = v55;
        *(v55 + 1) = v52;
        _os_log_impl(&dword_261243000, v45, v56, "No transaction was found with transactionID [%s]", v53, 0xCu);
        v54 = v58;
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x266701350](v54, -1, -1);
        MEMORY[0x266701350](v53, -1, -1);
      }

      else
      {

        (v44[1])(v60, v33);
      }

      v43 = v63;
      (*(v61 + 8))(v37, v62);
      v21 = v59;
    }

    return 0;
  }

  result = sub_2613A221C();
  v37 = v34;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x2667005C0](0, v31);
    v39 = v63;
    v38 = v64;
    goto LABEL_8;
  }

  v39 = v63;
  v38 = v64;
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v31 + 32);
LABEL_8:

    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_261259B78()
{
  result = qword_27FE9F2A0;
  if (!qword_27FE9F2A0)
  {
    sub_261259BE0(255, &qword_27FE9F298, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F2A0);
  }

  return result;
}

uint64_t sub_261259BE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_261259C28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_261259CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F300, &unk_2613A51D0);
    v3 = sub_2613A224C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26125A870(v4, v13, &qword_27FE9F2E0, &qword_2613A4398);
      result = sub_261258908(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26125A7B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_261259E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F308, &unk_2613A51C0);
    v3 = sub_2613A224C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26125A870(v4, &v13, &qword_27FE9F2F0, &qword_2613A4BD0);
      v5 = v13;
      v6 = v14;
      result = sub_26124E5EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26125A7B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_261259FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v38 = a2;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ManagedBatch();
  v43 = static ManagedBatch.fetchRequest()();
  sub_261259BE0(0, &qword_27FE9F288, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
  v13 = swift_allocObject();
  v36 = xmmword_2613A4300;
  *(v13 + 16) = xmmword_2613A4300;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2612594FC();
  strcpy((v13 + 32), "safSessionHash");
  *(v13 + 47) = -18;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  v16 = v38;
  *(v13 + 64) = v15;
  *(v13 + 72) = v16;
  *(v13 + 80) = a3;

  v17 = sub_2613A1D5C();
  sub_26125A870(v39, v8, &qword_27FE9F280, &unk_2613A42B0);
  v18 = v10;
  v19 = *(v10 + 48);
  v20 = v9;
  if (v19(v8, 1, v9) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F280, &unk_2613A42B0);
  }

  else
  {
    v21 = v18;
    v22 = *(v18 + 32);
    v23 = v37;
    v22();
    v24 = swift_allocObject();
    *(v24 + 16) = v36;
    *(v24 + 56) = v14;
    *(v24 + 64) = v15;
    *(v24 + 32) = 0x64496863746162;
    *(v24 + 40) = 0xE700000000000000;
    v25 = sub_26139F10C();
    *(v24 + 96) = sub_261259BE0(0, &qword_27FE9F298, 0x277CCAD78);
    *(v24 + 104) = sub_261259B78();
    *(v24 + 72) = v25;
    v26 = sub_2613A1D5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2613A4320;
    *(v27 + 32) = v17;
    *(v27 + 40) = v26;
    v28 = v17;
    v15 = v26;
    v29 = sub_2613A1B6C();

    v17 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v21 + 8))(v23, v20);
  }

  v30 = v43;
  [v43 setPredicate_];
  [v30 setFetchLimit_];
  v31 = v42;
  result = sub_2613A1EDC();
  if (v31)
  {

    return v15;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_13:

    v15 = 0;
    goto LABEL_14;
  }

  v34 = result;
  v35 = sub_2613A221C();
  result = v34;
  if (!v35)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((result & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x2667005C0](0);
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(result + 32);
LABEL_11:
    v15 = v33;

LABEL_14:
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26125A458(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  swift_beginAccess();
  v8 = *(v4 + 16);
  if (v8 >= v3)
  {
    return v8 >= v3;
  }

  v18 = sub_26139F13C();
  __swift_allocate_boxed_opaque_existential_0(v17);
  sub_26139F12C();
  swift_beginAccess();
  sub_261258340(v17, 0x746361736E617274, 0xED000064496E6F69);
  swift_endAccess();
  swift_beginAccess();
  v9 = v7 + *(v6 + 16);
  *(v6 + 16) = v9;
  v18 = MEMORY[0x277D839F8];
  *v17 = v9;
  swift_beginAccess();
  sub_261258340(v17, 0xD000000000000012, 0x80000002613B8060);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(v5 + 16);

  sub_261258410(v11);

  v12 = sub_2613A17EC();

  [a1 setDictionary_];

  result = swift_beginAccess();
  v14 = *(v4 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v4 + 16) = v16;
    return v8 >= v3;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26125A664()
{
  result = qword_27FE9F2F8;
  if (!qword_27FE9F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F2F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreAndForwardStorage.DatabaseError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StoreAndForwardStorage.DatabaseError(_WORD *result, int a2, int a3)
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