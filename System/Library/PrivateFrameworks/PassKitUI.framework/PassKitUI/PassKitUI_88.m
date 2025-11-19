uint64_t sub_1BD98A744()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1BD98A7B0, v1, 0);
}

uint64_t sub_1BD98A7B0()
{
  *(v0 + 88) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD98A83C, v2, v1);
}

uint64_t sub_1BD98A83C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1BD98A8A8, v1, 0);
}

uint64_t sub_1BD98A8A8()
{
  *(v0 + 96) = objc_opt_self();
  *(v0 + 104) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD98A944, v2, v1);
}

uint64_t sub_1BD98A944()
{
  v1 = v0[12];
  v2 = v0[3];

  v0[14] = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1BD98A9CC, v2, 0);
}

uint64_t sub_1BD98A9CC()
{
  *(v0 + 120) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD98AA58, v2, v1);
}

uint64_t sub_1BD98AA58()
{
  v1 = v0[14];
  v2 = v0[3];

  [v1 scale];
  v0[16] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD98AADC, v2, 0);
}

uint64_t sub_1BD98AADC()
{
  v1 = v0[8];
  v2 = PKIconForApplicationIdentifier();

  if (v2)
  {
LABEL_2:

    v3 = v0[1];

    return v3(v2);
  }

  v5 = v0[2];
  v6 = *(v5 + 56);
  if (!v6)
  {
    v2 = 0;
    goto LABEL_2;
  }

  v7 = *(v5 + 48);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1BD98AC18;
  v9 = v0[4];

  return sub_1BD98B014(v9, v7, v6);
}

uint64_t sub_1BD98AC18()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1BD98AF78;
  }

  else
  {
    v4 = sub_1BD98AD50;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98AD50()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD226BBC(v3);
    v4 = 0;
LABEL_3:

    v5 = v0[1];

    return v5(v4);
  }

  (*(v2 + 32))(v0[7], v3, v1);
  if (sub_1BE04A9A4())
  {
    v7 = v0[18];
    sub_1BE052984();
    if (!v7)
    {
      v8 = sub_1BE04AA84();
      v11 = v0[6];
      v10 = v0[7];
      v12 = v0[5];
      v13 = v8;
      v15 = v14;
      v16 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v17 = sub_1BE04AAB4();
      v4 = [v16 initWithData_];

      sub_1BD1245AC(v13, v15);
      (*(v11 + 8))(v10, v12);
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BD98C82C();
    swift_allocError();
    swift_willThrow();
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD98AF78()
{
  (*(v0[6] + 56))(v0[4], 1, 1, v0[5]);
  sub_1BD226BBC(v0[4]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1BD98B014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v4[21] = swift_task_alloc();
  v5 = sub_1BE04AA64();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98B11C, v3, 0);
}

uint64_t sub_1BD98B11C()
{
  v1 = v0[20];
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (*(v2 + 16))
  {
    v4 = v0[18];
    v3 = v0[19];
    sub_1BE048C84();
    v5 = sub_1BD148F70(v4, v3);
    if (v6)
    {
      v8 = v0[24];
      v7 = v0[25];
      v9 = v0[22];
      v10 = v0[23];
      v11 = v0[17];
      (*(v10 + 16))(v8, *(v2 + 56) + *(v10 + 72) * v5, v9);

      v12 = *(v10 + 32);
      v12(v7, v8, v9);
      v12(v11, v7, v9);
      (*(v10 + 56))(v11, 0, 1, v9);

      v13 = v0[1];

      return v13();
    }
  }

  v15 = v0[20];
  swift_beginAccess();
  v16 = *(v15 + 160);
  if (!*(v16 + 16))
  {
    goto LABEL_11;
  }

  v18 = v0[18];
  v17 = v0[19];
  sub_1BE048C84();
  v19 = sub_1BD148F70(v18, v17);
  if ((v20 & 1) == 0)
  {

LABEL_11:
    v30 = v0[20];
    v29 = v0[21];
    v32 = v0[18];
    v31 = v0[19];
    v33 = sub_1BE0528D4();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
    v34 = sub_1BD98C710();
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v34;
    v35[4] = v30;
    v35[5] = v32;
    v35[6] = v31;
    swift_retain_n();
    sub_1BE048C84();
    v36 = sub_1BDA54628(0, 0, v29, &unk_1BE108DF8, v35);
    v0[29] = v36;
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v15 + 160);
    *(v15 + 160) = 0x8000000000000000;
    sub_1BD1DBB18(v36, v32, v31, isUniquelyReferenced_nonNull_native);

    *(v15 + 160) = v40;
    swift_endAccess();
    v38 = swift_task_alloc();
    v0[30] = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    *v38 = v0;
    v38[1] = sub_1BD98B70C;
    v25 = v0[17];
    v26 = MEMORY[0x1E69E7288];
    v27 = v36;
    v28 = v39;
    goto LABEL_12;
  }

  v21 = *(*(v16 + 56) + 8 * v19);
  v0[26] = v21;
  sub_1BE048964();

  v22 = swift_task_alloc();
  v0[27] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  *v22 = v0;
  v22[1] = sub_1BD98B560;
  v25 = v0[17];
  v26 = MEMORY[0x1E69E7288];
  v27 = v21;
  v28 = v23;
LABEL_12:

  return MEMORY[0x1EEE6DA10](v25, v27, v28, v24, v26);
}

uint64_t sub_1BD98B560()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1BD98B904;
  }

  else
  {
    v4 = sub_1BD98B68C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98B68C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98B70C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1BD98B990;
  }

  else
  {
    v4 = sub_1BD98B838;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98B838()
{
  v1 = v0[19];
  v2 = v0[18];
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD6B0AE4(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD98B904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98B990()
{
  v1 = v0[19];
  v2 = v0[18];
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD6B0AE4(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD98BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v6[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_1BD98BB54;

  return sub_1BD98BD58(a1, a5, a6);
}

uint64_t sub_1BD98BB54()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1BD98BCA0, v6, 0);
  }
}

uint64_t sub_1BD98BCA0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1BD38F438(v0[5], v1);
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD6B0BDC(v1, v3, v2);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD98BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for BusinessEmailLogo(0);
  v4[6] = swift_task_alloc();
  type metadata accessor for BusinessEmailItem(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98BE18, v3, 0);
}

uint64_t sub_1BD98BE18()
{
  sub_1BE052984();
  v1 = v0[5];
  v2 = objc_allocWithZone(MEMORY[0x1E698F690]);
  v3 = sub_1BE052404();
  v4 = sub_1BE052404();
  v5 = sub_1BE052404();
  v6 = [v2 initWithEmail:v3 fullDomain:v4 topLevelDomain:v5];
  v0[8] = v6;

  v7 = v1[17];
  v8 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v7);
  v12 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1BD98C030;
  v10 = v0[7];

  return v12(v10, v6, v7, v8);
}

uint64_t sub_1BD98C030()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1BD98C510;
  }

  else
  {
    v4 = sub_1BD98C15C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98C15C()
{
  v1 = v0[10];
  sub_1BE052984();
  if (v1)
  {
    v2 = v0[8];
    sub_1BD98C6B4(v0[7]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[5];
    v6 = objc_allocWithZone(MEMORY[0x1E698F698]);
    v7 = sub_1BE052404();
    v8 = [v6 initWithBusinessId_];
    v0[11] = v8;

    v9 = v5[17];
    v10 = v5[18];
    __swift_project_boxed_opaque_existential_1(v5 + 14, v9);
    v13 = (*(v10 + 16) + **(v10 + 16));
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1BD98C344;
    v12 = v0[6];

    return v13(v12, v8, v9, v10);
  }
}

uint64_t sub_1BD98C344()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1BD98C584;
  }

  else
  {
    v4 = sub_1BD98C470;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD98C470()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  sub_1BD98C6B4(v1);
  sub_1BD226B4C(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD98C510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD98C584()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1BD98C6B4(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD98C608()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BD98C6B4(uint64_t a1)
{
  v2 = type metadata accessor for BusinessEmailItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD98C710()
{
  result = qword_1EBD5A220;
  if (!qword_1EBD5A220)
  {
    type metadata accessor for MerchantTokenIconProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A220);
  }

  return result;
}

uint64_t sub_1BD98C764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD98BA5C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1BD98C82C()
{
  result = qword_1EBD5A228;
  if (!qword_1EBD5A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A228);
  }

  return result;
}

void sub_1BD98C8B8()
{
  sub_1BD3F7300();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD98C95C()
{
  sub_1BD3F7300();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BD98C9CC()
{
  result = qword_1EBD5A260;
  if (!qword_1EBD5A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A260);
  }

  return result;
}

uint64_t sub_1BD98CA8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1BE048C84();
}

uint64_t sub_1BD98CB80()
{
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  swift_beginAccess();
  return sub_1BE048C84();
}

uint64_t type metadata accessor for PKDashboardFinanceKitProvider()
{
  result = qword_1EBD5A2A0;
  if (!qword_1EBD5A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD98CC8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  v4 = sub_1BE048C84();
  v5 = sub_1BD400C50(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD98CDDC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1BE048C84();
}

void (*sub_1BD98CE68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD98CA2C();
  return sub_1BD98CFA0;
}

uint64_t sub_1BD98CFAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  return sub_1BD0DE19C(v5 + v3, a1, &qword_1EBD498D0);
}

uint64_t sub_1BD98D084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD498D0);
}

uint64_t sub_1BD98D15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD498D0);
  return sub_1BD98D208(v5);
}

uint64_t sub_1BD98D208(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD498D0);
  v8 = sub_1BD99333C(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD498D0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD498D0);
    swift_beginAccess();
    sub_1BD99365C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498D0);
}

uint64_t sub_1BD98D410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1BD0DE19C(a2, &v10 - v6, &qword_1EBD498D0);
  v8 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  swift_beginAccess();
  sub_1BD99365C(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_1BD98D6C0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v1 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1BD98D7D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD98D8F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*sub_1BD98D9F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD98D588();
  return sub_1BD98DB2C;
}

uint64_t sub_1BD98DD0C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v1 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1BD98DE1C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD98DF48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*sub_1BD98E04C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD98DBD4();
  return sub_1BD98E184;
}

id PKDashboardFinanceKitProvider.__allocating_init(pass:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  v5 = sub_1BE049184();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v6(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded] = 0;
  sub_1BE04B5C4();
  *&v3[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PKDashboardFinanceKitProvider.init(pass:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions] = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
  v4 = sub_1BE049184();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount] = 0;
  v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded] = 0;
  sub_1BE04B5C4();
  *&v1[OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PKDashboardFinanceKitProvider();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1BD98E4B4(unint64_t a1)
{
  v37 = sub_1BE049A94();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v34 - v7;
  v9 = sub_1BE049184();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v39 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v38 = v34 - v15;
  swift_getKeyPath();
  v43 = v1;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v16 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  result = 0;
  if (*(v1 + v16) > a1)
  {
    swift_getKeyPath();
    v42 = v1;
    sub_1BE04B594();

    v18 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__institution;
    swift_beginAccess();
    sub_1BD0DE19C(v1 + v18, v8, &qword_1EBD498D0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1BD0DE53C(v8, &qword_1EBD498D0);
      return 0;
    }

    v19 = v38;
    (*(v10 + 32))(v38, v8, v9);
    v20 = *(v10 + 16);
    v20(v39, v19, v9);
    swift_getKeyPath();
    v41 = v1;
    sub_1BE04B594();

    v21 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
    result = swift_beginAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v22 = *(v1 + v21);
      if (*(v22 + 16) > a1)
      {
        v23 = v35;
        v24 = v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * a1;
        v25 = *(v35 + 16);
        v34[1] = v10 + 16;
        v26 = v36;
        v27 = v37;
        v25(v36, v24, v37);
        v28 = type metadata accessor for PKDashboardFinanceKitTransactionItem();
        v29 = objc_allocWithZone(v28);
        v30 = v20;
        v31 = v39;
        v30(&v29[OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_institution], v39, v9);
        v25(&v29[OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_transaction], v26, v27);
        v40.receiver = v29;
        v40.super_class = v28;
        v32 = objc_msgSendSuper2(&v40, sel_init);
        (*(v23 + 8))(v26, v27);
        v33 = *(v10 + 8);
        v33(v31, v9);
        v33(v38, v9);
        return v32;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD98E9BC()
{
  v1[26] = v0;
  v2 = sub_1BE049184();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_1BE0495A4();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[36] = v4;
  *v4 = v1;
  v4[1] = sub_1BD98EB54;

  return sub_1BD98FCCC();
}

uint64_t sub_1BD98EB54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_1BD98F5C4;
  }

  else
  {
    v4 = sub_1BD98EC68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD98EC68()
{
  v1 = v0[37];
  if (*(v1 + 16))
  {
    (*(v0[31] + 16))(v0[32], v1 + ((*(v0[31] + 80) + 32) & ~*(v0[31] + 80)), v0[30]);
    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_1BD98EEA4;
    v3 = v0[35];
    v4 = v0[32];

    return sub_1BD990B84(v3, v4);
  }

  else
  {
    v6 = v0[26];

    v7 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
    swift_beginAccess();
    if (*(v6 + v7) == 1)
    {
      *(v6 + v7) = 1;
    }

    else
    {
      v8 = v0[26];
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 1;
      v0[25] = v8;
      sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
      sub_1BE04B584();
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1BD98EEA4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_1BD98F750;
  }

  else
  {
    (*(v2[31] + 8))(v2[32], v2[30]);
    v3 = sub_1BD98EFD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD98EFD8()
{
  v1 = v0[34];
  v2 = v0[27];
  v3 = v0[28];
  sub_1BD0DE19C(v0[35], v1, &qword_1EBD498D0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[34];
    v5 = v0[26];
    sub_1BD0DE53C(v0[35], &qword_1EBD498D0);

    sub_1BD0DE53C(v4, &qword_1EBD498D0);
    v6 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
    swift_beginAccess();
    if (*(v5 + v6) == 1)
    {
      *(v5 + v6) = 1;
    }

    else
    {
      v15 = v0[26];
      swift_getKeyPath();
      v16 = swift_task_alloc();
      *(v16 + 16) = v15;
      *(v16 + 24) = 1;
      v0[22] = v15;
      sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
      sub_1BE04B584();
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    v7 = v0[33];
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];
    (*(v9 + 32))(v8, v0[34], v10);
    (*(v9 + 16))(v7, v8, v10);
    (*(v9 + 56))(v7, 0, 1, v10);
    sub_1BD98D208(v7);
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_1BD98F2CC;
    v12 = v0[37];
    v13 = v0[29];

    return sub_1BD991634(v12, v13);
  }
}

uint64_t sub_1BD98F2CC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1BD98F8F4;
  }

  else
  {
    v2 = sub_1BD98F400;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD98F400()
{
  v1 = v0[35];
  v2 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_1BD0DE53C(v1, &qword_1EBD498D0);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    *(v2 + v3) = 1;
  }

  else
  {
    v4 = v0[26];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[24] = v4;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD98F5C4()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[26];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[20] = v3;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD98F750()
{
  v1 = v0[26];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v2 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[26];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[21] = v3;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD98F8F4()
{
  v1 = v0[35];
  v2 = v0[26];
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_1BD0DE53C(v1, &qword_1EBD498D0);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    *(v2 + v3) = 1;
  }

  else
  {
    v4 = v0[26];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[23] = v4;
    sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
    sub_1BE04B584();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD98FC24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BD36E52C;

  return sub_1BD98E9BC();
}

uint64_t sub_1BD98FCCC()
{
  v1[3] = v0;
  v2 = sub_1BE049C24();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[7] = swift_task_alloc();
  v3 = sub_1BE049B64();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD98FE20, 0, 0);
}

uint64_t sub_1BD98FE20()
{
  v1 = v0[7];
  v2 = [*(v0[3] + OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider_pass) primaryAccountIdentifier];
  v3 = sub_1BE052434();
  v5 = v4;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v0[2] = sub_1BE0495A4();
  sub_1BE04B444();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  sub_1BE049B54();
  sub_1BE0490F4();
  v0[12] = sub_1BE0490B4();
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1BD98FFE4;
  v9 = v0[10];
  v10 = v0[6];

  return MEMORY[0x1EEDC14B8](v10, v9);
}

uint64_t sub_1BD98FFE4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1BD9901FC;
  }

  else
  {
    v2 = sub_1BD990114;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD990114()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_1BE049C14();
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1BD9901FC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD9902A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a2;
  v65 = a3;
  v77 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F0);
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v70 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F8);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v67 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A300);
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v69 = v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v61 = v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A308);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v56 - v29;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A310);
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v31);
  v33 = v56 - v32;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A318);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v34);
  v78 = v56 - v35;
  v58 = *a1;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v36 = *(v22 + 8);
  v56[2] = v22 + 8;
  v57 = v36;
  v36(v25, v21);
  swift_getKeyPath();
  v56[1] = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD5A320, &qword_1EBD5A308);
  sub_1BE04A724();

  (*(v27 + 8))(v30, v26);
  v37 = v64;
  v38 = v65;
  v79 = v64;
  v80 = v65;
  v39 = v61;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD5A328, &qword_1EBD5A310);
  v56[0] = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08);
  v40 = v39;
  v41 = v59;
  v42 = v62;
  sub_1BE04A714();
  (*(v63 + 8))(v40, v42);
  (*(v60 + 8))(v33, v41);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v43 = v67;
  sub_1BE04A724();

  v57(v25, v21);
  v79 = v37;
  v80 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  v44 = v70;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD5A330, &qword_1EBD5A2F8);
  sub_1BD0DE4F4(&qword_1EBD5A338, &qword_1EBD5A2F0);
  sub_1BD993B04(&qword_1EBD41EE8);
  v45 = v69;
  v46 = v43;
  v47 = v71;
  v48 = v73;
  sub_1BE04A714();
  (*(v74 + 8))(v44, v48);
  (*(v72 + 8))(v46, v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A340);
  v50 = v77;
  v77[3] = v49;
  v50[4] = sub_1BD993740();
  __swift_allocate_boxed_opaque_existential_1(v50);
  sub_1BD0DE4F4(&qword_1EBD5A390, &qword_1EBD5A318);
  sub_1BD0DE4F4(&qword_1EBD5A398, &qword_1EBD5A300);
  v51 = v78;
  v52 = v45;
  v53 = v66;
  v54 = v75;
  sub_1BE04A794();
  (*(v76 + 8))(v52, v54);
  return (*(v68 + 8))(v51, v53);
}

