uint64_t sub_2614626F8()
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_26146276C()
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_2614627C0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261464D60();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_261462850@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_261464D60();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2614628A8(uint64_t a1)
{
  v2 = sub_261462ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2614628E4(uint64_t a1)
{
  v2 = sub_261462ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261462920(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF9F8, &qword_261468150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261462ABC();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
    sub_26144C654();
    sub_261464D80();
    v10 = v12[1];
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_261462ABC()
{
  result = qword_27FEAFA00;
  if (!qword_27FEAFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA00);
  }

  return result;
}

unint64_t sub_261462B24()
{
  result = qword_27FEAFA08;
  if (!qword_27FEAFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA08);
  }

  return result;
}

unint64_t sub_261462B7C()
{
  result = qword_27FEAFA10;
  if (!qword_27FEAFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA10);
  }

  return result;
}

unint64_t sub_261462BD4()
{
  result = qword_27FEAFA18;
  if (!qword_27FEAFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA18);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_261462C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_261462C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261462CCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261462E38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_261462CFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261464D60();

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

uint64_t sub_261462D5C@<X0>(char *a1@<X8>)
{
  v2 = sub_261464D60();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_261462DC0(uint64_t a1)
{
  v2 = sub_26146301C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261462DFC(uint64_t a1)
{
  v2 = sub_26146301C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261462E38(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA20, &qword_261468310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26146301C();
  sub_261464E40();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_261464D70();
    v12 = 1;
    sub_261464D70();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_26146301C()
{
  result = qword_2811AE788[0];
  if (!qword_2811AE788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811AE788);
  }

  return result;
}

unint64_t sub_261463084()
{
  result = qword_27FEAFA28;
  if (!qword_27FEAFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAFA28);
  }

  return result;
}

unint64_t sub_2614630DC()
{
  result = qword_2811AE778;
  if (!qword_2811AE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE778);
  }

  return result;
}

unint64_t sub_261463134()
{
  result = qword_2811AE780;
  if (!qword_2811AE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE780);
  }

  return result;
}

uint64_t sub_261463188@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v56 = a2;
  v57 = a3;
  v49 = a5;
  v6 = sub_261464620();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA30, &qword_261468480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v54 = &v48 - v15;
  v16 = sub_261464740();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v50 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v51 = &v48 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA38, &qword_261468488);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v48 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF960, &qword_261467AA8);
  v29 = *(sub_2614646B0() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_261468470;
  v59 = v28;
  v60 = v6;
  v52 = v11;
  v58 = v16;
  if (a1 <= 1)
  {
    a1 = v32 + v31;
    v53 = v32;
    sub_2614646A0();

    sub_261457B18();
    sub_2614646A0();

    v33 = objc_opt_self();
    v34 = [v33 currentDevice];
    v35 = [v34 model];

    sub_261464930();
    sub_2614646A0();

    v36 = [v33 currentDevice];
    v37 = [v36 systemName];

    sub_261464930();
    sub_2614646A0();

    v38 = [v33 currentDevice];
    v39 = [v38 systemVersion];

    sub_261464930();
    sub_2614646A0();

    v61 = v53;

    sub_261463828(v40);

    v41 = v54;
    sub_2614435C4(v54);

    v42 = v58;
    if ((*(v17 + 48))(v41, 1, v58) == 1)
    {
      sub_261463954(v41);
      (*(v7 + 56))(v59, 1, 1, v60);
    }

    else
    {
      v43 = v51;
      (*(v17 + 32))(v51, v41, v42);
      (*(v17 + 16))(v50, v43, v42);
      v44 = v52;
      sub_261464610();
      sub_2614645F0();
      (*(v17 + 8))(v43, v42);
      v46 = v59;
      v45 = v60;
      (*(v7 + 16))(v59, v44, v60);
      (*(v7 + 56))(v46, 0, 1, v45);
      (*(v7 + 8))(v44, v45);
      if ((*(v7 + 48))(v46, 1, v45) != 1)
      {
        return (*(v7 + 32))(v49, v46, v45);
      }
    }

    __break(1u);
  }

  v61 = a1;
  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t sub_261463828(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26145CEFC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_2614646B0();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261463954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA30, &qword_261468480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2614639DC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_261463A7C;

  return sub_261441AB4();
}

uint64_t sub_261463A7C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261463B70(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_261464620();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261463C34, 0, 0);
}

