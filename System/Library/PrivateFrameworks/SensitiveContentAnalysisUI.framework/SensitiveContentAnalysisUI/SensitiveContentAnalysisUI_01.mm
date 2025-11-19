uint64_t sub_1BC653DA0()
{
  v1 = v0[19];
  v2 = v0[16];

  if (qword_1EBCDF9D8 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = sub_1BC75A4E0();
  __swift_project_value_buffer(v4, qword_1EBCDF9E0);
  v5 = v3;
  v6 = sub_1BC75A4C0();
  v7 = sub_1BC75BF60();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BC630000, v6, v7, "Failed to retrieve policy %@", v10, 0xCu);
    sub_1BC66008C(v11, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v11, -1, -1);
    MEMORY[0x1BFB27EF0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[9];
  v16 = v0[10];
  v19 = v0[7];
  v18 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BC653F90(id a1, unint64_t a2)
{
  v3 = v2;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AnalyticsUIContext(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = sub_1BC75A3B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  if (a2 >= 8)
  {
    v35 = a2;
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    (*(v13 + 104))(&v30 - v17, **(&unk_1E7FF26E0 + a2), v12);
    if ([objc_opt_self() isEnabled])
    {
      v31 = ObjectType;
      v19 = sub_1BC75BE10();
      v20 = *(*(v19 - 8) + 56);
      v30 = v11;
      v20(v11, 1, 1, v19);
      sub_1BC65F4F0(v32, v34, type metadata accessor for AnalyticsUIContext);
      (*(v13 + 16))(v16, v18, v12);
      v21 = qword_1EBCDF9D0;
      v32 = v3;
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = qword_1EBCF4440;
      v24 = sub_1BC65E9D8(&qword_1EBCDBBE8, v22, type metadata accessor for AnalyticsActor);
      v25 = (*(v33 + 80) + 40) & ~*(v33 + 80);
      v26 = (v7 + *(v13 + 80) + v25) & ~*(v13 + 80);
      v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 2) = v23;
      *(v28 + 3) = v24;
      *(v28 + 4) = v32;
      sub_1BC65D8C4(v34, &v28[v25]);
      (*(v13 + 32))(&v28[v26], v16, v12);
      *&v28[v27] = v31;

      sub_1BC652910(0, 0, v30, &unk_1BC75F158, v28);
    }

    return (*(v13 + 8))(v18, v12);
  }

  return result;
}

uint64_t sub_1BC654524(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_1BC75A1E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  (*(v10 + 104))(&v24 - v14, *MEMORY[0x1E69A9FB8], v9);
  if ([objc_opt_self() isEnabled])
  {
    v26 = ObjectType;
    v16 = sub_1BC75BE10();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_1BC65F4F0(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnalyticsUIContext);
    (*(v10 + 16))(v13, v15, v9);
    v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v8;
    if (qword_1EBCDF9D0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBCF4440;
    v19 = sub_1BC65E9D8(&qword_1EBCDBBE8, v17, type metadata accessor for AnalyticsActor);
    v20 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v21 = (v4 + *(v10 + 80) + v20) & ~*(v10 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v19;
    sub_1BC65D8C4(v24, v22 + v20);
    (*(v10 + 32))(v22 + v21, v13, v9);
    *(v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

    sub_1BC652910(0, 0, v25, &unk_1BC75F160, v22);
  }

  return (*(v10 + 8))(v15, v9);
}

void sub_1BC6548D4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AnalyticsUIContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1BC66008C(a1, &qword_1EBCDBC50, &qword_1BC762D70);
    sub_1BC65B838(a2, v8);

    sub_1BC66008C(v8, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  else
  {
    sub_1BC65D8C4(a1, v12);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1BC65C118(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t sub_1BC654A78@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBBF0, &qword_1BC75F168);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC75F0C0;
  *(v4 + 32) = *sub_1BC661E64();
  *(v4 + 40) = *sub_1BC661E7C();
  v15[0] = v4;
  sub_1BC65E6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
  sub_1BC65FF68(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
  result = sub_1BC75C1B0();
  if ((a1 & 4) != 0)
  {
    v7 = sub_1BC661EC4();
    result = sub_1BC659A70(v15, *v7);
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = sub_1BC661E94();
  result = sub_1BC659A70(v15, *v8);
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = sub_1BC661EAC();
  result = sub_1BC659A70(v15, *v9);
  if ((a1 & 0x20) == 0)
  {
LABEL_5:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = sub_1BC661F54();
  result = sub_1BC659A70(v15, *v10);
  if ((a1 & 0x40) == 0)
  {
LABEL_6:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = sub_1BC661F24();
  result = sub_1BC659A70(v15, *v11);
  if ((a1 & 0x100) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = sub_1BC661F3C();
  result = sub_1BC659A70(v15, *v12);
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v14 = sub_1BC661F0C();
    result = sub_1BC659A70(v15, *v14);
    if ((a1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  v13 = sub_1BC661EF4();
  result = sub_1BC659A70(v15, *v13);
  if ((a1 & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((a1 & 8) != 0)
  {
LABEL_10:
    v6 = sub_1BC661EDC();
    result = sub_1BC659A70(v15, *v6);
  }

LABEL_11:
  *a2 = v15[1];
  return result;
}

uint64_t sub_1BC654C64(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1BC75A3B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  (*(v12 + 104))(&v28 - v16, *MEMORY[0x1E69AA698], v11);
  if ([objc_opt_self() isEnabled])
  {
    v31 = ObjectType;
    v18 = sub_1BC75BE10();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    sub_1BC65F4F0(a1, v33, type metadata accessor for AnalyticsUIContext);
    (*(v12 + 16))(v15, v17, v11);
    v19 = qword_1EBCDF9D0;
    v29 = v2;
    v30 = v10;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_1EBCF4440;
    v22 = sub_1BC65E9D8(&qword_1EBCDBBE8, v20, type metadata accessor for AnalyticsActor);
    v23 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v24 = (v6 + *(v12 + 80) + v23) & ~*(v12 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v21;
    *(v26 + 3) = v22;
    *(v26 + 4) = v29;
    sub_1BC65D8C4(v33, &v26[v23]);
    (*(v12 + 32))(&v26[v24], v15, v11);
    *&v26[v25] = v31;

    sub_1BC652910(0, 0, v30, &unk_1BC75F178, v26);
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1BC655028()
{
  sub_1BC75A2B0();
  sub_1BC65E9D8(&qword_1EBCDBD18, 255, MEMORY[0x1E69AA2C8]);
  return sub_1BC75A2D0();
}

uint64_t sub_1BC6550CC()
{
  sub_1BC75A2C0();
  sub_1BC65E9D8(&qword_1EBCDBD10, 255, MEMORY[0x1E69AA2D8]);
  return sub_1BC75A2D0();
}

uint64_t sub_1BC655170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6551BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t sub_1BC655210()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1BC655248(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t SCUIAnalytics.ContextMap.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SCUIAnalytics.ContextMap.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SCUIAnalytics.ContextMap.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SCUIAnalytics.ContextMap.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC655380()
{
  type metadata accessor for SCUIAnalytics.ContextMap();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBDF0, &qword_1BC75F898);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1BC75C7A0();
  qword_1EBCDF9B8 = result;
  return result;
}

uint64_t sub_1BC65541C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 8)
  {
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_1E7FF26A0 + a1);
    v4 = sub_1BC75A1E0();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

id sub_1BC6554C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v26 = sub_1BC75A1E0();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnalyticsUIContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    v25 = ObjectType;
    v17 = sub_1BC75BE10();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    sub_1BC65F4F0(a1, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnalyticsUIContext);
    (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v26);
    if (qword_1EBCDF9D0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EBCF4440;
    v20 = sub_1BC65E9D8(&qword_1EBCDBBE8, v18, type metadata accessor for AnalyticsActor);
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = (v10 + *(v5 + 80) + v21) & ~*(v5 + 80);
    v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v20;
    sub_1BC65D8C4(v11, v24 + v21);
    (*(v5 + 32))(v24 + v22, v7, v26);
    *(v24 + v23) = v25;

    sub_1BC652910(0, 0, v15, &unk_1BC75F188, v24);
  }

  return result;
}

uint64_t sub_1BC655810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1BC75A2A0();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  if (qword_1EBCDF9D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBCF4440;
  v5[12] = qword_1EBCF4440;

  return MEMORY[0x1EEE6DFA0](sub_1BC655908, v9, 0);
}

uint64_t sub_1BC655908()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *(swift_task_alloc() + 16) = *(v0 + 56);
  sub_1BC75A4A0();

  *(v0 + 104) = sub_1BC75BDE0();
  *(v0 + 112) = sub_1BC75BDD0();
  v4 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC655A08, v4, v3);
}

uint64_t sub_1BC655A08()
{
  v1 = *(v0 + 112);

  if (qword_1EBCDF9A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BC655AA0, v2, 0);
}

uint64_t sub_1BC655AA0()
{
  v1 = *(v0 + 104);
  *(v0 + 120) = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC655B2C, v3, v2);
}

uint64_t sub_1BC655B2C()
{
  v1 = *(v0 + 120);

  if (qword_1EBCF4408)
  {
    sub_1BC65E764(&xmmword_1EBCF43F0, v0 + 16);
  }

  else
  {
    v2 = qword_1EBCF4410;
    v3 = unk_1EBCF4400;
    *(v0 + 16) = xmmword_1EBCF43F0;
    *(v0 + 32) = v3;
    *(v0 + 48) = v2;
  }

  v4 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BC655BCC, v4, 0);
}

uint64_t sub_1BC655BCC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  if (v0[5])
  {
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_1BC75A490();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    (*(v2 + 8))(v0[11], v0[9]);
    if (!v0[5])
    {
      goto LABEL_5;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_5:
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BC655CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDA8, &qword_1BC75F868);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43[-v6];
  v8 = sub_1BC75A250();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDB0, &qword_1BC75F870);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDB8, &qword_1BC75F878);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v43[-v17];
  v19 = sub_1BC75A1D0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDC0, &qword_1BC75F880);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v43[-v23];
  sub_1BC759920();
  sub_1BC75A280();
  v25 = type metadata accessor for AnalyticsUIContext(0);
  v26 = (a2 + v25[5]);
  v27 = *v26;
  v28 = v26[1];

  sub_1BC75A210();
  v29 = a2 + v25[7];
  if (*(v29 + 8) == 1)
  {
    goto LABEL_2;
  }

  v31 = *v29;
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v32 = MEMORY[0x1E69A9FD0];
      goto LABEL_12;
    }

    if (v31 == 4)
    {
      v32 = MEMORY[0x1E69A9FC8];
      goto LABEL_12;
    }

LABEL_2:
    v30 = sub_1BC75A200();
    (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
    goto LABEL_13;
  }

  if (v31 == 1)
  {
    v32 = MEMORY[0x1E69A9FD8];
    goto LABEL_12;
  }

  if (v31 != 2)
  {
    goto LABEL_2;
  }

  v32 = MEMORY[0x1E69A9FE0];
LABEL_12:
  v44 = *v32;
  v33 = sub_1BC75A200();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v24, v44, v33);
  (*(v34 + 56))(v24, 0, 1, v33);
LABEL_13:
  v35 = v46;
  sub_1BC75A220();
  sub_1BC6561C4(*(a2 + v25[8]));
  sub_1BC75A1F0();
  v36 = a2 + v25[9];
  if (*(v36 + 8) == 1)
  {
    v37 = sub_1BC75A170();
    (*(*(v37 - 8) + 56))(v18, 1, 1, v37);
  }

  else
  {
    sub_1BC656308(*v36, v18);
  }

  sub_1BC75A180();
  v38 = a2 + v25[6];
  sub_1BC657FD0(MEMORY[0x1E69AA010], MEMORY[0x1E69AA018], MEMORY[0x1E69AA008], MEMORY[0x1E69AA000], v14);
  sub_1BC75A290();
  v39 = a2 + v25[12];
  sub_1BC656468(v45);
  sub_1BC75A260();
  v40 = sub_1BC75A1E0();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v7, v35, v40);
  (*(v41 + 56))(v7, 0, 1, v40);
  return sub_1BC75A270();
}

uint64_t sub_1BC6561C4(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {

      return MEMORY[0x1EEE13F80]();
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_12;
      }

      return MEMORY[0x1EEE13F68]();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {

        return sub_1BC75A1B0();
      }

LABEL_12:
      sub_1BC75A1D0();
      sub_1BC65E9D8(&qword_1EBCDBC18, 255, MEMORY[0x1E69A9FA0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC20, &qword_1BC75F190);
      sub_1BC65FF68(&unk_1EBCDBC28, &qword_1EBCDBC20, &qword_1BC75F190);
      return sub_1BC75C1B0();
    }

    return sub_1BC75A1A0();
  }
}

uint64_t sub_1BC656308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69A9F90];
      goto LABEL_10;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = MEMORY[0x1E69A9F88];
        goto LABEL_10;
      case 4:
        v3 = MEMORY[0x1E69A9F98];
        goto LABEL_10;
      case 3:
        v3 = MEMORY[0x1E69A9F80];
LABEL_10:
        v4 = *v3;
        v5 = sub_1BC75A170();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_12;
    }
  }

  v10 = sub_1BC75A170();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_12:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1BC656468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75A250();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v6;
  v7 = sub_1BC759C70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BC65E9D8(&qword_1EBCDBDC8, 255, MEMORY[0x1E69A9FE8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDD0, &qword_1BC75F888);
  sub_1BC65FF68(&qword_1EBCDBDD8, &qword_1EBCDBDD0, &qword_1BC75F888);
  v30 = a1;
  v26 = v2;
  sub_1BC75C1B0();
  sub_1BC759C50();
  sub_1BC65E9D8(&qword_1EBCDBD78, 255, MEMORY[0x1E697B418]);
  v12 = sub_1BC75C170();
  v13 = *(v8 + 8);
  v13(v11, v7);
  if (v12)
  {
    v14 = v27;
    sub_1BC75A1B0();
    v15 = v28;
    sub_1BC659B38(v28, v14);
    v16 = *(v29 + 8);
    v17 = v14;
    v18 = v26;
    v16(v17, v26);
    v16(v15, v18);
  }

  sub_1BC759C20();
  v19 = sub_1BC75C170();
  result = (v13)(v11, v7);
  if (v19)
  {
    v21 = v27;
    sub_1BC75A1A0();
    v22 = v28;
    sub_1BC659B38(v28, v21);
    v23 = *(v29 + 8);
    v24 = v21;
    v25 = v26;
    v23(v24, v26);
    return (v23)(v22, v25);
  }

  return result;
}

uint64_t sub_1BC6567C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 8)
  {
    result = sub_1BC75C610();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_1E7FF26E0 + a1);
    v4 = sub_1BC75A3B0();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

id sub_1BC656874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v30 = sub_1BC75A3B0();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnalyticsUIContext(0);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    v28 = ObjectType;
    v18 = sub_1BC75BE10();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    sub_1BC65F4F0(a1, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnalyticsUIContext);
    (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v30);
    v19 = qword_1EBCDF9D0;
    v27 = v3;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_1EBCF4440;
    v22 = sub_1BC65E9D8(&qword_1EBCDBBE8, v20, type metadata accessor for AnalyticsActor);
    v23 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v24 = (v11 + *(v7 + 80) + v23) & ~*(v7 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v21;
    *(v26 + 3) = v22;
    *(v26 + 4) = v27;
    sub_1BC65D8C4(v12, &v26[v23]);
    (*(v7 + 32))(&v26[v24], v9, v30);
    *&v26[v25] = v28;

    sub_1BC652910(0, 0, v16, &unk_1BC75F198, v26);
  }

  return result;
}

uint64_t sub_1BC656BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v7 = sub_1BC75A480();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = sub_1BC7599C0();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  if (qword_1EBCDF9D0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBCF4440;
  v6[16] = qword_1EBCF4440;

  return MEMORY[0x1EEE6DFA0](sub_1BC656D60, v14, 0);
}

uint64_t sub_1BC656D60()
{
  *(v0 + 136) = sub_1BC75BDE0();
  *(v0 + 144) = sub_1BC75BDD0();
  v2 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC656DF8, v2, v1);
}

