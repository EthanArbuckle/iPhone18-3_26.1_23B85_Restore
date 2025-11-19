void sub_265CA071C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_265D586F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F0, &qword_265D5B678);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_265C97870(a1, v23 - v17, &qword_28003E2F0, &qword_265D5B678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_265D58960();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_265CA4BF4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_265CA09FC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_265D58330();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2E0, &qword_265D5B668);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_265C97870(a1, v23 - v17, &qword_28003E2E0, &qword_265D5B668);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_265D58960();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_265CA4BF4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265CA0CDC(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E280, &qword_265D5B608);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_265CA4AE8(v13, &qword_28003E280, &qword_265D5B608);
  }

  else
  {
    a3(v17);
    v22 = sub_265D58960();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_265CA4BF0, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_265CA0EF0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_265D58AC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_265C97870(a1, v23 - v17, &qword_28003E258, &unk_265D5B5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_265D58960();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_265CA4BF4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265CA11D0(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_265CA4AE8(v13, &qword_28003E258, &unk_265D5B5E0);
  }

  else
  {
    a3(v17);
    v22 = sub_265D58960();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_265CA4BF0, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_265CA13E4(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v27 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v28 = a1;
  if (a4)
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 1;
    v19 = a1;
    v27(&v28);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 1;
  }

  else
  {
    *&v29 = a2;
    *(&v29 + 1) = a3;
    swift_unknownObjectRetain();
    a5(&v28);
    v24 = sub_265D58960();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a8;

    v24(sub_265CA4560, v25);

    (*(v15 + 8))(v18, v14);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 0;
  }

  sub_265CA4010(v20, v21, v22, v23);
}

uint64_t sub_265CA15CC(uint64_t a1, void (*a2)(void **), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v22 = a4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (*(a1 + 40))
  {
    v23 = v8;
    LOBYTE(v24) = 1;
    v18 = v8;
    v22(&v23);
  }

  else
  {
    v23 = v8;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    swift_unknownObjectRetain();
    a2(&v23);
    v19 = sub_265D58960();
    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 24) = a5;

    v19(sub_265CA4BF4, v20);

    (*(v14 + 8))(v17, v13);
  }

  return sub_265CA4AE8(a1, &qword_28003E268, &qword_265D5B5F0);
}

void sub_265CA17AC(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v26 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v27 = a1;
  if (a4)
  {
    LOBYTE(v28) = 1;
    v19 = a1;
    v26(&v27);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 1;
  }

  else
  {
    v28 = a2;
    v29 = a3;
    swift_unknownObjectRetain();
    a5(&v27);
    v24 = sub_265D58960();
    v25 = swift_allocObject();
    *(v25 + 16) = v26;
    *(v25 + 24) = a8;

    v24(sub_265CA4BF4, v25);

    (*(v15 + 8))(v18, v14);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 0;
  }

  sub_265CA4010(v20, v21, v22, v23);
}

uint64_t sub_265CA1988(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_265D58AC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - v20);
  sub_265C97870(a1, &v28 - v20, &qword_28003E258, &unk_265D5B5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v32(v19);

    return sub_265CA4AE8(v19, &qword_28003E258, &unk_265D5B5E0);
  }

  else
  {
    (*(v11 + 32))(v14, v21, v10);
    v29(v14);
    v25 = v31;
    v26 = sub_265D58960();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 24) = v33;

    v26(sub_265CA4008, v27);

    (*(v30 + 8))(v9, v25);
    return (*(v11 + 8))(v14, v10);
  }
}

void sub_265CA1CA4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_265D58870();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_265C97870(a1, v23 - v17, &qword_28003E290, &qword_265D5B618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_265D58960();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_265CA4BF4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265CA1F84(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_265D599A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A0, &qword_265D5B628);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_265C97870(v32, v28 - v20, &qword_28003E2A0, &qword_265D5B628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_265CA4AE8(v8, &qword_28003E290, &qword_265D5B618);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_265D58960();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_265CA4008, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_265CA22D0(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D0, &unk_265D5D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_265CA4AE8(v13, &qword_28003E2D0, &unk_265D5D960);
  }

  else
  {
    a3(v17);
    v22 = sub_265D58960();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_265CA4008, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_265CA24E4(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C0, &qword_265D5B648);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_265CA4AE8(v13, &qword_28003E2C0, &qword_265D5B648);
  }

  else
  {
    a3(v17);
    v22 = sub_265D58960();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_265CA4008, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_265CA26F8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_265D58490();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D0, &unk_265D5D960);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - v20);
  sub_265C97870(a1, &v28 - v20, &qword_28003E2D0, &unk_265D5D960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v32(v19);

    return sub_265CA4AE8(v19, &qword_28003E2D0, &unk_265D5D960);
  }

  else
  {
    (*(v11 + 32))(v14, v21, v10);
    v29(v14);
    v25 = v31;
    v26 = sub_265D58960();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 24) = v33;

    v26(sub_265CA4BF0, v27);

    (*(v30 + 8))(v9, v25);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265CA2A14(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C0, &qword_265D5B648);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_265D58520();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B0, &qword_265D5B638);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_265C97870(v32, v28 - v20, &qword_28003E2B0, &qword_265D5B638);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_265CA4AE8(v8, &qword_28003E2C0, &qword_265D5B648);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_265D58960();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_265CA4BF0, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_265CA2D60(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_265D58520();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B0, &qword_265D5B638);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_265C97870(a1, v23 - v17, &qword_28003E2B0, &qword_265D5B638);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_265D58960();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_265CA4BF4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_265CA3040(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_265D588C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E280, &qword_265D5B608);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_265C97870(a1, v23 - v17, &qword_28003E280, &qword_265D5B608);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_265D58960();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_265CA4BF4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265CA3320(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E280, &qword_265D5B608);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_265D58870();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_265C97870(v32, v28 - v20, &qword_28003E290, &qword_265D5B618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_265CA4AE8(v8, &qword_28003E280, &qword_265D5B608);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_265D58960();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_265CA4008, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_265CA366C(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v21 = a1;
  if (a3)
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 1;
    v18 = a1;
    a6(&v21);
    sub_265CA45E8(a1, a2, 1);
  }

  else
  {
    *&v22 = a2;
    a4(&v21);
    v19 = sub_265D58960();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;

    v19(sub_265CA4B94, v20);

    (*(v14 + 8))(v17, v13);
  }
}

