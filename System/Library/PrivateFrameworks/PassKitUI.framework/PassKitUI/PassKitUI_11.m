uint64_t sub_1BD16C92C(uint64_t a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0);
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v31 - v4;
  v5 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0);
  v35 = *(v38 - 1);
  MEMORY[0x1EEE9AC00](v38, v7);
  v34 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACC0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31 - v15;
  type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v39)
  {
    sub_1BD17195C(v39, v40);
    v17 = sub_1BE04FB14();
    v32 = v16;
    MEMORY[0x1EEE9AC00](v17, v18);
    *(&v31 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    v33 = v9;
    v19 = v37;
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v20 = v34;
    sub_1BE04E424();
    v16 = v32;
    v21 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    v22 = v36;
    v23 = v38;
    MEMORY[0x1BFB3CC50](v20, v38, v21);
    (*(v2 + 16))(v13, v22, v19);
    (*(v2 + 56))(v13, 0, 1, v19);
    v39 = v23;
    v40 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v13, v19, OpaqueTypeConformance2);
    sub_1BD0DE53C(v13, &qword_1EBD3ACC0);
    v25 = v19;
    v9 = v33;
    (*(v2 + 8))(v22, v25);
    (*(v35 + 8))(v20, v23);
  }

  else
  {
    v26 = v37;
    (*(v2 + 56))(v13, 1, 1, v37);
    v27 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    v39 = v38;
    v40 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v13, v26, v28);
    sub_1BD0DE53C(v13, &qword_1EBD3ACC0);
  }

  v29 = sub_1BD171868();
  MEMORY[0x1BFB3CC50](v16, v9, v29);
  return sub_1BD0DE53C(v16, &qword_1EBD3ACC0);
}

id sub_1BD16CE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8058], v7);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v8 + 8))(v11, v7);
    v19[2] = v14;
    v19[3] = v16;
    sub_1BD170F0C(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    sub_1BD1719A4(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD16D0B0(uint64_t a1)
{
  v18 = sub_1BE04F3D4();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v18);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD16D32C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1BE04ECF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AC20);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AC28);
  v23 = *(v12 - 8);
  v24 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AC30);
  sub_1BD171484();
  sub_1BE0504A4();
  sub_1BE051DD4();
  v16 = sub_1BD0DE4F4(&qword_1EBD3ACA8, &qword_1EBD3AC20);
  v17 = sub_1BD1710E4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  sub_1BE051134();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACB8);
  v28 = v7;
  v29 = v2;
  v30 = v16;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACC0);
  v19 = sub_1BD171868();
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_1BE051024();
  return (*(v23 + 8))(v15, v20);
}

uint64_t sub_1BD16D6D4()
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t sub_1BD16D718()
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t sub_1BD16D758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD16D7CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

BOOL sub_1BD16D840(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      if (sub_1BE053074())
      {
        return sub_1BE053074() & 1;
      }
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_1BD16D8FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD16D968(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_credentials);
  *(v1 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_credentials) = a1;
  v4 = a1;

  if (a1)
  {

    v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_virtualCard);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD16DA58()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD16DCA0();
}

uint64_t sub_1BD16DB04()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD16DC40, v1, v0);
}

uint64_t sub_1BD16DC40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD16DCA0()
{
  v1[22] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v1[23] = swift_task_alloc();
  v2 = sub_1BE04D214();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = sub_1BE0528A4();
  v1[29] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[30] = v4;
  v1[31] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD16DDDC, v4, v3);
}

uint64_t sub_1BD16DDDC()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_context;
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_context);
  if (v3 && (v4 = [v3 externalizedContext]) != 0)
  {
    v5 = v0[22];
    v6 = v4;
    v7 = sub_1BE04AAC4();
    v9 = v8;

    v0[32] = v7;
    v0[33] = v9;
    v10 = *(v5 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_virtualCardManager);
    v11 = *(v5 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_virtualCard);
    v0[34] = v11;
    v12 = sub_1BE04AAB4();
    v0[35] = v12;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_1BD16DFF4;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB38);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD16E918;
    v0[13] = &block_descriptor_49;
    v0[14] = v13;
    [v10 credentialsForVirtualCard:v11 authorization:v12 options:3 merchantHost:0 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v14 = *(v1 + v2);
    *(v1 + v2) = 0;

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1BD16DFF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_1BD16E5F8;
  }

  else
  {
    v5 = sub_1BD16E124;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD16E124()
{
  v60 = v0;
  v1 = v0[35];

  v2 = v0[20];

  v3 = &qword_1EBD3A000;
  if (v2)
  {
    sub_1BE04D1E4();
    v4 = v2;
    v5 = sub_1BE04D204();
    v6 = sub_1BE052C54();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[27];
    v10 = v0[24];
    v9 = v0[25];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v11 = 136315138;
      v54 = v6;
      v12 = v4;
      v13 = [v12 description];
      v55 = v8;
      v56 = v10;
      v14 = sub_1BE052434();
      v15 = v4;
      v17 = v16;

      v18 = sub_1BD123690(v14, v17, &v59);
      v4 = v15;

      *(v11 + 4) = v18;
      _os_log_impl(&dword_1BD026000, v5, v54, "Got credentials: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x1BFB45F20](v57, -1, -1);
      v19 = v11;
      v3 = &qword_1EBD3A000;
      MEMORY[0x1BFB45F20](v19, -1, -1);

      (*(v9 + 8))(v55, v56);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v20 = v0[34];
    v21 = v0[22];
    v22 = v3[350];
    v23 = *(v21 + v22);
    *(v21 + v22) = v2;
    v24 = v4;

    swift_getKeyPath();
    swift_getKeyPath();
    v0[18] = v20;
    v0[19] = v2;
    v25 = v20;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  if (*(v0[22] + v3[350]))
  {
    v26 = v0[32];
    v27 = v0[33];

    sub_1BD1245AC(v26, v27);
  }

  else
  {
    sub_1BD170404();
    v28 = swift_allocError();
    v29 = 0;
    sub_1BE04D1E4();
    v30 = v28;
    v31 = sub_1BE04D204();
    v32 = sub_1BE052C54();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    if (v33)
    {
      v58 = v0[26];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v59 = v38;
      *v37 = 136315138;
      v0[21] = v28;
      v39 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v40 = sub_1BE0524A4();
      v42 = sub_1BD123690(v40, v41, &v59);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1BD026000, v31, v32, "Couldn't get credentials: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1BFB45F20](v38, -1, -1);
      MEMORY[0x1BFB45F20](v37, -1, -1);

      (*(v34 + 8))(v58, v36);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    v44 = v0[32];
    v43 = v0[33];
    v46 = v0[22];
    v45 = v0[23];
    v47 = sub_1BE0528D4();
    (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
    sub_1BE048964();
    v48 = v28;
    v49 = sub_1BE052894();
    v50 = swift_allocObject();
    v51 = MEMORY[0x1E69E85E0];
    v50[2] = v49;
    v50[3] = v51;
    v50[4] = v46;
    v50[5] = v28;
    sub_1BD122C00(0, 0, v45, &unk_1BE0BB4D0, v50);

    sub_1BD1245AC(v44, v43);
  }

  v52 = v0[1];

  return v52();
}

uint64_t sub_1BD16E5F8()
{
  v34 = v0;
  v2 = v0[35];
  v1 = v0[36];

  swift_willThrow();

  if (*(v0[22] + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_credentials))
  {
    v4 = v0[32];
    v3 = v0[33];

    sub_1BD1245AC(v4, v3);
  }

  else
  {
    v5 = v1;
    if (!v1)
    {
      sub_1BD170404();
      v5 = swift_allocError();
    }

    v6 = v1;
    sub_1BE04D1E4();
    v7 = v5;
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C54();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[24];
    if (v10)
    {
      v32 = v0[24];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136315138;
      v0[21] = v5;
      v16 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v17 = sub_1BE0524A4();
      v31 = v11;
      v19 = sub_1BD123690(v17, v18, &v33);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1BD026000, v8, v9, "Couldn't get credentials: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);

      (*(v12 + 8))(v31, v32);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v21 = v0[32];
    v20 = v0[33];
    v23 = v0[22];
    v22 = v0[23];
    v24 = sub_1BE0528D4();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    sub_1BE048964();
    v25 = v5;
    v26 = sub_1BE052894();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v23;
    v27[5] = v5;
    sub_1BD122C00(0, 0, v22, &unk_1BE0BB4D0, v27);

    sub_1BD1245AC(v21, v20);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_1BD16E918(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD16E9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD16EA80, v7, v6);
}

uint64_t sub_1BD16EA80()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;
  sub_1BE048964();
  v2 = v1;
  sub_1BE04D8C4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD16EB40()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v1[26] = swift_task_alloc();
  v2 = sub_1BE04D214();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = sub_1BE0528A4();
  v1[31] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[32] = v3;
  v1[33] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD16ECA4, v3, v4);
}

uint64_t sub_1BD16ECA4()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_context;
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_context);
  if (!v3)
  {
    goto LABEL_8;
  }

  v0[22] = 0;
  v4 = [v3 checkContextValidWithError_];
  v5 = v0[22];
  if (v4)
  {
    v6 = v5;
    v7 = *(v1 + v2);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = v5;
    v9 = sub_1BE04A854();

    swift_willThrow();
    v10 = *(v1 + v2);
    *(v1 + v2) = 0;

    v7 = *(v1 + v2);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v11 = [v7 externalizedContext];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE04AAC4();
    v15 = v14;

    sub_1BD1245AC(v13, v15);
    goto LABEL_9;
  }

LABEL_8:
  v16 = sub_1BD2EE9B8();
  v17 = *(v1 + v2);
  *(v1 + v2) = v16;

LABEL_9:
  v18 = *(v1 + v2);
  v0[34] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = [v19 externalizedContext];
    if (v20)
    {
      v21 = v0[25];
      v22 = v20;
      v23 = sub_1BE04AAC4();
      v25 = v24;

      v0[35] = v23;
      v0[36] = v25;
      v26 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_credentials;
      v0[37] = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_credentials;
      v0[38] = *(v21 + v26);
      *(v21 + v26) = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      v0[19] = 0;
      v0[18] = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
      v27 = *(v21 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_paymentService);
      v28 = *(v21 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_virtualCard);
      v0[39] = v28;
      v29 = sub_1BE04AAB4();
      v0[40] = v29;
      v0[2] = v0;
      v0[7] = v0 + 23;
      v0[3] = sub_1BD16F028;
      v30 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB30);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1BD16F63C;
      v0[13] = &block_descriptor_11;
      v0[14] = v30;
      [v27 regenerateVPANCardCredentialsForVirtualCard:v28 authorization:v29 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  else
  {
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1BD16F028()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_1BD16F328;
  }

  else
  {
    v5 = sub_1BD16F184;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD16F184()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 304);
  v5 = *(v0 + 272);
  v6 = *(v0 + 200);

  v7 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 336) = 1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v8 = *(v6 + v3);
  *(v6 + v3) = v7;
  v9 = v7;

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 160) = v2;
  *(v0 + 168) = v7;
  sub_1BE048964();
  v10 = v2;
  sub_1BE04D8C4();

  sub_1BD1245AC(v4, v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD16F328()
{
  v35 = v0;
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = v0[40];
  v1 = v0[41];

  swift_willThrow();

  sub_1BE04D1E4();
  v3 = v1;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136315138;
    v0[24] = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v13 = sub_1BE0524A4();
    v15 = sub_1BD123690(v13, v14, v34);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BD026000, v4, v5, "Couldn't regenerate credentials: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1BFB45F20](v11, -1, -1);
    MEMORY[0x1BFB45F20](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[28];
    v16 = v0[29];
    v18 = v0[27];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[41];
  v20 = v0[38];
  v22 = v0[35];
  v21 = v0[36];
  v23 = v0[34];
  v25 = v0[25];
  v24 = v0[26];
  v26 = sub_1BE0528D4();
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  sub_1BE048964();
  v27 = v19;
  v28 = v20;
  v29 = sub_1BE052894();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v25;
  v30[5] = v19;
  v30[6] = v20;
  sub_1BD122C00(0, 0, v24, &unk_1BE0BB420, v30);

  sub_1BD1245AC(v22, v21);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1BD16F63C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_1BD16F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1BE0528A4();
  v6[6] = sub_1BE052894();
  v8 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD16F7B0, v8, v7);
}

uint64_t sub_1BD16F7B0()
{
  v1 = v0[5];
  v2 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;
  sub_1BE048964();
  v3 = v2;
  sub_1BE04D8C4();
  v4 = v1;
  sub_1BD16D968(v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD16F880()
{
  v1 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__currentStep;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__hasRegenerated;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__fatalError;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB50);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__recoverableError, v6);

  return v0;
}

uint64_t sub_1BD16FA14()
{
  sub_1BD16F880();

  return swift_deallocClassInstance();
}

void sub_1BD16FA94()
{
  sub_1BD1712C8(319, &qword_1EBD3AB20, &type metadata for VirtualCardPublisher.Step, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1BD1712C8(319, &qword_1EBD368F0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1BD170B94(319, &qword_1EBD3AB28, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI20VirtualCardPublisherC4StepO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD16FC40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BD16FC90(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_1BD16FCE4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1BD16FD14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VirtualCardPublisher(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

double sub_1BD16FD54@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BD16FDD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD1703C4(v1, v2);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD16FE5C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD16FEDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD16FF50@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD16FFCC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v2 = v1;
  return sub_1BE04D8C4();
}

void sub_1BD170044(void *a1, char a2)
{
  v3 = [a1 primaryAccountNumber];
  v4 = v3;
  if (a2)
  {
    if (!v3)
    {
      return;
    }

    v5 = PKFPANSuffixFromFPAN();

    if (!v5)
    {
      return;
    }

    v6 = PKMaskedPaymentPAN();

    if (!v6)
    {
      return;
    }

    v4 = PKLTRString();

    if (v4)
    {
LABEL_9:
      sub_1BE052434();

      return;
    }

    __break(1u);
  }

  v7 = PKFormattedStringForPAN();

  if (v7)
  {
    v4 = PKLTRString();

    if (v4)
    {
      goto LABEL_9;
    }

    __break(1u);
  }
}

id sub_1BD170148(void *a1, char a2)
{
  v4 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  result = [a1 cardSecurityCode];
  v7 = result;
  if (a2)
  {
    if (result)
    {
      sub_1BE052434();

      sub_1BE052534();

      sub_1BE052614();
LABEL_6:
      sub_1BE04F604();
      sub_1BE04F5F4();
      sub_1BE051574();
      sub_1BE04F5D4();

      sub_1BE04F5F4();
      sub_1BE04F5E4();

      sub_1BE04F5F4();
      sub_1BE04F634();
      return sub_1BE050694();
    }

    __break(1u);
  }

  else if (result)
  {
    sub_1BE052434();

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1702FC(uint64_t a1)
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

  return sub_1BD16F714(a1, v4, v5, v6, v7, v8);
}

id sub_1BD1703C4(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1BD170404()
{
  result = qword_1EBD3AB40;
  if (!qword_1EBD3AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AB40);
  }

  return result;
}

uint64_t sub_1BD170458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD16E9E8(a1, v4, v5, v7, v6);
}

unint64_t sub_1BD17052C()
{
  result = qword_1EBD3AB58;
  if (!qword_1EBD3AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AB58);
  }

  return result;
}

uint64_t sub_1BD170580(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AB50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v36 - v18;
  v20 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__hasRegenerated;
  LOBYTE(v41) = 0;
  sub_1BE04D874();
  (*(v16 + 32))(v4 + v20, v19, v15);
  v21 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__fatalError;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0);
  sub_1BE04D874();
  v22 = *(v11 + 32);
  v22(v4 + v21, v14, v10);
  v23 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher__recoverableError;
  v41 = 0;
  sub_1BE04D874();
  v22(v4 + v23, v14, v10);
  *(v4 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_credentials) = 0;
  v24 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_virtualCardManager;
  *(v4 + v24) = [objc_allocWithZone(MEMORY[0x1E69B9350]) init];
  v25 = OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_paymentService;
  *(v4 + v25) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  *(v4 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_context) = 0;
  *(v4 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_loading) = 0;
  v27 = v37;
  v26 = v38;
  *(v4 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_pass) = v37;
  *(v4 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_virtualCard) = v26;
  *(v4 + OBJC_IVAR____TtC9PassKitUI20VirtualCardPublisher_context) = a3;
  swift_beginAccess();
  v39 = 0;
  v40 = 0;
  v28 = a3;
  v29 = v27;
  v30 = v26;
  sub_1BE04D874();
  swift_endAccess();
  v31 = sub_1BE0528D4();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  sub_1BE0528A4();
  sub_1BE048964();
  v32 = sub_1BE052894();
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v4;
  sub_1BD122C00(0, 0, v9, &unk_1BE0BB608, v33);

  return v4;
}

uint64_t sub_1BD170960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD16DA58();
}

void sub_1BD170A5C()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD171318(319, &qword_1EBD3AB70, MEMORY[0x1E697DD40]);
    if (v1 <= 0x3F)
    {
      sub_1BD170B94(319, &qword_1EBD3AB80, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1BD1712C8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1BD170C00();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD170B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD419B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BD170C00()
{
  if (!qword_1EBD3AB88)
  {
    sub_1BE04E664();
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3AB88);
    }
  }
}

uint64_t objectdestroy_76Tm()
{
  v1 = (type metadata accessor for VirtualCardDetailsSheet(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  sub_1BD0D45CC();

  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD170DEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for VirtualCardDetailsSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1BD170E70()
{
  result = qword_1EBD3ABB8;
  if (!qword_1EBD3ABB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ABB8);
  }

  return result;
}

uint64_t sub_1BD170F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD170F74()
{
  result = qword_1EBD3ABD0;
  if (!qword_1EBD3ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABC8);
    sub_1BD171000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ABD0);
  }

  return result;
}

unint64_t sub_1BD171000()
{
  result = qword_1EBD3ABD8;
  if (!qword_1EBD3ABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABE0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD0DE4F4(&qword_1EBD3ABE8, &qword_1EBD3ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ABD8);
  }

  return result;
}

uint64_t sub_1BD1710E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD17112C(uint64_t a1)
{
  v2 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD1711B0()
{
  sub_1BD170C00();
  if (v0 <= 0x3F)
  {
    sub_1BD1712C8(319, &qword_1EBD3AC10, &type metadata for VirtualCardDetailsSheet.CredentialsSheet.CredentialsModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1BD171318(319, &qword_1EBD3AC18, MEMORY[0x1E697E430]);
      if (v2 <= 0x3F)
      {
        sub_1BD1712C8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD1712C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD171318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for VirtualCardPublisher(255);
    v7 = sub_1BD1710E4(&qword_1EBD3AB78, type metadata accessor for VirtualCardPublisher);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
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

uint64_t sub_1BD1713C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BD171410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD171484()
{
  result = qword_1EBD3AC38;
  if (!qword_1EBD3AC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC30);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD3AC40, &qword_1EBD3AC48);
    sub_1BD171550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AC38);
  }

  return result;
}

unint64_t sub_1BD171550()
{
  result = qword_1EBD3AC50;
  if (!qword_1EBD3AC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC58);
    sub_1BD17160C();
    sub_1BD1710E4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AC50);
  }

  return result;
}

unint64_t sub_1BD17160C()
{
  result = qword_1EBD3AC60;
  if (!qword_1EBD3AC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC68);
    sub_1BD1716C4();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AC60);
  }

  return result;
}

unint64_t sub_1BD1716C4()
{
  result = qword_1EBD3AC70;
  if (!qword_1EBD3AC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC78);
    sub_1BD17177C();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AC70);
  }

  return result;
}

unint64_t sub_1BD17177C()
{
  result = qword_1EBD3AC80;
  if (!qword_1EBD3AC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AC88);
    sub_1BD0DE4F4(&qword_1EBD3AC90, &qword_1EBD3AC98);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AC80);
  }

  return result;
}

unint64_t sub_1BD171868()
{
  result = qword_1EBD3ACC8;
  if (!qword_1EBD3ACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
    sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ACC8);
  }

  return result;
}

void sub_1BD17195C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1BD1719A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD171A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_1BD0D7F18(a3, a4, a5 & 1);

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD171A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_1BD0DDF10(a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_1BD171AC4()
{
  result = qword_1EBD3AD18;
  if (!qword_1EBD3AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AD18);
  }

  return result;
}

uint64_t sub_1BD171B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_107Tm()
{
  v1 = type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1BE04E664();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t sub_1BD171D2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD171DA8()
{
  result = qword_1EBD3AD48;
  if (!qword_1EBD3AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AD48);
  }

  return result;
}

uint64_t sub_1BD171F18(uint64_t a1)
{
  v4 = *(type metadata accessor for VirtualCardDetailsSheet.CredentialsSheet(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD16B978(a1, v6, v7, v1 + v5);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD172038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1BD172080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD172110()
{
  result = qword_1EBD3AD60;
  if (!qword_1EBD3AD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AD58);
    sub_1BD17219C();
    sub_1BD17229C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AD60);
  }

  return result;
}

unint64_t sub_1BD17219C()
{
  result = qword_1EBD3AD68;
  if (!qword_1EBD3AD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AD70);
    sub_1BE04FED4();
    swift_getOpaqueTypeConformance2();
    sub_1BD1710E4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AD68);
  }

  return result;
}

unint64_t sub_1BD17229C()
{
  result = qword_1EBD3AD78;
  if (!qword_1EBD3AD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AD80);
    sub_1BE04FE44();
    swift_getOpaqueTypeConformance2();
    sub_1BD1710E4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AD78);
  }

  return result;
}

unint64_t sub_1BD17244C()
{
  result = qword_1EBD3ADA8;
  if (!qword_1EBD3ADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADB0);
    sub_1BD1103C8();
    sub_1BD172110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ADA8);
  }

  return result;
}

uint64_t sub_1BD1724F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
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

uint64_t sub_1BD172540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD17260C()
{
  type metadata accessor for AccountUserInfoModel();
  swift_allocObject();
  return sub_1BD2FA644();
}

uint64_t sub_1BD172644()
{
  type metadata accessor for DeviceAuthenticationModel();
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  sub_1BE04D874();
  swift_endAccess();
  v1 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  *(v0 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v1;
  return v0;
}

uint64_t sub_1BD172700()
{
  type metadata accessor for SavingsActionSheetObserver(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3B488);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear) = 0;
  return v0;
}

