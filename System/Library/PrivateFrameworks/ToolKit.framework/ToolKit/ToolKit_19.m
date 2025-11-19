uint64_t sub_1C8E1A4D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C8E1685C;

  return v8();
}

uint64_t sub_1C8E1A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1C8D4F62C(a3, v25 - v11, &unk_1EC316510, &qword_1C9085200);
  v13 = sub_1C90642AC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC316510, &qword_1C9085200);
  }

  else
  {
    sub_1C906429C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1C906424C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C9063F7C() + 32;
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

      sub_1C8D16D78(a3, &unk_1EC316510, &qword_1C9085200);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C8D16D78(a3, &unk_1EC316510, &qword_1C9085200);
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

uint64_t sub_1C8E1A898(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8E1A990;

  return v7(a1);
}

uint64_t sub_1C8E1A990()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_7_10();

  return v5();
}

uint64_t sub_1C8E1AA70(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1C8E1AA88(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_1C906342C();
  v5 = sub_1C906479C();
  v7 = sub_1C8CACE04(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

unint64_t sub_1C8E1AAE0()
{
  result = qword_1EC316400;
  if (!qword_1EC316400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316400);
  }

  return result;
}

unint64_t sub_1C8E1AB34()
{
  result = qword_1EDA60518;
  if (!qword_1EDA60518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC316410, &qword_1C907D840);
    sub_1C8D39E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60518);
  }

  return result;
}

uint64_t sub_1C8E1ABB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1C8D59AE4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F98, &unk_1C9085250);
  sub_1C90648EC();
  sub_1C8D5CD04(*(v11 + 48) + 40 * v6);
  v9 = *(*(v11 + 56) + 8 * v6);
  sub_1C906490C();
  *v2 = v11;
  return v9;
}

uint64_t sub_1C8E1AC90@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v10 = v5;
  v12 = *v5;
  v13 = sub_1C8CAE064();
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v10;
    v17 = *(*v10 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_1C90648EC();
    v18 = *(*(v27 + 48) + 16 * v15 + 8);

    v19 = *(v27 + 56);
    v20 = a3(0);
    OUTLINED_FUNCTION_13_1(v20);
    sub_1C8E1BAB4(v19 + *(v21 + 72) * v15, a5, a4);
    sub_1C906490C();
    *v10 = v27;
    OUTLINED_FUNCTION_150();
    v25 = v20;
  }

  else
  {
    v25 = a3(0);
    v22 = a5;
    v23 = 1;
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

double sub_1C8E1ADDC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1C8D59B28(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316430, &unk_1C9072410);
    sub_1C90648EC();
    v11 = *(v14 + 48);
    v12 = sub_1C90648DC();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    sub_1C8D1D824((*(v14 + 56) + 32 * v8), a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316438, &qword_1C9085060);
    sub_1C906490C();
    *v3 = v14;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1C8E1AF00()
{
  result = qword_1EDA624E0;
  if (!qword_1EDA624E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624E0);
  }

  return result;
}

uint64_t sub_1C8E1AF54()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_132_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_29_13(v3);

  return sub_1C8E11418(v5, v6, v7, v1);
}

uint64_t sub_1C8E1B0F4()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_132_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_29_13(v3);

  return sub_1C8E0EDDC(v5, v6, v7, v1);
}

uint64_t sub_1C8E1B188(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = a2 & 0xDFFFFFFFFFFFFFFFLL;

    return sub_1C8CE9144(a1, v4);
  }

  else
  {
    sub_1C8CE9144(a1, a2);
  }
}

uint64_t sub_1C8E1B1D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = a2 & 0xDFFFFFFFFFFFFFFFLL;

    return sub_1C8CE7B78(a1, v4);
  }

  else
  {
    sub_1C8CE7B78(a1, a2);
  }
}

unint64_t sub_1C8E1B228()
{
  result = qword_1EC316458;
  if (!qword_1EC316458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316458);
  }

  return result;
}

uint64_t sub_1C8E1B27C()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_132_1();
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_1_4(v9);
  *v10 = v11;
  v10[1] = sub_1C8E1BB44;

  return sub_1C8E15880(v0, v4, v5, v6, v7, v8, v2, v3);
}

uint64_t sub_1C8E1B348(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
LABEL_3:
      result = a5(result, a2);
      break;
  }

  return result;
}

unint64_t sub_1C8E1B37C()
{
  result = qword_1EC316468;
  if (!qword_1EC316468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316468);
  }

  return result;
}

uint64_t sub_1C8E1B3D0()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_132_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_29_13(v3);

  return sub_1C8E16BA4(v5, v6, v7, v1);
}

unint64_t sub_1C8E1B464()
{
  result = qword_1EC316470;
  if (!qword_1EC316470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316470);
  }

  return result;
}

uint64_t sub_1C8E1B4B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8E1B510()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_132_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_29_13(v3);

  return sub_1C8E09964(v5, v6, v7, v1);
}

uint64_t sub_1C8E1B5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_24_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

void sub_1C8E1B60C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_46(v9);
  v12 = ((*(v10 + 80) + 24) & ~*(v10 + 80)) + *(v11 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
  OUTLINED_FUNCTION_46(v13);
  v16 = *(v5 + 16);
  v22 = *(v5 + ((*(v15 + 64) + ((v12 + *(v14 + 80)) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = OUTLINED_FUNCTION_125();
  sub_1C8E0ABC0(v17, v18, a3, a4, a5, v19, v20, v21);
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C8E1B758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {
  }

  else if (a6 == 1)
  {
  }
}

uint64_t sub_1C8E1B7BC()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_87_4(v5);
  *v6 = v7;
  v6[1] = sub_1C8E1685C;
  v8 = OUTLINED_FUNCTION_145();

  return v9(v8);
}

uint64_t sub_1C8E1B870()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_87_4(v5);
  *v6 = v7;
  v6[1] = sub_1C8E1BB44;
  v8 = OUTLINED_FUNCTION_145();

  return v9(v8);
}

uint64_t objectdestroy_222Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_161_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C8E1B95C()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_132_1();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  *v4 = v5;
  v4[1] = sub_1C8E1BB44;
  v6 = OUTLINED_FUNCTION_45_13();

  return v7(v6);
}

uint64_t sub_1C8E1BA10()
{
  OUTLINED_FUNCTION_4_2();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  *v4 = v5;
  v4[1] = sub_1C8E1BB44;
  v6 = OUTLINED_FUNCTION_45_13();

  return v7(v6);
}

uint64_t sub_1C8E1BAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_24_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_37_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return *(v2 + 104);
}

uint64_t OUTLINED_FUNCTION_52_8()
{

  return sub_1C9063CEC();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return sub_1C906346C();
}

void OUTLINED_FUNCTION_61_7()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[67];
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_78_6()
{
  result = v0[35];
  v2 = v0[32];
  v3 = v0[27];
  return result;
}

void *OUTLINED_FUNCTION_94_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __dst)
{
  *(v20 + 4) = v19;
  *(v20 + 12) = 2080;

  return memcpy(&__dst, __src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_99_5()
{
  v4 = *(v0 + v1 + 32);
  v3 = *(v0 + v1 + 40);
}

uint64_t OUTLINED_FUNCTION_116_4(uint64_t a1)
{

  return sub_1C8E1B4B8(a1, type metadata accessor for Query);
}

uint64_t OUTLINED_FUNCTION_117_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_136_3()
{
  v2 = v0[82];
  v3 = v0[79];
  v4 = v0[74];
  v5 = v0[69];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v9 = v0[62];

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_137_2()
{
}

uint64_t OUTLINED_FUNCTION_145_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[19];
  v4 = v2[20];
  v5 = v2[17];
  v6 = v2[18];
  v7 = v2[16];
  return v2[13];
}

uint64_t OUTLINED_FUNCTION_146_3()
{
  v2 = v0[63];
  v5 = v0[68];
  v3 = v0[62];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_169_3()
{

  return sub_1C906341C();
}

void OUTLINED_FUNCTION_181_4()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[36];
}

uint64_t OUTLINED_FUNCTION_183_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_185_3()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_187_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_189_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_194_3()
{
}

BOOL OUTLINED_FUNCTION_195_2()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_196_4()
{
}

uint64_t OUTLINED_FUNCTION_197_3()
{
}

void OUTLINED_FUNCTION_200_3()
{
  v1 = v0[36];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
}

uint64_t OUTLINED_FUNCTION_229_2()
{
  v2 = v0[80];
  v3 = v0[77];
  v4 = v0[60];
  v5 = v0[61];

  return sub_1C906371C();
}

void OUTLINED_FUNCTION_230_1()
{
}

uint64_t OUTLINED_FUNCTION_234_1()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[31];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_235_1()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 280);

  return sub_1C90633FC();
}

uint64_t OUTLINED_FUNCTION_236_1()
{
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[22];

  return sub_1C906371C();
}

void OUTLINED_FUNCTION_237_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_238_2()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_240_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_244_2()
{
}

uint64_t SpotlightIndexingEntry.Event.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  result = 0x20646574656C6544;
  switch(*(v0 + 64))
  {
    case 1:
    case 8:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_7_24();
      goto LABEL_11;
    case 2:
    case 9:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_7_24();
      v5 = v18 + 7;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      v19[0] = 0xD00000000000001ALL;
      v19[1] = 0x80000001C90CB3F0;
      v7 = MEMORY[0x1CCA81C30](v1, MEMORY[0x1E69E6158]);
      goto LABEL_15;
    case 4:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_7_24();
      v5 = v9 - 2;
      goto LABEL_11;
    case 5:
      v11 = v0[6];
      v10 = v0[7];
      v13 = v0[4];
      v12 = v0[5];
      v15 = v0[2];
      v14 = v0[3];
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      strcpy(v19, "Diff result (");
      HIWORD(v19[1]) = -4864;
      MEMORY[0x1CCA81A90](v1, v2);
      OUTLINED_FUNCTION_30_16();
      MEMORY[0x1CCA81A90](v15, v14);
      OUTLINED_FUNCTION_30_16();
      MEMORY[0x1CCA81A90](v13, v12);
      OUTLINED_FUNCTION_30_16();
      v16 = v11;
      v17 = v10;
      goto LABEL_12;
    case 6:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_7_24();
      v5 = v8 + 28;
      goto LABEL_11;
    case 7:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      v19[0] = 0x657220736C6F6F54;
      v19[1] = 0xEF203A6465766F6DLL;
      v7 = MEMORY[0x1CCA81C60](v1, MEMORY[0x1E69E6158]);
LABEL_15:
      MEMORY[0x1CCA81A90](v7);

      return v19[0];
    case 0xA:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_7_24();
      v5 = v6 + 6;
      goto LABEL_11;
    case 0xB:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      v4 = 0x80000001C90CB320;
      v5 = 0xD000000000000010;
      goto LABEL_11;
    case 0xC:
      return result;
    default:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      v4 = 0x80000001C90CB450;
      v5 = 0x1000000000000017;
LABEL_11:
      v19[0] = v5;
      v19[1] = v4;
      v16 = v1;
      v17 = v2;
LABEL_12:
      MEMORY[0x1CCA81A90](v16, v17);
      return v19[0];
  }
}

uint64_t sub_1C8E1C53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5464657865646E69 && a2 == 0xEB000000006C6F6FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C65447865646E69 && a2 == 0xEC00000064657465;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44736E69616D6F64 && a2 == 0xEE00646574656C65;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C90CB510 == a2;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7573655266666964 && a2 == 0xEA0000000000746CLL;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000020 && 0x80000001C90CB530 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D6552736C6F6F74 && a2 == 0xEC0000006465766FLL;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x546465766F6D6572 && a2 == 0xEB000000006C6F6FLL;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C90CB560 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001C90CB580 == a2;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6465727265666564 && a2 == 0xED00007865646E49)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9064C2C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
    }
  }
}