void sub_265CA3828(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E270, &qword_265D5B5F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21[-1] - v15;
  if (a2)
  {
    v21[0] = a1;
    v21[1] = 0;
    v22 = 1;
    v17 = a1;
    a5(v21);
    sub_265CA4470(a1, 1);
  }

  else
  {
    a3(v14);
    v18 = sub_265D58960();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_265CA465C, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_265CA3B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserIdentityProvider.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CA3B98(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_265C037E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_265CA3BB0(uint64_t *a1)
{
  v2 = *(*(sub_265D583A0() - 8) + 80);

  return sub_265C9E808(a1);
}

uint64_t sub_265CA3C90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265CA3F04(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_265CA3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265D58960();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_265CA3FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  return swift_unknownObjectRetain();
}

void sub_265CA4010(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

id sub_265CA4034()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t sub_265CA4068@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  return swift_unknownObjectRetain();
}

uint64_t sub_265CA4094@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MultiUserIdentityProvider_state;
  swift_beginAccess();
  return sub_265C9EAC4(v1 + v3, a1);
}

uint64_t sub_265CA4100(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265D4A408(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_11Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_265D583A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_265CA4470(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_265CA4494(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_265CA44E8(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = a1[1];
  v8 = *a1;
  v9[0] = v6;
  *(v9 + 9) = *(a1 + 25);
  return sub_265CA15CC(&v8, v2, v3, v4, v5);
}

uint64_t sub_265CA4564(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v6;
  v12 = v7;
  v3(v10);
  return v5(v10);
}

void sub_265CA45E8(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_265CA45F4(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 16);
  v7[0] = *result;
  v7[1] = v6;
  v8 = v4;
  v9 = v5;
  if (v2)
  {
    return v2(v7);
  }

  return result;
}

uint64_t sub_265CA465C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_265CA46E0(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

uint64_t sub_265CA4778(uint64_t a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  (*(v1 + 16))();
  return v5(a1);
}

uint64_t sub_265CA4808(__int128 *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v9 = *a1;
  v10 = v6;
  v11 = v7;
  v3(&v9);
  return v5(&v9);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265CA48D8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_265CA48E8()
{
  result = qword_28003E300;
  if (!qword_28003E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E300);
  }

  return result;
}

unint64_t sub_265CA493C()
{
  result = qword_28003E308;
  if (!qword_28003E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E308);
  }

  return result;
}

uint64_t sub_265CA4990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_38Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_265CA4A40()
{
  result = qword_28003E328;
  if (!qword_28003E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E328);
  }

  return result;
}

unint64_t sub_265CA4A94()
{
  result = qword_28003E330;
  if (!qword_28003E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E330);
  }

  return result;
}

uint64_t sub_265CA4AE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_265CA4B48(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_265CA4C0C(uint64_t *a1, int a2)
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

uint64_t sub_265CA4C54(uint64_t result, int a2, int a3)
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

uint64_t sub_265CA4CA4(void (*a1)(char *, char *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a3;
  v110 = a2;
  v117 = sub_265D58EB0();
  v108 = *(v117 - 8);
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v117);
  v116 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_265D59DE0();
  v111 = *(v118 - 8);
  v8 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](v118);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v112 = &v99 - v14;
  v122 = sub_265D58B10();
  ObjectType = *(v122 - 8);
  v15 = *(ObjectType + 64);
  v16 = MEMORY[0x28223BE20](v122);
  *&v101 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v113 = &v99 - v18;
  v19 = sub_265D58560();
  v121 = *(v19 - 1);
  v20 = *(v121 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v104 = &v99 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v120 = &v99 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v107 = &v99 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v99 - v33;
  v35 = sub_265D58200();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D580A0();
  v40 = (*(v36 + 48))(v34, 1, v35);
  v103 = a4;
  v114 = a1;
  if (v40 == 1)
  {
    sub_265CA4AE8(v34, &qword_28003E348, &qword_265D5B710);
    v41 = MEMORY[0x277D84F90];
    v42 = v121;
    v43 = v104;
  }

  else
  {
    v106 = v19;
    (*(v36 + 32))(v39, v34, v35);
    sub_265D58350();
    sub_265D580D0();
    sub_265D581F0();
    LOBYTE(v123[0]) = 1;
    sub_265D58540();
    v41 = sub_265D46798(0, 1, 1, MEMORY[0x277D84F90]);
    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_265D46798(v44 > 1, v45 + 1, 1, v41);
    }

    v19 = v106;
    v43 = v104;
    (*(v36 + 8))(v39, v35);
    v41[2] = v45 + 1;
    v42 = v121;
    (*(v121 + 32))(v41 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v45, v30, v19);
  }

  v46 = v112;
  sub_265D58100();
  v47 = v46;
  v48 = ObjectType;
  v49 = v46;
  v50 = v122;
  v51 = (*(ObjectType + 48))(v49, 1, v122);
  v52 = v105;
  v53 = v120;
  if (v51 == 1)
  {
    sub_265CA4AE8(v47, &qword_28003E340, &unk_265D5D0C0);
  }

  else
  {
    v54 = v47;
    v55 = v113;
    (*(v48 + 32))(v113, v54, v50);
    v56 = sub_265D58B00();
    if ((v56 & 0x100000000) != 0)
    {
      v100 = v41;
      if (v56 >= 2u)
      {
        sub_265D59610();
        v60 = v101;
        (*(v48 + 16))(v101, v113, v50);
        v61 = sub_265D59DD0();
        LODWORD(v114) = sub_265D5A080();
        v62 = v50;
        if (os_log_type_enabled(v61, v114))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v106 = v19;
          v65 = v64;
          v123[0] = v64;
          *v63 = 136315138;
          sub_265CA5AA4(&qword_28003E358, MEMORY[0x277D53B70]);
          v66 = v61;
          v67 = v62;
          v68 = sub_265D5A3B0();
          v70 = v69;
          v71 = *(v48 + 8);
          v71(v60, v67);
          v72 = sub_265CF4FFC(v68, v70, v123);
          v52 = v105;

          *(v63 + 4) = v72;
          v73 = v66;
          _os_log_impl(&dword_265C01000, v66, v114, "Session Adapter: Ignoring workout update because its state isn't active or paused %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          v74 = v65;
          v19 = v106;
          v43 = v104;
          MEMORY[0x266770CF0](v74, -1, -1);
          MEMORY[0x266770CF0](v63, -1, -1);

          (*(v111 + 8))(v109, v118);
          v71(v113, v67);
        }

        else
        {

          v75 = *(v48 + 8);
          v75(v60, v50);
          (*(v111 + 8))(v109, v118);
          v75(v113, v50);
        }

        v42 = v121;
        v41 = v100;
      }

      else
      {
        sub_265D58350();
        sub_265D580D0();
        sub_265D58AE0();
        LOBYTE(v123[0]) = 1;
        sub_265D58540();
        v41 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_265D46798(0, v41[2] + 1, 1, v41);
        }

        v42 = v121;
        v58 = v41[2];
        v57 = v41[3];
        v43 = v104;
        v52 = v105;
        v59 = ObjectType;
        if (v58 >= v57 >> 1)
        {
          v41 = sub_265D46798(v57 > 1, v58 + 1, 1, v41);
        }

        (*(v59 + 8))();
        v41[2] = v58 + 1;
        (*(v42 + 32))(v41 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v58, v107, v19);
      }
    }

    else
    {
      (*(v48 + 8))(v55, v50);
    }
  }

  v123[0] = v41;
  v100 = v41;

  sub_265CA59FC(v123);
  v76 = v123[0][2];
  if (v76)
  {
    v77 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v99 = v123[0];
    v78 = v123[0] + v77;
    ObjectType = swift_getObjectType();
    v81 = *(v42 + 16);
    v80 = v42 + 16;
    v79 = v81;
    v113 = *(v80 + 56);
    v111 += 8;
    LODWORD(v110) = *MEMORY[0x277D4E0D0];
    v82 = v108;
    v108 += 8;
    v109 = (v82 + 104);
    *&v83 = 136315138;
    v101 = v83;
    v112 = (v80 - 8);
    v107 = ((v80 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v121 = v80;
    v114 = v81;
    do
    {
      v122 = v76;
      v79(v53, v78, v19);
      sub_265D59610();
      v79(v43, v53, v19);
      v87 = sub_265D59DD0();
      v88 = v43;
      v89 = sub_265D5A080();
      if (os_log_type_enabled(v87, v89))
      {
        v90 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v123[0] = v106;
        *v90 = v101;
        v91 = v88;
        v92 = v102;
        v79(v102, v91, v19);
        v84 = *v112;
        (*v112)(v91, v19);
        sub_265CA5AA4(&qword_28003E350, MEMORY[0x277D52470]);
        v93 = sub_265D5A3B0();
        v95 = v94;
        v84(v92, v19);
        v96 = sub_265CF4FFC(v93, v95, v123);
        v52 = v105;

        *(v90 + 4) = v96;
        _os_log_impl(&dword_265C01000, v87, v89, "Session Adapter: Sending %s", v90, 0xCu);
        v97 = v106;
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        MEMORY[0x266770CF0](v97, -1, -1);
        MEMORY[0x266770CF0](v90, -1, -1);

        (*v111)(v52, v118);
        v43 = v104;
      }

      else
      {
        v84 = *v112;
        (*v112)(v88, v19);

        (*v111)(v52, v118);
        v43 = v88;
      }

      v86 = v116;
      v85 = v117;
      (*v109)(v116, v110, v117);
      v53 = v120;
      sub_265D58C70();
      (*v108)(v86, v85);
      v84(v53, v19);
      v79 = v114;
      v78 = &v113[v78];
      v76 = v122 - 1;
    }

    while (v122 != 1);
  }
}

uint64_t sub_265CA59FC(void **a1)
{
  v2 = *(sub_265D58560() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_265CA70F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_265CA5AEC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_265CA5AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265CA5AEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_265D5A3A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_265D58560();
        v6 = sub_265D59F40();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_265D58560() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_265CA5EB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_265CA5C18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_265CA5C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_265D58560();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v20;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v49;
      v26 = v47;
      v47(v49, v22, v8);
      v27 = v50;
      v26(v50, v24, v8);
      sub_265D58530();
      v29 = v28;
      sub_265D58530();
      v31 = v30;
      v32 = *v19;
      (*v19)(v27, v8);
      result = v32(v25, v8);
      if (v29 >= v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v20 = v41 + v37;
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v24, v34, v8);
      v24 += v43;
      v22 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265CA5EB8(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_265D58560();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v127 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v122 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v144 = &v122 - v17;
  result = MEMORY[0x28223BE20](v16);
  v143 = &v122 - v19;
  v135 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_265CA6EF4(a3);
    }

    v145 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *(result + 16 * a3);
        v119 = result;
        v120 = *(result + 16 * (a3 - 1) + 40);
        sub_265CA68C8(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_265CA6EF4(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_265CA6E68(a3 - 1);
        result = v145;
        a3 = *(v145 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v136 = v20;
      v129 = v6;
      v25 = v10[9];
      v5 = &(*v135)[v25 * v24];
      v132 = *v135;
      v26 = v132;
      v27 = v10[2];
      v28 = v143;
      v27(v143, &v132[v25 * v24], v9);
      v29 = &v26[v25 * v23];
      v30 = v144;
      v137 = v27;
      v27(v144, v29, v9);
      sub_265D58530();
      v32 = v31;
      sub_265D58530();
      v34 = v33;
      v35 = v23;
      v36 = v10[1];
      a3 = v141;
      v36(v30, v9);
      v133 = v36;
      result = (v36)(v28, v9);
      v123 = v35;
      v37 = v35 + 2;
      v139 = v25;
      v38 = &v132[v25 * (v35 + 2)];
      while (1)
      {
        v39 = v136;
        if (v136 == v37)
        {
          break;
        }

        a3 = v143;
        v40 = v137;
        v137(v143, v38, v9);
        v41 = v144;
        v40(v144, v5, v9);
        sub_265D58530();
        v43 = v42;
        sub_265D58530();
        v45 = v44;
        v46 = v133;
        (v133)(v41, v9);
        result = v46(a3, v9);
        v10 = v134;
        ++v37;
        v38 += v139;
        v5 += v139;
        if (v32 < v34 == v43 >= v45)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v47 = v128;
      v6 = v129;
      a4 = v124;
      v23 = v123;
      if (v32 < v34)
      {
        if (v39 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v39)
        {
          v48 = v39;
          a3 = v139 * (v39 - 1);
          v5 = v39 * v139;
          v136 = v39;
          v49 = v123 * v139;
          do
          {
            if (v23 != --v48)
            {
              v129 = v6;
              v50 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v51 = *v140;
              (*v140)(v127, &v50[v49], v9, v47);
              if (v49 < a3 || &v50[v49] >= &v50[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v51)(&v50[a3], v127, v9);
              v47 = v128;
              v6 = v129;
            }

            ++v23;
            a3 -= v139;
            v5 -= v139;
            v49 += v139;
          }

          while (v23 < v48);
          v10 = v134;
          a4 = v124;
          v23 = v123;
          v39 = v136;
        }
      }
    }

    v52 = v135[1];
    if (v39 < v52)
    {
      if (__OFSUB__(v39, v23))
      {
        goto LABEL_124;
      }

      if (v39 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v52)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v39 != v5)
        {
          break;
        }
      }
    }

    v5 = v39;
    if (v39 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v128;
    }

    else
    {
      result = sub_265CA6FEC(0, *(v128 + 2) + 1, 1, v128);
      v22 = result;
    }

    a3 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a3 + 1;
    if (a3 >= v53 >> 1)
    {
      result = sub_265CA6FEC((v53 > 1), a3 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a3];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a3 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_265CA68C8(&(*v135)[v10[9] * v95], &(*v135)[v10[9] * *&v22[16 * v5 + 32]], &(*v135)[v10[9] * v96], v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_265CA6EF4(v94);
        }

        if (a3 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a3];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v145 = v94;
        result = sub_265CA6E68(v5);
        v22 = v145;
        v54 = *(v145 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v135[1];
    v21 = v130;
    a4 = v124;
    if (v130 >= v20)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v98 = *v135;
  v99 = v10[9];
  v139 = v10[2];
  v100 = &v98[v99 * (v39 - 1)];
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = (v101 - v39);
  v137 = v98;
  v126 = v99;
  v104 = &v98[v39 * v99];
  v130 = v5;
LABEL_85:
  v136 = v39;
  v131 = v104;
  v132 = v103;
  v105 = v104;
  v133 = v100;
  while (1)
  {
    v106 = v143;
    v107 = v139;
    (v139)(v143, v105, v9);
    v108 = v144;
    v107(v144, v100, v9);
    sub_265D58530();
    v110 = v109;
    sub_265D58530();
    v112 = v111;
    v113 = *v141;
    (*v141)(v108, v9);
    v114 = v106;
    a3 = v9;
    result = v113(v114, v9);
    if (v110 >= v112)
    {
LABEL_84:
      v39 = v136 + 1;
      v100 = &v133[v126];
      v103 = v132 - 1;
      v5 = v130;
      v104 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v23 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v115 = *v140;
    v116 = v138;
    (*v140)(v138, v105, v9);
    swift_arrayInitWithTakeFrontToBack();
    v115(v100, v116, v9);
    v100 += v102;
    v105 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_265CA68C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_265D58560();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v66);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v64 = &v54 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v69 = a1;
  v68 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v19;
    if (v19 >= 1)
    {
      v36 = -v15;
      v58 = a4;
      v59 = (v8 + 16);
      v56 = (v8 + 8);
      v57 = a1;
      v37 = v35;
      v60 = -v15;
      do
      {
        v55 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v67 = v55;
            goto LABEL_58;
          }

          v41 = a3;
          v61 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v59;
          v45 = v64;
          v46 = v66;
          (*v59)(v64, v43, v66);
          v47 = v39;
          v48 = v65;
          (v44)(v65, v47, v46);
          sub_265D58530();
          v50 = v49;
          sub_265D58530();
          v52 = v51;
          v53 = *v56;
          (*v56)(v48, v46);
          v53(v45, v46);
          if (v50 < v52)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v57;
          }

          else
          {
            v39 = v63;
            a1 = v57;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v58;
          v36 = v60;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_57;
          }
        }

        a3 = v42;
        if (v41 < v62 || v42 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v57;
          v36 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v57;
          v36 = v60;
          v35 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v58);
    }

LABEL_57:
    v69 = a2;
    v67 = v35;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v18;
    v67 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v61 = a3;
      v62 = v8 + 16;
      v59 = (v8 + 8);
      v60 = v21;
      v22 = v65;
      do
      {
        v23 = a1;
        v24 = v64;
        v25 = a2;
        v26 = v66;
        v27 = a2;
        v28 = v60;
        (v60)(v64, v25, v66);
        v28(v22, a4, v26);
        sub_265D58530();
        v30 = v29;
        sub_265D58530();
        v32 = v31;
        v33 = *v59;
        (*v59)(v22, v26);
        v33(v24, v26);
        if (v30 >= v32)
        {
          v34 = v23;
          if (v23 < a4 || v23 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v23 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v27 + v15;
          v34 = v23;
          if (v23 < v27 || v23 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v34 + v15;
        v69 = a1;
      }

      while (a4 < v63 && a2 < v61);
    }
  }

LABEL_58:
  sub_265CA6F08(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_265CA6E68(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_265CA6EF4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_265CA6F08(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_265D58560();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_265CA6FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E360, qword_265D5B718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_265CA7108()
{
  v1 = sub_265D57E50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 40);
  if (!(v7 >> 6))
  {
    return 0xD000000000000011;
  }

  if (v7 >> 6 != 1)
  {
    return 0x6576697463616E69;
  }

  v8 = *v0;
  v14 = 0;
  v15 = 0xE000000000000000;
  v9 = v4;
  sub_265D5A200();

  v14 = 0xD000000000000014;
  v15 = 0x8000000265D60440;
  sub_265D59830();
  sub_265CA72EC();
  v10 = sub_265D5A3B0();
  MEMORY[0x26676FFC0](v10);

  (*(v2 + 8))(v6, v9);
  MEMORY[0x26676FFC0](0x737269467369202CLL, 0xEE00206E696F4A74);
  if (v7)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v7)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x26676FFC0](v11, v12);

  return v14;
}

unint64_t sub_265CA72EC()
{
  result = qword_28003E368;
  if (!qword_28003E368)
  {
    sub_265D57E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E368);
  }

  return result;
}

uint64_t sub_265CA7344(uint64_t a1, uint64_t a2)
{
  v3 = sub_265D59650();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_265CB5E54(&qword_2813B8FA8, MEMORY[0x277D4F998]), v9 = sub_265D59E60(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_265CB5E54(&qword_2813B8FA0, MEMORY[0x277D4F998]);
      v17 = sub_265D59E80();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_265CA755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_265D5A460();
  sub_265D59EF0();
  v7 = sub_265D5A4A0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_265D5A3C0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_265CA7654(uint64_t a1, uint64_t a2)
{
  v3 = sub_265D58330();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]), v9 = sub_265D59E60(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510]);
      v17 = sub_265D59E80();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_265CA786C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_265D5A460();
  sub_265D58140();
  sub_265D59EF0();

  v4 = sub_265D5A4A0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = sub_265D58140();
      v11 = v10;
      if (v9 == sub_265D58140() && v11 == v12)
      {
        break;
      }

      v14 = sub_265D5A3C0();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_265CA79BC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_265D5A140();
    v5 = v4;
    v6 = sub_265D5A1B0();
    v8 = v7;
    v9 = MEMORY[0x266770220](v3, v5, v6, v7);
    sub_265CB9728(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_265CB9728(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_265D5A120();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_265CB9368(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_265CB9728(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_265CA7AD8(uint64_t a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 72);
  if ((v7 & 0xC0) == 0x80 && ((v8 = vorrq_s8(*(a1 + 40), *(a1 + 56)), v9 = *&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *(a1 + 32), v7 == 128) ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF28, &qword_265D5B160);
    sub_265CB9320(&qword_2813B8F98, &unk_28003DF28, &qword_265D5B160);
    v15 = sub_265D59E10();

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *(a1 + 32) = v15;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    v21 = *(a1 + 72);
    *(a1 + 72) = 0;
    return sub_265CB90F8(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    sub_265D59610();
    v11 = sub_265D59DD0();
    v12 = sub_265D5A070();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_265C01000, v11, v12, "Link: Failed to activate because state was not inactive", v13, 2u);
      MEMORY[0x266770CF0](v13, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_265CA7D30(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CA7D90(v1);
  }

  return result;
}

uint64_t sub_265CA7D90(uint64_t a1)
{
  v2 = 0;
  v206[4] = *MEMORY[0x277D85DE8];
  v3 = sub_265D59900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v160 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3D0, &qword_265D5B8E8);
  v178 = *(v179 - 8);
  v7 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v177 = &v159 - v8;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3D8, &qword_265D5B8F0);
  v175 = *(v176 - 8);
  v9 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v159 - v10;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3E0, &qword_265D5B8F8);
  v172 = *(v173 - 8);
  v11 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v159 - v12;
  v170 = sub_265D593B0();
  v169 = *(v170 - 8);
  v13 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_265D59E20();
  v192 = *(v199 - 8);
  v15 = *(v192 + 64);
  MEMORY[0x28223BE20](v199);
  v198 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_265D59E40();
  v191 = *(v197 - 8);
  v17 = *(v191 + 64);
  MEMORY[0x28223BE20](v197);
  v196 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_265D59DE0();
  v187 = *(v188 - 8);
  v19 = *(v187 + 64);
  v20 = MEMORY[0x28223BE20](v188);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v180 = &v159 - v24;
  MEMORY[0x28223BE20](v23);
  *&v201 = &v159 - v25;
  v26 = sub_265D59D70();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_265D58330();
  v183 = *(v189 - 8);
  v31 = *(v183 + 64);
  v32 = MEMORY[0x28223BE20](v189);
  v167 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v166 = &v159 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v159 - v36;
  sub_265D598A0();
  v190 = v37;
  sub_265D59D60();
  (*(v27 + 8))(v30, v26);
  v38 = sub_265D597D0();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v186 = sub_265D597C0();
  v41 = [objc_allocWithZone(MEMORY[0x277D6EE98]) init];
  v42 = [v41 activeConversations];

  sub_265C932E0(0, &qword_28003E3E8, 0x277D6EE60);
  sub_265CB917C();
  v43 = sub_265D5A040();

  v45 = MEMORY[0x277D84FA0];
  v185 = a1;
  v162 = v3;
  v161 = v4;
  v181 = v22;
  if ((v43 & 0xC000000000000001) == 0)
  {
    v62 = *(v43 + 32);
    v200 = ((1 << v62) + 63) >> 6;
    if ((v62 & 0x3Fu) <= 0xD)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  aBlock = MEMORY[0x277D84FA0];
  sub_265D5A150();
  v46 = sub_265D5A1A0();
  if (v46)
  {
    v47 = MEMORY[0x277D84FA0];
    do
    {
      v202 = v46;
      swift_dynamicCast();
      v48 = [v203 state];
      v49 = v203;
      if (v48 == 3)
      {
        v50 = *(v47 + 16);
        if (*(v47 + 24) <= v50)
        {
          sub_265CB5E9C(v50 + 1);
        }

        v47 = aBlock;
        v51 = *(aBlock + 40);
        v43 = v49;
        v52 = sub_265D5A0C0();
        v53 = v47 + 56;
        v54 = -1 << *(v47 + 32);
        v55 = v52 & ~v54;
        v56 = v55 >> 6;
        if (((-1 << v55) & ~*(v47 + 56 + 8 * (v55 >> 6))) != 0)
        {
          v57 = __clz(__rbit64((-1 << v55) & ~*(v47 + 56 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v58 = 0;
          v59 = (63 - v54) >> 6;
          do
          {
            if (++v56 == v59 && (v58 & 1) != 0)
            {
              __break(1u);
              goto LABEL_56;
            }

            v60 = v56 == v59;
            if (v56 == v59)
            {
              v56 = 0;
            }

            v58 |= v60;
            v61 = *(v53 + 8 * v56);
          }

          while (v61 == -1);
          v57 = __clz(__rbit64(~v61)) + (v56 << 6);
        }

        *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
        *(*(v47 + 48) + 8 * v57) = v49;
        ++*(v47 + 16);
      }

      else
      {
      }

      v46 = sub_265D5A1A0();
    }

    while (v46);
  }

  else
  {
    v47 = v45;
  }

  while (1)
  {
LABEL_38:
    v76 = sub_265CA79BC(v47);

    if (v76)
    {
      v77 = [v76 localMember];
      v78 = v185;
      v79 = v201;
      if (v77)
      {
        v80 = v77;
        v81 = [v77 handle];

        v82 = [v81 value];
        v83 = sub_265D59EA0();
        v85 = v84;
      }

      else
      {
        v83 = 0;
        v85 = 0;
      }
    }

    else
    {
      v83 = 0;
      v85 = 0;
      v78 = v185;
      v79 = v201;
    }

    *&v201 = v2;
    v182 = v85;
    sub_265D59610();

    v86 = sub_265D59DD0();
    v87 = v182;
    v88 = v86;
    v89 = sub_265D5A080();

    v90 = os_log_type_enabled(v88, v89);
    v165 = v76;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v203 = v92;
      *v91 = 136315138;
      aBlock = v83;
      v205 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v93 = sub_265D5A0E0();
      v95 = sub_265CF4FFC(v93, v94, &v203);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_265C01000, v88, v89, "Link: Local address: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x266770CF0](v92, -1, -1);
      MEMORY[0x266770CF0](v91, -1, -1);
    }

    v164 = *(v187 + 8);
    v96 = v164(v79, v188);
    v97 = v184[12];
    MEMORY[0x28223BE20](v96);
    *(&v159 - 6) = v98;
    *(&v159 - 5) = v78;
    v99 = v186;
    *(&v159 - 4) = v190;
    *(&v159 - 3) = v99;
    *(&v159 - 2) = v83;
    *(&v159 - 1) = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3F8, &qword_265D5B900);
    v2 = v201;
    sub_265D58CA0();
    v200 = aBlock;
    v195 = *(aBlock + 16);
    if (!v195)
    {
      break;
    }

    v43 = 0;
    v194 = v200 + 32;
    v193 = v206;
    v192 += 8;
    v191 += 8;
    while (v43 < *(v200 + 16))
    {
      v100 = swift_allocObject();
      v201 = *(v194 + 16 * v43);
      *(v100 + 16) = v201;
      sub_265C932E0(0, &qword_2813B6CE0, 0x277D85C78);
      swift_retain_n();
      v101 = sub_265D5A090();
      v102 = swift_allocObject();
      *(v102 + 16) = sub_265CB9208;
      *(v102 + 24) = v100;
      v206[2] = sub_265CB9248;
      v206[3] = v102;
      aBlock = MEMORY[0x277D85DD0];
      v205 = 1107296256;
      v206[0] = sub_265D4BEAC;
      v206[1] = &block_descriptor_0;
      v103 = _Block_copy(&aBlock);

      v2 = v196;
      sub_265D59E30();
      aBlock = MEMORY[0x277D84F90];
      sub_265CB5E54(&qword_28003E400, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E408, &qword_265D5B908);
      sub_265CB9320(&qword_28003E410, &qword_28003E408, &qword_265D5B908);
      v105 = v198;
      v104 = v199;
      sub_265D5A110();
      MEMORY[0x266770160](0, v2, v105, v103);
      _Block_release(v103);

      (*v192)(v105, v104);
      (*v191)(v2, v197);
      if (v195 == ++v43)
      {
        goto LABEL_49;
      }
    }

LABEL_56:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_58:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

LABEL_21:
      v195 = &v159;
      MEMORY[0x28223BE20](v44);
      v64 = &v159 - ((v63 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v64, v63);
      v65 = 0;
      v66 = 0;
      v67 = 1 << *(v43 + 32);
      v68 = -1;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      v69 = v68 & *(v43 + 56);
      v70 = (v67 + 63) >> 6;
      while (v69)
      {
        v71 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
LABEL_31:
        v74 = v71 | (v66 << 6);
        if ([*(*(v43 + 48) + 8 * v74) state] == 3)
        {
          *&v64[(v74 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v74;
          if (__OFADD__(v65++, 1))
          {
            __break(1u);
LABEL_35:
            v47 = sub_265CB6BD8(v64, v200, v65, v43);
            goto LABEL_38;
          }
        }
      }

      v72 = v66;
      while (1)
      {
        v66 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        if (v66 >= v70)
        {
          goto LABEL_35;
        }

        v73 = *(v43 + 56 + 8 * v66);
        ++v72;
        if (v73)
        {
          v71 = __clz(__rbit64(v73));
          v69 = (v73 - 1) & v73;
          goto LABEL_31;
        }
      }
    }

    v158 = swift_slowAlloc();
    v47 = sub_265CB6B48(v158, v200, v43, sub_265CA9724);

    MEMORY[0x266770CF0](v158, -1, -1);
  }

LABEL_49:
  v163 = v83;

  v106 = v180;
  sub_265D59610();
  v107 = v183;
  v108 = *(v183 + 16);
  v109 = v166;
  v110 = v189;
  v108(v166, v190, v189);
  v111 = sub_265D59DD0();
  v112 = sub_265D5A080();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    aBlock = v114;
    *v113 = 136446210;
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
    v115 = sub_265D5A3B0();
    v117 = v116;
    (*(v107 + 8))(v109, v189);
    v118 = sub_265CF4FFC(v115, v117, &aBlock);

    *(v113 + 4) = v118;
    _os_log_impl(&dword_265C01000, v111, v112, "Link: Broadcasting new session created for: %{public}s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    v119 = v114;
    v110 = v189;
    MEMORY[0x266770CF0](v119, -1, -1);
    MEMORY[0x266770CF0](v113, -1, -1);

    v120 = v180;
  }

  else
  {

    (*(v107 + 8))(v109, v110);
    v120 = v106;
  }

  v164(v120, v188);
  v121 = v185;
  v122 = v176;
  v123 = v184;
  v125 = v184[10];
  v124 = v184[11];
  swift_getObjectType();
  v108(v167, v190, v110);
  v126 = v168;
  sub_265D593A0();
  v127 = v170;
  sub_265D58ED0();
  (*(v169 + 8))(v126, v127);
  swift_beginAccess();
  v128 = v123[13];
  v123[13] = MEMORY[0x277D84FA0];

  v129 = v171;
  sub_265D59890();
  v130 = swift_allocObject();
  swift_weakInit();
  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = v121;
  sub_265CB9320(&qword_28003E418, &qword_28003E3E0, &qword_265D5B8F8);

  v132 = v173;
  sub_265D59E10();

  (*(v172 + 8))(v129, v132);
  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  v133 = v174;
  sub_265D59810();
  v134 = swift_allocObject();
  swift_weakInit();
  v135 = swift_allocObject();
  v136 = v163;
  v135[2] = v121;
  v135[3] = v136;
  v135[4] = v182;
  v135[5] = v134;
  sub_265CB9320(&qword_28003E420, &qword_28003E3D8, &qword_265D5B8F0);

  sub_265D59E10();

  (*(v175 + 8))(v133, v122);
  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  v203 = sub_265D59820();
  v137 = swift_allocObject();
  swift_weakInit();
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v121;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E428, &unk_265D5B910);
  sub_265CB9320(&qword_28003E430, &qword_28003E428, &unk_265D5B910);
  sub_265D59E10();

  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  type metadata accessor for MultiUserLinkMessage();
  sub_265CB5E54(&qword_28003E3C0, type metadata accessor for MultiUserLinkMessage);
  sub_265CB5E54(&qword_28003E3C8, type metadata accessor for MultiUserLinkMessage);
  v139 = v177;
  sub_265D597B0();
  v140 = swift_allocObject();
  swift_weakInit();
  v141 = swift_allocObject();
  *(v141 + 16) = sub_265CB92C4;
  *(v141 + 24) = v140;
  sub_265CB9320(&qword_28003E438, &qword_28003E3D0, &qword_265D5B8E8);
  v142 = v179;
  sub_265D59E10();

  (*(v178 + 8))(v139, v142);
  swift_beginAccess();
  sub_265D59DF0();
  swift_endAccess();

  v143 = v181;
  sub_265D59610();

  v144 = sub_265D59DD0();
  v145 = sub_265D5A080();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *&v201 = swift_slowAlloc();
    v203 = v201;
    *v146 = 134218242;
    v147 = v160;
    sub_265D597E0();
    v148 = sub_265D598C0();
    v149 = *(v161 + 8);
    v150 = v162;
    v149(v147, v162);
    *(v146 + 4) = v148;

    *(v146 + 12) = 2080;
    sub_265D597E0();
    v151 = sub_265D598F0();
    v153 = v152;
    v149(v147, v150);
    v154 = sub_265CF4FFC(v151, v153, &v203);

    *(v146 + 14) = v154;
    _os_log_impl(&dword_265C01000, v144, v145, "Link: Local source id: %llu, handle: %s", v146, 0x16u);
    v155 = v201;
    __swift_destroy_boxed_opaque_existential_1Tm(v201);
    MEMORY[0x266770CF0](v155, -1, -1);
    MEMORY[0x266770CF0](v146, -1, -1);

    (*(v187 + 8))(v181, v188);
  }

  else
  {

    (*(v187 + 8))(v143, v188);
  }

  result = (*(v183 + 8))(v190, v189);
  v157 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_265CA9760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v197 = a4;
  v198 = a6;
  v196 = a5;
  v204 = a3;
  v202 = a2;
  v192 = sub_265D59D70();
  v195 = *(v192 - 8);
  v9 = *(v195 + 64);
  v10 = MEMORY[0x28223BE20](v192);
  v181 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v185 = &v171 - v12;
  v194 = sub_265D57E50();
  v13 = *(v194 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v194);
  v184 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v193 = &v171 - v17;
  v208 = sub_265D58330();
  v205 = *(v208 - 8);
  v18 = *(v205 + 64);
  v19 = MEMORY[0x28223BE20](v208);
  v199 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v186 = (&v171 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v183 = &v171 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v171 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v171 - v28;
  v30 = sub_265D59DE0();
  v200 = *(v30 - 8);
  v201 = v30;
  v31 = *(v200 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v171 - v37;
  MEMORY[0x28223BE20](v36);
  v41 = &v171 - v40;
  v42 = *(a1 + 40);
  v203 = *(a1 + 32);
  v43 = *(a1 + 48);
  v44 = *(a1 + 56);
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  if (!(v46 >> 6))
  {
    v182 = v13;
    v190 = v43;
    v187 = v44;
    v188 = v45;
    v76 = v46;
    v189 = v42;
    sub_265CB5DE4(v203, v42, v43, v44, v45, v46);

    sub_265D59610();
    v77 = v208;
    (*(v205 + 16))(v29, v204, v208);
    v78 = v202;

    v79 = sub_265D59DD0();
    v80 = sub_265D5A080();

    LODWORD(v195) = v80;
    v81 = os_log_type_enabled(v79, v80);
    v191 = a7;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v207 = v192;
      *v82 = 136315394;
      v83 = v193;
      v186 = v79;
      sub_265D59830();
      v84 = sub_265D57E40();
      v180 = v76;
      v85 = v78;
      v87 = v86;
      (*(v182 + 8))(v83, v194);
      v88 = sub_265CF4FFC(v84, v87, &v207);
      v78 = v85;

      *(v82 + 4) = v88;
      *(v82 + 12) = 2080;
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
      v89 = sub_265D5A3B0();
      v91 = v90;
      (*(v205 + 8))(v29, v208);
      v92 = sub_265CF4FFC(v89, v91, &v207);

      *(v82 + 14) = v92;
      v93 = v186;
      _os_log_impl(&dword_265C01000, v186, v195, "Link: Idle -> Received new session %s for %s", v82, 0x16u);
      v94 = v192;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v94, -1, -1);
      v95 = v82;
      v77 = v208;
      MEMORY[0x266770CF0](v95, -1, -1);

      v96 = v203;
      sub_265CB90F8(v203, v189, v190, v187, v188, v180);
    }

    else
    {

      v96 = v203;
      sub_265CB90F8(v203, v189, v190, v187, v188, v76);
      (*(v205 + 8))(v29, v77);
    }

    (*(v200 + 8))(v41, v201);
    v121 = v96;
    v123 = *(a1 + 32);
    v122 = *(a1 + 40);
    v124 = *(a1 + 48);
    v125 = *(a1 + 56);
    v126 = *(a1 + 64);
    *(a1 + 32) = v78;
    v127 = v198;
    *(a1 + 40) = v197;
    *(a1 + 48) = v121;
    *(a1 + 56) = v196;
    *(a1 + 64) = v127;
    v128 = *(a1 + 72);
    *(a1 + 72) = 65;

    sub_265CB90F8(v123, v122, v124, v125, v126, v128);
    a7 = v191;
    v100 = v204;
    v101 = v199;
    goto LABEL_24;
  }

  if (v46 >> 6 != 1)
  {
    sub_265D59610();
    v97 = sub_265D59DD0();
    v98 = sub_265D5A070();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_265C01000, v97, v98, "Link: Unable to handle activity because link state is not idle or not activityRequested", v99, 2u);
      MEMORY[0x266770CF0](v99, -1, -1);
    }

    (*(v200 + 8))(v34, v201);
    v100 = v204;
    v101 = v199;
    goto LABEL_23;
  }

  v191 = a7;
  v182 = v13;
  v176 = v39;
  v47 = v43;
  v48 = v45;
  v49 = v46;

  v187 = v44;
  v180 = v49;
  sub_265CB5DE4(v50, v42, v47, v44, v48, v49);
  v188 = v48;

  v189 = v42;

  v190 = v47;

  sub_265D59610();
  v51 = v205;
  v52 = *(v205 + 16);
  v175 = v205 + 16;
  v174 = v52;
  v52(v27, v204, v208);

  v53 = sub_265D59DD0();
  v54 = sub_265D5A080();

  LODWORD(v177) = v54;
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v207 = v173;
    *v55 = 136315650;
    v56 = v193;
    sub_265D59830();
    v57 = sub_265D57E40();
    v59 = v58;
    v179 = *(v182 + 8);
    v172 = v53;
    v60 = v194;
    v179(v56, v194);
    v61 = sub_265CF4FFC(v57, v59, &v207);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    sub_265D59830();
    v62 = sub_265D57E40();
    v64 = v63;
    v179(v56, v60);
    v65 = sub_265CF4FFC(v62, v64, &v207);

    *(v55 + 14) = v65;
    *(v55 + 22) = 2080;
    v66 = v55;
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
    v67 = v208;
    v68 = sub_265D5A3B0();
    v70 = v69;
    v71 = *(v205 + 8);
    v178 = (v205 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v179 = v71;
    v71(v27, v67);
    v72 = sub_265CF4FFC(v68, v70, &v207);

    *(v66 + 24) = v72;
    v73 = v172;
    _os_log_impl(&dword_265C01000, v172, v177, "Link: Overwriting session %s with new session %s for %s", v66, 0x20u);
    v74 = v173;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v74, -1, -1);
    MEMORY[0x266770CF0](v66, -1, -1);

    v177 = *(v200 + 8);
    v177(v38, v201);
    v75 = v195;
  }

  else
  {

    v102 = *(v51 + 8);
    v178 = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v179 = v102;
    v102(v27, v208);
    v177 = *(v200 + 8);
    v177(v38, v201);
    v60 = v194;
    v75 = v195;
    v56 = v193;
  }

  sub_265D59830();
  v103 = v184;
  sub_265D59830();
  sub_265CB5E54(&qword_28003E478, MEMORY[0x277CC95F0]);
  v104 = sub_265D59E80();
  v105 = *(v182 + 8);
  v105(v103, v60);
  v105(v56, v60);
  LODWORD(v194) = v104 ^ 1;
  v106 = v185;
  sub_265D598A0();
  v107 = v183;
  sub_265D59D60();
  v110 = *(v75 + 8);
  v108 = v75 + 8;
  v109 = v110;
  v111 = v192;
  v110(v106, v192);
  v112 = sub_265D58310();
  v114 = v113;
  v179(v107, v208);
  v115 = sub_265D58310();
  v117 = v186;
  if (v112 == v115 && v114 == v116)
  {
  }

  else
  {
    v118 = sub_265D5A3C0();

    if ((v118 & 1) == 0)
    {
      v195 = v108;
      v129 = v176;
      sub_265D59610();
      v174(v117, v204, v208);
      v130 = sub_265D59DD0();
      v131 = sub_265D5A080();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v193 = v132;
        v133 = swift_slowAlloc();
        v207 = v133;
        *v132 = 136315138;
        sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
        v134 = v208;
        v135 = sub_265D5A3B0();
        v136 = v117;
        v138 = v137;
        v139 = v134;
        v140 = v179;
        v179(v136, v139);
        v141 = sub_265CF4FFC(v135, v138, &v207);

        v142 = v193;
        *(v193 + 4) = v141;
        v143 = v131;
        v144 = v140;
        v145 = v142;
        _os_log_impl(&dword_265C01000, v130, v143, "Link: Saving overwritten session activity as replaced %s", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        v146 = v133;
        v111 = v192;
        MEMORY[0x266770CF0](v146, -1, -1);
        MEMORY[0x266770CF0](v145, -1, -1);
      }

      else
      {

        v144 = v179;
        v179(v117, v208);
      }

      v177(v129, v201);
      v147 = v181;
      v148 = v203;
      sub_265D598A0();
      v101 = v199;
      sub_265D59D60();
      v109(v147, v111);
      v149 = v148;
      v150 = sub_265D58310();
      v152 = v151;
      v144(v101, v208);
      swift_beginAccess();
      sub_265CB6DCC(&v206, v150, v152);
      swift_endAccess();
      v120 = v190;
      sub_265CB90F8(v149, v189, v190, v187, v188, v180);

      goto LABEL_22;
    }
  }

  v119 = v203;

  v120 = v190;
  sub_265CB90F8(v119, v189, v190, v187, v188, v180);
  v101 = v199;
LABEL_22:
  v153 = v198;

  v154 = v197;

  v155 = v202;

  v156 = v194 & 1 | 0x40;
  v157 = *(a1 + 32);
  v158 = *(a1 + 40);
  v159 = *(a1 + 48);
  v160 = *(a1 + 56);
  v161 = *(a1 + 64);
  *(a1 + 32) = v155;
  *(a1 + 40) = v154;
  v162 = v196;
  *(a1 + 48) = v120;
  *(a1 + 56) = v162;
  *(a1 + 64) = v153;
  v163 = *(a1 + 72);
  *(a1 + 72) = v156;
  sub_265CB90F8(v157, v158, v159, v160, v161, v163);
  a7 = v191;
  v100 = v204;
LABEL_23:
  v77 = v208;
LABEL_24:
  v164 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionCompletions;
  swift_beginAccess();
  v165 = *(a1 + v164);
  if (*(v165 + 16) && (v166 = sub_265CE2A20(v100), (v167 & 1) != 0))
  {
    v168 = *(*(v165 + 56) + 8 * v166);
  }

  else
  {
    v168 = 0;
  }

  swift_endAccess();
  (*(v205 + 16))(v101, v100, v77);
  swift_beginAccess();
  sub_265CE11B4(0, v101);
  result = swift_endAccess();
  v170 = MEMORY[0x277D84F90];
  if (v168)
  {
    v170 = v168;
  }

  *a7 = v170;
  return result;
}

void sub_265CAA8B8(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A4B0();
  a1(v2, v3);
  sub_265CA4470(v2, v3);
}

uint64_t sub_265CAA934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CAA9A8(a3, a1);
  }

  return result;
}

uint64_t sub_265CAA9A8(uint64_t a1, uint64_t a2)
{
  v163 = a1;
  v3 = sub_265D59310();
  v165 = *(v3 - 8);
  v166 = v3;
  v4 = *(v165 + 64);
  MEMORY[0x28223BE20](v3);
  v164 = v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D58330();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v150 = v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = v130 - v10;
  v11 = sub_265D59D70();
  v161 = *(v11 - 8);
  v162 = v11;
  v12 = *(v161 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v149 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v140 = v130 - v15;
  v16 = sub_265D57E50();
  v159 = *(v16 - 8);
  v160 = v16;
  v17 = *(v159 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v147 = v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v137 = v130 - v21;
  MEMORY[0x28223BE20](v20);
  v155 = v130 - v22;
  v23 = sub_265D583A0();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v148 = v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v138 = v130 - v27;
  v154 = sub_265D59900();
  v153 = *(v154 - 8);
  v28 = *(v153 + 64);
  v29 = MEMORY[0x28223BE20](v154);
  v145 = v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v152 = v130 - v32;
  MEMORY[0x28223BE20](v31);
  v135 = v130 - v33;
  v34 = sub_265D58300();
  v157 = *(v34 - 8);
  v158 = v34;
  v35 = *(v157 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v146 = v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v156 = v130 - v39;
  MEMORY[0x28223BE20](v38);
  v136 = v130 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v144 = v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = (v130 - v46);
  v48 = sub_265D59DE0();
  v49 = *(v48 - 1);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v141 = v130 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = v130 - v53;
  v172 = 0;
  v173 = 0xE000000000000000;
  v167 = v41;
  sub_265D5A290();
  v56 = v172;
  v55 = v173;
  sub_265D59610();

  v57 = sub_265D59DD0();
  v58 = sub_265D5A080();

  v59 = os_log_type_enabled(v57, v58);
  v151 = v42;
  v142 = v48;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v143 = v49;
    v61 = v48;
    v62 = v60;
    v63 = a2;
    v64 = swift_slowAlloc();
    v172 = v64;
    *v62 = 136446210;
    v65 = sub_265CF4FFC(v56, v55, &v172);

    *(v62 + 4) = v65;
    _os_log_impl(&dword_265C01000, v57, v58, "Link: Session state changed to: %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v66 = v64;
    a2 = v63;
    v42 = v151;
    MEMORY[0x266770CF0](v66, -1, -1);
    MEMORY[0x266770CF0](v62, -1, -1);

    v67 = *(v143 + 8);
    v67(v54, v61);
  }

  else
  {

    v67 = *(v49 + 8);
    v67(v54, v48);
  }

  v69 = v42 + 16;
  v68 = *(v42 + 16);
  v70 = v167;
  v68(v47, a2, v167);
  v71 = *(v42 + 88);
  v72 = v71(v47, v70);
  LODWORD(v143) = *MEMORY[0x277CCB1F8];
  if (v72 != v143)
  {
    (*(v42 + 8))(v47, v70);
    v81 = a2;
    v80 = v153;
    goto LABEL_19;
  }

  v132 = v71;
  v133 = v68;
  v134 = a2;
  (*(v42 + 96))(v47, v70);
  v73 = *v47;
  v74 = v141;
  sub_265D59610();
  v75 = sub_265D59DD0();
  v76 = sub_265D5A080();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_265C01000, v75, v76, "Link: Clearing session subscriptions for invalidated session", v77, 2u);
    MEMORY[0x266770CF0](v77, -1, -1);
  }

  v67(v74, v142);
  v78 = v168;
  swift_beginAccess();
  v79 = v78[13];
  v78[13] = MEMORY[0x277D84FA0];

  v170 = 0;
  v171 = 0xE000000000000000;
  v169 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A290();
  if (v170 == 0x664F6465646E6168 && v171 == 0xE900000000000066)
  {

    v80 = v153;
  }

  else
  {
    v82 = sub_265D5A3C0();

    v80 = v153;
    if ((v82 & 1) == 0)
    {

      v81 = v134;
      v70 = v167;
      v68 = v133;
      v71 = v132;
      goto LABEL_19;
    }
  }

  v142 = v73;
  v83 = v168[12];
  sub_265D58CA0();
  v141 = 0;
  v130[3] = v170;
  v84 = v135;
  sub_265D597E0();
  v85 = sub_265D598F0();
  v87 = v86;
  v88 = *(v80 + 8);
  v89 = v154;
  v88(v84, v154);

  v90 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v90 = v85 & 0xFFFFFFFFFFFFLL;
  }

  v131 = v69;
  if (v90)
  {
    v91 = v152;
    sub_265D597E0();
    sub_265D598F0();
    v135 = v92;
    v88(v91, v89);
  }

  else
  {
    v135 = 0;
    v91 = v152;
  }

  sub_265D597E0();
  v93 = v155;
  sub_265D598E0();
  v88(v91, v89);
  sub_265D57E40();
  v94 = *(v159 + 8);
  v95 = v93;
  v96 = v160;
  v94(v95, v160);
  sub_265D58340();
  v97 = v137;
  sub_265D59830();
  v135 = sub_265D57E40();
  v94(v97, v96);
  v98 = v140;
  sub_265D598A0();
  sub_265D59D60();
  (*(v161 + 8))(v98, v162);
  sub_265D59800();
  sub_265D5A030();
  v99 = v136;
  sub_265D582C0();
  v100 = v168[10];
  v101 = v168[11];
  swift_getObjectType();
  v102 = v157;
  v103 = v158;
  (*(v157 + 16))(v156, v99, v158);
  v104 = v164;
  sub_265D59300();
  v105 = v166;
  sub_265D58ED0();

  (*(v165 + 8))(v104, v105);
  (*(v102 + 8))(v99, v103);
  v80 = v153;
  v81 = v134;
  v70 = v167;
  v68 = v133;
  v71 = v132;
LABEL_19:
  v106 = v144;
  v68(v144, v81, v70);
  v107 = v71(v106, v70);
  if (v107 == v143)
  {
    LODWORD(v167) = 1;
    v153 = 0;
    v143 = 2;
    v108 = v154;
    v109 = v152;
LABEL_21:
    (*(v151 + 8))(v106, v70);
    goto LABEL_27;
  }

  v108 = v154;
  v109 = v152;
  if (v107 == *MEMORY[0x277CCB208])
  {
    v143 = 0;
    v153 = 0;
  }

  else
  {
    if (v107 != *MEMORY[0x277CCB200])
    {
      LODWORD(v167) = v107 == v143;
      v153 = 0xE700000000000000;
      v143 = 0x6E776F6E6B6E75;
      goto LABEL_21;
    }

    v153 = 0;
    v143 = 1;
  }

  LODWORD(v167) = 1;
LABEL_27:
  v110 = v168[12];
  sub_265D58CA0();
  v111 = v145;
  sub_265D597E0();
  v112 = sub_265D598F0();
  v114 = v113;
  v115 = *(v80 + 8);
  v115(v111, v108);

  v116 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v116 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (v116)
  {
    sub_265D597E0();
    sub_265D598F0();
    v115(v109, v108);
  }

  sub_265D597E0();
  v117 = v155;
  sub_265D598E0();
  v115(v109, v108);
  sub_265D57E40();
  v118 = v160;
  v119 = *(v159 + 8);
  v119(v117, v160);
  sub_265D58340();
  v120 = v147;
  sub_265D59830();
  sub_265D57E40();
  v119(v120, v118);
  v121 = v149;
  sub_265D598A0();
  sub_265D59D60();
  (*(v161 + 8))(v121, v162);
  sub_265D59800();
  sub_265D5A030();
  v122 = v146;
  sub_265D582C0();
  v124 = v168[10];
  v123 = v168[11];
  swift_getObjectType();
  v125 = v157;
  v126 = v158;
  (*(v157 + 16))(v156, v122, v158);
  v127 = v164;
  sub_265D59300();
  v128 = v166;
  sub_265D58ED0();
  (*(v165 + 8))(v127, v128);
  return (*(v125 + 8))(v122, v126);
}

uint64_t sub_265CABAD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v67 = a3;
  v8 = sub_265D59580();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D59DE0();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265D58330();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = v60[8];
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265D59D70();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_265D586F0();
  v66 = *(v23 - 8);
  v24 = *(v66 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v56 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v56 - v30;
  v32 = *a1;

  v33 = sub_265CB9AC4(v32, a2, v67, a4);

  sub_265CB958C(v33);

  sub_265D598A0();
  sub_265D59D60();
  (*(v19 + 8))(v22, v18);
  sub_265D58310();
  (v60[1])(v17, v61);
  v34 = v66;
  sub_265D5A030();
  sub_265D586D0();
  sub_265D59610();
  v35 = *(v34 + 16);
  v36 = v29;
  v37 = v29;
  v67 = v23;
  v38 = v35;
  v35(v37, v31, v23);
  v39 = sub_265D59DD0();
  v40 = sub_265D5A080();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v31;
    v68 = v60;
    *v41 = 136315138;
    sub_265CB5E54(&qword_28003E458, MEMORY[0x277D53008]);
    v42 = v36;
    v43 = v67;
    v44 = sub_265D5A3B0();
    v46 = v45;
    v47 = *(v34 + 8);
    v47(v42, v43);
    v48 = sub_265CF4FFC(v44, v46, &v68);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_265C01000, v39, v40, "Link: Active participants updated to %s", v41, 0xCu);
    v49 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    v31 = v61;
    MEMORY[0x266770CF0](v49, -1, -1);
    MEMORY[0x266770CF0](v41, -1, -1);
  }

  else
  {

    v47 = *(v34 + 8);
    v47(v36, v67);
  }

  (*(v62 + 8))(v65, v63);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v52 = *(Strong + 80);
    v51 = *(Strong + 88);
    swift_unknownObjectRetain();

    swift_getObjectType();
    v38(v56, v31, v67);
    v53 = v57;
    sub_265D59570();
    v54 = v59;
    sub_265D58ED0();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v53, v54);
  }

  return (v47)(v31, v67);
}

uint64_t sub_265CAC10C()
{
  v0 = sub_265D58330();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D59D70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D598A0();
    sub_265D59D60();
    (*(v6 + 8))(v9, v5);
    sub_265CAC2BC(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_265CAC2BC(uint64_t a1)
{
  v2 = sub_265D59560();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D58330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = sub_265D59DE0();
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v16 = a1;
  v17 = v5;
  v36 = *(v6 + 16);
  v36(v11, a1, v5);
  v18 = sub_265D59DD0();
  v19 = sub_265D5A080();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v2;
    v21 = v20;
    v33 = swift_slowAlloc();
    v43 = v33;
    *v21 = 136315138;
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
    v22 = sub_265D5A3B0();
    v34 = v16;
    v24 = v23;
    (*(v6 + 8))(v11, v17);
    v25 = sub_265CF4FFC(v22, v24, &v43);
    v16 = v34;

    *(v21 + 4) = v25;
    _os_log_impl(&dword_265C01000, v18, v19, "Link: Server requested catch-up for %s", v21, 0xCu);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266770CF0](v26, -1, -1);
    v27 = v21;
    v2 = v35;
    MEMORY[0x266770CF0](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, v17);
  }

  (*(v37 + 8))(v15, v38);
  v29 = *(v41 + 80);
  v28 = *(v41 + 88);
  swift_getObjectType();
  v36(v39, v16, v17);
  v30 = v42;
  sub_265D59550();
  sub_265D58ED0();
  return (*(v40 + 8))(v30, v2);
}

uint64_t sub_265CAC6B8(uint64_t a1)
{
  v2 = sub_265D59900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D59790();
    sub_265CAC7CC(a1);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_265CAC7CC(uint64_t a1)
{
  v31 = a1;
  v32 = sub_265D59DE0();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_265D57E50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D598E0();
  v14 = sub_265D57E40();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v17 = *(v1 + 16);
  if (v17)
  {
    v18 = *(v1 + 24);

    sub_265D59610();

    v19 = sub_265D59DD0();
    v20 = sub_265D5A080();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = sub_265CF4FFC(v14, v16, &v33);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_265C01000, v19, v20, "Link: Received message from source id: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x266770CF0](v22, -1, -1);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v8, v32);
    v17(v31);
    return sub_265C959D0(v17);
  }

  else
  {
    sub_265D59610();

    v24 = sub_265D59DD0();
    v25 = sub_265D5A070();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136446210;
      v28 = sub_265CF4FFC(v14, v16, &v33);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_265C01000, v24, v25, "Link: No receivedMessageHandler. Dropping received message for source: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266770CF0](v27, -1, -1);
      MEMORY[0x266770CF0](v26, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v6, v32);
  }
}

uint64_t sub_265CACB98()
{
  v1 = *(v0 + 24);
  sub_265C959D0(*(v0 + 16));
  sub_265CB90F8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  v5 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionObserver;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF28, &qword_265D5B160);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionCompletions);

  v8 = *(v0 + OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities);

  v9 = *(v0 + OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_replacedActivitySessionIdentifiers);

  return v0;
}

uint64_t sub_265CACC68()
{
  sub_265CACB98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MultiUserLink()
{
  result = qword_2813B7C70;
  if (!qword_2813B7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CACD14()
{
  sub_265CACDE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_265CACDE4()
{
  if (!qword_2813B8F90)
  {
    sub_265D59D70();
    sub_265CB5E54(&unk_2813B8F70, MEMORY[0x277D4FB20]);
    v0 = sub_265D59780();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8F90);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices13MultiUserLinkC5StateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
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

uint64_t sub_265CACEB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0xFFFFFFD && *(a1 + 41))
  {
    return (*a1 + 268435454);
  }

  if ((((*(a1 + 40) >> 6) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x1FFFFF | (((*(a1 + 40) >> 1) & 0x1F) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF) >= 0xFFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 40) >> 6) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x1FFFFF | (((*(a1 + 40) >> 1) & 0x1F) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_265CACF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 268435454;
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x3FFFFFF) - (a2 << 26);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_265D5B760), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_265D5B770), vdupq_n_s64(0xF000000000000000)));
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = (v3 >> 20) & 0xFE;
    }
  }

  return result;
}

int8x16_t sub_265CAD018(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8;
    v4 = *(a1 + 40) & 1 | (a2 << 6);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
    *(a1 + 40) = v4;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0x80;
  }

  return result;
}

uint64_t sub_265CAD084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 96);

  sub_265D58CA0();
}