uint64_t sub_1BD17278C()
{
  if (!PKSavingsFDICSignageEnabled())
  {
    return 3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = [v4 supportsMoneyMovement];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v1 = [v4 supportsShowSavingsAccountSummary];

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BD1728A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B7020;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *(v5 + 32) = v8;
  v6 = objc_allocWithZone(a2(0));
  return a3(v5);
}

uint64_t sub_1BD172984@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1BE04FB94();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04F5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ADB8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ADC0);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v45 = &v36 - v18;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ADC8);
  sub_1BD0DE4F4(&qword_1EBD3ADD0, &qword_1EBD3ADC8);
  sub_1BE0504E4();
  v36 = v10;
  sub_1BE04F5A4();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ADD8) + 36);
  (*(v7 + 16))(&v14[v19], v10, v6);
  v20 = *(v7 + 56);
  v20(&v14[v19], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v37 = v11;
  v22 = &v14[*(v11 + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v7 + 32))(v22 + v23, v36, v6);
  v20(v22 + v23, 0, 1, v6);
  *v22 = KeyPath;
  v24 = v39;
  sub_1BE04FB84();
  v25 = sub_1BD182678();
  v26 = v40;
  sub_1BE051144();
  v27 = v26;
  (*(v41 + 8))(v24, v26);
  sub_1BD0DE53C(v14, &qword_1EBD3ADB8);
  v28 = v38;
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v47[47] = v51;
  v47[48] = v52;
  v48 = v53;
  v50 = v55;
  v49 = v54;
  v29 = swift_allocObject();
  memcpy((v29 + 16), v28, 0x178uLL);
  sub_1BD18288C(v28, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE08);
  v47[0] = v37;
  v47[1] = v27;
  v47[2] = v25;
  v47[3] = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1BD1828C4();
  sub_1BD182918();
  v30 = v44;
  v31 = v42;
  v32 = v45;
  sub_1BE051124();

  (*(v43 + 8))(v32, v31);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v28, 0x178uLL);
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE28) + 36));
  *v34 = sub_1BD1829F8;
  v34[1] = v33;
  v34[2] = 0;
  v34[3] = 0;
  return sub_1BD18288C(v28, v47);
}

id sub_1BD172FA4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v359 = a2;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE68);
  MEMORY[0x1EEE9AC00](v353, v3);
  v316 = &v309 - v4;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE70);
  MEMORY[0x1EEE9AC00](v311, v5);
  v310 = (&v309 - v6);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE78);
  v331 = *(v319 - 8);
  v8 = MEMORY[0x1EEE9AC00](v319, v7);
  v314 = &v309 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v315 = &v309 - v11;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE80);
  v330 = *(v318 - 8);
  v13 = MEMORY[0x1EEE9AC00](v318, v12);
  v313 = &v309 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v317 = &v309 - v16;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE88);
  MEMORY[0x1EEE9AC00](v350, v17);
  v352 = &v309 - v18;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE90);
  MEMORY[0x1EEE9AC00](v351, v19);
  v344 = &v309 - v20;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE98);
  v393 = *(v389 - 1);
  v22 = MEMORY[0x1EEE9AC00](v389, v21);
  v343 = &v309 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v382 = &v309 - v25;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEA0);
  MEMORY[0x1EEE9AC00](v339, v26);
  v341 = &v309 - v27;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEA8);
  MEMORY[0x1EEE9AC00](v340, v28);
  v322 = &v309 - v29;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEB0);
  v378 = *(v371 - 8);
  v31 = MEMORY[0x1EEE9AC00](v371, v30);
  v321 = &v309 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v33);
  v370 = &v309 - v34;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEB8);
  v377 = *(v369 - 8);
  v36 = MEMORY[0x1EEE9AC00](v369, v35);
  v335 = &v309 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v337 = &v309 - v39;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEC0);
  v41 = MEMORY[0x1EEE9AC00](v338, v40);
  v328 = &v309 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v329 = &v309 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v334 = &v309 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v320 = &v309 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v336 = &v309 - v53;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEC8);
  v376 = *(v368 - 8);
  v55 = MEMORY[0x1EEE9AC00](v368, v54);
  v365 = &v309 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v57);
  v367 = &v309 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AED0);
  v61 = MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v363 = &v309 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v63);
  v366 = &v309 - v64;
  v65 = sub_1BE04BD74();
  v361 = *(v65 - 8);
  v362 = v65;
  v67 = MEMORY[0x1EEE9AC00](v65, v66);
  v312 = &v309 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v69);
  v327 = &v309 - v70;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AED8);
  v375 = *(v333 - 8);
  v72 = MEMORY[0x1EEE9AC00](v333, v71);
  v332 = &v309 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v74);
  v364 = &v309 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEE0);
  v78 = MEMORY[0x1EEE9AC00](v76 - 8, v77);
  v342 = &v309 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v80);
  v388 = (&v309 - v81);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEE8);
  MEMORY[0x1EEE9AC00](v326, v82);
  v325 = &v309 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEF0);
  v348 = *(v84 - 8);
  v349 = v84;
  MEMORY[0x1EEE9AC00](v84, v85);
  v324 = &v309 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AEF8);
  v89 = MEMORY[0x1EEE9AC00](v87 - 8, v88);
  v381 = &v309 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89, v91);
  v392 = &v309 - v92;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF00);
  v347 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374, v93);
  v323 = &v309 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF08);
  v97 = MEMORY[0x1EEE9AC00](v95 - 8, v96);
  v380 = &v309 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v97, v99);
  v391 = &v309 - v100;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF10);
  v102 = MEMORY[0x1EEE9AC00](v346, v101);
  v379 = &v309 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102, v104);
  v390 = &v309 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF18);
  v108 = MEMORY[0x1EEE9AC00](v106 - 8, v107);
  v358 = &v309 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v108, v110);
  v354 = &v309 - v111;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF20) - 8;
  v113 = MEMORY[0x1EEE9AC00](v372, v112);
  v357 = &v309 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113, v115);
  v385 = &v309 - v116;
  v360 = sub_1BE04F5B4();
  v117 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360, v118);
  v120 = &v309 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF28);
  v122 = v121 - 8;
  v124 = MEMORY[0x1EEE9AC00](v121, v123);
  v356 = &v309 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124, v126);
  v128 = &v309 - v127;
  v129 = swift_allocObject();
  memcpy((v129 + 16), a1, 0x178uLL);
  v130 = swift_allocObject();
  memcpy((v130 + 16), a1, 0x178uLL);
  *&v395 = sub_1BD182AE4;
  *(&v395 + 1) = v129;
  v396 = 0u;
  v397 = 0u;
  *&v398 = sub_1BD182AEC;
  *(&v398 + 1) = v130;
  v394 = a1;
  sub_1BD18288C(a1, &v404);
  sub_1BD18288C(a1, &v404);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF38);
  sub_1BD182B28();
  sub_1BD182C94(&qword_1EBD3AF60, &qword_1EBD3AF38, &unk_1BE0BC030, sub_1BD182D48);
  sub_1BE051A24();
  v131 = v120;
  v384 = v120;
  sub_1BE04F594();
  v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF98) + 36);
  v133 = v117;
  v134 = v117 + 16;
  v387 = *(v117 + 16);
  v135 = v360;
  (v387)(&v128[v132], v131, v360);
  v136 = v133 + 56;
  v137 = *(v133 + 56);
  v137(&v128[v132], 0, 1, v135);
  KeyPath = swift_getKeyPath();
  v139 = *(v122 + 44);
  v355 = v128;
  v140 = &v128[v139];
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580);
  v141 = *(v386 + 28);
  v142 = v133 + 32;
  v383 = *(v133 + 32);
  v143 = v384;
  v383(v140 + v141, v384, v135);
  v137(v140 + v141, 0, 1, v135);
  *v140 = KeyPath;
  v144 = v385;
  sub_1BD175D28(v385);
  sub_1BE04F594();
  v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA0) + 36);
  v373 = v134;
  (v387)(v144 + v145, v143, v135);
  v146 = v135;
  v137((v144 + v145), 0, 1, v135);
  v147 = swift_getKeyPath();
  v148 = (v144 + *(v372 + 44));
  v149 = *(v386 + 28);
  v383(v148 + v149, v143, v135);
  v345 = v137;
  v372 = v136;
  v137(v148 + v149, 0, 1, v135);
  *v148 = v147;
  v413 = *(v394 + 200);
  v414 = *(v394 + 27);
  v404 = *(v394 + 200);
  *&v405 = *(v394 + 27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v150 = v395;
  if (v150 == sub_1BE052434() && *(&v150 + 1) == v151)
  {
  }

  else
  {
    v154 = sub_1BE053B84();

    if ((v154 & 1) == 0 && *(v394 + 28))
    {
      v155 = *(v394 + 28);
      v404 = v413;
      *&v405 = v414;
      sub_1BE0516A4();
      v156 = v395;
      if (v156 == sub_1BE052434() && *(&v156 + 1) == v157)
      {

        v159 = v361;
        v158 = v362;
        v160 = v312;
      }

      else
      {
        v269 = sub_1BE053B84();

        v159 = v361;
        v158 = v362;
        v160 = v312;
        if ((v269 & 1) == 0)
        {
          v260 = 1;
          v259 = v354;
          goto LABEL_25;
        }
      }

      (*(v159 + 104))(v160, *MEMORY[0x1E69B80E0], v158);
      result = PKPassKitBundle();
      if (result)
      {
        v270 = result;
        v271 = sub_1BE04B6F4();
        v273 = v272;

        (*(v159 + 8))(v160, v158);
        *&v404 = v271;
        *(&v404 + 1) = v273;
        sub_1BD0DDEBC();
        *&v404 = sub_1BE0506C4();
        *(&v404 + 1) = v274;
        LOBYTE(v405) = v275 & 1;
        *(&v405 + 1) = v276;
        MEMORY[0x1EEE9AC00](v404, v274);
        v277 = v394;
        *(&v309 - 2) = v394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFC0);
        sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0);
        sub_1BE051A24();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v278 = v404;
        v279 = [v404 state];

        if ((v279 == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v280 = v404, v281 = [v404 state], v280, v281 == 2)) && (v282 = *(v277 + 29)) != 0)
        {
          type metadata accessor for TransactionList();
          sub_1BD184068(&qword_1EBD3AFF8, type metadata accessor for TransactionList);
          v283 = v282;
          v393 = sub_1BE04E954();
          v285 = v284;
          v286 = v155;
          v394 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:0 paymentServiceDataProvider:objc_msgSend(*&v283[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher] detailViewStyle:sel_paymentDataProvider) context:{PKAccountViewStyleToPKPaymentPassDetailViewStyle(v155), 0}];

          swift_unknownObjectRelease();
          v287 = v283;
          v391 = sub_1BE04E954();
          v390 = v288;
          v392 = v285;
        }

        else
        {
          v393 = 0;
          v392 = 0;
          v394 = 0;
          v391 = 0;
          v390 = 0;
          v286 = 0;
        }

        v289 = sub_1BE04F7C4();
        v290 = v310;
        *v310 = v289;
        v290[1] = 0;
        *(v290 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFD0);
        sub_1BD177F28();
        sub_1BD0DE4F4(&qword_1EBD3AFD8, &qword_1EBD3AE70);
        v291 = v315;
        sub_1BE051A54();
        v292 = *(v330 + 16);
        (v292)(v313, v317, v318);
        v293 = *(v331 + 16);
        v294 = v314;
        v293(v314, v291, v319);
        v295 = v316;
        v292();
        v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFE0);
        v297 = v295;
        v298 = (v295 + *(v296 + 48));
        v299 = v393;
        v300 = v392;
        *v298 = v393;
        v298[1] = v300;
        v301 = v394;
        v298[2] = v286;
        v298[3] = v301;
        v302 = v391;
        v303 = v390;
        v298[4] = v391;
        v298[5] = v303;
        v298[6] = v286;
        v304 = v294;
        v305 = v319;
        v293((v297 + *(v296 + 64)), v304, v319);
        sub_1BD182EEC(v299, v300, v286, v301, v302, v303);
        v393 = v299;
        v392 = v300;
        v394 = v301;
        sub_1BD182EEC(v299, v300, v286, v301, v302, v303);
        v388 = *(v331 + 8);
        v331 += 8;
        v388(v314, v305);
        sub_1BD182F3C(v299, v300, v286, v301, v302, v303);
        v306 = *(v330 + 8);
        v330 += 8;
        v389 = v306;
        v306(v313, v318);
        v307 = v316;
        sub_1BD0DE19C(v316, v352, &qword_1EBD3AE68);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD3AFE8, &qword_1EBD3AE90);
        sub_1BD0DE4F4(&qword_1EBD3AFF0, &qword_1EBD3AE68);
        v308 = v354;
        sub_1BE04F9A4();
        sub_1BD182F3C(v393, v392, v286, v394, v302, v303);
        sub_1BD0DE53C(v307, &qword_1EBD3AE68);
        v388(v315, v319);
        v259 = v308;
        v389(v317, v318);
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  MEMORY[0x1EEE9AC00](v152, v153);
  *(&v309 - 2) = v394;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B000);
  sub_1BD182F94();
  v161 = v142;
  v162 = v390;
  sub_1BE051A44();
  v163 = v384;
  sub_1BE04F594();
  v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B038) + 36);
  (v387)(v162 + v164, v163, v146);
  v165 = v345;
  v345(v162 + v164, 0, 1, v146);
  v166 = swift_getKeyPath();
  v167 = (v162 + *(v346 + 36));
  v168 = *(v386 + 28);
  v169 = v383;
  v346 = v161;
  v383(v167 + v168, v163, v146);
  v170 = 1;
  v171 = v167 + v168;
  v172 = v165;
  v165(v171, 0, 1, v146);
  *v167 = v166;
  v173 = sub_1BD17278C();
  v174 = v374;
  if (v173 == 1)
  {
    *&v404 = sub_1BE051404();
    v175 = sub_1BE0518D4();
    sub_1BE04F584();
    v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B148) + 36);
    v177 = v323;
    (v387)(&v323[v176], v163, v146);
    v172((v177 + v176), 0, 1, v146);
    *v177 = 5;
    *(v177 + 8) = 1;
    *(v177 + 16) = v175;
    v178 = swift_getKeyPath();
    v179 = (v177 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B150) + 36));
    v180 = v172;
    v181 = *(v386 + 28);
    v169(v179 + v181, v163, v146);
    v180(v179 + v181, 0, 1, v146);
    *v179 = v178;
    v174 = v374;
    v182 = v177 + *(v374 + 36);
    *v182 = xmmword_1BE0BBAE0;
    *(v182 + 16) = xmmword_1BE0BBAE0;
    *(v182 + 32) = 0;
    sub_1BD0DE204(v177, v391, &qword_1EBD3AF00);
    v170 = 0;
  }

  v183 = 1;
  (*(v347 + 56))(v391, v170, 1, v174);
  v184 = *(v394 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v185 = v404;
  v186 = [v404 supportsMoneyMovement];

  v190 = v348;
  v189 = v349;
  if (v186)
  {
    MEMORY[0x1EEE9AC00](v187, v188);
    *(&v309 - 2) = v394;
    sub_1BD179C00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B120);
    sub_1BD0DE4F4(&qword_1EBD3B128, &qword_1EBD3B120);
    sub_1BD183664();
    v191 = v324;
    sub_1BE051A54();
    (*(v190 + 32))(v392, v191, v189);
    v183 = 0;
  }

  (*(v190 + 56))(v392, v183, 1, v189);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v192 = v404;
  v193 = [v404 supportsShowSavingsAccountSummary];

  v197 = v361;
  v196 = v362;
  if (!v193)
  {
    if (*(v394 + 28) == 1)
    {
      MEMORY[0x1EEE9AC00](v194, v195);
      *(&v309 - 2) = v394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B068);
      sub_1BD18328C();
      v214 = v328;
      sub_1BE051A44();
      v215 = 0;
    }

    else
    {
      v215 = 1;
      v214 = v328;
    }

    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B040);
    (*(*(v216 - 8) + 56))(v214, v215, 1, v216);
    v217 = v329;
    sub_1BD0DE204(v214, v329, &qword_1EBD3AEC0);
    sub_1BD0DE19C(v217, v341, &qword_1EBD3AEC0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3B048, &qword_1EBD3AEA8);
    sub_1BD1831DC();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v217, &qword_1EBD3AEC0);
    goto LABEL_23;
  }

  v387 = v184;
  MEMORY[0x1EEE9AC00](v194, v195);
  *(&v309 - 2) = v394;
  v198 = v327;
  (*(v197 + 104))(v327, *MEMORY[0x1E69B80E0], v196);
  result = PKPassKitBundle();
  if (result)
  {
    v200 = result;
    v201 = sub_1BE04B6F4();
    v203 = v202;

    (*(v197 + 8))(v198, v196);
    *&v404 = v201;
    *(&v404 + 1) = v203;
    sub_1BD0DDEBC();
    *&v404 = sub_1BE0506C4();
    *(&v404 + 1) = v204;
    LOBYTE(v405) = v205 & 1;
    *(&v405 + 1) = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0A8);
    sub_1BD0DE4F4(&qword_1EBD3B0B0, &qword_1EBD3B0A8);
    sub_1BE051A54();
    v207 = v394;
    v208 = sub_1BD1761E8(v366);
    MEMORY[0x1EEE9AC00](v208, v209);
    *(&v309 - 2) = v207;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0B8);
    sub_1BD183394();
    v210 = sub_1BE051A44();
    if (*(v207 + 28) == 1)
    {
      MEMORY[0x1EEE9AC00](v210, v211);
      *(&v309 - 2) = v394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B068);
      sub_1BD18328C();
      v212 = v320;
      sub_1BE051A44();
      v213 = 0;
    }

    else
    {
      v213 = 1;
      v212 = v320;
    }

    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B040);
    (*(*(v218 - 8) + 56))(v212, v213, 1, v218);
    v219 = v336;
    v220 = sub_1BD0DE204(v212, v336, &qword_1EBD3AEC0);
    MEMORY[0x1EEE9AC00](v220, v221);
    v222 = v394;
    *(&v309 - 2) = v394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0D8);
    sub_1BD183484();
    v223 = v337;
    v224 = sub_1BE051A44();
    MEMORY[0x1EEE9AC00](v224, v225);
    *(&v309 - 2) = v222;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0F8);
    sub_1BD183574();
    sub_1BE051A44();
    v383 = *(v375 + 16);
    v226 = v332;
    v227 = v333;
    v383(v332, v364, v333);
    sub_1BD0DE19C(v366, v363, &qword_1EBD3AED0);
    v228 = *(v376 + 16);
    v228(v365, v367, v368);
    sub_1BD0DE19C(v219, v334, &qword_1EBD3AEC0);
    v386 = *(v377 + 16);
    (v386)(v335, v223, v369);
    v384 = *(v378 + 16);
    v229 = v321;
    v384(v321, v370, v371);
    v230 = v322;
    v383(v322, v226, v227);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B118);
    sub_1BD0DE19C(v363, v230 + v231[12], &qword_1EBD3AED0);
    v232 = v368;
    v228((v230 + v231[16]), v365, v368);
    v233 = v334;
    sub_1BD0DE19C(v334, v230 + v231[20], &qword_1EBD3AEC0);
    v234 = v335;
    v235 = v369;
    (v386)(v230 + v231[24], v335, v369);
    v236 = v371;
    v384(v230 + v231[28], v229, v371);
    v237 = *(v378 + 8);
    v378 += 8;
    v386 = v237;
    v237(v229, v236);
    v238 = *(v377 + 8);
    v377 += 8;
    v238(v234, v235);
    sub_1BD0DE53C(v233, &qword_1EBD3AEC0);
    v239 = *(v376 + 8);
    v376 += 8;
    v239(v365, v232);
    sub_1BD0DE53C(v363, &qword_1EBD3AED0);
    v240 = *(v375 + 8);
    v375 += 8;
    v241 = v333;
    v240(v332, v333);
    sub_1BD0DE19C(v230, v341, &qword_1EBD3AEA8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3B048, &qword_1EBD3AEA8);
    sub_1BD1831DC();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v230, &qword_1EBD3AEA8);
    (v386)(v370, v371);
    v238(v337, v369);
    sub_1BD0DE53C(v336, &qword_1EBD3AEC0);
    v239(v367, v368);
    sub_1BD0DE53C(v366, &qword_1EBD3AED0);
    v240(v364, v241);
LABEL_23:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v242 = v404;
    v243 = v394;
    v244 = sub_1BD17F4EC(&v404);
    v387 = &v309;
    v401 = v410;
    v402 = v411;
    v403 = v412;
    v397 = v406;
    v398 = v407;
    v399 = v408;
    v400 = v409;
    v395 = v404;
    v396 = v405;
    MEMORY[0x1EEE9AC00](v244, v245);
    *(&v309 - 2) = v242;
    *(&v309 - 1) = v243;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B088);
    v394 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD3B090, &qword_1EBD3B080);
    sub_1BD0DE4F4(&qword_1EBD3B098, &qword_1EBD3B088);
    v246 = v382;
    sub_1BE051A54();

    v247 = v379;
    sub_1BD0DE19C(v390, v379, &qword_1EBD3AF10);
    v248 = v380;
    sub_1BD0DE19C(v391, v380, &qword_1EBD3AF08);
    v249 = v381;
    sub_1BD0DE19C(v392, v381, &qword_1EBD3AEF8);
    v250 = v342;
    sub_1BD0DE19C(v388, v342, &qword_1EBD3AEE0);
    v251 = *(v393 + 16);
    v252 = v343;
    v251(v343, v246, v389);
    v253 = v344;
    sub_1BD0DE19C(v247, v344, &qword_1EBD3AF10);
    v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0A0);
    sub_1BD0DE19C(v248, v253 + v254[12], &qword_1EBD3AF08);
    sub_1BD0DE19C(v249, v253 + v254[16], &qword_1EBD3AEF8);
    sub_1BD0DE19C(v250, v253 + v254[20], &qword_1EBD3AEE0);
    v255 = v253 + v254[24];
    v256 = v389;
    v251(v255, v252, v389);
    v257 = *(v393 + 8);
    v393 += 8;
    v387 = v257;
    (v257)(v252, v256);
    sub_1BD0DE53C(v250, &qword_1EBD3AEE0);
    sub_1BD0DE53C(v381, &qword_1EBD3AEF8);
    sub_1BD0DE53C(v380, &qword_1EBD3AF08);
    sub_1BD0DE53C(v379, &qword_1EBD3AF10);
    sub_1BD0DE19C(v253, v352, &qword_1EBD3AE90);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3AFE8, &qword_1EBD3AE90);
    sub_1BD0DE4F4(&qword_1EBD3AFF0, &qword_1EBD3AE68);
    v258 = v354;
    sub_1BE04F9A4();
    v259 = v258;
    sub_1BD0DE53C(v253, &qword_1EBD3AE90);
    (v387)(v382, v389);
    sub_1BD0DE53C(v388, &qword_1EBD3AEE0);
    sub_1BD0DE53C(v392, &qword_1EBD3AEF8);
    sub_1BD0DE53C(v391, &qword_1EBD3AF08);
    sub_1BD0DE53C(v390, &qword_1EBD3AF10);
