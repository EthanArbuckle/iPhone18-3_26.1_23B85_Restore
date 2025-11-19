uint64_t sub_2313E2F68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2313E2FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static InteractionStore.inProcess()()
{
  v15 = &unk_28460C4B0;
  v0 = sub_2313E3100();
  v16 = v0;
  LOBYTE(v14[0]) = 0;
  v1 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v14);
  v15 = &unk_28460C4B0;
  v16 = v0;
  LOBYTE(v14[0]) = 2;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v14);
  v15 = &unk_28460C4B0;
  v16 = v0;
  LOBYTE(v14[0]) = 1;
  sub_231476D68();
  v2 = __swift_destroy_boxed_opaque_existential_0(v14);
  OUTLINED_FUNCTION_15_8(xmmword_231479AA0, v2, v3, v4, v5, v6, v7, v8, v9, v12, *v13, v13[4], v1 & 1, v10);
  return sub_2313EADE8(0, 2uLL);
}

unint64_t sub_2313E3100()
{
  result = qword_280C3D280[0];
  if (!qword_280C3D280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3D280);
  }

  return result;
}

const char *sub_2313E3188(char a1)
{
  if (!a1)
  {
    return "siri_remembers_use_intelligence_platform";
  }

  if (a1 == 1)
  {
    return "siri_remembers_private_to_shared_device_sync";
  }

  return "siri_remembers_private_device_sync";
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2313E325C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2313E3434;
  *(v8 + 24) = v7;
  v11[4] = sub_2313EAA4C;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2313E340C;
  v11[3] = &block_descriptor_35;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2313E33BC()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2313E3440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    return sub_2313EADE8(a4, a5);
  }

  return result;
}