uint64_t sub_265CAD13C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_265CAD17C(uint64_t a1, void (*a2)(void, void), uint64_t a3, void (*a4)(void, void))
{
  v152 = a2;
  v151 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v142 = *(v6 - 8);
  v7 = *(v142 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v132 - v8;
  v10 = sub_265D59D70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_265D58330();
  v150 = *(v148 - 8);
  v15 = *(v150 + 64);
  v16 = MEMORY[0x28223BE20](v148);
  v140 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v141 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v139 = (&v132 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v143 = (&v132 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v147 = &v132 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v132 - v26;
  v28 = sub_265D59DE0();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v40 = &v132 - v39;
  v149 = a1;
  v41 = *(a1 + 72) >> 6;
  if (v41)
  {
    if (v41 == 1)
    {
      v133 = v32;
      v134 = v38;
      v135 = v37;
      v144 = v35;
      v145 = v36;
      v146 = a3;
      v42 = v149;
      v44 = v149[5];
      v43 = v149[6];
      v45 = v149[4];
      v137 = v149[8];

      v136 = v44;

      v138 = v43;

      sub_265D598A0();
      v46 = v147;
      sub_265D59D60();
      v47 = v14;
      v48 = v46;
      (*(v11 + 8))(v47, v10);
      v49 = v151;
      if (MEMORY[0x26676E3E0](v46, v151))
      {
        sub_265D59880();
        v50 = v142;
        v51 = (*(v142 + 88))(v9, v6);
        v52 = *MEMORY[0x277CCB1F8];
        (*(v50 + 8))(v9, v6);
        if (v51 == v52)
        {
          sub_265D59610();
          v53 = v48;
          v54 = v150;
          v55 = v148;
          (*(v150 + 16))(v143, v53, v148);

          v56 = sub_265D59DD0();
          v57 = sub_265D5A080();

          v142 = v45;

          LODWORD(v141) = v57;
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v153 = v140;
            *v58 = 136315394;
            sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
            v139 = v56;
            v59 = v143;
            v60 = sub_265D5A3B0();
            v62 = v61;
            v63 = v59;
            v64 = *(v54 + 8);
            v64(v63, v55);
            v65 = sub_265CF4FFC(v60, v62, &v153);

            *(v58 + 4) = v65;
            *(v58 + 12) = 2080;
            v155 = v142;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3A0, &qword_265D5B8D8);
            sub_265CB9320(&qword_28003E3A8, &qword_28003E3A0, &qword_265D5B8D8);
            v66 = sub_265D5A3B0();
            v68 = sub_265CF4FFC(v66, v67, &v153);

            *(v58 + 14) = v68;
            v69 = v147;
            v70 = v139;
            _os_log_impl(&dword_265C01000, v139, v141, "Link: Waiting for session because requested activity matches connected %s but session is invalidated %s", v58, 0x16u);
            v71 = v140;
            swift_arrayDestroy();
            MEMORY[0x266770CF0](v71, -1, -1);
            v72 = v58;
            v49 = v151;
            MEMORY[0x266770CF0](v72, -1, -1);

            (*(v145 + 8))(v135, v144);
            v73 = v152;
          }

          else
          {

            v64 = *(v54 + 8);
            v64(v143, v55);
            (*(v145 + 8))(v135, v144);
            v73 = v152;
            v69 = v147;
          }

          sub_265CAE0F4(v73, v146, v49);

          v64(v69, v55);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
          sub_265D5A4B0();
          v107 = v153;
          v108 = v154;
          v152(v153, v154);
          sub_265CA4470(v107, v108);

          (*(v150 + 8))(v48, v148);
        }
      }

      else
      {
        v142 = v45;
        v89 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_replacedActivitySessionIdentifiers;
        swift_beginAccess();
        v90 = *(v42 + v89);

        v91 = sub_265D58310();
        v93 = sub_265CA755C(v91, v92, v90);

        v94 = (v150 + 16);
        if (v93)
        {
          v95 = v133;
          sub_265D59610();
          v96 = v140;
          v97 = v148;
          (*v94)(v140, v49, v148);
          v98 = sub_265D59DD0();
          v99 = sub_265D5A080();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v155 = v149;
            *v100 = 136315138;
            sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
            v101 = sub_265D5A3B0();
            v103 = v102;
            v151 = *(v150 + 8);
            v151(v96, v97);
            v104 = sub_265CF4FFC(v101, v103, &v155);
            v105 = v147;

            *(v100 + 4) = v104;
            _os_log_impl(&dword_265C01000, v98, v99, "Link: Not waiting for activity because it was already replaced: %s", v100, 0xCu);
            v106 = v149;
            __swift_destroy_boxed_opaque_existential_1Tm(v149);
            MEMORY[0x266770CF0](v106, -1, -1);
            MEMORY[0x266770CF0](v100, -1, -1);
          }

          else
          {

            v105 = v48;
            v151 = *(v150 + 8);
            v151(v96, v97);
          }

          (*(v145 + 8))(v95, v144);
          v129 = v152;
          sub_265C9EB84();
          v130 = swift_allocError();
          *v131 = 1;
          v129(v130, 1);

          v151(v105, v97);
        }

        else
        {
          v109 = v134;
          sub_265D59610();
          v110 = *v94;
          v111 = v139;
          v112 = v148;
          (*v94)(v139, v48, v148);
          v113 = v141;
          v110(v141, v49, v112);
          v114 = sub_265D59DD0();
          v115 = sub_265D5A080();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = v113;
            v117 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v155 = v143;
            *v117 = 136315394;
            sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
            LODWORD(v140) = v115;
            v118 = sub_265D5A3B0();
            v120 = v119;
            v121 = *(v150 + 8);
            v121(v111, v148);
            v122 = sub_265CF4FFC(v118, v120, &v155);
            v112 = v148;

            *(v117 + 4) = v122;
            *(v117 + 12) = 2080;
            v123 = v116;
            v124 = sub_265D5A3B0();
            v126 = v125;
            v121(v123, v112);
            v127 = sub_265CF4FFC(v124, v126, &v155);

            *(v117 + 14) = v127;
            _os_log_impl(&dword_265C01000, v114, v140, "Link: Waiting for session because connected %s mismatches waiting request %s", v117, 0x16u);
            v128 = v143;
            swift_arrayDestroy();
            MEMORY[0x266770CF0](v128, -1, -1);
            MEMORY[0x266770CF0](v117, -1, -1);

            (*(v145 + 8))(v134, v144);
          }

          else
          {

            v121 = *(v150 + 8);
            v121(v113, v112);
            v121(v111, v112);
            (*(v145 + 8))(v109, v144);
          }

          sub_265CAE0F4(v152, v146, v151);

          v121(v147, v112);
        }
      }
    }

    else
    {
      sub_265C9EB84();
      v87 = swift_allocError();
      *v88 = 8;
      v152(v87, 1);
    }
  }

  else
  {
    v144 = v35;
    v145 = v36;
    v146 = a3;
    sub_265D59610();
    v75 = v150;
    v74 = v151;
    v76 = v148;
    (*(v150 + 16))(v27, v151, v148);
    v77 = sub_265D59DD0();
    v78 = sub_265D5A080();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v153 = v80;
      *v79 = 136315138;
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
      v81 = sub_265D5A3B0();
      v82 = v76;
      v84 = v83;
      (*(v75 + 8))(v27, v82);
      v85 = sub_265CF4FFC(v81, v84, &v153);

      *(v79 + 4) = v85;
      _os_log_impl(&dword_265C01000, v77, v78, "Link: Waiting for session. Adding %s to session completions.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266770CF0](v80, -1, -1);
      v86 = v79;
      v74 = v151;
      MEMORY[0x266770CF0](v86, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v27, v76);
    }

    (*(v145 + 8))(v40, v144);
    sub_265CAE0F4(v152, v146, v74);
  }
}