LABEL_24:
    v260 = 0;
LABEL_25:
    v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFB0);
    (*(*(v261 - 8) + 56))(v259, v260, 1, v261);
    v263 = v355;
    v262 = v356;
    sub_1BD0DE19C(v355, v356, &qword_1EBD3AF28);
    v264 = v385;
    v265 = v357;
    sub_1BD0DE19C(v385, v357, &qword_1EBD3AF20);
    v266 = v358;
    sub_1BD0DE19C(v259, v358, &qword_1EBD3AF18);
    v267 = v359;
    sub_1BD0DE19C(v262, v359, &qword_1EBD3AF28);
    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFB8);
    sub_1BD0DE19C(v265, v267 + *(v268 + 48), &qword_1EBD3AF20);
    sub_1BD0DE19C(v266, v267 + *(v268 + 64), &qword_1EBD3AF18);
    sub_1BD0DE53C(v259, &qword_1EBD3AF18);
    sub_1BD0DE53C(v264, &qword_1EBD3AF20);
    sub_1BD0DE53C(v263, &qword_1EBD3AF28);
    sub_1BD0DE53C(v266, &qword_1EBD3AF18);
    sub_1BD0DE53C(v265, &qword_1EBD3AF20);
    return sub_1BD0DE53C(v262, &qword_1EBD3AF28);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1BD175D28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3C0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3C8);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3D0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v22 = &v31 - v21;
  if (*(v1 + 232))
  {
    v33 = v4;
    v23 = v7;
    MEMORY[0x1EEE9AC00](v18, v19);
    v34 = a1;
    *(&v31 - 2) = v1;
    v38 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3D8);
    v32 = v3;
    sub_1BD184DBC();
    sub_1BE051A44();
    v39 = *(v1 + 200);
    v40 = *(v1 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516A4();
    v39 = v42;
    v25 = sub_1BD184FBC(&qword_1EBD3B408, &qword_1EBD3B3C0, &unk_1BE0BC518, sub_1BD184DBC);
    v26 = MEMORY[0x1E69E6158];
    sub_1BE051064();

    (*(v35 + 8))(v11, v8);
    sub_1BE04FF44();
    *&v39 = v8;
    *(&v39 + 1) = v26;
    v40 = v25;
    v41 = MEMORY[0x1E69E6180];
    swift_getOpaqueTypeConformance2();
    v27 = v37;
    sub_1BE050D14();
    (*(v33 + 8))(v23, v32);
    (*(v36 + 8))(v15, v27);
    v28 = v34;
    (*(v38 + 32))(v34, v22, v16);
    return (*(v38 + 56))(v28, 0, 1, v16);
  }

  else
  {
    v30 = *(v20 + 56);

    return v30(a1, 1, 1, v16);
  }
}

uint64_t sub_1BD1761E8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B218);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v8 = v16;
  if (!v16)
  {
    goto LABEL_6;
  }

  v9 = [v16 routingNumber];
  if (!v9 || (v9, (v10 = [v8 accountNumber]) == 0))
  {

LABEL_6:
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v3);
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  *(&v15 - 2) = v8;
  *(&v15 - 1) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B220);
  sub_1BD183A2C();
  sub_1BE051A44();

  (*(v4 + 32))(a1, v7, v3);
  v13 = 0;
  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t sub_1BD1763F8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *a1;
  v3 = *(&v14 + 1);
  sub_1BD0DE19C(&v14, &v13, &qword_1EBD3AE38);
  type metadata accessor for AccountModel();
  sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v4 = v3;
  v5 = sub_1BE04E954();
  v7 = v6;
  v8 = sub_1BE04E954();
  v10 = v9;
  result = sub_1BE04E954();
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = result;
  a2[5] = v12;
  return result;
}

double sub_1BD1764F8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 20) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1BD176588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD17661C(unint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  v4 = (a1 >> 38) & 3;
  if (v4 >= 2)
  {
    sub_1BD182A18(&v75);
    v72 = v81;
    v73 = v82;
    v74[0] = *v83;
    *(v74 + 9) = *&v83[9];
    v68 = v77;
    v69 = v78;
    v70 = v79;
    v71 = v80;
    v66 = v75;
    v67 = v76;
    sub_1BD1829A4();
    sub_1BE04F9A4();
LABEL_12:
    v34 = v53;
    a2[6] = v52;
    a2[7] = v34;
    a2[8] = v54[0];
    *(a2 + 137) = *(v54 + 9);
    v35 = v49;
    a2[2] = v48;
    a2[3] = v35;
    v36 = v51;
    a2[4] = v50;
    a2[5] = v36;
    v37 = v47;
    *a2 = v46;
    a2[1] = v37;
    return;
  }

  v5 = [objc_opt_self() sharedService];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 peerPaymentService];

  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = [v7 account];

  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    if (!v8 || (v11 = [v8 associatedPassUniqueID]) == 0)
    {
      v11 = 0;
    }

    v12 = [v10 passWithUniqueID_];

    v13 = [v12 paymentPass];
    v41 = v13;

    v14 = 2;
    if (v4 == 1)
    {
      v14 = 3;
    }

    v45 = v14;
    v84 = *v2;
    v15 = *(&v84 + 1);
    v44 = swift_allocObject();
    memcpy((v44 + 16), v2, 0x178uLL);
    v56 = 0;
    *&v75 = MEMORY[0x1E69E7CC0];
    sub_1BD0DE19C(&v84, &v46, &qword_1EBD3AE38);
    v43 = v8;
    v42 = v13;
    sub_1BD18288C(v2, &v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE40);
    sub_1BE051694();
    v16 = v46;
    *&v75 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE48);
    sub_1BE051694();
    v17 = v46;
    type metadata accessor for AccountModel();
    sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v18 = v15;
    v19 = sub_1BE04E954();
    v39 = v20;
    v40 = v19;
    v21 = v20;
    *&v46 = MEMORY[0x1BFB403C0](0);
    *(&v46 + 1) = v22;
    LODWORD(v47) = v23;
    type metadata accessor for Decimal(0);
    sub_1BE051694();
    v46 = v57;
    v47 = v58;
    type metadata accessor for AccountScheduleTransferModel();
    v24 = v8;
    v38 = v8;
    v25 = swift_allocObject();
    v26 = objc_opt_self();
    v27 = v18;
    v28 = [v26 sharedService];
    v25[5] = 0;
    v25[6] = 0;
    v25[4] = v28;
    swift_beginAccess();
    v29 = v27;
    v25[2] = sub_1BE04E954();
    v25[3] = v30;
    swift_endAccess();
    sub_1BD0DE53C(&v84, &qword_1EBD3AE38);
    v85 = v19;
    v86 = v21;
    v87 = sub_1BD571878;
    v88 = 0;
    LOBYTE(v19) = v56;
    v89 = v56;
    *v90 = *v55;
    *&v90[3] = *&v55[3];
    v91 = v25;
    v92 = v45;
    v93 = v24;
    v94 = v41;
    v95 = sub_1BD182A24;
    v96 = v44;
    v98 = v47;
    v97 = v46;
    v99 = v16;
    v100 = v17;
    sub_1BD572D70();
    v32 = v31;
    v101 = *(&v100 + 1);
    v102[0] = v100;
    v75 = v100;
    *&v66 = v31;
    sub_1BD0DE19C(v102, &v59, &qword_1EBD3AE48);
    sub_1BD0DE19C(&v101, &v59, &qword_1EBD3AE58);
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60);
    sub_1BE0516B4();
    sub_1BD0DE53C(&v84, &qword_1EBD3AE38);

    sub_1BD0DE53C(v102, &qword_1EBD3AE48);
    sub_1BD0DE53C(&v101, &qword_1EBD3AE58);
    *&v59 = v40;
    *(&v59 + 1) = v39;
    v60 = sub_1BD571878;
    v61 = 0;
    LOBYTE(v62) = v19;
    *(&v62 + 1) = *v55;
    DWORD1(v62) = *&v55[3];
    *(&v62 + 1) = v25;
    *&v63 = v45;
    *(&v63 + 1) = v38;
    *&v64 = v41;
    *(&v64 + 1) = sub_1BD182A24;
    *v65 = v44;
    *&v65[24] = v47;
    *&v65[8] = v46;
    *&v65[40] = v16;
    *&v65[56] = v17;
    *&v83[16] = *(&v17 + 1);
    v75 = v59;
    v76 = sub_1BD571878;
    v82 = *&v65[32];
    *v83 = *&v65[48];
    v80 = *v65;
    v81 = *&v65[16];
    v78 = v63;
    v79 = v64;
    v77 = v62;
    sub_1BD182A2C(&v75);
    v52 = v81;
    v53 = v82;
    v54[0] = *v83;
    *(v54 + 9) = *&v83[9];
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v51 = v80;
    v46 = v75;
    v47 = v76;
    sub_1BD182A34(&v59, &v66);
    sub_1BD1829A4();
    sub_1BE04F9A4();

    sub_1BD182A90(&v59);
    v52 = v72;
    v53 = v73;
    v54[0] = v74[0];
    *(v54 + 9) = *(v74 + 9);
    v48 = v68;
    v49 = v69;
    v50 = v70;
    v51 = v71;
    v46 = v66;
    v47 = v67;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

void sub_1BD176D34(uint64_t a1)
{
  type metadata accessor for AccountUserInfoModel();
  sub_1BD184068(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  v2 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account);
  *(v2 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_account) = v7;

  sub_1BD176EB0();
  if (*(a1 + 224))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69B8390]) initWithApp:v4 page:4];
  sub_1BE04BEF4();
  v6 = v5;
  sub_1BE04BEF4();
}

void sub_1BD176EB0()
{
  v1 = sub_1BE051F54();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FC4();
  v33 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v26 - v13;
  if ((*(v0 + 288) & 1) == 0)
  {
    v27 = *(v0 + 280);
    type metadata accessor for SavingsActionSheetObserver(0);
    sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
    v15 = *(sub_1BE04E3C4() + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear);

    if ((v15 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v16 = v34[0];
      v17 = [v34[0] supportsMoneyMovement];

      if (v17)
      {
        if (v27 == 2)
        {
          v18 = v0;
          v19 = 0x100000000;
        }

        else
        {
          if (v27 != 3)
          {
            return;
          }

          v18 = v0;
          v19 = 0x4100000000;
        }

        sub_1BD14BE3C();
        v26 = sub_1BE052D54();
        sub_1BE051FB4();
        sub_1BE051FF4();
        v20 = *(v33 + 8);
        v33 += 8;
        v27 = v20;
        v20(v11, v7);
        v21 = swift_allocObject();
        memcpy((v21 + 16), v18, 0x178uLL);
        *(v21 + 392) = 0;
        *(v21 + 400) = 0;
        *(v21 + 412) = BYTE4(v19);
        *(v21 + 408) = v19;
        aBlock[4] = sub_1BD182A00;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_12;
        v22 = _Block_copy(aBlock);
        sub_1BD18288C(v18, v34);

        sub_1BE051F74();
        v34[0] = MEMORY[0x1E69E7CC0];
        sub_1BD184068(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
        v23 = v29;
        v24 = v32;
        sub_1BE053664();
        v25 = v26;
        MEMORY[0x1BFB3FD90](v14, v6, v23, v22);
        _Block_release(v22);

        (*(v31 + 8))(v23, v24);
        (*(v28 + 8))(v6, v30);
        v27(v14, v7);
      }
    }
  }
}

uint64_t sub_1BD1773D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF70);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = v8 - v2;
  *v3 = sub_1BE04F7B4();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B430);
  sub_1BD177544(&v3[*(v4 + 44)]);
  v8[1] = sub_1BE051404();
  v5 = sub_1BE0518D4();
  *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AF80) + 36)] = v5;
  v6 = &v3[*(v0 + 36)];
  v6[32] = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  sub_1BE052434();
  sub_1BD182D48();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v3, &qword_1EBD3AF70);
}

void sub_1BD177544(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B438);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v50 - v6;
  v50 = sub_1BE04AA64();
  v8 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B440);
  MEMORY[0x1EEE9AC00](v51, v12);
  v14 = (&v50 - v13);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B448);
  MEMORY[0x1EEE9AC00](v52, v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B450);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v53 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v50 - v23;
  v25 = PKPassKitUIBundle();
  if (v25)
  {
    v26 = v25;
    v27 = sub_1BE052404();
    v28 = sub_1BE052404();
    v29 = [v26 URLForResource:v27 withExtension:v28];

    if (v29)
    {
      sub_1BE04A9F4();

      v30 = sub_1BE04A9C4();
      (*(v8 + 8))(v11, v50);
    }

    else
    {
      v30 = 0;
    }

    v31 = PKUIScreenScale();
    v32 = PKUIImageFromPDF(v30, 65.0, 65.0, v31);

    if (v32)
    {
      v33 = sub_1BE051544();
      v34 = v14 + *(v51 + 36);
      v35 = *(sub_1BE04EDE4() + 20);
      v36 = *MEMORY[0x1E697F468];
      v37 = sub_1BE04F684();
      (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
      __asm { FMOV            V0.2D, #8.0 }

      *v34 = _Q0;
      *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
      *v14 = v33;
      sub_1BE051CD4();
      sub_1BE04E5E4();
      sub_1BD0DE204(v14, v17, &qword_1EBD3B440);
      v43 = &v17[*(v52 + 36)];
      v44 = v57;
      *v43 = v56;
      *(v43 + 1) = v44;
      *(v43 + 2) = v58;
      sub_1BD185044();
      sub_1BE050A24();
      sub_1BD0DE53C(v17, &qword_1EBD3B448);
      *v7 = sub_1BE04F504();
      *(v7 + 1) = 0;
      v7[16] = 1;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B470);
      sub_1BD177ABC(&v7[*(v45 + 44)]);
      v46 = v53;
      sub_1BD0DE19C(v24, v53, &qword_1EBD3B450);
      v47 = v55;
      sub_1BD0DE19C(v7, v55, &qword_1EBD3B438);
      v48 = v54;
      sub_1BD0DE19C(v46, v54, &qword_1EBD3B450);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B478);
      sub_1BD0DE19C(v47, v48 + *(v49 + 48), &qword_1EBD3B438);
      sub_1BD0DE53C(v7, &qword_1EBD3B438);
      sub_1BD0DE53C(v24, &qword_1EBD3B450);
      sub_1BD0DE53C(v47, &qword_1EBD3B438);
      sub_1BD0DE53C(v46, &qword_1EBD3B450);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD177ABC@<X0>(void *a1@<X8>)
{
  v50 = a1;
  v48 = sub_1BE04F6E4();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v1);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v9 = MEMORY[0x1EEE9AC00](v44, v8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v47 = &v43 - v16;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80E0], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v4 + 8))(v7, v3);
    v51 = v19;
    v52 = v21;
    sub_1BD0DDEBC();
    v22 = sub_1BE0506C4();
    v24 = v23;
    LOBYTE(v21) = v25;
    sub_1BE050344();
    v26 = sub_1BE0505F4();
    v28 = v27;
    v30 = v29;

    sub_1BD0DDF10(v22, v24, v21 & 1);

    sub_1BE050364();
    v31 = sub_1BE050544();
    v33 = v32;
    LOBYTE(v22) = v34;
    v36 = v35;
    sub_1BD0DDF10(v26, v28, v30 & 1);

    v51 = v31;
    v52 = v33;
    v53 = v22 & 1;
    v54 = v36;
    v37 = v45;
    sub_1BE04F6D4();
    sub_1BE050DA4();
    (*(v46 + 8))(v37, v48);
    sub_1BD0DDF10(v31, v33, v22 & 1);

    sub_1BE052434();
    v38 = v47;
    sub_1BE04EBB4();

    sub_1BD0DE53C(v14, &qword_1EBD452C0);
    v39 = v49;
    sub_1BD0DE19C(v38, v49, &qword_1EBD452C0);
    v40 = v50;
    *v50 = 0;
    *(v40 + 8) = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B480);
    sub_1BD0DE19C(v39, v40 + *(v41 + 48), &qword_1EBD452C0);
    v42 = v40 + *(v41 + 64);
    *v42 = 0;
    v42[8] = 1;
    sub_1BD0DE53C(v38, &qword_1EBD452C0);
    return sub_1BD0DE53C(v39, &qword_1EBD452C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD177F28()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04F504();
  sub_1BD178154(&v19);
  v7 = v19;
  v6 = v20;
  v8 = v21;
  v19 = v5;
  v20 = 0;
  v21 = 1;
  v22 = v7;
  v23 = v6;
  v24 = v8;
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80E0], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v1 + 8))(v4, v0);
    v18[2] = v11;
    v18[3] = v13;
    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    LOBYTE(v11) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3B0);
    sub_1BD0DE4F4(&qword_1EBD3B3B8, &qword_1EBD3B3B0);
    sub_1BE050A14();
    sub_1BD0DDF10(v14, v16, v11 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD178154(uint64_t a1@<X8>)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = PKPassKitUIBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE052404();
    v10 = sub_1BE052404();
    v11 = [v8 URLForResource:v9 withExtension:v10];

    if (v11)
    {
      sub_1BE04A9F4();

      v12 = sub_1BE04A9C4();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v12 = 0;
    }

    v13 = PKUIScreenScale();
    v14 = PKUIImageFromPDF(v12, 58.0, 24.0, v13);

    if (v14)
    {
      *a1 = sub_1BE051544();
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1BD178308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04FAB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3F8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - v12;
  v17[2] = *(a1 + 200);
  v18 = *(a1 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B410);
  sub_1BD0DE4F4(&qword_1EBD3B418, &qword_1EBD3B410);
  sub_1BE0517D4();
  sub_1BE04FAA4();
  sub_1BD0DE4F4(&qword_1EBD3B400, &qword_1EBD3B3F8);
  sub_1BE050924();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  *&v17[0] = sub_1BE051404();
  v14 = sub_1BE0518D4();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3F0) + 36)) = v14;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3D8) + 36);
  *(v15 + 32) = 0;
  result = 0.0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  return result;
}

id sub_1BD178618@<X0>(char *a1@<X8>)
{
  v75 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v78 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v70 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B420);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v74 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v73 = v70 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v70 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v72 = v70 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v70 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v79 = v70 - v29;
  v30 = *MEMORY[0x1E69B80E0];
  v80 = v2;
  v31 = *(v2 + 104);
  v77 = v30;
  v76 = v31;
  v31(v8);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v36 = v35;

    v37 = *(v80 + 8);
    v80 += 8;
    v71 = v37;
    v37(v8, v1);
    v81 = v34;
    v82 = v36;
    v70[1] = sub_1BD0DDEBC();
    v38 = sub_1BE0506C4();
    v40 = v39;
    LOBYTE(v36) = v41;
    v42 = v1;
    v44 = v43;
    v45 = sub_1BE052434();
    *v27 = v38;
    *(v27 + 1) = v40;
    v27[16] = v36 & 1;
    *(v27 + 3) = v44;
    *(v27 + 4) = v45;
    *(v27 + 5) = v46;
    v27[48] = 1;
    v47 = v10[4];
    v47(v79, v27, v9);
    v48 = v42;
    v76(v78, v77, v42);
    result = PKPassKitBundle();
    if (result)
    {
      v49 = result;
      v50 = v78;
      v51 = sub_1BE04B6F4();
      v53 = v52;

      v71(v50, v48);
      v81 = v51;
      v82 = v53;
      v54 = sub_1BE0506C4();
      v56 = v55;
      LOBYTE(v53) = v57;
      v59 = v58;
      v60 = sub_1BE052434();
      *v20 = v54;
      *(v20 + 1) = v56;
      v20[16] = v53 & 1;
      *(v20 + 3) = v59;
      *(v20 + 4) = v60;
      *(v20 + 5) = v61;
      v20[48] = 1;
      v62 = v72;
      v47(v72, v20, v9);
      v63 = v10[2];
      v64 = v73;
      v65 = v79;
      v63(v73, v79, v9);
      v66 = v74;
      v63(v74, v62, v9);
      v67 = v75;
      v63(v75, v64, v9);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B428);
      v63(&v67[*(v68 + 48)], v66, v9);
      v69 = v10[1];
      v69(v62, v9);
      v69(v65, v9);
      v69(v66, v9);
      return (v69)(v64, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD178B2C()
{
  v0 = sub_1BE052404();
  PKSetPassDetailsLastSelectedSegment();
}

double sub_1BD178B6C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v3 = *(&v9 + 1);
  v4 = *(a1 + 28);
  sub_1BD0DE19C(&v9, v10, &qword_1EBD3AE38);
  sub_1BDA6898C(v3, v4, v10);
  sub_1BE051404();
  v5 = sub_1BE0518D4();
  v6 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v6;
  v7 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v5;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  return result;
}

