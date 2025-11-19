uint64_t sub_1BDA00E40()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1BDA0132C;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1BDA00F5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA00F5C()
{
  while (1)
  {

    v1 = v0[26] + 1;
    if (v1 == v0[25])
    {
      break;
    }

    v0[26] = v1;
    v2 = v0[24];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v3 = *(v2 + 8 * v1 + 32);
      sub_1BE048964();
    }

    v0[27] = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[28] = Strong;
    if (Strong)
    {
      v7 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v11 = (*(v7 + 8) + **(v7 + 8));
      v9 = swift_task_alloc();
      v0[29] = v9;
      *v9 = v0;
      v9[1] = sub_1BDA00E40;

      return v11(ObjectType, v7);
    }
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1BDA003F4;
  v6 = v0[16];

  return MEMORY[0x1EEDEE7E8](v0 + 31, v6);
}

uint64_t sub_1BDA01168()
{

  v1 = v0[22];
  sub_1BD0DE53C(v0[17], &qword_1EBD5BE10);
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to listen to transaction updates with error: %@.", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BDA0132C()
{
  v1 = v0[30];
  swift_unknownObjectRelease();
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Observer failed to invalidate spending summaries with error: %@.", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);
  while (1)
  {
    v11 = v0[26] + 1;
    if (v11 == v0[25])
    {
      break;
    }

    v0[26] = v11;
    v12 = v0[24];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
      sub_1BE048964();
    }

    v0[27] = v13;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[28] = Strong;
    if (Strong)
    {
      v17 = *(v13 + 24);
      ObjectType = swift_getObjectType();
      v21 = (*(v17 + 8) + **(v17 + 8));
      v19 = swift_task_alloc();
      v0[29] = v19;
      *v19 = v0;
      v19[1] = sub_1BDA00E40;

      return v21(ObjectType, v17);
    }
  }

  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_1BDA003F4;
  v16 = v0[16];

  return MEMORY[0x1EEDEE7E8](v0 + 31, v16);
}

uint64_t sub_1BDA016A0()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v1 + v2) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v11 = swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v11, v12, v13);
    }

    if (v15 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v15);
    ++v14;
    if (v9)
    {
      v14 = v15;
      do
      {
LABEL_9:
        v9 &= v9 - 1;
        type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        sub_1BE052944();
      }

      while (v9);
      continue;
    }
  }

  v16 = *(v0 + 64);

  *(v1 + v2) = MEMORY[0x1E69E7CC8];

  v12 = *(v16 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_summaryFetcher);
  *(v0 + 72) = v12;
  v11 = sub_1BDA0185C;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BDA0185C()
{
  v1 = *(v0 + 64);
  sub_1BD72AD30();

  return MEMORY[0x1EEE6DFA0](sub_1BDA018C4, v1, 0);
}

uint64_t sub_1BDA018C4()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_metadataFetcher);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BDA018F0, v1, 0);
}

uint64_t sub_1BDA018F0()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v1 + 120) = MEMORY[0x1E69E7CC8];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BDA01974(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13D70();
  sub_1BE053DA4();
  v13 = 0;
  sub_1BE0493F4();
  sub_1BDA1396C(&qword_1EBD5BD58, MEMORY[0x1E6967790]);
  sub_1BE053AF4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0) + 20));
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
    sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68);
    sub_1BE053AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BDA01B90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_1BE0493F4();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD78);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13D70();
  sub_1BE053D94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v12;
  v16 = v15;
  v17 = v26;
  v32 = 0;
  sub_1BDA1396C(&qword_1EBD5BD48, MEMORY[0x1E6967790]);
  v18 = v29;
  v19 = v27;
  sub_1BE053AA4();
  v20 = *(v17 + 32);
  v23 = v16;
  v20(v16, v6, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
  v31 = 1;
  sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58);
  sub_1BE053AA4();
  (*(v28 + 8))(v11, v19);
  v21 = v23;
  *(v23 + *(v24 + 20)) = v30;
  sub_1BDA13D08(v21, v25, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1BDA138A4(v21, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
}

uint64_t sub_1BDA01F64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13CB4();
  sub_1BE053DA4();
  v13 = 0;
  sub_1BE0493F4();
  sub_1BDA1396C(&qword_1EBD5BD58, MEMORY[0x1E6967790]);
  sub_1BE053AF4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0) + 20));
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
    sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68);
    sub_1BE053AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BDA02180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_1BE0493F4();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD60);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13CB4();
  sub_1BE053D94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v12;
  v16 = v15;
  v17 = v26;
  v32 = 0;
  sub_1BDA1396C(&qword_1EBD5BD48, MEMORY[0x1E6967790]);
  v18 = v29;
  v19 = v27;
  sub_1BE053AA4();
  v20 = *(v17 + 32);
  v23 = v16;
  v20(v16, v6, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
  v31 = 1;
  sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58);
  sub_1BE053AA4();
  (*(v28 + 8))(v11, v19);
  v21 = v23;
  *(v23 + *(v24 + 20)) = v30;
  sub_1BDA13D08(v21, v25, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1BDA138A4(v21, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
}

uint64_t sub_1BDA02558()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x636E496C61746F74;
  }
}

uint64_t sub_1BDA025A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E496C61746F74 && a2 == 0xEB00000000656D6FLL;
  if (v6 || (sub_1BE053B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BE053B84();

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

uint64_t sub_1BDA02688(uint64_t a1)
{
  v2 = sub_1BDA13D70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA026C4(uint64_t a1)
{
  v2 = sub_1BDA13D70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BDA02730()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1BDA0276C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001BE1474B0 == a2 || (sub_1BE053B84() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BDA02850(uint64_t a1)
{
  v2 = sub_1BDA13CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA0288C(uint64_t a1)
{
  v2 = sub_1BDA13CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BDA028FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13C60();
  sub_1BE053DA4();
  v13 = 0;
  sub_1BE0493F4();
  sub_1BDA1396C(&qword_1EBD5BD58, MEMORY[0x1E6967790]);
  sub_1BE053AF4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) + 20));
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
    sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68);
    sub_1BE053AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BDA02B18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_1BE0493F4();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD38);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13C60();
  sub_1BE053D94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v12;
  v16 = v15;
  v17 = v26;
  v32 = 0;
  sub_1BDA1396C(&qword_1EBD5BD48, MEMORY[0x1E6967790]);
  v18 = v29;
  v19 = v27;
  sub_1BE053AA4();
  v20 = *(v17 + 32);
  v23 = v16;
  v20(v16, v6, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
  v31 = 1;
  sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58);
  sub_1BE053AA4();
  (*(v28 + 8))(v11, v19);
  v21 = v23;
  *(v23 + *(v24 + 20)) = v30;
  sub_1BDA13D08(v21, v25, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1BDA138A4(v21, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
}

uint64_t sub_1BDA02EEC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD30);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13B70();
  sub_1BE053DA4();
  v10[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
  sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68);
  sub_1BE053AF4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BDA03080()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6570536C61746F74;
  }
}

uint64_t sub_1BDA030CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL;
  if (v6 || (sub_1BE053B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BE053B84();

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

uint64_t sub_1BDA031B8(uint64_t a1)
{
  v2 = sub_1BDA13C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA031F4(uint64_t a1)
{
  v2 = sub_1BDA13C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BDA03260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1BE0493B4())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_1BD842AA4(v7, v8);
  }
}

uint64_t sub_1BDA032E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BE053B84();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BDA03378(uint64_t a1)
{
  v2 = sub_1BDA13B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA033B4(uint64_t a1)
{
  v2 = sub_1BDA13B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1BDA033F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BDA139B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BDA0344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BDA03474, 0, 0);
}

uint64_t sub_1BDA03474()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1BDA035A0;
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[7];
    v6 = v0[5];

    return sub_1BDA0377C(v6, v5, v3, v4);
  }

  else
  {
    sub_1BDA13FE4();
    swift_allocError();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1BDA035A0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1BDA03718;
  }

  else
  {
    v2 = sub_1BDA036B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA036B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA03718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA0377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[191] = v4;
  v5[185] = a4;
  v5[179] = a3;
  v5[173] = a2;
  v5[167] = a1;
  v6 = sub_1BE04D214();
  v5[197] = v6;
  v5[203] = *(v6 - 8);
  v5[209] = swift_task_alloc();
  v7 = sub_1BE049624();
  v5[210] = v7;
  v5[211] = *(v7 - 8);
  v5[212] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD98);
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v8 = sub_1BE049684();
  v5[215] = v8;
  v5[216] = *(v8 - 8);
  v5[217] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDA0);
  v5[218] = swift_task_alloc();
  v5[219] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8);
  v5[220] = swift_task_alloc();
  v9 = sub_1BE049654();
  v5[221] = v9;
  v5[222] = *(v9 - 8);
  v5[223] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDA8);
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0);
  v5[226] = swift_task_alloc();
  v10 = sub_1BE0495F4();
  v5[227] = v10;
  v5[228] = *(v10 - 8);
  v5[229] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDB0);
  v5[230] = swift_task_alloc();
  v5[231] = swift_task_alloc();
  v11 = sub_1BE0496B4();
  v5[232] = v11;
  v5[233] = *(v11 - 8);
  v5[234] = swift_task_alloc();
  v5[235] = swift_task_alloc();
  v5[236] = swift_task_alloc();
  v5[237] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8);
  v5[238] = swift_task_alloc();
  type metadata accessor for FinanceKitDailyCategorySpendingAggregator(0);
  v5[239] = swift_task_alloc();
  v12 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  v5[240] = v12;
  v5[241] = *(v12 - 8);
  v5[242] = swift_task_alloc();
  v13 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  v5[243] = v13;
  v5[244] = *(v13 - 8);
  v5[245] = swift_task_alloc();
  v5[246] = swift_task_alloc();
  v14 = sub_1BE0497B4();
  v5[247] = v14;
  v5[248] = *(v14 - 8);
  v5[249] = swift_task_alloc();
  v5[250] = swift_task_alloc();
  v15 = sub_1BE049B04();
  v5[251] = v15;
  v5[252] = *(v15 - 8);
  v5[253] = swift_task_alloc();
  v16 = sub_1BE049774();
  v5[254] = v16;
  v5[255] = *(v16 - 8);
  v5[256] = swift_task_alloc();
  v5[257] = swift_task_alloc();
  v5[258] = swift_task_alloc();
  v5[259] = swift_task_alloc();
  v5[260] = swift_task_alloc();
  v17 = sub_1BE04AFE4();
  v5[261] = v17;
  v5[262] = *(v17 - 8);
  v5[263] = swift_task_alloc();
  v5[264] = swift_task_alloc();
  v5[265] = swift_task_alloc();
  v5[266] = swift_task_alloc();
  v18 = sub_1BE049734();
  v5[267] = v18;
  v5[268] = *(v18 - 8);
  v5[269] = swift_task_alloc();
  v5[270] = swift_task_alloc();
  v19 = sub_1BE0497E4();
  v5[271] = v19;
  v5[272] = *(v19 - 8);
  v5[273] = swift_task_alloc();
  v5[274] = swift_task_alloc();
  v5[275] = swift_task_alloc();
  v5[276] = swift_task_alloc();
  v5[277] = swift_task_alloc();
  v5[278] = swift_task_alloc();
  v5[279] = type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter(0);
  v5[280] = swift_task_alloc();
  v5[281] = swift_task_alloc();
  v5[282] = swift_task_alloc();
  v20 = sub_1BE04AF64();
  v5[283] = v20;
  v5[284] = *(v20 - 8);
  v5[285] = swift_task_alloc();
  v5[286] = swift_task_alloc();
  v5[287] = swift_task_alloc();
  v5[288] = swift_task_alloc();
  v5[289] = swift_task_alloc();
  v5[290] = swift_task_alloc();
  v5[291] = swift_task_alloc();
  v21 = sub_1BE0493F4();
  v5[292] = v21;
  v5[293] = *(v21 - 8);
  v5[294] = swift_task_alloc();
  v5[295] = swift_task_alloc();
  v5[296] = swift_task_alloc();
  v5[297] = swift_task_alloc();
  v5[298] = swift_task_alloc();
  v5[299] = swift_task_alloc();
  v5[300] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  v5[301] = swift_task_alloc();
  v5[302] = swift_task_alloc();
  v5[303] = swift_task_alloc();
  v5[304] = swift_task_alloc();
  v5[305] = swift_task_alloc();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0) - 8);
  v5[306] = v22;
  v5[307] = *(v22 + 64);
  v5[308] = swift_task_alloc();
  v5[309] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDB8);
  v5[310] = swift_task_alloc();
  v5[311] = swift_task_alloc();
  v5[312] = swift_task_alloc();
  v5[313] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v5[314] = v23;
  v24 = *(v23 - 8);
  v5[315] = v24;
  v5[316] = *(v24 + 64);
  v5[317] = swift_task_alloc();
  v5[318] = swift_task_alloc();
  v5[319] = swift_task_alloc();
  v5[320] = swift_task_alloc();
  v5[321] = swift_task_alloc();
  v5[322] = swift_task_alloc();
  v25 = sub_1BE049814();
  v5[323] = v25;
  v5[324] = *(v25 - 8);
  v5[325] = swift_task_alloc();
  v5[326] = swift_task_alloc();
  v5[327] = swift_task_alloc();
  v5[328] = swift_task_alloc();
  v26 = sub_1BE04CFE4();
  v5[329] = v26;
  v5[330] = *(v26 - 8);
  v5[331] = swift_task_alloc();
  v5[332] = swift_task_alloc();
  v5[333] = swift_task_alloc();
  v5[334] = swift_task_alloc();
  v5[335] = swift_task_alloc();
  v5[336] = swift_task_alloc();
  v27 = sub_1BE04CFC4();
  v5[337] = v27;
  v5[338] = *(v27 - 8);
  v5[339] = swift_task_alloc();
  v5[340] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA044A4, v4, 0);
}

uint64_t sub_1BDA044A4()
{
  v1 = v0[336];
  v2 = v0[330];
  v3 = v0[329];
  sub_1BE04B6B4();
  sub_1BE04CFD4();
  sub_1BE04CF94();
  v4 = *(v2 + 8);
  v0[341] = v4;
  v0[342] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29 = v4;
  v4(v1, v3);
  sub_1BE04B6B4();
  v5 = sub_1BE04CFD4();
  v6 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v5, v6, v8, "GenerateSpendingSummary", "", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  v9 = v0[340];
  v10 = v0[339];
  v11 = v0[338];
  v12 = v0[337];
  v22 = v0[329];
  v23 = v0[335];
  v13 = v0[322];
  v24 = v0[315];
  v26 = v0[308];
  v27 = v0[306];
  v28 = v0[307];
  v14 = v0[191];
  v25 = v0[179];
  v15 = v0[173];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v0[343] = sub_1BE04D014();
  v29(v23, v22);
  sub_1BD0DE19C(v15, v13, &qword_1EBD38DB8);
  v16 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v17 = swift_allocObject();
  v0[344] = v17;
  *(v17 + 16) = v14;
  sub_1BD0DE204(v13, v17 + v16, &qword_1EBD38DB8);
  sub_1BE048964();
  swift_asyncLet_begin();
  sub_1BD0DE19C(v25, v26, &qword_1EBD402D0);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  v0[345] = v19;
  sub_1BD0DE204(v26, v19 + v18, &qword_1EBD402D0);
  *(v19 + ((v28 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_1BE048964();
  swift_asyncLet_begin();
  v20 = v0[328];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v20, sub_1BDA0481C, v0 + 162);
}

uint64_t sub_1BDA0481C()
{
  v1[346] = v0;
  if (v0)
  {
    v2 = v1[191];

    return MEMORY[0x1EEE6DFA0](sub_1BDA07884, v2, 0);
  }

  else
  {
    (*(v1[324] + 16))(v1[327], v1[328], v1[323]);
    v3 = v1[313];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v3, sub_1BDA048E0, v1 + 180);
  }
}

uint64_t sub_1BDA048E0()
{
  *(v1 + 2776) = v0;
  if (v0)
  {
    v2 = sub_1BDA07EC0;
  }

  else
  {
    v2 = sub_1BDA04914;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 1528), 0);
}

uint64_t sub_1BDA04914()
{
  v129 = v0;
  sub_1BD0DE19C(v0[313], v0[312], &qword_1EBD5BDB8);
  sub_1BE04B6B4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "Fetch Complete", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[341];
  v6 = v0[334];
  v7 = v0[329];
  v8 = v0[324];
  v122 = v0[323];
  v9 = v0[312];
  v10 = v0[311];
  v11 = v0[305];

  v5(v6, v7);
  v12 = type metadata accessor for FinanceKitSpendingTrend();
  v0[348] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v0[349] = v14;
  v0[350] = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v11, 1, 1, v12);
  sub_1BD0DE19C(v9, v10, &qword_1EBD5BDB8);
  v15 = *(v8 + 48);
  v0[351] = v15;
  v0[352] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v10, 1, v122) == 1)
  {
    sub_1BD0DE53C(v0[311], &qword_1EBD5BDB8);
    v123 = v0[347];
    goto LABEL_13;
  }

  (*(v0[324] + 32))(v0[326], v0[311], v0[323]);
  sub_1BE049804();
  sub_1BE04AEF4();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v16 = sub_1BE052314();
  v17 = v0[321];
  if (v16)
  {
    v18 = v0[291];
    v19 = v0[284];
    v20 = v0[283];
    v21 = sub_1BE0522F4();
    v22 = *(v19 + 8);
    v22(v18, v20);
    sub_1BD0DE53C(v17, &qword_1EBD38DB8);
    if (v21)
    {
      v23 = v0[319];
      v24 = v0[290];
      v111 = v0[289];
      v25 = v0[284];
      v109 = v0[283];
      v114 = v0[278];
      v117 = v0[272];
      v124 = v0[271];
      sub_1BE049804();
      swift_storeEnumTagMultiPayload();
      sub_1BE04AEF4();
      sub_1BE04ADC4();
      v108 = v22;
      v22(v24, v109);
      sub_1BE049804();
      (*(v25 + 16))(v111, v23, v109);
      sub_1BD0DE53C(v23, &qword_1EBD38DB8);
      sub_1BE04ADD4();
      sub_1BE0497F4();
      v26 = sub_1BE0496E4();
      (*(v117 + 8))(v114, v124);
      v27 = MEMORY[0x1BFB403C0](0);
      v28 = v26;
      v127[0] = v27;
      v127[1] = v29;
      LODWORD(v128) = v30;
      v125 = *(v26 + 16);
      if (v125)
      {
        v31 = v0[268];
        v33 = *(v31 + 16);
        v31 += 16;
        v32 = v33;
        v34 = (v31 - 8);
        v35 = v0[347];
        v36 = v0[288];
        v37 = v0[282];
        v38 = v0[270];
        v39 = (*(v31 + 64) + 32) & ~*(v31 + 64);
        v40 = *(v31 + 56);
        v113 = v28;
        v33(v38, v28 + v39, v0[267]);
        sub_1BDA0B03C(v127, v38, v36, v37);
        if (v35)
        {
          v41 = v0[270];
          v42 = v0[267];

          return (*v34)(v41, v42);
        }

        v116 = *v34;
        v121 = v32;
        (*v34)(v0[270], v0[267]);
        result = v113;
        if (v125 != 1)
        {
          v96 = v113 + v40 + v39;
          v97 = 1;
          while (v97 < *(result + 16))
          {
            v98 = result;
            v99 = v0[288];
            v100 = v0[282];
            v101 = v0[270];
            v121(v101, v96, v0[267]);
            sub_1BDA0B03C(v127, v101, v99, v100);
            ++v97;
            v116(v0[270], v0[267]);
            v96 += v40;
            result = v98;
            if (v125 == v97)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_42;
        }

LABEL_39:
        v123 = 0;
      }

      else
      {
        v123 = v0[347];
      }

      v112 = v0[320];
      v102 = v0[298];
      v103 = v0[293];
      v104 = v0[292];
      v107 = v0[289];
      v105 = v0[288];
      v106 = v0[283];
      v110 = v0[282];

      sub_1BE0496D4();
      sub_1BE0493A4();
      (*(v103 + 8))(v102, v104);
      sub_1BE049404();
      v108(v105, v106);
      v108(v107, v106);
      sub_1BDA138A4(v110, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
      sub_1BD0DE53C(v112, &qword_1EBD38DB8);
      goto LABEL_12;
    }
  }

  else
  {
    (*(v0[284] + 8))(v0[291], v0[283]);
    sub_1BD0DE53C(v17, &qword_1EBD38DB8);
  }

  sub_1BE0496D4();
  v123 = v0[347];
LABEL_12:
  v118 = v0[326];
  v44 = v0[324];
  v45 = v0[323];
  v46 = v0[305];
  v47 = v0[304];
  v48 = v0[300];
  v49 = v0[298];
  v50 = v0[293];
  v51 = v0[292];
  (*(v50 + 32))(v48, v0[299], v51);
  sub_1BE0496D4();
  sub_1BD36295C(v47);
  v52 = *(v50 + 8);
  v52(v49, v51);
  v52(v48, v51);
  (*(v44 + 8))(v118, v45);
  sub_1BD0DE53C(v46, &qword_1EBD44F98);
  sub_1BD0DE204(v47, v46, &qword_1EBD44F98);
LABEL_13:
  v53 = v0[277];
  v54 = v0[272];
  v55 = v0[271];
  sub_1BE0497F4();
  v56 = sub_1BE0497D4();
  v57 = *(v54 + 8);
  v0[353] = v57;
  v0[354] = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v119 = v57;
  v57(v53, v55);
  v58 = *(v56 + 16);
  if (!v58)
  {
    v60 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v59 = v0[248];
  v60 = sub_1BD1DA160(v58, 0);
  v61 = sub_1BD5EE328(v127, &v60[(*(v59 + 80) + 32) & ~*(v59 + 80)], v58, v56);
  sub_1BE048C84();
  result = sub_1BD0D45FC();
  if (v61 != v58)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

LABEL_17:
  v126 = v60;
  sub_1BD9FD6E0(&v126);
  if (v123)
  {
  }

  v62 = v0[327];
  v63 = v0[312];
  v64 = v0[191];

  v65 = v126;
  v66 = swift_task_alloc();
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = v64;
  v0[355] = sub_1BDA3DE30(sub_1BDA14260, v66, v65);

  sub_1BE04B6B4();
  v67 = sub_1BE04CFD4();
  v68 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v67, v68, v70, "Calculated Category Breakdowns", "", v69, 2u);
    MEMORY[0x1BFB45F20](v69, -1, -1);
  }

  v71 = v0[341];
  v72 = v0[333];
  v73 = v0[329];
  v74 = v0[276];
  v75 = v0[271];

  v71(v72, v73);
  sub_1BE0497F4();
  v76 = sub_1BE0497C4();
  v119(v74, v75);
  v77 = *(v76 + 16);
  if (v77)
  {
    v78 = v0[255];
    v79 = sub_1BD1DA138(*(v76 + 16), 0);
    v80 = sub_1BD5EE310(v127, &v79[(*(v78 + 80) + 32) & ~*(v78 + 80)], v77, v76);
    sub_1BE048C84();
    sub_1BD0D45FC();
    if (v80 == v77)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v126 = v79;
  sub_1BD9FD5FC(&v126);

  v81 = v126;
  v0[356] = v126;
  v82 = v81[2];
  v83 = MEMORY[0x1E69E7CC0];
  if (v82)
  {
    v84 = v0[262];
    v85 = v0[255];
    v127[0] = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v82, 0);
    v83 = v127[0];
    v86 = *(v85 + 16);
    v85 += 16;
    v87 = v81 + ((*(v85 + 64) + 32) & ~*(v85 + 64));
    v115 = *(v85 + 56);
    v120 = v86;
    v88 = (v85 - 8);
    do
    {
      v89 = v0[260];
      v90 = v0[254];
      v120(v89, v87, v90);
      sub_1BE049764();
      (*v88)(v89, v90);
      v127[0] = v83;
      v92 = *(v83 + 16);
      v91 = *(v83 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1BD531F28(v91 > 1, v92 + 1, 1);
        v83 = v127[0];
      }

      v93 = v0[266];
      v94 = v0[261];
      *(v83 + 16) = v92 + 1;
      (*(v84 + 32))(v83 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v92, v93, v94);
      v87 += v115;
      --v82;
    }

    while (v82);
  }

  v0[357] = v83;
  v95 = swift_task_alloc();
  v0[358] = v95;
  *v95 = v0;
  v95[1] = sub_1BDA055BC;

  return sub_1BD9F550C(v83);
}

