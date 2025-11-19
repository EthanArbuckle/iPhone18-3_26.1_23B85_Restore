void sub_27078E3E4(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2707A8EF0();
      __break(1u);
      goto LABEL_22;
    }

    sub_27078FC9C(i, &v30, &qword_2808295C8);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_270724188(&v32, v27);
    v9 = *a3;
    v11 = sub_270721FD8();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829720);
      sub_2707A8C50();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_270724188(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_27078DAF4(v14, a2 & 1);
  v16 = sub_270721FD8();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A600);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v27);

    return;
  }

LABEL_22:
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0xD00000000000001BLL, 0x80000002707B56B0);
  sub_2707A8BF0();
  MEMORY[0x2743A7BE0](39, 0xE100000000000000);
  sub_2707A8C70();
  __break(1u);
}

void sub_27078E6FC(uint64_t a1, char a2, void *a3)
{
  v41 = a3;
  v6 = type metadata accessor for EventReportSenderID();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v42 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v14 = v36 - v13;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_13:

    return;
  }

  v36[0] = v6;
  v36[1] = v3;
  v15 = 0;
  v16 = *(v11 + 48);
  v37 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v38 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2707A8EF0();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v12;
    sub_27078FC9C(v37 + *(v12 + 72) * v15, v14, &qword_2808296C0);
    v18 = v42;
    sub_270723128(v14, v42);
    v19 = *&v14[v38];
    v20 = *v41;
    v22 = sub_270721F0C(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829740);
      sub_2707A8C50();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = v42;
    v30 = *v41;
    *(*v41 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    sub_270723128(v29, v30[6] + *(v40 + 72) * v22);
    *(v30[7] + 8 * v22) = v19;
    v31 = v30[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v15;
    v30[2] = v33;
    a2 = 1;
    v12 = v17;
    if (v39 == v15)
    {
      goto LABEL_13;
    }
  }

  sub_27078DDA8(v25, a2 & 1);
  v27 = sub_270721F0C(v42);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();
  v45 = v34;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A600);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_27072318C(v42);

    return;
  }

LABEL_22:
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0xD00000000000001BLL, 0x80000002707B56B0);
  sub_2707A8BF0();
  MEMORY[0x2743A7BE0](39, 0xE100000000000000);
  sub_2707A8C70();
  __break(1u);
}

unint64_t sub_27078EB48()
{
  result = qword_28082A4A8;
  if (!qword_28082A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A4A8);
  }

  return result;
}

unint64_t sub_27078EB9C()
{
  result = qword_28082A4C0;
  if (!qword_28082A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A4C0);
  }

  return result;
}

unint64_t sub_27078EBF0()
{
  result = qword_28082A4E8;
  if (!qword_28082A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A4E8);
  }

  return result;
}

unint64_t sub_27078EC44(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A4F0);
    v4();
    result = OUTLINED_FUNCTION_139();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27078ECA8()
{
  result = qword_28082A500;
  if (!qword_28082A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A500);
  }

  return result;
}

unint64_t sub_27078ECFC()
{
  result = qword_28082A510;
  if (!qword_28082A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A510);
  }

  return result;
}

unint64_t sub_27078ED50()
{
  result = qword_28082A518;
  if (!qword_28082A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A518);
  }

  return result;
}

unint64_t sub_27078EDA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A4D8);
    v4();
    result = OUTLINED_FUNCTION_139();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27078EE08()
{
  result = qword_28082A530;
  if (!qword_28082A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A530);
  }

  return result;
}

unint64_t sub_27078EE5C()
{
  result = qword_28082A540;
  if (!qword_28082A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A540);
  }

  return result;
}

unint64_t sub_27078EEB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A480);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27078EF1C()
{
  result = qword_28082A550;
  if (!qword_28082A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A550);
  }

  return result;
}

unint64_t sub_27078EF70()
{
  result = qword_28082A558;
  if (!qword_28082A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A558);
  }

  return result;
}

unint64_t sub_27078EFC8()
{
  result = qword_28082A560;
  if (!qword_28082A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A560);
  }

  return result;
}

unint64_t sub_27078F020()
{
  result = qword_28082A568;
  if (!qword_28082A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A568);
  }

  return result;
}

unint64_t sub_27078F078()
{
  result = qword_28082A570;
  if (!qword_28082A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A570);
  }

  return result;
}

uint64_t sub_27078F80C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27078F82C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
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

  *(result + 137) = v3;
  return result;
}

unint64_t sub_27078F8D8()
{
  result = qword_28082A578;
  if (!qword_28082A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A578);
  }

  return result;
}

unint64_t sub_27078F960()
{
  result = qword_28082A590;
  if (!qword_28082A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A590);
  }

  return result;
}

unint64_t sub_27078F9E8()
{
  result = qword_28082A5A8;
  if (!qword_28082A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A5A8);
  }

  return result;
}

unint64_t sub_27078FA40()
{
  result = qword_28082A5B0;
  if (!qword_28082A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A5B0);
  }

  return result;
}

unint64_t sub_27078FA98()
{
  result = qword_28082A5B8;
  if (!qword_28082A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A5B8);
  }

  return result;
}

unint64_t sub_27078FAF0()
{
  result = qword_28082A5C0;
  if (!qword_28082A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A5C0);
  }

  return result;
}

unint64_t sub_27078FB48()
{
  result = qword_28082A5C8;
  if (!qword_28082A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A5C8);
  }

  return result;
}

unint64_t sub_27078FBE8()
{
  result = qword_28082A5E0;
  if (!qword_28082A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A5E0);
  }

  return result;
}

uint64_t sub_27078FC3C(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_27078FC58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27078FC9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27078FD04(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_107(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_27078FD74()
{
  result = qword_28082A628;
  if (!qword_28082A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A628);
  }

  return result;
}

unint64_t sub_27078FDF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_108(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_107(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27078FE48()
{
  result = qword_28082A640;
  if (!qword_28082A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A640);
  }

  return result;
}

unint64_t sub_27078FEA0()
{
  result = qword_28082A648;
  if (!qword_28082A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return sub_2707A8DF0();
}

uint64_t OUTLINED_FUNCTION_26_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = a1;

  return sub_2707A8D30();
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return sub_2707A8D30();
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_2707A8DF0();
}

uint64_t OUTLINED_FUNCTION_34_2(void *a1)
{
  *v4 = a1;
  a1[3] = v1;
  a1[4] = v2;
  a1[2] = v3;
  return v3;
}

id OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return [v1 (v2 + 320)];
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return HIDServiceProperties.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_74()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77()
{
}

uint64_t OUTLINED_FUNCTION_79(void *a1)
{
  *v4 = a1;
  a1[3] = v3;
  a1[4] = v1;
  a1[5] = *(v2 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return HIDServiceProperties.subscript.getter(0x6C65636341444948, 0xEE00736576727543, a3, a4);
}

uint64_t OUTLINED_FUNCTION_81()
{

  return HIDServiceProperties.subscript.getter();
}

id OUTLINED_FUNCTION_82(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_83()
{

  return HIDServiceProperties.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return HIDServiceProperties.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_90()
{

  return HIDServiceProperties.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_2707A8F60();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_97()
{

  return sub_2707A8F60();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_2707A8A20();
}

uint64_t OUTLINED_FUNCTION_116@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = v1;

  return MEMORY[0x2821FDA08](v3 - 96, v2);
}

uint64_t OUTLINED_FUNCTION_117()
{

  return HIDServiceProperties.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return sub_2707A8A20();
}

uint64_t OUTLINED_FUNCTION_135@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_137(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return sub_27078FC9C(va1, va, v2);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return HIDServiceProperties.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_140()
{
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  return HIDServiceProperties.subscript.setter(a1, a2, 0xD000000000000014, a4);
}

uint64_t OUTLINED_FUNCTION_142()
{

  return sub_2707A8F60();
}

void sub_270790A50(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2707A8230();
  v7 = [v6 localizedDescription];
  sub_2707A85D0();

  a1();
  if (v8)
  {
    v9 = v6;

    v10 = sub_2707A8420();
    v11 = sub_2707A8830();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      swift_slowAlloc();
      *v12 = 136446979;
      v13 = sub_27073D0F4();

      *(v12 + 4) = v13;
      *(v12 + 12) = 2082;
      v14 = [v9 domain];
      sub_2707A85D0();
      v26 = a4;

      v15 = sub_27073D0F4();

      *(v12 + 14) = v15;
      *(v12 + 22) = 2048;
      v16 = [v9 code];

      *(v12 + 24) = v16;
      *(v12 + 32) = 2081;
      v17 = sub_27073D0F4();

      *(v12 + 34) = v17;
      _os_log_impl(&dword_270703000, v10, v11, "%{public}s: %{public}s (%ld) %{private}s", v12, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_40();
      OUTLINED_FUNCTION_1_40();

      OUTLINED_FUNCTION_0_51();
      return;
    }
  }

  else
  {
    v9 = v6;

    v10 = sub_2707A8420();
    v18 = sub_2707A8830();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      swift_slowAlloc();
      *v19 = 136446723;
      v26 = a4;
      v20 = [v9 domain];
      sub_2707A85D0();

      v21 = sub_27073D0F4();

      *(v19 + 4) = v21;
      *(v19 + 12) = 2048;
      v22 = [v9 code];

      *(v19 + 14) = v22;
      *(v19 + 22) = 2081;
      v23 = sub_27073D0F4();

      *(v19 + 24) = v23;
      _os_log_impl(&dword_270703000, v10, v18, "%{public}s (%ld) %{private}s", v19, 0x20u);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_51();
}

void sub_270790E18(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = sub_2707A8230();

  v6 = [v5 localizedDescription];
  sub_2707A85D0();

  a1();
  if (v7)
  {
    v24 = v5;

    v8 = sub_2707A8420();
    v9 = sub_2707A8830();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136446979;
      v11 = sub_27073D0F4();

      *(v10 + 4) = v11;
      *(v10 + 12) = 2082;
      v12 = [v24 domain];
      sub_2707A85D0();

      v13 = sub_27073D0F4();

      *(v10 + 14) = v13;
      *(v10 + 22) = 2048;
      v14 = [v24 code];

      *(v10 + 24) = v14;
      *(v10 + 32) = 2081;
      v15 = sub_27073D0F4();

      *(v10 + 34) = v15;
      _os_log_impl(&dword_270703000, v8, v9, "%{public}s: %{public}s (%ld) %{private}s", v10, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_40();
      OUTLINED_FUNCTION_1_40();

      OUTLINED_FUNCTION_0_51();
      return;
    }
  }

  else
  {
    v24 = v5;

    v8 = sub_2707A8420();
    v16 = sub_2707A8830();

    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      swift_slowAlloc();
      *v17 = 136446723;
      v18 = [v24 domain];
      sub_2707A85D0();

      v19 = sub_27073D0F4();

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      v20 = [v24 code];

      *(v17 + 14) = v20;
      *(v17 + 22) = 2081;
      v21 = sub_27073D0F4();

      *(v17 + 24) = v21;
      _os_log_impl(&dword_270703000, v8, v16, "%{public}s (%ld) %{private}s", v17, 0x20u);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_51();
}

void OUTLINED_FUNCTION_1_40()
{

  JUMPOUT(0x2743A9010);
}

void DigitizerEvent.init(time:digitizerType:digitizerEventMask:generationCount:index:identity:point:range:touch:flags:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 2)
  {
    if (a5 <= 0xFFFFFFFFLL)
    {
      if (((a6 | a5) & 0x8000000000000000) == 0)
      {
        if (a6 <= 0xFFFFFFFFLL)
        {
          IOHIDEventCreateDigitizerFingerEvent();
          goto LABEL_10;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a5 > 0xFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if ((a6 | a5) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a6 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    return;
  }

  IOHIDEventCreateDigitizerEvent();
LABEL_10:
  if (a4)
  {
    IOHIDEventSetIntegerValue();
  }
}

uint64_t sub_270791410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_15_0();
  }

  else
  {
    return sub_2707A8EA0();
  }
}

uint64_t DigitizerType.description.getter(int a1)
{
  result = 0x73756C797473;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 1801680240;
      break;
    case 2:
      result = 0x7265676E6966;
      break;
    case 3:
      result = 1684955496;
      break;
    default:
      result = sub_2707A8E70();
      break;
  }

  return result;
}

unint64_t sub_2707915F8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2707916C4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_27075E0D0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2707916F4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_27075E248(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t DigitizerEventMask.description.getter(char a1)
{
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  if ((a1 & 0x20) != 0)
  {
    v27 = MEMORY[0x277D84F90];
    sub_27071A918();
    v5 = v27;
    OUTLINED_FUNCTION_13_12();
    if (v8)
    {
      OUTLINED_FUNCTION_8_20(v7);
      sub_27071A918();
      v5 = v27;
    }

    *(v5 + 16) = v1;
    *(v5 + 4 * v2 + 32) = 32;
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_20();
  }

  OUTLINED_FUNCTION_13_12();
  if (v8)
  {
    OUTLINED_FUNCTION_8_20(v9);
    sub_27071A918();
  }

  *(v5 + 16) = v1;
  *(v5 + 4 * v2 + 32) = 4;
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_15:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_20();
  }

  OUTLINED_FUNCTION_13_12();
  if (v8)
  {
    OUTLINED_FUNCTION_8_20(v10);
    sub_27071A918();
  }

  *(v5 + 16) = v1;
  *(v5 + 4 * v2 + 32) = 1;
  if ((a1 & 2) == 0)
  {
LABEL_5:
    v6 = *(v5 + 16);
    if (!v6)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

LABEL_20:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_20();
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v6 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    OUTLINED_FUNCTION_8_20(v11);
    sub_27071A918();
  }

  *(v5 + 16) = v6;
  *(v5 + 4 * v12 + 32) = 2;
LABEL_25:
  sub_27071A63C();
  v13 = 32;
  OUTLINED_FUNCTION_17_9();
  v15 = 0x65676E6172;
  do
  {
    v16 = *(v5 + v13);
    if ((v16 & 0x20) != 0)
    {
      v22 = 0xE800000000000000;
      v20 = 0x797469746E656469;
    }

    else if ((v16 & 4) != 0)
    {
      v22 = 0xE800000000000000;
      v20 = v14;
    }

    else if (v16)
    {
      v22 = 0xE500000000000000;
      v20 = v15;
    }

    else if ((v16 & 2) != 0)
    {
      v22 = 0xE500000000000000;
      v20 = 0x6863756F74;
    }

    else
    {
      v17 = v14;
      v18 = v15;
      v19 = sub_2707A8E70();
      v15 = v18;
      v14 = v17;
      v20 = v19;
      v22 = v21;
    }

    v23 = *(v4 + 16);
    if (v23 >= *(v4 + 24) >> 1)
    {
      sub_27071A63C();
      OUTLINED_FUNCTION_17_9();
    }

    *(v4 + 16) = v23 + 1;
    v24 = v4 + 16 * v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = v22;
    v13 += 4;
    --v6;
  }

  while (v6);
LABEL_38:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829630);
  sub_27071A810(&qword_280829638, &qword_280829630);
  v25 = sub_2707A8550();

  return v25;
}

uint64_t DigitizerEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t DigitizerEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t DigitizerEvent.z.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

unint64_t DigitizerEvent.digitizerEventMask.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t DigitizerEvent.identity.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t DigitizerEvent.index.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t (*DigitizerEvent.collection.modify(void *a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_14_12(a1, a2);
  IntegerValue = IOHIDEventGetIntegerValue();
  OUTLINED_FUNCTION_2_16(IntegerValue);
  return sub_270791DE0;
}

unint64_t sub_270791DFC()
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t DigitizerEvent.digitizerType.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t DigitizerEvent.generationCount.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t (*DigitizerEvent.range.modify(void *a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_14_12(a1, a2);
  IntegerValue = IOHIDEventGetIntegerValue();
  OUTLINED_FUNCTION_2_16(IntegerValue);
  return sub_270791F88;
}

uint64_t (*DigitizerEvent.touch.modify(void *a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_14_12(a1, a2);
  IntegerValue = IOHIDEventGetIntegerValue();
  OUTLINED_FUNCTION_2_16(IntegerValue);
  return sub_27079201C;
}

void (*sub_270792040(uint64_t a1))(id *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = j_j__objc_retain(v3);
  IntegerValue = IOHIDEventGetIntegerValue();

  *(a1 + 8) = IntegerValue != 0;
  return sub_2707920B4;
}

void sub_2707920B4(id *a1)
{
  v1 = j_j__objc_retain(*a1);
  IOHIDEventSetIntegerValue();
}

double DigitizerEvent.point.getter()
{
  IOHIDEventGetFloatValue();
  v1 = v0;
  OUTLINED_FUNCTION_5_24();
  IOHIDEventGetFloatValue();
  return v1;
}

void sub_270792158(uint64_t a1@<X8>)
{
  *a1 = DigitizerEvent.point.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t DigitizerEvent.point.setter()
{
  IOHIDEventSetFloatValue();
  OUTLINED_FUNCTION_5_24();

  return IOHIDEventSetFloatValue();
}

uint64_t (*DigitizerEvent.point.modify(void *a1, uint64_t a2))()
{
  a1[3] = a2;
  IOHIDEventGetFloatValue();
  v4 = v3;
  OUTLINED_FUNCTION_5_24();
  IOHIDEventGetFloatValue();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = 0;
  return sub_27079224C;
}

uint64_t sub_27079224C()
{
  IOHIDEventSetFloatValue();
  OUTLINED_FUNCTION_5_24();

  return IOHIDEventSetFloatValue();
}

unint64_t sub_2707922A0()
{
  result = qword_28082A658;
  if (!qword_28082A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A658);
  }

  return result;
}

unint64_t sub_27079233C()
{
  result = qword_28082A670;
  if (!qword_28082A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A670);
  }

  return result;
}

unint64_t sub_270792394()
{
  result = qword_28082A678;
  if (!qword_28082A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A678);
  }

  return result;
}

unint64_t sub_2707923EC()
{
  result = qword_28082A680;
  if (!qword_28082A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A680);
  }

  return result;
}

unint64_t sub_270792444()
{
  result = qword_28082A688;
  if (!qword_28082A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A688);
  }

  return result;
}

uint64_t sub_2707924DC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.x.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270792510(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.y.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270792544(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.z.getter();
  *v1 = v3;
  return result;
}

unint64_t sub_270792578(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.digitizerEventMask.getter();
  *v1 = result;
  return result;
}

uint64_t sub_2707925AC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.identity.getter();
  *v1 = result;
  return result;
}

uint64_t sub_2707925E0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.index.getter();
  *v1 = result;
  return result;
}

BOOL sub_270792614(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.collection.getter();
  *v1 = result;
  return result;
}

unint64_t sub_27079264C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.digitizerType.getter();
  *v1 = result;
  return result;
}

uint64_t sub_270792680(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.generationCount.getter();
  *v1 = result;
  return result;
}

BOOL sub_2707926B4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.range.getter();
  *v1 = result;
  return result;
}

BOOL sub_2707926EC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = DigitizerEvent.touch.getter();
  *v1 = result;
  return result;
}

void OUTLINED_FUNCTION_7_20()
{

  sub_27071A918();
}

unint64_t GenericGestureType.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t GenericGestureType.hashValue.getter()
{
  sub_2707A8F60();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_270792938()
{
  sub_2707A8F60();
  GenericGestureType.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t GenericGestureType.description.getter(int a1)
{
  result = 7364980;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6570697773;
      break;
    case 2:
      result = 0x706154646E6168;
      break;
    case 4:
      result = 0x48706154646E6168;
      break;
    case 5:
      result = 0x657A6565757173;
      break;
    case 6:
      result = 0x65757153676E6F6CLL;
      break;
    case 7:
      result = 0x7153656C62756F64;
      break;
    default:
      result = sub_2707A8E70();
      break;
  }

  return result;
}

unint64_t GenericGestureEvent.gestureType.getter()
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t GenericGestureEvent.gestureType.modify(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(a1 + 8) = result;
    return sub_270792BB0;
  }

  __break(1u);
  return result;
}

uint64_t (*GenericGestureEvent.tapCount.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  *a1 = IOHIDEventGetIntegerValue();
  return sub_270792C2C;
}

uint64_t (*GenericGestureEvent.swipeProgress.modify(void *a1, uint64_t a2))()
{
  a1[1] = a2;
  IOHIDEventGetFloatValue();
  *a1 = v3;
  return sub_270792C9C;
}

unint64_t sub_270792CB0()
{
  result = qword_28082A6A0;
  if (!qword_28082A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A6A0);
  }

  return result;
}

unint64_t sub_270792D08()
{
  result = qword_28082A6A8;
  if (!qword_28082A6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A6A8);
  }

  return result;
}

unint64_t sub_270792D6C@<X0>(_DWORD *a1@<X8>)
{
  result = GenericGestureEvent.gestureType.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270792DA4@<X0>(uint64_t *a1@<X8>)
{
  result = GenericGestureEvent.tapCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270792DDC@<X0>(void *a1@<X8>)
{
  result = GenericGestureEvent.swipeProgress.getter();
  *a1 = v3;
  return result;
}

void RotationReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x270792EE4);
      }

      if (v2 >= 12)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void RotationReport.phase.setter()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_1_6(v0);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t sub_270792F84()
{
  result = sub_270792FA8();
  qword_28082A6B8 = result;
  unk_28082A6C0 = v1;
  return result;
}

uint64_t sub_270792FA8()
{
  v1 = sub_27070E504(&unk_288074978);
  v65 = v1;
  v66 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v63 = v66;
  v64 = v65;
  sub_270708D74(v65, v66);
  v4 = sub_27070E504(&unk_2880749A0);
  v65 = v4;
  v66 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v61 = v66;
  v62 = v65;
  sub_270708D74(v65, v66);
  v7 = sub_27070E504(&unk_2880749C8);
  v65 = v7;
  v66 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v59 = v66;
  v60 = v65;
  sub_270708D74(v65, v66);
  v10 = sub_27070E504(&unk_2880749F0);
  v65 = v10;
  v66 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v57 = v66;
  v58 = v65;
  sub_270708D74(v65, v66);
  v13 = sub_27070E504(&unk_288074A18);
  v65 = v13;
  v66 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v55 = v66;
  v56 = v65;
  sub_270708D74(v65, v66);
  v16 = sub_27070E504(&unk_288074A40);
  v65 = v16;
  v66 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v18 = v66;
  sub_270706C38(v65, v66);
  v54 = v65;
  sub_270708D74(v65, v66);
  LOBYTE(v65) = 5;
  v19 = sub_27074110C(&v65, 0xFF00uLL);
  v52 = v20;
  v53 = v19;
  LOBYTE(v65) = 17;
  v21 = sub_27074110C(&v65, 0x102uLL);
  v50 = v22;
  v51 = v21;
  v24 = sub_27070E504(&unk_288074A68);
  v65 = v24;
  v66 = v23;
  v25 = 0;
  switch(v23 >> 62)
  {
    case 1uLL:
      v25 = v24 >> 32;
      break;
    case 2uLL:
      v25 = *(v24 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v23);
      break;
  }

  sub_270766E38(v25, v25, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v26 = v65;
  v27 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v26, v27);
  LOBYTE(v65) = 7;
  v28 = sub_270740DC4(&v65, 255);
  v48 = v29;
  v49 = v28;
  v31 = sub_27070E504(&unk_288074A90);
  v65 = v31;
  v66 = v30;
  v32 = 0;
  switch(v30 >> 62)
  {
    case 1uLL:
      v32 = v31 >> 32;
      break;
    case 2uLL:
      v32 = *(v31 + 24);
      break;
    case 3uLL:
      break;
    default:
      v32 = BYTE6(v30);
      break;
  }

  sub_270766E38(v32, v32, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v33 = v65;
  v34 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v33, v34);
  v36 = sub_27070E504(&unk_288074AB8);
  v65 = v36;
  v66 = v35;
  v37 = 0;
  switch(v35 >> 62)
  {
    case 1uLL:
      v37 = v36 >> 32;
      break;
    case 2uLL:
      v37 = *(v36 + 24);
      break;
    case 3uLL:
      break;
    default:
      v37 = BYTE6(v35);
      break;
  }

  sub_270766E38(v37, v37, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v38 = v65;
  v39 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v38, v39);
  v41 = sub_27070E504(&unk_288074AE0);
  v65 = v41;
  v66 = v40;
  v42 = 0;
  switch(v40 >> 62)
  {
    case 1uLL:
      v42 = v41 >> 32;
      break;
    case 2uLL:
      v42 = *(v41 + 24);
      break;
    case 3uLL:
      break;
    default:
      v42 = BYTE6(v40);
      break;
  }

  sub_270766E38(v42, v42, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v44 = v65;
  v43 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AB530;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 16;
  *(inited + 96) = &type metadata for ReportSize;
  *(inited + 104) = &protocol witness table for ReportSize;
  *(inited + 72) = v64;
  *(inited + 80) = v63;
  *(inited + 136) = &type metadata for ReportCount;
  *(inited + 144) = &protocol witness table for ReportCount;
  *(inited + 112) = v62;
  *(inited + 120) = v61;
  *(inited + 176) = &type metadata for Input;
  *(inited + 184) = &protocol witness table for Input;
  *(inited + 152) = v60;
  *(inited + 160) = v59;
  *(inited + 216) = &type metadata for ReportSize;
  *(inited + 224) = &protocol witness table for ReportSize;
  *(inited + 192) = v58;
  *(inited + 200) = v57;
  *(inited + 256) = &type metadata for ReportCount;
  *(inited + 264) = &protocol witness table for ReportCount;
  *(inited + 232) = v56;
  *(inited + 240) = v55;
  *(inited + 296) = &type metadata for Input;
  *(inited + 304) = &protocol witness table for Input;
  *(inited + 272) = v54;
  *(inited + 280) = v18;
  *(inited + 336) = &type metadata for UsagePage;
  *(inited + 344) = &protocol witness table for UsagePage;
  *(inited + 312) = v53;
  *(inited + 320) = v52;
  *(inited + 376) = &type metadata for Usage;
  *(inited + 384) = &protocol witness table for Usage;
  *(inited + 352) = v51;
  *(inited + 360) = v50;
  *(inited + 416) = &type metadata for LogicalMinimum;
  *(inited + 424) = &protocol witness table for LogicalMinimum;
  *(inited + 392) = v26;
  *(inited + 400) = v27;
  *(inited + 456) = &type metadata for LogicalMaximum;
  *(inited + 464) = &protocol witness table for LogicalMaximum;
  *(inited + 432) = v49;
  *(inited + 440) = v48;
  *(inited + 496) = &type metadata for ReportSize;
  *(inited + 504) = &protocol witness table for ReportSize;
  *(inited + 472) = v33;
  *(inited + 480) = v34;
  *(inited + 536) = &type metadata for ReportCount;
  *(inited + 544) = &protocol witness table for ReportCount;
  *(inited + 512) = v38;
  *(inited + 520) = v39;
  *(inited + 576) = &type metadata for Input;
  *(inited + 584) = &protocol witness table for Input;
  *(inited + 552) = v44;
  *(inited + 560) = v43;
  v46 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v46;
}

uint64_t static RotationReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_2808294D0 != -1)
  {
    swift_once();
  }

  v2 = qword_28082A6B8;
  v3 = qword_28082A6C0;
  *a1 = qword_28082A6B8;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t RotationReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270793918@<X0>(uint64_t *a1@<X8>)
{
  result = RotationReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_270793958@<X0>(_BYTE *a1@<X8>)
{
  result = RotationReport.flags.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2707939D0@<X0>(_BYTE *a1@<X8>)
{
  result = RotationReport.phase.getter();
  *a1 = result;
  return result;
}

void (*RotationReport.z.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_270710834();
  return sub_27072832C;
}

uint64_t RotationReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270793B78);
      }

      if (v4 >= 12)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270793B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = RotationReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*RotationReport.remoteTimestamp.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270793CC4);
      }

      if (v6 >= 12)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return sub_270793CD4;
  }
}