id sub_1BD178C20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v103 = type metadata accessor for MoneyTransferButton();
  v4 = MEMORY[0x1EEE9AC00](v103, v3);
  v107 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v106 = &v92 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v104 = (&v92 - v11);
  MEMORY[0x1EEE9AC00](v10, v12);
  v101 = (&v92 - v13);
  v14 = sub_1BE04BD74();
  v98 = *(v14 - 8);
  v99 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v94 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v92 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B170);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v92 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v93 = &v92 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B178);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v102 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v110 = &v92 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v92 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v92 - v40;
  v100 = a1;
  v42 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v42;
  sub_1BE04D8B4();

  v44 = v128;
  if (v128 && (v45 = [v128 currencyCode], v44, v45))
  {
    v97 = sub_1BE052434();
    v108 = v46;
  }

  else
  {
    v97 = 0;
    v108 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v47 = v128;
  v111 = v41;
  v112 = v38;
  v109 = v22;
  if (v128 && (v48 = [v128 currentBalance], v47, v48))
  {
    v95 = v21;
    v96 = v43;
    v50 = v98;
    v49 = v99;
    (*(v98 + 104))(v20, *MEMORY[0x1E69B80E0], v99);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v52 = result;
    v53 = sub_1BE04B6F4();
    v55 = v54;

    (*(v50 + 8))(v20, v49);
    *&v128 = v53;
    *(&v128 + 1) = v55;
    sub_1BD0DDEBC();
    *&v113 = sub_1BE0506C4();
    *(&v113 + 1) = v56;
    LOBYTE(v114) = v57 & 1;
    *(&v114 + 1) = v58;
    sub_1BD1797F8(v108, v115);
    v121 = v115[2];
    v122 = v115[3];
    v123 = v116;
    v117 = v113;
    v118 = v114;
    v119 = v115[0];
    v120 = v115[1];
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B188);
    sub_1BD0DE4F4(&qword_1EBD3B190, &qword_1EBD3B188);
    v59 = v93;
    sub_1BE050DE4();

    v132 = v121;
    v133 = v122;
    v134 = v123;
    v128 = v117;
    v129 = v118;
    v130 = v119;
    v131 = v120;
    sub_1BD0DE53C(&v128, &qword_1EBD3B188);
    v60 = v111;
    sub_1BD0DE204(v59, v111, &qword_1EBD3B170);
    v61 = *(v109 + 56);
    v21 = v95;
    (v61)(v60, 0, 1, v95);
    v38 = v112;
    v43 = v96;
  }

  else
  {
    v61 = *(v22 + 56);
    (v61)(v41, 1, 1, v21);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v62 = v128;
  if (!v128 || (v63 = [v128 availableBalance], v62, !v63))
  {

    (v61)(v38, 1, 1, v21);
    goto LABEL_15;
  }

  v93 = v61;
  v95 = v21;
  v96 = v43;
  v65 = v98;
  v64 = v99;
  v66 = v94;
  (*(v98 + 104))(v94, *MEMORY[0x1E69B80E0], v99);
  result = PKPassKitBundle();
  if (result)
  {
    v67 = result;
    v68 = sub_1BE04B6F4();
    v70 = v69;

    (*(v65 + 8))(v66, v64);
    *&v128 = v68;
    *(&v128 + 1) = v70;
    sub_1BD0DDEBC();
    *&v124 = sub_1BE0506C4();
    *(&v124 + 1) = v71;
    LOBYTE(v125) = v72 & 1;
    *(&v125 + 1) = v73;
    sub_1BD1797F8(v108, v126);

    v121 = v126[2];
    v122 = v126[3];
    v123 = v127;
    v117 = v124;
    v118 = v125;
    v119 = v126[0];
    v120 = v126[1];
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B188);
    sub_1BD0DE4F4(&qword_1EBD3B190, &qword_1EBD3B188);
    v74 = v92;
    sub_1BE050DE4();

    v132 = v121;
    v133 = v122;
    v134 = v123;
    v128 = v117;
    v129 = v118;
    v130 = v119;
    v131 = v120;
    sub_1BD0DE53C(&v128, &qword_1EBD3B188);
    v75 = v112;
    sub_1BD0DE204(v74, v112, &qword_1EBD3B170);
    (v93)(v75, 0, 1, v95);
LABEL_15:
    v76 = swift_allocObject();
    v77 = v100;
    memcpy((v76 + 16), v100, 0x178uLL);
    v78 = v101;
    *v101 = 256;
    sub_1BD18288C(v77, &v128);
    v109 = type metadata accessor for AccountModel();
    sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v78[1] = sub_1BE04E954();
    v78[2] = v79;
    v78[3] = sub_1BD18374C;
    v78[4] = v76;
    v80 = v103;
    v81 = *(v103 + 32);
    *(v78 + v81) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    v82 = swift_allocObject();
    memcpy((v82 + 16), v77, 0x178uLL);
    v83 = v104;
    *v104 = 257;
    sub_1BD18288C(v77, &v128);
    v83[1] = sub_1BE04E954();
    v83[2] = v84;
    v83[3] = sub_1BD18377C;
    v83[4] = v82;
    v85 = *(v80 + 32);
    *(v83 + v85) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v86 = v110;
    sub_1BD0DE19C(v111, v110, &qword_1EBD3B178);
    v87 = v102;
    sub_1BD0DE19C(v112, v102, &qword_1EBD3B178);
    v88 = v106;
    sub_1BD1837AC(v78, v106);
    v89 = v107;
    sub_1BD1837AC(v83, v107);
    v90 = v105;
    sub_1BD0DE19C(v86, v105, &qword_1EBD3B178);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B180);
    sub_1BD0DE19C(v87, v90 + v91[12], &qword_1EBD3B178);
    sub_1BD1837AC(v88, v90 + v91[16]);
    sub_1BD1837AC(v89, v90 + v91[20]);
    sub_1BD183810(v83);
    sub_1BD183810(v78);
    sub_1BD0DE53C(v112, &qword_1EBD3B178);
    sub_1BD0DE53C(v111, &qword_1EBD3B178);
    sub_1BD183810(v89);
    sub_1BD183810(v88);
    sub_1BD0DE53C(v87, &qword_1EBD3B178);
    return sub_1BD0DE53C(v110, &qword_1EBD3B178);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BD1797F8(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  v4 = PKCurrencyAmountMake();

  if (v4)
  {
    v5 = [v4 formattedStringValue];

    if (v5)
    {
      sub_1BE052434();

      sub_1BD0DDEBC();
      v6 = sub_1BE0506C4();
      v8 = v7;
      v10 = v9;
      sub_1BE051494();
      v11 = sub_1BE050564();
      v13 = v12;
      v15 = v14;
      v17 = v16;

      sub_1BD0DDF10(v6, v8, v10 & 1);

      KeyPath = swift_getKeyPath();
      v19 = swift_getKeyPath();
      *a2 = v11;
      *(a2 + 8) = v13;
      *(a2 + 16) = v15 & 1;
      *(a2 + 24) = v17;
      *(a2 + 32) = KeyPath;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = v19;
      *(a2 + 64) = 0x3FE0000000000000;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD179980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v12 = a1;
  v15 = sub_1BE04D214();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v19 >> 1 <= 0x7EuLL)
  {
    sub_1BE04D1E4();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "Action sheet already set, ignoring", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    return (*(v3 + 8))(v6, v15);
  }

  else
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v12;
    v17 = v13;
    v19 = BYTE4(v14);
    v18 = v14;
    return sub_1BE04D8C4();
  }
}

uint64_t sub_1BD179C00()
{
  v0 = sub_1BE04F7C4();
  v5 = 1;
  sub_1BD179E28(&v15);
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21[0];
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v13[1] = v16;
  v13[0] = v15;
  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v13[5] = v20;
  v14 = v21[0];
  sub_1BD0DE19C(&v6, &v2, &qword_1EBD3B158);
  sub_1BD0DE53C(v13, &qword_1EBD3B158);
  *&v4[55] = v9;
  *&v4[71] = v10;
  *&v4[87] = v11;
  *&v4[103] = v12;
  *&v4[7] = v6;
  *&v4[23] = v7;
  *&v4[39] = v8;
  *&v3[49] = *&v4[48];
  *&v3[65] = *&v4[64];
  *&v3[81] = *&v4[80];
  *&v3[90] = *&v4[89];
  *&v3[1] = *v4;
  *&v3[17] = *&v4[16];
  v2 = v0;
  v3[0] = v5;
  *&v3[33] = *&v4[32];
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B140);
  sub_1BD0DE4F4(&qword_1EBD3B138, &qword_1EBD3B140);
  sub_1BE050DE4();

  v19 = *&v3[48];
  v20 = *&v3[64];
  v21[0] = *&v3[80];
  *(v21 + 10) = *&v3[90];
  v15 = v2;
  v16 = *v3;
  v17 = *&v3[16];
  v18 = *&v3[32];
  return sub_1BD0DE53C(&v15, &qword_1EBD3B140);
}

id sub_1BD179E28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v45 - v9;
  v11 = sub_1BD17278C();
  v12 = *MEMORY[0x1E69B80E0];
  v13 = *(v3 + 104);
  if (v11)
  {
    v13(v7, v12, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v18 = v17;

      (*(v3 + 8))(v7, v2);
      *&v60 = v16;
      *(&v60 + 1) = v18;
      sub_1BD0DDEBC();
      v19 = sub_1BE0506C4();
      v59 = v20 & 1;
      v52 = 1;
      *&v45 = v19;
      *(&v45 + 1) = v21;
      LOBYTE(v46) = v20 & 1;
      *(&v46 + 1) = v58[0];
      DWORD1(v46) = *(v58 + 3);
      *(&v46 + 1) = v22;
      v49 = v55;
      v50 = v56;
      LOBYTE(v51) = v57;
      v47 = v53;
      v48 = v54;
      HIBYTE(v51) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B160);
      sub_1BD0DE4F4(&qword_1EBD3B168, &qword_1EBD3B160);
      result = sub_1BE04F9A4();
LABEL_6:
      v42 = v65;
      *(a1 + 64) = v64;
      *(a1 + 80) = v42;
      *(a1 + 96) = v66;
      v43 = v61;
      *a1 = v60;
      *(a1 + 16) = v43;
      v44 = v63;
      *(a1 + 32) = v62;
      *(a1 + 48) = v44;
      return result;
    }

    __break(1u);
  }

  else
  {
    v13(v10, v12, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      (*(v3 + 8))(v10, v2);
      *&v60 = v24;
      *(&v60 + 1) = v26;
      sub_1BD0DDEBC();
      v27 = sub_1BE0506C4();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      LOBYTE(v26) = sub_1BE0501E4();
      sub_1BE04E1F4();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      LOBYTE(v60) = 0;
      v31 &= 1u;
      LOBYTE(v58[0]) = v31;
      sub_1BD0D7F18(v27, v29, v31);
      sub_1BE048C84();
      sub_1BD0D7F18(v27, v29, v31);
      sub_1BE048C84();
      sub_1BD0DDF10(v27, v29, v31);

      LOBYTE(v53) = 0;
      *&v60 = v27;
      *(&v60 + 1) = v29;
      LOBYTE(v61) = v31;
      *(&v61 + 1) = v33;
      LOWORD(v62) = 256;
      *(&v62 + 1) = 5;
      LOWORD(v63) = 0;
      BYTE8(v63) = v26;
      *&v64 = v35;
      *(&v64 + 1) = v37;
      *&v65 = v39;
      *(&v65 + 1) = v41;
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B160);
      sub_1BD0DE4F4(&qword_1EBD3B168, &qword_1EBD3B160);
      sub_1BE04F9A4();
      sub_1BD0DDF10(v27, v29, v31);

      v64 = v49;
      v65 = v50;
      v66 = v51;
      v60 = v45;
      v61 = v46;
      v62 = v47;
      v63 = v48;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD17A2A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2F0);
  v116 = *(v12 - 8);
  v117 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v113 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v112 = v99 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v109 = v99 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2F8);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v111 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v99 - v26;
  v28 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = v28;
  sub_1BE04D8B4();

  v29 = v119;
  if (v119 && (v30 = [v119 currencyCode], v29, v30))
  {
    sub_1BE052434();
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = v119;
  v115 = v27;
  if (!v119 || (v34 = [v119 interestYTD], v33, (v110 = v34) == 0))
  {

    (v116)[7](v27, 1, 1, v117);
    (*(v4 + 104))(v8, *MEMORY[0x1E69B80E0], v3);
LABEL_15:
    v67 = PKPassKitBundle();
    if (v67)
    {
      v68 = v67;
      v69 = sub_1BE04B6F4();
      v71 = v70;

      (*(v4 + 8))(v8, v3);
      v119 = v69;
      v120 = v71;
      sub_1BD0DDEBC();
      v72 = sub_1BE0506C4();
      v74 = v73;
      LODWORD(v109) = v75;
      v110 = v76;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v77 = v119;
      v116 = v72;
      v117 = v74;
      if (v119)
      {
        v78 = [v119 formattedAPY];

        if (v78)
        {
          v77 = sub_1BE052434();
          v80 = v79;

LABEL_21:
          v119 = v77;
          v120 = v80;
          v81 = sub_1BE0506C4();
          v83 = v82;
          v85 = v84;
          sub_1BE051494();
          v86 = sub_1BE050564();
          v118 = v86;
          v88 = v87;
          v90 = v89;
          v92 = v91;

          sub_1BD0DDF10(v81, v83, v85 & 1);

          LOBYTE(v83) = v109 & 1;
          v132 = v109 & 1;
          v130 = v90 & 1;
          v119 = v116;
          v120 = v117;
          v121 = v109 & 1;
          *v122 = *v131;
          *&v122[3] = *&v131[3];
          v123 = v110;
          v124 = v86;
          v125 = v88;
          v126 = v90 & 1;
          *v127 = *v129;
          *&v127[3] = *&v129[3];
          v128 = v92;
          sub_1BE052434();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B300);
          sub_1BD0DE4F4(&qword_1EBD3B308, &qword_1EBD3B300);
          v93 = v112;
          sub_1BE050DE4();

          sub_1BD0DDF10(v116, v117, v83);

          sub_1BD0DDF10(v118, v88, v90 & 1);

          v94 = v115;
          v95 = v111;
          sub_1BD0DE19C(v115, v111, &qword_1EBD3B2F8);
          v96 = v113;
          sub_1BD0DE19C(v93, v113, &qword_1EBD3B2F0);
          v97 = v114;
          sub_1BD0DE19C(v95, v114, &qword_1EBD3B2F8);
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B310);
          sub_1BD0DE19C(v96, v97 + *(v98 + 48), &qword_1EBD3B2F0);
          sub_1BD0DE53C(v93, &qword_1EBD3B2F0);
          sub_1BD0DE53C(v94, &qword_1EBD3B2F8);
          sub_1BD0DE53C(v96, &qword_1EBD3B2F0);
          sub_1BD0DE53C(v95, &qword_1EBD3B2F8);
          return;
        }

        v77 = 0;
      }

      v80 = 0xE000000000000000;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_23;
  }

  v105 = v8;
  v35 = *(v4 + 104);
  v104 = *MEMORY[0x1E69B80E0];
  v103 = v35;
  v35(v11);
  v36 = PKPassKitBundle();
  if (!v36)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = v36;
  v38 = sub_1BE04B6F4();
  v40 = v39;

  (*(v4 + 8))(v11, v3);
  v119 = v38;
  v120 = v40;
  sub_1BD0DDEBC();
  v41 = sub_1BE0506C4();
  v43 = v42;
  v102 = v44;
  v46 = v45;
  if (v32)
  {
    v47 = sub_1BE052404();
  }

  else
  {
    v47 = 0;
  }

  v48 = PKCurrencyAmountMake();

  if (!v48)
  {
    goto LABEL_24;
  }

  v99[1] = v32;
  v106 = v43;
  v107 = v41;
  v108 = v46;
  v100 = v4;
  v101 = v3;
  v49 = [v48 formattedStringValue];

  if (v49)
  {
    v50 = sub_1BE052434();
    v52 = v51;

    v119 = v50;
    v120 = v52;
    v53 = sub_1BE0506C4();
    v55 = v54;
    v57 = v56;
    sub_1BE051494();
    v58 = sub_1BE050564();
    v99[0] = v58;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    sub_1BD0DDF10(v53, v55, v57 & 1);

    LOBYTE(v55) = v102 & 1;
    v132 = v102 & 1;
    LOBYTE(v53) = v62 & 1;
    v130 = v62 & 1;
    v119 = v107;
    v120 = v106;
    v121 = v102 & 1;
    *v122 = *v131;
    *&v122[3] = *&v131[3];
    v123 = v108;
    v124 = v58;
    v125 = v60;
    v126 = v62 & 1;
    *v127 = *v129;
    *&v127[3] = *&v129[3];
    v128 = v64;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B300);
    sub_1BD0DE4F4(&qword_1EBD3B308, &qword_1EBD3B300);
    v65 = v109;
    sub_1BE050DE4();

    sub_1BD0DDF10(v107, v106, v55);

    sub_1BD0DDF10(v99[0], v60, v53);

    v66 = v115;
    sub_1BD0DE204(v65, v115, &qword_1EBD3B2F0);
    v116[7](v66, 0, 1, v117);
    v3 = v101;
    v4 = v100;
    v8 = v105;
    v103(v105, v104, v101);
    goto LABEL_15;
  }

LABEL_25:
  __break(1u);
}

id sub_1BD17AD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v77 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0B8);
  MEMORY[0x1EEE9AC00](v95, v10);
  v12 = v77 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B288);
  MEMORY[0x1EEE9AC00](v93, v13);
  v94 = v77 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v16 = MEMORY[0x1EEE9AC00](v88, v15);
  v87 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v86 = v77 - v19;
  v20 = sub_1BE04BD74();
  v89 = *(v20 - 8);
  v90 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B260);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v77 - v26;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B240);
  MEMORY[0x1EEE9AC00](v82, v28);
  v92 = v77 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B290);
  v84 = *(v30 - 8);
  v85 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v91 = v77 - v32;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B238);
  v34 = MEMORY[0x1EEE9AC00](a1, v33);
  v83 = v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v39 = v77 - v38;
  if (v37 && [v37 fccStepUpRequired] && (v99 = *(a2 + 328), v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350), v80 = v39, v81 = v40, sub_1BE0516A4(), (v101 & 1) == 0))
  {
    v43 = swift_allocObject();
    v44 = memcpy((v43 + 16), a2, 0x178uLL);
    v79 = v77;
    MEMORY[0x1EEE9AC00](v44, v45);
    sub_1BD18288C(a2, &v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B298);
    sub_1BD0DE4F4(&qword_1EBD3B2A0, &qword_1EBD3B298);
    sub_1BE051704();
    v101 = *(a2 + 312);
    v99 = *(a2 + 312);
    sub_1BE0516A4();
    v46 = v98;
    KeyPath = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v49 = &v27[*(v24 + 36)];
    *v49 = KeyPath;
    v49[1] = sub_1BD10DF54;
    v49[2] = v48;
    sub_1BE052434();
    sub_1BD183C58();
    sub_1BE050DE4();

    sub_1BD0DE53C(v27, &qword_1EBD3B260);
    v51 = v89;
    v50 = v90;
    (*(v89 + 104))(v23, *MEMORY[0x1E69B80E0], v90);
    result = PKPassKitBundle();
    if (result)
    {
      v52 = result;
      v53 = sub_1BE04B6F4();
      v55 = v54;

      (*(v51 + 8))(v23, v50);
      *&v99 = v53;
      *(&v99 + 1) = v55;
      sub_1BD0DDEBC();
      v89 = sub_1BE0506C4();
      v57 = v56;
      v59 = v58;
      v79 = v60;
      v98 = *(a2 + 296);
      v61 = sub_1BE0516C4();
      v78 = v77;
      v77[1] = v100;
      MEMORY[0x1EEE9AC00](v61, v62);
      v90 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B248);
      sub_1BD182C94(&qword_1EBD3B250, &qword_1EBD3B240, &unk_1BE0BC358, sub_1BD183C58);
      sub_1BD0DE4F4(&qword_1EBD3B278, &qword_1EBD3B248);
      v63 = v92;
      v64 = v89;
      sub_1BE050F24();

      sub_1BD0DDF10(v64, v57, v59 & 1);

      sub_1BD0DE53C(v63, &qword_1EBD3B240);
      v65 = v90;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v66 = v99;
      v98 = v101;
      sub_1BE0516C4();
      v67 = v99;
      v68 = v100;
      v69 = swift_allocObject();
      memcpy((v69 + 16), v65, 0x178uLL);
      v70 = v83;
      v71 = &v83[*(v97 + 36)];
      *v71 = v66;
      *(v71 + 8) = v67;
      v71[24] = v68;
      *(v71 + 4) = sub_1BD183D94;
      *(v71 + 5) = v69;
      v72 = type metadata accessor for SavingsFCCStepUpPresenter();
      v73 = type metadata accessor for FeatureError(0);
      v74 = v86;
      (*(*(v73 - 8) + 56))(v86, 1, 1, v73);
      sub_1BD0DE19C(v74, v87, &qword_1EBD416C0);
      sub_1BD18288C(v65, &v99);
      sub_1BE051694();
      sub_1BD0DE53C(v74, &qword_1EBD416C0);
      v75 = &v71[*(v72 + 32)];
      *v75 = sub_1BD3633F4;
      *(v75 + 1) = 0;
      v75[16] = 0;
      (*(v84 + 32))(v70, v91, v85);
      v76 = v80;
      sub_1BD0515D8(v70, v80);
      sub_1BD0DE19C(v76, v94, &qword_1EBD3B238);
      swift_storeEnumTagMultiPayload();
      sub_1BD183AB8();
      sub_1BD183394();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v76, &qword_1EBD3B238);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v41 = swift_allocObject();
    memcpy((v41 + 16), a2, 0x178uLL);
    sub_1BD18288C(a2, &v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1F8);
    sub_1BD0DE4F4(&qword_1EBD3B200, &qword_1EBD3B1F8);
    sub_1BE051704();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3B0C8, &qword_1EBD3B0D0);
    sub_1BE050DE4();

    (*(v6 + 8))(v9, v5);
    sub_1BD0DE19C(v12, v94, &qword_1EBD3B0B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD183AB8();
    sub_1BD183394();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v12, &qword_1EBD3B0B8);
  }

  return result;
}

uint64_t sub_1BD17B9D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if ((v1 & 1) == 0)
  {
    return sub_1BE0516B4();
  }

  return result;
}