uint64_t sub_1C8E1C944(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      v3 = 0x657865646E69;
      goto LABEL_7;
    case 2:
      result = 0x6873696E6966;
      break;
    case 3:
      result = 0x6C65447865646E69;
      break;
    case 4:
      result = 0x44736E69616D6F64;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x7573655266666964;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0x6D6552736C6F6F74;
      break;
    case 9:
      v3 = 0x65766F6D6572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5464000000000000;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6465727265666564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E1CADC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

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

uint64_t sub_1C8E1CC38(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6465646461;
      break;
    case 2:
      result = 0x64657461647075;
      break;
    case 3:
      result = 0x6465766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E1CCB0(uint64_t a1)
{
  v2 = sub_1C8E1E254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1CCEC(uint64_t a1)
{
  v2 = sub_1C8E1E254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1CD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E1C53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E1CD58(uint64_t a1)
{
  v2 = sub_1C8E1DFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1CD94(uint64_t a1)
{
  v2 = sub_1C8E1DFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1CDD0(uint64_t a1)
{
  v2 = sub_1C8E1E008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1CE0C(uint64_t a1)
{
  v2 = sub_1C8E1E008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1CE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E1CADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E1CE78(uint64_t a1)
{
  v2 = sub_1C8E1E200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1CEB4(uint64_t a1)
{
  v2 = sub_1C8E1E200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1CEF0(uint64_t a1)
{
  v2 = sub_1C8E1E2A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1CF2C(uint64_t a1)
{
  v2 = sub_1C8E1E2A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1CF68(uint64_t a1)
{
  v2 = sub_1C8E1E1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1CFA4(uint64_t a1)
{
  v2 = sub_1C8E1E1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1CFE0(uint64_t a1)
{
  v2 = sub_1C8E1E350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D01C(uint64_t a1)
{
  v2 = sub_1C8E1E350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D058(uint64_t a1)
{
  v2 = sub_1C8E1E2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D094(uint64_t a1)
{
  v2 = sub_1C8E1E2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D0D0(uint64_t a1)
{
  v2 = sub_1C8E1E3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D10C(uint64_t a1)
{
  v2 = sub_1C8E1E3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D148(uint64_t a1)
{
  v2 = sub_1C8E1E0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D184(uint64_t a1)
{
  v2 = sub_1C8E1E0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D1C0(uint64_t a1)
{
  v2 = sub_1C8E1E104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D1FC(uint64_t a1)
{
  v2 = sub_1C8E1E104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D238(uint64_t a1)
{
  v2 = sub_1C8E1E3F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D274(uint64_t a1)
{
  v2 = sub_1C8E1E3F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D2B0(uint64_t a1)
{
  v2 = sub_1C8E1E158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D2EC(uint64_t a1)
{
  v2 = sub_1C8E1E158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E1D328(uint64_t a1)
{
  v2 = sub_1C8E1E05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1D364(uint64_t a1)
{
  v2 = sub_1C8E1E05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SpotlightIndexingEntry.Event.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v158 = v21;
  v25 = v24;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3165E8, &qword_1C90852C0);
  OUTLINED_FUNCTION_11(v152);
  v131[12] = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v151 = v30;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3165F0, &qword_1C90852C8);
  OUTLINED_FUNCTION_11(v150);
  v131[11] = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v149 = v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3165F8, &qword_1C90852D0);
  OUTLINED_FUNCTION_11(v148);
  v131[10] = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v147 = v40;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316600, &qword_1C90852D8);
  OUTLINED_FUNCTION_11(v146);
  v131[9] = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v142 = v45;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316608, &qword_1C90852E0);
  OUTLINED_FUNCTION_11(v143);
  v131[8] = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v140 = v50;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316610, &qword_1C90852E8);
  OUTLINED_FUNCTION_11(v139);
  v131[7] = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v138 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316618, &qword_1C90852F0);
  v57 = OUTLINED_FUNCTION_11(v56);
  v144 = v58;
  v145 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  v141 = v62;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316620, &qword_1C90852F8);
  OUTLINED_FUNCTION_11(v137);
  v131[6] = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v67);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316628, &qword_1C9085300);
  OUTLINED_FUNCTION_11(v136);
  v134 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v72);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316630, &qword_1C9085308);
  OUTLINED_FUNCTION_11(v132);
  v131[19] = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316638, &qword_1C9085310);
  v79 = OUTLINED_FUNCTION_33_11(v78);
  OUTLINED_FUNCTION_11(v79);
  v131[16] = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316640, &qword_1C9085318);
  OUTLINED_FUNCTION_11(v85);
  v131[14] = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v89);
  v91 = v131 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316648, &qword_1C9085320);
  OUTLINED_FUNCTION_11(v92);
  v131[13] = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  v98 = v131 - v97;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316650, &unk_1C9085328);
  OUTLINED_FUNCTION_11(v157);
  v155 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v102);
  v104 = v131 - v103;
  v105 = *v20;
  v153 = v20[1];
  v154 = v105;
  v106 = v20[3];
  v131[5] = v20[2];
  v131[4] = v106;
  v107 = v20[5];
  v131[3] = v20[4];
  v131[2] = v107;
  v108 = v20[7];
  v131[1] = v20[6];
  v131[0] = v108;
  v109 = *(v20 + 64);
  v110 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C8E1DFB4();
  v156 = v104;
  sub_1C9064E1C();
  switch(v109)
  {
    case 1:
      OUTLINED_FUNCTION_277_0();
      sub_1C8E1E3A4();
      v128 = v156;
      v98 = v157;
      sub_1C9064ACC();
      sub_1C9064B2C();
      OUTLINED_FUNCTION_296(&v158);
      v129(v91, v85);
      OUTLINED_FUNCTION_37_14();
      v126 = v128;
      goto LABEL_23;
    case 2:
      OUTLINED_FUNCTION_36_11();
      sub_1C8E1E350();
      v114 = v131[15];
      OUTLINED_FUNCTION_3_32();
      v115 = v131[18];
      OUTLINED_FUNCTION_19_17();
      v116 = &a9;
      goto LABEL_21;
    case 3:
      LOBYTE(a10) = 4;
      sub_1C8E1E2A8();
      v122 = v133;
      OUTLINED_FUNCTION_23_17();
      a10 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      v123 = v136;
      OUTLINED_FUNCTION_39_12();
      v124 = &a15;
      goto LABEL_10;
    case 4:
      LOBYTE(a10) = 5;
      sub_1C8E1E254();
      v114 = v135;
      OUTLINED_FUNCTION_3_32();
      v115 = v137;
      OUTLINED_FUNCTION_19_17();
      v116 = &v150;
      goto LABEL_21;
    case 5:
      LOBYTE(a10) = 6;
      sub_1C8E1E200();
      v114 = v141;
      OUTLINED_FUNCTION_3_32();
      LOBYTE(a10) = 0;
      v115 = v145;
      OUTLINED_FUNCTION_19_17();
      if (!v21)
      {
        OUTLINED_FUNCTION_277_0();
        OUTLINED_FUNCTION_24_16(&v148);
        OUTLINED_FUNCTION_36_11();
        OUTLINED_FUNCTION_24_16(&v146);
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_24_16(&v144);
      }

      v130 = v144;
      goto LABEL_22;
    case 6:
      LOBYTE(a10) = 7;
      sub_1C8E1E1AC();
      v114 = v138;
      OUTLINED_FUNCTION_3_32();
      v115 = v139;
      OUTLINED_FUNCTION_19_17();
      v116 = &v151;
      goto LABEL_21;
    case 7:
      LOBYTE(a10) = 8;
      sub_1C8E1E158();
      v122 = v140;
      OUTLINED_FUNCTION_23_17();
      a10 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      v123 = v143;
      OUTLINED_FUNCTION_39_12();
      v124 = &v152;
LABEL_10:
      OUTLINED_FUNCTION_296(v124);
      v112 = v122;
      v113 = v123;
      goto LABEL_11;
    case 8:
      LOBYTE(a10) = 9;
      sub_1C8E1E104();
      v114 = v142;
      OUTLINED_FUNCTION_3_32();
      v115 = v146;
      OUTLINED_FUNCTION_19_17();
      v116 = &v153;
      goto LABEL_21;
    case 9:
      LOBYTE(a10) = 10;
      sub_1C8E1E0B0();
      v114 = v147;
      OUTLINED_FUNCTION_3_32();
      v115 = v148;
      OUTLINED_FUNCTION_19_17();
      v116 = &v154;
      goto LABEL_21;
    case 10:
      LOBYTE(a10) = 11;
      sub_1C8E1E05C();
      v114 = v149;
      OUTLINED_FUNCTION_3_32();
      v115 = v150;
      OUTLINED_FUNCTION_19_17();
      v116 = &v155;
      goto LABEL_21;
    case 11:
      LOBYTE(a10) = 12;
      sub_1C8E1E008();
      v114 = v151;
      OUTLINED_FUNCTION_3_32();
      v115 = v152;
      OUTLINED_FUNCTION_19_17();
      v116 = &v156;
LABEL_21:
      v130 = *(v116 - 32);
LABEL_22:
      (*(v130 + 8))(v114, v115);
      OUTLINED_FUNCTION_37_14();
      v126 = v85;
LABEL_23:
      v127 = v98;
      goto LABEL_24;
    case 12:
      OUTLINED_FUNCTION_38_0();
      sub_1C8E1E2FC();
      v117 = v131[17];
      v119 = v156;
      v118 = v157;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(&a12);
      v120(v117, v132);
      OUTLINED_FUNCTION_37_14();
      v121(v119, v118);
      goto LABEL_25;
    default:
      LOBYTE(a10) = 0;
      sub_1C8E1E3F8();
      OUTLINED_FUNCTION_23_17();
      sub_1C9064B2C();
      OUTLINED_FUNCTION_296(&v157);
      v112 = v98;
      v113 = v92;
LABEL_11:
      v111(v112, v113);
      OUTLINED_FUNCTION_37_14();
      v126 = v91;
      v127 = v85;
LABEL_24:
      v125(v126, v127);
LABEL_25:
      OUTLINED_FUNCTION_198();
      return;
  }
}

unint64_t sub_1C8E1DFB4()
{
  result = qword_1EC316658;
  if (!qword_1EC316658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316658);
  }

  return result;
}

unint64_t sub_1C8E1E008()
{
  result = qword_1EC316660;
  if (!qword_1EC316660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316660);
  }

  return result;
}

unint64_t sub_1C8E1E05C()
{
  result = qword_1EC316668;
  if (!qword_1EC316668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316668);
  }

  return result;
}

unint64_t sub_1C8E1E0B0()
{
  result = qword_1EC316670;
  if (!qword_1EC316670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316670);
  }

  return result;
}

unint64_t sub_1C8E1E104()
{
  result = qword_1EC316678;
  if (!qword_1EC316678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316678);
  }

  return result;
}

unint64_t sub_1C8E1E158()
{
  result = qword_1EC316680;
  if (!qword_1EC316680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316680);
  }

  return result;
}

unint64_t sub_1C8E1E1AC()
{
  result = qword_1EC316688;
  if (!qword_1EC316688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316688);
  }

  return result;
}

unint64_t sub_1C8E1E200()
{
  result = qword_1EC316690;
  if (!qword_1EC316690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316690);
  }

  return result;
}

unint64_t sub_1C8E1E254()
{
  result = qword_1EC316698;
  if (!qword_1EC316698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316698);
  }

  return result;
}

unint64_t sub_1C8E1E2A8()
{
  result = qword_1EC3166A0;
  if (!qword_1EC3166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3166A0);
  }

  return result;
}

unint64_t sub_1C8E1E2FC()
{
  result = qword_1EC3166A8;
  if (!qword_1EC3166A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3166A8);
  }

  return result;
}

unint64_t sub_1C8E1E350()
{
  result = qword_1EC3166B0;
  if (!qword_1EC3166B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3166B0);
  }

  return result;
}

unint64_t sub_1C8E1E3A4()
{
  result = qword_1EC3166B8;
  if (!qword_1EC3166B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3166B8);
  }

  return result;
}

unint64_t sub_1C8E1E3F8()
{
  result = qword_1EC3166C0;
  if (!qword_1EC3166C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3166C0);
  }

  return result;
}

void SpotlightIndexingEntry.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v252[0] = v20;
  v24 = v23;
  v247 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166C8, &qword_1C9085338);
  v27 = OUTLINED_FUNCTION_11(v26);
  v236 = v28;
  v237 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v246 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166D0, &qword_1C9085340);
  v34 = OUTLINED_FUNCTION_11(v33);
  v234 = v35;
  v235 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v245 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166D8, &qword_1C9085348);
  v41 = OUTLINED_FUNCTION_11(v40);
  v232 = v42;
  v233 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v244 = v46;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166E0, &qword_1C9085350);
  OUTLINED_FUNCTION_11(v231);
  v230 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_97();
  v243 = v51;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166E8, &qword_1C9085358);
  OUTLINED_FUNCTION_11(v229);
  v228 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  v242 = v56;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166F0, &qword_1C9085360);
  OUTLINED_FUNCTION_11(v226);
  v227 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v241 = v61;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3166F8, &qword_1C9085368);
  OUTLINED_FUNCTION_11(v238);
  v214 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  v250 = v66;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316700, &qword_1C9085370);
  OUTLINED_FUNCTION_11(v218);
  v225 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_97();
  v249 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316708, &qword_1C9085378);
  v73 = OUTLINED_FUNCTION_33_11(v72);
  OUTLINED_FUNCTION_11(v73);
  v223 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  v240 = v78;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316710, &qword_1C9085380);
  OUTLINED_FUNCTION_11(v221);
  v219 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_97();
  v248 = v83;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316718, &qword_1C9085388);
  OUTLINED_FUNCTION_11(v222);
  v220 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_97();
  v239 = v88;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316720, &qword_1C9085390);
  OUTLINED_FUNCTION_11(v217);
  v216 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v208 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316728, &qword_1C9085398);
  OUTLINED_FUNCTION_11(v95);
  v215 = v96;
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v208 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316730, &unk_1C90853A0);
  OUTLINED_FUNCTION_11(v102);
  v104 = v103;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v208 - v108;
  v111 = v24[3];
  v110 = v24[4];
  v251 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v111);
  sub_1C8E1DFB4();
  v112 = v252[0];
  sub_1C9064DEC();
  v113 = v112;
  if (v112)
  {
    goto LABEL_10;
  }

  v211 = v101;
  v210 = v95;
  v212 = v94;
  v114 = v248;
  v115 = v249;
  v116 = v250;
  v213 = v104;
  v252[0] = v109;
  v117 = sub_1C9064A9C();
  v118 = sub_1C8CB8914(v117, 0);
  v122 = v102;
  if (v120 == v121 >> 1)
  {
LABEL_9:
    v136 = sub_1C90647DC();
    swift_allocError();
    v138 = v137;
    v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v138 = &type metadata for SpotlightIndexingEntry.Event;
    v140 = v252[0];
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v136 - 8) + 104))(v138, *MEMORY[0x1E69E6AF8], v136);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_26();
    v141(v140, v122);