void sub_270793CD4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    RotationReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 12)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_270793DB4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x270793E94);
      }

      if (v7 >= 12)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_270793EA4;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_270793EA4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    RotationReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 12)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

double GenericGestureGesture.dispatch(report:)()
{
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  IOHIDEventSetPhase();
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  IOHIDEventSetIntegerValue();
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  IOHIDEventSetFloatValue();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v1 = swift_allocObject();
  *&result = 1;
  *(v1 + 16) = xmmword_2707A9CF0;
  *(v1 + 56) = &type metadata for GenericGestureEvent;
  *(v1 + 64) = &protocol witness table for GenericGestureEvent;
  *(v1 + 32) = GenericGestureEvent;
  return result;
}

CFStringRef _sSo15HIDEventServiceC12UniversalHIDE14logDescriptionSSvg_0()
{
  result = CFCopyDescription(v0);
  if (result)
  {
    v2 = result;
    v3 = sub_2707A85D0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2707942DC()
{
  v1 = sub_2707A85C0();
  v2 = [v0 propertyForKey_];

  if (v2)
  {
    sub_2707A8A20();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_27076B680(v7);
    return 0;
  }
}

void sub_2707943B4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2707A87C0();
  }

  v4 = sub_2707A85C0();

  [v2 setProperty:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t HIDServiceClient.mouseAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_5_25(a1);
  OUTLINED_FUNCTION_3_22();
  v1 = sub_2707942DC();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceClient.mouseScrollAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_5_25(a1);
  OUTLINED_FUNCTION_3_22();
  v1 = sub_2707942DC();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceClient.trackpadAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_5_25(a1);
  OUTLINED_FUNCTION_3_22();
  v1 = sub_2707942DC();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceClient.trackpadScrollAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_5_25(a1);
  OUTLINED_FUNCTION_3_22();
  v1 = sub_2707942DC();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

id sub_270794808(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2707A84F0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 eventMatching_];

  return v3;
}

id sub_27079487C(uint64_t a1)
{
  sub_270763A38(a1, v12);
  v2 = v13;
  if (v13)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x28223BE20](v3, v3);
    v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_2707A8E90();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2707A85C0();
  v10 = [v1 setProperty:v8 forKey:v9];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t DockSwipeGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t static DockSwipeEvent.dispatch(report:platform:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  type metadata accessor for DockSwipeGesture();
  *(swift_initStackObject() + 16) = v3;
  return DockSwipeGesture.dispatch(report:)();
}

uint64_t DockSwipeGesture.dispatch(report:)()
{
  if (*(v0 + 16) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  DockSwipeEvent = IOHIDEventCreateDockSwipeEvent();
  IOHIDEventSetIntegerValue();
  OUTLINED_FUNCTION_0_0();
  v2 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  if (v2 != 0.0 || (OUTLINED_FUNCTION_0_0(), _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_0_0(), vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL) != 0.0))
  {
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    mach_absolute_time();
    VelocityEvent = IOHIDEventCreateVelocityEvent();
    IOHIDEventAppendEvent();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  v5 = *(v0 + 16);
  v6 = DockSwipeEvent;
  mach_absolute_time();
  if (v5 == 1)
  {
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    v8 = &protocol witness table for DigitizerEvent;
    v9 = &type metadata for DigitizerEvent;
  }

  else
  {
    DigitizerEvent = IOHIDEventCreateRelativePointerEvent();
    v8 = &protocol witness table for PointerEvent;
    v9 = &type metadata for PointerEvent;
  }

  IOHIDEventAppendEvent();

  *(v4 + 56) = v9;
  *(v4 + 64) = v8;
  *(v4 + 32) = DigitizerEvent;

  return v4;
}

uint64_t sub_270794F98()
{
  v0 = sub_2707A8440();
  __swift_allocate_value_buffer(v0, qword_2808375D0);
  __swift_project_value_buffer(v0, qword_2808375D0);
  return sub_2707A8430();
}

uint64_t sub_27079501C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_270796198;
  a2[1] = v6;
}

uint64_t sub_27079509C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 48) = sub_270796138;
  *(v6 + 56) = v5;
}

uint64_t HIDReportDispatcher.terminationWasRequestedHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HIDReportDispatcher.terminationWasRequestedHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t HIDReportDispatcher.init()()
{
  v1 = v0;
  sub_2707A8860();
  OUTLINED_FUNCTION_0_1();
  v43 = v3;
  v44 = v2;
  MEMORY[0x28223BE20](v2, v4);
  OUTLINED_FUNCTION_30_1();
  v7 = v6 - v5;
  v8 = sub_2707A8850();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_30_1();
  v10 = sub_2707A84B0();
  MEMORY[0x28223BE20](v10 - 8, v11);
  OUTLINED_FUNCTION_30_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v41 - v14;
  sub_2707A8410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6C8);
  OUTLINED_FUNCTION_0_56();
  sub_2707959C8(v16, v17);
  v18 = MEMORY[0x277D84F90];
  v0[5] = sub_2707A8520();
  v0[6] = nullsub_1;
  v0[7] = 0;
  v19 = [objc_allocWithZone(MEMORY[0x277D0EEF0]) initWithType_];
  if (!v19)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v19;
  v0[2] = v19;
  sub_27073FB54(0, &qword_280829910);
  v42 = v20;
  v0[3] = sub_2707A8870();
  if (qword_2808294D8 != -1)
  {
    swift_once();
  }

  v21 = sub_2707A8440();
  v22 = __swift_project_value_buffer(v21, qword_2808375D0);
  (*(*(v21 - 8) + 16))(v15, v22, v21);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v21);
  sub_2707A84A0();
  aBlock = v18;
  sub_2707959C8(&qword_280829918, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829920);
  sub_270795A10();
  sub_2707A8A90();
  (*(v43 + 104))(v7, *MEMORY[0x277D85268], v44);
  sub_27079CDEC(0xD00000000000002BLL, 0x80000002707B57B0);
  sub_2707A8890();
  sub_27079CDEC(0xD000000000000034, 0x80000002707B57E0);
  type metadata accessor for HIDVirtualServicePool(0);
  swift_allocObject();
  v23 = HIDVirtualServicePool.init(logger:queue:workloop:)();
  v1[4] = v23;

  v25 = v42;
  OUTLINED_FUNCTION_12_13(v24, sel_setDispatchQueue_);
  v49 = sub_270795A98;
  v50 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_2707325D0;
  v48 = &block_descriptor_4;
  v26 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_12_13(v27, sel_setCancelHandler_);
  _Block_release(v26);
  v49 = sub_270795AB8;
  v50 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_270795BD4;
  v48 = &block_descriptor_3_0;
  v28 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_12_13(v29, sel_setServiceNotificationHandler_);
  _Block_release(v28);
  sub_2707A8520();
  v30 = sub_2707A84F0();

  OUTLINED_FUNCTION_12_13(v31, sel_setMatching_);

  [v25 activate];
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = (v23 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_terminationWasRequestedHandler);
  swift_beginAccess();
  *v33 = sub_270795D0C;
  v33[1] = v32;

  v34 = [v25 services];
  sub_27073FB54(0, &qword_28082A6D0);
  v35 = sub_2707A8710();

  result = sub_27073D0D0(v35);
  if (!result)
  {
LABEL_11:

    return v1;
  }

  v37 = result;
  if (result >= 1)
  {
    for (i = 0; i != v37; ++i)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x2743A80A0](i, v35);
      }

      else
      {
        v39 = *(v35 + 8 * i + 32);
      }

      v40 = v39;
      sub_270795ABC();
    }

    goto LABEL_11;
  }

  __break(1u);
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

uint64_t sub_2707959C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270795A10()
{
  result = qword_280829928;
  if (!qword_280829928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829928);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_270795ABC()
{
  v1 = sub_2707A84C0();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_2707A84D0();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    HIDVirtualServicePool.addServiceClient(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_270795BD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_270795C3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270795C74(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 48);

    v4(a1);
  }

  return result;
}

void HIDReportDispatcher.setInputDevices(_:for:)()
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v1 = *(v0 + 40);
  sub_270723814();
  *(v0 + 40) = v1;
  swift_endAccess();
  sub_270795DB4();
  HIDVirtualServicePool.updateInputDevices(inputDevices:for:)();
}

