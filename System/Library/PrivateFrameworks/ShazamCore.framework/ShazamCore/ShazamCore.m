uint64_t sub_2310266D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23102671C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_231028CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id shcore_log_object()
{
  if (shcore_log_object_onceToken != -1)
  {
    shcore_log_object_cold_1();
  }

  v1 = shcore_log_object_sLogObject;

  return v1;
}

uint64_t __shcore_log_object_block_invoke()
{
  shcore_log_object_sLogObject = os_log_create("com.apple.shazam.ShazamCore", [@"core" cStringUsingEncoding:4]);

  return MEMORY[0x2821F96F8]();
}

void sub_231029ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23102BDAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102C180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102C2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102D338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23102D860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t Dictionary.mapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a1;
  v14[8] = a2;
  v9 = sub_231032CBC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4C8, &qword_231034530);
  WitnessTable = swift_getWitnessTable();
  result = sub_231031270(sub_231031238, v14, v9, TupleTypeMetadata2, v11, WitnessTable, MEMORY[0x277D84950], &v15);
  if (!v8)
  {
    v16 = result;
    sub_231032D0C();
    swift_getWitnessTable();
    return sub_231032CAC();
  }

  return result;
}

uint64_t sub_231031078@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v19[1] = a5;
  v20 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = v19 - v15;
  result = a2(a1);
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v13 + 16))(v16, a1, TupleTypeMetadata2);
    (*(*(a4 - 8) + 32))(a6 + v18, &v16[*(TupleTypeMetadata2 + 48)], a4);
    return (*(*(v20 - 8) + 8))(v16);
  }

  return result;
}

uint64_t sub_231031238@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  return sub_231031078(a1, *(v3 + 56), *(v3 + 16), *(v3 + 24), *(v3 + 32), a3, a2);
}

uint64_t sub_231031270(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_231032D5C();
  if (!v26)
  {
    return sub_231032CFC();
  }

  v48 = v26;
  v52 = sub_231032DAC();
  v39 = sub_231032DBC();
  sub_231032D8C();
  result = sub_231032D4C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_231032D7C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_231032D9C();
      result = sub_231032D6C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t sub_23103184C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2310318F4;

  return sub_231032748();
}

uint64_t sub_2310318F4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v3)
  {
    v5 = *(v1 + 16);
    v6 = sub_231032CCC();

    (v5)[2](v5, v6);
    _Block_release(v5);
  }

  else
  {
  }

  v7 = *(v4 + 8);

  return v7();
}

SHStorefront __swiftcall SHStorefront.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SHStorefront()
{
  result = qword_27DD3B4D0;
  if (!qword_27DD3B4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD3B4D0);
  }

  return result;
}

uint64_t sub_231031B50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231032C0C;

  return sub_23103184C(v2);
}

uint64_t sub_231031BFC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_231032C0C;

  return v7();
}

uint64_t sub_231031CE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_231032C0C;

  return sub_231031BFC(v2, v3, v5);
}

uint64_t sub_231031DA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_231031E8C;

  return v8();
}

uint64_t sub_231031E8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231031FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_231031E8C;

  return sub_231031DA4(a1, v4, v5, v7);
}

uint64_t sub_23103208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4D8, &qword_231034540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_231032378(a3, v25 - v11);
  v13 = sub_231032D3C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_231032BAC(v12, &qword_27DD3B4D8, &qword_231034540);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_231032D2C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_231032D1C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_231032CEC() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_231032BAC(a3, &qword_27DD3B4D8, &qword_231034540);

    return v23;
  }

LABEL_8:
  sub_231032BAC(a3, &qword_27DD3B4D8, &qword_231034540);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_231032378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4D8, &qword_231034540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310323E8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2310324E0;

  return v7(a1);
}

uint64_t sub_2310324E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2310325D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_231032C0C;

  return sub_2310323E8(a1, v5);
}

uint64_t sub_231032690(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_231031E8C;

  return sub_2310323E8(a1, v5);
}

uint64_t sub_231032748()
{
  v1 = sub_231032C8C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4E0, &qword_231034598) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(MEMORY[0x277CD7BC8] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23103286C;

  return MEMORY[0x2821243B0]();
}

uint64_t sub_23103286C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;

  if (v2)
  {

    v9 = sub_231032A38;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v9 = sub_2310329A4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2310329A4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_231032CDC();
  v5 = v4;

  v7 = v0[4];
  v6 = v0[5];

  v8 = v0[1];

  return v8(v3, v5);
}

uint64_t sub_231032A38()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_231032C4C();
  sub_231032C7C();
  (*(v4 + 8))(v1, v3);
  v5 = sub_231032C6C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v2, 1, v5);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_231032BAC(v0[5], &qword_27DD3B4E0, &qword_231034598);
    v9 = 0xE100000000000000;
    v10 = 45;
  }

  else
  {
    sub_231032C5C();
    (*(v6 + 8))(v8, v5);
    v10 = sub_231032CDC();
    v9 = v11;
  }

  v13 = v0[4];
  v12 = v0[5];

  v14 = v0[1];

  return v14(v10, v9);
}

uint64_t sub_231032BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}