uint64_t sub_265CAE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 96);
  sub_265D58C90();
  v9 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_sessionConnectionCompletions;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16) && (v11 = sub_265CE2A20(a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B0, &qword_265D5B8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265D5AF60;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(inited + 32) = sub_265CB90C4;
  *(inited + 40) = v15;

  sub_265CB87F0(inited);
  swift_beginAccess();
  v16 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  sub_265CE52C4(v13, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v9) = v19;
  return swift_endAccess();
}

uint64_t sub_265CAE26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 96);

  sub_265D58CA0();
}

void sub_265CAE324(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v46 = a4;
  v8 = sub_265D59DE0();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_265D58330();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  if (sub_265CAE760())
  {
    v39 = a3;
    v40 = v4;
    v22 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities;
    swift_beginAccess();
    v23 = *(a1 + v22);

    v24 = sub_265CA7654(a2, v23);

    if (v24)
    {
      sub_265D59610();
      v25 = sub_265D59DD0();
      v26 = sub_265D5A070();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_265C01000, v25, v26, "Link: willBeginActivity - activity already registered.", v27, 2u);
        MEMORY[0x266770CF0](v27, -1, -1);
      }

      (*(v42 + 8))(v14, v43);
      sub_265C9EB84();
      v28 = swift_allocError();
      *v29 = 0;
      v39(v28, 1);
    }

    else
    {
      v35 = v41;
      (*(v41 + 16))(v19, a2, v15);
      swift_beginAccess();
      sub_265CB71FC(v21, v19);
      swift_endAccess();
      (*(v35 + 8))(v21, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
      sub_265D5A4B0();
      v36 = v44;
      v37 = v45;
      v39(v44, v45);
      sub_265CA4470(v36, v37);
    }
  }

  else
  {
    sub_265D59610();
    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_265C01000, v30, v31, "Link: willBeginActivity condition unmet - can't create activity.", v32, 2u);
      MEMORY[0x266770CF0](v32, -1, -1);
    }

    (*(v42 + 8))(v12, v43);
    sub_265C9EB84();
    v33 = swift_allocError();
    *v34 = 0;
    a3(v33, 1);
  }
}

