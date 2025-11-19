uint64_t sub_1DCE41C90()
{
  OUTLINED_FUNCTION_42();
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1DCE41DFC;
  }

  else
  {
    v3 = sub_1DCE41DA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCE41DA0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE41DFC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1DCE41E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCE41F30;

  return sub_1DCE41A18(a1, a2, a3);
}

uint64_t sub_1DCE41F30()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t Perform.__allocating_init(interruptionPolicy:operateWithSideEffect:operation:)()
{
  OUTLINED_FUNCTION_19_36();
  v0 = OUTLINED_FUNCTION_21_30();
  Perform.init(interruptionPolicy:operateWithSideEffect:operation:)();
  return v0;
}

uint64_t sub_1DCE4217C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  v8 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_2(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_1DCE42248(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  v8 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t Perform.init(interruptionPolicy:operateWithSideEffect:operation:)()
{
  OUTLINED_FUNCTION_19_36();
  v4 = v3;
  v6 = *v5;
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v9);
  *(v1 + *(*v1 + 120)) = 0;
  *(v1 + 16) = v6;
  *(v1 + 17) = v4;
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return v1;
}

uint64_t Perform.__allocating_init<A>(interruptionPolicy:operation:)()
{
  OUTLINED_FUNCTION_19_36();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_30();
  Perform.init<A>(interruptionPolicy:operation:)(v2, v4, v1, v0);
  return v5;
}

uint64_t *Perform.init<A>(interruptionPolicy:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = *MEMORY[0x1EEE9AC00](a1, a2);
  v14 = *(v13 + 112);
  v15 = *(v13 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v16 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v5 + v14, 1, 1, v16);
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + 16) = v12;
  *(v5 + 17) = (*(a4 + 16))(a3, a4) & 1;
  v17 = *(v10 + 32);
  v17(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v15;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  v17(&v19[v18], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v5[3] = &unk_1DD0FBD50;
  v5[4] = v19;
  return v5;
}

uint64_t sub_1DCE42660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AD3C;

  return v15(a1, a2, a5, a6);
}

uint64_t sub_1DCE42798(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DCB4AE1C;

  return sub_1DCE42660(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t Perform.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DF22C();
  v44 = type metadata accessor for Conclude();
  OUTLINED_FUNCTION_0_1();
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v41 - v10;
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  OUTLINED_FUNCTION_0_1();
  v21 = v20;
  v23 = *(v22 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v41 - v30;
  sub_1DCE4217C(v19);
  if (OUTLINED_FUNCTION_17_34() == 1)
  {
    (*(v13 + 8))(v19, v11);
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for Perform();
    OUTLINED_FUNCTION_1_90();
    swift_getWitnessTable();
    return ActingFlow.abort(reason:)(0xD000000000000020, 0x80000001DD11CC90, boxed_opaque_existential_1Tm);
  }

  (*(v21 + 32))(v31, v19, v4);
  v34 = a1;
  if (*(v1 + *(*v1 + 120)) != 1)
  {
    goto LABEL_9;
  }

  (*(v21 + 16))(v28, v31, v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v21 + 8))(v28, v4);
LABEL_9:
    v47 = v44;
    v48 = &protocol witness table for Conclude<A>;
    v40 = __swift_allocate_boxed_opaque_existential_1Tm(&v46);
    type metadata accessor for Perform();
    OUTLINED_FUNCTION_1_90();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v31, v40);
    goto LABEL_10;
  }

  v35 = *v28;
  *&v46 = v35;
  v36 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  type metadata accessor for Perform();
  OUTLINED_FUNCTION_1_90();
  swift_getWitnessTable();
  v37 = v41;
  ActingFlow.conclude(with:)(v31, v41);
  v38 = v44;
  v47 = v44;
  v48 = &protocol witness table for Conclude<A>;
  v39 = __swift_allocate_boxed_opaque_existential_1Tm(&v46);
  sub_1DCD278D0(v38, v39);
  (*(v42 + 8))(v37, v38);

LABEL_10:
  (*(v21 + 8))(v31, v4);
  return sub_1DCAFF9E8(&v46, v34);
}

char *Perform.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 4);

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  v5 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 8))(&v0[v3]);
  return v0;
}

uint64_t Perform.__deallocating_deinit()
{
  Perform.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Perform.execute(with:)()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v1[14] = sub_1DD0DF22C();
  v4 = sub_1DD0DE97C();
  v1[15] = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[16] = v6;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE42F88, 0, 0);
}

uint64_t sub_1DCE42F88()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 104);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1DCB17CA0(*(v0 + 96) + 40, v0 + 56);
  v4 = type metadata accessor for NoUserInteractionAceServiceInvoker();
  v5 = swift_allocObject();
  sub_1DCAFF9E8((v0 + 56), v5 + 16);
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_1F5867AB8;
  *(v0 + 16) = v5;
  v10 = (v2 + *v2);
  v6 = v2[1];
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1DCE430CC;
  v8 = *(v0 + 152);

  return v10(v8, v0 + 16);
}

uint64_t sub_1DCE430CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 160);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 168) = v0;

  sub_1DCDB4910((v3 + 16));
  if (v0)
  {
    v7 = sub_1DCE43284;
  }

  else
  {
    v7 = sub_1DCE431D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCE431D8()
{
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1DCE42248(v1);
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCE43284()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_1DCE4217C(v0[17]);
  if (OUTLINED_FUNCTION_17_34() == 1)
  {
    v3 = v0[21];
    v4 = v0[17];
    v5 = v0[14];
    *v0[18] = v3;
    swift_storeEnumTagMultiPayload();
    LODWORD(v4) = OUTLINED_FUNCTION_17_34();
    v6 = v3;
    if (v4 != 1)
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
    }
  }

  else
  {
    (*(*(v0[14] - 8) + 32))(v0[18], v0[17]);
  }

  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[13];
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v0[14]);
  sub_1DCE42248(v8);

  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t Perform.cancel(error:)(void *a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DF22C();
  v5 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v24 - v16;
  sub_1DCE4217C(&v24 - v16);
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v17, 1, v4);
  result = (*(v7 + 8))(v17, v5);
  if (v3 == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Perform was canceled before its operation completes.", v22, 2u);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    v23 = a1;
    return sub_1DCE42248(v14);
  }

  return result;
}

uint64_t sub_1DCE4366C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return Perform.execute(with:)();
}

BOOL sub_1DCE43728()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_22_30())
  {
    return 1;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_22_30())
  {
    return 1;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_22_30())
  {
    return 1;
  }

  objc_opt_self();
  return OUTLINED_FUNCTION_22_30() != 0;
}

uint64_t sub_1DCE43798()
{
  OUTLINED_FUNCTION_16_42();
  v1 = *(v0 + 128);
  v2 = OUTLINED_FUNCTION_7_1();
  return v3(v2) & 1;
}

uint64_t sub_1DCE437D8()
{
  result = sub_1DCE43728();
  if (result)
  {
    sub_1DCE44BDC();
    swift_allocError();
    *v1 = 0xD000000000000083;
    v1[1] = 0x80000001DD11F9E0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DCE4384C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE43868()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  sub_1DCE437D8();
  v2 = *(OUTLINED_FUNCTION_41_5(*(v0 + 32)) + 8);
  OUTLINED_FUNCTION_24_0();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_9_59(v6);

  return v8(v7);
}

uint64_t sub_1DCE439A8(uint64_t a1, char a2)
{
  sub_1DCE437D8();
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 48))(a1, a2 & 1, v5, v6);
}

void sub_1DCE43B90(uint64_t a1, char a2)
{
  v4 = sub_1DCB08B14(a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12A72C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    sub_1DCE439A8(v6, a2 & 1);
  }
}

uint64_t sub_1DCE43C40(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE43C5C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  sub_1DCE437D8();
  v2 = *(OUTLINED_FUNCTION_41_5(*(v0 + 32)) + 16);
  OUTLINED_FUNCTION_24_0();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_9_59(v6);

  return v8(v7);
}

uint64_t sub_1DCE43D9C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_69();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1DCE43E88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 64) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE43EA8()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 16);
  sub_1DCE437D8();
  v3 = *(OUTLINED_FUNCTION_41_5(*(v1 + 48)) + 24);
  OUTLINED_FUNCTION_24_0();
  v14 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v1 + 56) = v7;
  *v7 = v1;
  v7[1] = sub_1DCE44008;
  v8 = *(v1 + 64);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);

  return (v14)(v12, v11, v9, v8, v10, v0, 0);
}

uint64_t sub_1DCE44008()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_69();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1DCE440F4()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 96);
  v3 = OUTLINED_FUNCTION_12_3();
  return v4(v3);
}

uint64_t sub_1DCE44144()
{
  OUTLINED_FUNCTION_16_42();
  v1 = *(v0 + 88);
  v2 = OUTLINED_FUNCTION_7_1();
  return v3(v2);
}

uint64_t sub_1DCE44180()
{
  OUTLINED_FUNCTION_16_42();
  v1 = *(v0 + 80);
  v2 = OUTLINED_FUNCTION_7_1();
  return v3(v2);
}

uint64_t sub_1DCE441BC()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 104);
  v3 = OUTLINED_FUNCTION_12_3();
  return v4(v3);
}

uint64_t sub_1DCE44220()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_41_5(*(v0 + 16)) + 112);
  OUTLINED_FUNCTION_24_0();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_15_51(v5);

  return v7(v6);
}

uint64_t sub_1DCE4431C()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();

  return v7(v2);
}

uint64_t sub_1DCE44418()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_41_5(*(v0 + 16)) + 120);
  OUTLINED_FUNCTION_24_0();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_15_51(v5);

  return v7(v6);
}

uint64_t sub_1DCE44514(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC453B0;

  return sub_1DCE4384C(a1, a2, a3);
}

uint64_t sub_1DCE445C4(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC453B0;

  return sub_1DCE43C40(a1, a2, a3);
}

uint64_t sub_1DCE44674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCC3C670;

  return sub_1DCE43E88(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCE44814()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBC3348;

  return sub_1DCE4420C();
}

uint64_t sub_1DCE448A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCE44404();
}

uint64_t dispatch thunk of PerformOperation.run(context:)()
{
  OUTLINED_FUNCTION_19_36();
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_24_0();
  v14 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DCB4AD3C;

  return v14(v6, v4, v1, v0);
}

uint64_t sub_1DCE44AAC(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  result = sub_1DD0DE97C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DCE44BDC()
{
  result = qword_1ECCA7F60;
  if (!qword_1ECCA7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7F60);
  }

  return result;
}

uint64_t dispatch thunk of PersistenceHandler.save(flowDescriptor:variables:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (OUTLINED_FUNCTION_56_0(a1, a2, a3, a4) + 8);
  v11 = *v10 + **v10;
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v7 = OUTLINED_FUNCTION_10_6(v6);

  return v8(v7);
}

uint64_t dispatch thunk of PersistenceHandler.restore(flowDescriptor:variableNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (OUTLINED_FUNCTION_56_0(a1, a2, a3, a4) + 16);
  v11 = *v10 + **v10;
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v7 = OUTLINED_FUNCTION_10_6(v6);

  return v8(v7);
}

void sub_1DCE44EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DD0FBF38;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

void PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  sub_1DD0DE4BC();
  v9 = OUTLINED_FUNCTION_86_1();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0FBF38;
  v12[5] = 0;
  v12[6] = a1;
  v12[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE450AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse()(a1, a2, a3);
}

uint64_t sub_1DCE4517C()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_32_22(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCE45268;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_16_43();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE45268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCE45384()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE453F8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v4 = v0;
  v4[1] = sub_1DCC0BDCC;
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_16_43();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCE454F8(uint64_t a1)
{
  v1[45] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v1[46] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v4 = sub_1DD0DB04C();
  v1[48] = v4;
  v5 = *(v4 - 8);
  v1[49] = v5;
  v6 = *(v5 + 64) + 15;
  v1[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE45628, 0, 0);
}

void sub_1DCE45628()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  v0[51] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v0[23] = type metadata accessor for RefreshableDeviceState();
  v0[24] = &protocol witness table for RefreshableDeviceState;
  v0[20] = v1;
  sub_1DD0DCA6C();
}

uint64_t sub_1DCE4574C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 432) = v0;

  sub_1DCB185D0(v3 + 240, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCE45860()
{
  v10 = v0;
  v1 = v0[52];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  v6 = [objc_allocWithZone(MEMORY[0x1E69C7958]) init];
  sub_1DD0DB03C();
  v7 = sub_1DD0DAFFC();
  v9 = v8;
  (*(v3 + 8))(v2, v5);
  sub_1DCB4D8E8(v7, v9, v6);

  sub_1DD0DD4CC();
}

uint64_t sub_1DCE45B50()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[52];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);

  OUTLINED_FUNCTION_29();
  v6 = v0[54];

  return v5();
}

void sub_1DCE45BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DD0FBF38;
  v16[5] = 0;
  v16[6] = sub_1DCE4AAC4;
  v16[7] = v14;
  sub_1DCBC61E8();
}

uint64_t sub_1DCE45DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  (*(a4 + 8))(sub_1DCE4AAC4, v14, a3, a4);
}

uint64_t sub_1DCE45F40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makeUnsupportedAuthenticationSettingResponse()();
}

uint64_t sub_1DCE45FD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE454F8(a1);
}

uint64_t PersonalDomainCheckFlowStrategyAsync.makeUnsupportedAuthenticationSettingResponse()()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE454F8(v1);
}

uint64_t sub_1DCE460FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse()(a1);
}

uint64_t sub_1DCE461B4()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_22(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_53(v2);

  return sub_1DCE46858(v4, v5);
}

uint64_t sub_1DCE46264()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCE46394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(isDeviceOwner:)(a1);
}

uint64_t sub_1DCE46450()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_22(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_53(v2);

  return sub_1DCE46858(v4, v5);
}

uint64_t sub_1DCE46500()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCE4661C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_1DCE4668C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(_:)();
}

uint64_t sub_1DCE4672C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE46858(a1, a2);
}

uint64_t PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCE46858(v5, v1);
}

uint64_t sub_1DCE46858(uint64_t a1, uint64_t a2)
{
  v2[40] = a1;
  v2[41] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v6 = sub_1DD0DB04C();
  v2[46] = v6;
  v7 = *(v6 - 8);
  v2[47] = v7;
  v8 = *(v7 + 64) + 15;
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE469CC, 0, 0);
}

void sub_1DCE469CC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  v0[49] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v0[23] = type metadata accessor for RefreshableDeviceState();
  v0[24] = &protocol witness table for RefreshableDeviceState;
  v0[20] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE46B10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 400);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE46C14()
{
  v5 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  sub_1DD0DCA6C();
}

void sub_1DCE46F44()
{
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = sub_1DD0DD8FC();
  v4 = __swift_project_value_buffer(v3, qword_1EDE57E00);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  sub_1DCB17C3C(v1, v2, &unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_86_1();
  if (__swift_getEnumTagSinglePayload(v6, v7, v3) == 1)
  {
    sub_1DCB185D0(*(v0 + 344), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v8 = *(v0 + 344);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v11 = 136315650;
      v12 = sub_1DD0DEC3C();
      v14 = sub_1DCB10E9C(v12, v13, &v15);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 168;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_1DCB10E9C(0xD000000000000034, 0x80000001DD1164B0, &v15);
      _os_log_impl(&dword_1DCAFC000, v9, v10, "FatalError at %s:%lu - %s", v11, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    (*(v5 + 8))(*(v0 + 344), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000034, 0x80000001DD1164B0);
}

uint64_t sub_1DCE471F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE4515C(a1);
}

uint64_t sub_1DCE472A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE45FD8(a1);
}

uint64_t sub_1DCE47350(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE46194(a1);
}

uint64_t sub_1DCE473FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return (sub_1DCE46430)(a1, a2);
}

uint64_t sub_1DCE474B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE4672C(a1, a2);
}

void sub_1DCE4757C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

void PersonalDomainCheckFlow.init(strategy:)()
{
  swift_getKeyPath();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DCACC();
}

uint64_t sub_1DCE47790(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

void sub_1DCE47888()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for IdentifiedUser();
  v1[4] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1DD0DCFCC();
}

uint64_t sub_1DCE479EC()
{
  v1 = v0[3];
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v16))
    {
      v17 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v17);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_21_31();
    v42 = v0[2];
    v43 = v0[3];
    static ExecuteResponse.complete()();
    *(v43 + 16) = 1;

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v46 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v1[11];
  v10 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v9);
  (*(v10 + 184))(v9, v10);
  (*(v8 + 104))(v5, *off_1E86486A8, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  v11 = *(v46 + 48);
  sub_1DCB17C3C(v4, v6, &qword_1ECCA1BE8, &unk_1DD0EB600);
  sub_1DCB17C3C(v5, v6 + v11, &qword_1ECCA1BE8, &unk_1DD0EB600);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v12 = v0[13];
    v13 = v0[6];
    sub_1DCB185D0(v0[12], &qword_1ECCA1BE8, &unk_1DD0EB600);
    sub_1DCB185D0(v12, &qword_1ECCA1BE8, &unk_1DD0EB600);
    if (__swift_getEnumTagSinglePayload(v6 + v11, 1, v13) == 1)
    {
      sub_1DCB185D0(v0[10], &qword_1ECCA1BE8, &unk_1DD0EB600);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v23 = v0[6];
  sub_1DCB17C3C(v0[10], v0[11], &qword_1ECCA1BE8, &unk_1DD0EB600);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6 + v11, 1, v23);
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];
  if (EnumTagSinglePayload == 1)
  {
    v28 = v0[6];
    v29 = v0[7];
    sub_1DCB185D0(v0[12], &qword_1ECCA1BE8, &unk_1DD0EB600);
    sub_1DCB185D0(v25, &qword_1ECCA1BE8, &unk_1DD0EB600);
    (*(v29 + 8))(v27, v28);
LABEL_12:
    sub_1DCB185D0(v0[10], &qword_1ECCA7F68, &unk_1DD0FBFC8);
    goto LABEL_13;
  }

  v47 = v0[10];
  v34 = v0[7];
  v33 = v0[8];
  v35 = v0[6];
  (*(v34 + 32))(v33, v6 + v11, v35);
  sub_1DCE49FB4(&qword_1ECCA7F70, 255, off_1E86486B0);
  v36 = sub_1DD0DDF7C();
  v37 = *(v34 + 8);
  v37(v33, v35);
  sub_1DCB185D0(v26, &qword_1ECCA1BE8, &unk_1DD0EB600);
  sub_1DCB185D0(v25, &qword_1ECCA1BE8, &unk_1DD0EB600);
  v37(v27, v35);
  sub_1DCB185D0(v47, &qword_1ECCA1BE8, &unk_1DD0EB600);
  if ((v36 & 1) == 0)
  {
LABEL_13:
    v30 = v0[4];
    v31 = v0[5];
    v32 = v0[3];
    sub_1DCE4757C();
  }