LABEL_10:
    v122 = v251;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v122);
    goto LABEL_12;
  }

  v123 = v119;
  v209 = 0;
  v124 = v121 >> 1;
  if (v120 < (v121 >> 1))
  {
    v125 = v102;
    v102 = *(v123 + v120);
    v126 = sub_1C8CB891C(v120 + 1);
    v128 = v127;
    v130 = v129;
    swift_unknownObjectRelease();
    v131 = v126;
    if (v128 == v130 >> 1)
    {
      v122 = v125;
      v113 = v209;
      switch(v102)
      {
        case 1:
          OUTLINED_FUNCTION_277_0();
          sub_1C8E1E3A4();
          v145 = v212;
          v102 = v252[0];
          OUTLINED_FUNCTION_25_13();
          sub_1C906498C();
          v114 = v217;
          sub_1C9064A0C();
          v113 = 0;
          v185 = v184;
          OUTLINED_FUNCTION_20_14();
          v130 = v186;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&v248);
          v187(v145, v114);
          OUTLINED_FUNCTION_4_26();
          v188(v102, v122);
          v158 = v130;
          v159 = 1;
          v122 = v251;
          v115 = v185;
          goto LABEL_37;
        case 2:
          OUTLINED_FUNCTION_36_11();
          sub_1C8E1E350();
          v142 = v239;
          v102 = v252[0];
          OUTLINED_FUNCTION_25_13();
          sub_1C906498C();
          OUTLINED_FUNCTION_2_38();
          v116 = v222;
          sub_1C9064A0C();
          v148 = v213;
          if (v113)
          {
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(v252);
            v149(v142, v116);
            (*(v148 + 8))(v102, v125);
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_9_19();
          v113 = v142;
          v114 = v172;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(v252);
          v173(v113, v116);
          v174 = *(v148 + 8);
          v130 = v148 + 8;
          v174(v102, v125);
          v158 = v114;
          v159 = 2;
          goto LABEL_37;
        case 3:
          OUTLINED_FUNCTION_38_0();
          sub_1C8E1E2FC();
          v143 = v252[0];
          sub_1C906498C();
          v122 = v251;
          if (v113)
          {
            OUTLINED_FUNCTION_4_26();
            v135 = v143;
            v133 = v125;
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_20_14();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&v251);
          v150(v114, v221);
          OUTLINED_FUNCTION_4_26();
          v151(v143, v125);
          v158 = 0;
          v115 = 0;
          v116 = 0;
          v102 = 0;
          v114 = 0;
          v130 = 0;
          v131 = 0;
          v159 = 12;
          goto LABEL_37;
        case 4:
          LOBYTE(a10) = 4;
          sub_1C8E1E2A8();
          v116 = v240;
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
          OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
          v115 = v224;
          OUTLINED_FUNCTION_26_11();
          sub_1C9064A6C();
          OUTLINED_FUNCTION_6_22();
          OUTLINED_FUNCTION_20_14();
          swift_unknownObjectRelease();
          v160 = OUTLINED_FUNCTION_8_0(&a10);
          v161(v160, v115);
          v162 = OUTLINED_FUNCTION_11_20();
          v163(v162);
          v158 = a10;
          v159 = 3;
          goto LABEL_37;
        case 5:
          LOBYTE(a10) = 5;
          sub_1C8E1E254();
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v130 = v115;
          v116 = v218;
          sub_1C9064A0C();
          OUTLINED_FUNCTION_6_22();
          if (v113)
          {
            swift_unknownObjectRelease();
            v147 = OUTLINED_FUNCTION_14_23();
            v153(v147, v152);
            (*(v102 + 8))(v114, v125);
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_9_19();
          OUTLINED_FUNCTION_31_11();
          v189 = OUTLINED_FUNCTION_10_21(&a12);
          v190(v189, v116);
          v191 = OUTLINED_FUNCTION_11_20();
          v192(v191);
          v158 = 0;
          v159 = 4;
          goto LABEL_37;
        case 6:
          LOBYTE(a10) = 6;
          sub_1C8E1E200();
          OUTLINED_FUNCTION_18_15();
          v144 = v252[0];
          v146 = v252[0];
          sub_1C906498C();
          OUTLINED_FUNCTION_2_38();
          if (v113)
          {
            goto LABEL_26;
          }

          LOBYTE(a10) = 0;
          OUTLINED_FUNCTION_26_11();
          v248 = sub_1C9064A0C();
          v249 = v193;
          OUTLINED_FUNCTION_277_0();
          OUTLINED_FUNCTION_26_11();
          v116 = sub_1C9064A0C();
          v102 = v203;
          v246 = v131;
          OUTLINED_FUNCTION_36_11();
          v115 = v146;
          v114 = sub_1C9064A0C();
          v113 = v204;
          OUTLINED_FUNCTION_38_0();
          v118 = sub_1C9064A0C();
          v209 = 0;
          goto LABEL_39;
        case 7:
          LOBYTE(a10) = 7;
          sub_1C8E1E1AC();
          v116 = v241;
          OUTLINED_FUNCTION_18_15();
          v144 = v252[0];
          sub_1C906498C();
          OUTLINED_FUNCTION_2_38();
          if (!v113)
          {
            v114 = v226;
            OUTLINED_FUNCTION_26_11();
            sub_1C9064A0C();
            OUTLINED_FUNCTION_6_22();
            OUTLINED_FUNCTION_20_14();
            v130 = v175;
            v249 = v176;
            swift_unknownObjectRelease();
            v177 = OUTLINED_FUNCTION_8_0(&a14);
            v178(v177, v114);
            v179 = *(v102 + 8);
            v102 += 8;
            v179(v144, v125);
            v158 = v130;
            v159 = 6;
            v115 = v249;
            goto LABEL_37;
          }

LABEL_26:
          OUTLINED_FUNCTION_4_26();
          v135 = v144;
          goto LABEL_29;
        case 8:
          LOBYTE(a10) = 8;
          sub_1C8E1E158();
          v116 = v242;
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
          OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
          v115 = v229;
          OUTLINED_FUNCTION_26_11();
          sub_1C9064A6C();
          OUTLINED_FUNCTION_6_22();
          OUTLINED_FUNCTION_20_14();
          swift_unknownObjectRelease();
          v198 = OUTLINED_FUNCTION_8_0(&a15);
          v199(v198, v115);
          v200 = OUTLINED_FUNCTION_11_20();
          v201(v200);
          v158 = a10;
          v159 = 7;
          goto LABEL_37;
        case 9:
          LOBYTE(a10) = 9;
          sub_1C8E1E104();
          v102 = v243;
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v116 = v231;
          OUTLINED_FUNCTION_25_13();
          sub_1C9064A0C();
          OUTLINED_FUNCTION_6_22();
          OUTLINED_FUNCTION_9_19();
          OUTLINED_FUNCTION_31_11();
          v168 = OUTLINED_FUNCTION_10_21(&a17);
          v169(v168, v116);
          v170 = OUTLINED_FUNCTION_11_20();
          v171(v170);
          v158 = v113;
          v159 = 8;
          goto LABEL_37;
        case 10:
          LOBYTE(a10) = 10;
          sub_1C8E1E0B0();
          v102 = v244;
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v116 = v233;
          OUTLINED_FUNCTION_25_13();
          sub_1C9064A0C();
          OUTLINED_FUNCTION_6_22();
          OUTLINED_FUNCTION_9_19();
          OUTLINED_FUNCTION_31_11();
          v194 = OUTLINED_FUNCTION_14_23();
          v195(v194);
          v196 = OUTLINED_FUNCTION_11_20();
          v197(v196);
          v158 = v113;
          v159 = 9;
          goto LABEL_37;
        case 11:
          LOBYTE(a10) = 11;
          sub_1C8E1E05C();
          v102 = v245;
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v116 = v235;
          OUTLINED_FUNCTION_25_13();
          sub_1C9064A0C();
          OUTLINED_FUNCTION_6_22();
          OUTLINED_FUNCTION_9_19();
          OUTLINED_FUNCTION_31_11();
          v154 = OUTLINED_FUNCTION_14_23();
          v155(v154);
          v156 = OUTLINED_FUNCTION_11_20();
          v157(v156);
          v158 = v113;
          v159 = 10;
          goto LABEL_37;
        case 12:
          LOBYTE(a10) = 12;
          sub_1C8E1E008();
          v102 = v246;
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_2_38();
          v116 = v237;
          OUTLINED_FUNCTION_25_13();
          sub_1C9064A0C();
          OUTLINED_FUNCTION_6_22();
          OUTLINED_FUNCTION_9_19();
          OUTLINED_FUNCTION_31_11();
          v164 = OUTLINED_FUNCTION_14_23();
          v165(v164);
          v166 = OUTLINED_FUNCTION_11_20();
          v167(v166);
          v158 = v113;
          v159 = 11;
          goto LABEL_37;
        default:
          LOBYTE(a10) = 0;
          sub_1C8E1E3F8();
          v116 = v211;
          OUTLINED_FUNCTION_18_15();
          v132 = v252[0];
          sub_1C906498C();
          OUTLINED_FUNCTION_2_38();
          if (!v113)
          {
            v114 = v210;
            OUTLINED_FUNCTION_26_11();
            sub_1C9064A0C();
            OUTLINED_FUNCTION_6_22();
            OUTLINED_FUNCTION_9_19();
            v130 = v180;
            swift_unknownObjectRelease();
            v181 = OUTLINED_FUNCTION_8_0(&v247);
            v182(v181, v114);
            v183 = *(v102 + 8);
            v102 += 8;
            v183(v252[0], v125);
            v158 = v130;
            v159 = 0;
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_4_26();
          v135 = v132;
LABEL_29:
          v134(v135, v133);
          swift_unknownObjectRelease();
          break;
      }

      goto LABEL_11;
    }

    v122 = v125;
    goto LABEL_9;
  }

  __break(1u);
LABEL_39:
  v130 = v118;
  v131 = v124;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_296(&v246);
  v205(v115, v238);
  v206 = OUTLINED_FUNCTION_17_16();
  v207(v206);
  v159 = 5;
  v158 = v248;
  v115 = v249;
LABEL_37:
  v202 = v247;
  *v247 = v158;
  v202[1] = v115;
  v202[2] = v116;
  v202[3] = v102;
  v202[4] = v114;
  v202[5] = v113;
  v202[6] = v130;
  v202[7] = v131;
  *(v202 + 64) = v159;
  __swift_destroy_boxed_opaque_existential_1(v122);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t SpotlightIndexingEntry.event.getter()
{
  OUTLINED_FUNCTION_34_11();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_34_11();
  memcpy(v3, v4, v5);
  return sub_1C8E2134C(v8, &v7);
}

Swift::String __swiftcall SpotlightIndexingEntry.formattedDebugString(with:)(NSDateFormatter with)
{
  isa = with.super.super.isa;
  v3 = sub_1C9061FEC();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = *(v1 + 72) / 100000.0;
  sub_1C9061FAC();
  v13 = sub_1C9061F8C();
  v14 = [(objc_class *)isa stringFromDate:v13];

  v15 = sub_1C9063EEC();
  v17 = v16;

  sub_1C906478C();

  strcpy(v22, "{\n    event: ");
  HIWORD(v22[1]) = -4864;
  v18 = SpotlightIndexingEntry.Event.debugDescription.getter();
  MEMORY[0x1CCA81A90](v18);

  MEMORY[0x1CCA81A90](0x6164202020200A2CLL, 0xEC000000203A6574);
  MEMORY[0x1CCA81A90](v15, v17);

  MEMORY[0x1CCA81A90](32010, 0xE200000000000000);
  (*(v6 + 8))(v11, v3);
  v19 = v22[0];
  v20 = v22[1];
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t sub_1C8E1FAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E1FBC8(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x746E657665;
  }
}

uint64_t sub_1C8E1FC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E1FAFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E1FC30(uint64_t a1)
{
  v2 = sub_1C8E21384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E1FC6C(uint64_t a1)
{
  v2 = sub_1C8E21384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SpotlightIndexingEntry.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316738, &qword_1C90853B0);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  OUTLINED_FUNCTION_34_11();
  memcpy(v12, v13, v14);
  v15 = *(v0 + 72);
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E2134C(v19, v18);
  sub_1C8E21384();
  sub_1C9064E1C();
  memcpy(v18, v19, 0x41uLL);
  sub_1C8E213D8();
  sub_1C9064B8C();
  memcpy(v17, v18, 0x41uLL);
  sub_1C8E2142C(v17);
  if (!v1)
  {
    sub_1C9064B9C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_198();
}

void SpotlightIndexingEntry.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v12 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316750, &qword_1C90853B8);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8E21384();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C8E2145C();
    sub_1C9064A6C();
    memcpy(v17, v16, 0x41uLL);
    v9 = sub_1C9064A7C();
    v10 = OUTLINED_FUNCTION_0_2();
    v11(v10);
    memcpy(v13, v17, 0x48uLL);
    v13[9] = v9;
    memcpy(v12, v13, 0x50uLL);
    sub_1C8E214B0(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v14, v17, sizeof(v14));
    v15 = v9;
    sub_1C8E214E8(v14);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E200A8()
{
  type metadata accessor for SpotlightIndexerLog();
  v0 = swift_allocObject();
  result = SpotlightIndexerLog.init()();
  qword_1EC3165E0 = v0;
  return result;
}

uint64_t SpotlightIndexerLog.__allocating_init()()
{
  v0 = swift_allocObject();
  SpotlightIndexerLog.init()();
  return v0;
}

uint64_t static SpotlightIndexerLog.shared.getter()
{
  if (qword_1EC311388 != -1)
  {
    swift_once();
  }
}

uint64_t SpotlightIndexerLog.init()()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - v4;
  v6 = sub_1C9061D9C();
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_1C9063D9C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v24 = sub_1C9061EBC();
  v25 = OUTLINED_FUNCTION_11(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v32 = v31 - v30;
  MEMORY[0x1CCA81810](0xD000000000000014, 0x80000001C90CB470);
  (*(v9 + 104))(v14, *MEMORY[0x1E6968F70], v6);
  sub_1C8E204F4(v19, v14, v23);
  result = __swift_getEnumTagSinglePayload(v23, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 32))(v32, v23, v24);
    v34 = objc_opt_self();
    v35 = sub_1C9061E5C();
    v37 = sub_1C8CE8DC8(v35, v36, v34);
    v38 = type metadata accessor for SpotlightIndexerLog.Entry();
    objc_allocWithZone(MEMORY[0x1E698F318]);
    v39 = v37;
    *(v1 + 16) = sub_1C8CE8D3C(0xD000000000000014, 0x80000001C90CB490, v37, v38);
    sub_1C906428C();
    v40 = sub_1C90642AC();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v1;

    sub_1C8CE80E4(0, 0, v5, &unk_1C90853C8, v41);

    (*(v27 + 8))(v32, v24);
    return v1;
  }

  return result;
}

