void sub_1DCD9DC80()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_15_40();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_40_3();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = OUTLINED_FUNCTION_68_2();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v14 = *(v11 + 24);
  v15 = OUTLINED_FUNCTION_35_22();
  v16(v15);
  v17 = OUTLINED_FUNCTION_19();
  v2(v17);
  v18 = OUTLINED_FUNCTION_72_7();
  v19(v18);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9DE48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = OUTLINED_FUNCTION_50_8();
  v11(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  if (OUTLINED_FUNCTION_85_5(v12))
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_75_6();
    v13 = sub_1DD0DBA3C();
  }

  sub_1DCB185D0(v8, &qword_1ECCA5D98, &qword_1DD0F3EB0);
  return v13;
}

uint64_t sub_1DCD9DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_24_21();
  v13 = v12[3];
  v14 = v12[4];
  OUTLINED_FUNCTION_57_1(v12, v13);
  v15 = (*(v14 + 40))(v21, v13, v14);
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {

    a7(v19, v8, v7, v18);
  }

  return v15(v21, 0);
}

void (*sub_1DCD9E058(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = v2;
  v5[1] = a2;
  v6 = *(a2 + 24);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v5[5] = __swift_coroFrameAllocStub(v8);
  sub_1DCD1B1E8();
  return sub_1DCD9E12C;
}

void sub_1DCD9E12C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    v8 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1DCD99478(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = *v2;
    sub_1DCD99478((*a1)[5], v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DCD9E1F0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

uint64_t sub_1DCD9E24C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD9E2B0(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1);
}

uint64_t sub_1DCD9E478@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1DCD9E4C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_1DCD9E55C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1DCD9E59C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t objectdestroy_45Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_9Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t sub_1DCD9E93C()
{
  OUTLINED_FUNCTION_39_16();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return sub_1DCD9D648();
}

uint64_t sub_1DCD9EA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCD9EC88()
{
  OUTLINED_FUNCTION_39_16();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_1DCD9C824();
}

uint64_t objectdestroy_159Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

void *OUTLINED_FUNCTION_81_4(void *result)
{
  result[5] = v2;
  result[6] = v1;
  result[7] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_6()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = v2;
}

void sub_1DCD9EDAC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v13 - v7;
  *(v2 + *(*v2 + 112)) = 0;
  sub_1DCB09910(a1, v2 + *(*v2 + 88), &qword_1ECCA5D98, &qword_1DD0F3EB0);
  sub_1DCB09910(a1, v8, &qword_1ECCA5D98, &qword_1DD0F3EB0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E98, &qword_1DD0F3F38);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v12;
  v13[1] = v12;
  sub_1DCBF7DC0(&qword_1ECCA5EA0, &qword_1ECCA5E98, &qword_1DD0F3F38);
  sub_1DD0DCF8C();
}

void sub_1DCD9EF78(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - v8;
  *(v2 + *(*v2 + 112)) = 0;
  v10 = *(v5 + 16);
  v10(v2 + *(*v2 + 88), a1, v4);
  v10(v9, a1, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E88, &qword_1DD0F3F30);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v14;
  v15[1] = v14;
  sub_1DCBF7DC0(&qword_1ECCA5E90, &qword_1ECCA5E88, &qword_1DD0F3F30);
  sub_1DD0DCF8C();
}

void sub_1DCD9F188(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v13 - v7;
  *(v2 + *(*v2 + 112)) = 0;
  sub_1DCB09910(a1, v2 + *(*v2 + 88), &qword_1ECCA5B88, &qword_1DD0F3EC0);
  sub_1DCB09910(a1, v8, &qword_1ECCA5B88, &qword_1DD0F3EC0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E78, &qword_1DD0F3F28);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v12;
  v13[1] = v12;
  sub_1DCBF7DC0(&qword_1ECCA5E80, &qword_1ECCA5E78, &qword_1DD0F3F28);
  sub_1DD0DCF8C();
}

void sub_1DCD9F354(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - v8;
  *(v2 + *(*v2 + 112)) = 0;
  v10 = *(v5 + 16);
  v10(v2 + *(*v2 + 88), a1, v4);
  v10(v9, a1, v4);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5E68, &qword_1DD0F3F20);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DD0DDB8C();
  *(v2 + *(*v2 + 104)) = v14;
  v15[1] = v14;
  sub_1DCBF7DC0(&qword_1ECCA5E70, &qword_1ECCA5E68, &qword_1DD0F3F20);
  sub_1DD0DCF8C();
}

uint64_t InputValue.wrappedValue.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_131();
  return v4(v3);
}

uint64_t sub_1DCD9F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for InputValue();
  return InputValue.wrappedValue.setter(v6, v8);
}

uint64_t InputValue.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v13);
  (*(v6 + 16))(v12, a1, v4);
  (*(v14 + 32))(v12, v13, v14);
  return (*(v6 + 8))(a1, v4);
}

void (*InputValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_0_1();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v5[5] = __swift_coroFrameAllocStub(v9);
  InputValue.wrappedValue.getter();
  return sub_1DCD9F88C;
}

void sub_1DCD9F88C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    v9 = *(v6 + 16);
    v10 = OUTLINED_FUNCTION_131();
    v11(v10);
    InputValue.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[1];
    InputValue.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t InputValue.projectedValue.getter()
{
  OUTLINED_FUNCTION_11_42();
  sub_1DCB17CA0(v1, v5);
  v3 = *(v0 + 16);
  return sub_1DCD96538(v5, v2);
}

void InputValue.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  v10 = __swift_project_value_buffer(v9, qword_1EDE57E00);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_1DCB09910(v8, v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1DCB0E9D8(v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315650;
      v16 = sub_1DD0DEC3C();
      v18 = sub_1DCB10E9C(v16, v17, &v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 39;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1DCB10E9C(0xD00000000000001CLL, 0x80000001DD11D010, &v20);
      _os_log_impl(&dword_1DCAFC000, v12, v13, "FatalError at %s:%lu - %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v15, -1, -1);
      MEMORY[0x1E12A8390](v14, -1, -1);
    }

    (*(v11 + 8))(v5, v9);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000001CLL, 0x80000001DD11D010);
}

void InputValue.init<A>()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCD9FF1C(a1, a2, MEMORY[0x1E69D1718], MEMORY[0x1E69D16F0], a3);
}

{
  sub_1DCD9FF1C(a1, a2, MEMORY[0x1E69D2310], MEMORY[0x1E69D22D8], a3);
}

void InputValue.init<A>()(uint64_t a1, uint64_t a2)
{
  sub_1DCDA0150(a1, a2, MEMORY[0x1E69D1718]);
}

{
  sub_1DCDA0150(a1, a2, MEMORY[0x1E69D2310]);
}

void InputValue.init<A>()()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_64();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  OUTLINED_FUNCTION_12_7(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_73_1(v6);
  v7 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9EDAC(v7);
}

{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_64();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  OUTLINED_FUNCTION_12_7(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_73_1(v6);
  v7 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9F188(v7);
}

void InputValue.init<A>(wrappedValue:)()
{
  sub_1DCDA030C();
}

{
  OUTLINED_FUNCTION_11_42();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  OUTLINED_FUNCTION_9(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_64();
  v7 = OUTLINED_FUNCTION_5_55(v2);
  v8(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DB8, &qword_1DD0F3ED0);
  OUTLINED_FUNCTION_73_1(v9);
  v10 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9EF78(v10);
}

{
  sub_1DCDA030C();
}

{
  OUTLINED_FUNCTION_11_42();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  OUTLINED_FUNCTION_9(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_64();
  v7 = OUTLINED_FUNCTION_5_55(v2);
  v8(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DD8, &qword_1DD0F3EE0);
  OUTLINED_FUNCTION_73_1(v9);
  v10 = OUTLINED_FUNCTION_6_44();
  sub_1DCD9F354(v10);
}

void sub_1DCD9FF1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34[0] = a4;
  v34[1] = a5;
  v8 = sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v34 - v15;
  v17 = a3(0, a1);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v18, v23);
  v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = v34 - v28;
  v30 = *(a2 + 8);
  sub_1DD0DBB3C();
  v31 = sub_1DD0DB9DC();
  v33 = v32;
  (*(v10 + 8))(v16, v8);
  (v34[0])(v31, v33, a1);
  type metadata accessor for RootStorage();
  (*(v20 + 16))(v26, v29, v17);
  sub_1DCD98E44(v26);
}

void sub_1DCDA0150(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(255, a1);
  v4 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v11 - v9;
  type metadata accessor for RootStorage();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v3);
  sub_1DCD98E44(v10);
}

void sub_1DCDA030C()
{
  OUTLINED_FUNCTION_11_42();
  v2 = v1(0);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_4_64();
  type metadata accessor for RootStorage();
  v9 = OUTLINED_FUNCTION_5_55(v4);
  v10(v9);
  sub_1DCD98E44(v0);
}

void InputValue.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RootStorage();
  (*(v5 + 16))(v11, a1, a2);
  sub_1DCD98E44(v11);
}

uint64_t sub_1DCDA063C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCDA065C, 0, 0);
}

uint64_t sub_1DCDA065C()
{
  v17 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57DA0);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v6 qualifiedMessageName];
    v10 = sub_1DD0DDFBC();
    v12 = v11;

    v13 = sub_1DCB10E9C(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "SiriAnalyticsInstrumentationClient: emitting message to SiriAnalytics: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A8390](v8, -1, -1);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  [*(v0[3] + 16) emitMessage_];
  v14 = v0[1];

  return v14();
}

void sub_1DCDA0828(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DD0DEB3C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v36 = v41;
    v38 = sub_1DCDA1488(v1);
    v39 = v3;
    v40 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v38;
        v8 = v40;
        v35 = v39;
        v9 = v1;
        sub_1DCDA14E8(v38, v39, v40, v1);
        v11 = v10;
        v12 = [v10 eventId];
        v13 = sub_1DD0DDFBC();
        v15 = v14;

        v16 = v36;
        v41 = v36;
        v17 = *(v36 + 16);
        if (v17 >= *(v36 + 24) >> 1)
        {
          sub_1DCB38954();
          v16 = v41;
        }

        *(v16 + 16) = v17 + 1;
        v18 = v16 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v36 = v16;
        if (v34)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (sub_1DD0DEB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F08, &unk_1DD0F4020);
          v24 = sub_1DD0DE59C();
          sub_1DD0DEB8C();
          v24(v37, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v19 = 1 << *(v9 + 32);
          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v7 >> 6;
          v21 = *(v32 + 8 * (v7 >> 6));
          if (((v21 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v35)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v7 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1DCDA16F4(v7, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_1DCDA16F4(v7, v35, 0);
          }

LABEL_27:
          v30 = *(v9 + 36);
          v38 = v19;
          v39 = v30;
          v40 = 0;
        }

        if (v5 == v23)
        {
          sub_1DCDA16F4(v38, v39, v40);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1DCDA0B44(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_1DCC60A8C(v17))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1DCB0DF6C(*(a1 + 56) + 32 * v12, v18);
    v17[0] = v14;
    v17[1] = v15;

    v16 = sub_1DD0DDF8C();
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    [v1 setVariable:v16 withValue:sub_1DD0DF09C()];

    swift_unknownObjectRelease();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DCDA0C98()
{
  v1 = [v0 activeEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  v2 = sub_1DD0DE57C();

  sub_1DCDA0828(v2);
  v4 = v3;

  v5 = sub_1DCDA58AC(v4);
  v6 = [v0 getEvents];
  v7 = sub_1DD0DE57C();

  v36 = MEMORY[0x1E69E7CC0];
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1DD0DEAFC();
    sub_1DD0DE5AC();
    v7 = v37;
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);
  }

  v15 = (v9 + 64) >> 6;
  v33 = v7;
LABEL_8:
  while (v7 < 0)
  {
    if (!sub_1DD0DEB6C() || (swift_dynamicCast(), v20 = v35, v18 = v10, v19 = v11, !v35))
    {
LABEL_28:

      sub_1DCC5EE88();
      return;
    }

LABEL_17:
    v34 = v19;
    v21 = [v20 eventId];
    v22 = sub_1DD0DDFBC();
    v24 = v23;

    if (*(v5 + 16))
    {
      v25 = *(v5 + 40);
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      v26 = sub_1DD0DF20C();
      v27 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v28 = v26 & v27;
        if (((*(v5 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
        {
          break;
        }

        v29 = (*(v5 + 48) + 16 * v28);
        if (*v29 != v22 || v29[1] != v24)
        {
          v31 = sub_1DD0DF0AC();
          v26 = v28 + 1;
          if ((v31 & 1) == 0)
          {
            continue;
          }
        }

        v10 = v18;
        v7 = v33;
        v11 = v34;
        goto LABEL_8;
      }

      v7 = v33;
    }

    sub_1DD0DECDC();
    v32 = *(v36 + 16);
    sub_1DD0DED1C();
    sub_1DD0DED2C();
    sub_1DD0DECEC();
    v10 = v18;
    v11 = v34;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_13:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_28;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1DCDA1004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB10E5C(0, &qword_1EDE46110, 0x1E69D01C8);

  sub_1DCD10120();
  sub_1DCDAC09C(a3);
}

uint64_t sub_1DCDA1488(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DD0DEAEC();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1DD0DEACC();
  v4 = *(a1 + 36);
  return result;
}

void sub_1DCDA14E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E12A71B0](a1, a2, v7);
      sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
    if (sub_1DD0DEB1C() == *(a4 + 36))
    {
      sub_1DD0DEB2C();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_1DD0DE8DC();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1DD0DE8EC();

        if (v12)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1DCDA16F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *IntentConfirmationConcept.intentResponse.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t IntentConfirmationConcept.conceptType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

double IntentConfirmationConcept.__allocating_init(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3();
  v6 = swift_allocObject();
  *(v6 + 56) = 0x80000001DD0F4020;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  result = 0.0;
  *(v6 + 40) = xmmword_1DD0F4030;
  return result;
}

uint64_t IntentConfirmationConcept.init(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0x80000001DD0F4020;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = xmmword_1DD0F4030;
  return v3;
}

void *IntentConfirmationConcept.__allocating_init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_3();
  result = swift_allocObject();
  result[6] = 0xD000000000000019;
  result[7] = 0x80000001DD0F4020;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *IntentConfirmationConcept.init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD000000000000019;
  v4[7] = 0x80000001DD0F4020;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t IntentConfirmationConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t IntentConfirmationConcept.__deallocating_deinit()
{
  IntentConfirmationConcept.deinit();
  OUTLINED_FUNCTION_0_3();

  return swift_deallocClassInstance();
}

void sub_1DCDA19AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 80);
  v9 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter();
  IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(v9, v10, v11, a4, a5);
}

void IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v14 - v10;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DD0F40B8;
  v13[5] = 0;
  v13[6] = a4;
  v13[7] = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDA1B00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB193FC;

  return sub_1DCCDC444();
}

double IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v14);
  v7 = v14;
  if (v14)
  {
    v9 = v18;
    v8 = v19;
    v11 = v16;
    v10 = v17;
    v12 = v15;
    type metadata accessor for SiriKitIntentExecutionBehavior();
    v14 = v7;
    v15 = v12;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    v19 = v8;
    static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(&v14);
  }

  v13 = (*(a4 + 16))(a2, a3, a4);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  if (v13)
  {
    static SiriKitIntentExecutionBehavior.companionExecution()();
  }

  else
  {
    static SiriKitIntentExecutionBehavior.standard()();
  }
}

uint64_t IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(a1, a2, a5, a6);
  a3();
}

uint64_t sub_1DCDA1D3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCDA1DC8;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t sub_1DCDA1DC8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void static SiriKitIntentExecutionBehavior.companionExecution()()
{
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v0 = swift_allocObject();
  *(v0 + 88) = 0xD000000000000012;
  *(v0 + 96) = 0x80000001DD11D170;
  OUTLINED_FUNCTION_0_62(v0);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 1;
}

void static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v4 = swift_allocObject();
  *(v4 + 88) = 0xD000000000000015;
  *(v4 + 96) = 0x80000001DD11D190;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(a1 + 2);
  *(v4 + 32) = *(a1 + 1);
  *(v4 + 48) = v5;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xE000000000000000;
  *(v4 + 80) = 0;
  sub_1DD0DCF8C();
}