LABEL_15:
  v38 = swift_task_alloc();
  v0[14] = v38;
  *v38 = v0;
  v38[1] = sub_1DCE480E4;
  v39 = v0[3];
  OUTLINED_FUNCTION_117();

  return sub_1DCE48410();
}

uint64_t sub_1DCE480E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE481CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_21_31();
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  static ExecuteResponse.complete()();
  *(v12 + 16) = 2;

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCE48268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE4836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_21_31();
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  static ExecuteResponse.complete()();
  *(v12 + 16) = 4;

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCE48424()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[12] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Device is a homepod and authentication mode is for secured requests. This setting is no longer supported, so this flow will exit with validation failure and a notification will be issued to the personal device.", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v7);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_62();
  }

  v13 = v0[11];

  v15 = v13[16];
  v14 = v13[17];
  __swift_project_boxed_opaque_existential_1(v13 + 13, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[13] = v16;
  *v16 = v17;
  v16[1] = sub_1DCE485CC;
  v18 = v0[11];

  return sub_1DCB63BBC((v0 + 2), &unk_1DD0FC330, v18, v15, v14);
}

uint64_t sub_1DCE485CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE486CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = v18[14];
  v22 = v18[12];
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18[14];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v30 = v18[7];
    v29 = v18[8];
    v31 = v18[9];
    v32 = sub_1DD0DF18C();
    v34 = sub_1DCB10E9C(v32, v33, &a9);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Unable to make response for unsupported personal domain authentication mode. Will ignore and Flow should exit. %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v35 = v18[14];
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1DCE48824(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE48844, 0, 0);
}

uint64_t sub_1DCE48844()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_8();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v8;
  *v8 = v9;
  v8[1] = sub_1DCB3F98C;
  v10 = v0[2];

  return v12(v10, v2, v3);
}

uint64_t sub_1DCE48964(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE48978()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[10] = v6;
  *v6 = v7;
  v6[1] = sub_1DCE48A64;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD0FC340, v5, v4, v3);
}

uint64_t sub_1DCE48A64()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = *(v2 + 72);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE48B9C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB185D0(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE48C04()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_1DCB185D0(v0 + 16, &qword_1ECCA1810, &dword_1DD0E0F78);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE48C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE48D28, 0, 0);
}

uint64_t sub_1DCE48D28()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_8();
  v13 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[23] = v8;
  *v8 = v9;
  v8[1] = sub_1DCE48E4C;
  v10 = v0[20];
  v11 = v0[18];

  return v13(v11, v10, v2, v3);
}

uint64_t sub_1DCE48E4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[21];
    v12 = v3[22];

    OUTLINED_FUNCTION_29();

    return v14();
  }
}

void sub_1DCE48F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = v18[24];
  v22 = v18[19];
  v23 = sub_1DD0DD8FC();
  v18[25] = v23;
  v18[26] = __swift_project_value_buffer(v23, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE491A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 216);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE492A8()
{
  v14 = v0;
  *(v0 + 56) = 0u;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_1DCB185D0(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
  v5 = *(v2 - 8);
  (*(v5 + 16))(v3, v1, v2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_1DCB17C3C(v3, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v2) == 1)
  {
    sub_1DCB185D0(*(v0 + 168), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v6 = *(v0 + 168);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = sub_1DD0DEC3C();
      v12 = sub_1DCB10E9C(v10, v11, &v13);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 348;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_1DCB10E9C(0xD00000000000002ELL, 0x80000001DD11FB40, &v13);
      _os_log_impl(&dword_1DCAFC000, v7, v8, "FatalError at %s:%lu - %s", v9, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v5 + 8))(*(v0 + 168), *(v0 + 200));
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000002ELL, 0x80000001DD11FB40);
}

uint64_t sub_1DCE49558()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 144);

  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  sub_1DCAFF9E8((v0 + 16), v1);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t *PersonalDomainCheckFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v1 = v0[18];

  return v0;
}

uint64_t PersonalDomainCheckFlow.__deallocating_deinit()
{
  PersonalDomainCheckFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCE4964C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

void sub_1DCE496E8()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);

  sub_1DCE47888();
}

BOOL sub_1DCE49770@<W0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCE4756C();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE4979C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE497BC, 0, 0);
}

uint64_t sub_1DCE497BC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCE49890;
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_16_43();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE49890()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCE499AC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = a2[5];
  v11 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v10);
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  (*(v11 + 8))(sub_1DCE4A8A4, v13, v10, v11);
}

uint64_t sub_1DCE49B24(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE4979C(a1);
}

uint64_t sub_1DCE49BC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(isDeviceOwner:)(a1);
}

void sub_1DCE49C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonalDomainCheckFlow();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  sub_1DCE49D9C(v10, v11, a3, a4);
}

void sub_1DCE49D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DD0DCACC();
}

uint64_t sub_1DCE49F00(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiedUser();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE49F5C(uint64_t a1, uint64_t a2)
{
  result = sub_1DCE49FB4(&qword_1ECCA7F78, a2, type metadata accessor for PersonalDomainCheckFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCE49FB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategy.makeUnsupportedAuthenticationSettingResponse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_24_0();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makeUnsupportedAuthenticationSettingResponse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_24_0();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_24_0();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(isDeviceOwner:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_8();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v7, v5, v3, v1);
}

uint64_t dispatch thunk of PersonalDomainCheckFlowStrategyAsync.makePersonalDomainsDisabledResponse(_:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 32);
  OUTLINED_FUNCTION_8();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v7, v5, v3, v1);
}

uint64_t dispatch thunk of PersonalDomainCheckFlow.__allocating_init(strategy:)()
{
  return (*(v0 + 168))();
}

{
  return (*(v0 + 176))();
}

uint64_t dispatch thunk of PersonalDomainCheckFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v1 = *(*v0 + 200);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

_BYTE *storeEnumTagSinglePayload for PersonalDomainCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCE4A844()
{
  result = qword_1ECCA7F80;
  if (!qword_1ECCA7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7F80);
  }

  return result;
}

uint64_t sub_1DCE4A8A8()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCE48824(v4, v0);
}

uint64_t sub_1DCE4A930()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCE48C7C(v6, v2, v1);
}

uint64_t objectdestroy_41Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_112(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCE4AA58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 80);
  return sub_1DCD75750(a1);
}

uint64_t PlatformErrorFlow.__allocating_init(outputPublisher:deviceState:)(uint64_t a1, uint64_t a2)
{
  sub_1DCB28B08(a1, &v8, &qword_1ECCA57C8, &unk_1DD0F2D20);
  if (!v9)
  {
    sub_1DCB82888();
  }

  sub_1DCAFF9E8(&v8, &v11);
  sub_1DCB28B08(a2, &v6, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (!v7)
  {
    if (qword_1EDE46628 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDE46630;
    sub_1DCB4E718(&v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    v9 = type metadata accessor for RefreshableDeviceState();
    v10 = &protocol witness table for RefreshableDeviceState;
    *&v8 = v4;
    sub_1DD0DCF8C();
  }

  sub_1DCB16D50(a2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB16D50(a1, &qword_1ECCA57C8, &unk_1DD0F2D20);
  sub_1DCAFF9E8(&v6, &v8);
  type metadata accessor for PlatformErrorFlow();
  swift_allocObject();
  return sub_1DCE4ACE0(&v11, &v8);
}

uint64_t sub_1DCE4ACE0(__int128 *a1, __int128 *a2)
{
  *(v2 + 16) = 3;
  sub_1DCAFF9E8(a1, v2 + 24);
  sub_1DCAFF9E8(a2, v2 + 64);
  return v2;
}

BOOL sub_1DCE4AD20(uint64_t a1)
{
  v3 = type metadata accessor for Input(0);
  static SiriKitPlatformErrorCase.fromParse(_:)(a1 + *(v3 + 20), &v10);
  v4 = v10;
  if (v10 == 3)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "PlatformErrorFlow: Unknown input, returning false", v8, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    *(v1 + 16) = v10;
  }

  return v4 != 3;
}

uint64_t sub_1DCE4AE24()
{
  OUTLINED_FUNCTION_42();
  v1[36] = v2;
  v1[37] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for AceOutput();
  v1[41] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE4AF30, 0, 0);
}

uint64_t sub_1DCE4AF30()
{
  OUTLINED_FUNCTION_39();
  if (*(v0[37] + 16) != 3)
  {
    if (qword_1EDE48CE8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDE57D40;
    v0[23] = type metadata accessor for CATTemplateExecutor();
    v0[24] = &off_1F58563F0;
    v0[20] = v8;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "PlatformErrorFlow: execute() called with no error case. Was on(input:) called?", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = v0[36];

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_5_77();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE4B190()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 344);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {
    *(v3 + 360) = v0;
    v7 = sub_1DCE4B614;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 160));
    v7 = sub_1DCE4B2A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCE4B2A8()
{
  v9 = v0;
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = v4[11];
  v6 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v5);
  (*(v6 + 96))(v5, v6);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  *(v0 + 232) = 0;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCE4B4F8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 352);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_1DCE4B9CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 240));
    v7 = sub_1DCE4B948;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCE4B614()
{
  v21 = v0;
  v1 = v0[45];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  sub_1DD0DEC1C();

  v19 = 0xD00000000000001CLL;
  v20 = 0x80000001DD11CA50;
  v0[35] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v3);

  v4 = v19;
  v5 = v20;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = v0[38];
  v6 = v0[39];
  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v6, v9, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  sub_1DCB28B08(v6, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  v12 = v0[38];
  if (EnumTagSinglePayload == 1)
  {
    sub_1DCB16D50(v0[38], &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {

    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v15 = 136315650;
      v16 = sub_1DD0DEC3C();
      v18 = sub_1DCB10E9C(v16, v17, &v19);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 53;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_1DCB10E9C(v4, v5, &v19);
      _os_log_impl(&dword_1DCAFC000, v13, v14, "FatalError at %s:%lu - %s", v15, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v0[38], v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(v4, v5);
}

uint64_t sub_1DCE4B948()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB6FFD8(*(v0 + 336));
  v1 = *(v0 + 288);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_5_77();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE4B9CC()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB6FFD8(v0[42]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  v1 = v0[36];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_5_77();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t PlatformErrorFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t PlatformErrorFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_1DCE4BAC0(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCE4BB84()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCE4AE24();
}

unint64_t sub_1DCE4BC18(uint64_t a1)
{
  result = sub_1DCE4BC40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCE4BC40()
{
  result = qword_1ECCA7F98;
  if (!qword_1ECCA7F98)
  {
    type metadata accessor for PlatformErrorFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7F98);
  }

  return result;
}

uint64_t dispatch thunk of PlatformErrorFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v0 + 152);
  v9 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v3);
}

unsigned __int8 *getEnumTagSinglePayload for PlatformErrorFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatformErrorFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCE4BF90(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DCE4BFA4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t PluginAction.flowHandlerId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t PluginAction.input.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = v1 + *(type metadata accessor for PluginAction() + 20);

  return sub_1DCC174D4(v2, v0);
}

uint64_t PluginAction.userData.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginAction() + 24));
}

void *PluginAction.speechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginAction() + 28));
  v2 = v1;
  return v1;
}

uint64_t PluginAction.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginAction() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t PluginAction.actionParaphrase.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for PluginAction();
  return sub_1DCB09970(v1 + *(v2 + 36), v0, &qword_1ECCA4B28, &unk_1DD0EE960);
}

uint64_t PluginAction.loggingId.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for PluginAction();
  return sub_1DCB09970(v1 + *(v2 + 40), v0, &qword_1ECCA2618, &unk_1DD0E5C50);
}

uint64_t PluginAction.init(flowHandlerId:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for PluginAction();
  v9 = v8[10];
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_7_5(a4 + v9, v11, v12, v10);
  v13 = v8[9];
  v14 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(a4 + v13, v15, v16, v14);
  *a4 = a1;
  a4[1] = a2;
  result = sub_1DCC333DC(a3, a4 + v8[5]);
  *(a4 + v8[6]) = 0;
  *(a4 + v8[7]) = 0;
  v18 = (a4 + v8[8]);
  *v18 = 0;
  v18[1] = 0;
  *(a4 + v8[11]) = 1;
  return result;
}

void PluginAction.init(flowHandlerId:input:speechPackage:userData:loggingId:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4_82();
  v9 = v8;
  v10 = type metadata accessor for PluginAction();
  v11 = v10[9];
  v12 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(v9 + v11, v13, v14, v12);
  *v9 = v3;
  v9[1] = v2;
  sub_1DCC333DC(v1, v9 + v10[5]);
  *(v9 + v10[6]) = v7;
  *(v9 + v10[7]) = v0;
  v15 = (v9 + v10[8]);
  *v15 = 0;
  v15[1] = 0;
  sub_1DCC91890(v5, v9 + v10[10], &qword_1ECCA2618, &unk_1DD0E5C50);
  *(v9 + v10[11]) = 1;
  OUTLINED_FUNCTION_49();
}

void PluginAction.init(flowHandlerId:input:preventCircularRedirect:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = OUTLINED_FUNCTION_22_31();
  v7 = v6[9];
  v8 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_12_51(v8);
  v9 = v6[10];
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_51(v10);
  OUTLINED_FUNCTION_30_29();
  *(v4 + v6[6]) = 0;
  OUTLINED_FUNCTION_13_54();
  *(v4 + v11) = a4;
}

void PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:preventCircularRedirect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_10_58();
  *v27 = v25;
  v27[1] = v26;
  v28 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_28_26(v28);
  OUTLINED_FUNCTION_8_61();
  sub_1DCC91890(v22, v23 + v29, &qword_1ECCA4B28, &unk_1DD0EE960);
  sub_1DCC91890(a21, v23 + *(v24 + 40), &qword_1ECCA2618, &unk_1DD0E5C50);
  *(v23 + *(v24 + 44)) = a22;
  OUTLINED_FUNCTION_49();
}

uint64_t PluginAction.init(flowHandlerId:input:loggingId:)()
{
  OUTLINED_FUNCTION_27_27();
  OUTLINED_FUNCTION_4();
  v5 = type metadata accessor for PluginAction();
  v6 = v5[10];
  v7 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 32))(&v0[v6], v1, v7);
  __swift_storeEnumTagSinglePayload(&v0[v6], 0, 1, v7);
  v9 = v5[9];
  v10 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(&v0[v9], v11, v12, v10);
  *v0 = v4;
  *(v0 + 1) = v3;
  result = sub_1DCC333DC(v2, &v0[v5[5]]);
  *&v0[v5[6]] = 0;
  *&v0[v5[7]] = 0;
  v14 = &v0[v5[8]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v0[v5[11]] = 1;
  return result;
}

void PluginAction.init(flowHandlerId:input:loggingId:preventCircularRedirect:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_4_82();
  v7 = v6;
  v8 = type metadata accessor for PluginAction();
  v9 = v8[9];
  v10 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(&v7[v9], v11, v12, v10);
  v13 = v8[10];
  v14 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2(v14);
  (*(v15 + 32))(&v7[v13], v0, v14);
  __swift_storeEnumTagSinglePayload(&v7[v13], 0, 1, v14);
  *v7 = v3;
  *(v7 + 1) = v2;
  sub_1DCC333DC(v1, &v7[v8[5]]);
  *&v7[v8[6]] = 0;
  *&v7[v8[7]] = 0;
  v16 = &v7[v8[8]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v7[v8[11]] = v5;
  OUTLINED_FUNCTION_49();
}

void PluginAction.init(flowHandlerId:input:userData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_22_31();
  v7 = v6[10];
  v8 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_7_5(v4 + v7, v9, v10, v8);
  v11 = v6[9];
  v12 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_12_51(v12);
  OUTLINED_FUNCTION_30_29();
  *(v4 + v6[6]) = a4;
  OUTLINED_FUNCTION_13_54();
  *(v4 + v13) = 1;
}

void PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_10_58();
  *v26 = v24;
  v26[1] = v25;
  v27 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_28_26(v27);
  OUTLINED_FUNCTION_8_61();
  sub_1DCC91890(v21, v22 + v28, &qword_1ECCA4B28, &unk_1DD0EE960);
  sub_1DCC91890(a21, v22 + *(v23 + 40), &qword_1ECCA2618, &unk_1DD0E5C50);
  *(v22 + *(v23 + 44)) = 1;
  OUTLINED_FUNCTION_49();
}

void PluginAction.init(flowHandlerId:input:speechPackage:userData:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_27_27();
  v7 = v6;
  v8 = type metadata accessor for PluginAction();
  v9 = v8[10];
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_7_5(v7 + v9, v11, v12, v10);
  v13 = v8[9];
  v14 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_7_5(v7 + v13, v15, v16, v14);
  *v7 = v3;
  v7[1] = v2;
  sub_1DCC333DC(v1, v7 + v8[5]);
  *(v7 + v8[6]) = v5;
  *(v7 + v8[7]) = v0;
  v17 = (v7 + v8[8]);
  *v17 = 0;
  v17[1] = 0;
  *(v7 + v8[11]) = 1;
  OUTLINED_FUNCTION_49();
}