void sub_270795DB4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v22 = MEMORY[0x277D84FA0];
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v20 = v1;
LABEL_4:
  while (2)
  {
    if (v5)
    {
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(*(*(v1 + 56) + ((v7 << 9) | (8 * v9))) + 16);
      if (!v10)
      {
        continue;
      }

      v11 = ( + 40);
      while (1)
      {
        v12 = *v11;
        v13 = HIDServiceProperties.subscript.getter();
        if (v14)
        {
          LOBYTE(v15) = HIDDeviceType.init(deviceTypeHint:)(*&v13);
          v16 = v15;
          if (v15 != 7)
          {
            goto LABEL_29;
          }
        }

        v17 = HIDServiceProperties.primaryUsagePair.getter();
        v18 = HIWORD(v17);
        switch(v17)
        {
          case 1u:
            if (v18 == 5)
            {
              v19 = 2;
            }

            else
            {
              v19 = 4;
            }

            if (v18 == 6)
            {
              v16 = 3;
            }

            else
            {
              v16 = v19;
            }

            break;
          case 0xFF00u:
            if (v18 != 102)
            {
              goto LABEL_22;
            }

            v16 = 6;
            break;
          case 0xDu:
            if (v18 == 4)
            {
              v16 = 1;
              break;
            }

            if (v18 == 12)
            {
              v16 = 5;
              break;
            }

            if (v18 != 5)
            {
LABEL_22:
              v16 = 4;
              break;
            }

            v16 = 0;
            break;
          default:
            goto LABEL_22;
        }

LABEL_29:
        sub_270796570(&v21, v16);

        v11 += 2;
        if (!--v10)
        {

          v1 = v20;
          goto LABEL_4;
        }
      }
    }

    break;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      HIDVirtualServicePool.enabledDeviceTypes.setter();
      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t HIDReportDispatcher.deinit()
{

  return v0;
}

uint64_t HIDReportDispatcher.__deallocating_deinit()
{
  HIDReportDispatcher.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_270796160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2707961C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2707B2990;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_270796224(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v29 = &v28 - v13;
  v30 = v2;
  v14 = *v2;
  sub_2707A8F60();
  sub_2707A8410();
  OUTLINED_FUNCTION_0_56();
  sub_2707959C8(v15, v16);
  sub_2707A8540();
  v32 = v4;
  v17 = *(a2 + *(v4 + 20));
  MEMORY[0x2743A8540](v17);
  v18 = sub_2707A8FC0();
  v19 = -1 << *(v14 + 32);
  v20 = v18 & ~v19;
  if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v6 + 72);
    do
    {
      sub_2707230C4(*(v14 + 48) + v22 * v20, v11);
      if (sub_2707A83D0())
      {
        v23 = *&v11[*(v32 + 20)];
        sub_27072318C(v11);
        if (v23 == v17)
        {
          sub_27072318C(a2);
          sub_2707230C4(*(v14 + 48) + v22 * v20, v31);
          return 0;
        }
      }

      else
      {
        sub_27072318C(v11);
      }

      v20 = (v20 + 1) & v21;
    }

    while (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  v24 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v29;
  sub_2707230C4(a2, v29);
  v33 = *v24;
  sub_270796D90(v26, v20, isUniquelyReferenced_nonNull_native);
  *v24 = v33;
  sub_270723128(a2, v31);
  return 1;
}

BOOL sub_270796480(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2707A8F60();
  sub_2707A8F80();
  v6 = sub_2707A8FC0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_270797000(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_270796570(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2707A8F60();
  MEMORY[0x2743A8500](a2);
  v6 = sub_2707A8FC0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_270797138(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_270796660()
{
  v1 = v0;
  v2 = type metadata accessor for EventReportSenderID();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6E8);
  result = sub_2707A8AD0();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v1 = v8;
    return result;
  }

  v31 = v0;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_2707961C0(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v1 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v20 = *(v33 + 72);
    sub_270723128(v19 + v20 * (v16 | (v9 << 6)), v5);
    sub_2707A8F60();
    sub_2707A8410();
    sub_2707959C8(&qword_280829710, MEMORY[0x277CC95F0]);
    sub_2707A8540();
    MEMORY[0x2743A8540](*&v5[*(v34 + 20)]);
    result = sub_2707A8FC0();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_270723128(v5, *(v8 + 48) + v24 * v20);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_27079699C()
{
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6E0);
  v4 = sub_2707A8AD0();
  if (!*(v1 + 16))
  {
LABEL_24:

    *v0 = v4;
    return;
  }

  v5 = 0;
  v6 = (v1 + 56);
  OUTLINED_FUNCTION_1_43();
  if (!v0)
  {
LABEL_4:
    v8 = v5;
    while (1)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v8;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_9_18();
        goto LABEL_9;
      }
    }

    v18 = 1 << *(v1 + 32);
    if (v18 >= 64)
    {
      sub_2707961C0(0, (v18 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v6 = -1 << v18;
    }

    *(v1 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_16();
LABEL_9:
    v9 = *(*(v1 + 48) + (v7 | (v5 << 6)));
    sub_2707A8F60();
    sub_2707A8F80();
    sub_2707A8FC0();
    OUTLINED_FUNCTION_3_23();
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_8_21();
LABEL_18:
    OUTLINED_FUNCTION_2_38(v11);
    *(v17 + v16) = v9;
    ++*(v4 + 16);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_21();
  while (++v12 != v14 || (v13 & 1) == 0)
  {
    v15 = v12 == v14;
    if (v12 == v14)
    {
      v12 = 0;
    }

    v13 |= v15;
    if (*(v2 + 8 * v12) != -1)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_270796B44()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6D8);
  result = sub_2707A8AD0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_2707961C0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_2707A8F60();
    MEMORY[0x2743A8500](v15);
    result = sub_2707A8FC0();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_270796D90(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for EventReportSenderID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v27 = v8;
  v28 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_270796660();
    }

    else
    {
      if (v13 > v12)
      {
        sub_270797270();
        goto LABEL_15;
      }

      sub_2707976D0();
    }

    v14 = *v3;
    sub_2707A8F60();
    sub_2707A8410();
    sub_2707959C8(&qword_280829710, MEMORY[0x277CC95F0]);
    sub_2707A8540();
    v15 = *(a1 + *(v7 + 20));
    MEMORY[0x2743A8540](v15);
    v16 = sub_2707A8FC0();
    v17 = -1 << *(v14 + 32);
    a2 = v16 & ~v17;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v19 = *(v8 + 72);
      do
      {
        sub_2707230C4(*(v14 + 48) + v19 * a2, v11);
        if (sub_2707A83D0())
        {
          v20 = *&v11[*(v7 + 20)];
          sub_27072318C(v11);
          if (v20 == v15)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_27072318C(v11);
        }

        a2 = (a2 + 1) & v18;
      }

      while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_15:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_270723128(a1, *(v21 + 48) + *(v27 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_18:
    result = sub_2707A8EE0();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_270797000(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_27079699C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2707979DC();
LABEL_10:
      v12 = *v3;
      sub_2707A8F60();
      sub_2707A8F80();
      result = sub_2707A8FC0();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_270797450();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2707A8EE0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_270797138(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_270796B44();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_270797B54();
LABEL_10:
      v12 = *v3;
      sub_2707A8F60();
      MEMORY[0x2743A8500](v5);
      result = sub_2707A8FC0();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_270797590();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2707A8EE0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_270797270()
{
  v1 = v0;
  v2 = type metadata accessor for EventReportSenderID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6E8);
  v7 = *v0;
  v8 = sub_2707A8AC0();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2707230C4(*(v7 + 48) + v22, v6);
        result = sub_270723128(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_270797450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6E0);
  v2 = *v0;
  v3 = sub_2707A8AC0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_270797590()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6D8);
  v2 = *v0;
  v3 = sub_2707A8AC0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2707976D0()
{
  v1 = v0;
  v2 = type metadata accessor for EventReportSenderID();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6E8);
  result = sub_2707A8AD0();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v0;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v6 + 48);
        v20 = *(v32 + 72);
        sub_2707230C4(v19 + v20 * (v16 | (v9 << 6)), v5);
        sub_2707A8F60();
        sub_2707A8410();
        sub_2707959C8(&qword_280829710, MEMORY[0x277CC95F0]);
        sub_2707A8540();
        MEMORY[0x2743A8540](*&v5[*(v33 + 20)]);
        result = sub_2707A8FC0();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        result = sub_270723128(v5, *(v8 + 48) + v24 * v20);
        ++*(v8 + 16);
        v6 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v1 = v30;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v8;
  }

  return result;
}

void sub_2707979DC()
{
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6E0);
  v4 = sub_2707A8AD0();
  if (*(v1 + 16))
  {
    v5 = 0;
    OUTLINED_FUNCTION_1_43();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_10_16();
LABEL_9:
        v8 = *(*(v1 + 48) + (v6 | (v5 << 6)));
        sub_2707A8F60();
        sub_2707A8F80();
        sub_2707A8FC0();
        OUTLINED_FUNCTION_3_23();
        if (v9)
        {
          break;
        }

        OUTLINED_FUNCTION_8_21();
LABEL_18:
        OUTLINED_FUNCTION_2_38(v10);
        *(v16 + v15) = v8;
        ++*(v4 + 16);
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_7_21();
      while (++v11 != v13 || (v12 & 1) == 0)
      {
        v14 = v11 == v13;
        if (v11 == v13)
        {
          v11 = 0;
        }

        v12 |= v14;
        if (*(v2 + 8 * v11) != -1)
        {
          OUTLINED_FUNCTION_6_23();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v5;
      while (1)
      {
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v5 >= v3)
        {
          goto LABEL_20;
        }

        ++v7;
        if (*(v1 + 56 + 8 * v5))
        {
          OUTLINED_FUNCTION_9_18();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v0 = v4;
  }
}

uint64_t sub_270797B54()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A6D8);
  result = sub_2707A8AD0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_2707A8F60();
        MEMORY[0x2743A8500](v14);
        result = sub_2707A8FC0();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id OUTLINED_FUNCTION_12_13(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t HIDEventPhase.description.getter(unsigned __int8 a1)
{
  v1 = 0;
  v2 = a1;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = byte_288076988[v1 + 32];
    if ((v5 & v2) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27071A6BC();
      }

      v6 = *(v4 + 16);
      if (v6 >= *(v4 + 24) >> 1)
      {
        sub_27071A6BC();
      }

      *(v4 + 16) = v6 + 1;
      *(v4 + v6 + 32) = v5;
    }

    ++v1;
  }

  while (v1 != 5);
  v7 = *(v4 + 16);
  if (v7)
  {
    sub_27071A63C();
    v8 = 32;
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_0_57();
    do
    {
      if (*(v4 + v8))
      {
        v18 = 0xE500000000000000;
        v16 = 0x6E61676562;
      }

      else if ((*(v4 + v8) & 2) != 0)
      {
        v18 = 0xE700000000000000;
        v16 = v9;
      }

      else if ((*(v4 + v8) & 4) != 0)
      {
        v18 = 0xE500000000000000;
        v16 = v10;
      }

      else if ((*(v4 + v8) & 8) != 0)
      {
        v18 = 0xE800000000000000;
        v16 = v11;
      }

      else if ((*(v4 + v8) & 0x80) != 0)
      {
        v18 = 0xE800000000000000;
        v16 = 0x6E6967654279616DLL;
      }

      else
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        v15 = sub_2707A8E70();
        v11 = v14;
        v10 = v13;
        v9 = v12;
        v16 = v15;
        v18 = v17;
      }

      v19 = *(v3 + 16);
      if (v19 >= *(v3 + 24) >> 1)
      {
        sub_27071A63C();
        OUTLINED_FUNCTION_0_57();
        OUTLINED_FUNCTION_1_44();
      }

      *(v3 + 16) = v19 + 1;
      v20 = v3 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      ++v8;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829630);
  sub_27071A810(&qword_280829638, &qword_280829630);
  v21 = sub_2707A8550();

  return v21;
}

uint64_t HIDEventPhase.init(_:)(uint64_t result)
{
  if (result > 0xFFu)
  {
    __break(1u);
  }

  return result;
}

unint64_t HIDEventPhase.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_2707982BC()
{
  result = qword_28082A6F0;
  if (!qword_28082A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A6F0);
  }

  return result;
}

unint64_t sub_270798314()
{
  result = qword_28082A6F8;
  if (!qword_28082A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A6F8);
  }

  return result;
}

unint64_t sub_2707983B0()
{
  result = qword_28082A710;
  if (!qword_28082A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A710);
  }

  return result;
}

unint64_t sub_270798408()
{
  result = qword_28082A718;
  if (!qword_28082A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A718);
  }

  return result;
}

float sub_27079857C()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  mach_timebase_info(v2);
  *&v0 = v2[0].numer;
  *(&v0 + 1) = v2[0].denom;
  result = *&v2[0].numer;
  xmmword_28082A720 = v0;
  return result;
}

uint64_t static HIDTime.timebase.getter()
{
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  return xmmword_28082A720;
}

void HIDTime.init(nanoseconds:)(double a1)
{
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_1_45(*(&xmmword_28082A720 + 1) * a1, xmmword_28082A720);
  if (v2)
  {
    OUTLINED_FUNCTION_14_7();
    if (v2 ^ v4 | v3)
    {
      OUTLINED_FUNCTION_3_24();
      if (!(v2 ^ v4 | v3))
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void HIDTime.init(nanoseconds:)(unint64_t a1)
{
  v1 = a1;
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_1_45(v1 * *(&xmmword_28082A720 + 1), xmmword_28082A720);
  if (v2)
  {
    OUTLINED_FUNCTION_14_7();
    if (v2 ^ v4 | v3)
    {
      OUTLINED_FUNCTION_3_24();
      if (!(v2 ^ v4 | v3))
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void HIDTime.nanoseconds.getter(unint64_t a1)
{
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_1_45(a1 * xmmword_28082A720, *(&xmmword_28082A720 + 1));
  if (v2)
  {
    OUTLINED_FUNCTION_14_7();
    if (v2 ^ v4 | v3)
    {
      OUTLINED_FUNCTION_3_24();
      if (!(v2 ^ v4 | v3))
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void HIDTime.init(seconds:)(double a1)
{
  v1 = a1 * 1000000000.0;
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_1_45(v1 * *(&xmmword_28082A720 + 1), xmmword_28082A720);
  if (v2)
  {
    OUTLINED_FUNCTION_14_7();
    if (v2 ^ v4 | v3)
    {
      OUTLINED_FUNCTION_3_24();
      if (!(v2 ^ v4 | v3))
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void HIDTime.seconds.getter(unint64_t a1)
{
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_1_45(a1 * xmmword_28082A720, *(&xmmword_28082A720 + 1));
  if (v2)
  {
    OUTLINED_FUNCTION_14_7();
    if (v2 ^ v4 | v3)
    {
      OUTLINED_FUNCTION_3_24();
      if (!(v2 ^ v4 | v3))
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_2707988E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2707A8EA0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270798980()
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](0);
  return sub_2707A8FC0();
}

uint64_t sub_2707989E4()
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](0);
  return sub_2707A8FC0();
}

uint64_t sub_270798A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2707988E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270798A54(uint64_t a1)
{
  v2 = sub_270798EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270798A90(uint64_t a1)
{
  v2 = sub_270798EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static HIDTime.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (__CFADD__(a1, a2))
  {
    return -1;
  }

  else
  {
    return a1 + a2;
  }
}

void static HIDTime.+ infix(_:_:)(unint64_t a1, double a2)
{
  HIDTime.nanoseconds.getter(a1);

  HIDTime.init(nanoseconds:)((v3 * 0.000000001 + a2) * 1000000000.0);
}

unint64_t static HIDTime.- infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    return a1 - a2;
  }

  else
  {
    return 0;
  }
}

void static HIDTime.- infix(_:_:)(unint64_t a1, double a2)
{
  if (qword_2808294E0 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  OUTLINED_FUNCTION_1_45(a1 * xmmword_28082A720, *(&xmmword_28082A720 + 1));
  if (!v4)
  {
    v8 = 1.84467441e10;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_7();
  if (!(v4 ^ v6 | v5))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_3_24();
  if (v4 ^ v6 | v5)
  {
    goto LABEL_14;
  }

  v8 = v7 * 0.000000001;
LABEL_9:
  if (v8 > a2)
  {
    v9 = (v8 - a2) * 1000000000.0;

    HIDTime.init(nanoseconds:)(v9);
  }
}

uint64_t HIDTime.hashValue.getter(uint64_t a1)
{
  sub_2707A8F60();
  MEMORY[0x2743A8540](a1);
  return sub_2707A8FC0();
}

uint64_t sub_270798D3C()
{
  v1 = *v0;
  sub_2707A8F60();
  HIDTime.hash(into:)(v3, v1);
  return sub_2707A8FC0();
}

uint64_t HIDTime.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A730);
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270798EA4();
  sub_2707A8FE0();
  sub_2707A8E50();
  return (*(v4 + 8))(v8, v2);
}

unint64_t sub_270798EA4()
{
  result = qword_28082A738;
  if (!qword_28082A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A738);
  }

  return result;
}

uint64_t HIDTime.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A740);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270798EA4();
  sub_2707A8FD0();
  if (!v1)
  {
    v10 = sub_2707A8DA0();
    (*(v5 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_270799040()
{
  result = qword_28082A748;
  if (!qword_28082A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A748);
  }

  return result;
}

uint64_t sub_270799098@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = HIDTime.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HIDTime.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x27079918CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2707991C8()
{
  result = qword_28082A750;
  if (!qword_28082A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A750);
  }

  return result;
}

unint64_t sub_270799220()
{
  result = qword_28082A758;
  if (!qword_28082A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A758);
  }

  return result;
}

unint64_t sub_270799278()
{
  result = qword_28082A760;
  if (!qword_28082A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return swift_once();
}

uint64_t FluidTouchGestureEvent.init(time:swipeMask:gestureMotion:flavor:delta:progress:flags:)()
{
  FluidTouchGestureEvent = IOHIDEventCreateFluidTouchGestureEvent();
  IOHIDEventSetIntegerValue();
  return FluidTouchGestureEvent;
}

double FluidTouchGestureEvent.delta.getter()
{
  OUTLINED_FUNCTION_9_19();
  IOHIDEventGetFloatValue();
  v1 = v0;
  IOHIDEventGetFloatValue();
  return v1;
}

unint64_t FluidTouchGestureEvent.swipeMask.getter()
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t FluidTouchGestureEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 27)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t FluidTouchGestureEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t FluidTouchGestureEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t FluidTouchGestureEvent.progress.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

unint64_t FluidTouchGestureEvent.swipeMask.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

unint64_t FluidTouchGestureEvent.gestureMotion.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

unint64_t FluidTouchGestureEvent.flavor.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t sub_27079977C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FluidTouchGestureEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

void sub_2707997A4(uint64_t a1@<X8>)
{
  *a1 = FluidTouchGestureEvent.delta.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t FluidTouchGestureEvent.delta.setter()
{
  OUTLINED_FUNCTION_9_19();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t (*FluidTouchGestureEvent.delta.modify(void *a1, uint64_t a2))()
{
  a1[3] = a2;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = 0;
  return sub_2707998B4;
}

uint64_t sub_2707998B4()
{
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t sub_270799914(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = FluidTouchGestureEvent.x.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270799948(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = FluidTouchGestureEvent.y.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_27079997C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = FluidTouchGestureEvent.progress.getter();
  *v1 = v3;
  return result;
}

unint64_t sub_2707999B0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = FluidTouchGestureEvent.swipeMask.getter();
  *v1 = result;
  return result;
}

unint64_t sub_2707999E4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = FluidTouchGestureEvent.gestureMotion.getter();
  *v1 = result;
  return result;
}

unint64_t sub_270799A18(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = FluidTouchGestureEvent.flavor.getter();
  *v1 = result;
  return result;
}

Swift::Void __swiftcall HIDEventSystemClient.canceled()()
{
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2707325D0;
  v9 = &block_descriptor_5;
  v0 = _Block_copy(&v6);
  OUTLINED_FUNCTION_1_47(v0, sel_setCancelHandler_);
  _Block_release(v0);
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_60();
  v8 = v1;
  v9 = &block_descriptor_3_1;
  v2 = _Block_copy(&v6);
  OUTLINED_FUNCTION_1_47(v2, sel_setServiceNotificationHandler_);
  _Block_release(v2);
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_270799C90;
  v9 = &block_descriptor_6_2;
  v3 = _Block_copy(&v6);
  OUTLINED_FUNCTION_1_47(v3, sel_setEventHandler_);
  _Block_release(v3);
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_0_60();
  v8 = v4;
  v9 = &block_descriptor_9_0;
  v5 = _Block_copy(&v6);
  OUTLINED_FUNCTION_1_47(v5, sel_setServiceNotificationHandler_);
  _Block_release(v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_270799C90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t IOHIDEventSystemConnectionType.stringValue.getter()
{
  TypeString = IOHIDEventSystemConnectionGetTypeString();

  return MEMORY[0x2821FBE78](TypeString);
}

id OUTLINED_FUNCTION_1_47(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t TouchSensitiveButtonFilter.__allocating_init(service:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TouchSensitiveButtonFilter.init(platform:service:)(v4, a1, a2);
  return v4;
}

uint64_t TouchSensitiveButtonFilter.__allocating_init(platform:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  TouchSensitiveButtonFilter.init(platform:service:)(v5, a2, a3);
  return v5;
}

void *TouchSensitiveButtonFilter.init(platform:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = 0;
  v3[5] = 0;
  v3[2] = 0x40000000000;
  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 16))(ObjectType, a3);
  swift_unknownObjectRelease();
  v3[3] = v6;
  return v3;
}

BOOL TouchSensitiveButtonFilter.filterEvent(_:)(uint64_t a1, uint64_t a2)
{
  sub_27070F5BC(a2, v10);
  v5 = TouchSensitiveButtonEvent.init(event:)(v10);
  if (v5)
  {
    if ((*(v2 + 45) & 4) != 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      sub_27070F5BC(a2, a1);
    }

    if ((*(v2 + 37) & 4) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2707A9CF0;
      v7 = v5;
      *(v6 + 32) = TouchSensitiveButtonReport.init(touchSensitiveButtonEvent:)(v7);
      *(v6 + 40) = v8;
    }

    else
    {
    }
  }

  else
  {
    sub_27070F5BC(a2, a1);
  }

  return v5 != 0;
}

uint64_t sub_27079A090()
{
  OUTLINED_FUNCTION_9_5();
  if (qword_2808294B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829D70);
  v1 = HIDReportDescriptor.reportBitCount(for:)(6u);
  OUTLINED_FUNCTION_42_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1]);
  HIDReport.init(bitCount:id:)(v10, 6);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_6_24();
  return v0 & 1;
}

uint64_t sub_27079A148()
{
  OUTLINED_FUNCTION_9_5();
  if (qword_280829458 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829AA0);
  v1 = HIDReportDescriptor.reportBitCount(for:)(2u);
  OUTLINED_FUNCTION_42_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1]);
  HIDReport.init(bitCount:id:)(v10, 2);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_6_24();
  return v0 & 1;
}

uint64_t sub_27079A1DC()
{
  OUTLINED_FUNCTION_9_5();
  if (qword_280829440 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_2808297D8);
  v1 = HIDReportDescriptor.reportBitCount(for:)(1u);
  OUTLINED_FUNCTION_42_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1]);
  HIDReport.init(bitCount:id:)(v10, 1);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_6_24();
  return v0 & 1;
}

uint64_t sub_27079A270()
{
  OUTLINED_FUNCTION_9_5();
  if (qword_280829430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829778);
  v1 = HIDReportDescriptor.reportBitCount(for:)(4u);
  OUTLINED_FUNCTION_42_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1]);
  HIDReport.init(bitCount:id:)(v10, 4);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_6_24();
  return v0 & 1;
}

uint64_t sub_27079A304()
{
  OUTLINED_FUNCTION_9_5();
  if (qword_280829448 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829828);
  v1 = HIDReportDescriptor.reportBitCount(for:)(3u);
  OUTLINED_FUNCTION_42_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1]);
  HIDReport.init(bitCount:id:)(v10, 3);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_6_24();
  return v0 & 1;
}

void *DigitizerFilter.localTouchUpEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void DigitizerFilter.localTouchUpEvent.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_27079A47C()
{
  sub_270735074();
  v2 = sub_2707A8680();
  MEMORY[0x2743A7BE0](47, 0xE100000000000000);
  v0 = sub_2707A8E70();
  MEMORY[0x2743A7BE0](v0);

  return v2;
}

uint64_t sub_27079A544()
{
  OUTLINED_FUNCTION_9_5();
  sub_2707A8F60();
  MEMORY[0x2743A8540](v1);
  MEMORY[0x2743A8500](v0);
  return sub_2707A8FC0();
}

uint64_t sub_27079A5B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2707A8F60();
  MEMORY[0x2743A8540](v1);
  MEMORY[0x2743A8500](v2);
  return sub_2707A8FC0();
}

uint64_t DigitizerFilter.__allocating_init(service:)()
{
  OUTLINED_FUNCTION_9_5();
  v4 = 0;
  OUTLINED_FUNCTION_0_29();
  v2 = swift_allocObject();
  DigitizerFilter.init(platform:service:)(&v4, v1, v0);
  return v2;
}

uint64_t DigitizerFilter.__allocating_init(platform:service:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_29();
  v6 = swift_allocObject();
  DigitizerFilter.init(platform:service:)(a1, a2, a3);
  return v6;
}

uint64_t DigitizerFilter.init(platform:service:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *(v3 + 32) = 0;
  sub_27079BBDC();
  v6 = sub_2707A8520();
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = v6;
  *(v3 + 16) = v5;
  v7 = 133120;
  if (v5 == 1)
  {
    v7 = 2048;
  }

  *(v3 + 24) = v7;
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 16))(ObjectType, a3);
  swift_unknownObjectRelease();
  *(v3 + 40) = v9;
  return v3;
}

uint64_t DigitizerFilter.filterEvent(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v220 = (*(v7 + 304))(v6, v7);
  v8 = a2[3];
  v9 = a2[4];
  v211 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v8);
  HIDEventProtocol.first<A>(_:)(&type metadata for DigitizerEvent, v8, &type metadata for DigitizerEvent, v9);
  v10 = v238[0];
  if (!v238[0])
  {
    goto LABEL_22;
  }

  if (!IOHIDEventGetIntegerValue())
  {

LABEL_22:
    sub_27070F5BC(v211, a1);
    return 0;
  }

  v11 = &unk_279E08000;
  v12 = [v238[0] children];
  v13 = MEMORY[0x277D84F90];
  v219 = v3;
  if (v12)
  {
    v14 = v12;
    sub_27070F6B0();
    v15 = sub_2707A8710();

    v16 = sub_27070EE70(v15);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v230 = v13;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;
    v19 = MEMORY[0x277D84F90];
    do
    {
      sub_27070F5BC(v18, v238);
      v20 = sub_27070F5BC(v238, &v235);
      OUTLINED_FUNCTION_2_40(v20, v21, v22, v23, v24, v25, v26, v27, v203, v204, v205, v206, v207, v209, v210, v211, v212, v214, v216, v218, v219, v220, v221, v223, v226, v228, v229, v230, v234, v235, *(&v235 + 1), v236, v237);
      v28 = OUTLINED_FUNCTION_1_48();
      v30 = v29(v28);
      if (v30 == 11)
      {
        OUTLINED_FUNCTION_2_40(v30, v31, v32, v33, v34, v35, v36, v37, v203, v204, v205, v206, v207, v209, v210, v211, v212, v214, v216, v218, v219, v220, v221, v223, v226, v228, v229, v230, v234, v235, *(&v235 + 1), v236, v237);
        v38 = OUTLINED_FUNCTION_1_48();
        v39(v38);
        __swift_destroy_boxed_opaque_existential_1(v238);
        v40 = __swift_destroy_boxed_opaque_existential_1(&v235);
        MEMORY[0x2743A7C80](v40);
        OUTLINED_FUNCTION_11_18();
        if (v41)
        {
          OUTLINED_FUNCTION_4_30();
        }

        OUTLINED_FUNCTION_15_12();
        v19 = v230;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v238);
        __swift_destroy_boxed_opaque_existential_1(&v235);
      }

      v18 += 40;
      --v17;
    }

    while (v17);

    v11 = &unk_279E08000;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v42 = v219;
  v222 = *(v19 + 16);
  if (!v222)
  {

    goto LABEL_22;
  }

  v217 = v19;
  if (v219[16] != 1)
  {
    v49 = v211[3];
    v50 = v211[4];
    __swift_project_boxed_opaque_existential_1(v211, v49);
    v51 = (*(v50 + 8))(v49, v50);
    v231 = v13;
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = v51 + 32;
      v215 = MEMORY[0x277D84F90];
      do
      {
        sub_27070F5BC(v53, v238);
        v54 = sub_27070F5BC(v238, &v235);
        OUTLINED_FUNCTION_2_40(v54, v55, v56, v57, v58, v59, v60, v61, v203, v204, v205, v206, v207, v209, v210, v211, v212, v215, v217, v218, v219, v220, v222, v223, v226, v228, v229, v231, v234, v235, *(&v235 + 1), v236, v237);
        v62 = OUTLINED_FUNCTION_1_48();
        v64 = v63(v62);
        if (v64 == 6)
        {
          OUTLINED_FUNCTION_2_40(v64, v65, v66, v67, v68, v69, v70, v71, v203, v204, v205, v206, v207, v209, v210, v211, v212, v215, v217, v218, v219, v220, v222, v223, v226, v228, v229, v231, v234, v235, *(&v235 + 1), v236, v237);
          v72 = OUTLINED_FUNCTION_1_48();
          v73(v72);
          __swift_destroy_boxed_opaque_existential_1(v238);
          v74 = __swift_destroy_boxed_opaque_existential_1(&v235);
          MEMORY[0x2743A7C80](v74);
          OUTLINED_FUNCTION_11_18();
          if (v41)
          {
            OUTLINED_FUNCTION_4_30();
          }

          OUTLINED_FUNCTION_15_12();
          v215 = v231;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v238);
          __swift_destroy_boxed_opaque_existential_1(&v235);
        }

        v53 += 40;
        --v52;
      }

      while (v52);
      goto LABEL_41;
    }

LABEL_42:

    v215 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v43 = [v10 v11[411]];
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v45 = v43;
    sub_27070F6B0();
    v46 = sub_2707A8710();

    v47 = sub_27070EE70(v46);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v232 = v44;
  v75 = *(v47 + 16);
  if (!v75)
  {
    goto LABEL_42;
  }

  v76 = v47 + 32;
  v215 = MEMORY[0x277D84F90];
  do
  {
    sub_27070F5BC(v76, v238);
    v77 = sub_27070F5BC(v238, &v235);
    OUTLINED_FUNCTION_2_40(v77, v78, v79, v80, v81, v82, v83, v84, v203, v204, v205, v206, v207, v209, v210, v211, v212, v215, v217, v218, v219, v220, v222, v223, v226, v228, v229, v232, v234, v235, *(&v235 + 1), v236, v237);
    v85 = OUTLINED_FUNCTION_1_48();
    v87 = v86(v85);
    if (v87 == 6)
    {
      OUTLINED_FUNCTION_2_40(v87, v88, v89, v90, v91, v92, v93, v94, v203, v204, v205, v206, v207, v209, v210, v211, v212, v215, v217, v218, v219, v220, v222, v223, v226, v228, v229, v232, v234, v235, *(&v235 + 1), v236, v237);
      v95 = OUTLINED_FUNCTION_1_48();
      v96(v95);
      __swift_destroy_boxed_opaque_existential_1(v238);
      v97 = __swift_destroy_boxed_opaque_existential_1(&v235);
      MEMORY[0x2743A7C80](v97);
      OUTLINED_FUNCTION_11_18();
      if (v41)
      {
        OUTLINED_FUNCTION_4_30();
      }

      OUTLINED_FUNCTION_15_12();
      v215 = v232;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v238);
      __swift_destroy_boxed_opaque_existential_1(&v235);
    }

    v76 += 40;
    --v75;
  }

  while (v75);
LABEL_41:

LABEL_43:
  if (qword_2808294A0 != -1)
  {
    goto LABEL_193;
  }