uint64_t sub_1BDA055BC(uint64_t a1)
{
  v3 = *v2;
  v3[359] = a1;
  v3[360] = v1;

  if (v1)
  {
    v4 = v3[191];

    v5 = sub_1BDA0855C;
  }

  else
  {
    v4 = v3[191];

    v5 = sub_1BDA05718;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1BDA05718(uint64_t a1, uint64_t a2, uint64_t (*a3)(), void *a4)
{
  v297 = v4;
  v5 = v4[356];
  v256 = *(v5 + 16);
  if (v256)
  {
    v6 = 0;
    v7 = v4[255];
    v252 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v8 = v4[324];
    v249 = (v8 + 32);
    v9 = v4[284];
    v292 = (v9 + 8);
    v251 = (v4[293] + 8);
    v261 = (v7 + 8);
    v248 = (v8 + 8);
    v10 = v4[262];
    v247 = (v10 + 16);
    v218 = (v9 + 16);
    v217 = v4[268];
    v246 = (v10 + 32);
    v253 = v7;
    v220 = (v7 + 32);
    v11 = v4[252];
    v264 = (v10 + 8);
    v245 = (v11 + 32);
    v244 = (v11 + 8);
    v243 = (v11 + 16);
    v255 = MEMORY[0x1E69E7CC0];
    v241 = v4[244];
    v242 = v4[246];
    v239 = v4[241];
    v240 = v4[243];
    v219 = v4[248];
    v238 = v4[240];
    v254 = v4[359];
    while (1)
    {
      if (v6 >= *(v4[356] + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE6DEB0](v5, a2, a3, a4);
      }

      v268 = v4[351];
      v277 = v6;
      v16 = v4[349];
      v17 = v4[348];
      v18 = v4[323];
      v19 = v4[312];
      v20 = v4[310];
      v21 = v4[303];
      v257 = *(v253 + 72);
      v259 = *(v253 + 16);
      v259(v4[259], v252 + v257 * v6, v4[254]);
      sub_1BE049764();
      v16(v21, 1, 1, v17);
      sub_1BD0DE19C(v19, v20, &qword_1EBD5BDB8);
      if (v268(v20, 1, v18) == 1)
      {
        sub_1BD0DE53C(v4[310], &qword_1EBD5BDB8);
        goto LABEL_33;
      }

      (*v249)(v4[325], v4[310], v4[323]);
      sub_1BE049804();
      sub_1BE04AEF4();
      sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
      v22 = sub_1BE052314();
      v23 = v4[318];
      v24 = v4[287];
      v25 = v4[283];
      if (v22)
      {
        v26 = sub_1BE0522F4();
        v27 = *v292;
        (*v292)(v24, v25);
        sub_1BD0DE53C(v23, &qword_1EBD38DB8);
        if (v26)
        {
          v269 = v4[353];
          v250 = v27;
          v28 = v4[319];
          v29 = v4[290];
          v228 = v4[286];
          v30 = v4[281];
          v227 = v4[283];
          v232 = v4[275];
          v235 = v4[271];
          v31 = v4[265];
          v32 = v4[261];
          sub_1BE049744();
          sub_1BE049804();
          (*v247)(v30, v31, v32);
          swift_storeEnumTagMultiPayload();
          sub_1BE04AEF4();
          sub_1BE04ADC4();
          v250(v29, v227);
          sub_1BE049804();
          (*v218)(v228, v28, v227);
          sub_1BD0DE53C(v28, &qword_1EBD38DB8);
          sub_1BE04ADD4();
          sub_1BE0497F4();
          v33 = sub_1BE0496E4();
          v269(v232, v235);
          v295[0] = MEMORY[0x1BFB403C0](0);
          v295[1] = v34;
          v296 = v35;
          v36 = *(v33 + 16);
          if (v36)
          {
            v37 = v33 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
            v38 = *(v217 + 72);
            v286 = *(v217 + 16);
            v39 = v250;
            v270 = v38;
            do
            {
              v47 = v4[290];
              v48 = v4[283];
              v286(v4[269], v37, v4[267]);
              sub_1BE049724();
              v49 = sub_1BE0522F4();
              v39(v47, v48);
              if ((v49 & 1) == 0)
              {
                sub_1BDA13D08(v4[281], v4[280], type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload)
                {
                  if (EnumCaseMultiPayload == 1)
                  {
                    (*v246)(v4[264], v4[280], v4[261]);
                    v51 = sub_1BE0496F4();
                    if (*(v51 + 16) && (v52 = sub_1BD14951C(v4[264]), (v53 & 1) != 0))
                    {
                      v54 = v4[298];
                      v236 = v4[264];
                      v230 = v4[292];
                      v233 = v4[261];
                      v55 = v4[258];
                      v56 = v4[257];
                      v57 = v4[254];
                      v259(v56, *(v51 + 56) + v52 * v257, v57);

                      (*v220)(v55, v56, v57);
                      sub_1BE049744();
                      v58 = sub_1BE0493C4();
                      v60 = v59;
                      v62 = v61;
                      (*v251)(v54, v230);
                      v63 = v60;
                      v39 = v250;
                      MEMORY[0x1BFB40450](v295, v58, v63, v62);
                      (*v261)(v55, v57);
                      (*v264)(v236, v233);
                    }

                    else
                    {
                      v77 = v4[264];
                      v78 = v4[261];

                      (*v264)(v77, v78);
                    }
                  }

                  else
                  {
                    v40 = v4[298];
                    v41 = v4[292];
                    sub_1BE049704();
                    v42 = sub_1BE0493C4();
                    v44 = v43;
                    v46 = v45;
                    (*v251)(v40, v41);
                    MEMORY[0x1BFB40450](v295, v42, v44, v46);
                  }

                  v38 = v270;
                }

                else
                {
                  (*v245)(v4[253], v4[280], v4[251]);
                  v64 = sub_1BE049714();
                  if (*(v64 + 16) && (v65 = sub_1BD148E9C(v4[253]), (v66 & 1) != 0))
                  {
                    v67 = v4[298];
                    v237 = v4[253];
                    v231 = v4[292];
                    v234 = v4[251];
                    v68 = v4[250];
                    v229 = v68;
                    v69 = v4[249];
                    v70 = v4[247];
                    (*(v219 + 16))(v69, *(v64 + 56) + *(v219 + 72) * v65, v70);

                    (*(v219 + 32))(v68, v69, v70);
                    sub_1BE049784();
                    v71 = sub_1BE0493C4();
                    v73 = v72;
                    v75 = v74;
                    (*v251)(v67, v231);
                    v76 = v73;
                    v39 = v250;
                    MEMORY[0x1BFB40450](v295, v71, v76, v75);
                    v38 = v270;
                    (*(v219 + 8))(v229, v70);
                    (*v244)(v237, v234);
                  }

                  else
                  {
                    v79 = v4[253];
                    v80 = v4[251];

                    (*v244)(v79, v80);
                  }
                }
              }

              (*(v217 + 8))(v4[269], v4[267]);
              v37 += v38;
              --v36;
            }

            while (v36);
          }

          v226 = v4[325];
          v272 = v4[323];
          v223 = v4[317];
          v288 = v4[303];
          v99 = v4[298];
          v224 = v4[297];
          v225 = v4[302];
          v100 = v4[296];
          v101 = v4[292];
          v102 = v4[285];
          v103 = v4[283];
          v221 = v4[286];
          v222 = v4[281];
          sub_1BE0496D4();
          sub_1BE0493A4();
          v104 = *v251;
          (*v251)(v99, v101);
          sub_1BE049404();
          v250(v102, v103);
          v250(v221, v103);
          sub_1BDA138A4(v222, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
          sub_1BD0DE53C(v223, &qword_1EBD38DB8);
          sub_1BD36295C(v225);
          v104(v100, v101);
          v104(v224, v101);
          (*v248)(v226, v272);
          sub_1BD0DE53C(v288, &qword_1EBD44F98);
          v95 = v225;
          v96 = v288;
          goto LABEL_32;
        }
      }

      else
      {
        (*v292)(v4[287], v4[283]);
        sub_1BD0DE53C(v23, &qword_1EBD38DB8);
      }

      v81 = v4[353];
      v82 = v4[274];
      v83 = v4[271];
      sub_1BE0497F4();
      v84 = sub_1BE0497C4();
      v81(v82, v83);
      if (!*(v84 + 16) || (v85 = sub_1BD14951C(v4[265]), (v86 & 1) == 0))
      {
        v97 = v4[325];
        v98 = v4[323];

        (*v248)(v97, v98);
        goto LABEL_33;
      }

      v287 = v4[325];
      v271 = v4[323];
      v87 = v4[304];
      v88 = v4[303];
      v89 = v4[298];
      v90 = v4[295];
      v91 = v4[292];
      v92 = v4[256];
      v93 = v4[254];
      v259(v92, *(v84 + 56) + v85 * v257, v93);

      sub_1BE049744();
      sub_1BE049744();
      sub_1BD36295C(v87);
      v94 = *v251;
      (*v251)(v90, v91);
      v94(v89, v91);
      (*v261)(v92, v93);
      (*v248)(v287, v271);
      sub_1BD0DE53C(v88, &qword_1EBD44F98);
      v95 = v87;
      v96 = v88;
LABEL_32:
      sub_1BD0DE204(v95, v96, &qword_1EBD44F98);
LABEL_33:
      if (*(v254 + 16) && (v105 = sub_1BD14951C(v4[265]), (v106 & 1) != 0))
      {
        v289 = v4[303];
        v107 = v4[265];
        v108 = v4[261];
        v273 = v4[251];
        v109 = v4[246];
        v110 = v4[245];
        v111 = v4[242];
        sub_1BDA13D08(*(v254 + 56) + *(v241 + 72) * v105, v110, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        sub_1BDA13904(v110, v109, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        v112 = *v247;
        (*v247)(v111, v107, v108);
        v260 = *v109;
        v113 = *(v242 + 8);
        v112(v111 + v238[6], &v109[v240[5]], v108);
        sub_1BD0DE19C(&v109[v240[6]], v111 + v238[7], &qword_1EBD45CC0);
        (*v243)(v111 + v238[8], &v109[v240[7]], v273);
        sub_1BE048C84();
        v114 = sub_1BE049754();
        sub_1BE049744();
        sub_1BD0DE19C(v289, v111 + v238[11], &qword_1EBD44F98);
        v115 = (v111 + v238[5]);
        *v115 = v260;
        v115[1] = v113;
        *(v111 + v238[9]) = v114;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v255 = sub_1BD1D9DD4(0, v255[2] + 1, 1, v255);
        }

        v117 = v255[2];
        v116 = v255[3];
        if (v117 >= v116 >> 1)
        {
          v255 = sub_1BD1D9DD4(v116 > 1, v117 + 1, 1, v255);
        }

        v118 = v4[303];
        v119 = v4[265];
        v120 = v4[261];
        v121 = v4[259];
        v122 = v4[254];
        v123 = v4[242];
        sub_1BDA138A4(v4[246], type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        sub_1BD0DE53C(v118, &qword_1EBD44F98);
        (*v264)(v119, v120);
        (*v261)(v121, v122);
        v255[2] = v117 + 1;
        v5 = sub_1BDA13904(v123, v255 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v117, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown);
      }

      else
      {
        v12 = v4[265];
        v13 = v4[261];
        v14 = v4[259];
        v15 = v4[254];
        sub_1BD0DE53C(v4[303], &qword_1EBD44F98);
        (*v264)(v12, v13);
        v5 = (*v261)(v14, v15);
      }

      v6 = v277 + 1;
      if (v277 + 1 == v256)
      {

        goto LABEL_42;
      }
    }
  }

  v255 = MEMORY[0x1E69E7CC0];
LABEL_42:
  sub_1BE04B6B4();
  v124 = sub_1BE04CFD4();
  v125 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    v127 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v124, v125, v127, "Calculated Group Breakdowns", "", v126, 2u);
    MEMORY[0x1BFB45F20](v126, -1, -1);
  }

  v274 = v4[353];
  v128 = v4[341];
  v129 = v4[332];
  v130 = v4[329];
  v283 = v4[319];
  v131 = v4[298];
  v132 = v4[293];
  v280 = v4[292];
  v133 = v4[273];
  v134 = v4[239];
  v263 = v4[191];
  v265 = v4[271];
  v293 = v4[185];

  v128(v129, v130);
  v135 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  v136 = sub_1BE04B2F4();
  (*(*(v136 - 8) + 16))(v134, v263 + v135, v136);
  sub_1BE0497F4();
  v137 = sub_1BE0496E4();
  v274(v133, v265);
  sub_1BE0496D4();
  v138 = sub_1BE0493A4();
  v140 = v139;
  (*(v132 + 8))(v131, v280);
  sub_1BE049804();
  v294 = sub_1BD19E4C4(v137, v138, v140, v283, v293);

  sub_1BD0DE53C(v283, &qword_1EBD38DB8);
  sub_1BE04B6B4();
  v141 = sub_1BE04CFD4();
  v142 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v143 = swift_slowAlloc();
    *v143 = 0;
    v144 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v141, v142, v144, "Aggregated Daily Spending", "", v143, 2u);
    MEMORY[0x1BFB45F20](v143, -1, -1);
  }

  v145 = v4[341];
  v146 = v4[331];
  v147 = v4[329];
  v266 = v4[301];
  v275 = v4[305];
  v262 = v4[263];
  v148 = v141;
  v149 = v4[262];
  v258 = v4[261];
  v150 = v4[237];
  v151 = v4[233];
  v278 = v4[231];
  v281 = v4[232];
  v152 = v4[228];
  v284 = v4[230];
  v290 = v4[227];
  v153 = v4[191];

  v145(v146, v147);
  (*(v149 + 16))(v262, v153 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v258);
  sub_1BE0496D4();
  sub_1BD0DE19C(v275, v266, &qword_1EBD44F98);
  sub_1BE0496C4();
  sub_1BE049694();
  v154 = *(v151 + 8);
  v154(v150, v281);
  sub_1BD0DE19C(v278, v284, &qword_1EBD5BDB0);
  v155 = (*(v152 + 48))(v284, 1, v290);
  v156 = v4[238];
  v157 = v4[231];
  if (v155 == 1)
  {
    sub_1BD0DE53C(v4[231], &qword_1EBD5BDB0);
    v158 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    (*(*(v158 - 8) + 56))(v156, 1, 1, v158);
  }

  else
  {
    v159 = v4[229];
    v160 = v4[228];
    v161 = v4[227];
    (*(v160 + 32))(v159, v4[230], v161);
    sub_1BE0495D4();
    v162 = sub_1BE0495E4();
    (*(v160 + 8))(v159, v161);
    sub_1BD0DE53C(v157, &qword_1EBD5BDB0);
    v163 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    *(v156 + *(v163 + 20)) = v162;
    (*(*(v163 - 8) + 56))(v156, 0, 1, v163);
  }

  v164 = v4[236];
  v165 = v4[232];
  v166 = v4[225];
  v167 = v4[224];
  v168 = v4[222];
  v169 = v4[221];
  sub_1BE0496C4();
  sub_1BE0495C4();
  v154(v164, v165);
  sub_1BD0DE19C(v166, v167, &qword_1EBD5BDA8);
  v170 = (*(v168 + 48))(v167, 1, v169);
  v171 = v4[226];
  v172 = v4[225];
  if (v170 == 1)
  {
    sub_1BD0DE53C(v4[225], &qword_1EBD5BDA8);
    v173 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    (*(*(v173 - 8) + 56))(v171, 1, 1, v173);
  }

  else
  {
    v174 = v4[223];
    v175 = v4[222];
    v176 = v4[221];
    (*(v175 + 32))(v174, v4[224], v176);
    sub_1BE0495D4();
    v177 = sub_1BE0495E4();
    (*(v175 + 8))(v174, v176);
    sub_1BD0DE53C(v172, &qword_1EBD5BDA8);
    v178 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    *(v171 + *(v178 + 20)) = v177;
    (*(*(v178 - 8) + 56))(v171, 0, 1, v178);
  }

  v179 = v4[235];
  v180 = v4[232];
  v181 = v4[219];
  v182 = v4[218];
  v183 = v4[216];
  v184 = v4[215];
  sub_1BE0496C4();
  sub_1BE049604();
  v154(v179, v180);
  sub_1BD0DE19C(v181, v182, &qword_1EBD5BDA0);
  v185 = (*(v183 + 48))(v182, 1, v184);
  v186 = v4[220];
  v187 = v4[219];
  if (v185 == 1)
  {
    sub_1BD0DE53C(v4[219], &qword_1EBD5BDA0);
    v188 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    (*(*(v188 - 8) + 56))(v186, 1, 1, v188);
  }

  else
  {
    v189 = v4[217];
    v190 = v4[216];
    v191 = v4[215];
    (*(v190 + 32))(v189, v4[218], v191);
    sub_1BE0495D4();
    v192 = sub_1BE0495E4();
    (*(v190 + 8))(v189, v191);
    sub_1BD0DE53C(v187, &qword_1EBD5BDA0);
    v193 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    *(v186 + *(v193 + 20)) = v192;
    (*(*(v193 - 8) + 56))(v186, 0, 1, v193);
  }

  v194 = v4[234];
  v195 = v4[232];
  v196 = v4[214];
  v197 = v4[213];
  v198 = v4[211];
  v199 = v4[210];
  sub_1BE0496C4();
  sub_1BE0496A4();
  v154(v194, v195);
  sub_1BD0DE19C(v196, v197, &qword_1EBD5BD98);
  v200 = (*(v198 + 48))(v197, 1, v199);
  v201 = v4[305];
  v202 = v4[239];
  v203 = v4[214];
  if (v200 == 1)
  {
    sub_1BD0DE53C(v4[214], &qword_1EBD5BD98);
    sub_1BDA138A4(v202, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v201, &qword_1EBD44F98);
    v291 = 0;
  }

  else
  {
    v204 = v4[212];
    v205 = v4[211];
    v206 = v4[210];
    (*(v205 + 32))(v204, v4[213], v206);
    v291 = sub_1BE049614();
    (*(v205 + 8))(v204, v206);
    sub_1BD0DE53C(v203, &qword_1EBD5BD98);
    sub_1BDA138A4(v202, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v201, &qword_1EBD44F98);
  }

  v207 = v4[355];
  v208 = v4[324];
  v282 = v4[323];
  v285 = v4[327];
  v209 = v4[301];
  v210 = v4[294];
  v211 = v4[293];
  v212 = v4[292];
  v213 = v4[238];
  v267 = v4[226];
  v276 = v4[220];
  v279 = v4[312];
  v214 = v4[167];
  (*(v4[262] + 32))(v214, v4[263], v4[261]);
  v215 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(v211 + 32))(v214 + v215[5], v210, v212);
  sub_1BD0DE204(v209, v214 + v215[6], &qword_1EBD44F98);
  *(v214 + v215[7]) = v294;
  *(v214 + v215[8]) = v207;
  sub_1BD0DE204(v213, v214 + v215[9], &qword_1EBD507F8);
  sub_1BD0DE204(v267, v214 + v215[10], &qword_1EBD507F0);
  sub_1BD0DE204(v276, v214 + v215[11], &qword_1EBD507E8);
  *(v214 + v215[12]) = v291;
  *(v214 + v215[13]) = v255;
  sub_1BD0DE53C(v279, &qword_1EBD5BDB8);
  (*(v208 + 8))(v285, v282);
  a3 = sub_1BDA07274;
  a2 = v4[313];
  v5 = (v4 + 82);
  a4 = v4 + 198;

  return MEMORY[0x1EEE6DEB0](v5, a2, a3, a4);
}