uint64_t PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for PluginAction();
  sub_1DCC333DC(a3, a7 + v12[5]);
  *(a7 + v12[6]) = 0;
  *(a7 + v12[7]) = a4;
  v13 = (a7 + v12[8]);
  *v13 = 0;
  v13[1] = 0;
  sub_1DCC91890(a5, a7 + v12[9], &qword_1ECCA4B28, &unk_1DD0EE960);
  result = sub_1DCC91890(a6, a7 + v12[10], &qword_1ECCA2618, &unk_1DD0E5C50);
  *(a7 + v12[11]) = 1;
  return result;
}

void PluginAction.description.getter()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001CLL, 0x80000001DD11FC90);
  MEMORY[0x1E12A6780](*v1, v1[1]);
  MEMORY[0x1E12A6780](0x3A7475706E69202CLL, 0xE900000000000020);
  v9 = type metadata accessor for PluginAction();
  v10 = v0 + v9[5];
  v11 = Input.description.getter();
  MEMORY[0x1E12A6780](v11);

  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD11FCB0);
  v18 = *(v1 + v9[7]);
  v12 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4920, &qword_1DD0ED848);
  v13 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v13);

  MEMORY[0x1E12A6780](0xD000000000000014, 0x80000001DD11FCD0);
  sub_1DCB09970(v1 + v9[9], v8, &qword_1ECCA4B28, &unk_1DD0EE960);
  v14 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v14);

  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD11FCF0);
  if (*(v1 + v9[11]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v9[11]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v15, v16);

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE4CA6C(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_21_32() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000011 && 0x80000001DD11FD10 == a2;
        if (v9 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0xD000000000000010 && 0x80000001DD11FD30 == a2;
          if (v10 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0x49676E6967676F6CLL && a2 == 0xE900000000000064;
            if (v11 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
              if (v12 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000017 && 0x80000001DD11FD50 == a2)
              {

                return 7;
              }

              else
              {
                v14 = OUTLINED_FUNCTION_7_8();

                if (v14)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DCE4CC7C()
{
  result = OUTLINED_FUNCTION_21_32();
  switch(v1)
  {
    case 1:
      result = 0x7475706E69;
      break;
    case 2:
      result = 0x6174614472657375;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x49676E6967676F6CLL;
      break;
    case 6:
      result = 0x636E617265747475;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCE4CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE4CA6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE4CDB8(uint64_t a1)
{
  v2 = sub_1DCE4D684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE4CDF4(uint64_t a1)
{
  v2 = sub_1DCE4D684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v79 = &v72 - v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v72 - v12;
  v14 = type metadata accessor for Input(0);
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_16_44();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7FA0, &qword_1DD0FC4B8);
  OUTLINED_FUNCTION_22_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = a1[3];
  v25 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1DCE4D684();
  v26 = v80;
  sub_1DD0DF23C();
  if (!v26)
  {
    v80 = v13;
    LOBYTE(v83) = 0;
    OUTLINED_FUNCTION_9_60();
    v27 = sub_1DD0DEF0C();
    v29 = v28;
    v77 = v27;
    LOBYTE(v83) = 1;
    OUTLINED_FUNCTION_6_57();
    sub_1DCE4DD64(v30, v31);
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEF4C();
    v32 = v3;
    v76 = v29;
    type metadata accessor for ActionParaphrase(0);
    LOBYTE(v83) = 4;
    OUTLINED_FUNCTION_4_84();
    sub_1DCE4DD64(v33, v34);
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    sub_1DD0DB04C();
    LOBYTE(v83) = 5;
    OUTLINED_FUNCTION_7_52();
    sub_1DCE4DD64(v35, v36);
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    LOBYTE(v82) = 2;
    v37 = sub_1DCB5414C();
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    v74 = v37;
    v38 = v2;
    v75 = v84;
    if (v84 >> 60 == 15)
    {
      v75 = 0;
    }

    else
    {
      v39 = v32;
      v40 = v83;
      v41 = objc_opt_self();
      v42 = sub_1DD0DAEFC();
      v83 = 0;
      v43 = [v41 propertyListWithData:v42 options:0 format:0 error:&v83];

      if (!v43)
      {
        v52 = v83;

        sub_1DD0DAE0C();

        swift_willThrow();
        sub_1DCB2C520(v40, v75);
        sub_1DCB0E9D8(v79, &qword_1ECCA2618, &unk_1DD0E5C50);
        sub_1DCB0E9D8(v80, &qword_1ECCA4B28, &unk_1DD0EE960);
        OUTLINED_FUNCTION_0_81();
        sub_1DCE50774(v39, v63);
        v64 = OUTLINED_FUNCTION_25_22();
        v47(v64, v38);
        goto LABEL_9;
      }

      v44 = v83;
      sub_1DD0DEA6C();
      sub_1DCB2C520(v40, v75);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      v45 = swift_dynamicCast();
      v46 = v82;
      if (!v45)
      {
        v46 = 0;
      }

      v75 = v46;
      v32 = v39;
    }

    LOBYTE(v82) = 3;
    OUTLINED_FUNCTION_9_60();
    sub_1DD0DEEFC();
    v74 = v32;
    v50 = v84;
    if (v84 >> 60 == 15)
    {
      v51 = 0;
    }

    else
    {
      v53 = v83;
      v54 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      sub_1DCC91E80(v53, v50);
      v55 = sub_1DCE2EE68(v53, v50);
      sub_1DCE4DD20();
      v56 = v53;
      v57 = *MEMORY[0x1E696A508];
      sub_1DD0DDFBC();
      v58 = sub_1DD0DE88C();
      sub_1DCB2C520(v56, v50);
      v51 = v58;
    }

    v59 = v79;
    LOBYTE(v83) = 6;
    OUTLINED_FUNCTION_9_60();
    v60 = sub_1DD0DEEDC();
    v62 = v61;
    v73 = v60;
    LOBYTE(v83) = 7;
    OUTLINED_FUNCTION_9_60();
    v65 = sub_1DD0DEF1C();
    v66 = OUTLINED_FUNCTION_25_22();
    v67(v66, v38);
    v68 = type metadata accessor for PluginAction();
    v69 = v78;
    sub_1DCC333DC(v74, v78 + v68[5]);
    sub_1DCC91890(v80, v69 + v68[9], &qword_1ECCA4B28, &unk_1DD0EE960);
    sub_1DCC91890(v59, v69 + v68[10], &qword_1ECCA2618, &unk_1DD0E5C50);
    v70 = v76;
    *v69 = v77;
    v69[1] = v70;
    *(v69 + v68[6]) = v75;
    *(v69 + v68[7]) = v51;
    v71 = (v69 + v68[8]);
    *v71 = v73;
    v71[1] = v62;
    *(v69 + v68[11]) = v65 & 1;
  }

LABEL_9:
  result = __swift_destroy_boxed_opaque_existential_1Tm(v81);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DCE4D684()
{
  result = qword_1ECCA7FA8;
  if (!qword_1ECCA7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FA8);
  }

  return result;
}

uint64_t PluginAction.encode(to:)(void *a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7FC0, &qword_1DD0FC4C0);
  OUTLINED_FUNCTION_22_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE4D684();
  sub_1DD0DF24C();
  v16 = *v4;
  v17 = v4[1];
  LOBYTE(v44) = 0;
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFBC();
  if (!v3)
  {
    v18 = type metadata accessor for PluginAction();
    v19 = v18[5];
    LOBYTE(v44) = 1;
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_6_57();
    sub_1DCE4DD64(v20, v21);
    OUTLINED_FUNCTION_2_77();
    sub_1DD0DEFFC();
    v22 = v18[10];
    LOBYTE(v44) = 5;
    sub_1DD0DB04C();
    OUTLINED_FUNCTION_7_52();
    sub_1DCE4DD64(v23, v24);
    OUTLINED_FUNCTION_2_77();
    sub_1DD0DEFAC();
    v25 = v18[9];
    LOBYTE(v44) = 4;
    type metadata accessor for ActionParaphrase(0);
    OUTLINED_FUNCTION_4_84();
    sub_1DCE4DD64(v26, v27);
    OUTLINED_FUNCTION_2_77();
    sub_1DD0DEFAC();
    v29 = *(v4 + v18[7]);
    if (v29)
    {
      v30 = objc_allocWithZone(MEMORY[0x1E696ACC8]);
      v31 = v29;
      v32 = [v30 initRequiringSecureCoding_];
      v33 = *MEMORY[0x1E696A508];
      v43 = v31;
      [v32 encodeObject:v31 forKey:v33];
      v42 = v32;
      v34 = [v32 encodedData];
      v35 = sub_1DD0DAF2C();
      v37 = v36;

      v44 = v35;
      v45 = v37;
      v46 = 3;
      sub_1DCB51540();
      OUTLINED_FUNCTION_56_2();
      sub_1DD0DEFFC();
      sub_1DCB21A14(v44, v45);
    }

    v38 = (v4 + v18[8]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v44) = 6;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEF8C();
    v41 = *(v4 + v18[11]);
    LOBYTE(v44) = 7;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFCC();
  }

  return (*(v8 + 8))(v14, v1);
}

uint64_t PluginAction.init(data:)(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for PluginAction();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_16_44();
  v12 = sub_1DD0DAC9C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1DD0DAC8C();
  OUTLINED_FUNCTION_5_78();
  sub_1DCE4DD64(v15, v16);
  sub_1DD0DAC7C();

  result = sub_1DCB21A14(a1, a2);
  if (!v3)
  {
    v18 = v4[1];
    v27 = *v4;
    sub_1DCC174D4(v4 + v7[5], v2 + v7[5]);
    v19 = *(v4 + v7[7]);
    v20 = (v4 + v7[8]);
    v21 = v20[1];
    v26 = *v20;
    sub_1DCB09970(v4 + v7[9], v2 + v7[9], &qword_1ECCA4B28, &unk_1DD0EE960);
    v22 = *(v4 + v7[6]);
    sub_1DCB09970(v4 + v7[10], v2 + v7[10], &qword_1ECCA2618, &unk_1DD0E5C50);
    v23 = *(v4 + v7[11]);

    v24 = v19;

    result = sub_1DCE50774(v4, type metadata accessor for PluginAction);
    *v2 = v27;
    v2[1] = v18;
    *(v2 + v7[6]) = v22;
    *(v2 + v7[7]) = v19;
    v25 = (v2 + v7[8]);
    *v25 = v26;
    v25[1] = v21;
    *(v2 + v7[11]) = v23;
  }

  return result;
}

uint64_t PluginAction.serialize()()
{
  v0 = sub_1DD0DACDC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DACCC();
  sub_1DD0DACAC();
  type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_5_78();
  sub_1DCE4DD64(v3, v4);
  v5 = sub_1DD0DACBC();

  return v5;
}

unint64_t sub_1DCE4DD20()
{
  result = qword_1ECCA7FB8;
  if (!qword_1ECCA7FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA7FB8);
  }

  return result;
}

uint64_t sub_1DCE4DD64(unint64_t *a1, void (*a2)(uint64_t))
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

char *initializeBufferWithCopyOfBuffer for PluginAction(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = sub_1DD0DB04C();
  v11 = *(*(v10 - 8) + 16);

  v123 = v11;
  v11(v8, v9, v10);
  v12 = type metadata accessor for Input(0);
  v13 = v12[5];
  v14 = &v8[v13];
  v15 = &v9[v13];
  v16 = type metadata accessor for Parse(0);
  v124 = v10;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v17 = sub_1DD0DC76C();
      (*(*(v17 - 8) + 16))(v14, v15, v17);
      goto LABEL_27;
    case 1u:
      v25 = sub_1DD0DC76C();
      (*(*(v25 - 8) + 16))(v14, v15, v25);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v14[*(v26 + 48)] = *&v15[*(v26 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v20 = *(v15 + 1);
      *v14 = *v15;
      *(v14 + 1) = v20;
      *(v14 + 2) = *(v15 + 2);

      goto LABEL_27;
    case 3u:
      *v14 = *v15;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v18 = sub_1DD0DB1EC();
      (*(*(v18 - 8) + 16))(v14, v15, v18);
      goto LABEL_27;
    case 5u:
      v27 = *v15;
      *v14 = *v15;
      v28 = v27;
      goto LABEL_27;
    case 6u:
      v29 = sub_1DD0DB4BC();
      (*(*(v29 - 8) + 16))(v14, v15, v29);
      v120 = type metadata accessor for USOParse();
      v30 = v120[5];
      v31 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v15[v30], 1, v31))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v14[v30], &v15[v30], *(*(v32 - 8) + 64));
      }

      else
      {
        (*(*(v31 - 8) + 16))(&v14[v30], &v15[v30], v31);
        __swift_storeEnumTagSinglePayload(&v14[v30], 0, 1, v31);
      }

      v62 = v120[6];
      v63 = &v14[v62];
      v64 = &v15[v62];
      v65 = *(v64 + 1);
      *v63 = *v64;
      *(v63 + 1) = v65;
      v66 = v120[7];
      v67 = &v14[v66];
      v68 = &v15[v66];
      v67[4] = v68[4];
      *v67 = *v68;

      goto LABEL_27;
    case 7u:
      v21 = sub_1DD0DB4BC();
      (*(*(v21 - 8) + 16))(v14, v15, v21);
      v119 = type metadata accessor for USOParse();
      v22 = v119[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v15[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v14[v22], &v15[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 16))(&v14[v22], &v15[v22], v23);
        __swift_storeEnumTagSinglePayload(&v14[v22], 0, 1, v23);
      }

      v43 = v119[6];
      v44 = &v14[v43];
      v45 = &v15[v43];
      v117 = *(v45 + 1);
      *v44 = *v45;
      *(v44 + 1) = v117;
      v46 = v119[7];
      v47 = &v14[v46];
      v48 = &v15[v46];
      v47[4] = v48[4];
      *v47 = *v48;
      v49 = type metadata accessor for LinkParse();
      v50 = v49[5];
      v51 = &v14[v50];
      v52 = &v15[v50];
      v53 = *(v52 + 1);
      *v51 = *v52;
      *(v51 + 1) = v53;
      v54 = v49[6];
      v55 = &v14[v54];
      v56 = &v15[v54];
      v57 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 1) = v57;
      v58 = v49[7];
      v59 = &v14[v58];
      v60 = &v15[v58];
      v61 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v61;

      goto LABEL_27;
    case 8u:
      v33 = sub_1DD0DD12C();
      (*(*(v33 - 8) + 16))(v14, v15, v33);
      v34 = type metadata accessor for NLRouterParse();
      v35 = *(v34 + 20);
      v36 = &v14[v35];
      v37 = &v15[v35];
      v38 = *(v37 + 1);
      *v36 = *v37;
      *(v36 + 1) = v38;
      v114 = v34;
      v39 = *(v34 + 24);
      v121 = &v14[v39];
      v40 = &v15[v39];
      v115 = type metadata accessor for USOParse();

      v116 = v40;
      if (__swift_getEnumTagSinglePayload(v40, 1, v115))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v121, v40, *(*(v41 - 8) + 64));
        v42 = v114;
      }

      else
      {
        v69 = sub_1DD0DB4BC();
        (*(*(v69 - 8) + 16))(v121, v40, v69);
        v70 = v115[5];
        v71 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v116[v70], 1, v71))
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v121[v70], &v116[v70], *(*(v72 - 8) + 64));
        }

        else
        {
          (*(*(v71 - 8) + 16))(&v121[v70], &v116[v70], v71);
          __swift_storeEnumTagSinglePayload(&v121[v70], 0, 1, v71);
        }

        v73 = v115[6];
        v74 = &v121[v73];
        v75 = &v116[v73];
        v76 = *(v75 + 1);
        *v74 = *v75;
        *(v74 + 1) = v76;
        v77 = v115[7];
        v78 = &v121[v77];
        v79 = &v116[v77];
        v78[4] = v79[4];
        *v78 = *v79;

        __swift_storeEnumTagSinglePayload(v121, 0, 1, v115);
        v42 = v114;
      }

      v80 = *(v42 + 28);
      v81 = *&v15[v80];
      *&v14[v80] = v81;
      v82 = v81;
      goto LABEL_27;
    case 9u:
      v19 = sub_1DD0DD08C();
      (*(*(v19 - 8) + 16))(v14, v15, v19);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v14, v15, *(*(v16 - 8) + 64));
      break;
  }

  *&v8[v12[6]] = *&v9[v12[6]];
  v83 = v12[7];
  v84 = &v8[v83];
  v85 = &v9[v83];
  v86 = *&v9[v83 + 24];

  if (v86)
  {
    v87 = *(v85 + 4);
    *(v84 + 3) = v86;
    *(v84 + 4) = v87;
    (**(v86 - 8))(v84, v85, v86);
  }

  else
  {
    v88 = *(v85 + 1);
    *v84 = *v85;
    *(v84 + 1) = v88;
    *(v84 + 4) = *(v85 + 4);
  }

  v8[v12[8]] = v9[v12[8]];
  v89 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v90 = *&a2[v89];
  *&a1[v89] = v90;
  v91 = a3[8];
  v92 = a3[9];
  v93 = &a1[v91];
  v94 = &a2[v91];
  v95 = *(v94 + 1);
  *v93 = *v94;
  *(v93 + 1) = v95;
  v96 = &a1[v92];
  v97 = &a2[v92];
  v98 = type metadata accessor for ActionParaphrase(0);

  v99 = v90;

  if (__swift_getEnumTagSinglePayload(v97, 1, v98))
  {
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v96, v97, *(*(v100 - 8) + 64));
    v101 = v124;
  }

  else
  {
    v102 = *(v97 + 1);
    *v96 = *v97;
    *(v96 + 1) = v102;
    v103 = *(v98 + 20);
    v104 = &v96[v103];
    v105 = &v97[v103];
    v106 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

    if (__swift_getEnumTagSinglePayload(v105, 1, v106))
    {
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v104, v105, *(*(v107 - 8) + 64));
    }

    else
    {
      v108 = *(v105 + 1);
      *v104 = *v105;
      *(v104 + 1) = v108;
      v109 = *(v105 + 3);
      *(v104 + 2) = *(v105 + 2);
      *(v104 + 3) = v109;
      v122 = *(v106 + 24);
      v110 = sub_1DD0DB66C();
      v118 = *(*(v110 - 8) + 16);

      v118(&v104[v122], &v105[v122], v110);
      __swift_storeEnumTagSinglePayload(v104, 0, 1, v106);
    }

    v101 = v124;
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v98);
  }

  v111 = a3[10];
  if (__swift_getEnumTagSinglePayload(&a2[v111], 1, v101))
  {
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v111], &a2[v111], *(*(v112 - 8) + 64));
  }

  else
  {
    v123(&a1[v111], &a2[v111], v101);
    __swift_storeEnumTagSinglePayload(&a1[v111], 0, 1, v101);
  }

  a1[a3[11]] = a2[a3[11]];
  return a1;
}