uint64_t sub_265CAE760()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = sub_265D59DE0();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = *(v0 + 96);
  sub_265D58C90();
  v22 = (v1 + 32);
  v21 = *(v1 + 32);
  v23 = *(v1 + 72);
  if (v23 <= 0x3F)
  {
    sub_265D59610();
    v24 = sub_265D59DD0();
    v25 = sub_265D5A080();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_265C01000, v24, v25, "Link: can create activity. State is idle.", v26, 2u);
      MEMORY[0x266770CF0](v26, -1, -1);
    }

    (*(v50 + 8))(v19, v51);
    return 1;
  }

  if ((v23 & 0xC0) == 0x40)
  {
    v46 = v17;
    v29 = *(v1 + 40);
    v28 = *(v1 + 48);
    v47 = *(v1 + 64);

    v49 = v29;

    v48 = v28;

    sub_265D59880();
    (*(v3 + 104))(v7, *MEMORY[0x277CCB200], v2);
    sub_265CB9320(&qword_28003E398, &qword_28003E370, &unk_265D5B8B8);
    v30 = sub_265D59E80();
    v31 = *(v3 + 8);
    v31(v7, v2);
    v31(v9, v2);
    if ((v30 & 1) == 0)
    {
      v41 = v46;
      sub_265D59610();
      v42 = sub_265D59DD0();
      v43 = sub_265D5A080();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_265C01000, v42, v43, "Link: can create activity. Link has session not in joined state.", v44, 2u);
        MEMORY[0x266770CF0](v44, -1, -1);
      }

      else
      {
      }

      (*(v50 + 8))(v41, v51);
      return 1;
    }
  }

  sub_265D59610();

  v32 = sub_265D59DD0();
  v33 = sub_265D5A080();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v53 = v35;
    *v34 = 136315138;
    v36 = v22[1];
    v54 = *v22;
    v55[0] = v36;
    *(v55 + 9) = *(v22 + 25);
    sub_265CB8F04(&v54, v52);
    v37 = sub_265CA7108();
    v39 = v38;
    sub_265CB8F3C(&v54);
    v40 = sub_265CF4FFC(v37, v39, &v53);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_265C01000, v32, v33, "Link: can't create new activity due to link state: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266770CF0](v35, -1, -1);
    MEMORY[0x266770CF0](v34, -1, -1);
  }

  (*(v50 + 8))(v14, v51);
  return 0;
}