LABEL_44:
  *v238 = xmmword_280829D30;
  sub_270706C38(xmmword_280829D30, *(&xmmword_280829D30 + 1));
  v98 = v238;
  v99 = HIDReportDescriptor.reportBitCount(for:)(9u);
  sub_270708D74(v238[0], v238[1]);
  v238[0] = HIDReport.init(bitCount:id:)(v99, 9);
  v238[1] = v100;
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  v102 = v238[1];
  v101 = v238[0];
  v233 = *v238;
  v103 = v211[3];
  __swift_project_boxed_opaque_existential_1(v211, v103);
  v104 = OUTLINED_FUNCTION_1_48();
  v105(v104);
  switch(v102 >> 62)
  {
    case 1uLL:
      LODWORD(v106) = HIDWORD(v101) - v101;
      if (__OFSUB__(HIDWORD(v101), v101))
      {
        goto LABEL_208;
      }

      v106 = v106;
LABEL_49:
      if ((v106 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_195:
        swift_once();
LABEL_107:
        if (__OFADD__(v102, qword_280829CE0 >> 3))
        {
          __break(1u);
        }

        else if ((v102 + (qword_280829CE0 >> 3)) >= v102)
        {
          v157 = OUTLINED_FUNCTION_5_29();
          sub_270706C38(v157, v158);
          v159 = OUTLINED_FUNCTION_5_29();
          sub_27070F3C4(v159, v160);
          v161 = OUTLINED_FUNCTION_5_29();
          sub_270708D74(v161, v162);
          v163 = OUTLINED_FUNCTION_5_29();
          sub_270708D74(v163, v164);
          v165 = v235;
          sub_270708D74(v98, v103);

          v233 = v165;
          OUTLINED_FUNCTION_7_22();
          goto LABEL_111;
        }

        __break(1u);
        goto LABEL_198;
      }

      if (v106 >= 53)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

LABEL_52:
      v205 = a1;
      v206 = v10;
      v110 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      v111 = v217;
      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
      swift_beginAccess();
      v112 = *(v42 + 32);
      *(v42 + 32) = 0;

      v224 = 0;
      v10 = 0;
      v210 = v217 + 32;
      v213 = v110;
      a1 = MEMORY[0x277D84F90];
      break;
    case 2uLL:
      v108 = v101[2];
      v107 = v101[3];
      v109 = __OFSUB__(v107, v108);
      v106 = v107 - v108;
      if (!v109)
      {
        goto LABEL_49;
      }

      goto LABEL_209;
    case 3uLL:
      goto LABEL_52;
    default:
      v106 = BYTE6(v102);
      goto LABEL_49;
  }

  while (1)
  {
    if (v10 >= *(v111 + 16))
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      swift_once();
      goto LABEL_44;
    }

    v113 = *(v42 + 64);
    v114 = *(v111 + 8 * v10 + 32);
    if ((v113 & 0x800) != 0)
    {
      OUTLINED_FUNCTION_14_13();
      IntegerValue = IOHIDEventGetIntegerValue();
      if ((IntegerValue & 0x8000000000000000) != 0)
      {
        goto LABEL_168;
      }

      if (HIDWORD(IntegerValue))
      {
        goto LABEL_169;
      }

      if ((IntegerValue & 2) != 0)
      {
        if (!IOHIDEventGetIntegerValue())
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_14_13();
        v126 = IOHIDEventGetIntegerValue();
        if ((v126 & 0x8000000000000000) != 0)
        {
          goto LABEL_179;
        }

        if (HIDWORD(v126))
        {
          goto LABEL_180;
        }

        if ((v126 & 0x80) != 0)
        {
LABEL_67:
          OUTLINED_FUNCTION_9_20();
          OUTLINED_FUNCTION_18_8();
          swift_beginAccess();
          if (!*(*(v42 + 48) + 16))
          {
            goto LABEL_85;
          }

          sub_2707221DC();
          v128 = v127;
          swift_endAccess();
          if (v128)
          {
            v129 = OUTLINED_FUNCTION_9_20();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2707142C0();
              a1 = v154;
            }

            v130 = *(a1 + 16);
            if (v130 >= *(a1 + 24) >> 1)
            {
              sub_2707142C0();
              a1 = v155;
            }

            *(a1 + 16) = v130 + 1;
            *(a1 + 8 * v130 + 32) = v129;
          }
        }
      }
    }

    else
    {
      v115 = OUTLINED_FUNCTION_9_20();
      if (IOHIDEventGetIntegerValue())
      {
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        OUTLINED_FUNCTION_18_8();
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v116 = *(v42 + 48);
        *(v42 + 48) = 0x8000000000000000;
        v117 = sub_2707221DC();
        v119 = *(v116 + 16);
        v120 = (v118 & 1) == 0;
        v42 = v119 + v120;
        if (__OFADD__(v119, v120))
        {
          goto LABEL_175;
        }

        v121 = v117;
        v122 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A770);
        if (sub_2707A8C40())
        {
          v123 = sub_2707221DC();
          v42 = v219;
          if ((v122 & 1) != (v124 & 1))
          {
            goto LABEL_210;
          }

          v121 = v123;
        }

        else
        {
          v42 = v219;
          OUTLINED_FUNCTION_7_22();
        }

        if (v122)
        {
          OUTLINED_FUNCTION_13_13(v116);
        }

        else
        {
          *(v116 + 8 * (v121 >> 6) + 64) |= 1 << v121;
          v134 = (*(v116 + 48) + 16 * v121);
          *v134 = v220;
          v134[1] = v115;
          OUTLINED_FUNCTION_13_13(v116);
          v135 = *(v133 + 16);
          v109 = __OFADD__(v135, 1);
          v136 = v135 + 1;
          if (v109)
          {
            goto LABEL_178;
          }

          *(v133 + 16) = v136;
        }

        *(v42 + 48) = v133;
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_14_13();
      v131 = IOHIDEventGetIntegerValue();
      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (HIDWORD(v131))
      {
        goto LABEL_177;
      }

      if ((v131 & 0x82) != 0)
      {
        OUTLINED_FUNCTION_18_8();
        swift_beginAccess();
        sub_2707221DC();
        if (v132)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v227 = *(v42 + 48);
          *(v42 + 48) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A770);
          OUTLINED_FUNCTION_7_22();
          sub_2707A8C40();
          sub_27079BBDC();
          sub_2707A8C60();
          *(v42 + 48) = v227;
        }

LABEL_85:
        swift_endAccess();
      }
    }

    if ((*(v42 + 57) & 8) == 0)
    {

      goto LABEL_102;
    }

    if (v224 >= v213)
    {
      break;
    }

    if (qword_2808294A8 != -1)
    {
      swift_once();
    }

    *&v235 = HIDReport.init(bitCount:id:)(qword_280829D40, 0);
    *(&v235 + 1) = v137;
    v138 = OUTLINED_FUNCTION_9_20();
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    if ((v138 & 0x8000000000000000) != 0)
    {
      goto LABEL_170;
    }

    if (v138 > 0xFF)
    {
      goto LABEL_171;
    }

    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
    IOHIDEventGetFloatValue();
    v140 = v139;
    IOHIDEventGetFloatValue();
    DigitizerContact.point.setter(v140, v141);
    v142 = IOHIDEventGetIntegerValue() != 0;
    HIDReport.subscript.setter(v142, 7);
    v143 = IOHIDEventGetIntegerValue() != 0;
    HIDReport.subscript.setter(v143, 6);
    OUTLINED_FUNCTION_14_13();
    v144 = IOHIDEventGetIntegerValue();
    if ((v144 & 0x8000000000000000) != 0)
    {
      goto LABEL_172;
    }

    if (HIDWORD(v144))
    {
      goto LABEL_173;
    }

    HIDReport.subscript.setter((v144 >> 9) & 1, 5);
    DigitizerReport.contactRange(forIndex:)(v224, v233, *(&v233 + 1));
    sub_270706C38(v233, *(&v233 + 1));
    v145 = OUTLINED_FUNCTION_5_29();
    sub_270706C38(v145, v146);
    v147 = OUTLINED_FUNCTION_5_29();
    sub_27070F3C4(v147, v148);
    v149 = OUTLINED_FUNCTION_5_29();
    sub_270708D74(v149, v150);
    sub_270708D74(v233, *(&v233 + 1));
    v151 = IOHIDEventGetIntegerValue();
    if (v151 >= 255)
    {
      v42 = 255;
    }

    else
    {
      v42 = v151;
    }

    if (__OFADD__(8 * v224, 320))
    {
      goto LABEL_174;
    }

    if (sub_27075E50C(8 * v224 + 320, v233, *(&v233 + 1)))
    {
      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
    }

    ++v224;
    v152 = OUTLINED_FUNCTION_5_29();
    sub_270708D74(v152, v153);
    v42 = v219;
    OUTLINED_FUNCTION_7_22();
    v111 = v217;
LABEL_102:
    if (v222 == ++v10)
    {
      goto LABEL_105;
    }
  }

LABEL_105:
  if (*(v215 + 16))
  {
    v156 = *(v215 + 32);

    v101 = v156;
    ScrollCollection.init(scrollEvent:)(v101);
    v103 = *(&v233 + 1);
    v98 = v233;
    v235 = v233;
    sub_270706C38(v233, *(&v233 + 1));
    v102 = DigitizerReport.contactRange(forIndex:)(5, v233, *(&v233 + 1));
    v42 = v206;
    if (qword_280829490 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_195;
  }

  v42 = v206;
LABEL_111:
  if (!*(a1 + 16))
  {

    v174 = v205;
    goto LABEL_160;
  }

  IOHIDEventGetTimeStamp();
  v166 = IOHIDEventGetIntegerValue();
  if ((v166 & 0x8000000000000000) != 0)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v167 = v166;
  if (HIDWORD(v166))
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v168 = IOHIDEventGetIntegerValue();
  if ((v168 & 0x8000000000000000) != 0)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v42 = v219;
  if (HIDWORD(v168))
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v169 = IOHIDEventGetIntegerValue();
  v170 = OUTLINED_FUNCTION_12_14();
  v171 = IOHIDEventGetIntegerValue();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  IOHIDEventGetEventFlags();
  if (v167 != 2)
  {
    if (v170 <= 0xFFFFFFFFLL)
    {
      OUTLINED_FUNCTION_7_22();
      if ((v175 & 0x8000000000000000) == 0)
      {
        if (v171 <= 0xFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_3_25();
          DigitizerEvent = IOHIDEventCreateDigitizerEvent();
          goto LABEL_126;
        }

LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        sub_2707A8EF0();
        __break(1u);
        JUMPOUT(0x27079BAB4);
      }

      goto LABEL_205;
    }

    goto LABEL_203;
  }

  if (v170 > 0xFFFFFFFFLL)
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  OUTLINED_FUNCTION_7_22();
  if (v172 < 0)
  {
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (v171 > 0xFFFFFFFFLL)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  OUTLINED_FUNCTION_3_25();
  DigitizerEvent = IOHIDEventCreateDigitizerFingerEvent();
LABEL_126:
  v176 = DigitizerEvent;
  if (v169)
  {
    IOHIDEventSetIntegerValue();
  }

  v177 = 0;
  v178 = 0;
  v179 = v210;
  v208 = v176;
  do
  {
    v180 = *(v179 + 8 * v178++);
    v10 = v180;
    OUTLINED_FUNCTION_12_14();
    v181 = OUTLINED_FUNCTION_12_14();
    v182 = *(a1 + 16);
    v183 = 32;
    do
    {
      if (!v182)
      {
        goto LABEL_153;
      }

      v184 = *(a1 + v183);
      v183 += 8;
      --v182;
    }

    while (v184 != v181);
    OUTLINED_FUNCTION_18_8();
    swift_beginAccess();
    if (*(*(v42 + 48) + 16) && (sub_2707221DC(), (v185 & 1) != 0))
    {
      swift_endAccess();
      v186 = IOHIDEventGetIntegerValue();
      if ((v186 & 0x8000000000000000) != 0)
      {
        goto LABEL_181;
      }

      v187 = v186;
      if (HIDWORD(v186))
      {
        goto LABEL_182;
      }

      v225 = v177;
      IOHIDEventGetTimeStamp();
      v188 = IOHIDEventGetIntegerValue();
      if ((v188 & 0x8000000000000000) != 0)
      {
        goto LABEL_183;
      }

      v189 = v188;
      if (HIDWORD(v188))
      {
        goto LABEL_184;
      }

      v190 = IOHIDEventGetIntegerValue();
      if ((v190 & 0x8000000000000000) != 0)
      {
        goto LABEL_185;
      }

      if (HIDWORD(v190))
      {
        goto LABEL_186;
      }

      v215 = IOHIDEventGetIntegerValue();
      v42 = OUTLINED_FUNCTION_12_14();
      v191 = IOHIDEventGetIntegerValue();
      IOHIDEventGetIntegerValue();
      IOHIDEventGetIntegerValue();
      IOHIDEventGetEventFlags();
      if (v189 == 2)
      {
        if (v42 > 0xFFFFFFFFLL)
        {
          goto LABEL_187;
        }

        if ((v191 | v42) < 0)
        {
          goto LABEL_190;
        }

        if (v191 > 0xFFFFFFFFLL)
        {
          goto LABEL_192;
        }

        OUTLINED_FUNCTION_3_25();
        DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
      }

      else
      {
        if (v42 > 0xFFFFFFFFLL)
        {
          goto LABEL_188;
        }

        if ((v191 | v42) < 0)
        {
          goto LABEL_189;
        }

        if (v191 > 0xFFFFFFFFLL)
        {
          goto LABEL_191;
        }

        OUTLINED_FUNCTION_3_25();
        DigitizerFingerEvent = IOHIDEventCreateDigitizerEvent();
      }

      v193 = DigitizerFingerEvent;
      OUTLINED_FUNCTION_7_22();
      if (v215)
      {
        IOHIDEventSetIntegerValue();
      }

      v177 = v225 | v187;
      v176 = v208;
      IOHIDEventAppendEvent();

      v42 = v219;
      v179 = v210;
    }

    else
    {
      swift_endAccess();
    }

LABEL_153:
  }

  while (v178 != v222);

  OUTLINED_FUNCTION_14_13();
  IOHIDEventSetIntegerValue();
  if (*(v42 + 16) == 1)
  {
    v194 = *(v42 + 32);
    *(v42 + 32) = v176;
    v195 = v176;
  }

  else
  {
    mach_absolute_time();
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
    IOHIDEventAppendEvent();
    v194 = *(v42 + 32);
    *(v42 + 32) = RelativePointerEvent;
  }

  v197 = v42;
  v174 = v205;
  v42 = v206;

  v198 = *(v197 + 32);
  if (v198)
  {
    v199 = v198;
    IOHIDEventSetSenderID();
  }

LABEL_160:
  if ((v219[65] & 8) != 0)
  {
    *(v174 + 32) = 0;
    *v174 = 0u;
    *(v174 + 16) = 0u;
  }

  else
  {
    sub_27070F5BC(v211, v174);
  }

  if ((v219[57] & 8) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
    v202 = swift_allocObject();
    *(v202 + 16) = xmmword_2707A9CF0;
    v201 = *(&v233 + 1);
    v200 = v233;
    *(v202 + 32) = v233;
    sub_270706C38(v233, *(&v233 + 1));
  }

  else
  {

    v201 = *(&v233 + 1);
    v200 = v233;
  }

  sub_270708D74(v200, v201);
  return 1;
}

uint64_t DigitizerFilter.__deallocating_deinit()
{
  DigitizerFilter.deinit();
  v0 = OUTLINED_FUNCTION_0_29();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_27079BBDC()
{
  result = qword_28082A768;
  if (!qword_28082A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A768);
  }

  return result;
}

unint64_t sub_27079BC94()
{
  result = qword_28082A778;
  if (!qword_28082A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A778);
  }

  return result;
}

void OUTLINED_FUNCTION_0_61()
{

  JUMPOUT(0x2743A78C0);
}

void *OUTLINED_FUNCTION_2_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a33;

  return __swift_project_boxed_opaque_existential_1(&a30, v34);
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return sub_2707A8720();
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return sub_270708D74(v0, v1);
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return IOHIDEventGetIntegerValue();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return IOHIDEventGetIntegerValue();
}

void OUTLINED_FUNCTION_13_13(uint64_t a1@<X8>)
{
  v4 = (*(a1 + 56) + 24 * v1);
  *v4 = v2;
  v4[1] = v3;
  v4[2] = 0;
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_2707A8740();
}

BOOL HIDEventMask.contains(_:)(_BOOL8 result, uint64_t a2)
{
  v2 = 1 << result;
  if (result > 0x3F)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return (v2 & a2) != 0;
  }

  __break(1u);
  return result;
}

uint64_t HIDEventType.maskValue.getter(unsigned int a1)
{
  if (a1 <= 0x3F)
  {
    result = 1 << a1;
  }

  else
  {
    result = 0;
  }

  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t HIDEventMask.insert(_:)(unint64_t result)
{
  v2 = 1 << result;
  if (result > 0x3F)
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v1 & v2;
    if (!v3)
    {
      *v1 |= v2;
    }

    return (v3 == 0) | (result << 32);
  }

  return result;
}

unint64_t HIDEventMask.remove(_:)(unint64_t result)
{
  if (result <= 0x3F)
  {
    v2 = 1 << result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v1 & v2;
    if (v3)
    {
      *v1 &= ~v2;
    }

    return OUTLINED_FUNCTION_0_62(v3 == 0);
  }

  return result;
}

unint64_t HIDEventMask.update(with:)(unint64_t result)
{
  if (result <= 0x3F)
  {
    v2 = 1 << result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v1 & v2;
    if (!v3)
    {
      *v1 |= v2;
    }

    return OUTLINED_FUNCTION_0_62(v3 != 0);
  }

  return result;
}

uint64_t sub_27079BF88@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_3_0();
  *a1 = result;
  return result;
}

uint64_t sub_27079BFBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2707A369C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27079BFEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270759564(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27079C01C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270759580(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_27079C04C(_DWORD *a1, unsigned int *a2)
{
  v3 = HIDEventMask.insert(_:)(*a2);
  *a1 = HIDWORD(v3);
  return v3 & 1;
}

unint64_t sub_27079C080@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = HIDEventMask.remove(_:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_27079C0B4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = HIDEventMask.update(with:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_27079C100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2707A38E0(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_27079C164@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27079C180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2707A3584(a1);
  *a2 = result;
  return result;
}

void HIDEventMask.description.getter(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = 0x20u;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(&unk_288076728 + v3);
    v6 = 1 << v5;
    if (v5 > 0x3F)
    {
      v6 = 0;
    }

    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    if ((v6 & a1) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27071A65C();
      }

      v7 = *(v4 + 16);
      if (v7 >= *(v4 + 24) >> 1)
      {
        sub_27071A65C();
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 4 * v7 + 32) = v5;
    }

    v3 += 4;
  }

  while (v3 != 200);
  v8 = *(v4 + 16);
  if (v8)
  {
    sub_27071A63C();
    v9 = 32;
    v10 = v2;
    do
    {
      v11 = HIDEventType.description.getter(*(v4 + v9));
      v13 = v12;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_27071A63C();
      }

      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v9 += 4;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829630);
  sub_27079C3A0();
  sub_2707A8550();
}

unint64_t sub_27079C3A0()
{
  result = qword_280829638;
  if (!qword_280829638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829638);
  }

  return result;
}

unint64_t sub_27079C408()
{
  result = qword_28082A780;
  if (!qword_28082A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A780);
  }

  return result;
}

unint64_t sub_27079C460()
{
  result = qword_28082A788;
  if (!qword_28082A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A788);
  }

  return result;
}

unint64_t sub_27079C4B8()
{
  result = qword_28082A790;
  if (!qword_28082A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A790);
  }

  return result;
}

unint64_t sub_27079C510()
{
  result = qword_28082A798;
  if (!qword_28082A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A798);
  }

  return result;
}

double NavigationSwipeEvent.delta.getter()
{
  OUTLINED_FUNCTION_9_21();
  IOHIDEventGetFloatValue();
  v1 = v0;
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  return v1;
}

unint64_t NavigationSwipeEvent.swipeMask.getter()
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t NavigationSwipeEvent.init(time:swipeMask:gestureMotion:flavor:delta:progress:flags:)()
{
  NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
  IOHIDEventSetIntegerValue();
  return NavigationSwipeEvent;
}

uint64_t NavigationSwipeEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 16)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t NavigationSwipeEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t NavigationSwipeEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t NavigationSwipeEvent.z.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t NavigationSwipeEvent.progress.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

unint64_t NavigationSwipeEvent.swipeMask.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

unint64_t NavigationSwipeEvent.gestureMotion.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