uint64_t sub_1C8E204F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_1C9061D9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C9063D9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  (*(v15 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v17);
  sub_1C9063FEC();
  if (v19)
  {
    (*(v10 + 16))(v13, a2, v9);
    v20 = sub_1C9061EBC();
    v28 = v9;
    v29 = a1;
    v21 = v30;
    v22 = v20;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
    sub_1C9061E8C();
    (*(v10 + 8))(a2, v28);
    (*(v15 + 8))(v29, v14);
    v23 = v21;
    v24 = 0;
    v25 = v22;
  }

  else
  {
    (*(v10 + 8))(a2, v9);
    (*(v15 + 8))(a1, v14);
    v25 = sub_1C9061EBC();
    v23 = v30;
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
}

uint64_t sub_1C8E207C4()
{
  [*(*(v0 + 16) + 16) pruneStreamBySize_];
  v1 = *(v0 + 8);

  return v1();
}

void SpotlightIndexerLog.log(_:)()
{
  v1 = v0;
  v2 = sub_1C9061FEC();
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = sub_1C9063D3C();
  v12 = OUTLINED_FUNCTION_11(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  OUTLINED_FUNCTION_34_11();
  memcpy(v22, v23, v24);
  if (__src[64] <= 0xAu && ((1 << __src[64]) & 0x640) != 0)
  {
    v25 = *MEMORY[0x1E69E10D8];
    sub_1C906371C();
    sub_1C8E2134C(__src, v66);
    v26 = sub_1C9063D1C();
    v27 = sub_1C906444C();
    sub_1C8E2142C(__src);
    if (os_log_type_enabled(v26, v27))
    {
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_29_14();
      v62 = v10;
      v29 = v5;
      v30 = v28;
      OUTLINED_FUNCTION_33_11(v28);
      OUTLINED_FUNCTION_40_12(4.8149e-34);
      v31 = SpotlightIndexingEntry.Event.debugDescription.getter();
      v33 = sub_1C8CACE04(v31, v32, __dst);
      v63 = v11;
      v34 = v33;

      *(v2 + 4) = v34;
      v1 = v0;
      _os_log_impl(&dword_1C8C9B000, v26, v27, "%s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v35 = v30;
      v5 = v29;
      v10 = v62;
      MEMORY[0x1CCA833A0](v35, -1, -1);
      OUTLINED_FUNCTION_28_12();

      v36 = *(v14 + 8);
      v37 = v21;
LABEL_8:
      v50 = v63;
      goto LABEL_11;
    }

    v36 = *(v14 + 8);
    v37 = v21;
  }

  else
  {
    v38 = *MEMORY[0x1E69E10D8];
    sub_1C906371C();
    sub_1C8E2134C(__src, v66);
    v39 = sub_1C9063D1C();
    v40 = sub_1C906446C();
    sub_1C8E2142C(__src);
    if (os_log_type_enabled(v39, v40))
    {
      swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_29_14();
      v62 = v0;
      v42 = v41;
      OUTLINED_FUNCTION_33_11(v41);
      OUTLINED_FUNCTION_40_12(4.8149e-34);
      v43 = SpotlightIndexingEntry.Event.debugDescription.getter();
      v45 = sub_1C8CACE04(v43, v44, __dst);
      v63 = v11;
      v46 = v10;
      v47 = v5;
      v48 = v45;

      *(v2 + 4) = v48;
      v5 = v47;
      v10 = v46;
      _os_log_impl(&dword_1C8C9B000, v39, v40, "%s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v49 = v42;
      v1 = v62;
      MEMORY[0x1CCA833A0](v49, -1, -1);
      OUTLINED_FUNCTION_28_12();

      v36 = *(v14 + 8);
      v37 = v18;
      goto LABEL_8;
    }

    v36 = *(v14 + 8);
    v37 = v18;
  }

  v50 = v11;
LABEL_11:
  v36(v37, v50);
  v51 = *MEMORY[0x1E69E1140];
  if (!os_variant_has_internal_content())
  {
    return;
  }

  v52 = [*(v1 + 16) source];
  memcpy(__dst, __src, 0x41uLL);
  sub_1C8E2134C(__src, v66);
  sub_1C9061FDC();
  sub_1C9061FBC();
  v54 = v53;
  (*(v5 + 8))(v10, v2);
  v55 = v54 * 100000.0;
  if (COERCE__INT64(fabs(v54 * 100000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v56 = v55;
  memcpy(v66, __dst, sizeof(v66));
  v57 = type metadata accessor for SpotlightIndexerLog.Entry();
  v58 = objc_allocWithZone(v57);
  v59 = &v58[OBJC_IVAR____TtCC7ToolKit19SpotlightIndexerLog5Entry_entry];
  memcpy(&v58[OBJC_IVAR____TtCC7ToolKit19SpotlightIndexerLog5Entry_entry], v66, 0x48uLL);
  *(v59 + 9) = v56;
  v64.receiver = v58;
  v64.super_class = v57;
  v60 = objc_msgSendSuper2(&v64, sel_init);
  [v52 sendEvent_];
}

void SpotlightIndexerLog.read(reader:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 16) publisher];
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C8CE974C;
  v13 = &block_descriptor_3;
  v6 = _Block_copy(&v10);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v14 = sub_1C8E215F0;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C8CE886C;
  v13 = &block_descriptor_7_0;
  v8 = _Block_copy(&v10);

  v9 = [v5 sinkWithCompletion:v6 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v6);
}

char *sub_1C8E20EB8(void *a1, void (*a2)(_BYTE *))
{
  result = [a1 eventBody];
  if (result)
  {
    v4 = result;
    memcpy(__dst, &result[OBJC_IVAR____TtCC7ToolKit19SpotlightIndexerLog5Entry_entry], sizeof(__dst));
    sub_1C8E214B0(__dst, v5);

    memcpy(v5, __dst, sizeof(v5));
    a2(v5);
    return sub_1C8E214E8(__dst);
  }

  return result;
}

uint64_t SpotlightIndexerLog.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C8E20FBC(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a3 == 4)
  {
    v5 = v3;
    if (qword_1EC311378 != -1)
    {
      swift_once();
    }

    sub_1C8E22B4C();
    sub_1C9061C2C();
    memcpy(__dst, __src, sizeof(__dst));
    v6 = objc_allocWithZone(v3);
    memcpy(&v6[OBJC_IVAR____TtCC7ToolKit19SpotlightIndexerLog5Entry_entry], __dst, 0x50uLL);
    v7.receiver = v6;
    v7.super_class = v5;
    objc_msgSendSuper2(&v7, sel_init);
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

uint64_t sub_1C8E21164()
{
  if (qword_1EC311380 != -1)
  {
    swift_once();
  }

  memcpy(__dst, (v0 + OBJC_IVAR____TtCC7ToolKit19SpotlightIndexerLog5Entry_entry), sizeof(__dst));
  memcpy(__src, (v0 + OBJC_IVAR____TtCC7ToolKit19SpotlightIndexerLog5Entry_entry), sizeof(__src));
  sub_1C8E214B0(__dst, v3);
  sub_1C8E22AF8();
  v1 = sub_1C9061C5C();
  memcpy(v3, __src, sizeof(v3));
  sub_1C8E214E8(v3);
  return v1;
}

unint64_t sub_1C8E21384()
{
  result = qword_1EC316740;
  if (!qword_1EC316740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316740);
  }

  return result;
}

unint64_t sub_1C8E213D8()
{
  result = qword_1EC316748;
  if (!qword_1EC316748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316748);
  }

  return result;
}

unint64_t sub_1C8E2145C()
{
  result = qword_1EC316758;
  if (!qword_1EC316758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316758);
  }

  return result;
}

uint64_t sub_1C8E2153C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C8D1D644;

  return sub_1C8E207A4(a1, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_7ToolKit22SpotlightIndexingEntryV5EventO(uint64_t a1)
{
  if ((*(a1 + 64) & 0xFu) <= 0xB)
  {
    return *(a1 + 64) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1C8E21614(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 80))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 0xC)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E21654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E216C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 65))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 0xC)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E21704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E2175C(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 64) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SpotlightIndexingEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SpotlightIndexingEntry.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpotlightIndexingEntry.Event.DiffResultCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E21B2C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E21BDC()
{
  result = qword_1EC3167D0;
  if (!qword_1EC3167D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3167D0);
  }

  return result;
}

unint64_t sub_1C8E21C34()
{
  result = qword_1EC3167D8;
  if (!qword_1EC3167D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3167D8);
  }

  return result;
}

unint64_t sub_1C8E21C8C()
{
  result = qword_1EC3167E0;
  if (!qword_1EC3167E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3167E0);
  }

  return result;
}

unint64_t sub_1C8E21CE4()
{
  result = qword_1EC3167E8;
  if (!qword_1EC3167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3167E8);
  }

  return result;
}

unint64_t sub_1C8E21D3C()
{
  result = qword_1EC3167F0;
  if (!qword_1EC3167F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3167F0);
  }

  return result;
}

unint64_t sub_1C8E21D94()
{
  result = qword_1EC3167F8;
  if (!qword_1EC3167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3167F8);
  }

  return result;
}

unint64_t sub_1C8E21DEC()
{
  result = qword_1EC316800;
  if (!qword_1EC316800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316800);
  }

  return result;
}

unint64_t sub_1C8E21E44()
{
  result = qword_1EC316808;
  if (!qword_1EC316808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316808);
  }

  return result;
}

unint64_t sub_1C8E21E9C()
{
  result = qword_1EC316810;
  if (!qword_1EC316810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316810);
  }

  return result;
}

unint64_t sub_1C8E21EF4()
{
  result = qword_1EC316818;
  if (!qword_1EC316818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316818);
  }

  return result;
}

unint64_t sub_1C8E21F4C()
{
  result = qword_1EC316820;
  if (!qword_1EC316820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316820);
  }

  return result;
}

unint64_t sub_1C8E21FA4()
{
  result = qword_1EC316828;
  if (!qword_1EC316828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316828);
  }

  return result;
}

unint64_t sub_1C8E21FFC()
{
  result = qword_1EC316830;
  if (!qword_1EC316830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316830);
  }

  return result;
}

unint64_t sub_1C8E22054()
{
  result = qword_1EC316838;
  if (!qword_1EC316838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316838);
  }

  return result;
}

unint64_t sub_1C8E220AC()
{
  result = qword_1EC316840;
  if (!qword_1EC316840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316840);
  }

  return result;
}

unint64_t sub_1C8E22104()
{
  result = qword_1EC316848;
  if (!qword_1EC316848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316848);
  }

  return result;
}

unint64_t sub_1C8E2215C()
{
  result = qword_1EC316850;
  if (!qword_1EC316850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316850);
  }

  return result;
}

unint64_t sub_1C8E221B4()
{
  result = qword_1EC316858;
  if (!qword_1EC316858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316858);
  }

  return result;
}

unint64_t sub_1C8E2220C()
{
  result = qword_1EC316860;
  if (!qword_1EC316860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316860);
  }

  return result;
}

unint64_t sub_1C8E22264()
{
  result = qword_1EC316868;
  if (!qword_1EC316868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316868);
  }

  return result;
}

unint64_t sub_1C8E222BC()
{
  result = qword_1EC316870;
  if (!qword_1EC316870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316870);
  }

  return result;
}

unint64_t sub_1C8E22314()
{
  result = qword_1EC316878;
  if (!qword_1EC316878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316878);
  }

  return result;
}

unint64_t sub_1C8E2236C()
{
  result = qword_1EC316880;
  if (!qword_1EC316880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316880);
  }

  return result;
}

unint64_t sub_1C8E223C4()
{
  result = qword_1EC316888;
  if (!qword_1EC316888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316888);
  }

  return result;
}

unint64_t sub_1C8E2241C()
{
  result = qword_1EC316890;
  if (!qword_1EC316890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316890);
  }

  return result;
}

unint64_t sub_1C8E22474()
{
  result = qword_1EC316898;
  if (!qword_1EC316898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316898);
  }

  return result;
}

unint64_t sub_1C8E224CC()
{
  result = qword_1EC3168A0;
  if (!qword_1EC3168A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168A0);
  }

  return result;
}

unint64_t sub_1C8E22524()
{
  result = qword_1EC3168A8;
  if (!qword_1EC3168A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168A8);
  }

  return result;
}

unint64_t sub_1C8E2257C()
{
  result = qword_1EC3168B0;
  if (!qword_1EC3168B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168B0);
  }

  return result;
}

unint64_t sub_1C8E225D4()
{
  result = qword_1EC3168B8;
  if (!qword_1EC3168B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168B8);
  }

  return result;
}

unint64_t sub_1C8E2262C()
{
  result = qword_1EC3168C0;
  if (!qword_1EC3168C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168C0);
  }

  return result;
}

unint64_t sub_1C8E22684()
{
  result = qword_1EC3168C8;
  if (!qword_1EC3168C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168C8);
  }

  return result;
}

unint64_t sub_1C8E226DC()
{
  result = qword_1EC3168D0;
  if (!qword_1EC3168D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168D0);
  }

  return result;
}

unint64_t sub_1C8E22734()
{
  result = qword_1EC3168D8;
  if (!qword_1EC3168D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168D8);
  }

  return result;
}

unint64_t sub_1C8E2278C()
{
  result = qword_1EC3168E0;
  if (!qword_1EC3168E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168E0);
  }

  return result;
}

unint64_t sub_1C8E227E4()
{
  result = qword_1EC3168E8;
  if (!qword_1EC3168E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168E8);
  }

  return result;
}

unint64_t sub_1C8E2283C()
{
  result = qword_1EC3168F0;
  if (!qword_1EC3168F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168F0);
  }

  return result;
}

unint64_t sub_1C8E22894()
{
  result = qword_1EC3168F8;
  if (!qword_1EC3168F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3168F8);
  }

  return result;
}

unint64_t sub_1C8E228EC()
{
  result = qword_1EC316900;
  if (!qword_1EC316900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316900);
  }

  return result;
}