uint64_t destroy for PluginAction(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = a1 + a2[5];
  v6 = sub_1DD0DB04C();
  v57 = *(*(v6 - 8) + 8);
  v57(v5, v6);
  v7 = type metadata accessor for Input(0);
  v8 = (v5 + v7[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v9 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v22 = sub_1DD0DC76C();
      (*(*(v22 - 8) + 8))(v8, v22);
      v23 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v10 = *(v8 + 1);

      v11 = *(v8 + 2);
      goto LABEL_17;
    case 3u:
      v12 = *v8;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v9 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v24 = *v8;
      goto LABEL_23;
    case 6u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 8))(v8, v25);
      v26 = type metadata accessor for USOParse();
      v27 = *(v26 + 20);
      v28 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v8[v27], 1, v28))
      {
        (*(*(v28 - 8) + 8))(&v8[v27], v28);
      }

      v21 = *(v26 + 24);
      goto LABEL_16;
    case 7u:
      v13 = sub_1DD0DB4BC();
      (*(*(v13 - 8) + 8))(v8, v13);
      v14 = type metadata accessor for USOParse();
      v15 = *(v14 + 20);
      v16 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&v8[v15], 1, v16))
      {
        (*(*(v16 - 8) + 8))(&v8[v15], v16);
      }

      v17 = *&v8[*(v14 + 24) + 8];

      v18 = type metadata accessor for LinkParse();
      v19 = *&v8[v18[5] + 8];

      v20 = *&v8[v18[6] + 8];

      v21 = v18[7];
LABEL_16:
      v29 = *&v8[v21 + 8];
LABEL_17:

      break;
    case 8u:
      v30 = sub_1DD0DD12C();
      (*(*(v30 - 8) + 8))(v8, v30);
      v31 = type metadata accessor for NLRouterParse();
      v32 = *&v8[v31[5] + 8];

      v33 = &v8[v31[6]];
      v34 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v33, 1, v34))
      {
        v35 = sub_1DD0DB4BC();
        (*(*(v35 - 8) + 8))(v33, v35);
        v36 = *(v34 + 20);
        v37 = sub_1DD0DB3EC();
        v56 = v36;
        v38 = v33 + v36;
        v39 = v37;
        if (!__swift_getEnumTagSinglePayload(v38, 1, v37))
        {
          (*(*(v39 - 8) + 8))(v33 + v56, v39);
        }

        v40 = *(v33 + *(v34 + 24) + 8);
      }

      v24 = *&v8[v31[7]];
LABEL_23:

      break;
    case 9u:
      v9 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v9 - 8) + 8))(v8, v9);
      break;
    default:
      break;
  }

  v41 = *(v5 + v7[6]);

  v42 = (v5 + v7[7]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  v43 = *(a1 + a2[6]);

  v44 = *(a1 + a2[8] + 8);

  v45 = a1 + a2[9];
  v46 = type metadata accessor for ActionParaphrase(0);
  if (!__swift_getEnumTagSinglePayload(v45, 1, v46))
  {
    v47 = *(v45 + 8);

    v48 = v45 + *(v46 + 20);
    v49 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    if (!__swift_getEnumTagSinglePayload(v48, 1, v49))
    {
      v50 = *(v48 + 8);

      v51 = *(v48 + 24);

      v52 = *(v49 + 24);
      v53 = sub_1DD0DB66C();
      (*(*(v53 - 8) + 8))(v48 + v52, v53);
    }
  }

  v54 = a2[10];
  result = __swift_getEnumTagSinglePayload(a1 + v54, 1, v6);
  if (!result)
  {

    return (v57)(a1 + v54, v6);
  }

  return result;
}

char *initializeWithCopy for PluginAction(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1DD0DB04C();
  v10 = *(*(v9 - 8) + 16);

  v126 = v10;
  v127 = v9;
  v10(v7, v8, v9);
  v11 = type metadata accessor for Input(0);
  v12 = v11[5];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 16))(v13, v14, v16);
      goto LABEL_25;
    case 1u:
      v24 = sub_1DD0DC76C();
      (*(*(v24 - 8) + 16))(v13, v14, v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v13[*(v25 + 48)] = *&v14[*(v25 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v19 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v19;
      *(v13 + 2) = *(v14 + 2);

      goto LABEL_25;
    case 3u:
      *v13 = *v14;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v17 = sub_1DD0DB1EC();
      (*(*(v17 - 8) + 16))(v13, v14, v17);
      goto LABEL_25;
    case 5u:
      v26 = *v14;
      *v13 = *v14;
      v27 = v26;
      goto LABEL_25;
    case 6u:
      v28 = sub_1DD0DB4BC();
      (*(*(v28 - 8) + 16))(v13, v14, v28);
      __dsta = type metadata accessor for USOParse();
      v29 = __dsta[5];
      v30 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v14[v29], 1, v30))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v13[v29], &v14[v29], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(*(v30 - 8) + 16))(&v13[v29], &v14[v29], v30);
        __swift_storeEnumTagSinglePayload(&v13[v29], 0, 1, v30);
      }

      v62 = __dsta[6];
      v63 = &v13[v62];
      v64 = &v14[v62];
      v65 = *(v64 + 1);
      *v63 = *v64;
      *(v63 + 1) = v65;
      v66 = __dsta[7];
      v67 = &v13[v66];
      v68 = &v14[v66];
      v67[4] = v68[4];
      *v67 = *v68;

      goto LABEL_25;
    case 7u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 16))(v13, v14, v20);
      __dst = type metadata accessor for USOParse();
      v21 = __dst[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v14[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v13[v21], &v14[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 16))(&v13[v21], &v14[v21], v22);
        __swift_storeEnumTagSinglePayload(&v13[v21], 0, 1, v22);
      }

      v42 = __dst[6];
      v43 = &v13[v42];
      v44 = &v14[v42];
      v45 = *(v44 + 1);
      *v43 = *v44;
      *(v43 + 1) = v45;
      v46 = __dst[7];
      v47 = &v13[v46];
      v48 = &v14[v46];
      v47[4] = v48[4];
      *v47 = *v48;
      v49 = type metadata accessor for LinkParse();
      v50 = v49[5];
      v51 = &v13[v50];
      v52 = &v14[v50];
      v53 = *(v52 + 1);
      *v51 = *v52;
      *(v51 + 1) = v53;
      v54 = v49[6];
      v55 = &v13[v54];
      v56 = &v14[v54];
      v57 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 1) = v57;
      v58 = v49[7];
      v59 = &v13[v58];
      v60 = &v14[v58];
      v61 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v61;

      goto LABEL_25;
    case 8u:
      v32 = sub_1DD0DD12C();
      (*(*(v32 - 8) + 16))(v13, v14, v32);
      v33 = type metadata accessor for NLRouterParse();
      v34 = *(v33 + 20);
      v35 = &v13[v34];
      v36 = &v14[v34];
      v37 = *(v36 + 1);
      *v35 = *v36;
      *(v35 + 1) = v37;
      v120 = v33;
      v38 = *(v33 + 24);
      __dstb = &v13[v38];
      v39 = &v14[v38];
      v40 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v39, 1, v40))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(__dstb, v39, *(*(v41 - 8) + 64));
      }

      else
      {
        v69 = sub_1DD0DB4BC();
        (*(*(v69 - 8) + 16))(__dstb, v39, v69);
        v119 = v40;
        v70 = *(v40 + 20);
        v71 = sub_1DD0DB3EC();
        v72 = v39;
        v73 = v71;
        v118 = v72;
        if (__swift_getEnumTagSinglePayload(&v72[v70], 1, v71))
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          v75 = v118;
          memcpy(&__dstb[v70], &v118[v70], *(*(v74 - 8) + 64));
        }

        else
        {
          (*(*(v73 - 8) + 16))(&__dstb[v70], &v118[v70], v73);
          v76 = v73;
          v75 = v118;
          __swift_storeEnumTagSinglePayload(&__dstb[v70], 0, 1, v76);
        }

        v77 = *(v119 + 24);
        v78 = &__dstb[v77];
        v79 = &v75[v77];
        v80 = *(v79 + 1);
        *v78 = *v79;
        *(v78 + 1) = v80;
        v81 = *(v119 + 28);
        v82 = &__dstb[v81];
        v83 = &v75[v81];
        v82[4] = v83[4];
        *v82 = *v83;

        __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v119);
      }

      v84 = *(v120 + 28);
      v85 = *&v14[v84];
      *&v13[v84] = v85;
      v86 = v85;
      goto LABEL_25;
    case 9u:
      v18 = sub_1DD0DD08C();
      (*(*(v18 - 8) + 16))(v13, v14, v18);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v13, v14, *(*(v15 - 8) + 64));
      break;
  }

  *&v7[v11[6]] = *&v8[v11[6]];
  v87 = v11[7];
  v88 = &v7[v87];
  v89 = &v8[v87];
  v90 = *&v8[v87 + 24];

  v91 = a3;
  if (v90)
  {
    v92 = *(v89 + 4);
    *(v88 + 3) = v90;
    *(v88 + 4) = v92;
    (**(v90 - 8))(v88, v89, v90);
  }

  else
  {
    v93 = *(v89 + 1);
    *v88 = *v89;
    *(v88 + 1) = v93;
    *(v88 + 4) = *(v89 + 4);
  }

  v7[v11[8]] = v8[v11[8]];
  v94 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v95 = *&a2[v94];
  *&a1[v94] = v95;
  v96 = a3[8];
  v97 = a3[9];
  v98 = &a1[v96];
  v99 = &a2[v96];
  v100 = *(v99 + 1);
  *v98 = *v99;
  *(v98 + 1) = v100;
  v101 = &a1[v97];
  v102 = &a2[v97];
  v103 = type metadata accessor for ActionParaphrase(0);

  v104 = v95;

  if (__swift_getEnumTagSinglePayload(v102, 1, v103))
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v101, v102, *(*(v105 - 8) + 64));
  }

  else
  {
    v106 = *(v102 + 1);
    *v101 = *v102;
    *(v101 + 1) = v106;
    v107 = *(v103 + 20);
    v108 = &v101[v107];
    v109 = &v102[v107];
    v110 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

    if (__swift_getEnumTagSinglePayload(v109, 1, v110))
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v108, v109, *(*(v111 - 8) + 64));
    }

    else
    {
      v112 = *(v109 + 8);
      *v108 = *v109;
      *(v108 + 8) = v112;
      v113 = *(v109 + 24);
      *(v108 + 16) = *(v109 + 16);
      *(v108 + 24) = v113;
      __dstc = *(v110 + 24);
      v114 = sub_1DD0DB66C();
      v121 = *(*(v114 - 8) + 16);

      v91 = a3;

      v121(&__dstc[v108], &__dstc[v109], v114);
      __swift_storeEnumTagSinglePayload(v108, 0, 1, v110);
    }

    __swift_storeEnumTagSinglePayload(v101, 0, 1, v103);
  }

  v115 = v91[10];
  if (__swift_getEnumTagSinglePayload(&a2[v115], 1, v127))
  {
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v115], &a2[v115], *(*(v116 - 8) + 64));
  }

  else
  {
    v126(&a1[v115], &a2[v115], v127);
    __swift_storeEnumTagSinglePayload(&a1[v115], 0, 1, v127);
  }

  a1[v91[11]] = a2[v91[11]];
  return a1;
}

char *assignWithCopy for PluginAction(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = sub_1DD0DB04C();
  v142 = *(v10 - 8);
  v141 = *(v142 + 24);
  v141(v8, v9, v10);
  v11 = type metadata accessor for Input(0);
  v12 = v11;
  if (a1 != a2)
  {
    v143 = v10;
    v13 = *(v11 + 20);
    v14 = &v8[v13];
    v15 = &v9[v13];
    sub_1DCE50774(&v8[v13], type metadata accessor for Parse);
    v16 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v17 = sub_1DD0DC76C();
        (*(*(v17 - 8) + 16))(v14, v15, v17);
        goto LABEL_26;
      case 1u:
        v24 = sub_1DD0DC76C();
        (*(*(v24 - 8) + 16))(v14, v15, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v14[*(v25 + 48)] = *&v15[*(v25 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *v14 = *v15;
        *(v14 + 1) = *(v15 + 1);
        *(v14 + 2) = *(v15 + 2);

        goto LABEL_26;
      case 3u:
        *v14 = *v15;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v18 = sub_1DD0DB1EC();
        (*(*(v18 - 8) + 16))(v14, v15, v18);
        goto LABEL_26;
      case 5u:
        v26 = *v15;
        *v14 = *v15;
        v27 = v26;
        goto LABEL_26;
      case 6u:
        v28 = sub_1DD0DB4BC();
        (*(*(v28 - 8) + 16))(v14, v15, v28);
        v137 = type metadata accessor for USOParse();
        v29 = v137[5];
        v30 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v15[v29], 1, v30))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v14[v29], &v15[v29], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(*(v30 - 8) + 16))(&v14[v29], &v15[v29], v30);
          __swift_storeEnumTagSinglePayload(&v14[v29], 0, 1, v30);
        }

        v58 = v137[6];
        v59 = &v14[v58];
        v60 = &v15[v58];
        *v59 = *v60;
        *(v59 + 1) = *(v60 + 1);
        v61 = v137[7];
        v62 = &v14[v61];
        v63 = &v15[v61];
        v64 = *v63;
        v62[4] = v63[4];
        *v62 = v64;

        goto LABEL_26;
      case 7u:
        v20 = sub_1DD0DB4BC();
        (*(*(v20 - 8) + 16))(v14, v15, v20);
        v136 = type metadata accessor for USOParse();
        v21 = v136[5];
        v22 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v15[v21], 1, v22))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v14[v21], &v15[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(*(v22 - 8) + 16))(&v14[v21], &v15[v21], v22);
          __swift_storeEnumTagSinglePayload(&v14[v21], 0, 1, v22);
        }

        v41 = v136[6];
        v42 = &v14[v41];
        v43 = &v15[v41];
        *v42 = *v43;
        *(v42 + 1) = *(v43 + 1);
        v44 = v136[7];
        v45 = &v14[v44];
        v46 = &v15[v44];
        v47 = *v46;
        v45[4] = v46[4];
        *v45 = v47;
        v48 = type metadata accessor for LinkParse();
        v49 = v48[5];
        v50 = &v14[v49];
        v51 = &v15[v49];
        *v50 = *v51;
        *(v50 + 1) = *(v51 + 1);
        v52 = v48[6];
        v53 = &v14[v52];
        v54 = &v15[v52];
        *v53 = *v54;
        *(v53 + 1) = *(v54 + 1);
        v55 = v48[7];
        v56 = &v14[v55];
        v57 = &v15[v55];
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);

        goto LABEL_26;
      case 8u:
        v32 = sub_1DD0DD12C();
        (*(*(v32 - 8) + 16))(v14, v15, v32);
        v33 = type metadata accessor for NLRouterParse();
        v34 = *(v33 + 20);
        v35 = &v14[v34];
        v36 = &v15[v34];
        *v35 = *v36;
        *(v35 + 1) = *(v36 + 1);
        v132 = v33;
        v37 = *(v33 + 24);
        v138 = &v14[v37];
        v38 = &v15[v37];
        v133 = type metadata accessor for USOParse();

        v134 = v38;
        if (__swift_getEnumTagSinglePayload(v38, 1, v133))
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v138, v38, *(*(v39 - 8) + 64));
          v40 = v132;
        }

        else
        {
          v65 = sub_1DD0DB4BC();
          (*(*(v65 - 8) + 16))(v138, v38, v65);
          v66 = v133[5];
          v67 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v134[v66], 1, v67))
          {
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v138[v66], &v134[v66], *(*(v68 - 8) + 64));
          }

          else
          {
            (*(*(v67 - 8) + 16))(&v138[v66], &v134[v66], v67);
            __swift_storeEnumTagSinglePayload(&v138[v66], 0, 1, v67);
          }

          v40 = v132;
          v69 = v133[6];
          v70 = &v138[v69];
          v71 = &v134[v69];
          *v70 = *v71;
          *(v70 + 1) = *(v71 + 1);
          v72 = v133[7];
          v73 = &v138[v72];
          v74 = &v134[v72];
          v75 = *v74;
          v73[4] = v74[4];
          *v73 = v75;

          __swift_storeEnumTagSinglePayload(v138, 0, 1, v133);
        }

        v76 = *(v40 + 28);
        v77 = *&v15[v76];
        *&v14[v76] = v77;
        v78 = v77;
        goto LABEL_26;
      case 9u:
        v19 = sub_1DD0DD08C();
        (*(*(v19 - 8) + 16))(v14, v15, v19);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v14, v15, *(*(v16 - 8) + 64));
        break;
    }

    v10 = v143;
  }

  v79 = v12[6];
  v80 = *&v8[v79];
  *&v8[v79] = *&v9[v79];

  v81 = v12[7];
  v82 = &v8[v81];
  v83 = &v9[v81];
  v84 = *&v9[v81 + 24];
  if (*&v8[v81 + 24])
  {
    if (v84)
    {
      __swift_assign_boxed_opaque_existential_1(v82, v83);
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  else if (v84)
  {
    *(v82 + 3) = v84;
    *(v82 + 4) = *(v83 + 4);
    (**(v84 - 8))(v82, v83);
    goto LABEL_35;
  }

  v85 = *v83;
  v86 = *(v83 + 1);
  *(v82 + 4) = *(v83 + 4);
  *v82 = v85;
  *(v82 + 1) = v86;
LABEL_35:
  v8[v12[8]] = v9[v12[8]];
  v87 = a3[6];
  v88 = *&a1[v87];
  *&a1[v87] = *&a2[v87];

  v89 = a3[7];
  v90 = *&a1[v89];
  v91 = *&a2[v89];
  *&a1[v89] = v91;
  v92 = v91;

  v93 = a3[8];
  v94 = &a1[v93];
  v95 = &a2[v93];
  *v94 = *v95;
  v96 = *(v94 + 1);
  *(v94 + 1) = *(v95 + 1);

  v97 = a3[9];
  v98 = &a1[v97];
  v99 = &a2[v97];
  v100 = type metadata accessor for ActionParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, 1, v100);
  v102 = __swift_getEnumTagSinglePayload(v99, 1, v100);
  if (EnumTagSinglePayload)
  {
    if (!v102)
    {
      *v98 = *v99;
      *(v98 + 1) = *(v99 + 1);
      v103 = *(v100 + 20);
      v104 = &v98[v103];
      v105 = &v99[v103];
      v106 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

      if (__swift_getEnumTagSinglePayload(v105, 1, v106))
      {
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v104, v105, *(*(v107 - 8) + 64));
      }

      else
      {
        *v104 = *v105;
        *(v104 + 1) = *(v105 + 1);
        *(v104 + 2) = *(v105 + 2);
        *(v104 + 3) = *(v105 + 3);
        v140 = *(v106 + 24);
        v122 = sub_1DD0DB66C();
        v135 = *(*(v122 - 8) + 16);

        v135(&v104[v140], &v105[v140], v122);
        __swift_storeEnumTagSinglePayload(v104, 0, 1, v106);
      }

      v120 = v98;
      v121 = v100;
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v102)
  {
    sub_1DCE50774(v98, type metadata accessor for ActionParaphrase);
LABEL_41:
    v108 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
    v109 = v98;
    v110 = v99;
LABEL_42:
    memcpy(v109, v110, v108);
    goto LABEL_49;
  }

  *v98 = *v99;
  v111 = *(v98 + 1);
  *(v98 + 1) = *(v99 + 1);

  v112 = *(v100 + 20);
  v113 = &v98[v112];
  v114 = &v99[v112];
  v115 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  LODWORD(v111) = __swift_getEnumTagSinglePayload(v113, 1, v115);
  v116 = __swift_getEnumTagSinglePayload(v114, 1, v115);
  if (v111)
  {
    if (!v116)
    {
      *v113 = *v114;
      *(v113 + 1) = *(v114 + 1);
      *(v113 + 2) = *(v114 + 2);
      *(v113 + 3) = *(v114 + 3);
      v117 = *(v115 + 24);
      v144 = v10;
      v118 = sub_1DD0DB66C();
      v139 = *(*(v118 - 8) + 16);

      v119 = v118;
      v10 = v144;
      v139(&v113[v117], &v114[v117], v119);
      v120 = v113;
      v121 = v115;
LABEL_48:
      __swift_storeEnumTagSinglePayload(v120, 0, 1, v121);
      goto LABEL_49;
    }

    goto LABEL_59;
  }

  if (v116)
  {
    sub_1DCE50774(v113, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
LABEL_59:
    v108 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
    v109 = v113;
    v110 = v114;
    goto LABEL_42;
  }

  *v113 = *v114;
  v128 = *(v113 + 1);
  *(v113 + 1) = *(v114 + 1);

  *(v113 + 2) = *(v114 + 2);
  v129 = *(v113 + 3);
  *(v113 + 3) = *(v114 + 3);

  v130 = *(v115 + 24);
  v131 = sub_1DD0DB66C();
  (*(*(v131 - 8) + 24))(&v113[v130], &v114[v130], v131);
LABEL_49:
  v123 = a3[10];
  v124 = __swift_getEnumTagSinglePayload(&a1[v123], 1, v10);
  v125 = __swift_getEnumTagSinglePayload(&a2[v123], 1, v10);
  if (!v124)
  {
    if (!v125)
    {
      v141(&a1[v123], &a2[v123], v10);
      goto LABEL_55;
    }

    (*(v142 + 8))(&a1[v123], v10);
    goto LABEL_54;
  }

  if (v125)
  {
LABEL_54:
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v123], &a2[v123], *(*(v126 - 8) + 64));
    goto LABEL_55;
  }

  (*(v142 + 16))(&a1[v123], &a2[v123], v10);
  __swift_storeEnumTagSinglePayload(&a1[v123], 0, 1, v10);