uint64_t sub_1BC656DF8()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  sub_1BC7599B0();
  sub_1BC7599A0();
  (*(v5 + 8))(v2, v4);
  v6 = sub_1BC759990();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v3, 1, v6);
  v9 = v0[15];
  if (v8 == 1)
  {
    sub_1BC66008C(v0[15], &qword_1EBCDBC10, &qword_1BC75F180);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_1BC759970();
    v11 = v12;
    (*(v7 + 8))(v9, v6);
  }

  v0[19] = v10;
  v0[20] = v11;
  v13 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1BC656F4C, v13, 0);
}

uint64_t sub_1BC656F4C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v1;
  v8[5] = v6;
  sub_1BC75A4A0();

  v0[21] = sub_1BC75BDD0();
  v10 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC657060, v10, v9);
}

uint64_t sub_1BC657060()
{
  v1 = *(v0 + 168);

  if (qword_1EBCDF9A8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BC6570F8, v2, 0);
}

uint64_t sub_1BC6570F8()
{
  v1 = *(v0 + 136);
  *(v0 + 176) = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC657184, v3, v2);
}

uint64_t sub_1BC657184()
{
  v1 = *(v0 + 176);

  if (qword_1EBCF4430)
  {
    sub_1BC65E764(&xmmword_1EBCF4418, v0 + 16);
  }

  else
  {
    v2 = qword_1EBCF4438;
    v3 = *algn_1EBCF4428;
    *(v0 + 16) = xmmword_1EBCF4418;
    *(v0 + 32) = v3;
    *(v0 + 48) = v2;
  }

  v4 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BC657224, v4, 0);
}

uint64_t sub_1BC657224()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  if (v0[5])
  {
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_1BC75A490();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    (*(v2 + 8))(v0[11], v0[9]);
    if (!v0[5])
    {
      goto LABEL_5;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_5:
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BC657320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a4;
  v93 = a5;
  v91 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD28, &qword_1BC75F808);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v83[-v8];
  v9 = sub_1BC75A3E0();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v83[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD30, &qword_1BC75F810);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v94 = &v83[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD38, &qword_1BC75F818);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v90 = &v83[-v19];
  v89 = sub_1BC75A390();
  v20 = *(v89 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD40, &qword_1BC75F820);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v88 = &v83[-v25];
  v26 = sub_1BC75A410();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v87 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD48, &qword_1BC75F828);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v83[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD50, &qword_1BC75F830);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v83[-v35];
  v37 = sub_1BC75A340();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD58, &qword_1BC75F838);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v83[-v41];
  sub_1BC759920();
  sub_1BC75A460();
  v43 = type metadata accessor for AnalyticsUIContext(0);
  v44 = (a2 + v43[5]);
  v45 = *v44;
  v46 = v44[1];

  sub_1BC75A370();
  v47 = a2 + v43[7];
  if (*(v47 + 8) == 1)
  {
    goto LABEL_2;
  }

  v49 = *v47;
  if (v49 > 2)
  {
    if (v49 == 3)
    {
      v50 = MEMORY[0x1E69AA668];
      goto LABEL_12;
    }

    if (v49 == 4)
    {
      v50 = MEMORY[0x1E69AA660];
      goto LABEL_12;
    }

LABEL_2:
    v48 = sub_1BC75A360();
    (*(*(v48 - 8) + 56))(v42, 1, 1, v48);
    goto LABEL_13;
  }

  if (v49 == 1)
  {
    v50 = MEMORY[0x1E69AA670];
    goto LABEL_12;
  }

  if (v49 != 2)
  {
    goto LABEL_2;
  }

  v50 = MEMORY[0x1E69AA678];
LABEL_12:
  v84 = *v50;
  v51 = sub_1BC75A360();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v42, v84, v51);
  (*(v52 + 56))(v42, 0, 1, v51);
LABEL_13:
  v53 = v87;
  sub_1BC75A380();
  sub_1BC657D2C(*(a2 + v43[8]));
  sub_1BC75A350();
  v54 = a2 + v43[9];
  if (*(v54 + 8) == 1)
  {
    v55 = sub_1BC75A2E0();
    (*(*(v55 - 8) + 56))(v36, 1, 1, v55);
  }

  else
  {
    sub_1BC657E70(*v54, v36);
  }

  v56 = v95;
  sub_1BC75A2F0();
  v57 = a2 + v43[6];
  sub_1BC657FD0(MEMORY[0x1E69AA708], MEMORY[0x1E69AA710], MEMORY[0x1E69AA700], MEMORY[0x1E69AA6F8], v32);
  sub_1BC75A470();
  v58 = a2 + v43[12];
  sub_1BC658268(v53);
  sub_1BC75A420();
  v59 = v43[10];
  if (*(a2 + v59) <= 1u)
  {
    if (*(a2 + v59))
    {
      v60 = MEMORY[0x1E69AA688];
    }

    else
    {
      v60 = MEMORY[0x1E69AA690];
    }

    v61 = v96;
    v63 = v88;
    v62 = v89;
    goto LABEL_23;
  }

  v61 = v96;
  v63 = v88;
  v62 = v89;
  if (*(a2 + v59) == 2)
  {
    v60 = MEMORY[0x1E69AA680];
LABEL_23:
    v64 = v86;
    (*(v20 + 104))(v86, *v60, v62);
    (*(v20 + 32))(v63, v64, v62);
    v65 = 0;
    goto LABEL_25;
  }

  v65 = 1;
LABEL_25:
  (*(v20 + 56))(v63, v65, 1, v62);
  sub_1BC75A3A0();

  sub_1BC75A450();
  v66 = sub_1BC75A3B0();
  v67 = *(v66 - 8);
  v68 = v90;
  (*(v67 + 16))(v90, v93, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
  sub_1BC75A3C0();
  v69 = AnalyticsUIContext.reportToAppleVisibility.getter();
  v70 = *(v61 + 104);
  if (v69 == 2)
  {
    v71 = v97;
    v70(v56, *MEMORY[0x1E69AA6B0], v97);
    v72 = *(v61 + 32);
  }

  else
  {
    v73 = MEMORY[0x1E69AA6C0];
    if ((v69 & 1) == 0)
    {
      v73 = MEMORY[0x1E69AA6B8];
    }

    v74 = v85;
    v71 = v97;
    v70(v85, *v73, v97);
    v72 = *(v61 + 32);
    v72(v56, v74, v71);
  }

  v75 = v94;
  v72(v94, v56, v71);
  (*(v61 + 56))(v75, 0, 1, v71);
  sub_1BC75A3D0();
  v76 = *(a2 + v43[13]);
  if (sub_1BC659008(4, v76) || sub_1BC659008(5, v76))
  {
    v77 = *MEMORY[0x1E69AA6E8];
    v78 = sub_1BC75A430();
    v79 = v98;
    (*(*(v78 - 8) + 104))(v98, v77, v78);
  }

  else
  {
    v80 = *(a2 + v59);
    v78 = sub_1BC75A430();
    v79 = v98;
    if (v80 == 3)
    {
      v81 = MEMORY[0x1E69AA6F0];
    }

    else
    {
      v81 = MEMORY[0x1E69AA6E0];
    }

    (*(*(v78 - 8) + 104))(v98, *v81, v78);
  }

  sub_1BC75A430();
  (*(*(v78 - 8) + 56))(v79, 0, 1, v78);
  return sub_1BC75A440();
}

uint64_t sub_1BC657D2C(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {

      return MEMORY[0x1EEE14F20]();
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_12;
      }

      return MEMORY[0x1EEE14F08]();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {

        return sub_1BC75A320();
      }

LABEL_12:
      sub_1BC75A340();
      sub_1BC65E9D8(&qword_1EBCDBC38, 255, MEMORY[0x1E69AA650]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC40, &unk_1BC75F1A0);
      sub_1BC65FF68(&qword_1EBCDBC48, &qword_1EBCDBC40, &unk_1BC75F1A0);
      return sub_1BC75C1B0();
    }

    return sub_1BC75A310();
  }
}

uint64_t sub_1BC657E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69AA640];
      goto LABEL_10;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = MEMORY[0x1E69AA638];
        goto LABEL_10;
      case 4:
        v3 = MEMORY[0x1E69AA648];
        goto LABEL_10;
      case 3:
        v3 = MEMORY[0x1E69AA630];
LABEL_10:
        v4 = *v3;
        v5 = sub_1BC75A2E0();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_12;
    }
  }

  v10 = sub_1BC75A2E0();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_12:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1BC657FD0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a3;
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759E40();
  sub_1BC65E9D8(&qword_1EDDCF090, 255, MEMORY[0x1E697B510]);
  v13 = sub_1BC75C170();
  v14 = *(v9 + 8);
  v14(v12, v8);
  if (v13)
  {
    v15 = *a1;
  }

  else
  {
    sub_1BC759E20();
    v16 = sub_1BC75C170();
    v14(v12, v8);
    if (v16)
    {
      v17 = v24;
    }

    else
    {
      sub_1BC759E30();
      v18 = sub_1BC75C170();
      v14(v12, v8);
      if ((v18 & 1) == 0)
      {
        v22 = a2(0);
        return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
      }

      v17 = v23;
    }

    v15 = *v17;
  }

  v19 = a2(0);
  v20 = *(v19 - 8);
  (*(v20 + 104))(a5, v15, v19);
  return (*(v20 + 56))(a5, 0, 1, v19);
}

uint64_t sub_1BC658268@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75A410();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v6;
  v7 = sub_1BC759C70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BC65E9D8(&qword_1EBCDBD60, 255, MEMORY[0x1E69AA6C8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD68, &qword_1BC75F840);
  sub_1BC65FF68(&qword_1EBCDBD70, &qword_1EBCDBD68, &qword_1BC75F840);
  v30 = a1;
  v26 = v2;
  sub_1BC75C1B0();
  sub_1BC759C50();
  sub_1BC65E9D8(&qword_1EBCDBD78, 255, MEMORY[0x1E697B418]);
  v12 = sub_1BC75C170();
  v13 = *(v8 + 8);
  v13(v11, v7);
  if (v12)
  {
    v14 = v27;
    sub_1BC75A320();
    v15 = v28;
    sub_1BC659E48(v28, v14);
    v16 = *(v29 + 8);
    v17 = v14;
    v18 = v26;
    v16(v17, v26);
    v16(v15, v18);
  }

  sub_1BC759C20();
  v19 = sub_1BC75C170();
  result = (v13)(v11, v7);
  if (v19)
  {
    v21 = v27;
    sub_1BC75A310();
    v22 = v28;
    sub_1BC659E48(v28, v21);
    v23 = *(v29 + 8);
    v24 = v21;
    v25 = v26;
    v23(v24, v26);
    return (v23)(v22, v25);
  }

  return result;
}

uint64_t AnalyticsUIContext.reportToAppleVisibility.getter()
{
  v1 = type metadata accessor for AnalyticsUIContext(0);
  v2 = *(v0 + *(v1 + 52));
  if (sub_1BC659008(4, v2) || sub_1BC659008(5, v2))
  {
    return 2;
  }

  v4 = *(v0 + *(v1 + 44));
  v6 = *sub_1BC661F24();
  sub_1BC65E6C8();
  if (sub_1BC75C170())
  {
    v7 = *sub_1BC661F54();
    v5 = sub_1BC75C170();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL AnalyticsUIContext.resourceOrigin.getter@<W0>(char *a1@<X8>)
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = *(v1 + *(v3 + 52));
  result = sub_1BC659008(4, v4);
  if (result || (result = sub_1BC659008(5, v4)))
  {
    v6 = 0;
  }

  else if (*(v1 + *(v3 + 40)) == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *a1 = v6;
  return result;
}

unint64_t sub_1BC658714()
{
  result = sub_1BC65DA54(MEMORY[0x1E69E7CC0]);
  qword_1EBCDF9C8 = result;
  return result;
}

uint64_t static SCUIAnalytics.contextMenuToOptions.getter()
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SCUIAnalytics.contextMenuToOptions.setter(uint64_t a1)
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBCDF9C8 = a1;
}

uint64_t (*static SCUIAnalytics.contextMenuToOptions.modify())()
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static SCUIAnalytics.insertNewOptionsToContextMenu(with:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v6 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = qword_1EBCDF9C8;
  qword_1EBCDF9C8 = 0x8000000000000000;
  sub_1BC65C27C(v6, a1, a2, isUniquelyReferenced_nonNull_native);

  qword_1EBCDF9C8 = v9;
  return swift_endAccess();
}

uint64_t static SCUIAnalytics.deleteAnalyticsUIContext(with:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v10 - v5;
  if (a1)
  {
    v7 = qword_1EBCDF9B0;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1BC75C7B0();
    v9 = (*(*v10[0] + 104))(v10);
    sub_1BC65B838(v8, v6);
    sub_1BC66008C(v6, &qword_1EBCDBC50, &qword_1BC762D70);
    v9(v10, 0);
  }

  return result;
}

uint64_t static SCUIAnalytics.insertContext(contextKey:context:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  if (qword_1EBCDF9B0 != -1)
  {
    swift_once();
  }

  sub_1BC75C7B0();
  v8 = v14[0];
  sub_1BC65F4F0(a2, v7, type metadata accessor for AnalyticsUIContext);
  v9 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = *(*v8 + 104);
  v11 = a1;
  v12 = v10(v14);
  sub_1BC6548D4(v7, v11);
  v12(v14, 0);
}

BOOL sub_1BC659008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_1BC65FDD4();
  }

  while ((sub_1BC75BAB0() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1BC6594A0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t, char *))
{
  v8 = v5;
  v10 = a2(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  sub_1BC75BDE0();
  sub_1BC75C200();
  v15 = [objc_allocWithZone(SCUIAnalytics) init];
  v16 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v17 = v8 + *(type metadata accessor for InterventionConfig(0) + 32);
  a4(a1);
  a5(v17 + v16, v14);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BC65966C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t), void (*a7)(char *, char *))
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  sub_1BC75BDE0();
  v16 = a1;
  sub_1BC75C200();
  v17 = [objc_allocWithZone(SCUIAnalytics) init];
  v18 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v19 = &v16[*(type metadata accessor for InterventionConfig(0) + 32)];
  a6(a3);
  a7(&v19[v18], v15);

  return (*(v12 + 8))(v15, v11);
}

uint64_t InterventionScreenModel.findAnalyticsUIContextWith(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InterventionConfig(0);
  v10 = *(a1 + *(v9 + 28));
  v21 = sub_1BC75BB60();
  v22 = v11;
  sub_1BC75C1F0();
  if (*(v10 + 16) && (v12 = sub_1BC65B7F4(v23), (v13 & 1) != 0))
  {
    sub_1BC65F494(*(v10 + 56) + 32 * v12, v24);
    sub_1BC65F440(v23);
    sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
    if (swift_dynamicCast())
    {
      v14 = v21;
      if (qword_1EBCDF9B0 != -1)
      {
        swift_once();
      }

      v15 = sub_1BC75C7B0();
      v16 = (*(*v23[0] + 88))(v15);

      if (*(v16 + 16))
      {
        v17 = sub_1BC65B738(v14);
        if (v18)
        {
          sub_1BC65F4F0(*(v16 + 56) + *(v5 + 72) * v17, v8, type metadata accessor for AnalyticsUIContext);

          return sub_1BC65D8C4(v8, a2);
        }
      }
    }
  }

  else
  {
    sub_1BC65F440(v23);
  }

  return sub_1BC65F4F0(a1 + *(v9 + 32), a2, type metadata accessor for AnalyticsUIContext);
}

BOOL sub_1BC659A70(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_1BC65E6C8();
  sub_1BC75C180();
  sub_1BC65FE28();
  v4 = sub_1BC75BAB0();
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v5 = a2;
    sub_1BC75C190();
  }

  *a1 = v5;
  return (v4 & 1) == 0;
}

uint64_t sub_1BC659B38(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDE0, &qword_1BC75F890);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v30 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = sub_1BC75A250();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - v16;
  v28 = *(v11 + 16);
  v29 = v2;
  v28(v15, v2, v10);
  v18 = MEMORY[0x1E69A9FE8];
  v27[1] = sub_1BC65E9D8(&qword_1EBCDBDC8, 255, MEMORY[0x1E69A9FE8]);
  sub_1BC75C180();
  v19 = v18;
  v20 = v4;
  sub_1BC65E9D8(&qword_1EBCDBDE8, 255, v19);
  v21 = sub_1BC75BAB0();
  v22 = *(v4 + 48);
  *v9 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v11 + 32))(&v9[v22], v17, v10);
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v23 = v28;
    v28(&v9[v22], a2, v10);
    v23(v15, a2, v10);
    sub_1BC75C190();
  }

  v24 = v30;
  sub_1BC65FFBC(v9, v30, &qword_1EBCDBDE0, &qword_1BC75F890);
  v25 = *v24;
  (*(v11 + 32))(v31, &v24[*(v20 + 48)], v10);
  return v25;
}