unint64_t sub_1C8E22944()
{
  result = qword_1EC316908;
  if (!qword_1EC316908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316908);
  }

  return result;
}

unint64_t sub_1C8E2299C()
{
  result = qword_1EC316910;
  if (!qword_1EC316910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316910);
  }

  return result;
}

unint64_t sub_1C8E229F4()
{
  result = qword_1EC316918;
  if (!qword_1EC316918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316918);
  }

  return result;
}

unint64_t sub_1C8E22A4C()
{
  result = qword_1EC316920;
  if (!qword_1EC316920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316920);
  }

  return result;
}

unint64_t sub_1C8E22AA4()
{
  result = qword_1EC316928;
  if (!qword_1EC316928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316928);
  }

  return result;
}

unint64_t sub_1C8E22AF8()
{
  result = qword_1EC316930;
  if (!qword_1EC316930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316930);
  }

  return result;
}

unint64_t sub_1C8E22B4C()
{
  result = qword_1EC316938;
  if (!qword_1EC316938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316938);
  }

  return result;
}

uint64_t sub_1C8E22BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      goto LABEL_2;
    case 5:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_17()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  *(v1 - 344) = v0;

  return swift_slowAlloc();
}

uint64_t sub_1C8E22CAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C8E22CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E22D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E22E34(char a1)
{
  if (a1)
  {
    return 0x617A696C61636F6CLL;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1C8E22E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316940, &qword_1C9086A98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E231E4();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __dst[167] = 0;
  sub_1C8D266AC();
  OUTLINED_FUNCTION_1_46();
  memcpy(__dst, v14, 0x48uLL);
  __dst[166] = 1;
  sub_1C8E23238();
  OUTLINED_FUNCTION_1_46();
  v7 = OUTLINED_FUNCTION_29();
  v8(v7);
  memcpy(&__dst[72], v13, 0x48uLL);
  memcpy(v11, __dst, sizeof(v11));
  memcpy(a2, __dst, 0x90uLL);
  sub_1C8E2328C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v12, __dst, sizeof(v12));
  return sub_1C8E232C4(v12);
}

uint64_t sub_1C8E230C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E22D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E230F0(uint64_t a1)
{
  v2 = sub_1C8E231E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E2312C(uint64_t a1)
{
  v2 = sub_1C8E231E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E23180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DFF21C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C8E231E4()
{
  result = qword_1EC316948;
  if (!qword_1EC316948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316948);
  }

  return result;
}

unint64_t sub_1C8E23238()
{
  result = qword_1EC316950;
  if (!qword_1EC316950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedTriggerParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E233D4()
{
  result = qword_1EC316958;
  if (!qword_1EC316958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316958);
  }

  return result;
}

unint64_t sub_1C8E2342C()
{
  result = qword_1EC316960;
  if (!qword_1EC316960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316960);
  }

  return result;
}

unint64_t sub_1C8E23484()
{
  result = qword_1EC316968;
  if (!qword_1EC316968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316968);
  }

  return result;
}

uint64_t sub_1C8E234E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656767697274 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90CB5C0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C90CB5E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C8E23698(char a1)
{
  result = 0x4972656767697274;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E23738(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3169B8, &unk_1C9086E08);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E24338();
  sub_1C9064E1C();
  v14 = *v3;
  v24[15] = 0;
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v24[14] = 1;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v24[13] = 2;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064B2C();
    v19 = v3[5];
    v20 = v3[6];
    v24[12] = 3;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064ADC();
    v21 = v3[7];
    v22 = v3[8];
    v24[11] = 4;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064ADC();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1C8E238E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3169A8, &qword_1C9086E00);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E24338();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_0_53();
  v14 = sub_1C9064A7C();
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_0_53();
  v15 = sub_1C9064A0C();
  v17 = v16;
  v34 = v15;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_0_53();
  v33 = sub_1C9064A0C();
  v35 = v18;
  LOBYTE(v37[0]) = 3;
  OUTLINED_FUNCTION_0_53();
  v32 = sub_1C90649AC();
  v31 = v14;
  v20 = v19;
  v38 = 4;
  v21 = sub_1C90649AC();
  v22 = *(v8 + 8);
  v23 = v21;
  v30 = v24;
  v22(v12, v5);
  v25 = v31;
  v26 = v34;
  __src[0] = v31;
  __src[1] = v34;
  __src[2] = v17;
  __src[3] = v33;
  __src[4] = v35;
  __src[5] = v32;
  __src[6] = v20;
  __src[7] = v23;
  v27 = v30;
  __src[8] = v30;
  sub_1C8E2438C(__src, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v25;
  v37[1] = v26;
  v37[2] = v17;
  v37[3] = v33;
  v37[4] = v35;
  v37[5] = v32;
  v37[6] = v20;
  v37[7] = v23;
  v37[8] = v27;
  sub_1C8DFF144(v37);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_1C8E23C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E234E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E23C2C(uint64_t a1)
{
  v2 = sub_1C8E24338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E23C68(uint64_t a1)
{
  v2 = sub_1C8E24338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8E23CA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8E238E8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_1C8E23D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DFF0F0();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8E23D6C()
{
  sub_1C8E24238();

  return sub_1C9062B4C();
}

uint64_t sub_1C8E23E64()
{
  if (qword_1EC311390 != -1)
  {
    swift_once();
  }

  v1 = sub_1C9062E6C();
  __swift_project_value_buffer(v1, qword_1EC390AE0);
  sub_1C9062E5C();
  v2 = *v0;
  v25 = MEMORY[0x1E69E7360];
  v26 = MEMORY[0x1E69A01D0];
  v23 = v2;
  v3 = sub_1C9062BFC();
  if (qword_1EC311398 != -1)
  {
    v3 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v3, qword_1EC390AF8);
  v5 = v0[1];
  v4 = v0[2];
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E69A0138];
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69A0138];
  v23 = v5;
  v24 = v4;

  v8 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3113A0 != -1)
  {
    v8 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v8, qword_1EC390B10);
  v10 = v0[3];
  v9 = v0[4];
  v25 = v6;
  v26 = v7;
  v23 = v10;
  v24 = v9;

  v11 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3113A8 != -1)
  {
    v11 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v11, qword_1EC390B28);
  v28 = *(v0 + 5);
  v12 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v13 = MEMORY[0x1E69A0138];
    v14 = MEMORY[0x1E69E6158];
    v15 = v28;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v23 = v15;
  v24 = v12;
  v25 = v14;
  v26 = v13;
  sub_1C8D29F88(&v28, &v27);
  v16 = OUTLINED_FUNCTION_1_0();
  if (qword_1EC3113B0 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v16, qword_1EC390B40);
  v27 = *(v0 + 7);
  v17 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    v18 = MEMORY[0x1E69A0138];
    v19 = MEMORY[0x1E69E6158];
    v20 = v27;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v23 = v20;
  v24 = v17;
  v25 = v19;
  v26 = v18;
  sub_1C8D29F88(&v27, v22);
  return sub_1C9062BFC();
}

uint64_t sub_1C8E24110()
{
  v0 = qword_1EC316970;

  return v0;
}

unint64_t sub_1C8E2414C()
{
  result = qword_1EC316980;
  if (!qword_1EC316980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316980);
  }

  return result;
}

unint64_t sub_1C8E241A4(void *a1)
{
  a1[1] = sub_1C8E241E4();
  a1[2] = sub_1C8E24238();
  a1[3] = sub_1C8DFF0F0();
  result = sub_1C8E2428C();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E241E4()
{
  result = qword_1EC316988;
  if (!qword_1EC316988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316988);
  }

  return result;
}

unint64_t sub_1C8E24238()
{
  result = qword_1EC316990;
  if (!qword_1EC316990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316990);
  }

  return result;
}

unint64_t sub_1C8E2428C()
{
  result = qword_1EC316998;
  if (!qword_1EC316998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316998);
  }

  return result;
}

unint64_t sub_1C8E242E4()
{
  result = qword_1EC3169A0;
  if (!qword_1EC3169A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3169A0);
  }

  return result;
}

unint64_t sub_1C8E24338()
{
  result = qword_1EC3169B0;
  if (!qword_1EC3169B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3169B0);
  }

  return result;
}

uint64_t sub_1C8E24414(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1C8E24338();
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for TriggerDefinitionLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E24570()
{
  result = qword_1EC3169C0;
  if (!qword_1EC3169C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3169C0);
  }

  return result;
}

unint64_t sub_1C8E245C8()
{
  result = qword_1EC3169C8;
  if (!qword_1EC3169C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3169C8);
  }

  return result;
}

unint64_t sub_1C8E24620()
{
  result = qword_1EC3169D0;
  if (!qword_1EC3169D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3169D0);
  }

  return result;
}

uint64_t sub_1C8E24674(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8E24704(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_23;
  }

  v13 = ((v12 + 16) & ~v12) + *(*(AssociatedTypeWitness - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_23:
      if ((v10 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v12 + 16) & ~v12, v10, AssociatedTypeWitness);
      }

      else
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_23;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v11 + (v13 | v18) + 1;
}

void sub_1C8E248D4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = ((v13 + 16) & ~v13) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v14 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
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

  if (v12 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v11 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload(&a1[v13 + 16] & ~v13, a2, v11, AssociatedTypeWitness);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v12 + a2;
    if (v14 < 4)
    {
      v18 = (v17 >> v15) + 1;
      if (v14)
      {
        v21 = v17 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v14 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C8E24B5C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_getMetatypeMetadata();
  *a2 = sub_1C9063F4C();
  a2[1] = v4;
  v5 = *(type metadata accessor for ToolDatabaseMetadataRecord() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a2 + v5, a1, AssociatedTypeWitness);
}

uint64_t sub_1C8E24C24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E24CE8(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1C8E24D14(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v21[0] = *(a2 + 24);
  v21[1] = v4;
  type metadata accessor for ToolDatabaseMetadataRecord.CodingKeys();
  OUTLINED_FUNCTION_1_48();
  swift_getWitnessTable();
  v5 = sub_1C9064BBC();
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v21[2];
  sub_1C9064E1C();
  v15 = *v14;
  v16 = v14[1];
  v23 = 0;
  v17 = v21[3];
  sub_1C9064B2C();
  if (!v17)
  {
    v18 = *(a2 + 36);
    v22 = 1;
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1C9064B8C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C8E24EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11(AssociatedTypeWitness);
  v36 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v9;
  type metadata accessor for ToolDatabaseMetadataRecord.CodingKeys();
  OUTLINED_FUNCTION_1_48();
  swift_getWitnessTable();
  v43 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v43);
  v39 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v41 = a2;
  v16 = type metadata accessor for ToolDatabaseMetadataRecord();
  OUTLINED_FUNCTION_11(v16);
  v35 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v33 - v21);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v15;
  v24 = v44;
  sub_1C9064DEC();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = a1;
  v34 = v16;
  v25 = v39;
  v26 = AssociatedTypeWitness;
  v46 = 0;
  *v22 = sub_1C9064A0C();
  v22[1] = v27;
  v45 = 1;
  v28 = *(swift_getAssociatedConformanceWitness() + 8);
  v29 = v38;
  sub_1C9064A6C();
  (*(v25 + 8))(v42, v43);
  v30 = v34;
  (*(v36 + 32))(v22 + *(v34 + 36), v29, v26);
  v31 = v35;
  (*(v35 + 16))(v37, v22, v30);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return (*(v31 + 8))(v22, v30);
}

uint64_t sub_1C8E25260(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1C8E24CE8(*v1);
}

uint64_t sub_1C8E25270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1C8E24C24(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C8E252A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8E252F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8E25380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE09760](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C8E253F8()
{
  swift_getWitnessTable();

  return sub_1C9062B4C();
}

uint64_t sub_1C8E2552C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE096E8](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C8E255CC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1C8E25684()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C8E256B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8E25684();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C8E25744(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C9062E7C();
}

_BYTE *sub_1C8E257A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

void LNValueType.preferredCoercion.getter(uint64_t *a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_4();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 typeIdentifier];
      if ((v4 - 2) < 5)
      {
        v5 = 2;
LABEL_8:
        *a1 = v5;
        return;
      }

      if (v4 == 9)
      {
        v5 = 3;
        goto LABEL_8;
      }

      if (v4 == 12)
      {
        v5 = 4;
        goto LABEL_8;
      }
    }

    *a1 = 0;
    return;
  }

  v6 = [v2 memberValueType];
  LNValueType.preferredCoercion.getter();
}

unint64_t sub_1C8E259AC()
{
  result = qword_1EDA62A30;
  if (!qword_1EDA62A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62A30);
  }

  return result;
}

uint64_t sub_1C8E25A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EC8, &qword_1C9071EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1C8E25A78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a4 < a1;
  v7 = a6 < a3;
  if (a5 != a2)
  {
    v7 = a5 < a2;
  }

  if (a4 == a1)
  {
    v6 = v7;
  }

  return !v6;
}

BOOL sub_1C8E25AF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a6 < a3;
  if (a5 != a2)
  {
    v6 = a5 < a2;
  }

  if (a4 == a1)
  {
    return v6;
  }

  else
  {
    return a4 < a1;
  }
}

uint64_t AssistantSchemaVersion.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AssistantSchemaVersionRange.contains(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *a1;
  v7 = v2;
  return v3(&v6) & 1;
}

void sub_1C8E25BB4()
{
  qword_1EC3169E0 = 0;
  *algn_1EC3169E8 = 0;
  qword_1EC3169F0 = 0;
}

void sub_1C8E25BE8()
{
  qword_1EC316A00 = -1;
  qword_1EC316A08 = -1;
  qword_1EC3169F8 = -1;
}

__n128 sub_1C8E25C20@<Q0>(void *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  result = *a3;
  *a4 = *a3;
  a4[1].n128_u64[0] = v7;
  return result;
}