uint64_t sub_1BD990B84(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1BE049D44();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0);
  v2[8] = swift_task_alloc();
  v4 = sub_1BE049CC4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1BE049E54();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD990D34, 0, 0);
}

uint64_t sub_1BD990D34()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  sub_1BE049524();
  v5 = sub_1BE049E24();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = sub_1BE049184();
  v0[16] = v9;
  v0[2] = v9;
  sub_1BE04B444();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00);
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  sub_1BE049CB4();
  sub_1BE0490F4();
  v0[17] = sub_1BE0490B4();
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1BD990F04;
  v12 = v0[11];
  v13 = v0[7];

  return MEMORY[0x1EEDC14C8](v13, v12);
}

uint64_t sub_1BD990F04()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1BD991210;
  }

  else
  {
    v2 = sub_1BD991034;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD991034()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_1BE049D34();
  (*(v2 + 8))(v1, v3);
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (*(v4 + 16))
  {
    v9 = *(v5 - 8);
    (*(v9 + 16))(v0[3], v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5);

    (*(v7 + 8))(v6, v8);
    v10 = 0;
  }

  else
  {

    (*(v7 + 8))(v6, v8);
    v9 = *(v5 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v0[3], v10, 1, v0[16]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD991210()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BD9912C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v10 + 8))(v13, v9);
  v25 = v21;
  v26 = v22;
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E28);
  a3[4] = sub_1BD0F9CDC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08);
  v19 = v23;
  sub_1BE04A714();
  (*(v24 + 8))(v8, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BD991634(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v3[19] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_1BE0495A4();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9917E8, 0, 0);
}

uint64_t sub_1BD9917E8()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[27];
    v5 = v0[24];
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v2, 0);
    v3 = v26;
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v24 = *(v5 + 56);
    v25 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[25];
      v10 = v0[23];
      v25(v9, v7, v10);
      sub_1BE049584();
      (*v8)(v9, v10);
      v12 = *(v26 + 16);
      v11 = *(v26 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BD531F28(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[28];
      v14 = v0[26];
      *(v26 + 16) = v12 + 1;
      (*(v4 + 32))(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v13, v14);
      v7 += v24;
      --v2;
    }

    while (v2);
  }

  v15 = v0[19];
  sub_1BE0490F4();
  v0[29] = sub_1BE0490B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BD9936E8(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A4F4();
  v16 = swift_task_alloc();
  v0[30] = v16;
  *(v16 + 16) = v3;
  v0[13] = sub_1BE049A94();
  sub_1BE04B444();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v18 = sub_1BE049144();
  MEMORY[0x1BFB361A0](v18);

  v19 = sub_1BE049CE4();
  v20 = MEMORY[0x1E6967BC8];
  v0[5] = v19;
  v0[6] = v20;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v21 = swift_task_alloc();
  v0[31] = v21;
  *v21 = v0;
  v21[1] = sub_1BD991BE4;
  v22 = v0[22];

  return MEMORY[0x1EEDC14D8](v22, v0 + 2);
}

uint64_t sub_1BD991BE4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1BD991F38;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = sub_1BD991D10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BD991D10()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = sub_1BE049D54();
  (*(v2 + 8))(v1, v3);
  sub_1BD98CC8C(v5);
  swift_getKeyPath();
  v0[14] = v4;
  sub_1BD9936E8(&qword_1EBD5A270, type metadata accessor for PKDashboardFinanceKitProvider);
  sub_1BE04B594();

  v6 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactions;
  swift_beginAccess();
  v7 = *(*(v4 + v6) + 16);
  v8 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  swift_beginAccess();
  if (*(v4 + v8) != v7)
  {
    v9 = v0[18];
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v7;
    v0[15] = v9;
    sub_1BE04B584();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD991F38()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD991FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__loaded;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BD992044@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2B0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45680);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v5 + 8))(v8, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2B8);
  a2[4] = sub_1BD993118();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD5A2E0, &qword_1EBD5A2B0);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  sub_1BD0DE4F4(&qword_1EBD5A2E8, &qword_1EBD45680);
  sub_1BD9936E8(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v19 = v22;
  sub_1BE04A754();
  (*(v23 + 8))(v13, v19);
  return (*(v15 + 8))(v18, v14);
}

id PKDashboardFinanceKitProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKDashboardFinanceKitProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD9925A8()
{
  sub_1BD992A30();
  if (v0 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PKDashboardFinanceKitProvider.load()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x150);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return v5();
}

void sub_1BD992A30()
{
  if (!qword_1EBD4D590)
  {
    sub_1BE049184();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D590);
    }
  }
}

uint64_t sub_1BD992A88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD98FC24(v2, v3);
}

uint64_t sub_1BD992B34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BD126968;

  return v6();
}

uint64_t sub_1BD992C1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BD0F985C;

  return v7();
}

uint64_t sub_1BD992D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - v11;
  sub_1BD0DE19C(a3, v24 - v11, &unk_1EBD3E580);
  v13 = sub_1BE0528D4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &unk_1EBD3E580);
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

  sub_1BE0528C4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1BE052844();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1BE0524D4() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    sub_1BE048964();
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

    sub_1BD0DE53C(a3, &unk_1EBD3E580);

    return v22;
  }

LABEL_8:
  sub_1BD0DE53C(a3, &unk_1EBD3E580);
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

uint64_t sub_1BD993000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD02DA28(a1, v4);
}

uint64_t sub_1BD9930C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDashboardFinanceKitProvider__transactionsCount;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

unint64_t sub_1BD993118()
{
  result = qword_1EBD5A2C0;
  if (!qword_1EBD5A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A2B8);
    sub_1BD9931A4();
    sub_1BD581A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A2C0);
  }

  return result;
}

unint64_t sub_1BD9931A4()
{
  result = qword_1EBD5A2C8;
  if (!qword_1EBD5A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A2B0);
    sub_1BD9932A0(&qword_1EBD5A2D0, &qword_1EBD38F58);
    sub_1BD9932A0(&qword_1EBD5A2D8, &qword_1EBD38F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A2C8);
  }

  return result;
}

uint64_t sub_1BD9932A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45680);
    sub_1BD9936E8(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD99333C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049184();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D850);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v24 - v15, &qword_1EBD498D0);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD498D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD0DE19C(v16, v12, &qword_1EBD498D0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1BD9936E8(&qword_1EBD4D858, MEMORY[0x1E69676C0]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v16, &qword_1EBD498D0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD4D850);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v16, &qword_1EBD498D0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD99365C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9936E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD993740()
{
  result = qword_1EBD5A348;
  if (!qword_1EBD5A348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A340);
    sub_1BD9937CC();
    sub_1BD99398C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A348);
  }

  return result;
}

unint64_t sub_1BD9937CC()
{
  result = qword_1EBD5A350;
  if (!qword_1EBD5A350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A318);
    sub_1BD993858();
    sub_1BD0F9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A350);
  }

  return result;
}

unint64_t sub_1BD993858()
{
  result = qword_1EBD5A358;
  if (!qword_1EBD5A358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A310);
    sub_1BD9938F4(&qword_1EBD5A360, &qword_1EBD5A308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A358);
  }

  return result;
}

uint64_t sub_1BD9938F4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1BD0DE4F4(&qword_1EBD38EA8, &qword_1EBD38E70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD99398C()
{
  result = qword_1EBD5A368;
  if (!qword_1EBD5A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A300);
    sub_1BD9938F4(&qword_1EBD5A370, &qword_1EBD5A2F8);
    sub_1BD993A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A368);
  }

  return result;
}

unint64_t sub_1BD993A30()
{
  result = qword_1EBD5A378;
  if (!qword_1EBD5A378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A2F0);
    sub_1BD993B04(&qword_1EBD5A380);
    sub_1BD993B04(&qword_1EBD5A388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A378);
  }

  return result;
}

uint64_t sub_1BD993B04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy41_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD993BB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD993BD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_1BD993C20()
{
  result = qword_1EBD5A3A0;
  if (!qword_1EBD5A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3A0);
  }

  return result;
}

uint64_t sub_1BD993C74()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isQuantitative])
  {
    return 0;
  }

  v8 = [v1 monetaryValue];
  v9 = [v8 currency];

  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v1 conversionRate];
  if (!v11 || (v37 = 0, v38 = 0, v39 = 0, v40 = 1, v12 = v11, sub_1BE0533E4(), v12, v40 == 1))
  {

LABEL_6:
    return 0;
  }

  v32 = v3;
  v14 = v37;
  v15 = v38;
  v33 = v39;
  v16 = MEMORY[0x1BFB403C0](1);
  v35 = v17;
  v36 = v16;
  v34 = v18;
  MEMORY[0x1BFB403C0](10);
  PKDefaultFractionDigitsForCurrencyCode();

  v19 = v33;
  sub_1BE04AA74();
  v20 = sub_1BE053354();
  if (MEMORY[0x1BFB403F0](v14, v15, v19, v20, v21, v22))
  {
    goto LABEL_6;
  }

  v23 = sub_1BE053344();
  v24 = PKFormattedCurrencyStringFromNumber();

  if (!v24)
  {
    return 0;
  }

  v25 = sub_1BE052434();
  v27 = v26;

  if ([v1 type] != 1 && objc_msgSend(v1, sel_type) != 2)
  {
    return v25;
  }

  v28 = v32;
  (*(v32 + 104))(v7, *MEMORY[0x1E69B8088], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BE0B69E0;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1BD110550();
  *(v29 + 32) = v25;
  *(v29 + 40) = v27;
  v30 = sub_1BE04B714();

  (*(v28 + 8))(v7, v2);
  return v30;
}

void sub_1BD994058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 value];
  if (v7)
  {
    v8 = v7;
    if ([v3 isQuantitative])
    {
      v9 = [v3 monetaryValue];
      v10 = [v9 amount];

      if (v10)
      {
        v11 = sub_1BE0533F4();
        v13 = v12;
        v15 = v14;

        MEMORY[0x1BFB403F0](a1, a2, a3, v11, v13, v15);
        v16 = sub_1BE053344();
        v17 = [v3 convertValueFromAmount_];

        if (!v17)
        {
          v17 = [objc_opt_self() zero];
        }

        v18 = sub_1BE0533F4();
        v20 = v19;
        v22 = v21;

        v23 = sub_1BE0533F4();
        MEMORY[0x1BFB403F0](v18, v20, v22, v23, v24, v25);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BD99423C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1BD994478(&v5, &v7) & 1;
}

uint64_t sub_1BD994288()
{
  v1 = *(v0 + 40);
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE053D24();
  if ((v1 & 1) == 0)
  {
    sub_1BE053404();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD994334()
{
  v1 = *(v0 + 40);
  sub_1BE053404();
  if (v1)
  {
    return sub_1BE053D24();
  }

  sub_1BE053D24();

  return sub_1BE053404();
}

uint64_t sub_1BD9943D0()
{
  v1 = *(v0 + 40);
  sub_1BE053D04();
  sub_1BE053404();
  sub_1BE053D24();
  if ((v1 & 1) == 0)
  {
    sub_1BE053404();
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD994478(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1BFB40440](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v4 = *(a1 + 40) & *(a2 + 40);
    if ((*(a1 + 40) & 1) == 0 && (*(a2 + 40) & 1) == 0)
    {

      JUMPOUT(0x1BFB40440);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1BD994504()
{
  result = qword_1EBD5A3A8;
  if (!qword_1EBD5A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3A8);
  }

  return result;
}

uint64_t sub_1BD994558(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1BD871218();
    v4 = sub_1BE052744();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD9945D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAB7D0);
  __swift_project_value_buffer(v15, qword_1EBDAB7D0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD9948EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = sub_1BE04A884();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  sub_1BE0487C4();
  sub_1BE04A864();
  sub_1BE0487C4();
  if (!v12)
  {
    v10 = 1;
    goto LABEL_5;
  }

  result = sub_1BE0487C4();
  if (v12)
  {
    sub_1BE04A864();
    v10 = 0;
LABEL_5:
    (*(v7 + 56))(v5, v10, 1, v6);
    sub_1BE048B94();
    return sub_1BE048BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD994AF8(uint64_t a1, const char *a2)
{
  v24 = a2;
  v2 = sub_1BE04CFF4();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1BE04CFC4();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE04CFE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v15 = sub_1BE04CFD4();
  sub_1BE04D004();
  v22 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v16 = v23;
    if ((*(v23 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v5, v2);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v15, v22, v19, v24, v17, v18, 2u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  (*(v6 + 8))(v9, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD994DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD041C28;

  return (sub_1BD99607C)(a2, a3);
}

unint64_t sub_1BD994EA0()
{
  result = qword_1EBD5A3B0;
  if (!qword_1EBD5A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3B0);
  }

  return result;
}

unint64_t sub_1BD994EF8()
{
  result = qword_1EBD5A3B8;
  if (!qword_1EBD5A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3B8);
  }

  return result;
}

uint64_t sub_1BD994F50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD1CDC44;

  return sub_1BD9959EC(a1);
}

unint64_t sub_1BD994FFC()
{
  result = qword_1EBD5A3C0;
  if (!qword_1EBD5A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3C0);
  }

  return result;
}

unint64_t sub_1BD995054()
{
  result = qword_1EBD5A3C8;
  if (!qword_1EBD5A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A3D0);
    sub_1BD15D588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3C8);
  }

  return result;
}

uint64_t sub_1BD9950D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD994504();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD995190()
{
  result = qword_1EBD5A3D8;
  if (!qword_1EBD5A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3D8);
  }

  return result;
}

unint64_t sub_1BD9951E8()
{
  result = qword_1EBD5A3E0;
  if (!qword_1EBD5A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3E0);
  }

  return result;
}

unint64_t sub_1BD995240()
{
  result = qword_1EBD5A3E8;
  if (!qword_1EBD5A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3E8);
  }

  return result;
}

unint64_t sub_1BD995298()
{
  result = qword_1EBD5A3F0;
  if (!qword_1EBD5A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3F0);
  }

  return result;
}

unint64_t sub_1BD9952EC()
{
  result = qword_1EBD5A3F8;
  if (!qword_1EBD5A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A3F8);
  }

  return result;
}

unint64_t sub_1BD995344()
{
  result = qword_1EBD5A400;
  if (!qword_1EBD5A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A400);
  }

  return result;
}

uint64_t sub_1BD995398@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB7D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD995444()
{
  result = qword_1EBD5A408;
  if (!qword_1EBD5A408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A408);
  }

  return result;
}

uint64_t sub_1BD9954A8(uint64_t a1)
{
  v2 = sub_1BD8710C4();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1BD9954F8()
{
  result = qword_1EBD5A418;
  if (!qword_1EBD5A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A418);
  }

  return result;
}

uint64_t sub_1BD995554()
{
  sub_1BD995344();

  return sub_1BE048EF4();
}

id sub_1BD9955C0(void *a1)
{
  v29 = a1;
  v1 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A420);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  v13 = *(v4 + 16);
  v13(v7, v12, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740);
  sub_1BE048964();
  sub_1BE052354();
  v13(v7, v12, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048824();
  sub_1BE048964();
  v14 = v29;
  result = [v29 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = result;
  v17 = sub_1BE052434();

  sub_1BE048C84();
  result = [v14 localizedName];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_1BE052434();
  v21 = v20;

  v30 = v19;
  v31 = v21;
  sub_1BE0487D4();
  v22 = [v14 parentRegion];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 localizedName];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1BE052434();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v30 = v26;
    v31 = v28;
    sub_1BE0487D4();
  }

  else
  {
  }

  return v17;
}

uint64_t sub_1BD9959EC(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1BE04CFC4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD995B14, 0, 0);
}

uint64_t sub_1BD995B14()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "WorldRegionEntity:entitiesForIdentifier", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[27] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v5 + 8))(v6, v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[28] = v12;
  v13 = sub_1BE052724();
  v0[29] = v13;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD995DA8;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD994558;
  v0[13] = &block_descriptor_226;
  v0[14] = v14;
  [v12 regionsWithIdentifiers:v13 completion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD995DA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD995E88, 0, 0);
}