LABEL_55:
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

uint64_t sub_1DCE50774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

char *initializeWithTake for PluginAction(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1DD0DB04C();
  v80 = *(*(v9 - 8) + 32);
  v80(v7, v8, v9);
  v10 = type metadata accessor for Input(0);
  v11 = v10[5];
  v12 = &v7[v11];
  v13 = &v8[v11];
  v14 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 32))(v12, v13, v15);
      goto LABEL_23;
    case 1u:
      v24 = sub_1DD0DC76C();
      (*(*(v24 - 8) + 32))(v12, v13, v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v12[*(v25 + 48)] = *&v13[*(v25 + 48)];
      goto LABEL_23;
    case 4u:
      v27 = sub_1DD0DB1EC();
      (*(*(v27 - 8) + 32))(v12, v13, v27);
      goto LABEL_23;
    case 6u:
      v79 = v9;
      v28 = sub_1DD0DB4BC();
      (*(*(v28 - 8) + 32))(v12, v13, v28);
      v76 = type metadata accessor for USOParse();
      v29 = v76[5];
      v30 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v13[v29], 1, v30))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v12[v29], &v13[v29], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(*(v30 - 8) + 32))(&v12[v29], &v13[v29], v30);
        __swift_storeEnumTagSinglePayload(&v12[v29], 0, 1, v30);
      }

      *&v12[v76[6]] = *&v13[v76[6]];
      v40 = v76[7];
      v41 = &v12[v40];
      v42 = &v13[v40];
      v41[4] = v42[4];
      *v41 = *v42;
      goto LABEL_19;
    case 7u:
      v79 = v9;
      v32 = sub_1DD0DB4BC();
      (*(*(v32 - 8) + 32))(v12, v13, v32);
      v77 = type metadata accessor for USOParse();
      v33 = v77[5];
      v34 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v13[v33], 1, v34))
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v12[v33], &v13[v33], *(*(v35 - 8) + 64));
      }

      else
      {
        (*(*(v34 - 8) + 32))(&v12[v33], &v13[v33], v34);
        __swift_storeEnumTagSinglePayload(&v12[v33], 0, 1, v34);
      }

      *&v12[v77[6]] = *&v13[v77[6]];
      v43 = v77[7];
      v44 = &v12[v43];
      v45 = &v13[v43];
      v44[4] = v45[4];
      *v44 = *v45;
      v46 = type metadata accessor for LinkParse();
      *&v12[v46[5]] = *&v13[v46[5]];
      *&v12[v46[6]] = *&v13[v46[6]];
      *&v12[v46[7]] = *&v13[v46[7]];
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v9 = v79;
      break;
    case 8u:
      v73 = v10;
      v16 = sub_1DD0DD12C();
      (*(*(v16 - 8) + 32))(v12, v13, v16);
      v17 = type metadata accessor for NLRouterParse();
      *&v12[*(v17 + 20)] = *&v13[*(v17 + 20)];
      v74 = v17;
      v18 = *(v17 + 24);
      v78 = &v12[v18];
      v19 = &v13[v18];
      v20 = type metadata accessor for USOParse();
      v75 = v19;
      v21 = v19;
      v22 = v20;
      if (__swift_getEnumTagSinglePayload(v21, 1, v20))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v78, v75, *(*(v23 - 8) + 64));
        v10 = v73;
      }

      else
      {
        v36 = sub_1DD0DB4BC();
        (*(*(v36 - 8) + 32))(v78, v75, v36);
        v72 = v22;
        v37 = *(v22 + 20);
        v38 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v75[v37], 1, v38))
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v78[v37], &v75[v37], *(*(v39 - 8) + 64));
        }

        else
        {
          (*(*(v38 - 8) + 32))(&v78[v37], &v75[v37], v38);
          __swift_storeEnumTagSinglePayload(&v78[v37], 0, 1, v38);
        }

        v10 = v73;
        *&v78[*(v72 + 24)] = *&v75[*(v72 + 24)];
        v47 = *(v72 + 28);
        v48 = &v78[v47];
        v49 = &v75[v47];
        v48[4] = v49[4];
        *v48 = *v49;
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
      }

      *&v12[*(v74 + 28)] = *&v13[*(v74 + 28)];
      goto LABEL_23;
    case 9u:
      v26 = sub_1DD0DD08C();
      (*(*(v26 - 8) + 32))(v12, v13, v26);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v12, v13, *(*(v14 - 8) + 64));
      break;
  }

  *&v7[v10[6]] = *&v8[v10[6]];
  v50 = v10[7];
  v51 = &v7[v50];
  v52 = &v8[v50];
  v53 = *(v52 + 1);
  *v51 = *v52;
  *(v51 + 1) = v53;
  *(v51 + 4) = *(v52 + 4);
  v7[v10[8]] = v8[v10[8]];
  v54 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v54] = *&a2[v54];
  v55 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v56 = &a1[v55];
  v57 = &a2[v55];
  v58 = type metadata accessor for ActionParaphrase(0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58))
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960);
    memcpy(v56, v57, *(*(v59 - 8) + 64));
  }

  else
  {
    v60 = v9;
    *v56 = *v57;
    v61 = *(v58 + 20);
    v62 = &v56[v61];
    v63 = &v57[v61];
    v64 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64))
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
      memcpy(v62, v63, *(*(v65 - 8) + 64));
    }

    else
    {
      v66 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v66;
      v67 = *(v64 + 24);
      v68 = sub_1DD0DB66C();
      (*(*(v68 - 8) + 32))(&v62[v67], &v63[v67], v68);
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v64);
    }

    v9 = v60;
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
  }

  v69 = a3[10];
  if (__swift_getEnumTagSinglePayload(&a2[v69], 1, v9))
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v69], &a2[v69], *(*(v70 - 8) + 64));
  }

  else
  {
    v80(&a1[v69], &a2[v69], v9);
    __swift_storeEnumTagSinglePayload(&a1[v69], 0, 1, v9);
  }

  a1[a3[11]] = a2[a3[11]];
  return a1;
}

char *assignWithTake for PluginAction(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = sub_1DD0DB04C();
  v12 = *(v11 - 8);
  v120 = *(v12 + 40);
  v120(v9, v10, v11);
  v13 = type metadata accessor for Input(0);
  v14 = v13;
  if (a1 != a2)
  {
    v121 = v12;
    v15 = *(v13 + 20);
    v16 = &v9[v15];
    v17 = &v10[v15];
    sub_1DCE50774(&v9[v15], type metadata accessor for Parse);
    v18 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v19 = sub_1DD0DC76C();
        (*(*(v19 - 8) + 32))(v16, v17, v19);
        goto LABEL_23;
      case 1u:
        v28 = sub_1DD0DC76C();
        (*(*(v28 - 8) + 32))(v16, v17, v28);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v16[*(v29 + 48)] = *&v17[*(v29 + 48)];
        goto LABEL_23;
      case 4u:
        v31 = sub_1DD0DB1EC();
        (*(*(v31 - 8) + 32))(v16, v17, v31);
        goto LABEL_23;
      case 6u:
        v32 = sub_1DD0DB4BC();
        (*(*(v32 - 8) + 32))(v16, v17, v32);
        v118 = type metadata accessor for USOParse();
        v33 = v118[5];
        v115 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v33], 1, v115))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v33], &v17[v33], *(*(v34 - 8) + 64));
        }

        else
        {
          (*(*(v115 - 8) + 32))(&v16[v33], &v17[v33]);
          __swift_storeEnumTagSinglePayload(&v16[v33], 0, 1, v115);
        }

        *&v16[v118[6]] = *&v17[v118[6]];
        v42 = v118[7];
        v43 = &v16[v42];
        v44 = &v17[v42];
        v43[4] = v44[4];
        *v43 = *v44;
        goto LABEL_23;
      case 7u:
        v35 = sub_1DD0DB4BC();
        (*(*(v35 - 8) + 32))(v16, v17, v35);
        v119 = type metadata accessor for USOParse();
        v36 = v119[5];
        v116 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v17[v36], 1, v116))
        {
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v16[v36], &v17[v36], *(*(v37 - 8) + 64));
        }

        else
        {
          (*(*(v116 - 8) + 32))(&v16[v36], &v17[v36]);
          __swift_storeEnumTagSinglePayload(&v16[v36], 0, 1, v116);
        }

        *&v16[v119[6]] = *&v17[v119[6]];
        v45 = v119[7];
        v46 = &v16[v45];
        v47 = &v17[v45];
        v46[4] = v47[4];
        *v46 = *v47;
        v48 = type metadata accessor for LinkParse();
        *&v16[v48[5]] = *&v17[v48[5]];
        *&v16[v48[6]] = *&v17[v48[6]];
        *&v16[v48[7]] = *&v17[v48[7]];
        goto LABEL_23;
      case 8u:
        v112 = v11;
        v20 = sub_1DD0DD12C();
        (*(*(v20 - 8) + 32))(v16, v17, v20);
        v21 = type metadata accessor for NLRouterParse();
        *&v16[*(v21 + 20)] = *&v17[*(v21 + 20)];
        v113 = v21;
        v22 = *(v21 + 24);
        v117 = &v16[v22];
        v23 = &v17[v22];
        v24 = type metadata accessor for USOParse();
        v114 = v23;
        v25 = v23;
        v26 = v24;
        if (__swift_getEnumTagSinglePayload(v25, 1, v24))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v117, v114, *(*(v27 - 8) + 64));
          v11 = v112;
        }

        else
        {
          v38 = sub_1DD0DB4BC();
          (*(*(v38 - 8) + 32))(v117, v114, v38);
          v111 = v26;
          v39 = *(v26 + 20);
          v40 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v114[v39], 1, v40))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v117[v39], &v114[v39], *(*(v41 - 8) + 64));
          }

          else
          {
            (*(*(v40 - 8) + 32))(&v117[v39], &v114[v39], v40);
            __swift_storeEnumTagSinglePayload(&v117[v39], 0, 1, v40);
          }

          v11 = v112;
          *&v117[*(v111 + 24)] = *&v114[*(v111 + 24)];
          v49 = *(v111 + 28);
          v50 = &v117[v49];
          v51 = &v114[v49];
          v50[4] = v51[4];
          *v50 = *v51;
          __swift_storeEnumTagSinglePayload(v117, 0, 1, v111);
        }

        *&v16[*(v113 + 28)] = *&v17[*(v113 + 28)];
        goto LABEL_23;
      case 9u:
        v30 = sub_1DD0DD08C();
        (*(*(v30 - 8) + 32))(v16, v17, v30);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v16, v17, *(*(v18 - 8) + 64));
        break;
    }

    v12 = v121;
  }

  v52 = v14[6];
  v53 = *&v9[v52];
  *&v9[v52] = *&v10[v52];

  v54 = v14[7];
  v55 = &v9[v54];
  v56 = &v10[v54];
  if (*&v9[v54 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v57 = *(v56 + 1);
  *v55 = *v56;
  *(v55 + 1) = v57;
  *(v55 + 4) = *(v56 + 4);
  v9[v14[8]] = v10[v14[8]];
  v58 = a3[6];
  v59 = *&a1[v58];
  *&a1[v58] = *&a2[v58];

  v60 = a3[7];
  v61 = *&a1[v60];
  *&a1[v60] = *&a2[v60];

  v62 = a3[8];
  v63 = &a1[v62];
  v64 = &a2[v62];
  v66 = *v64;
  v65 = *(v64 + 1);
  v67 = *(v63 + 1);
  *v63 = v66;
  *(v63 + 1) = v65;

  v68 = a3[9];
  v69 = &a1[v68];
  v70 = &a2[v68];
  v71 = type metadata accessor for ActionParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v71);
  v73 = __swift_getEnumTagSinglePayload(v70, 1, v71);
  if (EnumTagSinglePayload)
  {
    if (!v73)
    {
      *v69 = *v70;
      v74 = *(v71 + 20);
      v75 = (v69 + v74);
      v76 = (v70 + v74);
      v77 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      if (__swift_getEnumTagSinglePayload(v76, 1, v77))
      {
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
        memcpy(v75, v76, *(*(v78 - 8) + 64));
      }

      else
      {
        v95 = v76[1];
        *v75 = *v76;
        v75[1] = v95;
        v122 = v12;
        v96 = *(v77 + 24);
        v97 = sub_1DD0DB66C();
        v98 = v75 + v96;
        v99 = v76 + v96;
        v12 = v122;
        (*(*(v97 - 8) + 32))(v98, v99, v97);
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v77);
      }

      v93 = v69;
      v94 = v71;
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (v73)
  {
    sub_1DCE50774(v69, type metadata accessor for ActionParaphrase);
LABEL_33:
    v79 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B28, &unk_1DD0EE960) - 8) + 64);
    v80 = v69;
    v81 = v70;