Swift::Void __swiftcall AppIntentProcessor.main()()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  swift_getObjectType();
  v2 = sub_231477B48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  if (([v0 isCancelled] & 1) == 0)
  {
    if (qword_280C3BD30 != -1)
    {
      swift_once();
    }

    sub_231477ED8();
    os_transaction_create();

    sub_2313E74F8();
    v11 = OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_ipStore;
    v12 = *&v0[OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_ipStore];

    sub_2313E325C(sub_2313E37E8, 0);

    if (![v1 isCancelled])
    {
      v18 = *&v1[OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_event];
      v13 = *(*&v1[v11] + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D548, &qword_23147F900);
      sub_231478318();

      v14 = v24;
      v15 = v25;
      v16 = v26;
      v17 = v27;
      v19 = v24;
      v20 = v25;
      v21 = v26;
      v22 = v27;
      v23 = v28;
      sub_2313F2408(v18, &v19, 0);
      sub_2313E3440(v14, *(&v14 + 1), v15, v16, v17);
      [objc_opt_self() _resetCache];
    }

    sub_2314783A8();
    if (qword_280C3CF48 != -1)
    {
      swift_once();
    }

    sub_231477B28();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_2313E3788(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

uint64_t sub_2313E37E8(uint64_t result)
{
  if (!*result)
  {
    v1 = result;
    v2 = *(result + 40);
    sub_2313E3440(0, *(result + 8), *(result + 16), *(result + 24), *(result + 32));
    result = static InteractionStore.inProcess()();
    *v1 = v3;
    *(v1 + 16) = v4;
    *(v1 + 32) = v5;
    *(v1 + 40) = v6;
  }

  return result;
}

uint64_t type metadata accessor for _InteractionStore()
{
  result = qword_280C3D7A8;
  if (!qword_280C3D7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_1()
{
  v2 = *(v0 + 32);
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  v2 = *(v0 - 328);

  return sub_231444DEC();
}

uint64_t OUTLINED_FUNCTION_16_7()
{
  v2 = *(v0 + 120);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_16_8(float a1)
{
  *v1 = a1;

  return sub_2313EB684(0xD00000000000005BLL, v2 | 0x8000000000000000, (v3 - 80));
}

uint64_t OUTLINED_FUNCTION_16_9()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_231478158();
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v2 = *(v1 + 16);
  v3 = v0[17];
  result = v0[16];
  v5 = v0[22];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_11()
{
  result = v0;
  v3 = *(v1 - 176);
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_13()
{
  v2 = *(v0 - 208);

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  v2 = *(v0 - 112);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_2314787C8();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_5()
{
  v2 = *(v0 - 232);

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_2313EB684(0xD000000000000016, v2 | 0x8000000000000000, (v3 - 120));
}

void OUTLINED_FUNCTION_15_8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, unsigned __int8 a13, __n128 a14)
{
  a14 = a1;

  sub_2313E4D38(&a13, &a14, v14);
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  result = v0 - 216;
  v2 = *(v0 - 264);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v2 = *(v0 + 32);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_231405CC4(v0, type metadata accessor for _NewInteraction);
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = 1668183398;
  v2[11] = v1;

  return sub_231477E58();
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_2_6()
{
  v1 = *(v0 - 208);
  v2 = *(*(v0 - 200) + 8);
  return *(v0 - 184);
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{

  return sub_2313F1184(a1, a2, 3, 1701667182, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_2_11()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 72);
  *v3 = *(v0 - 144);
  v3[1] = v2;
  *(v3 + 25) = *(v0 - 119);

  return sub_2313F4F84(v0 - 144, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = 1668183398;
  v2[11] = v1;
  return v3 + 7;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return sub_2314788E8();
}

uint64_t OUTLINED_FUNCTION_2_17()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
  return v1;
}

void OUTLINED_FUNCTION_2_18()
{
  v2 = *(v0 + 16) + 1;

  sub_23141CC58();
}

uint64_t OUTLINED_FUNCTION_2_22()
{
  v2 = *(v1 + 16);
  result = *(v0 + 128);
  v4 = *(v0 + 192);
  return result;
}

void OUTLINED_FUNCTION_14_3()
{

  sub_23141252C(0, v0, 0);
}

BOOL OUTLINED_FUNCTION_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_14_4()
{
  v3 = *(v2 - 88);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void OUTLINED_FUNCTION_14_11(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_23145F320(a1, v8, v7, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2313EB380();
}

void OUTLINED_FUNCTION_8_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_2314786F8();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_2313E3440(0, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_231477E58();
}

uint64_t OUTLINED_FUNCTION_8_21@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_231478498();
}

void OUTLINED_FUNCTION_10_4()
{
  v6 = *v1;
  *(v6 + 16) = v0 + 1;
  v7 = v6 + 32 * v0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 10) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
  return result;
}

void OUTLINED_FUNCTION_10_14()
{

  JUMPOUT(0x23192E060);
}

uint64_t OUTLINED_FUNCTION_10_17@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;

  return type metadata accessor for QueryValue();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_231478338();
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  v2 = *(v0 - 208);
  *(v0 - 272) = *(v0 - 224);
  *(v0 - 256) = v2;
  *(v0 - 247) = *(v0 - 199);

  return sub_2313F501C(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_74(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 312);
  v4 = *(v0 - 304);

  return sub_2313ED944(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v2 = *(v0 - 96);

  return sub_2314786F8();
}

void OUTLINED_FUNCTION_7_3()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 376);
  v3 = *(v0 - 520);
}

__n128 *OUTLINED_FUNCTION_7_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736D657469;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

void OUTLINED_FUNCTION_7_8()
{

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_231477E58();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_7_14()
{
}

uint64_t sub_2313E4AFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2313E4B40(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 OUTLINED_FUNCTION_22_0()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  result = *(v0 + 32);
  *(v1 - 112) = result;
  return result;
}

void OUTLINED_FUNCTION_22_1()
{
  *(v2 - 88) = v0;

  sub_23141252C(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return sub_2314786B8();
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return type metadata accessor for _InteractionStore();
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return type metadata accessor for QueryValue();
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

void OUTLINED_FUNCTION_32_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_32_1()
{
  v1 = *(v0[2] + 8);
  result = v0[23];
  v3 = *v0;
  return result;
}

void sub_2313E4D38(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v52[-v11];
  v13 = type metadata accessor for _InteractionStore();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v52[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v52[-v24];
  v26 = *a1;
  v56 = a1[1];
  v27 = a1[2];
  if (v26 != 1)
  {
    sub_231464B0C(v12);
    sub_231444FB4(v12, 1, v19);
    if (v3)
    {
      return;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74(v38);
    swift_allocObject();
    sub_2313E7328();
    *a3 = v39;
    *(a3 + 8) = 0;
    *(a3 + 9) = v56;
    *(a3 + 10) = v27;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 2;
    goto LABEL_6;
  }

  v55 = v27;
  v28 = *a2;
  v29 = a2[1];
  v53 = v28;
  v54 = v29;
  sub_2313E5218(0, &v53, 0, 0);
  if (v30)
  {
    *v25 = v30;
    v25[1] = v31;
    v25[2] = v32;
    swift_storeEnumTagMultiPayload();

    sub_2313E6AE4(v25, v23);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74(v33);
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    v35 = v34;
    type metadata accessor for SiriRemembersBiomeStreamDonator();
    swift_allocObject();
    sub_2313E6C34(v28, v29);
    v36 = SiriRemembersBiomeStreamDonator.init()();

    sub_2313EB404(v25);
    *a3 = v35;
    *(a3 + 8) = 1;
    v37 = v55;
    *(a3 + 9) = v56;
    *(a3 + 10) = v37;
    *(a3 + 16) = v36;
    *(a3 + 24) = v28;
    *(a3 + 32) = v29;
LABEL_6:
    *(a3 + 40) = 1;
    return;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v40 = sub_231477B68();
  OUTLINED_FUNCTION_38(v40, qword_280C3D970);
  v41 = sub_231477B58();
  v42 = sub_2314782A8();
  if (OUTLINED_FUNCTION_12_1(v42))
  {
    *OUTLINED_FUNCTION_102() = 0;
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v43, v44, "could not open IP InteractionStore");
    OUTLINED_FUNCTION_7_8();
  }

  sub_23141ECFC();
  OUTLINED_FUNCTION_17_4();
  v46 = v45;
  v47 = sub_231477E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
  inited = swift_initStackObject();
  v53 = OUTLINED_FUNCTION_6_9(inited, xmmword_23147CE20);
  v54 = v49;
  MEMORY[0x23192E060](46, 0xE100000000000000);
  MEMORY[0x23192E060](0xD000000000000014, 0x8000000231481E80);

  v50 = sub_231477E58();

  inited[3].n128_u64[0] = v50;
  inited[3].n128_u64[1] = 1701603686;
  inited[4].n128_u64[0] = 0xE400000000000000;
  inited[4].n128_u64[1] = sub_231477E58();
  inited[5].n128_u64[0] = 1668183398;
  inited[5].n128_u64[1] = 0xE400000000000000;
  inited[6].n128_u64[0] = sub_231477E58();
  inited[6].n128_u64[1] = 1701734764;
  inited[7].n128_u64[0] = 0xE400000000000000;
  inited[7].n128_u64[1] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
  sub_231477DC8();
  v51 = sub_231477DA8();

  AnalyticsSendEvent();

  *v46 = 1;
  swift_willThrow();
}

uint64_t sub_2313E5218(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v139 = a4;
  v140 = a3;
  LODWORD(v138) = a1;
  v130 = type metadata accessor for DBOpenError();
  v4 = OUTLINED_FUNCTION_3(v130);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  v119 = v7 - v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  v131 = &v115 - v10;
  OUTLINED_FUNCTION_47();
  v120 = sub_231476E58();
  v11 = OUTLINED_FUNCTION_4(v120);
  v136 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_34();
  v134 = v15 - v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  v135 = &v115 - v18;
  OUTLINED_FUNCTION_47();
  v137 = sub_231477048();
  v19 = OUTLINED_FUNCTION_4(v137);
  v121 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_34();
  v118 = v23 - v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v132 = &v115 - v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v133 = &v115 - v28;
  OUTLINED_FUNCTION_47();
  v29 = sub_231476AF8();
  v30 = OUTLINED_FUNCTION_4(v29);
  v126 = v31;
  v127 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v125 = v35 - v34;
  OUTLINED_FUNCTION_47();
  v36 = sub_231478308();
  v37 = OUTLINED_FUNCTION_4(v36);
  v123 = v38;
  v124 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  v122 = v42 - v41;
  OUTLINED_FUNCTION_47();
  v43 = sub_2314782F8();
  v44 = OUTLINED_FUNCTION_3(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2();
  v47 = sub_231477D08();
  v48 = OUTLINED_FUNCTION_14(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2();
  v51 = sub_2314777F8();
  v52 = OUTLINED_FUNCTION_4(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2();
  v59 = (v58 - v57);
  v60 = sub_231477008();
  v61 = OUTLINED_FUNCTION_4(v60);
  v128 = v62;
  v129 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_34();
  v67 = v65 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = &v115 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v72 = OUTLINED_FUNCTION_14(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v115 - v75;
  v77 = sub_2314779F8();
  v78 = OUTLINED_FUNCTION_4(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2();
  v85 = v84 - v83;
  if (v138)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v86 = sub_231477B68();
    OUTLINED_FUNCTION_38(v86, qword_280C3D970);
    v87 = sub_231477B58();
    v88 = sub_2314782A8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = OUTLINED_FUNCTION_102();
      *v89 = 0;
      _os_log_impl(&dword_2313E1000, v87, v88, "initializing in-memory IP InteractionStore", v89, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    sub_231446A8C();

    return 0;
  }

  else
  {
    v138 = v85;
    v116 = v67;
    v117 = v82;
    v90 = v81;
    sub_2313E7A6C(v140, v139, v76);
    if (__swift_getEnumTagSinglePayload(v76, 1, v90) == 1)
    {
      sub_2313E7E10(v76);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v91 = sub_231477B68();
      OUTLINED_FUNCTION_38(v91, qword_280C3D970);
      v92 = sub_231477B58();
      v93 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v93))
      {
        v94 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v94);
        OUTLINED_FUNCTION_8(&dword_2313E1000, v95, v96, "initializing dummy IP InteractionStore (IP SiriRemembersView does not exist)");
        OUTLINED_FUNCTION_16_2();
      }

      sub_231446A8C();

      return 1;
    }

    else
    {
      v97 = *(v117 + 32);
      v115 = v90;
      v97(v138, v76, v90);
      sub_231476FF8();
      *v59 = 0x4014000000000000;
      (*(v54 + 104))(v59, *MEMORY[0x277D0B810], v51);
      sub_231476FC8();
      sub_231476FE8();
      sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
      sub_231477CD8();
      v141 = MEMORY[0x277D84F90];
      sub_2313EB8FC(&qword_280C3CEA0, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
      sub_2313E6ED0();
      sub_231478498();
      (*(v123 + 104))(v122, *MEMORY[0x277D85260], v124);
      sub_231478338();
      sub_231476FA8();
      sub_231476FB8();
      v98 = v125;
      sub_231477958();
      v99 = sub_231476AC8();
      v101 = v100;
      (*(v126 + 8))(v98, v127);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v102 = sub_231477B68();
      OUTLINED_FUNCTION_38(v102, qword_280C3D970);

      v103 = sub_231477B58();
      v104 = sub_2314782A8();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = OUTLINED_FUNCTION_16_4();
        v106 = OUTLINED_FUNCTION_23_3();
        v141 = v106;
        *v105 = 136315138;
        *(v105 + 4) = sub_2313EB684(v99, v101, &v141);
        _os_log_impl(&dword_2313E1000, v103, v104, "opening IP InteractionStore. path=%s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      v108 = v128;
      v107 = v129;
      (*(v128 + 16))(v116, v70, v129);
      v109 = sub_2314770A8();
      v110 = *(v109 + 48);
      v111 = *(v109 + 52);
      swift_allocObject();
      sub_231477088();
      (*(v108 + 8))(v70, v107);
      v113 = OUTLINED_FUNCTION_32_1();
      v114(v113);

      return 0;
    }
  }
}

uint64_t sub_2313E6AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InteractionStore();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SiriRemembersBiomeStreamDonator.init()()
{
  v1 = v0;
  type metadata accessor for SiriInteractionHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v2 = swift_allocObject();
  sub_2313E73E8(&selRef_InteractionHistory);
  v1[2] = v2;
  type metadata accessor for SiriCallHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v3 = swift_allocObject();
  sub_2313E73E8(&selRef_CallHistory);
  v1[3] = v3;
  type metadata accessor for SiriMessageHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v4 = swift_allocObject();
  sub_2313E73E8(&selRef_MessageHistory);
  v1[4] = v4;
  type metadata accessor for SiriAssistantSuggestionsHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v5 = swift_allocObject();
  sub_2313E73E8(&selRef_AssistantSuggestions);
  v1[5] = v5;
  type metadata accessor for SiriAudioHistoryDonator();
  OUTLINED_FUNCTION_10_18();
  v6 = swift_allocObject();
  sub_2313E73E8(&selRef_AudioHistory);
  v1[6] = v6;
  v7 = type metadata accessor for CoreSuggestionsClient();
  v8 = swift_allocObject();
  v1[10] = v7;
  v1[11] = &off_284609528;
  v1[7] = v8;
  return v1;
}

uint64_t sub_2313E6C34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *OUTLINED_FUNCTION_9(void *result)
{
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  v2 = *(v0 + 32);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return 1953066601;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_2313EF028(v0, type metadata accessor for _Entity);
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  result = v0;
  v3 = *(v1 - 304);
  v4 = *(v1 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_14()
{
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_9_17()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_9_18()
{
  *(v1 - 192) = *(v1 - 248);

  return memcpy((v1 - 184), (v0 + 24), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_72_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2313ED944(a1, a2, a3);
}

unint64_t sub_2313E6E78()
{
  result = qword_280C3CEA0;
  if (!qword_280C3CEA0)
  {
    sub_2314782F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3CEA0);
  }

  return result;
}

unint64_t sub_2313E6ED0()
{
  result = qword_280C3CEB0;
  if (!qword_280C3CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD4EAA0, qword_23147F920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3CEB0);
  }

  return result;
}

void sub_2313E6F34()
{
  OUTLINED_FUNCTION_15();
  v19 = v2;
  v20 = v3;
  v4 = v0;
  v18 = sub_231478308();
  v5 = OUTLINED_FUNCTION_4(v18);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0();
  v10 = sub_2314782F8();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = sub_231477D08();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  OUTLINED_FUNCTION_10_0();
  (*(v7 + 104))(v1, *MEMORY[0x277D85260], v18);
  v4[2] = OUTLINED_FUNCTION_7();
  sub_2313E7340(v19, v4 + *(*v4 + 96), v20);
  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  result = v0;
  v3 = *(v1 - 336);
  v4 = *(v1 - 296);
  v5 = *(v1 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t result)
{
  v2[12] = result;
  v2[13] = 1701734764;
  v2[14] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 256);
  v3 = *(v0 - 408);
  return *(v0 - 376);
}

void OUTLINED_FUNCTION_5_15()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_5_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  v1[6] = v0;
  v1[7] = 1701603686;
  v1[8] = 0xE400000000000000;

  return sub_231477E58();
}

uint64_t OUTLINED_FUNCTION_5_20@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_21()
{
  v2 = *(v0 - 96);

  return sub_2314786F8();
}

uint64_t sub_2313E7340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2313E73E8(SEL *a1)
{
  v3 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v4 = [v3 Remembers];
  swift_unknownObjectRelease();
  v5 = [v4 *a1];
  swift_unknownObjectRelease();
  *(v1 + 16) = v5;
  return v1;
}

uint64_t sub_2313E74F8()
{
  if (qword_280C3CF48 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v0 = qword_280C3D700;
  sub_231477B38();
  sub_2314783B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4E218, &qword_23147D3F8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_231479580;
  v2 = sub_231478508();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_2313E796C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_231477B18();
}

id AppIntentProcessor.init(event:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_ipStore;
  memset(v7, 0, 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D538, &unk_231479510);
  swift_allocObject();
  *&v1[v4] = sub_2313E76EC(v7);
  *&v1[OBJC_IVAR____TtC13SiriRemembers18AppIntentProcessor_event] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2313E76EC(_OWORD *a1)
{
  v15 = a1;
  v14 = sub_231478308();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2314782F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_231477D08();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  v16 = MEMORY[0x277D84F90];
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v14);
  *(v1 + 16) = sub_231478338();
  v10 = v15;
  v11 = v15[1];
  *(v1 + 24) = *v15;
  *(v1 + 40) = v11;
  *(v1 + 49) = *(v10 + 25);
  return v1;
}

unint64_t sub_2313E796C()
{
  result = qword_280C3C160;
  if (!qword_280C3C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C160);
  }

  return result;
}

void sub_2313E7A6C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  if (qword_280C3D380 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(dword_280C3D998);
  sub_2313E7C7C(&dword_280C3D998[2], v11);
  os_unfair_lock_unlock(dword_280C3D998);
  v12 = sub_2314779F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  sub_2313E7E10(v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_2314750CC(a1, a2);
  }

  os_unfair_lock_lock(dword_280C3D998);
  sub_2313E7C7C(&dword_280C3D998[2], a3);
  os_unfair_lock_unlock(dword_280C3D998);
}

uint64_t type metadata accessor for DBOpenError()
{
  result = qword_280C3D1C8;
  if (!qword_280C3D1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2313E7C04()
{
  OUTLINED_FUNCTION_17_2();
  sub_231478908();
  if (v0)
  {
    OUTLINED_FUNCTION_14_5();
    sub_231477F38();
  }

  sub_231478918();
  v1 = OUTLINED_FUNCTION_36_0();

  return sub_2313E7D44(v1, v2, v3);
}

uint64_t sub_2313E7C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_2313E7C04(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_2314779F8();
    OUTLINED_FUNCTION_3(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = sub_2314779F8();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t sub_2313E7D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2314787C8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_2313E7E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313E7E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v150 = a6;
  v162 = a4;
  v163 = a5;
  v159 = a3;
  v137 = a7;
  v161 = sub_231476CA8();
  v10 = OUTLINED_FUNCTION_4(v161);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v160 = v16 - v15;
  Value = type metadata accessor for QueryValue();
  v17 = OUTLINED_FUNCTION_4(Value);
  v139 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = v129 - v25;
  v164 = sub_2314770C8();
  v27 = OUTLINED_FUNCTION_4(v164);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v34 = (v33 - v32);
  v147 = sub_231477468();
  v35 = OUTLINED_FUNCTION_4(v147);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_28(v41 - v40);
  v135 = sub_231476EB8();
  v42 = OUTLINED_FUNCTION_4(v135);
  v134 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_28(v47 - v46);
  v48 = sub_231477668();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_28(v51 - v50);
  v52 = sub_2314773C8();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  OUTLINED_FUNCTION_2();
  v129[1] = v55 - v54;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA90, &qword_23147A7E0);
  OUTLINED_FUNCTION_4(v132);
  v131 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v59);
  v130 = v129 - v60;
  v148 = a1;
  v149 = a2;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v61 = OUTLINED_FUNCTION_4(v152);
  v138 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_34();
  v145 = v65 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = v129 - v68;
  v136 = v7;
  v70 = *(v7 + 5);
  v159(0);
  sub_2313F3500(v162, v163);
  v151 = v69;
  sub_231476ED8();
  v144 = *(v70 + 16);
  if (v144)
  {
    v71 = 0;
    v143 = v70 + 32;
    v158 = v12 + 8;
    v159 = (v12 + 32);
    v162 = (v29 + 32);
    v142 = (v37 + 8);
    v141 = v138 + 8;
    v140 = v138 + 32;
    v163 = v34;
    do
    {
      v72 = v143 + 32 * v71;
      v74 = *v72;
      v73 = *(v72 + 8);
      v75 = *(v72 + 16);
      v155 = *v72;
      v156 = v75;
      v76 = *(v72 + 24);
      v77 = *(v76 + 16);
      v157 = v73;
      if (v77)
      {
        v154 = v71;
        sub_2313E8ABC(v74, v73);
        *&v170 = MEMORY[0x277D84F90];

        sub_2313E8C84(0, v77, 0);
        v78 = v170;
        OUTLINED_FUNCTION_6();
        v153 = v76;
        v80 = v76 + v79;
        v82 = *(v81 + 72);
        do
        {
          sub_2313EEFC8(v80, v26, type metadata accessor for QueryValue);
          sub_2313EEFC8(v26, v23, type metadata accessor for QueryValue);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              MEMORY[0x23192E2E0](*v23);
              break;
            case 2u:
              MEMORY[0x23192E290](*v23);
              break;
            case 3u:
              v90 = *v23;
              v91 = *(v23 + 1);
              sub_231477EE8();

              break;
            case 4u:
              v84 = OUTLINED_FUNCTION_20_0();
              v85 = v161;
              v86(v84, v23, v161);
              v87 = sub_231476BC8();
              MEMORY[0x23192E290](v87);
              v88 = OUTLINED_FUNCTION_20_0();
              v89(v88, v85);
              break;
            default:
              v83 = *v23;
              sub_2314781B8();
              break;
          }

          sub_2313EF028(v26, type metadata accessor for QueryValue);
          *&v170 = v78;
          v93 = *(v78 + 16);
          v92 = *(v78 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_2313E8C84(v92 > 1, v93 + 1, 1);
            v78 = v170;
          }

          *(v78 + 16) = v93 + 1;
          (*(v29 + 32))(v78 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v93, v163, v164);
          v80 += v82;
          --v77;
        }

        while (v77);
        v71 = v154;
        v76 = v153;
      }

      else
      {
        sub_2313E8ABC(v74, v157);

        v78 = MEMORY[0x277D84F90];
      }

      v94 = v71 + 1;
      *&v170 = sub_2313ED6C8();
      *(&v170 + 1) = v95;
      v96 = 0xE100000000000000;
      MEMORY[0x23192E060](32, 0xE100000000000000);
      v97 = 61;
      switch(v156)
      {
        case 1:
          v96 = 0xE200000000000000;
          v97 = 15649;
          break;
        case 2:
          v97 = 60;
          break;
        case 3:
          v96 = 0xE200000000000000;
          v97 = 15676;
          break;
        case 4:
          v97 = 62;
          break;
        case 5:
          v96 = 0xE200000000000000;
          v97 = 15678;
          break;
        case 6:
          v96 = 0xE200000000000000;
          v97 = 20041;
          break;
        case 7:
          v96 = 0xE400000000000000;
          v97 = 1162561868;
          break;
        default:
          break;
      }

      MEMORY[0x23192E060](v97, v96);

      MEMORY[0x23192E060](32, 0xE100000000000000);
      if (v156 == 6)
      {
        v98 = *(v76 + 16);
        v99 = sub_231478058();
        v166 = v99;
        v167 = v100;
        v101 = HIBYTE(v100) & 0xF;
        if ((v100 & 0x2000000000000000) == 0)
        {
          v101 = v99 & 0xFFFFFFFFFFFFLL;
        }

        if (v101)
        {
          sub_231477F68();
          sub_231477FC8();
        }

        v102 = v94;
        sub_231477FB8();
        MEMORY[0x23192E060](41, 0xE100000000000000);
        sub_2313ED930(v155, v157);

        v103 = v166;
        v104 = v167;
      }

      else
      {
        v102 = v94;
        sub_2313ED930(v155, v157);

        v104 = 0xE100000000000000;
        v103 = 63;
      }

      MEMORY[0x23192E060](v103, v104);

      *&v170 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
      sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8);
      v105 = v146;
      sub_231477478();
      OUTLINED_FUNCTION_7_1();
      v106 = v145;
      v107 = v152;
      sub_2314771B8();

      (*v142)(v105, v147);
      v108 = OUTLINED_FUNCTION_20_0();
      v109(v108, v107);
      v110 = OUTLINED_FUNCTION_20_0();
      v111(v110, v106, v107);
      v71 = v102;
    }

    while (v102 != v144);
  }

  v112 = *(v136 + 32);
  if (v112 == 255)
  {
    return (*(v138 + 32))(v137, v151, v152);
  }

  v113 = v136[1];
  v170 = *v136;
  v171 = v113;
  sub_231477378();
  v114 = sub_231477368();
  LOBYTE(v172) = v112;
  v166 = sub_231423790(v114, v115, v116, v117);
  v167 = v118;
  sub_231423704();
  sub_2314773B8();

  sub_231477368();
  sub_231477658();
  v172 = 0;
  v170 = 0u;
  v171 = 0u;
  v119 = v130;
  sub_231476E78();
  v120 = v133;
  v121 = v132;
  sub_231476E68();
  v168 = sub_2314776A8();
  v169 = MEMORY[0x277D0B7F0];
  __swift_allocate_boxed_opaque_existential_1(&v166);
  sub_231477698();
  *(&v171 + 1) = sub_2314770D8();
  v172 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(&v170);
  v122 = v135;
  sub_231477208();
  OUTLINED_FUNCTION_13_1(&v166);
  v123(v120, v122);
  __swift_destroy_boxed_opaque_existential_0(&v166);
  OUTLINED_FUNCTION_7_1();
  v124 = v152;
  v125 = v151;
  sub_2314771C8();
  OUTLINED_FUNCTION_13_1(&v163);
  v126(v119, v121);
  OUTLINED_FUNCTION_13_1(&v169);
  v127(v125, v124);
  return __swift_destroy_boxed_opaque_existential_0(&v170);
}

uint64_t sub_2313E8ABC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
  }

  return result;
}

void sub_2313E8AD0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_3();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_37();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2313E8CDC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Value = type metadata accessor for QueryValue();
  v9 = OUTLINED_FUNCTION_29(Value);
  v36 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v37 = v1;
  sub_2313E93D4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 1;
      break;
    case 2u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 2;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 3;
      break;
    case 4u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 4;
      break;
    case 5u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 5;
      break;
    case 6u:
      v22 = *v19;
      v23 = *(*v19 + 16);
      if (v23)
      {
        v33 = v5;
        v34 = v3;
        v35 = v7;
        v39 = MEMORY[0x277D84F90];
        sub_2313FC060(0, v23, 0);
        v24 = 0;
        v20 = v39;
        v25 = v36;
        v38 = v22 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
        do
        {
          if (v24 >= *(v22 + 16))
          {
            __break(1u);
            JUMPOUT(0x2313E9204);
          }

          v26 = v23;
          v27 = *(v25 + 72);
          OUTLINED_FUNCTION_3_2();
          sub_2313EB328();
          v39 = v20;
          v29 = *(v20 + 16);
          v28 = *(v20 + 24);
          if (v29 >= v28 >> 1)
          {
            v30 = OUTLINED_FUNCTION_20(v28);
            sub_2313FC060(v30, v29 + 1, 1);
            v25 = v36;
            v20 = v39;
          }

          ++v24;
          *(v20 + 16) = v29 + 1;
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          v23 = v26;
        }

        while (v26 != v24);

        sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
        v21 = 6;
        v3 = v34;
        v7 = v35;
        v5 = v33;
      }

      else
      {
        v31 = *v19;

        sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
        v20 = MEMORY[0x277D84F90];
        v21 = 6;
      }

      break;
    case 7u:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 7;
      break;
    default:
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_112();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v20 = OUTLINED_FUNCTION_15_1();
      *(v20 + 16) = xmmword_231479580;
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_66();
      sub_2313E937C(v37, &unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_8_3();
      v21 = 0;
      break;
  }

  *v7 = v5;
  *(v7 + 8) = v3;
  *(v7 + 16) = v21;
  *(v7 + 24) = v20;
  OUTLINED_FUNCTION_16();
}

void OUTLINED_FUNCTION_18_0(unint64_t a1@<X8>)
{

  sub_2313FA208(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  result = *(v0 - 112);
  v2 = *(*(v0 - 120) + 8);
  v3 = *(v0 - 104);
  return result;
}

void OUTLINED_FUNCTION_18_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_231476798();
}

uint64_t OUTLINED_FUNCTION_18_7()
{
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  v3 = *(v2 + 8);
  *(v0 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v0 + 200) = v3;
  return result;
}

uint64_t type metadata accessor for QueryValue()
{
  result = qword_280C3D270;
  if (!qword_280C3D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313E937C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2313E93D4()
{
  OUTLINED_FUNCTION_73();
  v5 = OUTLINED_FUNCTION_149(v1, v2, v3, v4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_17();
  v9(v8);
  return v0;
}

void sub_2313E9424(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v5 = v4;
  v23 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - v16);
  v18 = *v5;
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  v21 = *(v5 + 24);
  v22 = *(v5 + 40);
  *v17 = v23;
  v17[1] = a2;
  LOBYTE(v5) = *(v5 + 32);
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *a4 = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v5;
  *(a4 + 40) = v22;
  sub_2313E9628(v17, v14, &unk_27DD4D680, &qword_2314795C0);

  sub_2313E9688(v18, v19, v20, v21, v5);

  sub_2313E8CDC();
  sub_2313F3390();
  sub_2313F34A0(*(*(a4 + 40) + 16));
  sub_2313E937C(v17, &unk_27DD4D680, &qword_2314795C0);
  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_2313E95CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_17();
  v9(v8);
  return a2;
}

uint64_t sub_2313E9628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2313E9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_231412700(a1, a2, a3, a4, a5);
  }

  return a1;
}

char *sub_2313E969C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

uint64_t sub_2313E96BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231424118(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2313E96E8(char a1, void (*a2)(), void *a3)
{
  sub_2314618AC();
  v6 = sub_2314618F0(0xD000000000000022, 0x8000000231483B80, 4096);
  v7 = [objc_opt_self() interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a2;
  v8[4] = a3;
  v25 = sub_231461E8C;
  v26 = v8;
  OUTLINED_FUNCTION_0_20();
  *(&aBlock + 1) = 1107296256;
  v23 = sub_2313FD2B8;
  v24 = &block_descriptor_5;
  v9 = _Block_copy(&aBlock);
  v10 = v6;

  [v10 setInterruptionHandler_];
  _Block_release(v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v25 = sub_231461E98;
  v26 = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v23 = sub_2313FD2B8;
  v24 = &block_descriptor_6_0;
  v12 = _Block_copy(&aBlock);
  v13 = v10;

  [v13 setInvalidationHandler_];
  _Block_release(v12);
  [v13 resume];
  if (a1)
  {
    v25 = a2;
    v26 = a3;
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_22();
    v23 = v14;
    v24 = &block_descriptor_12;
    v15 = _Block_copy(&aBlock);

    v16 = &selRef_remoteObjectProxyWithErrorHandler_;
  }

  else
  {
    v25 = a2;
    v26 = a3;
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_22();
    v23 = v17;
    v24 = &block_descriptor_9_0;
    v15 = _Block_copy(&aBlock);

    v16 = &selRef_synchronousRemoteObjectProxyWithErrorHandler_;
  }

  v18 = [v13 *v16];
  _Block_release(v15);
  sub_231478468();
  swift_unknownObjectRelease();

  sub_2313E9D3C(&aBlock, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EB80, &qword_23147FE68);
  swift_dynamicCast();
  return v20;
}

uint64_t sub_2313E9A08()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2313E9A48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t OUTLINED_FUNCTION_1_8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

unint64_t OUTLINED_FUNCTION_1_13()
{
  v1[6] = v0;
  v1[7] = 1701603686;
  v1[8] = 0xE400000000000000;
  return 0xD000000000000060;
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return sub_231477F38();
}

uint64_t OUTLINED_FUNCTION_1_19()
{
  v2 = v0[7];
  v0[3] = v0[6];
  v0[4] = v2;
  *(v0 + 73) = *(v0 + 121);

  return sub_2313F501C((v0 + 3));
}

__n128 *OUTLINED_FUNCTION_1_23(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6449726F727265;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return swift_once();
}

_OWORD *sub_2313E9D3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Donation.donate(completionHandler:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_118();
  v4 = swift_allocObject();
  v22 = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_retain_n();
  v5 = dispatch_semaphore_create(1);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = sub_23141EC30;
  v7[5] = v4;
  OUTLINED_FUNCTION_118();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_23141EC64;
  *(v8 + 24) = v7;
  v9 = sub_2314767B8();
  OUTLINED_FUNCTION_74(v9);
  swift_allocObject();

  v10 = v5;
  sub_2314767A8();
  OUTLINED_FUNCTION_97();
  type metadata accessor for Donation();
  sub_2313F7138(&qword_27DD4D6B8, type metadata accessor for Donation);
  v11 = sub_231476798();
  v13 = v12;

  v14 = sub_231476B98();
  sub_2313EB8A4(v11, v13);
  OUTLINED_FUNCTION_118();
  v15 = swift_allocObject();
  v15[2] = sub_23141EC70;
  v15[3] = v8;
  v16 = v14;

  sub_2313E96E8(1, sub_23141ECB0, v15);

  OUTLINED_FUNCTION_118();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_23141EC70;
  *(v17 + 24) = v8;
  aBlock[4] = sub_23141ECB8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231416E68;
  aBlock[3] = &block_descriptor_24_0;
  v18 = _Block_copy(aBlock);

  OUTLINED_FUNCTION_138();
  [v19 v20];

  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2313EA0E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313EA130()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_118();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2313EA1A0@<X0>(uint64_t a1@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = [objc_opt_self() defaultManager];
  v21[0] = 0;
  v10 = [v9 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v21];

  v11 = v21[0];
  if (v10)
  {
    sub_231476AA8();
    v12 = v11;

    v13 = 0;
  }

  else
  {
    v14 = v21[0];
    v15 = sub_231476A68();

    swift_willThrow();
    v13 = 1;
  }

  v16 = sub_231476AF8();
  __swift_storeEnumTagSinglePayload(v8, v13, 1, v16);
  sub_2313EA3E4(v8, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_2313EA454(v8);
    sub_2313EA454(v6);
    v17 = 1;
  }

  else
  {
    sub_231476A88();
    sub_2313EA454(v8);
    (*(*(v16 - 8) + 8))(v6, v16);
    v17 = 0;
  }

  result = __swift_storeEnumTagSinglePayload(a1, v17, 1, v16);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2313EA3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2313EA454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313EA4BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - v3;
  __swift_allocate_value_buffer(v2, qword_280C3CD28);
  v5 = __swift_project_value_buffer(v0, qword_280C3CD28);
  sub_2313EA1A0(v4);
  v6 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_2313E937C(v4, &qword_27DD4DA58, &unk_23147A530);
    v7 = 1;
  }

  else
  {
    sub_231476A88();
    (*(*(v6 - 8) + 8))(v4, v6);
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v5, v7, 1, v6);
}

uint64_t static KeyValueStore.lazy(namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for _KeyValueStore(0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  if (qword_280C3CD20 != -1)
  {
    OUTLINED_FUNCTION_1_15();
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_280C3CD28);
  sub_2313E9628(v19, v18, &qword_27DD4DA58, &unk_23147A530);
  *a3 = a1;
  a3[1] = a2;
  sub_2313E9628(v18, v12, &qword_27DD4DA58, &unk_23147A530);
  swift_storeEnumTagMultiPayload();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D0, &qword_23147D2C8);
  OUTLINED_FUNCTION_74(v20);
  swift_allocObject();

  sub_2313EAA04();
  v22 = v21;
  result = sub_2313E937C(v18, &qword_27DD4DA58, &unk_23147A530);
  a3[2] = v22;
  return result;
}

void sub_2313EA7D4()
{
  sub_2313EA8B4();
  if (v0 <= 0x3F)
  {
    sub_2314467E4();
    if (v1 <= 0x3F)
    {
      sub_2313FC190(319, &qword_280C3D808, &qword_27DD4DA58, &unk_23147A530);
      if (v2 <= 0x3F)
      {
        sub_2314770A8();
        if (v3 <= 0x3F)
        {
          sub_2313FC190(319, &qword_280C3D800, &qword_27DD4D640, &qword_23147FD10);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2313EA8B4()
{
  if (!qword_280C3D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DA58, &unk_23147A530);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C3D810);
    }
  }
}

uint64_t sub_2313EA92C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_2313EAA24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_83@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_2313E937C(v4, v1, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

__n128 OUTLINED_FUNCTION_26_4(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_231476E38();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_11_5@<Q0>(char a1@<W8>)
{
  *(v3 - 192) = v1;
  *(v3 - 184) = a1;
  *(v3 - 183) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 167) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 - 2);
  v8 = *(v4 - 1);
  v9 = *v4;

  return sub_231423790(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return sub_231478968();
}

BOOL OUTLINED_FUNCTION_12_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_15()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_2314786F8();
}

uint64_t OUTLINED_FUNCTION_11_17()
{

  return sub_2314787C8();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_13SiriRemembers11UserDonatorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2313EADE8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_0_9()
{
  v1 = *(v0 - 176);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

unint64_t OUTLINED_FUNCTION_0_10()
{

  return sub_2313F0604();
}

void OUTLINED_FUNCTION_0_17()
{

  sub_23141CC58();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for Donation()
{
  result = qword_280C3C948;
  if (!qword_280C3C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  *(v0 - 120) = 0;
  *(v0 - 114) = 0;
  return v0 - 120;
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_231478968();
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27()
{
}

uint64_t OUTLINED_FUNCTION_12_2()
{
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2313F1184(v5, v6, 3, a4, a5);
}

__n128 OUTLINED_FUNCTION_12_6@<Q0>(char a1@<W8>)
{
  *(v3 - 176) = v1;
  *(v3 - 168) = a1;
  *(v3 - 167) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 151) = result;
  return result;
}

void OUTLINED_FUNCTION_12_7()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_12_14()
{
  v2 = *(v0 + 48);

  JUMPOUT(0x23192F1F0);
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return sub_231478818();
}

uint64_t OUTLINED_FUNCTION_12_17@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 112);
  v5 = *(v1 - 104);

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_12_18()
{
  *(v3 - 88) = v0;
  v4 = *(v1 + 8);
  return v2;
}

void OUTLINED_FUNCTION_12_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2313EB328()
{
  OUTLINED_FUNCTION_73();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return v0;
}

uint64_t sub_2313EB380()
{
  v1 = OUTLINED_FUNCTION_91();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2313EB404(uint64_t a1)
{
  v2 = type metadata accessor for _InteractionStore();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

BOOL OUTLINED_FUNCTION_24_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2050;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_231477E58();
}

void OUTLINED_FUNCTION_23_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_23_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  v3 = *(v1 + 8);
  *(v0 + 192) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v0 + 200) = v3;
  return v2;
}

uint64_t sub_2313EB684(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2313EB748(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2313EB848(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2313EB748(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2313EF198(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_231478558();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2313EB848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313EB8A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2313EB8FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2313EB944(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_19_3()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

id OUTLINED_FUNCTION_19_4(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_19_5@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v14);
}

void Donation.donateToSiriRemembersView(_:donationCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = v20;
  v257 = v27;
  OUTLINED_FUNCTION_97();
  v254 = sub_231478308();
  v28 = OUTLINED_FUNCTION_4(v254);
  v253 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v32);
  v251 = sub_2314782F8();
  v33 = OUTLINED_FUNCTION_3(v251);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v36);
  v37 = sub_231477D08();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v39);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v40 = OUTLINED_FUNCTION_3(v267);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  v265 = v43;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39();
  v263 = v45;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39();
  v262 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39();
  v268 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v52);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  v53 = OUTLINED_FUNCTION_3(v259);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v59 = OUTLINED_FUNCTION_29(v58);
  v249 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47_0(&v238 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v250 = v64;
  MEMORY[0x28223BE20](v65);
  v67 = &v238 - v66;
  v264 = type metadata accessor for _NewInteraction(0);
  v68 = OUTLINED_FUNCTION_3(v264);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_141();
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D698, &qword_231479AD8);
  v71 = OUTLINED_FUNCTION_3(v256);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v74);
  v75 = OUTLINED_FUNCTION_142();
  Value = type metadata accessor for Interaction(v75);
  v76 = OUTLINED_FUNCTION_3(Value);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v79);
  v81 = &v238 - v80;
  v82 = type metadata accessor for Donation();
  v83 = OUTLINED_FUNCTION_3(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_34();
  v87 = MEMORY[0x28223BE20](v86);
  v88 = *v20;
  v89 = *(v20 + 8);
  *v281 = *(v20 + 9);
  *&v281[3] = *(v20 + 12);
  v90 = *(v20 + 16);
  v279 = *(v20 + 24);
  v278 = *(v20 + 40);
  if ((v89 & 1) == 0)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v105 = sub_231477B68();
    __swift_project_value_buffer(v105, qword_280C3D970);
    v106 = sub_231477B58();
    sub_2314782A8();
    v107 = OUTLINED_FUNCTION_44();
    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_16;
    }

    v109 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v109);
    v112 = "Skip the donation to SiriRemembersView";
    goto LABEL_15;
  }

  if (!v90)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v113 = sub_231477B68();
    __swift_project_value_buffer(v113, qword_280C3D970);
    v106 = sub_231477B58();
    sub_2314782A8();
    v114 = OUTLINED_FUNCTION_44();
    if (!os_log_type_enabled(v114, v115))
    {
      goto LABEL_16;
    }

    v116 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v116);
    v112 = "Skip the donation to SiriRemembersView due to NIL donator";
LABEL_15:
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v110, v111, v112);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
LABEL_16:

LABEL_37:
    OUTLINED_FUNCTION_62();
    return;
  }

  v242 = v89;
  v243 = v88;
  v246 = v87;
  v247 = v22;
  v91 = qword_280C3CF50;
  v245 = v90;

  if (v91 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v92 = sub_231477B68();
  v93 = __swift_project_value_buffer(v92, qword_280C3D970);
  OUTLINED_FUNCTION_11_3();
  sub_2313EB328();
  v238 = v93;
  v94 = sub_231477B58();
  v95 = sub_2314782A8();
  v96 = os_log_type_enabled(v94, v95);
  v239 = v67;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v241 = v25;
    v98 = v97;
    v99 = swift_slowAlloc();
    v269 = v99;
    *v98 = 136315138;
    OUTLINED_FUNCTION_11_3();
    sub_2313EB328();
    OUTLINED_FUNCTION_105(&v273);
    v100 = sub_231477EB8();
    v240 = v81;
    v101 = v26;
    v103 = v102;
    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
    v104 = sub_2313EB684(v100, v103, &v269);
    v26 = v101;
    v81 = v240;

    *(v98 + 4) = v104;
    _os_log_impl(&dword_2313E1000, v94, v95, "InteractionStore donation to IntelligencePlatform started. Donation: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    v25 = v241;
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {

    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
    v67 = v246;
  }

  v117 = *(v26 + *(v67 + 5));
  v118 = *(v26 + 64) == 0xD000000000000013 && 0x8000000231481CF0 == *(v26 + 72);
  v119 = v247;
  if (v118 || (sub_2314787C8() & 1) != 0)
  {
    v120 = *(v26 + 82);

    if (v120 == 1)
    {
      v121 = sub_2313F0604();
      if (v122)
      {
        v123 = v121;
        v124 = v26;
        swift_isUniquelyReferenced_nonNull_native();
        v269 = v117;
        v117 = *(v117 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
        OUTLINED_FUNCTION_148();
        OUTLINED_FUNCTION_147();
        v125 = *(*(v117 + 56) + 8 * v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
        sub_231478608();
      }

      else
      {
        v124 = v26;
      }

      v126 = sub_2313F0604();
      if (v127)
      {
        v128 = v126;
        swift_isUniquelyReferenced_nonNull_native();
        v269 = v117;
        v117 = *(v117 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
        OUTLINED_FUNCTION_148();
        OUTLINED_FUNCTION_147();
        v129 = *(*(v117 + 56) + 8 * v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
        sub_231478608();
      }

      v26 = v124;
      v119 = v247;
    }
  }

  else
  {
  }

  v269 = v243;
  LOBYTE(v270) = v242;
  *(&v270 + 1) = *v281;
  HIDWORD(v270) = *&v281[3];
  v271 = v245;
  v272 = v279;
  LOBYTE(v273) = v278;
  v130 = sub_2313F4D04();
  if (v25)
  {

    goto LABEL_37;
  }

  v131 = v130;
  OUTLINED_FUNCTION_14_1();
  sub_2313EB328();
  OUTLINED_FUNCTION_110(&v273);
  v133 = 0x30200u >> (8 * v132);
  if (v134)
  {
    LOBYTE(v133) = 1;
  }

  v81[*(Value + 64)] = v133;
  sub_2313F529C();
  v136 = v256;
  *(v119 + *(v256 + 48)) = v135;
  v137 = v255;
  sub_2313E93D4();
  v138 = *(v137 + *(v136 + 48));

  OUTLINED_FUNCTION_23_0();
  sub_2313F31EC();
  v139 = v257;
  if (!v257)
  {
    if (qword_280C3CA98 != -1)
    {
      swift_once();
    }
  }

  v256 = v131;
  v240 = v81;
  v255 = v26;
  v241 = 0;
  v277 = v139;
  v140 = *(v264 + 52);

  Value = v140;
  sub_231476BE8();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_139(&a15);
  sub_231403238();
  v275 = 0;
  sub_2313E93D4();
  v141 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_150();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v220 = *(v141 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v141 = v221;
  }

  v143 = *(v141 + 16);
  v142 = *(v141 + 24);
  v243 = v117;
  if (v143 >= v142 >> 1)
  {
    OUTLINED_FUNCTION_20(v142);
    sub_2313F3244();
    v141 = v222;
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_83(&a15);
  sub_2313E937C(v258, &qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_107();
  v144 = v275;
  sub_231476BE8();
  swift_storeEnumTagMultiPayload();
  sub_231403238();
  v274 = v144;
  OUTLINED_FUNCTION_130();
  sub_2313E93D4();

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_150();
  v145 = v269;
  v146 = v270;
  v147 = v271;
  Value = v272;
  v148 = v141;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v223 = *(v141 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v148 = v224;
  }

  v150 = *(v148 + 16);
  v149 = *(v148 + 24);
  if (v150 >= v149 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v149);
    sub_2313F3244();
    v148 = v225;
  }

  sub_2313E937C(v261, &unk_27DD4D680, &qword_2314795C0);
  sub_2313E937C(v260, &qword_27DD4D568, &qword_2314795C8);
  *(v148 + 16) = v150 + 1;
  v151 = v148 + 32 * v150;
  *(v151 + 32) = v145;
  *(v151 + 40) = v146;
  *(v151 + 48) = v147;
  *(v151 + 56) = Value;
  v152 = v274;
  v153 = v244[5];
  v154 = v262;
  *v262 = v244[4];
  v154[1] = v153;
  Value = type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_104();
  swift_storeEnumTagMultiPayload();
  v275 = v152;
  sub_2313E93D4();

  OUTLINED_FUNCTION_106();
  sub_2313E8CDC();
  v155 = v270;
  v261 = v269;
  v156 = v271;
  v157 = v272;
  v158 = v148;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v226 = *(v148 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v158 = v227;
  }

  v160 = *(v158 + 16);
  v159 = *(v158 + 24);
  if (v160 >= v159 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v159);
    sub_2313F3244();
    v158 = v228;
  }

  sub_2313E937C(v262, &unk_27DD4D680, &qword_2314795C0);
  *(v158 + 16) = v160 + 1;
  v161 = v158 + 32 * v160;
  *(v161 + 32) = v261;
  *(v161 + 40) = v155;
  *(v161 + 48) = v156;
  *(v161 + 56) = v157;
  v162 = v275;
  v163 = v244[7];
  v164 = v263;
  *v263 = v244[6];
  v164[1] = v163;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_104();
  swift_storeEnumTagMultiPayload();
  v274 = v162;
  OUTLINED_FUNCTION_116();

  OUTLINED_FUNCTION_106();
  sub_2313E8CDC();
  v165 = v270;
  v262 = v269;
  v166 = v271;
  v167 = v272;
  v168 = v158;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v229 = *(v158 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v168 = v230;
  }

  v170 = *(v168 + 16);
  v169 = *(v168 + 24);
  if (v170 >= v169 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v169);
    sub_2313F3244();
    v168 = v231;
  }

  v171 = MEMORY[0x277D84F90];

  sub_2313E937C(v263, &unk_27DD4D680, &qword_2314795C0);
  *(v168 + 16) = v170 + 1;
  v172 = v168 + 32 * v170;
  *(v172 + 32) = v262;
  *(v172 + 40) = v165;
  *(v172 + 48) = v166;
  *(v172 + 56) = v167;
  v173 = v274;
  v174 = v244[9];
  v175 = v265;
  *v265 = v244[8];
  v175[1] = v174;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_104();
  swift_storeEnumTagMultiPayload();
  v275 = v173;
  OUTLINED_FUNCTION_116();

  OUTLINED_FUNCTION_106();
  sub_2313E8CDC();
  v176 = v269;
  v177 = v270;
  v178 = v271;
  v179 = v272;
  v180 = v168;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v232 = *(v168 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v180 = v233;
  }

  v182 = *(v180 + 16);
  v181 = *(v180 + 24);
  v183 = v182 + 1;
  if (v182 >= v181 >> 1)
  {
    OUTLINED_FUNCTION_20(v181);
    sub_2313F3244();
    v180 = v234;
  }

  sub_2313E937C(v265, &unk_27DD4D680, &qword_2314795C0);
  *(v180 + 16) = v183;
  v184 = v180 + 32 * v182;
  *(v184 + 32) = v176;
  *(v184 + 40) = v177;
  *(v184 + 48) = v178;
  *(v184 + 56) = v179;
  v185 = *(v264 + 64);
  v186 = *(v244 + v185);
  v276 = v275;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
  OUTLINED_FUNCTION_120();
  v188 = *(v187 + 72);
  v189 = OUTLINED_FUNCTION_114();
  *(v189 + 16) = xmmword_231479580;
  *(v189 + v183) = v186;
  OUTLINED_FUNCTION_95();
  swift_storeEnumTagMultiPayload();

  v190 = v180;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v235 = *(v180 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v190 = v236;
  }

  v192 = *(v190 + 16);
  v191 = *(v190 + 24);
  v193 = v240;
  if (v192 >= v191 >> 1)
  {
    OUTLINED_FUNCTION_20(v191);
    sub_2313F3244();
    v190 = v237;
  }

  *(v190 + 16) = v192 + 1;
  v194 = v190 + 32 * v192;
  *(v194 + 32) = xmmword_231479A90;
  *(v194 + 48) = 0;
  *(v194 + 56) = v189;
  v269 = v171;
  v270 = v190;
  LOBYTE(v271) = v276;
  OUTLINED_FUNCTION_133(&v267);
  v195 = v241;
  sub_2313FEB98();
  if (v195)
  {

    sub_2313E937C(v247, &qword_27DD4D698, &qword_231479AD8);

    OUTLINED_FUNCTION_4_2();
    sub_2313EB380();
    OUTLINED_FUNCTION_5_1();
    sub_2313EB380();

    goto LABEL_37;
  }

  v267 = v185;
  v241 = 0;

  v268 = sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  v196 = v243;

  sub_231477CC8();
  v269 = v171;
  OUTLINED_FUNCTION_65_0();
  sub_2313F7138(v197, v198);
  v199 = OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(v199, v200);
  OUTLINED_FUNCTION_130();
  sub_2313FD260(v201, v202, v203);
  OUTLINED_FUNCTION_133(&v280);
  sub_231478498();
  (*(v253 + 104))(v252, *MEMORY[0x277D85260], v254);
  v268 = sub_231478338();
  sub_2313E93D4();
  v204 = (v250 + ((*(v249 + 80) + 24) & ~*(v249 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v205 = (v204 + 15) & 0xFFFFFFFFFFFFFFF8;
  v206 = swift_allocObject();
  *(v206 + 16) = &v277;
  sub_2314030BC();
  v207 = v244;
  *(v206 + v204) = v244;
  *(v206 + v205) = v193;
  *(v206 + ((v205 + 15) & 0xFFFFFFFFFFFFFFF8)) = v196;
  OUTLINED_FUNCTION_118();
  v208 = swift_allocObject();
  *(v208 + 16) = sub_231406EF8;
  *(v208 + 24) = v206;
  *(&v272 + 1) = sub_2313EAA24;
  v273 = v208;
  v269 = MEMORY[0x277D85DD0];
  v270 = 1107296256;
  v271 = sub_2313E340C;
  *&v272 = &block_descriptor_0;
  v209 = _Block_copy(&v269);

  v210 = v268;
  dispatch_sync(v268, v209);

  _Block_release(v209);
  LOBYTE(v210) = swift_isEscapingClosureAtFileLocation();

  if ((v210 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_1();
    v211 = v248;
    sub_2313EB328();

    v212 = v241;
    sub_2313FD390(v211, v196, *(v255 + *(v246 + 7)), *(v207 + v267), 0, 0);
    v213 = v256;
    if (v212)
    {

      sub_2313EB380();
      sub_2313E937C(v239, &qword_27DD4D690, &qword_231479AD0);
      sub_2313E937C(v247, &qword_27DD4D698, &qword_231479AD8);
    }

    else
    {

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_4_2();
      sub_2313EB380();
      if (v278 == 1)
      {
        sub_2313FC2C0(v207, v213);
      }

      v214 = sub_231477B58();
      sub_2314782A8();
      v215 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v217);
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v218, v219, "InteractionStore donation to IntelligencePlatform succeeded");
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      sub_2313E937C(v239, &qword_27DD4D690, &qword_231479AD0);
      sub_2313E937C(v247, &qword_27DD4D698, &qword_231479AD8);

      OUTLINED_FUNCTION_4_2();
    }

    sub_2313EB380();
    OUTLINED_FUNCTION_5_1();
    sub_2313EB380();
    goto LABEL_37;
  }

  __break(1u);
}

uint64_t sub_2313ED1F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_29(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v0 + v4);
  v8 = type metadata accessor for Interaction(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
  {
    v9 = *(v7 + 1);

    v10 = *(v7 + 3);

    v11 = *(v7 + 5);

    v12 = *(v7 + 7);

    v13 = *(v7 + 9);

    v14 = v8[12];
    v15 = sub_231476CA8();
    OUTLINED_FUNCTION_3(v15);
    (*(v16 + 8))(&v7[v14]);
    v17 = *&v7[v8[17] + 8];

    v18 = *&v7[v8[18] + 8];

    v19 = *&v7[v8[19]];
  }

  v20 = (((((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v20);

  return MEMORY[0x2821FE8E8](v0, v20 + 8, v3 | 7);
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_59_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return sub_231476CA8();
}

void OUTLINED_FUNCTION_99_0()
{

  JUMPOUT(0x23192D700);
}

void OUTLINED_FUNCTION_86()
{

  sub_2313FC060(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_6_1@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;
  v3 = *(v1 - 128);
  *(v1 - 224) = *(v1 - 144);
  *(v1 - 208) = v3;
  *(v1 - 199) = *(v1 - 119);

  return sub_2313F4F84(v1 - 144, v1 - 272);
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v2 = *(v0 + 32);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 8 * v2 + 32) = v3;
  return result;
}

void OUTLINED_FUNCTION_6_6()
{
  v1 = *(v0 - 384);
  v2 = *(v0 - 392);
  v3 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_6_8@<X0>(char a1@<W8>)
{
  *(v1 - 80) = a1;

  return sub_231478718();
}

uint64_t OUTLINED_FUNCTION_6_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6449726F727265;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return sub_231478998();
}

__n128 *OUTLINED_FUNCTION_6_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_231478648();
}

uint64_t OUTLINED_FUNCTION_63()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 216);
  v4 = *(v0 - 208);
  v5 = *(v0 - 200);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_231477FB8();
}

uint64_t sub_2313ED930(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
  }

  return result;
}

uint64_t sub_2313ED944(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t INInteraction.asDonation()@<X0>(uint64_t a1@<X8>)
{
  v251 = a1;
  v3 = sub_231476CA8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v258 = v5;
  v259 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  v257 = v8;
  v249 = sub_231476CE8();
  v9 = OUTLINED_FUNCTION_4(v249);
  v248 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  *&v247 = v13;
  v14 = sub_2314767F8();
  v260 = OUTLINED_FUNCTION_4(v14);
  v261 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_12_0();
  v263 = v18;
  v19 = type metadata accessor for Interaction(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v250 = &v243 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v243 - v24;
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0xE000000000000000;
  *(v25 + 4) = 0;
  *(v25 + 5) = 0xE000000000000000;
  *(v25 + 6) = 0;
  *(v25 + 7) = 0xE000000000000000;
  *(v25 + 8) = 0;
  *(v25 + 9) = 0xE000000000000000;
  *(v25 + 40) = 0;
  v25[82] = 2;
  v256 = v20[14];
  sub_231476C98();
  v253 = v20[15];
  *&v25[v253] = 0;
  v25[v20[16]] = 0;
  v25[v20[17]] = 1;
  v25[v20[18]] = 3;
  v26 = &v25[v20[19]];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  v254 = v26;
  v27 = &v25[v20[20]];
  v27->isa = 0;
  v27[1].isa = 0xE000000000000000;
  v255 = v27;
  v28 = v20[21];
  *&v25[v28] = MEMORY[0x277D84F98];
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v29 = sub_231477B68();
  v30 = __swift_project_value_buffer(v29, qword_280C3D970);
  v31 = v1;
  v32 = sub_231477B58();
  v33 = sub_2314782A8();

  LODWORD(v262) = v33;
  v34 = os_log_type_enabled(v32, v33);
  v252 = v2;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_16_4();
    v246 = OUTLINED_FUNCTION_23_3();
    v267[0] = v246;
    *v35 = 136315138;
    v36 = [v31 intent];
    v37 = v31;
    v38 = v25;
    v39 = v28;
    v40 = v30;
    v41 = [v36 0x1FBC40F92];

    v42 = sub_231477E68();
    v44 = v43;

    v30 = v40;
    v28 = v39;
    v25 = v38;
    v31 = v37;
    v45 = sub_2313EB684(v42, v44, v267);

    *(v35 + 4) = v45;
    OUTLINED_FUNCTION_18_3(&dword_2313E1000, v46, v262, "Converting interaction to donation (intent=%s)");
    __swift_destroy_boxed_opaque_existential_0(v246);
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
  }

  v47 = sub_2313F142C(v31);
  if (!v48)
  {
    v66 = v31;
    v67 = sub_231477B58();
    v68 = sub_2314782B8();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_16_4();
      v69 = OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_19_4(v69, 5.7779e-34);
      v71 = "Cannot convert INInteraction to Donation; invalid bundleId: %@";
LABEL_28:
      OUTLINED_FUNCTION_18_3(&dword_2313E1000, v70, v68, v71);
      sub_2313E937C(v69, &qword_27DD4EAF0, &qword_23147B980);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

LABEL_29:

    sub_2313F17E0();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();
    return sub_2313F22F8(v25);
  }

  v49 = v47;
  v50 = v48;
  v51 = [v31 dateInterval];
  if (!v51)
  {

    v72 = v31;
    v67 = sub_231477B58();
    v68 = sub_2314782B8();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_16_4();
      v69 = OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_19_4(v69, 5.7779e-34);
      v71 = "Cannot convert INInteraction to Donation; missing dateInterval: %@";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v52 = v51;
  v246 = v30;
  sub_2314767C8();

  v262 = v31;
  v53 = [v31 intent];
  v54 = [v53 _className];

  v55 = sub_231477E68();
  v57 = v56;

  v58 = v55 == 0xD000000000000011 && 0x8000000231482700 == v57;
  if (v58 || (sub_2314787C8() & 1) != 0 || (v55 == 0xD000000000000016 ? (v59 = 0x80000002314828C0 == v57) : (v59 = 0), v59 || (sub_2314787C8())) && (v49 == 0x6C7070612E6D6F63 ? (v60 = v50 == 0xEF636973754D2E65) : (v60 = 0), !v60 && (sub_2314787C8() & 1) == 0))
  {
    v244 = v55;
    v82 = v247;
    sub_231476CD8();
    v64 = sub_231476CB8();
    v65 = v83;
    (*(v248 + 8))(v82, v249);

    v84 = OUTLINED_FUNCTION_20_1();
    v85 = sub_2314782A8();

    LODWORD(v248) = v85;
    v86 = os_log_type_enabled(v84, v85);
    v245 = v28;
    if (v86)
    {
      v87 = v84;
      v88 = OUTLINED_FUNCTION_16_4();
      v89 = OUTLINED_FUNCTION_23_3();
      v249 = v64;
      v90 = v89;
      v267[0] = v89;
      *v88 = 136315138;
      *(v88 + 4) = sub_2313EB684(v249, v65, v267);
      _os_log_impl(&dword_2313E1000, v87, v248, "[3pMediaWorkaround] setting random interaction ID. id=%s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      v64 = v249;
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }

    v55 = v244;
  }

  else
  {
    v61 = v262;
    v62 = sub_2313F1694([v262 intent], &selRef_identifier);
    if (!v63)
    {

      v74 = v61;
      v75 = OUTLINED_FUNCTION_20_1();
      v76 = sub_2314782B8();

      if (OUTLINED_FUNCTION_24_0())
      {
        OUTLINED_FUNCTION_16_4();
        v77 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_19_4(v77, 5.7779e-34);
        OUTLINED_FUNCTION_18_3(&dword_2313E1000, v78, v76, "Cannot convert INInteraction to Donation; missing id: %@");
        sub_2313E937C(v77, &qword_27DD4EAF0, &qword_23147B980);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      sub_2313F17E0();
      swift_allocError();
      *v79 = 0;
      swift_willThrow();
      v80 = OUTLINED_FUNCTION_2_6();
      v81(v80);
      return sub_2313F22F8(v25);
    }

    v64 = v62;
    v65 = v63;
    v245 = v28;
  }

  *v25 = v64;
  *(v25 + 1) = v65;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0xE000000000000000;
  v91 = v262;
  v92 = [v262 intent];
  v93 = [v92 domain];

  v94 = sub_231477E68();
  v96 = v95;

  *(v25 + 4) = v94;
  *(v25 + 5) = v96;
  v97 = v91;
  *(v25 + 6) = v49;
  *(v25 + 7) = v50;
  *(v25 + 8) = v55;
  *(v25 + 9) = v57;

  v25[80] = [v91 _donatedBySiri];
  sub_23142F00C([v91 intentHandlingStatus], v267);
  v25[81] = v267[0];
  sub_23142F110([v91 direction], v55, v57, objc_msgSend(v91, sel__donatedBySiri), v267);

  v25[82] = v267[0];
  v98 = v257;
  sub_2314767D8();
  (*(v258 + 40))(&v25[v256], v98, v259);
  sub_2314767E8();
  if ((*&v99 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_117;
  }

  if (v99 <= -9.22337204e18)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (v99 >= 9.22337204e18)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *&v25[v253] = v99;
  v100 = sub_23142FDAC(v91);
  if (v101)
  {
    v102 = v100;
  }

  else
  {
    v102 = 0;
  }

  v103 = 0xE000000000000000;
  if (v101)
  {
    v103 = v101;
  }

  v104 = v254;
  *v254 = v102;
  *(v104 + 8) = v103;
  v105 = [v91 identifier];
  v106 = sub_231477E68();
  v108 = v107;

  v109 = v255;
  v255->isa = v106;
  v109[1].isa = v108;
  v110 = [v91 intent];
  v111 = INTypedIntentWithIntent();

  if (!v111)
  {
    v150 = MEMORY[0x277D84F98];
    v122 = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_13_6();
    v114 = v245;
    goto LABEL_53;
  }

  v270 = v111;
  sub_2313E4AFC(0, &qword_280C3BBD0, 0x277CD3D30);
  v112 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  v113 = swift_dynamicCast();
  v114 = v245;
  if ((v113 & 1) == 0)
  {

    v266 = 0;
    v264 = 0u;
    v265 = 0u;
    sub_2313E937C(&v264, &qword_27DD4D578, &qword_2314795E0);
    v150 = MEMORY[0x277D84F98];
    v122 = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_13_6();
    goto LABEL_53;
  }

  sub_2313F198C(&v264, v267);
  v115 = v268;
  v116 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  if (((*(v116 + 8))(v115, v116) & 1) == 0)
  {
    v139 = OUTLINED_FUNCTION_20_1();
    v140 = sub_2314782A8();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_2313E1000, v139, v140, "Skipping donation because it's not donatable", v141, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    sub_2313F17E0();
    swift_allocError();
    *v142 = 3;
    swift_willThrow();

    v143 = OUTLINED_FUNCTION_2_6();
    v144(v143);
    goto LABEL_67;
  }

  v117 = v268;
  v118 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  v119 = v252;
  v120 = (*(v118 + 16))(v117, v118);
  if (v119)
  {
    v125 = OUTLINED_FUNCTION_2_6();
    v126(v125);

LABEL_67:
    __swift_destroy_boxed_opaque_existential_0(v267);
    return sub_2313F22F8(v25);
  }

  sub_2313F2910(v120);
  v122 = v121;
  v49 = 0;

  *&v25[v114] = v122;
  v123 = v268;
  v124 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  v150 = (*(v124 + 24))(v123, v124);

  __swift_destroy_boxed_opaque_existential_0(v267);
  v97 = v262;
LABEL_53:
  v127 = [v97 intentResponse];
  if (!v127 || (v128 = v127, v129 = sub_2313F2714(v128), v128, v128, !v129))
  {
    v129 = 0;
    goto LABEL_60;
  }

  v270 = v129;
  sub_2313E4AFC(0, &qword_280C3BBD8, 0x277CD3D48);
  v130 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_60:
    v266 = 0;
    v264 = 0u;
    v265 = 0u;
LABEL_61:
    sub_2313E937C(&v264, &qword_27DD4D578, &qword_2314795E0);
    v130 = v129;
LABEL_62:
    sub_2313FA260(v25, v250);

    Donation.init(interaction:entities:)();

    v137 = OUTLINED_FUNCTION_2_6();
    v138(v137);
    goto LABEL_63;
  }

  if (!*(&v265 + 1))
  {
    goto LABEL_61;
  }

  v245 = v114;
  sub_2313F198C(&v264, v267);
  v131 = v49;
  v132 = v268;
  v133 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  v134 = (*(v133 + 16))(v132, v133);
  if (v131)
  {
    v135 = OUTLINED_FUNCTION_2_6();
    v136(v135);

    __swift_destroy_boxed_opaque_existential_0(v267);
LABEL_63:

    return sub_2313F22F8(v25);
  }

  sub_2313F2910(v134);
  v147 = v146;

  v148 = v268;
  v149 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  v254 = (*(v149 + 24))(v148, v149);
  v152 = v147 + 64;
  v151 = *(v147 + 64);
  v153 = *(v147 + 32);
  OUTLINED_FUNCTION_36();
  v156 = v155 & v154;
  v158 = ((v157 + 63) >> 6);

  v159 = 0;
  *&v160 = 136315138;
  v247 = v160;
  v252 = 0;
  v262 = v130;
  v248 = v147 + 64;
  v249 = v158;
  v253 = v147;
LABEL_70:
  v161 = v159;
  if (!v156)
  {
    goto LABEL_72;
  }

  do
  {
    v159 = v161;
LABEL_75:
    v162 = __clz(__rbit64(v156));
    v156 &= v156 - 1;
    v163 = v162 | (v159 << 6);
    v164 = *(v147 + 56);
    v165 = (*(v147 + 48) + 16 * v163);
    v166 = v165[1];
    v259 = *v165;
    v167 = v164 + 24 * v163;
    v169 = *v167;
    v168 = *(v167 + 8);
    v170 = *(v167 + 16);
    v255 = v122[2];

    v257 = v169;
    v258 = v168;
    v171 = v169;
    v172 = v166;
    sub_231401AEC(v171, v168, v170);
    LODWORD(v256) = v170;
    if (!v255 || (sub_2313F0604(), (v173 & 1) == 0))
    {

      sub_231401AEC(v257, v258, v170);
      v183 = v25;
      v184 = v245;
      v185 = *&v183[v245];
      swift_isUniquelyReferenced_nonNull_native();
      v186 = *&v183[v184];
      v25 = v183;
      *&v264 = v186;
      v255 = v172;
      v243 = sub_2313F0604();
      v187 = *(v186 + 16);
      LODWORD(v244) = v188;
      v130 = v262;
      if (__OFADD__(v187, (v188 & 1) == 0))
      {
        goto LABEL_121;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
      v158 = &v264;
      if (sub_2314785F8())
      {
        v158 = v264;
        sub_2313F0604();
        v147 = v253;
        if ((v244 & 1) != (v189 & 1))
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_21_1();
      }

      else
      {
        v147 = v253;
        OUTLINED_FUNCTION_21_1();
        v190 = v243;
        v191 = v244;
      }

      v122 = v264;
      if (v191)
      {
        v195 = *(v264 + 56) + 24 * v190;
        v196 = *v195;
        v197 = *(v195 + 8);
        *v195 = v193;
        *(v195 + 8) = v192;
        v198 = *(v195 + 16);
        *(v195 + 16) = v256;
        sub_231403090(v196, v197, v198);
      }

      else
      {
        *(v264 + 8 * (v190 >> 6) + 64) |= 1 << v190;
        v199 = (v122[6] + 16 * v190);
        v200 = v255;
        *v199 = v194;
        v199[1] = v200;
        v201 = v122[7] + 24 * v190;
        *v201 = v193;
        *(v201 + 8) = v192;
        *(v201 + 16) = v256;
        v202 = v122[2];
        v203 = __OFADD__(v202, 1);
        v204 = v202 + 1;
        if (v203)
        {
          goto LABEL_123;
        }

        v122[2] = v204;
      }

      sub_231403090(v257, v258, v256);
      *&v25[v245] = v122;
      v152 = v248;
      goto LABEL_70;
    }

    v174 = OUTLINED_FUNCTION_20_1();
    v175 = sub_2314782B8();

    v176 = os_log_type_enabled(v174, v175);
    v177 = v172;
    v130 = v262;
    if (v176)
    {
      v255 = v174;
      v178 = v177;
      v179 = swift_slowAlloc();
      v180 = OUTLINED_FUNCTION_23_3();
      *&v264 = v180;
      *v179 = v247;
      *(v179 + 4) = sub_2313EB684(v259, v178, &v264);
      v181 = v175;
      v182 = v255;
      _os_log_impl(&dword_2313E1000, v255, v181, "Conflicting field key in intent + response: %s", v179, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v180);
      OUTLINED_FUNCTION_13_6();
      OUTLINED_FUNCTION_16_2();
      v130 = v262;
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }

    sub_231403090(v257, v258, v256);
    v161 = v159;
    v147 = v253;
    v152 = v248;
    v158 = v249;
  }

  while (v156);
LABEL_72:
  while (1)
  {
    v159 = v161 + 1;
    if (__OFADD__(v161, 1))
    {
      break;
    }

    if (v159 >= v158)
    {

      v205 = v254;
      v206 = *(v254 + 64);
      v256 = v254 + 64;
      v207 = *(v254 + 32);
      OUTLINED_FUNCTION_36();
      v210 = v209 & v208;
      v212 = (v211 + 63) >> 6;

      v213 = 0;
      v258 = v212;
LABEL_93:
      v214 = v213;
      if (!v210)
      {
        goto LABEL_95;
      }

      do
      {
        v213 = v214;
LABEL_98:
        v215 = __clz(__rbit64(v210));
        v210 &= v210 - 1;
        v216 = v215 | (v213 << 6);
        v217 = *(v205 + 56);
        v218 = *(v205 + 48) + 16 * v216;
        v219 = *v218;
        v220 = *(v218 + 8);
        v221 = *(v217 + 8 * v216);
        v222 = v150[2];

        v259 = v221;
        if (!v222 || (v223 = v219, sub_2313F0604(), (v224 & 1) == 0))
        {

          swift_isUniquelyReferenced_nonNull_native();
          *&v264 = v150;
          v257 = v219;
          v232 = sub_2313F0604();
          if (__OFADD__(v150[2], (v233 & 1) == 0))
          {
            goto LABEL_122;
          }

          v234 = v232;
          v235 = v233;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
          if (sub_2314785F8())
          {
            sub_2313F0604();
            OUTLINED_FUNCTION_10_8();
            if (!v58)
            {
              goto LABEL_125;
            }

            v234 = v236;
          }

          v237 = v257;
          v150 = v264;
          if (v235)
          {
            v238 = *(v264 + 56);
            v239 = *(v238 + 8 * v234);
            *(v238 + 8 * v234) = v259;
          }

          else
          {
            *(v264 + 8 * (v234 >> 6) + 64) |= 1 << v234;
            v240 = (v150[6] + 16 * v234);
            *v240 = v237;
            v240[1] = v220;
            *(v150[7] + 8 * v234) = v259;
            v241 = v150[2];
            v203 = __OFADD__(v241, 1);
            v242 = v241 + 1;
            if (v203)
            {
              goto LABEL_124;
            }

            v150[2] = v242;
          }

          OUTLINED_FUNCTION_13_6();
          v130 = v262;
          v205 = v254;

          v212 = v258;
          goto LABEL_93;
        }

        v225 = OUTLINED_FUNCTION_20_1();
        v226 = sub_2314782B8();

        if (OUTLINED_FUNCTION_24_0())
        {
          v227 = OUTLINED_FUNCTION_16_4();
          v228 = OUTLINED_FUNCTION_23_3();
          v257 = v225;
          v229 = v228;
          *&v264 = v228;
          *v227 = v247;
          *(v227 + 4) = sub_2313EB684(v223, v220, &v264);
          v230 = v226;
          v231 = v257;
          _os_log_impl(&dword_2313E1000, v257, v230, "Conflicting entity key in intent + response: %s", v227, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v229);
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_13_6();
          OUTLINED_FUNCTION_16_2();
        }

        else
        {
        }

        v214 = v213;
        v130 = v262;
        v205 = v254;
        v212 = v258;
      }

      while (v210);
LABEL_95:
      while (1)
      {
        v213 = v214 + 1;
        if (__OFADD__(v214, 1))
        {
          goto LABEL_120;
        }

        if (v213 >= v212)
        {

          __swift_destroy_boxed_opaque_existential_0(v267);
          goto LABEL_62;
        }

        v210 = *(v256 + 8 * v213);
        ++v214;
        if (v210)
        {
          goto LABEL_98;
        }
      }
    }

    v156 = *(v152 + 8 * v159);
    ++v161;
    if (v156)
    {
      goto LABEL_75;
    }
  }

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
  result = sub_231478888();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Entity()
{
  result = qword_280C3CA80;
  if (!qword_280C3CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313EEFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2313EF028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2313EF080(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_231477FF8())
  {
    result = sub_2313F12D8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2314784D8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_231478558();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2313EF198(uint64_t a1, unint64_t a2)
{
  v4 = sub_2313EF080(a1, a2);
  sub_2313F1348(&unk_2846085C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2313EF1F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231476CA8();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void OUTLINED_FUNCTION_27_1()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_27_2@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;
  result = v1 - 88;
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_3()
{
}

uint64_t sub_2313EF320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_28_0(*(a1 + 8));
  }

  v7 = sub_231476CA8();
  v8 = a1 + *(a3 + 48);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0()
{
  v1 = v0;
  v2 = sub_231476A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 nameComponents];
  if (v7)
  {
    v8 = v7;
    sub_231476A38();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D630, &qword_231479970);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23147B9E0;
    *(v9 + 32) = sub_231476A18();
    *(v9 + 40) = v10;
    *(v9 + 48) = sub_2314769E8();
    *(v9 + 56) = v11;
    *(v9 + 64) = sub_231476A08();
    *(v9 + 72) = v12;
    *(v9 + 80) = sub_2314769F8();
    *(v9 + 88) = v13;
    *(v9 + 96) = sub_231476A28();
    *(v9 + 104) = v14;
    *(v9 + 112) = sub_231476A48();
    *(v9 + 120) = v15;
    (*(v3 + 8))(v6, v2);
    v16 = *(v9 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D630, &qword_231479970);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_231479580;
    v17 = [v1 displayName];
    v18 = sub_231477E68();
    v20 = v19;

    *(v9 + 32) = v18;
    *(v9 + 40) = v20;
    v16 = 1;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
LABEL_5:
  for (i = (v9 + 40 + 16 * v21); ; i += 2)
  {
    if (v16 == v21)
    {

      v34[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
      sub_2313EF69C();
      sub_231477E28();

      return;
    }

    if (v21 >= v16)
    {
      break;
    }

    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_21;
    }

    v25 = *i;
    if (*i)
    {
      v26 = *(i - 1);
      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = *i;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v22 + 16);
          sub_23141CC58();
          v22 = v32;
        }

        v29 = *(v22 + 16);
        if (v29 >= *(v22 + 24) >> 1)
        {
          sub_23141CC58();
          v22 = v33;
        }

        *(v22 + 16) = v29 + 1;
        v30 = v22 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v25;
        v21 = v24;
        goto LABEL_5;
      }
    }

    ++v21;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_2313EF69C()
{
  result = qword_280C3C138;
  if (!qword_280C3C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D638, qword_231479978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C138);
  }

  return result;
}

uint64_t sub_2313EF700@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x277D84F98];
  v5 = a2 + *(type metadata accessor for Entity() + 28);
  sub_231476C98();
  v6 = sub_231414BC8(v2, &selRef_contactIdentifier);
  if (v7 || (v6 = sub_231414BC8(v2, &selRef_customIdentifier), v7))
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = 0x6E6F73726550;
    a2[3] = 0xE600000000000000;
    _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
    v10 = v9;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v8;
      v13 = a2[4];
      swift_isUniquelyReferenced_nonNull_native();
      v24 = a2[4];
      sub_2313F1184(v12, v10, 3, 1701667182, 0xE400000000000000);
      a2[4] = v24;
    }

    else
    {
    }

    result = sub_2313EF980();
    if (v15)
    {
      v16 = v15;
      if (a1)
      {
        v17 = result;
        v18 = a2[4];
        swift_isUniquelyReferenced_nonNull_native();
        v25 = a2[4];
        result = sub_2313F1184(v17, v16, 3, 0x6E6F6974616C6572, 0xEC00000070696873);
        a2[4] = v25;
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v19 = sub_231477B68();
    __swift_project_value_buffer(v19, qword_280C3D970);
    v20 = sub_231477B58();
    v21 = sub_2314782B8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2313E1000, v20, v21, "Cannot convert INPerson to Entity; missing identifier.", v22, 2u);
      MEMORY[0x23192F1F0](v22, -1, -1);
    }

    sub_2313F17E0();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    return sub_2313F09B4(a2);
  }

  return result;
}

uint64_t sub_2313EF980()
{
  v1 = [v0 relationship];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();
  v5 = v4;

  sub_2313F1938();
  sub_2313F2600();
  if (sub_231477E18())
  {
    v6 = sub_231477F48();
    v7 = sub_2314300A0(v6, v3, v5);
    v3 = MEMORY[0x23192DFC0](v7);
  }

  return v3;
}

void sub_2313EFA7C()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_17_0();
  v131 = v5;
  OUTLINED_FUNCTION_40();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v122 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v122 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v122 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  v140 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  v19 = (&v122 - v18);
  v20 = type metadata accessor for Entity();
  v132 = *(v20 - 8);
  v21 = *(v132 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17_0();
  v126 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39();
  v124 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39();
  v125 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39();
  v129 = v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39();
  v135 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39();
  v128 = v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  v35 = &v122 - v34;
  v133 = v0;
  v36 = sub_231433338(v0);
  v134 = MEMORY[0x277D84F98];
  v136 = v20;
  if (!v36)
  {
LABEL_57:
    v60 = v131;
    goto LABEL_58;
  }

  v37 = v36;
  v123 = v35;
  v137 = v12;
  v138 = v9;
  v127 = v1;
  v143 = MEMORY[0x277D84F90];
  v38 = sub_2313F3038(v36);
  v39 = 0;
  v139 = v15;
  while (1)
  {
    if (v38 == v39)
    {

      v43 = v143;
      v142 = sub_2313F3038(v143);
      if (v142)
      {
        v44 = 0;
        v141 = v43 & 0xC000000000000001;
        v130 = MEMORY[0x277D84F90];
        v2 = v127;
        v45 = v136;
        v9 = v138;
        while (v142 != v44)
        {
          if (v141)
          {
            v46 = MEMORY[0x23192E5D0](v44, v43);
          }

          else
          {
            if (v44 >= *(v43 + 16))
            {
              goto LABEL_83;
            }

            v46 = *(v43 + 8 * v44 + 32);
          }

          v47 = v46;
          v48 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_82;
          }

          sub_2313EF700(1, v19);
          if (v2)
          {

            OUTLINED_FUNCTION_5_9(v19);
            sub_231426638(v19);
            v2 = 0;
            ++v44;
          }

          else
          {

            OUTLINED_FUNCTION_4_9(v19);
            v49 = v123;
            sub_2313F0804(v19, v123);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = *(v130 + 16);
              OUTLINED_FUNCTION_3_0();
              sub_23141CB80();
              v130 = v56;
            }

            v51 = *(v130 + 16);
            v50 = *(v130 + 24);
            if (v51 >= v50 >> 1)
            {
              OUTLINED_FUNCTION_10(v50);
              sub_23141CB80();
              v130 = v57;
            }

            *(v130 + 16) = v51 + 1;
            OUTLINED_FUNCTION_11_11();
            sub_2313F0804(v49, v53 + v52 + *(v54 + 72) * v51);
            v44 = v48;
            v45 = v136;
          }
        }

        v58 = v130;
        if (*(v130 + 16))
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_9_11();
          sub_2313F0660(v58, 0x6E65697069636572, 0xEA00000000007374);
          v59 = v143;
        }

        else
        {

          v59 = MEMORY[0x277D84F98];
        }

        v134 = v59;
        v12 = v137;
        v61 = 0;
        v130 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v142 == v61)
          {

            v84 = v130;
            if (*(v130 + 16))
            {
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_9_11();
              sub_2313F0660(v84, 0xD000000000000010, 0x80000002314829A0);
              v134 = v143;
            }

            else
            {
            }

            goto LABEL_57;
          }

          if (v141)
          {
            v63 = MEMORY[0x23192E5D0](v61, v43);
            v62 = v140;
          }

          else
          {
            v62 = v140;
            if (v61 >= *(v43 + 16))
            {
              goto LABEL_85;
            }

            v63 = *(v43 + 8 * v61 + 32);
          }

          if (__OFADD__(v61, 1))
          {
            goto LABEL_84;
          }

          v64 = [v63 personHandle];
          if (v64)
          {
            v65 = v64;
            sub_2313F0A10(v15);
            if (!v2)
            {

              OUTLINED_FUNCTION_4_9(v15);
              v67 = v135;
              sub_2313F0804(v15, v135);
              _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
              v69 = v68;
              OUTLINED_FUNCTION_8_11();
              if (v71)
              {
                v72 = v70;
                v73 = *(v67 + 32);
                swift_isUniquelyReferenced_nonNull_native();
                OUTLINED_FUNCTION_12_11();
                OUTLINED_FUNCTION_2_8(v72, v69);
                *(v67 + 32) = v143;
              }

              else
              {
              }

              v62 = v140;
              sub_2313F0804(v67, v140);
              v66 = 0;
              v15 = v139;
              v45 = v136;
              goto LABEL_46;
            }

            v2 = 0;
          }

          v66 = 1;
          OUTLINED_FUNCTION_5_9(v15);
          sub_231426638(v15);
LABEL_46:
          __swift_storeEnumTagSinglePayload(v62, v66, 1, v45);

          if (__swift_getEnumTagSinglePayload(v62, 1, v45) == 1)
          {
            sub_231426638(v62);
            ++v61;
            v12 = v137;
            v9 = v138;
          }

          else
          {
            v74 = v128;
            sub_2313F0804(v62, v128);
            sub_2313F0804(v74, v129);
            v75 = v130;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v12 = v137;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v81 = *(v75 + 16);
              OUTLINED_FUNCTION_3_0();
              sub_23141CB80();
              v75 = v82;
            }

            v78 = *(v75 + 16);
            v77 = *(v75 + 24);
            if (v78 >= v77 >> 1)
            {
              OUTLINED_FUNCTION_10(v77);
              sub_23141CB80();
              v75 = v83;
            }

            *(v75 + 16) = v78 + 1;
            OUTLINED_FUNCTION_11_11();
            v130 = v75;
            sub_2313F0804(v129, v75 + v79 + *(v80 + 72) * v78);
            ++v61;
            v45 = v136;
            v9 = v138;
          }
        }
      }

      v134 = MEMORY[0x277D84F98];
      v2 = v127;
      v60 = v131;
      v12 = v137;
      v9 = v138;
LABEL_58:
      v85 = [v133 sender];
      if (v85)
      {
        v86 = v85;
        if (sub_23142FF28())
        {
        }

        else
        {
          sub_2313EF700(1, v12);
          if (v2)
          {

            OUTLINED_FUNCTION_5_9(v12);
            sub_231426638(v12);
            v2 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_4_9(v12);
            v87 = v125;
            sub_2313F0804(v12, v125);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
            OUTLINED_FUNCTION_0_9();
            v90 = v89 & ~v88;
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_231479580;
            sub_2313F0868(v87, v91 + v90);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_9_11();
            v92 = v91;
            v2 = 0;
            sub_2313F0660(v92, 0x7265646E6573, 0xE600000000000000);
            sub_2313F09B4(v87);
            v134 = v143;
          }

          v93 = [v86 personHandle];
          if (v93)
          {
            v94 = v93;
            sub_2313F0A10(v9);

            OUTLINED_FUNCTION_4_9(v9);
            v95 = v124;
            sub_2313F0804(v9, v124);
            _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
            v97 = v96;
            OUTLINED_FUNCTION_8_11();
            if (v99)
            {
              v100 = v98;
              v101 = *(v95 + 32);
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_12_11();
              OUTLINED_FUNCTION_2_8(v100, v97);
              *(v95 + 32) = v143;
            }

            else
            {
            }

            v102 = v95;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
            OUTLINED_FUNCTION_0_9();
            v105 = v104 & ~v103;
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_231479580;
            sub_2313F0868(v102, v106 + v105);
            v107 = v134;
            swift_isUniquelyReferenced_nonNull_native();
            v143 = v107;
            sub_2313F0660(v106, 0x61487265646E6573, 0xEC000000656C646ELL);

            sub_2313F09B4(v102);
            v134 = v143;
            v2 = 0;
          }

          else
          {

            OUTLINED_FUNCTION_5_9(v9);
            sub_231426638(v9);
          }
        }
      }

      v108 = [v133 speakableGroupName];
      if (v108)
      {
        v109 = v108;
        v110 = v2;
        v111 = [v108 spokenPhrase];
        v112 = sub_231477E68();
        v114 = v113;

        v115 = HIBYTE(v114) & 0xF;
        if ((v114 & 0x2000000000000000) == 0)
        {
          v115 = v112 & 0xFFFFFFFFFFFFLL;
        }

        if (v115)
        {
          v116 = v109;
          sub_231432BA8(v116, v60);
          if (v110)
          {

            __swift_storeEnumTagSinglePayload(v60, 1, 1, v136);
            sub_231426638(v60);
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v60, 0, 1, v136);
            v117 = v126;
            sub_2313F0804(v60, v126);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
            OUTLINED_FUNCTION_0_9();
            v120 = v119 & ~v118;
            v121 = swift_allocObject();
            *(v121 + 16) = xmmword_231479580;
            sub_2313F0868(v117, v121 + v120);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_9_11();
            sub_2313F0660(v121, 0xD000000000000012, 0x8000000231482980);

            sub_2313F09B4(v117);
          }
        }

        else
        {
        }
      }

      return;
    }

    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x23192E5D0](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (sub_23142FF28())
    {
    }

    else
    {
      sub_231478568();
      v42 = *(v143 + 16);
      sub_2314785A8();
      v15 = v139;
      sub_2314785B8();
      sub_231478578();
    }

    ++v39;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

unint64_t sub_2313F0604()
{
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_14_5();
  sub_231477F38();
  sub_231478918();
  v0 = OUTLINED_FUNCTION_36_0();

  return sub_2313F08CC(v0, v1, v2);
}

uint64_t sub_2313F0660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v8 = sub_2313F0604();
  OUTLINED_FUNCTION_0_7(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
  OUTLINED_FUNCTION_11_9();
  if (sub_2314785F8())
  {
    v15 = *v3;
    sub_2313F0604();
    OUTLINED_FUNCTION_10_8();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    sub_2313F0980(v13, a2, a3, a1, v18);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_2313F0784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231476CA8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2313F0804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2313F0868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2313F08CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2314787C8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2313F0980(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_1_8(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_2313F09B4(uint64_t a1)
{
  v2 = type metadata accessor for Entity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313F0A10@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F98];
  v3 = a1 + *(type metadata accessor for Entity() + 28);
  sub_231476C98();
  strcpy((a1 + 16), "PersonHandle");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  v4 = INPersonHandle.entityIdentifier()();
  if (v5)
  {
    return sub_2313F09B4(a1);
  }

  *a1 = v4;
  v7 = sub_2313F1088();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_9();
    sub_2313F1184(v9, v10, 3, 0x6C6562616CLL, 0xE500000000000000);
    *(a1 + 32) = v19;
  }

  if ([v1 type] == 2)
  {
    v12 = 0x656E6F6870;
  }

  else
  {
    if ([v1 type] != 1)
    {
      goto LABEL_10;
    }

    v12 = 0x6C69616D65;
  }

  v13 = *(a1 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_9();
  sub_2313F1184(v12, 0xE500000000000000, 3, 1701869940, 0xE400000000000000);
  *(a1 + 32) = v19;
LABEL_10:
  result = [v1 type];
  if (result == 2)
  {
    result = sub_2313F24D8();
    if (result)
    {

      v14 = sub_2313F2654(10);
      v15 = MEMORY[0x23192DFC0](v14);
      v17 = v16;

      v18 = *(a1 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_9();
      result = sub_2313F1184(v15, v17, 3, 0x437972746E756F63, 0xEB0000000065646FLL);
      *(a1 + 32) = v19;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> INPersonHandle.entityIdentifier()()
{
  v2 = sub_2313F0EFC(v0);
  if (v3)
  {
    v1 = v2;
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = [v0 type];
      if (v5)
      {
        if (v5 == 1)
        {
          v13 = *MEMORY[0x277CFBCE0];
          v14 = sub_231477E58();

          v15 = (*(v13 + 16))(v13, v14);

          v7 = sub_231477E68();
          v1 = v16;

          goto LABEL_24;
        }

        if (v5 == 2)
        {
          sub_2313F0F60();

          v6 = sub_2313F0FA4();
          v7 = sub_2313F1018(v6);
          v1 = v8;

          if (!v1)
          {
            v7 = 0;
            v1 = 0xE000000000000000;
          }

          goto LABEL_24;
        }

        if (qword_280C3CF50 != -1)
        {
          OUTLINED_FUNCTION_5();
        }

        v17 = sub_231477B68();
        __swift_project_value_buffer(v17, qword_280C3D970);
        v18 = sub_231477B58();
        v19 = sub_2314782B8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_2313E1000, v18, v19, "Unhandled INPersonHandleType variant when converting INPersonHandle", v20, 2u);
          MEMORY[0x23192F1F0](v20, -1, -1);
        }
      }

      v7 = sub_23143018C();
      v1 = v21;

      goto LABEL_24;
    }
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v9 = sub_231477B68();
  __swift_project_value_buffer(v9, qword_280C3D970);
  v10 = sub_231477B58();
  v7 = sub_2314782B8();
  if (os_log_type_enabled(v10, v7))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2313E1000, v10, v7, "Could not convert INPersonHandle to entity because its value is missing.", v11, 2u);
    MEMORY[0x23192F1F0](v11, -1, -1);
  }

  sub_2313F17E0();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();
LABEL_24:
  v22 = v7;
  v23 = v1;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

uint64_t sub_2313F0EFC(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();

  return v3;
}

unint64_t sub_2313F0F60()
{
  result = qword_280C3BC00;
  if (!qword_280C3BC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BC00);
  }

  return result;
}

id sub_2313F0FA4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231477E58();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t sub_2313F1018(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231477E68();

  return v3;
}

uint64_t sub_2313F1088()
{
  v1 = [v0 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();
  v5 = v4;

  sub_2313F1938();
  sub_2313F2600();
  if (sub_231477E18())
  {
    v6 = sub_231477F48();
    v7 = sub_2314300A0(v6, v3, v5);
    v3 = MEMORY[0x23192DFC0](v7);
  }

  return v3;
}

uint64_t sub_2313F1184(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2313F0604();
  OUTLINED_FUNCTION_0_7(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
  if (sub_2314785F8())
  {
    v20 = *v6;
    sub_2313F0604();
    OUTLINED_FUNCTION_9_9();
    if (!v22)
    {
      goto LABEL_14;
    }

    v18 = v21;
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v18;
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2;
    v27 = *(v24 + 16);
    *(v24 + 16) = a3;

    return sub_231403090(v25, v26, v27);
  }

  else
  {
    sub_2313F2484(v18, a4, a5, a1, a2, a3, v23);
  }
}

void *sub_2313F12D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D670, &qword_231479A68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_2313F1348(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_23142F340(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2313F142C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_2313F1694([a1 intent], &selRef_launchId);
  v8 = v7;
  if (v7)
  {
    v9 = [a1 intent];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 preferredCallProvider];

      if (v11 == 2)
      {

        return 0xD000000000000012;
      }
    }

    else
    {
    }

    v16 = v6;
    v17 = v8;
    v14 = 0xD000000000000010;
    v15 = 0x80000002314828E0;
    sub_2313F1938();
    sub_2313F2600();
    if (sub_231477E18() & 1) != 0 || (v16 = v6, v17 = v8, v14 = 0xD000000000000016, v15 = 0x8000000231482900, (sub_231477E18()))
    {
      sub_231476AE8();

      v12 = sub_231476AF8();
      if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
      {
        sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
        return 0;
      }

      else
      {
        v6 = sub_231476AB8();
        (*(*(v12 - 8) + 8))(v5, v12);
      }
    }
  }

  return v6;
}

uint64_t sub_2313F1694(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231477E68();

  return v4;
}

uint64_t OUTLINED_FUNCTION_17_2()
{
  v2 = *(v0 + 40);

  return sub_2314788E8();
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_2314471F0(v0);
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2050;
  *(v1 + 24) = 40;
  return result;
}

void OUTLINED_FUNCTION_17_7()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
}

unint64_t sub_2313F17E0()
{
  result = qword_280C3BC90;
  if (!qword_280C3BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC90);
  }

  return result;
}

uint64_t sub_2313F1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for Interaction(v6);
  v8 = OUTLINED_FUNCTION_85(v7);
  if (*(v9 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v8);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

unint64_t sub_2313F1938()
{
  result = qword_280C3BC30;
  if (!qword_280C3BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC30);
  }

  return result;
}

uint64_t sub_2313F198C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2313F19FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v7 = *a3;
  v64 = *(a3 + 16);
  v61 = v7;
  v63 = *(a3 + 32);
  HIDWORD(v62) = *(a3 + 40);
  v8 = type metadata accessor for Interaction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D550, &qword_231479550);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v61 - v14;
  v16 = type metadata accessor for Donation();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 timestamp];
  v21 = v20;
  v22 = [a1 eventBody];
  if (v22)
  {
    v67 = v22;
    v23 = sub_2313F3E7C(v22);
    if (v4)
    {

LABEL_4:
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v24 = sub_231477B68();
      __swift_project_value_buffer(v24, qword_280C3D970);
      v25 = sub_231477B58();
      v26 = sub_2314782B8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v73[0] = v28;
        *v27 = 136315138;
        v29 = sub_231478998();
        v31 = sub_2313EB684(v29, v30, v73);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_2313E1000, v25, v26, "cannot extract INInteraction from BMIntentEvent. event=%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x23192F1F0](v28, -1, -1);
        MEMORY[0x23192F1F0](v27, -1, -1);
      }

      return;
    }

    if (!v23)
    {
      goto LABEL_4;
    }

    v44 = v23;
    INInteraction.asDonation()(v15);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    sub_2313E7340(v15, v19, type metadata accessor for Donation);
    if (v21 > 0.0 && sub_2313FA388(v19, v21))
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v45 = sub_231477B68();
      __swift_project_value_buffer(v45, qword_280C3D970);
      v46 = sub_231477B58();
      v47 = sub_2314782B8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 136315138;
        swift_beginAccess();
        sub_2313F4BF8(v19, v11, type metadata accessor for Interaction);
        v50 = sub_231477EB8();
        v52 = sub_2313EB684(v50, v51, &v69);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_2313E1000, v46, v47, "Skip the appIntent interaction. interaction=%s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x23192F1F0](v49, -1, -1);
        MEMORY[0x23192F1F0](v48, -1, -1);
      }
    }

    else
    {
      *(v19 + *(v16 + 28)) = 1;
      v53 = *a3;
      if (*a3)
      {
        v54 = *(a3 + 24);
        v70 = *(a3 + 8);
        v71 = v54;
        v72 = *(a3 + 40);
        v69 = v53;
        v73[0] = v61;
        v73[1] = v64;
        v74 = v63;
        v75 = BYTE4(v62);
        sub_2313F4F84(v73, v68);
        Donation.donateToSiriRemembersView(_:donationCache:)(&v69, v66, v55, v56, v57, v58, v59, v60, v61, *(&v61 + 1), v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68[0], v68[1], v68[2]);

        sub_2313E937C(a3, &qword_27DD4D548, &qword_23147F900);
LABEL_25:
        sub_231404F7C(v19);
        return;
      }
    }

    goto LABEL_25;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v32 = sub_231477B68();
  __swift_project_value_buffer(v32, qword_280C3D970);
  v33 = a1;
  v34 = sub_231477B58();
  v35 = sub_2314782B8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v73[0] = v37;
    *v36 = 136315138;
    v38 = v33;
    v39 = [v38 description];
    v40 = sub_231477E68();
    v42 = v41;

    v43 = sub_2313EB684(v40, v42, v73);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_2313E1000, v34, v35, "AppIntent event has no body. event=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23192F1F0](v37, -1, -1);
    MEMORY[0x23192F1F0](v36, -1, -1);
  }
}

uint64_t sub_2313F22A0()
{
  sub_2313F410C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2313F22F8(uint64_t a1)
{
  v2 = type metadata accessor for Interaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313F2368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_97();
  v9 = type metadata accessor for Interaction(v8);
  result = OUTLINED_FUNCTION_85(v9);
  if (*(v11 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2313F2408(void *a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[1];
  v8 = *a2;
  v9[0] = v6;
  *(v9 + 9) = *(a2 + 25);
  v7 = MEMORY[0x23192EB00]();
  sub_2313F19FC(a1, v3, &v8, a3);

  objc_autoreleasePoolPop(v7);
}

unint64_t sub_2313F2484(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_2313F24D8()
{
  sub_2313F1938();
  sub_2313F2600();
  if ((sub_231477E18() & 1) == 0 || sub_231477F48() < 12)
  {
    return 0;
  }

  while (1)
  {
    v0 = sub_231477FE8();
    if (!v1)
    {
      break;
    }

    v2 = v0;
    v3 = v1;
    if ((sub_231477E08() & 1) != 0 || (v2 == 43 ? (v4 = v3 == 0xE100000000000000) : (v4 = 0), v4))
    {
    }

    else
    {
      v5 = sub_2314787C8();

      if ((v5 & 1) == 0)
      {

        return 0;
      }
    }
  }

  return 1;
}

unint64_t sub_2313F2600()
{
  result = qword_280C3BC38;
  if (!qword_280C3BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC38);
  }

  return result;
}

uint64_t sub_2313F2654(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_231477F78();
    v1 = sub_231478088();

    return v1;
  }

  return result;
}

id sub_2313F2714(void *a1)
{
  ObjectType = swift_getObjectType();
  if (ObjectType != sub_2313E4AFC(0, &qword_280C3BBD8, 0x277CD3D48))
  {
    return a1;
  }

  v5 = [a1 _instanceDescription];
  if (!v5)
  {
    return a1;
  }

  v6 = v5;
  v7 = [v5 facadeClass];

  if (!v7)
  {
    return a1;
  }

  swift_getObjCClassMetadata();
  if (!swift_dynamicCastMetatype())
  {
    return a1;
  }

  v8 = [a1 backingStore];
  if (!v8)
  {
    return a1;
  }

  v9 = v8;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBackingStore_];

  return v3;
}

__n128 OUTLINED_FUNCTION_21_0()
{
  v2 = *(v0 + 16);
  *(v1 - 128) = *v0;
  *(v1 - 112) = v2;
  result = *(v0 + 32);
  *(v1 - 96) = result;
  return result;
}

void OUTLINED_FUNCTION_21_1()
{
  v1 = *(v0 - 296);
  v3 = *(v0 - 232);
  v2 = *(v0 - 224);
  v4 = *(v0 - 216);
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_2314786B8();
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

void sub_2313F2910(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  v2 = 0;
  v30 = sub_231478628();
  v31 = a1;
  v4 = *(a1 + 64);
  v3 = a1 + 64;
  v5 = *(v3 - 32);
  OUTLINED_FUNCTION_36();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v29 = v11 + 64;
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
LABEL_8:
      v15 = v12 | (v2 << 6);
      v16 = *(v31 + 56);
      v17 = (*(v31 + 48) + 16 * v15);
      v18 = v17[1];
      v38 = *v17;
      sub_2314137BC(v16 + 40 * v15, v35);
      v19 = v36;
      v20 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v21 = *(v20 + 8);

      v21(v33, v19, v20);
      v22 = v33[0];
      v23 = v33[1];
      LOBYTE(v19) = v34;
      __swift_destroy_boxed_opaque_existential_0(v35);
      *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v24 = (v30[6] + 16 * v15);
      *v24 = v38;
      v24[1] = v18;
      v25 = v30[7] + 24 * v15;
      *v25 = v22;
      *(v25 + 8) = v23;
      *(v25 + 16) = v19;
      v26 = v30[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v30[2] = v28;
      v8 = v32;
      if (!v32)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v2;
    while (1)
    {
      v2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v2 >= v10)
      {
        return;
      }

      v14 = *(v3 + 8 * v2);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v32 = (v14 - 1) & v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2313F2AD4()
{
  v1 = type metadata accessor for Entity();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2313F2F94(v0);
  v6 = MEMORY[0x277D84F98];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  v8 = sub_2313F3038();
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {

    v12 = MEMORY[0x277D84F90];
LABEL_13:
    v23 = v12[2];
    if (v23)
    {
      v57 = v9;
      sub_2313FA208(0, v23, 0);
      v50 = v12;
      v24 = v12 + 5;
      v25 = v57;
      while (1)
      {
        v54 = v25;
        v55 = v23;
        v27 = *(v24 - 1);
        v26 = *v24;
        v53 = v24;
        v4[4] = v6;
        v28 = *(v52 + 28);

        sub_231476C98();
        v4[1] = v26;
        v4[2] = 0x6567617373654DLL;
        v4[3] = 0xE700000000000000;
        *v4 = v27;
        swift_bridgeObjectRetain_n();
        v29 = v4[4];
        swift_isUniquelyReferenced_nonNull_native();
        v56 = v4[4];
        v30 = v56;
        v31 = OUTLINED_FUNCTION_0_10();
        if (__OFADD__(v30[2], (v32 & 1) == 0))
        {
          break;
        }

        v33 = v31;
        v34 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
        if (sub_2314785F8())
        {
          v35 = OUTLINED_FUNCTION_0_10();
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_33;
          }

          v33 = v35;
        }

        v37 = v56;
        if (v34)
        {
          v38 = v56[7] + 24 * v33;
          v39 = *v38;
          v40 = *(v38 + 8);
          *v38 = v27;
          *(v38 + 8) = v26;
          v41 = *(v38 + 16);
          *(v38 + 16) = 3;
          sub_231403090(v39, v40, v41);
        }

        else
        {
          v56[(v33 >> 6) + 8] |= 1 << v33;
          v42 = (v37[6] + 16 * v33);
          *v42 = 0x696669746E656469;
          v42[1] = 0xEA00000000007265;
          v43 = v37[7] + 24 * v33;
          *v43 = v27;
          *(v43 + 8) = v26;
          *(v43 + 16) = 3;
          v44 = v37[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_31;
          }

          v37[2] = v46;
        }

        v4[4] = v37;
        v25 = v54;
        v57 = v54;
        v48 = *(v54 + 16);
        v47 = *(v54 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_2313FA208(v47 > 1, v48 + 1, 1);
          v25 = v57;
        }

        *(v25 + 16) = v48 + 1;
        sub_2313F0804(v4, v25 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v48);
        v24 = v53 + 2;
        v23 = v55 - 1;
        if (v55 == 1)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_28:
    swift_isUniquelyReferenced_nonNull_native();
    v57 = v6;
    sub_2313F0660(v25, 0x7373654D746E6573, 0xEC00000073656761);
    return v57;
  }

  v10 = v8;
  v57 = MEMORY[0x277D84F90];
  sub_2313F3060(0, v8 & ~(v8 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v55 = v4;
    v11 = 0;
    v12 = v57;
    do
    {
      v13 = v12;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23192E5D0](v11, v7);
      }

      else
      {
        v14 = *(v7 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      v17 = sub_231477E68();
      v19 = v18;

      v12 = v13;
      v57 = v13;
      v20 = v13[2];
      v21 = v12[3];
      if (v20 >= v21 >> 1)
      {
        sub_2313F3060(v21 > 1, v20 + 1, 1);
        v12 = v57;
      }

      ++v11;
      v12[2] = v20 + 1;
      v22 = &v12[2 * v20];
      v22[4] = v17;
      v22[5] = v19;
    }

    while (v10 != v11);

    v6 = MEMORY[0x277D84F98];
    v4 = v55;
    v9 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_231478888();
  __break(1u);
  return result;
}

uint64_t sub_2313F2F94(void *a1)
{
  v1 = [a1 sentMessages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2313F2FF4();
  v3 = sub_231478128();

  return v3;
}

unint64_t sub_2313F2FF4()
{
  result = qword_280C3BBB8;
  if (!qword_280C3BBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BBB8);
  }

  return result;
}

uint64_t sub_2313F303C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231478618();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_2313F1184(a1, a2, a3, a4, 0xE900000000000065);
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_2313FC214();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_2313EB684(0xD000000000000016, v2 | 0x8000000000000000, (v3 - 80));
}

uint64_t OUTLINED_FUNCTION_13_13()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_231478748();
}

id OUTLINED_FUNCTION_13_14()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_2313F31EC()
{
  OUTLINED_FUNCTION_73();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return v0;
}

void sub_2313F3244()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_37();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_43(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D998, &qword_23147A280);
    v9 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v9);
    OUTLINED_FUNCTION_101(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_104()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_2313F33A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + ((a1 + 24) & ~a1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v3);
  v6 = *(v2 + v4);
  v7 = *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_103()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  v5 = *(v0 - 88);

  return sub_2313F3390();
}

uint64_t sub_2313F34B8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2313F3500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_13SiriRemembers9FTSFilterOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void EntityQuery.fetchOne(_:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for _Entity(0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  v55 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v62 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA88, &qword_23147A6D8);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  OUTLINED_FUNCTION_4(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v28 = *v3;
  v29 = *(v3 + 8);
  OUTLINED_FUNCTION_21_0();
  if (v31)
  {
    OUTLINED_FUNCTION_12_6(v31);
    sub_2313F3918();
  }

  else
  {
    v53 = v32;
    v54 = v30;
    v52 = v5;
    OUTLINED_FUNCTION_12_6(v31);
    v33 = sub_2313F4D04();
    if (!v0)
    {
      v34 = v33;
      OUTLINED_FUNCTION_5_3();
      v40 = sub_2313E7E78(v35, v36, v37, v38, type metadata accessor for _Entity, v39, v1);
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_23_1();
      sub_231477098();
      v51 = v34;
      sub_2313E9628(v23, v20, &qword_27DD4DA88, &qword_23147A6D8);
      if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
      {
        sub_2313E937C(v23, &qword_27DD4DA88, &qword_23147A6D8);
      }

      else
      {
        sub_231423674(v20, v62, type metadata accessor for _Entity);
        v41 = v55;
        sub_2313EEFC8(v62, v55, type metadata accessor for _Entity);
        sub_23142011C(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);

        sub_2313EF028(v62, type metadata accessor for _Entity);
        sub_2313E937C(v23, &qword_27DD4DA88, &qword_23147A6D8);
      }

      v49 = type metadata accessor for Entity();
      OUTLINED_FUNCTION_25_0(v49);
      (*(v53 + 8))(v1, v54);
    }
  }

  OUTLINED_FUNCTION_62();
}

void sub_2313F3918()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v59 = v4;
  v60 = sub_2314779E8();
  v5 = OUTLINED_FUNCTION_4(v60);
  v58 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA8, &qword_23147A7F0);
  v15 = OUTLINED_FUNCTION_3(v61);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  OUTLINED_FUNCTION_4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v30 = v3[1];
  v62 = *v3;
  *v63 = v30;
  *&v63[9] = *(v3 + 25);
  OUTLINED_FUNCTION_21_0();
  v31 = sub_2313F4D04();
  if (!v0)
  {
    v56 = v14;
    v57 = v20;
    v55 = v11;
    v32 = v60;
    v64 = v26;
    v33 = v31;
    OUTLINED_FUNCTION_4_3();
    v39 = sub_2313E7E78(v34, v35, v36, v37, MEMORY[0x277D1F258], v38, v1);
    MEMORY[0x28223BE20](v39);
    OUTLINED_FUNCTION_23_1();
    sub_231477098();
    v61 = v33;
    v40 = v57;
    sub_2313E9628(v23, v57, &qword_27DD4DAA8, &qword_23147A7F0);
    v41 = v32;
    v42 = v24;
    if (__swift_getEnumTagSinglePayload(v40, 1, v32) == 1)
    {
      sub_2313E937C(v23, &qword_27DD4DAA8, &qword_23147A7F0);
    }

    else
    {
      v43 = v58;
      v44 = v56;
      (*(v58 + 32))(v56, v40, v41);
      v45 = v55;
      (*(v43 + 16))(v55, v44, v41);
      sub_2314204D8(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), *v63, *&v63[8]);
      v26 = v64;

      (*(v43 + 8))(v44, v41);
      sub_2313E937C(v23, &qword_27DD4DAA8, &qword_23147A7F0);
    }

    v53 = type metadata accessor for Entity();
    OUTLINED_FUNCTION_25_0(v53);
    (*(v26 + 8))(v1, v42);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313F3D2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2313EB8A4(a1, a2);
  }

  return a1;
}

uint64_t sub_2313F3DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 64);
  return sub_2313F3E1C(v4, v5, v6, v7, v8);
}

uint64_t sub_2313F3E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    return sub_2313E6C34(a4, a5);
  }

  return result;
}

uint64_t sub_2313F3E7C(void *a1)
{
  v3 = sub_2313F3F70(a1);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2313F3FD4(v5, v6);
  v8 = sub_2313F402C(v5, v6);
  if (!v1)
  {
    v9 = v8;
    sub_2313E4AFC(0, &qword_280C3BBF8, 0x277CD3D58);
    v10 = *MEMORY[0x277CCA308];
    sub_231477E68();
    v2 = sub_2314783F8();
  }

  sub_2313F3D2C(v5, v6);
  return v2;
}

uint64_t sub_2313F3F70(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231476BA8();

  return v3;
}

uint64_t sub_2313F3FD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_2313F402C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231476B98();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_231476A68();

    swift_willThrow();
  }

  sub_2313EB8A4(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id *sub_2313F410C()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t SiriRemembersBiomeStreamDonator.__deallocating_deinit()
{
  SiriRemembersBiomeStreamDonator.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void *SiriRemembersBiomeStreamDonator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  return v0;
}

uint64_t SiriCallHistoryDonator.__deallocating_deinit()
{
  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t InteractionStore.opened()@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v89 = sub_231476AF8();
  v3 = OUTLINED_FUNCTION_4(v89);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v88 = v8 - v7;
  v9 = type metadata accessor for _InteractionStore();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34();
  v87 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v82[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v82[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v82[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v82[-v33];
  MEMORY[0x28223BE20](v32);
  v86 = &v82[-v35];
  v36 = v1[1];
  v92 = *v1;
  *v93 = v36;
  *&v93[9] = *(v1 + 25);
  v37 = *(v92 + 16);
  v90 = v92;
  sub_231478318();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_21_5();
      if (!v41)
      {
        OUTLINED_FUNCTION_5();
      }

      v62 = sub_231477B68();
      OUTLINED_FUNCTION_38(v62, qword_280C3D970);
      v63 = sub_231477B58();
      v64 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12_1(v64))
      {
        *OUTLINED_FUNCTION_102() = 0;
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v65, v66, "opening a lazy IP InteractionStore");
        OUTLINED_FUNCTION_7_8();
      }

      MEMORY[0x28223BE20](v67);
      *&v82[-32] = xmmword_231479AA0;
      *&v82[-16] = 0;
      *&v82[-8] = 0;
      OUTLINED_FUNCTION_16_6();
      if (!v2)
      {
        OUTLINED_FUNCTION_2_11();
      }

      goto LABEL_29;
    case 2u:
      v39 = *v15;

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E198, &unk_23147CE48);
      sub_2314222CC(v15 + *(v40 + 48), v25);
      OUTLINED_FUNCTION_21_5();
      if (!v41)
      {
        OUTLINED_FUNCTION_5();
      }

      v42 = sub_231477B68();
      OUTLINED_FUNCTION_38(v42, qword_280C3D970);
      v43 = sub_231477B58();
      v44 = sub_2314782A8();
      OUTLINED_FUNCTION_12_1(v44);
      v15 = v86;
      OUTLINED_FUNCTION_20_4();
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_102();
        *v46 = 0;
        _os_log_impl(&dword_2313E1000, v43, v37, "reopening a dummy InteractionStore", v46, 2u);
        OUTLINED_FUNCTION_16_2();
      }

      v47 = 1;
      v48 = v89;
      goto LABEL_23;
    case 3u:
    case 5u:
      sub_2313EB404(v15);
      goto LABEL_3;
    case 4u:
      v49 = *v15;
      v50 = v15[1];
      v51 = v15[2];

      MEMORY[0x28223BE20](v52);
      *&v82[-32] = xmmword_231479AA0;
      *&v82[-16] = v50;
      *&v82[-8] = v51;
      OUTLINED_FUNCTION_16_6();

      if (!v2)
      {
LABEL_3:
        result = OUTLINED_FUNCTION_2_11();
      }

      break;
    default:
      v84 = v2;
      v83 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E190, &qword_23147CE40) + 48));
      sub_2314222CC(v15, v34);
      OUTLINED_FUNCTION_21_5();
      if (!v41)
      {
        OUTLINED_FUNCTION_5();
      }

      v53 = sub_231477B68();
      OUTLINED_FUNCTION_38(v53, qword_280C3D970);
      sub_2313EA3E4(v34, v31);
      v54 = sub_231477B58();
      v55 = sub_2314782A8();
      v56 = os_log_type_enabled(v54, v55);
      v15 = v86;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v91[0] = v58;
        *v57 = 136315138;
        sub_2313EA3E4(v31, v28);
        v59 = sub_231477EB8();
        v28 = v60;
        sub_2313EA454(v31);
        v61 = sub_2313EB684(v59, v28, v91);

        *(v57 + 4) = v61;
        _os_log_impl(&dword_2313E1000, v54, v55, "opening a lazy InteractionStore with the URL: %s ", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_7_8();
      }

      else
      {

        sub_2313EA454(v31);
      }

      v25 = v34;
      v48 = v89;
      OUTLINED_FUNCTION_20_4();
      v47 = v83;
LABEL_23:
      sub_2314222CC(v25, v15);
      sub_2313EA3E4(v15, v31);
      if (__swift_getEnumTagSinglePayload(v31, 1, v48) == 1)
      {
        sub_2313EA454(v31);
        OUTLINED_FUNCTION_21_5();
        if (!v41)
        {
          OUTLINED_FUNCTION_5();
        }

        v68 = sub_231477B68();
        OUTLINED_FUNCTION_38(v68, qword_280C3D970);
        v69 = sub_231477B58();
        v70 = sub_2314782B8();
        if (OUTLINED_FUNCTION_12_1(v70))
        {
          *OUTLINED_FUNCTION_102() = 0;
          OUTLINED_FUNCTION_32_0(&dword_2313E1000, v71, v72, "lazy InteractionStore has no URL set.");
          OUTLINED_FUNCTION_7_8();
        }

        sub_23141ECFC();
        OUTLINED_FUNCTION_17_4();
        v74 = v73;
        v75 = sub_231477E58();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
        inited = swift_initStackObject();
        v91[0] = OUTLINED_FUNCTION_6_9(inited, xmmword_23147CE20);
        v91[1] = v77;
        MEMORY[0x23192E060](46, 0xE100000000000000);
        MEMORY[0x23192E060](0xD000000000000014, 0x8000000231481E80);

        v78 = sub_231477E58();

        inited[3].n128_u64[0] = v78;
        inited[3].n128_u64[1] = 1701603686;
        inited[4].n128_u64[0] = 0xE400000000000000;
        inited[4].n128_u64[1] = sub_231477E58();
        inited[5].n128_u64[0] = 1668183398;
        inited[5].n128_u64[1] = 0xE400000000000000;
        inited[6].n128_u64[0] = sub_231477E58();
        inited[6].n128_u64[1] = 1701734764;
        inited[7].n128_u64[0] = 0xE400000000000000;
        inited[7].n128_u64[1] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
        sub_231477DC8();
        v79 = sub_231477DA8();

        AnalyticsSendEvent();

        *v74 = 1;
        swift_willThrow();
LABEL_29:
        result = sub_2313EA454(v15);
      }

      else
      {
        v80 = v85;
        v81 = (*(v85 + 32))(v28, v31, v48);
        MEMORY[0x28223BE20](v81);
        *&v82[-16] = v28;
        v82[-8] = v47;
        OUTLINED_FUNCTION_16_6();
        sub_2313EA454(v15);
        if (!v2)
        {
          OUTLINED_FUNCTION_2_11();
        }

        result = (*(v80 + 8))(v28, v48);
      }

      break;
  }

  return result;
}

uint64_t sub_2313F4BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_1()
{
  v2 = *(v0 - 328);

  return sub_231477B58();
}

uint64_t *sub_2313F4D04()
{
  v2 = type metadata accessor for _InteractionStore();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v8 = (v7 - v6);
  v9 = *v0;
  v18 = *(v0 + 1);
  v19 = *(v0 + 3);
  v20 = *(v0 + 40);
  v17 = v9;
  v10 = &v17;
  InteractionStore.opened()(&v21);
  if (!v1)
  {
    v15 = v21;
    v16[0] = v22[0];
    *(v16 + 9) = *(v22 + 9);
    sub_2313F501C(&v15);
    v10 = *(v9 + 16);
    sub_231478318();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        v10 = *v8;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E198, &unk_23147CE48);
        sub_2313EA454(v8 + *(v14 + 48));
        break;
      case 3u:
        v10 = *v8;
        break;
      case 4u:
      case 5u:
        v10 = *v8;
        v13 = v8[2];

        break;
      default:
        sub_23141ECFC();
        OUTLINED_FUNCTION_17_4();
        *v12 = 3;
        swift_willThrow();
        sub_2313EA454(v8);
        break;
    }
  }

  return v10;
}

uint64_t sub_2313F4EBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 96);
  swift_beginAccess();
  return sub_2313F4BF8(a1 + v6, a3, a2);
}

uint64_t JSONValue.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v12 = *v0;
      sub_23141F9C4();
      v6 = sub_231478458();
      goto LABEL_9;
    case 2:
      v5 = *v0;
      v6 = sub_2314781C8();
LABEL_9:
      v1 = v6;
      break;
    case 3:
      v7 = *(v0 + 8);

      break;
    case 4:
      v2 = sub_2314767B8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2314767A8();
      v1 = sub_231447358();

      break;
    case 5:
      v8 = sub_2314767B8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_2314767A8();
      v1 = sub_2313F6380();

      break;
    default:
      if (v1)
      {
        v1 = 1702195828;
      }

      else
      {
        v1 = 0x65736C6166;
      }

      break;
  }

  return v1;
}

void OUTLINED_FUNCTION_101_0(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v2 - 320);
  *(a1 + 40) = v1;
  *(a1 + 48) = *(v2 - 328);
}

void sub_2313F529C()
{
  OUTLINED_FUNCTION_64();
  v242 = v2;
  v243 = v1;
  v3 = v0;
  v5 = v4;
  v215 = v6;
  v251 = *MEMORY[0x277D85DE8];
  v229 = sub_231477D58();
  v7 = OUTLINED_FUNCTION_4(v229);
  v228 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v11);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210);
  OUTLINED_FUNCTION_4(v225);
  v226 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  v244 = &v204 - v16;
  v17 = OUTLINED_FUNCTION_47();
  v224 = type metadata accessor for _NewEntity(v17);
  v18 = OUTLINED_FUNCTION_3(v224);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v21);
  v222 = type metadata accessor for Entity();
  v22 = OUTLINED_FUNCTION_4(v222);
  v230 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_0();
  v245 = v26;
  OUTLINED_FUNCTION_47();
  v235 = sub_231477D88();
  v27 = OUTLINED_FUNCTION_4(v235);
  v231 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v234 = v31;
  OUTLINED_FUNCTION_47();
  v32 = sub_231476CA8();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  v41 = v5[1];
  v220 = *v5;
  v42 = v5[3];
  v219 = v5[2];
  v43 = v5[5];
  v218 = v5[4];
  v44 = v5[9];
  v217 = v5[8];
  v45 = v5[7];
  v214 = v5[6];
  v246 = v45;
  v208 = type metadata accessor for Donation();
  v46 = v208[7];
  v236 = v3;
  LODWORD(v211) = *(v3 + v46);
  LODWORD(v210) = *(v5 + 80);
  v213 = *(v5 + 82);
  OUTLINED_FUNCTION_140(*(v5 + 81));
  v47 = type metadata accessor for Interaction(0);
  v48 = v47[12];
  v237 = v35;
  v50 = *(v35 + 16);
  v49 = v35 + 16;
  v241 = v40;
  v232 = v32;
  v221 = v50;
  v50(v40, v5 + v48, v32);
  v209 = *(v5 + v47[13]);
  v51 = *(v5 + v47[19]);
  v52 = sub_2314767B8();
  OUTLINED_FUNCTION_74(v52);
  swift_allocObject();

  v238 = v42;

  v239 = v43;

  v240 = v44;

  sub_2314767A8();
  v53 = v243;
  v54 = sub_2313F6380();
  if (!v53)
  {
    v205 = v55;
    v206 = v54;
    v207 = v41;
    v56 = v246;
    v233 = v52;
    v216 = v49;

    v57 = *(v236 + v208[9]);
    v58 = *(v236 + v208[10]);
    v59 = *(v236 + v208[8] + 8);
    v243 = 0;
    if (v59 > 2)
    {
      v60 = 1;
    }

    else
    {
      v60 = qword_23147A348[v59];
    }

    v236 = v60;
    v61 = v241;
    OUTLINED_FUNCTION_135();
    v62 = v217;
    v63 = v214;
    v64 = v213;
    v65 = v212;
    v66 = v211;
    v67 = v210;
    v68 = v209;
    *v69 = v71;
    *(v69 + 8) = v70;
    *(v69 + 16) = v73;
    *(v69 + 24) = v72;
    *(v69 + 32) = v75;
    *(v69 + 40) = v74;
    *(v69 + 48) = v62;
    *(v69 + 56) = v76;
    *(v69 + 64) = v63;
    *(v69 + 72) = v56;
    *(v69 + 80) = v66;
    *(v69 + 81) = v67;
    *(v69 + 88) = v64;
    *(v69 + 96) = v65;
    v77 = v69;
    v78 = type metadata accessor for _NewInteraction(0);
    v79 = OUTLINED_FUNCTION_125(v78);
    v80(v79, v61, v232);
    *(v77 + v248) = v68;
    v81 = (v77 + SHIDWORD(v248));
    v82 = v205;
    *v81 = v206;
    v81[1] = v82;
    v83 = v249;
    *(v77 + v249) = 0;
    *(v77 + v250) = v57;
    *(v77 + v251) = v58;
    *(v77 + SHIDWORD(v251)) = v236;
    v84 = v234;
    sub_231477D78();
    v247 = sub_231401864(v51);
    v85 = v243;
    sub_231401B20(&v247);
    if (!v85)
    {
      v211 = v83;
      v86 = v247;
      v87 = v235;
      v88 = v242;
      v241 = *(v247 + 16);
      v239 = 0;
      if (!v241)
      {
LABEL_51:

        v247 = sub_2314023CC(v88);
        v132 = v239;
        sub_2314025F0(&v247);
        v133 = v132;
        if (!v132)
        {
          v134 = v228;
          v135 = v227;
          v136 = v231;
          OUTLINED_FUNCTION_140(*(v247 + 16));
          if (v138)
          {
            v139 = 0;
            v140 = v137 + 32;
            v246 = MEMORY[0x277D84F90];
            v214 = v137;
            v210 = v137 + 32;
            do
            {
              if (v139 >= *(v137 + 16))
              {
                goto LABEL_80;
              }

              v141 = (v140 + 24 * v139);
              v142 = v141[1];
              v217 = *v141;
              v143 = v141[2];
              v213 = v139 + 1;
              v220 = *(v143 + 16);
              v219 = v142;

              v144 = 0;
              v218 = v143;
              while (v220 != v144)
              {
                if (v144 >= *(v143 + 16))
                {
                  goto LABEL_71;
                }

                v145 = *(v230 + 80);
                OUTLINED_FUNCTION_59();
                v147 = *(v146 + 72);
                v242 = v148;
                OUTLINED_FUNCTION_63_0();
                v150 = v149;
                sub_2313EB328();
                v151 = v150[2];
                v152 = v150[3];

                v241 = v151;
                sub_231401D64(v151, v152);
                OUTLINED_FUNCTION_126();
                sub_2314027B0(v153, v154);
                v155 = OUTLINED_FUNCTION_17();
                sub_2313EB8A4(v155, v156);
                v158 = *v150;
                v157 = v150[1];

                sub_231401D64(v158, v157);
                OUTLINED_FUNCTION_126();
                sub_2314027B0(v159, v160);
                v161 = OUTLINED_FUNCTION_17();
                sub_2313EB8A4(v161, v162);
                v163 = v150[4];
                sub_231402974();
                v165 = v164;
                OUTLINED_FUNCTION_74(v233);
                swift_allocObject();
                sub_2314767A8();
                v166 = sub_2313F6380();
                if (v133)
                {

                  OUTLINED_FUNCTION_145();

                  OUTLINED_FUNCTION_5_1();
                  OUTLINED_FUNCTION_96();
                  sub_2313EB380();
                  (*(v231 + 8))(v234, v235);

                  OUTLINED_FUNCTION_13_4();
                  sub_2313EB380();
                  goto LABEL_67;
                }

                v243 = 0;
                v239 = v167;
                v240 = v166;

                v247 = v165;
                v248 = 0;
                LOBYTE(v249) = 5;

                v168 = sub_231402B08(0, 0xE000000000000000);
                v237 = v169;
                v238 = v168;

                sub_231403090(v247, v248, v249);
                v170 = *(v222 + 28);
                v171 = v224;
                v172 = v223;
                v173 = v223 + *(v224 + 32);
                v174 = v158;
                v175 = v232;
                v236 = v152;
                v176 = v221;
                v221(v173, v150 + v170, v232);
                v176(v172 + *(v171 + 36), v150 + v170, v175);
                *v172 = v174;
                v172[1] = v157;
                v177 = v240;
                v178 = v236;
                v172[2] = v241;
                v172[3] = v178;
                v180 = v238;
                v179 = v239;
                v172[4] = v177;
                v172[5] = v179;
                v181 = v237;
                v172[6] = v180;
                v172[7] = v181;
                v182 = *(v225 + 48);
                OUTLINED_FUNCTION_57_0();
                sub_2313F31EC();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v191 = *(v246 + 16);
                  v192 = OUTLINED_FUNCTION_3_0();
                  v246 = sub_231403A1C(v192, v193, v194, v195);
                }

                v134 = v228;
                v135 = v227;
                v84 = v234;
                v87 = v235;
                v184 = *(v246 + 16);
                v183 = *(v246 + 24);
                v136 = v231;
                v185 = v226;
                v133 = v243;
                if (v184 >= v183 >> 1)
                {
                  v196 = OUTLINED_FUNCTION_20(v183);
                  v197 = sub_231403A1C(v196, v184 + 1, 1, v246);
                  v185 = v226;
                  v246 = v197;
                }

                *(v246 + 16) = v184 + 1;
                v186 = *(v185 + 80);
                OUTLINED_FUNCTION_59();
                v190 = v188 + v187 + *(v189 + 72) * v184;
                sub_2314030BC();
                OUTLINED_FUNCTION_13_4();
                sub_2313EB380();
                v144 = v242 + 1;
                v143 = v218;
              }

              OUTLINED_FUNCTION_145();

              v139 = v213;
              v137 = v214;
              v140 = v210;
            }

            while (v213 != v212);
          }

          else
          {

            v246 = MEMORY[0x277D84F90];
          }

          sub_231477D68();
          v199 = sub_231403B58(v135);
          v200 = *(v134 + 8);
          v201 = OUTLINED_FUNCTION_90();
          v202(v201);
          (*(v136 + 8))(v84, v87);
          *(v215 + v211) = v199;
          goto LABEL_67;
        }

        v203 = v132;
LABEL_84:

        __break(1u);
        JUMPOUT(0x2313F6328);
      }

      v89 = 0;
      v90 = (v247 + 64);
      v240 = v247;
      while (2)
      {
        if (v89 >= *(v86 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
        }

        v92 = *(v90 - 2);
        v91 = *(v90 - 1);
        v93 = *v90;
        v246 = v89 + 1;
        v95 = *(v90 - 4);
        v94 = *(v90 - 3);

        v243 = v91;
        sub_231401AEC(v92, v91, v93);
        v96 = sub_231401D64(v95, v94);
        v97 = v96;
        v99 = v98;
        switch(v98 >> 62)
        {
          case 1uLL:
            if (v96 >> 32 < v96)
            {
              goto LABEL_72;
            }

            if (!sub_231476848() || !__OFSUB__(v97, sub_231476868()))
            {
              goto LABEL_21;
            }

            goto LABEL_78;
          case 2uLL:
            v105 = *(v96 + 16);
            v104 = *(v96 + 24);
            if (sub_231476848() && __OFSUB__(v105, sub_231476868()))
            {
              goto LABEL_76;
            }

            if (__OFSUB__(v104, v105))
            {
              goto LABEL_73;
            }

LABEL_21:
            sub_231476858();
            OUTLINED_FUNCTION_78();
            sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540]);
            OUTLINED_FUNCTION_17();
            v84 = v234;
            v87 = v235;
LABEL_22:
            sub_231477D48();
            sub_2313EB8A4(v97, v99);
            switch(v93)
            {
              case 1:
                v247 = v92;
                sub_23141F9C4();
                v116 = sub_231478458();
                goto LABEL_34;
              case 2:
                v116 = sub_2314781C8();
LABEL_34:
                v92 = v116;
                goto LABEL_38;
              case 3:
                v108 = v243;
                goto LABEL_38;
              case 4:
                OUTLINED_FUNCTION_74(v233);
                swift_allocObject();
                sub_2314767A8();
                v85 = v239;
                v109 = sub_231447358();
                v239 = v85;
                if (v85)
                {
                  goto LABEL_81;
                }

                v111 = v109;
                v112 = v110;

                v113 = v92;
                v114 = v243;
                v115 = 4;
                goto LABEL_37;
              case 5:
                OUTLINED_FUNCTION_74(v233);
                swift_allocObject();
                sub_2314767A8();
                v85 = v239;
                v117 = sub_2313F6380();
                v239 = v85;
                if (!v85)
                {
                  v111 = v117;
                  v112 = v118;

                  v113 = v92;
                  v114 = v243;
                  v115 = 5;
LABEL_37:
                  sub_231403090(v113, v114, v115);
                  v92 = v111;
                  v108 = v112;
LABEL_38:
                  v119 = sub_231401D64(v92, v108);
                  v120 = v119;
                  v122 = v121;
                  switch(v121 >> 62)
                  {
                    case 1uLL:
                      if (v119 >> 32 < v119)
                      {
                        goto LABEL_74;
                      }

                      if (!sub_231476848() || !__OFSUB__(v120, sub_231476868()))
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_79;
                    case 2uLL:
                      v127 = *(v119 + 16);
                      v128 = *(v119 + 24);
                      if (sub_231476848() && __OFSUB__(v127, sub_231476868()))
                      {
                        goto LABEL_77;
                      }

                      if (__OFSUB__(v128, v127))
                      {
                        goto LABEL_75;
                      }

LABEL_49:
                      sub_231476858();
                      OUTLINED_FUNCTION_78();
                      sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540]);
                      OUTLINED_FUNCTION_17();
LABEL_50:
                      sub_231477D48();
                      v130 = OUTLINED_FUNCTION_109();
                      sub_2313EB8A4(v130, v131);
                      v88 = v242;
                      v86 = v240;
                      v90 += 40;
                      v89 = v246;
                      if (v241 == v246)
                      {
                        goto LABEL_51;
                      }

                      continue;
                    case 3uLL:
                      OUTLINED_FUNCTION_2_3();
                      sub_2313F7138(&qword_280C3C920, v129);
                      OUTLINED_FUNCTION_30_0();
                      goto LABEL_50;
                    default:
                      LOBYTE(v247) = v119;
                      OUTLINED_FUNCTION_129(SBYTE1(v119));
                      OUTLINED_FUNCTION_127(SBYTE4(v120));
                      OUTLINED_FUNCTION_123(SBYTE6(v120));
                      HIBYTE(v247) = v123;
                      LOBYTE(v248) = v122;
                      OUTLINED_FUNCTION_121(SBYTE1(v122));
                      BYTE3(v248) = v124;
                      BYTE4(v248) = v125;
                      BYTE5(v248) = BYTE5(v122);
                      OUTLINED_FUNCTION_2_3();
                      sub_2313F7138(&qword_280C3C920, v126);
                      OUTLINED_FUNCTION_77();
                      goto LABEL_50;
                  }
                }

LABEL_81:

                OUTLINED_FUNCTION_131();
                swift_unexpectedError();
                __break(1u);
                break;
              default:
                v107 = (v92 & 1) == 0;
                if (v92)
                {
                  v92 = 1702195828;
                }

                else
                {
                  v92 = 0x65736C6166;
                }

                if (v107)
                {
                  v108 = 0xE500000000000000;
                }

                else
                {
                  v108 = 0xE400000000000000;
                }

                goto LABEL_38;
            }

            break;
          case 3uLL:
            OUTLINED_FUNCTION_2_3();
            sub_2313F7138(&qword_280C3C920, v106);
            OUTLINED_FUNCTION_30_0();
            goto LABEL_22;
          default:
            LOBYTE(v247) = v96;
            OUTLINED_FUNCTION_129(SBYTE1(v96));
            OUTLINED_FUNCTION_127(SBYTE4(v97));
            OUTLINED_FUNCTION_123(SBYTE6(v97));
            HIBYTE(v247) = v100;
            LOBYTE(v248) = v99;
            OUTLINED_FUNCTION_121(SBYTE1(v99));
            BYTE3(v248) = v101;
            BYTE4(v248) = v102;
            BYTE5(v248) = BYTE5(v99);
            OUTLINED_FUNCTION_2_3();
            sub_2313F7138(&qword_280C3C920, v103);
            OUTLINED_FUNCTION_77();
            goto LABEL_22;
        }

        break;
      }
    }

    v203 = v85;
    goto LABEL_84;
  }

  (*(v237 + 8))(v241, v232);