uint64_t sub_1BC659E48(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD80, &qword_1BC75F848);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v30 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = sub_1BC75A410();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - v16;
  v28 = *(v11 + 16);
  v29 = v2;
  v28(v15, v2, v10);
  v18 = MEMORY[0x1E69AA6C8];
  v27[1] = sub_1BC65E9D8(&qword_1EBCDBD60, 255, MEMORY[0x1E69AA6C8]);
  sub_1BC75C180();
  v19 = v18;
  v20 = v4;
  sub_1BC65E9D8(&qword_1EBCDBD88, 255, v19);
  v21 = sub_1BC75BAB0();
  v22 = *(v4 + 48);
  *v9 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v11 + 32))(&v9[v22], v17, v10);
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v23 = v28;
    v28(&v9[v22], a2, v10);
    v23(v15, a2, v10);
    sub_1BC75C190();
  }

  v24 = v30;
  sub_1BC65FFBC(v9, v30, &qword_1EBCDBD80, &qword_1BC75F848);
  v25 = *v24;
  (*(v11 + 32))(v31, &v24[*(v20 + 48)], v10);
  return v25;
}

uint64_t sub_1BC65A158()
{
  v1 = type metadata accessor for InterventionConfig.Layout(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC65F4F0(v0, v4, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_11:
        sub_1BC65FD74(v4, type metadata accessor for InterventionConfig.Layout);
        return 2;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_14:
      v7 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

      v8 = sub_1BC759D00();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 2;
    }

LABEL_15:
    sub_1BC65FD74(v4, type metadata accessor for InterventionConfig.Layout);
    return 1;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      return 1;
    }

    return 2;
  }

  sub_1BC65FD74(v4, type metadata accessor for InterventionConfig.Layout);
  return 4;
}