LABEL_34:
    memcpy(v80, v81, v79);
    goto LABEL_41;
  }

  v82 = *(v70 + 8);
  v83 = *(v69 + 8);
  *v69 = *v70;
  *(v69 + 8) = v82;

  v84 = *(v71 + 20);
  v85 = v69 + v84;
  v86 = v70 + v84;
  v87 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  v88 = __swift_getEnumTagSinglePayload(v85, 1, v87);
  v89 = __swift_getEnumTagSinglePayload(v86, 1, v87);
  if (v88)
  {
    if (!v89)
    {
      v90 = *(v86 + 16);
      *v85 = *v86;
      *(v85 + 16) = v90;
      v91 = *(v87 + 24);
      v92 = sub_1DD0DB66C();
      (*(*(v92 - 8) + 32))(v85 + v91, v86 + v91, v92);
      v93 = v85;
      v94 = v87;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v93, 0, 1, v94);
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  if (v89)
  {
    sub_1DCE50774(v85, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
LABEL_51:
    v79 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00) - 8) + 64);
    v80 = v85;
    v81 = v86;
    goto LABEL_34;
  }

  v105 = *(v86 + 8);
  v106 = *(v85 + 8);
  *v85 = *v86;
  *(v85 + 8) = v105;

  v107 = *(v86 + 24);
  v108 = *(v85 + 24);
  *(v85 + 16) = *(v86 + 16);
  *(v85 + 24) = v107;

  v109 = *(v87 + 24);
  v110 = sub_1DD0DB66C();
  (*(*(v110 - 8) + 40))(v85 + v109, v86 + v109, v110);
LABEL_41:
  v100 = a3[10];
  v101 = __swift_getEnumTagSinglePayload(&a1[v100], 1, v11);
  v102 = __swift_getEnumTagSinglePayload(&a2[v100], 1, v11);
  if (!v101)
  {
    if (!v102)
    {
      v120(&a1[v100], &a2[v100], v11);
      goto LABEL_47;
    }

    (*(v12 + 8))(&a1[v100], v11);
    goto LABEL_46;
  }

  if (v102)
  {
LABEL_46:
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v100], &a2[v100], *(*(v103 - 8) + 64));
    goto LABEL_47;
  }

  (*(v12 + 32))(&a1[v100], &a2[v100], v11);
  __swift_storeEnumTagSinglePayload(&a1[v100], 0, 1, v11);
LABEL_47:
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

void sub_1DCE51CDC()
{
  v0 = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1DCE51E40(319, qword_1EDE4E6F8, type metadata accessor for ActionParaphrase);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1DCE51E40(319, &qword_1EDE4F1E8, MEMORY[0x1E69695A8]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1DCE51E40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD0DE97C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PluginAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCE51F74()
{
  result = qword_1ECCA7FE0;
  if (!qword_1ECCA7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FE0);
  }

  return result;
}

unint64_t sub_1DCE51FCC()
{
  result = qword_1ECCA7FE8;
  if (!qword_1ECCA7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FE8);
  }

  return result;
}

unint64_t sub_1DCE52024()
{
  result = qword_1ECCA7FF0;
  if (!qword_1ECCA7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FF0);
  }

  return result;
}

uint64_t sub_1DCE52078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCE5211C;

  return PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()(a1, a2);
}

uint64_t sub_1DCE5211C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 16);
  v6 = *v3;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCE52248()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1DCE52340;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE52340()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE52444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  (*(a4 + 8))(sub_1DCE543AC, v14, a3, a4);
}

uint64_t sub_1DCE525C0()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_48_1();
  if ((v4(v3, v1) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag + 24);
  v6 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag), v5);
  return (*(v6 + 8))(v5, v6) & 1;
}

uint64_t PostPersonalDomainActivityNotificationFlow.__allocating_init(strategy:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PostPersonalDomainActivityNotificationFlow.init(strategy:)(a1);
  return v5;
}

uint64_t PostPersonalDomainActivityNotificationFlow.init(strategy:)(uint64_t *a1)
{
  sub_1DCB17CA0(a1, v7);
  v3 = swift_allocObject();
  sub_1DCAFF9E8(v7, v3 + 16);
  *(v1 + 16) = &unk_1DD0FC720;
  *(v1 + 24) = v3;
  if (qword_1EDE4BFB0 != -1)
  {
    OUTLINED_FUNCTION_6_58();
  }

  sub_1DCB17CA0(&qword_1EDE4BFB8, v1 + 32);
  if (qword_1EDE4BF58 != -1)
  {
    OUTLINED_FUNCTION_5_79();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  v5 = __swift_project_value_buffer(v4, qword_1EDE4BF60);
  sub_1DCE53A10(v5, v1 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_homeInfo);
  if (qword_1EDE4BFE0 != -1)
  {
    OUTLINED_FUNCTION_4_85();
  }

  sub_1DCB17CA0(&qword_1EDE4BFE8, v1 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_aceService);
  if (qword_1EDE4BF78 != -1)
  {
    OUTLINED_FUNCTION_3_92();
  }

  sub_1DCB17CA0(&byte_1EDE4BF80, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DCAFF9E8(v7, v1 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag);
  return v1;
}

uint64_t sub_1DCE52834()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1DCE52924;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE52924()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE52A44()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCE52ACC;

  return sub_1DCE52814(v0 + 16);
}

uint64_t sub_1DCE52ACC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v1, v0);
}

uint64_t sub_1DCE52BC4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  (*(v11 + 8))(sub_1DCE5428C, v13, v10, v11);
}

uint64_t sub_1DCE52D3C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
    return sub_1DD0DE45C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
    return sub_1DD0DE46C();
  }
}

void PostPersonalDomainActivityNotificationFlow.__allocating_init(notificationBodyProvider:)()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_48_1();
  PostPersonalDomainActivityNotificationFlow.init(notificationBodyProvider:)(v4, v0);
}

void PostPersonalDomainActivityNotificationFlow.init(notificationBodyProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE52F3C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DCE52FC8;

  return sub_1DCE532F0();
}

uint64_t sub_1DCE52FC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE530C4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE5311C()
{
  v18 = v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Got error generating body for personal request activity notification. Will ignore... %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DCE532F0()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1DD0DB04C();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE533E0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  if (sub_1DCE525C0())
  {
    v2 = v0[2];
    v3 = *(v2 + 24);
    v10 = (*(v2 + 16) + **(v2 + 16));
    v4 = *(*(v2 + 16) + 4);
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1DCE53518;

    return v10();
  }

  else
  {
    v7 = v0[6];
    v8 = v0[3];

    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1DCE53518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v10 = *(v9 + 56);
  v11 = *v3;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v2)
  {
    v13 = v7[6];
    v14 = v7[3];

    v15 = *(v11 + 8);

    return v15();
  }

  else
  {
    v7[8] = a2;
    v7[9] = a1;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

void sub_1DCE53674()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7950]) init];
  sub_1DD0DB03C();
  v8 = sub_1DD0DAFFC();
  v10 = v9;
  (*(v4 + 8))(v3, v5);
  sub_1DCB4D8E8(v8, v10, v7);
  sub_1DCE54220(v1, v2, v7);
  v11 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v6[7]);
  v12 = *(v11 + 200);
  v13 = OUTLINED_FUNCTION_48_1();
  v14(v13, v11);
  if (v15)
  {
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_48_1();
  }

  else
  {
    v3 = 0;
  }

  v16 = v0[2];
  v17 = v0[3];
  [v7 setOriginatingDeviceName_];

  sub_1DCE53A10(v16 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_homeInfo, v17);
  sub_1DD0DD00C();
}

void sub_1DCE538D8()
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  v0 = qword_1EDE46630;
  qword_1EDE4BFD0 = type metadata accessor for RefreshableDeviceState();
  unk_1EDE4BFD8 = &protocol witness table for RefreshableDeviceState;
  qword_1EDE4BFB8 = v0;
  sub_1DD0DCF8C();
}

void sub_1DCE53970()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  __swift_allocate_value_buffer(v0, qword_1EDE4BF60);
  __swift_project_value_buffer(v0, qword_1EDE4BF60);
  sub_1DD0DCA6C();
}

uint64_t sub_1DCE53A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCE53A80()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCE53B18()
{
  qword_1EDE4BF98 = &type metadata for FeatureFlagDefinitions.PersonalDomains;
  unk_1EDE4BFA0 = &off_1F585CB28;
  byte_1EDE4BF80 = 0;
}

uint64_t PostPersonalDomainActivityNotificationFlow.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_1DCE53D18(v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_homeInfo);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_aceService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow42PostPersonalDomainActivityNotificationFlow_featureFlag));
  return v0;
}