LABEL_67:
  v198 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313F6380()
{
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
  OUTLINED_FUNCTION_0_14();
  sub_2313F6580(v3, v4);
  OUTLINED_FUNCTION_18_6();
  if (!v0)
  {
    sub_231477E98();
    OUTLINED_FUNCTION_16_5();
    sub_231477E88();
    if (v5)
    {
      OUTLINED_FUNCTION_23_7();
      v6 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v6, v7);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v9 = sub_231477B68();
      __swift_project_value_buffer(v9, qword_280C3D970);
      v10 = sub_231477B58();
      v11 = sub_2314782B8();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_26_6();
        swift_slowAlloc();
        v12 = OUTLINED_FUNCTION_16_8(4.8754e-34);
        v13 = OUTLINED_FUNCTION_13_11(v12);
        OUTLINED_FUNCTION_17_6(v13);
        OUTLINED_FUNCTION_13_0(&dword_2313E1000, v14, v15, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
      v16 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v16, v17);
    }
  }

  return OUTLINED_FUNCTION_7_10();
}

uint64_t sub_2313F6580(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DA30, &qword_23147D060);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JSONValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_231478958();
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_1_14();
      __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      sub_231478858();
      break;
    case 2:
      OUTLINED_FUNCTION_19_8(v6, v7, v8, v9, v10, v11, v12, v13, v23, v24, v25, v26, v27);
      sub_231478848();
      break;
    case 3:
      __swift_mutable_project_boxed_opaque_existential_1(&v24, v27);
      sub_231478828();
      break;
    case 4:
      OUTLINED_FUNCTION_19_8(v6, v7, v8, v9, v10, v11, v12, v13, v2, v24, v25, v26, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1B8, &qword_23147D068);
      OUTLINED_FUNCTION_0_14();
      sub_23144878C(v16, v17);
      goto LABEL_8;
    case 5:
      OUTLINED_FUNCTION_19_8(v6, v7, v8, v9, v10, v11, v12, v13, v2, v24, v25, v26, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
      OUTLINED_FUNCTION_0_14();
      sub_2313F6580(v20, v21);
LABEL_8:
      sub_231478868();
      break;
    default:
      OUTLINED_FUNCTION_1_14();
      __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      sub_231478838();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_127_0()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 248);
  v3 = *(v0 - 260);
  v4 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_114()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_114_0@<Q0>(char a1@<W8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  *(v3 - 127) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 111) = result;
  return result;
}