id sub_1BD17BA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2C0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35[-v8];
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v14, *MEMORY[0x1E69B80E0], v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v11 + 8))(v14, v10);
    v39 = v17;
    v40 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    v24 = v23;
    sub_1BE051464();
    v25 = sub_1BE050564();
    v27 = v26;
    v36 = v28;
    v30 = v29;

    sub_1BD0DDF10(v20, v22, v24 & 1);

    *v9 = sub_1BE051CD4();
    v9[1] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2C8);
    sub_1BD17BD84(v37, v9 + *(v32 + 44));
    v33 = v38;
    sub_1BD0DE19C(v9, v38, &qword_1EBD3B2C0);
    *a2 = v25;
    *(a2 + 8) = v27;
    LOBYTE(v20) = v36 & 1;
    *(a2 + 16) = v36 & 1;
    *(a2 + 24) = v30;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D0);
    sub_1BD0DE19C(v33, a2 + *(v34 + 64), &qword_1EBD3B2C0);
    sub_1BD0D7F18(v25, v27, v20);
    sub_1BE048C84();
    sub_1BD0DE53C(v9, &qword_1EBD3B2C0);
    sub_1BD0DE53C(v33, &qword_1EBD3B2C0);
    sub_1BD0DDF10(v25, v27, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD17BD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = sub_1BE04C744();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2D8);
  v8 = v7 - 8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0);
  v17 = v16 - 8;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v28 - v23;
  sub_1BE04E4F4();
  v32 = *(a1 + 312);
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v24[*(v17 + 44)] = (v31 & 1) == 0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69BC950], v29);
  sub_1BE04C724();
  v32 = v33;
  sub_1BE0516A4();
  v15[*(v8 + 44)] = v31;
  sub_1BD0DE19C(v24, v21, &qword_1EBD3B2E0);
  sub_1BD0DE19C(v15, v12, &qword_1EBD3B2D8);
  v25 = v30;
  sub_1BD0DE19C(v21, v30, &qword_1EBD3B2E0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E8);
  sub_1BD0DE19C(v12, v25 + *(v26 + 48), &qword_1EBD3B2D8);
  sub_1BD0DE53C(v15, &qword_1EBD3B2D8);
  sub_1BD0DE53C(v24, &qword_1EBD3B2E0);
  sub_1BD0DE53C(v12, &qword_1EBD3B2D8);
  return sub_1BD0DE53C(v21, &qword_1EBD3B2E0);
}

uint64_t sub_1BD17C09C@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v42 - v5;
  v48 = sub_1BE04ED14();
  v6 = *(v48 - 1);
  MEMORY[0x1EEE9AC00](v48, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v47 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v42 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2A8);
  v52 = *(v49 - 8);
  v18 = MEMORY[0x1EEE9AC00](v49, v17);
  v53 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v42 - v21;
  v23 = swift_allocObject();
  memcpy((v23 + 16), a1, 0x178uLL);
  sub_1BD18288C(a1, v54);
  sub_1BE051704();
  sub_1BE04ED04();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v24 = v22;
  v44 = v22;
  sub_1BE050BA4();
  (*(v6 + 8))(v9, v48);
  v25 = v47;
  v26 = *(v47 + 8);
  v45 = v47 + 8;
  v48 = v26;
  v27 = v16;
  v26(v16, v10);
  v28 = v46;
  sub_1BE04E1B4();
  v29 = sub_1BE04E1D4();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = swift_allocObject();
  memcpy((v30 + 16), a1, 0x178uLL);
  sub_1BD18288C(a1, v54);
  v43 = v16;
  sub_1BE0516F4();
  v31 = v53;
  v32 = *(v52 + 16);
  v33 = v49;
  v32(v53, v24, v49);
  v34 = *(v25 + 16);
  v35 = v50;
  v34(v50, v27, v10);
  v36 = v51;
  v32(v51, v31, v33);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2B0);
  v38 = v35;
  v34(&v36[*(v37 + 48)], v35, v10);
  v39 = v48;
  v48(v43, v10);
  v40 = *(v52 + 8);
  v40(v44, v33);
  v39(v38, v10);
  return (v40)(v53, v33);
}

uint64_t sub_1BD17C5E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  return sub_1BE0516B4();
}

id sub_1BD17C6A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD17C804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD17C970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v11 - v4;
  v11[0] = *(a1 + 328);
  v12 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v6 = sub_1BE0528D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1BE0528A4();
  sub_1BD18288C(a1, v11);
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  memcpy(v8 + 4, a1, 0x178uLL);
  sub_1BD122C00(0, 0, v5, &unk_1BE0BC3E0, v8);
}

uint64_t sub_1BD17CAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD17CB88, v6, v5);
}

uint64_t sub_1BD17CB88()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 104) = *(v1 + 64);
  *(v0 + 145) = *(v1 + 72);
  *(v0 + 112) = type metadata accessor for DeviceAuthenticationModel();
  *(v0 + 120) = sub_1BD184068(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  *(v0 + 128) = sub_1BE04E3C4();
  v3 = *(v1 + 96);
  v2 = *(v1 + 112);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1BD17CCC4;

  return sub_1BDA809C4(v0 + 16, 1);
}

uint64_t sub_1BD17CCC4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD185A70, v3, v2);
}

uint64_t sub_1BD17CE08(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = sub_1BE0528D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1BE0528A4();
  sub_1BD18288C(a1, &v12);
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  memcpy(v8 + 4, a1, 0x178uLL);
  sub_1BD122C00(0, 0, v5, &unk_1BE0BC480, v8);
}

uint64_t sub_1BD17CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1BE0528A4();
  v4[9] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD17CFE8, v6, v5);
}

uint64_t sub_1BD17CFE8()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 104) = *(v1 + 64);
  *(v0 + 145) = *(v1 + 72);
  *(v0 + 112) = type metadata accessor for DeviceAuthenticationModel();
  *(v0 + 120) = sub_1BD184068(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  *(v0 + 128) = sub_1BE04E3C4();
  v3 = *(v1 + 96);
  v2 = *(v1 + 112);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1BD17D124;

  return sub_1BDA809C4(v0 + 16, 1);
}

uint64_t sub_1BD17D124()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD17D268, v3, v2);
}

uint64_t sub_1BD17D268()
{

  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (*(v0 + 144) == 1)
  {
    v1 = *(*(v0 + 64) + 264);
    if (v1)
    {
      v1(10);
    }
  }

  sub_1BE04E3C4();
  sub_1BDA81064();

  v2 = *(v0 + 8);

  return v2();
}

id sub_1BD17D3AC@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = sub_1BE04C744();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04C734();
  v48 = *(v4 - 8);
  v49 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v46 = &v41 - v9;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69B80E0], v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v11 + 8))(v14, v10);
    v52 = v17;
    v53 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    v24 = v23;
    sub_1BE051464();
    v25 = sub_1BE050564();
    v41 = v26;
    v28 = v27;
    v50 = v29;

    sub_1BD0DDF10(v20, v22, v24 & 1);

    (*(v44 + 104))(v43, *MEMORY[0x1E69BC950], v45);
    v30 = v46;
    sub_1BE04C724();
    LOBYTE(v52) = v28 & 1;
    v51 = 1;
    v32 = v47;
    v31 = v48;
    v33 = *(v48 + 16);
    v34 = v49;
    v33(v47, v30, v49);
    v35 = v52;
    v36 = v41;
    v37 = v42;
    *v42 = v25;
    v37[1] = v36;
    *(v37 + 16) = v35;
    v38 = v51;
    v37[3] = v50;
    v37[4] = 0;
    *(v37 + 40) = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B210);
    v33(v37 + *(v39 + 64), v32, v34);
    sub_1BD0D7F18(v25, v36, v35);
    v40 = *(v31 + 8);
    sub_1BE048C84();
    v40(v30, v34);
    v40(v32, v34);
    sub_1BD0DDF10(v25, v36, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD17D7A0(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9[-v5];
  v7 = swift_allocObject();
  memcpy((v7 + 16), a1, 0x178uLL);
  sub_1BD18288C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1F8);
  sub_1BD0DE4F4(&qword_1EBD3B200, &qword_1EBD3B1F8);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3B0C8, &qword_1EBD3B0D0);
  sub_1BE050DE4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD17D9C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B208);
  return a1();
}

id sub_1BD17DA20@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = sub_1BE04C744();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04C734();
  v48 = *(v4 - 8);
  v49 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v46 = &v41 - v9;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69B80E0], v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v11 + 8))(v14, v10);
    v52 = v17;
    v53 = v19;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    v24 = v23;
    sub_1BE051464();
    v25 = sub_1BE050564();
    v41 = v26;
    v28 = v27;
    v50 = v29;

    sub_1BD0DDF10(v20, v22, v24 & 1);

    (*(v44 + 104))(v43, *MEMORY[0x1E69BC950], v45);
    v30 = v46;
    sub_1BE04C724();
    LOBYTE(v52) = v28 & 1;
    v51 = 1;
    v32 = v47;
    v31 = v48;
    v33 = *(v48 + 16);
    v34 = v49;
    v33(v47, v30, v49);
    v35 = v52;
    v36 = v41;
    v37 = v42;
    *v42 = v25;
    v37[1] = v36;
    *(v37 + 16) = v35;
    v38 = v51;
    v37[3] = v50;
    v37[4] = 0;
    *(v37 + 40) = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B210);
    v33(v37 + *(v39 + 64), v32, v34);
    sub_1BD0D7F18(v25, v36, v35);
    v40 = *(v31 + 8);
    sub_1BE048C84();
    v40(v30, v34);
    v40(v32, v34);
    sub_1BD0DDF10(v25, v36, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD17DE14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v4 = MEMORY[0x1EEE9AC00](v39, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - v8;
  v43 = type metadata accessor for AccountInformationView();
  MEMORY[0x1EEE9AC00](v43, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B0F0);
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v40 = &v38 - v20;
  (*(v14 + 104))(v17, *MEMORY[0x1E69B80E0], v13);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v25 = v24;

    (*(v14 + 8))(v17, v13);
    v48 = v23;
    v49 = v25;
    v50 = *a1;
    v26 = *(&v50 + 1);
    type metadata accessor for AccountUserInfoModel();
    sub_1BD184068(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
    v38 = v26;
    sub_1BE04E3C4();
    v45 = 0;
    sub_1BE051694();
    v27 = v47;
    v12[32] = v46;
    *(v12 + 5) = v27;
    v28 = v43;
    v29 = type metadata accessor for FeatureError(0);
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    sub_1BD0DE19C(v9, v6, &qword_1EBD416C0);
    sub_1BE051694();
    sub_1BD0DE53C(v9, &qword_1EBD416C0);
    v30 = *(v28 + 32);
    *&v12[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AccountModel();
    sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v31 = v38;
    *v12 = sub_1BE04E954();
    *(v12 + 1) = v32;
    v33 = sub_1BE04E954();
    v35 = v34;
    sub_1BD0DE53C(&v50, &qword_1EBD3AE38);
    *(v12 + 2) = v33;
    *(v12 + 3) = v35;
    sub_1BD184068(&qword_1EBD3B1F0, type metadata accessor for AccountInformationView);
    sub_1BD0DDEBC();
    v36 = v40;
    sub_1BE04E8C4();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3B0E8, &qword_1EBD3B0F0);
    v37 = v42;
    sub_1BE050DE4();

    return (*(v41 + 8))(v36, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD17E38C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v95 = a1;
  v87 = sub_1BE051AD4();
  v2 = *(v87 - 8);
  v4 = MEMORY[0x1EEE9AC00](v87, v3);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v85 = &v75 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v9 = MEMORY[0x1EEE9AC00](v84, v8);
  v83 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for SavingsBeneficiaryView(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B198);
  v19 = MEMORY[0x1EEE9AC00](v93, v18);
  v88 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v90 = &v75 - v22;
  v23 = sub_1BE04BD74();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B110);
  v91 = *(v28 - 8);
  v92 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v89 = &v75 - v30;
  (*(v24 + 104))(v27, *MEMORY[0x1E69B80E0], v23);
  v31 = PKPassKitBundle();
  if (v31)
  {
    v32 = v31;
    v33 = sub_1BE04B6F4();
    v35 = v34;

    (*(v24 + 8))(v27, v23);
    v100 = v33;
    v101 = v35;
    v102 = *v95;
    v36 = *(&v102 + 1);
    v78 = type metadata accessor for AccountUserInfoModel();
    v77 = sub_1BD184068(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
    v76 = v36;
    v37 = sub_1BE04E3C4();
    v38 = type metadata accessor for ObservableHostingController();
    v39 = sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
    v82 = v38;
    v81 = v39;
    *v17 = sub_1BE04EEC4();
    v17[1] = v40;
    v41 = v14[7];
    *(v17 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
    swift_storeEnumTagMultiPayload();
    v75 = type metadata accessor for FeatureError(0);
    v42 = *(v75 - 8);
    v79 = *(v42 + 56);
    v80 = v42 + 56;
    v79(v13, 1, 1, v75);
    sub_1BD0DE19C(v13, v83, &qword_1EBD416C0);
    sub_1BE051694();
    sub_1BD0DE53C(v13, &qword_1EBD416C0);
    v43 = v17 + v14[9];
    LOBYTE(v96) = 0;
    sub_1BE051694();
    v44 = v99;
    *v43 = v98;
    *(v43 + 1) = v44;
    v45 = v85;
    v46 = v87;
    (*(v2 + 104))(v85, *MEMORY[0x1E697D710], v87);
    (*(v2 + 16))(v86, v45, v46);
    sub_1BE051694();
    (*(v2 + 8))(v45, v46);
    v47 = (v17 + v14[12]);
    type metadata accessor for DeviceAuthenticationModel();
    v48 = swift_allocObject();
    *(v48 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    LOBYTE(v96) = 0;
    sub_1BE04D874();
    swift_endAccess();
    v49 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
    *(v48 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v49;
    sub_1BD184068(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
    *v47 = sub_1BE04E954();
    v47[1] = v50;
    v51 = v17 + v14[13];
    LOBYTE(v96) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1B8);
    sub_1BE051694();
    type metadata accessor for AccountModel();
    sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel);
    v52 = v76;
    v17[2] = sub_1BE04E954();
    v17[3] = v53;
    sub_1BE048964();
    v17[4] = sub_1BE04E954();
    v17[5] = v54;
    LOBYTE(v96) = 1;
    sub_1BE051694();

    v55 = v99;
    *v51 = v98;
    *(v51 + 1) = v55;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v56 = v98;
    v57 = type metadata accessor for AddBeneficiaryModel();
    v58 = objc_allocWithZone(v57);
    v59 = &v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission];
    *v59 = 0;
    v59[1] = 0;
    v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading] = 0;
    v60 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
    v61 = v75;
    v62 = v79;
    v79(&v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error], 1, 1, v75);
    v62(&v58[v60], 1, 1, v61);
    sub_1BE04B5C4();
    *&v58[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account] = v56;
    v97.receiver = v58;
    v97.super_class = v57;
    v63 = objc_msgSendSuper2(&v97, sel_init);
    v64 = (v17 + v14[10]);
    *v64 = v63;
    v64[1] = 0;
    v98 = v63;
    v99 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
    sub_1BE0516A4();
    v65 = v96;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v67);
    *(&v75 - 4) = v65;
    *(&v75 - 3) = sub_1BD18386C;
    *(&v75 - 2) = v37;
    v98 = v65;
    sub_1BD184068(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
    sub_1BE048964();
    sub_1BE04B584();

    sub_1BD0DE53C(&v102, &qword_1EBD3AE38);

    v68 = *(v95 + 5);
    if (v68)
    {
      sub_1BE048964();
      v69 = sub_1BE04D804();
      v70 = v88;
      sub_1BD183894(v17, v88);
      v71 = (v70 + *(v93 + 36));
      *v71 = v69;
      v71[1] = v68;
      sub_1BD0DE204(v70, v90, &qword_1EBD3B198);
      sub_1BD1838F8();
      sub_1BD0DDEBC();
      v72 = v89;
      sub_1BE04E8C4();
      sub_1BE052434();
      sub_1BD0DE4F4(&qword_1EBD3B108, &qword_1EBD3B110);
      v73 = v92;
      sub_1BE050DE4();

      return (*(v91 + 8))(v72, v73);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD17EF40@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v2 = MEMORY[0x1EEE9AC00](v29, v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v24 - v6;
  v27 = type metadata accessor for DocumentsView();
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B078);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v28 = v24 - v14;
  v26 = type metadata accessor for SavingsStatementsModel(0);
  sub_1BD184068(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
  v25 = sub_1BE04E3C4();
  type metadata accessor for TaxFormsModel(0);
  sub_1BD184068(&qword_1EBD3B320, type metadata accessor for TaxFormsModel);
  v24[1] = sub_1BE04E3C4();
  *(v10 + 4) = sub_1BD172644;
  *(v10 + 5) = 0;
  v10[48] = 0;
  v15 = type metadata accessor for FeatureError(0);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1BD0DE19C(v7, v4, &qword_1EBD416C0);
  sub_1BE051694();
  sub_1BD0DE53C(v7, &qword_1EBD416C0);
  v16 = v25;
  *v10 = sub_1BE04E954();
  *(v10 + 1) = v17;
  v18 = sub_1BE04E954();
  v20 = v19;

  *(v10 + 2) = v18;
  *(v10 + 3) = v20;
  sub_1BD184068(&qword_1EBD3B328, type metadata accessor for DocumentsView);
  v21 = v28;
  sub_1BE04E8B4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3B070, &qword_1EBD3B078);
  v22 = v30;
  sub_1BE050DE4();

  return (*(v31 + 8))(v21, v22);
}

id sub_1BD17F380@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD17F4EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04C124();
  v5 = v4;
  sub_1BE04C124();
  sub_1BE04C124();
  v53[0] = MEMORY[0x1E69E7CC0];
  if (*(v1 + 40))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v27 = v3;
      v8 = v5;
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v10 = objc_allocWithZone(PKTextRangeHyperlink);
      v11 = v7;
      v12 = sub_1BE052404();

      *&v47 = sub_1BD184354;
      *(&v47 + 1) = v9;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v46 = sub_1BD126964;
      *(&v46 + 1) = &block_descriptor_137;
      v13 = _Block_copy(&aBlock);

      v14 = [v10 initWithLinkText:v12 action:v13];
      _Block_release(v13);

      if (v14)
      {
        v15 = v14;
        MEMORY[0x1BFB3F7A0]();
        if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
      }

      v5 = v8;
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      v17 = objc_allocWithZone(PKTextRangeHyperlink);
      v18 = v11;
      v19 = sub_1BE052404();

      *&v47 = sub_1BD18435C;
      *(&v47 + 1) = v16;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v46 = sub_1BD126964;
      *(&v46 + 1) = &block_descriptor_143;
      v20 = _Block_copy(&aBlock);

      v21 = [v17 initWithLinkText:v19 action:v20];
      _Block_release(v20);

      if (v21)
      {
        v22 = v21;
        MEMORY[0x1BFB3F7A0]();
        v3 = v27;
        if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
      }

      else
      {

        v3 = v27;
      }
    }

    else
    {
    }

    *a1 = sub_1BE04F7C4();
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = 0;
    sub_1BD180E54(v53, v3, v5, &v29);
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    aBlock = v29;
    v46 = v30;
    v47 = v31;
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v51 = v35;
    v52 = v36;
    sub_1BD0DE19C(&v37, v28, &qword_1EBD3B3A8);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3B3A8);

    v24 = v42;
    *(a1 + 88) = v41;
    *(a1 + 104) = v24;
    *(a1 + 120) = v43;
    v25 = v38;
    *(a1 + 24) = v37;
    *(a1 + 40) = v25;
    v26 = v40;
    *(a1 + 56) = v39;
    *(a1 + 136) = v44;
    *(a1 + 72) = v26;
  }

  else
  {
    type metadata accessor for ObservableHostingController();
    sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

id sub_1BD17F9E0@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B330);
  MEMORY[0x1EEE9AC00](v92, v5);
  v93 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B338);
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v91 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B340);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v102 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v101 = &v81 - v15;
  v95 = sub_1BE04BD74();
  v16 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v17);
  v89 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v87 = *(v19 - 8);
  v88 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  v96 = *(v22 - 8);
  v97 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v85 = &v81 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v81 - v31;
  v33 = sub_1BE04AA64();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v84 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v81 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B348);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v98 = &v81 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v103 = &v81 - v46;
  if (!a1)
  {
    (*(v34 + 56))(v32, 1, 1, v33);
LABEL_7:
    sub_1BD0DE53C(v32, &unk_1EBD3CF70);
    v50 = 1;
    v51 = v103;
    (*(v96 + 56))(v103, 1, 1, v97);
    if (!a1)
    {
      v52 = v101;
LABEL_15:
      (*(v99 + 56))(v52, v50, 1, v100);
      v78 = v98;
      sub_1BD0DE19C(v51, v98, &qword_1EBD3B348);
      v79 = v102;
      sub_1BD0DE19C(v52, v102, &qword_1EBD3B340);
      sub_1BD0DE19C(v78, a3, &qword_1EBD3B348);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B350);
      sub_1BD0DE19C(v79, a3 + *(v80 + 48), &qword_1EBD3B340);
      sub_1BD0DE53C(v52, &qword_1EBD3B340);
      sub_1BD0DE53C(v51, &qword_1EBD3B348);
      sub_1BD0DE53C(v79, &qword_1EBD3B340);
      return sub_1BD0DE53C(v78, &qword_1EBD3B348);
    }

    v52 = v101;