unint64_t NavigationSwipeEvent.flavor.modify(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_18(a1, a2);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *(v2 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t sub_27079CA58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NavigationSwipeEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

void sub_27079CA80(uint64_t a1@<X8>)
{
  *a1 = NavigationSwipeEvent.delta.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t NavigationSwipeEvent.delta.setter()
{
  OUTLINED_FUNCTION_9_21();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t (*NavigationSwipeEvent.delta.modify(void *a1, uint64_t a2))()
{
  a1[3] = a2;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  IOHIDEventGetFloatValue();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  return sub_27079CBB8;
}

uint64_t sub_27079CBB8()
{
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t sub_27079CC2C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.x.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_27079CC60(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.y.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_27079CC94(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.z.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_27079CCC8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.progress.getter();
  *v1 = v3;
  return result;
}

unint64_t sub_27079CCFC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.swipeMask.getter();
  *v1 = result;
  return result;
}

unint64_t sub_27079CD30(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.gestureMotion.getter();
  *v1 = result;
  return result;
}

unint64_t sub_27079CD64(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = NavigationSwipeEvent.flavor.getter();
  *v1 = result;
  return result;
}

uint64_t sub_27079CE0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_2707A8600();
  inactive = dispatch_workloop_create_inactive((v6 + 32));

  if (a4)
  {
    goto LABEL_5;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    dispatch_workloop_set_scheduler_priority();
LABEL_5:
    dispatch_activate(inactive);
    return inactive;
  }

  __break(1u);
  return result;
}

_BYTE *ScrollGesture.__allocating_init(useRemoteAcceleration:dispatchScrollEvents:)(char a1, char a2)
{
  result = swift_allocObject();
  result[19] = 0;
  result[16] = 0;
  result[17] = a1;
  result[18] = a2;
  return result;
}

_BYTE *ScrollGesture.__allocating_init(platform:useRemoteAcceleration:dispatchScrollEvents:)(char *a1, char a2, char a3)
{
  result = swift_allocObject();
  v7 = *a1;
  result[19] = 0;
  result[16] = v7;
  result[17] = a2;
  result[18] = a3;
  return result;
}

_BYTE *ScrollGesture.init(platform:useRemoteAcceleration:dispatchScrollEvents:)(char *a1, char a2, char a3)
{
  v4 = *a1;
  v3[19] = 0;
  v3[16] = v4;
  v3[17] = a2;
  v3[18] = a3;
  return v3;
}

uint64_t ScrollGesture.dispatch(report:)(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  result = sub_270706C38(a1, a2);
  if (v3 == 1)
  {
    if (qword_280829490 != -1)
    {
      OUTLINED_FUNCTION_0_28();
    }

    if (((qword_280829CE0 >> 3) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_3_26();
      v5 = OUTLINED_FUNCTION_0_64();
      sub_270708D74(v5, v6);
      v7 = OUTLINED_FUNCTION_16_7();
      sub_27070E5A4(v7, v8);
      v9 = OUTLINED_FUNCTION_0_64();
      ScrollReport.remoteTimestamp.getter(v9, v10);
      v11 = OUTLINED_FUNCTION_16_7();
      v15 = sub_27079D084(v11, v12, v13, v14);
LABEL_9:
      v27 = v15;
      v28 = v16;
      v29 = OUTLINED_FUNCTION_16_7();
      sub_270708D74(v29, v30);
      *(v2 + 19) = v27;
      return v28;
    }

    __break(1u);
  }

  else if (qword_280829490 == -1)
  {
    goto LABEL_7;
  }

  result = OUTLINED_FUNCTION_0_28();
LABEL_7:
  if (((qword_280829CE0 >> 3) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_26();
    v17 = OUTLINED_FUNCTION_0_64();
    sub_270708D74(v17, v18);
    v19 = OUTLINED_FUNCTION_16_7();
    sub_27070E5A4(v19, v20);
    v21 = OUTLINED_FUNCTION_0_64();
    ScrollReport.remoteTimestamp.getter(v21, v22);
    v23 = OUTLINED_FUNCTION_16_7();
    v15 = sub_27079D2C4(v23, v24, v25, v26);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_27079D084(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() & 0x8F) != 0 || _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0())
  {
    v9 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    v10 = v9;
    v11 = v9 & 0x8F;
    v12 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    switch(*(v4 + 19))
    {
      case 1:
        if ((v10 & 8) != 0)
        {
          goto LABEL_18;
        }

        if ((v10 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      case 2:
        if ((v10 & 8) != 0)
        {
          goto LABEL_18;
        }

        if ((v10 & 4) != 0)
        {
LABEL_17:
          v17 = a4 & 1;
          v18 = 4;
        }

        else
        {
          if ((v10 & 2) != 0)
          {
            v15 = a4 & 1;
            v16 = 0x2000000;
            goto LABEL_24;
          }

LABEL_18:
          v17 = a4 & 1;
          v18 = 8;
        }

        goto LABEL_19;
      case 3:
        if ((v12 & 0x10) != 0 || (v12 & 4) != 0 || (v12 & 1) == 0)
        {
          v19 = sub_27079D548();
          goto LABEL_26;
        }

        v21 = 1;
        goto LABEL_32;
      default:
LABEL_4:
        if (v10 < 0 && !v12)
        {
          v13 = sub_27079D5E4(0x80000000, a1, a2, a3, a4 & 1);
          v14 = 1;
          break;
        }

        if ((v10 & 1) == 0 || v12)
        {
          if (v11)
          {
            return 0;
          }

          if ((v12 & 2) != 0 && *(v4 + 16) == 1)
          {
            v21 = 2;
LABEL_32:
            v13 = sub_27079D5C8(v21, a1, a2);
            v14 = 3;
            break;
          }

          if ((v12 & 0x10) == 0 || *(v4 + 16) == 1)
          {
            return 0;
          }

          v17 = a4 & 1;
          v18 = 0;
LABEL_19:
          sub_27079D420(v18, a3, v17);
LABEL_26:
          v13 = v19;
          v14 = 0;
        }

        else
        {
          v15 = a4 & 1;
          v16 = 0x1000000;
LABEL_24:
          v13 = sub_27079D5E4(v16, a1, a2, a3, v15);
          v14 = 2;
        }

        break;
    }
  }

  else
  {
    v14 = *(v4 + 19);
    v13 = sub_27079D5E4(0, a1, a2, a3, a4 & 1);
  }

  sub_27070EEB0(v13);

  return v14;
}

uint64_t sub_27079D2C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_27079D084(a1, a2, a3, a4 & 1);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    mach_absolute_time();
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
    v9 = v6 + 32;
    do
    {
      sub_27070F5BC(v9, v16);
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v12 = RelativePointerEvent;
      v13 = HIDEventProtocol.bridgedValue.getter(v10, v11);
      IOHIDEventAppendEvent();

      __swift_destroy_boxed_opaque_existential_1(v16);
      v9 += 40;
      --v7;
    }

    while (v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2707A9CF0;
    *(v14 + 56) = &type metadata for PointerEvent;
    *(v14 + 64) = &protocol witness table for PointerEvent;
    *(v14 + 32) = v12;
  }

  else
  {
  }

  return v4;
}

double sub_27079D420(uint64_t a1, uint64_t a2, char a3)
{
  v14 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  if ((a3 & 1) == 0 && a2)
  {
    v13 = a2;
    v6 = sub_27070E734(&v13, &v14);
    v8 = v7;
    sub_270706C38(v6, v7);
    v9 = mach_absolute_time();
    v10 = sub_270718460(v9, 16973568, 0, v6, v8, 0);
    IOHIDEventAppendEvent();

    sub_270708D74(v6, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A7A8);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_2707A9CF0;
  *(v11 + 32) = ScrollEvent;
  return result;
}

uint64_t sub_27079D548()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A7A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2707A9CF0;
  mach_absolute_time();
  *(v0 + 32) = IOHIDEventCreateScrollEvent();
  return v0;
}

uint64_t sub_27079D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v20 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v8 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if (v8 || (_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0(), _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0()))
  {
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    ScrollEvent = IOHIDEventCreateScrollEvent();
    if ((a5 & 1) == 0 && !_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() && a4)
    {
      v19 = a4;
      v10 = sub_27070E734(&v19, &v20);
      v12 = v11;
      sub_270706C38(v10, v11);
      v13 = mach_absolute_time();
      v14 = sub_270718460(v13, 16973568, 0, v10, v12, 0);
      IOHIDEventAppendEvent();

      sub_270708D74(v10, v12);
    }

    if (*(v5 + 17) == 1)
    {
      v15 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
      v16 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
      if (v15 != 0.0 || v16 != 0.0)
      {
        v17 = IOHIDEventCreateScrollEvent();
        IOHIDEventAppendEvent();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A7A8);
    result = swift_allocObject();
    *(result + 16) = xmmword_2707A9CF0;
    *(result + 32) = ScrollEvent;
  }

  else
  {
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    return MEMORY[0x277D84F90];
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScrollGesture.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27079D9E0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27079DA1C()
{
  result = qword_28082A7A0;
  if (!qword_28082A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A7A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26()
{

  return sub_2707A82D0();
}

uint64_t static ZoomToggleEvent.dispatch(report:)()
{
  type metadata accessor for ZoomToggleGesture();
  swift_initStackObject();
  return ZoomToggleGesture.dispatch(report:)();
}

uint64_t ZoomToggleGesture.dispatch(report:)()
{
  mach_absolute_time();
  ZoomToggleEvent = IOHIDEventCreateZoomToggleEvent();
  mach_absolute_time();
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  IOHIDEventAppendEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2707A9CF0;
  *(v2 + 56) = &type metadata for DigitizerEvent;
  *(v2 + 64) = &protocol witness table for DigitizerEvent;
  *(v2 + 32) = DigitizerEvent;

  return v2;
}

uint64_t sub_27079DC6C(void *a1)
{
  v1 = [a1 children];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_27070F6B0();
  v3 = sub_2707A8710();

  v4 = sub_27070EE70(v3);

  return v4;
}

uint64_t sub_27079DCE4()
{
  v1 = [v0 children];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_27070F6B0();
  v3 = sub_2707A8710();

  v4 = sub_27070EE70(v3);

  return v4;
}

void sub_27079DD64(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2;
  v6 = HIDEventProtocol.bridgedValue.getter(v3, v4);
  IOHIDEventRemoveEvent();
}

void sub_27079DDE8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = v1;
  v5 = HIDEventProtocol.bridgedValue.getter(v2, v3);
  IOHIDEventRemoveEvent();
}

void sub_27079DE70(uint64_t a1, char a2, void (*a3)(uint64_t *, id *), uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v13 = a2;
  v8 = sub_270797DDC(a5);
  for (i = 0; v8 != i; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2743A80A0](i, a5);
    }

    else
    {
      if (i >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a5 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v14 = v10;
    a3(&v12, &v14);

    if (v5)
    {

      return;
    }
  }
}

uint64_t HIDServiceFilterProtocol.filterGroupedEvent(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if ([a1 needsUngroupForLegacy])
  {
    v7 = [v6 children];
    if (!v7)
    {
LABEL_20:
      v26 = v6;
      return v6;
    }

    v8 = v7;
    sub_27070F6B0();
    v9 = sub_2707A8710();

    v10 = sub_270797DDC(v9);
    if (!v10)
    {
      goto LABEL_19;
    }

    MEMORY[0x28223BE20](v10, v11);
    v27[2] = a2;
    v27[3] = a3;
    v27[4] = v3;
    v27[5] = v6;
    sub_27079DE70(MEMORY[0x277D84F90], 0, sub_27079E288, v27, v9);
    v13 = v12;
    v15 = v14;

    v16 = sub_270797DDC(v13);
    if (!v16)
    {

      return 0;
    }

    if ((v15 & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v17 = v16;
    v18 = sub_27079DCE4();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + 32;
      do
      {
        sub_27070F5BC(v20, v28);
        sub_27079DDE8(v28);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v20 += 40;
        --v19;
      }

      while (v19);
    }

    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2743A80A0](i, v13);
        }

        else
        {
          v23 = *(v13 + 8 * i + 32);
        }

        v24 = v23;
        [v6 appendEvent_];
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v25 = *(a3 + 64);

    return v25(v6, a2, a3);
  }

  return result;
}

void sub_27079E1AC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = (*(a6 + 64))(*a2, a5, a6);
  if (v9)
  {
    v10 = v9;
    MEMORY[0x2743A7C80]();
    sub_27076B6F4(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_2707A8740();
    sub_27070F6B0();
    v11 = sub_2707A8910();

    if ((v11 & 1) == 0)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    [a4 removeEvent_];
  }
}

unint64_t GameControllerReport.controllerType.getter()
{
  OUTLINED_FUNCTION_23();
  result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if ((result & 0x80) == 0)
  {
    return result;
  }

  __break(1u);
  return result;
}

double GameControllerReport.dpadUp.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.dpadDown.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.dpadLeft.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.dpadRight.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonX.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonY.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonA.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonB.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonThumbstickLeft.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double sub_27079E8B0()
{
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v1 = OUTLINED_FUNCTION_7_15(v0) / 65535.0;
  v2 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  OUTLINED_FUNCTION_7_15(v2);
  return v1;
}

double GameControllerReport.buttonThumbstickRight.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonLeftShoulder1.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonLeftShoulder2.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonRightShoulder1.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

double GameControllerReport.buttonRightShoulder2.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

uint64_t sub_27079EA84@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = GameControllerReport.Flags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_27079EAC4@<X0>(_DWORD *a1@<X8>)
{
  result = GameControllerReport.Flags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27079EAF0()
{
  result = sub_27079EB14();
  qword_28082A7B0 = result;
  *algn_28082A7B8 = v1;
  return result;
}

uint64_t sub_27079EB14()
{
  v1 = sub_27070E504(&unk_288075D78);
  v12 = v1;
  v13 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v12, v13);
  sub_270708D74(v12, v13);
  v3 = sub_27079EC94();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288075DA0);
  v8 = v7;
  sub_2707A8370();
  sub_270708D74(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 56) = &type metadata for ApplicationCollection;
  *(inited + 64) = &protocol witness table for ApplicationCollection;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v10 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v10;
}

uint64_t sub_27079EC94()
{
  LOBYTE(v246) = 5;
  v0 = sub_27074110C(&v246, 0xFF1AuLL);
  v244 = v1;
  v245 = v0;
  LOBYTE(v246) = 17;
  v2 = sub_27074110C(&v246, 0xE0F3uLL);
  v242 = v3;
  v243 = v2;
  v5 = sub_27070E504(&unk_288075800);
  v246 = v5;
  v247 = v4;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = v5 >> 32;
      break;
    case 2uLL:
      v6 = *(v5 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = BYTE6(v4);
      break;
  }

  sub_270766E38(v6, v6, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v7 = v246;
  v8 = v247;
  sub_270706C38(v246, v247);
  v240 = v8;
  v241 = v7;
  sub_270708D74(v7, v8);
  v10 = sub_27070E504(&unk_288075828);
  v246 = v10;
  v247 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v12 = v246;
  v13 = v247;
  sub_270706C38(v246, v247);
  v238 = v13;
  v239 = v12;
  sub_270708D74(v12, v13);
  v15 = sub_27070E504(&unk_288075850);
  v246 = v15;
  v247 = v14;
  v16 = 0;
  switch(v14 >> 62)
  {
    case 1uLL:
      v16 = v15 >> 32;
      break;
    case 2uLL:
      v16 = *(v15 + 24);
      break;
    case 3uLL:
      break;
    default:
      v16 = BYTE6(v14);
      break;
  }

  sub_270766E38(v16, v16, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v17 = v246;
  v18 = v247;
  sub_270706C38(v246, v247);
  v236 = v18;
  v237 = v17;
  sub_270708D74(v17, v18);
  v20 = sub_27070E504(&unk_288075878);
  v246 = v20;
  v247 = v19;
  v21 = 0;
  switch(v19 >> 62)
  {
    case 1uLL:
      v21 = v20 >> 32;
      break;
    case 2uLL:
      v21 = *(v20 + 24);
      break;
    case 3uLL:
      break;
    default:
      v21 = BYTE6(v19);
      break;
  }

  sub_270766E38(v21, v21, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v22 = v246;
  v23 = v247;
  sub_270706C38(v246, v247);
  v234 = v23;
  v235 = v22;
  sub_270708D74(v22, v23);
  v25 = sub_27070E504(&unk_2880758A0);
  v246 = v25;
  v247 = v24;
  v26 = 0;
  switch(v24 >> 62)
  {
    case 1uLL:
      v26 = v25 >> 32;
      break;
    case 2uLL:
      v26 = *(v25 + 24);
      break;
    case 3uLL:
      break;
    default:
      v26 = BYTE6(v24);
      break;
  }

  sub_270766E38(v26, v26, 144);
  sub_2707A82E0();
  sub_2707A82F0();
  v27 = v246;
  v28 = v247;
  sub_270706C38(v246, v247);
  v232 = v28;
  v233 = v27;
  sub_270708D74(v27, v28);
  v30 = sub_27070E504(&unk_2880758C8);
  v246 = v30;
  v247 = v29;
  v31 = 0;
  switch(v29 >> 62)
  {
    case 1uLL:
      v31 = v30 >> 32;
      break;
    case 2uLL:
      v31 = *(v30 + 24);
      break;
    case 3uLL:
      break;
    default:
      v31 = BYTE6(v29);
      break;
  }

  sub_270766E38(v31, v31, 145);
  sub_2707A82E0();
  sub_2707A82F0();
  v32 = v246;
  v33 = v247;
  sub_270706C38(v246, v247);
  v230 = v33;
  v231 = v32;
  sub_270708D74(v32, v33);
  v35 = sub_27070E504(&unk_2880758F0);
  v246 = v35;
  v247 = v34;
  v36 = 0;
  switch(v34 >> 62)
  {
    case 1uLL:
      v36 = v35 >> 32;
      break;
    case 2uLL:
      v36 = *(v35 + 24);
      break;
    case 3uLL:
      break;
    default:
      v36 = BYTE6(v34);
      break;
  }

  sub_270766E38(v36, v36, 147);
  sub_2707A82E0();
  sub_2707A82F0();
  v37 = v246;
  v38 = v247;
  sub_270706C38(v246, v247);
  v228 = v38;
  v229 = v37;
  sub_270708D74(v37, v38);
  v40 = sub_27070E504(&unk_288075918);
  v246 = v40;
  v247 = v39;
  v41 = 0;
  switch(v39 >> 62)
  {
    case 1uLL:
      v41 = v40 >> 32;
      break;
    case 2uLL:
      v41 = *(v40 + 24);
      break;
    case 3uLL:
      break;
    default:
      v41 = BYTE6(v39);
      break;
  }

  sub_270766E38(v41, v41, 146);
  sub_2707A82E0();
  sub_2707A82F0();
  v42 = v246;
  v43 = v247;
  sub_270706C38(v246, v247);
  v227 = v42;
  v226 = v43;
  sub_270708D74(v42, v43);
  v45 = sub_27070E504(&unk_288075940);
  v246 = v45;
  v247 = v44;
  v46 = 0;
  switch(v44 >> 62)
  {
    case 1uLL:
      v46 = v45 >> 32;
      break;
    case 2uLL:
      v46 = *(v45 + 24);
      break;
    case 3uLL:
      break;
    default:
      v46 = BYTE6(v44);
      break;
  }

  sub_270766E38(v46, v46, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v47 = v246;
  v48 = v247;
  sub_270706C38(v246, v247);
  v224 = v48;
  v225 = v47;
  sub_270708D74(v47, v48);
  v50 = sub_27070E504(&unk_288075968);
  v246 = v50;
  v247 = v49;
  v51 = 0;
  switch(v49 >> 62)
  {
    case 1uLL:
      v51 = v50 >> 32;
      break;
    case 2uLL:
      v51 = *(v50 + 24);
      break;
    case 3uLL:
      break;
    default:
      v51 = BYTE6(v49);
      break;
  }

  sub_270766E38(v51, v51, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v52 = v246;
  v53 = v247;
  sub_270706C38(v246, v247);
  v222 = v53;
  v223 = v52;
  sub_270708D74(v52, v53);
  v55 = sub_27070E504(&unk_288075990);
  v246 = v55;
  v247 = v54;
  v56 = 0;
  switch(v54 >> 62)
  {
    case 1uLL:
      v56 = v55 >> 32;
      break;
    case 2uLL:
      v56 = *(v55 + 24);
      break;
    case 3uLL:
      break;
    default:
      v56 = BYTE6(v54);
      break;
  }

  sub_270766E38(v56, v56, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v57 = v246;
  v58 = v247;
  sub_270706C38(v246, v247);
  v220 = v58;
  v221 = v57;
  sub_270708D74(v57, v58);
  v60 = sub_27070E504(&unk_2880759B8);
  v246 = v60;
  v247 = v59;
  v61 = 0;
  switch(v59 >> 62)
  {
    case 1uLL:
      v61 = v60 >> 32;
      break;
    case 2uLL:
      v61 = *(v60 + 24);
      break;
    case 3uLL:
      break;
    default:
      v61 = BYTE6(v59);
      break;
  }

  sub_270766E38(v61, v61, 4);
  sub_2707A82E0();
  sub_2707A82F0();
  v62 = v246;
  v63 = v247;
  sub_270706C38(v246, v247);
  v218 = v63;
  v219 = v62;
  sub_270708D74(v62, v63);
  v65 = sub_27070E504(&unk_2880759E0);
  v246 = v65;
  v247 = v64;
  v66 = 0;
  switch(v64 >> 62)
  {
    case 1uLL:
      v66 = v65 >> 32;
      break;
    case 2uLL:
      v66 = *(v65 + 24);
      break;
    case 3uLL:
      break;
    default:
      v66 = BYTE6(v64);
      break;
  }

  sub_270766E38(v66, v66, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v67 = v246;
  v68 = v247;
  sub_270706C38(v246, v247);
  v216 = v68;
  v217 = v67;
  sub_270708D74(v67, v68);
  v70 = sub_27070E504(&unk_288075A08);
  v246 = v70;
  v247 = v69;
  v71 = 0;
  switch(v69 >> 62)
  {
    case 1uLL:
      v71 = v70 >> 32;
      break;
    case 2uLL:
      v71 = *(v70 + 24);
      break;
    case 3uLL:
      break;
    default:
      v71 = BYTE6(v69);
      break;
  }

  sub_270766E38(v71, v71, 4);
  sub_2707A82E0();
  sub_2707A82F0();
  v72 = v246;
  v73 = v247;
  sub_270706C38(v246, v247);
  v214 = v73;
  v215 = v72;
  sub_270708D74(v72, v73);
  v75 = sub_27070E504(&unk_288075A30);
  v246 = v75;
  v247 = v74;
  v76 = 0;
  switch(v74 >> 62)
  {
    case 1uLL:
      v76 = v75 >> 32;
      break;
    case 2uLL:
      v76 = *(v75 + 24);
      break;
    case 3uLL:
      break;
    default:
      v76 = BYTE6(v74);
      break;
  }

  sub_270766E38(v76, v76, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v77 = v246;
  v78 = v247;
  sub_270706C38(v246, v247);
  v212 = v78;
  v213 = v77;
  sub_270708D74(v77, v78);
  v80 = sub_27070E504(&unk_288075A58);
  v246 = v80;
  v247 = v79;
  v81 = 0;
  switch(v79 >> 62)
  {
    case 1uLL:
      v81 = v80 >> 32;
      break;
    case 2uLL:
      v81 = *(v80 + 24);
      break;
    case 3uLL:
      break;
    default:
      v81 = BYTE6(v79);
      break;
  }

  sub_270766E38(v81, v81, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v82 = v246;
  v83 = v247;
  sub_270706C38(v246, v247);
  v210 = v83;
  v211 = v82;
  sub_270708D74(v82, v83);
  v85 = sub_27070E504(&unk_288075A80);
  v246 = v85;
  v247 = v84;
  v86 = 0;
  switch(v84 >> 62)
  {
    case 1uLL:
      v86 = v85 >> 32;
      break;
    case 2uLL:
      v86 = *(v85 + 24);
      break;
    case 3uLL:
      break;
    default:
      v86 = BYTE6(v84);
      break;
  }

  sub_270766E38(v86, v86, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v87 = v246;
  v88 = v247;
  sub_270706C38(v246, v247);
  v208 = v88;
  v209 = v87;
  sub_270708D74(v87, v88);
  v90 = sub_27070E504(&unk_288075AA8);
  v246 = v90;
  v247 = v89;
  v91 = 0;
  switch(v89 >> 62)
  {
    case 1uLL:
      v91 = v90 >> 32;
      break;
    case 2uLL:
      v91 = *(v90 + 24);
      break;
    case 3uLL:
      break;
    default:
      v91 = BYTE6(v89);
      break;
  }

  sub_270766E38(v91, v91, 4);
  sub_2707A82E0();
  sub_2707A82F0();
  v92 = v246;
  v93 = v247;
  sub_270706C38(v246, v247);
  v206 = v93;
  v207 = v92;
  sub_270708D74(v92, v93);
  v95 = sub_27070E504(&unk_288075AD0);
  v246 = v95;
  v247 = v94;
  v96 = 0;
  switch(v94 >> 62)
  {
    case 1uLL:
      v96 = v95 >> 32;
      break;
    case 2uLL:
      v96 = *(v95 + 24);
      break;
    case 3uLL:
      break;
    default:
      v96 = BYTE6(v94);
      break;
  }

  sub_270766E38(v96, v96, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v97 = v246;
  v98 = v247;
  sub_270706C38(v246, v247);
  v204 = v98;
  v205 = v97;
  sub_270708D74(v97, v98);
  v100 = sub_27070E504(&unk_288075AF8);
  v246 = v100;
  v247 = v99;
  v101 = 0;
  switch(v99 >> 62)
  {
    case 1uLL:
      v101 = v100 >> 32;
      break;
    case 2uLL:
      v101 = *(v100 + 24);
      break;
    case 3uLL:
      break;
    default:
      v101 = BYTE6(v99);
      break;
  }

  sub_270766E38(v101, v101, 9);
  sub_2707A82E0();
  sub_2707A82F0();
  v102 = v246;
  v103 = v247;
  sub_270706C38(v246, v247);
  v200 = v103;
  v201 = v102;
  sub_270708D74(v102, v103);
  v105 = sub_27070E504(&unk_288075B20);
  v246 = v105;
  v247 = v104;
  v106 = 0;
  switch(v104 >> 62)
  {
    case 1uLL:
      v106 = v105 >> 32;
      break;
    case 2uLL:
      v106 = *(v105 + 24);
      break;
    case 3uLL:
      break;
    default:
      v106 = BYTE6(v104);
      break;
  }

  sub_270766E38(v106, v106, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v108 = v246;
  v107 = v247;
  sub_270706C38(v246, v247);
  v202 = v108;
  v203 = v107;
  sub_270708D74(v108, v107);
  v110 = sub_27070E504(&unk_288075B48);
  v246 = v110;
  v247 = v109;
  v111 = 0;
  switch(v109 >> 62)
  {
    case 1uLL:
      v111 = v110 >> 32;
      break;
    case 2uLL:
      v111 = *(v110 + 24);
      break;
    case 3uLL:
      break;
    default:
      v111 = BYTE6(v109);
      break;
  }

  sub_270766E38(v111, v111, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v112 = v246;
  v113 = v247;
  sub_270706C38(v246, v247);
  v198 = v113;
  v199 = v112;
  sub_270708D74(v112, v113);
  v115 = sub_27070E504(&unk_288075B70);
  v246 = v115;
  v247 = v114;
  v116 = 0;
  switch(v114 >> 62)
  {
    case 1uLL:
      v116 = v115 >> 32;
      break;
    case 2uLL:
      v116 = *(v115 + 24);
      break;
    case 3uLL:
      break;
    default:
      v116 = BYTE6(v114);
      break;
  }

  sub_270766E38(v116, v116, 3);
  sub_2707A82E0();
  sub_2707A82F0();
  v117 = v246;
  v118 = v247;
  sub_270706C38(v246, v247);
  v196 = v118;
  v197 = v117;
  sub_270708D74(v117, v118);
  v120 = sub_27070E504(&unk_288075B98);
  v246 = v120;
  v247 = v119;
  v121 = 0;
  switch(v119 >> 62)
  {
    case 1uLL:
      v121 = v120 >> 32;
      break;
    case 2uLL:
      v121 = *(v120 + 24);
      break;
    case 3uLL:
      break;
    default:
      v121 = BYTE6(v119);
      break;
  }

  sub_270766E38(v121, v121, 4);
  sub_2707A82E0();
  sub_2707A82F0();
  v123 = v246;
  v122 = v247;
  sub_270706C38(v246, v247);
  v194 = v123;
  v195 = v122;
  sub_270708D74(v123, v122);
  v125 = sub_27070E504(&unk_288075BC0);
  v246 = v125;
  v247 = v124;
  v126 = 0;
  switch(v124 >> 62)
  {
    case 1uLL:
      v126 = v125 >> 32;
      break;
    case 2uLL:
      v126 = *(v125 + 24);
      break;
    case 3uLL:
      break;
    default:
      v126 = BYTE6(v124);
      break;
  }

  sub_270766E38(v126, v126, 5);
  sub_2707A82E0();
  sub_2707A82F0();
  v127 = v246;
  v128 = v247;
  sub_270706C38(v246, v247);
  v192 = v128;
  v193 = v127;
  sub_270708D74(v127, v128);
  v130 = sub_27070E504(&unk_288075BE8);
  v246 = v130;
  v247 = v129;
  v131 = 0;
  switch(v129 >> 62)
  {
    case 1uLL:
      v131 = v130 >> 32;
      break;
    case 2uLL:
      v131 = *(v130 + 24);
      break;
    case 3uLL:
      break;
    default:
      v131 = BYTE6(v129);
      break;
  }

  sub_270766E38(v131, v131, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v133 = v246;
  v132 = v247;
  sub_270706C38(v246, v247);
  v190 = v133;
  v191 = v132;
  sub_270708D74(v133, v132);
  v135 = sub_27070E504(&unk_288075C10);
  v246 = v135;
  v247 = v134;
  v136 = 0;
  switch(v134 >> 62)
  {
    case 1uLL:
      v136 = v135 >> 32;
      break;
    case 2uLL:
      v136 = *(v135 + 24);
      break;
    case 3uLL:
      break;
    default:
      v136 = BYTE6(v134);
      break;
  }

  sub_270766E38(v136, v136, 7);
  sub_2707A82E0();
  sub_2707A82F0();
  v137 = v246;
  v138 = v247;
  sub_270706C38(v246, v247);
  v188 = v138;
  v189 = v137;
  sub_270708D74(v137, v138);
  v140 = sub_27070E504(&unk_288075C38);
  v246 = v140;
  v247 = v139;
  v141 = 0;
  switch(v139 >> 62)
  {
    case 1uLL:
      v141 = v140 >> 32;
      break;
    case 2uLL:
      v141 = *(v140 + 24);
      break;
    case 3uLL:
      break;
    default:
      v141 = BYTE6(v139);
      break;
  }

  sub_270766E38(v141, v141, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v142 = v246;
  v143 = v247;
  sub_270706C38(v246, v247);
  v186 = v143;
  v187 = v142;
  sub_270708D74(v142, v143);
  v145 = sub_27070E504(&unk_288075C60);
  v246 = v145;
  v247 = v144;
  v146 = 0;
  switch(v144 >> 62)
  {
    case 1uLL:
      v146 = v145 >> 32;
      break;
    case 2uLL:
      v146 = *(v145 + 24);
      break;
    case 3uLL:
      break;
    default:
      v146 = BYTE6(v144);
      break;
  }

  sub_270766E38(v146, v146, 9);
  sub_2707A82E0();
  sub_2707A82F0();
  v147 = v246;
  v148 = v247;
  sub_270706C38(v246, v247);
  v184 = v148;
  v185 = v147;
  sub_270708D74(v147, v148);
  v150 = sub_27070E504(&unk_288075C88);
  v246 = v150;
  v247 = v149;
  v151 = 0;
  switch(v149 >> 62)
  {
    case 1uLL:
      v151 = v150 >> 32;
      break;
    case 2uLL:
      v151 = *(v150 + 24);
      break;
    case 3uLL:
      break;
    default:
      v151 = BYTE6(v149);
      break;
  }

  sub_270766E38(v151, v151, 10);
  sub_2707A82E0();
  sub_2707A82F0();
  v152 = v246;
  v153 = v247;
  sub_270706C38(v246, v247);
  v183 = v152;
  sub_270708D74(v152, v153);
  v155 = sub_27070E504(&unk_288075CB0);
  v246 = v155;
  v247 = v154;
  v156 = 0;
  switch(v154 >> 62)
  {
    case 1uLL:
      v156 = v155 >> 32;
      break;
    case 2uLL:
      v156 = *(v155 + 24);
      break;
    case 3uLL:
      break;
    default:
      v156 = BYTE6(v154);
      break;
  }

  sub_270766E38(v156, v156, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v157 = v246;
  v158 = v247;
  sub_270706C38(v246, v247);
  v182 = v157;
  sub_270708D74(v157, v158);
  v160 = sub_27070E504(&unk_288075CD8);
  v246 = v160;
  v247 = v159;
  v161 = 0;
  switch(v159 >> 62)
  {
    case 1uLL:
      v161 = v160 >> 32;
      break;
    case 2uLL:
      v161 = *(v160 + 24);
      break;
    case 3uLL:
      break;
    default:
      v161 = BYTE6(v159);
      break;
  }

  sub_270766E38(v161, v161, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v162 = v246;
  v163 = v247;
  sub_270706C38(v246, v247);
  sub_270708D74(v162, v163);
  v165 = sub_27070E504(&unk_288075D00);
  v246 = v165;
  v247 = v164;
  v166 = 0;
  switch(v164 >> 62)
  {
    case 1uLL:
      v166 = v165 >> 32;
      break;
    case 2uLL:
      v166 = *(v165 + 24);
      break;
    case 3uLL:
      break;
    default:
      v166 = BYTE6(v164);
      break;
  }

  sub_270766E38(v166, v166, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v167 = v246;
  v168 = v247;
  sub_270706C38(v246, v247);
  sub_270708D74(v167, v168);
  v170 = sub_27070E504(&unk_288075D28);
  v246 = v170;
  v247 = v169;
  v171 = 0;
  switch(v169 >> 62)
  {
    case 1uLL:
      v171 = v170 >> 32;
      break;
    case 2uLL:
      v171 = *(v170 + 24);
      break;
    case 3uLL:
      break;
    default:
      v171 = BYTE6(v169);
      break;
  }

  sub_270766E38(v171, v171, 10);
  sub_2707A82E0();
  sub_2707A82F0();
  v172 = v246;
  v173 = v247;
  sub_270706C38(v246, v247);
  sub_270708D74(v172, v173);
  v175 = sub_27070E504(&unk_288075D50);
  v246 = v175;
  v247 = v174;
  v176 = 0;
  switch(v174 >> 62)
  {
    case 1uLL:
      v176 = v175 >> 32;
      break;
    case 2uLL:
      v176 = *(v175 + 24);
      break;
    case 3uLL:
      break;
    default:
      v176 = BYTE6(v174);
      break;
  }

  sub_270766E38(v176, v176, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v178 = v246;
  v177 = v247;
  sub_270706C38(v246, v247);
  sub_270708D74(v178, v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  v179 = swift_allocObject();
  *(v179 + 72) = v245;
  *(v179 + 80) = v244;
  *(v179 + 112) = v243;
  *(v179 + 120) = v242;
  *(v179 + 152) = v241;
  *(v179 + 160) = v240;
  *(v179 + 192) = v239;
  *(v179 + 200) = v238;
  *(v179 + 232) = v237;
  *(v179 + 240) = v236;
  *(v179 + 272) = v235;
  *(v179 + 280) = v234;
  *(v179 + 312) = v233;
  *(v179 + 320) = v232;
  *(v179 + 352) = v231;
  *(v179 + 360) = v230;
  *(v179 + 392) = v229;
  *(v179 + 400) = v228;
  *(v179 + 432) = v227;
  *(v179 + 440) = v226;
  *(v179 + 472) = v225;
  *(v179 + 480) = v224;
  *(v179 + 512) = v223;
  *(v179 + 520) = v222;
  *(v179 + 552) = v221;
  *(v179 + 560) = v220;
  *(v179 + 592) = v219;
  *(v179 + 600) = v218;
  *(v179 + 632) = v217;
  *(v179 + 640) = v216;
  *(v179 + 672) = v215;
  *(v179 + 680) = v214;
  *(v179 + 712) = v213;
  *(v179 + 720) = v212;
  *(v179 + 752) = v211;
  *(v179 + 760) = v210;
  *(v179 + 792) = v209;
  *(v179 + 800) = v208;
  *(v179 + 832) = v207;
  *(v179 + 840) = v206;
  *(v179 + 872) = v205;
  *(v179 + 880) = v204;
  *(v179 + 912) = v201;
  *(v179 + 920) = v200;
  *(v179 + 56) = &type metadata for ReportID;
  *(v179 + 64) = &protocol witness table for ReportID;
  *(v179 + 32) = 18;
  *(v179 + 296) = &type metadata for UsagePage;
  *(v179 + 304) = &protocol witness table for UsagePage;
  *(v179 + 936) = &type metadata for UsagePage;
  *(v179 + 96) = &type metadata for UsagePage;
  *(v179 + 104) = &protocol witness table for UsagePage;
  *(v179 + 944) = &protocol witness table for UsagePage;
  *(v179 + 952) = v202;
  *(v179 + 16) = xmmword_2707B3540;
  *(v179 + 960) = v203;
  *(v179 + 136) = &type metadata for Usage;
  *(v179 + 144) = &protocol witness table for Usage;
  *(v179 + 992) = v199;
  *(v179 + 1000) = v198;
  *(v179 + 176) = &type metadata for ReportSize;
  *(v179 + 184) = &protocol witness table for ReportSize;
  *(v179 + 1032) = v197;
  *(v179 + 1040) = v196;
  *(v179 + 1072) = v194;
  *(v179 + 216) = &type metadata for ReportCount;
  *(v179 + 224) = &protocol witness table for ReportCount;
  *(v179 + 1080) = v195;
  *(v179 + 256) = &type metadata for Input;
  *(v179 + 264) = &protocol witness table for Input;
  *(v179 + 336) = &type metadata for Usage;
  *(v179 + 344) = &protocol witness table for Usage;
  *(v179 + 376) = &type metadata for Usage;
  *(v179 + 384) = &protocol witness table for Usage;
  *(v179 + 416) = &type metadata for Usage;
  *(v179 + 424) = &protocol witness table for Usage;
  *(v179 + 456) = &type metadata for Usage;
  *(v179 + 464) = &protocol witness table for Usage;
  *(v179 + 1112) = v193;
  *(v179 + 1120) = v192;
  *(v179 + 1152) = v190;
  *(v179 + 496) = &type metadata for LogicalMinimum;
  *(v179 + 504) = &protocol witness table for LogicalMinimum;
  *(v179 + 536) = &type metadata for LogicalMaximum;
  *(v179 + 1160) = v191;
  *(v179 + 544) = &protocol witness table for LogicalMaximum;
  *(v179 + 576) = &type metadata for ReportSize;
  *(v179 + 584) = &protocol witness table for ReportSize;
  *(v179 + 616) = &type metadata for ReportCount;
  *(v179 + 624) = &protocol witness table for ReportCount;
  *(v179 + 656) = &type metadata for Input;
  *(v179 + 664) = &protocol witness table for Input;
  *(v179 + 696) = &type metadata for Usage;
  *(v179 + 704) = &protocol witness table for Usage;
  *(v179 + 736) = &type metadata for LogicalMinimum;
  *(v179 + 744) = &protocol witness table for LogicalMinimum;
  *(v179 + 776) = &type metadata for LogicalMaximum;
  *(v179 + 784) = &protocol witness table for LogicalMaximum;
  *(v179 + 816) = &type metadata for ReportSize;
  *(v179 + 824) = &protocol witness table for ReportSize;
  *(v179 + 856) = &type metadata for ReportCount;
  *(v179 + 864) = &protocol witness table for ReportCount;
  *(v179 + 896) = &type metadata for Input;
  *(v179 + 904) = &protocol witness table for Input;
  *(v179 + 976) = &type metadata for Usage;
  *(v179 + 984) = &protocol witness table for Usage;
  *(v179 + 1016) = &type metadata for Usage;
  *(v179 + 1024) = &protocol witness table for Usage;
  *(v179 + 1056) = &type metadata for Usage;
  *(v179 + 1064) = &protocol witness table for Usage;
  *(v179 + 1096) = &type metadata for Usage;
  *(v179 + 1104) = &protocol witness table for Usage;
  *(v179 + 1136) = &type metadata for Usage;
  *(v179 + 1144) = &protocol witness table for Usage;
  *(v179 + 1176) = &type metadata for Usage;
  *(v179 + 1184) = &protocol witness table for Usage;
  *(v179 + 1216) = &type metadata for Usage;
  *(v179 + 1224) = &protocol witness table for Usage;
  *(v179 + 1192) = v189;
  *(v179 + 1200) = v188;
  *(v179 + 1256) = &type metadata for Usage;
  *(v179 + 1264) = &protocol witness table for Usage;
  *(v179 + 1232) = v187;
  *(v179 + 1240) = v186;
  *(v179 + 1296) = &type metadata for Usage;
  *(v179 + 1304) = &protocol witness table for Usage;
  *(v179 + 1272) = v185;
  *(v179 + 1280) = v184;
  *(v179 + 1336) = &type metadata for Usage;
  *(v179 + 1344) = &protocol witness table for Usage;
  *(v179 + 1312) = v183;
  *(v179 + 1320) = v153;
  *(v179 + 1376) = &type metadata for LogicalMinimum;
  *(v179 + 1384) = &protocol witness table for LogicalMinimum;
  *(v179 + 1352) = v182;
  *(v179 + 1360) = v158;
  *(v179 + 1416) = &type metadata for LogicalMaximum;
  *(v179 + 1424) = &protocol witness table for LogicalMaximum;
  *(v179 + 1392) = v162;
  *(v179 + 1400) = v163;
  *(v179 + 1456) = &type metadata for ReportSize;
  *(v179 + 1464) = &protocol witness table for ReportSize;
  *(v179 + 1432) = v167;
  *(v179 + 1440) = v168;
  *(v179 + 1496) = &type metadata for ReportCount;
  *(v179 + 1504) = &protocol witness table for ReportCount;
  *(v179 + 1472) = v172;
  *(v179 + 1480) = v173;
  *(v179 + 1536) = &type metadata for Input;
  *(v179 + 1544) = &protocol witness table for Input;
  *(v179 + 1512) = v178;
  *(v179 + 1520) = v177;
  v180 = static HIDReportDescriptor.Builder.buildBlock(_:)(v179);
  swift_setDeallocating();
  sub_27078DA0C();
  return v180;
}

uint64_t static GameControllerReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_2808294E8 != -1)
  {
    OUTLINED_FUNCTION_6_26();
  }

  v2 = qword_28082A7B0;
  v3 = *algn_28082A7B8;
  *a1 = qword_28082A7B0;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t GameControllerReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2707A0848@<X0>(uint64_t *a1@<X8>)
{
  result = GameControllerReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2707A0B78@<X0>(_DWORD *a1@<X8>)
{
  result = GameControllerReport.controllerType.getter();
  *a1 = result;
  return result;
}

unint64_t GameControllerReport.controllerType.modify(uint64_t a1)
{
  *a1 = v1;
  result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if ((result & 0x80) != 0)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  return result;
}

uint64_t GameControllerReport.dpadUp.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.dpadDown.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.dpadLeft.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.dpadRight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

double GameControllerReport.joystickX.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

uint64_t GameControllerReport.joystickX.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

double GameControllerReport.joystickY.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

uint64_t GameControllerReport.joystickY.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

double GameControllerReport.joystickZ.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

uint64_t GameControllerReport.joystickZ.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

double GameControllerReport.joystickRZ.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_7_15(v0) / 65535.0;
}

uint64_t GameControllerReport.joystickRZ.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonX.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonY.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonA.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonB.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonLeftShoulder1.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonLeftShoulder2.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonRightShoulder1.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonRightShoulder2.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonThumbstickLeft.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerReport.buttonThumbstickRight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_7_15(v1);
  OUTLINED_FUNCTION_5_31(v2, 65535.0);
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_2707A16C8()
{
  result = qword_28082A7C0;
  if (!qword_28082A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A7C0);
  }

  return result;
}

unint64_t sub_2707A1720()
{
  result = qword_28082A7C8;
  if (!qword_28082A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A7C8);
  }

  return result;
}

unint64_t sub_2707A1778()
{
  result = qword_28082A7D0;
  if (!qword_28082A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A7D0);
  }

  return result;
}

unint64_t sub_2707A17D0()
{
  result = qword_28082A7D8;
  if (!qword_28082A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A7D8);
  }

  return result;
}

double OUTLINED_FUNCTION_5_31(double a1, double a2)
{
  result = a1 / a2;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return swift_once();
}

void ScaleReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x2707A1C1CLL);
      }

      if (v2 >= 12)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void ScaleReport.phase.setter()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_1_6(v0);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t sub_2707A1CBC()
{
  result = sub_2707A1CE0();
  qword_28082A7E0 = result;
  *algn_28082A7E8 = v1;
  return result;
}

uint64_t sub_2707A1CE0()
{
  v1 = sub_27070E504(&unk_288073A00);
  v65 = v1;
  v66 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v63 = v66;
  v64 = v65;
  sub_270708D74(v65, v66);
  v4 = sub_27070E504(&unk_288073A28);
  v65 = v4;
  v66 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v61 = v66;
  v62 = v65;
  sub_270708D74(v65, v66);
  v7 = sub_27070E504(&unk_288073A50);
  v65 = v7;
  v66 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v59 = v66;
  v60 = v65;
  sub_270708D74(v65, v66);
  v10 = sub_27070E504(&unk_288073A78);
  v65 = v10;
  v66 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v57 = v66;
  v58 = v65;
  sub_270708D74(v65, v66);
  v13 = sub_27070E504(&unk_288073AA0);
  v65 = v13;
  v66 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v55 = v66;
  v56 = v65;
  sub_270708D74(v65, v66);
  v16 = sub_27070E504(&unk_288073AC8);
  v65 = v16;
  v66 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v18 = v66;
  sub_270706C38(v65, v66);
  v54 = v65;
  sub_270708D74(v65, v66);
  LOBYTE(v65) = 5;
  v19 = sub_27074110C(&v65, 0xFF00uLL);
  v52 = v20;
  v53 = v19;
  LOBYTE(v65) = 17;
  v21 = sub_27074110C(&v65, 0x102uLL);
  v50 = v22;
  v51 = v21;
  v24 = sub_27070E504(&unk_288073AF0);
  v65 = v24;
  v66 = v23;
  v25 = 0;
  switch(v23 >> 62)
  {
    case 1uLL:
      v25 = v24 >> 32;
      break;
    case 2uLL:
      v25 = *(v24 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v23);
      break;
  }

  sub_270766E38(v25, v25, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v26 = v65;
  v27 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v26, v27);
  LOBYTE(v65) = 7;
  v28 = sub_270740DC4(&v65, 255);
  v48 = v29;
  v49 = v28;
  v31 = sub_27070E504(&unk_288073B18);
  v65 = v31;
  v66 = v30;
  v32 = 0;
  switch(v30 >> 62)
  {
    case 1uLL:
      v32 = v31 >> 32;
      break;
    case 2uLL:
      v32 = *(v31 + 24);
      break;
    case 3uLL:
      break;
    default:
      v32 = BYTE6(v30);
      break;
  }

  sub_270766E38(v32, v32, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v33 = v65;
  v34 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v33, v34);
  v36 = sub_27070E504(&unk_288073B40);
  v65 = v36;
  v66 = v35;
  v37 = 0;
  switch(v35 >> 62)
  {
    case 1uLL:
      v37 = v36 >> 32;
      break;
    case 2uLL:
      v37 = *(v36 + 24);
      break;
    case 3uLL:
      break;
    default:
      v37 = BYTE6(v35);
      break;
  }

  sub_270766E38(v37, v37, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v38 = v65;
  v39 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v38, v39);
  v41 = sub_27070E504(&unk_288073B68);
  v65 = v41;
  v66 = v40;
  v42 = 0;
  switch(v40 >> 62)
  {
    case 1uLL:
      v42 = v41 >> 32;
      break;
    case 2uLL:
      v42 = *(v41 + 24);
      break;
    case 3uLL:
      break;
    default:
      v42 = BYTE6(v40);
      break;
  }

  sub_270766E38(v42, v42, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v44 = v65;
  v43 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AB530;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 15;
  *(inited + 96) = &type metadata for ReportSize;
  *(inited + 104) = &protocol witness table for ReportSize;
  *(inited + 72) = v64;
  *(inited + 80) = v63;
  *(inited + 136) = &type metadata for ReportCount;
  *(inited + 144) = &protocol witness table for ReportCount;
  *(inited + 112) = v62;
  *(inited + 120) = v61;
  *(inited + 176) = &type metadata for Input;
  *(inited + 184) = &protocol witness table for Input;
  *(inited + 152) = v60;
  *(inited + 160) = v59;
  *(inited + 216) = &type metadata for ReportSize;
  *(inited + 224) = &protocol witness table for ReportSize;
  *(inited + 192) = v58;
  *(inited + 200) = v57;
  *(inited + 256) = &type metadata for ReportCount;
  *(inited + 264) = &protocol witness table for ReportCount;
  *(inited + 232) = v56;
  *(inited + 240) = v55;
  *(inited + 296) = &type metadata for Input;
  *(inited + 304) = &protocol witness table for Input;
  *(inited + 272) = v54;
  *(inited + 280) = v18;
  *(inited + 336) = &type metadata for UsagePage;
  *(inited + 344) = &protocol witness table for UsagePage;
  *(inited + 312) = v53;
  *(inited + 320) = v52;
  *(inited + 376) = &type metadata for Usage;
  *(inited + 384) = &protocol witness table for Usage;
  *(inited + 352) = v51;
  *(inited + 360) = v50;
  *(inited + 416) = &type metadata for LogicalMinimum;
  *(inited + 424) = &protocol witness table for LogicalMinimum;
  *(inited + 392) = v26;
  *(inited + 400) = v27;
  *(inited + 456) = &type metadata for LogicalMaximum;
  *(inited + 464) = &protocol witness table for LogicalMaximum;
  *(inited + 432) = v49;
  *(inited + 440) = v48;
  *(inited + 496) = &type metadata for ReportSize;
  *(inited + 504) = &protocol witness table for ReportSize;
  *(inited + 472) = v33;
  *(inited + 480) = v34;
  *(inited + 536) = &type metadata for ReportCount;
  *(inited + 544) = &protocol witness table for ReportCount;
  *(inited + 512) = v38;
  *(inited + 520) = v39;
  *(inited + 576) = &type metadata for Input;
  *(inited + 584) = &protocol witness table for Input;
  *(inited + 552) = v44;
  *(inited + 560) = v43;
  v46 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v46;
}

uint64_t static ScaleReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_2808294F0 != -1)
  {
    swift_once();
  }

  v2 = qword_28082A7E0;
  v3 = *algn_28082A7E8;
  *a1 = qword_28082A7E0;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t ScaleReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2707A2658@<X0>(uint64_t *a1@<X8>)
{
  result = ScaleReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2707A2698@<X0>(_BYTE *a1@<X8>)
{
  result = ScaleReport.flags.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2707A2710@<X0>(_BYTE *a1@<X8>)
{
  result = ScaleReport.phase.getter();
  *a1 = result;
  return result;
}

void (*ScaleReport.z.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_270710834();
  return sub_27072832C;
}

uint64_t ScaleReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x2707A28B8);
      }

      if (v4 >= 12)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_2707A28C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ScaleReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*ScaleReport.remoteTimestamp.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x2707A2A04);
      }

      if (v6 >= 12)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return sub_2707A2A14;
  }
}

void sub_2707A2A14(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    ScaleReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 12)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_2707A2AF4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x2707A2BD4);
      }

      if (v7 >= 12)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_2707A2BE4;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_2707A2BE4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    ScaleReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 12)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

unint64_t HIDTouchSensitiveButtonEventMask.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t HIDTouchSensitiveButtonEventMask.hashValue.getter()
{
  sub_2707A8F60();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_2707A2E5C()
{
  sub_2707A8F60();
  HIDTouchSensitiveButtonEventMask.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t HIDTouchSensitiveButtonEventMask.description.getter(int a1)
{
  v1 = a1 - 1;
  result = 0x7069775374736166;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7753524E53776F6CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      result = sub_2707A8E70();
      break;
  }

  return result;
}

unint64_t sub_2707A2FAC()
{
  result = qword_28082A7F0;
  if (!qword_28082A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A7F0);
  }

  return result;
}

unint64_t sub_2707A3014()
{
  result = qword_28082A800;
  if (!qword_28082A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A800);
  }

  return result;
}

void sub_2707A3080()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD00000000000001ALL);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A30F4()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000014);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A3168()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000010);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A31DC()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000011);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A3250()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000015);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A32C4()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000017);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A3350()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000015);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A3420()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  OUTLINED_FUNCTION_6_27();
  MEMORY[0x2743A7BE0](0xD000000000000014);
  OUTLINED_FUNCTION_15_13();
  v0 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v0, v1);
  v2 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v2, v3);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

void sub_2707A34B4()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_65();
  MEMORY[0x2743A7BE0](v0, v1);
  OUTLINED_FUNCTION_15_13();
  v2 = OUTLINED_FUNCTION_3_1();
  sub_270706C38(v2, v3);
  v4 = OUTLINED_FUNCTION_3_1();
  HIDReport.description.getter(v4, v5);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_14_14();

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_19_2();
}

uint64_t sub_2707A353C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_37_1();
    }

    while (!v1);
  }

  return 0;
}