void static SiriKitIntentExecutionBehavior.remoteIntentExecution(targetDevice:)()
{
  v0 = sub_1DD0DD7DC();
  v2 = v1;
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_5_13();
  v3 = swift_allocObject();
  *(v3 + 88) = 0xD000000000000015;
  *(v3 + 96) = 0x80000001DD11D1B0;
  OUTLINED_FUNCTION_0_62(v3);
  *(v4 + 64) = v0;
  *(v4 + 72) = v2;
  *(v4 + 80) = 0;
}

uint64_t dispatch thunk of IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DCDA1DC8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DCDA2248(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  return 0;
}

void sub_1DCDA2288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v8 = a5(0, *(a3 + 80), *(a3 + 88));

  IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v8, a4);
}

uint64_t sub_1DCDA2300(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void))
{
  v12 = a7(0, *(a5 + 80), *(a5 + 88));

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v12, a6);
}

void *IntentHandledConcept.intentResponse.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t IntentHandledConcept.conceptType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *IntentHandledConcept.__allocating_init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[6] = 0xD000000000000014;
  result[7] = 0x80000001DD0F41C0;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *IntentHandledConcept.init(app:intent:intentResponse:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD000000000000014;
  v4[7] = 0x80000001DD0F41C0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t IntentHandledConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t IntentHandledConcept.__deallocating_deinit()
{
  IntentHandledConcept.deinit();

  return swift_deallocClassInstance();
}

__n128 IntentPromptAnswer.init(answeredValue:updatedIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = a2;
  return result;
}

void sub_1DCDA25B4(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = a1[4];
}

uint64_t sub_1DCDA25F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = v6;
  return a1;
}

uint64_t sub_1DCDA2674(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  v8 = v6;

  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        sub_1DD0DCF8C();
      }

      v11 = *(v10 + 24);
      v12 = result[3];

      return v11();
    }

    else
    {
      result[3] = v5;
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
          sub_1DD0DCF8C();
        }

        (*(v7 + 16))(result, a2, v5);
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
          sub_1DD0DCF8C();
        }

        (*(v8 + 16))(v3, a2, v5);
        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1DCDA2934(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_1DCDA2984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1DCDA29C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DCDA2A24(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];
}

void sub_1DCDA2A68(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  a1[2] = a2[2];
  sub_1DD0DCF8C();
}

void sub_1DCDA2AB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *sub_1DCDA2B20(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for HandleProcessingResult(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for HandleProcessingResult(uint64_t result, int a2, int a3)
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

void sub_1DCDA2C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v9 = *(v6 + 16);
  if (*(v9 + 16))
  {
    v10 = sub_1DCB21038(a5, a6);
    if (v11)
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v8 = *v12;
      v7 = v12[1];
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v13, qword_1EDE57E00);

  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1DCB10E9C(v8, v7, &v20);
    _os_log_impl(&dword_1DCAFC000, v14, v15, "Grounded bundleId=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);

  v19 = sub_1DCDA45E8();
  sub_1DCDA3B4C();
}

uint64_t sub_1DCDA2EA8(unint64_t a1, uint64_t a2, unint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v179 = a6;
  v177 = a4;
  *&v178 = a5;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F40, &unk_1DD0F4368);
  OUTLINED_FUNCTION_2(v171);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v175 = (&v158 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DE8, &unk_1DD0EFFC0);
  v173 = OUTLINED_FUNCTION_9(v19);
  v174 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v173, v23);
  OUTLINED_FUNCTION_44_0();
  v182 = v24;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v158 - v27;
  v29 = sub_1DD0DD3CC();
  v30 = OUTLINED_FUNCTION_9(v29);
  v185 = v31;
  v186 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30, v34);
  OUTLINED_FUNCTION_44_0();
  v181 = v35;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v36, v37);
  v176 = &v158 - v38;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v39, v40);
  v166 = &v158 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F48, &qword_1DD0F4378);
  v43 = OUTLINED_FUNCTION_20_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43, v46);
  OUTLINED_FUNCTION_44_0();
  v170 = v47;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v48, v49);
  v172 = &v158 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F20, &qword_1DD0F4350);
  OUTLINED_FUNCTION_20_0(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v158 - v56;
  v58 = *(v7 + 16);
  if (*(v58 + 16))
  {
    v59 = sub_1DCB21038(a2, a3);
    if (v60)
    {
      v61 = (*(v58 + 56) + 16 * v59);
      a2 = *v61;
      a3 = v61[1];
    }
  }

  v184 = a2;
  v167 = v28;

  if (qword_1EDE4F900 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_0();
  }

  v62 = sub_1DD0DD8FC();
  v63 = __swift_project_value_buffer(v62, qword_1EDE57E00);

  v183 = v63;
  v64 = sub_1DD0DD8EC();
  v65 = sub_1DD0DE6DC();

  v66 = os_log_type_enabled(v64, v65);
  v180 = v57;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v188 = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_1DCB10E9C(v184, a3, &v188);
    _os_log_impl(&dword_1DCAFC000, v64, v65, "Grounded bundleId=%s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v57 = v180;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v69 = MEMORY[0x1E69E7CC0];
  v188 = MEMORY[0x1E69E7CC0];
  v70 = *(a1 + 16);
  v165 = v70;
  if (v70)
  {
    v168 = a7;
    v169 = v9;
    v71 = a3;
    v72 = (a1 + 56);
    do
    {
      v73 = *(v72 - 3);
      v74 = *(v72 - 2);
      v75 = *(v72 - 1);
      v76 = *v72;
      objc_allocWithZone(MEMORY[0x1E69AC7E0]);

      sub_1DCDA45E8();
      MEMORY[0x1E12A6920]();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v72 += 4;
      --v70;
    }

    while (v70);
    v69 = v188;
    v57 = v180;
    a3 = v71;
    v9 = v169;
  }

  sub_1DCDA3C84(v57);
  if (v9)
  {
  }

  else
  {
    v77 = v172;
    sub_1DCDA3DF8(v57, v172);
    v78 = sub_1DCDA3F24(v57);
    v79 = v170;
    sub_1DCB09910(v77, v170, &qword_1ECCA5F48, &qword_1DD0F4378);
    a7 = v186;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v186);
    v168 = 0;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DCB0E9D8(v79, &qword_1ECCA5F48, &qword_1DD0F4378);
      if (*(v78 + 16))
      {
        v159 = a1;
        v160 = a3;
        v82 = (v78 + 64);
        v81 = *(v78 + 64);
        v83 = *(v78 + 32);
        OUTLINED_FUNCTION_10_16();
        a1 = v85 & v84;
        v87 = (v86 + 63) >> 6;
        v179 = v185 + 16;
        v162 = v185 + 32;
        v161 = v185 + 40;

        v57 = 0;
        v88 = MEMORY[0x1E69E7CC8];
        v9 = MEMORY[0x1E69E7CC0];
        v167 = v69;
        v166 = (v78 + 64);
        v163 = v87;
        v164 = v78;
        while (1)
        {
          v184 = v88;
          if (!a1)
          {
            break;
          }

          v169 = v9;
LABEL_24:
          v90 = __clz(__rbit64(a1)) | (v57 << 6);
          v91 = *(v78 + 56);
          v92 = *(*(v78 + 48) + 8 * v90);
          *&v178 = *(v185 + 72);
          v93 = *(v171 + 48);
          v94 = *(v185 + 16);
          v95 = v175;
          v96 = a7;
          a7 = v179;
          v94(v175 + v93, v91 + v178 * v90, v96);
          *v95 = v92;
          v170 = v92;
          v97 = [v170 instanceIdentifier];
          v98 = sub_1DD0DDFBC();
          a3 = v99;

          v94(v176, v95 + v93, v186);
          v100 = v184;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v187 = v100;
          v177 = v98;
          v102 = sub_1DCB21038(v98, a3);
          v104 = *(v100 + 16);
          if (__OFADD__(v104, (v103 & 1) == 0))
          {
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v93 = v102;
          a7 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F50, &unk_1DD0F4380);
          if (sub_1DD0DEDCC())
          {
            isUniquelyReferenced_nonNull_native = a3;
            v105 = sub_1DCB21038(v177, a3);
            if ((a7 & 1) != (v106 & 1))
            {
              result = sub_1DD0DF12C();
              __break(1u);
              return result;
            }

            v93 = v105;
            v107 = v170;
          }

          else
          {
            v107 = v170;
            isUniquelyReferenced_nonNull_native = a3;
          }

          v88 = v187;
          if (a7)
          {
            v108 = v187[7] + v93 * v178;
            OUTLINED_FUNCTION_9_43(&v189);
            v109();
          }

          else
          {
            v187[(v93 >> 6) + 8] |= 1 << v93;
            v110 = (v88[6] + 16 * v93);
            v111 = v178;
            *v110 = v177;
            v110[1] = isUniquelyReferenced_nonNull_native;
            v112 = v88[7] + v93 * v111;
            OUTLINED_FUNCTION_9_43(&v190);
            v113();
            v114 = v88[2];
            v115 = __OFADD__(v114, 1);
            v104 = v114 + 1;
            if (v115)
            {
              goto LABEL_62;
            }

            v88[2] = v104;
          }

          sub_1DCB0E9D8(v175, &qword_1ECCA5F40, &unk_1DD0F4368);
          v9 = v169;
          v116 = swift_isUniquelyReferenced_nonNull_native();
          v78 = v164;
          if ((v116 & 1) == 0)
          {
            sub_1DCE19A70(0, *(v9 + 16) + 1, 1, v9);
            v9 = v120;
          }

          v118 = *(v9 + 16);
          v117 = *(v9 + 24);
          v119 = v118 + 1;
          if (v118 >= v117 >> 1)
          {
            v121 = OUTLINED_FUNCTION_5_56(v117);
            sub_1DCE19A70(v121, v122, v123, v9);
            v9 = v124;
          }

          a1 &= a1 - 1;
          *(v9 + 16) = v119;
          v82 = v166;
          v87 = v163;
        }

        while (1)
        {
          v89 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v89 >= v87)
          {
            break;
          }

          a1 = *&v82[8 * v89];
          ++v57;
          if (a1)
          {
            v169 = v9;
            v57 = v89;
            goto LABEL_24;
          }
        }

        v131 = v165;
        if (v165)
        {
          v177 = (v185 + 8);
          v57 = MEMORY[0x1E69E7CC0];
          v132 = (v159 + 40);
          *&v130 = 136315138;
          v178 = v130;
          do
          {
            v134 = *(v132 - 1);
            v133 = *v132;
            v135 = v88[2];

            if (v135 && (v136 = sub_1DCB21038(v134, v133), (v137 & 1) != 0))
            {
              v138 = v136;

              v139 = v186;
              v140 = v88[7] + *(v185 + 72) * v138;
              v141 = *(v185 + 16);
              v142 = v181;
              v141(v181, v140, v186);
              v143 = *(v173 + 48);
              v144 = v182;
              v141(v182, v142, v139);
              *(v144 + v143) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v153 = *(v57 + 16);
                sub_1DCE19A98();
                v57 = v154;
              }

              v145 = *(v57 + 24);
              if (*(v57 + 16) >= v145 >> 1)
              {
                OUTLINED_FUNCTION_5_56(v145);
                sub_1DCE19A98();
                v57 = v155;
              }

              (*v177)(v181, v139);
              OUTLINED_FUNCTION_6_45();
              sub_1DCDA46C8(v182, v146);
              v88 = v184;
            }

            else
            {

              v147 = sub_1DD0DD8EC();
              v148 = sub_1DD0DE6EC();

              if (os_log_type_enabled(v147, v148))
              {
                v149 = v131;
                v150 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                v187 = v151;
                *v150 = v178;
                v152 = sub_1DCB10E9C(v134, v133, &v187);

                *(v150 + 4) = v152;
                _os_log_impl(&dword_1DCAFC000, v147, v148, "Missing appIntentSpecification for instanceId=%s", v150, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v151);
                OUTLINED_FUNCTION_80();
                v131 = v149;
                v88 = v184;
                OUTLINED_FUNCTION_80();
              }

              else
              {
              }
            }

            v132 += 4;
            --v131;
          }

          while (v131);
        }

        else
        {
          v57 = MEMORY[0x1E69E7CC0];
        }

        sub_1DCB0E9D8(v172, &qword_1ECCA5F48, &qword_1DD0F4378);
        sub_1DCB0E9D8(v180, &qword_1ECCA5F20, &qword_1DD0F4350);
      }

      else
      {

        sub_1DCB0E9D8(v172, &qword_1ECCA5F48, &qword_1DD0F4378);
        sub_1DCB0E9D8(v57, &qword_1ECCA5F20, &qword_1DD0F4350);

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v125 = v185;
      isUniquelyReferenced_nonNull_native = v166;
      (*(v185 + 32))(v166, v79, a7);
      v126 = *(v173 + 48);
      v127 = *(v125 + 16);
      v93 = v167;
      v127(v167, isUniquelyReferenced_nonNull_native, a7);
      *(v93 + v126) = 1;
      sub_1DCE19A98();
      v57 = v128;
      v104 = *(v128 + 24);
      if (*(v128 + 16) >= v104 >> 1)
      {
LABEL_63:
        OUTLINED_FUNCTION_5_56(v104);
        sub_1DCE19A98();
        v57 = v157;
      }

      (*(v185 + 8))(isUniquelyReferenced_nonNull_native, a7);
      sub_1DCB0E9D8(v172, &qword_1ECCA5F48, &qword_1DD0F4378);
      sub_1DCB0E9D8(v180, &qword_1ECCA5F20, &qword_1DD0F4350);
      OUTLINED_FUNCTION_6_45();
      sub_1DCDA46C8(v93, v129);
    }
  }

  return v57;
}

uint64_t sub_1DCDA3B4C()
{
  v0 = sub_1DD0DD39C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DD0DD3DC();
  sub_1DCC60D38();
  sub_1DCDA4670();
  sub_1DD0DD34C();
  return (*(v3 + 8))(v9, v0);
}

uint64_t sub_1DCDA3C84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD0DD39C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  sub_1DD0DD3DC();
  sub_1DCC60D38();
  sub_1DCDA4670();
  sub_1DD0DD35C();
  if (v14)
  {
    return (*(v5 + 8))(v11, v2);
  }

  (*(v5 + 8))(v11, v2);
  v13 = sub_1DD0DD38C();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
}

uint64_t sub_1DCDA3DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F20, &qword_1DD0F4350);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  sub_1DCB09910(a1, &v14 - v9, &qword_1ECCA5F20, &qword_1DD0F4350);
  v11 = sub_1DD0DD38C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1DCB0E9D8(v10, &qword_1ECCA5F20, &qword_1DD0F4350);
    v12 = sub_1DD0DD3CC();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }

  else
  {
    sub_1DD0DD37C();
    return (*(*(v11 - 8) + 8))(v10, v11);
  }
}