char *sub_1BD995E88()
{
  v1 = *(v0 + 144);

  if (!v1)
  {

LABEL_16:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  if (v1 >> 62)
  {
    v2 = sub_1BE053704();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_15:
    v16 = *(v0 + 224);

    goto LABEL_16;
  }

LABEL_4:
  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5323D8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v20;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](v4, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = sub_1BD9955C0(v6);
    v12 = *(v20 + 16);
    v11 = *(v20 + 24);
    if (v12 >= v11 >> 1)
    {
      v18 = v8;
      v19 = v7;
      v14 = v9;
      v15 = v10;
      sub_1BD5323D8((v11 > 1), v12 + 1, 1);
      v10 = v15;
      v9 = v14;
      v8 = v18;
      v7 = v19;
    }

    ++v4;
    *(v20 + 16) = v12 + 1;
    v13 = (v20 + 32 * v12);
    v13[4] = v7;
    v13[5] = v8;
    v13[6] = v9;
    v13[7] = v10;
  }

  while (v2 != v4);

LABEL_17:
  sub_1BD994AF8(*(v0 + 216), "WorldRegionEntity:entitiesForIdentifier");

  v17 = *(v0 + 8);

  return v17(v5);
}

uint64_t sub_1BD99607C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_1BE04CFC4();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9961A4, 0, 0);
}

uint64_t sub_1BD9961A4()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "WorldRegionEntity:entitiesMatchingString", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[28] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v5 + 8))(v6, v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[29] = v12;
  v13 = sub_1BE052404();
  v0[30] = v13;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD996438;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD994558;
  v0[13] = &block_descriptor_13_7;
  v0[14] = v14;
  [v12 regionsMatchingName:v13 types:0 completion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD996438()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD996518, 0, 0);
}

char *sub_1BD996518()
{
  v1 = *(v0 + 144);

  if (!v1)
  {

LABEL_53:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v44 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v39 = v0;
    v5 = 0;
    v42 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v42)
      {
        v6 = MEMORY[0x1BFB40900](v5, v1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_49;
        }

        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v0 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = sub_1BE053704();
        goto LABEL_4;
      }

      if (![v6 type])
      {
        goto LABEL_7;
      }

      v8 = [v7 localizedName];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1BE052434();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = [v7 parentRegion];
      if (v13)
      {
        v40 = v10;
        v14 = v1;
        v15 = v3;
        v16 = v2;
        v17 = v13;
        v18 = [v13 localizedName];

        if (v18)
        {
          v19 = sub_1BE052434();
          v21 = v20;
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        v2 = v16;
        v3 = v15;
        v1 = v14;
        v10 = v40;
        if (!v12)
        {
LABEL_21:
          if (v21)
          {
            goto LABEL_30;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v19 = 0;
        v21 = 0;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      if (!v21)
      {
LABEL_30:

LABEL_31:
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        goto LABEL_8;
      }

      if (v10 == v19 && v12 == v21)
      {
      }

      else
      {
        v22 = sub_1BE053B84();

        if ((v22 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_7:

LABEL_8:
      ++v5;
      if (v0 == v3)
      {
        v23 = v44;
        v0 = v39;
        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_36:

  if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = sub_1BE053704();
    if (v24)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_52:
    v37 = *(v0 + 232);

    goto LABEL_53;
  }

LABEL_39:
  result = sub_1BD5323D8(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
    return result;
  }

  v26 = 0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1BFB40900](v26, v23);
    }

    else
    {
      v27 = *(v23 + 8 * v26 + 32);
    }

    v28 = sub_1BD9955C0(v27);
    v33 = *(v4 + 16);
    v32 = *(v4 + 24);
    if (v33 >= v32 >> 1)
    {
      v41 = v29;
      v43 = v28;
      v35 = v30;
      v36 = v31;
      sub_1BD5323D8((v32 > 1), v33 + 1, 1);
      v31 = v36;
      v30 = v35;
      v29 = v41;
      v28 = v43;
    }

    ++v26;
    *(v4 + 16) = v33 + 1;
    v34 = (v4 + 32 * v33);
    v34[4] = v28;
    v34[5] = v29;
    v34[6] = v30;
    v34[7] = v31;
  }

  while (v24 != v26);

LABEL_54:
  sub_1BD994AF8(*(v0 + 224), "WorldRegionEntity:entitiesMatchingString");

  v38 = *(v0 + 8);

  return v38(v4);
}

uint64_t sub_1BD996978@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD99A41C(&qword_1EBD5A450, type metadata accessor for AirDropRequirements);
  sub_1BE04B594();

  *a2 = *(v3 + 26);
  return result;
}

void NearbyPeerPaymentAmountEntryViewController.init(initialAmount:initialMemo:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC;
  *&v4[v8] = [objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController) init];
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 account];

    if (v11)
    {
      *&v4[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount] = v11;
      v12 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_authController;
      type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(0);
      swift_allocObject();
      *&v4[v12] = NearbyPeerPaymentSenderAuthorizationController.init()();
      v13 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements;
      type metadata accessor for AirDropRequirements();
      v14 = swift_allocObject();
      v15 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
      [v15 activate];
      *(v14 + 16) = v15;
      *(v14 + 24) = [objc_opt_self() nearFieldSharingEnabled];
      *(v14 + 25) = 769;
      sub_1BE04B5C4();
      *&v4[v13] = v14;
      v17.receiver = v4;
      v17.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
      v16 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
      sub_1BD996EB0(a1, a2, a3);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD996CDC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC;
  *&v2[v4] = [objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController) init];
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 account];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount] = v7;
  v8 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_authController;
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(0);
  swift_allocObject();
  *&v2[v8] = NearbyPeerPaymentSenderAuthorizationController.init()();
  v9 = OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements;
  type metadata accessor for AirDropRequirements();
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
  [v11 activate];
  *(v10 + 16) = v11;
  *(v10 + 24) = [objc_opt_self() nearFieldSharingEnabled];
  *(v10 + 25) = 769;
  sub_1BE04B5C4();
  *&v2[v9] = v10;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  if (v12)
  {
    v13 = v12;
    sub_1BD996EB0(0, 0, 0);
  }
}

void sub_1BD996EB0(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC];
  [v13 setContext_];
  [v13 setLeadingAction_];
  [v13 setDelegate_];
  if (a1)
  {
    v25[1] = a2;
    v14 = *&v3[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount];
    v15 = a1;
    v16 = [v14 currentBalance];
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = v16;
    v18 = v7;
    v19 = [v16 currency];

    if (v19)
    {
      sub_1BE052434();
    }

    v20 = sub_1BE052404();

    v21 = PKCurrencyAmountCreate(v15, v20);

    [v13 setAmount_];
    v7 = v18;
  }

  if (a3)
  {
    a3 = sub_1BE052404();
  }

  [v13 setMemo_];

  [v3 addChildViewController_];
  [v3 setOverrideUserInterfaceStyle_];
  (*(v8 + 104))(v12, *MEMORY[0x1E69B8050], v7);
  v22 = PKPassKitBundle();
  if (v22)
  {
    v23 = v22;
    sub_1BE04B6F4();

    (*(v8 + 8))(v12, v7);
    v24 = sub_1BE052404();

    [v3 setTitle_];

    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id sub_1BD9971B8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  objc_msgSendSuper2(&v5, sel_loadView);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC];
    result = [v3 view];
    if (result)
    {
      v4 = result;
      [v2 addSubview_];

      return [v3 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD9972C4()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  sub_1BD997A7C();
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_1BD0E5E8C(0, &qword_1EBD43450);
  v4 = sub_1BE052744();

  if (v4 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB40900](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = v0;
  v8 = sub_1BE053074();

  if (v8)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_1BE0530B4();
    sub_1BD0E5E8C(0, &qword_1EBD41C40);
    v11 = v10;
    v12 = sub_1BE052C74();
    v13 = [v7 navigationItem];
    [v13 setLeftBarButtonItem_];
  }
}

void sub_1BD997508()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1BD997734(char a1, SEL *a2)
{
  v36.receiver = v2;
  v36.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  objc_msgSendSuper2(&v36, *a2, a1 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B98E0;
  v7 = *v6;
  *(inited + 32) = *v6;
  v8 = sub_1BE052434();
  v9 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = *v9;
  *(inited + 56) = *v9;
  v12 = sub_1BE052434();
  v13 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v15 = *v13;
  *(inited + 80) = *v13;
  v16 = sub_1BE052434();
  v17 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v16;
  *(inited + 96) = v18;
  v19 = *v17;
  *(inited + 104) = *v17;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v20;
  v21 = v7;
  v22 = v11;
  v23 = v15;
  v24 = v19;
  v25 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1BE0B69E0;
  v27 = *MEMORY[0x1E69BA850];
  *(v26 + 32) = *MEMORY[0x1E69BA850];
  *(v26 + 40) = sub_1BE052434();
  *(v26 + 48) = v28;
  v29 = v27;
  v30 = sub_1BD1AAF50(v26);
  swift_setDeallocating();
  sub_1BD0DE53C(v26 + 32, &qword_1EBD3F590);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v30;
  sub_1BD6BC0F4(v25, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v35);

  v32 = *MEMORY[0x1E69BB6A8];
  v33 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD99A41C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v34 = sub_1BE052224();

  [v33 subject:v32 sendEvent:v34];
}

void sub_1BD997A7C()
{
  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount);
  v2 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC);
  v3 = [v2 amount];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 amount];

  v6 = [v1 deviceTapFeatureDescriptor];
  v7 = [v1 transactionAmountIsValid:v5 feature:v6];

  v8 = [v2 mainView];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 actionView];

  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v10 setButtonEnabled:v7 forAction:{objc_msgSend(v2, sel_leadingAction)}];
}

void sub_1BD997BCC(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    sub_1BD1A91F0(a1);
    v5 = sub_1BE052224();

    [v4 presentSenderFlowWithHost:0 userInfo:v5 completion:0];

    v6 = [v1 navigationController];
    if (v6)
    {
      v7 = v6;
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD997CE0(uint64_t a1)
{
  v2 = sub_1BE04B7C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D214();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B824();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v85 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  v89 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v91 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v93 = &v84 - v20;
  v90 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v84 - v32;
  v34 = type metadata accessor for FeatureError(0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v88 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v37;
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = &v84 - v41;
  v92 = *(v3 + 16);
  v92(v29, a1, v2, v40);
  v97 = v3;
  (*(v3 + 56))(v29, 0, 1, v2);
  FeatureError.init(_:)(v29, v33);
  v86 = v35;
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    sub_1BD230930(v33, v42);
    sub_1BE04B7B4();
    v53 = v93;
    sub_1BD0DE19C(v25, v93, &unk_1EBD3F6C0);
    v55 = v94;
    v54 = v95;
    if ((*(v94 + 48))(v53, 1, v95) == 1)
    {
      sub_1BD0DE53C(v53, &unk_1EBD3F6C0);
    }

    else
    {
      v57 = v85;
      (*(v55 + 32))(v85, v53, v54);
      _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
      (*(v55 + 8))(v57, v54);
    }

    v58 = v101;
    v59 = sub_1BE04A844();
    v60 = PKTitleForDisplayableError();

    if (v60)
    {
      sub_1BE052434();
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    v63 = sub_1BE04A844();
    v64 = MEMORY[0x1BFB42D10]();

    if (v64)
    {
      sub_1BE052434();
      v66 = v65;

      v67 = v102;
      if (v62)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v66 = 0;
      v67 = v102;
      if (v62)
      {
LABEL_14:
        v68 = sub_1BE052404();

        if (v66)
        {
LABEL_15:
          v69 = sub_1BE052404();

          goto LABEL_19;
        }

LABEL_18:
        v69 = 0;
LABEL_19:
        v102 = [objc_opt_self() alertControllerWithTitle:v68 message:v69 preferredStyle:1];

        v70 = v103;
        v67[13](v58, *MEMORY[0x1E69B80D0], v103);
        result = PKPassKitBundle();
        if (result)
        {
          v71 = result;
          sub_1BE04B6F4();

          (v67[1])(v58, v70);
          v72 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73 = v88;
          sub_1BD2F8B48(v42, v88);
          v74 = v91;
          sub_1BD0DE19C(v25, v91, &unk_1EBD3F6C0);
          v75 = *(v86 + 80);
          v103 = v42;
          v76 = (v75 + 24) & ~v75;
          v77 = (v87 + *(v89 + 80) + v76) & ~*(v89 + 80);
          v78 = swift_allocObject();
          v101 = v25;
          v79 = v78;
          *(v78 + 16) = v72;
          sub_1BD230930(v73, v78 + v76);
          sub_1BD0DE204(v74, v79 + v77, &unk_1EBD3F6C0);
          sub_1BE048964();
          v80 = sub_1BE052404();

          aBlock[4] = sub_1BD999EE4;
          aBlock[5] = v79;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BD198918;
          aBlock[3] = &block_descriptor_227;
          v81 = _Block_copy(aBlock);

          v82 = [objc_opt_self() actionWithTitle:v80 style:0 handler:v81];
          _Block_release(v81);

          v83 = v102;
          [v102 addAction_];

          [v104 presentViewController:v83 animated:1 completion:0];
          sub_1BD0DE53C(v101, &unk_1EBD3F6C0);
          return sub_1BD230994(v103);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v68 = 0;
    if (v66)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_1BD0DE53C(v33, &qword_1EBD416C0);
  v43 = v98;
  sub_1BE04D094();
  v44 = v96;
  v45 = a1;
  v46 = v92;
  (v92)(v96, v45, v2);
  v47 = sub_1BE04D204();
  v48 = sub_1BE052C34();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    sub_1BD99A41C(&unk_1EBD399C0, MEMORY[0x1E69B7EE0]);
    swift_allocError();
    v46(v51, v44, v2);
    v52 = _swift_stdlib_bridgeErrorToNSError();
    (*(v97 + 8))(v44, v2);
    *(v49 + 4) = v52;
    *v50 = v52;
    _os_log_impl(&dword_1BD026000, v47, v48, "NearbyPeerPayment: attempted to show unknown error: %@", v49, 0xCu);
    sub_1BD0DE53C(v50, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v50, -1, -1);
    MEMORY[0x1BFB45F20](v49, -1, -1);
  }

  else
  {

    (*(v97 + 8))(v44, v2);
  }

  return (*(v99 + 8))(v43, v100);
}

uint64_t sub_1BD9987E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_1BE04B824();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v25 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_1BE048964();

    sub_1BD2F8B48(a3, v18);
    v21 = type metadata accessor for FeatureError(0);
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    NearbyPeerPaymentSenderAuthorizationController.errorProcessed(_:)(v18);

    sub_1BD0DE53C(v18, &qword_1EBD416C0);
  }

  sub_1BD0DE19C(a4, v9, &unk_1EBD3F6C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BD0DE53C(v9, &unk_1EBD3F6C0);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = sub_1BE052434();
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v23, v24);

  return (*(v11 + 8))(v14, v10);
}

void sub_1BD998AB4(char a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v43 - v13;
  v15 = sub_1BE04B824();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD9AF408();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BD0DE53C(v14, &unk_1EBD3F6C0);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
    (*(v16 + 8))(v19, v15);
  }

  sub_1BD9AF964(a1);
  v21 = v20;
  sub_1BD9AF5C4(a1);
  v23 = v22;
  if (v21)
  {
    v24 = sub_1BE052404();

    if (v23)
    {
LABEL_6:
      v25 = sub_1BE052404();

      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
    if (v22)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  v27 = *MEMORY[0x1E69B8050];
  v45 = *(v4 + 104);
  v45(v10, v27, v3);
  v28 = PKPassKitBundle();
  if (v28)
  {
    v29 = v28;
    sub_1BE04B6F4();

    v44 = *(v4 + 8);
    v44(v10, v3);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    v31 = sub_1BE052404();

    aBlock[4] = sub_1BD99A368;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_22_11;
    v32 = _Block_copy(aBlock);

    v33 = objc_opt_self();
    v34 = [v33 actionWithTitle:v31 style:0 handler:v32];
    v43 = v1;
    v35 = v3;
    v36 = v34;
    _Block_release(v32);

    [v26 addAction_];
    v37 = v35;
    v38 = v46;
    v45(v46, v27, v37);
    v39 = PKPassKitBundle();
    if (v39)
    {
      v40 = v39;
      sub_1BE04B6F4();

      v44(v38, v37);
      v41 = sub_1BE052404();

      v42 = [v33 actionWithTitle:v41 style:1 handler:0];

      [v26 addAction_];
      [v43 presentViewController:v26 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD999030()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1BE048964();

    sub_1BD9B0774();
  }

  return result;
}

id sub_1BD9990C4(SEL *a1)
{
  result = [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount) deviceTapFeatureDescriptor];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD999138(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount];
  v5 = a1;
  result = [v4 deviceTapFeatureDescriptor];
  if (result)
  {
    v7 = result;
    v8 = [result *a3];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9991C8()
{
  v1 = [*(v0 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_peerPaymentAccount) currentBalance];

  return v1;
}

id sub_1BD999298(id result, void (*a2)(void), uint64_t a3)
{
  if (result == 12)
  {
    v6 = *(v3 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements);
    sub_1BD9B0214();
    swift_getKeyPath();
    sub_1BD99A41C(&qword_1EBD5A450, type metadata accessor for AirDropRequirements);
    sub_1BE04B594();

    v7 = *(v6 + 26);
    if (v7 == 3)
    {
      v8 = *(v3 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC);
      result = [v8 amount];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      v10 = [v8 memo];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1BE052434();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = a2;
      v16[4] = a3;
      sub_1BE048964();
      sub_1BE048964();
      NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(v9, v12, v14, sub_1BD999DA8, v16);
    }

    else
    {
      sub_1BD998AB4(v7);
      a2(0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98E0;
    v18 = *MEMORY[0x1E69BA440];
    *(inited + 32) = *MEMORY[0x1E69BA440];
    v19 = sub_1BE052434();
    v20 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v19;
    *(inited + 48) = v21;
    v22 = *v20;
    *(inited + 56) = *v20;
    v23 = sub_1BE052434();
    v24 = MEMORY[0x1E69BAFB0];
    *(inited + 64) = v23;
    *(inited + 72) = v25;
    v26 = *v24;
    *(inited + 80) = *v24;
    v27 = sub_1BE052434();
    v28 = MEMORY[0x1E69BAF60];
    *(inited + 88) = v27;
    *(inited + 96) = v29;
    v30 = *v28;
    *(inited + 104) = *v28;
    *(inited + 112) = sub_1BE052434();
    *(inited + 120) = v31;
    v32 = v18;
    v33 = v22;
    v34 = v26;
    v35 = v30;
    v36 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v36);
  }

  return result;
}

uint64_t sub_1BD9995B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a1;
  v33 = sub_1BE051F54();
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  v19 = &v29 - v18;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v32 = sub_1BE052D54();
  sub_1BD0DE19C(a2, v19, &qword_1EBD47198);
  v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  sub_1BD0DE204(v19, v22 + v20, &qword_1EBD47198);
  v23 = (v22 + v21);
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1BD99A370;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_28_7;
  v25 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD99A41C(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v26 = v33;
  sub_1BE053664();
  v27 = v32;
  MEMORY[0x1BFB3FDF0](0, v13, v9, v25);
  _Block_release(v25);

  (*(v36 + 8))(v9, v26);
  return (*(v34 + 8))(v13, v35);
}

void sub_1BD999984(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20 - v10;
  v12 = sub_1BE04B7C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1BD0DE19C(a2, v11, &qword_1EBD47198);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1BD0DE53C(v11, &qword_1EBD47198);
      if (a5)
      {
        sub_1BD997BCC(a5);
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      a3(v19);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      sub_1BD997CE0(v16);
      a3(0);

      (*(v13 + 8))(v16, v12);
    }
  }
}

id NearbyPeerPaymentAmountEntryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NearbyPeerPaymentAmountEntryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentAmountEntryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD999EE4(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureError(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1BD9987E4(a1, v7, v1 + v4, v8);
}

void sub_1BD999FC8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (a1 == 12)
  {
    v7 = *(a2 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_airDropRequirements);
    _Block_copy(a3);
    sub_1BD9B0214();
    swift_getKeyPath();
    sub_1BD99A41C(&qword_1EBD5A450, type metadata accessor for AirDropRequirements);
    sub_1BE04B594();

    v8 = *(v7 + 26);
    if (v8 != 3)
    {
      sub_1BD998AB4(v8);
      a3[2](a3, 0);
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B98E0;
      v20 = *MEMORY[0x1E69BA440];
      *(inited + 32) = *MEMORY[0x1E69BA440];
      v21 = sub_1BE052434();
      v22 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v21;
      *(inited + 48) = v23;
      v24 = *v22;
      *(inited + 56) = *v22;
      v25 = sub_1BE052434();
      v26 = MEMORY[0x1E69BAFB0];
      *(inited + 64) = v25;
      *(inited + 72) = v27;
      v28 = *v26;
      *(inited + 80) = *v26;
      v29 = sub_1BE052434();
      v30 = MEMORY[0x1E69BAF60];
      *(inited + 88) = v29;
      *(inited + 96) = v31;
      v32 = *v30;
      *(inited + 104) = *v30;
      *(inited + 112) = sub_1BE052434();
      *(inited + 120) = v33;
      v34 = v20;
      v35 = v24;
      v36 = v28;
      v37 = v32;
      v38 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v38);

      return;
    }

    v9 = *(a2 + OBJC_IVAR___PKNearbyPeerPaymentAmountEntryViewController_amountEntryVC);
    v10 = [v9 amount];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 memo];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1BE052434();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = sub_1BD14BF2C;
      v18[4] = v6;
      sub_1BE048964();
      sub_1BE048964();
      NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(v11, v14, v16, sub_1BD99A46C, v18);

      goto LABEL_12;
    }

    _Block_release(a3);
    __break(1u);
  }

  else
  {
    _Block_copy(a3);
  }
}

void sub_1BD99A370()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_1BD999984(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_1BD99A41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD99A490()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD99A528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36[0] = a6;
  v37 = a5;
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v40 = a1;
  v47 = a7;
  v8 = sub_1BE04FA44();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v36[2] = sub_1BE04EBD4();
  v11 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v58 = a6;
  v59 = v11;
  v36[1] = swift_getWitnessTable();
  v12 = sub_1BE04E2F4();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v36 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A458);
  v16 = sub_1BE04EBD4();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v36 - v18;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1BD0DE4F4(&qword_1EBD366F8, &qword_1EBD5A458);
  v56 = WitnessTable;
  v57 = v21;
  v22 = swift_getWitnessTable();
  v54 = v16;
  v55 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v25);
  v27 = v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v36 - v30;
  v48 = v37;
  v49 = v36[0];
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  sub_1BE0501B4();
  sub_1BE04E304();
  v54 = 0x69566C6C6F726373;
  v55 = 0xEA00000000007765;
  sub_1BE050B04();
  v32 = v12;
  v33 = v44;
  (*(v38 + 8))(v15, v32);
  sub_1BE04FA34();
  LOBYTE(WitnessTable) = sub_1BE0501B4();
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != WitnessTable)
  {
    sub_1BE0501A4();
  }

  sub_1BE050D34();
  (*(v45 + 8))(v33, v46);
  (*(v39 + 8))(v19, v16);
  v54 = v16;
  v55 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v27);
  v34 = *(v24 + 8);
  v34(v27, OpaqueTypeMetadata2);
  sub_1BD147308(v31);
  return (v34)(v31, OpaqueTypeMetadata2);
}

uint64_t sub_1BD99AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  v33 = a7;
  v31 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v15 = sub_1BE04EBD4();
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v30 = &v28 - v22;
  a3(v21);
  sub_1BD99ADC8(a1, a2, a3, a4, a5, a6, v38);
  v36 = v38[0];
  v37 = v38[1];
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70);
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70);
  v23 = v29;
  sub_1BE050834();

  (*(v31 + 8))(v14, a5);
  v24 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v34 = v23;
  v35 = v24;
  swift_getWitnessTable();
  v25 = v30;
  sub_1BD147308(v18);
  v26 = *(v32 + 8);
  v26(v18, v15);
  sub_1BD147308(v25);
  return (v26)(v25, v15);
}