uint64_t PostPersonalDomainActivityNotificationFlow.__deallocating_deinit()
{
  PostPersonalDomainActivityNotificationFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCE53BEC(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCE53C88()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCE52F3C();
}

uint64_t sub_1DCE53D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7F90, &unk_1DD0FC3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DCE53D80(uint64_t a1)
{
  result = sub_1DCE53DA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCE53DA8()
{
  result = qword_1ECCA7FF8;
  if (!qword_1ECCA7FF8)
  {
    type metadata accessor for PostPersonalDomainActivityNotificationFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7FF8);
  }

  return result;
}

uint64_t type metadata accessor for PostPersonalDomainActivityNotificationFlow()
{
  result = qword_1EDE4BEF8;
  if (!qword_1EDE4BEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()()
{
  OUTLINED_FUNCTION_60();
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCE543B4;

  return v8(v1, v0);
}

uint64_t sub_1DCE53F7C()
{
  result = sub_1DCE541C8();
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

uint64_t dispatch thunk of PostPersonalDomainActivityNotificationFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = *(*v0 + 168);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v2);
}

uint64_t sub_1DCE541C8()
{
  result = qword_1EDE46348;
  if (!qword_1EDE46348)
  {
    sub_1DD0DD00C();
  }

  return result;
}

void sub_1DCE54220(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setNotificationBody_];
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8000, &unk_1DD0FC880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t PrepareResponseType.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t static PrepareResponse.ongoing(needsExecute:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t static PrepareResponse.ongoing<A>(next:)()
{
  result = OUTLINED_FUNCTION_0_82();
  *v0 = 0;
  *(v0 + 8) = result;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void static PrepareResponse.ongoing<A>(next:childCompletion:)()
{
  Flow.eraseToAnyFlow()();
  type metadata accessor for AnyChildCompletion();
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void static PrepareResponse.complete()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t static PrepareResponse.complete<A>(next:)()
{
  result = OUTLINED_FUNCTION_0_82();
  *v0 = 1;
  *(v0 + 8) = result;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

unint64_t sub_1DCE545BC()
{
  result = qword_1ECCA8008;
  if (!qword_1ECCA8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrepareResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void initializeWithCopy for PrepareResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_1DD0DCF8C();
}

void assignWithCopy for PrepareResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for PrepareResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for PrepareResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PrepareResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ResponseComponents.init(dialog:_:)()
{
  *&v1 = OUTLINED_FUNCTION_7_53();
  *(v0 + 8) = v1;
  *(v0 + 24) = v1;
  *(v0 + 40) = v1;
  *(v0 + 56) = v1;
  *(v0 + 72) = v1;
  *(v0 + 88) = v1;
  *(v0 + 104) = v1;
  v3 = *(v2 + 36);
  sub_1DD0DCC3C();
}

id static PresentationElements.responseFrameworkPattern(patternExecutionResult:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t ResponseComponents.dialog.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ResponseComponents.viewId.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t ResponseComponents.viewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ResponseComponents.responseViewId.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t ResponseComponents.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

void ResponseComponents.init(resultModel:_:)()
{
  *&v1 = OUTLINED_FUNCTION_7_53();
  *v0 = v1;
  *(v0 + 16) = v1;
  *(v0 + 32) = v1;
  *(v0 + 48) = v1;
  *(v0 + 64) = v1;
  *(v0 + 80) = v1;
  *(v0 + 96) = v1;
  *(v0 + 112) = 0;
  v3 = *(v2 + 36);
  sub_1DD0DCC3C();
}

void ResponseComponents.init(conversationModel:_:)()
{
  *&v1 = OUTLINED_FUNCTION_7_53();
  *v0 = v1;
  *(v0 + 16) = v1;
  *(v0 + 32) = v1;
  *(v0 + 64) = v1;
  *(v0 + 80) = v1;
  *(v0 + 96) = v1;
  *(v0 + 112) = 0;
  *(v0 + 48) = v1;
  v3 = *(v2 + 36);
  sub_1DD0DCC3C();
}

uint64_t ResponseUpdateComponents.viewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t ResponseUpdateComponents.init(viewId:update:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_1DCAFF9E8(a3, (a4 + 2));
}

void static PresentationElements.== infix(_:_:)()
{
  v0 = type metadata accessor for ResponseComponents(0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v94 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v93 = (&v89 - v6);
  v7 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v89 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = (&v89 - v21);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v89 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8018, &qword_1DD0FC970);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v31 = &v89 - v30;
  v32 = &v89 + *(v29 + 56) - v30;
  sub_1DCE56C60();
  sub_1DCE56C60();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_83();
      v40 = v31;
      sub_1DCE56C60();
      v41 = *v22;
      if (OUTLINED_FUNCTION_20_25() != 1)
      {

        v31 = v40;
        goto LABEL_21;
      }

      v42 = *v32;
      v43 = [v41 patternId];
      v44 = sub_1DD0DDFBC();
      v46 = v45;

      v47 = [v42 patternId];
      v48 = sub_1DD0DDFBC();
      v50 = v49;

      if (v44 != v48 || v46 != v50)
      {
        sub_1DD0DF0AC();
      }

      OUTLINED_FUNCTION_1_91();
      v66 = v40;
      goto LABEL_31;
    case 2u:
      OUTLINED_FUNCTION_0_83();
      sub_1DCE56C60();
      if (OUTLINED_FUNCTION_20_25() == 2)
      {
        v35 = v93;
        sub_1DCE56B8C(v18, v93);
        v36 = v94;
        sub_1DCE56B8C(v32, v94);
        sub_1DCE555D0(v35, v36);
        sub_1DCE56B34(v36, type metadata accessor for ResponseComponents);
        sub_1DCE56B34(v35, type metadata accessor for ResponseComponents);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_86();
      sub_1DCE56B34(v18, v52);
      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_0_83();
      sub_1DCE56C60();
      if (OUTLINED_FUNCTION_20_25() != 3)
      {
        sub_1DCBB5C74(v14);
        goto LABEL_21;
      }

      v37 = *(v14 + 1);
      v97[0] = *v14;
      v97[1] = v37;
      v97[2] = *(v14 + 2);
      v98 = *(v14 + 6);
      v38 = *(v32 + 1);
      v95[0] = *v32;
      v95[1] = v38;
      v95[2] = *(v32 + 2);
      v96 = *(v32 + 6);
      if (*&v97[0] != *&v95[0] || *(&v97[0] + 1) != *(&v95[0] + 1))
      {
        sub_1DD0DF0AC();
      }

      sub_1DCBB5C74(v95);
      sub_1DCBB5C74(v97);
LABEL_29:
      OUTLINED_FUNCTION_1_91();
      v66 = v31;
LABEL_31:
      sub_1DCE56B34(v66, v65);
      return;
    default:
      OUTLINED_FUNCTION_0_83();
      v92 = v31;
      sub_1DCE56C60();
      v34 = *v25;
      v33 = *(v25 + 1);
      if (OUTLINED_FUNCTION_20_25())
      {

        v31 = v92;
LABEL_21:
        sub_1DCB0E9D8(v31, &qword_1ECCA8018, &qword_1DD0FC970);
        return;
      }

      v53 = *v32;
      v54 = *(v32 + 1);
      v55 = [v34 catId];
      v56 = sub_1DD0DDFBC();
      v58 = v57;

      v59 = [v53 catId];
      v60 = sub_1DD0DDFBC();
      v62 = v61;

      if (v56 == v60 && v58 == v62)
      {
      }

      else
      {
        v64 = sub_1DD0DF0AC();

        if ((v64 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v67 = sub_1DCB08B14(v33);
      if (v67 != sub_1DCB08B14(v54))
      {
LABEL_57:

        goto LABEL_58;
      }

      v90 = v34;
      v91 = v53;
      v68 = sub_1DCB08B14(v33);
      v93 = (v33 & 0xFFFFFFFFFFFFFF8);
      v94 = v33 & 0xC000000000000001;
      v69 = v54 & 0xC000000000000001;
      v70 = v54;
      v71 = v54 & 0xFFFFFFFFFFFFFF8;
      v72 = -v68;
      for (i = 4; ; ++i)
      {
        if (v72 + i == 4)
        {

          OUTLINED_FUNCTION_1_91();
          sub_1DCE56B34(v92, v88);
          return;
        }

        v74 = i - 4;
        if (v94)
        {
          v86 = OUTLINED_FUNCTION_33_1();
          v75 = MEMORY[0x1E12A72C0](v86);
        }

        else
        {
          if (v74 >= v93[2])
          {
            goto LABEL_62;
          }

          v75 = *(v33 + 8 * i);
        }

        if (__OFADD__(v74, 1))
        {
          break;
        }

        v76 = v75;
        v77 = sub_1DCE56BF0(v76);
        v79 = v78;
        if (v69)
        {
          v80 = MEMORY[0x1E12A72C0](i - 4, v70);
        }

        else
        {
          if (v74 >= *(v71 + 16))
          {
            goto LABEL_63;
          }

          v80 = *(v70 + 8 * i);
        }

        v81 = sub_1DCE56BF0(v80);
        v83 = v82;
        if (v79)
        {
          if (!v82)
          {

            goto LABEL_58;
          }

          if (v77 == v81 && v79 == v82)
          {
          }

          else
          {
            v85 = sub_1DD0DF0AC();

            if ((v85 & 1) == 0)
            {

LABEL_58:

              OUTLINED_FUNCTION_1_91();
              sub_1DCE56B34(v92, v87);
              return;
            }
          }
        }

        else
        {

          if (v83)
          {

            goto LABEL_58;
          }
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      return;
  }
}

uint64_t sub_1DCE555D0(void *a1, uint64_t *a2)
{
  v4 = a1[12];
  v5 = a2[12];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[11] == a2[11] && v4 == v5;
    if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[14];
  v8 = a2[14];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[13] == a2[13] && v7 == v8;
  if (!v9 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  sub_1DCB8878C();
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v10 = sub_1DD0DB28C();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  sub_1DCB8878C();
  if (!v49)
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    if (v12 >> 60 != 15)
    {
LABEL_69:
      v13 = 0;
      v15 = 0xF000000000000000;
      goto LABEL_70;
    }

    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(v48, v49);
  v13 = sub_1DD0DB28C();
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_70;
    }

LABEL_27:
    sub_1DCB2C520(v10, v12);
    goto LABEL_28;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_70;
  }

  sub_1DCC91E6C(v10, v12);
  sub_1DCC91E6C(v13, v15);
  v17 = MEMORY[0x1E12A3570](v10, v12, v13, v15);
  sub_1DCB2C520(v13, v15);
  sub_1DCB2C520(v13, v15);
  sub_1DCB2C520(v10, v12);
  sub_1DCB2C520(v10, v12);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  sub_1DCB8878C();
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v10 = sub_1DD0DB28C();
    v12 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  sub_1DCB8878C();
  if (!v49)
  {
    sub_1DCB0E9D8(v48, &qword_1ECCA1838, &unk_1DD0FC960);
    if (v12 >> 60 == 15)
    {
LABEL_39:
      sub_1DCB2C520(v10, v12);
      goto LABEL_40;
    }

    goto LABEL_69;
  }

  __swift_project_boxed_opaque_existential_1(v48, v49);
  v13 = sub_1DD0DB28C();
  v15 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_70;
    }

    goto LABEL_39;
  }

  if (v15 >> 60 == 15)
  {
LABEL_70:
    sub_1DCB2C520(v10, v12);
    sub_1DCB2C520(v13, v15);
    return 0;
  }

  sub_1DCC91E6C(v10, v12);
  sub_1DCC91E6C(v13, v15);
  v45 = MEMORY[0x1E12A3570](v10, v12, v13, v15);
  sub_1DCB2C520(v13, v15);
  sub_1DCB2C520(v13, v15);
  sub_1DCB2C520(v10, v12);
  sub_1DCB2C520(v10, v12);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v19 = *a1;
  if (!*a1)
  {
    return *a2 == 0;
  }

  v20 = *a2;
  if (!v20)
  {
    return 0;
  }

  v21 = sub_1DCB08B14(*a1);
  if (v21 != sub_1DCB08B14(v20))
  {
    return 0;
  }

  v22 = sub_1DCB08B14(v19);
  v46 = v20 & 0xFFFFFFFFFFFFFF8;

  v47 = -v22;
  v24 = 4;
  while (1)
  {
    if (v47 + v24 == 4)
    {

      return 1;
    }

    v25 = v24 - 4;
    if ((v19 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12A72C0](v24 - 4, v19);
    }

    else
    {
      if (v25 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      result = *(v19 + 8 * v24);
    }

    v26 = result;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E12A72C0](v24 - 4, v20);
    }

    else
    {
      if (v25 >= *(v46 + 16))
      {
        goto LABEL_81;
      }

      v27 = *(v20 + 8 * v24);
    }

    v28 = v27;
    v29 = [v26 catId];
    v30 = sub_1DD0DDFBC();
    v32 = v31;

    v33 = [v28 catId];
    v34 = sub_1DD0DDFBC();
    v36 = v35;

    if (v30 == v34 && v32 == v36)
    {
    }

    else
    {
      v38 = sub_1DD0DF0AC();

      if ((v38 & 1) == 0)
      {

LABEL_78:

        return 0;
      }
    }

    v39 = [v26 dialog];
    sub_1DCE5993C();
    v40 = sub_1DD0DE2EC();

    if (v40 >> 62)
    {
      v41 = sub_1DD0DEB3C();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = [v28 dialog];
    v43 = sub_1DD0DE2EC();

    if (v43 >> 62)
    {
      v44 = sub_1DD0DEB3C();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v24;
    if (v41 != v44)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t static PresentationElements.legacy(catResult:snippets:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1DCC6E8F0();
  *a2 = v4;
  a2[1] = a1;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
}

uint64_t static PresentationElements.legacy(dialogExecutionResult:snippets:)()
{
  OUTLINED_FUNCTION_21();
  *v3 = v1;
  v3[1] = v2;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
  v4 = v0;
}

uint64_t static PresentationElements.responseFramework(responseComponents:)()
{
  sub_1DCE56C60();
  OUTLINED_FUNCTION_6_59();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static PresentationElements.responseFrameworkUpdate(updateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DCE56CB8(a1, a2);
  OUTLINED_FUNCTION_6_59();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCE55DC0()
{
  v0 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_83();
  sub_1DCE56C60();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DCE56B34(v6, type metadata accessor for PresentationElements.PresentationElementsBase);
      v7 = 0xD000000000000019;
      break;
    case 2u:
      v7 = 0xD000000000000012;
      OUTLINED_FUNCTION_4_86();
      sub_1DCE56B34(v6, v8);
      break;
    case 3u:
      sub_1DCBB5C74(v6);
      v7 = 0xD000000000000018;
      break;
    default:
      sub_1DCE56B34(v6, type metadata accessor for PresentationElements.PresentationElementsBase);
      v7 = 0x79636167656C2ELL;
      break;
  }

  return v7;
}

uint64_t sub_1DCE55F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v10[1] = sub_1DCB4AE1C;

  return PresentationElementsProviding.makePresentationElements(responseId:catId:catParameters:visualParameters:)(v10, v11, v12, v13, v14, v15, v16, a8);
}

uint64_t sub_1DCE55FF0()
{
  OUTLINED_FUNCTION_16_45();
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  v0 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v0);

  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780](0xD000000000000012);
  sub_1DCE56CF0();
  swift_allocError();
  *v1 = v4;
  v1[1] = v5;
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE5611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = swift_task_alloc();
  *(v7 + 16) = v9;
  *v9 = v7;
  v9[1] = sub_1DCB4AE1C;

  return PresentationElementsProviding.makePresentationElements(responseId:patternId:patternParameters:)(v9, v10, v11, v12, v13, v14, a7);
}

uint64_t sub_1DCE561C4()
{
  OUTLINED_FUNCTION_16_45();
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  v0 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v0);

  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_9_61();
  MEMORY[0x1E12A6780](0xD000000000000012);
  sub_1DCE56CF0();
  swift_allocError();
  *v1 = v4;
  v1[1] = v5;
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE562F0(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  return 0x6D656C706D696E55;
}

uint64_t sub_1DCE56380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCA8010 = result;
  return result;
}

uint64_t sub_1DCE56418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE56434()
{
  v1 = v0[6];
  v2 = __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = v1[2];
  if (qword_1ECCA1350 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECCA8010;
  v0[7] = qword_1ECCA8010;
  v5 = *v2;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_17_35(v6);

  return sub_1DCC70910(v3, v7, v8, v9, 0, v4);
}

uint64_t sub_1DCE56534(uint64_t a1)
{
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  v6 = *(v4 + 64);
  v7 = *(v4 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v5 + 72) = a1;
    v12 = OUTLINED_FUNCTION_24_4();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DCE56690()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  *v1 = *(v0 + 72);
  v1[1] = v2;
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE56708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE56724()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);
  v2 = __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = v1[2];
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_17_35(v5);

  return sub_1DCC71374(v3, v6, v7, v8);
}

uint64_t sub_1DCE567C4(uint64_t a1)
{
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  v6 = *(v4 + 56);
  v7 = *v2;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 64) = a1;
    v11 = OUTLINED_FUNCTION_24_4();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1DCE568F8()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_6_59();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE56968()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE569A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AD3C;

  return sub_1DCE56418(a1, v13, v14, a4, a5, a6);
}

uint64_t sub_1DCE56A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return sub_1DCE56708(a1, v13, v14, a4, a5, a6);
}

uint64_t sub_1DCE56B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCE56B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE56BF0(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCE56C60()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

unint64_t sub_1DCE56CF0()
{
  result = qword_1ECCA8020;
  if (!qword_1ECCA8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8020);
  }

  return result;
}

void initializeBufferWithCopyOfBuffer for ResponseComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v4 & 0x20000) == 0)
  {
    v7 = *(a2 + 32);

    if (v7)
    {
      v8 = *(a2 + 40);
      *(a1 + 32) = v7;
      *(a1 + 40) = v8;
      (**(v7 - 8))(a1 + 8, a2 + 8, v7);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
    }

    v9 = *(a2 + 72);
    if (v9)
    {
      v10 = *(a2 + 80);
      *(a1 + 72) = v9;
      *(a1 + 80) = v10;
      (**(v9 - 8))(a1 + 48, a2 + 48);
    }

    else
    {
      v11 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v11;
      *(a1 + 80) = *(a2 + 80);
    }

    v12 = *(a2 + 96);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v12;
    v13 = *(a2 + 112);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = v13;
    v14 = *(a3 + 36);
    sub_1DD0DCC3C();
  }

  sub_1DD0DCF8C();
}

void destroy for ResponseComponents(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  if (a1[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  v5 = a1[12];

  v6 = a1[14];

  v7 = *(a2 + 36);
  sub_1DD0DCC3C();
}

void initializeWithCopy for ResponseComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = *(a2 + 32);

  if (v7)
  {
    v8 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    (**(v7 - 8))(a1 + 8, a2 + 8, v7);
  }

  else
  {
    v9 = *(a2 + 24);
    *v6 = *(a2 + 8);
    *(a1 + 24) = v9;
    *(a1 + 40) = *(a2 + 40);
  }

  v10 = *(a2 + 72);
  if (v10)
  {
    v11 = *(a2 + 80);
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    (**(v10 - 8))(a1 + 48, a2 + 48);
  }

  else
  {
    v12 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v12;
    *(a1 + 80) = *(a2 + 80);
  }

  v13 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v13;
  v14 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v14;
  v15 = *(a3 + 36);
  sub_1DD0DCC3C();
}

void assignWithCopy for ResponseComponents(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[4];
  if (a1[4])
  {
    v8 = a1 + 1;
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, a2 + 1);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else if (v7)
  {
    a1[4] = v7;
    a1[5] = a2[5];
    (**(v7 - 8))((a1 + 1), (a2 + 1));
    goto LABEL_8;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  a1[5] = a2[5];
  *(a1 + 3) = v10;
  *(a1 + 1) = v9;
LABEL_8:
  v11 = a2[9];
  if (a1[9])
  {
    v12 = a1 + 6;
    if (v11)
    {
      __swift_assign_boxed_opaque_existential_1(v12, a2 + 6);
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else if (v11)
  {
    a1[9] = v11;
    a1[10] = a2[10];
    (**(v11 - 8))((a1 + 6), (a2 + 6));
    goto LABEL_15;
  }

  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  a1[10] = a2[10];
  *(a1 + 3) = v13;
  *(a1 + 4) = v14;
LABEL_15:
  a1[11] = a2[11];
  v15 = a1[12];
  a1[12] = a2[12];

  a1[13] = a2[13];
  v16 = a1[14];
  a1[14] = a2[14];

  v17 = *(a3 + 36);
  sub_1DD0DCC3C();
}

void initializeWithTake for ResponseComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v3;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a3 + 36);
  sub_1DD0DCC3C();
}

void assignWithTake for ResponseComponents(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a2 + 1;
  *a1 = *a2;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  v8 = *(v7 + 1);
  *(a1 + 1) = *v7;
  *(a1 + 3) = v8;
  a1[5] = v7[4];
  if (a1[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  v9 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v9;
  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  v11 = a1[12];
  a1[12] = a2[12];

  v12 = a2[14];
  v13 = a1[14];
  a1[13] = a2[13];
  a1[14] = v12;

  v14 = *(a3 + 36);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCE57798()
{
  result = sub_1DCE57848();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCE57848()
{
  result = qword_1ECCA8038;
  if (!qword_1ECCA8038)
  {
    sub_1DD0DCC3C();
  }

  return result;
}

uint64_t destroy for ResponseUpdateComponents(uint64_t a1)
{
  v2 = *(a1 + 8);

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
}

uint64_t initializeWithCopy for ResponseUpdateComponents(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;
  v7 = **(v5 - 8);

  v7(a1 + 16, a2 + 16, v6);
  return a1;
}

void *assignWithCopy for ResponseUpdateComponents(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2);
  return a1;
}

uint64_t assignWithTake for ResponseUpdateComponents(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResponseUpdateComponents(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResponseUpdateComponents(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PresentationElements(uint64_t a1, uint64_t a2)
{
  if ((*(*(type metadata accessor for PresentationElements.PresentationElementsBase(0) - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      break;
    case 2u:
      *a1 = *a2;
      v7 = *(a2 + 32);

      if (v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        (**(v7 - 8))(a1 + 8, a2 + 8, v7);
      }

      else
      {
        v15 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v15;
        *(a1 + 40) = *(a2 + 40);
      }

      v16 = *(a2 + 72);
      if (v16)
      {
        v17 = *(a2 + 80);
        *(a1 + 72) = v16;
        *(a1 + 80) = v17;
        (**(v16 - 8))(a1 + 48, a2 + 48);
      }

      else
      {
        v18 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v18;
        *(a1 + 80) = *(a2 + 80);
      }

      v19 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v19;
      v20 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v20;
      v21 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    case 3u:
      v9 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v9;
      v10 = *(a2 + 40);
      *(a1 + 40) = v10;
      v11 = v10;
      v12 = **(v10 - 8);

      v12(a1 + 16, a2 + 16, v11);
      break;
    default:
      v4 = *a2;
      v5 = *(a2 + 8);
      *a1 = v4;
      *(a1 + 8) = v5;
      v6 = v4;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for PresentationElements(uint64_t a1)
{
  type metadata accessor for PresentationElements.PresentationElementsBase(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v2 = *(a1 + 8);

      break;
    case 1u:
      v8 = *a1;

      break;
    case 2u:
      v3 = *a1;

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
      }

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
      }

      v4 = *(a1 + 96);

      v5 = *(a1 + 112);

      v6 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    case 3u:
      v7 = *(a1 + 8);

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for PresentationElements(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PresentationElements.PresentationElementsBase(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      break;
    case 2u:
      *a1 = *a2;
      v7 = *(a2 + 32);

      if (v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        (**(v7 - 8))(a1 + 8, a2 + 8, v7);
      }

      else
      {
        v15 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v15;
        *(a1 + 40) = *(a2 + 40);
      }

      v16 = *(a2 + 72);
      if (v16)
      {
        v17 = *(a2 + 80);
        *(a1 + 72) = v16;
        *(a1 + 80) = v17;
        (**(v16 - 8))(a1 + 48, a2 + 48);
      }

      else
      {
        v18 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v18;
        *(a1 + 80) = *(a2 + 80);
      }

      v19 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v19;
      v20 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v20;
      v21 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    case 3u:
      v9 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v9;
      v10 = *(a2 + 40);
      *(a1 + 40) = v10;
      v11 = v10;
      v12 = **(v10 - 8);

      v12(a1 + 16, a2 + 16, v11);
      break;
    default:
      v4 = *a2;
      v5 = *(a2 + 8);
      *a1 = v4;
      *(a1 + 8) = v5;
      v6 = v4;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for PresentationElements(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCE56B34(a1, type metadata accessor for PresentationElements.PresentationElementsBase);
    type metadata accessor for PresentationElements.PresentationElementsBase(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v9 = *a2;
        *a1 = *a2;
        v10 = v9;
        break;
      case 2u:
        *a1 = *a2;
        v6 = *(a2 + 32);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 40);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v11 = *(a2 + 8);
          v12 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
        }

        v13 = *(a2 + 72);
        if (v13)
        {
          *(a1 + 72) = v13;
          *(a1 + 80) = *(a2 + 80);
          (**(v13 - 8))(a1 + 48, a2 + 48);
        }

        else
        {
          v14 = *(a2 + 48);
          v15 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 48) = v14;
          *(a1 + 64) = v15;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        v16 = *(type metadata accessor for ResponseComponents(0) + 36);
        sub_1DD0DCC3C();
      case 3u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = *(a2 + 40);
        *(a1 + 40) = v7;
        *(a1 + 48) = *(a2 + 48);
        v8 = **(v7 - 8);

        v8(a1 + 16, a2 + 16, v7);
        break;
      default:
        v4 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v5 = v4;

        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for PresentationElements(char *a1, char *a2)
{
  v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 5) = *(a2 + 5);
    v5 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v5;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    v6 = *(type metadata accessor for ResponseComponents(0) + 36);
    sub_1DD0DCC3C();
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *assignWithTake for PresentationElements(char *result, char *a2)
{
  v2 = result;
  if (result != a2)
  {
    sub_1DCE56B34(result, type metadata accessor for PresentationElements.PresentationElementsBase);
    v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v2 = *a2;
      *(v2 + 8) = *(a2 + 8);
      *(v2 + 24) = *(a2 + 24);
      *(v2 + 5) = *(a2 + 5);
      v5 = *(a2 + 4);
      *(v2 + 3) = *(a2 + 3);
      *(v2 + 4) = v5;
      *(v2 + 10) = *(a2 + 10);
      *(v2 + 88) = *(a2 + 88);
      *(v2 + 104) = *(a2 + 104);
      v6 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    }

    v7 = *(*(v4 - 8) + 64);

    return memcpy(v2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCE58848()
{
  result = type metadata accessor for PresentationElements.PresentationElementsBase(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of PresentationElementsProviding.makePresentationElements(responseId:catId:catParameters:visualParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_11_13();
  v14 = (*(a9 + 8) + **(a9 + 8));
  v10 = *(*(a9 + 8) + 4);
  v11 = swift_task_alloc();
  *(v9 + 16) = v11;
  *v11 = v9;
  v11[1] = sub_1DCB4AD3C;
  v12 = OUTLINED_FUNCTION_8_6();

  return v14(v12);
}

uint64_t dispatch thunk of PresentationElementsProviding.makePresentationElements(responseId:patternId:patternParameters:)()
{
  OUTLINED_FUNCTION_11_13();
  v2 = *(v1 + 16);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_8_6();

  return v7(v5);
}

uint64_t sub_1DCE58B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      break;
    case 2u:
      *a1 = *a2;
      v8 = *(a2 + 32);

      if (v8)
      {
        v9 = *(a2 + 40);
        *(a1 + 32) = v8;
        *(a1 + 40) = v9;
        (**(v8 - 8))(a1 + 8, a2 + 8, v8);
      }

      else
      {
        v16 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v16;
        *(a1 + 40) = *(a2 + 40);
      }

      v17 = *(a2 + 72);
      if (v17)
      {
        v18 = *(a2 + 80);
        *(a1 + 72) = v17;
        *(a1 + 80) = v18;
        (**(v17 - 8))(a1 + 48, a2 + 48);
      }

      else
      {
        v19 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v19;
        *(a1 + 80) = *(a2 + 80);
      }

      v20 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v20;
      v21 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v21;
      v22 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    case 3u:
      v10 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v10;
      v11 = *(a2 + 40);
      *(a1 + 40) = v11;
      v12 = v11;
      v13 = **(v11 - 8);

      v13(a1 + 16, a2 + 16, v12);
      break;
    default:
      v5 = *a2;
      v6 = *(a2 + 8);
      *a1 = v5;
      *(a1 + 8) = v6;
      v7 = v5;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCE58E68(uint64_t a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v2 = *(a1 + 8);

      break;
    case 1u:
      v8 = *a1;

      break;
    case 2u:
      v3 = *a1;

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
      }

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
      }

      v4 = *(a1 + 96);

      v5 = *(a1 + 112);

      v6 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    case 3u:
      v7 = *(a1 + 8);

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
      break;
    default:
      return;
  }
}

uint64_t sub_1DCE58FEC(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      break;
    case 2u:
      *a1 = *a2;
      v7 = *(a2 + 32);

      if (v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        (**(v7 - 8))(a1 + 8, a2 + 8, v7);
      }

      else
      {
        v15 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v15;
        *(a1 + 40) = *(a2 + 40);
      }

      v16 = *(a2 + 72);
      if (v16)
      {
        v17 = *(a2 + 80);
        *(a1 + 72) = v16;
        *(a1 + 80) = v17;
        (**(v16 - 8))(a1 + 48, a2 + 48);
      }

      else
      {
        v18 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v18;
        *(a1 + 80) = *(a2 + 80);
      }

      v19 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v19;
      v20 = *(a2 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v20;
      v21 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    case 3u:
      v9 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v9;
      v10 = *(a2 + 40);
      *(a1 + 40) = v10;
      v11 = v10;
      v12 = **(v10 - 8);

      v12(a1 + 16, a2 + 16, v11);
      break;
    default:
      v4 = *a2;
      v5 = *(a2 + 8);
      *a1 = v4;
      *(a1 + 8) = v5;
      v6 = v4;

      break;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1DCE59278(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCE56B34(a1, type metadata accessor for PresentationElements.PresentationElementsBase);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v9 = *a2;
        *a1 = *a2;
        v10 = v9;
        break;
      case 2u:
        *a1 = *a2;
        v6 = *(a2 + 32);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 40);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v11 = *(a2 + 8);
          v12 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
        }

        v13 = *(a2 + 72);
        if (v13)
        {
          *(a1 + 72) = v13;
          *(a1 + 80) = *(a2 + 80);
          (**(v13 - 8))(a1 + 48, a2 + 48);
        }

        else
        {
          v14 = *(a2 + 48);
          v15 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 48) = v14;
          *(a1 + 64) = v15;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = *(a2 + 112);
        v16 = *(type metadata accessor for ResponseComponents(0) + 36);
        sub_1DD0DCC3C();
      case 3u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = *(a2 + 40);
        *(a1 + 40) = v7;
        *(a1 + 48) = *(a2 + 48);
        v8 = **(v7 - 8);

        v8(a1 + 16, a2 + 16, v7);
        break;
      default:
        v4 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v5 = v4;

        break;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1DCE59554(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 5) = *(a2 + 5);
    v6 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v6;
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    v7 = *(type metadata accessor for ResponseComponents(0) + 36);
    sub_1DD0DCC3C();
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

char *sub_1DCE596E0(char *result, char *a2, uint64_t a3)
{
  v3 = result;
  if (result != a2)
  {
    sub_1DCE56B34(result, type metadata accessor for PresentationElements.PresentationElementsBase);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v3 = *a2;
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 5) = *(a2 + 5);
      v6 = *(a2 + 4);
      *(v3 + 3) = *(a2 + 3);
      *(v3 + 4) = v6;
      *(v3 + 10) = *(a2 + 10);
      *(v3 + 88) = *(a2 + 88);
      *(v3 + 104) = *(a2 + 104);
      v7 = *(type metadata accessor for ResponseComponents(0) + 36);
      sub_1DD0DCC3C();
    }

    v8 = *(*(a3 - 8) + 64);

    return memcpy(v3, a2, v8);
  }

  return result;
}

uint64_t sub_1DCE59890()
{
  result = type metadata accessor for ResponseComponents(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t sub_1DCE5993C()
{
  result = qword_1EDE46220;
  if (!qword_1EDE46220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46220);
  }

  return result;
}

uint64_t Prompt.__allocating_init(for:interpreter:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_86();
  Prompt.init(for:interpreter:)(v4, v5);
  return v3;
}

void sub_1DCE599CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCE59A5C(unint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
  sub_1DCDB2688(a1);
  sub_1DCDB2698(v3);
  sub_1DD0DCF8C();
}

void sub_1DCE59AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE59B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return PromptProviding.segue()();
}

uint64_t PromptProviding.segue()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_25_1();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_84(v8);
  OUTLINED_FUNCTION_150();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1DCE59CB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1AF64;

  return PromptProviding.repromptOnEmptyParse()();
}

uint64_t PromptProviding.repromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_25_1();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_0_84(v8);
  OUTLINED_FUNCTION_150();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1DCE59E54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return PromptProviding.repromptOnLowConfidence()();
}

uint64_t PromptProviding.repromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCE1B7E8;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE59F78@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  v5 = *(v4 + 104);
  swift_beginAccess();
  v6 = *(v2 + 80);
  v7 = type metadata accessor for Prompt.State();
  OUTLINED_FUNCTION_2(v7);
  return (*(v8 + 16))(a1, v1 + v5);
}

uint64_t sub_1DCE5A014(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  v5 = *(v4 + 104);
  swift_beginAccess();
  v6 = *(v2 + 80);
  v7 = type metadata accessor for Prompt.State();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 40))(v1 + v5, a1);
  return swift_endAccess();
}

void sub_1DCE5A0B8()
{
  OUTLINED_FUNCTION_66();
  v2 = (v0 + *(v1 + 112));
  v3 = *v2;
  v4 = v2[1];
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE5A0FC()
{
  OUTLINED_FUNCTION_66();
  v2 = (v0 + *(v1 + 112));
  v3 = v2[1];
  *v2 = v4;
  v2[1] = v5;
}

uint64_t Prompt.init(for:interpreter:)(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_23_2();
  v6 = (v2 + *(v5 + 112));
  *v6 = nullsub_1;
  v6[1] = 0;
  sub_1DCAFF9E8(v7, v2 + 16);
  sub_1DCAFF9E8(a2, v2 + 56);
  OUTLINED_FUNCTION_66();
  v9 = *(v8 + 104);
  v10 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v2 + v9, 1, 3, v11);
  return v2;
}

void Prompt.accept(input:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v79 = a1;
  v6 = *v2;
  v75 = type metadata accessor for Parse(0);
  v7 = OUTLINED_FUNCTION_2(v75);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  OUTLINED_FUNCTION_16();
  v74 = v12 - v11;
  v13 = *(v6 + 80);
  OUTLINED_FUNCTION_27_28();
  v14 = type metadata accessor for Prompt.Event();
  v15 = OUTLINED_FUNCTION_9(v14);
  v77 = v16;
  v78 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v76 = (&v71 - v21);
  OUTLINED_FUNCTION_27_28();
  v22 = type metadata accessor for Interpretable();
  OUTLINED_FUNCTION_9(v22);
  v72 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  v73 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v71 - v33;
  OUTLINED_FUNCTION_27_28();
  v35 = type metadata accessor for Prompt.State();
  OUTLINED_FUNCTION_9(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v71 - v42;
  sub_1DCE59F78(&v71 - v42);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_27_28();
  v44 = sub_1DD0DF22C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 3, v44);
  (*(v37 + 8))(v43, v35);
  if (EnumTagSinglePayload == 3)
  {
    v46 = v4[10];
    v47 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v46);
    (*(v47 + 16))(v79, v46, v47);
    if (__swift_getEnumTagSinglePayload(v3, 1, v13) != 1)
    {
      v56 = v73;
      (*(v73 + 32))(v34, v3, v13);
      v57 = v76;
      (*(v56 + 16))(v76, v34, v13);
      swift_storeEnumTagMultiPayload();
      sub_1DCE5BB14(v57);
    }

    (*(v72 + 8))(v3, v22);
    v48 = type metadata accessor for Input(0);
    v49 = v74;
    sub_1DCB29E58(v79 + *(v48 + 20), v74);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCB28638(v49, type metadata accessor for Parse);
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v51 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v51, qword_1EDE57E00);
      v52 = sub_1DD0DD8EC();
      v53 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v53))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_10_48(&dword_1DCAFC000, v54, v55, "Prompt received empty parse. Will re-prompt.");
        OUTLINED_FUNCTION_52();
      }

      type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26();
      sub_1DCD8FC04(&unk_1DD0FCC90, v4);
      swift_retain_n();
      Inform.onSuccess(_:)(sub_1DCE5C718, v4);
    }

    if (sub_1DCE968C8(v79))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v58 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v58, qword_1EDE57E00);
      v59 = sub_1DD0DD8EC();
      v60 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v60))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_10_48(&dword_1DCAFC000, v61, v62, "Prompt received received low confidence input. Treating as misunderstood and will re-prompt.");
        OUTLINED_FUNCTION_52();
      }

      type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26();
      sub_1DCD8FC04(&unk_1DD0FCC78, v4);
      swift_retain_n();
      Inform.onSuccess(_:)(sub_1DCE5ED04, v4);
    }

    sub_1DCE2FF24();
    if (v63)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v64 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v64, qword_1EDE57E00);
      v65 = sub_1DD0DD8EC();
      v66 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v66))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_10_48(&dword_1DCAFC000, v67, v68, "Prompt received user cancellation.");
        OUTLINED_FUNCTION_52();
      }

      sub_1DCC9FB70();
      v69 = swift_allocError();
      v70 = v76;
      *v76 = v69;
      swift_storeEnumTagMultiPayload();
      sub_1DCE5BB14(v70);
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 2;
}

uint64_t sub_1DCE5A9E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5AA04, 0, 0);
}