uint64_t sub_1DCDA3F24(uint64_t a1)
{
  v89 = sub_1DD0DD3CC();
  v2 = OUTLINED_FUNCTION_9(v89);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F18, &qword_1DD0F4348);
  OUTLINED_FUNCTION_2(v82);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F20, &qword_1DD0F4350);
  OUTLINED_FUNCTION_20_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v71 - v21;
  v23 = sub_1DD0DD38C();
  v24 = OUTLINED_FUNCTION_9(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24, v29);
  OUTLINED_FUNCTION_16();
  v32 = v31 - v30;
  sub_1DCB09910(a1, v22, &qword_1ECCA5F20, &qword_1DD0F4350);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1DCB0E9D8(v22, &qword_1ECCA5F20, &qword_1DD0F4350);
    return MEMORY[0x1E69E7CC8];
  }

  else
  {
    v73 = v26;
    v34 = *(v26 + 32);
    v74 = v23;
    v34(v32, v22, v23);
    v72 = v32;
    v35 = sub_1DD0DD36C();
    v37 = v35 + 64;
    v36 = *(v35 + 64);
    v38 = *(v35 + 32);
    OUTLINED_FUNCTION_10_16();
    v41 = v40 & v39;
    v43 = (v42 + 63) >> 6;
    v87 = v4 + 16;
    v75 = (v4 + 40);
    v76 = (v4 + 32);
    v81 = v44;

    v45 = 0;
    v33 = MEMORY[0x1E69E7CC8];
    v77 = v43;
    v78 = v37;
    v79 = v4;
    v80 = v10;
    if (!v41)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v86 = v33;
LABEL_9:
      v47 = __clz(__rbit64(v41)) | (v45 << 6);
      v48 = v81;
      v49 = *(v81 + 48);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F28, &qword_1DD0F4358);
      OUTLINED_FUNCTION_2(v50);
      v52 = *(v51 + 16);
      v53 = v88;
      (v52)(v88, v49 + *(v51 + 72) * v47, v50);
      v54 = *(v48 + 56) + *(v4 + 72) * v47;
      v55 = *(v82 + 48);
      v83 = *(v4 + 72);
      v84 = v55;
      v85 = *(v4 + 16);
      v56 = v89;
      v85(v53 + v55, v54, v89);
      v92 = v50;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1Tm(v91);
      v52();
      __swift_project_boxed_opaque_existential_1(v91, v92);
      sub_1DD0DD3AC();
      sub_1DD0DD3AC();
      v57 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
      v58 = sub_1DCDA45E8();
      v59 = v80;
      v85(v80, v53 + v84, v56);
      v60 = v86;
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v60;
      v61 = sub_1DCC5F998(v58);
      if (__OFADD__(v60[2], (v62 & 1) == 0))
      {
        break;
      }

      v63 = v61;
      v64 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F30, &qword_1DD0F4360);
      if (sub_1DD0DEDCC())
      {
        v65 = sub_1DCC5F998(v58);
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_24;
        }

        v63 = v65;
      }

      v33 = v90;
      if (v64)
      {
        (*v75)(v90[7] + v63 * v83, v59, v89);
      }

      else
      {
        v90[(v63 >> 6) + 8] |= 1 << v63;
        *(v33[6] + 8 * v63) = v58;
        (*v76)(v33[7] + v63 * v83, v59, v89);
        v67 = v33[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_23;
        }

        v33[2] = v69;
      }

      v41 &= v41 - 1;
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      sub_1DCB9CE50(v88);
      v37 = v78;
      v4 = v79;
      v43 = v77;
      if (!v41)
      {
LABEL_5:
        while (1)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v46 >= v43)
          {

            (*(v73 + 8))(v72, v74);

            return v33;
          }

          v41 = *(v37 + 8 * v46);
          ++v45;
          if (v41)
          {
            v86 = v33;
            v45 = v46;
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1DCC60D38();
    result = sub_1DD0DF12C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DCDA44F0()
{
  result = sub_1DD0DD39C();
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

id sub_1DCDA45E8()
{
  v1 = sub_1DD0DDF8C();

  v2 = sub_1DD0DDF8C();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

unint64_t sub_1DCDA4670()
{
  result = qword_1ECCA5F38;
  if (!qword_1ECCA5F38)
  {
    sub_1DCC60D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5F38);
  }

  return result;
}

uint64_t sub_1DCDA46C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DE8, &unk_1DD0EFFC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentSlotDucConcept.conceptType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *IntentSlotDucConcept.__allocating_init(app:intent:parameterName:value:typeName:valueTypeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  result = OUTLINED_FUNCTION_0_63(v16, "IntentSlotConcept");
  result[4] = a1;
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  result[9] = a6;
  result[10] = a7;
  result[11] = a8;
  return result;
}

void *IntentSlotDucConcept.init(app:intent:parameterName:value:typeName:valueTypeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000001DD11D370;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v8[9] = a6;
  v8[10] = a7;
  v8[11] = a8;
  return v8;
}

void *IntentSlotDucConcept.__allocating_init(app:intent:value:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for INIntentSlotValueType(0);
  sub_1DCD94D7C();
  v10 = sub_1DD0DDE9C();
  type metadata accessor for IntentSlotDucConcept();
  v11 = swift_allocObject();
  result = OUTLINED_FUNCTION_0_63(v11, "IntentSlotConcept");
  result[4] = a1;
  result[5] = a2;
  result[6] = 0;
  result[7] = 0;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  result[11] = v10;
  return result;
}

uint64_t IntentSlotDucConcept.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return v0;
}

uint64_t IntentSlotDucConcept.__deallocating_deinit()
{
  IntentSlotDucConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDA4A34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_86_7();
      break;
    case 3:
      OUTLINED_FUNCTION_57_8();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4AE8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_57_8();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4BC0()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4C28()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4D38()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4DCC()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4EA8()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4F40()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA4FF4()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA50A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_67_10();
}

uint64_t sub_1DCDA50E4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_57_8();
      break;
    case 5:
      OUTLINED_FUNCTION_86_7();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA51F0()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5278()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5334()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA53C4()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5424()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA548C()
{
  sub_1DD0DDF2C();
}

uint64_t sub_1DCDA5558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_67_10();
}

uint64_t sub_1DCDA55A8(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;

      sub_1DCDA7B68(&v6, a2);
      if (v2)
      {
        break;
      }

      ++v5;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

char *IntentTopic.init(type:version:entity:verb:)@<X0>(char *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *result;
  v8 = *a2;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *a7 = v7;
  *(a7 + 1) = v8;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_1DCDA5654(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DCDAA6E0();
  result = MEMORY[0x1E12A6BE0](v2, &type metadata for IntentTopic, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 64)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v14[0] = *(a1 + i);
    v14[1] = v8;
    v15[0] = *(a1 + i + 32);
    *(v15 + 9) = *(a1 + i + 41);
    ++v5;
    sub_1DCB32880(v14, v11);
    sub_1DCD3F85C(v9, v14);
    v11[0] = v9[0];
    v11[1] = v9[1];
    v12[0] = v10[0];
    *(v12 + 9) = *(v10 + 9);
    result = sub_1DCB340B4(v11);
  }

  __break(1u);
  return result;
}

void sub_1DCDA5740()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = sub_1DD0DB3AC();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v25 - v14;
  v16 = *(v1 + 16);
  v17 = sub_1DCDAA750();
  v25[1] = MEMORY[0x1E12A6BE0](v16, v2, v17);
  v18 = *(v1 + 16);
  if (v18)
  {
    v21 = *(v5 + 16);
    v19 = v5 + 16;
    v20 = v21;
    v22 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v25[0] = v1;
    v23 = v1 + v22;
    v24 = *(v19 + 56);
    do
    {
      v20(v11, v23, v2);
      sub_1DCD3FE54();
      (*(v19 - 8))(v15, v2);
      v23 += v24;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCDA58AC(uint64_t a1)
{
  result = MEMORY[0x1E12A6BE0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v8 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DCB88110();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCDA596C()
{
  v0 = sub_1DD0DE0CC();
  v3 = MEMORY[0x1E12A6BE0](v0, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  while (1)
  {
    sub_1DD0DE13C();
    if (!v1)
    {
      break;
    }

    sub_1DCD40540();
  }

  return v3;
}

void sub_1DCDA5A0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1DD0DE1AC())
  {
    *&v65 = a1;
    *(&v65 + 1) = a2;
    sub_1DCDA70D4(6);
    sub_1DCDA715C(1);
    v56 = v65;
    sub_1DCB1C4D8();
    v6 = MEMORY[0x1E69E6158];
    v7 = sub_1DD0DEA5C();

    v8 = MEMORY[0x1E12A64E0](5, v6, v6, MEMORY[0x1E69E6168]);
    v9 = 0;
    v10 = *(v7 + 16);
LABEL_3:
    v11 = 32 * v9;
    while (v10 != v9)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v12 = *(v7 + v11 + 48);
      v13 = *(v7 + v11 + 56);
      v56 = *(v7 + v11 + 32);
      v57 = v12;
      v58 = v13;
      sub_1DCD00128();

      v14 = sub_1DD0DEA5C();
      v15 = v14[2];
      if (v15)
      {
        v48 = a3;
        v16 = v14[4];
        v17 = v14[5];
        v18 = v8;
        v19 = v14[7];
        v20 = &v14[4 * v15];
        v52 = v20[1];
        v54 = *v20;
        v21 = v20[3];
        v49 = v14[6];
        v50 = v20[2];

        v22 = MEMORY[0x1E12A66E0](v16, v17, v49, v19);
        v24 = v23;

        v51 = MEMORY[0x1E12A66E0](v54, v52, v50, v21);
        v53 = v25;

        swift_isUniquelyReferenced_nonNull_native();
        v55 = v22;
        *&v56 = v18;
        v26 = sub_1DCB21038(v22, v24);
        if (!__OFADD__(v18[2], (v27 & 1) == 0))
        {
          v28 = v26;
          v29 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
          if ((sub_1DD0DEDCC() & 1) == 0)
          {
            goto LABEL_12;
          }

          v30 = sub_1DCB21038(v55, v24);
          if ((v29 & 1) == (v31 & 1))
          {
            v28 = v30;
LABEL_12:
            v8 = v56;
            if (v29)
            {
              v32 = (*(v56 + 56) + 16 * v28);
              v33 = v32[1];
              *v32 = v51;
              v32[1] = v53;

LABEL_16:
              a3 = v48;
              ++v9;

              goto LABEL_3;
            }

            *(v56 + 8 * (v28 >> 6) + 64) |= 1 << v28;
            v34 = (v8[6] + 16 * v28);
            *v34 = v55;
            v34[1] = v24;
            v35 = (v8[7] + 16 * v28);
            *v35 = v51;
            v35[1] = v53;
            v36 = v8[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (!v37)
            {
              v8[2] = v38;
              goto LABEL_16;
            }

LABEL_31:
            __break(1u);
          }

          sub_1DD0DF12C();
          __break(1u);
          return;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 += 32;
      ++v9;
    }

    IntentTopic.init(dictionary:)(&v56, v8);
    v45 = v56;
    v44 = BYTE1(v56);
    v63 = *(&v56 + 2);
    v64 = WORD3(v56);
    v39 = *(&v56 + 1);
    v42 = v57;
    v40 = v58;
    v41 = v59;
    a1 = v60;
    a2 = v61;
    v43 = v62;
    if (v57 != 1)
    {
      goto LABEL_27;
    }

    *a3 = v56;
    *(a3 + 1) = v44;
    *(a3 + 2) = v63;
    *(a3 + 6) = v64;
    v42 = 1;
  }

  else
  {
    if (sub_1DD0DE1AC())
    {
      OUTLINED_FUNCTION_15_41();
      v44 = 1;
      v45 = 3;
    }

    else
    {
      sub_1DD0DE04C();
      v46 = sub_1DD0DE1AC();

      if (v46)
      {
        OUTLINED_FUNCTION_15_41();
        v44 = 1;
        v45 = 4;
      }

      else
      {
        sub_1DD0DE1AC();
        OUTLINED_FUNCTION_15_41();
        if (v47)
        {
          v45 = 8;
        }

        else
        {
          v45 = 0;
        }

        v44 = 1;
      }
    }

LABEL_27:
    *a3 = v45;
    v43 &= 1u;
    *(a3 + 1) = v44 & 1;
  }

  *(a3 + 8) = v39;
  *(a3 + 16) = v42;
  *(a3 + 24) = v40;
  *(a3 + 32) = v41;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  *(a3 + 56) = v43;
}

void static IntentTopic.makeFromBundleInfoPlist(dictionary:)(uint64_t a1)
{
  v4 = 0xD000000000000010;
  v5 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_61_14("SupportedDomains");
  v6 = &off_1EDE4F000;
  v7 = &xmmword_1DD0E4000;
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44())
    {
      OUTLINED_FUNCTION_33_15();
      if (!v8)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v9 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v9, qword_1EDE57E00);

      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE70C();
      if (OUTLINED_FUNCTION_61_1(v11))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(3.8521e-34);
        OUTLINED_FUNCTION_80_4();
        v12 = MEMORY[0x1E12A6960](v1, MEMORY[0x1E69E6158]);
        v14 = sub_1DCB10E9C(v12, v13, v66);
        v5 = MEMORY[0x1E69E7CC0];

        *(v2 + 14) = v14;
        v7 = &xmmword_1DD0E4000;
        v6 = &off_1EDE4F000;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v15, v16, "Found supportedDomains : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (*(v1 + 16))
      {
        v60 = a1;
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          a1 = 1;
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_13_41();
          v2 = v66[0];
          OUTLINED_FUNCTION_78_10();
          *(v17 + 32) = 256;
          OUTLINED_FUNCTION_3_67(v17, v60, v64, v65, SWORD2(v65));
          OUTLINED_FUNCTION_83_5(v18);
          if (!v5)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }

        v5 = MEMORY[0x1E69E7CC0];
        v7 = &xmmword_1DD0E4000;
        v6 = &off_1EDE4F000;
        OUTLINED_FUNCTION_16_31();
      }

      else
      {

        v2 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v66, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_61_14("SupportedIntents");
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44())
    {
      OUTLINED_FUNCTION_33_15();
      if (!v8)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v19 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v19, qword_1EDE57E00);

      v20 = sub_1DD0DD8EC();
      v21 = sub_1DD0DE70C();
      v61 = a1;
      if (OUTLINED_FUNCTION_61_1(v21))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(COERCE_FLOAT(*(v7 + 275)));
        OUTLINED_FUNCTION_80_4();
        v22 = MEMORY[0x1E12A6960](v1, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_90_5(v22, v23, v24, v25, v26, a1);
        OUTLINED_FUNCTION_68_11();
        *(v2 + 14) = v7;
        v7 = 0xD000000000000010;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v27, v28, "Found supportedIntents : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_16_31();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          a1 = *(v7 - 1);
          v29 = *v7;
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_13_41();
          v2 = v66[0];
          OUTLINED_FUNCTION_78_10();
          *(v30 + 32) = 259;
          OUTLINED_FUNCTION_3_67(v30, v61, v64, v65, SWORD2(v65));
          OUTLINED_FUNCTION_83_5(v31);
          if (!v5)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }

        v5 = MEMORY[0x1E69E7CC0];
        v7 = &xmmword_1DD0E4000;
        v6 = &off_1EDE4F000;
        OUTLINED_FUNCTION_16_31();
      }

      else
      {

        v2 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v66, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  sub_1DCB90D40(0xD000000000000014, 0x80000001DD11D4B0, a1);
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44())
    {
      OUTLINED_FUNCTION_33_15();
      if (!v8)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v32, qword_1EDE57E00);

      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE70C();
      v62 = a1;
      if (OUTLINED_FUNCTION_61_1(v34))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(COERCE_FLOAT(*(v7 + 275)));
        OUTLINED_FUNCTION_80_4();
        v35 = MEMORY[0x1E12A6960](v1, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_90_5(v35, v36, v37, v38, v39, a1);
        OUTLINED_FUNCTION_68_11();
        *(v2 + 14) = v7;
        v7 = 0xD000000000000010;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v40, v41, "Found supportedInvocations : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_16_31();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          a1 = *(v7 - 1);
          v42 = *v7;
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_13_41();
          v2 = v66[0];
          OUTLINED_FUNCTION_78_10();
          *(v43 + 32) = 260;
          OUTLINED_FUNCTION_3_67(v43, v62, v64, v65, SWORD2(v65));
          OUTLINED_FUNCTION_83_5(v44);
          if (!v5)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }

        v5 = MEMORY[0x1E69E7CC0];
        v7 = &xmmword_1DD0E4000;
        v6 = &off_1EDE4F000;
        OUTLINED_FUNCTION_16_31();
      }

      else
      {

        v2 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v66, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  sub_1DCB90D40(0x6574726F70707553, 0xEF736369706F5464, a1);
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F68, &unk_1DD0F4460);
    if (OUTLINED_FUNCTION_9_44())
    {
      v2 = v65;
      if (v6[288] != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v45 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v45, qword_1EDE57E00);

      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE70C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_151();
        *v48 = 134217984;
        *(v48 + 4) = *(v65 + 16);

        _os_log_impl(&dword_1DCAFC000, v46, v47, "Found supportedTopics SET : %ld", v48, 0xCu);
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      sub_1DCDA55A8(v65, &v68);
    }
  }

  else
  {
    sub_1DCB0E9D8(v66, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  sub_1DCB90D40(0xD00000000000001ALL, 0x80000001DD11D4D0, a1);
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    if (OUTLINED_FUNCTION_9_44())
    {
      v63 = 0;
      OUTLINED_FUNCTION_33_15();
      if (!v8)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v49 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_10_41(v49, qword_1EDE57E00);

      v50 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE70C();
      if (OUTLINED_FUNCTION_61_1(v51))
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_29_19(COERCE_FLOAT(*(v7 + 275)));
        OUTLINED_FUNCTION_80_4();
        v52 = MEMORY[0x1E12A6960](0, MEMORY[0x1E69E6158]);
        v4 = v5;
        v7 = sub_1DCB10E9C(v52, v53, v66);

        *(v2 + 14) = v7;
        OUTLINED_FUNCTION_28_19(&dword_1DCAFC000, v54, v55, "Found supportedPegasusComponents : %ld : %s");
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_52();
      }

      else
      {
      }

      if (MEMORY[0x10])
      {
        OUTLINED_FUNCTION_14_39();
        OUTLINED_FUNCTION_32_17();
        while (1)
        {
          v57 = *(v7 - 1);
          v56 = *v7;
          OUTLINED_FUNCTION_27_21();
          if (v4 >= v50 >> 1)
          {
            OUTLINED_FUNCTION_13_41();
          }

          OUTLINED_FUNCTION_78_10();
          *(v58 + 32) = 261;
          OUTLINED_FUNCTION_3_67(v58, v63, v64, v65, SWORD2(v65));
          *(v59 + 72) = v57;
          *(v59 + 80) = v56;
          *(v59 + 88) = 0;
          if (!v5)
          {
            break;
          }

          OUTLINED_FUNCTION_77_7();
        }
      }

      OUTLINED_FUNCTION_94_4();
    }
  }

  else
  {
    sub_1DCB0E9D8(v66, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_88_5();
}

uint64_t IntentTopic.identifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_33_1();
}

_BYTE *IntentTopic.init(type:version:entity:verb:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *result;
  *(a7 + 1) = v7;
  v8 = 0x627265566F6ELL;
  if (a6)
  {
    v8 = a5;
  }

  v9 = 0xE600000000000000;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  if (a6)
  {
    v9 = a6;
  }

  *(a7 + 24) = v8;
  *(a7 + 32) = v9;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  return result;
}

uint64_t IntentTopic.init(type:version:entity:verb:identifier:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  v15 = *a1;
  v16 = *a2;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *a7 = v15;
  *(a7 + 1) = v16;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

SiriKitFlow::IntentTopic::IntentTopicType_optional __swiftcall IntentTopic.IntentTopicType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

SiriKitFlow::IntentTopic::IntentTopicVersion_optional __swiftcall IntentTopic.IntentTopicVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DCDA70D4(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_1DD0DE0FC();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

uint64_t sub_1DCDA715C(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      *v1;
      v4 = sub_1DD0DE0FC();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x1EEE68E00]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE68E00]();
  }

  return result;
}

uint64_t sub_1DCDA720C(uint64_t a1)
{
  v1 = a1;
  if (sub_1DCB08B14(a1))
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v9[0] = MEMORY[0x1E12A72C0](0, v1);
      sub_1DCDA749C(v9);
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
      sub_1DD0DCF8C();
    }

    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v3 = sub_1DCDA5654(MEMORY[0x1E69E7CC0]);
  v1 = sub_1DCC516CC(v3);
  if (*(v1 + 16))
  {
    return v1;
  }

  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "No topics found in dialog act", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  return v1;
}