uint64_t AssistantSchemaVersion.stringRepresentation.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = OUTLINED_FUNCTION_10_22();
  MEMORY[0x1CCA81A90](46, 0xE100000000000000);
  v3 = OUTLINED_FUNCTION_10_22();
  MEMORY[0x1CCA81A90](v3);

  MEMORY[0x1CCA81A90](46, 0xE100000000000000);
  v4 = OUTLINED_FUNCTION_10_22();
  MEMORY[0x1CCA81A90](v4);

  return v7;
}

uint64_t AssistantSchemaVersion.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v3 = a2;
  v37 = a1;
  sub_1C8CBAEDC();
  v5 = sub_1C906466C();
  v6 = *(v5 + 16);
  if (v6)
  {
    v34 = a3;
    v35 = v3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C8D09EF4(0, v6, 0);
    v7 = v39;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      if ((v10 ^ v9) < 0x4000)
      {
        v18 = 0;
        v17 = 1;
      }

      else
      {
        v11 = *(v8 - 1);
        v12 = *v8;
        if ((*v8 & 0x1000000000000000) != 0)
        {
          v22 = *v8;

          v15 = sub_1C8E269C0(v9, v10, v11, v12, 10);
          v17 = v23;
        }

        else
        {
          if ((v12 & 0x2000000000000000) != 0)
          {
            v14 = HIBYTE(v12) & 0xF;
            v37 = *(v8 - 1);
            v38 = v12 & 0xFFFFFFFFFFFFFFLL;
            v13 = &v37;
          }

          else if ((v11 & 0x1000000000000000) != 0)
          {
            v13 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v14 = v11 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = *(v8 - 1);
            v25 = *v8;
            v13 = sub_1C90647EC();
          }

          v15 = sub_1C8CB9CB4(v13, v14, v9, v10, v11, v12, 10);
          v17 = v16 & 1;
        }

        if (v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }
      }

      v39 = v7;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C8D09EF4((v19 > 1), v20 + 1, 1);
        v7 = v39;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17 & 1;
      v8 += 4;
      --v6;
    }

    while (v6);

    a3 = v34;
    v3 = v35;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v7 + 16);
  if (!v26 || (*(v7 + 40) & 1) != 0)
  {

LABEL_24:
    sub_1C8E26EBC();
    swift_allocError();
    *v27 = a1;
    v27[1] = v3;
    return swift_willThrow();
  }

  v29 = *(v7 + 32);
  if (v26 == 1)
  {
    v30 = 0;
    v31 = 1;
LABEL_31:

LABEL_32:

    v32 = 0;
    if (v31)
    {
      v30 = 0;
    }

    goto LABEL_34;
  }

  v30 = *(v7 + 48);
  v31 = *(v7 + 56);
  if (v26 < 3)
  {
    goto LABEL_31;
  }

  v32 = *(v7 + 64);
  v33 = *(v7 + 72);

  if (v33)
  {
    goto LABEL_32;
  }

  if (v31)
  {
    goto LABEL_24;
  }

LABEL_34:
  *a3 = v29;
  a3[1] = v30;
  a3[2] = v32;
  return result;
}

BOOL static AssistantSchemaVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a1[2] < a2[2];
  }

  else
  {
    v4 = v2 < v3;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_1C8E26038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8E26160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E26038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E26188(uint64_t a1)
{
  v2 = sub_1C8E27344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E261C4(uint64_t a1)
{
  v2 = sub_1C8E27344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantSchemaVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A18, &qword_1C9087340);
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v17 - v10;
  v13 = *v1;
  v12 = v1[1];
  v17 = v1[2];
  v18 = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E27344();
  sub_1C9064E1C();
  v21 = 0;
  OUTLINED_FUNCTION_13_17(v13, &v21);
  if (!v2)
  {
    v15 = v17;
    v20 = 1;
    OUTLINED_FUNCTION_13_17(v18, &v20);
    v19 = 2;
    OUTLINED_FUNCTION_13_17(v15, &v19);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t AssistantSchemaVersion.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1CCA82830](*v0);
  MEMORY[0x1CCA82830](v1);
  return MEMORY[0x1CCA82830](v2);
}

uint64_t AssistantSchemaVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  return sub_1C9064DBC();
}

uint64_t AssistantSchemaVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A20, &qword_1C9087348);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E27344();
  sub_1C9064DEC();
  if (!v2)
  {
    v21 = 0;
    v14 = OUTLINED_FUNCTION_12_18(&v21);
    v20 = 1;
    v16 = OUTLINED_FUNCTION_12_18(&v20);
    v19 = 2;
    v17 = OUTLINED_FUNCTION_12_18(&v19);
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8E265F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  return sub_1C9064DBC();
}

__n128 static AssistantSchemaVersionRange.exactly(_:)@<Q0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = swift_allocObject();
  result = v6;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  *a2 = sub_1C8E27398;
  a2[1] = v4;
  return result;
}

BOOL (*static AssistantSchemaVersionRange.atLeast(_:)(uint64_t *a1))(unint64_t *a1)
{
  result = OUTLINED_FUNCTION_4_27(a1);
  if (qword_1EC3113D0 != -1)
  {
    result = swift_once();
  }

  v6 = qword_1EC3169F8;
  v7 = qword_1EC316A00;
  v8 = qword_1EC316A08;
  v9 = qword_1EC3169F8 >= v2;
  if (qword_1EC3169F8 == v2)
  {
    v9 = qword_1EC316A00 >= v3;
    if (qword_1EC316A00 == v3)
    {
      v9 = qword_1EC316A08 >= v4;
    }
  }

  if (v9)
  {
    result = swift_allocObject();
    *(result + 2) = v2;
    *(result + 3) = v3;
    *(result + 4) = v4;
    *(result + 5) = v6;
    *(result + 6) = v7;
    *(result + 7) = v8;
    *v1 = sub_1C8E273C8;
    v1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL (*static AssistantSchemaVersionRange.between(_:and:)(uint64_t *a1))(unint64_t *)
{
  result = OUTLINED_FUNCTION_4_27(a1);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *v6 >= v2;
  if (*v6 == v2)
  {
    v10 = v8 >= v3;
    if (v8 == v3)
    {
      v10 = v9 >= v4;
    }
  }

  if (v10)
  {
    result = swift_allocObject();
    *(result + 2) = v2;
    *(result + 3) = v3;
    *(result + 4) = v4;
    *(result + 5) = v7;
    *(result + 6) = v8;
    *(result + 7) = v9;
    *v1 = sub_1C8E27748;
    v1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL (*static AssistantSchemaVersionRange.upTo(_:)(uint64_t *a1))(unint64_t *)
{
  result = OUTLINED_FUNCTION_4_27(a1);
  if (qword_1EC3113C8 != -1)
  {
    result = swift_once();
  }

  v6 = qword_1EC3169E0;
  v7 = *algn_1EC3169E8;
  v8 = qword_1EC3169F0;
  v9 = v2 >= qword_1EC3169E0;
  if (v2 == qword_1EC3169E0)
  {
    v9 = v3 >= *algn_1EC3169E8;
    if (v3 == *algn_1EC3169E8)
    {
      v9 = v4 >= qword_1EC3169F0;
    }
  }

  if (v9)
  {
    result = swift_allocObject();
    *(result + 2) = v6;
    *(result + 3) = v7;
    *(result + 4) = v8;
    *(result + 5) = v2;
    *(result + 6) = v3;
    *(result + 7) = v4;
    *v1 = sub_1C8E27748;
    v1[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C8E26958(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1 >= *a2;
  if (*a1 == *a2)
  {
    v6 = a2[1];
    v5 = v3 >= v6;
    if (v3 == v6)
    {
      v5 = v4 >= a2[2];
    }
  }

  if (!v5)
  {
    return 0;
  }

  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5] < v4;
  v11 = v9 == v3;
  v12 = v9 < v3;
  if (v11)
  {
    v12 = v10;
  }

  v11 = v8 == v2;
  v13 = v8 < v2;
  if (v11)
  {
    v13 = v12;
  }

  return !v13;
}

unsigned __int8 *sub_1C8E269C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  sub_1C8E276F4();

  result = sub_1C90640AC();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C8E26F10();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C90647EC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          OUTLINED_FUNCTION_6_24();
          if (v22)
          {
            do
            {
              OUTLINED_FUNCTION_5_27();
              if (v17 && v26 < v24)
              {
                v27 = -48;
              }

              else if (v26 < 0x41 || v26 >= v23)
              {
                OUTLINED_FUNCTION_8_25();
                if (!v17 || v26 >= v28)
                {
                  goto LABEL_125;
                }

                v27 = -87;
              }

              else
              {
                v27 = -55;
              }

              if (!is_mul_ok(v25, a5) || __CFADD__(v25 * a5, (v26 + v27)))
              {
                goto LABEL_124;
              }

              OUTLINED_FUNCTION_7_25();
            }

            while (!v21);
LABEL_44:
            v8 = v20;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v8 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v8 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_125;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v32, a5))
            {
              goto LABEL_124;
            }

            v35 = v32 * a5;
            v36 = v33 + v34;
            v17 = __CFADD__(v35, v36);
            v32 = v35 + v36;
            if (v17)
            {
              goto LABEL_124;
            }

            ++result;
            --v10;
          }

          while (v10);
          v8 = v32;
          goto LABEL_125;
        }

        goto LABEL_64;
      }

      goto LABEL_124;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        OUTLINED_FUNCTION_6_24();
        if (v12)
        {
          while (1)
          {
            OUTLINED_FUNCTION_5_27();
            if (v17 && v16 < v14)
            {
              v18 = -48;
            }

            else if (v16 < 0x41 || v16 >= v13)
            {
              OUTLINED_FUNCTION_8_25();
              if (!v17 || v16 >= v19)
              {
                goto LABEL_125;
              }

              v18 = -87;
            }

            else
            {
              v18 = -55;
            }

            if (!is_mul_ok(v15, a5) || v15 * a5 < (v16 + v18))
            {
              goto LABEL_124;
            }

            OUTLINED_FUNCTION_7_25();
            if (v21)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_64:
        v8 = 0;
LABEL_125:

        return v8;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v9) & 0xF;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        OUTLINED_FUNCTION_0_54();
        while (1)
        {
          OUTLINED_FUNCTION_5_27();
          if (v17 && v56 < v55)
          {
            v57 = -48;
          }

          else if (v56 < 0x41 || v56 >= v54)
          {
            OUTLINED_FUNCTION_8_25();
            if (!v17 || v56 >= v58)
            {
              goto LABEL_125;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }

          if (!is_mul_ok(v53, a5) || __CFADD__(v53 * a5, (v56 + v57)))
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_7_25();
          if (v21)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v39)
    {
      if (v39 != 1)
      {
        OUTLINED_FUNCTION_0_54();
        while (1)
        {
          OUTLINED_FUNCTION_5_27();
          if (v17 && v43 < v42)
          {
            v44 = -48;
          }

          else if (v43 < 0x41 || v43 >= v41)
          {
            OUTLINED_FUNCTION_8_25();
            if (!v17 || v43 >= v45)
            {
              goto LABEL_125;
            }

            v44 = -87;
          }

          else
          {
            v44 = -55;
          }

          if (!is_mul_ok(v40, a5) || v40 * a5 < (v43 + v44))
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_7_25();
          if (v21)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    if (v39 != 1)
    {
      OUTLINED_FUNCTION_0_54();
      do
      {
        OUTLINED_FUNCTION_5_27();
        if (v17 && v50 < v49)
        {
          v51 = -48;
        }

        else if (v50 < 0x41 || v50 >= v48)
        {
          OUTLINED_FUNCTION_8_25();
          if (!v17 || v50 >= v52)
          {
            goto LABEL_125;
          }

          v51 = -87;
        }

        else
        {
          v51 = -55;
        }

        if (!is_mul_ok(v47, a5) || __CFADD__(v47 * a5, (v50 + v51)))
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_7_25();
      }

      while (!v21);
LABEL_123:
      v8 = v46;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unint64_t sub_1C8E26EBC()
{
  result = qword_1EC316A10;
  if (!qword_1EC316A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A10);
  }

  return result;
}

uint64_t sub_1C8E26F10()
{
  v0 = sub_1C8DD2C8C();
  v4 = sub_1C8E26F78(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C8E26F78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C9063FAC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C906465C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C8CC0EA8(v9, 0);
  v12 = sub_1C8E270D8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C9063FAC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C90647EC();
LABEL_4:

  return sub_1C9063FAC();
}

unint64_t sub_1C8E270D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1C8E272E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C906406C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C90647EC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C8E272E8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1C906403C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C8E272E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C906408C();
    OUTLINED_FUNCTION_9_20(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1CCA81AD0](15, a1 >> 16);
    OUTLINED_FUNCTION_9_20(v3);
    return v4 | 8;
  }
}

unint64_t sub_1C8E27344()
{
  result = qword_1EDA63230;
  if (!qword_1EDA63230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63230);
  }

  return result;
}

unint64_t sub_1C8E273D0()
{
  result = qword_1EC316A28;
  if (!qword_1EC316A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssistantSchemaVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssistantSchemaVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1C8E2747C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C8E274BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantSchemaVersion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8E275F0()
{
  result = qword_1EC316A30;
  if (!qword_1EC316A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A30);
  }

  return result;
}

unint64_t sub_1C8E27648()
{
  result = qword_1EDA63220;
  if (!qword_1EDA63220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63220);
  }

  return result;
}

unint64_t sub_1C8E276A0()
{
  result = qword_1EDA63228;
  if (!qword_1EDA63228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63228);
  }

  return result;
}

unint64_t sub_1C8E276F4()
{
  result = qword_1EC316A38;
  if (!qword_1EC316A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A38);
  }

  return result;
}

__n128 AssistantToolSchemaDefinition.init(identifier:name:descriptionSummary:outputType:parameters:sampleInvocations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 48);
  v11 = *a6;
  *a9 = *a1;
  *(a9 + 8) = v9;
  result = *(a1 + 16);
  v13 = *(a1 + 32);
  *(a9 + 16) = result;
  *(a9 + 32) = v13;
  *(a9 + 48) = v10;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = a4;
  *(a9 + 80) = a5;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v11;
  return result;
}

uint64_t sub_1C8E2777C()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC316A40);
  __swift_project_value_buffer(v0, qword_1EC316A40);
  return sub_1C9063D2C();
}