uint64_t sub_1BC65A310()
{
  v86 = sub_1BC759D10();
  v85 = *(v86 - 1);
  v0 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v92 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC68, &qword_1BC75F1B8);
  v2 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v82 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC70, &qword_1BC75F1C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v82 - v10;
  v11 = sub_1BC759D50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC78, &qword_1BC75F1C8);
  v15 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v96 = &v82 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v110 = &v82 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v82 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v82 - v30;
  v112 = sub_1BC759DE0();
  v107 = *(v112 - 8);
  v32 = *(v107 + 8);
  v33 = MEMORY[0x1EEE9AC00](v112);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v108 = &v82 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v82 - v38;
  v40 = type metadata accessor for InterventionConfig.Layout(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC65F4F0(v111, v43, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
      {
        sub_1BC65FD74(v43, type metadata accessor for InterventionConfig.Layout);
        return 4;
      }

      goto LABEL_21;
    }

LABEL_10:
    v46 = *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

    v47 = sub_1BC759D00();
    (*(*(v47 - 8) + 8))(v43, v47);
    return 4;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v65 = v107;
      v66 = v112;
      (*(v107 + 4))(v35, v43, v112);
      sub_1BC759DA0();
      if ((*(v12 + 48))(v22, 1, v11) != 1)
      {
        v67 = v92;
        sub_1BC759D20();
        (*(v12 + 8))(v22, v11);
        v68 = sub_1BC666CC0();
        (*(v85 + 8))(v67, v86);
        v65[1](v35, v66);
        return v68;
      }

      sub_1BC66008C(v22, &qword_1EBCDBC80, qword_1BC75F1D0);
      v65[1](v35, v66);
      return 0;
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_21:
      sub_1BC65FD74(v43, type metadata accessor for InterventionConfig.Layout);
      return 0;
    }

    goto LABEL_10;
  }

  result = *v43;
  v100 = *(*v43 + 16);
  if (!v100)
  {
LABEL_25:

    return 1;
  }

  v97 = v31;
  v48 = 0;
  v111 = result + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v102 = v107 + 16;
  v88 = (v12 + 56);
  v104 = (v12 + 48);
  v83 = (v12 + 32);
  v84 = (v12 + 8);
  v101 = (v107 + 8);
  v109 = v11;
  v87 = v29;
  v103 = result;
  while (1)
  {
    if (v48 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v49 = v112;
    v98 = *(v107 + 9);
    v106 = v48;
    v99 = *(v107 + 2);
    v99(v39, v111 + v98 * v48, v112);
    v50 = v39;
    v51 = v97;
    sub_1BC759DA0();
    sub_1BC759D30();
    (*v88)(v29, 0, 1, v11);
    v52 = *(v105 + 48);
    sub_1BC660024(v51, v17, &qword_1EBCDBC80, qword_1BC75F1D0);
    sub_1BC660024(v29, &v17[v52], &qword_1EBCDBC80, qword_1BC75F1D0);
    v53 = *v104;
    if ((*v104)(v17, 1, v11) != 1)
    {
      break;
    }

    sub_1BC66008C(v29, &qword_1EBCDBC80, qword_1BC75F1D0);
    sub_1BC66008C(v51, &qword_1EBCDBC80, qword_1BC75F1D0);
    v54 = v49;
    v55 = *v101;
    (*v101)(v50, v54);
    if (v53(&v17[v52], 1, v11) != 1)
    {
      v106 = v53;
      v107 = v55;
      goto LABEL_29;
    }

    v39 = v50;
    sub_1BC66008C(v17, &qword_1EBCDBC80, qword_1BC75F1D0);
    v29 = v87;
LABEL_13:
    v48 = v106 + 1;
    result = v103;
    if (v100 == v106 + 1)
    {
      goto LABEL_25;
    }
  }

  v39 = v50;
  v56 = v110;
  sub_1BC660024(v17, v110, &qword_1EBCDBC80, qword_1BC75F1D0);
  if (v53(&v17[v52], 1, v11) != 1)
  {
    v57 = v93;
    (*v83)(v93, &v17[v52], v11);
    sub_1BC65E9D8(&qword_1EBCDBC90, 255, MEMORY[0x1E697B4C0]);
    v58 = sub_1BC75BAB0();
    v59 = *v84;
    (*v84)(v57, v109);
    v29 = v87;
    sub_1BC66008C(v87, &qword_1EBCDBC80, qword_1BC75F1D0);
    sub_1BC66008C(v97, &qword_1EBCDBC80, qword_1BC75F1D0);
    v60 = *v101;
    (*v101)(v50, v112);
    v59(v110, v109);
    v11 = v109;
    sub_1BC66008C(v17, &qword_1EBCDBC80, qword_1BC75F1D0);
    if ((v58 & 1) == 0)
    {
      v106 = v53;
      v107 = v60;
      v61 = v86;
      v62 = v90;
      v63 = v96;
      v64 = v85;
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  v106 = v53;
  sub_1BC66008C(v87, &qword_1EBCDBC80, qword_1BC75F1D0);
  sub_1BC66008C(v97, &qword_1EBCDBC80, qword_1BC75F1D0);
  v107 = *v101;
  v107(v50, v112);
  (*v84)(v56, v11);
LABEL_29:
  v61 = v86;
  v62 = v90;
  v63 = v96;
  v64 = v85;
  sub_1BC66008C(v17, &qword_1EBCDBC78, &qword_1BC75F1C8);
LABEL_30:
  result = v103;
  v69 = 0;
  v93 = (v64 + 56);
  v110 = (v64 + 104);
  LODWORD(v105) = *MEMORY[0x1E697B498];
  v97 = (v64 + 48);
  v86 = (v64 + 32);
  v87 = (v64 + 8);
  v70 = v91;
  while (v69 < *(result + 16))
  {
    v99(v108, v111, v112);
    sub_1BC759DA0();
    v71 = v109;
    if (v106(v63, 1, v109) == 1)
    {
      sub_1BC66008C(v63, &qword_1EBCDBC80, qword_1BC75F1D0);
      v72 = 1;
    }

    else
    {
      sub_1BC759D20();
      (*v84)(v63, v71);
      v72 = 0;
    }

    v73 = *v93;
    (*v93)(v70, v72, 1, v61);
    (*v110)(v62, v105, v61);
    v73(v62, 0, 1, v61);
    v74 = v95;
    v75 = *(v94 + 48);
    sub_1BC660024(v70, v95, &qword_1EBCDBC70, &qword_1BC75F1C0);
    sub_1BC660024(v62, v74 + v75, &qword_1EBCDBC70, &qword_1BC75F1C0);
    v76 = *v97;
    if ((*v97)(v74, 1, v61) == 1)
    {
      sub_1BC66008C(v62, &qword_1EBCDBC70, &qword_1BC75F1C0);
      sub_1BC66008C(v70, &qword_1EBCDBC70, &qword_1BC75F1C0);
      v107(v108, v112);
      if (v76(v74 + v75, 1, v61) != 1)
      {
        goto LABEL_44;
      }

      sub_1BC66008C(v74, &qword_1EBCDBC70, &qword_1BC75F1C0);
      result = v103;
    }

    else
    {
      v77 = v89;
      sub_1BC660024(v74, v89, &qword_1EBCDBC70, &qword_1BC75F1C0);
      if (v76(v74 + v75, 1, v61) == 1)
      {
        sub_1BC66008C(v90, &qword_1EBCDBC70, &qword_1BC75F1C0);
        sub_1BC66008C(v91, &qword_1EBCDBC70, &qword_1BC75F1C0);
        v107(v108, v112);
        (*v87)(v77, v61);
LABEL_44:
        sub_1BC66008C(v74, &qword_1EBCDBC68, &qword_1BC75F1B8);
LABEL_45:

        return 3;
      }

      v78 = v92;
      (*v86)(v92, v74 + v75, v61);
      sub_1BC65E9D8(&qword_1EBCDBC88, 255, MEMORY[0x1E697B4B0]);
      LODWORD(v88) = sub_1BC75BAB0();
      v79 = *v87;
      (*v87)(v78, v61);
      v80 = v90;
      sub_1BC66008C(v90, &qword_1EBCDBC70, &qword_1BC75F1C0);
      v70 = v91;
      sub_1BC66008C(v91, &qword_1EBCDBC70, &qword_1BC75F1C0);
      v107(v108, v112);
      v81 = v77;
      v62 = v80;
      v79(v81, v61);
      sub_1BC66008C(v74, &qword_1EBCDBC70, &qword_1BC75F1C0);
      result = v103;
      if ((v88 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    ++v69;
    v111 += v98;
    v63 = v96;
    if (v100 == v69)
    {

      return 2;
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1BC65B290()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC65B2D8()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC65B31C()
{
  type metadata accessor for AnalyticsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EBCF4440 = v0;
  return result;
}

uint64_t sub_1BC65B358()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_1BC65B390(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1BC65B3F0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC65B42C()
{
  if (qword_1EBCDF9D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BC65B488(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnalyticsActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1BC65B4C0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCDF9E0);
  __swift_project_value_buffer(v0, qword_1EBCDF9E0);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC65B53C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC65B634;

  return v7(a1);
}

uint64_t sub_1BC65B634()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1BC65B738(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BC75C030();

  return sub_1BC65C488(a1, v5);
}

unint64_t sub_1BC65B77C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BC75C700();
  sub_1BC75BBE0();
  v6 = sub_1BC75C720();

  return sub_1BC65C55C(a1, a2, v6);
}

unint64_t sub_1BC65B7F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BC75C1D0();

  return sub_1BC65C614(a1, v5);
}

uint64_t sub_1BC65B838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BC65B738(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BC65C6DC();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for AnalyticsUIContext(0);
    v20 = *(v13 - 8);
    sub_1BC65D8C4(v12 + *(v20 + 72) * v8, a2);
    sub_1BC65BF50(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for AnalyticsUIContext(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BC65B98C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnalyticsUIContext(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBCF8, &qword_1BC75F7F8);
  v42 = a2;
  result = sub_1BC75C410();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_1BC65D8C4(v28, v9);
      }

      else
      {
        sub_1BC65F4F0(v28, v9, type metadata accessor for AnalyticsUIContext);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_1BC75C030();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1BC65D8C4(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1BC65BCAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD00, &qword_1BC75F800);
  v39 = a2;
  result = sub_1BC75C410();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1BC75C700();
      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_1BC65BF50(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BC75C1C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1BC75C030();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for AnalyticsUIContext(0) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

id sub_1BC65C118(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1BC65B738(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_1BC65C6DC();
      goto LABEL_7;
    }

    sub_1BC65B98C(v12, a3 & 1);
    v19 = *v4;
    v20 = sub_1BC65B738(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
    result = sub_1BC75C640();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for AnalyticsUIContext(0) - 8) + 72) * v9;

    return sub_1BC65FD10(a1, v17);
  }

LABEL_13:
  sub_1BC65C3F4(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_1BC65C27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BC65B77C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1BC65BCAC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1BC65B77C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1BC75C640();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1BC65C900();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1BC65C3F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AnalyticsUIContext(0);
  result = sub_1BC65D8C4(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BC65C488(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BC75C040();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BC65C55C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BC75C5E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BC65C614(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BC65FCB4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB26DC0](v9, a1);
      sub_1BC65F440(v9);
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

id sub_1BC65C6DC()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsUIContext(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBCF8, &qword_1BC75F7F8);
  v6 = *v0;
  v7 = sub_1BC75C400();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1BC65F4F0(*(v6 + 56) + v23, v5, type metadata accessor for AnalyticsUIContext);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_1BC65D8C4(v5, *(v8 + 56) + v23);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1BC65C900()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD00, &qword_1BC75F800);
  v2 = *v0;
  v3 = sub_1BC75C400();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BC65CA6C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = *(*(sub_1BC759C70() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = sub_1BC759EE0();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1BC75BDE0();
  v2[23] = sub_1BC75BDD0();
  v13 = sub_1BC75BD80();
  v2[24] = v13;
  v2[25] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BC65CC70, v13, v12);
}

uint64_t sub_1BC65CC70()
{
  sub_1BC75A030();
  v0[26] = sub_1BC75A000();
  v1 = *(MEMORY[0x1E697B5E8] + 4);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1BC65CD20;
  v3 = v0[18];

  return MEMORY[0x1EEDD8CE0](v3);
}

uint64_t sub_1BC65CD20()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = v2[25];
    v6 = sub_1BC65D3C0;
  }

  else
  {
    v7 = v2[26];

    v4 = v2[24];
    v5 = v2[25];
    v6 = sub_1BC65CE3C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC65CE3C()
{
  v59 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1BC66008C(*(v0 + 144), &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v53 = *(v0 + 80);
    v55 = *(v0 + 88);
    (*(v7 + 32))(v5, *(v0 + 144), v8);
    (*(v7 + 16))(v6, v5, v8);
    *(v0 + 56) = MEMORY[0x1E69E7CC0];
    v57 = 1;
    sub_1BC65E6C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC65FF68(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC75C1B0();
    v58 = *(v0 + 48);
    sub_1BC759C20();
    sub_1BC664670(v6, &unk_1F3B27DC8, 2, 0, v53, 0, 1, &v57, v9, &v58, v10);
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(v0 + 88);
      v14 = qword_1EBCDF9B0;
      swift_unknownObjectRetain();
      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_1BC75C7B0();
      v16 = (*(**(v0 + 64) + 88))(v15);

      if (*(v16 + 16) && (v17 = sub_1BC65B738(v12), (v18 & 1) != 0))
      {
        v19 = *(v0 + 176);
        v20 = *(v0 + 152);
        v21 = *(v0 + 160);
        v23 = *(v0 + 128);
        v22 = *(v0 + 136);
        v24 = *(v0 + 120);
        v25 = *(v0 + 104);
        v26 = *(v0 + 88);
        sub_1BC65F4F0(*(v16 + 56) + *(v23 + 72) * v17, v25, type metadata accessor for AnalyticsUIContext);
        swift_unknownObjectRelease();
        sub_1BC65FD74(v22, type metadata accessor for AnalyticsUIContext);
        (*(v21 + 8))(v19, v20);

        (*(v23 + 56))(v25, 0, 1, v24);
        sub_1BC66008C(v25, &qword_1EBCDBC50, &qword_1BC762D70);
      }

      else
      {
        v52 = *(v0 + 160);
        v54 = *(v0 + 152);
        v56 = *(v0 + 176);
        v27 = *(v0 + 128);
        v28 = *(v0 + 136);
        v29 = *(v0 + 120);
        v31 = *(v0 + 96);
        v30 = *(v0 + 104);
        v51 = *(v0 + 88);

        v32 = *(v27 + 56);
        v32(v30, 1, 1, v29);
        sub_1BC66008C(v30, &qword_1EBCDBC50, &qword_1BC762D70);
        sub_1BC75C7B0();
        v33 = *(v0 + 72);
        sub_1BC65F4F0(v28, v31, type metadata accessor for AnalyticsUIContext);
        v32(v31, 0, 1, v29);
        v34 = *(*v33 + 104);
        swift_unknownObjectRetain();
        v35 = v34(v0 + 16);
        sub_1BC6548D4(v31, v12);
        v35(v0 + 16, 0);

        v36 = [objc_allocWithZone(SCUIAnalytics) init];
        sub_1BC654524(v28);

        swift_unknownObjectRelease();
        sub_1BC65FD74(v28, type metadata accessor for AnalyticsUIContext);
        (*(v52 + 8))(v56, v54);
      }
    }

    else
    {
      v37 = *(v0 + 176);
      v38 = *(v0 + 152);
      v39 = *(v0 + 160);
      v40 = *(v0 + 136);
      v41 = [objc_allocWithZone(SCUIAnalytics) init];
      sub_1BC654524(v40);

      sub_1BC65FD74(v40, type metadata accessor for AnalyticsUIContext);
      (*(v39 + 8))(v37, v38);
    }
  }

  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);
  v47 = *(v0 + 104);
  v46 = *(v0 + 112);
  v48 = *(v0 + 96);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1BC65D3C0()
{
  v1 = v0[26];
  v2 = v0[23];

  if (qword_1EBCDF9D8 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v4 = sub_1BC75A4E0();
  __swift_project_value_buffer(v4, qword_1EBCDF9E0);
  v5 = v3;
  v6 = sub_1BC75A4C0();
  v7 = sub_1BC75BF60();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BC630000, v6, v7, "Failed to retrieve policy %@", v10, 0xCu);
    sub_1BC66008C(v11, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v11, -1, -1);
    MEMORY[0x1BFB27EF0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[21];
  v14 = v0[22];
  v17 = v0[17];
  v16 = v0[18];
  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BC65D5BC()
{
  v0 = sub_1BC75A1E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v14 = result;
    v15 = qword_1EBCDF9B0;
    swift_unknownObjectRetain();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1BC75C7B0();
    v17 = (*(*v21[1] + 88))(v16);

    if (*(v17 + 16) && (v18 = sub_1BC65B738(v14), (v19 & 1) != 0))
    {
      sub_1BC65F4F0(*(v17 + 56) + *(v6 + 72) * v18, v10, type metadata accessor for AnalyticsUIContext);

      sub_1BC65D8C4(v10, v12);
      v20 = [objc_allocWithZone(SCUIAnalytics) init];
      (*(v1 + 104))(v4, *MEMORY[0x1E69A9FB0], v0);
      sub_1BC6554C8(v12, v4);

      swift_unknownObjectRelease();
      (*(v1 + 8))(v4, v0);
      return sub_1BC65FD74(v12, type metadata accessor for AnalyticsUIContext);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BC65D8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC65D928()
{
  v2 = *(type metadata accessor for AnalyticsUIContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1BC75A1E0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC660280;

  return sub_1BC655810(v7, v8, v9, v0 + v3, v0 + v6);
}

unint64_t sub_1BC65DA54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD00, &qword_1BC75F800);
    v3 = sub_1BC75C420();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BC65B77C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC65DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 128) = a4;
  *(v6 + 136) = a6;
  *(v6 + 272) = a5;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70) - 8) + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v8 = *(*(sub_1BC759C70() - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v9 = type metadata accessor for AnalyticsUIContext(0);
  *(v6 + 160) = v9;
  v10 = *(v9 - 8);
  *(v6 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850) - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v13 = sub_1BC759EE0();
  *(v6 + 192) = v13;
  v14 = *(v13 - 8);
  *(v6 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  sub_1BC75BDE0();
  *(v6 + 224) = sub_1BC75BDD0();
  v17 = sub_1BC75BD80();
  *(v6 + 232) = v17;
  *(v6 + 240) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1BC65DD5C, v17, v16);
}

uint64_t sub_1BC65DD5C()
{
  sub_1BC75A030();
  v0[31] = sub_1BC75A000();
  v1 = *(MEMORY[0x1E697B5E8] + 4);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_1BC65DE0C;
  v3 = v0[23];

  return MEMORY[0x1EEDD8CE0](v3);
}

uint64_t sub_1BC65DE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[29];
    v5 = v2[30];
    v6 = sub_1BC65E3AC;
  }

  else
  {
    v7 = v2[31];

    v4 = v2[29];
    v5 = v2[30];
    v6 = sub_1BC65DF28;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC65DF28()
{
  v50 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1BC66008C(*(v0 + 184), &unk_1EBCDBD90, &unk_1BC75F850);
    goto LABEL_18;
  }

  v5 = *(v0 + 128);
  (*(*(v0 + 200) + 32))(*(v0 + 216), *(v0 + 184), *(v0 + 192));
  if (v5)
  {
    v6 = *(v0 + 128);
    goto LABEL_13;
  }

  *(v0 + 96) = *(v0 + 136);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDA0, &qword_1BC75F860);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    if (qword_1EBCDF9C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = qword_1EBCDF9C8;
    if (*(qword_1EBCDF9C8 + 16))
    {
      v10 = sub_1BC65B77C(v8, v7);
      if (v11)
      {
        v6 = *(*(v9 + 56) + 8 * v10);
        swift_endAccess();
        v12 = v6;

        LOWORD(v6) = [v12 integerValue];

        goto LABEL_13;
      }
    }

    swift_endAccess();
  }

  LOWORD(v6) = 0;
LABEL_13:
  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 272);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  (*(*(v0 + 200) + 16))(v13, *(v0 + 216), *(v0 + 192));
  v48 = v17;
  sub_1BC654A78(v6, &v49);
  sub_1BC759C20();
  sub_1BC664670(v13, &unk_1F3B27DF0, v18, 0, v20, v19, 0, &v48, v14, &v49, v15);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = *(v0 + 136);
    v24 = qword_1EBCDF9B0;
    swift_unknownObjectRetain();
    if (v24 != -1)
    {
      swift_once();
      v44 = *(v0 + 136);
    }

    v45 = *(v0 + 200);
    v46 = *(v0 + 192);
    v47 = *(v0 + 216);
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    v27 = *(v0 + 160);
    v28 = *(v0 + 144);
    sub_1BC75C7B0();
    v29 = *(v0 + 88);
    sub_1BC65F4F0(v26, v28, type metadata accessor for AnalyticsUIContext);
    (*(v25 + 56))(v28, 0, 1, v27);
    v30 = *(*v29 + 104);
    swift_unknownObjectRetain();
    v31 = v30(v0 + 16);
    sub_1BC6548D4(v28, v22);
    v31(v0 + 16, 0);

    v32 = [objc_allocWithZone(SCUIAnalytics) init];
    sub_1BC654C64(v26);

    swift_unknownObjectRelease();
    sub_1BC65FD74(v26, type metadata accessor for AnalyticsUIContext);
    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v33 = *(v0 + 216);
    v34 = *(v0 + 192);
    v35 = *(v0 + 200);
    sub_1BC65FD74(*(v0 + 176), type metadata accessor for AnalyticsUIContext);
    (*(v35 + 8))(v33, v34);
  }

LABEL_18:
  v37 = *(v0 + 208);
  v36 = *(v0 + 216);
  v39 = *(v0 + 176);
  v38 = *(v0 + 184);
  v41 = *(v0 + 144);
  v40 = *(v0 + 152);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1BC65E3AC()
{
  v1 = v0[31];
  v2 = v0[28];

  if (qword_1EBCDF9D8 != -1)
  {
    swift_once();
  }

  v3 = v0[33];
  v4 = sub_1BC75A4E0();
  __swift_project_value_buffer(v4, qword_1EBCDF9E0);
  v5 = v3;
  v6 = sub_1BC75A4C0();
  v7 = sub_1BC75BF60();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BC630000, v6, v7, "Failed to retrieve policy %@", v10, 0xCu);
    sub_1BC66008C(v11, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v11, -1, -1);
    MEMORY[0x1BFB27EF0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[26];
  v14 = v0[27];
  v17 = v0[22];
  v16 = v0[23];
  v19 = v0[18];
  v18 = v0[19];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BC65E59C()
{
  v2 = *(type metadata accessor for AnalyticsUIContext(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1BC75A3B0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC660280;

  return sub_1BC656BD4(v7, v8, v9, v10, v0 + v3, v0 + v6);
}

unint64_t sub_1BC65E6C8()
{
  result = qword_1EBCDBBF8;
  if (!qword_1EBCDBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBBF8);
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

uint64_t sub_1BC65E764(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for AnalyticsUIContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BC75A1E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  v13 = sub_1BC759940();
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = *(v0 + v3 + v1[7] + 8);

  v15 = v1[8];
  v16 = sub_1BC759EE0();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);
  v17 = v1[14];
  v18 = sub_1BC759C70();
  (*(*(v18 - 8) + 8))(v12 + v17, v18);
  v19 = *(v12 + v1[15]);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1BC65E9D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for AnalyticsUIContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BC75A3B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();

  v12 = v0 + v3;
  v13 = sub_1BC759940();
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = *(v0 + v3 + v1[7] + 8);

  v15 = v1[8];
  v16 = sub_1BC759EE0();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);
  v17 = v1[14];
  v18 = sub_1BC759C70();
  (*(*(v18 - 8) + 8))(v12 + v17, v18);
  v19 = *(v12 + v1[15]);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1BC65EC38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE21getAnalyticsUIContext4withAC0G14ContextWrapperCSgSDys11AnyHashableVypGSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for AnalyticsUIContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  if (a1)
  {
    v29 = sub_1BC75BB60();
    v30 = v17;
    sub_1BC75C1F0();
    if (*(a1 + 16) && (v18 = sub_1BC65B7F4(v31), (v19 & 1) != 0))
    {
      sub_1BC65F494(*(a1 + 56) + 32 * v18, v32);
      sub_1BC65F440(v31);
      sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
      if (swift_dynamicCast())
      {
        v20 = v29;
        if (qword_1EBCDF9B0 != -1)
        {
          swift_once();
        }

        v21 = sub_1BC75C7B0();
        v22 = (*(*v31[0] + 88))(v21);

        if (*(v22 + 16))
        {
          v23 = sub_1BC65B738(v20);
          if (v24)
          {
            sub_1BC65F4F0(*(v22 + 56) + *(v7 + 72) * v23, v14, type metadata accessor for AnalyticsUIContext);

            sub_1BC65D8C4(v14, v16);
            sub_1BC75C7B0();
            v25 = (*(*v31[0] + 104))(v31);
            sub_1BC65B838(v20, v5);
            sub_1BC66008C(v5, &qword_1EBCDBC50, &qword_1BC762D70);
            v25(v31, 0);

            type metadata accessor for AnalyticsContextWrapper(0);
            sub_1BC65F4F0(v16, v11, type metadata accessor for AnalyticsUIContext);
            v26 = AnalyticsContextWrapper.__allocating_init(context:)(v11);

            sub_1BC65FD74(v16, type metadata accessor for AnalyticsUIContext);
            return v26;
          }
        }
      }
    }

    else
    {
      sub_1BC65F440(v31);
    }
  }

  return 0;
}

void _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE27insertNewAnalyticsUIContext4With23analyticsContextWrapperySo8NSObjectCSg_AC0hlM0CSgtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  if (a1 && a2)
  {
    v8 = qword_1EBCDF9B0;
    v9 = a1;
    v10 = a2;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_1BC75C7B0();
    v11 = v16[0];
    v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x58);
    v13 = v9;
    v12();
    v14 = type metadata accessor for AnalyticsUIContext(0);
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    v15 = (*(*v11 + 104))(v16);
    sub_1BC6548D4(v7, v13);
    v15(v16, 0);
  }
}

uint64_t _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE33getAnalyticsUIContextByIdentifier10identifierAC0G14ContextWrapperCSgSo9NSCopying_So14NSSecureCodingSo8NSObjectp_tFZ_0()
{
  v0 = type metadata accessor for AnalyticsUIContext(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v19 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v12 = result;
    v13 = qword_1EBCDF9B0;
    swift_unknownObjectRetain();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_1BC75C7B0();
    v15 = (*(*v19[1] + 88))(v14);

    if (*(v15 + 16) && (v16 = sub_1BC65B738(v12), (v17 & 1) != 0))
    {
      sub_1BC65F4F0(*(v15 + 56) + *(v1 + 72) * v16, v8, type metadata accessor for AnalyticsUIContext);

      sub_1BC65D8C4(v8, v10);
      type metadata accessor for AnalyticsContextWrapper(0);
      sub_1BC65F4F0(v10, v5, type metadata accessor for AnalyticsUIContext);
      v18 = AnalyticsContextWrapper.__allocating_init(context:)(v5);
      swift_unknownObjectRelease();
      sub_1BC65FD74(v10, type metadata accessor for AnalyticsUIContext);
      return v18;
    }

    else
    {

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC65F494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BC65F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC65F55C()
{
  result = qword_1EBCDBC98;
  if (!qword_1EBCDBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBC98);
  }

  return result;
}

unint64_t sub_1BC65F5B4()
{
  result = qword_1EBCDBCA0;
  if (!qword_1EBCDBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBCA0);
  }

  return result;
}

uint64_t sub_1BC65F664(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BC65FA38()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6536D4(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BC65FB14()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1BC660280;

  return sub_1BC653230(v8, v9, v10, v11, v2, v3, v4, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC65FC1C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6524FC(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_1BC65FD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC65FD74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC65FDD4()
{
  result = qword_1EBCDBD08;
  if (!qword_1EBCDBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBD08);
  }

  return result;
}

unint64_t sub_1BC65FE28()
{
  result = qword_1EBCDBD20;
  if (!qword_1EBCDBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBD20);
  }

  return result;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BC65FF68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BC65FFBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BC660024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BC66008C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BC6600EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BC660280;

  return sub_1BC65B53C(a1, v5);
}

uint64_t sub_1BC6601A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BC65281C;

  return sub_1BC65B53C(a1, v5);
}

uint64_t sub_1BC6602E0(uint64_t a1)
{
  v2 = sub_1BC6611F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC66031C(uint64_t a1)
{
  v2 = sub_1BC6611F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC660358()
{
  v1 = *v0;
  v2 = 0x6974634172657375;
  v3 = 0x76697469736E6573;
  if (v1 != 6)
  {
    v3 = 7367028;
  }

  if (*v0 <= 5u)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x654D6E6F69746361;
  if (v1 != 2)
  {
    v4 = 0x646C65696873;
  }

  if (*v0)
  {
    v2 = 0x4D747865746E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC660468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC66A8D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC66049C(uint64_t a1)
{
  v2 = sub_1BC661000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6604D8(uint64_t a1)
{
  v2 = sub_1BC661000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC660514(uint64_t a1)
{
  v2 = sub_1BC66124C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC660550(uint64_t a1)
{
  v2 = sub_1BC66124C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC66058C(uint64_t a1)
{
  v2 = sub_1BC661150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6605C8(uint64_t a1)
{
  v2 = sub_1BC661150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC660604(uint64_t a1)
{
  v2 = sub_1BC6610FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC660640(uint64_t a1)
{
  v2 = sub_1BC6610FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC66067C(uint64_t a1)
{
  v2 = sub_1BC6610A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6606B8(uint64_t a1)
{
  v2 = sub_1BC6610A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6606F4(uint64_t a1)
{
  v2 = sub_1BC6611A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC660730(uint64_t a1)
{
  v2 = sub_1BC6611A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC66076C(uint64_t a1)
{
  v2 = sub_1BC661054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC6607A8(uint64_t a1)
{
  v2 = sub_1BC661054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6607E4(uint64_t a1)
{
  v2 = sub_1BC6612A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC660820(uint64_t a1)
{
  v2 = sub_1BC6612A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnalyticsUIContext.Step.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE60, &qword_1BC75F918);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE68, &qword_1BC75F920);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE70, &qword_1BC75F928);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE78, &qword_1BC75F930);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE80, &qword_1BC75F938);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE88, &qword_1BC75F940);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v43 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE90, &qword_1BC75F948);
  v44 = *(v45 - 8);
  v21 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE98, &qword_1BC75F950);
  v43 = *(v24 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEA0, &qword_1BC75F958);
  v28 = *(v64 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v30 = *v1;
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_1BC661000();
  sub_1BC75C740();
  v36 = (v28 + 8);
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 == 6)
      {
        v71 = 6;
        sub_1BC6610A8();
        v38 = v58;
        v37 = v64;
        sub_1BC75C4E0();
        v40 = v59;
        v39 = v60;
      }

      else
      {
        v72 = 7;
        sub_1BC661054();
        v38 = v61;
        v37 = v64;
        sub_1BC75C4E0();
        v40 = v62;
        v39 = v63;
      }
    }

    else if (v30 == 4)
    {
      v69 = 4;
      sub_1BC661150();
      v38 = v52;
      v37 = v64;
      sub_1BC75C4E0();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v70 = 5;
      sub_1BC6610FC();
      v38 = v55;
      v37 = v64;
      sub_1BC75C4E0();
      v40 = v56;
      v39 = v57;
    }

    goto LABEL_16;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v67 = 2;
      sub_1BC6611F8();
      v38 = v46;
      v37 = v64;
      sub_1BC75C4E0();
      v40 = v47;
      v39 = v48;
    }

    else
    {
      v68 = 3;
      sub_1BC6611A4();
      v38 = v49;
      v37 = v64;
      sub_1BC75C4E0();
      v40 = v50;
      v39 = v51;
    }

LABEL_16:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v35, v37);
  }

  if (v30)
  {
    v66 = 1;
    sub_1BC66124C();
    v41 = v64;
    sub_1BC75C4E0();
    (*(v44 + 8))(v23, v45);
    return (*v36)(v35, v41);
  }

  v65 = 0;
  sub_1BC6612A0();
  v37 = v64;
  sub_1BC75C4E0();
  (*(v43 + 8))(v27, v24);
  return (*v36)(v35, v37);
}

unint64_t sub_1BC661000()
{
  result = qword_1EBCE0410;
  if (!qword_1EBCE0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0410);
  }

  return result;
}

unint64_t sub_1BC661054()
{
  result = qword_1EBCE0418;
  if (!qword_1EBCE0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0418);
  }

  return result;
}

unint64_t sub_1BC6610A8()
{
  result = qword_1EBCE0420;
  if (!qword_1EBCE0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0420);
  }

  return result;
}

unint64_t sub_1BC6610FC()
{
  result = qword_1EBCE0428;
  if (!qword_1EBCE0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0428);
  }

  return result;
}

unint64_t sub_1BC661150()
{
  result = qword_1EBCE0430;
  if (!qword_1EBCE0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0430);
  }

  return result;
}

unint64_t sub_1BC6611A4()
{
  result = qword_1EBCE0438;
  if (!qword_1EBCE0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0438);
  }

  return result;
}

unint64_t sub_1BC6611F8()
{
  result = qword_1EBCE0440;
  if (!qword_1EBCE0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0440);
  }

  return result;
}

unint64_t sub_1BC66124C()
{
  result = qword_1EBCE0448;
  if (!qword_1EBCE0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0448);
  }

  return result;
}

unint64_t sub_1BC6612A0()
{
  result = qword_1EBCE0450;
  if (!qword_1EBCE0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0450);
  }

  return result;
}

uint64_t AnalyticsUIContext.Step.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEA8, &qword_1BC75F960);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v62[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEB0, &qword_1BC75F968);
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v62[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEB8, &qword_1BC75F970);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v62[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEC0, &qword_1BC75F978);
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v62[-v15];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEC8, &qword_1BC75F980);
  v73 = *(v71 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v83 = &v62[-v17];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBED0, &qword_1BC75F988);
  v72 = *(v68 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v82 = &v62[-v19];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBED8, &qword_1BC75F990);
  v69 = *(v70 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v22 = &v62[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEE0, &qword_1BC75F998);
  v67 = *(v23 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEE8, &unk_1BC75F9A0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v62[-v30];
  v32 = a1[3];
  v33 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1BC661000();
  v34 = v89;
  sub_1BC75C730();
  if (!v34)
  {
    v64 = v23;
    v36 = v86;
    v35 = v87;
    v89 = v28;
    v37 = v88;
    v66 = v27;
    v65 = v31;
    v38 = sub_1BC75C4D0();
    if (*(v38 + 16) == 1)
    {
      v39 = *(v38 + 32);
      if (v39 != 8)
      {
        v63 = *(v38 + 32);
        if (v39 > 3)
        {
          v50 = v66;
          v51 = v65;
          if (v39 > 5)
          {
            v56 = v89;
            if (v39 == 6)
            {
              v97 = 6;
              sub_1BC6610A8();
              sub_1BC75C450();
              (*(v78 + 8))(v35, v79);
            }

            else
            {
              v98 = 7;
              sub_1BC661054();
              v61 = v85;
              sub_1BC75C450();
              (*(v80 + 8))(v61, v81);
            }

            (*(v56 + 8))(v51, v50);
            swift_unknownObjectRelease();
            v40 = v37;
            goto LABEL_25;
          }

          v40 = v37;
          v52 = v89;
          if (v39 == 4)
          {
            v95 = 4;
            sub_1BC661150();
            sub_1BC75C450();
            (*(v75 + 8))(v36, v74);
          }

          else
          {
            v96 = 5;
            sub_1BC6610FC();
            v59 = v84;
            sub_1BC75C450();
            (*(v76 + 8))(v59, v77);
          }

          (*(v52 + 8))(v51, v50);
        }

        else
        {
          if (v39 > 1)
          {
            if (v39 == 2)
            {
              v93 = 2;
              sub_1BC6611F8();
              v53 = v82;
              v54 = v66;
              v55 = v65;
              sub_1BC75C450();
              (*(v72 + 8))(v53, v68);
            }

            else
            {
              v94 = 3;
              sub_1BC6611A4();
              v60 = v83;
              v54 = v66;
              v55 = v65;
              sub_1BC75C450();
              (*(v73 + 8))(v60, v71);
            }

            (*(v89 + 8))(v55, v54);
            swift_unknownObjectRelease();
            v40 = v37;
            goto LABEL_25;
          }

          v40 = v37;
          if (v39)
          {
            v92 = 1;
            sub_1BC66124C();
            v57 = v66;
            v58 = v65;
            sub_1BC75C450();
            (*(v69 + 8))(v22, v70);
            (*(v89 + 8))(v58, v57);
          }

          else
          {
            v91 = 0;
            sub_1BC6612A0();
            v41 = v66;
            v42 = v65;
            sub_1BC75C450();
            (*(v67 + 8))(v26, v64);
            (*(v89 + 8))(v42, v41);
          }
        }

        swift_unknownObjectRelease();
LABEL_25:
        *v40 = v63;
        return __swift_destroy_boxed_opaque_existential_1(v90);
      }
    }

    v43 = sub_1BC75C300();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
    *v45 = &type metadata for AnalyticsUIContext.Step;
    v47 = v66;
    v48 = v65;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v89 + 8))(v48, v47);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t sub_1BC662014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1BC66206C()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0x696C707041746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_1BC6620C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC66AB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6620E8(uint64_t a1)
{
  v2 = sub_1BC662634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC662124(uint64_t a1)
{
  v2 = sub_1BC662634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC662160(uint64_t a1)
{
  v2 = sub_1BC6626DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC66219C(uint64_t a1)
{
  v2 = sub_1BC6626DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC6621D8(uint64_t a1)
{
  v2 = sub_1BC662688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC662214(uint64_t a1)
{
  v2 = sub_1BC662688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC662250(uint64_t a1)
{
  v2 = sub_1BC662730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC66228C(uint64_t a1)
{
  v2 = sub_1BC662730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnalyticsUIContext.UserOptedToShow.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF8, &qword_1BC75F9B0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF00, &qword_1BC75F9B8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF08, &qword_1BC75F9C0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF10, &qword_1BC75F9C8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC662634();
  sub_1BC75C740();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1BC6626DC();
      v12 = v26;
      sub_1BC75C4E0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1BC662688();
      v12 = v29;
      sub_1BC75C4E0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1BC662730();
    sub_1BC75C4E0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1BC662634()
{
  result = qword_1EBCE0458;
  if (!qword_1EBCE0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0458);
  }

  return result;
}

unint64_t sub_1BC662688()
{
  result = qword_1EBCE0460;
  if (!qword_1EBCE0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0460);
  }

  return result;
}

unint64_t sub_1BC6626DC()
{
  result = qword_1EBCE0468;
  if (!qword_1EBCE0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0468);
  }

  return result;
}

unint64_t sub_1BC662730()
{
  result = qword_1EBCE0470;
  if (!qword_1EBCE0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0470);
  }

  return result;
}

uint64_t AnalyticsUIContext.UserOptedToShow.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF18, &qword_1BC75F9D0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF20, &qword_1BC75F9D8);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF28, &qword_1BC75F9E0);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF30, &qword_1BC75F9E8);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC662634();
  v18 = v49;
  sub_1BC75C730();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_1BC75C4D0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_1BC6626DC();
          v33 = v40;
          sub_1BC75C450();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_1BC662688();
          v37 = v40;
          sub_1BC75C450();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_1BC662730();
        v35 = v40;
        sub_1BC75C450();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_1BC75C300();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
  *v28 = &type metadata for AnalyticsUIContext.UserOptedToShow;
  sub_1BC75C460();
  sub_1BC75C2F0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1BC662D88@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1BC662DC4(uint64_t a1)
{
  v2 = sub_1BC663454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC662E00(uint64_t a1)
{
  v2 = sub_1BC663454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC662E3C()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x6C6172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65767265746E69;
  }
}

uint64_t sub_1BC662EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC66AC9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC662ED8(uint64_t a1)
{
  v2 = sub_1BC6633AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC662F14(uint64_t a1)
{
  v2 = sub_1BC6633AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC662F50(uint64_t a1)
{
  v2 = sub_1BC663400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC662F8C(uint64_t a1)
{
  v2 = sub_1BC663400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC662FC8(uint64_t a1)
{
  v2 = sub_1BC6634A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC663004(uint64_t a1)
{
  v2 = sub_1BC6634A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnalyticsUIContext.ResourceOrigin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF38, &qword_1BC75F9F0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF40, &qword_1BC75F9F8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF48, &qword_1BC75FA00);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF50, &qword_1BC75FA08);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6633AC();
  sub_1BC75C740();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1BC663454();
      v12 = v26;
      sub_1BC75C4E0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1BC663400();
      v12 = v29;
      sub_1BC75C4E0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1BC6634A8();
    sub_1BC75C4E0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1BC6633AC()
{
  result = qword_1EBCE0478;
  if (!qword_1EBCE0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0478);
  }

  return result;
}

unint64_t sub_1BC663400()
{
  result = qword_1EBCE0480;
  if (!qword_1EBCE0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0480);
  }

  return result;
}

unint64_t sub_1BC663454()
{
  result = qword_1EBCE0488;
  if (!qword_1EBCE0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0488);
  }

  return result;
}

unint64_t sub_1BC6634A8()
{
  result = qword_1EBCE0490;
  if (!qword_1EBCE0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0490);
  }

  return result;
}

uint64_t sub_1BC66352C()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t AnalyticsUIContext.ResourceOrigin.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF58, &qword_1BC75FA10);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF60, &qword_1BC75FA18);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF68, &qword_1BC75FA20);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF70, &qword_1BC75FA28);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6633AC();
  v18 = v49;
  sub_1BC75C730();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_1BC75C4D0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_1BC663454();
          v33 = v40;
          sub_1BC75C450();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_1BC663400();
          v37 = v40;
          sub_1BC75C450();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_1BC6634A8();
        v35 = v40;
        sub_1BC75C450();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_1BC75C300();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
  *v28 = &type metadata for AnalyticsUIContext.ResourceOrigin;
  sub_1BC75C460();
  sub_1BC75C2F0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t AnalyticsUIContext.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759940();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnalyticsUIContext.direction.getter()
{
  v1 = (v0 + *(type metadata accessor for AnalyticsUIContext(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AnalyticsUIContext.subContentType.getter()
{
  v1 = (v0 + *(type metadata accessor for AnalyticsUIContext(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AnalyticsUIContext.userOptedToShow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnalyticsUIContext(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AnalyticsUIContext.harms.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnalyticsUIContext(0) + 48);
  v4 = sub_1BC759C70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BC663D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a3;
  v87 = a5;
  v90 = sub_1BC759C70();
  v86 = *(v90 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759D10();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v72 - v14;
  v75 = sub_1BC759D50();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s6LayoutV4ModeOMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BC759C40();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - v28;
  v30 = sub_1BC759EE0();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v84 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v33;
  v34 = *(v33 + 16);
  v89 = a1;
  v80 = v35;
  v82 = v34;
  v83 = v33 + 16;
  v34();
  v94 = a2;
  sub_1BC759C90();
  sub_1BC759C30();
  v92 = sub_1BC668C58(&qword_1EBCDBF78, MEMORY[0x1E697B3F0]);
  v81 = sub_1BC75C170();
  v36 = *(v23 + 8);
  v36(v27, v22);
  v36(v29, v22);
  v88 = a4;
  sub_1BC668F10(a4, v21, _s6LayoutV4ModeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v38 = &unk_1EBCDBF88;
      v39 = &unk_1BC75FA38;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v38 = &qword_1EBCDBF80;
      v39 = &qword_1BC75FA30;
LABEL_11:
      v50 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) + 48)];

      v51 = sub_1BC759FE0();
      (*(*(v51 - 8) + 8))(v21, v51);
LABEL_13:
      v79 = 4;
      goto LABEL_19;
    }

LABEL_9:
    sub_1BC6689C4(v21, _s6LayoutV4ModeOMa);
    v79 = 0;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC6689C4(v21, _s6LayoutV4ModeOMa);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_9;
  }

  v73 = v15;
  v40 = *(v15 + 32);
  v41 = v75;
  v40(v79, v21, v75);
  v42 = v74;
  sub_1BC759D20();
  v43 = v76;
  v44 = v77;
  v45 = v78;
  (*(v76 + 16))(v78, v42, v77);
  v46 = (*(v43 + 88))(v45, v44);
  v47 = v42;
  v48 = v73;
  if (v46 == *MEMORY[0x1E697B4A0])
  {
    goto LABEL_8;
  }

  if (v46 == *MEMORY[0x1E697B4A8])
  {
    goto LABEL_15;
  }

  if (v46 == *MEMORY[0x1E697B488])
  {
    (*(v43 + 8))(v47, v44);
    (*(v48 + 8))(v79, v41);
    v49 = 3;
    goto LABEL_18;
  }

  if (v46 == *MEMORY[0x1E697B498])
  {
LABEL_15:
    (*(v43 + 8))(v47, v44);
    (*(v48 + 8))(v79, v41);
    v49 = 2;
    goto LABEL_18;
  }

  if (v46 == *MEMORY[0x1E697B490])
  {
LABEL_8:
    (*(v43 + 8))(v47, v44);
    (*(v48 + 8))(v79, v41);
    v49 = 1;
LABEL_18:
    v79 = v49;
    goto LABEL_19;
  }

  v71 = *(v43 + 8);
  v71(v47, v44);
  (*(v73 + 8))(v79, v41);
  v71(v78, v44);
  v79 = 0;
LABEL_19:
  sub_1BC759C90();
  sub_1BC759C20();
  v52 = sub_1BC75C170();
  v36(v27, v22);
  v36(v29, v22);
  sub_1BC759BA0();
  v53 = [objc_opt_self() mainBundle];
  v54 = [v53 bundleIdentifier];

  if (v54)
  {
    v92 = sub_1BC75BB60();
    v77 = v55;
  }

  else
  {
    v92 = 0;
    v77 = 0;
  }

  LODWORD(v78) = (v52 & 1) == 0;
  if (v81)
  {
    v56 = 1;
  }

  else
  {
    v56 = 2;
  }

  v57 = type metadata accessor for AnalyticsUIContext(0);
  v58 = v87;
  v59 = v84;
  v60 = v80;
  (v82)(v87 + v57[6], v84, v80);
  v61 = v86;
  v62 = v93;
  v63 = v90;
  (*(v86 + 16))(v58 + v57[12], v93, v90);
  sub_1BC759930();
  sub_1BC6689C4(v88, _s6LayoutV4ModeOMa);
  v64 = sub_1BC759CA0();
  (*(*(v64 - 8) + 8))(v94, v64);
  v65 = *(v85 + 8);
  v65(v89, v60);
  (*(v61 + 8))(v62, v63);
  result = (v65)(v59, v60);
  v67 = (v58 + v57[5]);
  v68 = v77;
  *v67 = v92;
  v67[1] = v68;
  *(v58 + v57[13]) = v91;
  v69 = v58 + v57[7];
  *v69 = v56;
  *(v69 + 8) = 0;
  *(v58 + v57[8]) = v79;
  v70 = v58 + v57[9];
  *v70 = 0;
  *(v70 + 8) = 1;
  *(v58 + v57[10]) = v78;
  *(v58 + v57[11]) = 0;
  return result;
}

uint64_t sub_1BC664670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v32 = *a8;
  v33 = *a10;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v28 = sub_1BC75BB60();
    v16 = v15;
  }

  else
  {
    v28 = 0;
    v16 = 0;
  }

  v17 = type metadata accessor for AnalyticsUIContext(0);
  v18 = v17[6];
  v19 = sub_1BC759EE0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a9 + v18, a1, v19);
  v21 = v17[12];
  v22 = sub_1BC759C70();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a9 + v21, a11, v22);
  sub_1BC759930();
  (*(v23 + 8))(a11, v22);
  result = (*(v20 + 8))(a1, v19);
  v25 = (a9 + v17[5]);
  *v25 = v28;
  v25[1] = v16;
  *(a9 + v17[13]) = a2;
  v26 = a9 + v17[7];
  *v26 = a3;
  *(v26 + 8) = a4 & 1;
  *(a9 + v17[8]) = a5;
  v27 = a9 + v17[9];
  *v27 = a6;
  *(v27 + 8) = a7 & 1;
  *(a9 + v17[10]) = v32;
  *(a9 + v17[11]) = v33;
  return result;
}

uint64_t sub_1BC6648A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v35 = sub_1BC759C70();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759EE0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v12[2];
  v34 = a1;
  v30 = v16;
  v16(v15, a1, v11);
  v32 = sub_1BC65A158();
  v33 = a3;
  v31 = sub_1BC65A310();
  sub_1BC759C20();
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v29 = sub_1BC75BB60();
    v20 = v19;
  }

  else
  {
    v29 = 0;
    v20 = 0;
  }

  v21 = type metadata accessor for AnalyticsUIContext(0);
  v30(a4 + v21[6], v15, v11);
  v22 = v35;
  (*(v7 + 16))(a4 + v21[12], v10, v35);
  sub_1BC759930();
  sub_1BC6689C4(v33, type metadata accessor for InterventionConfig.Layout);
  v23 = v12[1];
  v23(v34, v11);
  (*(v7 + 8))(v10, v22);
  result = (v23)(v15, v11);
  v25 = (a4 + v21[5]);
  *v25 = v29;
  v25[1] = v20;
  *(a4 + v21[13]) = v36;
  v26 = a4 + v21[7];
  v27 = v31;
  *v26 = v32;
  *(v26 + 8) = 0;
  *(a4 + v21[8]) = v27;
  v28 = a4 + v21[9];
  *v28 = 0;
  *(v28 + 8) = 1;
  *(a4 + v21[10]) = 3;
  *(a4 + v21[11]) = 0;
  return result;
}

uint64_t sub_1BC664BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC759C70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnalyticsUIContext(0);
  v15 = v14[6];
  v48 = v10;
  v16 = *(v10 + 16);
  v50 = v9;
  v40 = v16;
  v16(v13, (a1 + v15), v9);
  v17 = *(a1 + v14[13]);
  v18 = a1 + v14[7];
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(a1 + v14[8]);
  v46 = v19;
  v47 = v21;
  v22 = v14[10];
  v23 = a1 + v14[9];
  v43 = *v23;
  v42 = *(v23 + 8);
  v44 = *(a1 + v22);
  v45 = v20;
  v24 = v14[12];
  v41 = *(a1 + v14[11]);
  v51 = v8;
  v52 = v5;
  v25 = *(v5 + 16);
  v53 = v4;
  v25(v8, a1 + v24, v4);
  v26 = objc_opt_self();
  v49 = v17;

  v27 = [v26 mainBundle];
  v28 = [v27 bundleIdentifier];

  if (v28)
  {
    v29 = sub_1BC75BB60();
    v39 = v30;
  }

  else
  {
    v29 = 0;
    v39 = 0;
  }

  v31 = v50;
  v40(a2 + v14[6], v13, v50);
  v32 = v51;
  v33 = v53;
  v25((a2 + v14[12]), v51, v53);
  sub_1BC759930();
  sub_1BC6689C4(a1, type metadata accessor for AnalyticsUIContext);
  (*(v52 + 8))(v32, v33);
  result = (*(v48 + 8))(v13, v31);
  v35 = (a2 + v14[5]);
  v36 = v39;
  *v35 = v29;
  v35[1] = v36;
  *(a2 + v14[13]) = v49;
  v37 = a2 + v14[7];
  *v37 = v46;
  *(v37 + 8) = v45;
  *(a2 + v14[8]) = v47;
  v38 = a2 + v14[9];
  *v38 = v43;
  *(v38 + 8) = v42;
  *(a2 + v14[10]) = v44;
  *(a2 + v14[11]) = v41;
  return result;
}

uint64_t AnalyticsUIContext.init(bundleID:policy:path:direction:contentType:subContentType:userOptedToShow:options:harms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11, uint64_t *a12, uint64_t a13)
{
  v20 = *a11;
  v31 = *a12;
  sub_1BC759930();
  v21 = type metadata accessor for AnalyticsUIContext(0);
  v22 = (a9 + v21[5]);
  *v22 = a1;
  v22[1] = a2;
  v23 = v21[6];
  v24 = sub_1BC759EE0();
  (*(*(v24 - 8) + 32))(a9 + v23, a3, v24);
  *(a9 + v21[13]) = a4;
  v25 = a9 + v21[7];
  *v25 = a5;
  *(v25 + 8) = a6 & 1;
  *(a9 + v21[8]) = a7;
  v26 = a9 + v21[9];
  *v26 = a8;
  *(v26 + 8) = a10 & 1;
  *(a9 + v21[10]) = v20;
  *(a9 + v21[11]) = v31;
  v27 = v21[12];
  v28 = sub_1BC759C70();
  v29 = *(*(v28 - 8) + 32);

  return v29(a9 + v27, a13, v28);
}

uint64_t sub_1BC665098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v7 = sub_1BC759C70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC759EE0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1E69E7CC0];
  v39 = v7;
  v37 = v8;
  if (a2 == 1)
  {
    v36 = 0;
    v41 = &unk_1F3B280C8;
    v17 = 1;
    goto LABEL_5;
  }

  if (!a2)
  {
    sub_1BC668A24(&unk_1F3B280A0);
    v36 = 0;
    v17 = 2;
LABEL_5:
    v35 = v17;
    goto LABEL_7;
  }

  v35 = 0;
  v36 = 1;
LABEL_7:
  v18 = v13[2];
  v38 = a1;
  v18(v16, a1, v12);
  v33 = v41;
  v34 = sub_1BC65A310();
  sub_1BC759C20();
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (v20)
  {
    v32 = sub_1BC75BB60();
    v22 = v21;
  }

  else
  {
    v32 = 0;
    v22 = 0;
  }

  v23 = type metadata accessor for AnalyticsUIContext(0);
  v18((a4 + v23[6]), v16, v12);
  v24 = v37;
  v25 = v39;
  (*(v37 + 16))(a4 + v23[12], v11, v39);
  sub_1BC759930();
  sub_1BC6689C4(v40, type metadata accessor for InterventionConfig.Layout);
  v26 = v13[1];
  v26(v38, v12);
  (*(v24 + 8))(v11, v25);
  result = (v26)(v16, v12);
  v28 = (a4 + v23[5]);
  v29 = v33;
  *v28 = v32;
  v28[1] = v22;
  *(a4 + v23[13]) = v29;
  v30 = a4 + v23[7];
  *v30 = v35;
  *(v30 + 8) = v36;
  *(a4 + v23[8]) = v34;
  v31 = a4 + v23[9];
  *v31 = 0;
  *(v31 + 8) = 1;
  *(a4 + v23[10]) = 3;
  *(a4 + v23[11]) = 0;
  return result;
}

uint64_t sub_1BC665400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a1;
  v9 = sub_1BC759C70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC759EE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v51 = v16;
    v18 = sub_1BC75C3F0();
    v16 = v51;
  }

  else
  {
    v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v9;
  v57 = a4;
  v54 = v16;
  v55 = v10;
  v52 = a2;
  if (v18)
  {
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1BFB26EB0](v20, a3);
        }

        else
        {
          v21 = *(a3 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = [v21 actionID];

        if (v23 > 5)
        {
          if (v23 <= 7)
          {
            if (v23 == 6)
            {
              if ((v19 & 0x20) != 0)
              {
                goto LABEL_7;
              }

              v24 = 32;
            }

            else
            {
              if ((v19 & 0x40) != 0)
              {
                goto LABEL_7;
              }

              v24 = 64;
            }
          }

          else if (v23 == 8)
          {
            if ((v19 & 0x100) != 0)
            {
              goto LABEL_7;
            }

            v24 = 256;
          }

          else if (v23 == 9)
          {
            if ((v19 & 0x80) != 0)
            {
              goto LABEL_7;
            }

            v24 = 128;
          }

          else
          {
            if (v23 != 10 || (v19 & 0x200) != 0)
            {
              goto LABEL_7;
            }

            v24 = 512;
          }
        }

        else if (v23 <= 2)
        {
          if (v23 == 1)
          {
            if (v19)
            {
              goto LABEL_7;
            }

            v24 = 1;
          }

          else
          {
            if (v23 != 2 || (v19 & 2) != 0)
            {
              goto LABEL_7;
            }

            v24 = 2;
          }
        }

        else if (v23 == 3)
        {
          if ((v19 & 0x10) != 0)
          {
            goto LABEL_7;
          }

          v24 = 16;
        }

        else if (v23 == 4)
        {
          if ((v19 & 4) != 0)
          {
            goto LABEL_7;
          }

          v24 = 4;
        }

        else
        {
          if ((v19 & 8) != 0)
          {
            goto LABEL_7;
          }

          v24 = 8;
        }

        v19 |= v24;
LABEL_7:
        if (v18 == ++v20)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v19 = 0;
LABEL_43:
  v25 = v57;
  if (v57)
  {
    v26 = *((*MEMORY[0x1E69E7D40] & *v57) + 0x58);
    v27 = v57;
    v28 = v26();

    v29 = v52;
    if (v28)
    {
      if (v28 != 1)
      {
LABEL_62:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF90, &qword_1BC75FA40);
        result = sub_1BC75C5D0();
        __break(1u);
        return result;
      }

      v19 |= 0x100uLL;
    }

    else
    {

      v19 |= 0x400uLL;
    }

    v25 = v57;
    v30 = v53;
    if (v29 == 2)
    {
      goto LABEL_52;
    }
  }

  else
  {

    v29 = v52;
    v30 = v53;
    if (v52 == 2)
    {
      goto LABEL_52;
    }
  }

  if (v29 == 1)
  {
LABEL_52:
    v31 = sub_1BC668B10(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1BC668B10((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v57 = v31;
    v31[v33 + 32] = v29;
    goto LABEL_56;
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_56:
  sub_1BC6E53B4(v30);
  sub_1BC759C20();
  v34 = [objc_opt_self() mainBundle];
  v35 = [v34 bundleIdentifier];

  if (v35)
  {
    v36 = sub_1BC75BB60();
    v52 = v37;
    v53 = v36;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v38 = type metadata accessor for AnalyticsUIContext(0);
  v39 = v14;
  v40 = *(v14 + 16);
  v41 = v58;
  v42 = v54;
  v40(a5 + v38[6], v58, v54);
  v44 = v55;
  v43 = v56;
  v45 = v59;
  (*(v55 + 16))(a5 + v38[12], v59, v56);
  sub_1BC759930();

  (*(v44 + 8))(v45, v43);
  result = (*(v39 + 8))(v41, v42);
  v47 = (a5 + v38[5]);
  v48 = v52;
  *v47 = v53;
  v47[1] = v48;
  *(a5 + v38[13]) = v57;
  v49 = a5 + v38[7];
  *v49 = 2;
  *(v49 + 8) = 0;
  *(a5 + v38[8]) = 8;
  v50 = a5 + v38[9];
  *v50 = 0;
  *(v50 + 8) = 1;
  *(a5 + v38[10]) = 3;
  *(a5 + v38[11]) = v19;
  return result;
}

uint64_t sub_1BC665984(char *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for AnalyticsUIContext(0) + 52);
  v4 = *(v1 + v3);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BC668B10(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1BC668B10((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = v2;
  *(v1 + v3) = v4;
  return result;
}

void sub_1BC665A48(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  a2(v2, a1);
}

void sub_1BC665AC0()
{
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC654524(v0);
}

uint64_t sub_1BC665B20(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736E6F6974706FLL;
    v6 = 0x736D726168;
    if (a1 != 8)
    {
      v6 = 1752457584;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65746E6F43627573;
    if (a1 != 5)
    {
      v7 = 0x6574704F72657375;
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
    v1 = 25705;
    v2 = 0x7963696C6F70;
    v3 = 0x6F69746365726964;
    if (a1 != 3)
    {
      v3 = 0x54746E65746E6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4449656C646E7562;
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

uint64_t sub_1BC665CAC()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC665CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC66ADC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC665D2C(uint64_t a1)
{
  v2 = sub_1BC668C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC665D68(uint64_t a1)
{
  v2 = sub_1BC668C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnalyticsUIContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF98, &qword_1BC75FA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC668C04();
  sub_1BC75C740();
  LOBYTE(v24) = 0;
  sub_1BC759940();
  sub_1BC668C58(&qword_1EBCDBFA0, MEMORY[0x1E69695A8]);
  sub_1BC75C560();
  if (!v2)
  {
    v11 = type metadata accessor for AnalyticsUIContext(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v24) = 1;
    sub_1BC75C500();
    v15 = v11[6];
    LOBYTE(v24) = 2;
    sub_1BC759EE0();
    sub_1BC668C58(&qword_1EBCDBFA8, MEMORY[0x1E697B510]);
    sub_1BC75C560();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v24 = v17;
    v25 = v16;
    v23 = 3;
    type metadata accessor for SCUIAnalyticsDirection(0);
    sub_1BC668C58(&qword_1EBCDBFB0, type metadata accessor for SCUIAnalyticsDirection);
    sub_1BC75C520();
    v24 = *(v3 + v11[8]);
    v23 = 4;
    type metadata accessor for SCUIAnalyticsContentType(0);
    sub_1BC668C58(&qword_1EBCDBFB8, type metadata accessor for SCUIAnalyticsContentType);
    sub_1BC75C560();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    v24 = v19;
    v25 = v18;
    v23 = 5;
    type metadata accessor for SCUIAnalyticsSubContentType(0);
    sub_1BC668C58(&qword_1EBCDBFC0, type metadata accessor for SCUIAnalyticsSubContentType);
    sub_1BC75C520();
    LOBYTE(v24) = *(v3 + v11[10]);
    v23 = 6;
    sub_1BC668CA0();
    sub_1BC75C520();
    v24 = *(v3 + v11[11]);
    v23 = 7;
    sub_1BC668CF4();
    sub_1BC75C560();
    v20 = v11[12];
    LOBYTE(v24) = 8;
    sub_1BC759C70();
    sub_1BC668C58(&qword_1EBCDBFD8, MEMORY[0x1E697B418]);
    sub_1BC75C560();
    v24 = *(v3 + v11[13]);
    v23 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBFE0, &qword_1BC75FA50);
    sub_1BC668E44(&qword_1EBCDBFE8, sub_1BC668D48);
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AnalyticsUIContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1BC759C70();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BC759EE0();
  v49 = *(v45 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759940();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBFF8, &qword_1BC75FA58);
  v50 = *(v52 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v15 = v41 - v14;
  v16 = type metadata accessor for AnalyticsUIContext(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC668C04();
  v53 = v15;
  v21 = v54;
  sub_1BC75C730();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v9;
  v23 = v50;
  v42 = v16;
  v54 = v19;
  v24 = a1;
  LOBYTE(v55) = 0;
  sub_1BC668C58(&qword_1EBCDC000, MEMORY[0x1E69695A8]);
  v25 = v51;
  sub_1BC75C4C0();
  v26 = *(v46 + 32);
  v27 = v54;
  v51 = v10;
  v26(v54, v25);
  LOBYTE(v55) = 1;
  v28 = sub_1BC75C470();
  v29 = &v27[v42[5]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v55) = 2;
  sub_1BC668C58(&qword_1EBCDC008, MEMORY[0x1E697B510]);
  v31 = v45;
  v41[2] = 0;
  sub_1BC75C4C0();
  v41[1] = v24;
  (*(v49 + 32))(&v27[v42[6]], v22, v31);
  type metadata accessor for SCUIAnalyticsDirection(0);
  v57 = 3;
  sub_1BC668C58(&qword_1EBCDC010, type metadata accessor for SCUIAnalyticsDirection);
  sub_1BC75C490();
  v32 = v56;
  v33 = &v27[v42[7]];
  *v33 = v55;
  v33[8] = v32;
  type metadata accessor for SCUIAnalyticsContentType(0);
  v57 = 4;
  sub_1BC668C58(&qword_1EBCDC018, type metadata accessor for SCUIAnalyticsContentType);
  sub_1BC75C4C0();
  *&v27[v42[8]] = v55;
  type metadata accessor for SCUIAnalyticsSubContentType(0);
  v57 = 5;
  sub_1BC668C58(&qword_1EBCDC020, type metadata accessor for SCUIAnalyticsSubContentType);
  sub_1BC75C490();
  v34 = v56;
  v35 = &v27[v42[9]];
  *v35 = v55;
  v35[8] = v34;
  v57 = 6;
  sub_1BC668D9C();
  sub_1BC75C490();
  v27[v42[10]] = v55;
  v57 = 7;
  sub_1BC668DF0();
  sub_1BC75C4C0();
  *&v54[v42[11]] = v55;
  LOBYTE(v55) = 8;
  sub_1BC668C58(&qword_1EBCDC038, MEMORY[0x1E697B418]);
  v36 = v44;
  v37 = v47;
  sub_1BC75C4C0();
  (*(v48 + 32))(&v54[v42[12]], v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBFE0, &qword_1BC75FA50);
  v57 = 9;
  sub_1BC668E44(&qword_1EBCDC040, sub_1BC668EBC);
  sub_1BC75C4C0();
  (*(v23 + 8))(v53, v52);
  v38 = v54;
  v39 = v43;
  *&v54[v42[13]] = v55;
  sub_1BC668F10(v38, v39, type metadata accessor for AnalyticsUIContext);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1BC6689C4(v38, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC666CC0()
{
  v1 = v0;
  v2 = sub_1BC759D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697B4A0])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E697B4A8])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E697B488])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E697B498])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E697B490])
  {
    return 1;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_1BC666E8C(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC668F10(a1, v7, type metadata accessor for AnalyticsUIContext);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x60))(v7);
}

uint64_t sub_1BC666F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SCUIAnalyticsContextWrapper_context;
  swift_beginAccess();
  return sub_1BC668F10(v1 + v3, a1, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC666FC8(uint64_t a1)
{
  v3 = OBJC_IVAR___SCUIAnalyticsContextWrapper_context;
  swift_beginAccess();
  sub_1BC65FD10(a1, v1 + v3);
  return swift_endAccess();
}

id AnalyticsContextWrapper.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BC668F10(a1, v3 + OBJC_IVAR___SCUIAnalyticsContextWrapper_context, type metadata accessor for AnalyticsUIContext);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1BC6689C4(a1, type metadata accessor for AnalyticsUIContext);
  return v4;
}

id AnalyticsContextWrapper.init(context:)(uint64_t a1)
{
  sub_1BC668F10(a1, v1 + OBJC_IVAR___SCUIAnalyticsContextWrapper_context, type metadata accessor for AnalyticsUIContext);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnalyticsContextWrapper(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1BC6689C4(a1, type metadata accessor for AnalyticsUIContext);
  return v3;
}

uint64_t AnalyticsContextWrapper.__allocating_init(interventionType:menuType:actions:authority:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = type metadata accessor for AnalyticsUIContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v4);
  ObjectType = swift_getObjectType();
  v15 = a4;
  sub_1BC665400(a1, a2, a3, a4, v12);
  v16 = (*(ObjectType + 112))(v12);

  v17 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t AnalyticsContextWrapper.init(interventionType:menuType:actions:authority:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for AnalyticsUIContext(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v15 = a4;
  sub_1BC665400(a1, a2, a3, a4, v13);
  v16 = (*(ObjectType + 112))(v13);

  v17 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t AnalyticsContextWrapper.__allocating_init(interventionType:menuType:actions:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = sub_1BC759C70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnalyticsUIContext(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v3);
  result = swift_getObjectType();
  if (a3 >> 62)
  {
    v49 = result;
    v19 = sub_1BC75C3F0();
    result = v49;
  }

  else
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v5;
  v56 = v17;
  v57 = v6;
  v54 = v9;
  v55 = result;
  v53 = v10;
  if (!v19)
  {
    v20 = 0;
LABEL_43:

    if (v51 == 2)
    {
      v26 = 2;
    }

    else
    {
      if (v51 != 1)
      {
        v28 = MEMORY[0x1E69E7CC0];
        v27 = v50;
LABEL_51:
        sub_1BC6E53B4(v52);
        sub_1BC759C20();
        v31 = [objc_opt_self() mainBundle];
        v32 = [v31 bundleIdentifier];

        v33 = v57;
        if (v32)
        {
          v34 = sub_1BC75BB60();
          v51 = v35;
          v52 = v34;
        }

        else
        {
          v51 = 0;
          v52 = 0;
        }

        v37 = v53;
        v36 = v54;
        v38 = &v16[v13[6]];
        v39 = v16;
        v40 = v58;
        (*(v53 + 16))(v38, v58, v54);
        v41 = v59;
        (*(v33 + 16))(&v39[v13[12]], v59, v27);
        sub_1BC759930();
        (*(v33 + 8))(v41, v27);
        (*(v37 + 8))(v40, v36);
        v42 = &v39[v13[5]];
        v43 = v51;
        *v42 = v52;
        *(v42 + 1) = v43;
        *&v39[v13[13]] = v28;
        v44 = &v39[v13[7]];
        *v44 = 2;
        v44[8] = 0;
        *&v39[v13[8]] = 8;
        v45 = &v39[v13[9]];
        *v45 = 0;
        v45[8] = 1;
        v39[v13[10]] = 3;
        *&v39[v13[11]] = v20;
        v46 = (*(v55 + 112))(v39);
        v47 = *((*MEMORY[0x1E69E7D40] & *v56) + 0x30);
        v48 = *((*MEMORY[0x1E69E7D40] & *v56) + 0x34);
        swift_deallocPartialClassInstance();
        return v46;
      }

      v26 = 1;
    }

    v27 = v50;
    v28 = sub_1BC668B10(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1BC668B10((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v28[v30 + 32] = v26;
    goto LABEL_51;
  }

  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1BFB26EB0](v21, a3);
      }

      else
      {
        v22 = *(a3 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 actionID];

      if (v24 > 5)
      {
        if (v24 <= 7)
        {
          if (v24 == 6)
          {
            if ((v20 & 0x20) != 0)
            {
              goto LABEL_7;
            }

            v25 = 32;
          }

          else
          {
            if ((v20 & 0x40) != 0)
            {
              goto LABEL_7;
            }

            v25 = 64;
          }
        }

        else if (v24 == 8)
        {
          if ((v20 & 0x100) != 0)
          {
            goto LABEL_7;
          }

          v25 = 256;
        }

        else if (v24 == 9)
        {
          if ((v20 & 0x80) != 0)
          {
            goto LABEL_7;
          }

          v25 = 128;
        }

        else
        {
          if (v24 != 10 || (v20 & 0x200) != 0)
          {
            goto LABEL_7;
          }

          v25 = 512;
        }
      }

      else if (v24 <= 2)
      {
        if (v24 == 1)
        {
          if (v20)
          {
            goto LABEL_7;
          }

          v25 = 1;
        }

        else
        {
          if (v24 != 2 || (v20 & 2) != 0)
          {
            goto LABEL_7;
          }

          v25 = 2;
        }
      }

      else if (v24 == 3)
      {
        if ((v20 & 0x10) != 0)
        {
          goto LABEL_7;
        }

        v25 = 16;
      }

      else if (v24 == 4)
      {
        if ((v20 & 4) != 0)
        {
          goto LABEL_7;
        }

        v25 = 4;
      }

      else
      {
        if ((v20 & 8) != 0)
        {
          goto LABEL_7;
        }

        v25 = 8;
      }

      v20 |= v25;
LABEL_7:
      if (v19 == ++v21)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalyticsContextWrapper.init(interventionType:menuType:actions:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v49 = a2;
  v6 = sub_1BC759C70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759EE0();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AnalyticsUIContext(0);
  v14 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_getObjectType();
  if (a3 >> 62)
  {
    v48 = result;
    v18 = sub_1BC75C3F0();
    result = v48;
  }

  else
  {
    v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v6;
  v57 = v3;
  v54 = result;
  v55 = v7;
  v53 = v10;
  v50 = a1;
  if (!v18)
  {
    v19 = 0;
LABEL_43:

    if (v49 == 2)
    {
      v26 = 2;
      v25 = v13;
    }

    else
    {
      v25 = v13;
      if (v49 != 1)
      {
        v27 = MEMORY[0x1E69E7CC0];
LABEL_51:
        sub_1BC6E53B4(v50);
        sub_1BC759C20();
        v30 = [objc_opt_self() mainBundle];
        v31 = [v30 bundleIdentifier];

        v32 = v56;
        v33 = v16;
        if (v31)
        {
          v34 = sub_1BC75BB60();
          v49 = v35;
          v50 = v34;
        }

        else
        {
          v49 = 0;
          v50 = 0;
        }

        v36 = v51;
        v37 = v52;
        v38 = v53;
        (*(v52 + 16))(&v33[*(v51 + 24)], v25, v53);
        v39 = v55;
        v40 = v58;
        (*(v55 + 16))(&v33[v36[12]], v58, v32);
        sub_1BC759930();
        (*(v39 + 8))(v40, v32);
        (*(v37 + 8))(v25, v38);
        v41 = &v33[v36[5]];
        v42 = v49;
        *v41 = v50;
        *(v41 + 1) = v42;
        *&v33[v36[13]] = v27;
        v43 = &v33[v36[7]];
        *v43 = 2;
        v43[8] = 0;
        *&v33[v36[8]] = 8;
        v44 = &v33[v36[9]];
        *v44 = 0;
        v44[8] = 1;
        v33[v36[10]] = 3;
        *&v33[v36[11]] = v19;
        v45 = (*(v54 + 112))(v33);
        v46 = *((*MEMORY[0x1E69E7D40] & *v57) + 0x30);
        v47 = *((*MEMORY[0x1E69E7D40] & *v57) + 0x34);
        swift_deallocPartialClassInstance();
        return v45;
      }

      v26 = 1;
    }

    v27 = sub_1BC668B10(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1BC668B10((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v27[v29 + 32] = v26;
    goto LABEL_51;
  }

  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB26EB0](v20, a3);
      }

      else
      {
        v21 = *(a3 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 actionID];

      if (v23 > 5)
      {
        if (v23 <= 7)
        {
          if (v23 == 6)
          {
            if ((v19 & 0x20) != 0)
            {
              goto LABEL_7;
            }

            v24 = 32;
          }

          else
          {
            if ((v19 & 0x40) != 0)
            {
              goto LABEL_7;
            }

            v24 = 64;
          }
        }

        else if (v23 == 8)
        {
          if ((v19 & 0x100) != 0)
          {
            goto LABEL_7;
          }

          v24 = 256;
        }

        else if (v23 == 9)
        {
          if ((v19 & 0x80) != 0)
          {
            goto LABEL_7;
          }

          v24 = 128;
        }

        else
        {
          if (v23 != 10 || (v19 & 0x200) != 0)
          {
            goto LABEL_7;
          }

          v24 = 512;
        }
      }

      else if (v23 <= 2)
      {
        if (v23 == 1)
        {
          if (v19)
          {
            goto LABEL_7;
          }

          v24 = 1;
        }

        else
        {
          if (v23 != 2 || (v19 & 2) != 0)
          {
            goto LABEL_7;
          }

          v24 = 2;
        }
      }

      else if (v23 == 3)
      {
        if ((v19 & 0x10) != 0)
        {
          goto LABEL_7;
        }

        v24 = 16;
      }

      else if (v23 == 4)
      {
        if ((v19 & 4) != 0)
        {
          goto LABEL_7;
        }

        v24 = 4;
      }

      else
      {
        if ((v19 & 8) != 0)
        {
          goto LABEL_7;
        }

        v24 = 8;
      }

      v19 |= v24;
LABEL_7:
      if (v18 == ++v20)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalyticsContextWrapper.__allocating_init(contextWrapper:)(void *a1)
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))();
  sub_1BC664BAC(v7, v9);
  v13 = (*(ObjectType + 112))(v9);

  v14 = *((*v12 & *v10) + 0x30);
  v15 = *((*v12 & *v10) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t AnalyticsContextWrapper.init(contextWrapper:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  ObjectType = swift_getObjectType();
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))();
  sub_1BC664BAC(v8, v10);
  v13 = (*(ObjectType + 112))(v10);

  v14 = *((*v12 & *v2) + 0x30);
  v15 = *((*v12 & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_1BC668500(unint64_t a1)
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v5);
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC653F90(v7, a1);

  return sub_1BC6689C4(v7, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC6686EC()
{
  v1 = type metadata accessor for AnalyticsUIContext(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC654C64(v5);

  return sub_1BC6689C4(v5, type metadata accessor for AnalyticsUIContext);
}

id AnalyticsContextWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsContextWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsContextWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC6689C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC668A24(uint64_t result)
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

  result = sub_1BC668B10(result, v12, 1, v3);
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

char *sub_1BC668B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC078, &qword_1BC760FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1BC668C04()
{
  result = qword_1EBCE0498[0];
  if (!qword_1EBCE0498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE0498);
  }

  return result;
}

uint64_t sub_1BC668C58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC668CA0()
{
  result = qword_1EBCDBFC8;
  if (!qword_1EBCDBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBFC8);
  }

  return result;
}

unint64_t sub_1BC668CF4()
{
  result = qword_1EBCDBFD0;
  if (!qword_1EBCDBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBFD0);
  }

  return result;
}

unint64_t sub_1BC668D48()
{
  result = qword_1EBCDBFF0;
  if (!qword_1EBCDBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBFF0);
  }

  return result;
}

unint64_t sub_1BC668D9C()
{
  result = qword_1EBCDC028;
  if (!qword_1EBCDC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC028);
  }

  return result;
}

unint64_t sub_1BC668DF0()
{
  result = qword_1EBCDC030;
  if (!qword_1EBCDC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC030);
  }

  return result;
}

uint64_t sub_1BC668E44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDBFE0, &qword_1BC75FA50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC668EBC()
{
  result = qword_1EBCDC048;
  if (!qword_1EBCDC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC048);
  }

  return result;
}

uint64_t sub_1BC668F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC668FA0()
{
  result = qword_1EBCDC050;
  if (!qword_1EBCDC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC050);
  }

  return result;
}

unint64_t sub_1BC669000()
{
  result = qword_1EBCDC058;
  if (!qword_1EBCDC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC058);
  }

  return result;
}

unint64_t sub_1BC669058()
{
  result = qword_1EBCDC060;
  if (!qword_1EBCDC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC060);
  }

  return result;
}

unint64_t sub_1BC6690B0()
{
  result = qword_1EBCDC068;
  if (!qword_1EBCDC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC068);
  }

  return result;
}

void sub_1BC66912C()
{
  sub_1BC759940();
  if (v0 <= 0x3F)
  {
    sub_1BC669358(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BC759EE0();
      if (v2 <= 0x3F)
      {
        sub_1BC669304(319, &qword_1EDDCF0C8, type metadata accessor for SCUIAnalyticsDirection);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SCUIAnalyticsContentType(319);
          if (v4 <= 0x3F)
          {
            sub_1BC669304(319, &unk_1EDDCF0A8, type metadata accessor for SCUIAnalyticsSubContentType);
            if (v5 <= 0x3F)
            {
              sub_1BC669358(319, &qword_1EDDCF1B8, &type metadata for AnalyticsUIContext.UserOptedToShow, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1BC759C70();
                if (v7 <= 0x3F)
                {
                  sub_1BC669358(319, &qword_1EDDCF0D8, &type metadata for AnalyticsUIContext.Step, MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
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

void sub_1BC669304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC75C110();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BC669358(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnalyticsUIContext.ResourceOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnalyticsUIContext.ResourceOptions(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC669454()
{
  result = type metadata accessor for AnalyticsUIContext(319);
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

uint64_t getEnumTagSinglePayload for AnalyticsUIContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnalyticsUIContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InterventionScreenModel.BulletNumber(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InterventionScreenModel.BulletNumber(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s6VictimV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6VictimV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC669B18()
{
  result = qword_1EBCE17B0[0];
  if (!qword_1EBCE17B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE17B0);
  }

  return result;
}

unint64_t sub_1BC669B70()
{
  result = qword_1EBCE1CC0[0];
  if (!qword_1EBCE1CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE1CC0);
  }

  return result;
}

unint64_t sub_1BC669BC8()
{
  result = qword_1EBCE21D0[0];
  if (!qword_1EBCE21D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE21D0);
  }

  return result;
}

unint64_t sub_1BC669C20()
{
  result = qword_1EBCE23E0[0];
  if (!qword_1EBCE23E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE23E0);
  }

  return result;
}

unint64_t sub_1BC669C78()
{
  result = qword_1EBCE2770;
  if (!qword_1EBCE2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2770);
  }

  return result;
}

unint64_t sub_1BC669CD0()
{
  result = qword_1EBCE2778;
  if (!qword_1EBCE2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2778);
  }

  return result;
}

unint64_t sub_1BC669D28()
{
  result = qword_1EBCE2800;
  if (!qword_1EBCE2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2800);
  }

  return result;
}

unint64_t sub_1BC669D80()
{
  result = qword_1EBCE2808[0];
  if (!qword_1EBCE2808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2808);
  }

  return result;
}

unint64_t sub_1BC669DD8()
{
  result = qword_1EBCE2890;
  if (!qword_1EBCE2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2890);
  }

  return result;
}

unint64_t sub_1BC669E30()
{
  result = qword_1EBCE2898[0];
  if (!qword_1EBCE2898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2898);
  }

  return result;
}

unint64_t sub_1BC669E88()
{
  result = qword_1EBCE2920;
  if (!qword_1EBCE2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2920);
  }

  return result;
}

unint64_t sub_1BC669EE0()
{
  result = qword_1EBCE2928[0];
  if (!qword_1EBCE2928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2928);
  }

  return result;
}

unint64_t sub_1BC669F38()
{
  result = qword_1EBCE29B0;
  if (!qword_1EBCE29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE29B0);
  }

  return result;
}

unint64_t sub_1BC669F90()
{
  result = qword_1EBCE29B8[0];
  if (!qword_1EBCE29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE29B8);
  }

  return result;
}

unint64_t sub_1BC669FE8()
{
  result = qword_1EBCE2A40;
  if (!qword_1EBCE2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2A40);
  }

  return result;
}

unint64_t sub_1BC66A040()
{
  result = qword_1EBCE2A48[0];
  if (!qword_1EBCE2A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2A48);
  }

  return result;
}

unint64_t sub_1BC66A098()
{
  result = qword_1EBCE2AD0;
  if (!qword_1EBCE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2AD0);
  }

  return result;
}

unint64_t sub_1BC66A0F0()
{
  result = qword_1EBCE2AD8[0];
  if (!qword_1EBCE2AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2AD8);
  }

  return result;
}

unint64_t sub_1BC66A148()
{
  result = qword_1EBCE2B60;
  if (!qword_1EBCE2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2B60);
  }

  return result;
}

unint64_t sub_1BC66A1A0()
{
  result = qword_1EBCE2B68[0];
  if (!qword_1EBCE2B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2B68);
  }

  return result;
}

unint64_t sub_1BC66A1F8()
{
  result = qword_1EBCE2BF0;
  if (!qword_1EBCE2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2BF0);
  }

  return result;
}

unint64_t sub_1BC66A250()
{
  result = qword_1EBCE2BF8[0];
  if (!qword_1EBCE2BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2BF8);
  }

  return result;
}