void sub_1DCDA749C(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void static IntentTopic.makeFromTasks(userDialogAct:parserIdentifier:)()
{
  v0 = sub_1DD0DB7DC();
  if (sub_1DCB08B14(v0) || (v2 = sub_1DD0DB55C(), !v3))
  {
    v1 = OUTLINED_FUNCTION_16_18();
    sub_1DCDA720C(v1);
    OUTLINED_FUNCTION_76_8();
  }

  else
  {
    v4 = v2;
    v5 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
    v6 = OUTLINED_FUNCTION_40_9();
    *(v6 + 16) = xmmword_1DD0E07C0;
    OUTLINED_FUNCTION_8_44(v6, 1);
    *(v7 + 72) = v4;
    *(v7 + 80) = v5;
    *(v7 + 88) = 0;
  }
}

uint64_t static IntentTopic.makeFromTasks(userDialogAct:parserIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F70, &unk_1DD0F4470);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  v17 = sub_1DD0DBC6C();
  if (sub_1DCB08B14(v17))
  {
    goto LABEL_7;
  }

  sub_1DD0DB7BC();
  v18 = sub_1DD0DB4BC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    v19 = &qword_1ECCA5F70;
    v20 = &unk_1DD0F4470;
    v21 = v9;
LABEL_6:
    sub_1DCB0E9D8(v21, v19, v20);
    goto LABEL_7;
  }

  v22 = sub_1DD0DB46C();
  OUTLINED_FUNCTION_112(v18);
  (*(v23 + 8))(v9, v18);
  sub_1DCC621EC(v22);

  v24 = sub_1DD0DB5BC();
  if (__swift_getEnumTagSinglePayload(v16, 1, v24) == 1)
  {
    v19 = &qword_1ECCA29B8;
    v20 = &qword_1DD0E96C0;
    v21 = v16;
    goto LABEL_6;
  }

  sub_1DD0DB55C();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_112(v24);
  (*(v26 + 8))(v16, v24);
  if (v18)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
    a2 = OUTLINED_FUNCTION_40_9();
    *(a2 + 16) = xmmword_1DD0E07C0;
    OUTLINED_FUNCTION_8_44(a2, 1);
    *(v27 + 72) = v16;
    *(v27 + 80) = v18;
    *(v27 + 88) = 0;
    return a2;
  }

LABEL_7:
  sub_1DCDA720C(v17);
  OUTLINED_FUNCTION_76_8();

  return a2;
}

void sub_1DCDA7B68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE70C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v54 = a2;
    v10 = swift_slowAlloc();
    *&v45 = v10;
    *v9 = 136315138;
    v11 = sub_1DD0DDE7C();
    v13 = sub_1DCB10E9C(v11, v12, &v45);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "Processing supportedTopics : %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v14 = v10;
    v3 = v2;
    a2 = v54;
    MEMORY[0x1E12A8390](v14, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  IntentTopic.init(dictionary:)(&v45, v15);
  v53 = v45;
  v16 = v46;
  v50 = v47;
  v51 = v48;
  v52 = v49;

  if (v16 == 1)
  {
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v40 = v20;
      *v19 = 136315138;
      v21 = sub_1DD0DDE7C();
      v23 = sub_1DCB10E9C(v21, v22, &v40);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Processing topic failed to generate cache entry: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A8390](v20, -1, -1);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }
  }

  else
  {
    sub_1DCB099BC(&v45, &v40, &qword_1ECCA4F40, &qword_1DD0F0410);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE70C();

    sub_1DCB0E9D8(&v45, &qword_1ECCA4F40, &qword_1DD0F0410);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v3;
      v28 = v27;
      v39 = v27;
      *v26 = 136315394;
      v29 = sub_1DD0DDE7C();
      v31 = sub_1DCB10E9C(v29, v30, &v39);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v40 = v53;
      v41 = v16;
      v42 = v50;
      v43 = v51;
      v44 = v52;
      v32 = IntentTopic.cacheKey.getter();
      v34 = sub_1DCB10E9C(v32, v33, &v39);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "Processing topic : %s -> %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v28, -1, -1);
      MEMORY[0x1E12A8390](v26, -1, -1);
    }

    else
    {
    }

    sub_1DCD4B7D4();
    v35 = *(*a2 + 16);
    sub_1DCBBF6E4(v35);
    v36 = *a2;
    *(v36 + 16) = v35 + 1;
    v37 = v36 + (v35 << 6);
    *(v37 + 32) = v53;
    *(v37 + 48) = v16;
    v38 = v51;
    *(v37 + 56) = v50;
    *(v37 + 72) = v38;
    *(v37 + 88) = v52;
  }
}

uint64_t sub_1DCDA7FF8(uint64_t a1)
{
  v2 = type metadata accessor for USOParse();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = v42 - v14;
  v16 = sub_1DD0DB3EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1E69E7CD0];
  *&v45 = &type metadata for FeatureFlagDefinitions.Core;
  *(&v45 + 1) = sub_1DCBF3744();
  LOBYTE(v44[0]) = 4;
  v22 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  if ((v22 & 1) != 0 && *(a1 + *(v2 + 24) + 8))
  {
    LOWORD(v44[0]) = 1;
    v44[1] = 0xD000000000000013;
    v44[2] = 0x80000001DD11D580;
    v45 = xmmword_1DD0F4430;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    sub_1DCD3F85C(v42, v44);
    sub_1DCB340B4(v42);
  }

  sub_1DCB099BC(a1 + *(v2 + 20), v15, &qword_1ECCA2560, &unk_1DD0E5820);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1DCB0E9D8(v15, &qword_1ECCA2560, &unk_1DD0E5820);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1EDE57E00);
    sub_1DCB24740(a1, v10, type metadata accessor for USOParse);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v42[0] = v27;
      *v26 = 136315138;
      sub_1DCB24740(v10, v7, type metadata accessor for USOParse);
      v28 = sub_1DD0DE02C();
      v30 = v29;
      sub_1DCB285E0(v10, type metadata accessor for USOParse);
      v31 = sub_1DCB10E9C(v28, v30, v42);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "IntentTopic creation failed: parser was unidentified. Parse: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A8390](v27, -1, -1);
      MEMORY[0x1E12A8390](v26, -1, -1);
    }

    else
    {

      sub_1DCB285E0(v10, type metadata accessor for USOParse);
    }

    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    v32 = sub_1DD0DB46C();
    MEMORY[0x1EEE9AC00](v32, v33);
    *&v42[-1] = &v43;
    *(&v42[-1] + 1) = v21;
    sub_1DCC34BBC();

    v34 = v43;
    if (*(v43 + 16))
    {
    }

    else
    {
      v36 = qword_1EDE4F900;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v37, qword_1EDE57E00);
      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DCAFC000, v38, v39, "IntentTopic creation failed: FlowPlugin did not receive at least one UserDialogAct with .uso parse", v40, 2u);
        MEMORY[0x1E12A8390](v40, -1, -1);
      }
    }

    v35 = sub_1DCC516CC(v34);
    (*(v17 + 8))(v21, v16);
  }

  return v35;
}

uint64_t sub_1DCDA85C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  for (i = 32; ; i += 64)
  {
    if (v3 == v2)
    {
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v1 + i + 16);
    v10[0] = *(v1 + i);
    v10[1] = v5;
    v11[0] = *(v1 + i + 32);
    *(v11 + 9) = *(v1 + i + 41);
    ++v2;
    sub_1DCB32880(v10, v8);
    sub_1DCD3F85C(v6, v10);
    v8[0] = v6[0];
    v8[1] = v6[1];
    v9[0] = v7[0];
    *(v9 + 9) = *(v7 + 9);
    result = sub_1DCB340B4(v8);
  }

  __break(1u);
  return result;
}

unint64_t IntentTopic.IntentTopicType.rawValue.getter()
{
  result = 863390798;
  switch(*v0)
  {
    case 1:
      result = 880168014;
      break;
    case 2:
      result = 1885430133;
      break;
    case 3:
      result = 0x4974694B69726973;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x726574756F526C6ELL;
      break;
    case 7:
      result = 0x746E65696C436669;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t IntentTopic.IntentTopicVersion.rawValue.getter()
{
  if (*v0)
  {
    result = 1701736302;
  }

  else
  {
    result = 0x33764F5355;
  }

  *v0;
  return result;
}

unint64_t sub_1DCDA87CC@<X0>(unint64_t *a1@<X8>)
{
  result = IntentTopic.IntentTopicType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCDA88A4()
{
  v0 = sub_1DD0DEE9C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCDA88F8(char a1)
{
  if (a1)
  {
    return 0x64726163646C6977;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DCDA895C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentTopic.IntentTopicVersion.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCDA8A58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCDA88A4();
  *a2 = result;
  return result;
}

uint64_t sub_1DCDA8A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCDA88F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DCDA8ABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCDA88A4();
  *a1 = result;
  return result;
}

uint64_t sub_1DCDA8AE4(uint64_t a1)
{
  v2 = sub_1DCDA9B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDA8B20(uint64_t a1)
{
  v2 = sub_1DCDA9B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentTopic.IntentTopicWildcardString.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v28 = v3;
  v4 = sub_1DD0DECAC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v27 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F78, &qword_1DD0F4480);
  OUTLINED_FUNCTION_9(v10);
  v29 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - v16;
  v18 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCDA9B1C();
  sub_1DD0DF23C();
  if (v0)
  {
    v24 = v2;
  }

  else
  {
    v19 = v29;
    v26 = v2;
    v20 = sub_1DD0DEF0C();
    v22 = v21;
    (*(v19 + 8))(v17, v10);
    v23 = v28;
    v24 = v26;
    *v28 = v20;
    v23[1] = v22;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_19_19();
}

void IntentTopic.IntentTopicWildcardString.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F88, &qword_1DD0F4490);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCDA9B1C();
  sub_1DD0DF24C();
  if (v13)
  {
    sub_1DD0DEFBC();
  }

  else
  {
    sub_1DD0DEFCC();
  }

  (*(v5 + 8))(v11, v3);
  OUTLINED_FUNCTION_19_19();
}

uint64_t IntentTopic.IntentTopicWildcardString.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1E12A7840](1);
  }

  v1 = *v0;
  MEMORY[0x1E12A7840](0);

  return sub_1DD0DDF2C();
}

uint64_t IntentTopic.IntentTopicWildcardString.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DF1DC();
  if (v2)
  {
    MEMORY[0x1E12A7840](0);
    sub_1DD0DDF2C();
  }

  else
  {
    MEMORY[0x1E12A7840](1);
  }

  return sub_1DD0DF20C();
}

uint64_t sub_1DCDA9090()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DF1DC();
  if (v2)
  {
    MEMORY[0x1E12A7840](0);
    sub_1DD0DDF2C();
  }

  else
  {
    MEMORY[0x1E12A7840](1);
  }

  return sub_1DD0DF20C();
}