uint64_t AssistantToolSchemaDefinition.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

uint64_t AssistantToolSchemaDefinition.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AssistantToolSchemaDefinition.descriptionSummary.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

__n128 AssistantToolSchemaDefinition.init(identifier:name:descriptionSummary:parameters:sampleInvocations:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v15 = a1->n128_u64[0];
  v14 = a1->n128_i64[1];
  v16 = a1[3].n128_i64[0];
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 23;
  *(v17 + 16) = v18;
  a8->n128_u64[0] = v15;
  a8->n128_u64[1] = v14;
  result = a1[1];
  v20 = a1[2];
  a8[1] = result;
  a8[2] = v20;
  a8[3].n128_u64[0] = v16;
  a8[3].n128_u64[1] = a2;
  a8[4].n128_u64[0] = a3;
  a8[4].n128_u64[1] = a4;
  a8[5].n128_u64[0] = a5;
  a8[5].n128_u64[1] = a6;
  a8[6].n128_u64[0] = a7;
  a8[6].n128_u64[1] = v17;
  return result;
}

uint64_t AssistantToolSchemaDefinition.init(identifier:parameters:sampleInvocations:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[6];
  OUTLINED_FUNCTION_50();
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 23;
  *(v11 + 16) = v12;
  *a4 = v9;
  *(a4 + 8) = v8;
  v13 = *(a1 + 2);
  *(a4 + 16) = *(a1 + 1);
  *(a4 + 32) = v13;
  *(a4 + 48) = v10;
  *(a4 + 56) = v9;
  *(a4 + 64) = v8;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  *(a4 + 104) = v11;
}

uint64_t static AssistantToolSchemaDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v38 = a1[7];
  v37 = a1[8];
  v34 = a1[10];
  v32 = a1[11];
  v28 = a1[12];
  v26 = a1[13];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v35 = a2[8];
  v36 = a2[7];
  v29 = a2[9];
  v30 = a1[9];
  v33 = a2[10];
  v31 = a2[11];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v27 = a2[12];
  v25 = a2[13];
  if (v12)
  {
    if (v2 != v7 || v4 != v8 || v3 != v9)
    {
      goto LABEL_44;
    }

LABEL_22:
    v18 = v6 == v10 && v5 == v11;
    if (!v18 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_44;
    }

    v19 = v38 == v36 && v37 == v35;
    if (!v19 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_44;
    }

    if (v34)
    {
      if (!v33)
      {
        goto LABEL_44;
      }

      v20 = v30 == v29 && v34 == v33;
      if (!v20 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v33)
    {
      goto LABEL_44;
    }

    if (sub_1C8CEB63C(v32, v31))
    {
      sub_1C8CEB4A0(v28, v27);
      if (v21)
      {
        v39 = v25;
        v40 = v26;

        static TypeInstance.== infix(_:_:)(&v40, &v39);
        v13 = v22;

        return v13 & 1;
      }
    }

LABEL_44:
    v13 = 0;
    return v13 & 1;
  }

  v24 = a1[6];
  v13 = 0;
  if (sub_1C9064C2C())
  {
    v14 = v2 == v7 && v4 == v8;
    v15 = v14 && v3 == v9;
    v5 = v24;
    if (v15)
    {
      goto LABEL_22;
    }
  }

  return v13 & 1;
}

uint64_t sub_1C8E27C20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C90CB5E0 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C90CA3A0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x795474757074756FLL && a2 == 0xEA00000000006570)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

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

unint64_t sub_1C8E27E14(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x795474757074756FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E27EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E27C20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E27F08(uint64_t a1)
{
  v2 = sub_1C8E28300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E27F44(uint64_t a1)
{
  v2 = sub_1C8E28300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantToolSchemaDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A58, &unk_1C9087670);
  v5 = OUTLINED_FUNCTION_11(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  v11 = *v2;
  v12 = v2[1];
  v14 = v2[6];
  v13 = v2[7];
  v15 = v2[9];
  v30 = v2[8];
  v31 = v13;
  v16 = v2[11];
  v28 = v2[10];
  v29 = v15;
  v17 = v2[13];
  v26 = v2[12];
  v27 = v16;
  v25 = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E28300();

  sub_1C9064E1C();
  v34 = v11;
  v35 = v12;
  v19 = *(v2 + 1);
  v37 = *(v2 + 2);
  v36 = v19;
  v38 = v14;
  v39 = 0;
  sub_1C8E28354();
  OUTLINED_FUNCTION_3_35();
  v20 = v32;
  sub_1C9064B8C();
  if (v20)
  {

    return (*(v33 + 8))(v10, v4);
  }

  else
  {
    v22 = v26;
    v23 = v27;
    v24 = v33;

    LOBYTE(v34) = 1;
    sub_1C9064B2C();
    LOBYTE(v34) = 2;
    sub_1C9064ADC();
    v34 = v23;
    v39 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E28C74(&qword_1EDA62DB8, sub_1C8E283A8);
    OUTLINED_FUNCTION_3_35();
    sub_1C9064B8C();
    v34 = v22;
    v39 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E283FC(&qword_1EDA66750, sub_1C8E28464);
    OUTLINED_FUNCTION_3_35();
    sub_1C9064B8C();
    v34 = v25;
    v39 = 5;
    sub_1C8CA6D90();

    OUTLINED_FUNCTION_3_35();
    sub_1C9064B8C();

    return (*(v24 + 8))(0, v4);
  }
}

unint64_t sub_1C8E28300()
{
  result = qword_1EC316A60;
  if (!qword_1EC316A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A60);
  }

  return result;
}

unint64_t sub_1C8E28354()
{
  result = qword_1EDA607C8;
  if (!qword_1EDA607C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607C8);
  }

  return result;
}

unint64_t sub_1C8E283A8()
{
  result = qword_1EDA63310;
  if (!qword_1EDA63310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63310);
  }

  return result;
}

uint64_t sub_1C8E283FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    a2();
    result = OUTLINED_FUNCTION_11_21();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E28464()
{
  result = qword_1EDA66840;
  if (!qword_1EDA66840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66840);
  }

  return result;
}

void AssistantToolSchemaDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v12 = v1[10];
  v13 = v1[9];
  v14 = v1[11];
  v15 = v1[12];
  v16 = v1[13];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v5);
  MEMORY[0x1CCA82830](v6);
  MEMORY[0x1CCA82830](v7);
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v12)
  {
    sub_1C9063FBC();
  }

  sub_1C8D03800(a1, v14);
  sub_1C8D03494(a1, v15);
  TypeInstance.hash(into:)();
}

uint64_t AssistantToolSchemaDefinition.hashValue.getter()
{
  sub_1C9064D7C();
  AssistantToolSchemaDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t AssistantToolSchemaDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A78, &qword_1C9087688);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E28300();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1C8E28C20();
  OUTLINED_FUNCTION_27_1();
  sub_1C9064A6C();
  v25 = a2;
  v27 = v33;
  v29 = v34;
  v26 = v35;
  v30 = v39;
  OUTLINED_FUNCTION_27_1();
  v20 = sub_1C9064A0C();
  v21 = v38;
  v22 = v37;
  v23 = v36;
  v31 = v10;
  LOBYTE(v33) = 2;
  OUTLINED_FUNCTION_27_1();
  v11 = sub_1C90649AC();
  v24 = v12;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
  sub_1C8E28C74(&qword_1EDA62DB0, sub_1C8E28CDC);
  OUTLINED_FUNCTION_4_28();
  v28 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
  sub_1C8E283FC(&qword_1EDA66748, sub_1C8E28D30);
  OUTLINED_FUNCTION_4_28();
  v19 = v13;
  v14 = v33;
  v47 = 5;
  sub_1C8CAC450();
  OUTLINED_FUNCTION_27_1();
  sub_1C9064A6C();
  v15 = OUTLINED_FUNCTION_2_41();
  v16(v15);
  v18 = v48;
  __src[0] = v27;
  __src[1] = v34;
  __src[2] = v35;
  __src[3] = v36;
  __src[4] = v37;
  __src[5] = v38;
  __src[6] = v39;
  __src[7] = v20;
  __src[8] = v31;
  __src[9] = v19;
  __src[10] = v24;
  __src[11] = v33;
  __src[12] = v33;
  __src[13] = v48;
  memcpy(v25, __src, 0x70uLL);
  sub_1C8CBFC60(__src, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v27;
  v34 = v29;
  v35 = v26;
  v36 = v23;
  v37 = v22;
  v38 = v21;
  v39 = v30;
  v40 = v20;
  v41 = v31;
  v42 = v19;
  v43 = v24;
  v44 = v28;
  v45 = v14;
  v46 = v18;
  return sub_1C8E28D84(&v33);
}

uint64_t sub_1C8E28BE0()
{
  sub_1C9064D7C();
  AssistantToolSchemaDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

unint64_t sub_1C8E28C20()
{
  result = qword_1EDA607C0;
  if (!qword_1EDA607C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607C0);
  }

  return result;
}

uint64_t sub_1C8E28C74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A68, &unk_1C90921C0);
    a2();
    result = OUTLINED_FUNCTION_11_21();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E28CDC()
{
  result = qword_1EDA63308;
  if (!qword_1EDA63308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63308);
  }

  return result;
}

unint64_t sub_1C8E28D30()
{
  result = qword_1EDA66838;
  if (!qword_1EDA66838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66838);
  }

  return result;
}

unint64_t sub_1C8E28DB8()
{
  result = qword_1EC316A80;
  if (!qword_1EC316A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A80);
  }

  return result;
}

uint64_t sub_1C8E28E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantToolSchemaDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E28F60()
{
  result = qword_1EC316A88;
  if (!qword_1EC316A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A88);
  }

  return result;
}

unint64_t sub_1C8E28FB8()
{
  result = qword_1EC316A90;
  if (!qword_1EC316A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A90);
  }

  return result;
}

unint64_t sub_1C8E29010()
{
  result = qword_1EC316A98;
  if (!qword_1EC316A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316A98);
  }

  return result;
}

id sub_1C8E29064(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C9061EFC();
  v6 = [v4 initWithEncodedTypedValue_];

  sub_1C8CE7B78(a1, a2);
  return v6;
}

uint64_t sub_1C8E290DC()
{
  v0 = sub_1C9061C8C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C9061C7C();
  qword_1EC316AA0 = result;
  return result;
}

id static WFToolKitTypedValueContent.withValue(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1EC3113E0 != -1)
  {
    swift_once();
  }

  sub_1C8D381AC();
  result = sub_1C9061C5C();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    sub_1C8E291D4();
    return sub_1C8E29064(v5, v6);
  }

  return result;
}

unint64_t sub_1C8E291D4()
{
  result = qword_1EC3164D0;
  if (!qword_1EC3164D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3164D0);
  }

  return result;
}

uint64_t sub_1C8E29264(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1C8E292A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E29308()
{
  v0 = sub_1C9062DDC();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_1C9062DBC();
  if (!v3)
  {
    sub_1C9062DCC();
    return v5;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    OUTLINED_FUNCTION_53();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(v3, v2) == 5)
  {
    return 0;
  }

  return sub_1C9064D4C();
}

uint64_t sub_1C8E293EC()
{
  v0 = sub_1C9062DDC();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_1C9062DBC();
  if (!v3)
  {
    sub_1C9062DCC();
    return v5;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    OUTLINED_FUNCTION_53();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(v3, v2) == 5)
  {
    return 0;
  }

  return sub_1C9063F8C();
}

uint64_t sub_1C8E294C8()
{
  v0 = sub_1C90627DC();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316AE0, &qword_1C9087E18);
  v8 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11(v8);
  v10 = v9;
  v12 = *(v11 + 72);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C9084EE0;
  v15 = v14 + v13;
  if (qword_1EDA69668 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v16 = __swift_project_value_buffer(v8, qword_1EDA6EB50);
  v17 = *(v10 + 16);
  v17(v15, v16, v8);
  if (qword_1EDA69680 != -1)
  {
    OUTLINED_FUNCTION_5_28();
  }

  v18 = __swift_project_value_buffer(v8, qword_1EDA6EB80);
  v17(v15 + v12, v18, v8);
  if (qword_1EDA69640 != -1)
  {
    OUTLINED_FUNCTION_4_29();
  }

  v19 = __swift_project_value_buffer(v8, qword_1EDA6EAF0);
  v17(v15 + 2 * v12, v19, v8);
  v21[1] = v14;
  sub_1C90627CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316AE8, &qword_1C9087E20);
  sub_1C8E2BAB4();
  sub_1C90640DC();
  (*(v3 + 8))(v7, v0);
}

uint64_t sub_1C8E29754()
{
  v0 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v0, qword_1EC390B88);
  OUTLINED_FUNCTION_10(v0, qword_1EC390B88);
  if (qword_1EDA69660 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v1 = __swift_project_value_buffer(v0, qword_1EDA6EB38);
  v2 = *(*(v0 - 8) + 16);

  return v2(qword_1EC390B88, v1, v0);
}