uint64_t sub_1BDA072CC()
{
  v1 = v0[340];
  v2 = v0[338];
  v3 = v0[337];
  sub_1BDA091AC("GenerateSpendingSummary", 23, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BDA078FC()
{
  v1 = v0[340];
  v2 = v0[338];
  v3 = v0[337];
  sub_1BDA091AC("GenerateSpendingSummary", 23, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BDA07EC0()
{
  (*(v0[324] + 8))(v0[327], v0[323]);
  v1 = v0[313];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v1, sub_1BDA07F40, v0 + 186);
}

uint64_t sub_1BDA07F98()
{
  v1 = v0[340];
  v2 = v0[338];
  v3 = v0[337];
  sub_1BDA091AC("GenerateSpendingSummary", 23, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BDA0855C()
{
  v1 = v0[360];
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[360];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to generate group breakdowns with error: %@.", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[203] + 8))(v0[209], v0[197]);
  sub_1BE04B6B4();
  v11 = sub_1BE04CFD4();
  v12 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v11, v12, v14, "Calculated Group Breakdowns", "", v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  v112 = v0[353];
  v15 = v11;
  v16 = v0[341];
  v17 = v0[332];
  v18 = v0[329];
  v120 = v0[319];
  v19 = v0[298];
  v20 = v0[293];
  v117 = v0[292];
  v21 = v0[273];
  v22 = v0[239];
  v108 = v0[191];
  v109 = v0[271];
  v125 = v0[185];

  v16(v17, v18);
  v23 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  v24 = sub_1BE04B2F4();
  (*(*(v24 - 8) + 16))(v22, v108 + v23, v24);
  sub_1BE0497F4();
  v25 = sub_1BE0496E4();
  v112(v21, v109);
  sub_1BE0496D4();
  v26 = sub_1BE0493A4();
  v28 = v27;
  (*(v20 + 8))(v19, v117);
  sub_1BE049804();
  v126 = sub_1BD19E4C4(v25, v26, v28, v120, v125);

  sub_1BD0DE53C(v120, &qword_1EBD38DB8);
  sub_1BE04B6B4();
  v29 = sub_1BE04CFD4();
  v30 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v29, v30, v32, "Aggregated Daily Spending", "", v31, 2u);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  v33 = v0[341];
  v34 = v0[331];
  v35 = v0[329];
  v110 = v0[301];
  v113 = v0[305];
  v107 = v0[263];
  v36 = v29;
  v37 = v0[262];
  v106 = v0[261];
  v38 = v0[237];
  v39 = v0[233];
  v115 = v0[231];
  v118 = v0[232];
  v40 = v0[228];
  v121 = v0[230];
  v123 = v0[227];
  v41 = v0[191];

  v33(v34, v35);
  (*(v37 + 16))(v107, v41 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v106);
  sub_1BE0496D4();
  sub_1BD0DE19C(v113, v110, &qword_1EBD44F98);
  sub_1BE0496C4();
  sub_1BE049694();
  v42 = *(v39 + 8);
  v42(v38, v118);
  sub_1BD0DE19C(v115, v121, &qword_1EBD5BDB0);
  v43 = (*(v40 + 48))(v121, 1, v123);
  v44 = v0[238];
  v45 = v0[231];
  if (v43 == 1)
  {
    sub_1BD0DE53C(v0[231], &qword_1EBD5BDB0);
    v46 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
  }

  else
  {
    v47 = v0[229];
    v48 = v0[228];
    v49 = v0[227];
    (*(v48 + 32))(v47, v0[230], v49);
    sub_1BE0495D4();
    v50 = sub_1BE0495E4();
    (*(v48 + 8))(v47, v49);
    sub_1BD0DE53C(v45, &qword_1EBD5BDB0);
    v51 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    *(v44 + *(v51 + 20)) = v50;
    (*(*(v51 - 8) + 56))(v44, 0, 1, v51);
  }

  v52 = v0[236];
  v53 = v0[232];
  v54 = v0[225];
  v55 = v0[224];
  v56 = v0[222];
  v57 = v0[221];
  sub_1BE0496C4();
  sub_1BE0495C4();
  v42(v52, v53);
  sub_1BD0DE19C(v54, v55, &qword_1EBD5BDA8);
  v58 = (*(v56 + 48))(v55, 1, v57);
  v59 = v0[226];
  v60 = v0[225];
  if (v58 == 1)
  {
    sub_1BD0DE53C(v0[225], &qword_1EBD5BDA8);
    v61 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    (*(*(v61 - 8) + 56))(v59, 1, 1, v61);
  }

  else
  {
    v62 = v0[223];
    v63 = v0[222];
    v64 = v0[221];
    (*(v63 + 32))(v62, v0[224], v64);
    sub_1BE0495D4();
    v65 = sub_1BE0495E4();
    (*(v63 + 8))(v62, v64);
    sub_1BD0DE53C(v60, &qword_1EBD5BDA8);
    v66 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    *(v59 + *(v66 + 20)) = v65;
    (*(*(v66 - 8) + 56))(v59, 0, 1, v66);
  }

  v67 = v0[235];
  v68 = v0[232];
  v69 = v0[219];
  v70 = v0[218];
  v71 = v0[216];
  v72 = v0[215];
  sub_1BE0496C4();
  sub_1BE049604();
  v42(v67, v68);
  sub_1BD0DE19C(v69, v70, &qword_1EBD5BDA0);
  v73 = (*(v71 + 48))(v70, 1, v72);
  v74 = v0[220];
  v75 = v0[219];
  if (v73 == 1)
  {
    sub_1BD0DE53C(v0[219], &qword_1EBD5BDA0);
    v76 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    (*(*(v76 - 8) + 56))(v74, 1, 1, v76);
  }

  else
  {
    v77 = v0[217];
    v78 = v0[216];
    v79 = v0[215];
    (*(v78 + 32))(v77, v0[218], v79);
    sub_1BE0495D4();
    v80 = sub_1BE0495E4();
    (*(v78 + 8))(v77, v79);
    sub_1BD0DE53C(v75, &qword_1EBD5BDA0);
    v81 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    *(v74 + *(v81 + 20)) = v80;
    (*(*(v81 - 8) + 56))(v74, 0, 1, v81);
  }

  v82 = v0[234];
  v83 = v0[232];
  v84 = v0[214];
  v85 = v0[213];
  v86 = v0[211];
  v87 = v0[210];
  sub_1BE0496C4();
  sub_1BE0496A4();
  v42(v82, v83);
  sub_1BD0DE19C(v84, v85, &qword_1EBD5BD98);
  v88 = (*(v86 + 48))(v85, 1, v87);
  v89 = v0[305];
  v90 = v0[239];
  v91 = v0[214];
  if (v88 == 1)
  {
    sub_1BD0DE53C(v0[214], &qword_1EBD5BD98);
    sub_1BDA138A4(v90, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v89, &qword_1EBD44F98);
    v124 = 0;
  }

  else
  {
    v92 = v0[212];
    v93 = v0[211];
    v94 = v0[210];
    (*(v93 + 32))(v92, v0[213], v94);
    v124 = sub_1BE049614();
    (*(v93 + 8))(v92, v94);
    sub_1BD0DE53C(v91, &qword_1EBD5BD98);
    sub_1BDA138A4(v90, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v89, &qword_1EBD44F98);
  }

  v95 = v0[355];
  v96 = v0[324];
  v119 = v0[323];
  v122 = v0[327];
  v97 = v0[301];
  v98 = v0[294];
  v99 = v0[293];
  v100 = v0[292];
  v101 = v0[238];
  v111 = v0[226];
  v114 = v0[220];
  v116 = v0[312];
  v102 = v0[167];
  (*(v0[262] + 32))(v102, v0[263], v0[261]);
  v103 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(v99 + 32))(v102 + v103[5], v98, v100);
  sub_1BD0DE204(v97, v102 + v103[6], &qword_1EBD44F98);
  *(v102 + v103[7]) = v126;
  *(v102 + v103[8]) = v95;
  sub_1BD0DE204(v101, v102 + v103[9], &qword_1EBD507F8);
  sub_1BD0DE204(v111, v102 + v103[10], &qword_1EBD507F0);
  sub_1BD0DE204(v114, v102 + v103[11], &qword_1EBD507E8);
  *(v102 + v103[12]) = v124;
  *(v102 + v103[13]) = MEMORY[0x1E69E7CC0];
  sub_1BD0DE53C(v116, &qword_1EBD5BDB8);
  (*(v96 + 8))(v122, v119);
  v104 = v0[313];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v104, sub_1BDA07274, v0 + 198);
}

uint64_t sub_1BDA091AC(const char *a1, uint64_t a2, int a3)
{
  v29 = a3;
  v30 = a1;
  v3 = sub_1BE04CFF4();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04CFC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04CFE4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B6B4();
  v17 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  result = sub_1BE053494();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  v25 = v12;
  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:
      sub_1BE048964();
      sub_1BE04D034();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v6, v28) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v6, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v17, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
      v12 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BDA094F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BDA09514, 0, 0);
}

uint64_t sub_1BDA09514()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1BD72AC3C;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1BD72A248(v3, v2);
}

uint64_t sub_1BDA095BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA096C4, 0, 0);
}

uint64_t sub_1BDA096C4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1BD0DE19C(v0[3], v3, &qword_1EBD402D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(v0[5], &qword_1EBD402D0);
    v4 = v0[2];
    v5 = sub_1BE049814();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1BD0DE204(v0[5], v0[8], &qword_1EBD38DB8);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_1BDA09880;
    v9 = v0[8];
    v10 = v0[2];

    return sub_1BD72A248(v10, v9);
  }
}

uint64_t sub_1BDA09880()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1BDA09A6C;
  }

  else
  {
    v2 = sub_1BDA09994;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA09994()
{
  sub_1BD0DE53C(v0[8], &qword_1EBD38DB8);
  v1 = v0[2];
  v2 = sub_1BE049814();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BDA09A6C()
{
  sub_1BD0DE53C(*(v0 + 64), &qword_1EBD38DB8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA09AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049B04();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v47 = &v46 - v9;
  v10 = sub_1BE0493F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  v54 = a1;
  sub_1BE049784();
  v19 = sub_1BE0493C4();
  v52 = v20;
  v53 = v19;
  v22 = v21;
  v23 = *(v11 + 8);
  v23(v18, v10);
  v55 = a2;
  sub_1BE049784();
  v24 = sub_1BE0493C4();
  v26 = v25;
  v28 = v27;
  v48 = v10;
  v23(v14, v10);
  if (MEMORY[0x1BFB40440](v53, v52, v22, v24, v26, v28))
  {
    v29 = v47;
    sub_1BE0497A4();
    v30 = sub_1BE049AF4();
    v31 = v51;
    v32 = *(v50 + 8);
    v32(v29, v51);
    v33 = v49;
    sub_1BE0497A4();
    LOWORD(v29) = sub_1BE049AF4();
    v32(v33, v31);
    v34 = v30 < v29;
  }

  else
  {
    sub_1BE049784();
    v35 = sub_1BE0493C4();
    v54 = v36;
    v38 = v37;
    v39 = v48;
    v23(v18, v48);
    sub_1BE049784();
    v40 = sub_1BE0493C4();
    v42 = v41;
    v44 = v43;
    v23(v14, v39);
    v34 = MEMORY[0x1BFB403F0](v40, v42, v44, v35, v54, v38);
  }

  return v34 & 1;
}

uint64_t sub_1BDA09E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v158 = a3;
  v161 = a4;
  v162 = a2;
  v136 = sub_1BE0497B4();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v6);
  v133 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v134 = &v130 - v10;
  v11 = sub_1BE049734();
  v12 = *(v11 - 8);
  v167 = v11;
  v168 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE0497E4();
  v156 = *(v16 - 8);
  v157 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v153 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v130 - v21;
  v141 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter(0);
  MEMORY[0x1EEE9AC00](v141, v22);
  v150 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1BE0493F4();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v24);
  v132 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v144 = &v130 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v138 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v149 = &v130 - v34;
  v159 = sub_1BE04AF64();
  v155 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v35);
  v169 = &v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v148 = &v130 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v140 = &v130 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v154 = &v130 - v45;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v151, v46);
  v139 = &v130 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v147 = &v130 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v130 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDB8);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v58 = &v130 - v57;
  v59 = sub_1BE049814();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v61);
  v63 = &v130 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v143 = &v130 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v137 = &v130 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v130 - v72;
  v74 = sub_1BE049B04();
  v164 = *(v74 - 8);
  v165 = v74;
  MEMORY[0x1EEE9AC00](v74, v75);
  v163 = &v130 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = a1;
  sub_1BE0497A4();
  v77 = type metadata accessor for FinanceKitSpendingTrend();
  v78 = *(*(v77 - 8) + 56);
  v160 = v73;
  v78(v73, 1, 1, v77);
  sub_1BD0DE19C(v162, v58, &qword_1EBD5BDB8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_1BD0DE53C(v58, &qword_1EBD5BDB8);
    v80 = v160;
    v79 = v161;
LABEL_3:
    v81 = v163;
LABEL_17:
    v117 = v164;
    v116 = v165;
    (*(v164 + 16))(v79, v81, v165);
    v118 = sub_1BE049794();
    v119 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
    sub_1BE049784();
    (*(v117 + 8))(v81, v116);
    *(v79 + *(v119 + 20)) = v118;
    return sub_1BD0DE204(v80, v79 + *(v119 + 28), &qword_1EBD44F98);
  }

  v131 = v60;
  v82 = *(v60 + 32);
  v162 = v59;
  v82(v63, v58, v59);
  sub_1BE049804();
  v83 = v154;
  sub_1BE04AEF4();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v84 = v159;
  v85 = sub_1BE052314();
  v152 = v63;
  if ((v85 & 1) == 0)
  {
    (*(v155 + 8))(v83, v84);
    sub_1BD0DE53C(v54, &qword_1EBD38DB8);
    v81 = v163;
    goto LABEL_13;
  }

  v86 = sub_1BE0522F4();
  v87 = v155;
  v89 = v155 + 8;
  v88 = *(v155 + 8);
  v88(v83, v84);
  sub_1BD0DE53C(v54, &qword_1EBD38DB8);
  v81 = v163;
  if ((v86 & 1) == 0)
  {
LABEL_13:
    v103 = v152;
    v102 = v153;
    sub_1BE0497F4();
    v104 = sub_1BE0497D4();
    (*(v156 + 8))(v102, v157);
    if (*(v104 + 16) && (v105 = sub_1BD148E9C(v81), (v106 & 1) != 0))
    {
      v107 = v135;
      v108 = v133;
      v109 = v136;
      (*(v135 + 16))(v133, *(v104 + 56) + *(v135 + 72) * v105, v136);

      v110 = v134;
      (*(v107 + 32))(v134, v108, v109);
      v111 = v144;
      sub_1BE049784();
      v112 = v132;
      sub_1BE049784();
      sub_1BD36295C(v143);
      v113 = *(v145 + 8);
      v114 = v112;
      v115 = v146;
      v113(v114, v146);
      v113(v111, v115);
      (*(v107 + 8))(v110, v109);
      (*(v131 + 8))(v152, v162);
      v80 = v160;
      sub_1BD0DE53C(v160, &qword_1EBD44F98);
      sub_1BD0DE204(v143, v80, &qword_1EBD44F98);
      v79 = v161;
    }

    else
    {

      (*(v131 + 8))(v103, v162);
      v80 = v160;
      v79 = v161;
    }

    goto LABEL_17;
  }

  sub_1BE049784();
  sub_1BE049804();
  v90 = v150;
  (*(v164 + 16))(v150, v81, v165);
  swift_storeEnumTagMultiPayload();
  v91 = v140;
  sub_1BE04AEF4();
  sub_1BE04ADC4();
  v92 = v159;
  v158 = v89;
  v154 = v88;
  v88(v91, v159);
  v93 = v139;
  sub_1BE049804();
  (*(v87 + 16))(v148, v93, v92);
  sub_1BD0DE53C(v93, &qword_1EBD38DB8);
  sub_1BE04ADD4();
  v94 = v142;
  sub_1BE0497F4();
  v95 = sub_1BE0496E4();
  (*(v156 + 8))(v94, v157);
  v96 = MEMORY[0x1BFB403C0](0);
  v170[0] = v96;
  v170[1] = v97;
  v171 = v98;
  v99 = *(v95 + 16);
  if (!v99)
  {
    v167 = HIWORD(v96);
    v168 = HIDWORD(v96);
LABEL_19:

    v121 = v144;
    sub_1BE0496D4();
    sub_1BE0493A4();
    v122 = *(v145 + 8);
    v123 = v121;
    v124 = v146;
    v122(v123, v146);
    v125 = v138;
    sub_1BE049404();
    v126 = v159;
    v127 = v154;
    (v154)(v169, v159);
    v127(v148, v126);
    sub_1BDA138A4(v150, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
    sub_1BD0DE53C(v147, &qword_1EBD38DB8);
    v128 = v137;
    v129 = v149;
    sub_1BD36295C(v137);
    v122(v125, v124);
    v122(v129, v124);
    (*(v131 + 8))(v152, v162);
    v80 = v160;
    sub_1BD0DE53C(v160, &qword_1EBD44F98);
    sub_1BD0DE204(v128, v80, &qword_1EBD44F98);
    v79 = v161;
    goto LABEL_3;
  }

  v100 = 0;
  v101 = (v168 + 8);
  while (v100 < *(v95 + 16))
  {
    v94 = v167;
    (*(v168 + 16))(v15, v95 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v100, v167);
    sub_1BDA0B03C(v170, v15, v169, v90);
    if (v4)
    {
      goto LABEL_21;
    }

    ++v100;
    (*v101)(v15, v94);
    if (v99 == v100)
    {
      v168 = WORD2(v170[0]);
      v167 = HIWORD(v170[0]);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:

  result = (*v101)(v15, v94);
  __break(1u);
  return result;
}

uint64_t sub_1BDA0AD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v47 = &v46 - v9;
  v10 = sub_1BE0493F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  v54 = a1;
  sub_1BE049744();
  v19 = sub_1BE0493C4();
  v52 = v20;
  v53 = v19;
  v22 = v21;
  v23 = *(v11 + 8);
  v23(v18, v10);
  v55 = a2;
  sub_1BE049744();
  v24 = sub_1BE0493C4();
  v26 = v25;
  v28 = v27;
  v48 = v10;
  v23(v14, v10);
  if (MEMORY[0x1BFB40440](v53, v52, v22, v24, v26, v28))
  {
    v29 = v47;
    sub_1BE049764();
    v30 = v49;
    sub_1BE049764();
    v31 = MEMORY[0x1BFB38030](v29, v30);
    v32 = *(v50 + 8);
    v33 = v30;
    v34 = v51;
    v32(v33, v51);
    v32(v29, v34);
  }

  else
  {
    sub_1BE049744();
    v35 = sub_1BE0493C4();
    v54 = v36;
    v38 = v37;
    v39 = v48;
    v23(v18, v48);
    sub_1BE049744();
    v40 = sub_1BE0493C4();
    v42 = v41;
    v44 = v43;
    v23(v14, v39);
    v31 = MEMORY[0x1BFB403F0](v40, v42, v44, v35, v54, v38);
  }

  return v31 & 1;
}

uint64_t sub_1BDA0B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v90 = a3;
  v88 = a1;
  v4 = sub_1BE049774();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v78 = &v73 - v9;
  v10 = sub_1BE04AFE4();
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v85 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0497B4();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v73 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = &v73 - v18;
  v19 = sub_1BE049B04();
  v81 = *(v19 - 8);
  v82 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE0493F4();
  v86 = *(v23 - 8);
  v87 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE04AF64();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049724();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v36 = sub_1BE0522F4();
  result = (*(v32 + 8))(v35, v31);
  if ((v36 & 1) == 0)
  {
    sub_1BDA13D08(v89, v30, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v83;
        v39 = v84;
        v41 = v85;
        (*(v83 + 32))(v85, v30, v84);
        v42 = sub_1BE0496F4();
        if (*(v42 + 16) && (v43 = sub_1BD14951C(v41), (v44 & 1) != 0))
        {
          v46 = v79;
          v45 = v80;
          v47 = v77;
          (*(v79 + 16))(v77, *(v42 + 56) + *(v79 + 72) * v43, v80);

          v48 = v78;
          (*(v46 + 32))(v78, v47, v45);
          sub_1BE049744();
          v49 = sub_1BE0493C4();
          v51 = v50;
          v53 = v52;
          (*(v86 + 8))(v26, v87);
          MEMORY[0x1BFB40450](v88, v49, v51, v53);
          (*(v46 + 8))(v48, v45);
          return (*(v40 + 8))(v85, v39);
        }

        else
        {

          return (*(v40 + 8))(v41, v39);
        }
      }

      else
      {
        sub_1BE049704();
        v68 = sub_1BE0493C4();
        v70 = v69;
        v72 = v71;
        (*(v86 + 8))(v26, v87);
        return MEMORY[0x1BFB40450](v88, v68, v70, v72);
      }
    }

    else
    {
      v54 = v81;
      v55 = v82;
      (*(v81 + 32))(v22, v30, v82);
      v56 = sub_1BE049714();
      if (*(v56 + 16) && (v57 = sub_1BD148E9C(v22), (v58 & 1) != 0))
      {
        v60 = v75;
        v59 = v76;
        v61 = v73;
        (*(v75 + 16))(v73, *(v56 + 56) + *(v75 + 72) * v57, v76);

        v62 = v74;
        (*(v60 + 32))(v74, v61, v59);
        sub_1BE049784();
        v63 = v54;
        v64 = sub_1BE0493C4();
        v66 = v65;
        LODWORD(v90) = v67;
        (*(v86 + 8))(v26, v87);
        MEMORY[0x1BFB40450](v88, v64, v66, v90);
        (*(v60 + 8))(v62, v59);
        return (*(v63 + 8))(v22, v55);
      }

      else
      {

        return (*(v54 + 8))(v22, v55);
      }
    }
  }

  return result;
}

uint64_t sub_1BDA0B76C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v40 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  v23 = *(v22 - 8);
  v44 = v22;
  v45 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v37 = &v36 - v25;
  v39 = *a1;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v26 = v14 + 8;
  v27 = *(v14 + 8);
  v38 = v26;
  v27(v17, v13);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  v41 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BDA1396C(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v28 = v42;
  sub_1BE04A714();
  (*(v43 + 8))(v12, v28);
  (*(v40 + 8))(v21, v18);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v29 = v46;
  sub_1BE04A724();

  v27(v17, v13);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BE18);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_1BDA1471C();
  __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v32 = v37;
  v33 = v44;
  v34 = v48;
  sub_1BE04A784();
  (*(v49 + 8))(v29, v34);
  return (*(v45 + 8))(v32, v33);
}

uint64_t sub_1BDA0BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA0BDD8, 0, 0);
}

uint64_t sub_1BDA0BDD8()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A4F4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_1BE049CE4();
  v6 = MEMORY[0x1E6967BC8];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1BDA0C044;
  v8 = v0[7];

  return MEMORY[0x1EEDC14D8](v8, v0 + 2);
}

uint64_t sub_1BDA0C044()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BDA14D44, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BDA0C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA0C230, 0, 0);
}

uint64_t sub_1BDA0C230()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A4F4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_1BE049CE4();
  v6 = MEMORY[0x1E6967BC8];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1BDA0C49C;
  v8 = v0[7];

  return MEMORY[0x1EEDC14D8](v8, v0 + 2);
}