unint64_t sub_1BC66A2A8()
{
  result = qword_1EBCE2C80;
  if (!qword_1EBCE2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2C80);
  }

  return result;
}

unint64_t sub_1BC66A300()
{
  result = qword_1EBCE2C88[0];
  if (!qword_1EBCE2C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2C88);
  }

  return result;
}

unint64_t sub_1BC66A358()
{
  result = qword_1EBCE2D10;
  if (!qword_1EBCE2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2D10);
  }

  return result;
}

unint64_t sub_1BC66A3B0()
{
  result = qword_1EBCE2D18[0];
  if (!qword_1EBCE2D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2D18);
  }

  return result;
}

unint64_t sub_1BC66A408()
{
  result = qword_1EBCE2DA0;
  if (!qword_1EBCE2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2DA0);
  }

  return result;
}

unint64_t sub_1BC66A460()
{
  result = qword_1EBCE2DA8[0];
  if (!qword_1EBCE2DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2DA8);
  }

  return result;
}

unint64_t sub_1BC66A4B8()
{
  result = qword_1EBCE2E30;
  if (!qword_1EBCE2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2E30);
  }

  return result;
}

unint64_t sub_1BC66A510()
{
  result = qword_1EBCE2E38[0];
  if (!qword_1EBCE2E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2E38);
  }

  return result;
}