void sub_265CAECD4(uint64_t a1@<X8>)
{
  v2 = v1;
  v188 = sub_265D59310();
  v187 = *(v188 - 8);
  v4 = *(v187 + 64);
  MEMORY[0x28223BE20](v188);
  v186 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D583A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_265D59900();
  v179 = *(v180 - 8);
  v9 = *(v179 + 64);
  v10 = MEMORY[0x28223BE20](v180);
  v178 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v175 = &v164 - v12;
  v192 = sub_265D58300();
  v183 = *(v192 - 8);
  v13 = *(v183 + 64);
  v14 = MEMORY[0x28223BE20](v192);
  v184 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v182 = &v164 - v17;
  MEMORY[0x28223BE20](v16);
  v191 = &v164 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v20 = *(v19 - 8);
  v196 = v19;
  v197 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v201 = (&v164 - v22);
  v23 = sub_265D59D70();
  v194 = *(v23 - 8);
  v195 = v23;
  v24 = *(v194 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v177 = &v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v164 - v27;
  v29 = sub_265D58330();
  v190 = *(v29 - 8);
  v30 = *(v190 + 8);
  v31 = MEMORY[0x28223BE20](v29);
  v176 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v164 - v33;
  v35 = sub_265D57E50();
  v199 = *(v35 - 8);
  v200 = v35;
  v36 = v199[8];
  v37 = MEMORY[0x28223BE20](v35);
  v174 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v198 = &v164 - v39;
  v40 = sub_265D59DE0();
  v202 = *(v40 - 8);
  v203 = v40;
  v41 = *(v202 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v173 = &v164 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v171 = &v164 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v193 = &v164 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v189 = &v164 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v172 = &v164 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v164 - v55;
  v57 = *(v1 + 96);
  v185 = v2;
  sub_265D58CA0();
  v58 = v206;
  v59 = v210;
  if ((v211 & 0xC0) == 0x40)
  {
    v165 = v211;
    v168 = v208;
    v169 = v207;

    sub_265D59610();

    v60 = sub_265D59DD0();
    v61 = sub_265D5A080();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v167 = a1;
      v63 = v62;
      v64 = swift_slowAlloc();
      v166 = v59;
      v164 = v64;
      v206 = v64;
      *v63 = 136446466;
      v65 = v198;
      sub_265D59830();
      v66 = sub_265D57E40();
      v170 = v58;
      v68 = v67;
      (v199[1])(v65, v200);
      v69 = sub_265CF4FFC(v66, v68, &v206);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2082;
      sub_265D598A0();
      sub_265D59D60();
      (*(v194 + 8))(v28, v195);
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
      v70 = sub_265D5A3B0();
      v72 = v71;
      (*(v190 + 1))(v34, v29);
      v73 = sub_265CF4FFC(v70, v72, &v206);
      v58 = v170;

      *(v63 + 14) = v73;
      _os_log_impl(&dword_265C01000, v60, v61, "Link: Attempting to join session %{public}s with %{public}s", v63, 0x16u);
      v74 = v164;
      swift_arrayDestroy();
      v59 = v166;
      MEMORY[0x266770CF0](v74, -1, -1);
      v75 = v63;
      a1 = v167;
      MEMORY[0x266770CF0](v75, -1, -1);
    }

    v76 = v202;
    v77 = v203;
    v78 = *(v202 + 8);
    v78(v56, v203);
    v79 = v201;
    sub_265D59880();
    v81 = v196;
    v80 = v197;
    v82 = (*(v197 + 88))(v79, v196);
    if (v82 == *MEMORY[0x277CCB1F8])
    {
      v190 = v78;
      (*(v80 + 96))(v79, v81);
      v83 = *v79;
      v84 = v193;
      sub_265D59610();

      v85 = v83;
      v86 = sub_265D59DD0();
      v87 = sub_265D5A070();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v166 = v59;
        v90 = v89;
        v206 = v89;
        *v88 = 136446466;
        v91 = v198;
        sub_265D59830();
        v92 = sub_265D57E40();
        v94 = v93;
        (v199[1])(v91, v200);
        v95 = sub_265CF4FFC(v92, v94, &v206);

        *(v88 + 4) = v95;
        *(v88 + 12) = 2082;
        swift_getErrorValue();
        v96 = MEMORY[0x2667704D0](v204, v205);
        v98 = sub_265CF4FFC(v96, v97, &v206);

        *(v88 + 14) = v98;
        _os_log_impl(&dword_265C01000, v86, v87, "Link: Failed to join session %{public}s because it was invalidated with error %{public}s", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v90, -1, -1);
        MEMORY[0x266770CF0](v88, -1, -1);

        v99 = v203;
        v100 = v193;
      }

      else
      {

        v100 = v84;
        v99 = v77;
      }

      v190(v100, v99);
      *(swift_allocObject() + 16) = v83;
      v118 = v83;
LABEL_19:
      sub_265D58940();

      return;
    }

    if (v82 == *MEMORY[0x277CCB208])
    {
      v106 = v172;
      sub_265D59610();
      v107 = sub_265D59DD0();
      v108 = sub_265D5A080();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_265C01000, v107, v108, "Link: Calling session.join()", v109, 2u);
        MEMORY[0x266770CF0](v109, -1, -1);
      }

      v190 = v78;
      v202 = v76 + 8;
      v78(v106, v77);
      sub_265D59850();

      v110 = v175;
      sub_265D597E0();
      v111 = sub_265D598F0();
      v113 = v112;
      v114 = *(v179 + 8);
      v115 = v180;
      v114(v110, v180);

      v116 = HIBYTE(v113) & 0xF;
      if ((v113 & 0x2000000000000000) == 0)
      {
        v116 = v111 & 0xFFFFFFFFFFFFLL;
      }

      v167 = a1;
      v117 = v178;
      if (v116)
      {
        sub_265D597E0();
        sub_265D598F0();
        v114(v117, v115);
      }

      sub_265D597E0();
      v137 = v198;
      sub_265D598E0();
      v114(v117, v115);
      sub_265D57E40();
      v138 = v200;
      v139 = v199[1];
      v139(v137, v200);
      sub_265D58340();
      v140 = v174;
      sub_265D59830();
      sub_265D57E40();
      v139(v140, v138);
      v141 = v177;
      sub_265D598A0();
      sub_265D59D60();
      (*(v194 + 8))(v141, v195);
      sub_265D59800();
      sub_265D5A030();
      v142 = v191;
      sub_265D582C0();
      v170 = v58;

      v143 = v189;
      sub_265D59610();
      v144 = v183;
      v145 = v182;
      v146 = v192;
      v201 = *(v183 + 16);
      (v201)(v182, v142, v192);
      v147 = sub_265D59DD0();
      v148 = sub_265D5A080();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = v145;
        v150 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v206 = v199;
        *v150 = 136315138;
        sub_265CB5E54(&qword_28003E320, MEMORY[0x277D50FB0]);
        v151 = sub_265D5A3B0();
        v153 = v152;
        v200 = *(v144 + 8);
        v200(v149, v192);
        v154 = sub_265CF4FFC(v151, v153, &v206);
        v146 = v192;

        *(v150 + 4) = v154;
        _os_log_impl(&dword_265C01000, v147, v148, "Link: Joined session. Publishing update %s", v150, 0xCu);
        v155 = v199;
        __swift_destroy_boxed_opaque_existential_1Tm(v199);
        MEMORY[0x266770CF0](v155, -1, -1);
        MEMORY[0x266770CF0](v150, -1, -1);

        v156 = v189;
      }

      else
      {

        v200 = *(v144 + 8);
        v200(v145, v146);
        v156 = v143;
      }

      v190(v156, v203);
      v158 = *(v185 + 80);
      v157 = *(v185 + 88);
      swift_getObjectType();
      v159 = v191;
      (v201)(v184, v191, v146);
      v160 = v186;
      sub_265D59300();
      v161 = v188;
      sub_265D58ED0();
      (*(v187 + 8))(v160, v161);
      sub_265D58970();

      v200(v159, v146);
    }

    else
    {
      if (v82 == *MEMORY[0x277CCB200])
      {
        v119 = v171;
        sub_265D59610();

        v120 = sub_265D59DD0();
        v121 = sub_265D5A070();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v190 = v78;
          v123 = v122;
          v124 = swift_slowAlloc();
          v206 = v124;
          *v123 = 136446210;
          v125 = v198;
          sub_265D59830();
          v126 = sub_265D57E40();
          v170 = v58;
          v128 = v127;
          (v199[1])(v125, v200);
          v129 = sub_265CF4FFC(v126, v128, &v206);

          *(v123 + 4) = v129;
          _os_log_impl(&dword_265C01000, v120, v121, "Link: Failed to join session %{public}s because it is already joined", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v124);
          MEMORY[0x266770CF0](v124, -1, -1);
          MEMORY[0x266770CF0](v123, -1, -1);

          v190(v171, v77);
        }

        else
        {

          v78(v119, v77);
        }

        sub_265C9EB84();
        v83 = swift_allocError();
        *v162 = 6;
        *(swift_allocObject() + 16) = v83;
        v163 = v83;
        goto LABEL_19;
      }

      sub_265D59610();
      v130 = sub_265D59DD0();
      v131 = sub_265D5A070();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_265C01000, v130, v131, "Link: Unknown session state", v132, 2u);
        v133 = v132;
        v80 = v197;
        MEMORY[0x266770CF0](v133, -1, -1);
      }

      v78(v173, v77);
      sub_265C9EB84();
      v134 = swift_allocError();
      *v135 = 17;
      *(swift_allocObject() + 16) = v134;
      v136 = v134;
      sub_265D58940();

      (*(v80 + 8))(v201, v81);
    }
  }

  else
  {
    sub_265CB90F8(v206, v207, v208, v209, v210, v211);
    sub_265D59610();
    v101 = sub_265D59DD0();
    v102 = sub_265D5A070();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_265C01000, v101, v102, "Link: Failed to join session because link state isn't connected.", v103, 2u);
      MEMORY[0x266770CF0](v103, -1, -1);
    }

    (*(v202 + 8))(v44, v203);
    sub_265C9EB84();
    v104 = swift_allocError();
    *v105 = 9;
    *(swift_allocObject() + 16) = v104;
    sub_265D58940();
  }
}

uint64_t sub_265CB02E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v151 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  isa = v4[-1].isa;
  v150 = v4;
  v5 = *(isa + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v145 = &v125[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v148 = &v125[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E318, &unk_265D5B690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v144 = &v125[-v11];
  v12 = sub_265D58330();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v147 = &v125[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v143 = &v125[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v125[-v19];
  v21 = sub_265D59D70();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v125[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_265D59DE0();
  v156 = *(v26 - 8);
  v27 = *(v156 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v125[-v32];
  MEMORY[0x28223BE20](v31);
  v38 = &v125[-v37];
  v39 = *(a1 + 72);
  if ((v39 & 0xC0) == 0x40)
  {
    v131 = v33;
    v135 = v36;
    v132 = v35;
    v133 = v34;
    v146 = v26;
    v40 = *(a1 + 56);
    v41 = *(a1 + 64);
    v42 = *(a1 + 40);
    v43 = *(a1 + 32);
    v140 = *(a1 + 48);
    v141 = v42;
    v142 = v41;
    sub_265CB5DE4(v43, v42, v140, v40, v41, v39);

    sub_265D598A0();
    sub_265D59D60();
    v45 = *(v22 + 8);
    v44 = v22 + 8;
    v138 = v25;
    v139 = v21;
    v134 = v45;
    v45(v25, v21);
    v46 = MEMORY[0x26676E3E0](v152, v20);
    v47 = *(v13 + 8);
    v136 = v20;
    v137 = v47;
    v47(v20, v12);
    if (v46)
    {
      v130 = v13 + 8;
      v129 = v44;
      v135 = v12;
      v147 = v43;
      v48 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities;
      swift_beginAccess();
      v49 = *(a1 + v48);

      v50 = v152;
      v51 = sub_265CA7654(v152, v49);

      v52 = v139;
      v53 = v138;
      v54 = isa;
      if (v51)
      {
        v55 = v50;
        v128 = v48;
        v56 = v131;
        sub_265D59610();
        v57 = v143;
        v58 = v135;
        (*(v13 + 16))(v143, v55, v135);
        v59 = sub_265D59DD0();
        v60 = sub_265D5A080();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v153 = v127;
          *v61 = 136446210;
          sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
          v126 = v60;
          v62 = sub_265D5A3B0();
          v64 = v63;
          v137(v57, v58);
          v65 = sub_265CF4FFC(v62, v64, &v153);
          v53 = v138;

          *(v61 + 4) = v65;
          _os_log_impl(&dword_265C01000, v59, v126, "Link: Leave: Removing registered %{public}s", v61, 0xCu);
          v66 = v127;
          __swift_destroy_boxed_opaque_existential_1Tm(v127);
          MEMORY[0x266770CF0](v66, -1, -1);
          MEMORY[0x266770CF0](v61, -1, -1);
        }

        else
        {

          v137(v57, v58);
        }

        (*(v156 + 8))(v56, v146);
        swift_beginAccess();
        v95 = v144;
        sub_265CB88F4(v152, v144);
        swift_endAccess();
        sub_265CA4AE8(v95, &qword_28003E318, &unk_265D5B690);
        v52 = v139;
      }

      v96 = v148;
      sub_265D59880();
      v97 = v150;
      v98 = (*(v54 + 11))(v96, v150);
      v99 = *MEMORY[0x277CCB200];
      v100 = *(v54 + 1);
      v100(v96, v97);
      v101 = v136;
      if (v98 == v99)
      {
        v102 = v52;
        v103 = v133;
        sub_265D59610();

        v104 = sub_265D59DD0();
        v105 = sub_265D5A080();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v153 = v107;
          *v106 = 136315138;
          sub_265D598A0();
          sub_265D59D60();
          v134(v53, v102);
          sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
          v108 = v135;
          v109 = sub_265D5A3B0();
          v110 = v101;
          v112 = v111;
          v137(v110, v108);
          v113 = sub_265CF4FFC(v109, v112, &v153);

          *(v106 + 4) = v113;
          _os_log_impl(&dword_265C01000, v104, v105, "Link: Leaving session for %s", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v107);
          MEMORY[0x266770CF0](v107, -1, -1);
          MEMORY[0x266770CF0](v106, -1, -1);
        }

        (*(v156 + 8))(v103, v146);
        sub_265D59870();
        sub_265D58970();
        goto LABEL_24;
      }

      v153 = 0;
      v154 = 0xE000000000000000;
      v114 = v145;
      sub_265D59880();
      sub_265D5A290();
      v100(v114, v97);
      v116 = v153;
      v115 = v154;
      v117 = v132;
      sub_265D59610();

      v118 = sub_265D59DD0();
      v119 = sub_265D5A070();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v153 = v121;
        *v120 = 136446210;
        v122 = sub_265CF4FFC(v116, v115, &v153);

        *(v120 + 4) = v122;
        _os_log_impl(&dword_265C01000, v118, v119, "Link: Failed to leave because session isn't in joined state. State: %{public}s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v121);
        MEMORY[0x266770CF0](v121, -1, -1);
        MEMORY[0x266770CF0](v120, -1, -1);
      }

      else
      {
      }

      (*(v156 + 8))(v117, v146);
      sub_265C9EB84();
      v123 = swift_allocError();
      *v124 = 7;
      *(swift_allocObject() + 16) = v123;
    }

    else
    {
      v73 = v135;
      sub_265D59610();
      v74 = v147;
      (*(v13 + 16))(v147, v152, v12);

      v75 = sub_265D59DD0();
      v76 = sub_265D5A070();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v155 = v152;
        *v77 = 136315394;
        v148 = sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
        v150 = v75;
        v78 = sub_265D5A3B0();
        LODWORD(isa) = v76;
        v79 = v12;
        v81 = v80;
        v82 = v74;
        v83 = v137;
        v137(v82, v12);
        v84 = sub_265CF4FFC(v78, v81, &v155);

        *(v77 + 4) = v84;
        *(v77 + 12) = 2080;
        v85 = v138;
        sub_265D598A0();
        v86 = v136;
        sub_265D59D60();
        v134(v85, v139);
        v87 = sub_265D5A3B0();
        v89 = v88;
        v83(v86, v79);
        v90 = sub_265CF4FFC(v87, v89, &v155);

        *(v77 + 14) = v90;
        v91 = v150;
        _os_log_impl(&dword_265C01000, v150, isa, "Link: Leave - Session activity mismatch. Requested: %s, Session: %s", v77, 0x16u);
        v92 = v152;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v92, -1, -1);
        MEMORY[0x266770CF0](v77, -1, -1);

        (*(v156 + 8))(v135, v146);
      }

      else
      {

        v137(v74, v12);
        (*(v156 + 8))(v73, v146);
      }

      sub_265C9EB84();
      v93 = swift_allocError();
      *v94 = 16;
      *(swift_allocObject() + 16) = v93;
    }

    sub_265D58940();
LABEL_24:
  }

  sub_265D59610();
  v67 = sub_265D59DD0();
  v68 = sub_265D5A070();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_265C01000, v67, v68, "Link: Leave - Failed to leave session because link state isn't connected", v69, 2u);
    MEMORY[0x266770CF0](v69, -1, -1);
  }

  (*(v156 + 8))(v38, v26);
  sub_265C9EB84();
  v70 = swift_allocError();
  *v71 = 9;
  *(swift_allocObject() + 16) = v70;
  return sub_265D58940();
}