uint64_t sub_1BDA0C49C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BDA0C5E8, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BDA0C5E8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA0C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a1;
  v112 = a3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v97, v4);
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v99 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v84 - v11;
  v113 = sub_1BE04A2B4();
  v102 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v13);
  v94 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v89 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v15);
  v96 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v95 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v101 = &v84 - v22;
  v23 = sub_1BE04AF64();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v93 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v92 = &v84 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v84 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v84 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v104 = &v84 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v84 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v91 = &v84 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v84 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v84 - v54;
  sub_1BE04AEF4();
  v103 = sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE0522F4())
  {
    (*(v24 + 32))(v55, v44, v23);
  }

  else
  {
    (*(v24 + 8))(v44, v23);
    (*(v24 + 16))(v55, a2, v23);
  }

  v56 = *(v24 + 56);
  v100 = v24 + 56;
  v108 = v56;
  v56(v55, 0, 1, v23);
  sub_1BE04AEF4();
  v57 = v112;
  if (sub_1BE052304())
  {
    (*(v24 + 32))(v104, v37, v23);
  }

  else
  {
    (*(v24 + 8))(v37, v23);
    (*(v24 + 16))(v104, v57, v23);
  }

  v109 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  sub_1BD0DE19C(v55, v51, &unk_1EBD39970);
  v106 = *(v24 + 48);
  v107 = v24 + 48;
  if (v106(v51, 1, v23) != 1)
  {
    v111 = *(v24 + 32);
    v112 = v24 + 32;
    v105 = (v102 + 6);
    v59 = (v24 + 8);
    v87 = (v102 + 4);
    v86 = (v102 + 1);
    v84 = (v24 + 16);
    v102 = MEMORY[0x1E69E7CC0];
    v88 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      while (1)
      {
        v111(v33, v51, v23);
        sub_1BE04B124();
        if ((*v105)(v12, 1, v113) != 1)
        {
          break;
        }

        sub_1BD0DE53C(v12, &qword_1EBD402D8);
        v60 = *v59;
        (*v59)(v33, v23);
        sub_1BD0DE53C(v55, &unk_1EBD39970);
        v108(v55, 1, 1, v23);
        sub_1BD0DE19C(v55, v51, &unk_1EBD39970);
        if (v106(v51, 1, v23) == 1)
        {
          goto LABEL_24;
        }
      }

      v61 = v94;
      (*v87)(v94, v12, v113);
      v62 = v92;
      sub_1BE04A294();
      v63 = v93;
      sub_1BE04A284();
      v64 = sub_1BE052314();
      result = (*v86)(v61, v113);
      if ((v64 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v66 = v111;
      v111(v99, v62, v23);
      v67 = v99;
      v66(&v99[*(v97 + 48)], v63, v23);
      v68 = v90;
      sub_1BD0DE19C(v67, v90, &unk_1EBD38810);
      v69 = v97;
      v85 = *(v97 + 48);
      v70 = v111;
      v111(v95, v68, v23);
      v60 = *v59;
      (*v59)((v68 + v85), v23);
      sub_1BD0DE204(v99, v68, &unk_1EBD38810);
      v71 = *(v69 + 48);
      v72 = v95;
      v70(&v95[*(v98 + 36)], v68 + v71, v23);
      v60(v68, v23);
      v73 = v101;
      sub_1BD0DE204(v72, v101, &qword_1EBD38DB8);
      sub_1BD0DE19C(v73, v96, &qword_1EBD38DB8);
      v74 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1BD1D9BE4(0, v74[2] + 1, 1, v74);
      }

      v76 = v74[2];
      v75 = v74[3];
      v77 = (v76 + 1);
      if (v76 >= v75 >> 1)
      {
        v102 = (v76 + 1);
        v83 = sub_1BD1D9BE4(v75 > 1, v76 + 1, 1, v74);
        v77 = v102;
        v74 = v83;
      }

      v74[2] = v77;
      v78 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v102 = v74;
      sub_1BD0DE204(v96, v74 + v78 + *(v89 + 72) * v76, &qword_1EBD38DB8);
      if ((sub_1BE052314() & 1) == 0)
      {
        break;
      }

      v79 = sub_1BE0522F4();
      v60(v33, v23);
      sub_1BD0DE53C(v55, &unk_1EBD39970);
      if ((v79 & 1) == 0)
      {
        goto LABEL_22;
      }

      v80 = 1;
      v81 = v101;
      v82 = v91;
LABEL_23:
      sub_1BD0DE53C(v81, &qword_1EBD38DB8);
      v108(v82, v80, 1, v23);
      sub_1BD0DE204(v82, v55, &unk_1EBD39970);
      sub_1BD0DE19C(v55, v51, &unk_1EBD39970);
      if (v106(v51, 1, v23) == 1)
      {
LABEL_24:
        v60(v104, v23);
        goto LABEL_25;
      }
    }

    v60(v33, v23);
    sub_1BD0DE53C(v55, &unk_1EBD39970);
LABEL_22:
    v81 = v101;
    v82 = v91;
    (*v84)(v91, v101 + *(v98 + 36), v23);
    v80 = 0;
    goto LABEL_23;
  }

  v58 = *(v24 + 8);
  v102 = MEMORY[0x1E69E7CC0];
  v58(v104, v23);
LABEL_25:
  sub_1BD0DE53C(v55, &unk_1EBD39970);
  sub_1BD0DE53C(v51, &unk_1EBD39970);
  return v102;
}