uint64_t sub_1DCE5AA04()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_7_54() + 24);
  OUTLINED_FUNCTION_24_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_80(v5);

  return v8(v7);
}

uint64_t sub_1DCE5AAFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5AB1C, 0, 0);
}

uint64_t sub_1DCE5AB1C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_7_54() + 32);
  OUTLINED_FUNCTION_24_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_80(v5);

  return v8(v7);
}

uint64_t sub_1DCE5AC14()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_1DCE5ACFC(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = type metadata accessor for Prompt.Event();
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1DCE5C2C8();
}

uint64_t Prompt.action.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_66_0();
  v5 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v34[-v12];
  v14 = type metadata accessor for Yield(0);
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_16();
  v21 = (v20 - v19);
  OUTLINED_FUNCTION_66_0();
  v22 = *(*(type metadata accessor for Prompt.State() - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v34[-v25];
  sub_1DCE59F78(&v34[-v25]);
  switch(__swift_getEnumTagSinglePayload(v26, 3, v5))
  {
    case 1u:
      type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26();
      v32 = OUTLINED_FUNCTION_21_33();
      sub_1DCD8FC04(v32, v33);
      swift_retain_n();
      Inform.onSuccess(_:)(sub_1DCE5C890, v1);
    case 2u:
      OUTLINED_FUNCTION_66_0();
      type metadata accessor for Prompt();
      OUTLINED_FUNCTION_13_55();
      swift_getWitnessTable();
      sub_1DCBD0A3C(v21);
      sub_1DCB28638(v21, type metadata accessor for Yield);
      a1[3] = v14;
      a1[4] = &protocol witness table for Yield;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      *boxed_opaque_existential_1Tm = sub_1DCE5C7EC;
      boxed_opaque_existential_1Tm[1] = v1;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 3u:
      type metadata accessor for Inform();
      OUTLINED_FUNCTION_37_26();
      v30 = OUTLINED_FUNCTION_21_33();
      sub_1DCD8FC04(v30, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3020, &qword_1DD0E90D0);
      swift_allocObject();
      sub_1DD0DCF8C();
    default:
      (*(v7 + 32))(v13, v26, v5);
      a1[3] = type metadata accessor for Conclude();
      a1[4] = &protocol witness table for Conclude<A>;
      v27 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      OUTLINED_FUNCTION_66_0();
      type metadata accessor for Prompt();
      OUTLINED_FUNCTION_13_55();
      swift_getWitnessTable();
      ActingFlow.conclude(with:)(v13, v27);
      return (*(v7 + 8))(v13, v5);
  }
}

uint64_t sub_1DCE5B2D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5B2F0, 0, 0);
}

uint64_t sub_1DCE5B2F0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_7_54() + 8);
  OUTLINED_FUNCTION_24_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_80(v5);

  return v8(v7);
}

uint64_t sub_1DCE5B3E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE5B408, 0, 0);
}

uint64_t sub_1DCE5B408()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_7_54() + 16);
  OUTLINED_FUNCTION_24_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_80(v5);

  return v8(v7);
}

void sub_1DCE5B500()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DCAFC000, oslog, v1, "Prompt segue.", v2, 2u);
    MEMORY[0x1E12A8390](v2, -1, -1);
  }
}

void sub_1DCE5B5E8(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = type metadata accessor for Prompt.Event();
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19();
  swift_storeEnumTagMultiPayload();
  sub_1DCE5BB14(v1);
}

void sub_1DCE5B6B8(void *a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = type metadata accessor for Prompt.Event();
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_4_1();
  *v2 = a1;
  OUTLINED_FUNCTION_19();
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  sub_1DCE5BB14(v2);
}

uint64_t sub_1DCE5B7E4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  (*(v4 + 16))(v9 - v8);
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DF22C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 3, v12);
  result = 0x6B61657073;
  switch(EnumTagSinglePayload)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E656B6F7073;
      break;
    case 3:
      result = 0x46676E6974696177;
      break;
    default:
      v15 = *(v4 + 8);
      v16 = OUTLINED_FUNCTION_194();
      v17(v16);
      result = 1701736292;
      break;
  }

  return result;
}

uint64_t sub_1DCE5B95C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = (v8 - v7);
  (*(v3 + 16))(v8 - v7);
  OUTLINED_FUNCTION_194();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574706D6F7270;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v15 = *v9;
      MEMORY[0x1E12A6780](0x286572756C696166, 0xE800000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      sub_1DD0DEDBC();
      MEMORY[0x1E12A6780](41, 0xE100000000000000);

      result = 0;
      break;
    case 2:
      return result;
    case 3:
      result = 0x49726F4674696177;
      break;
    default:
      v12 = *(v3 + 8);
      v13 = OUTLINED_FUNCTION_194();
      v14(v13);
      result = 0x6572707265746E69;
      break;
  }

  return result;
}

void sub_1DCE5BB14(uint64_t a1)
{
  v3 = *(*v1 + 80);
  OUTLINED_FUNCTION_0_1();
  v38[6] = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v38[4] = v38 - v9;
  v10 = type metadata accessor for Prompt.State();
  v40 = v3;
  v11 = type metadata accessor for Prompt.Event();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9(TupleTypeMetadata2);
  v38[7] = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v41 = *(v10 - 8);
  v18 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  OUTLINED_FUNCTION_44_0();
  v38[11] = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_0_1();
  v42 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_44_0();
  v38[5] = v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v38[10] = v38 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = v38 - v34;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v36 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v36, qword_1EDE57E00);
  v37 = *(v42 + 16);
  v38[12] = a1;
  v37(v35, a1, v11);
  sub_1DD0DCF8C();
}

void *Prompt.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 104);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Prompt.State();
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 8))(v0 + v3);
  OUTLINED_FUNCTION_66();
  v8 = *(v0 + *(v7 + 112) + 8);

  return v0;
}

uint64_t Prompt.__deallocating_deinit()
{
  Prompt.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE5C454()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_84(v1);

  return PromptProviding.segue()();
}

uint64_t sub_1DCE5C4EC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_84(v1);

  return PromptProviding.repromptOnEmptyParse()();
}

uint64_t sub_1DCE5C584()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCE1B7E8;

  return PromptProviding.repromptOnLowConfidence()();
}

uint64_t sub_1DCE5C610()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5AAFC(v3, v4);
}

uint64_t sub_1DCE5C694()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5A9E4(v3, v4);
}

uint64_t sub_1DCE5C768()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5B3E8(v3, v4);
}

uint64_t sub_1DCE5C80C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE5B2D0(v3, v4);
}

uint64_t sub_1DCE5C8AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCE5CA24(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}