uint64_t sub_1BD99ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = a6;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  *a7 = sub_1BD99B10C;
  a7[1] = v14;
  sub_1BE048964();

  return sub_1BE048964();
}

uint64_t sub_1BD99AE68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v31[1] = a7;
  v13 = sub_1BE04FA04();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0x69566C6C6F726373;
  v33 = 0xEA00000000007765;
  sub_1BE04FD24();
  sub_1BE04E694();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v14 + 8))(v17, v13);
  v37.origin.x = v19;
  v37.origin.y = v21;
  v37.size.width = v23;
  v37.size.height = v25;
  MinY = CGRectGetMinY(v37);
  v27 = sub_1BE051404();
  v28 = swift_allocObject();
  *(v28 + 2) = a5;
  *(v28 + 3) = a6;
  *(v28 + 4) = a1;
  *(v28 + 5) = a2;
  *(v28 + 6) = a3;
  *(v28 + 7) = a4;
  v28[8] = MinY;
  v32 = v27;
  v33 = sub_1BD99B11C;
  v34 = v28;
  v35 = 0;
  v36 = 0;
  *&v31[2] = MinY;
  v29 = swift_allocObject();
  v29[2] = a5;
  v29[3] = a6;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;
  v29[7] = a4;
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
}

uint64_t objectdestroyTm_116()
{

  return swift_deallocObject();
}

id static FinanceKitTransactionViewProvider.makeViewController(transaction:institution:navigationController:style:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v36 = a2;
  v5 = sub_1BE049184();
  v35 = *(v5 - 8);
  v6 = v35;
  MEMORY[0x1EEE9AC00](v5, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_1BE049A94();
  v34 = *(v13 - 8);
  v14 = v34;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v32 - v21;
  v23 = *(v14 + 16);
  v33 = v13;
  v23(&v32 - v21, a1, v13, v20);
  v24 = *(v6 + 16);
  v24(v12, v36, v5);
  type metadata accessor for NavigationController();
  v36 = swift_allocObject();
  v25 = v38;
  *(v36 + 16) = v38;
  (v23)(v17, v22, v13);
  v26 = v37;
  v24(v37, v12, v5);
  _s9ViewModelCMa_3(0);
  swift_allocObject();
  v27 = v25;
  v43 = sub_1BD737C08(v17, v26, v39);
  sub_1BE051694();
  (*(v35 + 8))(v12, v5);
  (*(v34 + 8))(v22, v33);
  v40 = sub_1BD628CF0;
  v41 = v36;
  v42 = 0;
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A6B0));
  v29 = sub_1BE04F894();
  v30 = [v29 navigationItem];
  [v30 setLargeTitleDisplayMode_];

  return v29;
}

id FinanceKitTransactionViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitTransactionViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitTransactionViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FinanceKitTransactionViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitTransactionViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s9PassKitUI07FinanceB23TransactionViewProviderC04makeF10Controller13transactionID11institution010navigationI05styleSo06UIViewI0C10Foundation4UUIDV_So13FKInstitutionCSo012UINavigationI0CSo09PKPaymenta6DetailF5StyleVtFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v51 = a2;
  v52 = a4;
  v54 = a3;
  v53 = sub_1BE049184();
  v48 = *(v53 - 8);
  v5 = v48;
  MEMORY[0x1EEE9AC00](v53, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  v13 = sub_1BE04AFE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v45 - v21;
  v23 = *(v14 + 16);
  v50 = &v45 - v21;
  v23(&v45 - v21, a1, v13, v20);
  v49 = v12;
  sub_1BE052BE4();
  type metadata accessor for NavigationController();
  v51 = swift_allocObject();
  *(v51 + 16) = v54;
  (v23)(v17, v22, v13);
  v24 = v23;
  v25 = *(v5 + 16);
  v25(v8, v12, v53);
  v26 = v25;
  _s9ViewModelCMa_3(0);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  v29 = sub_1BE049A94();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
  v31 = sub_1BE0495A4();
  (*(*(v31 - 8) + 56))(v27 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
  v33 = sub_1BE048F54();
  (*(*(v33 - 8) + 56))(v27 + v32, 1, 1, v33);
  v34 = v54;
  sub_1BE04B5C4();
  v35 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID;
  v36 = v46;
  v24(v27 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, v46, v13);
  (*(v14 + 56))(v27 + v35, 0, 1, v13);
  v37 = v47;
  v38 = v53;
  v26(v27 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v47, v53);
  *(v27 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style) = v52;
  v39 = *(v48 + 8);
  v39(v37, v38);
  v40 = *(v14 + 8);
  v40(v36, v13);
  *(v27 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = MEMORY[0x1E69E7CC0];
  v58 = v27;
  sub_1BE051694();
  v39(v49, v38);
  v40(v50, v13);
  v55 = sub_1BD628CF0;
  v56 = v51;
  v57 = 0;
  v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A6B0));
  v42 = sub_1BE04F894();
  v43 = [v42 navigationItem];
  [v43 setLargeTitleDisplayMode_];

  return v42;
}

void *sub_1BD99BBCC()
{
  v1 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD99BC78(uint64_t a1)
{
  v3 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BD99BCD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1BD99BD90(void *a1, void *a2)
{
  v5 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  v7 = OBJC_IVAR___PKBarcodePassBoopProvider_pass;
  v8 = *(v2 + OBJC_IVAR___PKBarcodePassBoopProvider_pass);
  *(v2 + OBJC_IVAR___PKBarcodePassBoopProvider_pass) = 0;

  if (PKBarcodePassSharingEnabled())
  {
    v27 = a2;
    v9 = *(v2 + v7);
    *(v2 + v7) = a1;
    v10 = a1;

    v11 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v12 = *MEMORY[0x1E69BBB78];
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v32 = sub_1BD99C4DC;
    v33 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1BD99C4E4;
    v31 = &block_descriptor_228;
    v14 = _Block_copy(&aBlock);
    v15 = v10;
    v16 = v12;

    [v11 registerDataRepresentationForTypeIdentifier:v16 visibility:0 loadHandler:v14];
    _Block_release(v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B7020;
    *(v17 + 32) = v11;
    v18 = objc_allocWithZone(MEMORY[0x1E69DC640]);
    sub_1BD0E5E8C(0, &unk_1EBD5A478);
    v19 = v11;
    v20 = sub_1BE052724();

    v21 = [v18 initWithItemProviders_];

    v22 = *(v2 + v5);
    *(v2 + v5) = v21;
    v23 = v21;

    if (v23)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v27;
      v32 = sub_1BD99C584;
      v33 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_1BD99C274;
      v31 = &block_descriptor_6_3;
      v25 = _Block_copy(&aBlock);
      v26 = v27;

      [v23 setMetadataProvider_];

      _Block_release(v25);
      v19 = v23;
    }
  }
}

void sub_1BD99C084(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BE052434();
  v6 = v5;
  if (v4 == sub_1BE052434() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1BE053B84();

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696EC98]) init];
  if (!a1)
  {
LABEL_12:

LABEL_13:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v11 = [a1 snapshotOfFrontFace];
  if (v11)
  {
    v12 = v11;
    v13 = UIImagePNGRepresentation(v11);

    if (v13)
    {
      v14 = sub_1BE04AAC4();
      v16 = v15;

      v17 = objc_allocWithZone(MEMORY[0x1E696EC60]);
      sub_1BD041A38(v14, v16);
      v18 = sub_1BE04AAB4();
      v19 = sub_1BE052404();
      v20 = [v17 initWithData:v18 MIMEType:v19];

      sub_1BD1245AC(v14, v16);
      [v10 setImage_];
      *(a2 + 24) = sub_1BD0E5E8C(0, &qword_1EBD5A488);
      sub_1BD1245AC(v14, v16);

      *a2 = v10;
      return;
    }

    goto LABEL_12;
  }

  __break(1u);
}

id sub_1BD99C274(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1BE053B74();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1BD99C448(void (*a1)(uint64_t, unint64_t, void), int a2, id a3)
{
  v4 = [a3 archiveData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE04AAC4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  a1(v6, v8, 0);
  sub_1BD030220(v6, v8);
  return 0;
}

id sub_1BD99C4E4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1BE048964();
  v5 = v2(sub_1BD99C8BC, v4);

  return v5;
}

void sub_1BD99C58C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1BE04A844();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1BE04AAB4();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id BarcodePassBoopProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BarcodePassBoopProvider.init()()
{
  *&v0[OBJC_IVAR___PKBarcodePassBoopProvider_pass] = 0;
  *&v0[OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarcodePassBoopProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BarcodePassBoopProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarcodePassBoopProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD99C8D8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1BE04D214();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD99C9E0, 0, 0);
}

uint64_t sub_1BD99C9E0()
{
  v1 = [*(v0 + 152) paymentPass];
  *(v0 + 232) = v1;
  if (!v1)
  {
    v12 = 0;
    goto LABEL_41;
  }

  v2 = v1;
  v3 = [v2 devicePrimaryPaymentApplication];
  if (v3)
  {
    v4 = v3;
    if ([v3 state] == 7)
    {

      sub_1BE04D074();
      v5 = sub_1BE04D204();
      v6 = sub_1BE052C54();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 224);
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      if (v7)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1BD026000, v5, v6, "PassEntityUtilities: Primary payment application is in lost mode", v11, 2u);
        MEMORY[0x1BFB45F20](v11, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v8, v9);
      goto LABEL_40;
    }
  }

  else
  {
    sub_1BE04D074();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C34();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 216);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "PassEntityUtilities: Primary payment application not found. Skipping state check.", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
  }

  if ([v2 isPeerPaymentPass])
  {

    v20 = [objc_opt_self() sharedService];
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = v20;
    v22 = [v20 targetDevice];
    if (v22)
    {
      v23 = [v22 account];
      swift_unknownObjectRelease();
      if (v23)
      {
        if ([v23 state] == 3)
        {
          sub_1BE04D074();
          v24 = sub_1BE04D204();
          v25 = sub_1BE052C34();
          v26 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 208);
          v28 = *(v0 + 160);
          v29 = *(v0 + 168);
          if (v26)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = "PassEntityUtilities: Peer payment account is locked";
LABEL_37:
            _os_log_impl(&dword_1BD026000, v24, v25, v31, v30, 2u);
            MEMORY[0x1BFB45F20](v30, -1, -1);

LABEL_39:
            (*(v29 + 8))(v27, v28);
LABEL_40:
            v12 = 1;
            goto LABEL_41;
          }

          goto LABEL_38;
        }

        if (([objc_opt_self() peerPaymentPassIsProvisionedOnDeviceForAccount_] & 1) == 0)
        {
          sub_1BE04D074();
          v24 = sub_1BE04D204();
          v25 = sub_1BE052C34();
          v47 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 200);
          v28 = *(v0 + 160);
          v29 = *(v0 + 168);
          if (v47)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = "PassEntityUtilities: Peer payment account is not set up";
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }

        v12 = 0;