uint64_t sub_265CB1200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = a1;
  v2 = sub_265D58330();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E248, &unk_265D5B5D0);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v26);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  sub_265D59DC0();
  (*(v11 + 8))(v14, v10);
  (*(v3 + 16))(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  (*(v3 + 32))(v16 + v15, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3A0, &qword_265D5B8D8);
  sub_265D58940();
  v17 = v24;
  v18 = v26;
  (*(v5 + 16))(v24, v9, v26);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v17, v18);
  v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_265CB1F50;
  v21[1] = 0;
  sub_265D58930();
  return (*(v5 + 8))(v9, v18);
}

uint64_t sub_265CB15B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a3;
  v5 = sub_265D59D70();
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v92 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E318, &unk_265D5B690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v80[-v11];
  v12 = sub_265D58330();
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = *(v95 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v80[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v80[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v80[-v18];
  v97 = sub_265D59DE0();
  v20 = *(v97 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v97);
  v24 = &v80[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v80[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v80[-v28];
  v30 = OBJC_IVAR____TtC22SeymourSessionServices13MultiUserLink_registeredLocalActivities;
  swift_beginAccess();
  v31 = *(a1 + v30);

  v99 = a2;
  LOBYTE(a2) = sub_265CA7654(a2, v31);

  v90 = v24;
  if (a2)
  {
    v84 = v27;
    sub_265D59610();
    v33 = v95;
    v32 = v96;
    (*(v95 + 16))(v19, v99, v96);
    v34 = sub_265D59DD0();
    v35 = sub_265D5A080();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v87 = v20;
      v37 = v36;
      v82 = v36;
      v83 = swift_slowAlloc();
      v98[0] = v83;
      *v37 = 136315138;
      sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
      v81 = v35;
      v38 = sub_265D5A3B0();
      v40 = v39;
      (*(v33 + 8))(v19, v32);
      v41 = sub_265CF4FFC(v38, v40, v98);
      v20 = v87;

      v42 = v82;
      *(v82 + 4) = v41;
      _os_log_impl(&dword_265C01000, v34, v81, "Link: Terminating - Removing registered %s", v42, 0xCu);
      v43 = v83;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x266770CF0](v43, -1, -1);
      MEMORY[0x266770CF0](v42, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v19, v32);
    }

    (*(v20 + 8))(v29, v97);
    swift_beginAccess();
    v44 = v88;
    sub_265CB88F4(v99, v88);
    swift_endAccess();
    sub_265CA4AE8(v44, &qword_28003E318, &unk_265D5B690);
    v27 = v84;
  }

  if ((*(a1 + 72) & 0xC0) == 0x40)
  {
    v87 = v20;
    v45 = *(a1 + 64);
    v46 = *(a1 + 40);
    v47 = *(a1 + 48);
    v48 = *(a1 + 32);

    v49 = v92;
    v88 = v48;
    sub_265D598A0();
    v50 = v91;
    sub_265D59D60();
    v51 = v94 + 8;
    v83 = *(v94 + 8);
    (v83)(v49, v93);
    v52 = v99;
    LOBYTE(v48) = MEMORY[0x26676E3E0](v99, v50);
    v53 = v95;
    v54 = v50;
    v55 = v96;
    v84 = *(v95 + 8);
    (v84)(v54, v96);
    if (v48)
    {
      *v85 = v88;
    }

    else
    {
      sub_265D59610();
      (*(v53 + 16))(v89, v52, v55);

      v61 = sub_265D59DD0();
      v62 = sub_265D5A070();

      LODWORD(v95) = v62;
      v99 = v61;
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v94 = v51;
        v64 = v63;
        v82 = swift_slowAlloc();
        v98[0] = v82;
        *v64 = 136315394;
        sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
        v85 = v45;
        v86 = v46;
        v65 = v89;
        v66 = sub_265D5A3B0();
        v68 = v67;
        v69 = v84;
        (v84)(v65, v55);
        v70 = sub_265CF4FFC(v66, v68, v98);

        *(v64 + 4) = v70;
        *(v64 + 12) = 2080;
        v71 = v92;
        sub_265D598A0();
        v72 = v91;
        sub_265D59D60();
        (v83)(v71, v93);
        v73 = sub_265D5A3B0();
        v75 = v74;
        v69(v72, v55);
        v76 = sub_265CF4FFC(v73, v75, v98);

        *(v64 + 14) = v76;
        v77 = v99;
        _os_log_impl(&dword_265C01000, v99, v95, "Link: Terminating - Session activity mismatch. Requested: %s != Session: %s", v64, 0x16u);
        v78 = v82;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v78, -1, -1);
        MEMORY[0x266770CF0](v64, -1, -1);
      }

      else
      {

        (v84)(v89, v55);
      }

      (*(v87 + 8))(v90, v97);
      sub_265C9EB84();
      swift_allocError();
      *v79 = 16;
      swift_willThrow();
    }
  }

  else
  {
    sub_265D59610();
    v57 = sub_265D59DD0();
    v58 = sub_265D5A070();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_265C01000, v57, v58, "Link: Terminating - Failed to leave session because link state isn't connected", v59, 2u);
      MEMORY[0x266770CF0](v59, -1, -1);
    }

    (*(v20 + 8))(v27, v97);
    sub_265C9EB84();
    swift_allocError();
    *v60 = 9;
    return swift_willThrow();
  }
}

uint64_t sub_265CB1F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_265D59D70();
  v30 = *(v32 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_265D58330();
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_265D59610();

  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = v18;
    v27 = swift_slowAlloc();
    v28 = v10;
    v34 = v27;
    *v19 = 136315138;
    sub_265D598A0();
    sub_265D59D60();
    (*(v30 + 8))(v6, v32);
    sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
    v20 = v33;
    v21 = sub_265D5A3B0();
    v23 = v22;
    (*(v31 + 8))(v9, v20);
    v24 = sub_265CF4FFC(v21, v23, &v34);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_265C01000, v16, v17, "Link: Terminating %s", v19, 0xCu);
    v25 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266770CF0](v25, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);

    (*(v11 + 8))(v14, v28);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_265D59840();
  return sub_265D58970();
}

uint64_t sub_265CB22CC(uint64_t a1)
{
  v57 = a1;
  v2 = sub_265D59910();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v58 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_265D57E50();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265D59DE0();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v51[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51[-v22];
  v24 = *(v1 + 96);
  sub_265D58CA0();
  if ((v67 & 0xC0) == 0x40)
  {
    v55 = v66;
    v56 = v64;
    sub_265D59880();
    v25 = (*(v20 + 88))(v23, v19);
    v26 = *MEMORY[0x277CCB208];
    (*(v20 + 8))(v23, v19);
    if (v25 == v26)
    {
      sub_265D59610();

      v27 = sub_265D59DD0();
      v28 = sub_265D5A080();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v63[0] = v30;
        *v29 = 136446210;
        v52 = v28;
        sub_265D59830();
        sub_265CB5E54(&qword_28003E368, MEMORY[0x277CC95F0]);
        v31 = v54;
        v32 = sub_265D5A3B0();
        v34 = v33;
        (*(v53 + 8))(v8, v31);
        v35 = sub_265CF4FFC(v32, v34, v63);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_265C01000, v27, v52, "Link: attempting to send data to non-joined session %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x266770CF0](v30, -1, -1);
        MEMORY[0x266770CF0](v29, -1, -1);
      }

      (*(v61 + 8))(v18, v62);
    }

    else
    {
      sub_265D59610();

      v40 = sub_265D59DD0();
      v41 = sub_265D5A080();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v63[0] = v43;
        *v42 = 136446210;
        sub_265D59830();
        v44 = sub_265D57E40();
        v46 = v45;
        (*(v53 + 8))(v8, v54);
        v47 = sub_265CF4FFC(v44, v46, v63);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_265C01000, v40, v41, "Link: sending data to session %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x266770CF0](v43, -1, -1);
        MEMORY[0x266770CF0](v42, -1, -1);
      }

      (*(v61 + 8))(v16, v62);
    }

    v49 = v58;
    v48 = v59;
    v50 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x277CCB260], v60);
    type metadata accessor for MultiUserLinkMessage();
    sub_265CB5E54(&qword_28003E3C0, type metadata accessor for MultiUserLinkMessage);
    sub_265CB5E54(&qword_28003E3C8, type metadata accessor for MultiUserLinkMessage);
    sub_265D597A0();

    return (*(v48 + 8))(v49, v50);
  }

  else
  {
    sub_265CB90F8(v63[0], v63[1], v64, v65, v66, v67);
    sub_265D59610();
    v36 = sub_265D59DD0();
    v37 = sub_265D5A070();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_265C01000, v36, v37, "Link: Failed to send data because session state isn't joined", v38, 2u);
      MEMORY[0x266770CF0](v38, -1, -1);
    }

    return (*(v61 + 8))(v13, v62);
  }
}

uint64_t sub_265CB2A94(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_265D59610();
    v9 = a1;
    v10 = sub_265D59DD0();
    v11 = sub_265D5A070();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = MEMORY[0x2667704D0](v17[2], v17[3]);
      v16 = sub_265CF4FFC(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_265C01000, v10, v11, "Link: Failed to send data with error: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266770CF0](v13, -1, -1);
      MEMORY[0x266770CF0](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_265CB2C84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = sub_265D59D70();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v83 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D58330();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v84 = v9;
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = sub_265D59DE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v82 = &v74 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v74 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v74 - v29;
  sub_265D59610();
  sub_265D59DC0();
  v91 = *(v20 + 8);
  v92 = v19;
  v91(v30, v19);
  v31 = *(v2 + 96);
  sub_265D58CA0();
  v32 = v94;
  if ((v99 & 0xC0) == 0x40)
  {
    v78 = v96;
    v79 = v95;
    v80 = v98;
    v81 = v6;
    v94 = 0;
    v95 = 0xE000000000000000;

    sub_265D59880();
    sub_265D5A290();
    v33 = *(v12 + 8);
    v33(v18, v11);
    v34 = v95;
    v77 = v94;
    sub_265D59880();
    v35 = (*(v12 + 88))(v16, v11);
    v36 = *MEMORY[0x277CCB200];
    v33(v16, v11);
    if (v35 == v36)
    {
      v37 = v90;
      sub_265D59610();

      v38 = v32;
      v39 = sub_265D59DD0();
      v40 = sub_265D5A070();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v82 = v38;
        v42 = v41;
        v76 = swift_slowAlloc();
        v94 = v76;
        *v42 = 136315394;
        v43 = sub_265CF4FFC(v77, v34, &v94);
        LODWORD(v77) = v40;
        v44 = v43;

        *(v42 + 4) = v44;
        *(v42 + 12) = 2080;
        v75 = v39;
        v45 = v83;
        sub_265D598A0();
        v46 = v88;
        sub_265D59D60();
        v47 = v86;
        v48 = v87;
        (*(v86 + 8))(v45, v87);
        sub_265CB5E54(&qword_28003E378, MEMORY[0x277D51510]);
        v49 = v81;
        v50 = sub_265D5A3B0();
        v52 = v51;
        v53 = v89;
        (*(v89 + 8))(v46, v49);
        v54 = sub_265CF4FFC(v50, v52, &v94);

        *(v42 + 14) = v54;
        v55 = v75;
        _os_log_impl(&dword_265C01000, v75, v77, "Link: queryJoinedActivity found session with state: %s, activity: %s", v42, 0x16u);
        v56 = v76;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v56, -1, -1);
        MEMORY[0x266770CF0](v42, -1, -1);

        v91(v90, v92);
      }

      else
      {

        v91(v37, v92);
        v49 = v81;
        v46 = v88;
        v53 = v89;
        v47 = v86;
        v48 = v87;
        v45 = v83;
      }

      sub_265D598A0();
      sub_265D59D60();
      (*(v47 + 8))(v45, v48);
      v69 = v85;
      (*(v53 + 16))(v85, v46, v49);
      v70 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v71 = swift_allocObject();
      (*(v53 + 32))(v71 + v70, v69, v49);
      sub_265D58940();

      return (*(v53 + 8))(v46, v49);
    }

    else
    {
      v63 = v82;
      sub_265D59610();

      v64 = sub_265D59DD0();
      v65 = sub_265D5A070();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v94 = v67;
        *v66 = 136315138;
        v68 = sub_265CF4FFC(v77, v34, &v94);

        *(v66 + 4) = v68;
        _os_log_impl(&dword_265C01000, v64, v65, "Link: queryJoinedActivity session isn't joined, with state: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x266770CF0](v67, -1, -1);
        MEMORY[0x266770CF0](v66, -1, -1);
      }

      else
      {
      }

      v91(v63, v92);
      sub_265C9EB84();
      v72 = swift_allocError();
      *v73 = 7;
      *(swift_allocObject() + 16) = v72;
      sub_265D58940();
    }
  }

  else
  {
    sub_265CB90F8(v94, v95, v96, v97, v98, v99);
    sub_265D59610();
    v57 = sub_265D59DD0();
    v58 = sub_265D5A070();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_265C01000, v57, v58, "Link: Failed to get current activity because session state isn't joined", v59, 2u);
      MEMORY[0x266770CF0](v59, -1, -1);
    }

    v91(v24, v92);
    sub_265C9EB84();
    v60 = swift_allocError();
    *v61 = 9;
    *(swift_allocObject() + 16) = v60;
    return sub_265D58940();
  }
}

uint64_t sub_265CB36F0@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v72 = sub_265D59DE0();
  v71 = *(v72 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D58330();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59D70();
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_265D57E50();
  v79 = *(v82 - 8);
  v11 = *(v79 + 64);
  v12 = MEMORY[0x28223BE20](v82);
  v78 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v65 - v14;
  v15 = sub_265D583A0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_265D59900();
  v73 = *(v74 - 8);
  v18 = *(v73 + 64);
  v19 = MEMORY[0x28223BE20](v74);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E370, &unk_265D5B8B8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  v87 = sub_265D58300();
  v80 = *(v87 - 8);
  v32 = *(v80 + 64);
  v33 = MEMORY[0x28223BE20](v87);
  v76 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v77 = &v65 - v34;
  v35 = *(v1 + 96);
  sub_265D58CA0();
  if ((v94 & 0xC0) == 0x40)
  {
    v69 = v94;
    v70 = v91;
    v71 = v90;
    v72 = v93;

    sub_265D59880();
    (*(v25 + 16))(v29, v31, v24);
    v36 = (*(v25 + 88))(v29, v24);
    if (v36 == *MEMORY[0x277CCB1F8])
    {
      v37 = *(v25 + 8);
      v37(v31, v24);
      v37(v29, v24);
      v68 = 0;
      v67 = 1;
      v38 = 2;
LABEL_4:
      v66 = v38;
LABEL_13:
      v47 = v74;
      sub_265D597E0();
      v48 = sub_265D598F0();
      v50 = v49;
      v51 = *(v73 + 8);
      v51(v23, v47);

      v52 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v52 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        sub_265D597E0();
        sub_265D598F0();
        v51(v21, v47);
      }

      sub_265D597E0();
      v53 = v75;
      sub_265D598E0();
      v51(v21, v47);
      sub_265D57E40();
      v54 = *(v79 + 8);
      v55 = v53;
      v56 = v82;
      v54(v55, v82);
      sub_265D58340();
      v57 = v78;
      sub_265D59830();
      sub_265D57E40();
      v54(v57, v56);
      v58 = v83;
      sub_265D598A0();
      sub_265D59D60();
      (*(v84 + 8))(v58, v85);
      sub_265D59800();
      sub_265D5A030();
      v59 = v77;
      sub_265D582C0();

      v60 = v80;
      v61 = v76;
      v62 = v87;
      (*(v80 + 16))(v76, v59, v87);
      v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v64 = swift_allocObject();
      (*(v60 + 32))(v64 + v63, v61, v62);
      sub_265D58940();

      return (*(v60 + 8))(v59, v62);
    }

    if (v36 == *MEMORY[0x277CCB208])
    {
      (*(v25 + 8))(v31, v24);
      v66 = 0;
      v68 = 0;
    }

    else
    {
      LODWORD(v68) = *MEMORY[0x277CCB200];
      v45 = *(v25 + 8);
      v46 = v36;
      v45(v31, v24);
      if (v46 != v68)
      {
        v45(v29, v24);
        v67 = 0;
        v68 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E75;
        goto LABEL_4;
      }

      v68 = 0;
      v66 = 1;
    }

    v67 = 1;
    goto LABEL_13;
  }

  sub_265CB90F8(v89, v90, v91, v92, v93, v94);
  sub_265D59610();
  v39 = sub_265D59DD0();
  v40 = sub_265D5A070();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_265C01000, v39, v40, "Link: Failed to get session because link isn't connected.", v41, 2u);
    MEMORY[0x266770CF0](v41, -1, -1);
  }

  (*(v71 + 8))(v4, v72);
  sub_265C9EB84();
  v42 = swift_allocError();
  *v43 = 9;
  *(swift_allocObject() + 16) = v42;
  return sub_265D58940();
}