LABEL_11:
    v66 = [a1 termsIdentifier];
    if (v66)
    {

      v67 = swift_allocObject();
      v68 = v90;
      v69 = memcpy((v67 + 16), v90, 0x178uLL);
      MEMORY[0x1EEE9AC00](v69, v70);
      *(&v81 - 2) = v68;
      sub_1BD18288C(v68, &v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B358);
      sub_1BD0DE4F4(&qword_1EBD3B360, &qword_1EBD3B358);
      v71 = v93;
      sub_1BE051704();
      v72 = (v68 + 360);
      v51 = v103;
      v105 = *v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516A4();
      v73 = v104;
      KeyPath = swift_getKeyPath();
      v75 = swift_allocObject();
      *(v75 + 16) = v73;
      v76 = (v71 + *(v92 + 36));
      *v76 = KeyPath;
      v76[1] = sub_1BD185ABC;
      v76[2] = v75;
      sub_1BE052434();
      sub_1BD1840F8();
      v77 = v91;
      sub_1BE050DE4();

      sub_1BD0DE53C(v71, &qword_1EBD3B330);
      sub_1BD0DE204(v77, v52, &qword_1EBD3B338);
      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    goto LABEL_15;
  }

  v94 = a1;
  v47 = [a1 privacyPolicyURL];
  if (v47)
  {
    v48 = v47;
    sub_1BE04A9F4();

    (*(v34 + 56))(v29, 0, 1, v33);
  }

  else
  {
    (*(v34 + 56))(v29, 1, 1, v33);
  }

  sub_1BD0DE204(v29, v32, &unk_1EBD3CF70);
  v49 = (*(v34 + 48))(v32, 1, v33);
  a1 = v94;
  if (v49 == 1)
  {
    goto LABEL_7;
  }

  v82 = v40;
  v83 = a3;
  v81 = *(v34 + 32);
  v81(v40, v32, v33);
  v53 = v89;
  (*(v16 + 104))(v89, *MEMORY[0x1E69B80E0], v95);
  result = PKPassKitBundle();
  if (result)
  {
    v55 = result;
    v56 = sub_1BE04B6F4();
    v58 = v57;

    (*(v16 + 8))(v53, v95);
    *&v105 = v56;
    *(&v105 + 1) = v58;
    v59 = v84;
    v60 = v82;
    (*(v34 + 16))(v84, v82, v33);
    v61 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v62 = swift_allocObject();
    v81((v62 + v61), v59, v33);
    sub_1BD0DDEBC();
    v63 = v86;
    sub_1BE051744();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v64 = v85;
    v65 = v88;
    sub_1BE050DE4();

    (*(v87 + 8))(v63, v65);
    (*(v34 + 8))(v60, v33);
    v51 = v103;
    sub_1BD0DE204(v64, v103, &unk_1EBD45200);
    (*(v96 + 56))(v51, 0, 1, v97);
    a3 = v83;
    v52 = v101;
    a1 = v94;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1BD18050C()
{
  v0 = sub_1BE04A9C4();
  PKOpenURL();
}

void sub_1BD18055C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v12[0])
  {
    v2 = [v12[0] termsIdentifier];

    if (v2)
    {
      v3 = a1[43];
      v4 = a1[44];
      v14 = v4;
      v15 = v3;
      v12[0] = v3;
      v12[1] = v4;
      sub_1BD0DE19C(&v15, aBlock, &qword_1EBD3B390);
      sub_1BD0DE19C(&v14, aBlock, &qword_1EBD3B398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B3A0);
      sub_1BE0516A4();
      v5 = aBlock[0];
      if (aBlock[0])
      {
        sub_1BD0DE53C(&v15, &qword_1EBD3B390);
        sub_1BD0DE53C(&v14, &qword_1EBD3B398);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v6 = [objc_opt_self() sharedService];
        if (!v6)
        {

          __break(1u);
          return;
        }

        v7 = v6;
        v8 = [objc_allocWithZone(PKAccountTermsAndConditionsController) initWithAccount:v12[0] webService:v6 context:8 termsIdentifier:v2];

        v12[0] = v3;
        v12[1] = v4;
        aBlock[0] = v8;
        sub_1BE0516B4();
        sub_1BD0DE53C(&v15, &qword_1EBD3B390);
        sub_1BD0DE53C(&v14, &qword_1EBD3B398);
      }

      LOBYTE(aBlock[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516B4();
      v12[0] = v3;
      v12[1] = v4;
      sub_1BE0516A4();
      v9 = aBlock[0];
      if (aBlock[0])
      {
        v10 = swift_allocObject();
        memcpy((v10 + 16), a1, 0x178uLL);
        aBlock[4] = sub_1BD18434C;
        aBlock[5] = v10;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_131;
        v11 = _Block_copy(aBlock);
        sub_1BD18288C(a1, v12);

        [v9 termsViewControllerWithCompletion_];
        _Block_release(v11);
      }
    }
  }
}

void sub_1BD1808D4(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  if (a1)
  {
    if (*(a3 + 40))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        [Strong presentViewController:a1 animated:1 completion:{0, v8}];
      }
    }

    else
    {
      type metadata accessor for ObservableHostingController();
      sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
      v7 = a1;
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD1809EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F504();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(a1);
}

id sub_1BD180A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69B80E0], v11);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v12 + 8))(v15, v11);
    *&v30 = v18;
    *(&v30 + 1) = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v18) = v24;
    v26 = v25;
    sub_1BE04E4F4();
    v30 = *(v28 + 360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    v10[*(v3 + 36)] = (v29 & 1) == 0;
    sub_1BD0DE19C(v10, v7, &qword_1EBD3B2E0);
    *a2 = v21;
    *(a2 + 8) = v23;
    LOBYTE(v18) = v18 & 1;
    *(a2 + 16) = v18;
    *(a2 + 24) = v26;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B388);
    sub_1BD0DE19C(v7, a2 + *(v27 + 64), &qword_1EBD3B2E0);
    sub_1BD0D7F18(v21, v23, v18);
    sub_1BE048C84();
    sub_1BD0DE53C(v10, &qword_1EBD3B2E0);
    sub_1BD0DE53C(v7, &qword_1EBD3B2E0);
    sub_1BD0DDF10(v21, v23, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD180D4C(uint64_t a1)
{
  v2 = [objc_opt_self() pk:128 defaultPresentationActionForContext:?];
  v2[2](v2, a1);

  _Block_release(v2);
}

void sub_1BD180DB8(void *a1)
{
  v2 = [objc_allocWithZone(PKAccountLegalDisclosureViewController) initWithFeature_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [a1 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1BD180E54@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (sub_1BD17278C() == 2)
  {
    v8 = sub_1BE0501E4();
    sub_1BE04E1F4();
    *(&v10 + 1) = v9;
    *(&v12 + 1) = v11;
    v13 = v8;
    v14 = xmmword_1BE0BBB00;
  }

  else
  {
    v13 = 0;
    v14 = xmmword_1BE0BBAF0;
    v10 = 0uLL;
    v12 = 0uLL;
  }

  v15 = *a1;
  *a4 = v14;
  *(a4 + 16) = v13;
  *(a4 + 24) = v10;
  *(a4 + 40) = v12;
  *(a4 + 56) = 0;
  *(a4 + 64) = v15;
  *(a4 + 72) = 4;
  *(a4 + 80) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t sub_1BD180F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BD179980(a2, a3, a4 & 0xFFFFFFFFFFLL);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  *(sub_1BE04E3C4() + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear) = 1;
}

void sub_1BD180FF4()
{
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD184068(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8C4();
  sub_1BD1DEDD4();
}

uint64_t sub_1BD18112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v32 = a2;
  v3 = sub_1BE04FF64();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v27 = *(a1 + 16);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0500D4();
  sub_1BE04EBD4();
  v25 = *(a1 + 24);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v24[1] = swift_getWitnessTable();
  v6 = sub_1BE04E5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v24 - v9;
  WitnessTable = swift_getWitnessTable();
  v37 = v6;
  v38 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v24 - v19;
  sub_1BE050194();
  v33 = v27;
  v34 = v25;
  v35 = *(v26 + 32);
  v36 = v29;
  sub_1BE04E5A4();
  v21 = v28;
  sub_1BE04FF44();
  sub_1BE050D14();
  (*(v30 + 8))(v21, v31);
  (*(v7 + 8))(v10, v6);
  v37 = v6;
  v38 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v17);
  v22 = *(v13 + 8);
  v22(v17, OpaqueTypeMetadata2);
  sub_1BD147308(v20);
  return (v22)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1BD181570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v48 = a4;
  v45 = a3;
  v47 = a1;
  v52 = a6;
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  v50 = sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1BE051854();
  v51 = *(v43 - 8);
  v9 = MEMORY[0x1EEE9AC00](v43, v8);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v46 = &v35 - v12;
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v13 = sub_1BE051774();
  v38 = *(v13 - 8);
  v14 = v38;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v39 = &v35 - v20;
  v21 = v45;
  v58 = a2;
  v59 = v45;
  v22 = v48;
  v60 = v48;
  v61 = a5;
  v23 = v47;
  v62 = v47;
  sub_1BE04F504();
  sub_1BE051764();
  v41 = swift_getWitnessTable();
  v37 = v13;
  sub_1BD147308(v18);
  v24 = *(v14 + 8);
  v40 = v14 + 8;
  v42 = v24;
  v24(v18, v13);
  sub_1BE04F7C4();
  v53 = a2;
  v54 = v21;
  v55 = v22;
  v56 = v36;
  v57 = v23;
  v25 = v44;
  sub_1BE051844();
  v26 = v43;
  v27 = swift_getWitnessTable();
  v28 = v46;
  sub_1BD147308(v25);
  v29 = v51;
  v30 = *(v51 + 8);
  v30(v25, v26);
  v31 = v39;
  v32 = v37;
  (*(v38 + 16))(v18, v39, v37);
  v66[0] = v18;
  (*(v29 + 16))(v25, v28, v26);
  v66[1] = v25;
  v65[0] = v32;
  v65[1] = v26;
  v63 = v41;
  v64 = v27;
  sub_1BD13A4C4(v66, 2uLL, v65);
  v30(v28, v26);
  v33 = v42;
  v42(v31, v32);
  v30(v25, v26);
  return v33(v18, v32);
}

uint64_t sub_1BD181A80@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a3;
  v45 = a5;
  v39 = a1;
  v48 = a6;
  sub_1BE0500D4();
  v38 = sub_1BE04EBD4();
  v47 = *(v38 - 8);
  v9 = MEMORY[0x1EEE9AC00](v38, v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v46 = &v34 - v13;
  v14 = sub_1BE04EBD4();
  v37 = *(v14 - 8);
  v15 = v37;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v40 = &v34 - v21;
  sub_1BE052434();
  sub_1BE050DE4();

  v34 = sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v61 = a4;
  v62 = v34;
  v36 = v14;
  WitnessTable = swift_getWitnessTable();
  v35 = v19;
  sub_1BD147308(v19);
  v22 = *(v15 + 8);
  v41 = v15 + 8;
  v43 = v22;
  v22(v19, v14);
  v23 = v45;
  v57 = a2;
  v58 = v44;
  v59 = a4;
  v60 = v45;
  type metadata accessor for DetailValueItem();
  sub_1BE052434();
  sub_1BE050DE4();

  v55 = v23;
  v56 = v34;
  v24 = v38;
  v25 = swift_getWitnessTable();
  v26 = v46;
  sub_1BD147308(v11);
  v27 = v47;
  v28 = *(v47 + 8);
  v28(v11, v24);
  v29 = v35;
  v30 = v40;
  v31 = v36;
  (*(v37 + 16))(v35, v40, v36);
  v53 = 0;
  v54 = 1;
  v57 = v29;
  v58 = &v53;
  (*(v27 + 16))(v11, v26, v24);
  v59 = v11;
  v52[0] = v31;
  v52[1] = MEMORY[0x1E6981840];
  v52[2] = v24;
  v49 = WitnessTable;
  v50 = MEMORY[0x1E6981838];
  v51 = v25;
  sub_1BD13A4C4(&v57, 3uLL, v52);
  v28(v26, v24);
  v32 = v43;
  v43(v30, v31);
  v28(v11, v24);
  return v32(v29, v31);
}

uint64_t sub_1BD181EF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a3;
  v45 = a5;
  v40 = a1;
  v48 = a6;
  sub_1BE0500D4();
  v39 = sub_1BE04EBD4();
  v47 = *(v39 - 8);
  v9 = MEMORY[0x1EEE9AC00](v39, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v46 = &v36 - v13;
  v14 = sub_1BE04EBD4();
  v38 = *(v14 - 8);
  v15 = v38;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v36 - v21;
  sub_1BE052434();
  sub_1BE050DE4();

  v23 = sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v56 = a4;
  v57 = v23;
  WitnessTable = swift_getWitnessTable();
  v36 = v19;
  v37 = v14;
  sub_1BD147308(v19);
  v42 = *(v15 + 8);
  v43 = v15 + 8;
  v42(v19, v14);
  v52 = a2;
  v53 = v44;
  v54 = a4;
  v24 = v45;
  v55 = v45;
  type metadata accessor for DetailValueItem();
  sub_1BE052434();
  sub_1BE050DE4();

  v51[2] = v24;
  v51[3] = v23;
  v25 = v39;
  v26 = swift_getWitnessTable();
  v27 = v46;
  sub_1BD147308(v11);
  v28 = v47;
  v29 = *(v47 + 8);
  v29(v11, v25);
  v30 = v36;
  v31 = v22;
  v32 = v22;
  v33 = v37;
  (*(v38 + 16))(v36, v32, v37);
  v52 = v30;
  (*(v28 + 16))(v11, v27, v25);
  v53 = v11;
  v51[0] = v33;
  v51[1] = v25;
  v49 = WitnessTable;
  v50 = v26;
  sub_1BD13A4C4(&v52, 2uLL, v51);
  v29(v27, v25);
  v34 = v42;
  v42(v31, v33);
  v29(v11, v25);
  return v34(v30, v33);
}

uint64_t sub_1BD182330@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD184068(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BD1839E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BD0D44B8(v4);
}

uint64_t sub_1BD182428(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BD1839E0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_1BD0D44B8(v1);
  sub_1BD184068(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
  sub_1BE04B584();
  sub_1BD0D4744(v4);
}

uint64_t sub_1BD182584@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD182604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD182678()
{
  result = qword_1EBD3ADE0;
  if (!qword_1EBD3ADE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADB8);
    sub_1BD182730();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ADE0);
  }

  return result;
}

unint64_t sub_1BD182730()
{
  result = qword_1EBD3ADE8;
  if (!qword_1EBD3ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADD8);
    sub_1BD0DE4F4(&qword_1EBD3ADF0, &qword_1EBD3ADF8);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ADE8);
  }

  return result;
}

double sub_1BD182814@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BD17661C(*(a1 + 16) | (*(a1 + 20) << 32), v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

unint64_t sub_1BD1828C4()
{
  result = qword_1EBD3AE10;
  if (!qword_1EBD3AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AE10);
  }

  return result;
}

unint64_t sub_1BD182918()
{
  result = qword_1EBD3AE18;
  if (!qword_1EBD3AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AE08);
    sub_1BD1829A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AE18);
  }

  return result;
}

unint64_t sub_1BD1829A4()
{
  result = qword_1EBD3AE20;
  if (!qword_1EBD3AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AE20);
  }

  return result;
}

uint64_t sub_1BD182AF4(uint64_t result)
{
  v2 = *(v1 + 264);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

unint64_t sub_1BD182B28()
{
  result = qword_1EBD3AF40;
  if (!qword_1EBD3AF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF30);
    sub_1BD182BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF40);
  }

  return result;
}

unint64_t sub_1BD182BB4()
{
  result = qword_1EBD3AF48;
  if (!qword_1EBD3AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF50);
    sub_1BD182C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF48);
  }

  return result;
}

unint64_t sub_1BD182C40()
{
  result = qword_1EBD3AF58;
  if (!qword_1EBD3AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF58);
  }

  return result;
}

uint64_t sub_1BD182C94(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD182D48()
{
  result = qword_1EBD3AF68;
  if (!qword_1EBD3AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF70);
    sub_1BD182E00();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF68);
  }

  return result;
}

unint64_t sub_1BD182E00()
{
  result = qword_1EBD3AF78;
  if (!qword_1EBD3AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AF80);
    sub_1BD0DE4F4(&qword_1EBD3AF88, &qword_1EBD3AF90);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3AF78);
  }

  return result;
}

void sub_1BD182EEC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v7 = a2;
    v8 = a4;

    v9 = a6;
  }
}

void sub_1BD182F3C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1BD182F94()
{
  result = qword_1EBD3B008;
  if (!qword_1EBD3B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B000);
    sub_1BD18304C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B008);
  }

  return result;
}

unint64_t sub_1BD18304C()
{
  result = qword_1EBD3B010;
  if (!qword_1EBD3B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B018);
    sub_1BD183104();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B010);
  }

  return result;
}

unint64_t sub_1BD183104()
{
  result = qword_1EBD3B020;
  if (!qword_1EBD3B020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B028);
    sub_1BD183188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B020);
  }

  return result;
}

unint64_t sub_1BD183188()
{
  result = qword_1EBD3B030;
  if (!qword_1EBD3B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B030);
  }

  return result;
}

unint64_t sub_1BD1831DC()
{
  result = qword_1EBD3B050;
  if (!qword_1EBD3B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AEC0);
    sub_1BD184FBC(&qword_1EBD3B058, &qword_1EBD3B040, &unk_1BE0BC0B8, sub_1BD18328C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B050);
  }

  return result;
}

unint64_t sub_1BD18328C()
{
  result = qword_1EBD3B060;
  if (!qword_1EBD3B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B068);
    sub_1BD0DE4F4(&qword_1EBD3B070, &qword_1EBD3B078);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B060);
  }

  return result;
}

unint64_t sub_1BD183394()
{
  result = qword_1EBD3B0C0;
  if (!qword_1EBD3B0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B0B8);
    sub_1BD0DE4F4(&qword_1EBD3B0C8, &qword_1EBD3B0D0);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B0C0);
  }

  return result;
}

unint64_t sub_1BD183484()
{
  result = qword_1EBD3B0E0;
  if (!qword_1EBD3B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B0D8);
    sub_1BD0DE4F4(&qword_1EBD3B0E8, &qword_1EBD3B0F0);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B0E0);
  }

  return result;
}

unint64_t sub_1BD183574()
{
  result = qword_1EBD3B100;
  if (!qword_1EBD3B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B0F8);
    sub_1BD0DE4F4(&qword_1EBD3B108, &qword_1EBD3B110);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B100);
  }

  return result;
}

unint64_t sub_1BD183664()
{
  result = qword_1EBD3B130;
  if (!qword_1EBD3B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AEE8);
    sub_1BD0DE4F4(&qword_1EBD3B138, &qword_1EBD3B140);
    sub_1BD184068(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B130);
  }

  return result;
}

uint64_t sub_1BD1837AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoneyTransferButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD183810(uint64_t a1)
{
  v2 = type metadata accessor for MoneyTransferButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD183894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsBeneficiaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1838F8()
{
  result = qword_1EBD3B1D0;
  if (!qword_1EBD3B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B198);
    sub_1BD184068(&qword_1EBD3B1D8, type metadata accessor for SavingsBeneficiaryView);
    sub_1BD0DE4F4(&qword_1EBD3B1E0, &qword_1EBD3B1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1D0);
  }

  return result;
}

uint64_t sub_1BD1839F0()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    return v1(4);
  }

  return result;
}

unint64_t sub_1BD183A2C()
{
  result = qword_1EBD3B228;
  if (!qword_1EBD3B228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B220);
    sub_1BD183AB8();
    sub_1BD183394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B228);
  }

  return result;
}

unint64_t sub_1BD183AB8()
{
  result = qword_1EBD3B230;
  if (!qword_1EBD3B230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B248);
    sub_1BD182C94(&qword_1EBD3B250, &qword_1EBD3B240, &unk_1BE0BC358, sub_1BD183C58);
    sub_1BD0DE4F4(&qword_1EBD3B278, &qword_1EBD3B248);
    swift_getOpaqueTypeConformance2();
    sub_1BD184068(&qword_1EBD3B280, type metadata accessor for SavingsFCCStepUpPresenter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B230);
  }

  return result;
}

unint64_t sub_1BD183C58()
{
  result = qword_1EBD3B258;
  if (!qword_1EBD3B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B260);
    sub_1BD0DE4F4(&qword_1EBD3B268, &qword_1EBD3B270);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B258);
  }

  return result;
}