uint64_t sub_1DCDA9130(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1651664246 && a2 == 0xE400000000000000;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000015 && 0x80000001DD11D560 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD0DF0AC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DCDA9324(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x797469746E65;
      break;
    case 3:
      result = 1651664246;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDA93D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDA9130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDA93F8(uint64_t a1)
{
  v2 = sub_1DCDA9B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDA9434(uint64_t a1)
{
  v2 = sub_1DCDA9B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentTopic.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F90, &qword_1DD0F4498);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v23 - v11;
  v13 = *v0;
  v32 = v0[1];
  v14 = *(v0 + 1);
  v28 = *(v0 + 2);
  v29 = v14;
  v15 = *(v0 + 3);
  v26 = *(v0 + 4);
  v27 = v15;
  v16 = *(v0 + 6);
  v24 = *(v0 + 5);
  v25 = v16;
  v23[3] = v0[56];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCDA9B70();
  v18 = v4;
  sub_1DD0DF24C();
  LOBYTE(v30) = v13;
  sub_1DCDA9BC4();
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFFC();
  if (!v1)
  {
    v20 = v28;
    v19 = v29;
    v21 = v26;
    v22 = v27;
    LOBYTE(v30) = v32;
    sub_1DCDA9C18();
    OUTLINED_FUNCTION_60_7();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();
    v30 = v19;
    v31 = v20;
    sub_1DCDA9C6C();

    OUTLINED_FUNCTION_60_7();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();

    v30 = v22;
    v31 = v21;

    OUTLINED_FUNCTION_60_7();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();

    LOBYTE(v30) = 4;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEF8C();
    LOBYTE(v30) = 5;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFCC();
  }

  (*(v6 + 8))(v12, v18);
  OUTLINED_FUNCTION_19_19();
}

uint64_t IntentTopic.hashValue.getter()
{
  sub_1DD0DF1DC();
  IntentTopic.hash(into:)();
  return sub_1DD0DF20C();
}

void IntentTopic.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F98, &qword_1DD0F44A0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCDA9B70();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1DCDA9CC0();
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    sub_1DCDA9D14();
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    v35 = v27;
    sub_1DCDA9D68();
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    v22 = v27;
    v23 = v28;
    LOBYTE(v24) = 3;
    OUTLINED_FUNCTION_12_38();
    OUTLINED_FUNCTION_53_12();
    sub_1DD0DEF4C();
    v20 = v27;
    v21 = v27;
    v11 = v28;
    LOBYTE(v27) = 4;
    OUTLINED_FUNCTION_53_12();
    v12 = sub_1DD0DEEDC();
    v14 = v13;
    v19 = v12;
    OUTLINED_FUNCTION_53_12();
    v15 = sub_1DD0DEF1C();
    v16 = OUTLINED_FUNCTION_20_20();
    v17(v16);
    LOBYTE(v24) = v35;
    BYTE1(v24) = v22;
    *(&v24 + 1) = v20;
    *&v25 = v23;
    *(&v25 + 1) = v21;
    *v26 = v11;
    *&v26[8] = v19;
    *&v26[16] = v14;
    v26[24] = v15 & 1;
    v18 = v25;
    *v4 = v24;
    v4[1] = v18;
    v4[2] = *v26;
    *(v4 + 41) = *&v26[9];
    sub_1DCB32880(&v24, &v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    LOBYTE(v27) = v35;
    BYTE1(v27) = v22;
    v28 = v20;
    v29 = v23;
    v30 = v21;
    v31 = v11;
    v32 = v19;
    v33 = v14;
    v34 = v15 & 1;
    sub_1DCB340B4(&v27);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCDA9AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

unint64_t sub_1DCDA9B1C()
{
  result = qword_1EDE4A020;
  if (!qword_1EDE4A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A020);
  }

  return result;
}

unint64_t sub_1DCDA9B70()
{
  result = qword_1EDE49FD8;
  if (!qword_1EDE49FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FD8);
  }

  return result;
}

unint64_t sub_1DCDA9BC4()
{
  result = qword_1EDE4A008;
  if (!qword_1EDE4A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A008);
  }

  return result;
}

unint64_t sub_1DCDA9C18()
{
  result = qword_1EDE49FF0;
  if (!qword_1EDE49FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FF0);
  }

  return result;
}

unint64_t sub_1DCDA9C6C()
{
  result = qword_1EDE4A018;
  if (!qword_1EDE4A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A018);
  }

  return result;
}

unint64_t sub_1DCDA9CC0()
{
  result = qword_1EDE49FF8;
  if (!qword_1EDE49FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FF8);
  }

  return result;
}

unint64_t sub_1DCDA9D14()
{
  result = qword_1EDE49FE0;
  if (!qword_1EDE49FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FE0);
  }

  return result;
}

unint64_t sub_1DCDA9D68()
{
  result = qword_1EDE4A010;
  if (!qword_1EDE4A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A010);
  }

  return result;
}

unint64_t sub_1DCDA9DC0()
{
  result = qword_1ECCA5FA0;
  if (!qword_1ECCA5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FA0);
  }

  return result;
}

unint64_t sub_1DCDA9E18()
{
  result = qword_1ECCA5FA8;
  if (!qword_1ECCA5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FA8);
  }

  return result;
}

unint64_t sub_1DCDA9E70()
{
  result = qword_1ECCA5FB0;
  if (!qword_1ECCA5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FB0);
  }

  return result;
}

unint64_t sub_1DCDA9EC8()
{
  result = qword_1EDE49FB8;
  if (!qword_1EDE49FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FB8);
  }

  return result;
}

uint64_t assignWithCopy for IntentTopic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for IntentTopic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v8 = *(a2 + 48);
  v9 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntentTopic(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for IntentTopic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentTopic.IntentTopicType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentTopic.IntentTopicWildcardString(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for IntentTopic.IntentTopicWildcardString(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentTopic.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCDAA350(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCDAA42C()
{
  result = qword_1ECCA5FB8;
  if (!qword_1ECCA5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FB8);
  }

  return result;
}

unint64_t sub_1DCDAA484()
{
  result = qword_1ECCA5FC0;
  if (!qword_1ECCA5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5FC0);
  }

  return result;
}

unint64_t sub_1DCDAA4DC()
{
  result = qword_1EDE49FC8;
  if (!qword_1EDE49FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FC8);
  }

  return result;
}

unint64_t sub_1DCDAA534()
{
  result = qword_1EDE49FD0;
  if (!qword_1EDE49FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FD0);
  }

  return result;
}

unint64_t sub_1DCDAA58C()
{
  result = qword_1EDE4A030;
  if (!qword_1EDE4A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A030);
  }

  return result;
}

unint64_t sub_1DCDAA5E4()
{
  result = qword_1EDE4A028;
  if (!qword_1EDE4A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A028);
  }

  return result;
}

unint64_t sub_1DCDAA638()
{
  result = qword_1EDE49FE8;
  if (!qword_1EDE49FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FE8);
  }

  return result;
}

unint64_t sub_1DCDAA68C()
{
  result = qword_1EDE4A000;
  if (!qword_1EDE4A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4A000);
  }

  return result;
}

unint64_t sub_1DCDAA6E0()
{
  result = qword_1EDE49FC0;
  if (!qword_1EDE49FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE49FC0);
  }

  return result;
}

uint64_t sub_1DCDAA734()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DCDA8590();
}

unint64_t sub_1DCDAA750()
{
  result = qword_1EDE464E0;
  if (!qword_1EDE464E0)
  {
    sub_1DD0DB3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE464E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_11()
{
}

void sub_1DCDAA7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDB2C();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_66();
  sub_1DD0DDABC();
  OUTLINED_FUNCTION_7_7();
  v11 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a1;
  v16[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAAA0C@<X0>(void *a1@<X0>, void (*a2)(void *__return_ptr, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40[1] = a3;
  v41 = a2;
  v45 = a1;
  v54 = a8;
  v44 = a6;
  v11 = type metadata accessor for _FlowPlanEvent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v51 = v40 - v14;
  v15 = sub_1DD0DDBAC();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v49 = v40 - v18;
  swift_getAssociatedTypeWitness();
  v43 = a7;
  v42 = a4;
  swift_getAssociatedConformanceWitness();
  v50 = sub_1DD0DF21C();
  v48 = *(v50 - 8);
  v19 = *(v48 + 64);
  v21 = MEMORY[0x1EEE9AC00](v50, v20);
  v47 = v40 - v22;
  v40[0] = *(a5 - 8);
  v23 = *(v40[0] + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for _FlowPlanEvent();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = (v40 - v31);
  v46 = sub_1DD0DDB2C();
  v33 = sub_1DD0DDB1C();
  (*(v28 + 16))(v32, v45, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v40[0] + 32))(v26, v32, a5);
    v41(v57, v26);
    v45 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v34 = swift_allocObject();
    v34[2] = v42;
    v34[3] = a5;
    v34[4] = v43;
    v34[5] = v33;
    sub_1DD0DF22C();
    v55 = type metadata accessor for LifeCycleModifierFlow();
    WitnessTable = swift_getWitnessTable();
    sub_1DD0DCF8C();
  }

  sub_1DCAFF9E8(v32, v58);
  sub_1DCB17CA0(v58, v51);
  swift_storeEnumTagMultiPayload();
  v35 = v49;
  sub_1DD0DDBBC();
  v36 = v47;
  v37 = v53;
  sub_1DD0DDB9C();
  (*(v52 + 8))(v35, v37);
  v57[0] = v33;
  v38 = v50;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDC6C();
  (*(v48 + 8))(v36, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

uint64_t sub_1DCDAB04C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*a2 + *MEMORY[0x1E695BF78]) + 16);
  WitnessTable = swift_getWitnessTable();
  return sub_1DCDAB0F0(a1, v3, v4, WitnessTable);
}

uint64_t sub_1DCDAB0E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1DCDAB04C(a1, *(v1 + 40));
}

uint64_t sub_1DCDAB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a1;
  v6 = *(a4 + 8);
  OUTLINED_FUNCTION_2_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = a2;
  OUTLINED_FUNCTION_8_45();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1DD0DDADC();
  v9 = OUTLINED_FUNCTION_9(v8);
  v48 = v10;
  v49 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  v47 = *(AssociatedTypeWitness - 8);
  v17 = *(v47 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - v20;
  OUTLINED_FUNCTION_7_7();
  v22 = type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_9(v22);
  v46 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_10();
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v46 - v29;
  v31 = *(a3 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28, v33);
  v35 = &v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_45();
  v36 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_9(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v46 - v41;
  (*(v43 + 16))(&v46 - v41, v50, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v47;
    (*(v47 + 32))(v21, v42, AssociatedTypeWitness);
    (*(v44 + 16))(v16, v21, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, AssociatedTypeWitness);
    sub_1DD0DDBCC();
    (*(v48 + 8))(v16, v49);
    return (*(v44 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    (*(v31 + 32))(v35, v42, a3);
    (*(v31 + 16))(v30, v35, a3);
    swift_storeEnumTagMultiPayload();
    sub_1DD0DDBDC();
    (*(v46 + 8))(v30, v22);
    return (*(v31 + 8))(v35, a3);
  }
}

void sub_1DCDAB4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_8_45();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDB2C();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_66();
  sub_1DD0DDABC();
  OUTLINED_FUNCTION_1_72();
  swift_getWitnessTable();
  v8 = sub_1DD0DDAAC();
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  swift_getWitnessTable();
  v13 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a1;
  v18[6] = a2;
  sub_1DD0DCF8C();
}

void sub_1DCDAB814(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a4;
  v44 = a6;
  v10 = type metadata accessor for _FlowPlanEvent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v40 = &AssociatedConformanceWitness - v13;
  v14 = sub_1DD0DDBAC();
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v39 = &AssociatedConformanceWitness - v18;
  v34 = a5;
  v33 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = sub_1DD0DF21C();
  v41 = *(v38 - 8);
  v19 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38, v20);
  v36 = &AssociatedConformanceWitness - v21;
  v22 = swift_checkMetadataState();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &AssociatedConformanceWitness - v26;
  v35 = sub_1DD0DDB2C();
  v28 = sub_1DD0DDB1C();
  a2(v45, a1);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  (*(v23 + 16))(v27, a1, v22);
  v29 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v30 = swift_allocObject();
  v31 = v37;
  *(v30 + 2) = v33;
  *(v30 + 3) = v31;
  *(v30 + 4) = v34;
  *(v30 + 5) = v28;
  (*(v23 + 32))(&v30[v29], v27, v22);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDABCBC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a2 + *MEMORY[0x1E695BF78];
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v7 = sub_1DD0DDADC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  (*(*(v6 - 8) + 16))(&v14 - v11, a3, v6);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
  sub_1DD0DDB0C();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1DCDABE0C(uint64_t a1)
{
  v2 = type metadata accessor for _FlowPlanEvent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v15 - v6;
  v8 = sub_1DD0DDBAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  (*(v3 + 16))(v7, a1, v2);
  sub_1DD0DDBBC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1DD0DDB9C();
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_1DCDABFF0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DCDABE0C(a1);
}

uint64_t sub_1DCDABFFC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  OUTLINED_FUNCTION_7_7();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v1[5];
  v7 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1DCDABCBC(a1, v6, v7);
}

void sub_1DCDAC09C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE0, &qword_1DD0F4BA8);
    OUTLINED_FUNCTION_5_57();
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  sub_1DD0DCF8C();
}

void sub_1DCDAC354(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A10, &qword_1DD0E7EE0);
    OUTLINED_FUNCTION_5_57();
  }

  v2 = *(a1 + 64);
  OUTLINED_FUNCTION_3_68();
  sub_1DD0DCF8C();
}

void sub_1DCDAC57C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A10, &qword_1DD0E7EE0);
    OUTLINED_FUNCTION_5_57();
  }

  v2 = *(a1 + 64);
  OUTLINED_FUNCTION_3_68();
  sub_1DD0DCF8C();
}

void sub_1DCDAC840()
{
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_7_42();
  sub_1DCD10120();
  OUTLINED_FUNCTION_6_47();
}

void sub_1DCDAC8F8()
{
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_6_47();
}

void sub_1DCDAC9A0()
{
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_6_47();
}

id sub_1DCDACA48(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

void static SiriKitDirectInvocationPayloads.makeSubmit(userData:)()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_61();
  sub_1DCD10120();
  OUTLINED_FUNCTION_6_47();
}

unint64_t sub_1DCDACAD8()
{
  result = qword_1EDE46110;
  if (!qword_1EDE46110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46110);
  }

  return result;
}

id static SiriKitDirectInvocationPayloads.makeSelect(id:)(unint64_t a1, unint64_t a2)
{
  sub_1DCDACAD8();
  OUTLINED_FUNCTION_2_61();
  v4 = sub_1DCD10120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_73(inited, xmmword_1DD0E07C0);
  v6 = MEMORY[0x1E69E6158];
  sub_1DD0DEBBC();
  inited[6].n128_u64[0] = v6;
  inited[4].n128_u64[1] = a1;
  inited[5].n128_u64[0] = a2;

  v7 = sub_1DD0DDE9C();
  sub_1DCDAD634(v7, v4);
  return v4;
}

id static SiriKitDirectInvocationPayloads.makeIndexBasedSelect(index:)()
{
  OUTLINED_FUNCTION_7_42();
  v1 = sub_1DCD10120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_73(inited, xmmword_1DD0E07C0);
  sub_1DD0DEBBC();
  inited[6].n128_u64[0] = MEMORY[0x1E69E6530];
  inited[4].n128_u64[1] = v0;
  v3 = sub_1DD0DDE9C();
  sub_1DCDAD634(v3, v1);
  return v1;
}