LABEL_41:

        v45 = *(v0 + 8);
        v46 = v12;
        goto LABEL_42;
      }

LABEL_27:
      v36 = (v0 + 192);
      sub_1BE04D074();
      v37 = sub_1BE04D204();
      v38 = sub_1BE052C34();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "PassEntityUtilities: Peer payment account not found";
LABEL_33:
        _os_log_impl(&dword_1BD026000, v37, v38, v40, v39, 2u);
        MEMORY[0x1BFB45F20](v39, -1, -1);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v22);
  }

  v12 = [v2 isAppleCardPass];

  if (!v12)
  {

    goto LABEL_41;
  }

  v32 = [objc_opt_self() sharedInstance];
  *(v0 + 240) = v32;
  if (v32)
  {
    v33 = v32;
    v34 = [*(v0 + 152) uniqueID];
    *(v0 + 248) = v34;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BD99D13C;
    v35 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58578);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD1F07A8;
    *(v0 + 104) = &block_descriptor_229;
    *(v0 + 112) = v35;
    [v33 accountForPassWithUniqueID:v34 completion:v0 + 80];
    v22 = (v0 + 16);

    return MEMORY[0x1EEE6DEC8](v22);
  }

  v36 = (v0 + 176);
  sub_1BE04D074();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C34();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "PassEntityUtilities: Apple Card account not found";
    goto LABEL_33;
  }

LABEL_34:
  v41 = *v36;
  v42 = *(v0 + 160);
  v43 = *(v0 + 168);

  (*(v43 + 8))(v41, v42);
  sub_1BE0484F4();
  sub_1BD1351C0();
  swift_allocError();
  sub_1BE0484E4();
  v44 = *(v0 + 232);
  swift_willThrow();

  v45 = *(v0 + 8);
  v46 = 0;
LABEL_42:

  return v45(v46);
}

uint64_t sub_1BD99D13C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD99D21C, 0, 0);
}

uint64_t sub_1BD99D21C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 144);

  if (v2)
  {
    if (([v2 blockAllAccountAccess] & 1) != 0 || objc_msgSend(v2, sel_state) == 3)
    {
      sub_1BE04D074();
      v3 = sub_1BE04D204();
      v4 = sub_1BE052C34();
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 232);
      v7 = *(v0 + 184);
      v8 = *(v0 + 160);
      v9 = *(v0 + 168);
      if (v5)
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1BD026000, v3, v4, "PassEntityUtilities: Apple Card account is locked", v10, 2u);
        MEMORY[0x1BFB45F20](v10, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v7, v8);
      v20 = 1;
    }

    else
    {

      v20 = 0;
    }

    v18 = *(v0 + 8);
    v19 = v20;
  }

  else
  {
    sub_1BE04D074();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "PassEntityUtilities: Apple Card account not found", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);

    (*(v15 + 8))(v14, v16);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    v17 = *(v0 + 232);
    swift_willThrow();

    v18 = *(v0 + 8);
    v19 = 0;
  }

  return v18(v19);
}

uint64_t sub_1BD99D51C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD99D5DC, 0, 0);
}

uint64_t sub_1BD99D5DC()
{
  v1 = [*(v0 + 16) paymentPass];
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1BD99D6E4;
    v3 = *(v0 + 16);

    return sub_1BD99C8D8(v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_1BD99D6E4(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1BD99DB90;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v5 = sub_1BD99D810;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1BD99D810()
{
  v1 = *(v0 + 48);
  if (*(v0 + 72) == 1)
  {
LABEL_2:

    goto LABEL_3;
  }

  v5 = [v1 isPeerPaymentPass];
  v6 = *(v0 + 48);
  if (!v5)
  {
    if (([v6 isTransitPass] & 1) == 0 && !objc_msgSend(*(v0 + 48), sel_isEMoneyPass))
    {
      v20 = *(v0 + 48);
      v2 = [v20 isAppleBalancePass];

      goto LABEL_4;
    }

    v11 = *(v0 + 48);
    v12 = [v11 availableActions];

    if (v12)
    {
      v13 = sub_1BE052744();

      v14 = sub_1BD3FD0B8(v13);

      if (v14)
      {
        if (v14 >> 62)
        {
LABEL_37:
          v15 = sub_1BE053704();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v16 = 0;
        while (v15 != v16)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1BFB40900](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v19 = [v17 type];

          ++v16;
          if (v19 == 1)
          {
            v30 = *(v0 + 48);

            v2 = 1;
            goto LABEL_4;
          }
        }

        v29 = *(v0 + 48);

        goto LABEL_3;
      }
    }

    v1 = *(v0 + 48);
    goto LABEL_2;
  }

  v7 = [objc_opt_self() sharedService];
  if (v7)
  {
    v8 = v7;
    result = [v7 targetDevice];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = [result account];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = *(v0 + 48);
      v2 = [objc_opt_self() canPerformPeerPaymentAction:1 account:v9];

      goto LABEL_4;
    }
  }

  sub_1BE04D074();
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C34();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);
  if (v23)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1BD026000, v21, v22, "PassEntityUtilities: Cannot add money to peer payment pass. Reason: Peer payment account not found", v28, 2u);
    MEMORY[0x1BFB45F20](v28, -1, -1);
  }

  else
  {
  }

  (*(v27 + 8))(v24, v26);
LABEL_3:
  v2 = 0;
LABEL_4:

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1BD99DB90()
{

  v1 = *(v0 + 8);

  return v1(0);
}

id sub_1BD99DC00(void *a1)
{
  if (![a1 passType])
  {
    return (PKBarcodePassSharingEnabled() != 0);
  }

  result = [a1 secureElementPass];
  if (result)
  {
    v3 = result;
    v4 = [result isAccessPass];

    if (v4)
    {
      return [a1 supportsFeatureForCurrentDevice_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD99DCC0()
{
  v1 = [*(v0 + 16) paymentPass];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAppleCardPass] & 1) != 0 || (objc_msgSend(v2, sel_isPeerPaymentPass) & 1) != 0 || (objc_msgSend(v2, sel_isAppleBalancePass) & 1) != 0 || (objc_msgSend(v2, sel_isTransitPass))
    {

LABEL_7:
      v3 = swift_task_alloc();
      *(v0 + 24) = v3;
      *v3 = v0;
      v3[1] = sub_1BD99DE40;
      v4 = *(v0 + 16);

      return sub_1BD99C8D8(v4);
    }

    v6 = [v2 isEMoneyPass];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1BD99DE40(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (a1 & 1) == 0;
  }

  return v5(v6);
}

id sub_1BD99DF50(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_coordinator] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_identifier];
  *v6 = 0xD000000000000018;
  *(v6 + 1) = 0x80000001BE143FF0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_credential] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1BD99E114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_context);
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_credential);
  v7 = objc_allocWithZone(type metadata accessor for ProvisioningCarKeyCredentialViewController());
  v8 = v6;
  v9 = sub_1BE048964();
  sub_1BD5ADCE4(v9, v8);
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v12 = sub_1BE04C384();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B69E0;
  *(v15 + v14) = v8;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69B82A8], v12);
  sub_1BE04C3D4();
  swift_allocObject();
  v16 = sub_1BE04C394();
  v17 = type metadata accessor for CarKeyProvisioningUICoordinator();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19 = &v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v5;
  *&v18[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v16;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v19 + 1) = &off_1F3BAF9F0;
  swift_unknownObjectWeakAssign();
  v31.receiver = v18;
  v31.super_class = v17;
  sub_1BE048964();
  sub_1BE048964();
  v20 = objc_msgSendSuper2(&v31, sel_init);
  v21 = &v20[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  *(v21 + 1) = &off_1F3BC9660;
  swift_unknownObjectWeakAssign();
  v22 = *&v11[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator];
  *&v11[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator] = v20;
  v23 = v20;

  v24 = *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_coordinator);
  *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_coordinator) = v20;

  v25 = *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController) = v11;
  v26 = v11;

  v27 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  sub_1BE048964();
  sub_1BD31821C(v27, 5, sub_1BD37DBE4, v28);
}

uint64_t sub_1BD99E4F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD99E534(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD99E584()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD99E5C0(void *a1, char a2)
{
  if (a2)
  {
    v4 = v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v14[0] = a1;
      v15 = 1;
      v8 = a1;
      sub_1BD865A00(v2, &off_1F3BC9670, v14, ObjectType, v6);
      swift_unknownObjectRelease();
      return sub_1BD12FF7C(v14);
    }
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses);
    *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_provisionedPasses) = a1;
    v10 = a1;

    v11 = v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyCredentialFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v11 + 8);
      v13 = swift_getObjectType();
      sub_1BD8659A4(v2, &off_1F3BC9670, v13, v12);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD99E7A0(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_skipPreflight) != 1)
  {
    v13 = sub_1BE04BBD4();
    v14 = swift_allocObject();
    v14[2] = v3;
    v14[3] = a1;
    v14[4] = a2;
    v19[4] = sub_1BD99F504;
    v19[5] = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1BD3CC8C0;
    v19[3] = &block_descriptor_230;
    v15 = _Block_copy(v19);
    sub_1BE048964();
    v16 = v3;

    [v13 preflightWithRequirements:165 completionRequirements:165 completion:v15];
    _Block_release(v15);

    return;
  }

  sub_1BD99EA4C();
  v7 = v6;
  v9 = v8;
  *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry) = v6 & 1;
  v10 = sub_1BE04BBD4();
  v11 = [v10 associatedCredentials];

  if (v11)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
    v12 = sub_1BE052744();

    if (v7)
    {
LABEL_4:

      goto LABEL_11;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      goto LABEL_4;
    }
  }

  if (v12 >> 62)
  {
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
    if (!v9)
    {
      a1(0);
      return;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    sub_1BE048964();
    sub_1BD99ED5C(v9, sub_1BD1B6F78, v18);

    goto LABEL_12;
  }

LABEL_11:
  a1(1);
LABEL_12:
}

void sub_1BD99EA4C()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BE04B944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v5 = [objc_allocWithZone(sub_1BE04C114()) init];
  sub_1BE04C104();

  sub_1BD0E5E8C(0, &unk_1EBD444B0);
  sub_1BE048C84();
  v6 = sub_1BE052F24();
  v7 = sub_1BE04B934();
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

LABEL_7:
    (*(v1 + 8))(v4, v0);

    return;
  }

  v14[0] = 0;
  v8 = [v7 meetsProvisioningRequirements:v6 missingRequirements:v14];
  swift_unknownObjectRelease();
  v9 = v14[0];
  if (!v8)
  {

    if (v9)
    {
      [v9 displayableError];

      (*(v1 + 8))(v4, v0);
      return;
    }

    goto LABEL_7;
  }

  v10 = [sub_1BE04B934() deviceRegion];
  swift_unknownObjectRelease();
  v11 = sub_1BE04B8E4();
  v12 = [v11 context];

  if (v12)
  {
    v13 = [v12 configuration];

    if (v13)
    {

      [v13 manualProvisioningEnabledForRegion_];

      (*(v1 + 8))(v4, v0);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1BD99ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1BE04A844();
  v8 = [objc_opt_self() errorWithUnderlyingError:v7 defaultSeverity:5];

  v9 = sub_1BE052404();
  [v8 addInternalDebugDescription_];

  sub_1BD0E5E8C(0, &qword_1EBD3D280);
  v13 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(v8, 0, 0, 0, 0, a2, a3, a2, a3, 0, 0);
  v10 = v4 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD99EEF0(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    sub_1BE04D0E4();
    v16 = a2;
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1BD026000, v17, v18, "Terminating flow because failed to validate preflight with error: \n%@", v20, 0xCu);
      sub_1BD1E236C(v21);
      MEMORY[0x1BFB45F20](v21, -1, -1);
      v24 = v20;
      a4 = v30;
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    sub_1BE048964();
    sub_1BD99ED5C(a2, sub_1BD1B5F6C, v25);
  }

  else
  {
    sub_1BD99EA4C();
    v27 = v26;

    *(a3 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry) = v27 & 1;
    a4(a1 & 1);
  }
}

id sub_1BD99F148(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1)
  {
    return result;
  }

  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_context);
  v11 = sub_1BE04BBD4();
  v12 = [v11 associatedCredentials];

  if (v12)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
    v13 = sub_1BE052744();

    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_4:
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v14 = *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry);
        v15 = type metadata accessor for PaymentSetupCredentialsFlowItem();
        v16 = objc_allocWithZone(v15);
        *&v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
        *&v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v17 = &v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
        *v17 = 0xD00000000000001FLL;
        v17[1] = 0x80000001BE1229B0;
        *&v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v10;
        *&v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v13;
        v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v14;
        *&v16[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
        v23.receiver = v16;
        v23.super_class = v15;
        sub_1BE048964();
        return objc_msgSendSuper2(&v23, sel_init);
      }

      goto LABEL_8;
    }
  }

  if (sub_1BE053704())
  {
    goto LABEL_5;
  }

LABEL_8:

  if (*(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry) == 1)
  {
    v18 = *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_showBrowseBanks);
    objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v19 = sub_1BE048964();
    return sub_1BD87126C(v19, v18, 0);
  }

  else
  {
    sub_1BE04D0E4();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "No cards on file and manual entry disabled", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t sub_1BD99F478()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD99F4B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD99F510(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for PaymentSetupCredentialsOrManualEntryFlowSection();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_allowManualEntry] = 0;
  *&v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_identifier];
  *v8 = 0xD000000000000023;
  v8[1] = 0x80000001BE144110;
  *&v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_context] = a1;
  v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_skipPreflight] = a2;
  v7[OBJC_IVAR____TtC9PassKitUI47PaymentSetupCredentialsOrManualEntryFlowSection_showBrowseBanks] = a3;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1BD99F5F8(void *a1)
{
  v1 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v2 = sub_1BE052744();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](0, v2);
LABEL_6:
    v5 = v4;

    v6 = [v5 value];

    v7 = [v6 pkFormattedStringValue];
    if (v7)
    {
      v8 = sub_1BE052434();

      return v8;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_1BD99F734(int a1, int a2, int a3, id a4)
{
  [a4 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD4DF70);
  swift_dynamicCast();
  v4 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v5 = sub_1BE052404();
  v6 = [v4 initWithStringValue_];

  v7 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B7020;
  *(v8 + 32) = v7;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v10 = sub_1BE052724();

  [v14 setPhoneNumbers_];

  sub_1BD6B04D8();
  v11 = v14;
  v12 = sub_1BE052404();

  [v11 setValueSource_];

  return v11;
}

id sub_1BD99F93C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  result = sub_1BD99F734(a1, a2, a3, *v4);
  *a4 = result;
  return result;
}

uint64_t sub_1BD99F968(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = sub_1BE052434();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_1BE053B84();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  return sub_1BE053074() & 1;
}

uint64_t sub_1BD99FA7C()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = [v1 identifier];
  sub_1BE052434();

  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD99FB04()
{
  v1 = [*v0 identifier];
  sub_1BE052434();

  sub_1BE052524();
}

uint64_t sub_1BD99FB7C()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = [v1 identifier];
  sub_1BE052434();

  sub_1BE052524();

  return sub_1BE053D64();
}

unint64_t sub_1BD99FC00(uint64_t a1)
{
  *(a1 + 8) = sub_1BD99FC30();
  result = sub_1BD99FC84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BD99FC30()
{
  result = qword_1EBD5A558;
  if (!qword_1EBD5A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A558);
  }

  return result;
}

unint64_t sub_1BD99FC84()
{
  result = qword_1EBD5A560;
  if (!qword_1EBD5A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A560);
  }

  return result;
}

void sub_1BD99FCD8()
{
  v0 = objc_opt_self();
  v1 = sub_1BE052724();
  v2 = sub_1BE052724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B69E0;
  sub_1BE052434();
  v4 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v5 = sub_1BE052404();
  v6 = [v4 initWithStringValue_];

  v7 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
  v8 = sub_1BE052404();

  v9 = [v7 initWithLabel:v8 value:v6];

  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  *(v3 + 32) = v9;
  v10 = sub_1BE052724();

  v11 = [v0 pkContactWithNameComponents:0 postalAddresses:v1 emailAddresses:v2 phoneNumbers:v10];

  if (v11)
  {

    sub_1BD6B04D8();
    v12 = v11;
    v13 = sub_1BE052404();

    [v12 setValueSource_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD99FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE051704();
}

uint64_t sub_1BD99FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v33 - v8;
  v10 = objc_opt_self();
  v11 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v14 = sub_1BE052434();
  v15 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v17 = *v15;
  *(inited + 56) = *v15;
  v18 = sub_1BE052434();
  v19 = MEMORY[0x1E69BA440];
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  v21 = *v19;
  *(inited + 80) = *v19;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v22;
  v23 = v13;
  v24 = v17;
  v25 = v21;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1105AC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v26 = sub_1BE052224();

  [v10 subject:v11 sendEvent:v26];

  v27 = sub_1BE0528D4();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_1BE0528A4();
  sub_1BE048964();
  v28 = v34;
  sub_1BE048964();
  sub_1BE048964();
  v29 = sub_1BE052894();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = v35;
  v30[7] = v28;
  sub_1BDA543A4(0, 0, v9, &unk_1BE109C08, v30);
}

uint64_t sub_1BD9A02B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_1BE0528A4();
  v7[9] = sub_1BE052894();
  v9 = sub_1BE052844();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD9A034C, v9, v8);
}