uint64_t sub_2707A3584(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (result + 32);
    while (1)
    {
      v4 = *v3++;
      v5 = 1 << v4;
      v6 = v4 <= 0x3F ? v5 : 0;
      if (v6 < 0)
      {
        break;
      }

      if ((v6 & v2) != 0)
      {
        v6 = 0;
      }

      v2 |= v6;
      if (!--v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v2 = 0;
LABEL_12:

    return v2;
  }

  return result;
}

uint64_t sub_2707A35F4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

uint64_t sub_2707A364C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_37_1();
    }

    while (!v1);
  }

  return 0;
}

void sub_2707A36AC(uint64_t a1@<X8>, int a2@<W0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_33_4(a1);
}

uint64_t sub_2707A36D0(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return OUTLINED_FUNCTION_31_4((v2 & a1));
}

unint64_t sub_2707A36FC(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_2707A3758(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return OUTLINED_FUNCTION_31_4((v2 & a1));
}

unint64_t sub_2707A377C(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_2707A37E4()
{
  OUTLINED_FUNCTION_36_3();
  v3 = v2;
  v13 = v4;
  v14 = v5;
  sub_270706C38(v6, v7);
  v8 = OUTLINED_FUNCTION_7_5();
  sub_270706C38(v8, v9);
  sub_27072BFC0();
  *v3 = v1;
  v3[1] = v0;
  v10 = OUTLINED_FUNCTION_7_5();
  sub_270706C38(v10, v11);
  sub_270706C38(v13, v14);
  sub_27072C024();

  return sub_270708D74(v13, v14);
}

uint64_t sub_2707A3914@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(uint64_t, unint64_t)@<X4>, void (*a6)(uint64_t, unint64_t)@<X5>, uint64_t *a7@<X8>)
{
  sub_270706C38(a3, a4);
  sub_270706C38(a1, a2);
  a5(a1, a2);
  sub_270708D74(a1, a2);
  *a7 = a3;
  a7[1] = a4;
  sub_270706C38(a3, a4);
  a6(a3, a4);

  return sub_270708D74(a3, a4);
}

uint64_t sub_2707A39E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_10_17(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_3_1();
  sub_270759FC8(v5, v6);
  if (qword_280829430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829778);
  v7 = HIDReportDescriptor.reportBitCount(for:)(4u);
  OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v18[0], v18[1]);
  HIDReport.init(bitCount:id:)(v18, 4);
  OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_24_5();
  v15 = OUTLINED_FUNCTION_28();
  sub_270708D74(v15, v16);
  return v4 & 1;
}