uint64_t sub_2313F68E0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  sub_231401B18();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t static ActivityHeartbeat.instance.getter()
{
  if (qword_280C3BE20 != -1)
  {
    swift_once();
  }
}

void sub_2313F6A60()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v1 + 32) = v2();
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v4 = sub_231477B68();
  __swift_project_value_buffer(v4, qword_280C3D970);

  oslog = sub_231477B58();
  v5 = sub_2314782A8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1 + 32);

    _os_log_impl(&dword_2313E1000, oslog, v5, "ActivityHeartbeat: updated %ld", v6, 0xCu);
    MEMORY[0x23192F1F0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2313F6BB4()
{
  v0 = sub_231476CA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231476C98();
  sub_231476BC8();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  v8 = round(v6);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Donation.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v40 = v3;
  v4 = type metadata accessor for Interaction(0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  v41 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D720, &qword_231479B00);
  v42 = OUTLINED_FUNCTION_4(v9);
  v43 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Donation();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v24 = v23[6];
  *(v22 + v24) = 0;
  v25 = (v21 - v20 + v23[8]);
  v45 = v23;
  v46 = v25;
  *v25 = xmmword_231479AA0;
  v26 = v23[10];
  v27 = v22;
  *(v22 + v26) = 0;
  v29 = v2[3];
  v28 = v2[4];
  v47 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v29);
  sub_2313F7180();
  v44 = v15;
  sub_231478948();
  if (v0)
  {
    v32 = v46;
    __swift_destroy_boxed_opaque_existential_0(v47);
    sub_2313EADE8(*v32, *(v32 + 1));
  }

  else
  {
    v39 = v26;
    LOBYTE(v48) = 0;
    OUTLINED_FUNCTION_62_0();
    sub_2313F7138(v30, v31);
    sub_2314786B8();
    OUTLINED_FUNCTION_9_2();
    sub_2313F31EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    OUTLINED_FUNCTION_122();
    sub_23141EF64();
    sub_2314786B8();
    v33 = v46;
    *(v27 + v45[5]) = v48;
    sub_23141F0C0();
    OUTLINED_FUNCTION_44_0();
    *(v27 + v24) = v48;
    sub_23141F114();
    OUTLINED_FUNCTION_44_0();
    *(v27 + v45[7]) = v48;
    sub_2313F8A58();
    OUTLINED_FUNCTION_44_0();
    v34 = v48;
    v35 = v49;
    sub_2313EADE8(*v33, *(v33 + 1));
    *v33 = v34;
    *(v33 + 1) = v35;
    LOBYTE(v48) = 5;
    *(v27 + v45[9]) = sub_231478698() & 1;
    sub_2313F9030();
    OUTLINED_FUNCTION_44_0();
    v36 = OUTLINED_FUNCTION_72();
    v37(v36);
    *(v27 + v39) = v48;
    OUTLINED_FUNCTION_11_3();
    sub_2313EB328();
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313F7138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2313F7180()
{
  result = qword_27DD4D6D0;
  if (!qword_27DD4D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D6D0);
  }

  return result;
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_57_0()
{
  v3 = *(v1 - 256);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_2313F7244(char a1)
{
  result = 0x7463617265746E69;
  switch(a1)
  {
    case 1:
      result = 0x7365697469746E65;
      break;
    case 2:
      result = 0x7453657461647075;
      break;
    case 3:
      result = 0x727453726F6E6F64;
      break;
    case 4:
      result = 0x616E6F4472657375;
      break;
    case 5:
      result = 0x6C61636F4C7369;
      break;
    case 6:
      result = 0x6C50656369766564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Donation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2313F7428);
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

uint64_t getEnumTagSinglePayload for InteractionHandlingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_2313F74D8()
{
  result = qword_27DD4DFD0;
  if (!qword_27DD4DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFD0);
  }

  return result;
}

uint64_t sub_2313F7534(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x656369766564;
      goto LABEL_11;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      v3 = 0x656C646E7562;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0x6574616E6F447369;
      break;
    case 6:
      result = 0x676E696C646E6168;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0x7461447472617473;
      break;
    case 9:
      result = 0x6E6F697461727564;
      break;
    case 10:
      result = 0x6C50656369766564;
      break;
    case 11:
      result = 0x6C61636F4C7369;
      break;
    case 12:
      result = 0x616E6F4472657375;
      break;
    case 13:
      result = 0x65644970756F7267;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0x73646C656966;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Interaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x2313F781CLL);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2313F7844()
{
  result = qword_27DD4DFF8;
  if (!qword_27DD4DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_2313F7980()
{
  result = qword_27DD4E078;
  if (!qword_27DD4E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E078);
  }

  return result;
}

uint64_t Interaction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v54 = sub_231476CA8();
  v3 = OUTLINED_FUNCTION_4(v54);
  v52 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v53 = v8 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DFF0, &qword_23147C530);
  OUTLINED_FUNCTION_4(v57);
  v55 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Interaction(0);
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  *v20 = 0;
  *(v20 + 8) = 0xE000000000000000;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0xE000000000000000;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0xE000000000000000;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0xE000000000000000;
  *(v20 + 80) = 0;
  *(v20 + 82) = 2;
  v51 = v16[14];
  sub_231476C98();
  v50 = v16[15];
  *(v20 + v50) = 0;
  v49 = v16[16];
  *(v20 + v49) = 0;
  v48 = v16[17];
  *(v20 + v48) = 1;
  v21 = v16[18];
  *(v20 + v21) = 3;
  v22 = (v20 + v16[19]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v20 + v16[20]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = v16[21];
  v59 = a1;
  v60 = v20;
  *(v20 + v24) = MEMORY[0x277D84F98];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F74D8();
  v56 = v14;
  v26 = v58;
  sub_231478948();
  if (!v26)
  {
    v58 = v21;
    v27 = v55;
    LOBYTE(v61) = 0;
    v28 = sub_231478688();
    v30 = v60;
    *v60 = v28;
    v30[1] = v31;
    OUTLINED_FUNCTION_3_5(1);
    v30[2] = sub_231478688();
    v30[3] = v32;
    OUTLINED_FUNCTION_3_5(2);
    v30[4] = sub_231478688();
    v30[5] = v33;
    OUTLINED_FUNCTION_3_5(3);
    v30[6] = sub_231478688();
    v30[7] = v34;
    OUTLINED_FUNCTION_3_5(4);
    v30[8] = sub_231478688();
    v30[9] = v35;
    OUTLINED_FUNCTION_3_5(5);
    *(v30 + 80) = sub_231478698() & 1;
    v62 = 6;
    sub_2313F7844();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_22_3();
    *(v30 + 81) = v61;
    v62 = 7;
    sub_2313F8000();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_22_3();
    *(v30 + 82) = v61;
    LOBYTE(v61) = 8;
    OUTLINED_FUNCTION_12_13();
    sub_2313F81DC(v36, v37);
    OUTLINED_FUNCTION_22_3();
    (*(v52 + 40))(v30 + v51, v53, v54);
    OUTLINED_FUNCTION_3_5(9);
    *(v60 + v50) = sub_2314786A8();
    v62 = 10;
    sub_2313F9030();
    OUTLINED_FUNCTION_20_2();
    sub_2314786B8();
    *(v60 + v49) = v61;
    OUTLINED_FUNCTION_27_2(11);
    *(v60 + v48) = sub_231478698() & 1;
    v62 = 12;
    sub_23143AF70();
    OUTLINED_FUNCTION_20_2();
    sub_2314786B8();
    *(v60 + v58) = v61;
    LOBYTE(v61) = 13;
    *v22 = sub_231478688();
    v22[1] = v38;
    OUTLINED_FUNCTION_27_2(14);
    *v23 = sub_231478688();
    v23[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    v62 = 15;
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v40, v41);
    OUTLINED_FUNCTION_20_2();
    v42 = v57;
    v43 = v56;
    sub_2314786B8();
    (*(v27 + 8))(v43, v42);
    v44 = v60;
    *(v60 + v24) = v61;
    OUTLINED_FUNCTION_10_11();
    sub_231405434(v44, v47, v45);
  }

  __swift_destroy_boxed_opaque_existential_0(v59);
  OUTLINED_FUNCTION_0_12();
  return sub_2313FC214();
}