uint64_t sub_261463C34()
{
  v1 = v0[9];
  v2 = v1[15];
  v0[13] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D857D0] + 4);

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_261463EAC;
    v5 = MEMORY[0x277D84A98];
    v6 = MEMORY[0x277D84AC0];
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 17, v2, v7, v5, v6);
  }

  else
  {
    v8 = (*__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
    v9 = v8[1];
    if (v9)
    {
      v10 = v0[12];
      v11 = v0[8];
      v12 = v0[7];
      v13 = *v8;
      sub_261440F08(v0[9] + 56, (v0 + 2));
      v14 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

      sub_261463188(v12, v13, v9, v11, v10);

      v15 = *v14;
      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v16[1] = sub_2614641CC;
      v17 = v0[12];

      return sub_26145E1F8(v17);
    }

    else
    {
      v18 = v0[9];
      v20 = *(v18 + 96);
      v19 = *(v18 + 104);

      v20(1, 0xD000000000000023, 0x8000000261469330);

      v21 = v0[12];

      v22 = v0[1];

      return v22(0);
    }
  }
}

uint64_t sub_261463EAC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261463FC4, 0, 0);
}

uint64_t sub_261463FC4(uint64_t a1)
{
  if (*(v1 + 136))
  {
    v2 = MEMORY[0x277D84A98];
    v3 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v2, v3);
  }

  else
  {
    v4 = (*__swift_project_boxed_opaque_existential_1((*(v1 + 72) + 16), *(*(v1 + 72) + 40)) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
    v5 = v4[1];
    if (v5)
    {
      v6 = *(v1 + 96);
      v7 = *(v1 + 64);
      v8 = *(v1 + 56);
      v9 = *v4;
      sub_261440F08(*(v1 + 72) + 56, v1 + 16);
      v10 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));

      sub_261463188(v8, v9, v5, v7, v6);

      v11 = *v10;
      v12 = swift_task_alloc();
      *(v1 + 120) = v12;
      *v12 = v1;
      v12[1] = sub_2614641CC;
      v13 = *(v1 + 96);

      return sub_26145E1F8(v13);
    }

    else
    {
      v14 = *(v1 + 72);
      v16 = *(v14 + 96);
      v15 = *(v14 + 104);

      v16(1, 0xD000000000000023, 0x8000000261469330);

      v17 = *(v1 + 96);

      v18 = *(v1 + 8);

      return v18(0);
    }
  }
}

uint64_t sub_2614641CC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 128) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26146432C, 0, 0);
}

uint64_t sub_26146432C()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    v2 = v0[16];
    if (*(v2 + 16))
    {
      goto LABEL_6;
    }

    v3 = v0[16];

    v4 = 0x726F727265206F4ELL;
    v5 = 0xEE00646E756F6620;
  }

  else
  {
    v5 = 0x8000000261469360;
    v4 = 0xD000000000000029;
  }

  v6 = v0[9];
  v8 = *(v6 + 96);
  v7 = *(v6 + 104);

  v8(1, v4, v5);

  v2 = 0;
LABEL_6:
  v9 = v0[12];

  v10 = v0[1];

  return v10(v2);
}

uint64_t sub_26146442C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[13];

  v2 = v0[14];

  v3 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_2614644A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26145FE38;

  return sub_261463B70(a2, a3);
}

void sub_261464554()
{
  v0 = sub_261464920();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier_];

  if (!v2)
  {
    v2 = [v1 mainBundle];
  }

  qword_27FEB3C40 = v2;
}