uint64_t sub_2707A3AAC()
{
  OUTLINED_FUNCTION_36_3();
  sub_270706C38(v1, v2);
  v3 = OUTLINED_FUNCTION_7_5();
  sub_270706C38(v3, v4);
  sub_27072C024();
  if (qword_280829440 != -1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  v9 = qword_2808297D8;
  v10 = qword_2808297E0;
  sub_270706C38(qword_2808297D8, qword_2808297E0);
  v5 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v9, v10);
  HIDReport.init(bitCount:id:)(v5, 1);
  OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_24_5();
  v6 = OUTLINED_FUNCTION_28();
  sub_270708D74(v6, v7);
  return v0 & 1;
}

uint64_t sub_2707A3B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_10_17(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_3_1();
  sub_27075A0B4(v5, v6);
  if (qword_280829448 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829828);
  v7 = HIDReportDescriptor.reportBitCount(for:)(3u);
  OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v18[0], v18[1]);
  HIDReport.init(bitCount:id:)(v18, 3);
  OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_24_5();
  v15 = OUTLINED_FUNCTION_28();
  sub_270708D74(v15, v16);
  return v4 & 1;
}

uint64_t sub_2707A3C2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_10_17(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_3_1();
  sub_27075A5FC(v5, v6);
  if (qword_280829458 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829AA0);
  v7 = HIDReportDescriptor.reportBitCount(for:)(2u);
  OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v18[0], v18[1]);
  HIDReport.init(bitCount:id:)(v18, 2);
  OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_24_5();
  v15 = OUTLINED_FUNCTION_28();
  sub_270708D74(v15, v16);
  return v4 & 1;
}

uint64_t sub_2707A3CEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_10_17(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_3_1();
  sub_27075A1AC(v5, v6);
  if (qword_2808294B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829D70);
  v7 = HIDReportDescriptor.reportBitCount(for:)(6u);
  OUTLINED_FUNCTION_42_0(v7, v8, v9, v10, v11, v12, v13, v14, v18[0], v18[1]);
  HIDReport.init(bitCount:id:)(v18, 6);
  OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_24_5();
  v15 = OUTLINED_FUNCTION_28();
  sub_270708D74(v15, v16);
  return v4 & 1;
}

uint64_t PointerReport.reportWithoutMovement.getter()
{
  if (qword_2808294F8 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  OUTLINED_FUNCTION_40_0(&qword_28082A808);
  v0 = HIDReportDescriptor.reportBitCount(for:)(5u);
  OUTLINED_FUNCTION_42_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  v10 = HIDReport.init(bitCount:id:)(&v10, 5);
  v11 = v8;
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  return v10;
}

uint64_t sub_2707A3E8C(uint64_t a1)
{
  v2 = type metadata accessor for EventReportSenderID();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - v13;
  v15 = *(a1 + 16);
  v16 = sub_2707A7ECC();
  result = MEMORY[0x2743A7D40](v15, v2, v16);
  v18 = 0;
  v26 = result;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  for (i = (v19 + 63) >> 6; v21; result = sub_27072318C(v11))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_2707230C4(*(a1 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v14);
    sub_270723128(v14, v7);
    sub_270796224(v11, v7);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return v26;
    }

    v21 = *(a1 + 64 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2707A406C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_270762DD4();
  v4 = MEMORY[0x2743A7D40](v2, &type metadata for KeyboardUsage, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_270797DE4(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_2707A4104(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_11_19(a1, a2);
  v3 = AppleVendorKeyboardReport.update(with:)(v2);
  return OUTLINED_FUNCTION_39_2(v3);
}

uint64_t sub_2707A4134(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_11_19(a1, a2);
  v3 = AppleVendorTopCaseReport.update(with:)(v2);
  return OUTLINED_FUNCTION_39_2(v3);
}

uint64_t sub_2707A4164(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_11_19(a1, a2);
  v3 = KeyboardReport.update(with:)(v2);
  return OUTLINED_FUNCTION_39_2(v3);
}

uint64_t sub_2707A4194(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_19(a1, a2);
  result = (ConsumerReport.update(with:)(v4) >> 16) & 1;
  *v3 = v2;
  return result;
}

uint64_t sub_2707A41C8(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_11_19(a1, a2);
  v3 = ButtonReport.update(with:)(v2);
  return OUTLINED_FUNCTION_39_2(v3);
}

double sub_2707A41F8@<D0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  if (qword_280829440 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_5_7();
  }

  v33 = xmmword_2808297D8;
  sub_270706C38(xmmword_2808297D8, *(&xmmword_2808297D8 + 1));
  v3 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v33, *(&v33 + 1));
  *&v33 = HIDReport.init(bitCount:id:)(v3, 1);
  *(&v33 + 1) = v4;
  v5 = *a1;
  v29 = a1[3];
  v30 = a1[1];
  v6 = -1 << *(*a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5[8];
  v28 = a1[5];
  a1 = ((63 - v6) >> 6);

  v9 = 0;
  while (1)
  {
    v10 = v8;
    v11 = v9;
    if (!v8)
    {
      break;
    }

LABEL_11:
    v13 = (v10 - 1) & v10;
    v14 = __clz(__rbit64(v10)) | (v11 << 6);
    v15 = *(v5[6] + 4 * v14);
    v16 = *(v5[7] + v14);

    sub_27073F570();
    *(&v31 + 2) = v15;
    BYTE6(v31) = v16;
    v30(&v31, &v31 + 2);
    v17 = v31;
    v18 = BYTE1(v31);
    v32 = v31;
    v9 = v11;
    v8 = v13;
    if (v29(&v32))
    {
      BYTE2(v31) = v17;
      BYTE3(v31) = v18;
      v28(&v32, &v31 + 2);
      v19 = v32 + 8;
      v20 = v33;
      v21 = *(&v33 + 1) >> 62;
      v22 = 0;
      switch(*(&v33 + 1) >> 62)
      {
        case 1:
          v22 = v33;
          break;
        case 2:
          v22 = *(v33 + 16);
          break;
        default:
          break;
      }

      if (__OFADD__(v22, v19 >> 3))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v27 = v33;
      v23 = v19 >> 3;
      sub_2707A82E0();
      switch(v21)
      {
        case 1:
          v24 = v27;
          goto LABEL_19;
        case 2:
          v24 = *(v20 + 16);
LABEL_19:
          if (!__OFADD__(v24, v23))
          {
            goto LABEL_20;
          }

          goto LABEL_24;
        default:
LABEL_20:
          sub_2707A82E0();
          sub_2707A82F0();
          v9 = v11;
          v8 = v13;
          break;
      }
    }
  }

  v12 = v9;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v11 >= a1)
    {
      break;
    }

    v10 = v5[v11 + 8];
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570();
  sub_27073F570();

  result = *&v33;
  *a2 = v33;
  return result;
}

double sub_2707A4530@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_280829430 != -1)
  {
LABEL_8:
    swift_once();
  }

  v10 = xmmword_280829778;
  sub_270706C38(xmmword_280829778, *(&xmmword_280829778 + 1));
  v4 = HIDReportDescriptor.reportBitCount(for:)(4u);
  sub_270708D74(v10, *(&v10 + 1));
  *&v11 = HIDReport.init(bitCount:id:)(v4, 4);
  *(&v11 + 1) = v5;

  for (i = 0; ; i = v8)
  {
    v7 = *(a1 + 16);
    if (i == v7)
    {
      break;
    }

    if (i >= v7)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = i + 1;
    AppleVendorTopCaseReport.update(with:)(*(a1 + i + 32));
  }

  swift_bridgeObjectRelease_n();
  result = *&v11;
  *a2 = v11;
  return result;
}

double sub_2707A4620@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_280829440 != -1)
  {
LABEL_17:
    swift_once();
  }

  v13 = xmmword_2808297D8;
  sub_270706C38(xmmword_2808297D8, *(&xmmword_2808297D8 + 1));
  v4 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v13, *(&v13 + 1));
  *&v14 = HIDReport.init(bitCount:id:)(v4, 1);
  *(&v14 + 1) = v5;

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
      break;
    }

    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = *(a1 + v6 + 32) + 8;
    v9 = 0;
    v10 = v14;
    switch(*(&v14 + 1) >> 62)
    {
      case 1:
        v9 = v14;
        break;
      case 2:
        v9 = *(v14 + 16);
        break;
      default:
        break;
    }

    if (__OFADD__(v9, v8 >> 3))
    {
      goto LABEL_15;
    }

    v11 = v8 >> 3;
    sub_2707A82E0();
    switch(*(&v14 + 1) >> 62)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v10 = *(v14 + 16);
LABEL_11:
        if (!__OFADD__(v10, v11))
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      default:
LABEL_12:
        sub_2707A82E0();
        sub_2707A82F0();
        ++v6;
        break;
    }
  }

  swift_bridgeObjectRelease_n();
  result = *&v14;
  *a2 = v14;
  return result;
}

double sub_2707A47FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_280829448 != -1)
  {
LABEL_8:
    swift_once();
  }

  v10 = xmmword_280829828;
  sub_270706C38(xmmword_280829828, *(&xmmword_280829828 + 1));
  v4 = HIDReportDescriptor.reportBitCount(for:)(3u);
  sub_270708D74(v10, *(&v10 + 1));
  *&v11 = HIDReport.init(bitCount:id:)(v4, 3);
  *(&v11 + 1) = v5;

  for (i = 0; ; i = v8)
  {
    v7 = *(a1 + 16);
    if (i == v7)
    {
      break;
    }

    if (i >= v7)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = i + 1;
    AppleVendorKeyboardReport.update(with:)(*(a1 + i + 32));
  }

  swift_bridgeObjectRelease_n();
  result = *&v11;
  *a2 = v11;
  return result;
}

double sub_2707A48EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_280829458 != -1)
  {
LABEL_8:
    swift_once();
  }

  v10 = xmmword_280829AA0;
  sub_270706C38(xmmword_280829AA0, *(&xmmword_280829AA0 + 1));
  v4 = HIDReportDescriptor.reportBitCount(for:)(2u);
  sub_270708D74(v10, *(&v10 + 1));
  *&v11 = HIDReport.init(bitCount:id:)(v4, 2);
  *(&v11 + 1) = v5;

  for (i = 0; ; i = v8)
  {
    v7 = *(a1 + 16);
    if (i == v7)
    {
      break;
    }

    if (i >= v7)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = i + 1;
    ConsumerReport.update(with:)(*(a1 + 2 * i + 32));
  }

  swift_bridgeObjectRelease_n();
  result = *&v11;
  *a2 = v11;
  return result;
}

double sub_2707A49DC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_2808294B8 != -1)
  {
LABEL_17:
    swift_once();
  }

  v13 = xmmword_280829D70;
  sub_270706C38(xmmword_280829D70, *(&xmmword_280829D70 + 1));
  v4 = HIDReportDescriptor.reportBitCount(for:)(6u);
  sub_270708D74(v13, *(&v13 + 1));
  *&v14 = HIDReport.init(bitCount:id:)(v4, 6);
  *(&v14 + 1) = v5;

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
      break;
    }

    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = *(a1 + v6 + 32) + 8;
    v9 = 0;
    v10 = v14;
    switch(*(&v14 + 1) >> 62)
    {
      case 1:
        v9 = v14;
        break;
      case 2:
        v9 = *(v14 + 16);
        break;
      default:
        break;
    }

    if (__OFADD__(v9, v8 >> 3))
    {
      goto LABEL_15;
    }

    v11 = v8 >> 3;
    sub_2707A82E0();
    switch(*(&v14 + 1) >> 62)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v10 = *(v14 + 16);
LABEL_11:
        if (!__OFADD__(v10, v11))
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      default:
LABEL_12:
        sub_2707A82E0();
        sub_2707A82F0();
        ++v6;
        break;
    }
  }

  swift_bridgeObjectRelease_n();
  result = *&v14;
  *a2 = v14;
  return result;
}

uint64_t KeyboardModifierMask.keyboardUsages()(unsigned __int8 a1)
{
  v1 = 0;
  v2 = a1;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = byte_288076818[v1 + 32];
    if ((v4 & ~v2) == 0)
    {
      v5 = v4 | 0xE0;
      if ((v4 | 0xE0u) <= 0xE7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_270713E74();
          v3 = v7;
        }

        v6 = *(v3 + 16);
        if (v6 >= *(v3 + 24) >> 1)
        {
          sub_270713E74();
          v3 = v8;
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + v6 + 32) = v5;
      }
    }

    ++v1;
  }

  while (v1 != 8);

  return sub_2707A406C(v3);
}

uint64_t KeyboardModifierMask.init(usages:)(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  for (i = (v3 + 63) >> 6; v5; v2 = v10 | v2)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(result + 48) + (v8 | (v7 << 6)));
    LODWORD(v8) = v9 - 232;
    v10 = 1 << (v9 & 7);
    if (v8 < 0xFFFFFFF8)
    {
      v10 = 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= i)
    {

      return v2;
    }

    v5 = *(result + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double PointerReport.delta.getter()
{
  OUTLINED_FUNCTION_12_7();
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_12_7();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return v0;
}

uint64_t PointerReport.flags.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  *v1 = result;
  return result;
}

double PointerReport.accelDelta.getter()
{
  OUTLINED_FUNCTION_12_7();
  v0 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_12_7();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  return v0;
}

void PointerReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x2707A4FB0);
      }

      if (v2 >= 25)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