id static InvocationFactory.makeConfirmAndRejectActions()()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  if (qword_1ECCA12D0 != -1)
  {
    swift_once();
  }

  v2 = [v0 runSiriKitExecutorCommandWithContext:v1 payload:qword_1ECCA5FC8];

  v3 = [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  if (qword_1ECCA12D8 != -1)
  {
    swift_once();
  }

  v4 = [v0 runSiriKitExecutorCommandWithContext:v3 payload:qword_1ECCA5FD0];

  return v2;
}

void static InvocationFactory.makeSubmitAction(userData:)()
{
  objc_opt_self();
  [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  sub_1DCDACAD8();
  OUTLINED_FUNCTION_2_61();
  sub_1DCD10120();
  OUTLINED_FUNCTION_6_47();
}

id static InvocationFactory.makeSelectAction(id:)(unint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [objc_allocWithZone(MEMORY[0x1E69D01C0]) init];
  v6 = static SiriKitDirectInvocationPayloads.makeSelect(id:)(a1, a2);
  v7 = [v4 runSiriKitExecutorCommandWithContext:v5 payload:v6];

  return v7;
}

void sub_1DCDAD634(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DDE4C();

  [a2 setUserData_];
}

_BYTE *sub_1DCDAD740(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *sub_1DCDAD7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FF0, &qword_1DD0F4BD8);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E696E5D0];
  *(inited + 16) = xmmword_1DD0EBAB0;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = *MEMORY[0x1E695CB60];
  v4 = sub_1DD0DDFBC();
  v6 = v5;
  v7 = v2;
  v8 = sub_1DCDADB34(v4, v6);

  v9 = *MEMORY[0x1E696E608];
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  v10 = *MEMORY[0x1E695CBD8];
  v11 = sub_1DD0DDFBC();
  v13 = v12;
  v14 = v9;
  v15 = sub_1DCDADB34(v11, v13);

  v16 = *MEMORY[0x1E696E5F0];
  *(inited + 56) = v15;
  *(inited + 64) = v16;
  v17 = *MEMORY[0x1E695CB68];
  v18 = sub_1DD0DDFBC();
  v20 = v19;
  v21 = v16;
  v22 = sub_1DCDADB34(v18, v20);

  v23 = *MEMORY[0x1E696E618];
  *(inited + 72) = v22;
  *(inited + 80) = v23;
  v24 = *MEMORY[0x1E695CBC0];
  v25 = sub_1DD0DDFBC();
  v27 = v26;
  v28 = v23;
  v29 = sub_1DCDADB34(v25, v27);

  v30 = *MEMORY[0x1E696E5E8];
  *(inited + 88) = v29;
  *(inited + 96) = v30;
  v31 = *MEMORY[0x1E695CB90];
  v32 = sub_1DD0DDFBC();
  v34 = v33;
  v35 = v30;
  v36 = sub_1DCDADB34(v32, v34);

  v37 = *MEMORY[0x1E696E5E0];
  *(inited + 104) = v36;
  *(inited + 112) = v37;
  v38 = *MEMORY[0x1E695CB88];
  v39 = sub_1DD0DDFBC();
  v41 = v40;
  v42 = v37;
  v43 = sub_1DCDADB34(v39, v41);

  v44 = *MEMORY[0x1E696E5D8];
  *(inited + 120) = v43;
  *(inited + 128) = v44;
  v45 = *MEMORY[0x1E695CB78];
  v46 = sub_1DD0DDFBC();
  v48 = v47;
  v49 = v44;
  v50 = sub_1DCDADB34(v46, v48);

  v51 = *MEMORY[0x1E696E610];
  *(inited + 136) = v50;
  *(inited + 144) = v51;
  v52 = *MEMORY[0x1E695CBB8];
  v53 = sub_1DD0DDFBC();
  v55 = v54;
  v56 = v51;
  v57 = sub_1DCDADB34(v53, v55);

  v58 = *MEMORY[0x1E696E5F8];
  *(inited + 152) = v57;
  *(inited + 160) = v58;
  v59 = *MEMORY[0x1E695CBA0];
  v60 = sub_1DD0DDFBC();
  v62 = v61;
  v63 = v58;
  v64 = sub_1DCDADB34(v60, v62);

  v65 = *MEMORY[0x1E696E600];
  *(inited + 168) = v64;
  *(inited + 176) = v65;
  v66 = *MEMORY[0x1E695CBC8];
  v67 = sub_1DD0DDFBC();
  v69 = v68;
  v70 = v65;
  v71 = sub_1DCDADB34(v67, v69);

  *(inited + 184) = v71;
  type metadata accessor for INPersonHandleLabel(0);
  sub_1DCDADE6C();
  sub_1DCDADEB0();
  result = sub_1DD0DDE9C();
  off_1EDE492B0 = result;
  return result;
}

id sub_1DCDADB34(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FF8, &qword_1DD0F4BE0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = sub_1DD0DDFBC();
  v8 = v7;

  v9 = [objc_opt_self() bundleForClass_];
  v10 = objc_allocWithZone(MEMORY[0x1E696E818]);

  return sub_1DCDADD0C(a1, a2, v6, v8, v9, 0);
}

uint64_t sub_1DCDADC04()
{

  v0 = sub_1DD0DE0CC();
  v1 = sub_1DCB594B0(v0);
  v2 = MEMORY[0x1E12A66E0](v1);

  v3 = sub_1DD0DE0CC();
  sub_1DCDA715C(v3);
  return v2;
}

uint64_t sub_1DCDADC94()
{
  v0 = sub_1DCDADC04();
  MEMORY[0x1E12A6780](v0);

  v1 = sub_1DD0DDF8C();

  return v1;
}

id sub_1DCDADD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1DD0DDF8C();

  if (a4)
  {
    v12 = sub_1DD0DDF8C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithDeferredFormat:v11 fromTable:v12 bundle:a5 arguments:a6];

  return v13;
}

_BYTE *storeEnumTagSinglePayload for LabelMappingUtil(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DCDADE6C()
{
  result = qword_1EDE46140;
  if (!qword_1EDE46140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46140);
  }

  return result;
}

unint64_t sub_1DCDADEB0()
{
  result = qword_1EDE46198;
  if (!qword_1EDE46198)
  {
    type metadata accessor for INPersonHandleLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46198);
  }

  return result;
}

uint64_t sub_1DCDADF08(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 128) = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDADF24);
}

uint64_t sub_1DCDADF24()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v2 = sub_1DD0DDE9C();
  *(v0 + 112) = v2;
  OUTLINED_FUNCTION_32_2(&unk_1DD0F4C88);
  v9 = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1DCDAE048;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 128);

  return v9(v7, v5, v2);
}

uint64_t sub_1DCDAE048()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = *(v6 + 120);
  v8 = *(v6 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  OUTLINED_FUNCTION_22_22();
  if (!v0)
  {
    v11 = v5;
    v12 = v3;
  }

  return v13(v11, v12);
}

uint64_t sub_1DCDAE160(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a1;
  v7 = swift_task_alloc();
  *(v3 + 160) = v7;
  *v7 = v3;
  v7[1] = sub_1DCDAE21C;

  return sub_1DCC6FFB0(v3 + 16, a1, a2, 0, a3);
}

uint64_t sub_1DCDAE21C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 160);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDAE31C()
{
  OUTLINED_FUNCTION_33();
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  v1 = *(v0 + 128);
  if (v1[2] || (v1 = *(v0 + 120), v1[2]))
  {
    v3 = v1[4];
    v2 = v1[5];

    sub_1DCBF48A4(v0 + 88);
    OUTLINED_FUNCTION_22_22();

    return v4(v3, v2);
  }

  else
  {
    v6 = *(v0 + 176);
    sub_1DCBF48A4(v0 + 88);
    v7 = sub_1DCC677D8(v6);
    v9 = v8;
    sub_1DCDB021C();
    swift_allocError();
    *v10 = v7;
    v10[1] = v9;
    swift_willThrow();
    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DCDAE444()
{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_29();
  return v2();
}

void sub_1DCDAE4A4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

uint64_t sub_1DCDAE584()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *(v7 + 56);
  v10 = *v2;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  v5[9] = v1;

  if (!v1)
  {
    v5[10] = v0;
    v5[11] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCDAE6B8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

uint64_t sub_1DCDAE798()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *(v7 + 56);
  v10 = *v2;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  v5[9] = v1;

  if (!v1)
  {
    v5[10] = v0;
    v5[11] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCDAE8B8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_22_22();
  v3 = v0[10];
  v2 = v0[11];

  return v1(v2, v3);
}

void static LabelTemplates.openApp(appDisplayInfo:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v24 - v18;
  v20 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_1DCDAF5E8(a1, v14);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1DCD0506C(v14, v22 + v21);
  v23 = (v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAEB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1DCDAEBB0;

  return static LabelTemplates.cancel()();
}

uint64_t sub_1DCDAEBB0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v5[5] = v1;

  if (!v1)
  {
    v5[6] = v0;
    v5[7] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCDAECC8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

void sub_1DCDAEDC8(uint64_t a1, uint64_t a2)
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
  v10[4] = a1;
  v10[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1DCDAEBB0;

  return static LabelTemplates.confirm()();
}

void sub_1DCDAEF54()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

uint64_t sub_1DCDAF034()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_31_0(v3);

  return static LabelTemplates.no()();
}

uint64_t sub_1DCDAF0BC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v5[5] = v1;

  if (!v1)
  {
    v5[6] = v0;
    v5[7] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCDAF1C0()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40) != 0;
  (*(v0 + 16))(v1, v2, v4);
  sub_1DCD00AD8(v1, v2, v4);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCDAF250()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 16))(v1, 0, v1 != 0);
  sub_1DCD00AD8(v1, 0, v1 != 0);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCDAF2DC()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_31_0(v3);

  return static LabelTemplates.yes()();
}

uint64_t sub_1DCDAF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCDAF388, 0, 0);
}

uint64_t sub_1DCDAF388()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_32_2(dword_1DD10C2C0);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1DCDAF450;

  return v6(&unk_1DD0F4C80, v2);
}

uint64_t sub_1DCDAF450()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 72) = v9;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDAF560()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  (*(v0 + 24))(v2, v1, v4 & 1);
  sub_1DCD00AD8(v2, v1, v4 & 1);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCDAF5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDAF658(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DCB4AE1C;

  return sub_1DCDAF364(a1, v9, v10, v1 + v7, v12, v13);
}

uint64_t sub_1DCDAF790()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAEB20(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCDAF81C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAEEB0(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCDAF8A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCDAF940;

  return static LabelTemplates.openApp(appDisplayInfo:)();
}

uint64_t sub_1DCDAF940()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_152();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }
}

uint64_t static LabelTemplates.openApp(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0) - 8) + 64) + 15;
  v0[16] = swift_task_alloc();
  v3 = sub_1DD0DD23C();
  v0[17] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[18] = v4;
  v6 = *(v5 + 64) + 15;
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDAFB5C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCDAF5E8(v3, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCDAFF80(*(v0 + 128));
  }

  else
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    (*(v7 + 32))(v6, *(v0 + 128), v8);
    *(v0 + 56) = sub_1DD0DD21C();
    *(v0 + 80) = v4;
    *(v0 + 64) = v9;
    sub_1DCB20B30((v0 + 56), (v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 160) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v10 = qword_1EDE57D40;
  v11 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_1F58563F0;
  *(v0 + 16) = v10;
  v12 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDAFD74()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *(v7 + 160);
  v10 = *v2;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  v5[22] = v1;

  if (!v1)
  {
    v5[23] = v0;
    v5[24] = v3;
  }

  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCDAFE94()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_22_22();
  v5 = v0[23];
  v4 = v0[24];

  return v3(v4, v5);
}

uint64_t sub_1DCDAFF0C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_29();
  v4 = v0[22];

  return v3();
}

uint64_t sub_1DCDAFF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCDAFFFC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_8_47(v0, v0, &off_1F58563F0);
}

_BYTE *storeEnumTagSinglePayload for LabelTemplates(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCDB0188()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCDAF8A8(v2);
}

unint64_t sub_1DCDB021C()
{
  result = qword_1ECCA6000;
  if (!qword_1ECCA6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6000);
  }

  return result;
}

uint64_t sub_1DCDB027C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDB02A0, 0, 0);
}

uint64_t sub_1DCDB02A0()
{
  v1 = *(v0[12] + 32);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = *(v0[12] + 32);
    }

    if (sub_1DD0DEB3C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = sub_1DD0DD8FC();
    v0[15] = __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      *v5 = 0;
      _os_log_impl(&dword_1DCAFC000, v3, v4, "Building legacy AddViews Output. Will generate legacy Output using AddViews", v5, 2u);
      OUTLINED_FUNCTION_80();
    }

    v7 = v0[12];
    v6 = v0[13];

    v8 = swift_task_alloc();
    *(v8 + 16) = v1;
    *(v8 + 24) = v6;
    v0[16] = sub_1DCF754D4(sub_1DCDB15E8, v8, v1);

    v9 = *(v7 + 24);
    v0[17] = v9;
    v10 = MEMORY[0x1E69E7CC0];
    v0[9] = v9;
    v0[10] = v10;
    v11 = *(v7 + 16);

    if (v11)
    {
      v12 = [v11 patternId];
      sub_1DD0DDFBC();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v0[18] = v14;
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_1DCDB04FC;
    v16 = v0[13];

    return sub_1DCB6AA14();
  }

  v19 = v0[11];
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v20 = v0[1];

  return v20();
}

uint64_t sub_1DCDB04FC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DCDB0614, 0, 0);
}

uint64_t sub_1DCDB0614()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  if (v1 && v2)
  {
    v3 = (v0 + 72);
    v4 = *(v0 + 120);
    v5 = v2;
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v7))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Adding 1 suggestion snippet to LegacyOutput snippets", v8, 2u);
      OUTLINED_FUNCTION_80();
    }

    MEMORY[0x1E12A6920]();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  else
  {
    v3 = (v0 + 136);
  }

  v9 = sub_1DCDB099C(*(v0 + 128), *v3, *(v0 + 104));

  v10 = v9;
  MEMORY[0x1E12A6920]();
  if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD0DE33C();
  }

  sub_1DD0DE3AC();
  if (v1 && sub_1DCB08B14(v1))
  {
    v11 = *(v0 + 120);
    swift_bridgeObjectRetain_n();
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = sub_1DCB08B14(v1);

      _os_log_impl(&dword_1DCAFC000, v12, v13, "Adding additional %ld hint commands to LegacyOutput commands", v14, 0xCu);
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    sub_1DCBB920C(v1);
  }

  v15 = *(v0 + 104);
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = type metadata accessor for OutputGenerationManifest();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v19 = *(v18 + 48);
  v20 = type metadata accessor for AceOutput();
  v16[3] = v20;
  v16[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
  sub_1DCDB1604(v15 + v19, boxed_opaque_existential_1Tm + v20[7]);
  v22 = v20[9];
  v23 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v22, 1, 1, v23);
  v24 = v20[8];
  v25 = *MEMORY[0x1E69D0678];
  v26 = sub_1DD0DD15C();
  (*(*(v26 - 8) + 104))(boxed_opaque_existential_1Tm + v24, v25, v26);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  sub_1DCBBF7D0(v2, v1);

  *(boxed_opaque_existential_1Tm + v20[10]) = 0;
  *boxed_opaque_existential_1Tm = v17;
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  v27 = *(v0 + 8);

  return v27();
}