unint64_t sub_1BC66A568()
{
  result = qword_1EBCE2EC0;
  if (!qword_1EBCE2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2EC0);
  }

  return result;
}

unint64_t sub_1BC66A5C0()
{
  result = qword_1EBCE2EC8[0];
  if (!qword_1EBCE2EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2EC8);
  }

  return result;
}

unint64_t sub_1BC66A618()
{
  result = qword_1EBCE2F50;
  if (!qword_1EBCE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2F50);
  }

  return result;
}

unint64_t sub_1BC66A670()
{
  result = qword_1EBCE2F58[0];
  if (!qword_1EBCE2F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2F58);
  }

  return result;
}

unint64_t sub_1BC66A6C8()
{
  result = qword_1EBCE2FE0;
  if (!qword_1EBCE2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2FE0);
  }

  return result;
}

unint64_t sub_1BC66A720()
{
  result = qword_1EBCE2FE8[0];
  if (!qword_1EBCE2FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2FE8);
  }

  return result;
}

unint64_t sub_1BC66A778()
{
  result = qword_1EBCE3070;
  if (!qword_1EBCE3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3070);
  }

  return result;
}

unint64_t sub_1BC66A7D0()
{
  result = qword_1EBCE3078;
  if (!qword_1EBCE3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3078);
  }

  return result;
}