uint64_t sub_2707A5088@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = PointerReport.Flags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2707A50C8@<X0>(_DWORD *a1@<X8>)
{
  result = PointerReport.Flags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2707A5108()
{
  result = sub_2707A512C();
  qword_28082A808 = result;
  unk_28082A810 = v1;
  return result;
}

uint64_t sub_2707A512C()
{
  v1 = sub_27070E504(&unk_2880744F0);
  v17 = v1;
  v19 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v3 = v17;
  v4 = v19;
  sub_270706C38(v17, v19);
  sub_270708D74(v17, v19);
  v6 = sub_27070E504(&unk_288074518);
  v18 = v6;
  v20 = v5;
  v7 = 0;
  switch(v5 >> 62)
  {
    case 1uLL:
      v7 = v6 >> 32;
      break;
    case 2uLL:
      v7 = *(v6 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = BYTE6(v5);
      break;
  }

  sub_270766E38(v7, v7, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v18, v20);
  sub_270708D74(v18, v20);
  v8 = sub_2707A536C();
  v10 = v9;
  sub_2707A8370();
  sub_270708D74(v8, v10);
  v11 = sub_27070E504(&unk_288074540);
  v13 = v12;
  sub_2707A8370();
  sub_270708D74(v11, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 56) = &type metadata for Usage;
  *(inited + 64) = &protocol witness table for Usage;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 96) = &type metadata for PhysicalCollection;
  *(inited + 104) = &protocol witness table for PhysicalCollection;
  *(inited + 72) = v18;
  *(inited + 80) = v20;
  v15 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v15;
}

uint64_t sub_2707A536C()
{
  v1 = sub_27070E504(&unk_288074130);
  v135 = v1;
  v136 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v133 = v136;
  v134 = v135;
  sub_270708D74(v135, v136);
  v4 = sub_27070E504(&unk_288074158);
  v135 = v4;
  v136 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 48);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v131 = v136;
  v132 = v135;
  sub_270708D74(v135, v136);
  v7 = sub_27070E504(&unk_288074180);
  v135 = v7;
  v136 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 49);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v129 = v136;
  v130 = v135;
  sub_270708D74(v135, v136);
  v10 = sub_27070E504(&unk_2880741A8);
  v135 = v10;
  v136 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 129);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v127 = v136;
  v128 = v135;
  sub_270708D74(v135, v136);
  v13 = sub_27070E504(&unk_2880741D0);
  v135 = v13;
  v136 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 127);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v125 = v136;
  v126 = v135;
  sub_270708D74(v135, v136);
  v16 = sub_27070E504(&unk_2880741F8);
  v135 = v16;
  v136 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v123 = v136;
  v124 = v135;
  sub_270708D74(v135, v136);
  v19 = sub_27070E504(&unk_288074220);
  v135 = v19;
  v136 = v18;
  v20 = 0;
  switch(v18 >> 62)
  {
    case 1uLL:
      v20 = v19 >> 32;
      break;
    case 2uLL:
      v20 = *(v19 + 24);
      break;
    case 3uLL:
      break;
    default:
      v20 = BYTE6(v18);
      break;
  }

  sub_270766E38(v20, v20, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v121 = v136;
  v122 = v135;
  sub_270708D74(v135, v136);
  v22 = sub_27070E504(&unk_288074248);
  v135 = v22;
  v136 = v21;
  v23 = 0;
  switch(v21 >> 62)
  {
    case 1uLL:
      v23 = v22 >> 32;
      break;
    case 2uLL:
      v23 = *(v22 + 24);
      break;
    case 3uLL:
      break;
    default:
      v23 = BYTE6(v21);
      break;
  }

  sub_270766E38(v23, v23, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v120 = v135;
  v119 = v136;
  sub_270708D74(v135, v136);
  v25 = sub_27070E504(&unk_288074270);
  v135 = v25;
  v136 = v24;
  v26 = 0;
  switch(v24 >> 62)
  {
    case 1uLL:
      v26 = v25 >> 32;
      break;
    case 2uLL:
      v26 = *(v25 + 24);
      break;
    case 3uLL:
      break;
    default:
      v26 = BYTE6(v24);
      break;
  }

  sub_270766E38(v26, v26, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v117 = v136;
  v118 = v135;
  sub_270708D74(v135, v136);
  v28 = sub_27070E504(&unk_288074298);
  v135 = v28;
  v136 = v27;
  v29 = 0;
  switch(v27 >> 62)
  {
    case 1uLL:
      v29 = v28 >> 32;
      break;
    case 2uLL:
      v29 = *(v28 + 24);
      break;
    case 3uLL:
      break;
    default:
      v29 = BYTE6(v27);
      break;
  }

  sub_270766E38(v29, v29, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v115 = v136;
  v116 = v135;
  sub_270708D74(v135, v136);
  v31 = sub_27070E504(&unk_2880742C0);
  v135 = v31;
  v136 = v30;
  v32 = 0;
  switch(v30 >> 62)
  {
    case 1uLL:
      v32 = v31 >> 32;
      break;
    case 2uLL:
      v32 = *(v31 + 24);
      break;
    case 3uLL:
      break;
    default:
      v32 = BYTE6(v30);
      break;
  }

  sub_270766E38(v32, v32, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v113 = v136;
  v114 = v135;
  sub_270708D74(v135, v136);
  v34 = sub_27070E504(&unk_2880742E8);
  v135 = v34;
  v136 = v33;
  v35 = 0;
  switch(v33 >> 62)
  {
    case 1uLL:
      v35 = v34 >> 32;
      break;
    case 2uLL:
      v35 = *(v34 + 24);
      break;
    case 3uLL:
      break;
    default:
      v35 = BYTE6(v33);
      break;
  }

  sub_270766E38(v35, v35, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v109 = v136;
  v110 = v135;
  sub_270708D74(v135, v136);
  v37 = sub_27070E504(&unk_288074310);
  v135 = v37;
  v136 = v36;
  v38 = 0;
  switch(v36 >> 62)
  {
    case 1uLL:
      v38 = v37 >> 32;
      break;
    case 2uLL:
      v38 = *(v37 + 24);
      break;
    case 3uLL:
      break;
    default:
      v38 = BYTE6(v36);
      break;
  }

  sub_270766E38(v38, v38, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v111 = v136;
  v112 = v135;
  sub_270708D74(v135, v136);
  v40 = sub_27070E504(&unk_288074338);
  v135 = v40;
  v136 = v39;
  v41 = 0;
  switch(v39 >> 62)
  {
    case 1uLL:
      v41 = v40 >> 32;
      break;
    case 2uLL:
      v41 = *(v40 + 24);
      break;
    case 3uLL:
      break;
    default:
      v41 = BYTE6(v39);
      break;
  }

  sub_270766E38(v41, v41, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v107 = v135;
  v108 = v136;
  sub_270708D74(v135, v136);
  v43 = sub_27070E504(&unk_288074360);
  v135 = v43;
  v136 = v42;
  v44 = 0;
  switch(v42 >> 62)
  {
    case 1uLL:
      v44 = v43 >> 32;
      break;
    case 2uLL:
      v44 = *(v43 + 24);
      break;
    case 3uLL:
      break;
    default:
      v44 = BYTE6(v42);
      break;
  }

  sub_270766E38(v44, v44, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v105 = v136;
  v106 = v135;
  sub_270708D74(v135, v136);
  v46 = sub_27070E504(&unk_288074388);
  v135 = v46;
  v136 = v45;
  v47 = 0;
  switch(v45 >> 62)
  {
    case 1uLL:
      v47 = v46 >> 32;
      break;
    case 2uLL:
      v47 = *(v46 + 24);
      break;
    case 3uLL:
      break;
    default:
      v47 = BYTE6(v45);
      break;
  }

  sub_270766E38(v47, v47, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v103 = v135;
  v104 = v136;
  sub_270708D74(v135, v136);
  v49 = sub_27070E504(&unk_2880743B0);
  v135 = v49;
  v136 = v48;
  v50 = 0;
  switch(v48 >> 62)
  {
    case 1uLL:
      v50 = v49 >> 32;
      break;
    case 2uLL:
      v50 = *(v49 + 24);
      break;
    case 3uLL:
      break;
    default:
      v50 = BYTE6(v48);
      break;
  }

  sub_270766E38(v50, v50, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v101 = v136;
  v102 = v135;
  sub_270708D74(v135, v136);
  v52 = sub_27070E504(&unk_2880743D8);
  v135 = v52;
  v136 = v51;
  v53 = 0;
  switch(v51 >> 62)
  {
    case 1uLL:
      v53 = v52 >> 32;
      break;
    case 2uLL:
      v53 = *(v52 + 24);
      break;
    case 3uLL:
      break;
    default:
      v53 = BYTE6(v51);
      break;
  }

  sub_270766E38(v53, v53, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v99 = v136;
  v100 = v135;
  sub_270708D74(v135, v136);
  v55 = sub_27070E504(&unk_288074400);
  v135 = v55;
  v136 = v54;
  v56 = 0;
  switch(v54 >> 62)
  {
    case 1uLL:
      v56 = v55 >> 32;
      break;
    case 2uLL:
      v56 = *(v55 + 24);
      break;
    case 3uLL:
      break;
    default:
      v56 = BYTE6(v54);
      break;
  }

  sub_270766E38(v56, v56, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v135, v136);
  v97 = v135;
  v98 = v136;
  sub_270708D74(v135, v136);
  v58 = sub_27070E504(&unk_288074428);
  v135 = v58;
  v136 = v57;
  v59 = 0;
  switch(v57 >> 62)
  {
    case 1uLL:
      v59 = v58 >> 32;
      break;
    case 2uLL:
      v59 = *(v58 + 24);
      break;
    case 3uLL:
      break;
    default:
      v59 = BYTE6(v57);
      break;
  }

  sub_270766E38(v59, v59, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v60 = v136;
  sub_270706C38(v135, v136);
  v96 = v135;
  sub_270708D74(v135, v136);
  LOBYTE(v135) = 5;
  v61 = sub_27074110C(&v135, 0xFF00uLL);
  v94 = v62;
  v95 = v61;
  LOBYTE(v135) = 17;
  v63 = sub_27074110C(&v135, 0x102uLL);
  v92 = v64;
  v93 = v63;
  v66 = sub_27070E504(&unk_288074450);
  v135 = v66;
  v136 = v65;
  v67 = 0;
  switch(v65 >> 62)
  {
    case 1uLL:
      v67 = v66 >> 32;
      break;
    case 2uLL:
      v67 = *(v66 + 24);
      break;
    case 3uLL:
      break;
    default:
      v67 = BYTE6(v65);
      break;
  }

  sub_270766E38(v67, v67, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v68 = v135;
  v69 = v136;
  sub_270706C38(v135, v136);
  sub_270708D74(v68, v69);
  LOBYTE(v135) = 7;
  v70 = sub_270740DC4(&v135, 255);
  v90 = v71;
  v91 = v70;
  v73 = sub_27070E504(&unk_288074478);
  v135 = v73;
  v136 = v72;
  v74 = 0;
  switch(v72 >> 62)
  {
    case 1uLL:
      v74 = v73 >> 32;
      break;
    case 2uLL:
      v74 = *(v73 + 24);
      break;
    case 3uLL:
      break;
    default:
      v74 = BYTE6(v72);
      break;
  }

  sub_270766E38(v74, v74, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v75 = v135;
  v76 = v136;
  sub_270706C38(v135, v136);
  sub_270708D74(v75, v76);
  v78 = sub_27070E504(&unk_2880744A0);
  v135 = v78;
  v136 = v77;
  v79 = 0;
  switch(v77 >> 62)
  {
    case 1uLL:
      v79 = v78 >> 32;
      break;
    case 2uLL:
      v79 = *(v78 + 24);
      break;
    case 3uLL:
      break;
    default:
      v79 = BYTE6(v77);
      break;
  }

  sub_270766E38(v79, v79, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v81 = v135;
  v80 = v136;
  sub_270706C38(v135, v136);
  sub_270708D74(v81, v80);
  v83 = sub_27070E504(&unk_2880744C8);
  v135 = v83;
  v136 = v82;
  v84 = 0;
  switch(v82 >> 62)
  {
    case 1uLL:
      v84 = v83 >> 32;
      break;
    case 2uLL:
      v84 = *(v83 + 24);
      break;
    case 3uLL:
      break;
    default:
      v84 = BYTE6(v82);
      break;
  }

  sub_270766E38(v84, v84, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v86 = v135;
  v85 = v136;
  sub_270706C38(v135, v136);
  sub_270708D74(v86, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  v87 = swift_allocObject();
  *(v87 + 72) = v134;
  *(v87 + 80) = v133;
  *(v87 + 112) = v132;
  *(v87 + 120) = v131;
  *(v87 + 152) = v130;
  *(v87 + 160) = v129;
  *(v87 + 192) = v128;
  *(v87 + 200) = v127;
  *(v87 + 232) = v126;
  *(v87 + 240) = v125;
  *(v87 + 272) = v124;
  *(v87 + 280) = v123;
  *(v87 + 312) = v122;
  *(v87 + 320) = v121;
  *(v87 + 352) = v120;
  *(v87 + 360) = v119;
  *(v87 + 392) = v118;
  *(v87 + 400) = v117;
  *(v87 + 432) = v116;
  *(v87 + 440) = v115;
  *(v87 + 472) = v114;
  *(v87 + 480) = v113;
  *(v87 + 512) = v110;
  *(v87 + 520) = v109;
  *(v87 + 56) = &type metadata for ReportID;
  *(v87 + 64) = &protocol witness table for ReportID;
  *(v87 + 32) = 5;
  *(v87 + 16) = xmmword_2707B3A50;
  *(v87 + 552) = v112;
  *(v87 + 560) = v111;
  *(v87 + 592) = v107;
  *(v87 + 96) = &type metadata for UsagePage;
  *(v87 + 104) = &protocol witness table for UsagePage;
  *(v87 + 600) = v108;
  *(v87 + 136) = &type metadata for Usage;
  *(v87 + 144) = &protocol witness table for Usage;
  *(v87 + 176) = &type metadata for Usage;
  *(v87 + 184) = &protocol witness table for Usage;
  *(v87 + 632) = v106;
  *(v87 + 640) = v105;
  *(v87 + 672) = v103;
  *(v87 + 216) = &type metadata for LogicalMinimum;
  *(v87 + 224) = &protocol witness table for LogicalMinimum;
  *(v87 + 680) = v104;
  *(v87 + 256) = &type metadata for LogicalMaximum;
  *(v87 + 264) = &protocol witness table for LogicalMaximum;
  *(v87 + 712) = v102;
  *(v87 + 720) = v101;
  *(v87 + 296) = &type metadata for ReportSize;
  *(v87 + 304) = &protocol witness table for ReportSize;
  *(v87 + 752) = v100;
  *(v87 + 760) = v99;
  *(v87 + 792) = v97;
  *(v87 + 336) = &type metadata for ReportCount;
  *(v87 + 344) = &protocol witness table for ReportCount;
  *(v87 + 800) = v98;
  *(v87 + 376) = &type metadata for Input;
  *(v87 + 384) = &protocol witness table for Input;
  *(v87 + 416) = &type metadata for ReportSize;
  *(v87 + 424) = &protocol witness table for ReportSize;
  *(v87 + 456) = &type metadata for ReportCount;
  *(v87 + 464) = &protocol witness table for ReportCount;
  *(v87 + 496) = &type metadata for Input;
  *(v87 + 504) = &protocol witness table for Input;
  *(v87 + 536) = &type metadata for ReportSize;
  *(v87 + 544) = &protocol witness table for ReportSize;
  *(v87 + 576) = &type metadata for ReportCount;
  *(v87 + 584) = &protocol witness table for ReportCount;
  *(v87 + 616) = &type metadata for Input;
  *(v87 + 624) = &protocol witness table for Input;
  *(v87 + 656) = &type metadata for ReportSize;
  *(v87 + 664) = &protocol witness table for ReportSize;
  *(v87 + 696) = &type metadata for ReportCount;
  *(v87 + 704) = &protocol witness table for ReportCount;
  *(v87 + 736) = &type metadata for Input;
  *(v87 + 744) = &protocol witness table for Input;
  *(v87 + 776) = &type metadata for ReportSize;
  *(v87 + 784) = &protocol witness table for ReportSize;
  *(v87 + 816) = &type metadata for ReportCount;
  *(v87 + 824) = &protocol witness table for ReportCount;
  *(v87 + 856) = &type metadata for Input;
  *(v87 + 864) = &protocol witness table for Input;
  *(v87 + 832) = v96;
  *(v87 + 840) = v60;
  *(v87 + 896) = &type metadata for UsagePage;
  *(v87 + 904) = &protocol witness table for UsagePage;
  *(v87 + 872) = v95;
  *(v87 + 880) = v94;
  *(v87 + 936) = &type metadata for Usage;
  *(v87 + 944) = &protocol witness table for Usage;
  *(v87 + 912) = v93;
  *(v87 + 920) = v92;
  *(v87 + 976) = &type metadata for LogicalMinimum;
  *(v87 + 984) = &protocol witness table for LogicalMinimum;
  *(v87 + 952) = v68;
  *(v87 + 960) = v69;
  *(v87 + 1016) = &type metadata for LogicalMaximum;
  *(v87 + 1024) = &protocol witness table for LogicalMaximum;
  *(v87 + 992) = v91;
  *(v87 + 1000) = v90;
  *(v87 + 1056) = &type metadata for ReportSize;
  *(v87 + 1064) = &protocol witness table for ReportSize;
  *(v87 + 1032) = v75;
  *(v87 + 1040) = v76;
  *(v87 + 1096) = &type metadata for ReportCount;
  *(v87 + 1104) = &protocol witness table for ReportCount;
  *(v87 + 1072) = v81;
  *(v87 + 1080) = v80;
  *(v87 + 1136) = &type metadata for Input;
  *(v87 + 1144) = &protocol witness table for Input;
  *(v87 + 1112) = v86;
  *(v87 + 1120) = v85;
  v88 = static HIDReportDescriptor.Builder.buildBlock(_:)(v87);
  swift_setDeallocating();
  sub_27078DA0C();
  return v88;
}

uint64_t static PointerReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_2808294F8 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v2 = qword_28082A808;
  v3 = qword_28082A810;
  *a1 = qword_28082A808;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t PointerReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2707A6730@<X0>(uint64_t *a1@<X8>)
{
  result = PointerReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2707A6794@<X0>(uint64_t *a1@<X8>)
{
  result = PointerReport.x.getter();
  *a1 = result;
  return result;
}

uint64_t PointerReport.x.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707A684C@<X0>(uint64_t *a1@<X8>)
{
  result = PointerReport.y.getter();
  *a1 = result;
  return result;
}

uint64_t PointerReport.y.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerReport.accelX.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerReport.accelY.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_2707A6A04@<X0>(_BYTE *a1@<X8>)
{
  result = PointerReport.buttonMask.getter();
  *a1 = result;
  return result;
}

void (*PointerReport.buttonMask.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_2707A6A7C;
}

unint64_t sub_2707A6AA8@<X0>(_BYTE *a1@<X8>)
{
  result = PointerReport.modifierMask.getter();
  *a1 = result;
  return result;
}

void (*PointerReport.modifierMask.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_2707A6B20;
}

uint64_t sub_2707A6B4C@<X0>(_DWORD *a1@<X8>)
{
  result = PointerReport.flags.getter();
  *a1 = v3;
  return result;
}

void (*PointerReport.flags.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  return sub_2707A6C0C;
}

uint64_t PointerReport.modifiers.getter()
{
  OUTLINED_FUNCTION_23();
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();

  return KeyboardModifierMask.keyboardUsages()(v0);
}

uint64_t sub_2707A6C68@<X0>(uint64_t *a1@<X8>)
{
  result = PointerReport.modifiers.getter();
  *a1 = result;
  return result;
}

void PointerReport.modifiers.setter(uint64_t a1)
{
  KeyboardModifierMask.init(usages:)(a1);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t PointerReport.modifiers.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  v2 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  *v1 = KeyboardModifierMask.keyboardUsages()(v2);
  return OUTLINED_FUNCTION_20();
}

void sub_2707A6D38(uint64_t *a1, char a2)
{
  if (a2)
  {

    KeyboardModifierMask.init(usages:)(v2);
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  }

  else
  {
    KeyboardModifierMask.init(usages:)(*a1);
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  }
}

uint64_t static KeyboardModifierMask._usageMask<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v58 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v56 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v56 - v17;
  v56[1] = swift_getAssociatedConformanceWitness();
  sub_2707A8EB0();
  OUTLINED_FUNCTION_18_9();
  v56[2] = v4;
  sub_2707A8E80();
  OUTLINED_FUNCTION_22_5();
  sub_2707A8970();
  v19 = *(v7 + 8);
  v19(v14, a2);
  OUTLINED_FUNCTION_28();
  if (sub_2707A89F0())
  {
    OUTLINED_FUNCTION_28();
    if (sub_2707A89E0() >= 64)
    {
      v59 = -8;
      sub_270710EEC();
      OUTLINED_FUNCTION_2_42();
      OUTLINED_FUNCTION_20_7();
      OUTLINED_FUNCTION_30_4();
      v24 = OUTLINED_FUNCTION_3_27();
      (v19)(v24);
      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_28();
      if (sub_2707A89D0() > -9)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v19(v18, a2);
    return 0;
  }

  v56[0] = v7;
  v20 = v19;
  OUTLINED_FUNCTION_28();
  v21 = sub_2707A89F0();
  OUTLINED_FUNCTION_28();
  v22 = sub_2707A89E0();
  if (v21)
  {
    if (v22 > 64)
    {
      v59 = -8;
      sub_270710EEC();
      OUTLINED_FUNCTION_2_42();
      OUTLINED_FUNCTION_20_7();
      OUTLINED_FUNCTION_30_4();
      v23 = OUTLINED_FUNCTION_3_27();
      v19 = v20;
      (v20)(v23);
      v7 = v56[0];
      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_18_9();
    sub_2707A8E80();
    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_30_4();
    v25 = OUTLINED_FUNCTION_3_27();
    v19 = v20;
    (v20)(v25);
    v7 = v56[0];
    if (v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v20;
    v7 = v56[0];
    if (v22 >= 64)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_28();
  if (sub_2707A89D0() < -8)
  {
    goto LABEL_15;
  }

LABEL_16:
  v57 = v19;
  OUTLINED_FUNCTION_28();
  v26 = sub_2707A89F0();
  v27 = v18;
  OUTLINED_FUNCTION_28();
  v28 = sub_2707A89E0();
  v30 = __OFSUB__(v28, 64);
  v29 = v28 - 64 < 0;
  if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v28 <= 64)
  {
    goto LABEL_27;
  }

LABEL_18:
  v59 = 8;
  sub_270710EEC();
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_20_7();
  sub_2707A8570();
  v31 = OUTLINED_FUNCTION_1_50();
  v32(v31);
  v33 = v58;
  if (v27)
  {
LABEL_28:
    v57(v18, a2);
    return 0;
  }

  while (1)
  {
    v34 = *(v7 + 16);
    v7 += 16;
    v34(v33, v18, a2);
    OUTLINED_FUNCTION_28();
    if ((sub_2707A89F0() & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_32();
    if (sub_2707A89E0() <= 64)
    {
      break;
    }

    v27 = a2;
    OUTLINED_FUNCTION_28();
    if ((sub_2707A89F0() & 1) == 0)
    {
      OUTLINED_FUNCTION_28();
      v39 = v33;
      v40 = sub_2707A89F0();
      OUTLINED_FUNCTION_28();
      v41 = sub_2707A89E0();
      v43 = __OFSUB__(v41, 64);
      v42 = v41 - 64 < 0;
      if (v40)
      {
        if (v41 > 64)
        {
          v59 = 0x8000000000000000;
          sub_270710EEC();
          OUTLINED_FUNCTION_2_42();
          OUTLINED_FUNCTION_20_7();
          v33 = v58;
          OUTLINED_FUNCTION_22_5();
          sub_2707A8570();
          v44 = OUTLINED_FUNCTION_1_50();
          v45(v44);
          if ((v39 & 1) == 0)
          {
            break;
          }

          __break(1u);
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_18_9();
        sub_2707A8E80();
        OUTLINED_FUNCTION_20_7();
        v33 = v58;
        OUTLINED_FUNCTION_22_5();
        sub_2707A8570();
        v46 = OUTLINED_FUNCTION_1_50();
        result = v47(v46);
        if (v39)
        {
LABEL_54:
          __break(1u);
          return result;
        }
      }

      else
      {
LABEL_34:
        v33 = v58;
        if (v42 == v43)
        {
          break;
        }
      }

LABEL_37:
      OUTLINED_FUNCTION_5_32();
      sub_2707A89D0();
      break;
    }

    OUTLINED_FUNCTION_5_32();
    if (sub_2707A89E0() < 64)
    {
      goto LABEL_37;
    }

    v59 = 0x8000000000000000;
    sub_270710EEC();
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_22_5();
    sub_2707A8570();
    v35 = OUTLINED_FUNCTION_1_50();
    v36(v35);
    if ((a2 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    if (v29 == v30)
    {
      goto LABEL_18;
    }

LABEL_27:
    OUTLINED_FUNCTION_28();
    v37 = sub_2707A89D0();
    v33 = v58;
    if (v37 > 8)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_5_32();
  if (sub_2707A89E0() <= 64)
  {
    goto LABEL_43;
  }

  while (1)
  {
    OUTLINED_FUNCTION_28();
    v48 = sub_2707A89F0();
    OUTLINED_FUNCTION_5_32();
    v49 = sub_2707A89E0();
    if ((v48 & 1) == 0)
    {
      break;
    }

    if (v49 <= 64)
    {
      goto LABEL_48;
    }

    v59 = 0x7FFFFFFFFFFFFFFFLL;
    sub_270710EEC();
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_20_7();
    sub_2707A8570();
    v50 = OUTLINED_FUNCTION_1_50();
    v51(v50);
    if (a2)
    {
      __break(1u);
LABEL_43:
      OUTLINED_FUNCTION_5_32();
      if (sub_2707A89E0() == 64)
      {
        OUTLINED_FUNCTION_28();
        if ((sub_2707A89F0() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_50;
  }

  if (v49 < 64)
  {
LABEL_48:
    OUTLINED_FUNCTION_5_32();
    sub_2707A89D0();
    goto LABEL_50;
  }

  v59 = 0x7FFFFFFFFFFFFFFFLL;
  sub_270710EEC();
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_20_7();
  sub_2707A8570();
  v52 = OUTLINED_FUNCTION_1_50();
  result = v53(v52);
  if (a2)
  {
    __break(1u);
    goto LABEL_54;
  }

LABEL_50:
  OUTLINED_FUNCTION_5_32();
  v54 = sub_2707A89D0();
  v55 = v57;
  v57(v33, a2);
  v55(v18, a2);
  if (v54 >= 8)
  {
    return 0;
  }

  return (1 << v54);
}

uint64_t sub_2707A7480@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A3694(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2707A74B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A36D0(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2707A74E4@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A3758(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2707A7518@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A37DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2707A7554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A364C(a1);
  *a2 = result;
  return result;
}

uint64_t PointerReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x2707A7680);
      }

      if (v4 >= 25)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_2707A7690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = PointerReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PointerReport.remoteTimestamp.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x2707A77C8);
      }

      if (v6 >= 25)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return OUTLINED_FUNCTION_20();
  }
}

void sub_2707A77D8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    PointerReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 25)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_2707A78B8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x2707A7998);
      }

      if (v7 >= 25)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_2707A79A8;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_2707A79A8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    PointerReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 25)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

unint64_t sub_2707A7A64()
{
  result = qword_28082A818;
  if (!qword_28082A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A818);
  }

  return result;
}

unint64_t sub_2707A7ABC()
{
  result = qword_28082A820;
  if (!qword_28082A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A820);
  }

  return result;
}

unint64_t sub_2707A7B14()
{
  result = qword_28082A828;
  if (!qword_28082A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A828);
  }

  return result;
}

unint64_t sub_2707A7B6C()
{
  result = qword_28082A830;
  if (!qword_28082A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A830);
  }

  return result;
}

unint64_t sub_2707A7BC4()
{
  result = qword_28082A838;
  if (!qword_28082A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A838);
  }

  return result;
}

unint64_t sub_2707A7C1C()
{
  result = qword_28082A840;
  if (!qword_28082A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A840);
  }

  return result;
}

unint64_t sub_2707A7C74()
{
  result = qword_28082A848;
  if (!qword_28082A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A848);
  }

  return result;
}

unint64_t sub_2707A7CCC()
{
  result = qword_28082A850;
  if (!qword_28082A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A850);
  }

  return result;
}

unint64_t sub_2707A7D24()
{
  result = qword_28082A858;
  if (!qword_28082A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28082A860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A858);
  }

  return result;
}

unint64_t sub_2707A7ECC()
{
  result = qword_2808296E8;
  if (!qword_2808296E8)
  {
    type metadata accessor for EventReportSenderID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808296E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return sub_2707A8960();
}

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x2743A78C0);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_270708D74(v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  return sub_270706C38(a3, a4);
}

void OUTLINED_FUNCTION_13_14()
{

  JUMPOUT(0x2743A7BE0);
}

void OUTLINED_FUNCTION_14_14()
{

  JUMPOUT(0x2743A7BE0);
}

void OUTLINED_FUNCTION_15_13()
{

  JUMPOUT(0x2743A7BE0);
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return sub_270708D74(v0, v1);
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_2707A8EB0();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_2707A8570();
}

uint64_t OUTLINED_FUNCTION_39_2(unsigned int a1)
{
  result = (a1 >> 8) & 1;
  *v2 = v1;
  return result;
}