uint64_t sub_265CB4124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_265D58330();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59D70();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D586F0();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v41 - v13;
  v14 = sub_265D59DE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  sub_265D59610();
  sub_265D59DC0();
  v41 = *(v15 + 8);
  v41(v21, v14);
  v22 = *(v2 + 96);
  sub_265D58CA0();
  v23 = v52;
  v24 = v55;
  v25 = v56;
  if ((v57 & 0xC0) == 0x40)
  {
    v41 = v53;
    v26 = sub_265D597F0();

    v27 = sub_265CB9AC4(v26, v23, v24, v25);

    sub_265CB958C(v27);

    sub_265D598A0();
    v28 = v45;
    sub_265D59D60();
    (*(v42 + 8))(v9, v43);
    sub_265D58310();
    (*(v46 + 8))(v28, v47);
    sub_265D5A030();
    v29 = v48;
    sub_265D586D0();
    v31 = v49;
    v30 = v50;
    v32 = v44;
    (*(v49 + 16))(v44, v29, v50);
    v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v34 = swift_allocObject();
    (*(v31 + 32))(v34 + v33, v32, v30);
    sub_265D58940();

    return (*(v31 + 8))(v29, v30);
  }

  else
  {
    sub_265CB90F8(v52, v53, v54, v55, v56, v57);
    sub_265D59610();
    v36 = sub_265D59DD0();
    v37 = sub_265D5A070();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_265C01000, v36, v37, "Link: Failed to get session because link isn't connected.", v38, 2u);
      MEMORY[0x266770CF0](v38, -1, -1);
    }

    v41(v19, v14);
    sub_265C9EB84();
    v39 = swift_allocError();
    *v40 = 9;
    *(swift_allocObject() + 16) = v39;
    return sub_265D58940();
  }
}

void sub_265CB46F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v154 = a1;
  v160 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v146 = &v135 - v6;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E488, &qword_265D5B948);
  v148 = *(v149 - 8);
  v7 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v135 - v8;
  v9 = sub_265D58740();
  v150 = *(v9 - 8);
  v151 = v9;
  v10 = *(v150 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v152 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v135 - v14;
  MEMORY[0x28223BE20](v13);
  v141 = &v135 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E490, &qword_265D5B950);
  v155 = *(v153 - 8);
  v17 = v155[8];
  v18 = MEMORY[0x28223BE20](v153);
  v145 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v143 = &v135 - v21;
  MEMORY[0x28223BE20](v20);
  v157 = (&v135 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E498, &unk_265D5B958);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v135 - v25;
  v27 = sub_265D59900();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v144 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v156 = &v135 - v32;
  v33 = sub_265D59DE0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v135 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v142 = &v135 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v135 - v44;
  sub_265D59610();
  sub_265D59DC0();
  v46 = *(v34 + 8);
  v158 = v34 + 8;
  v159 = v33;
  v47 = v33;
  v48 = v46;
  v46(v45, v47);
  v49 = *(v3 + 96);
  sub_265D58CA0();
  if ((v166 & 0xC0) == 0x40)
  {
    v137 = v163;
    v138 = v162;
    v140 = v165;
    v139 = v161;
    v50 = sub_265D597F0();
    MEMORY[0x28223BE20](v50);
    v51 = v154;
    *(&v135 - 2) = v154;
    sub_265CB58E8(sub_265CB9804, v50, v26);

    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_265CA4AE8(v26, &qword_28003E498, &unk_265D5B958);
      sub_265D59610();
      v53 = v150;
      v52 = v151;
      v54 = *(v150 + 16);
      v54(v15, v51, v151);
      v55 = v152;
      v54(v152, v51, v52);
      v56 = sub_265D59DD0();
      v57 = sub_265D5A070();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v161 = v157;
        *v58 = 136315394;
        LODWORD(v156) = v57;
        v59 = sub_265D58700();
        v61 = v60;
        v62 = *(v53 + 8);
        v62(v15, v52);
        v63 = sub_265CF4FFC(v59, v61, &v161);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2080;
        sub_265CB5E54(&qword_28003E4A0, MEMORY[0x277D53180]);
        v64 = v152;
        v65 = sub_265D5A3B0();
        v67 = v66;
        v62(v64, v52);
        v68 = sub_265CF4FFC(v65, v67, &v161);

        *(v58 + 14) = v68;
        _os_log_impl(&dword_265C01000, v56, v156, "Link: Announcement: Unknown participant %s, dropping %s", v58, 0x16u);
        v69 = v157;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v69, -1, -1);
        MEMORY[0x266770CF0](v58, -1, -1);
      }

      else
      {

        v89 = *(v53 + 8);
        v89(v55, v52);
        v89(v15, v52);
      }

      v48(v41, v159);
      sub_265C9EB84();
      v90 = swift_allocError();
      *v91 = 18;
      *(swift_allocObject() + 16) = v90;
      sub_265D58940();

      return;
    }

    v75 = v27;
    v76 = v48;
    v77 = *(v28 + 32);
    v152 = v75;
    v77(v156, v26);
    v78 = *MEMORY[0x277CCB1E0];
    v79 = v155[13];
    v80 = v153;
    v79(v157, *MEMORY[0x277CCB1E0], v153);
    sub_265D58730();
    v81 = sub_265D59E90();

    v82 = *MEMORY[0x277CE6068];
    v83 = sub_265D59EA0();
    v85 = v84;
    v86 = sub_265D59EA0();
    v136 = v81;
    if (v83 == v86 && v85 == v87)
    {

LABEL_19:
      sub_265D58720();
      v98 = v97;
      v99 = v155;
      v100 = v155[1];
      v158 = (v155 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v159 = v100;
      v101 = v157;
      v100(v157, v80);
      if (v98 <= 0.0)
      {
        v102 = *MEMORY[0x277CCB1F0];
      }

      else
      {
        v102 = v78;
      }

      v103 = v143;
      v79(v143, v102, v80);
      (v99[4])(v101, v103, v80);
      goto LABEL_23;
    }

    v88 = sub_265D5A3C0();

    if (v88)
    {
      goto LABEL_12;
    }

    v92 = *MEMORY[0x277CE6070];
    v93 = sub_265D59EA0();
    v95 = v94;
    if (v93 == sub_265D59EA0() && v95 == v96)
    {

      goto LABEL_18;
    }

    v110 = sub_265D5A3C0();

    if (v110)
    {
LABEL_12:

LABEL_18:
      v80 = v153;
      goto LABEL_19;
    }

    v111 = *MEMORY[0x277CE6078];
    v112 = sub_265D59EA0();
    v114 = v113;
    if (v112 == sub_265D59EA0() && v114 == v115)
    {

      v80 = v153;
LABEL_29:
      v99 = v155;
      v117 = v155[1];
      v158 = (v155 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v159 = v117;
      v101 = v157;
      v117(v157, v80);
      v79(v101, *MEMORY[0x277CCB1E8], v80);
LABEL_23:
      v104 = v28;
      v105 = *(v28 + 16);
      v106 = v156;
      v107 = v152;
      v105(v144, v156, v152);
      (v99[2])(v145, v101, v80);
      v108 = sub_265D57DA0();
      (*(*(v108 - 8) + 56))(v146, 1, 1, v108);
      sub_265D59D70();
      sub_265CB5E54(&unk_2813B8F70, MEMORY[0x277D4FB20]);
      v109 = v147;
      sub_265D59860();
      sub_265D598B0();
      sub_265D58970();

      (*(v148 + 8))(v109, v149);
      v159(v101, v80);
      (*(v104 + 8))(v106, v107);
      return;
    }

    v116 = sub_265D5A3C0();

    v80 = v153;
    if (v116)
    {
      goto LABEL_29;
    }

    v118 = v142;
    sub_265D59610();
    v120 = v150;
    v119 = v151;
    v121 = v141;
    (*(v150 + 16))(v141, v51, v151);
    v122 = sub_265D59DD0();
    v123 = sub_265D5A070();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v161 = v125;
      *v124 = 136315138;
      v126 = sub_265D58730();
      v127 = v121;
      v129 = v128;
      (*(v120 + 8))(v127, v119);
      v130 = sub_265CF4FFC(v126, v129, &v161);

      *(v124 + 4) = v130;
      _os_log_impl(&dword_265C01000, v122, v123, "Link: Announcement: Unknown player command %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      MEMORY[0x266770CF0](v125, -1, -1);
      MEMORY[0x266770CF0](v124, -1, -1);

      v131 = v142;
    }

    else
    {

      (*(v120 + 8))(v121, v119);
      v131 = v118;
    }

    v76(v131, v159);
    sub_265C9EB84();
    v132 = swift_allocError();
    *v133 = 5;
    *(swift_allocObject() + 16) = v132;
    v134 = v132;
    sub_265D58940();

    (v155[1])(v157, v153);
    (*(v28 + 8))(v156, v152);
  }

  else
  {
    sub_265CB90F8(v161, v162, v163, v164, v165, v166);
    sub_265D59610();
    v70 = sub_265D59DD0();
    v71 = sub_265D5A070();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_265C01000, v70, v71, "Link: Announcement: Failed to get session because link isn't connected.", v72, 2u);
      MEMORY[0x266770CF0](v72, -1, -1);
    }

    v48(v38, v159);
    sub_265C9EB84();
    v73 = swift_allocError();
    *v74 = 9;
    *(swift_allocObject() + 16) = v73;
    sub_265D58940();
  }
}

uint64_t sub_265CB57A8()
{
  v0 = sub_265D57E50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D598E0();
  v5 = sub_265D57E40();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v5 == sub_265D58700() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_265D5A3C0();
  }

  return v10 & 1;
}

uint64_t sub_265CB58E8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_265D59900();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265CB5BE8(uint64_t a1)
{
  v3 = sub_265D58330();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_265D58930();
}

uint64_t sub_265CB5D38()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  return sub_265D58CA0();
}

uint64_t sub_265CB5DB0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_265C959D0(v4);
}

uint64_t sub_265CB5DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6)
  {
    if (a6 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_265CB5E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265CB5E9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E448, &qword_265D5B920);
  result = sub_265D5A1D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_265D5A0C0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_265CB60C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF90, &qword_265D5B1C8);
  result = sub_265D5A1D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_265D5A460();
      sub_265D59EF0();
      result = sub_265D5A4A0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_265CB6324(uint64_t a1)
{
  v2 = v1;
  v41 = sub_265D583A0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E470, &unk_265D5B930);
  result = sub_265D5A1D0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550]);
      result = sub_265D59E60();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_265CB6680(uint64_t a1)
{
  v2 = v1;
  v41 = sub_265D58330();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E388, &qword_265D5B8C8);
  result = sub_265D5A1D0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]);
      result = sub_265D59E60();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

void sub_265CB69DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_265CB6BD8(a1, a2, v20, a3);
        return;
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
      goto LABEL_16;
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
}

void *sub_265CB6B48(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_265CB69DC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_265CB6BD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E448, &qword_265D5B920);
  result = sub_265D5A1E0();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_265D5A0C0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_265CB6DCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_265D5A460();
  sub_265D59EF0();
  v9 = sub_265D5A4A0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_265D5A3C0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_265CB74DC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_265CB6F1C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_265D583A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550]);
  v36 = a2;
  v13 = sub_265D59E60();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_265CB5E54(&qword_28003E468, MEMORY[0x277D51550]);
      v23 = sub_265D59E80();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_265CB765C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_265CB71FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_265D58330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]);
  v36 = a2;
  v13 = sub_265D59E60();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510]);
      v23 = sub_265D59E80();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_265CB7924(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_265CB74DC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_265CB60C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_265CB7BEC();
      goto LABEL_16;
    }

    sub_265CB7F80(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_265D5A460();
  sub_265D59EF0();
  result = sub_265D5A4A0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_265D5A3C0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_265D5A3E0();
  __break(1u);
  return result;
}

uint64_t sub_265CB765C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_265D583A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_265CB6324(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_265CB7D48(MEMORY[0x277D51550], &qword_28003E470, &unk_265D5B930);
      goto LABEL_12;
    }

    sub_265CB81B8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550]);
  v15 = sub_265D59E60();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_265CB5E54(&qword_28003E468, MEMORY[0x277D51550]);
      v23 = sub_265D59E80();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_265D5A3E0();
  __break(1u);
  return result;
}

uint64_t sub_265CB7924(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_265D58330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_265CB6680(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_265CB7D48(MEMORY[0x277D51510], &qword_28003E388, &qword_265D5B8C8);
      goto LABEL_12;
    }

    sub_265CB84D4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]);
  v15 = sub_265D59E60();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510]);
      v23 = sub_265D59E80();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_265D5A3E0();
  __break(1u);
  return result;
}

void *sub_265CB7BEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF90, &qword_265D5B1C8);
  v2 = *v0;
  v3 = sub_265D5A1C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_265CB7D48(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_265D5A1C0();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_265CB7F80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DF90, &qword_265D5B1C8);
  result = sub_265D5A1D0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_265D5A460();

      sub_265D59EF0();
      result = sub_265D5A4A0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_265CB81B8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_265D583A0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E470, &unk_265D5B930);
  v10 = sub_265D5A1D0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550]);
      result = sub_265D59E60();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_265CB84D4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_265D58330();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E388, &qword_265D5B8C8);
  v10 = sub_265D5A1D0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]);
      result = sub_265D59E60();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void *sub_265CB87F0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_265D467C0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B8, &qword_265D5DDA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_265CB88F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_265D58330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]);
  v35 = a1;
  v13 = sub_265D59E60();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_265CB5E54(&qword_28003E338, MEMORY[0x277D51510]);
      v22 = sub_265D59E80();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_265CB7D48(MEMORY[0x277D51510], &qword_28003E388, &qword_265D5B8C8);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_265CB8BC0(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_265CB8BC0(int64_t a1)
{
  v3 = sub_265D58330();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_265D5A130();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_265CB5E54(&qword_28003E380, MEMORY[0x277D51510]);
        v27 = sub_265D59E60();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
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

uint64_t sub_265CB8FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_265D58330() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_265CB9064(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_265CB90C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_265CB90F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }

  return result;
}

unint64_t sub_265CB917C()
{
  result = qword_28003E3F0;
  if (!qword_28003E3F0)
  {
    sub_265C932E0(255, &qword_28003E3E8, 0x277D6EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E3F0);
  }

  return result;
}

uint64_t sub_265CB9208(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265CB92BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_265CAC10C();
}

uint64_t sub_265CB92CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E450, &qword_265D5B928);
  return v4(a1, a1 + *(v5 + 48));
}