uint64_t sub_1BD9A034C()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A598);
  sub_1BE0516A4();
  v0[12] = v0[4];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1BD9A040C;

  return sub_1BD9A1054();
}

uint64_t sub_1BD9A040C(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_1BD9A05AC;
  }

  else
  {

    v4 = v3[10];
    v5 = v3[11];
    v6 = sub_1BD9A0528;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BD9A0528()
{
  v1 = *(v0 + 112);

  if (v1)
  {
    v2 = *(v0 + 112);
    (*(v0 + 56))(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD9A05AC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1BD9A061C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9A0788()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v16 = *v0;
  v17 = v6;
  v18 = *(v0 + 1);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v2 + 8))(v5, v1);
    v19 = v9;
    v20 = v11;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v20 = v12;
    v21 = v13 & 1;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    sub_1BD9A1D4C();
    return sub_1BE051A54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9A095C()
{
  swift_getKeyPath();
  sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading);
}

uint64_t sub_1BD9A0A04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading);
  return result;
}

uint64_t sub_1BD9A0AB4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD9A0BCC(uint64_t a1)
{
  v3 = sub_1BE049A94();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = &v38 - v8;
  v9 = sub_1BE049184();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TransactionContext(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - v23;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__sheet) = 0;
  *(v1 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading) = 0;
  v44 = v1;
  sub_1BE04B5C4();
  v25 = a1;
  sub_1BD0DE19C(a1, v24, &qword_1EBD3F790);
  v26 = *(v13 + 48);
  v27 = 0;
  if (v26(v24, 1, v12) != 1)
  {
    sub_1BD5C3BD4(v24, v16);
    sub_1BD9A1CB0();
    (*(v39 + 16))(v38, &v16[*(v12 + 24)], v40);
    v27 = sub_1BE052BF4();
    sub_1BD442180(v16);
  }

  v28 = v44;
  *(v44 + 16) = v27;
  v29 = v28;
  v30 = v25;
  sub_1BD0DE19C(v25, v20, &qword_1EBD3F790);
  if (v26(v20, 1, v12) == 1)
  {
    sub_1BD0DE53C(v25, &qword_1EBD3F790);
    sub_1BD0DE53C(v20, &qword_1EBD3F790);
    v31 = 1;
    v32 = v45;
  }

  else
  {
    v33 = v41;
    v34 = v42;
    v35 = v43;
    (*(v42 + 16))(v41, v20, v43);
    sub_1BD442180(v20);
    v32 = v45;
    sub_1BE049A14();
    sub_1BD0DE53C(v30, &qword_1EBD3F790);
    (*(v34 + 8))(v33, v35);
    v31 = 0;
  }

  v36 = sub_1BE04AFE4();
  (*(*(v36 - 8) + 56))(v32, v31, 1, v36);
  sub_1BD124200(v32, v29 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel_transactionId);
  return v29;
}

uint64_t sub_1BD9A1054()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v1[8] = swift_task_alloc();
  v2 = sub_1BE04AFE4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1BE0528A4();
  v1[12] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD9A1180, v4, v3);
}

uint64_t sub_1BD9A1180()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1BD0DE19C(v0[7] + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel_transactionId, v3, &qword_1EBD39980);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];

    sub_1BD0DE53C(v4, &qword_1EBD39980);
LABEL_8:

    v10 = v0[1];

    return v10(0);
  }

  v5 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v6 = *(v5 + 16);
  v0[15] = v6;
  if (!v6)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_7;
  }

  v7 = v0[7];
  swift_getKeyPath();
  v0[16] = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel___observationRegistrar;
  v0[2] = v7;
  v0[17] = sub_1BD1105AC(&qword_1EBD5A590, type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel);
  v8 = v6;
  sub_1BE04B594();

  v9 = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading;
  v0[18] = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel__isLoading;
  if (*(v7 + v9))
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

LABEL_7:

    goto LABEL_8;
  }

  v12 = v0[7];
  swift_getKeyPath();
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = 1;
  v0[3] = v12;
  sub_1BE04B584();

  sub_1BE0490F4();
  v0[19] = sub_1BE0490B4();
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_1BD9A1494;
  v15 = v0[11];

  return MEMORY[0x1EEDC1478](v15);
}

uint64_t sub_1BD9A1494(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1BD9A1914;
  }

  else
  {

    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1BD9A15B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1BD9A15B0()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 transactionFromFKPaymentTransaction:v1 institution:v4];
    v6 = objc_allocWithZone(PKReportIssueViewController);
    v7 = v5;
    v8 = [v6 initWithTransaction:v7 transactionSourceCollection:0 paymentPass:0 familyCollection:0 account:0 accountUserCollection:0 bankConnectInstitution:v4 physicalCards:0 detailViewStyle:0 context:0];

    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = *(v0 + 144);
    v10 = *(v0 + 56);

    v11 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];

    if (*(v10 + v9) == 1)
    {
      v12 = *(v0 + 120);
      v13 = *(v0 + 80);
      v34 = *(v0 + 72);
      v35 = *(v0 + 88);
      v14 = *(v0 + 56);
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v0 + 48) = v14;
      sub_1BE04B584();

      (*(v13 + 8))(v35, v34);
    }

    else
    {
      v23 = *(v0 + 144);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v26 = *(v0 + 72);
      v27 = *(v0 + 56);

      (*(v25 + 8))(v24, v26);
      *(v27 + v23) = 0;
    }
  }

  else
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 56);

    if (*(v17 + v16) == 1)
    {
      v18 = *(v0 + 120);
      v19 = *(v0 + 80);
      v36 = *(v0 + 88);
      v20 = *(v0 + 72);
      v21 = *(v0 + 56);
      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v0 + 40) = v21;
      sub_1BE04B584();

      (*(v19 + 8))(v36, v20);

      v11 = 0;
    }

    else
    {
      v28 = *(v0 + 144);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = *(v0 + 72);
      v32 = *(v0 + 56);

      (*(v30 + 8))(v29, v31);
      v11 = 0;
      *(v32 + v28) = 0;
    }
  }

  v33 = *(v0 + 8);

  v33(v11);
}

uint64_t sub_1BD9A1914()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);

  if (*(v2 + v1) == 1)
  {
    v3 = *(v0 + 120);
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v0 + 32) = v7;
    sub_1BE04B584();

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v9 = *(v0 + 144);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);

    (*(v11 + 8))(v10, v12);
    *(v13 + v9) = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BD9A1AA4()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel_transactionId, &qword_1EBD39980);

  v1 = OBJC_IVAR____TtCV9PassKitUI38FinanceKitTransactionReportProblemView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel()
{
  result = qword_1EBD5A580;
  if (!qword_1EBD5A580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9A1BCC()
{
  sub_1BD12513C();
  if (v0 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BD9A1CB0()
{
  result = qword_1EBD498E8;
  if (!qword_1EBD498E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD498E8);
  }

  return result;
}

unint64_t sub_1BD9A1D4C()
{
  result = qword_1EBD3FBA0;
  if (!qword_1EBD3FBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FBA0);
  }

  return result;
}

uint64_t sub_1BD9A1DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD0F985C;

  return sub_1BD9A02B0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1BD9A1E90()
{
  result = qword_1EBD5A5A0;
  if (!qword_1EBD5A5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C138);
    sub_1BD9A1D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A5A0);
  }

  return result;
}

id PKDashboardFinanceKitTransactionPresenter.init()()
{
  *&v0[OBJC_IVAR____TtC9PassKitUI41PKDashboardFinanceKitTransactionPresenter_sampleCell] = [objc_allocWithZone(type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell()) initWithFrame_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitTransactionPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for PKDashboardFinanceKitTransactionItem()
{
  result = qword_1EBD5A698;
  if (!qword_1EBD5A698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD9A211C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A5B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x80000001BE109C00;
  *(inited + 48) = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  v1 = sub_1BD1AE91C(inited);
  swift_setDeallocating();
  sub_1BD9A2954(inited + 32);
  return v1;
}

id PKDashboardFinanceKitTransactionItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BD9A2870(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD9A2954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9A29BC(uint64_t a1, void *a2)
{
  v3 = sub_1BE052404();
  v4 = sub_1BE04B3C4();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  v6 = swift_dynamicCastClass();
  if (v6 && (v7 = v6, type metadata accessor for PKDashboardFinanceKitTransactionItem(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = v8;
    swift_unknownObjectRetain();
    sub_1BD444474(v9);
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {

    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD9A2AFC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v44 = a3;
  v6 = sub_1BE049184();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v45 = &v38 - v12;
  v13 = sub_1BE049A94();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  type metadata accessor for PKDashboardFinanceKitTransactionItem();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  if (!a4)
  {
    swift_unknownObjectRetain();
    goto LABEL_8;
  }

  v24 = swift_unknownObjectRetain();
  if (a4(v24))
  {
LABEL_8:
    v25 = OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_institution;
    v42 = a1;
    v26 = *(v14 + 16);
    v26(v21, v23 + OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_transaction, v13);
    v41 = v7;
    v27 = *(v7 + 16);
    v28 = v23 + v25;
    v29 = v45;
    v27(v45, v28);
    type metadata accessor for NavigationController();
    v30 = swift_allocObject();
    v39 = v13;
    v40 = v30;
    v31 = v13;
    v32 = v44;
    *(v30 + 16) = v44;
    v26(v17, v21, v31);
    v33 = v43;
    (v27)(v43, v29, v6);
    _s9ViewModelCMa_3(0);
    swift_allocObject();
    v34 = v32;
    v49 = sub_1BD737C08(v17, v33, 0);
    sub_1BE051694();
    (*(v41 + 8))(v45, v6);
    (*(v14 + 8))(v21, v39);
    v46 = sub_1BD628CF0;
    v47 = v40;
    v48 = 0;
    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A6B0));
    v36 = sub_1BE04F894();
    v37 = [v36 navigationItem];
    [v37 setLargeTitleDisplayMode_];

    [v34 pushViewController:v36 animated:1];
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1BD9A3014()
{
  result = sub_1BE049184();
  if (v1 <= 0x3F)
  {
    result = sub_1BE049A94();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BD9A3124()
{
  result = qword_1EBD5A6C0;
  if (!qword_1EBD5A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A6C0);
  }

  return result;
}

unint64_t sub_1BD9A317C()
{
  result = qword_1EBD5A6C8;
  if (!qword_1EBD5A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A6C8);
  }

  return result;
}

uint64_t sub_1BD9A3208()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB800);
  __swift_project_value_buffer(v9, qword_1EBDAB800);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD9A3440@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A708);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v29 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A710);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v27 = &v23 - v14;
  v34 = 2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A718);
  v25 = sub_1BD9A79D4();
  sub_1BD63B7E0();
  sub_1BD0DE4F4(&qword_1EBD5A720, &qword_1EBD5A718);
  v26 = v15;
  sub_1BE048F04();
  sub_1BD0DE4F4(&qword_1EBD5A728, &qword_1EBD5A710);
  v16 = v8;
  sub_1BE048ED4();
  v24 = *(v33 + 8);
  v33 += 8;
  v24(v11, v8);
  v17 = v28;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD5A730, &qword_1EBD5A708);
  v18 = v29;
  v19 = v30;
  sub_1BE048ED4();
  v20 = *(v31 + 8);
  v20(v17, v19);
  v21 = v27;
  sub_1BE048EB4();
  v20(v18, v19);
  return (v24)(v21, v16);
}

uint64_t sub_1BD9A3824@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A738);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A740);
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A718);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v17 - v12;
  sub_1BD9A79D4();
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A748);
  sub_1BE048CC4();

  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A750);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CA4();
  v14 = sub_1BD0DE4F4(&qword_1EBD5A720, &qword_1EBD5A718);
  MEMORY[0x1BFB35E60](v9, &type metadata for AppleCardBillPayIntent, v5, v14);
  v15 = *(v6 + 8);
  v15(v9, v5);
  MEMORY[0x1BFB35E50](v13, &type metadata for AppleCardBillPayIntent, v5, v14);
  return (v15)(v13, v5);
}

uint64_t sub_1BD9A3B50@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A738);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A740);
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A718);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v17 - v12;
  sub_1BD9A79D4();
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A748);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CA4();
  v14 = sub_1BD0DE4F4(&qword_1EBD5A720, &qword_1EBD5A718);
  MEMORY[0x1BFB35E60](v9, &type metadata for AppleCardBillPayIntent, v5, v14);
  v15 = *(v6 + 8);
  v15(v9, v5);
  MEMORY[0x1BFB35E50](v13, &type metadata for AppleCardBillPayIntent, v5, v14);
  return (v15)(v13, v5);
}

uint64_t sub_1BD9A3E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  v4 = sub_1BE04D214();
  v3[43] = v4;
  v3[44] = *(v4 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v5 = sub_1BE048C44();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_1BE048C54();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = sub_1BE048654();
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();
  v8 = sub_1BE0523B4();
  v3[56] = v8;
  v3[57] = *(v8 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v9 = sub_1BE048B74();
  v3[60] = v9;
  v3[61] = *(v9 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v3[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v10 = sub_1BE04CFC4();
  v3[70] = v10;
  v3[71] = *(v10 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v11 = sub_1BE04CFE4();
  v3[74] = v11;
  v3[75] = *(v11 - 8);
  v3[76] = swift_task_alloc();
  sub_1BE0528A4();
  v3[77] = sub_1BE052894();
  v13 = sub_1BE052844();
  v3[78] = v13;
  v3[79] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BD9A4280, v13, v12);
}

uint64_t sub_1BD9A4280()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 coordinator];
  v0[80] = v2;

  if (!v2)
  {

    sub_1BE04D074();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BD026000, v25, v26, "AppleCardBillPayIntent: PKAppIntentCoordinator was nil", v27, 2u);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    v29 = v0[44];
    v28 = v0[45];
    v30 = v0[43];

    (*(v29 + 8))(v28, v30);
    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    goto LABEL_35;
  }

  sub_1BE04B684();
  sub_1BE04CFB4();
  v3 = sub_1BE04CFD4();
  v4 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v3, v4, v6, "perform:AppleCardBillPayIntent", "", v5, 2u);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[70];

  (*(v12 + 16))(v11, v10, v13);
  sub_1BE04D024();
  swift_allocObject();
  v0[81] = sub_1BE04D014();
  (*(v12 + 8))(v10, v13);
  (*(v8 + 8))(v7, v9);
  v14 = [objc_opt_self() sharedInstance];
  v0[82] = v14;
  if (!v14)
  {
    goto LABEL_33;
  }

  v15 = [v14 passesOfStyles_];
  if (!v15)
  {

LABEL_34:
    v37 = v0[82];
    sub_1BD135218();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    sub_1BD9A7458();

    swift_unknownObjectRelease();
LABEL_35:

    v39 = v0[1];

    return v39();
  }

  sub_1BD102A4C();
  v16 = sub_1BE052744();

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = sub_1BE053704();
  if (!v17)
  {
LABEL_32:

LABEL_33:

    v15 = 0;
    goto LABEL_34;
  }

LABEL_8:
  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v0[83] = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = [v19 secureElementPass];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 isAppleCardPass];

      if (v24)
      {
        break;
      }
    }

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_32;
    }
  }

  v15 = v20;
  v31 = [v15 uniqueID];
  v0[84] = v31;
  if (!v31)
  {

    goto LABEL_34;
  }

  v32 = v31;
  v33 = [objc_opt_self() sharedInstance];
  v0[85] = v33;
  if (v33)
  {
    v34 = v33;
    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_1BD9A4978;
    v35 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58578);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1BD1F07A8;
    v0[21] = &block_descriptor_231;
    v0[22] = v35;
    [v34 accountForPassWithUniqueID:v32 completion:v0 + 18];
    v36 = v0 + 2;
  }

  else
  {

    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v36);
}

uint64_t sub_1BD9A4978()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1BD9A4A80, v2, v1);
}