unint64_t sub_1BC66A828()
{
  result = qword_1EBCE3100;
  if (!qword_1EBCE3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3100);
  }

  return result;
}

unint64_t sub_1BC66A880()
{
  result = qword_1EBCE3108[0];
  if (!qword_1EBCE3108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE3108);
  }

  return result;
}

uint64_t sub_1BC66A8D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xEA0000000000756ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C65696873 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC7702E0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC770300 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x76697469736E6573 && a2 == 0xEE00656764614265 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7367028 && a2 == 0xE300000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

uint64_t sub_1BC66AB84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562617 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C707041746F6ELL && a2 == 0xED0000656C626163)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

uint64_t sub_1BC66AC9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65767265746E69 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BC770320 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

uint64_t sub_1BC66ADC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746E6F43627573 && a2 == 0xEE0065707954746ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574704F72657375 && a2 == 0xEF776F68536F5464 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736D726168 && a2 == 0xE500000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

unint64_t sub_1BC66B0F8()
{
  result = qword_1EBCDC070;
  if (!qword_1EBCDC070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDC070);
  }

  return result;
}

uint64_t sub_1BC66B198()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey);
  v2 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey + 8);

  return v1;
}

id sub_1BC66B250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = a1[1];
  v13 = &v11[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
  *v13 = *a1;
  *(v13 + 1) = v12;
  v14 = &v11[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v11[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
  *v15 = a4;
  *(v15 + 1) = a5;
  v17.receiver = v11;
  v17.super_class = v5;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1BC66B3C8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1BC75BB30();

  return v6;
}

uint64_t sub_1BC66B424()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey);
  v2 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey + 8);

  return v1;
}