uint64_t sub_1C8E29808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64496D616574 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656E6961746E6F63 && a2 == 0xED00006570795472)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9064C2C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E29A34(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6556656C646E7562;
      break;
    case 3:
      result = 0x64496D616574;
      break;
    case 4:
      result = 0x6449656369766564;
      break;
    case 5:
      result = 0x6E696769726FLL;
      break;
    case 6:
      result = 0x656E6961746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E29B00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316AC8, &qword_1C9087E10);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2B4A4();
  sub_1C9064E1C();
  v14 = *v3;
  v15 = *(v3 + 8);
  v25[15] = 0;
  OUTLINED_FUNCTION_3_12();
  sub_1C9064B1C();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v25[14] = 1;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v18 = v3[4];
    v19 = v3[5];
    v25[13] = 2;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v20 = v3[6];
    v21 = v3[7];
    v25[12] = 3;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v22 = v3[8];
    v23 = v3[9];
    v25[11] = 4;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v25[10] = *(v3 + 80);
    v25[9] = 5;
    sub_1C8E2B944();
    sub_1C9064B8C();
    v25[8] = *(v3 + 81);
    v25[7] = 6;
    sub_1C8E2B998();
    sub_1C9064B8C();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1C8E29D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316AB0, &qword_1C9087E08);
  OUTLINED_FUNCTION_11(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1C8E2B4A4();
  sub_1C9064DEC();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    OUTLINED_FUNCTION_2_42();
    v23 = sub_1C90649FC();
    v54 = v24 & 1;
    OUTLINED_FUNCTION_2_42();
    v25 = sub_1C9064A0C();
    v40 = v26;
    OUTLINED_FUNCTION_2_42();
    v37 = sub_1C9064A0C();
    v39 = v27;
    OUTLINED_FUNCTION_2_42();
    v36 = sub_1C9064A0C();
    v35 = v25;
    v38 = v28;
    LOBYTE(v42) = 4;
    OUTLINED_FUNCTION_2_42();
    v29 = sub_1C9064A0C();
    v31 = v30;
    v34 = v29;
    sub_1C8E2B834();
    OUTLINED_FUNCTION_35_13();
    sub_1C8E2B888();
    OUTLINED_FUNCTION_35_13();
    v32 = OUTLINED_FUNCTION_83();
    v33(v32);
    v41[0] = v23;
    LOBYTE(v41[1]) = v54;
    v41[2] = v35;
    v41[3] = v40;
    v41[4] = v37;
    v41[5] = v39;
    v41[6] = v36;
    v41[7] = v38;
    v41[8] = v34;
    v41[9] = v31;
    LOBYTE(v41[10]) = 4;
    BYTE1(v41[10]) = a13;
    sub_1C8E2B8DC(v41, &v42);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v42 = v23;
    v43 = v54;
    v44 = v35;
    v45 = v40;
    v46 = v37;
    v47 = v39;
    v48 = v36;
    v49 = v38;
    v50 = v34;
    v51 = v31;
    v52 = 4;
    v53 = a13;
    sub_1C8E2B914(&v42);
    memcpy(v17, v41, 0x52uLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E2A160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E29808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E2A188(uint64_t a1)
{
  v2 = sub_1C8E2B4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E2A1C4(uint64_t a1)
{
  v2 = sub_1C8E2B4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C8E2A250(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1C8E29D28(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v9)
  {
    memcpy(a9, __src, 0x52uLL);
  }
}

unint64_t sub_1C8E2A2F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA69660 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EDA6EB38);
  sub_1C9062E5C();
  v3 = sub_1C8E29308();
  v5 = v4;

  v32 = v5 & 1;
  if (qword_1EDA69668 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EB50);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v7 = v6;
  v9 = v8;

  if (qword_1EDA69680 != -1)
  {
    OUTLINED_FUNCTION_5_28();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EB80);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v28 = v11;
  v29 = v10;

  if (qword_1EDA69648 != -1)
  {
    OUTLINED_FUNCTION_13_18();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EB08);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v26 = v13;
  v27 = v12;
  v30 = v9;
  v31 = v7;
  v14 = v3;

  if (qword_1EDA69640 != -1)
  {
    OUTLINED_FUNCTION_4_29();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EAF0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v16 = v15;
  v18 = v17;

  if (qword_1EDA69658 != -1)
  {
    OUTLINED_FUNCTION_12_19();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EB20);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v20 = v19;

  if (qword_1EDA69670 != -1)
  {
    OUTLINED_FUNCTION_11_22();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EB68);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v22 = v21;
  if ((v20 + 1) >= 5)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x200010000uLL >> (8 * (v20 + 1));
  }

  result = sub_1C8E2AE30(v22);
  *a1 = v14;
  if (result == 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = result;
  }

  *(a1 + 8) = v32;
  *(a1 + 16) = v31;
  *(a1 + 24) = v30;
  *(a1 + 32) = v29;
  *(a1 + 40) = v28;
  *(a1 + 48) = v27;
  *(a1 + 56) = v26;
  *(a1 + 64) = v16;
  *(a1 + 72) = v18;
  *(a1 + 80) = v23;
  *(a1 + 81) = v25;
  return result;
}

uint64_t sub_1C8E2A618()
{
  if (qword_1EDA69660 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EDA6EB38);
  sub_1C9062E5C();
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
  }

  OUTLINED_FUNCTION_5_0();
  if (qword_1EDA69668 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EB50);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_13_0();
  if (qword_1EDA69680 != -1)
  {
    OUTLINED_FUNCTION_5_28();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EB80);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v6 = v0[4];
  v5 = v0[5];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_13_0();
  if (qword_1EDA69648 != -1)
  {
    OUTLINED_FUNCTION_13_18();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EB08);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v8 = v0[6];
  v7 = v0[7];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_13_0();
  if (qword_1EDA69640 != -1)
  {
    OUTLINED_FUNCTION_4_29();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EAF0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v10 = v0[8];
  v9 = v0[9];
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_13_0();
  if (qword_1EDA69658 != -1)
  {
    OUTLINED_FUNCTION_12_19();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EB20);
  sub_1C9062E5C();
  v12 = 2 * *(v0 + 80) - 1;
  OUTLINED_FUNCTION_5_0();
  if (qword_1EDA69670 != -1)
  {
    OUTLINED_FUNCTION_11_22();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EB68);
  sub_1C9062E5C();
  v13 = *(v0 + 81);
  return OUTLINED_FUNCTION_5_0();
}

unint64_t sub_1C8E2A8AC(void *a1)
{
  a1[1] = sub_1C8E2A8EC();
  a1[2] = sub_1C8E2A940();
  a1[3] = sub_1C8E2A994();
  result = sub_1C8E2A9E8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E2A8EC()
{
  result = qword_1EDA60820;
  if (!qword_1EDA60820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60820);
  }

  return result;
}

unint64_t sub_1C8E2A940()
{
  result = qword_1EDA60830;
  if (!qword_1EDA60830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60830);
  }

  return result;
}

unint64_t sub_1C8E2A994()
{
  result = qword_1EDA69620;
  if (!qword_1EDA69620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69620);
  }

  return result;
}

unint64_t sub_1C8E2A9E8()
{
  result = qword_1EC316AA8;
  if (!qword_1EC316AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AA8);
  }

  return result;
}

unint64_t sub_1C8E2AA3C(uint64_t a1)
{
  result = sub_1C8E2A940();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E2AA68()
{
  result = qword_1EDA60828;
  if (!qword_1EDA60828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60828);
  }

  return result;
}

uint64_t sub_1C8E2AB30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8E2B4A4();
  return sub_1C9062E8C();
}

uint64_t sub_1C8E2ABA8()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EDA69498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDA6EA80);
  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58(v9);
  result = v11(v10);
  qword_1EDA6EB98 = sub_1C8E2BA04;
  unk_1EDA6EBA0 = v5;
  return result;
}

uint64_t sub_1C8E2ACD0()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EDA69518 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDA6EAC8);
  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58(v9);
  result = v11(v10);
  qword_1EDA6EAE0 = sub_1C8E2B9EC;
  *algn_1EDA6EAE8 = v5;
  return result;
}

uint64_t sub_1C8E2ADF8(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    return 3;
  }

  else
  {
    return (0x203010300uLL >> (8 * (a1 + 1)));
  }
}

unint64_t sub_1C8E2AE30(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1C8E2AE60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8E2ADF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C8E2AE8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8E2AE20(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1C8E2AF80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8E2AE30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C8E2AFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8E2AE40(*v1);
  *a1 = result;
  return result;
}

void sub_1C8E2B088()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_20_15();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = OUTLINED_FUNCTION_7_27();
  if (v9)
  {
    v10 = sub_1C9062EAC();
    OUTLINED_FUNCTION_17_17(v10);
    sub_1C9062B5C();
    sub_1C9062A8C();
    sub_1C8D27BE0();
    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_14_24();
    v11 = OUTLINED_FUNCTION_5_9();
    v12(v11);
    swift_willThrow();
LABEL_9:
    OUTLINED_FUNCTION_198();
    return;
  }

  v13 = v8;
  if (!sub_1C9062DBC())
  {
    OUTLINED_FUNCTION_30_17(MEMORY[0x1E69E6530]);
    goto LABEL_9;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v13 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_23_18();
    MEMORY[0x1EEE9AC00](v14);
    v16 = OUTLINED_FUNCTION_10_24(v15);
    if (v16 == 5)
    {
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_22_20();
      *(v17 - 16) = sub_1C8E2B804;
      *(v17 - 8) = v4;
      OUTLINED_FUNCTION_15_18();
    }

    else
    {
      sub_1C9064D4C();
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1C8E2B294()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_20_15();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = OUTLINED_FUNCTION_7_27();
  if (v9)
  {
    v10 = sub_1C9062EAC();
    OUTLINED_FUNCTION_17_17(v10);
    sub_1C9062B5C();
    sub_1C9062A8C();
    sub_1C8D27BE0();
    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_14_24();
    v11 = OUTLINED_FUNCTION_5_9();
    v12(v11);
    swift_willThrow();
LABEL_9:
    OUTLINED_FUNCTION_198();
    return;
  }

  v13 = v8;
  if (!sub_1C9062DBC())
  {
    OUTLINED_FUNCTION_30_17(MEMORY[0x1E69E6158]);
    goto LABEL_9;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v13 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_23_18();
    MEMORY[0x1EEE9AC00](v14);
    v16 = OUTLINED_FUNCTION_10_24(v15);
    if (v16 == 5)
    {
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_22_20();
      *(v17 - 16) = sub_1C8E2C004;
      *(v17 - 8) = v4;
      OUTLINED_FUNCTION_15_18();
    }

    else
    {
      sub_1C9063F8C();
    }

    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_1C8E2B4A4()
{
  result = qword_1EDA696A0;
  if (!qword_1EDA696A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA696A0);
  }

  return result;
}

void sub_1C8E2B4F8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_24_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_20_15();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = OUTLINED_FUNCTION_7_27();
  if (v9)
  {
    v10 = sub_1C9062EAC();
    OUTLINED_FUNCTION_17_17(v10);
    sub_1C9062B5C();
    sub_1C9062A8C();
    sub_1C8D27BE0();
    OUTLINED_FUNCTION_214();
    OUTLINED_FUNCTION_14_24();
    v11 = OUTLINED_FUNCTION_5_9();
    v12(v11);
    swift_willThrow();
LABEL_9:
    OUTLINED_FUNCTION_198();
    return;
  }

  v13 = v8;
  if (!sub_1C9062DBC())
  {
    OUTLINED_FUNCTION_30_17(MEMORY[0x1E69E7360]);
    goto LABEL_9;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v13 <= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_23_18();
    MEMORY[0x1EEE9AC00](v14);
    v16 = OUTLINED_FUNCTION_10_24(v15);
    if (v16 == 5)
    {
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_22_20();
      *(v17 - 16) = sub_1C8E2C004;
      *(v17 - 8) = v4;
      OUTLINED_FUNCTION_15_18();
    }

    else
    {
      sub_1C9064D4C();
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8E2B704(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313340, &qword_1C9087E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  *(&v10 - v5) = a2;
  v7 = *MEMORY[0x1E69A0060];
  v8 = sub_1C9062EAC();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);

  return sub_1C9062B5C();
}

uint64_t sub_1C8E2B80C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1C8E2B834()
{
  result = qword_1EC316AB8;
  if (!qword_1EC316AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AB8);
  }

  return result;
}

unint64_t sub_1C8E2B888()
{
  result = qword_1EC316AC0;
  if (!qword_1EC316AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AC0);
  }

  return result;
}

unint64_t sub_1C8E2B944()
{
  result = qword_1EC316AD0;
  if (!qword_1EC316AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AD0);
  }

  return result;
}

unint64_t sub_1C8E2B998()
{
  result = qword_1EC316AD8;
  if (!qword_1EC316AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AD8);
  }

  return result;
}

uint64_t sub_1C8E2BA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

unint64_t sub_1C8E2BAB4()
{
  result = qword_1EDA667F0;
  if (!qword_1EDA667F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316AE8, &qword_1C9087E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA667F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerMetadataRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E2BBF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E2BCCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8E2BDA8()
{
  result = qword_1EC316AF0;
  if (!qword_1EC316AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AF0);
  }

  return result;
}

unint64_t sub_1C8E2BE00()
{
  result = qword_1EC316AF8;
  if (!qword_1EC316AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316AF8);
  }

  return result;
}

unint64_t sub_1C8E2BE58()
{
  result = qword_1EC316B00;
  if (!qword_1EC316B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B00);
  }

  return result;
}

unint64_t sub_1C8E2BEB0()
{
  result = qword_1EDA69690;
  if (!qword_1EDA69690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69690);
  }

  return result;
}

unint64_t sub_1C8E2BF08()
{
  result = qword_1EDA69698;
  if (!qword_1EDA69698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69698);
  }

  return result;
}

unint64_t sub_1C8E2BF5C()
{
  result = qword_1EC316B08;
  if (!qword_1EC316B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B08);
  }

  return result;
}

unint64_t sub_1C8E2BFB0()
{
  result = qword_1EC316B10;
  if (!qword_1EC316B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_13()
{

  return sub_1C9064A6C();
}

uint64_t get_enum_tag_for_layout_string_7ToolKit18SystemTypeProtocolO10IdentifierO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_7ToolKit18SystemTypeProtocolO(uint64_t a1)
{
  if ((*(a1 + 56) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1C8E2C07C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1C8E2C0BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E2C12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6F636F746F7270 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8E2C240(char a1)
{
  if (!a1)
  {
    return 0x644965707974;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6C6F636F746F7270;
}