id sub_1DCDB099C(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OutputGenerationManifest();
  if (*(a3 + *(v12 + 32)) != 1)
  {
    goto LABEL_14;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = sub_1DD0DD8FC();
  v40 = __swift_project_value_buffer(v13, qword_1EDE57E00);
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_1_74(v16);
    OUTLINED_FUNCTION_5_58(&dword_1DCAFC000, v17, v18, "ResponseFactory: Setting listenAfterSpeaking to true on the last utterance view");
    OUTLINED_FUNCTION_2_62();
  }

  if (!sub_1DCB08B14(a1))
  {
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_1_74(v22);
      OUTLINED_FUNCTION_5_58(&dword_1DCAFC000, v23, v24, "ResponseFactory: UtteranceViews are empty but listenAfterSpeaking is true. Attempting to set listenAfterSpeaking on snippet.");
      OUTLINED_FUNCTION_2_62();
    }

    v19 = sub_1DCCD2C5C(a2);
    if (!v19)
    {
      v26 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v37))
      {
        v38 = OUTLINED_FUNCTION_50_0();
        *v38 = 0;
        _os_log_impl(&dword_1DCAFC000, v26, v37, "ResponseFactory: No AceViews found on Snippet. Unable to set listenAfterSpeaking", v38, 2u);
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_13;
    }

LABEL_12:
    v25 = v19;
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v26 = sub_1DD0DE8CC();
    [v25 setListenAfterSpeaking_];

LABEL_13:
    goto LABEL_14;
  }

  v19 = sub_1DCB6BA68(a1);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_14:
  v27 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  sub_1DD0DB03C();
  v28 = sub_1DD0DAFFC();
  v30 = v29;
  (*(v7 + 8))(v11, v6);
  sub_1DCB4D8E8(v28, v30, v27);

  v31 = *a3;
  v32 = a3[1];
  v33 = sub_1DD0DDF8C();
  [v27 setDialogPhase_];

  if (a1 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v39 = sub_1DD0DEE0C();

    a1 = v39;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  }

  v41 = a1;

  sub_1DCB673E0(v34);
  sub_1DCB6BBC0(v41, v27);
  [v27 setImmersiveExperience_];
  v35 = sub_1DCB6BC44(MEMORY[0x1E69E7CC0]);
  sub_1DCB6BD3C(v35, v27);
  return v27;
}

uint64_t sub_1DCDB0D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB193FC;

  return sub_1DCDB027C(a1, a2, a3);
}

uint64_t sub_1DCDB0E44@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v9 = sub_1DD0DE2EC();

  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v7;
  sub_1DCCE2204(sub_1DCDB1674, v13, v9);
  v11 = v10;

  *a4 = v11;
  return result;
}

void sub_1DCDB0F20(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v75 = a4;
  v73 = a2;
  v74 = a3;
  v5 = sub_1DD0DB04C();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v69 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v10 = [v9 fullSpeak];
  v11 = sub_1DD0DDFBC();
  v13 = v12;

  v14 = [v9 supportingSpeak];
  v15 = sub_1DD0DDFBC();
  v17 = v16;

  sub_1DCB6B83C(v11, v13, v15, v17);
  v19 = v18;

  v20 = [v9 fullPrint];
  v21 = sub_1DD0DDFBC();
  v23 = v22;

  v24 = v9;
  v25 = [v9 supportingPrint];
  v26 = sub_1DD0DDFBC();
  v28 = v27;

  sub_1DCB6B83C(v21, v23, v26, v28);
  v30 = v29;

  v31 = v69;
  v32 = v69;
  if (v19)
  {
    v33 = sub_1DD0DDF8C();
  }

  else
  {
    v33 = 0;
  }

  [v31 setSpeakableText_];

  if (v30)
  {
    v34 = sub_1DD0DDF8C();
  }

  else
  {
    v34 = 0;
  }

  [v31 setText_];

  if ([v24 printOnly])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v35 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v35, qword_1EDE57E00);
    v36 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DCAFC000, v36, v37, "The printOnly flag is set to true. Removing speakable text.", v38, 2u);
      MEMORY[0x1E12A8390](v38, -1, -1);
    }

    [v31 setSpeakableText_];
  }

  if ([v24 spokenOnly])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v39 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v39, qword_1EDE57E00);
    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DCAFC000, v40, v41, "The spokenOnly flag is set to true. Removing printed text.", v42, 2u);
      MEMORY[0x1E12A8390](v42, -1, -1);
    }

    [v31 setText_];
  }

  if (sub_1DCB6B8AC())
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v43 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v43, qword_1EDE57E00);
    v44 = v24;
    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v76 = v48;
      *v47 = 136315138;
      v49 = [v44 id];
      v50 = sub_1DD0DDFBC();
      v52 = v51;

      v53 = sub_1DCB10E9C(v50, v52, &v76);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_1DCAFC000, v45, v46, "ResponseFactory: .text and .speakableText are empty for dialog '%s'. Sending downstream anyway for logging, testing, etc.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1E12A8390](v48, -1, -1);
      MEMORY[0x1E12A8390](v47, -1, -1);
    }
  }

  v54 = v31;
  v55 = v70;
  sub_1DD0DB03C();
  v56 = sub_1DD0DAFFC();
  v58 = v57;
  (*(v71 + 8))(v55, v72);
  sub_1DCB4D8E8(v56, v58, v54);

  v59 = type metadata accessor for OutputGenerationManifest();
  v60 = v73;
  v61 = *(v73 + *(v59 + 32));
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v62 = sub_1DD0DE8CC();
  [v54 setListenAfterSpeaking_];

  v63 = [v24 id];
  v64 = sub_1DD0DDFBC();
  v66 = v65;

  sub_1DCB6B954(v64, v66, v54);
  [v54 setCanUseServerTTS_];

  sub_1DCCE255C();
  if (v67)
  {
    v68 = sub_1DD0DDF8C();
  }

  else
  {
    v68 = 0;
  }

  [v54 setDialogCategory_];

  *v75 = v54;
}

uint64_t sub_1DCDB1604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ActingFlow.attach(option:)(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  OUTLINED_FUNCTION_10_42(a1, a2);
  sub_1DCDB1900();
  v3 = v2;
  sub_1DCDB21D4(&v3);
}

uint64_t sub_1DCDB1734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_46_8();
  v9 = v8;
  sub_1DCDB1900();
  v10 = OUTLINED_FUNCTION_5_59();
  a6(v10);

  *v9 = v6;
  return result;
}

void sub_1DCDB1790()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1DCDB1900();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v1;
  v8[4] = v7;
  v8[5] = v5;
  sub_1DD0DCF8C();
}

void ActingFlow<>.onCompletion(_:)()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_63();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1DD0DCF8C();
}

void sub_1DCDB1900()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = *(v5 + 16);
  v14(&v16[-v15], v1, v3);
  swift_getAssociatedTypeWitness();
  type metadata accessor for LifeCycleModifierFlow();
  if (!swift_dynamicCast())
  {
    v14(v12, v1, v3);
    LifeCycleModifierFlow.__allocating_init<A>(wrapped:)();
  }

  OUTLINED_FUNCTION_15_5();
}

void ActingFlow.id(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_42(a1, a2);
  sub_1DCDB1900();
  sub_1DCDB21A0(a1);
}

uint64_t sub_1DCDB1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_46_8();
  v8 = v7;
  sub_1DCDB1900();
  v9 = OUTLINED_FUNCTION_5_59();
  a5(v9);

  *v8 = v5;
  return result;
}

uint64_t LifeCycleModifierFlow.__allocating_init<A>(wrapped:)()
{
  OUTLINED_FUNCTION_46_8();
  swift_allocObject();
  OUTLINED_FUNCTION_5_59();
  LifeCycleModifierFlow.init<A>(wrapped:)();
  return v0;
}

void ActingFlow<>.onSuccess(_:)()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_63();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB1BFC(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm, a1, AssociatedTypeWitness);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1DCDB1CB0()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDB1D30(uint64_t a1, uint64_t *a2)
{
  sub_1DCB49DC0(a1, v5, qword_1ECCA6008, &unk_1DD0F4CD0);
  v3 = *a2;
  return sub_1DCDB1DC8(v5);
}

uint64_t sub_1DCDB1DC8(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCDB2618(a1, v1 + 32);
  return swift_endAccess();
}

unint64_t sub_1DCDB1E18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCDB1E90(&v5);
  *a2 = v5;
  return result;
}

unint64_t sub_1DCDB1E54(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  sub_1DCDB2688(v4);
  return sub_1DCDB1ECC(&v4);
}

unint64_t sub_1DCDB1E90@<X0>(unint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_5_22();
  v3 = *(v1 + 72);
  *a1 = v3;
  return sub_1DCDB2688(v3);
}

unint64_t sub_1DCDB1ECC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  return sub_1DCDB2698(v3);
}

void sub_1DCDB1F58()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB1F84(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return OUTLINED_FUNCTION_4_67();
}

void sub_1DCDB1F9C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB1FC8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return OUTLINED_FUNCTION_4_67();
}

void LifeCycleModifierFlow.init<A>(wrapped:)()
{
  OUTLINED_FUNCTION_20_10();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_46_8();
  v6 = *v3;
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 2) = 0u;
  v3[10] = nullsub_1;
  v3[11] = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = *(v6 + 80);
  v3[17] = nullsub_1;
  v3[18] = v15;
  v3[15] = v1;
  v3[16] = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v3 + 12);
  v17 = *(v8 + 16);
  v17(boxed_opaque_existential_1Tm, v2, v1);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v21 = 0xD000000000000016;
  v22 = 0x80000001DD116780;
  v17(v14, v2, v1);
  v18 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v18);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v19 = v21;
  v20 = v22;
  (*(v8 + 8))(v2, v1);
  v3[2] = v19;
  v3[3] = v20;
  OUTLINED_FUNCTION_15_5();
}

void sub_1DCDB21A0(uint64_t a1)
{
  sub_1DCC60FBC(a1, v1);
  sub_1DCDB1DC8(v1);
  sub_1DD0DCF8C();
}

void sub_1DCDB21D4(unint64_t *a1)
{
  v1 = *a1;
  sub_1DCDB2688(v1);
  sub_1DCDB1ECC(&v1);

  sub_1DD0DCF8C();
}

void sub_1DCDB226C()
{
  OUTLINED_FUNCTION_20_10();
  v1 = *v0;
  sub_1DCDB1F9C();
}

uint64_t sub_1DCDB2348(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v21 = a4;
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v13 = sub_1DD0DF22C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v20 - v17;
  a2(a1);
  (*(v14 + 16))(v18, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  (*(v9 + 32))(v12, v18, a6);
  v21(v12);
  return (*(v9 + 8))(v12, a6);
}

void sub_1DCDB2570()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_63();
  v1 = *v0;
  sub_1DCDB1F9C();
}

uint64_t sub_1DCDB2618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA6008, &unk_1DD0F4CD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCDB2688(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1DCDB2698(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1DCDB26A8(uint64_t a1)
{
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  (*(v1 + 24))();
  return v5(a1);
}

void sub_1DCDB270C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DF22C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v14 - v11);
  a2(a1);
  (*(v8 + 16))(v12, a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    a4(*v12);
  }

  else
  {
    (*(v8 + 8))(v12, v7);
  }
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

void sub_1DCDB2928(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v47 - v11;
  v13 = *(v3 + 80);
  v14 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - v21;
  OUTLINED_FUNCTION_0_1();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v47 - v29;
  sub_1DCB0DF6C(a1, v51);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v13);
    (*(v24 + 32))(v30, v22, v13);
    sub_1DCDB1F9C();
  }

  v48 = v9;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v13);
  (*(v16 + 8))(v22, v14);
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_1DD0DEC1C();

  v49 = 0xD000000000000010;
  v50 = 0x80000001DD11D750;
  v31 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v31);

  MEMORY[0x1E12A6780](0x746F672074756220, 0xE900000000000020);
  sub_1DCB0DF6C(a1, v51);
  v32 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v32);

  v33 = v49;
  v34 = v50;
  v35 = qword_1EDE4F900;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_1DD0DD8FC();
  v37 = __swift_project_value_buffer(v36, qword_1EDE57E00);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v12, v37, v36);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v36);
  v39 = v48;
  sub_1DCB49DC0(v12, v48, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v36) == 1)
  {
    sub_1DCB16E04(v48, &unk_1ECCA7470);
  }

  else
  {

    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51[0] = v43;
      *v42 = 136315650;
      v44 = sub_1DD0DEC3C();
      v46 = sub_1DCB10E9C(v44, v45, v51);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 222;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_1DCB10E9C(v33, v34, v51);
      _os_log_impl(&dword_1DCAFC000, v40, v41, "FatalError at %s:%lu - %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v43, -1, -1);
      MEMORY[0x1E12A8390](v42, -1, -1);
    }

    (*(v38 + 8))(v48, v36);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(v33, v34);
}

void *LifeCycleModifierFlow.deinit()
{
  v1 = v0[3];

  sub_1DCB16E04((v0 + 4), qword_1ECCA6008);
  sub_1DCDB2698(v0[9]);
  v2 = v0[11];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v3 = v0[18];

  return v0;
}