id sub_1BC66B480(void *a1, char a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = a1[1];
  v9 = &v7[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v9 = *a1;
  v9[1] = v8;
  v7[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = a2;
  *&v7[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id _s26SensitiveContentAnalysisUI23InterventionScreenModelCACycfC_0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1BC66B65C()
{
  v1 = OBJC_IVAR___SCUIInterventionScreenModel_authority;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BC66B708(uint64_t a1)
{
  v3 = OBJC_IVAR___SCUIInterventionScreenModel_authority;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BC66B760@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC66B7BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1BC66B9E4()
{
  v1 = OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet;
  v2 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet);
  if (v2 == 2)
  {
    sub_1BC65F664(0, &qword_1EBCDC218, off_1E7FF12B8);
    v3 = *(type metadata accessor for InterventionConfig(0) + 20);
    LOBYTE(v2) = sub_1BC6AB1CC();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id InterventionScreenModel.__allocating_init(screen:workflow:type:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_1BC759EE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InterventionConfig(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v5);
  *&v22[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v22[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v22[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC6E53B4(a3);
  v23 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_1BC6E3EAC(a2, 0, v17, a4, v13, v21);
  sub_1BC66FCA4(v21, &v22[OBJC_IVAR___SCUIInterventionScreenModel_config]);
  sub_1BC75A110();
  *&v22[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v25.receiver = v22;
  v25.super_class = v5;
  return objc_msgSendSuper2(&v25, sel_init);
}

id InterventionScreenModel.init(screen:workflow:type:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_1BC759EE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InterventionConfig(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v5[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v5[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC6E53B4(a3);
  v22 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_1BC6E3EAC(a2, 0, v17, a4, v13, v21);
  sub_1BC66FCA4(v21, &v5[OBJC_IVAR___SCUIInterventionScreenModel_config]);
  sub_1BC75A110();
  *&v5[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v23 = type metadata accessor for InterventionScreenModel();
  v25.receiver = v5;
  v25.super_class = v23;
  return objc_msgSendSuper2(&v25, sel_init);
}

id InterventionScreenModel.init(screen:config:participantContactCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v4[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v4[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC66FDD8(a2, &v4[OBJC_IVAR___SCUIInterventionScreenModel_config], type metadata accessor for InterventionConfig);
  if (!a3)
  {
    sub_1BC75A110();
    a3 = sub_1BC75A100();
  }

  *&v4[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = a3;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for InterventionScreenModel();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1BC66FE40(a2, type metadata accessor for InterventionConfig);
  return v7;
}

id sub_1BC66C0B8()
{
  v1 = type metadata accessor for InterventionConfig(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  sub_1BC66FDD8(v0 + OBJC_IVAR___SCUIInterventionScreenModel_config, &v14 - v7, type metadata accessor for InterventionConfig);
  v16 = 5;
  v9 = &v8[*(v2 + 40)];
  sub_1BC665984(&v16);
  sub_1BC66FDD8(v8, v6, type metadata accessor for InterventionConfig);
  v10 = type metadata accessor for InterventionScreenModel();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v11[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v11[OBJC_IVAR___SCUIInterventionScreenModel_screen] = 1;
  sub_1BC66FDD8(v6, &v11[OBJC_IVAR___SCUIInterventionScreenModel_config], type metadata accessor for InterventionConfig);
  sub_1BC75A110();
  *&v11[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  sub_1BC66FE40(v6, type metadata accessor for InterventionConfig);
  sub_1BC66FE40(v8, type metadata accessor for InterventionConfig);
  return v12;
}

id sub_1BC66C414(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t InterventionScreenModel.title.getter()
{
  sub_1BC75BDE0();
  v0 = sub_1BC75C210();
  sub_1BC66C60C(&v2, v0);
  return v2;
}

uint64_t InterventionScreenModel.subtitle.getter()
{
  sub_1BC66D37C(v1);
  if (v1[1])
  {
    return v1[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC66DF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC759F80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1BC66DFB8(uint64_t a1)
{
  v2 = sub_1BC759C40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v39 - v8;
  v52 = sub_1BC759CA0();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC759D00();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v39 - v17;
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v47 = v20;
    v41 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v21 = a1 + v41;
    v22 = *(v19 + 56);
    v44 = (v3 + 8);
    v45 = (v9 + 8);
    v43 = (v19 + 16);
    v40 = (v19 - 8);
    v54 = MEMORY[0x1E69E7CC0];
    v48 = v19;
    v49 = v2;
    v42 = v7;
    v23 = v39;
    v46 = v22;
    do
    {
      v55 = v18;
      v47(v23, v21, v12);
      v25 = v51;
      sub_1BC759CF0();
      v26 = v12;
      v27 = v53;
      sub_1BC759C90();
      (*v45)(v25, v52);
      sub_1BC759C30();
      sub_1BC6741B0();
      v28 = v7;
      v29 = v49;
      v30 = sub_1BC75C170();
      v31 = *v44;
      (*v44)(v28, v29);
      v31(v27, v29);
      if (v30)
      {
        (*v40)(v23, v26);
        v12 = v26;
        v24 = v46;
        v7 = v28;
      }

      else
      {
        v32 = *v43;
        (*v43)(v50, v23, v26);
        v33 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v33;
        v12 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6701E8(0, *(v33 + 16) + 1, 1);
          v23 = v39;
          v33 = v56;
        }

        v24 = v46;
        v36 = *(v33 + 16);
        v35 = *(v33 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1BC6701E8(v35 > 1, v36 + 1, 1);
          v23 = v39;
          v33 = v56;
        }

        *(v33 + 16) = v36 + 1;
        v54 = v33;
        v32((v33 + v41 + v36 * v24), v50, v12);
        v7 = v42;
      }

      v21 += v24;
      v18 = v55 - 1;
    }

    while (v55 != 1);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v54 + 16);

  return v37 == 0;
}

uint64_t InterventionScreenModel.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  if (!v1)
  {
    return 0x742D726564616568;
  }

  if (v1 == 1)
  {
    return 0x6D2D726564616568;
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t InterventionScreenModel.emoji.getter()
{
  v1 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  if (!v1)
  {
    return 2493816816;
  }

  if (v1 == 1)
  {
    return 2426904560;
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t InterventionScreenModel.bullets.getter()
{
  ObjectType = swift_getObjectType();
  v2 = v0 + OBJC_IVAR___SCUIInterventionScreenModel_config;
  v3 = v2 + *(type metadata accessor for InterventionConfig(0) + 20);
  v4 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  v5 = sub_1BC66B9E4();
  v6 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache);
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v4;
  v9 = v5 & 1;
  v10 = v6;
  v11 = ObjectType;
  return sub_1BC66E900(sub_1BC66FD54, v8, &unk_1F3B28720);
}

uint64_t static InterventionScreenModel.generateBullets(for:layout:screen:canShowScreenTimePasscodeWarningBullet:participantContactCache:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a4;
  v8 = a5;
  return sub_1BC66E900(sub_1BC66FD54, v6, &unk_1F3B28720);
}

uint64_t sub_1BC66E900(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v13 = v8;
      v9 = a1(&v12, &v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        MEMORY[0x1BFB268C0](v9);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BC75BD20();
        }

        sub_1BC75BD50();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}