uint64_t sub_1BD9A4A80()
{
  v1 = *(v0 + 304);
  *(v0 + 688) = v1;
  v2 = *(v0 + 680);
  if (v1)
  {

    v3 = [v1 creditDetails];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 currencyCode];
      *(v0 + 696) = v5;

      if (v5)
      {
        *(v0 + 704) = sub_1BE052434();
        *(v0 + 712) = v6;
        v7 = swift_task_alloc();
        *(v0 + 720) = v7;
        *v7 = v0;
        v7[1] = sub_1BD9A4D68;
        v8 = *(v0 + 664);

        return sub_1BD99DCA0(v8);
      }
    }

    v10 = *(v0 + 672);
    v11 = *(v0 + 664);
  }

  else
  {
    v12 = *(v0 + 672);
  }

  v13 = *(v0 + 664);
  v14 = *(v0 + 656);
  sub_1BD135218();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();

  sub_1BD9A7458();

  swift_unknownObjectRelease();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BD9A4D68(char a1)
{
  v4 = *v2;
  *(*v2 + 728) = v1;

  if (v1)
  {
    v5 = *(v4 + 672);

    v6 = *(v4 + 632);
    v7 = *(v4 + 624);
    v8 = sub_1BD9A58E4;
  }

  else
  {
    *(v4 + 827) = a1 & 1;
    v6 = *(v4 + 632);
    v7 = *(v4 + 624);
    v8 = sub_1BD9A4EB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD9A4EB4()
{
  if (*(v0 + 827) == 1)
  {

    sub_1BE048874();
    if (*(v0 + 824) && *(v0 + 824) != 1)
    {
    }

    else
    {
      v7 = sub_1BE053B84();

      if ((v7 & 1) == 0)
      {

LABEL_23:

        goto LABEL_24;
      }
    }

    v8 = *(v0 + 552);
    v9 = *(v0 + 480);
    v10 = *(v0 + 488);
    sub_1BE048874();
    v11 = *(v10 + 48);
    *(v0 + 736) = v11;
    *(v0 + 744) = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v12 = v11(v8, 1, v9);
    sub_1BD0DE53C(v8, &qword_1EBD493E0);
    if (v12 == 1)
    {
      v13 = *(v0 + 512);
      v14 = *(v0 + 424);
      v15 = *(v0 + 432);
      *(v0 + 752) = sub_1BE048894();
      (*(v15 + 56))(v13, 1, 1, v14);
      v16 = swift_task_alloc();
      *(v0 + 760) = v16;
      *v16 = v0;
      v16[1] = sub_1BD9A5A84;
      v17 = *(v0 + 544);
      v18 = *(v0 + 512);

      return MEMORY[0x1EEDB33A8](v17, v18);
    }

    v19 = *(v0 + 736);
    v20 = *(v0 + 528);
    v21 = *(v0 + 480);
    sub_1BE048874();
    v22 = v19(v20, 1, v21);
    v23 = *(v0 + 712);
    v24 = *(v0 + 528);
    if (v22 == 1)
    {

      sub_1BD0DE53C(v24, &qword_1EBD493E0);
LABEL_24:
      v29 = *(v0 + 520);
      v30 = *(v0 + 480);
      v31 = *(v0 + 488);
      sub_1BE048874();
      v32 = (*(v31 + 48))(v29, 1, v30);
      v33 = *(v0 + 520);
      if (v32)
      {
        sub_1BD0DE53C(*(v0 + 520), &qword_1EBD493E0);
        v34 = 0;
      }

      else
      {
        v36 = *(v0 + 488);
        v35 = *(v0 + 496);
        v37 = *(v0 + 480);
        (*(v36 + 16))(v35, *(v0 + 520), v37);
        sub_1BD0DE53C(v33, &qword_1EBD493E0);
        sub_1BE048B64();
        (*(v36 + 8))(v35, v37);
        v34 = sub_1BE053344();
      }

      *(v0 + 808) = 0;
      *(v0 + 800) = v34;
      v38 = swift_task_alloc();
      *(v0 + 816) = v38;
      *v38 = v0;
      v38[1] = sub_1BD9A67CC;

      return sub_1BD0D7278();
    }

    v25 = *(v0 + 704);
    (*(*(v0 + 488) + 32))(*(v0 + 504), *(v0 + 528), *(v0 + 480));
    if (sub_1BE048B44() == v25 && v26 == v23)
    {

LABEL_22:
      v28 = *(v0 + 696);
      (*(*(v0 + 488) + 8))(*(v0 + 504), *(v0 + 480));

      goto LABEL_23;
    }

    v27 = sub_1BE053B84();

    if (v27)
    {
      goto LABEL_22;
    }

    v39 = *(v0 + 696);
    sub_1BE048B64();
    v40 = sub_1BE053344();
    v41 = [objc_allocWithZone(MEMORY[0x1E69B8780]) initWithAmount:v40 currency:v39 exponent:0];
    *(v0 + 776) = v41;

    if (v41)
    {
      *(v0 + 272) = *(v0 + 328);
      sub_1BE0523A4();
      sub_1BE052394();
      sub_1BE052374();
      sub_1BE052394();
      v42 = [v41 formattedStringValue];
      if (v42)
      {
        v43 = v42;
        v44 = sub_1BE052434();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v53 = *(v0 + 464);
      v52 = *(v0 + 472);
      v55 = *(v0 + 448);
      v54 = *(v0 + 456);
      *(v0 + 288) = v44;
      *(v0 + 296) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
      sub_1BE0524A4();
      sub_1BE052374();

      sub_1BE052394();
      sub_1BE052374();

      sub_1BE052394();
      (*(v54 + 32))(v53, v52, v55);
      sub_1BE048644();
      *(v0 + 312) = MEMORY[0x1E69E7CC0];
      sub_1BD9A80CC(&qword_1EBD528F0, MEMORY[0x1E695A448]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8);
      sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8);
      sub_1BE053664();
      sub_1BE048C34();
      v56 = swift_task_alloc();
      *(v0 + 784) = v56;
      v57 = sub_1BD9A79D4();
      *v56 = v0;
      v56[1] = sub_1BD9A6404;
      v58 = *(v0 + 440);
      v59 = *(v0 + 416);
      v60 = *(v0 + 392);

      return MEMORY[0x1EEDB2D60](v59, v60, v58, &type metadata for AppleCardBillPayIntent, v57);
    }

    v47 = *(v0 + 688);
    v48 = *(v0 + 664);
    v61 = *(v0 + 656);
    v49 = *(v0 + 504);
    v50 = *(v0 + 480);
    v51 = *(v0 + 488);

    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v51 + 8))(v49, v50);
  }

  else
  {
    v1 = *(v0 + 688);
    v2 = *(v0 + 672);
    v3 = *(v0 + 664);
    v4 = *(v0 + 656);

    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484C4();
    swift_willThrow();
  }

  sub_1BD9A7458();

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD9A58E4()
{
  v1 = v0[86];
  v2 = v0[83];
  v3 = v0[82];

  sub_1BD9A7458();

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD9A5A84()
{
  v2 = *v1;
  (*v1)[96] = v0;

  if (v0)
  {
    v3 = v2[87];
    v4 = v2[84];
    sub_1BD0DE53C(v2[64], &qword_1EBD39290);

    v5 = v2[79];
    v6 = v2[78];
    v7 = sub_1BD9A70F4;
  }

  else
  {
    sub_1BD0DE53C(v2[64], &qword_1EBD39290);

    v5 = v2[79];
    v6 = v2[78];
    v7 = sub_1BD9A5C20;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD9A5C20()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  (*(*(v0 + 488) + 56))(v1, 0, 1, *(v0 + 480));
  sub_1BD9A805C(v1, v2);
  sub_1BE048884();
  sub_1BD0DE53C(v1, &qword_1EBD493E0);
  v3 = *(v0 + 736);
  v4 = *(v0 + 528);
  v5 = *(v0 + 480);
  sub_1BE048874();
  v6 = v3(v4, 1, v5);
  v7 = *(v0 + 712);
  v8 = *(v0 + 528);
  if (v6 == 1)
  {

    sub_1BD0DE53C(v8, &qword_1EBD493E0);
LABEL_8:
    v13 = *(v0 + 520);
    v14 = *(v0 + 480);
    v15 = *(v0 + 488);
    sub_1BE048874();
    v16 = (*(v15 + 48))(v13, 1, v14);
    v17 = *(v0 + 520);
    if (v16)
    {
      sub_1BD0DE53C(*(v0 + 520), &qword_1EBD493E0);
      v18 = 0;
    }

    else
    {
      v20 = *(v0 + 488);
      v19 = *(v0 + 496);
      v21 = *(v0 + 480);
      (*(v20 + 16))(v19, *(v0 + 520), v21);
      sub_1BD0DE53C(v17, &qword_1EBD493E0);
      sub_1BE048B64();
      (*(v20 + 8))(v19, v21);
      v18 = sub_1BE053344();
    }

    *(v0 + 808) = 0;
    *(v0 + 800) = v18;
    v22 = swift_task_alloc();
    *(v0 + 816) = v22;
    *v22 = v0;
    v22[1] = sub_1BD9A67CC;

    return sub_1BD0D7278();
  }

  v9 = *(v0 + 704);
  (*(*(v0 + 488) + 32))(*(v0 + 504), *(v0 + 528), *(v0 + 480));
  if (sub_1BE048B44() == v9 && v10 == v7)
  {

LABEL_7:
    v12 = *(v0 + 696);
    (*(*(v0 + 488) + 8))(*(v0 + 504), *(v0 + 480));

    goto LABEL_8;
  }

  v11 = sub_1BE053B84();

  if (v11)
  {
    goto LABEL_7;
  }

  v24 = *(v0 + 696);
  sub_1BE048B64();
  v25 = sub_1BE053344();
  v26 = [objc_allocWithZone(MEMORY[0x1E69B8780]) initWithAmount:v25 currency:v24 exponent:0];
  *(v0 + 776) = v26;

  if (v26)
  {
    *(v0 + 272) = *(v0 + 328);
    sub_1BE0523A4();
    sub_1BE052394();
    sub_1BE052374();
    sub_1BE052394();
    v27 = [v26 formattedStringValue];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1BE052434();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v40 = *(v0 + 464);
    v39 = *(v0 + 472);
    v42 = *(v0 + 448);
    v41 = *(v0 + 456);
    *(v0 + 288) = v29;
    *(v0 + 296) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    sub_1BE0524A4();
    sub_1BE052374();

    sub_1BE052394();
    sub_1BE052374();

    sub_1BE052394();
    (*(v41 + 32))(v40, v39, v42);
    sub_1BE048644();
    *(v0 + 312) = MEMORY[0x1E69E7CC0];
    sub_1BD9A80CC(&qword_1EBD528F0, MEMORY[0x1E695A448]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8);
    sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8);
    sub_1BE053664();
    sub_1BE048C34();
    v43 = swift_task_alloc();
    *(v0 + 784) = v43;
    v44 = sub_1BD9A79D4();
    *v43 = v0;
    v43[1] = sub_1BD9A6404;
    v45 = *(v0 + 440);
    v46 = *(v0 + 416);
    v47 = *(v0 + 392);

    return MEMORY[0x1EEDB2D60](v46, v47, v45, &type metadata for AppleCardBillPayIntent, v44);
  }

  else
  {
    v32 = *(v0 + 688);
    v33 = *(v0 + 664);
    v34 = *(v0 + 656);
    v35 = *(v0 + 504);
    v36 = *(v0 + 480);
    v37 = *(v0 + 488);

    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v37 + 8))(v35, v36);
    sub_1BD9A7458();

    swift_unknownObjectRelease();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1BD9A6404()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    v21 = *(v2 + 440);
    v5 = *(v2 + 416);
    v4 = *(v2 + 424);
    v6 = *(v2 + 400);
    v7 = *(v2 + 408);
    v8 = *(v2 + 384);
    v9 = *(v2 + 392);
    v10 = *(v2 + 376);

    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v21, v4);
    v11 = *(v2 + 632);
    v12 = *(v2 + 624);
    v13 = sub_1BD9A7294;
  }

  else
  {
    v15 = *(v2 + 432);
    v14 = *(v2 + 440);
    v17 = *(v2 + 416);
    v16 = *(v2 + 424);
    v18 = *(v2 + 400);
    v19 = *(v2 + 408);
    (*(*(v2 + 384) + 8))(*(v2 + 392), *(v2 + 376));
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    v11 = *(v2 + 632);
    v12 = *(v2 + 624);
    v13 = sub_1BD9A65FC;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD9A65FC()
{
  v1 = v0[97];
  (*(v0[61] + 8))(v0[63], v0[60]);
  v2 = [v1 amount];
  v3 = v0[97];
  if (!v2)
  {
    v4 = v0[65];
    v5 = v0[60];
    v6 = v0[61];
    sub_1BE048874();
    v7 = (*(v6 + 48))(v4, 1, v5);
    v8 = v0[65];
    if (v7)
    {
      sub_1BD0DE53C(v0[65], &qword_1EBD493E0);
      v2 = 0;
    }

    else
    {
      v10 = v0[61];
      v9 = v0[62];
      v11 = v0[60];
      (*(v10 + 16))(v9, v0[65], v11);
      sub_1BD0DE53C(v8, &qword_1EBD493E0);
      sub_1BE048B64();
      (*(v10 + 8))(v9, v11);
      v2 = sub_1BE053344();
    }
  }

  v0[101] = v3;
  v0[100] = v2;
  v12 = swift_task_alloc();
  v0[102] = v12;
  *v12 = v0;
  v12[1] = sub_1BD9A67CC;

  return sub_1BD0D7278();
}

uint64_t sub_1BD9A67CC(char a1)
{
  v2 = *v1;
  *(*v1 + 828) = a1;

  v3 = *(v2 + 632);
  v4 = *(v2 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1BD9A68F4, v4, v3);
}

uint64_t sub_1BD9A68F4()
{
  if (*(v0 + 828) == 1)
  {
    sub_1BE048874();
    v1 = *(v0 + 826);
    v2 = *(v0 + 800);
    v3 = *(v0 + 672);
    v4 = *(v0 + 640);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 825;
    *(v0 + 88) = sub_1BD9A6CD0;
    v5 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BD68F38C;
    *(v0 + 232) = &block_descriptor_9_9;
    *(v0 + 240) = v5;
    [v4 presentAccountServiceSchedulePaymentWithUniqueID:v3 billPayAmountType:v1 + 1 billPayAmount:v2 completion:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {
    v6 = *(v0 + 672);

    sub_1BE04D074();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "AppleCardBillPayIntent: Failed to open Wallet", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    v10 = *(v0 + 800);
    v11 = *(v0 + 688);
    v12 = *(v0 + 664);
    v13 = *(v0 + 656);
    v19 = *(v0 + 808);
    v14 = *(v0 + 368);
    v15 = *(v0 + 344);
    v16 = *(v0 + 352);

    (*(v16 + 8))(v14, v15);
    sub_1BE0484F4();
    sub_1BD9A80CC(&qword_1EBD56120, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    sub_1BD9A7458();

    swift_unknownObjectRelease();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1BD9A6CD0()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);

  return MEMORY[0x1EEE6DFA0](sub_1BD9A6DD8, v2, v1);
}

uint64_t sub_1BD9A6DD8()
{
  v1 = *(v0 + 672);

  v2 = *(v0 + 825);

  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 688);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  if (v2 == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
  }

  sub_1BD9A7458();

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD9A70F4()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);

  sub_1BD9A7458();

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD9A7294()
{
  v1 = v0[97];
  v2 = v0[86];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[61];

  (*(v7 + 8))(v5, v6);
  sub_1BD9A7458();

  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD9A7458()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:AppleCardBillPayIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD9A7744@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD9A77EC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6F8);
  v5 = sub_1BD0DE4F4(&qword_1EBD5A700, &qword_1EBD5A6F8);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD9A3440, 0, v4, a2, v5);
}

uint64_t sub_1BD9A78B4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD0F985C;

  return sub_1BD9A3E30(a1, v5, v4);
}

char *sub_1BD9A7960@<X0>(char **a1@<X8>)
{
  result = sub_1BD9A7A28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD9A7988(uint64_t a1)
{
  v2 = sub_1BD9A79D4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD9A79D4()
{
  result = qword_1EBD5A6E0;
  if (!qword_1EBD5A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A6E0);
  }

  return result;
}

char *sub_1BD9A7A28()
{
  v55 = sub_1BE048D74();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v0);
  v54 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v52 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04A874();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1BE04A884();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6E8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v16, qword_1EBDAB400);
  v28 = *(v17 + 16);
  v41 = v17 + 16;
  v48 = v28;
  v28(v20, v49, v16);
  sub_1BE04B0A4();
  v40 = v27;
  sub_1BE04A894();
  v29 = *(v24 + 56);
  v46 = v23;
  v47 = v29;
  v29(v11, 1, 1, v23);
  LOBYTE(v56) = 3;
  v30 = sub_1BE048654();
  v42 = v20;
  v43 = v15;
  v31 = v30;
  v32 = *(v30 - 8);
  v38 = v11;
  v33 = *(v32 + 56);
  v45 = v33;
  v39 = v16;
  v34 = v51;
  v33(v51, 1, 1, v30);
  v33(v52, 1, 1, v31);
  v44 = *MEMORY[0x1E695A500];
  v35 = v54;
  v53 = *(v53 + 104);
  (v53)(v54);
  sub_1BD63C178();
  v52 = sub_1BE0488A4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A6F0);
  sub_1BE052354();
  v48(v42, v49, v39);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v47(v38, 1, 1, v46);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v59 = 1;
  v45(v34, 1, 1, v31);
  (v53)(v35, v44, v55);
  sub_1BE0488D4();
  return v52;
}