uint64_t sub_1BDA0D238()
{
  sub_1BD0D4534(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1BDA0D2EC()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v1 <= 0x3F)
    {
      sub_1BDA0D580(319, &qword_1EBD44FB0, type metadata accessor for FinanceKitSpendingTrend, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BDA0D580(319, &qword_1EBD4B270, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BDA0D580(319, &qword_1EBD5BC70, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1BDA0D580(319, &qword_1EBD5BC78, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BDA0D580(319, &qword_1EBD5BC80, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1BDA0D580(319, &qword_1EBD5BC88, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1BDA0D664();
                  if (v8 <= 0x3F)
                  {
                    sub_1BDA0D580(319, &qword_1EBD5BC98, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown, MEMORY[0x1E69E62F8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1BDA0D580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BDA0D664()
{
  if (!qword_1EBD5BC90)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5BC90);
    }
  }
}

void sub_1BDA0D6FC()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BDA0D580(319, &qword_1EBD45CD8, MEMORY[0x1E69676E0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BE049B04();
      if (v2 <= 0x3F)
      {
        sub_1BDA0D850();
        if (v3 <= 0x3F)
        {
          sub_1BE0493F4();
          if (v4 <= 0x3F)
          {
            sub_1BDA0D580(319, &qword_1EBD44FB0, type metadata accessor for FinanceKitSpendingTrend, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BDA0D850()
{
  if (!qword_1EBD5BCB0)
  {
    sub_1BE04AFE4();
    sub_1BDA1396C(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
    v0 = sub_1BE052A84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5BCB0);
    }
  }
}

void sub_1BDA0D91C()
{
  sub_1BE049B04();
  if (v0 <= 0x3F)
  {
    sub_1BDA0D850();
    if (v1 <= 0x3F)
    {
      sub_1BE0493F4();
      if (v2 <= 0x3F)
      {
        sub_1BDA0D580(319, &qword_1EBD44FB0, type metadata accessor for FinanceKitSpendingTrend, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE0493F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE0493F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1BDA0DBEC()
{
  sub_1BE0493F4();
  if (v0 <= 0x3F)
  {
    sub_1BDA0D850();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BDA0DC70(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1BE053B14();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1BDA0DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v107 = a1;
  v87 = sub_1BE04AFE4();
  v7 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v8);
  v86 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v85 = &v77[-v12];
  v98 = sub_1BE0493F4();
  v13 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v14);
  v100 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v77[-v18];
  v20 = sub_1BE049774();
  MEMORY[0x1EEE9AC00](v20, v21);
  v91 = &v77[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v24);
  v105 = &v77[-v25];
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](v26, v27);
  v79 = a2;
  if (a3 != a2)
  {
    v31 = &v77[-v28];
    v32 = *a4;
    v34 = *(v29 + 16);
    v33 = v29 + 16;
    v35 = *(v33 + 56);
    v93 = (v13 + 8);
    v94 = v34;
    v84 = (v7 + 8);
    v92 = (v33 - 8);
    v95 = v33;
    v36 = v32 + v35 * (a3 - 1);
    v88 = -v35;
    v89 = (v33 + 16);
    v37 = v107 - a3;
    v90 = v32;
    v78 = v35;
    v38 = v32 + v35 * a3;
    v96 = v20;
    v97 = v19;
    v106 = &v77[-v28];
LABEL_5:
    v83 = a3;
    v80 = v38;
    v107 = v38;
    v81 = v37;
    v82 = v36;
    while (1)
    {
      v101 = v37;
      v39 = v94;
      (v94)(v31, v107, v20, v30);
      v39(v105, v36, v20);
      sub_1BE049744();
      v40 = sub_1BE0493C4();
      v103 = v41;
      v104 = v40;
      v102 = v42;
      v43 = *v93;
      v44 = v98;
      (*v93)(v19, v98);
      v45 = v100;
      sub_1BE049744();
      v46 = sub_1BE0493C4();
      v48 = v47;
      v49 = v44;
      v51 = v50;
      v99 = v43;
      v43(v45, v44);
      if (MEMORY[0x1BFB40440](v104, v103, v102, v46, v48, v51))
      {
        v52 = v85;
        sub_1BE049764();
        v53 = v86;
        v54 = v105;
        sub_1BE049764();
        v55 = MEMORY[0x1BFB38030](v52, v53);
        v56 = *v84;
        v57 = v53;
        v58 = v87;
        (*v84)(v57, v87);
        v56(v52, v58);
        v59 = v54;
      }

      else
      {
        sub_1BE049744();
        v60 = sub_1BE0493C4();
        v103 = v61;
        v104 = v60;
        v102 = v62;
        v63 = v44;
        v64 = v99;
        v99(v19, v63);
        v65 = v100;
        v66 = v105;
        sub_1BE049744();
        v67 = sub_1BE0493C4();
        v69 = v68;
        v71 = v70;
        v64(v65, v49);
        v55 = MEMORY[0x1BFB403F0](v67, v69, v71, v104, v103, v102);
        v59 = v66;
      }

      v72 = *v92;
      v20 = v96;
      (*v92)(v59, v96);
      v73 = v106;
      v72(v106, v20);
      v19 = v97;
      v31 = v73;
      if ((v55 & 1) == 0)
      {
LABEL_4:
        a3 = v83 + 1;
        v36 = v82 + v78;
        v37 = v81 - 1;
        v38 = v80 + v78;
        if (v83 + 1 == v79)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v90)
      {
        break;
      }

      v74 = v107;
      v75 = *v89;
      v76 = v91;
      (*v89)(v91, v107, v20);
      swift_arrayInitWithTakeFrontToBack();
      v75(v36, v76, v20);
      v31 = v106;
      v36 += v88;
      v107 = v74 + v88;
      v37 = v101 + 1;
      if (v101 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BDA0E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v107 = a1;
  v87 = sub_1BE049B04();
  v7 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v8);
  v86 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v85 = &v77[-v12];
  v13 = sub_1BE0493F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v77[-v20];
  v22 = sub_1BE0497B4();
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = &v77[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v104 = &v77[-v27];
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v28, v29);
  v79 = a2;
  if (a3 != a2)
  {
    v33 = &v77[-v30];
    v34 = *a4;
    v36 = *(v31 + 16);
    v35 = v31 + 16;
    v37 = *(v35 + 56);
    v93 = (v14 + 8);
    v94 = v36;
    v84 = (v7 + 8);
    v92 = (v35 - 8);
    v95 = v35;
    v38 = v34 + v37 * (a3 - 1);
    v88 = -v37;
    v89 = (v35 + 16);
    v39 = v107 - a3;
    v90 = v34;
    v78 = v37;
    v40 = v34 + v37 * a3;
    v98 = v17;
    v99 = v13;
    v96 = v22;
    v97 = v21;
    v105 = &v77[-v30];
LABEL_5:
    v83 = a3;
    v80 = v40;
    v107 = v40;
    v81 = v39;
    v82 = v38;
    v106 = v38;
    while (1)
    {
      v100 = v39;
      v41 = v94;
      (v94)(v33, v107, v22, v32);
      v41(v104, v106, v22);
      sub_1BE049784();
      v42 = sub_1BE0493C4();
      v102 = v43;
      v103 = v42;
      v101 = v44;
      v45 = *v93;
      (*v93)(v21, v13);
      sub_1BE049784();
      v46 = sub_1BE0493C4();
      v47 = v13;
      v49 = v48;
      v51 = v50;
      v45(v17, v47);
      if (MEMORY[0x1BFB40440](v103, v102, v101, v46, v49, v51))
      {
        v52 = v85;
        sub_1BE0497A4();
        v53 = sub_1BE049AF4();
        v54 = *v84;
        v55 = v87;
        (*v84)(v52, v87);
        v56 = v86;
        v57 = v104;
        sub_1BE0497A4();
        LOWORD(v52) = sub_1BE049AF4();
        v54(v56, v55);
        v58 = v53 < v52;
      }

      else
      {
        sub_1BE049784();
        v59 = sub_1BE0493C4();
        v102 = v60;
        v103 = v59;
        v62 = v61;
        v45(v21, v47);
        v57 = v104;
        sub_1BE049784();
        v63 = sub_1BE0493C4();
        v65 = v64;
        v67 = v66;
        v45(v17, v47);
        v58 = MEMORY[0x1BFB403F0](v63, v65, v67, v103, v102, v62);
      }

      v68 = *v92;
      v22 = v96;
      (*v92)(v57, v96);
      v69 = v105;
      v68(v105, v22);
      v17 = v98;
      v13 = v99;
      v21 = v97;
      v33 = v69;
      if ((v58 & 1) == 0)
      {
LABEL_4:
        a3 = v83 + 1;
        v38 = v82 + v78;
        v39 = v81 - 1;
        v40 = v80 + v78;
        if (v83 + 1 == v79)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v90)
      {
        break;
      }

      v70 = *v89;
      v71 = v91;
      v72 = v97;
      v73 = v98;
      v74 = v99;
      v75 = v107;
      (*v89)(v91, v107, v22);
      v76 = v106;
      swift_arrayInitWithTakeFrontToBack();
      v70(v76, v71, v22);
      v106 = v76 + v88;
      v107 = v75 + v88;
      v13 = v74;
      v17 = v73;
      v21 = v72;
      v33 = v105;
      v39 = v100 + 1;
      if (v100 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BDA0E9B0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v196 = a1;
  v211 = sub_1BE04AFE4();
  v8 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v9);
  v210 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v209 = &v189 - v13;
  v218 = sub_1BE0493F4();
  v14 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218, v15);
  v221 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v224 = &v189 - v19;
  v222 = sub_1BE049774();
  v20 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222, v21);
  v200 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v214 = &v189 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v229 = &v189 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v223 = &v189 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v202 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v190 = &v189 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v195 = &v189 - v40;
  v43.n128_f64[0] = MEMORY[0x1EEE9AC00](v41, v42);
  v194 = &v189 - v44;
  v45 = a3[1];
  if (v45 < 1)
  {
    v48 = a3;
    v47 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a4 = *v196;
    if (!*v196)
    {
      goto LABEL_148;
    }

    v8 = v47;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v183 = v8;
      goto LABEL_109;
    }

LABEL_142:
    v183 = sub_1BD5ED6C8(v8);
LABEL_109:
    v230 = v183;
    v8 = *(v183 + 2);
    if (v8 >= 2)
    {
      while (*v48)
      {
        v184 = *&v183[16 * v8];
        v185 = v183;
        v186 = *&v183[16 * v8 + 24];
        sub_1BDA10AB8(*v48 + *(v20 + 72) * v184, *v48 + *(v20 + 72) * *&v183[16 * v8 + 16], (*v48 + *(v20 + 72) * v186), a4);
        if (v5)
        {
          goto LABEL_120;
        }

        if (v186 < v184)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v185 = sub_1BD5ED6C8(v185);
        }

        if (v8 - 2 >= *(v185 + 2))
        {
          goto LABEL_136;
        }

        v187 = &v185[16 * v8];
        *v187 = v184;
        *(v187 + 1) = v186;
        v230 = v185;
        sub_1BD5ED63C(v8 - 1);
        v183 = v230;
        v8 = *(v230 + 2);
        if (v8 <= 1)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_146;
    }

    goto LABEL_120;
  }

  v191 = a4;
  v46 = 0;
  v219 = v20 + 16;
  v220 = (v20 + 8);
  v216 = (v14 + 8);
  v208 = (v8 + 8);
  v217 = (v20 + 32);
  v47 = MEMORY[0x1E69E7CC0];
  v48 = a3;
  v197 = a3;
  v206 = v20;
  while (1)
  {
    v49 = v46++;
    v201 = v47;
    if (v46 < v45)
    {
      v205 = v45;
      v8 = *v48;
      v50 = *(v20 + 72);
      v51 = *v48 + v50 * v46;
      v52 = *(v20 + 16);
      v53 = v194;
      v227 = v51;
      v54 = v222;
      v52(v194, v43);
      v228 = v50;
      v55 = v8 + v50 * v49;
      v56 = v49;
      v57 = v195;
      v204 = v52;
      (v52)(v195, v55, v54);
      LODWORD(v212) = sub_1BDA0AD30(v53, v57);
      v58 = v221;
      if (v5)
      {
        v188 = *v220;
        (*v220)(v57, v54);
        v188(v53, v54);
LABEL_120:

        return;
      }

      a4 = v220;
      v59 = *v220;
      (*v220)(v57, v54);
      v203 = v59;
      (v59)(v53, v54);
      v46 = v56 + 2;
      v49 = v56;
      if (v56 + 2 >= v205)
      {
        v48 = v197;
      }

      else
      {
        v192 = v56;
        v193 = 0;
        v207 = v56 + 2;
        v60 = v8 + v228 * v46;
        v61 = v218;
        v62 = v222;
        v63 = v202;
        v64 = v190;
        v65 = v216;
        v8 = v227;
        while (1)
        {
          v213 = v60;
          v66 = v204;
          (v204)(v64);
          v227 = v8;
          v66(v63, v8, v62);
          v67 = v224;
          sub_1BE049744();
          v68 = sub_1BE0493C4();
          v225 = v69;
          v226 = v68;
          LODWORD(v215) = v70;
          v71 = *v65;
          (*v65)(v67, v61);
          sub_1BE049744();
          v72 = sub_1BE0493C4();
          v73 = v58;
          v75 = v74;
          v76 = v61;
          v78 = v77;
          v71(v73, v76);
          if (MEMORY[0x1BFB40440](v226, v225, v215, v72, v75, v78))
          {
            v79 = v209;
            sub_1BE049764();
            v80 = v210;
            v63 = v202;
            sub_1BE049764();
            v8 = MEMORY[0x1BFB38030](v79, v80);
            v81 = *v208;
            v82 = v80;
            v83 = v211;
            (*v208)(v82, v211);
            v81(v79, v83);
          }

          else
          {
            sub_1BE049744();
            v84 = sub_1BE0493C4();
            v225 = v85;
            v226 = v84;
            LODWORD(v215) = v86;
            v71(v67, v76);
            v87 = v202;
            sub_1BE049744();
            v88 = sub_1BE0493C4();
            v90 = v89;
            v92 = v91;
            v71(v73, v76);
            v8 = MEMORY[0x1BFB403F0](v88, v90, v92, v226, v225, v215);
            v63 = v87;
          }

          v62 = v222;
          a4 = v220;
          v93 = v203;
          (v203)(v63, v222);
          v93(v64, v62);
          v61 = v218;
          v58 = v221;
          if ((v212 & 1) != (v8 & 1))
          {
            break;
          }

          v8 = v227 + v228;
          v60 = v213 + v228;
          if (v205 == ++v207)
          {
            v46 = v205;
            v5 = v193;
            v48 = v197;
            goto LABEL_16;
          }
        }

        v5 = v193;
        v48 = v197;
        v46 = v207;
LABEL_16:
        v49 = v192;
      }

      v20 = v206;
      v47 = v201;
      if (v212)
      {
        if (v46 < v49)
        {
          goto LABEL_141;
        }

        if (v49 < v46)
        {
          v193 = v5;
          v94 = v49;
          v95 = v228 * (v46 - 1);
          v96 = v46 * v228;
          v207 = v46;
          v97 = v46;
          v98 = v94;
          v192 = v94;
          v99 = v94 * v228;
          do
          {
            if (v98 != --v97)
            {
              v100 = *v48;
              if (!v100)
              {
                goto LABEL_145;
              }

              v8 = v100 + v99;
              v101 = *v217;
              (*v217)(v200, v100 + v99, v222, v47);
              if (v99 < v95 || v8 >= v100 + v96)
              {
                a4 = v222;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                a4 = v222;
                if (v99 != v95)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v101(v100 + v95, v200, a4);
              v48 = v197;
              v47 = v201;
            }

            ++v98;
            v95 -= v228;
            v96 -= v228;
            v99 += v228;
          }

          while (v98 < v97);
          v5 = v193;
          v20 = v206;
          v46 = v207;
          v49 = v192;
        }
      }
    }

    v102 = v48[1];
    if (v46 < v102)
    {
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_138;
      }

      if (v46 - v49 < v191)
      {
        break;
      }
    }

LABEL_52:
    if (v46 < v49)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v47 = v201;
    }

    else
    {
      v47 = sub_1BD1D7844(0, *(v201 + 2) + 1, 1, v201);
    }

    a4 = *(v47 + 2);
    v140 = *(v47 + 3);
    v8 = a4 + 1;
    if (a4 >= v140 >> 1)
    {
      v47 = sub_1BD1D7844((v140 > 1), a4 + 1, 1, v47);
    }

    *(v47 + 2) = v8;
    v141 = &v47[16 * a4];
    *(v141 + 4) = v49;
    *(v141 + 5) = v46;
    if (!*v196)
    {
      goto LABEL_147;
    }

    if (a4)
    {
      v20 = *v196;
      while (1)
      {
        v142 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v143 = *(v47 + 4);
          v144 = *(v47 + 5);
          v153 = __OFSUB__(v144, v143);
          v145 = v144 - v143;
          v146 = v153;
LABEL_73:
          if (v146)
          {
            goto LABEL_126;
          }

          v159 = &v47[16 * v8];
          v161 = *v159;
          v160 = *(v159 + 1);
          v162 = __OFSUB__(v160, v161);
          v163 = v160 - v161;
          v164 = v162;
          if (v162)
          {
            goto LABEL_129;
          }

          v165 = &v47[16 * v142 + 32];
          v167 = *v165;
          v166 = *(v165 + 1);
          v153 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v153)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v163, v168))
          {
            goto LABEL_133;
          }

          if (v163 + v168 >= v145)
          {
            if (v145 < v168)
            {
              v142 = v8 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v169 = &v47[16 * v8];
        v171 = *v169;
        v170 = *(v169 + 1);
        v153 = __OFSUB__(v170, v171);
        v163 = v170 - v171;
        v164 = v153;
LABEL_87:
        if (v164)
        {
          goto LABEL_128;
        }

        v172 = &v47[16 * v142];
        v174 = *(v172 + 4);
        v173 = *(v172 + 5);
        v153 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v153)
        {
          goto LABEL_131;
        }

        if (v175 < v163)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v142 - 1;
        if (v142 - 1 >= v8)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v48)
        {
          goto LABEL_144;
        }

        v180 = v47;
        v8 = *&v47[16 * a4 + 32];
        v181 = *&v47[16 * v142 + 40];
        sub_1BDA10AB8(*v48 + *(v206 + 72) * v8, *v48 + *(v206 + 72) * *&v47[16 * v142 + 32], (*v48 + *(v206 + 72) * v181), v20);
        if (v5)
        {
          goto LABEL_120;
        }

        if (v181 < v8)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_1BD5ED6C8(v180);
        }

        if (a4 >= *(v180 + 2))
        {
          goto LABEL_123;
        }

        v182 = &v180[16 * a4];
        *(v182 + 4) = v8;
        *(v182 + 5) = v181;
        v230 = v180;
        sub_1BD5ED63C(v142);
        v47 = v230;
        v8 = *(v230 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v147 = &v47[16 * v8 + 32];
      v148 = *(v147 - 64);
      v149 = *(v147 - 56);
      v153 = __OFSUB__(v149, v148);
      v150 = v149 - v148;
      if (v153)
      {
        goto LABEL_124;
      }

      v152 = *(v147 - 48);
      v151 = *(v147 - 40);
      v153 = __OFSUB__(v151, v152);
      v145 = v151 - v152;
      v146 = v153;
      if (v153)
      {
        goto LABEL_125;
      }

      v154 = &v47[16 * v8];
      v156 = *v154;
      v155 = *(v154 + 1);
      v153 = __OFSUB__(v155, v156);
      v157 = v155 - v156;
      if (v153)
      {
        goto LABEL_127;
      }

      v153 = __OFADD__(v145, v157);
      v158 = v145 + v157;
      if (v153)
      {
        goto LABEL_130;
      }

      if (v158 >= v150)
      {
        v176 = &v47[16 * v142 + 32];
        v178 = *v176;
        v177 = *(v176 + 1);
        v153 = __OFSUB__(v177, v178);
        v179 = v177 - v178;
        if (v153)
        {
          goto LABEL_134;
        }

        if (v145 < v179)
        {
          v142 = v8 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v45 = v48[1];
    v20 = v206;
    if (v46 >= v45)
    {
      goto LABEL_106;
    }
  }

  v103 = v49 + v191;
  if (__OFADD__(v49, v191))
  {
    goto LABEL_139;
  }

  if (v103 >= v102)
  {
    v103 = v48[1];
  }

  if (v103 < v49)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v46 == v103)
  {
    goto LABEL_52;
  }

  v193 = v5;
  v104 = *v48;
  v105 = *(v20 + 72);
  v215 = *(v20 + 16);
  v106 = v104 + v105 * (v46 - 1);
  v212 = -v105;
  v192 = v49;
  v20 = v49 - v46;
  v213 = v104;
  v198 = v105;
  v107 = (v104 + v46 * v105);
  v108 = v222;
  v109 = v223;
  v110 = v224;
  v199 = v103;
LABEL_42:
  v207 = v46;
  v203 = v107;
  v204 = v20;
  v205 = v106;
  while (1)
  {
    v225 = v20;
    v111 = v215;
    (v215)(v109, v107, v108, v47);
    v111(v229, v106, v108);
    sub_1BE049744();
    v112 = sub_1BE0493C4();
    v227 = v113;
    v228 = v112;
    LODWORD(v226) = v114;
    v115 = *v216;
    v116 = v218;
    (*v216)(v110, v218);
    v117 = v221;
    sub_1BE049744();
    v118 = sub_1BE0493C4();
    v120 = v119;
    v122 = v121;
    v115(v117, v116);
    if (MEMORY[0x1BFB40440](v228, v227, v226, v118, v120, v122))
    {
      v123 = v209;
      v109 = v223;
      sub_1BE049764();
      v124 = v210;
      v8 = v229;
      sub_1BE049764();
      v125 = MEMORY[0x1BFB38030](v123, v124);
      v126 = *v208;
      v127 = v124;
      v128 = v211;
      (*v208)(v127, v211);
      v126(v123, v128);
      v129 = v8;
    }

    else
    {
      v130 = v224;
      sub_1BE049744();
      v131 = sub_1BE0493C4();
      v227 = v132;
      v228 = v131;
      LODWORD(v226) = v133;
      v115(v130, v116);
      sub_1BE049744();
      v8 = sub_1BE0493C4();
      v135 = v134;
      v137 = v136;
      v115(v117, v116);
      v125 = MEMORY[0x1BFB403F0](v8, v135, v137, v228, v227, v226);
      v129 = v229;
      v109 = v223;
    }

    a4 = *v220;
    v108 = v222;
    (*v220)(v129, v222);
    (a4)(v109, v108);
    if ((v125 & 1) == 0)
    {
      v110 = v224;
LABEL_41:
      v46 = v207 + 1;
      v106 = v205 + v198;
      v20 = v204 - 1;
      v107 = &v203[v198];
      if (v207 + 1 == v199)
      {
        v46 = v199;
        v5 = v193;
        v48 = v197;
        v49 = v192;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v110 = v224;
    v138 = v225;
    if (!v213)
    {
      break;
    }

    a4 = *v217;
    v8 = v214;
    (*v217)(v214, v107, v108);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v106, v8, v108);
    v106 += v212;
    v107 += v212;
    v139 = __CFADD__(v138, 1);
    v20 = v138 + 1;
    if (v139)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_1BDA0FA04(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v202 = a1;
  v217 = sub_1BE049B04();
  v8 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217, v9);
  v216 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v215 = &v195 - v13;
  v227 = sub_1BE0493F4();
  v14 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227, v15);
  v230 = &v195 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v232 = &v195 - v19;
  v231 = sub_1BE0497B4();
  v20 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v21);
  v206 = &v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v220 = &v195 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v237 = &v195 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v224 = &v195 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v196 = &v195 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v208 = &v195 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v201 = &v195 - v40;
  v43.n128_f64[0] = MEMORY[0x1EEE9AC00](v41, v42);
  v200 = &v195 - v44;
  v45 = a3[1];
  if (v45 < 1)
  {
    v48 = a3;
    v47 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a4 = *v202;
    if (!*v202)
    {
      goto LABEL_148;
    }

    v8 = v47;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v189 = v8;
      goto LABEL_109;
    }

LABEL_142:
    v189 = sub_1BD5ED6C8(v8);
LABEL_109:
    v238 = v189;
    v8 = *(v189 + 2);
    if (v8 >= 2)
    {
      while (*v48)
      {
        v190 = *&v189[16 * v8];
        v191 = v189;
        v192 = *&v189[16 * v8 + 24];
        sub_1BDA115A0(*v48 + *(v20 + 72) * v190, *v48 + *(v20 + 72) * *&v189[16 * v8 + 16], (*v48 + *(v20 + 72) * v192), a4);
        if (v5)
        {
          goto LABEL_120;
        }

        if (v192 < v190)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = sub_1BD5ED6C8(v191);
        }

        if (v8 - 2 >= *(v191 + 2))
        {
          goto LABEL_136;
        }

        v193 = &v191[16 * v8];
        *v193 = v190;
        *(v193 + 1) = v192;
        v238 = v191;
        sub_1BD5ED63C(v8 - 1);
        v189 = v238;
        v8 = *(v238 + 2);
        if (v8 <= 1)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_146;
    }

    goto LABEL_120;
  }

  v197 = a4;
  v46 = 0;
  v228 = v20 + 16;
  v229 = (v20 + 8);
  v226 = (v14 + 8);
  v214 = (v8 + 8);
  v225 = (v20 + 32);
  v47 = MEMORY[0x1E69E7CC0];
  v48 = a3;
  v203 = a3;
  v212 = v20;
  while (1)
  {
    v49 = v46++;
    v207 = v47;
    if (v46 < v45)
    {
      v219 = v45;
      v8 = *v48;
      v50 = *(v20 + 72);
      v51 = *v48 + v50 * v46;
      v52 = *(v20 + 16);
      v53 = v200;
      v235 = v51;
      v54 = v231;
      v52(v200, v43);
      v236 = v50;
      v55 = v8 + v50 * v49;
      v56 = v49;
      v57 = v201;
      v218 = v52;
      (v52)(v201, v55, v54);
      v221 = sub_1BDA09AF8(v53, v57);
      v58 = v230;
      if (v5)
      {
        v194 = *v229;
        (*v229)(v57, v54);
        v194(v53, v54);
LABEL_120:

        return;
      }

      a4 = v229;
      v59 = *v229;
      (*v229)(v57, v54);
      v211 = v59;
      v59(v53, v54);
      v46 = v56 + 2;
      v49 = v56;
      if (v56 + 2 >= v219)
      {
        v48 = v203;
      }

      else
      {
        v198 = v56;
        v199 = 0;
        v213 = v56 + 2;
        v60 = v8 + v236 * v46;
        v61 = v227;
        v62 = v231;
        v63 = v196;
        v64 = v208;
        v8 = v235;
        while (1)
        {
          v222 = v60;
          v65 = v218;
          (v218)(v64);
          v235 = v8;
          v65(v63, v8, v62);
          v66 = v232;
          sub_1BE049784();
          v67 = sub_1BE0493C4();
          v233 = v68;
          v234 = v67;
          LODWORD(v223) = v69;
          v70 = *v226;
          (*v226)(v66, v61);
          sub_1BE049784();
          v71 = sub_1BE0493C4();
          v72 = v58;
          v74 = v73;
          v75 = v61;
          v77 = v76;
          v70(v72, v75);
          if (MEMORY[0x1BFB40440](v234, v233, v223, v71, v74, v77))
          {
            v78 = v215;
            v64 = v208;
            sub_1BE0497A4();
            v79 = sub_1BE049AF4();
            v80 = *v214;
            v81 = v78;
            v82 = v217;
            (*v214)(v81, v217);
            v83 = v216;
            sub_1BE0497A4();
            v84 = sub_1BE049AF4();
            v80(v83, v82);
            v8 = v79 < v84;
          }

          else
          {
            sub_1BE049784();
            v85 = sub_1BE0493C4();
            v233 = v86;
            v234 = v85;
            LODWORD(v223) = v87;
            v70(v66, v75);
            sub_1BE049784();
            v88 = sub_1BE0493C4();
            v90 = v89;
            v92 = v91;
            v70(v72, v75);
            v64 = v208;
            v8 = MEMORY[0x1BFB403F0](v88, v90, v92, v234, v233, v223);
          }

          v62 = v231;
          a4 = v229;
          v93 = v211;
          v211(v63, v231);
          v93(v64, v62);
          v61 = v227;
          v58 = v230;
          if ((v221 & 1) != (v8 & 1))
          {
            break;
          }

          v8 = &v236[v235];
          v60 = &v236[v222];
          ++v213;
          v46 = v219;
          if (v219 == v213)
          {
            v5 = v199;
            v48 = v203;
            goto LABEL_16;
          }
        }

        v5 = v199;
        v48 = v203;
        v46 = v213;
LABEL_16:
        v49 = v198;
      }

      v20 = v212;
      v47 = v207;
      if (v221)
      {
        if (v46 < v49)
        {
          goto LABEL_141;
        }

        if (v49 < v46)
        {
          v199 = v5;
          v94 = v49;
          v95 = v236 * (v46 - 1);
          v96 = v46 * v236;
          v213 = v46;
          v97 = v46;
          v98 = v94;
          v198 = v94;
          v99 = v94 * v236;
          do
          {
            if (v98 != --v97)
            {
              v100 = *v48;
              if (!v100)
              {
                goto LABEL_145;
              }

              v8 = v100 + v99;
              v101 = *v225;
              (*v225)(v206, v100 + v99, v231, v47);
              if (v99 < v95 || v8 >= v100 + v96)
              {
                a4 = v231;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                a4 = v231;
                if (v99 != v95)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v101(v100 + v95, v206, a4);
              v48 = v203;
              v47 = v207;
            }

            ++v98;
            v95 -= v236;
            v96 -= v236;
            v99 += v236;
          }

          while (v98 < v97);
          v5 = v199;
          v20 = v212;
          v46 = v213;
          v49 = v198;
        }
      }
    }

    v102 = v48[1];
    if (v46 < v102)
    {
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_138;
      }

      if (v46 - v49 < v197)
      {
        break;
      }
    }

LABEL_52:
    if (v46 < v49)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v47 = v207;
    }

    else
    {
      v47 = sub_1BD1D7844(0, *(v207 + 2) + 1, 1, v207);
    }

    a4 = *(v47 + 2);
    v146 = *(v47 + 3);
    v8 = a4 + 1;
    if (a4 >= v146 >> 1)
    {
      v47 = sub_1BD1D7844((v146 > 1), a4 + 1, 1, v47);
    }

    *(v47 + 2) = v8;
    v147 = &v47[16 * a4];
    *(v147 + 4) = v49;
    *(v147 + 5) = v46;
    if (!*v202)
    {
      goto LABEL_147;
    }

    if (a4)
    {
      v20 = *v202;
      while (1)
      {
        v148 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v149 = *(v47 + 4);
          v150 = *(v47 + 5);
          v159 = __OFSUB__(v150, v149);
          v151 = v150 - v149;
          v152 = v159;
LABEL_73:
          if (v152)
          {
            goto LABEL_126;
          }

          v165 = &v47[16 * v8];
          v167 = *v165;
          v166 = *(v165 + 1);
          v168 = __OFSUB__(v166, v167);
          v169 = v166 - v167;
          v170 = v168;
          if (v168)
          {
            goto LABEL_129;
          }

          v171 = &v47[16 * v148 + 32];
          v173 = *v171;
          v172 = *(v171 + 1);
          v159 = __OFSUB__(v172, v173);
          v174 = v172 - v173;
          if (v159)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v169, v174))
          {
            goto LABEL_133;
          }

          if (v169 + v174 >= v151)
          {
            if (v151 < v174)
            {
              v148 = v8 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v175 = &v47[16 * v8];
        v177 = *v175;
        v176 = *(v175 + 1);
        v159 = __OFSUB__(v176, v177);
        v169 = v176 - v177;
        v170 = v159;
LABEL_87:
        if (v170)
        {
          goto LABEL_128;
        }

        v178 = &v47[16 * v148];
        v180 = *(v178 + 4);
        v179 = *(v178 + 5);
        v159 = __OFSUB__(v179, v180);
        v181 = v179 - v180;
        if (v159)
        {
          goto LABEL_131;
        }

        if (v181 < v169)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v148 - 1;
        if (v148 - 1 >= v8)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v48)
        {
          goto LABEL_144;
        }

        v186 = v47;
        v8 = *&v47[16 * a4 + 32];
        v187 = *&v47[16 * v148 + 40];
        sub_1BDA115A0(*v48 + *(v212 + 72) * v8, *v48 + *(v212 + 72) * *&v47[16 * v148 + 32], (*v48 + *(v212 + 72) * v187), v20);
        if (v5)
        {
          goto LABEL_120;
        }

        if (v187 < v8)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v186 = sub_1BD5ED6C8(v186);
        }

        if (a4 >= *(v186 + 2))
        {
          goto LABEL_123;
        }

        v188 = &v186[16 * a4];
        *(v188 + 4) = v8;
        *(v188 + 5) = v187;
        v238 = v186;
        sub_1BD5ED63C(v148);
        v47 = v238;
        v8 = *(v238 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v153 = &v47[16 * v8 + 32];
      v154 = *(v153 - 64);
      v155 = *(v153 - 56);
      v159 = __OFSUB__(v155, v154);
      v156 = v155 - v154;
      if (v159)
      {
        goto LABEL_124;
      }

      v158 = *(v153 - 48);
      v157 = *(v153 - 40);
      v159 = __OFSUB__(v157, v158);
      v151 = v157 - v158;
      v152 = v159;
      if (v159)
      {
        goto LABEL_125;
      }

      v160 = &v47[16 * v8];
      v162 = *v160;
      v161 = *(v160 + 1);
      v159 = __OFSUB__(v161, v162);
      v163 = v161 - v162;
      if (v159)
      {
        goto LABEL_127;
      }

      v159 = __OFADD__(v151, v163);
      v164 = v151 + v163;
      if (v159)
      {
        goto LABEL_130;
      }

      if (v164 >= v156)
      {
        v182 = &v47[16 * v148 + 32];
        v184 = *v182;
        v183 = *(v182 + 1);
        v159 = __OFSUB__(v183, v184);
        v185 = v183 - v184;
        if (v159)
        {
          goto LABEL_134;
        }

        if (v151 < v185)
        {
          v148 = v8 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v45 = v48[1];
    v20 = v212;
    if (v46 >= v45)
    {
      goto LABEL_106;
    }
  }

  v103 = v49 + v197;
  if (__OFADD__(v49, v197))
  {
    goto LABEL_139;
  }

  if (v103 >= v102)
  {
    v103 = v48[1];
  }

  if (v103 < v49)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v46 == v103)
  {
    goto LABEL_52;
  }

  v199 = v5;
  v104 = *v48;
  v105 = *(v20 + 72);
  v223 = *(v20 + 16);
  v20 = v104 + v105 * (v46 - 1);
  v218 = -v105;
  v198 = v49;
  v106 = v49 - v46;
  v213 = v46;
  v219 = v104;
  v204 = v105;
  v107 = (v104 + v46 * v105);
  v108 = v231;
  v109 = v232;
  v110 = v224;
  v205 = v103;
LABEL_42:
  v209 = v107;
  v210 = v106;
  v111 = v106;
  v211 = v20;
  while (1)
  {
    v234 = v111;
    v236 = v107;
    v112 = v223;
    (v223)(v110, v107, v108, v47);
    v233 = v20;
    v112(v237, v20, v108);
    sub_1BE049784();
    v235 = sub_1BE0493C4();
    v114 = v113;
    v116 = v115;
    v117 = v227;
    v118 = *v226;
    (*v226)(v109, v227);
    v119 = v230;
    sub_1BE049784();
    v120 = sub_1BE0493C4();
    v122 = v121;
    v124 = v123;
    v118(v119, v117);
    if (MEMORY[0x1BFB40440](v235, v114, v116, v120, v122, v124))
    {
      v125 = v215;
      v126 = v224;
      sub_1BE0497A4();
      v127 = sub_1BE049AF4();
      v128 = *v214;
      v129 = v217;
      (*v214)(v125, v217);
      v130 = v216;
      v131 = v237;
      sub_1BE0497A4();
      LOWORD(v125) = sub_1BE049AF4();
      v128(v130, v129);
      v8 = v127 < v125;
    }

    else
    {
      v132 = v232;
      v133 = v224;
      sub_1BE049784();
      v235 = sub_1BE0493C4();
      v222 = v134;
      v221 = v135;
      v118(v132, v117);
      v136 = v237;
      sub_1BE049784();
      v137 = sub_1BE0493C4();
      v139 = v138;
      v141 = v140;
      v118(v119, v117);
      v8 = MEMORY[0x1BFB403F0](v137, v139, v141, v235, v222, v221);
      v131 = v136;
      v126 = v133;
    }

    a4 = *v229;
    v108 = v231;
    (*v229)(v131, v231);
    v110 = v126;
    (a4)(v126, v108);
    v142 = v236;
    if ((v8 & 1) == 0)
    {
      v109 = v232;
LABEL_41:
      v20 = v211 + v204;
      v106 = v210 - 1;
      v107 = &v209[v204];
      if (++v213 == v205)
      {
        v46 = v205;
        v5 = v199;
        v48 = v203;
        v49 = v198;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v109 = v232;
    v143 = v234;
    if (!v219)
    {
      break;
    }

    a4 = *v225;
    v8 = v220;
    (*v225)(v220, v236, v108);
    v144 = v233;
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v144, v8, v108);
    v20 = v144 + v218;
    v107 = &v142[v218];
    v145 = __CFADD__(v143, 1);
    v111 = v143 + 1;
    if (v145)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_1BDA10AB8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v126 = sub_1BE04AFE4();
  v145 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v8);
  v125 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v124 = v120 - v12;
  v13 = sub_1BE0493F4();
  v132 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v138 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v120 - v18;
  v20 = sub_1BE049774();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v139 = v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v134 = v120 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v141 = v120 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v140 = v120 - v32;
  v135 = *(v33 + 72);
  if (!v135)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v135 == -1)
  {
    goto LABEL_70;
  }

  v34 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v135 == -1)
  {
    goto LABEL_71;
  }

  v35 = (a2 - a1) / v135;
  v148 = a1;
  v147 = a4;
  v136 = v20;
  v137 = v13;
  v142 = v19;
  if (v35 >= v34 / v135)
  {
    v37 = v34 / v135 * v135;
    if (a4 < a2 || a2 + v37 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v37 < 1)
    {
      v79 = a4 + v37;
    }

    else
    {
      v76 = -v135;
      v129 = (v21 + 16);
      v77 = (v132 + 8);
      v121 = (v145 + 8);
      v128 = (v21 + 8);
      v78 = a4 + v37;
      v79 = a4 + v37;
      v130 = (v132 + 8);
      v143 = a4;
      v144 = a1;
      v135 = -v135;
      do
      {
        v120[0] = v79;
        v80 = a2;
        v81 = a2 + v76;
        v145 = v81;
        v131 = v80;
        while (1)
        {
          v140 = a3;
          if (v80 <= a1)
          {
            v148 = v80;
            v146 = v120[0];
            goto LABEL_68;
          }

          v127 = v79;
          v133 = v78;
          v82 = *v129;
          v141 = (v78 + v76);
          v83 = v77;
          v82(v134);
          (v82)(v139, v81, v20);
          sub_1BE049744();
          v84 = sub_1BE0493C4();
          v132 = v85;
          v87 = v86;
          v88 = *v83;
          v89 = v19;
          v90 = v137;
          (*v83)(v89, v137);
          v91 = v138;
          sub_1BE049744();
          v92 = sub_1BE0493C4();
          v94 = v93;
          v96 = v95;
          v88(v91, v90);
          if (MEMORY[0x1BFB40440](v84, v132, v87, v92, v94, v96))
          {
            v97 = v124;
            v98 = v134;
            sub_1BE049764();
            v99 = v125;
            v100 = v139;
            sub_1BE049764();
            v101 = MEMORY[0x1BFB38030](v97, v99);
            v102 = *v121;
            v103 = v99;
            v104 = v126;
            (*v121)(v103, v126);
            v102(v97, v104);
            v105 = v100;
          }

          else
          {
            v106 = v142;
            v107 = v134;
            sub_1BE049744();
            v132 = sub_1BE0493C4();
            v123 = v108;
            v122 = v109;
            v88(v106, v90);
            v110 = v139;
            sub_1BE049744();
            v111 = sub_1BE0493C4();
            v113 = v112;
            v115 = v114;
            v88(v91, v90);
            v101 = MEMORY[0x1BFB403F0](v111, v113, v115, v132, v123, v122);
            v105 = v110;
            v98 = v107;
          }

          v20 = v136;
          v116 = v140;
          a3 = &v140[v135];
          v117 = *v128;
          (*v128)(v105, v136);
          v117(v98, v20);
          a1 = v144;
          v118 = v145;
          v119 = v143;
          if (v101)
          {
            break;
          }

          v38 = v116 >= v133;
          v79 = v141;
          v19 = v142;
          if (v38 && a3 < v133)
          {
            v81 = v145;
            if (v140 != v133)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
            v81 = v118;
          }

          v78 = v79;
          v76 = v135;
          v77 = v130;
          v80 = v131;
          if (v141 <= v119)
          {
            a2 = v131;
            goto LABEL_67;
          }
        }

        v38 = v116 >= v131;
        v19 = v142;
        if (v38 && a3 < v131)
        {
          v79 = v127;
          v78 = v133;
          a2 = v145;
          if (v140 != v131)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v145;
          swift_arrayInitWithTakeFrontToBack();
          v79 = v127;
          v78 = v133;
        }

        v76 = v135;
        v77 = v130;
      }

      while (v78 > v119);
    }

LABEL_67:
    v148 = a2;
    v146 = v79;
  }

  else
  {
    v36 = v35 * v135;
    if (a4 < a1 || a1 + v36 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v134 = (a4 + v36);
    v146 = a4 + v36;
    v38 = v36 < 1 || a2 >= a3;
    if (!v38)
    {
      v131 = *(v21 + 16);
      v39 = (v132 + 8);
      v123 = (v145 + 8);
      v132 = v21 + 16;
      v133 = a3;
      v129 = (v21 + 8);
      v130 = v39;
      do
      {
        v144 = a1;
        v145 = a2;
        v40 = v131;
        (v131)(v140, a2, v20);
        v143 = a4;
        (v40)(v141, a4, v20);
        sub_1BE049744();
        v41 = sub_1BE0493C4();
        v43 = v42;
        LODWORD(v139) = v44;
        v45 = *v39;
        v46 = v137;
        v45(v19, v137);
        v47 = v138;
        sub_1BE049744();
        v48 = sub_1BE0493C4();
        v50 = v49;
        v52 = v51;
        v45(v47, v46);
        if (MEMORY[0x1BFB40440](v41, v43, v139, v48, v50, v52))
        {
          v53 = v124;
          v54 = v140;
          sub_1BE049764();
          v55 = v125;
          v56 = v141;
          sub_1BE049764();
          v57 = MEMORY[0x1BFB38030](v53, v55);
          v58 = *v123;
          v59 = v55;
          v60 = v126;
          (*v123)(v59, v126);
          v58(v53, v60);
          v61 = v56;
          v62 = v54;
        }

        else
        {
          v63 = v142;
          v62 = v140;
          sub_1BE049744();
          v139 = sub_1BE0493C4();
          v128 = v64;
          LODWORD(v127) = v65;
          v45(v63, v46);
          v66 = v141;
          sub_1BE049744();
          v67 = sub_1BE0493C4();
          v69 = v68;
          v71 = v70;
          v45(v47, v46);
          v57 = MEMORY[0x1BFB403F0](v67, v69, v71, v139, v128, v127);
          v61 = v66;
        }

        v72 = *v129;
        v20 = v136;
        (*v129)(v61, v136);
        (v72)(v62, v20);
        v73 = v144;
        a2 = v145;
        a4 = v143;
        v74 = v133;
        v75 = v135;
        if (v57)
        {
          v19 = v142;
          if (v144 < v145 || v144 >= v145 + v135)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v144 != v145)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v75;
        }

        else
        {
          v19 = v142;
          if (v144 < v143 || v144 >= v143 + v135)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v144 != v143)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v147 = a4 + v75;
          a4 += v75;
        }

        a1 = v73 + v75;
        v148 = a1;
        v39 = v130;
      }

      while (a4 < v134 && a2 < v74);
    }
  }

LABEL_68:
  sub_1BD9353D0(&v148, &v147, &v146);
}

void sub_1BDA115A0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v126 = sub_1BE049B04();
  v132 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v8);
  v125 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v124 = v120 - v12;
  v13 = sub_1BE0493F4();
  v130 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v138 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v120 - v18;
  v20 = sub_1BE0497B4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v139 = v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v134 = v120 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v141 = v120 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v140 = v120 - v32;
  v135 = *(v33 + 72);
  if (!v135)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v135 == -1)
  {
    goto LABEL_71;
  }

  v34 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v135 == -1)
  {
    goto LABEL_72;
  }

  v35 = (a2 - a1) / v135;
  v148 = a1;
  v147 = a4;
  v136 = v20;
  v137 = v13;
  v142 = v19;
  if (v35 >= v34 / v135)
  {
    v37 = v34 / v135 * v135;
    v40 = a4 >= a2;
    v38 = a2;
    v39 = v138;
    v145 = v38;
    if (v40 && v38 + v37 > a4)
    {
      if (a4 != v38)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    else
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    if (v37 < 1)
    {
      v81 = a4 + v37;
    }

    else
    {
      v78 = -v135;
      v129 = (v21 + 16);
      v79 = v130 + 1;
      v121 = (v132 + 8);
      v128 = (v21 + 8);
      v80 = a4 + v37;
      v81 = a4 + v37;
      ++v130;
      v143 = a4;
      v144 = a1;
      v135 = -v135;
      do
      {
        v120[0] = v81;
        v82 = v145;
        v145 += v78;
        v131 = v82;
        while (1)
        {
          v140 = a3;
          if (v82 <= a1)
          {
            v148 = v82;
            v146 = v120[0];
            goto LABEL_69;
          }

          v127 = v81;
          v133 = v80;
          v83 = *v129;
          v141 = (v80 + v78);
          v84 = v79;
          v83(v134);
          (v83)(v139, v145, v20);
          sub_1BE049784();
          v85 = sub_1BE0493C4();
          v132 = v86;
          v88 = v87;
          v89 = *v84;
          v90 = v19;
          v91 = v137;
          (*v84)(v90, v137);
          sub_1BE049784();
          v92 = sub_1BE0493C4();
          v94 = v93;
          v96 = v95;
          v89(v39, v91);
          if (MEMORY[0x1BFB40440](v85, v132, v88, v92, v94, v96))
          {
            v97 = v124;
            v98 = v134;
            sub_1BE0497A4();
            v99 = sub_1BE049AF4();
            v100 = *v121;
            v101 = v126;
            (*v121)(v97, v126);
            v102 = v125;
            v103 = v139;
            sub_1BE0497A4();
            LOWORD(v97) = sub_1BE049AF4();
            v100(v102, v101);
            v104 = v99 < v97;
            v105 = v103;
            v106 = v98;
          }

          else
          {
            v107 = v142;
            v108 = v134;
            sub_1BE049784();
            v132 = sub_1BE0493C4();
            v123 = v109;
            v122 = v110;
            v89(v107, v91);
            v111 = v139;
            sub_1BE049784();
            v112 = sub_1BE0493C4();
            v114 = v113;
            v116 = v115;
            v89(v39, v91);
            v104 = MEMORY[0x1BFB403F0](v112, v114, v116, v132, v123, v122);
            v105 = v111;
            v106 = v108;
          }

          v20 = v136;
          v117 = v140;
          a3 = &v140[v135];
          v118 = *v128;
          (*v128)(v105, v136);
          v118(v106, v20);
          v119 = v143;
          a1 = v144;
          if (v104)
          {
            break;
          }

          v40 = v117 >= v133;
          v39 = v138;
          v81 = v141;
          v19 = v142;
          if (v40 && a3 < v133)
          {
            if (v140 != v133)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          v80 = v81;
          v78 = v135;
          v79 = v130;
          v82 = v131;
          if (v141 <= v119)
          {
            v145 = v131;
            goto LABEL_68;
          }
        }

        v40 = v117 >= v131;
        v39 = v138;
        v19 = v142;
        if (v40 && a3 < v131)
        {
          v81 = v127;
          v80 = v133;
          if (v140 != v131)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
          v81 = v127;
          v80 = v133;
        }

        v78 = v135;
        v79 = v130;
      }

      while (v80 > v119);
    }

LABEL_68:
    v148 = v145;
    v146 = v81;
  }

  else
  {
    v36 = v35 * v135;
    if (a4 < a1 || a1 + v36 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v134 = (a4 + v36);
    v146 = a4 + v36;
    v40 = v36 < 1 || a2 >= a3;
    if (!v40)
    {
      v131 = *(v21 + 16);
      v41 = v130 + 1;
      v123 = (v132 + 8);
      v132 = v21 + 16;
      v133 = a3;
      v129 = (v21 + 8);
      ++v130;
      do
      {
        v144 = a1;
        v145 = a2;
        v42 = v131;
        (v131)(v140, a2, v20);
        v143 = a4;
        (v42)(v141, a4, v20);
        sub_1BE049784();
        v43 = sub_1BE0493C4();
        v45 = v44;
        LODWORD(v139) = v46;
        v47 = *v41;
        v48 = v137;
        v47(v19, v137);
        v49 = v138;
        sub_1BE049784();
        v50 = sub_1BE0493C4();
        v52 = v51;
        v54 = v53;
        v47(v49, v48);
        if (MEMORY[0x1BFB40440](v43, v45, v139, v50, v52, v54))
        {
          v55 = v124;
          v56 = v140;
          sub_1BE0497A4();
          v57 = sub_1BE049AF4();
          v58 = *v123;
          v59 = v126;
          (*v123)(v55, v126);
          v60 = v125;
          v61 = v141;
          sub_1BE0497A4();
          LOWORD(v55) = sub_1BE049AF4();
          v58(v60, v59);
          v62 = v57 < v55;
          v63 = v61;
          v64 = v56;
        }

        else
        {
          v65 = v142;
          v64 = v140;
          sub_1BE049784();
          v139 = sub_1BE0493C4();
          v128 = v66;
          LODWORD(v127) = v67;
          v47(v65, v48);
          v68 = v141;
          sub_1BE049784();
          v69 = sub_1BE0493C4();
          v71 = v70;
          v73 = v72;
          v47(v49, v48);
          v62 = MEMORY[0x1BFB403F0](v69, v71, v73, v139, v128, v127);
          v63 = v68;
        }

        v74 = *v129;
        v20 = v136;
        (*v129)(v63, v136);
        (v74)(v64, v20);
        v75 = v144;
        a2 = v145;
        a4 = v143;
        v76 = v133;
        v77 = v135;
        if (v62)
        {
          v19 = v142;
          if (v144 < v145 || v144 >= v145 + v135)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v144 != v145)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v77;
        }

        else
        {
          v19 = v142;
          if (v144 < v143 || v144 >= v143 + v135)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v144 != v143)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v147 = a4 + v77;
          a4 += v77;
        }

        a1 = v75 + v77;
        v148 = a1;
        v41 = v130;
      }

      while (a4 < v134 && a2 < v76);
    }
  }

LABEL_69:
  sub_1BD9353E8(&v148, &v147, &v146);
}

BOOL sub_1BDA120B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - v14;
  sub_1BE049B04();
  sub_1BDA1396C(&qword_1EBD45980, MEMORY[0x1E6967AD0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  if (v25 != v24)
  {
    return 0;
  }

  v16 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
  sub_1BD842AA4(*(a1 + *(v16 + 20)), *(a2 + *(v16 + 20)));
  if ((v17 & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  v18 = *(v16 + 28);
  v19 = *(v12 + 48);
  sub_1BD0DE19C(a1 + v18, v15, &qword_1EBD44F98);
  sub_1BD0DE19C(a2 + v18, &v15[v19], &qword_1EBD44F98);
  v20 = *(v23 + 48);
  if (v20(v15, 1, v4) == 1)
  {
    if (v20(&v15[v19], 1, v4) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD44F98);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1BD0DE19C(v15, v11, &qword_1EBD44F98);
  if (v20(&v15[v19], 1, v4) == 1)
  {
    sub_1BDA138A4(v11, type metadata accessor for FinanceKitSpendingTrend);
LABEL_9:
    sub_1BD0DE53C(v15, &qword_1EBD45978);
    return 0;
  }

  sub_1BDA13904(&v15[v19], v7, type metadata accessor for FinanceKitSpendingTrend);
  v22 = sub_1BD362DBC(v11, v7);
  sub_1BDA138A4(v7, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BDA138A4(v11, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BD0DE53C(v15, &qword_1EBD44F98);
  return (v22 & 1) != 0;
}

BOOL sub_1BDA1245C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend();
  v68 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v66 = &v59 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978);
  MEMORY[0x1EEE9AC00](v67, v11);
  v13 = &v59 - v12;
  v14 = sub_1BE0491F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD10);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v59 - v24;
  if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v65 = v15;
  v26 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  v27 = *(v26 + 20);
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if (v28 != *v30 || v29 != v30[1])
  {
    v31 = a1;
    v32 = a2;
    v33 = v26;
    v34 = sub_1BE053B84();
    v26 = v33;
    a2 = v32;
    a1 = v31;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = a2;
  v36 = v26;
  if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v61 = v4;
  v62 = v13;
  v60 = v7;
  v63 = a1;
  v64 = v36;
  v37 = *(v36 + 28);
  v38 = *(v22 + 48);
  sub_1BD0DE19C(a1 + v37, v25, &qword_1EBD45CC0);
  sub_1BD0DE19C(v35 + v37, &v25[v38], &qword_1EBD45CC0);
  v39 = *(v65 + 48);
  if (v39(v25, 1, v14) == 1)
  {
    if (v39(&v25[v38], 1, v14) == 1)
    {
      sub_1BD0DE53C(v25, &qword_1EBD45CC0);
      goto LABEL_14;
    }

LABEL_11:
    v40 = &qword_1EBD5BD10;
    v41 = v25;
LABEL_12:
    sub_1BD0DE53C(v41, v40);
    return 0;
  }

  sub_1BD0DE19C(v25, v21, &qword_1EBD45CC0);
  if (v39(&v25[v38], 1, v14) == 1)
  {
    (*(v65 + 8))(v21, v14);
    goto LABEL_11;
  }

  v42 = v65;
  v43 = v69;
  (*(v65 + 32))(v69, &v25[v38], v14);
  sub_1BDA1396C(&qword_1EBD5BD18, MEMORY[0x1E69676E0]);
  v44 = sub_1BE052334();
  v45 = *(v42 + 8);
  v45(v43, v14);
  v45(v21, v14);
  sub_1BD0DE53C(v25, &qword_1EBD45CC0);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v46 = v64;
  sub_1BE049B04();
  sub_1BDA1396C(&qword_1EBD45980, MEMORY[0x1E6967AD0]);
  v47 = v63;
  sub_1BE0526E4();
  sub_1BE0526E4();
  if (v71 != v70)
  {
    return 0;
  }

  sub_1BD842AA4(*(v47 + *(v46 + 36)), *(v35 + *(v46 + 36)));
  if ((v48 & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  v49 = *(v46 + 44);
  v50 = *(v67 + 48);
  v51 = v62;
  sub_1BD0DE19C(v47 + v49, v62, &qword_1EBD44F98);
  sub_1BD0DE19C(v35 + v49, v51 + v50, &qword_1EBD44F98);
  v52 = *(v68 + 48);
  v53 = v61;
  if (v52(v51, 1, v61) == 1)
  {
    if (v52(v51 + v50, 1, v53) == 1)
    {
      sub_1BD0DE53C(v51, &qword_1EBD44F98);
      return 1;
    }

    goto LABEL_22;
  }

  v54 = v66;
  sub_1BD0DE19C(v51, v66, &qword_1EBD44F98);
  if (v52(v51 + v50, 1, v53) == 1)
  {
    sub_1BDA138A4(v54, type metadata accessor for FinanceKitSpendingTrend);
LABEL_22:
    v40 = &qword_1EBD45978;
    v41 = v51;
    goto LABEL_12;
  }

  v55 = v51 + v50;
  v56 = v60;
  sub_1BDA13904(v55, v60, type metadata accessor for FinanceKitSpendingTrend);
  v57 = sub_1BD362DBC(v54, v56);
  sub_1BDA138A4(v56, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BDA138A4(v54, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BD0DE53C(v51, &qword_1EBD44F98);
  return (v57 & 1) != 0;
}

uint64_t sub_1BDA12BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v99 = &v93 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BCF8);
  MEMORY[0x1EEE9AC00](v100, v10);
  v12 = &v93 - v11;
  v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v103 = &v93 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD00);
  MEMORY[0x1EEE9AC00](v105, v20);
  v108 = &v93 - v21;
  v22 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  v111 = *(v22 - 8);
  v112 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v104 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v109 = &v93 - v27;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD08);
  MEMORY[0x1EEE9AC00](v110, v28);
  v113 = &v93 - v29;
  v30 = type metadata accessor for FinanceKitSpendingTrend();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v93 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45978);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v93 - v41;
  if ((_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_49;
  }

  v97 = v16;
  v43 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  if ((sub_1BE0493B4() & 1) == 0)
  {
    goto LABEL_49;
  }

  v94 = v12;
  v95 = v43;
  v44 = *(v43 + 24);
  v45 = *(v39 + 48);
  v96 = a1;
  sub_1BD0DE19C(a1 + v44, v42, &qword_1EBD44F98);
  v46 = a2 + v44;
  v47 = a2;
  sub_1BD0DE19C(v46, &v42[v45], &qword_1EBD44F98);
  v48 = *(v31 + 48);
  if (v48(v42, 1, v30) == 1)
  {
    if (v48(&v42[v45], 1, v30) == 1)
    {
      sub_1BD0DE53C(v42, &qword_1EBD44F98);
      goto LABEL_11;
    }

LABEL_8:
    v49 = &qword_1EBD45978;
    v50 = v42;
    goto LABEL_9;
  }

  sub_1BD0DE19C(v42, v38, &qword_1EBD44F98);
  if (v48(&v42[v45], 1, v30) == 1)
  {
    sub_1BDA138A4(v38, type metadata accessor for FinanceKitSpendingTrend);
    goto LABEL_8;
  }

  sub_1BDA13904(&v42[v45], v34, type metadata accessor for FinanceKitSpendingTrend);
  v51 = sub_1BD362DBC(v38, v34);
  sub_1BDA138A4(v34, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BDA138A4(v38, type metadata accessor for FinanceKitSpendingTrend);
  sub_1BD0DE53C(v42, &qword_1EBD44F98);
  if ((v51 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_11:
  v53 = v95;
  v52 = v96;
  if ((sub_1BD4001A4(*(v96 + v95[7]), *(a2 + v95[7])) & 1) == 0 || (sub_1BD40043C(*(v52 + v53[8]), *(a2 + v53[8])) & 1) == 0)
  {
    goto LABEL_49;
  }

  v54 = v53[9];
  v55 = *(v110 + 48);
  v56 = v113;
  sub_1BD0DE19C(v52 + v54, v113, &qword_1EBD507F8);
  sub_1BD0DE19C(v47 + v54, v56 + v55, &qword_1EBD507F8);
  v57 = v112;
  v58 = *(v111 + 48);
  if (v58(v56, 1, v112) == 1)
  {
    if (v58(v56 + v55, 1, v57) == 1)
    {
      sub_1BD0DE53C(v56, &qword_1EBD507F8);
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v77 = v109;
  sub_1BD0DE19C(v56, v109, &qword_1EBD507F8);
  if (v58(v56 + v55, 1, v57) == 1)
  {
    sub_1BDA138A4(v77, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
LABEL_28:
    v49 = &qword_1EBD5BD08;
LABEL_29:
    v50 = v56;
    goto LABEL_9;
  }

  v78 = v56 + v55;
  v79 = v104;
  sub_1BDA13904(v78, v104, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  if ((sub_1BE0493B4() & 1) == 0)
  {
    sub_1BDA138A4(v79, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    sub_1BDA138A4(v77, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    v49 = &qword_1EBD507F8;
    goto LABEL_29;
  }

  sub_1BD842AA4(*(v77 + *(v57 + 20)), *(v79 + *(v57 + 20)));
  v81 = v80;
  sub_1BDA138A4(v79, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  sub_1BDA138A4(v77, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  sub_1BD0DE53C(v56, &qword_1EBD507F8);
  if ((v81 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_16:
  v59 = v53[10];
  v60 = *(v105 + 48);
  v61 = v108;
  sub_1BD0DE19C(v52 + v59, v108, &qword_1EBD507F0);
  v62 = v47 + v59;
  v63 = v61;
  sub_1BD0DE19C(v62, v61 + v60, &qword_1EBD507F0);
  v64 = v107;
  v65 = *(v106 + 48);
  if (v65(v61, 1, v107) == 1)
  {
    if (v65(v61 + v60, 1, v64) == 1)
    {
      sub_1BD0DE53C(v61, &qword_1EBD507F0);
      goto LABEL_19;
    }

LABEL_35:
    v49 = &qword_1EBD5BD00;
    v50 = v63;
    goto LABEL_9;
  }

  v82 = v103;
  sub_1BD0DE19C(v63, v103, &qword_1EBD507F0);
  if (v65(v63 + v60, 1, v64) == 1)
  {
    sub_1BDA138A4(v82, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    goto LABEL_35;
  }

  v83 = v63 + v60;
  v84 = v97;
  sub_1BDA13904(v83, v97, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  if ((sub_1BE0493B4() & 1) == 0)
  {
    sub_1BDA138A4(v84, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    sub_1BDA138A4(v82, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    v49 = &qword_1EBD507F0;
    v50 = v63;
    goto LABEL_9;
  }

  sub_1BD842AA4(*(v82 + *(v64 + 20)), *(v84 + *(v64 + 20)));
  v86 = v85;
  sub_1BDA138A4(v84, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  sub_1BDA138A4(v82, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  sub_1BD0DE53C(v63, &qword_1EBD507F0);
  if ((v86 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  v66 = v53[11];
  v67 = *(v100 + 48);
  v68 = v94;
  sub_1BD0DE19C(v52 + v66, v94, &qword_1EBD507E8);
  v69 = v68;
  sub_1BD0DE19C(v47 + v66, v68 + v67, &qword_1EBD507E8);
  v70 = v102;
  v71 = *(v101 + 48);
  if (v71(v68, 1, v102) != 1)
  {
    v87 = v99;
    sub_1BD0DE19C(v69, v99, &qword_1EBD507E8);
    if (v71(v69 + v67, 1, v70) == 1)
    {
      sub_1BDA138A4(v87, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      goto LABEL_42;
    }

    v88 = v98;
    sub_1BDA13904(v69 + v67, v98, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    if (sub_1BE0493B4())
    {
      sub_1BD842AA4(*(v87 + *(v102 + 20)), *(v88 + *(v102 + 20)));
      v90 = v89;
      sub_1BDA138A4(v88, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      sub_1BDA138A4(v87, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      sub_1BD0DE53C(v69, &qword_1EBD507E8);
      if ((v90 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_22;
    }

    sub_1BDA138A4(v88, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    sub_1BDA138A4(v87, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    v49 = &qword_1EBD507E8;
    v50 = v69;
LABEL_9:
    sub_1BD0DE53C(v50, v49);
    goto LABEL_49;
  }

  if (v71(v68 + v67, 1, v70) != 1)
  {
LABEL_42:
    v49 = &qword_1EBD5BCF8;
    v50 = v69;
    goto LABEL_9;
  }

  sub_1BD0DE53C(v68, &qword_1EBD507E8);
LABEL_22:
  v72 = v53[12];
  v73 = *(v52 + v72);
  v74 = *(v47 + v72);
  if (v73)
  {
    if (!v74)
    {
      goto LABEL_49;
    }

    sub_1BE048C84();
    sub_1BD842AA4(v73, v74);
    v76 = v75;

    if ((v76 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_51:
    v91 = sub_1BD4009DC(*(v52 + v53[13]), *(v47 + v53[13]));
    return v91 & 1;
  }

  if (!v74)
  {
    goto LABEL_51;
  }

LABEL_49:
  v91 = 0;
  return v91 & 1;
}

uint64_t sub_1BDA138A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BDA13904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA1396C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BDA139B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13B70();
  sub_1BE053D94();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08);
    sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58);
    sub_1BE053AA4();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v8;
}

unint64_t sub_1BDA13B70()
{
  result = qword_1EBD5BD28;
  if (!qword_1EBD5BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD28);
  }

  return result;
}

uint64_t sub_1BDA13BC4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F08);
    sub_1BDA1396C(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA13C60()
{
  result = qword_1EBD5BD40;
  if (!qword_1EBD5BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD40);
  }

  return result;
}

unint64_t sub_1BDA13CB4()
{
  result = qword_1EBD5BD68;
  if (!qword_1EBD5BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD68);
  }

  return result;
}

uint64_t sub_1BDA13D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BDA13D70()
{
  result = qword_1EBD5BD80;
  if (!qword_1EBD5BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD80);
  }

  return result;
}

uint64_t sub_1BDA13DC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BDA13E10(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1BE04B2D4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1BD126968;

  return sub_1BDA0344C(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_1BDA13FE4()
{
  result = qword_1EBD5BD90;
  if (!qword_1EBD5BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BD90);
  }

  return result;
}

uint64_t sub_1BDA14058(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA094F0(a1, v6, v1 + v5);
}

uint64_t sub_1BDA14148(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA095BC(a1, v1 + v5, v6);
}

uint64_t sub_1BDA14284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD9FE518(a1, v4, v5, v6);
}

uint64_t sub_1BDA14338(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BDA001D8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BDA1446C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA0BD38(a1, v6, v1 + v5);
}

uint64_t objectdestroy_130Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BDA1462C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BDA0C190(a1, v6, v1 + v5);
}

unint64_t sub_1BDA1471C()
{
  result = qword_1EBD5BE20;
  if (!qword_1EBD5BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BE18);
    sub_1BD58197C();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE20);
  }

  return result;
}

void sub_1BDA147C0()
{
  sub_1BE049B04();
  if (v0 <= 0x3F)
  {
    sub_1BDA14834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BDA14834()
{
  if (!qword_1EBD5BE38)
  {
    v0 = sub_1BE04AFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5BE38);
    }
  }
}

unint64_t sub_1BDA148D0()
{
  result = qword_1EBD5BE40;
  if (!qword_1EBD5BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE40);
  }

  return result;
}

unint64_t sub_1BDA14928()
{
  result = qword_1EBD5BE48;
  if (!qword_1EBD5BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE48);
  }

  return result;
}

unint64_t sub_1BDA14980()
{
  result = qword_1EBD5BE50;
  if (!qword_1EBD5BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE50);
  }

  return result;
}

unint64_t sub_1BDA149D8()
{
  result = qword_1EBD5BE58;
  if (!qword_1EBD5BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE58);
  }

  return result;
}

unint64_t sub_1BDA14A30()
{
  result = qword_1EBD5BE60;
  if (!qword_1EBD5BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE60);
  }

  return result;
}

unint64_t sub_1BDA14A88()
{
  result = qword_1EBD5BE68;
  if (!qword_1EBD5BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE68);
  }

  return result;
}

unint64_t sub_1BDA14AE0()
{
  result = qword_1EBD5BE70;
  if (!qword_1EBD5BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE70);
  }

  return result;
}

unint64_t sub_1BDA14B38()
{
  result = qword_1EBD5BE78;
  if (!qword_1EBD5BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE78);
  }

  return result;
}

unint64_t sub_1BDA14B90()
{
  result = qword_1EBD5BE80;
  if (!qword_1EBD5BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE80);
  }

  return result;
}

unint64_t sub_1BDA14BE8()
{
  result = qword_1EBD5BE88;
  if (!qword_1EBD5BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE88);
  }

  return result;
}

unint64_t sub_1BDA14C40()
{
  result = qword_1EBD5BE90;
  if (!qword_1EBD5BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE90);
  }

  return result;
}

unint64_t sub_1BDA14C98()
{
  result = qword_1EBD5BE98;
  if (!qword_1EBD5BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BE98);
  }

  return result;
}

unint64_t sub_1BDA14CF0()
{
  result = qword_1EBD5BEA0;
  if (!qword_1EBD5BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BEA0);
  }

  return result;
}

uint64_t sub_1BDA14DD4()
{
  result = _s14MerchantOriginOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BDA14E50()
{
  result = _s7WebInfoVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BDA14F04()
{
  sub_1BE04AA64();
  if (v0 <= 0x3F)
  {
    sub_1BD3F7300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_1BDA14F98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v60 - v5;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v60 - v16;
  v66 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v66, v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v60 - v23);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v67 = &v60 - v28;
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = result;
  v31 = [result requestType];

  if (v31 == 8)
  {
    v32 = v67;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  result = [a1 paymentRequest];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = result;
  v34 = [result originatingURL];

  if (v34)
  {
    sub_1BE04A9F4();

    v62 = *(v7 + 32);
    v62(v17, v13, v6);
    v61 = *(v7 + 16);
    v61(v64, v17, v6);
    result = [a1 paymentRequest];
    if (!result)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v35 = result;
    v36 = [result thumbnailURLs];

    v37 = v63;
    if (v36)
    {
      v38 = sub_1BE052744();

      if (*(v38 + 16))
      {
        v61(v37, (v38 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v6);
        v39 = 0;
      }

      else
      {
        v39 = 1;
      }
    }

    else
    {
      v39 = 1;
    }

    (*(v7 + 8))(v17, v6);
    (*(v7 + 56))(v37, v39, 1, v6);
    v62(v20, v64, v6);
    v53 = _s7WebInfoVMa(0);
    sub_1BD226B4C(v37, &v20[*(v53 + 20)]);
    swift_storeEnumTagMultiPayload();
    v52 = v20;
    goto LABEL_18;
  }

  result = [a1 hostAppLocalizedName];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = result;
  v41 = sub_1BE052434();
  v43 = v42;

  result = [a1 hostApplicationIdentifier];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = result;
  v45 = sub_1BE052434();
  v47 = v46;

  result = [a1 bundleIdentifier];
  if (result)
  {
    v48 = result;
    v49 = sub_1BE052434();
    v51 = v50;

    *v24 = v41;
    v24[1] = v43;
    v24[2] = v45;
    v24[3] = v47;
    v24[4] = v49;
    v24[5] = v51;
    swift_storeEnumTagMultiPayload();
    v52 = v24;
LABEL_18:
    v32 = v67;
    sub_1BDA15DF0(v52, v67, _s14MerchantOriginOMa);
LABEL_19:
    result = [a1 merchantName];
    if (result)
    {
      v54 = result;
      v55 = sub_1BE052434();
      v57 = v56;

      v58 = v65;
      *v65 = v55;
      v58[1] = v57;
      v59 = _s8MerchantVMa(0);
      return sub_1BDA15DF0(v32, v58 + *(v59 + 20), _s14MerchantOriginOMa);
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1BDA15500(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return sub_1BDA154FC(a1 + v7, a2 + v7);
}

uint64_t sub_1BDA15584(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1BE053B84();
}

BOOL sub_1BDA15684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  if ((sub_1BE04A9E4() & 1) == 0)
  {
    return 0;
  }

  v17 = *(_s7WebInfoVMa(0) + 20);
  v18 = *(v13 + 48);
  sub_1BD38F438(a1 + v17, v16);
  sub_1BD38F438(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD3CF70);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1BD38F438(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1BD0DE53C(v16, &qword_1EBD44E78);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1BD96D338();
  v21 = sub_1BE052334();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1BD0DE53C(v16, &unk_1EBD3CF70);
  return (v21 & 1) != 0;
}

BOOL sub_1BDA1596C(uint64_t a1, uint64_t a2)
{
  v4 = _s7WebInfoVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v42 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BED8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v42 - v18;
  v21 = (v42 + *(v20 + 56) - v18);
  sub_1BD129504(a1, v42 - v18);
  sub_1BD129504(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BD129504(v19, v15);
    v24 = *v15;
    v25 = v15[1];
    v27 = v15[2];
    v26 = v15[3];
    v29 = v15[4];
    v28 = v15[5];
    if (!swift_getEnumCaseMultiPayload())
    {
      v31 = *v21;
      v32 = v21[1];
      v34 = v21[2];
      v33 = v21[3];
      v35 = v21[5];
      v42[0] = v21[4];
      v42[1] = v32;
      v36 = v24 == v31 && v25 == v32;
      v37 = v33;
      if (v36 || (v38 = sub_1BE053B84(), v33 = v37, (v38)) && (v27 == v34 ? (v39 = v26 == v33) : (v39 = 0), v39 || (sub_1BE053B84()))
      {
        if (v29 == v42[0] && v28 == v35)
        {

          goto LABEL_8;
        }

        v41 = sub_1BE053B84();

        if (v41)
        {
LABEL_8:
          sub_1BDA15D90(v19, _s14MerchantOriginOMa);
          return 1;
        }
      }

      else
      {
      }

      sub_1BDA15D90(v19, _s14MerchantOriginOMa);
      return 0;
    }

LABEL_10:
    sub_1BD0DE53C(v19, &qword_1EBD5BED8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1BD129504(v19, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BDA15D90(v11, _s7WebInfoVMa);
    goto LABEL_10;
  }

  sub_1BDA15DF0(v21, v7, _s7WebInfoVMa);
  v23 = sub_1BDA15684(v11, v7);
  sub_1BDA15D90(v7, _s7WebInfoVMa);
  sub_1BDA15D90(v11, _s7WebInfoVMa);
  sub_1BDA15D90(v19, _s14MerchantOriginOMa);
  return v23;
}

uint64_t sub_1BDA15D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BDA15DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PKAppIntentError.localizedStringResource.getter()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v9, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t PKCashAppIntentError.localizedStringResource.getter()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v9, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

unint64_t sub_1BDA16438()
{
  result = qword_1EBD5BEE0;
  if (!qword_1EBD5BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BEE0);
  }

  return result;
}

unint64_t sub_1BDA16490()
{
  result = qword_1EBD5BEE8;
  if (!qword_1EBD5BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BEE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PKAppIntentError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PKAppIntentError(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1BDA16660(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC9PassKitUI37AuthenticatorPassphraseViewController_cancelHandler];
  *v9 = a2;
  *(v9 + 1) = a3;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  sub_1BE048964();
  v10 = objc_msgSendSuper2(&v14, sel_initWithRootViewController_, a1);
  [v10 setModalPresentationStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v10 action:sel_cancelPressed];
  v12 = [a1 navigationItem];
  [v12 setRightBarButtonItem:v11 animated:0];

  return v10;
}

void sub_1BDA168F4()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    [v2 setHidden_];
  }

  sub_1BDA169B0(1u, 0);
  v3 = 4;
  sub_1BDA17054(&v3, 0);
}

void sub_1BDA169B0(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v34 - v14;
  if (v3[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_footerState] == v5)
  {
    return;
  }

  v16 = [v3 dockView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_31;
  }

  v36 = v16;
  v37 = [v16 footerView];
  if (!v37)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = [v3 headerView];
  v18 = v17;
  if (v5 <= 1)
  {
    if (!v5)
    {
      if (v17)
      {
        [v17 setActionTitle_];
        [v18 setActionButtonAction_];

        [v3 setShowPrimaryButton_];
        sub_1BD3789BC(0);
        [v37 setSecondaryActionButton_];
        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (!v17)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    (*(v7 + 104))(v15, *MEMORY[0x1E69B80D8], v6);
    v30 = PKPassKitBundle();
    if (!v30)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v31 = v30;
    sub_1BE04B6F4();

    (*(v7 + 8))(v15, v6);
    v32 = sub_1BE052404();

    [v18 setActionTitle_];

    sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = sub_1BE0530B4();
    [v18 setActionButtonAction_];

    [v3 setShowPrimaryButton_];
    v27 = 0;
LABEL_28:
    sub_1BD3789BC(v27);

    return;
  }

  if (v5 == 2)
  {
    if (v17)
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E69B80D8], v6);
      v23 = PKPassKitBundle();
      if (!v23)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v24 = v23;
      sub_1BE04B6F4();

      (*(v7 + 8))(v10, v6);
      v25 = sub_1BE052404();

      [v18 setActionTitle_];

      sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = sub_1BE0530B4();
      [v18 setActionButtonAction_];

      [v3 setShowPrimaryButton_];
      v27 = 1;
      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 != 3)
  {
    if (v17)
    {
      [v17 setActionTitle_];
      [v18 setActionButtonAction_];

      sub_1BDA1A7B8(v3, a2 & 1, v37);
      sub_1BDA1A9F4(v3, v37);
      v28 = [v3 dockView];
      if (v28)
      {
        v29 = v28;
        v35 = [v28 footerView];

        if (v35)
        {
          [v35 setSecondaryActionButton_];

          v22 = v35;
          goto LABEL_22;
        }

LABEL_42:
        __break(1u);
        return;
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

  [v17 setActionTitle_];
  [v18 setActionButtonAction_];

  sub_1BDA1A7B8(v3, a2 & 1, v37);
  v19 = [v3 dockView];
  if (!v19)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = v19;
  v21 = [v19 footerView];

  if (!v21)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v21 setSecondaryActionButton_];

LABEL_14:
  [v37 setTertiaryActionButton_];

  v22 = v37;
LABEL_22:
}

void sub_1BDA17054(uint64_t a1, int a2)
{
  LODWORD(v318) = a2;
  v319 = a1;
  v3 = sub_1BE04BAC4();
  v315 = *(v3 - 8);
  v316 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v314 = &v311 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v317 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v17, &v311 - v16);
  v19 = &v311 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v311 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v311 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v311 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v313 = &v311 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v311 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v311 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v311 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v311 - v59;
  v75.n128_f64[0] = MEMORY[0x1EEE9AC00](v61, v62);
  v76 = &v311 - v71;
  v320 = v2;
  if ((v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] & 1) == 0)
  {
    v77 = *v319;
    if (v77 <= 8)
    {
      if (v77 - 5 < 4)
      {
        LODWORD(v78) = v318;
        if (v318)
        {
          v79 = *MEMORY[0x1E69B80D8];
          v80 = v317;
          v81 = *(v317 + 104);
          v78 = v63;
          v81(v56, v79, v63, v75.n128_f64[0]);
          v82 = PKPassKitBundle();
          if (!v82)
          {
LABEL_187:
            __break(1u);
            goto LABEL_188;
          }

          v83 = v82;
          sub_1BE04B6F4();
          v319 = v84;

          v85 = *(v80 + 8);
          v85(v56, v78);
          (v81)(v52, v79, v78);
          v86 = PKPassKitBundle();
          if (!v86)
          {
LABEL_188:
            __break(1u);
            goto LABEL_189;
          }

          v87 = v86;
          v315 = sub_1BE04B6F4();
          v89 = v88;

          v85(v52, v78);
          v90 = v320;
          v320[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
          LODWORD(v78) = v318;
        }

        else
        {
          v315 = 0;
          v89 = 0;
          v319 = 0;
          v90 = v320;
          v320[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
        }

        v125 = 0;
        v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
        v103 = 7;
        v124 = 1;
LABEL_25:
        v126 = v78;
        LODWORD(v316) = v78;
        if (!v319)
        {
          goto LABEL_80;
        }

LABEL_79:
        if (v89)
        {
          goto LABEL_86;
        }

LABEL_80:
        v212 = v124;
        v213 = v78;
        LODWORD(v78) = v125;
        v214 = v126;
        v215 = v103;
        sub_1BDA197A8();
        v318 = v216;
        v218 = v217;
        if (v319)
        {

          if (v89)
          {
LABEL_82:

LABEL_85:
            v103 = v215;
            v126 = v214;
            v125 = v78;
            LOBYTE(v78) = v213;
            v124 = v212;
LABEL_86:
            v317 = v89;
            v191 = 0;
            if (v78)
            {
              v219 = v124;
              v124 = 1;
              v190 = 1;
              v192 = 1;
              if (v219 != 1)
              {
                goto LABEL_91;
              }
            }

            else
            {
              v190 = 0;
            }

            goto LABEL_90;
          }
        }

        else
        {
          v319 = sub_1BE048C84();

          if (v89)
          {
            goto LABEL_82;
          }
        }

        v315 = v318;
        v89 = v218;
        goto LABEL_85;
      }

      v91 = v72;
      v90 = v320;
      if (v77 == 4)
      {
        LOBYTE(v78) = v318;
        if (v318)
        {
          v127 = *MEMORY[0x1E69B80D8];
          v128 = v317;
          v129 = *(v317 + 104);
          v130 = v63;
          v129(&v311 - v71, v127, v63, v75.n128_f64[0]);
          v131 = PKPassKitBundle();
          if (!v131)
          {
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v132 = v131;
          v312 = sub_1BE04B6F4();
          v319 = v133;

          v134 = *(v128 + 8);
          v134(v76, v130);
          (v129)(v60, v127, v130);
          v135 = PKPassKitBundle();
          if (!v135)
          {
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          v136 = v135;
          v315 = sub_1BE04B6F4();
          v89 = v137;

          v134(v60, v130);
          LOBYTE(v78) = v318;
        }

        else
        {
          v315 = 0;
          v89 = 0;
          v319 = 0;
        }

        v125 = 0;
        v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
        v103 = 7;
        LODWORD(v316) = 1;
        v126 = v78;
        v124 = 1;
        if (!v319)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

LABEL_40:
      if ((v318 & 1) == 0)
      {
        if (*v319)
        {
          v177 = v65;
          v178 = *MEMORY[0x1E69B80D8];
          v179 = v317;
          v180 = *(v317 + 104);
          v181 = v63;
          v180(v91, v178, v63, v75);
          v182 = PKPassKitBundle();
          LODWORD(v78) = v318;
          if (!v182)
          {
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          v183 = v91;
          v184 = v182;
          v312 = sub_1BE04B6F4();
          v319 = v185;

          v186 = *(v179 + 8);
          v186(v183, v181);
          (v180)(v177, v178, v181);
          v187 = PKPassKitBundle();
          if (!v187)
          {
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          v188 = v187;
          v315 = sub_1BE04B6F4();
          v89 = v189;

          v186(v177, v181);
          v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
          v103 = 4;
          v124 = 2;
          v125 = 1;
        }

        else
        {
          v125 = 0;
          v315 = 0;
          v89 = 0;
          v319 = 0;
          v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
          if (v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard])
          {
            v124 = 2;
          }

          else
          {
            v124 = 1;
          }

          v103 = 2;
          LODWORD(v78) = v318;
        }

        goto LABEL_180;
      }

      if (v77 >= 2)
      {
        v193 = v63;
        if (v77 != 2)
        {
          v300 = v67;
          v301 = *MEMORY[0x1E69B80D8];
          v302 = v317;
          v303 = *(v317 + 104);
          v303(v35, v301, v63, v75);
          v304 = PKPassKitBundle();
          if (!v304)
          {
            goto LABEL_211;
          }

          v305 = v304;
          v312 = sub_1BE04B6F4();
          v319 = v306;

          v307 = *(v302 + 8);
          v307(v35, v193);
          v78 = v300;
          (v303)(v300, v301, v193);
          v308 = PKPassKitBundle();
          if (!v308)
          {
LABEL_213:
            __break(1u);
            return;
          }

          v309 = v308;
          v315 = sub_1BE04B6F4();
          v89 = v310;

          v307(v78, v193);
          v125 = 1;
          v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
          v103 = 4;
          v124 = 2;
          LODWORD(v78) = v318;
          goto LABEL_180;
        }

        v194 = v68;
        v195 = *MEMORY[0x1E69B80D8];
        v196 = v317;
        v197 = *(v317 + 104);
        v197(v41, v195, v63, v75);
        v198 = PKPassKitBundle();
        if (!v198)
        {
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
          goto LABEL_212;
        }

        v199 = v198;
        v312 = sub_1BE04B6F4();
        v319 = v200;

        v201 = *(v196 + 8);
        v201(v41, v193);
        v202 = v194;
        (v197)(v194, v195, v193);
        v203 = PKPassKitBundle();
        if (!v203)
        {
LABEL_212:
          __break(1u);
          goto LABEL_213;
        }

        v204 = v203;
        v315 = sub_1BE04B6F4();
        v89 = v205;

        v201(v202, v193);
        v103 = 3;
        LODWORD(v78) = v318;
      }

      else
      {
        v164 = *MEMORY[0x1E69B80D8];
        v165 = v317;
        v166 = *(v317 + 104);
        v167 = v63;
        v166(v48, v164, v63, v75);
        v168 = PKPassKitBundle();
        if (!v168)
        {
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        v169 = v168;
        v312 = sub_1BE04B6F4();
        v319 = v170;

        v171 = *(v165 + 8);
        v171(v48, v167);
        v172 = v313;
        (v166)(v313, v164, v167);
        v173 = PKPassKitBundle();
        LODWORD(v78) = v318;
        if (!v173)
        {
LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

        v174 = v173;
        v315 = sub_1BE04B6F4();
        v89 = v175;

        v171(v172, v167);
        v103 = 1;
      }

      v125 = 0;
      v124 = 1;
      v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
LABEL_180:
      v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
      goto LABEL_25;
    }

    v91 = v72;
    if (*v319 > 0xAu)
    {
      v90 = v320;
      if (v77 != 11)
      {
        if (v77 == 12)
        {
          v313 = v74;
          v104 = *MEMORY[0x1E69B80D8];
          v105 = v317;
          v106 = *(v317 + 104);
          v107 = v63;
          v108 = v69;
          v106(v69, v104, v63, v75.n128_f64[0]);
          v109 = PKPassKitBundle();
          if (!v109)
          {
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          v110 = v109;
          v312 = sub_1BE04B6F4();
          v319 = v111;

          v112 = *(v105 + 8);
          v112(v108, v107);
          v113 = sub_1BE052404();
          v114 = v314;
          sub_1BE04BC34();
          LOBYTE(v110) = sub_1BE04BAB4();
          (v315)[1](v114, v316);
          v115 = PKDeviceSpecificLocalizedStringKeyForKey(v113, v110 & 1);

          if (!v115)
          {
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

          sub_1BE052434();

          v116 = v313;
          (v106)(v313, v104, v107);
          v117 = PKPassKitBundle();
          if (!v117)
          {
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }

          v118 = v117;
          v119 = sub_1BE04B6F4();
          v317 = v120;

          v112(v116, v107);
          v121 = [v90 fieldsModel];
          if (!v121)
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          v122 = v121;
          v123 = [v121 paymentSetupFieldWithIdentifier_];

          v315 = v119;
          if (v123)
          {

            v124 = 4;
          }

          else
          {
            v124 = 3;
          }

          v126 = 0;
          v125 = 0;
          LODWORD(v316) = 0;
          v190 = 0;
          v103 = 6;
          v191 = 1;
          v192 = 1;
          if (v318)
          {
LABEL_91:
            v220 = [v90 headerView];
            if (!v220)
            {
              __break(1u);
              goto LABEL_182;
            }

            v318 = v220;
            [v220 setAccessoryViewsDisabled_];
            if (v191)
            {
              [v90 showCheckmarkAnimated_];
              v221 = sub_1BE052404();

              if (v317)
              {
                v222 = sub_1BE052404();
              }

              else
              {
                v222 = 0;
              }

              [v90 hideActivitySpinnerWithTitle:v221 subtitle:v222 animated:0];

              [v90 endUserInteraction];
              v226 = *&v90[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
              if (!v226)
              {
                goto LABEL_117;
              }

              v227 = *&v226[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
              if (!v227)
              {
                goto LABEL_117;
              }

              v228 = v103;
              v229 = v227;
              v230 = v226;
              v231 = sub_1BE04BC84();

              v232 = objc_allocWithZone(PKPassView);
              v224 = v231;
              v233 = [v232 initWithPass:v224 content:5];
              v234 = v233;
              if (v233)
              {
                v235 = [v233 pass];
                if (!v235)
                {
LABEL_190:
                  __break(1u);
                  goto LABEL_191;
                }

                v236 = v235;
                [v235 loadImageSetSync:0 preheat:1];
              }

              v237 = [v234 snapshotOfFrontFace];
              v238 = *&v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
              if (v238)
              {
                v239 = *(v238 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_cardView);
                v240 = *(v239 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
                *(v239 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = v237;
                v237 = v240;
              }

              v241 = v125;

              v242 = [objc_opt_self() sharedInstance];
              if (!v242)
              {
LABEL_189:
                __break(1u);
                goto LABEL_190;
              }

              v243 = v242;
              v244 = swift_allocObject();
              *(v244 + 16) = v90;
              v325 = sub_1BDA1B554;
              v326 = v244;
              aBlock = MEMORY[0x1E69E9820];
              v322 = 1107296256;
              v323 = sub_1BD20815C;
              v324 = &block_descriptor_63_4;
              v245 = _Block_copy(&aBlock);
              v246 = v320;
              v90 = v320;

              [v243 snapshotWithPass:v224 completion:v245];
              _Block_release(v245);

              v225 = v224;
              v103 = v228;
              v125 = v241;
LABEL_116:

LABEL_117:
              if (v103 != 7)
              {
                if (v125 != v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure])
                {
                  v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure] = v125;
                  sub_1BD6066F8(v125, 1);
                }

                v247 = *&v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
                if (v247)
                {
                  LODWORD(v319) = v191;
                  v248 = v247;
                  v249 = [v90 view];
                  if (!v249)
                  {
LABEL_185:
                    __break(1u);
                    goto LABEL_186;
                  }

                  v250 = v249;
                  v251 = v126;
                  v252 = v103;
                  [v249 setNeedsLayout];

                  v253 = [v90 view];
                  if (!v253)
                  {
LABEL_186:
                    __break(1u);
                    goto LABEL_187;
                  }

                  v254 = v253;
                  [v253 layoutIfNeeded];

                  v255 = objc_opt_self();
                  v256 = *&v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
                  v257 = swift_allocObject();
                  *(v257 + 16) = v248;
                  *(v257 + 24) = v252;
                  *(v257 + 32) = v90;
                  v325 = sub_1BD37DC1C;
                  v326 = v257;
                  aBlock = MEMORY[0x1E69E9820];
                  v322 = 1107296256;
                  v323 = sub_1BD126964;
                  v324 = &block_descriptor_240;
                  v258 = _Block_copy(&aBlock);
                  v259 = v320;
                  v260 = v248;

                  v325 = PKEdgeInsetsMake;
                  v326 = 0;
                  v90 = v320;
                  aBlock = MEMORY[0x1E69E9820];
                  v322 = 1107296256;
                  v323 = sub_1BD3F08C0;
                  v324 = &block_descriptor_57_7;
                  v261 = _Block_copy(&aBlock);
                  [v255 pkui:v256 animateUsingFactory:0 withDelay:v258 options:v261 animations:0.0 completion:?];

                  _Block_release(v261);
                  _Block_release(v258);
                  v126 = v251;
                  v191 = v319;
                }
              }

              v262 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally;
              if (v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally])
              {
                if (!(v126 & 1 | ((v192 & 1) == 0)))
                {
LABEL_132:
                  v263 = 0;
                  goto LABEL_134;
                }
              }

              else if (v126)
              {
                sub_1BD37834C();
              }

              else
              {
                [v90 setHidesBackButton:0 animated:0];
                if ((v90[v262] & 1) == 0)
                {
                  [v90 _setLeftBarButtonItems_animated_];
                }

                if (v192)
                {
                  goto LABEL_132;
                }
              }

              v263 = v191 ^ 1u;
LABEL_134:
              v264 = [v90 view];
              if (v264)
              {
                v265 = v264;
                [v264 setUserInteractionEnabled_];

                v266 = [v90 dockView];
                v267 = v266;
                if (!v263)
                {
                  if (v266)
                  {
                    [v266 setButtonsEnabled_];
                    goto LABEL_174;
                  }

                  goto LABEL_184;
                }

                if (v266)
                {
                  [v266 setButtonsEnabled_];

                  v268 = [v90 visibleFieldIdentifiers];
                  if (v268)
                  {
                    v269 = v268;
                    v270 = sub_1BE052744();
                  }

                  else
                  {
                    v270 = MEMORY[0x1E69E7CC0];
                  }

                  v271 = *(v270 + 16);
                  if (v271)
                  {
                    v272 = v270 + 40;
                    v273 = 1;
                    do
                    {
                      sub_1BE048C84();
                      v274 = sub_1BE052404();

                      v275 = [v90 fieldForIdentifier_];

                      if (v275)
                      {

                        v276 = [v275 isReadonly];
                        v277 = [v275 isOptional];
                        v278 = [v275 submissionStringMeetsAllRequirements];
                        v279 = [v275 submissionStringMeetsValidationRegex];

                        if (!v276)
                        {
                          if (v277)
                          {
                            v273 &= v279;
                          }

                          else
                          {
                            v273 &= v278;
                          }
                        }

                        v90 = v320;
                      }

                      v272 += 16;
                      --v271;
                    }

                    while (v271);
                  }

                  else
                  {
                    LOBYTE(v273) = 1;
                  }

                  [v90 _setPrimaryButtonEnabled_];
                  v280 = *&v90[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton];
                  if (!v280)
                  {
                    goto LABEL_175;
                  }

                  v267 = v280;
                  v281 = [v90 visibleFieldIdentifiers];
                  if (v281)
                  {
                    v282 = v281;
                    v283 = sub_1BE052744();
                  }

                  else
                  {
                    v283 = MEMORY[0x1E69E7CC0];
                  }

                  v284 = *(v283 + 16);
                  v316 = v283;
                  if (v284)
                  {
                    v285 = v283 + 40;
                    LODWORD(v319) = 1;
                    do
                    {
                      sub_1BE048C84();
                      v286 = sub_1BE052404();

                      v287 = [v320 fieldForIdentifier_];

                      if (v287)
                      {
                        v288 = [v287 identifier];
                        v289 = sub_1BE052434();
                        v291 = v290;

                        if (v289 == sub_1BE052434() && v291 == v292)
                        {
                        }

                        else
                        {
                          v294 = sub_1BE053B84();

                          if (v294)
                          {
                          }

                          else
                          {
                            v295 = [v287 isReadonly];
                            v296 = [v287 isOptional];
                            v297 = [v287 submissionStringMeetsAllRequirements];
                            v298 = [v287 submissionStringMeetsValidationRegex];

                            if ((v295 & 1) == 0)
                            {
                              if (v296)
                              {
                                v299 = v298 & v319;
                              }

                              else
                              {
                                v299 = v297 & v319;
                              }

                              LODWORD(v319) = v299;
                            }
                          }
                        }
                      }

                      v285 += 16;
                      --v284;
                    }

                    while (v284);
                  }

                  else
                  {
                    LODWORD(v319) = 1;
                  }

                  [v267 setEnabled_];
LABEL_174:

LABEL_175:

                  return;
                }

LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
                goto LABEL_185;
              }

LABEL_182:
              __break(1u);
              goto LABEL_183;
            }

            v223 = v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard];
            v224 = sub_1BE052404();

            if (v223 == 1)
            {
              if (v317)
              {
LABEL_97:
                v225 = sub_1BE052404();
LABEL_113:
                [v90 hideActivitySpinnerWithTitle:v224 subtitle:v225 animated:1];
                goto LABEL_116;
              }
            }

            else
            {
              if (v192)
              {
                if (v317)
                {
                  v225 = sub_1BE052404();
                }

                else
                {
                  v225 = 0;
                }

                [v90 showActivitySpinnerWithTitle:v224 subtitle:v225];
                goto LABEL_116;
              }

              if (v317)
              {
                goto LABEL_97;
              }
            }

            v225 = 0;
            goto LABEL_113;
          }

LABEL_90:
          sub_1BDA169B0(v124, 1);
          v192 = v190;
          goto LABEL_91;
        }

        goto LABEL_40;
      }

      LOBYTE(v78) = v318;
      if (v318)
      {
        v150 = v73;
        v151 = v317;
        v152 = *(v317 + 104);
        v153 = v63;
        v154 = v70;
        v152(v70, *MEMORY[0x1E69B80D8], v63, v75.n128_f64[0]);
        v155 = PKPassKitBundle();
        if (!v155)
        {
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

        v156 = v155;
        v312 = sub_1BE04B6F4();
        v319 = v157;

        v78 = *(v151 + 8);
        v158 = v154;
        v159 = v153;
        v317 = v151 + 8;
        (v78)(v158, v153);
        v160 = sub_1BE052404();
        v161 = v314;
        sub_1BE04BC34();
        v162 = sub_1BE04BAB4();
        (v315)[1](v161, v316);
        v163 = PKDeviceSpecificLocalizedStringKeyForKey(v160, v162 & 1);

        if (v163)
        {
          sub_1BE052434();
        }

        v206 = v159;
        (v152)(v150, *MEMORY[0x1E69B80D0], v159);
        v207 = PKPassKitCoreBundle();
        if (!v207)
        {
          goto LABEL_205;
        }

        v208 = v207;
        v315 = sub_1BE04B6F4();
        v89 = v209;

        (v78)(v150, v206);
        v103 = 5;
        LOBYTE(v78) = v318;
      }

      else
      {
        v315 = 0;
        v89 = 0;
        v319 = 0;
        v103 = 7;
      }

      v176 = [v90 fieldsModel];
      if (!v176)
      {
        goto LABEL_195;
      }
    }

    else
    {
      v90 = v320;
      if (v77 == 9)
      {
        LOBYTE(v78) = v318;
        if (v318)
        {
          v138 = v66;
          v139 = v317;
          v140 = *(v317 + 104);
          v141 = v63;
          v140(v25, *MEMORY[0x1E69B80D8], v63, v75.n128_f64[0]);
          v142 = PKPassKitBundle();
          if (!v142)
          {
LABEL_200:
            __break(1u);
            goto LABEL_201;
          }

          v143 = v142;
          v312 = sub_1BE04B6F4();
          v319 = v144;

          v145 = *(v139 + 8);
          v145(v25, v141);
          v146 = v138;
          (v140)(v138, *MEMORY[0x1E69B80D0], v141);
          v147 = PKPassKitCoreBundle();
          if (!v147)
          {
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          v148 = v147;
          v315 = sub_1BE04B6F4();
          v89 = v149;

          v145(v146, v141);
          v103 = 5;
        }

        else
        {
          v315 = 0;
          v89 = 0;
          v319 = 0;
          v103 = 7;
        }

        v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 1;
        v90[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 0;
        v176 = [v90 fieldsModel];
        if (!v176)
        {
          goto LABEL_194;
        }
      }

      else
      {
        if (v77 != 10)
        {
          goto LABEL_40;
        }

        LOBYTE(v78) = v318;
        if (v318)
        {
          v92 = v64;
          v93 = v317;
          v94 = *(v317 + 104);
          v95 = v63;
          v94(v19, *MEMORY[0x1E69B80D8], v63, v75.n128_f64[0]);
          v96 = PKPassKitBundle();
          if (!v96)
          {
LABEL_198:
            __break(1u);
            goto LABEL_199;
          }

          v97 = v96;
          v312 = sub_1BE04B6F4();
          v319 = v98;

          v99 = *(v93 + 8);
          v99(v19, v95);
          (v94)(v92, *MEMORY[0x1E69B80D0], v95);
          v100 = PKPassKitCoreBundle();
          if (!v100)
          {
LABEL_202:
            __break(1u);
            goto LABEL_203;
          }

          v101 = v100;
          v315 = sub_1BE04B6F4();
          v89 = v102;

          v99(v92, v95);
          v103 = 5;
        }

        else
        {
          v315 = 0;
          v89 = 0;
          v319 = 0;
          v103 = 7;
        }

        v176 = [v90 fieldsModel];
        if (!v176)
        {
          goto LABEL_193;
        }
      }
    }

    v210 = v176;
    v211 = [v176 paymentSetupFieldWithIdentifier_];

    if (v211)
    {

      v126 = 0;
      v125 = 0;
      LODWORD(v316) = 0;
      v124 = 4;
      if (!v319)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v126 = 0;
      v125 = 0;
      LODWORD(v316) = 0;
      v124 = 3;
      if (!v319)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }
}

void sub_1BDA18F9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      sub_1BD826850(v2, 0, v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
    }
  }

  if ((v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] = 1;
    v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive] = 0;
    sub_1BD3789BC(0);
    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
    if (v6)
    {
      v7 = v6;
      sub_1BD814F6C();
    }
  }
}

void sub_1BDA1911C()
{
  v1 = [v0 fieldsModel];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [v1 paymentSetupFieldWithIdentifier_];

  if (v3)
  {
    [v3 setCurrentValue_];
    sub_1BDA19220();
  }

  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 fieldsModel];
    if (v6)
    {
      v7 = v6;
      sub_1BD8145A8(v6);

      return;
    }

LABEL_11:
    __break(1u);
  }
}

id sub_1BDA19220()
{
  result = [v0 fieldsModel];
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  v2 = result;
  v3 = [result hasVisibleEditableFields];

  if (v3)
  {
    result = [v0 headerView];
    if (result)
    {
      v4 = result;
      [result setActionTitle_];
      [v4 setActionButtonAction_];

      goto LABEL_5;
    }

LABEL_47:
    __break(1u);
    return result;
  }

LABEL_5:
  v5 = [v0 visibleFieldIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052744();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    v10 = 1;
    while (1)
    {
      sub_1BE048C84();
      v11 = sub_1BE052404();

      v12 = [v0 fieldForIdentifier_];

      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = [v12 isReadonly];
      v14 = [v12 isOptional];
      v15 = [v12 submissionStringMeetsAllRequirements];
      v16 = [v12 submissionStringMeetsValidationRegex];

      if (v13)
      {
        goto LABEL_11;
      }

      if (v14)
      {
        if (v16)
        {
          goto LABEL_11;
        }
      }

      else if (v15)
      {
        goto LABEL_11;
      }

      v10 = 0;
LABEL_11:
      v9 += 16;
      if (!--v8)
      {
        goto LABEL_20;
      }
    }
  }

  v10 = 1;
LABEL_20:

  [v0 _setPrimaryButtonEnabled_];
  v17 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton];
  if (v17)
  {
    v36 = v17;
    v18 = [v0 visibleFieldIdentifiers];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE052744();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 40;
      v37 = 1;
      while (1)
      {
        sub_1BE048C84();
        v23 = sub_1BE052404();

        v24 = [v0 fieldForIdentifier_];

        if (v24)
        {
          v25 = [v24 identifier];
          v26 = sub_1BE052434();
          v28 = v27;

          if (v26 == sub_1BE052434() && v28 == v29)
          {
          }

          else
          {
            v31 = sub_1BE053B84();

            if (v31)
            {
            }

            else
            {
              v32 = [v24 isReadonly];
              v33 = [v24 isOptional];
              v34 = [v24 submissionStringMeetsAllRequirements];
              v35 = [v24 submissionStringMeetsValidationRegex];

              if ((v32 & 1) == 0)
              {
                if (v33)
                {
                  if ((v35 & 1) == 0)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v34 & 1) == 0)
                {
LABEL_40:
                  v37 = 0;
                }
              }
            }
          }
        }

        v22 += 16;
        if (!--v21)
        {
          goto LABEL_42;
        }
      }
    }

    v37 = 1;
LABEL_42:

    [v36 setEnabled_];
  }

  return [v0 noteFieldIdentifiersChanged];
}

void sub_1BDA19668()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 fieldsModel];
    if (v3)
    {
      v4 = v3;
      sub_1BD8145A8(v3);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BDA19740()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD814F6C();
  }
}

id sub_1BDA197A8()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v70 - v25;
  v32 = MEMORY[0x1EEE9AC00](v27, v28);
  v33 = &v70 - v29;
  v34 = *MEMORY[0x1E69B80D8];
  v35 = *(v3 + 104);
  if ((v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] & 1) == 0)
  {
    v42 = *MEMORY[0x1E69B80D8];
    v43 = *(v3 + 104);
    v35(&v70 - v29, v32);
    result = PKPassKitBundle();
    if (result)
    {
      v44 = result;
      v82 = sub_1BE04B6F4();

      v45 = *(v3 + 8);
      v45(v33, v2);
      v43(v26, v42, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        sub_1BE04B6F4();

        v45(v26, v2);
        return v82;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v76 = v30;
  v77 = v31;
  v80 = v34;
  v81 = v35;
  v35(v22, v32);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  v37 = result;
  v75 = v6;
  v82 = sub_1BE04B6F4();
  v79 = v38;

  v78 = *(v3 + 8);
  v78(v22, v2);
  v39 = [v1 visibleFieldIdentifiers];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1BE052744();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v83[0] = sub_1BE052434();
  v83[1] = v47;
  MEMORY[0x1EEE9AC00](v83[0], v47);
  *(&v70 - 2) = v83;
  v48 = sub_1BD2FF084(sub_1BD20DFC4, (&v70 - 4), v41);

  v49 = *(v41 + 16);

  if (!v49)
  {
    (v81)(v18, v80, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v51 = result;
      sub_1BE04B6F4();

      v78(v18, v2);
      return v82;
    }

    goto LABEL_44;
  }

  if (v48)
  {
    (v81)(v14, v80, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v50 = result;
      sub_1BE04B6F4();

      v78(v14, v2);
      return v82;
    }

    goto LABEL_45;
  }

  v52 = [v1 visibleFieldIdentifiers];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1BE052744();
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v55 = v82;
  v56 = *(v54 + 16);
  if (v56)
  {
    v72 = v3 + 8;
    v73 = v2;
    v57 = 0;
    v58 = -v56;
    v59 = v54 + 40;
    v60 = 1;
    v70 = v54 + 40;
    v71 = v54;
LABEL_21:
    v74 = v60;
    v61 = v59 + 16 * v57++;
    do
    {
      sub_1BE048C84();
      v62 = sub_1BE052404();

      v63 = [v1 fieldForIdentifier_];

      if (v63)
      {

        v64 = [v63 isReadonly];
        v65 = [v63 isOptional];
        v66 = [v63 submissionStringMeetsAllRequirements];
        v67 = [v63 submissionStringMeetsValidationRegex];

        if (!v64)
        {
          if (v65)
          {
            if ((v67 & 1) == 0)
            {
LABEL_28:
              v60 = 0;
              v59 = v70;
              if (v58 + v57)
              {
                goto LABEL_21;
              }

              v2 = v73;
              v55 = v82;
              goto LABEL_31;
            }
          }

          else if ((v66 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      ++v57;
      v61 += 16;
    }

    while (v58 + v57 != 1);

    v2 = v73;
    v55 = v82;
    if (v74)
    {
      goto LABEL_35;
    }

LABEL_31:
    if ([v1 isEmpty])
    {
      v68 = v76;
      (v81)(v76, v80, v2);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v69 = result;
    }

    else
    {
      v68 = v75;
      (v81)(v75, v80, v2);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v69 = result;
    }
  }

  else
  {

LABEL_35:
    v68 = v77;
    (v81)(v77, v80, v2);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_46;
    }

    v69 = result;
  }

  sub_1BE04B6F4();

  v78(v68, v2);
  return v55;
}