uint64_t LifeCycleModifierFlow.__deallocating_deinit()
{
  LifeCycleModifierFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDB3028(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t destroy for AttachmentOption(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

unint64_t *assignWithCopy for AttachmentOption(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

unint64_t *assignWithTake for AttachmentOption(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    goto LABEL_5;
  }

  if (v3 < 0xFFFFFFFF)
  {

LABEL_5:
    *a1 = v3;
    return a1;
  }

  *a1 = v3;

  return a1;
}

uint64_t sub_1DCDB3520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_10_42(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_0_64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCDB3560(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1DCDB1BFC(a1, *(v1 + 32));
}

uint64_t sub_1DCDB35D4()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t sub_1DCDB35FC()
{
  sub_1DCDB35D4();

  return swift_deallocClassInstance();
}

uint64_t Linearly.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_30();
  v1 = swift_allocObject();
  Linearly.init(_:)(v0);
  return v1;
}

uint64_t sub_1DCDB3694(uint64_t a1, uint64_t a2)
{
  *(a1 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5288, &qword_1DD0F10C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a2;

  v5 = static FlowsBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1DCC65794();

  *(a1 + 16) = v5;
  v6 = *(v5 + 16) == 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2 * v6;
  return a1;
}

uint64_t Linearly.init(_:)(void (*a1)(void))
{
  *(v1 + 33) = 1;
  a1();
  OUTLINED_FUNCTION_30();

  *(v1 + 16) = v2;
  v3 = *(v2 + 16) == 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2 * v3;
  return v1;
}

void sub_1DCDB37AC(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *(v2 + 32);
  if (*(v2 + 32))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    if (v5 == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60A0, &qword_1DD0F4EB8);
      a1[3] = v6;
      a1[4] = &protocol witness table for Conclude<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v8 = boxed_opaque_existential_1Tm + v6[7];
      *v8 = v4;
      v8[8] = 1;
      v9 = v6[8];
      sub_1DCBD0C2C(v17, boxed_opaque_existential_1Tm + v9);
      *(boxed_opaque_existential_1Tm + v6[9]) = 0;
      boxed_opaque_existential_1Tm[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      *boxed_opaque_existential_1Tm = v4;
      *(boxed_opaque_existential_1Tm + 8) = 1;
      sub_1DCDB3A9C(v4, 1);
      sub_1DCDB3A9C(v4, 1);
      v10 = v4;
      sub_1DCB16D50(v17, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v9, (boxed_opaque_existential_1Tm + 4));
      *(boxed_opaque_existential_1Tm + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      sub_1DCDB3AB0(v4, 1);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60A0, &qword_1DD0F4EB8);
      a1[3] = v12;
      a1[4] = &protocol witness table for Conclude<A>;
      v13 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v14 = v13 + v12[7];
      *v14 = 0;
      v14[8] = 0;
      v15 = v12[8];
      sub_1DCBD0C2C(v17, v13 + v15);
      *(v13 + v12[9]) = 0;
      v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      *v13 = 0;
      *(v13 + 8) = 0;
      sub_1DCB16D50(v17, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(v13 + v15, (v13 + 4));
      *(v13 + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v2 + 16);
      if (v4 < *(v11 + 16))
      {
        sub_1DCB17CA0(v11 + 40 * v4 + 32, v16);
        __swift_project_boxed_opaque_existential_1(v16, v16[3]);
        sub_1DD0DCF8C();
      }
    }

    __break(1u);
  }
}

id sub_1DCDB3A9C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_1DCDB3AB0(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t *sub_1DCDB3AC4(uint64_t a1)
{
  sub_1DCB0DF6C(a1, v2);
  sub_1DCDB3C74(v2);
  return sub_1DCDB4910(v2);
}

uint64_t sub_1DCDB3B18(uint64_t a1, char a2)
{
  if (!a2)
  {
    v4 = 0x65646E69286E7572;
    v2 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v2);

    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = 0;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0x286572756C696166, 0xEF203A726F727265);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
LABEL_5:
    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v4;
  }

  return 1701736292;
}

void sub_1DCDB3C74(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v26 = v3;
  v27 = v4;
  sub_1DCDB4884(a1, v28);
  if (v4)
  {
    sub_1DCDB3A9C(v3, v4);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_7_43();
    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  sub_1DCB20B30(v28, v25);
  sub_1DCB0DF6C(v25, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60B8, &qword_1DD0F4F68);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8(v20, &v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    (*(v7 + 8))(v18, v6, v7);
    if (v19)
    {
      if ((*(v2 + 33) & 1) == 0)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v17 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v17, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE4F900 == -1)
      {
LABEL_9:
        v8 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v8, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

LABEL_23:
      OUTLINED_FUNCTION_0_0();
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (!__OFADD__(v3, 1))
    {
      OUTLINED_FUNCTION_2_64();
      if (v10 == v11)
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_1_75(v14);
      sub_1DCDB3AB0(v15, v16);
      sub_1DCB16D50(v18, &qword_1ECCA60C8, &qword_1DD0F4F78);
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1DCB16D50(v20, &qword_1ECCA60C0, &qword_1DD0F4F70);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_64();
  if (v10 == v11)
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_1_75(v9);
  sub_1DCDB3AB0(v12, v13);
}

uint64_t Linearly.deinit()
{
  v1 = *(v0 + 16);

  sub_1DCDB3AB0(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t Linearly.__deallocating_deinit()
{
  Linearly.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDB4444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v43[-v16];
  v18 = *(v15 + 16);
  OUTLINED_FUNCTION_0_1();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v43[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_0_1();
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v43[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v34 = *(v6 + 32);
    v34(v17, v32, v4);
    (*(v6 + 16))(v13, v17, v4);
    v35 = *(a1 + 32);
    v36 = sub_1DD0DF06C();
    if (v36)
    {
      v37 = v36;
      v38 = *(v6 + 8);
      v38(v13, v4);
    }

    else
    {
      v37 = swift_allocError();
      v34(v42, v13, v4);
      v38 = *(v6 + 8);
    }

    result = (v38)(v17, v4);
    *a2 = v37;
  }

  else
  {
    v39 = *(v20 + 32);
    v39(v26, v32, v18);
    *(a2 + 24) = v18;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    result = v39(boxed_opaque_existential_1Tm, v26, v18);
  }

  *(a2 + 32) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t assignWithCopy for Linearly.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCDB3A9C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCDB3AB0(v5, v6);
  return a1;
}

uint64_t assignWithTake for Linearly.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCDB3AB0(v4, v5);
  return a1;
}

unint64_t sub_1DCDB48BC()
{
  result = qword_1ECCA60A8;
  if (!qword_1ECCA60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60A8);
  }

  return result;
}

uint64_t initializeWithCopy for Linearly.Event(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t assignWithTake for Linearly.Event(uint64_t a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for Linearly.Event(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for Linearly.Event(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t LinkParse.debugDescription.getter()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x64496E6F69746361, 0xEA0000000000203ALL);
  v1 = type metadata accessor for LinkParse();
  MEMORY[0x1E12A6780](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1E12A6780](0x797469746E65202CLL, 0xEC000000203A6449);
  v2 = (v0 + *(v1 + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A6780](v3, v4);

  MEMORY[0x1E12A6780](0x7261504F5355202CLL, 0xEC000000203A6573);
  type metadata accessor for USOParse();
  sub_1DD0DEDBC();
  return 0;
}

uint64_t LinkParse.init(usoParse:actionId:entityId:entityDisplayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for LinkParse();
  v17 = (a8 + v16[7]);
  result = sub_1DCC6D300(a1, a8);
  v19 = (a8 + v16[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + v16[6]);
  *v20 = a4;
  v20[1] = a5;
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t LinkParse.actionId.getter()
{
  v0 = type metadata accessor for LinkParse();
  OUTLINED_FUNCTION_3_12(*(v0 + 20));
  return OUTLINED_FUNCTION_33_1();
}

uint64_t LinkParse.entityId.getter()
{
  v0 = type metadata accessor for LinkParse();
  OUTLINED_FUNCTION_3_12(*(v0 + 24));
  return OUTLINED_FUNCTION_33_1();
}

uint64_t LinkParse.entityDisplayName.getter()
{
  v0 = type metadata accessor for LinkParse();
  OUTLINED_FUNCTION_3_12(*(v0 + 28));
  return OUTLINED_FUNCTION_33_1();
}

uint64_t LinkParse.entityDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkParse() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static LinkParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static USOParse.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for LinkParse();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  OUTLINED_FUNCTION_5_61();
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v15 = *v13 == *v14 && v11 == v12;
    if (!v15 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  OUTLINED_FUNCTION_5_61();
  if (v17)
  {
    if (v18)
    {
      v21 = *v19 == *v20 && v17 == v18;
      if (v21 || (sub_1DD0DF0AC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DCDB4E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65737261506F7375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001DD11D8D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DCDB4FFC(char a1)
{
  result = 0x65737261506F7375;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6F69746361;
      goto LABEL_4;
    case 2:
      v3 = 0x797469746E65;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDB5080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDB4E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDB50A8(uint64_t a1)
{
  v2 = sub_1DCDB5308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDB50E4(uint64_t a1)
{
  v2 = sub_1DCDB5308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkParse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60D0, &qword_1DD0F4FB0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  v13 = &v26[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCDB5308();
  sub_1DD0DF24C();
  v26[15] = 0;
  type metadata accessor for USOParse();
  sub_1DCDB5700(qword_1EDE46598);
  sub_1DD0DEFFC();
  if (!v2)
  {
    v15 = type metadata accessor for LinkParse();
    v16 = (v3 + v15[5]);
    v17 = *v16;
    v18 = v16[1];
    v26[14] = 1;
    OUTLINED_FUNCTION_1_76();
    sub_1DD0DEFBC();
    v19 = (v3 + v15[6]);
    v20 = *v19;
    v21 = v19[1];
    v26[13] = 2;
    OUTLINED_FUNCTION_1_76();
    sub_1DD0DEF8C();
    v22 = (v3 + v15[7]);
    v23 = *v22;
    v24 = v22[1];
    v26[12] = 3;
    OUTLINED_FUNCTION_1_76();
    sub_1DD0DEF8C();
  }

  return (*(v8 + 8))(v13, v5);
}

unint64_t sub_1DCDB5308()
{
  result = qword_1ECCA60D8;
  if (!qword_1ECCA60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60D8);
  }

  return result;
}

uint64_t LinkParse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39[0] = a2;
  v4 = type metadata accessor for USOParse();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v40 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA60E0, &qword_1DD0F4FB8);
  v11 = OUTLINED_FUNCTION_9(v10);
  v39[1] = v12;
  v39[2] = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11, v15);
  v16 = type metadata accessor for LinkParse();
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCDB5308();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v22;
  v44 = 0;
  sub_1DCDB5700(&qword_1EDE46590);
  sub_1DD0DEF4C();
  sub_1DCC6D300(v40, v22);
  v43 = 1;
  v25 = sub_1DD0DEF0C();
  v26 = &v22[v16[5]];
  *v26 = v25;
  v26[1] = v27;
  v42 = 2;
  v28 = sub_1DD0DEEDC();
  v29 = a1;
  v30 = (v24 + v16[6]);
  *v30 = v28;
  v30[1] = v31;
  v41 = 3;
  v32 = sub_1DD0DEEDC();
  v34 = v33;
  v35 = (v24 + v16[7]);
  v36 = OUTLINED_FUNCTION_2_65();
  v37(v36);
  *v35 = v32;
  v35[1] = v34;
  sub_1DCDB5744(v24, v39[0], type metadata accessor for LinkParse);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return sub_1DCDB57A0(v24, type metadata accessor for LinkParse);
}

uint64_t sub_1DCDB5700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for USOParse();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCDB5744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCDB57A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for LinkParse(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for USOParse();
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(&a2[v8], 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&a1[v8], &a2[v8], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    __swift_storeEnumTagSinglePayload(&a1[v8], 0, 1, v9);
  }

  v11 = v7[6];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  v15 = v7[7];
  v16 = &a1[v15];
  v17 = &a2[v15];
  *v16 = *v17;
  v16[4] = v17[4];
  v18 = a3[5];
  v19 = a3[6];
  v20 = &a1[v18];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v22;
  v23 = &a1[v19];
  v24 = &a2[v19];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v26 = a3[7];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v29 = *(v28 + 1);
  *v27 = *v28;
  *(v27 + 1) = v29;

  return a1;
}

uint64_t destroy for LinkParse(uint64_t a1, int *a2)
{
  v4 = sub_1DD0DB4BC();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 + 20);
  v7 = sub_1DD0DB3EC();
  if (!__swift_getEnumTagSinglePayload(a1 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(a1 + v6, v7);
  }

  v8 = *(a1 + *(v5 + 24) + 8);

  v9 = *(a1 + a2[5] + 8);

  v10 = *(a1 + a2[6] + 8);

  v11 = *(a1 + a2[7] + 8);
}

uint64_t initializeWithCopy for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for USOParse();
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(a2 + v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
  }

  v11 = v7[6];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v7[7];
  v16 = a1 + v15;
  v17 = a2 + v15;
  *v16 = *v17;
  *(v16 + 4) = *(v17 + 4);
  v18 = a3[5];
  v19 = a3[6];
  v20 = (a1 + v18);
  v21 = (a2 + v18);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  v23 = (a1 + v19);
  v24 = (a2 + v19);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  v26 = a3[7];
  v27 = (a1 + v26);
  v28 = (a2 + v26);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  return a1;
}

uint64_t assignWithCopy for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for USOParse();
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v8, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(a2 + v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 24))(a1 + v8, a2 + v8, v9);
      goto LABEL_7;
    }

    (*(v12 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
LABEL_7:
  v14 = v7[6];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  *v15 = *v16;
  v17 = v15[1];
  v15[1] = v16[1];

  v18 = v7[7];
  v19 = a1 + v18;
  v20 = (a2 + v18);
  v21 = *v20;
  *(v19 + 4) = *(v20 + 4);
  *v19 = v21;
  v22 = a3[5];
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  *v23 = *v24;
  v25 = v23[1];
  v23[1] = v24[1];

  v26 = a3[6];
  v27 = (a1 + v26);
  v28 = (a2 + v26);
  *v27 = *v28;
  v29 = v27[1];
  v27[1] = v28[1];

  v30 = a3[7];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  *v31 = *v32;
  v33 = v31[1];
  v31[1] = v32[1];

  return a1;
}

uint64_t initializeWithTake for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for USOParse();
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(a2 + v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  v11 = v7[7];
  v12 = a1 + v11;
  v13 = a2 + v11;
  *(v12 + 4) = *(v13 + 4);
  *v12 = *v13;
  v14 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for LinkParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DB4BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for USOParse();
  v8 = v7[5];
  v9 = sub_1DD0DB3EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v8, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(a2 + v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 40))(a1 + v8, a2 + v8, v9);
      goto LABEL_7;
    }

    (*(v12 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
LABEL_7:
  v14 = v7[6];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  v19 = v15[1];
  *v15 = v18;
  v15[1] = v17;

  v20 = v7[7];
  v21 = a1 + v20;
  v22 = a2 + v20;
  *(v21 + 4) = *(v22 + 4);
  *v21 = *v22;
  v23 = a3[5];
  v24 = (a1 + v23);
  v25 = (a2 + v23);
  v27 = *v25;
  v26 = v25[1];
  v28 = v24[1];
  *v24 = v27;
  v24[1] = v26;

  v29 = a3[6];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  v33 = *v31;
  v32 = v31[1];
  v34 = v30[1];
  *v30 = v33;
  v30[1] = v32;

  v35 = a3[7];
  v36 = (a1 + v35);
  v37 = (a2 + v35);
  v39 = *v37;
  v38 = v37[1];
  v40 = v36[1];
  *v36 = v39;
  v36[1] = v38;

  return a1;
}

uint64_t sub_1DCDB6334()
{
  result = type metadata accessor for USOParse();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkParse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCDB64B4()
{
  result = qword_1ECCA60E8;
  if (!qword_1ECCA60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60E8);
  }

  return result;
}

unint64_t sub_1DCDB650C()
{
  result = qword_1ECCA60F0;
  if (!qword_1ECCA60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60F0);
  }

  return result;
}

unint64_t sub_1DCDB6564()
{
  result = qword_1ECCA60F8;
  if (!qword_1ECCA60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA60F8);
  }

  return result;
}

uint64_t sub_1DCDB65B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDB66A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v23))
  {
    v24 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v24);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v25, v26, "Executing default implementation for makeRepromptOnEmptyParse");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_39_17();
  *(v15 + 16) = v21;
  *(v15 + 24) = v19;
  *(v15 + 25) = v18;
  *(v15 + 32) = v20;
  *(v15 + 40) = v17;
  *(v15 + 41) = v16;
  *(v15 + 42) = v14;
  v27 = *(a11 + 40);
  v43 = a11 + 40;
  OUTLINED_FUNCTION_24_0();
  v42 = v28 + *v28;
  v30 = *(v29 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v15 + 104) = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_35_23(v31);
  OUTLINED_FUNCTION_76();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

uint64_t sub_1DCDB682C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCDB6940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDB6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v23))
  {
    v24 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v24);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v25, v26, "Executing default implementation for makeRepromptOnLowConfidence");
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_39_17();
  *(v15 + 16) = v21;
  *(v15 + 24) = v19;
  *(v15 + 25) = v18;
  *(v15 + 32) = v20;
  *(v15 + 40) = v17;
  *(v15 + 41) = v16;
  *(v15 + 42) = v14;
  v27 = *(a11 + 40);
  v43 = a11 + 40;
  OUTLINED_FUNCTION_24_0();
  v42 = v28 + *v28;
  v30 = *(v29 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v15 + 104) = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_35_23(v31);
  OUTLINED_FUNCTION_76();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

uint64_t sub_1DCDB6BB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCDB6CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeFlowCancelledResponse()(a1);
}

uint64_t sub_1DCDB6D74()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Executing default implementation for makeFlowCancelledResponse");
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_31_1(v7);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCDB6E6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ListPromptFlowStrategy.makeErrorResponse(error:)(a1);
}

uint64_t sub_1DCDB6F18()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Executing default implementation for makeErrorResponse");
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_31_1(v7);

  return sub_1DCCDC444();
}

uint64_t ListPromptFlowStrategy.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDB702C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 24))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v3();
}

void WindowingDisambiguationInputType.description.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_57_0();
      break;
    case 2:
      OUTLINED_FUNCTION_32_18();
      break;
    default:
      return;
  }
}

void sub_1DCDB7130(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_57_0();
      break;
    case 2:
      OUTLINED_FUNCTION_32_18();
      break;
    default:
      return;
  }
}

uint64_t sub_1DCDB71A8()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}