uint64_t sub_1BD183D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD126968;

  return sub_1BD17CAF0(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_95Tm()
{
  swift_unknownObjectRelease();

  sub_1BD0D45CC();

  sub_1BD0D45CC();

  sub_1BD035CB4(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_1BD035CB4(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  sub_1BD0D45CC();

  if (*(v0 + 280))
  {
  }

  if (*(v0 + 296))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD183FB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD0F985C;

  return sub_1BD17CF50(a1, v4, v5, v1 + 32);
}

uint64_t sub_1BD184068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD1840F8()
{
  result = qword_1EBD3B368;
  if (!qword_1EBD3B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B330);
    sub_1BD0DE4F4(&qword_1EBD3B370, &qword_1EBD3B378);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B368);
  }

  return result;
}

void sub_1BD1841DC()
{
  sub_1BE04AA64();

  sub_1BD18050C();
}

uint64_t objectdestroyTm_6()
{
  sub_1BD0D45CC();

  sub_1BD0D45CC();

  sub_1BD035CB4(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  sub_1BD035CB4(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1BD0D45CC();

  if (*(v0 + 264))
  {
  }

  if (*(v0 + 280))
  {
  }

  return swift_deallocObject();
}

id sub_1BD184364@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  LODWORD(v82) = a6;
  v86 = a4;
  v87 = a5;
  v85 = a3;
  v89 = a1;
  v90 = a2;
  v88 = a7;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v62 - v18;
  v165 = 0;
  type metadata accessor for ObservableHostingController();
  sub_1BD184068(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
  v20 = sub_1BE04EEC4();
  v83 = v21;
  v84 = v20;
  v163 = 0;
  v22 = *MEMORY[0x1E69B80E0];
  v23 = *(v8 + 104);
  v23(v19, v22, v7);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = result;
  v26 = sub_1BE04B6F4();
  v80 = v27;
  v81 = v26;

  v28 = *(v8 + 8);
  v28(v19, v7);
  v23(v16, v22, v7);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = result;
  v30 = sub_1BE04B6F4();
  v77 = v31;
  v78 = v30;

  v79 = v28;
  v28(v16, v7);
  v23(v12, v22, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = sub_1BE052434();
  v36 = v35;

  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1BD110550();
  *(v32 + 32) = v34;
  *(v32 + 40) = v36;
  v37 = sub_1BE04B714();
  v71 = v38;
  v72 = v37;

  v79(v12, v7);
  v157 = 0;
  LOBYTE(v92[0]) = 0;
  sub_1BE051694();
  v39 = v93;
  v40 = v94;
  LOBYTE(v92[0]) = 0;
  sub_1BE051694();
  LODWORD(v33) = v93;
  v41 = v94;
  LOBYTE(v92[0]) = 0;
  sub_1BE051694();
  v73 = v93;
  v74 = v94;
  v92[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B390);
  sub_1BE051694();
  v69 = v93;
  v70 = v94;
  LOBYTE(v92[0]) = 0;
  sub_1BE051694();
  v67 = v93;
  v68 = v94;
  type metadata accessor for AccountModel();
  sub_1BD184068(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v42 = v89;
  v43 = sub_1BE04E954();
  v89 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  v161 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v42;
  v159 = 0;
  LODWORD(v79) = v39;
  v76 = v41;
  v75 = v33;
  if (v90 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v42;
    sub_1BE04D8B4();

    v47 = v93;
    v48 = objc_allocWithZone(type metadata accessor for TransactionList());
    sub_1BD56A4DC(v47, 0);
    v50 = v49;
  }

  else
  {
    v51 = v42;
    v50 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = [objc_opt_self() sharedService];
  if (!result)
  {
    goto LABEL_15;
  }

  v65 = v40;
  v52 = objc_allocWithZone(sub_1BE04BF14());
  v63 = sub_1BE04BF04();
  v53 = PKPassDetailsLastSelectedSegment();
  v64 = v50;
  v54 = v45;
  if (v53)
  {
    v55 = v53;
    v56 = sub_1BE052434();
    v58 = v57;

    v92[0] = v56;
    v92[1] = v58;
  }

  else
  {
    v92[0] = sub_1BE052434();
    v92[1] = v59;
  }

  sub_1BE051694();

  v62 = v93;
  v60 = v94;
  v61 = v95;
  v155 = v82 & 1;
  v92[0] = v43;
  v92[1] = v89;
  *(&v92[4] + 1) = *v164;
  HIDWORD(v92[4]) = *&v164[3];
  v92[2] = sub_1BD17260C;
  v92[3] = 0;
  LOBYTE(v92[4]) = v165;
  v92[5] = v84;
  v92[6] = v83;
  HIDWORD(v92[9]) = *&v162[3];
  *(&v92[9] + 1) = *v162;
  v92[7] = sub_1BD172644;
  v92[8] = 0;
  LOBYTE(v92[9]) = v163;
  v92[10] = v81;
  v92[11] = v80;
  v92[12] = v78;
  v92[13] = v77;
  v92[14] = v72;
  v82 = v43;
  v92[15] = v71;
  HIDWORD(v92[18]) = *&v160[3];
  *(&v92[18] + 1) = *v160;
  v92[16] = sub_1BD185188;
  v92[17] = v54;
  LOBYTE(v92[18]) = v161;
  *(&v92[21] + 1) = *v158;
  HIDWORD(v92[21]) = *&v158[3];
  v92[19] = sub_1BD1851CC;
  v92[20] = v66;
  LOBYTE(v92[21]) = v159;
  *(&v92[24] + 1) = *v156;
  *(&v92[36] + 1) = *v154;
  *(&v92[37] + 1) = *v153;
  *(&v92[39] + 1) = *v152;
  *(&v92[41] + 1) = *v151;
  *(&v92[45] + 1) = *v150;
  *&v98[3] = *&v164[3];
  *v98 = *v164;
  *&v104[3] = *&v162[3];
  *v104 = *v162;
  *&v114[3] = *&v160[3];
  *v114 = *v160;
  *&v118[3] = *&v158[3];
  *v118 = *v158;
  *&v122[3] = *&v156[3];
  *v122 = *v156;
  *v135 = *v154;
  *v137 = *v153;
  *v140 = *v152;
  *v143 = *v151;
  *v148 = *v150;
  HIDWORD(v92[24]) = *&v156[3];
  HIDWORD(v92[36]) = *&v154[3];
  HIDWORD(v92[37]) = *&v153[3];
  HIDWORD(v92[39]) = *&v152[3];
  HIDWORD(v92[41]) = *&v151[3];
  HIDWORD(v92[45]) = *&v150[3];
  v93 = v43;
  v94 = v89;
  v95 = sub_1BD17260C;
  v97 = v165;
  v99 = v84;
  v100 = v83;
  v101 = sub_1BD172644;
  v103 = v163;
  v105 = v81;
  v106 = v80;
  v107 = v78;
  v108 = v77;
  v109 = v72;
  v110 = v71;
  v111 = sub_1BD185188;
  v112 = v54;
  v113 = v161;
  v115 = sub_1BD1851CC;
  v116 = v66;
  v117 = v159;
  LOBYTE(v92[24]) = v157;
  v121 = v157;
  v123 = v62;
  v92[25] = v62;
  v92[26] = v60;
  v124 = v60;
  v125 = v61;
  v92[27] = v61;
  v92[28] = v90;
  v126 = v90;
  v127 = v64;
  v92[29] = v64;
  v92[30] = v63;
  v128 = v63;
  v129 = v85;
  v92[31] = v85;
  v92[32] = v86;
  v130 = v86;
  v92[35] = v87;
  v133 = v87;
  LOBYTE(v92[36]) = v155;
  v134 = v155;
  *&v135[3] = *&v154[3];
  LOBYTE(v92[37]) = v79;
  v136 = v79;
  *&v137[3] = *&v153[3];
  v92[38] = v65;
  v138 = v65;
  LOBYTE(v92[39]) = v75;
  v139 = v75;
  *&v140[3] = *&v152[3];
  v92[40] = v76;
  v141 = v76;
  LOBYTE(v92[41]) = v73;
  v142 = v73;
  *&v143[3] = *&v151[3];
  v144 = v74;
  v92[42] = v74;
  v92[43] = v69;
  v145 = v69;
  v92[44] = v70;
  v146 = v70;
  LOBYTE(v92[45]) = v67;
  v147 = v67;
  *&v148[3] = *&v150[3];
  v92[46] = v68;
  v149 = v68;
  v119 = sub_1BD172700;
  v92[22] = sub_1BD172700;
  v92[23] = 0;
  v92[34] = 0;
  v92[33] = 0;
  v96 = 0;
  v102 = 0;
  v120 = 0;
  v132 = 0;
  v131 = 0;
  sub_1BD18288C(v92, &v91);
  sub_1BD185210(&v93);
  return memcpy(v88, v92, 0x178uLL);
}

unint64_t sub_1BD184DBC()
{
  result = qword_1EBD3B3E0;
  if (!qword_1EBD3B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B3D8);
    sub_1BD184E74();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B3E0);
  }

  return result;
}

unint64_t sub_1BD184E74()
{
  result = qword_1EBD3B3E8;
  if (!qword_1EBD3B3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B3F8);
    sub_1BE04FAB4();
    sub_1BD0DE4F4(&qword_1EBD3B400, &qword_1EBD3B3F8);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B3E8);
  }

  return result;
}

uint64_t sub_1BD184FBC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD185044()
{
  result = qword_1EBD3B458;
  if (!qword_1EBD3B458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B448);
    sub_1BD1850D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B458);
  }

  return result;
}

unint64_t sub_1BD1850D0()
{
  result = qword_1EBD3B460;
  if (!qword_1EBD3B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B440);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B460);
  }

  return result;
}

uint64_t sub_1BD185240()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD1852CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1BD1854A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_1BD18577C()
{
  result = qword_1EBD3B510;
  if (!qword_1EBD3B510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AE28);
    sub_1BD185808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B510);
  }

  return result;
}

unint64_t sub_1BD185808()
{
  result = qword_1EBD3B518;
  if (!qword_1EBD3B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3AE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ADB8);
    sub_1BE04FB94();
    sub_1BD182678();
    swift_getOpaqueTypeConformance2();
    sub_1BD1828C4();
    sub_1BD182918();
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B518);
  }

  return result;
}

unint64_t sub_1BD18596C()
{
  result = qword_1EBD3B528;
  if (!qword_1EBD3B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B528);
  }

  return result;
}

id sub_1BD185AC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_identifier];
  *v6 = 0xD000000000000013;
  *(v6 + 1) = 0x80000001BE11BBD0;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_provisionedPasses] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BD185C58(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v46 = a2;
  v47 = a1;
  v3 = sub_1BE04B944();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BAC4();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v45 = v2;
  v10 = sub_1BD187A6C(v2, KeyPath, &OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate, sub_1BD12EFDC);

  v11 = *(v10 + 16);
  v12 = (v10 + 32);
  v51 = 0x80000001BE1182F0;
  v52 = 0x80000001BE118310;
  v49 = 0x80000001BE118280;
  v50 = 0x80000001BE1182A0;
  v48 = 0x80000001BE118260;
  while (2)
  {
    if (v11)
    {
      switch(*v12)
      {
        case 7:

          break;
        default:
          v13 = sub_1BE053B84();

          ++v12;
          --v11;
          if ((v13 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v14 = 0x6F63206775626564;
      v15 = 0xEC0000006769666ELL;
      goto LABEL_16;
    }

    break;
  }

  if (PKForceMakeDefaultCard())
  {
    v14 = 0xD00000000000001ALL;
    v15 = 0x80000001BE11BB60;
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v16 = v45;
  v17 = v42;
  sub_1BE04BC34();
  v18 = sub_1BE04B994();
  (*(v43 + 8))(v17, v44);
  if (v18)
  {
    v19 = "is card on file provisioning";
    v14 = 0xD000000000000044;
LABEL_11:
    v15 = v19 | 0x8000000000000000;
    v22 = 1;
LABEL_17:
    v47(v14, v15, 0, v22);
    return;
  }

  v20 = swift_getKeyPath();
  v21 = sub_1BD18760C(v16, v20, &OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate, sub_1BD12EFDC, &qword_1EBD443B0, &qword_1EBD443B8);

  if (v21)
  {
    v19 = "server requested to suppress";
    v14 = 0xD00000000000001CLL;
    goto LABEL_11;
  }

  v23 = sub_1BE04BC84();
  if (sub_1BE04BCF4())
  {
    v24 = "pass is access pass";
    v25 = 0xD00000000000001CLL;
LABEL_25:
    v27 = v24 | 0x8000000000000000;
    goto LABEL_26;
  }

  v26 = [v23 passActivationState];
  if ((v26 | 2) != 2)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    v28 = v26;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0x206574617473, 0xE600000000000000);
    v53 = v28;
    type metadata accessor for PassActivationState(0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0xD00000000000001CLL, 0x80000001BE11BA10);
    v47(v54, v55, 0, 1);

    return;
  }

  if (([v23 supportsDefaultCardSelection] & 1) == 0)
  {
    v24 = " is not activating or active";
    v25 = 0xD000000000000029;
    goto LABEL_25;
  }

  if ([v23 isAccessPass])
  {
    v27 = 0x80000001BE11BAB0;
    v25 = 0xD000000000000013;
LABEL_26:
    v47(v25, v27, 0, 1);

    return;
  }

  if ([v23 isTransitPass])
  {
    v24 = "tically be default";
    v25 = 0xD000000000000014;
    goto LABEL_25;
  }

  v29 = v39;
  sub_1BE04BB94();
  v30 = sub_1BE04B934();
  (*(v40 + 8))(v29, v41);
  if (([v30 respondsToSelector_] & 1) != 0 && ((swift_unknownObjectRetain(), (v31 = objc_msgSend(v23, sel_uniqueID)) == 0) ? (v33 = 0) : (v32 = v31, sub_1BE052434(), v32, v33 = sub_1BE052404()), v34 = objc_msgSend(v30, sel_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_, v33), , swift_unknownObjectRelease(), v33, v34))
  {
    v35 = 0xD000000000000022;
    v36 = 0x80000001BE11BA60;
    v37 = 1;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v47(v35, v36, 0, v37);

  swift_unknownObjectRelease();
}

unint64_t sub_1BD186438()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04BD44();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 2;
  }

  v15 = result;
  v16 = sub_1BE053704();
  result = v15;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1BFB40900](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_6:
    v9 = v8;

    v10 = sub_1BE04BBD4();
    v11 = v9;
    sub_1BE04BC34();
    v12 = sub_1BE04B9A4();
    (*(v3 + 8))(v6, v2);
    v13 = [objc_allocWithZone(PKPaymentPassMakeDefaultViewController) initWithProvisioningController:v10 paymentPass:v11 context:v12];

    [v13 setFlowItemDelegate_];
    sub_1BE052434();
    v14 = sub_1BE04BB74();

    [v13 setReporter_];

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD18665C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD186698(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31ProvisioningMakeDefaultFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD186790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v5 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (v5)
  {
    v6 = v5;
    v8 = qword_1EBD53DE0;
    v7 = off_1EBD53DE8;
    swift_beginAccess();
    v9 = *(v6 + 40);
    if (*(v9 + 16))
    {
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048C84();
      v10 = sub_1BD148F70(v8, v7);
      v12 = v11;

      if (v12)
      {
        sub_1BD038CD0(*(v9 + 56) + 32 * v10, &v23);
      }

      else
      {

        v23 = 0u;
        v24 = 0u;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      sub_1BE048964();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
    if (swift_dynamicCast())
    {

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22;
    }

    else
    {
      if (qword_1EBD36F90 != -1)
      {
        swift_once();
      }

      v14 = byte_1EBDAB6E8;
      v18 = *&qword_1EBDAB6F0;
      v16 = qword_1EBDAB700;
      v17 = byte_1EBDAB708;
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();

      v15 = v18;
    }

    *a4 = v14 & 1;
    *(a4 + 8) = v15;
    *(a4 + 24) = v16;
    *(a4 + 32) = v17;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1869B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v3 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (v3)
  {
    v4 = v3;
    v6 = qword_1EBD3D980;
    v5 = off_1EBD3D988;
    swift_beginAccess();
    v7 = *(v4 + 40);
    if (*(v7 + 16))
    {
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048C84();
      v8 = sub_1BD148F70(v6, v5);
      v10 = v9;

      if (v10)
      {
        sub_1BD038CD0(*(v7 + 56) + 32 * v8, &v14);
      }

      else
      {

        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      sub_1BE048964();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
    if (swift_dynamicCast())
    {

      return v13;
    }

    else
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBDAAE78;
      sub_1BE048C84();
    }

    return v11;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD186B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v3 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (v3)
  {
    v4 = v3;
    v6 = qword_1EBD48AC8;
    v5 = off_1EBD48AD0;
    swift_beginAccess();
    v7 = *(v4 + 40);
    if (*(v7 + 16))
    {
      sub_1BE048964();
      sub_1BE048C84();
      sub_1BE048C84();
      v8 = sub_1BD148F70(v6, v5);
      v10 = v9;

      if (v10)
      {
        sub_1BD038CD0(*(v7 + 56) + 32 * v8, &v14);
      }

      else
      {

        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      sub_1BE048964();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
    if (swift_dynamicCast())
    {

      v11 = v13;
    }

    else
    {
      if (qword_1EBD36C58 != -1)
      {
        swift_once();
      }

      v11 = byte_1EBDAB1E8;
      sub_1BE048C84();
      sub_1BE048C84();
    }

    return v11 & 1;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD186D80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BD12EFDC(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (!v2)
  {
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  v3 = v2;
  v5 = qword_1EBD46AB0;
  v4 = off_1EBD46AB8;
  swift_beginAccess();
  v6 = *(v3 + 40);
  if (*(v6 + 16))
  {
    sub_1BE048C84();
    sub_1BE048C84();
    v7 = sub_1BD148F70(v5, v4);
    v9 = v8;

    if (v9)
    {
      sub_1BD038CD0(*(v6 + 56) + 32 * v7, v13);

      goto LABEL_7;
    }
  }

  memset(v13, 0, sizeof(v13));
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FA0);
  v10 = swift_dynamicCast();

  if (v10)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD186F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t *a4, uint64_t *a5)
{
  v7 = a3(a1, *(a2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root));
  if (!v7)
  {
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  v8 = v7;
  v9 = *a4;
  v10 = *a5;
  swift_beginAccess();
  v11 = *(v8 + 40);
  if (!*(v11 + 16))
  {
    goto LABEL_6;
  }

  sub_1BE048C84();
  sub_1BE048C84();
  v12 = sub_1BD148F70(v9, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {

LABEL_6:
    memset(v19, 0, sizeof(v19));
    goto LABEL_7;
  }

  sub_1BD038CD0(*(v11 + 56) + 32 * v12, v19);

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
  v15 = swift_dynamicCast();

  if (v15)
  {
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1BD1870D8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v5 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = sub_1BD186B8C(v5, v6, a4);
      swift_unknownObjectRelease();
      return v7 & 1;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v8)
    {
      if (qword_1EBD36C58 != -1)
      {
        swift_once();
      }

      v7 = byte_1EBDAB1E8;
      sub_1BE048C84();
      sub_1BE048C84();
      return v7 & 1;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v10 = qword_1EBD48AC8;
  v11 = off_1EBD48AD0;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v10, v11);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187368@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X3>, uint64_t a3@<X8>)
{
  v16 = a1;
  v5 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      sub_1BD186790(v5, v6, a2, &v16);
      result = swift_unknownObjectRelease();
      v8 = v19;
      v9 = v18;
      v10 = v17;
      v11 = v16;
LABEL_10:
      *a3 = v11;
      *(a3 + 8) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v8;
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v12 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v12)
    {
      if (qword_1EBD36F90 != -1)
      {
        swift_once();
      }

      v11 = byte_1EBDAB6E8;
      v15 = *&qword_1EBDAB6F0;
      v9 = qword_1EBDAB700;
      v8 = byte_1EBDAB708;
      sub_1BE048C84();
      sub_1BE048C84();
      result = sub_1BE048C84();
      v10 = v15;
      goto LABEL_10;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v13 = qword_1EBD53DE0;
  v14 = off_1EBD53DE8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v13, v14);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD18760C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t *a5, uint64_t *a6)
{
  v9 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = sub_1BD186F00(v9, v10, a4, a5, a6);
LABEL_8:
      swift_unknownObjectRelease();
      return v11 & 1;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    if (swift_dynamicCastClass())
    {
      v11 = 0;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v13 = *a5;
  v14 = *a6;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v13, v14);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187848(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = sub_1BD186D80(v1, v2);
LABEL_8:
      swift_unknownObjectRelease();
      return v3;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    if (swift_dynamicCastClass())
    {
      v3 = 0;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v5 = qword_1EBD46AB0;
  v6 = off_1EBD46AB8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v5, v6);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v5 = a1;
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = sub_1BD1869B4(v5, v6, a4);
      swift_unknownObjectRelease();
      return v7;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v8)
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v7 = qword_1EBDAAE78;
      sub_1BE048C84();
      return v7;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v10 = qword_1EBD3D980;
  v11 = off_1EBD3D988;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v10, v11);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187C30(uint64_t a1)
{
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = sub_1BD1869B4(a1, v2, sub_1BD12EFDC);
      swift_unknownObjectRelease();
      return v3;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v4 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v4)
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v3 = qword_1EBDAAE78;
      sub_1BE048C84();
      return v3;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v6 = qword_1EBD3D980;
  v7 = off_1EBD3D988;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v6, v7);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187DFC(uint64_t a1)
{
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = sub_1BD186F00(a1, v2, sub_1BD12EFDC, &qword_1EBD443A0, &off_1EBD443A8);
LABEL_8:
      swift_unknownObjectRelease();
      return v3 & 1;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    if (swift_dynamicCastClass())
    {
      v3 = 0;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v5 = qword_1EBD443A0;
  v6 = off_1EBD443A8;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v5, v6);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD187F94(uint64_t a1)
{
  sub_1BE048964();
  swift_getAtKeyPath();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for UIFlowManager();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = sub_1BD1869B4(a1, v2, sub_1BD12EFDC);
      swift_unknownObjectRelease();
      return v3;
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for ExtractedUIFlowItem();
    v4 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v4)
    {
      if (qword_1EBD36B50 != -1)
      {
        swift_once();
      }

      v3 = qword_1EBDAAE78;
      sub_1BE048C84();
      return v3;
    }
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000041, 0x80000001BE11BB80);
  v6 = qword_1EBD3D980;
  v7 = off_1EBD3D988;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v6, v7);

  result = sub_1BE053994();
  __break(1u);
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD188394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BD1883DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD188458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v21 - v11;
  result = [*(*(v0 + 8) + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (result)
  {
    v14 = result;
    v15 = [result productTimeZone];

    if (v15)
    {
      sub_1BE04B394();

      v16 = sub_1BE04B3B4();
      (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    }

    else
    {
      v16 = sub_1BE04B3B4();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    }

    sub_1BD196DA8(v9, v12);
    v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1BD0DE19C(v12, v5, &unk_1EBD3D260);
    sub_1BE04B3B4();
    v18 = *(v16 - 8);
    v19 = 0;
    if ((*(v18 + 48))(v5, 1, v16) != 1)
    {
      v19 = sub_1BE04B374();
      (*(v18 + 8))(v5, v16);
    }

    [v17 setTimeZone_];

    v20 = sub_1BE052404();
    [v17 setDateFormat_];

    sub_1BD0DE53C(v12, &unk_1EBD3D260);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD18872C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = sub_1BE04FB94();
  v31 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5C8);
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v6);
  v8 = &v30 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5D0);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5D8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5E0);
  MEMORY[0x1EEE9AC00](v33, v16);
  v18 = &v30 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v38 == 1)
  {
    *v18 = sub_1BE04F7B4();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B608);
    sub_1BD188D1C(&v18[*(v21 + 44)]);
    sub_1BD0DE19C(v18, v15, &qword_1EBD3B5E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3B600, &qword_1EBD3B5E0);
    v22 = sub_1BD0DE4F4(&qword_1EBD3B5F8, &qword_1EBD3B5C8);
    v38 = v34;
    v39 = v36;
    v40 = v22;
    v41 = MEMORY[0x1E697C750];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v18, &qword_1EBD3B5E0);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v30 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B5E8);
    sub_1BD0DE4F4(&qword_1EBD3B5F0, &qword_1EBD3B5E8);
    sub_1BE0504E4();
    sub_1BE04FB84();
    v24 = sub_1BD0DE4F4(&qword_1EBD3B5F8, &qword_1EBD3B5C8);
    v25 = MEMORY[0x1E697C750];
    v26 = v34;
    v27 = v36;
    sub_1BE051144();
    (*(v31 + 8))(v5, v27);
    (*(v30 + 8))(v8, v26);
    v28 = v32;
    v29 = v35;
    (*(v32 + 16))(v15, v11, v35);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3B600, &qword_1EBD3B5E0);
    v38 = v26;
    v39 = v27;
    v40 = v24;
    v41 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v28 + 8))(v11, v29);
  }
}

uint64_t sub_1BD188D1C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABE0);
  v2 = v1 - 8;
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v37[-v8];
  sub_1BE04E4F4();
  v10 = &v9[*(v2 + 44)];
  v39 = v9;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
  v12 = *MEMORY[0x1E697DC10];
  v13 = sub_1BE04E364();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v47 = v53;
  v48 = v51;
  v45 = v56;
  v46 = v55;
  v59 = 1;
  v58 = v52;
  v57 = v54;
  sub_1BE051494();
  v44 = sub_1BE050564();
  v42 = v14;
  v40 = v15;
  v43 = v16;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE051494();
  v17 = sub_1BE050564();
  v19 = v18;
  v38 = v20;
  v22 = v21;

  v41 = v6;
  sub_1BD0DE19C(v9, v6, &qword_1EBD3ABE0);
  v23 = v59;
  LOBYTE(v9) = v58;
  LOBYTE(v10) = v57;
  LOBYTE(v11) = v40 & 1;
  LOBYTE(v50) = v40 & 1;
  v24 = v6;
  v25 = v49;
  sub_1BD0DE19C(v24, v49, &qword_1EBD3ABE0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B610);
  v27 = v25 + v26[12];
  *v27 = 0;
  *(v27 + 8) = v23;
  v28 = v47;
  *(v27 + 16) = v48;
  *(v27 + 24) = v9;
  *(v27 + 32) = v28;
  *(v27 + 40) = v10;
  v29 = v45;
  *(v27 + 48) = v46;
  *(v27 + 56) = v29;
  v30 = v25 + v26[16];
  v31 = v25;
  v32 = v43;
  v33 = v44;
  v34 = v42;
  *v30 = v44;
  *(v30 + 8) = v34;
  *(v30 + 16) = v11;
  *(v30 + 24) = v32;
  v35 = v31 + v26[20];
  *v35 = v17;
  *(v35 + 8) = v19;
  LOBYTE(v10) = v38 & 1;
  *(v35 + 16) = v38 & 1;
  *(v35 + 24) = v22;
  sub_1BD0D7F18(v33, v34, v11);
  sub_1BE048C84();
  sub_1BD0D7F18(v17, v19, v10);
  sub_1BE048C84();
  sub_1BD0DE53C(v39, &qword_1EBD3ABE0);
  sub_1BD0DDF10(v17, v19, v10);

  sub_1BD0DDF10(v33, v34, v50);

  return sub_1BD0DE53C(v41, &qword_1EBD3ABE0);
}