uint64_t sub_1BD9A805C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9A80CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SettingsOptionsSection()
{
  result = qword_1EBD5A758;
  if (!qword_1EBD5A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9A8190()
{
  sub_1BD9A8214();
  if (v0 <= 0x3F)
  {
    sub_1BD8636A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD9A8214()
{
  if (!qword_1EBD53A50)
  {
    v0 = sub_1BE04E174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD53A50);
    }
  }
}

uint64_t sub_1BD9A8280@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A768);
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v51 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A770);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = &v49 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A778);
  v7 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A780);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  v61 = &type metadata for SettingsFeatureFlag.Wallet;
  v27 = sub_1BD5F5818();
  v62 = v27;
  v60[0] = 3;
  v28 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v60);
  v29 = 1;
  if ((v28 & 1) == 0)
  {
    v61 = &type metadata for SettingsFeatureFlag.Wallet;
    v62 = v27;
    v60[0] = 1;
    v30 = sub_1BE04C584();
    v31 = __swift_destroy_boxed_opaque_existential_0(v60);
    if (v30)
    {
      v50 = &v49;
      MEMORY[0x1EEE9AC00](v31, v32);
      *(&v49 - 2) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A790);
      sub_1BD0DE4F4(&qword_1EBD5A798, &qword_1EBD5A790);
      v33 = v51;
      sub_1BE051A44();
      sub_1BE052434();
      sub_1BD9A95E4();
      v50 = v10;
      v34 = v53;
      v35 = v55;
      sub_1BE050DE4();

      (*(v54 + 8))(v33, v35);
      v36 = v34;
      v10 = v50;
      sub_1BD0DE204(v36, v18, &qword_1EBD5A770);
      v29 = 0;
    }

    (*(v58 + 56))(v18, v29, 1, v59);
    sub_1BD0DE204(v18, v26, &qword_1EBD5A778);
    v29 = 0;
  }

  v37 = 1;
  (*(v7 + 56))(v26, v29, 1, v56);
  v61 = &type metadata for SettingsFeatureFlag.Wallet;
  v62 = v27;
  v60[0] = 2;
  v38 = sub_1BE04C584();
  v39 = __swift_destroy_boxed_opaque_existential_0(v60);
  if (v38)
  {
    MEMORY[0x1EEE9AC00](v39, v40);
    *(&v49 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A790);
    sub_1BD0DE4F4(&qword_1EBD5A798, &qword_1EBD5A790);
    v41 = v51;
    sub_1BE051A44();
    sub_1BE052434();
    sub_1BD9A95E4();
    v42 = v10;
    v43 = v53;
    v44 = v55;
    sub_1BE050DE4();

    (*(v54 + 8))(v41, v44);
    v45 = v43;
    v10 = v42;
    sub_1BD0DE204(v45, v14, &qword_1EBD5A770);
    v37 = 0;
  }

  (*(v58 + 56))(v14, v37, 1, v59);
  sub_1BD0DE19C(v26, v22, &qword_1EBD5A780);
  sub_1BD0DE19C(v14, v10, &qword_1EBD5A778);
  v46 = v57;
  sub_1BD0DE19C(v22, v57, &qword_1EBD5A780);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A788);
  sub_1BD0DE19C(v10, v46 + *(v47 + 48), &qword_1EBD5A778);
  sub_1BD0DE53C(v14, &qword_1EBD5A778);
  sub_1BD0DE53C(v26, &qword_1EBD5A780);
  sub_1BD0DE53C(v10, &qword_1EBD5A778);
  return sub_1BD0DE53C(v22, &qword_1EBD5A780);
}

uint64_t sub_1BD9A8938()
{
  sub_1BE04E154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE8);
  sub_1BD0DE4F4(&qword_1EBD40BF0, &qword_1EBD40BE8);
  return sub_1BE051814();
}

id sub_1BD9A8A10@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v51 - v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v60 = &v51 - v21;
  v22 = *(v2 + 104);
  v58 = *MEMORY[0x1E69B8058];
  v57 = v22;
  v22(v8, v20);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v52 = *(v2 + 8);
    v52(v8, v1);
    v61 = v25;
    v62 = v27;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v30 = v29;
    v61 = v28;
    v62 = v29;
    v32 = v31 & 1;
    v63 = v31 & 1;
    v64 = v33;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v28, v30, v32);

    v34 = v59;
    v57(v59, v58, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v35 = result;
      v36 = sub_1BE04B6F4();
      v38 = v37;

      v52(v34, v1);
      v61 = v36;
      v62 = v38;
      v39 = sub_1BE0506C4();
      v41 = v40;
      v61 = v39;
      v62 = v40;
      v43 = v42 & 1;
      v63 = v42 & 1;
      v64 = v44;
      sub_1BE052434();
      v45 = v53;
      sub_1BE050DE4();

      sub_1BD0DDF10(v39, v41, v43);

      v46 = v60;
      v47 = v54;
      sub_1BD0DE19C(v60, v54, &qword_1EBD452C0);
      v48 = v55;
      sub_1BD0DE19C(v45, v55, &qword_1EBD452C0);
      v49 = v56;
      sub_1BD0DE19C(v47, v56, &qword_1EBD452C0);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
      sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD452C0);
      sub_1BD0DE53C(v45, &qword_1EBD452C0);
      sub_1BD0DE53C(v46, &qword_1EBD452C0);
      sub_1BD0DE53C(v48, &qword_1EBD452C0);
      return sub_1BD0DE53C(v47, &qword_1EBD452C0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD9A8EA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - v3;
  type metadata accessor for SettingsOptionsSection();
  sub_1BE051A84();
  swift_getKeyPath();
  sub_1BE051AA4();

  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40BE8);
  sub_1BD0DE4F4(&qword_1EBD40BF0, &qword_1EBD40BE8);
  return sub_1BE051814();
}

uint64_t sub_1BD9A904C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD9A90CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD9A9140@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v51 - v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v60 = &v51 - v21;
  v22 = *(v2 + 104);
  v58 = *MEMORY[0x1E69B80F0];
  v57 = v22;
  v22(v8, v20);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v52 = *(v2 + 8);
    v52(v8, v1);
    v61 = v25;
    v62 = v27;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v30 = v29;
    v61 = v28;
    v62 = v29;
    v32 = v31 & 1;
    v63 = v31 & 1;
    v64 = v33;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v28, v30, v32);

    v34 = v59;
    v57(v59, v58, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v35 = result;
      v36 = sub_1BE04B6F4();
      v38 = v37;

      v52(v34, v1);
      v61 = v36;
      v62 = v38;
      v39 = sub_1BE0506C4();
      v41 = v40;
      v61 = v39;
      v62 = v40;
      v43 = v42 & 1;
      v63 = v42 & 1;
      v64 = v44;
      sub_1BE052434();
      v45 = v53;
      sub_1BE050DE4();

      sub_1BD0DDF10(v39, v41, v43);

      v46 = v60;
      v47 = v54;
      sub_1BD0DE19C(v60, v54, &qword_1EBD452C0);
      v48 = v55;
      sub_1BD0DE19C(v45, v55, &qword_1EBD452C0);
      v49 = v56;
      sub_1BD0DE19C(v47, v56, &qword_1EBD452C0);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
      sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD452C0);
      sub_1BD0DE53C(v45, &qword_1EBD452C0);
      sub_1BD0DE53C(v46, &qword_1EBD452C0);
      sub_1BD0DE53C(v48, &qword_1EBD452C0);
      return sub_1BD0DE53C(v47, &qword_1EBD452C0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD9A95E4()
{
  result = qword_1EBD5A7A0;
  if (!qword_1EBD5A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5A768);
    sub_1BD0DE4F4(&qword_1EBD5A798, &qword_1EBD5A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A7A0);
  }

  return result;
}

id sub_1BD9A96F4(void *a1)
{
  v3 = [a1 panGestureRecognizer];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = v3;
  sub_1BD9AC8E0(v8, &v1[OBJC_IVAR___PKPassViewGestureCollector_groupStackView]);
  *&v1[OBJC_IVAR___PKPassViewGestureCollector_groups] = sub_1BD1AEA18(MEMORY[0x1E69E7CC0]);
  v7.receiver = v1;
  v7.super_class = PKPassViewGestureCollector;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  v5 = [a1 panGestureRecognizer];
  [v5 addTarget:v4 action:sel__groupStackViewPanned_];

  return v4;
}

uint64_t sub_1BD9A9814(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v38 = a4;
  v39 = a2;
  v40 = a3;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v35 = a4;
  v33 = a2;
  v34 = a3;
  swift_unknownObjectRelease();
  v10 = swift_allocObject();
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  *(v10 + 4) = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v32 = swift_allocObject();
  *(v32 + 16) = v11;
  *(v32 + 24) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = _s15GestureDelegateCMa();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldBegin];
  *v24 = sub_1BD9AC8A8;
  v24[1] = v10;
  v25 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldRecognizeSimultaneouslyWith];
  *v25 = sub_1BD9AC8B4;
  v25[1] = v32;
  v26 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldRequireFailureOf];
  *v26 = sub_1BD9AC8BC;
  v26[1] = v15;
  v27 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldBeRequiredToFailBy];
  *v27 = sub_1BD9AC8C4;
  v27[1] = v18;
  v28 = &v23[OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_action];
  *v28 = sub_1BD9AC8CC;
  v28[1] = v21;
  v36.receiver = v23;
  v36.super_class = v22;
  v29 = objc_msgSendSuper2(&v36, sel_init);

  v41 = v29;
  v30 = v29;
  [v33 setDelegate_];
  [v34 setDelegate_];
  [v35 setDelegate_];
  [v33 addTarget:v30 action:sel__gestureRecognizerActed_];
  [v35 addTarget:v30 action:sel__gestureRecognizerActed_];

  sub_1BD9A9D28(v37);
  return sub_1BD9AC7A0(v37);
}

uint64_t sub_1BD9A9D28(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v4 = Strong;
  v5 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16) || (v7 = sub_1BD149084(v4), (v8 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  sub_1BD509500(*(v6 + 56) + 40 * v7, v10);
  sub_1BD1B6150(v10, v11);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_8:
    while (1)
    {
      sub_1BE053994();
      __break(1u);
    }
  }

  sub_1BD9AC7A0(v11);
LABEL_7:
  sub_1BD509500(a1, v11);
  swift_beginAccess();
  sub_1BD6B0DF0(v11, v4);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9A9FCC(uint64_t a1)
{
  v3 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_1BD149084(a1);
    if (v6)
    {
      v7 = v5;
      v8 = *(v4 + 36);
      v13 = sub_1BD9AA474(&v14, v5, v8, 0, v4);
      sub_1BD0DE19C(&v13, v11, &qword_1EBD5A878);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1BD9AC7A0(&v12);
      if (!Strong)
      {
LABEL_6:
        swift_beginAccess();
        sub_1BD9AC7D0(v11, v7, v8);
        swift_endAccess();
        sub_1BD9AC7A0(v11);
        return sub_1BD0DE53C(&v13, &qword_1EBD5A878);
      }

      if (Strong == a1)
      {
        swift_unknownObjectRelease();
        goto LABEL_6;
      }
    }
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD9AA200()
{
  v1 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048C84();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_15:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    sub_1BD509500(*(v2 + 56) + 40 * v12, v16);
    *&v17[0] = v13;
    sub_1BD1B6150(v16, v17 + 8);
LABEL_16:
    sub_1BD0DE204(v17, v18, &qword_1EBD5A870);
    if (!v19[1])
    {

      return;
    }

    v14 = v19[2];
    sub_1BD9AC7A0(v19);
    v15 = v14;
    if ([v15 isEnabled])
    {
      if ([v15 state] - 1 < 2)
      {
        [v15 setEnabled_];
        [v15 setEnabled_];
      }
    }
  }

  if (v6 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      v5 = 0;
      v7 = v10;
      memset(v17, 0, sizeof(v17));
      goto LABEL_16;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1BD9AA474(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    sub_1BD509500(*(a5 + 56) + 40 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BD9AA4F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a3;
  v36[0] = a1;
  v36[1] = a2;
  v8 = a3 & 1;
  v37 = a3 & 1;
  sub_1BD509500(a4, &v38);
  v9 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v31 = v9;
  v32 = v4;
  v10 = *(v4 + v9);
  swift_bridgeObjectRetain_n();
  sub_1BD9AC8D4(a1, a2, v8);
  v11 = sub_1BE053674();
  v12 = *(v10 + 36);
  v13 = *(v10 + 32);

  v15 = 1 << v13;
  v29 = v11;
  if (v11 == 1 << v13)
  {
LABEL_2:

    sub_1BD20DE9C(v29, v12, 0);
    sub_1BD20DE9C(v15, v12, 0);
    sub_1BD20DE9C(v15, v12, 0);
    return sub_1BD0DE53C(v36, &qword_1EBD5A8E8);
  }

  else
  {
    v16 = v11;
    v30 = v5;
    while ((v16 & 0x8000000000000000) == 0)
    {
      v17 = 1 << *(v10 + 32);
      if (v16 >= v17)
      {
        break;
      }

      v18 = v16 >> 6;
      v19 = *(v10 + 64 + 8 * (v16 >> 6));
      if ((v19 & (1 << v16)) == 0)
      {
        goto LABEL_29;
      }

      if (v12 != *(v10 + 36))
      {
        goto LABEL_30;
      }

      v20 = v19 & (-2 << (v16 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (v10 + 72 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v17 = __clz(__rbit64(v24)) + v21;
            break;
          }
        }
      }

      if (v5)
      {
        goto LABEL_35;
      }

      if (v12 != a2)
      {
        goto LABEL_31;
      }

      if (v16 != a1)
      {
        v26 = *(v32 + v31);
        if (v16 >= 1 << *(v26 + 32))
        {
          goto LABEL_32;
        }

        if ((*(v26 + 8 * v18 + 64) & (1 << v16)) == 0)
        {
          goto LABEL_33;
        }

        if (v12 != *(v26 + 36))
        {
          goto LABEL_34;
        }

        sub_1BD509500(*(v26 + 56) + 40 * v16, v33);
        v27 = v35;
        if ([v35 isEnabled] && objc_msgSend(v27, sel_state) <= 2)
        {
          [v27 setEnabled_];
          v5 = v30;
          [v27 setEnabled_];
        }

        v28 = v34;
        if ([v34 isEnabled])
        {
          if ([v28 state] <= 2)
          {
            [v28 setEnabled_];
            v5 = v30;
            [v28 setEnabled_];
          }
        }

        result = sub_1BD9AC7A0(v33);
      }

      v16 = v17;
      if (v17 == v15)
      {
        goto LABEL_2;
      }
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
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9AA82C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v45[0] = a3;
  v45[1] = a4;
  v11 = a5 & 1;
  v46 = a5 & 1;
  sub_1BD509500(a6, &v47);
  if (!a2)
  {
    sub_1BD9AC8D4(a3, a4, v11);
    goto LABEL_9;
  }

  if (a2 != 1)
  {
    sub_1BD0DE19C(v45, &v41, &qword_1EBD5A8E8);
    v20 = v41;
    v21 = v42;
    v22 = v43;
    sub_1BD9AC8D4(a3, a4, v7 & 1);
    sub_1BD20DE9C(v20, v21, v22);
    v23 = v44[3];
    sub_1BD9AC7A0(v44);
    if ([v23 isEnabled])
    {
      v24 = [v23 state];

      if ((v24 - 1) < 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

LABEL_38:
    v19 = 0;
    goto LABEL_39;
  }

  sub_1BD9AC8D4(a3, a4, v7 & 1);
LABEL_4:
  v12 = *(v6 + OBJC_IVAR___PKPassViewGestureCollector_groupStackView + 8);
  if ([v12 isEnabled] && objc_msgSend(v12, sel_state) - 1 < 2)
  {
    goto LABEL_38;
  }

  v13 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v40 = v13;
  v14 = *(v6 + v13);
  swift_bridgeObjectRetain_n();
  v15 = sub_1BE053674();
  v16 = *(v14 + 36);
  LOBYTE(v13) = *(v14 + 32);

  v18 = 1 << v13;
  v39 = v15;
  if (v15 == 1 << v13)
  {
LABEL_7:

    sub_1BD20DE9C(v39, v16, 0);
    sub_1BD20DE9C(v18, v16, 0);
    sub_1BD20DE9C(v18, v16, 0);
LABEL_9:
    v19 = 1;
LABEL_39:
    sub_1BD0DE53C(v45, &qword_1EBD5A8E8);
    return v19;
  }

  v25 = v15;
  while ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 1 << *(v14 + 32);
    if (v25 >= v26)
    {
      break;
    }

    v27 = v25 >> 6;
    v28 = *(v14 + 64 + 8 * (v25 >> 6));
    if ((v28 & (1 << v25)) == 0)
    {
      goto LABEL_41;
    }

    if (v16 != *(v14 + 36))
    {
      goto LABEL_42;
    }

    v29 = v28 & (-2 << (v25 & 0x3F));
    if (v29)
    {
      v26 = __clz(__rbit64(v29)) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v27 << 6;
      v31 = v27 + 1;
      v32 = (v14 + 72 + 8 * v27);
      while (v31 < (v26 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          v26 = __clz(__rbit64(v33)) + v30;
          break;
        }
      }
    }

    if (v7)
    {
      goto LABEL_47;
    }

    if (v16 != a4)
    {
      goto LABEL_43;
    }

    if (v25 != a3)
    {
      v35 = *(v6 + v40);
      if (v25 >= 1 << *(v35 + 32))
      {
        goto LABEL_44;
      }

      if ((*(v35 + 8 * v27 + 64) & (1 << v25)) == 0)
      {
        goto LABEL_45;
      }

      if (v16 != *(v35 + 36))
      {
        goto LABEL_46;
      }

      v36 = v7;
      sub_1BD509500(*(v35 + 56) + 40 * v25, &v41);
      v37 = v44[0];
      if ([v44[0] isEnabled] && objc_msgSend(v37, sel_state) - 1 <= 1 || (v38 = v42, objc_msgSend(v42, sel_isEnabled, v39)) && objc_msgSend(v38, sel_state) - 1 <= 1)
      {

        sub_1BD20DE9C(v39, v16, 0);
        sub_1BD20DE9C(v18, v16, 0);
        sub_1BD20DE9C(v26, v16, 0);
        sub_1BD9AC7A0(&v41);
        goto LABEL_38;
      }

      result = sub_1BD9AC7A0(&v41);
      v7 = v36;
    }

    v25 = v26;
    if (v26 == v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
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
LABEL_47:
  __break(1u);
  return result;
}