uint64_t sub_1BD1890FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B618);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v3);
  v97 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B620);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v108 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v114 = &v94 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B628);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v11);
  v96 = &v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B630);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v107 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v116 = &v94 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B638);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v19);
  v95 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B640);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v113 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v117 = &v94 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B648);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v94 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B650);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v115 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v94 - v37;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B658);
  v103 = *(v104 - 8);
  v40 = MEMORY[0x1EEE9AC00](v104, v39);
  v112 = &v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v94 - v43;
  v119 = xmmword_1BE0BC6C0;
  v120 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v118 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660);
  v111 = v44;
  sub_1BE051A24();
  v46 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v46;
  sub_1BE04D8B4();

  v47 = *(v119 + 16);

  if (v47)
  {
    *&v119 = 0xD00000000000002ALL;
    *(&v119 + 1) = 0x80000001BE11BCC0;
    v120 = 0;
    v50 = v45;
    v121 = v45;
    MEMORY[0x1EEE9AC00](v48, v49);
    v51 = a1;
    *(&v94 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6C8);
    sub_1BD1966F4();
    sub_1BE051A24();
    (*(v28 + 32))(v38, v31, v27);
    v52 = 0;
  }

  else
  {
    v50 = v45;
    v51 = a1;
    v52 = 1;
  }

  v53 = *(v28 + 56);
  v54 = 1;
  v110 = v38;
  v53(v38, v52, 1, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v55 = *(v119 + 16);

  v58 = v117;
  if (v55)
  {
    *&v119 = 0xD000000000000024;
    *(&v119 + 1) = 0x80000001BE11BC90;
    v120 = 0;
    v59 = v50;
    v121 = v50;
    MEMORY[0x1EEE9AC00](v56, v57);
    v60 = v51;
    *(&v94 - 2) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6A8);
    sub_1BD19663C();
    v61 = v95;
    sub_1BE051A24();
    v58 = v117;
    v62 = v99;
    v63 = v61;
    v64 = v100;
    (*(v99 + 32))(v117, v63, v100);
    v54 = 0;
    v65 = v116;
  }

  else
  {
    v60 = v51;
    v65 = v116;
    v59 = v50;
    v64 = v100;
    v62 = v99;
  }

  v66 = 1;
  (*(v62 + 56))(v58, v54, 1, v64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v67 = *(v119 + 16);

  if (v67)
  {
    *&v119 = 0xD00000000000002CLL;
    *(&v119 + 1) = 0x80000001BE11BC60;
    v120 = 0;
    v121 = v59;
    MEMORY[0x1EEE9AC00](v68, v69);
    *(&v94 - 2) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B688);
    sub_1BD196584();
    v70 = v96;
    sub_1BE051A24();
    v71 = v101;
    v72 = v102;
    (*(v101 + 32))(v65, v70, v102);
    v66 = 0;
  }

  else
  {
    v72 = v102;
    v71 = v101;
  }

  (*(v71 + 56))(v65, v66, 1, v72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v73 = *(v119 + 16);

  if (v73 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v76 = *(v119 + 16), v74 = , v76))
  {
    *&v119 = 0xD000000000000010;
    *(&v119 + 1) = 0x80000001BE11BC40;
    v120 = 0;
    v121 = v59;
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v94 - 2) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B678);
    sub_1BD0DE4F4(&qword_1EBD3B680, &qword_1EBD3B678);
    v77 = v97;
    sub_1BE051A24();
    v78 = v105;
    v79 = v114;
    v80 = v77;
    v81 = v106;
    (*(v105 + 32))(v114, v80, v106);
    v82 = 0;
  }

  else
  {
    v82 = 1;
    v79 = v114;
    v81 = v106;
    v78 = v105;
  }

  (*(v78 + 56))(v79, v82, 1, v81);
  v83 = v103;
  v84 = *(v103 + 16);
  v85 = v112;
  v86 = v104;
  v84(v112, v111, v104);
  sub_1BD0DE19C(v110, v115, &qword_1EBD3B650);
  v87 = v113;
  sub_1BD0DE19C(v117, v113, &qword_1EBD3B640);
  v88 = v107;
  sub_1BD0DE19C(v116, v107, &qword_1EBD3B630);
  v89 = v108;
  sub_1BD0DE19C(v79, v108, &qword_1EBD3B620);
  v90 = v109;
  v84(v109, v85, v86);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B670);
  sub_1BD0DE19C(v115, &v90[v91[12]], &qword_1EBD3B650);
  sub_1BD0DE19C(v87, &v90[v91[16]], &qword_1EBD3B640);
  sub_1BD0DE19C(v88, &v90[v91[20]], &qword_1EBD3B630);
  sub_1BD0DE19C(v89, &v90[v91[24]], &qword_1EBD3B620);
  sub_1BD0DE53C(v114, &qword_1EBD3B620);
  sub_1BD0DE53C(v116, &qword_1EBD3B630);
  sub_1BD0DE53C(v117, &qword_1EBD3B640);
  sub_1BD0DE53C(v110, &qword_1EBD3B650);
  v92 = *(v83 + 8);
  v92(v111, v86);
  sub_1BD0DE53C(v89, &qword_1EBD3B620);
  sub_1BD0DE53C(v88, &qword_1EBD3B630);
  sub_1BD0DE53C(v113, &qword_1EBD3B640);
  sub_1BD0DE53C(v115, &qword_1EBD3B650);
  return (v92)(v112, v86);
}

id sub_1BD189F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [*(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (result)
  {
    v4 = result;
    v5 = [result accountSummary];

    v6 = [v5 currentBalance];
    if (!v6)
    {
      sub_1BD1973C4();
      v6 = sub_1BE053054();
    }

    [v6 decimalValue];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v7 = MEMORY[0x1BFB40440](v28, v29, v30, v28, v29, v30);
    sub_1BE053834();

    v8 = [v6 description];
    v9 = sub_1BE052434();
    v11 = v10;

    MEMORY[0x1BFB3F610](v9, v11);
    v12 = v7;

    sub_1BE053834();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v13 = sub_1BE053314();
    MEMORY[0x1BFB3F610](v13);

    v27 = v6;
    if (v7)
    {
      sub_1BE051464();
    }

    else
    {
      sub_1BE0513B4();
    }

    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1BE050564();
    v17 = v16;
    v19 = v18;

    if (v12)
    {
      sub_1BE050394();
    }

    else
    {
      sub_1BE050364();
    }

    v20 = sub_1BE050544();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_1BD0DDF10(v15, v17, v19 & 1);

    sub_1BD0D7F18(0xD000000000000012, 0x80000001BE11BFF0, 0);
    sub_1BE048C84();
    sub_1BD0D7F18(v20, v22, v24 & 1);
    sub_1BE048C84();

    *a2 = 0xD000000000000012;
    *(a2 + 8) = 0x80000001BE11BFF0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v14;
    *(a2 + 32) = v20;
    *(a2 + 40) = v22;
    *(a2 + 48) = v24 & 1;
    *(a2 + 56) = v26;
    sub_1BD0DDF10(v20, v22, v24 & 1);

    sub_1BD0DDF10(0xD000000000000012, 0x80000001BE11BFF0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD18A2F4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6[9] = v6[0];
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_1BD1967C8(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E8);
  sub_1BE04AF64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E0);
  sub_1BD0DE4F4(&qword_1EBD3B6F0, &qword_1EBD3B6E8);
  sub_1BD0DE4F4(&qword_1EBD3B6D8, &qword_1EBD3B6E0);
  sub_1BD19717C(&qword_1EBD3B6F8, type metadata accessor for AccountDebugTransactionGroup);
  return sub_1BE0519D4();
}

uint64_t sub_1BD18A4E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v207 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B700);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v231 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v243 = &v200 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v230 = &v200 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v206 = &v200 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v242 = &v200 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v205 = &v200 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v241 = &v200 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v204 = &v200 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v240 = &v200 - v29;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B708);
  v214 = *(v202 - 1);
  MEMORY[0x1EEE9AC00](v202, v30);
  v213 = &v200 - v31;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B710);
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212, v32);
  v208 = &v200 - v33;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B718);
  MEMORY[0x1EEE9AC00](v210, v34);
  v209 = &v200 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B720);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v229 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v228 = &v200 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v203 = &v200 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v239 = &v200 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v232 = &v200 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v238 = &v200 - v53;
  v54 = sub_1BE04FB94();
  v55 = *(v54 - 8);
  v248 = v54;
  v249 = v55;
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = &v200 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B728);
  v247 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v200 - v61;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B730);
  v246 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236, v63);
  v65 = &v200 - v64;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B738);
  MEMORY[0x1EEE9AC00](v235, v66);
  v234 = &v200 - v67;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B740);
  v226 = *(v227 - 8);
  v69 = MEMORY[0x1EEE9AC00](v227, v68);
  v225 = &v200 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69, v71);
  v237 = &v200 - v72;
  v73 = sub_1BD188458();
  v74 = sub_1BE04AE64();
  v75 = [v73 stringFromDate_];

  v76 = sub_1BE052434();
  v78 = v77;

  v258 = 0;
  v259 = 0xE000000000000000;
  sub_1BE053834();

  v258 = v76;
  v259 = v78;
  MEMORY[0x1BFB3F610](10272, 0xE200000000000000);
  v250 = type metadata accessor for AccountDebugTransactionGroup(0);
  v262 = *(a1 + v250[5]);
  v79 = sub_1BE053B24();
  MEMORY[0x1BFB3F610](v79);

  MEMORY[0x1BFB3F610](0x6361736E61727420, 0xEE0029736E6F6974);
  v80 = v258;
  v81 = v259;
  v254 = v258;
  v255 = v259;
  v251 = a1;
  v256 = a1;
  v257 = v233;
  v252 = a1;
  v253 = v233;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B748);
  v83 = sub_1BD196844();
  v221 = v82;
  v220 = v83;
  sub_1BE0504E4();
  sub_1BE04FB84();
  v84 = sub_1BD0DE4F4(&qword_1EBD3B778, &qword_1EBD3B728);
  v85 = MEMORY[0x1E697C750];
  v86 = v65;
  v87 = v58;
  v88 = v59;
  v89 = v248;
  sub_1BE051144();
  v90 = v249[1];
  v244 = v87;
  ++v249;
  v245 = v90;
  v90(v87, v89);
  v91 = *(v247 + 8);
  v223 = v62;
  v247 += 8;
  v218 = v91;
  v91(v62, v88);
  v262 = v80;
  v263 = v81;
  v224 = v88;
  v258 = v88;
  v259 = v89;
  v219 = v84;
  v260 = v84;
  v261 = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_1BD0DDEBC();
  v94 = MEMORY[0x1E69E6158];
  v95 = v236;
  sub_1BE050B74();
  v96 = *(v246 + 8);
  v222 = v86;
  v246 += 8;
  v216 = v96;
  v96(v86, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B780);
  sub_1BD0DE4F4(&qword_1EBD3B788, &qword_1EBD3B780);
  v258 = v95;
  v259 = v94;
  v217 = OpaqueTypeConformance2;
  v260 = OpaqueTypeConformance2;
  v261 = v93;
  v215 = swift_getOpaqueTypeConformance2();
  sub_1BE04E8B4();

  if (*(*(v251 + v250[10]) + 16))
  {
    v201 = &v200;
    v99 = MEMORY[0x1EEE9AC00](v97, v98);
    v200 = &v200 - 6;
    *(&v200 - 4) = v100;
    *(&v200 - 3) = 0xD00000000000001FLL;
    *(&v200 - 2) = 0x80000001BE11BCF0;
    MEMORY[0x1EEE9AC00](v99, v101);
    *(&v200 - 2) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7A8);
    sub_1BD196A64();
    v103 = v213;
    sub_1BE0504E4();
    v104 = v244;
    sub_1BE04FB84();
    v105 = sub_1BD0DE4F4(&qword_1EBD3B7B8, &qword_1EBD3B708);
    v106 = v208;
    v107 = v202;
    v108 = v248;
    v109 = MEMORY[0x1E697C750];
    sub_1BE051144();
    v245(v104, v108);
    (*(v214 + 8))(v103, v107);
    v262 = 0xD00000000000001FLL;
    v263 = 0x80000001BE11BCF0;
    v258 = v107;
    v259 = v108;
    v260 = v105;
    v261 = v109;
    v110 = swift_getOpaqueTypeConformance2();
    v111 = v212;
    v112 = MEMORY[0x1E69E6158];
    sub_1BE050B74();
    (*(v211 + 8))(v106, v111);
    v258 = v111;
    v259 = v112;
    v260 = v110;
    v261 = v93;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E8B4();
    v113 = 0;
  }

  else
  {
    v107 = v202;
    v113 = 1;
  }

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B790);
  v115 = 1;
  v116 = v232;
  (*(*(v114 - 8) + 56))(v232, v113, 1, v114);
  v117 = sub_1BD0DE204(v116, v238, &qword_1EBD3B720);
  v119 = *(*(v251 + v250[11]) + 16);
  v232 = v93;
  if (v119)
  {
    v202 = &v200;
    v200 = 0x80000001BE11BD10;
    v120 = MEMORY[0x1EEE9AC00](v117, v118);
    v201 = &v200 - 6;
    *(&v200 - 4) = v121;
    *(&v200 - 3) = 0xD000000000000020;
    *(&v200 - 2) = v122;
    MEMORY[0x1EEE9AC00](v120, v123);
    *(&v200 - 2) = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7A8);
    sub_1BD196A64();
    v125 = v213;
    sub_1BE0504E4();
    v126 = v244;
    sub_1BE04FB84();
    v127 = sub_1BD0DE4F4(&qword_1EBD3B7B8, &qword_1EBD3B708);
    v128 = v208;
    v129 = v248;
    v130 = MEMORY[0x1E697C750];
    sub_1BE051144();
    v245(v126, v129);
    (*(v214 + 8))(v125, v107);
    v262 = 0xD000000000000020;
    v263 = v200;
    v258 = v107;
    v259 = v129;
    v260 = v127;
    v261 = v130;
    v131 = swift_getOpaqueTypeConformance2();
    v132 = v212;
    v133 = MEMORY[0x1E69E6158];
    v134 = v232;
    sub_1BE050B74();
    (*(v211 + 8))(v128, v132);
    v258 = v132;
    v259 = v133;
    v260 = v131;
    v261 = v134;
    swift_getOpaqueTypeConformance2();
    v135 = v203;
    sub_1BE04E8B4();
    v115 = 0;
  }

  else
  {
    v135 = v203;
  }

  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B790);
  v137 = 1;
  (*(*(v136 - 8) + 56))(v135, v115, 1, v136);
  v138 = sub_1BD0DE204(v135, v239, &qword_1EBD3B720);
  if (*(*(v251 + v250[16]) + 16))
  {
    v140 = MEMORY[0x1EEE9AC00](v138, v139);
    *(&v200 - 4) = v141;
    *(&v200 - 3) = 0xD000000000000023;
    *(&v200 - 2) = 0x80000001BE11BD40;
    MEMORY[0x1EEE9AC00](v140, v142);
    *(&v200 - 2) = v143;
    *(&v200 - 1) = v233;
    v144 = v223;
    sub_1BE0504E4();
    v145 = v244;
    sub_1BE04FB84();
    v146 = v222;
    v147 = v224;
    v148 = v248;
    sub_1BE051144();
    v245(v145, v148);
    v218(v144, v147);
    v258 = 0xD000000000000023;
    v259 = 0x80000001BE11BD40;
    v149 = v236;
    sub_1BE050B74();
    v216(v146, v149);
    v150 = v204;
    sub_1BE04E8B4();
    v137 = 0;
  }

  else
  {
    v150 = v204;
  }

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B798);
  v152 = 1;
  (*(*(v151 - 8) + 56))(v150, v137, 1, v151);
  v153 = sub_1BD0DE204(v150, v240, &qword_1EBD3B700);
  if (*(*(v251 + v250[15]) + 16))
  {
    v155 = MEMORY[0x1EEE9AC00](v153, v154);
    *(&v200 - 4) = v156;
    *(&v200 - 3) = 0xD00000000000002DLL;
    *(&v200 - 2) = 0x80000001BE11BD70;
    MEMORY[0x1EEE9AC00](v155, v157);
    *(&v200 - 2) = v158;
    *(&v200 - 1) = v233;
    v159 = v223;
    sub_1BE0504E4();
    v160 = v244;
    sub_1BE04FB84();
    v161 = v222;
    v162 = v224;
    v163 = v248;
    sub_1BE051144();
    v245(v160, v163);
    v218(v159, v162);
    v258 = 0xD00000000000002DLL;
    v259 = 0x80000001BE11BD70;
    v164 = v236;
    sub_1BE050B74();
    v216(v161, v164);
    v165 = v205;
    sub_1BE04E8B4();
    v152 = 0;
  }

  else
  {
    v165 = v205;
  }

  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B798);
  v167 = 1;
  (*(*(v166 - 8) + 56))(v165, v152, 1, v166);
  v168 = sub_1BD0DE204(v165, v241, &qword_1EBD3B700);
  if (*(*(v251 + v250[18]) + 16))
  {
    v249 = &v200;
    v170 = MEMORY[0x1EEE9AC00](v168, v169);
    *(&v200 - 4) = v171;
    *(&v200 - 3) = 0xD00000000000001FLL;
    *(&v200 - 2) = 0x80000001BE11BDA0;
    MEMORY[0x1EEE9AC00](v170, v172);
    *(&v200 - 2) = v173;
    *(&v200 - 1) = v233;
    v174 = v223;
    sub_1BE0504E4();
    v175 = v244;
    sub_1BE04FB84();
    v176 = v222;
    v177 = v224;
    v178 = v248;
    sub_1BE051144();
    v245(v175, v178);
    v218(v174, v177);
    v258 = 0xD00000000000001FLL;
    v259 = 0x80000001BE11BDA0;
    v179 = v236;
    sub_1BE050B74();
    v216(v176, v179);
    v180 = v206;
    sub_1BE04E8B4();
    v167 = 0;
  }

  else
  {
    v180 = v206;
  }

  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B798);
  (*(*(v181 - 8) + 56))(v180, v167, 1, v181);
  sub_1BD0DE204(v180, v242, &qword_1EBD3B700);
  v182 = *(v251 + v250[17]);
  if (*(v182 + 16))
  {
    v258 = 0;
    v259 = 0xE000000000000000;
    sub_1BE053834();

    v258 = 0xD00000000000001BLL;
    v259 = 0x80000001BE11BDC0;
    v183 = MEMORY[0x1BFB3F7F0](v182, MEMORY[0x1E69E6158]);
    MEMORY[0x1BFB3F610](v183);

    v251 = v258;
    v249 = v259;
    sub_1BE048C84();
    v250 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v250 = 0;
    v251 = 0;
    v249 = 0;
  }

  v184 = *(v226 + 16);
  v185 = v225;
  v186 = v227;
  v184(v225, v237, v227);
  v187 = v228;
  sub_1BD0DE19C(v238, v228, &qword_1EBD3B720);
  v188 = v229;
  sub_1BD0DE19C(v239, v229, &qword_1EBD3B720);
  v189 = v230;
  sub_1BD0DE19C(v240, v230, &qword_1EBD3B700);
  sub_1BD0DE19C(v241, v243, &qword_1EBD3B700);
  sub_1BD0DE19C(v242, v231, &qword_1EBD3B700);
  v190 = v207;
  v184(v207, v185, v186);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B7A0);
  sub_1BD0DE19C(v187, &v190[v191[12]], &qword_1EBD3B720);
  sub_1BD0DE19C(v188, &v190[v191[16]], &qword_1EBD3B720);
  sub_1BD0DE19C(v189, &v190[v191[20]], &qword_1EBD3B700);
  sub_1BD0DE19C(v243, &v190[v191[24]], &qword_1EBD3B700);
  v192 = v231;
  sub_1BD0DE19C(v231, &v190[v191[28]], &qword_1EBD3B700);
  v193 = &v190[v191[32]];
  v195 = v250;
  v194 = v251;
  v196 = v249;
  sub_1BD1969AC(v251, v249, 0, v250);
  sub_1BD1969F0(v194, v196, 0, v195);
  *v193 = v194;
  v193[1] = v196;
  v193[2] = 0;
  v193[3] = v195;
  sub_1BD0DE53C(v242, &qword_1EBD3B700);
  sub_1BD0DE53C(v241, &qword_1EBD3B700);
  sub_1BD0DE53C(v240, &qword_1EBD3B700);
  sub_1BD0DE53C(v239, &qword_1EBD3B720);
  sub_1BD0DE53C(v238, &qword_1EBD3B720);
  v197 = *(v226 + 8);
  v198 = v227;
  v197(v237, v227);
  sub_1BD1969F0(v194, v196, 0, v195);
  sub_1BD0DE53C(v192, &qword_1EBD3B700);
  sub_1BD0DE53C(v243, &qword_1EBD3B700);
  sub_1BD0DE53C(v230, &qword_1EBD3B700);
  sub_1BD0DE53C(v229, &qword_1EBD3B720);
  sub_1BD0DE53C(v228, &qword_1EBD3B720);
  return (v197)(v225, v198);
}