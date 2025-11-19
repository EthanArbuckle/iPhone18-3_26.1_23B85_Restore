uint64_t sub_1C76964D8()
{
  v0 = sub_1C7832364();
  __swift_allocate_value_buffer(v0, qword_1EC25CCC8);
  __swift_project_value_buffer(v0, qword_1EC25CCC8);
  return sub_1C7832354();
}

void static PIModelCatalog.shared()()
{
  v0 = qword_1EC25CCE0;
  if (qword_1EC25CCE0 || (v1 = [objc_allocWithZone(PIModelCatalog) init], v2 = qword_1EC25CCE0, qword_1EC25CCE0 = v1, v2, (v0 = qword_1EC25CCE0) != 0))
  {
    OUTLINED_FUNCTION_5();
    swift_dynamicCastUnknownClassUnconditional();
    v3 = v0;
  }

  else
  {
    __break(1u);
  }
}

id PIModelCatalog.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = (v0 + OBJC_IVAR___PIModelCatalog__cleanupModelBundleURLString);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___PIModelCatalog__metadataVersionInfo) = 0;
  v4.super_class = PIModelCatalog;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  sub_1C769795C();
  sub_1C769717C();

  return v2;
}

uint64_t PIModelCatalog.cleanupModelBundleURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CCF0);
  v6 = OUTLINED_FUNCTION_21(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1C7832154();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  sub_1C769B1E4(v3);
  if (v16)
  {
  }

  else
  {
    type metadata accessor for PIModelCatalog();
    result = sub_1C769683C();
    if (v2)
    {
      return result;
    }

    v19 = sub_1C78320D4();
    sub_1C769B28C(v19, v20, v3);
    (*(v11 + 8))(v15, v9);
  }

  result = sub_1C769B1E4(v3);
  if (v18)
  {
    sub_1C7832134();
    result = __swift_getEnumTagSinglePayload(v8, 1, v9);
    if (result != 1)
    {

      return (*(v11 + 32))(a1, v8, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C769683C()
{
  type metadata accessor for PIModelCatalog();
  result = sub_1C7698684(v2);
  if (!v0)
  {
    sub_1C769A410(v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return result;
}

uint64_t sub_1C76968F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v51[2] = *MEMORY[0x1E69E9840];
  v5 = 0xEA0000000000746ELL;
  v48 = 0x69746E6961706E69;
  sub_1C78320C4();
  OUTLINED_FUNCTION_0();
  v45 = v7;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v44 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CCF0);
  v11 = OUTLINED_FUNCTION_21(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = sub_1C7832154();
  OUTLINED_FUNCTION_0();
  v50 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v43 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = a1 == 0x746E6961706E69 && a2 == 0xE700000000000000;
  if (v22 || (OUTLINED_FUNCTION_28(), (sub_1C78324D4() & 1) != 0))
  {
    v5 = 0xEA0000000000676ELL;
    goto LABEL_7;
  }

  v28 = a1 == 0x656D656E69666572 && a2 == 0xEA0000000000746ELL;
  v48 = 0x656D656E69666572;
  if (v28 || (OUTLINED_FUNCTION_28(), (sub_1C78324D4() & 1) != 0))
  {
LABEL_7:
    v23 = v49;
    sub_1C7699898(v13);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
    v25 = v50;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C769B920(v13, &qword_1EC25CCF0);
    }

    else
    {
      v26 = *(v50 + 32);
      v26(v21, v13, v14);
      if (sub_1C76995E4(v21))
      {

        return (v26)(v47, v21, v14);
      }

      (*(v25 + 8))(v21, v14);
    }

    goto LABEL_18;
  }

  if (a1 != 0x61746E656D676573 || a2 != 0xEC0000006E6F6974)
  {
    OUTLINED_FUNCTION_28();
    if ((sub_1C78324D4() & 1) == 0)
    {
      if (qword_1EC25CCC0 != -1)
      {
        OUTLINED_FUNCTION_7();
        swift_once();
      }

      v38 = sub_1C7832364();
      __swift_project_value_buffer(v38, qword_1EC25CCC8);
      v39 = sub_1C7832344();
      v40 = sub_1C7832434();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1C7694000, v39, v40, "Unknown model name", v41, 2u);
        MEMORY[0x1CCA61B70](v41, -1, -1);
      }

      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      swift_allocError();
      *v42 = 0xD000000000000012;
      *(v42 + 8) = 0x80000001C784D7A0;
      *(v42 + 16) = 3;
      return swift_willThrow();
    }
  }

  v5 = 0x80000001C784D390;
  v48 = 0xD00000000000001DLL;
  v23 = v49;
  v25 = v50;
LABEL_18:
  v51[0] = 0;
  v29 = [v23 cleanupModelBundleURL_];
  v30 = v51[0];
  if (v29)
  {
    v31 = v29;
    v32 = v43;
    sub_1C7832114();
    v33 = v30;

    v51[0] = v48;
    v51[1] = v5;
    MEMORY[0x1CCA5FE50](0x6C65646F6D6C6D2ELL, 0xE900000000000063);
    (*(v45 + 104))(v44, *MEMORY[0x1E6968F70], v46);
    sub_1C769BA30();
    sub_1C7832144();
    v34 = OUTLINED_FUNCTION_29();
    v35(v34);

    return (*(v25 + 8))(v32, v14);
  }

  v36 = v51[0];

  sub_1C78320B4();

  return swift_willThrow();
}

id sub_1C7696F44(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1C7832154();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v7 = a1;
  a4();

  v8 = sub_1C78320F4();
  v9 = OUTLINED_FUNCTION_24();
  v10(v9);

  return v8;
}

uint64_t PIModelCatalog.cleanupVersion.getter()
{
  sub_1C769717C();
  result = sub_1C769B318(v0);
  if (result)
  {
    v2 = result;
    sub_1C7832474();
    sub_1C769738C(v3, v2, &v4);

    sub_1C769B384(v3);
    if (v5)
    {
      if (swift_dynamicCast())
      {
        return 0x6E6F6973726576;
      }
    }

    else
    {
      sub_1C769B920(&v4, &qword_1EC25CCF8);
    }

    return 0;
  }

  return result;
}

void sub_1C769717C()
{
  sub_1C769795C();
  if (sub_1C769B318(v0))
  {
  }

  else
  {
    v1 = sub_1C7699B30();
    v2 = sub_1C769A12C(v1);

    sub_1C769B7D4(v2, v0);
  }
}

double sub_1C769738C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1C769AFB0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1C769B71C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C76973F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C769AFF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1C7697478(uint64_t a1)
{
  sub_1C769717C();
  v3 = sub_1C769B318(v1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;

  sub_1C7832474();
  sub_1C769738C(v9, v4, &v10);

  sub_1C769B384(v9);
  if (!v11)
  {
    sub_1C769B920(&v10, &qword_1EC25CCF8);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1C76973F0(0x6E6F6973726576, 0xE700000000000000, a1);
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  return v5;
}

id sub_1C76975F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1C7832394();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C76976E4()
{
  v1 = *(v0 + OBJC_IVAR___PIModelCatalog__cleanupModelBundleURLString);

  return v1;
}

uint64_t sub_1C76977A0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___PIModelCatalog__cleanupModelBundleURLString);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C769795C()
{
  v1 = v0;
  v2 = sub_1C7832154();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C769B1E4(v1);
  if (v6)
  {
  }

  else
  {
    type metadata accessor for PIModelCatalog();
    sub_1C769683C();
    v8 = sub_1C78320D4();
    sub_1C769B28C(v8, v9, v1);
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t PIModelCatalog.ModelLoadingError.errorDescription.getter()
{
  v1 = *v0;
  sub_1C769B3D8(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t PIModelCatalog.downloadCleanupModelBundle()()
{
  OUTLINED_FUNCTION_11();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7697DBC;

  return sub_1C769815C();
}

uint64_t sub_1C7697DBC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_10();

  return v3();
}

void sub_1C7697E9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v21 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v21 setNumberStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v5 = [v21 stringFromNumber_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = sub_1C78323A4();
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10 = [v21 stringFromNumber_];

  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = sub_1C78323A4();
  v13 = v12;

  if (qword_1EC25CCC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C7832364();
  __swift_project_value_buffer(v14, qword_1EC25CCC8);

  v15 = sub_1C7832344();
  v16 = sub_1C7832414();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315650;
    v19 = sub_1C769CB00(v6, v8, &v22);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    v20 = sub_1C769CB00(v11, v13, &v22);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v3;
    _os_log_impl(&dword_1C7694000, v15, v16, "Downloaded %s / %s bytes for Clean Up resource (%f %%)", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA61B70](v18, -1, -1);
    MEMORY[0x1CCA61B70](v17, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C7698178()
{
  type metadata accessor for PIModelCatalog();
  sub_1C7698684((v0 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_17();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_1C7698260;

  return sub_1C769872C(v0 + 16);
}

uint64_t sub_1C7698260()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_1C76983C0;
  }

  else
  {
    v5 = sub_1C7698364;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7698364()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_1C76983C0()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t PIModelCatalog.downloadCleanupModelBundle(progress:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C769843C, 0, 0);
}

uint64_t sub_1C769843C()
{
  type metadata accessor for PIModelCatalog();
  sub_1C7698684(v0 + 2);
  swift_task_alloc();
  OUTLINED_FUNCTION_17();
  v0[9] = v1;
  *v1 = v2;
  v1[1] = sub_1C7698524;
  v3 = v0[7];
  v4 = v0[8];

  return sub_1C7698E80((v0 + 2), v3, v4);
}

uint64_t sub_1C7698524()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *(v4 + 80) = v0;

  if (v0)
  {
    v5 = sub_1C7698628;
  }

  else
  {
    v5 = sub_1C769BAFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7698628()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_1C7698684@<X0>(uint64_t *a1@<X8>)
{
  sub_1C78321A4();
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
  a1[3] = v2;
  a1[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1C769874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27();
  v12[6] = sub_1C78321C4();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v12[7] = swift_task_alloc();
  OUTLINED_FUNCTION_33();
  sub_1C7832194();
  v16 = 0;

  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v17();
  v18 = OUTLINED_FUNCTION_9();
  v19(v18);
  if (!MEMORY[0x1E69B2118] || (OUTLINED_FUNCTION_6(), !v20))
  {
    if (MEMORY[0x1E69B2108] && (OUTLINED_FUNCTION_6(), v20) || MEMORY[0x1E69B2100] && (OUTLINED_FUNCTION_6(), v20))
    {
      v25 = OUTLINED_FUNCTION_1();
      v26(v25);
      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      v27 = swift_allocError();
      OUTLINED_FUNCTION_26(v27, v28);
      *(v29 + 16) = 0;
    }

    else
    {
      if (!MEMORY[0x1E69B2110] || (OUTLINED_FUNCTION_6(), !v20))
      {
        sub_1C769B3F4();
        OUTLINED_FUNCTION_5();
        v16 = swift_allocError();
        *v37 = 0xD000000000000034;
        v37[1] = 0x80000001C784D500;
        OUTLINED_FUNCTION_16(v16, v37);
        swift_willThrow();
        v38 = *(v15 + 8);
        v39 = OUTLINED_FUNCTION_18();
        v38(v39);
        v40 = OUTLINED_FUNCTION_9();
        v38(v40);
        goto LABEL_17;
      }

      v30 = OUTLINED_FUNCTION_1();
      v31(v30);
      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      v32 = swift_allocError();
      OUTLINED_FUNCTION_26(v32, v33);
      *(v34 + 16) = 3;
    }

    swift_willThrow();
    v35 = OUTLINED_FUNCTION_18();
    v36(v35);
LABEL_17:

    type metadata accessor for PIModelCatalog();
    OUTLINED_FUNCTION_34();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_8();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_32();
  v12[8] = v13;
  v12[9] = v21;
  v22 = OUTLINED_FUNCTION_9();
  v13(v22);

  v12[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD20);
  OUTLINED_FUNCTION_0();
  v12[11] = v23;
  v12[12] = OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD28);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C7845010;
  sub_1C769B5BC(0, v24 + 32);
  OUTLINED_FUNCTION_35();

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD30);
  v12[13] = v50;
  v12[14] = *(v50 - 8);
  v12[15] = OUTLINED_FUNCTION_20();
  sub_1C78323F4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD38);
  OUTLINED_FUNCTION_21(v51);
  v12[16] = OUTLINED_FUNCTION_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_17();
  v12[17] = v52;
  *v52 = v53;
  OUTLINED_FUNCTION_2(v52);
  OUTLINED_FUNCTION_8();

  return MEMORY[0x1EEE6D9C8](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_1C7698BAC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C7698C98, 0, 0);
}

uint64_t sub_1C7698C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27();
  v13 = v12[16];
  v14 = sub_1C7832274();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v15 = v12[12];
    v16 = v12[10];
    v17 = v12[11];
    v18 = v12[8];
    v20 = v12[6];
    v19 = v12[7];
    (*(v12[14] + 8))(v12[15], v12[13]);
    (*(v17 + 8))(v15, v16);
    v18(v19, v20);

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_8();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_30();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_20();
    (*(v31 + 32))(v32, v13, v14);
    v33 = sub_1C7832254();
    v34 = sub_1C7832244();
    sub_1C7832264();
    v12[2] = v33;
    v12[3] = v34;
    v12[4] = v35;
    sub_1C7697E9C(v12 + 2);
    (*(v31 + 8))(v32, v14);

    swift_task_alloc();
    OUTLINED_FUNCTION_17();
    v12[17] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_8();

    return MEMORY[0x1EEE6D9C8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }
}

uint64_t sub_1C7698E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7698EA4, 0, 0);
}

uint64_t sub_1C7698EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27();
  v12[8] = sub_1C78321C4();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v12[9] = swift_task_alloc();
  OUTLINED_FUNCTION_33();
  sub_1C7832194();
  v16 = 0;

  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v17();
  v18 = OUTLINED_FUNCTION_9();
  v19(v18);
  if (!MEMORY[0x1E69B2118] || (OUTLINED_FUNCTION_6(), !v20))
  {
    if (MEMORY[0x1E69B2108] && (OUTLINED_FUNCTION_6(), v20) || MEMORY[0x1E69B2100] && (OUTLINED_FUNCTION_6(), v20))
    {
      v25 = OUTLINED_FUNCTION_1();
      v26(v25);
      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      v27 = swift_allocError();
      OUTLINED_FUNCTION_26(v27, v28);
      *(v29 + 16) = 0;
    }

    else
    {
      if (!MEMORY[0x1E69B2110] || (OUTLINED_FUNCTION_6(), !v20))
      {
        sub_1C769B3F4();
        OUTLINED_FUNCTION_5();
        v16 = swift_allocError();
        *v37 = 0xD000000000000034;
        v37[1] = 0x80000001C784D500;
        OUTLINED_FUNCTION_16(v16, v37);
        swift_willThrow();
        v38 = *(v15 + 8);
        v39 = OUTLINED_FUNCTION_18();
        v38(v39);
        v40 = OUTLINED_FUNCTION_9();
        v38(v40);
        goto LABEL_17;
      }

      v30 = OUTLINED_FUNCTION_1();
      v31(v30);
      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      v32 = swift_allocError();
      OUTLINED_FUNCTION_26(v32, v33);
      *(v34 + 16) = 3;
    }

    swift_willThrow();
    v35 = OUTLINED_FUNCTION_18();
    v36(v35);
LABEL_17:

    type metadata accessor for PIModelCatalog();
    OUTLINED_FUNCTION_34();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_8();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_32();
  v12[10] = v13;
  v12[11] = v21;
  v22 = OUTLINED_FUNCTION_9();
  v13(v22);

  v12[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD20);
  OUTLINED_FUNCTION_0();
  v12[13] = v23;
  v12[14] = OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD28);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C7845010;
  sub_1C769B5BC(0, v24 + 32);
  OUTLINED_FUNCTION_35();

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD30);
  v12[15] = v50;
  v12[16] = *(v50 - 8);
  v12[17] = OUTLINED_FUNCTION_20();
  sub_1C78323F4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD38);
  OUTLINED_FUNCTION_21(v51);
  v12[18] = OUTLINED_FUNCTION_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_17();
  v12[19] = v52;
  *v52 = v53;
  OUTLINED_FUNCTION_3(v52);
  OUTLINED_FUNCTION_8();

  return MEMORY[0x1EEE6D9C8](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_1C7699304()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C76993F0, 0, 0);
}

uint64_t sub_1C76993F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27();
  v13 = v12[18];
  v14 = sub_1C7832274();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v15 = v12[14];
    v16 = v12[12];
    v17 = v12[13];
    v18 = v12[10];
    v20 = v12[8];
    v19 = v12[9];
    (*(v12[16] + 8))(v12[17], v12[15]);
    (*(v17 + 8))(v15, v16);
    v18(v19, v20);

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_8();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    v30 = v12[6];
    OUTLINED_FUNCTION_30();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_20();
    (*(v32 + 32))(v33, v13, v14);
    v34 = sub_1C7832254();
    v35 = sub_1C7832244();
    sub_1C7832264();
    v12[2] = v34;
    v12[3] = v35;
    v12[4] = v36;
    v30(v12 + 2);
    (*(v32 + 8))(v33, v14);

    swift_task_alloc();
    OUTLINED_FUNCTION_17();
    v12[19] = v37;
    *v37 = v38;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_8();

    return MEMORY[0x1EEE6D9C8](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }
}

id sub_1C76995E4(uint64_t a1)
{
  v2 = sub_1C7832154();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = [objc_opt_self() defaultManager];
  sub_1C7832124();
  v10 = sub_1C7832394();

  v11 = [v9 fileExistsAtPath_];

  if ((v11 & 1) == 0)
  {
    if (qword_1EC25CCC0 != -1)
    {
      OUTLINED_FUNCTION_7();
      swift_once();
    }

    v12 = sub_1C7832364();
    __swift_project_value_buffer(v12, qword_1EC25CCC8);
    v13 = *(v4 + 16);
    v13(v8, a1, v2);
    v14 = sub_1C7832344();
    v15 = sub_1C7832434();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v16 = 136446210;
      v17 = OUTLINED_FUNCTION_24();
      (v13)(v17);
      v18 = sub_1C78323B4();
      v20 = v19;
      (*(v4 + 8))(v8, v2);
      v21 = sub_1C769CB00(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C7694000, v14, v15, "Override model path for inpainting is present, but model was not found at path: %{public}s", v16, 0xCu);
      v22 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1CCA61B70](v22, -1, -1);
      MEMORY[0x1CCA61B70](v16, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }
  }

  return v11;
}

uint64_t sub_1C7699898@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1C7832394();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C7832444();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    sub_1C769B920(&v18, &qword_1EC25CCF8);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v20 = 0;
    v21 = 0;
    goto LABEL_10;
  }

  if (v21)
  {
    goto LABEL_20;
  }

LABEL_10:
  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1C769AF4C(0xD000000000000013, 0x80000001C784D800);
  if (!v6)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_18:
    sub_1C769B920(&v18, &qword_1EC25CCF8);
    v11 = 0;
    v12 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_1C7832394();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_1C7832444();
    swift_unknownObjectRelease();
  }

  else
  {

    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_18;
  }

  v10 = swift_dynamicCast();
  v12 = *(&v16 + 1);
  v11 = v16;
  if (!v10)
  {
    v11 = 0;
    v12 = 0;
  }

LABEL_19:
  v20 = v11;
  v21 = v12;

  if (!v21)
  {
    v13 = 1;
    goto LABEL_22;
  }

LABEL_20:

  sub_1C78320E4();

  v13 = 0;
LABEL_22:

  v14 = sub_1C7832154();
  __swift_storeEnumTagSinglePayload(a1, v13, 1, v14);
}

uint64_t sub_1C7699B30()
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = sub_1C7832154();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CCF0);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  sub_1C769B1E4(v0);
  if (!v17)
  {
    sub_1C769B3F4();
    OUTLINED_FUNCTION_5();
    swift_allocError();
    OUTLINED_FUNCTION_14();
    *v25 = v24 + 15;
    v25[1] = 0x80000001C784D6D0;
    OUTLINED_FUNCTION_16(v26, v25);
    return swift_willThrow();
  }

  sub_1C7832134();

  sub_1C769B8B0(v16, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) != 1)
  {
    (*(v4 + 32))(v8, v13, v2);
    sub_1C7832104();
    sub_1C7832164();
    if (v1)
    {
      v28 = *(v4 + 8);
      v29 = OUTLINED_FUNCTION_29();
      v28(v29);
      v30 = OUTLINED_FUNCTION_24();
      v28(v30);
LABEL_18:
      v23 = v16;
      return sub_1C769B920(v23, &qword_1EC25CCF0);
    }

    v59 = v4;
    v31 = objc_opt_self();
    OUTLINED_FUNCTION_22();
    v32 = sub_1C7832174();
    *&v63[0] = 0;
    v33 = [v31 JSONObjectWithData:v32 options:0 error:v63];

    v34 = *&v63[0];
    if (!v33)
    {
      v40 = v34;
      sub_1C78320B4();

      swift_willThrow();
      v41 = OUTLINED_FUNCTION_22();
      sub_1C769B980(v41, v42);
LABEL_17:
      v50 = *(v59 + 8);
      v51 = OUTLINED_FUNCTION_29();
      v50(v51);
      v52 = OUTLINED_FUNCTION_24();
      v50(v52);
      goto LABEL_18;
    }

    sub_1C7832444();
    swift_unknownObjectRelease();
    sub_1C769B71C(v64, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD58);
    if (swift_dynamicCast())
    {
      sub_1C769A3F0(v61, &v61);

      if (v62)
      {
        sub_1C769B854(&v61, v63);
        sub_1C769B71C(v63, &v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD68);
        if (swift_dynamicCast())
        {
          v35 = OUTLINED_FUNCTION_22();
          sub_1C769B980(v35, v36);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          v37 = *(v59 + 8);
          v38 = OUTLINED_FUNCTION_29();
          v37(v38);
          v39 = OUTLINED_FUNCTION_24();
          v37(v39);
          sub_1C769B920(v16, &qword_1EC25CCF0);
          return v60;
        }

        sub_1C769B3F4();
        OUTLINED_FUNCTION_5();
        swift_allocError();
        OUTLINED_FUNCTION_14();
        *v54 = v53 | 4;
        v54[1] = 0x80000001C784D780;
        OUTLINED_FUNCTION_16(v55, v54);
        swift_willThrow();
        v56 = OUTLINED_FUNCTION_22();
        sub_1C769B980(v56, v57);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        goto LABEL_16;
      }

      sub_1C769B920(&v61, &qword_1EC25CCF8);
      *&v63[0] = 0;
      *(&v63[0] + 1) = 0xE000000000000000;
      sub_1C7832494();

      *&v63[0] = 0xD000000000000018;
      *(&v63[0] + 1) = 0x80000001C784D760;
      sub_1C769B9D8();
      v46 = sub_1C78324C4();
      MEMORY[0x1CCA5FE50](v46);

      v47 = v63[0];
      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      v43 = swift_allocError();
      *v44 = v47;
    }

    else
    {
      sub_1C769B3F4();
      OUTLINED_FUNCTION_5();
      swift_allocError();
      OUTLINED_FUNCTION_14();
      *v44 = v45 + 8;
      *(v44 + 8) = 0x80000001C784D730;
    }

    OUTLINED_FUNCTION_16(v43, v44);
    swift_willThrow();
    v48 = OUTLINED_FUNCTION_22();
    sub_1C769B980(v48, v49);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    goto LABEL_17;
  }

  v18 = OUTLINED_FUNCTION_28();
  sub_1C769B920(v18, v19);
  sub_1C769B3F4();
  OUTLINED_FUNCTION_5();
  swift_allocError();
  OUTLINED_FUNCTION_14();
  *v21 = v20 + 17;
  v21[1] = 0x80000001C784D700;
  OUTLINED_FUNCTION_16(v22, v21);
  swift_willThrow();
  v23 = v16;
  return sub_1C769B920(v23, &qword_1EC25CCF0);
}

uint64_t sub_1C769A12C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CD50);
    v2 = sub_1C78324B4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C769B71C(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C769B854(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C769B854(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C769B854(v31, v32);
    result = sub_1C7832454();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
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
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1C769B854(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double sub_1C769A3F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C769B71C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1C769A410(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v20);
  sub_1C7832214();
  if (v1)
  {
    __swift_deallocate_boxed_opaque_existential_1(&v20);
    if (qword_1EC25CCC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C7832364();
    __swift_project_value_buffer(v3, qword_1EC25CCC8);
    v4 = v1;
    v5 = sub_1C7832344();
    v6 = sub_1C7832424();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1C7694000, v5, v6, "Caught ModelCatalog error: %@", v7, 0xCu);
      sub_1C769B920(v8, &qword_1EC25CD40);
      MEMORY[0x1CCA61B70](v8, -1, -1);
      MEMORY[0x1CCA61B70](v7, -1, -1);
    }

    sub_1C769A7FC(a1);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1C7832494();

    v20 = 0xD000000000000019;
    v21 = 0x80000001C784D820;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1C78321D4();
    MEMORY[0x1CCA5FE50](v11);

    MEMORY[0x1CCA5FE50](0xD000000000000015, 0x80000001C784D840);
    v12 = v20;
    v13 = v21;
    sub_1C769B3F4();
    swift_allocError();
    *v14 = v12;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v20, AssociatedTypeWitness);
    v15 = swift_getAssociatedTypeWitness();
    v16 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v19 - v17;
    sub_1C78321B4();
    swift_getAssociatedConformanceWitness();
    sub_1C78321E4();
    (*(v16 + 8))(v18, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  }
}

uint64_t sub_1C769A7FC(void *a1)
{
  v33 = sub_1C7832234();
  v32 = *(v33 - 8);
  v2 = *(v32 + 64);
  (MEMORY[0x1EEE9AC00])();
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1C7832204();
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7832224();
  sub_1C78321F4();
  v8 = (*(v5 + 8))(v7, v4);
  MEMORY[0x1EEE9AC00](v8);
  v9 = v3;
  v10 = v33;
  v11 = v32;
  (*(v32 + 16))(v3, v3, v33);
  v12 = (*(v11 + 88))(v3, v10);
  if (MEMORY[0x1E69B2488] && v12 == *MEMORY[0x1E69B2488])
  {
    (*(v11 + 96))(v3, v10);
    v13 = sub_1C7832284();
    v31 = &v31;
    v14 = v10;
    v15 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v17 = v3;
    v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 32))(v18, v9, v13);
    v19 = sub_1C769AD90(v18);
    v21 = v20;
    sub_1C769B3F4();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    swift_willThrow();
    (*(v15 + 8))(v18, v13);
    return (*(v11 + 8))(v17, v14);
  }

  if (MEMORY[0x1E69B2490] && v12 == *MEMORY[0x1E69B2490])
  {
    sub_1C769B3F4();
    swift_allocError();
    *v24 = 0xD000000000000030;
    *(v24 + 8) = 0x80000001C784D610;
    v25 = 3;
LABEL_21:
    *(v24 + 16) = v25;
    goto LABEL_22;
  }

  if (MEMORY[0x1E69B2498] && v12 == *MEMORY[0x1E69B2498])
  {
    v26 = 0x80000001C784D5E0;
    sub_1C769B3F4();
    swift_allocError();
    *v27 = 0xD00000000000002DLL;
LABEL_13:
    *(v27 + 8) = v26;
    *(v27 + 16) = 0;
LABEL_22:
    swift_willThrow();
    return (*(v11 + 8))(v3, v10);
  }

  if (MEMORY[0x1E69B24A0] && v12 == *MEMORY[0x1E69B24A0])
  {
    v26 = 0x80000001C784D5C0;
    sub_1C769B3F4();
    swift_allocError();
    *v27 = 0xD000000000000012;
    goto LABEL_13;
  }

  if (MEMORY[0x1E69B2480] && v12 == *MEMORY[0x1E69B2480])
  {
    v28 = 0x80000001C784D590;
    sub_1C769B3F4();
    swift_allocError();
    *v24 = 0xD00000000000002DLL;
LABEL_20:
    *(v24 + 8) = v28;
    v25 = 1;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69B2478] && v12 == *MEMORY[0x1E69B2478])
  {
    v28 = 0x80000001C784D560;
    sub_1C769B3F4();
    swift_allocError();
    *v24 = 0xD000000000000021;
    goto LABEL_20;
  }

  sub_1C769B3F4();
  swift_allocError();
  *v29 = 0xD00000000000001BLL;
  *(v29 + 8) = 0x80000001C784D540;
  *(v29 + 16) = 3;
  swift_willThrow();
  v30 = *(v11 + 8);
  v30(v3, v10);
  return (v30)(v3, v10);
}

uint64_t sub_1C769AD90(uint64_t a1)
{
  v2 = sub_1C7832284();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  (*(v4 + 16))(v6 - v5, a1, v2);
  (*(v4 + 88))(v7, v2);
  if (MEMORY[0x1E69B2500])
  {
    OUTLINED_FUNCTION_6();
    if (v8)
    {
      return 0x6E776F6420746F6ELL;
    }
  }

  if (MEMORY[0x1E69B24F8])
  {
    OUTLINED_FUNCTION_6();
    if (v8)
    {
      return 0xD000000000000011;
    }
  }

  if (MEMORY[0x1E69B2508] && (OUTLINED_FUNCTION_6(), v8))
  {
    OUTLINED_FUNCTION_31();
    return v10 + 5;
  }

  else if (MEMORY[0x1E69B24F0] && (OUTLINED_FUNCTION_6(), v8))
  {
    OUTLINED_FUNCTION_31();
    return v11 | 6;
  }

  else
  {
    (*(v4 + 8))(v7, v2);
    return 0x206E776F6E6B6E75;
  }
}

id sub_1C769AF4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C7832394();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_1C769AFB0(uint64_t a1)
{
  v2 = sub_1C7832454();

  return sub_1C769B06C(a1, v2);
}

unint64_t sub_1C769AFF4(uint64_t a1, uint64_t a2)
{
  sub_1C7832524();
  sub_1C78323C4();
  v4 = sub_1C7832534();

  return sub_1C769B130(a1, a2, v4);
}

unint64_t sub_1C769B06C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C769B778(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCA5FEE0](v8, a1);
    sub_1C769B384(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C769B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C78324D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C769B1E4(void *a1)
{
  v1 = [a1 _cleanupModelBundleURLString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C78323A4();

  return v3;
}

unint64_t type metadata accessor for PIModelCatalog()
{
  result = qword_1EC25CD18;
  if (!qword_1EC25CD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC25CD18);
  }

  return result;
}

void sub_1C769B28C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C7832394();

  [a3 set:v4 cleanupModelBundleURLString:?];
}

uint64_t sub_1C769B318(void *a1)
{
  v1 = [a1 _metadataVersionInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7832384();

  return v3;
}

uint64_t sub_1C769B3D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_1C769B3F4()
{
  result = qword_1EC25CD10;
  if (!qword_1EC25CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC25CD10);
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

uint64_t _s16DownloadProgressVwet(uint64_t a1, int a2)
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

uint64_t _s16DownloadProgressVwst(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C769B4DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1C769B51C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C769B5BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1C769B71C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C769B7D4(uint64_t a1, void *a2)
{
  v3 = sub_1C7832374();

  [a2 set:v3 metadataVersionInfo:?];
}

_OWORD *sub_1C769B854(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C769B8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C769B920(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C769B980(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1C769B9D8()
{
  result = qword_1EC25CD60;
  if (!qword_1EC25CD60)
  {
    sub_1C7832154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC25CD60);
  }

  return result;
}

unint64_t sub_1C769BA30()
{
  result = qword_1EC25CD70;
  if (!qword_1EC25CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC25CD70);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1CCA61B70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C78321D4();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_1C769A7FC(v0);
}

uint64_t OUTLINED_FUNCTION_35()
{

  return MEMORY[0x1EEE1EB38](v0, 0);
}

uint64_t sub_1C769BDCC()
{
  v0 = sub_1C7832364();
  __swift_allocate_value_buffer(v0, qword_1EC25CD78);
  __swift_project_value_buffer(v0, qword_1EC25CD78);
  return sub_1C7832354();
}

id static PIGenerativeModels.availabilityStatus()()
{
  v142 = sub_1C7832334();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v5 = v4 - v3;
  v6 = sub_1C78322F4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  sub_1C7832314();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  (*(v16 + 104))(v15 - v14, *MEMORY[0x1E69A12A8]);
  sub_1C78322E4();
  sub_1C7832324();
  (*(v8 + 8))(v12, v6);
  v17 = sub_1C78322D4();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = sub_1C7832304();
  MEMORY[0x1EEE9AC00](v24);
  v144 = v19[2];
  v145 = &v134 - v23;
  (v144)(&v134 - v23, &v134 - v23, v17);
  v25 = v19[11];
  v146 = v17;
  v26 = v25(&v134 - v23, v17);
  if (MEMORY[0x1E69A1198] && v26 == *MEMORY[0x1E69A1198])
  {
    v27 = v19[1];
    v28 = OUTLINED_FUNCTION_2_0();
    v27(v28);
    if (qword_1EC25CCE8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v29 = sub_1C7832364();
    __swift_project_value_buffer(v29, qword_1EC25CD78);
    v30 = sub_1C7832344();
    v31 = sub_1C7832414();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v142;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C7694000, v30, v31, "Generative models available", v34, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v35 = 1;
    goto LABEL_31;
  }

  v139 = v5;
  v140 = v1;
  v36 = v19[1];
  v138 = (v19 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = v146;
  v143 = v36;
  v141 = v19 + 1;
  (v36)(&v134 - v23, v146);
  sub_1C78322C4();
  v137 = &v134;
  OUTLINED_FUNCTION_0();
  v134 = v39;
  v135 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3_0();
  v136 = v40 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v134 - v23;
  (v144)(&v134 - v23, v145, v37);
  v44 = v25(&v134 - v23, v37);
  if (MEMORY[0x1E69A0F08] && v44 == *MEMORY[0x1E69A0F08])
  {
    v45 = OUTLINED_FUNCTION_2_0();
    v46(v45);
    v48 = v134;
    v47 = v135;
    v49 = v136;
    (*(v134 + 32))(v136, v43, v135);
    sub_1C78322B4();

    if (qword_1EC25CCE8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v50 = sub_1C7832364();
    v51 = __swift_project_value_buffer(v50, qword_1EC25CD78);
    v144 = &v134;
    MEMORY[0x1EEE9AC00](v51);
    OUTLINED_FUNCTION_3_0();
    v54 = v52 - v53;
    (*(v48 + 16))(v52 - v53, v49, v47);
    v55 = sub_1C7832344();
    v56 = sub_1C7832414();
    v57 = os_log_type_enabled(v55, v56);
    v33 = v142;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v147 = v141;
      *v58 = 136315138;
      sub_1C769CBC4(&qword_1EC25CDA0, MEMORY[0x1EEE89378]);
      v59 = sub_1C78324C4();
      v60 = v47;
      v62 = v61;
      v63 = *(v48 + 8);
      v64 = v54;
      v65 = v60;
      v63(v64, v60);
      v66 = sub_1C769CB00(v59, v62, &v147);

      *(v58 + 4) = v66;
      OUTLINED_FUNCTION_7_0(&dword_1C7694000, v67, v68, "Generative models unavailable: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v63(v136, v65);
    }

    else
    {

      v130 = *(v48 + 8);
      v130(v54, v47);
      v130(v49, v47);
    }

    v5 = v139;
    v27 = v143;
    v35 = 0;
LABEL_30:
    v1 = v140;
    goto LABEL_31;
  }

  v69 = v146;
  (v143)(&v134 - v23, v146);
  sub_1C78322A4();
  OUTLINED_FUNCTION_0();
  v135 = v71;
  v136 = v70;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_3_0();
  v137 = (v72 - v73);
  v75 = MEMORY[0x1EEE9AC00](v74);
  v83 = OUTLINED_FUNCTION_4_0(v75, v76, v77, v78, v79, v80, v81, v82, v134);
  v84(v83);
  v85 = v25(v43, v69);
  if (MEMORY[0x1E69A0EF0] && v85 == *MEMORY[0x1E69A0EF0])
  {
    v144 = &v134;
    v86 = OUTLINED_FUNCTION_2_0();
    v87(v86);
    v89 = v135;
    v88 = v136;
    v90 = v137;
    (*(v135 + 32))(v137, v43, v136);
    sub_1C7832294();

    v33 = v142;
    if (qword_1EC25CCE8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v91 = sub_1C7832364();
    v92 = __swift_project_value_buffer(v91, qword_1EC25CD78);
    v141 = &v134;
    MEMORY[0x1EEE9AC00](v92);
    OUTLINED_FUNCTION_3_0();
    v95 = v93 - v94;
    (*(v89 + 16))(v93 - v94, v90, v88);
    v96 = sub_1C7832344();
    v97 = sub_1C7832414();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v147 = v134;
      *v98 = 136315138;
      sub_1C769CBC4(&qword_1EC25CD98, MEMORY[0x1EEE89340]);
      v99 = sub_1C78324C4();
      v100 = v88;
      v102 = v101;
      v103 = *(v89 + 8);
      v104 = v95;
      v105 = v100;
      v103(v104, v100);
      v106 = sub_1C769CB00(v99, v102, &v147);

      *(v98 + 4) = v106;
      OUTLINED_FUNCTION_7_0(&dword_1C7694000, v107, v108, "Generative models restricted: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v103(v137, v105);
    }

    else
    {

      v131 = *(v89 + 8);
      v131(v95, v88);
      v131(v90, v88);
    }

    v5 = v139;
    v27 = v143;
    v35 = 2;
    goto LABEL_30;
  }

  v109 = OUTLINED_FUNCTION_2_0();
  v143(v109);
  if (qword_1EC25CCE8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v110 = sub_1C7832364();
  v111 = __swift_project_value_buffer(v110, qword_1EC25CD78);
  v112 = MEMORY[0x1EEE9AC00](v111);
  v120 = OUTLINED_FUNCTION_4_0(v112, v113, v114, v115, v116, v117, v118, v119, v134);
  v121(v120);
  v122 = sub_1C7832344();
  v123 = sub_1C7832424();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v147 = v125;
    *v124 = 136315138;
    sub_1C769CBC4(&qword_1EC25CD90, MEMORY[0x1EEE89390]);
    v126 = sub_1C78324C4();
    v128 = v127;
    v27 = v143;
    (v143)(v43, v146);
    v129 = sub_1C769CB00(v126, v128, &v147);

    *(v124 + 4) = v129;
    _os_log_impl(&dword_1C7694000, v122, v123, "Unexpected state: %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    OUTLINED_FUNCTION_6_0();
    v25 = v146;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v27 = v143;
    (v143)(v43, v25);
  }

  v35 = 0;
  v33 = v142;
  v5 = v139;
  v1 = v140;
LABEL_31:
  v132 = [objc_allocWithZone(PIGenerativeModelsStatus) initWithStatus_];
  (v27)(v145, v25);
  (*(v1 + 8))(v5, v33);
  return v132;
}

PIGenerativeModels __swiftcall PIGenerativeModels.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1C769CB00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C769CC50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C769B71C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_1C769CBC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for PIGenerativeModels()
{
  result = qword_1EC25CDA8;
  if (!qword_1EC25CDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC25CDA8);
  }

  return result;
}

unint64_t sub_1C769CC50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C769CD50(a5, a6);
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
    result = sub_1C78324A4();
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

uint64_t sub_1C769CD50(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C769CD9C(a1, a2);
  sub_1C769CEB4(&unk_1F46E6A70);
  return v3;
}

uint64_t sub_1C769CD9C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C78323E4())
  {
    result = sub_1C769CF98(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C7832484();
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
          result = sub_1C78324A4();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C769CEB4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C769D008(result, v7, 1, v3);
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

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C769CF98(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CDB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C769D008(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC25CDB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x1CCA61B70);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

id NUAssertLogger()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_75);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20519);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_168);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_27472);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28400);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_20()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_181()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_184_160);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_341()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_350);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_477()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_496);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_166);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

id NUAssertLogger_563()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_159);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_666()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_102_674);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id DictionaryRepresentationFromObservation(void *a1, _OWORD *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  [a1 boundingBox];
  v3 = a2[1];
  *&v13.a = *a2;
  *&v13.c = v3;
  *&v13.tx = a2[2];
  v18 = CGRectApplyAffineTransform(v17, &v13);
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v14[0] = @"x";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v18.origin.x];
  v15[0] = v7;
  v14[1] = @"y";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v15[1] = v8;
  v14[2] = @"w";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v15[2] = v9;
  v14[3] = @"h";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v11;
}

id NUAssertLogger_800()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_817);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

__CFString *PISemanticStyleCastFromString(void *a1)
{
  v1 = a1;
  v2 = @"Standard";
  if (([v1 isEqualToString:@"Standard"] & 1) == 0)
  {
    v2 = @"TanWarm";
    if (([v1 isEqualToString:@"TanWarm"] & 1) == 0)
    {
      v2 = @"BlushWarm";
      if (([v1 isEqualToString:@"BlushWarm"] & 1) == 0)
      {
        v2 = @"Neutral";
        if (([v1 isEqualToString:@"Neutral"] & 1) == 0)
        {
          v2 = @"Cool";
          if (([v1 isEqualToString:@"Cool"] & 1) == 0)
          {
            v2 = @"BrightPop";
            if (([v1 isEqualToString:@"BrightPop"] & 1) == 0)
            {
              v2 = @"NoFilter";
              if (([v1 isEqualToString:@"NoFilter"] & 1) == 0)
              {
                v2 = @"WarmAuthentic";
                if (([v1 isEqualToString:@"WarmAuthentic"] & 1) == 0)
                {
                  v2 = @"StarkBW";
                  if (([v1 isEqualToString:@"StarkBW"] & 1) == 0)
                  {
                    v2 = @"Colorful";
                    if (([v1 isEqualToString:@"Colorful"] & 1) == 0)
                    {
                      v2 = @"UrbanCool";
                      if (([v1 isEqualToString:@"UrbanCool"] & 1) == 0)
                      {
                        v2 = @"Earthy";
                        if (([v1 isEqualToString:@"Earthy"] & 1) == 0)
                        {
                          v2 = @"CloudCover";
                          if (([v1 isEqualToString:@"CloudCover"] & 1) == 0)
                          {
                            v2 = @"DreamyHues";
                            if (([v1 isEqualToString:@"DreamyHues"] & 1) == 0)
                            {
                              v2 = @"GoldWarm";
                              if (([v1 isEqualToString:@"GoldWarm"] & 1) == 0)
                              {
                                v2 = @"LongGray";
                                if (![v1 isEqualToString:@"LongGray"])
                                {
                                  v2 = @"None";
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
    }
  }

  return v2;
}

uint64_t PISemanticStyleIsRenderSupported()
{
  if ([MEMORY[0x1E69B3AB0] overrideSemanticStylesHardwareCheck])
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69B3BF8] currentPlatform];
  v2 = [v1 supportsSemanticStyleRendering];

  return v2;
}

id PISemanticStyleCastToMakerNoteString(void *a1)
{
  v26[16] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E69915B0];
  v25[0] = @"Standard";
  v25[1] = @"NoFilter";
  v3 = *MEMORY[0x1E69915A8];
  v26[0] = v2;
  v26[1] = v3;
  v4 = *MEMORY[0x1E69915D0];
  v25[2] = @"WarmAuthentic";
  v25[3] = @"StarkBW";
  v5 = *MEMORY[0x1E69915B8];
  v26[2] = v4;
  v26[3] = v5;
  v6 = *MEMORY[0x1E6991570];
  v25[4] = @"Colorful";
  v25[5] = @"DreamyHues";
  v7 = *MEMORY[0x1E6991580];
  v26[4] = v6;
  v26[5] = v7;
  v8 = *MEMORY[0x1E69915C8];
  v25[6] = @"UrbanCool";
  v25[7] = @"Earthy";
  v9 = *MEMORY[0x1E6991588];
  v26[6] = v8;
  v26[7] = v9;
  v10 = *MEMORY[0x1E6991568];
  v25[8] = @"CloudCover";
  v25[9] = @"LongGray";
  v11 = *MEMORY[0x1E6991598];
  v26[8] = v10;
  v26[9] = v11;
  v12 = *MEMORY[0x1E69915C0];
  v25[10] = @"TanWarm";
  v25[11] = @"BlushWarm";
  v13 = *MEMORY[0x1E6991558];
  v26[10] = v12;
  v26[11] = v13;
  v14 = *MEMORY[0x1E6991590];
  v25[12] = @"GoldWarm";
  v25[13] = @"Neutral";
  v15 = *MEMORY[0x1E69915A0];
  v26[12] = v14;
  v26[13] = v15;
  v25[14] = @"Cool";
  v25[15] = @"BrightPop";
  v16 = *MEMORY[0x1E6991560];
  v26[14] = *MEMORY[0x1E6991578];
  v26[15] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:16];
  v18 = [v17 objectForKeyedSubscript:v1];

  if (v18)
  {
    v19 = [v17 objectForKeyedSubscript:v1];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
    }

    v20 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v23 = 138543362;
      v24 = v1;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "PISemanticStyleCastToMakerNoteString - unable to find a matching CMI style cast for PISemanticStyleCast %{public}@", &v23, 0xCu);
    }

    v19 = v2;
  }

  v21 = v19;

  return v21;
}

id PISemanticStyleMakerNotePropertiesFromSettings(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v1 objectForKeyedSubscript:@"version"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E6986878]];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Expected a valid version value from settings but got %@, skipping", &v13, 0xCu);
    }

    v3 = 0;
  }

  v5 = [v1 objectForKeyedSubscript:@"tone"];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6986880]];

  v6 = [v1 objectForKeyedSubscript:@"color"];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6986860]];

  v7 = [v1 objectForKeyedSubscript:@"intensity"];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6986868]];

  v8 = [v1 objectForKeyedSubscript:@"cast"];
  v9 = PISemanticStyleCastToMakerNoteString(v8);

  if (v3)
  {
    v10 = [v3 unsignedIntValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E6991718], "makerNoteTagForSmartStyleCastType:smartStyleVersion:", v9, v10)}];
  [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6986858]];

  [v2 setObject:&unk_1F471E8C8 forKeyedSubscript:*MEMORY[0x1E6986870]];

  return v2;
}

id PISemanticStyleSettingsFromMakerNoteProperties(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986878]];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
      }

      v4 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v3;
        _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Invalid style version value: %{public}@, ignored.", &v19, 0xCu);
      }

      v3 = 0;
    }
  }

  [v2 setObject:v3 forKeyedSubscript:@"version"];
  v5 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986858]];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
      }

      v6 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v5;
        _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Invalid style cast value: %{public}@, ignored.", &v19, 0xCu);
      }

      v5 = 0;
    }
  }

  v7 = [MEMORY[0x1E6991718] smartStyleCastForMakerNoteTag:objc_msgSend(v5 smartStyleVersion:{"unsignedIntegerValue"), objc_msgSend(v3, "unsignedIntValue")}];
  if (!v7)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
    }

    v8 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v16 = v8;
      v17 = [v5 unsignedIntegerValue];
      v18 = [v3 unsignedIntValue];
      v19 = 134218240;
      v20 = v17;
      v21 = 1024;
      v22 = v18;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Invalid style cast: %lu (%u), ignored.", &v19, 0x12u);
    }
  }

  [v2 setObject:v7 forKeyedSubscript:@"cast"];
  v9 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986880]];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
      }

      v10 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v9;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Invalid style tone value: %{public}@, ignored.", &v19, 0xCu);
      }

      v9 = 0;
    }
  }

  [v2 setObject:v9 forKeyedSubscript:@"tone"];
  v11 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986860]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
      }

      v12 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v11;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Invalid style color value: %{public}@, ignored.", &v19, 0xCu);
      }

      v11 = 0;
    }
  }

  [v2 setObject:v11 forKeyedSubscript:@"color"];
  v13 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986868]];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_990);
      }

      v14 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v13;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Invalid style intensity value: %{public}@, ignored.", &v19, 0xCu);
      }

      v13 = 0;
    }
  }

  [v2 setObject:v13 forKeyedSubscript:@"intensity"];

  return v2;
}

id PISemanticStyleCurrentMetadataVersion()
{
  v0 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:2 minor:15];

  return v0;
}

id PISemanticStyleCurrentRenderingVersion()
{
  v0 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:1 minor:0];

  return v0;
}

id NUAssertLogger_1052()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_122);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1200()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1220);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1303()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_33);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1364()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_104);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1509()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_187);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1658()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_48);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1848()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_1936()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C76B90E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_2293()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_435);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_2471()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2499);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_2583()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_35);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_2746()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_3023()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_110);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_3150()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3167);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_3459()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_3620()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3639);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_3781()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_141);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_3999()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3967);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

__CFString *PIParallaxStyleClockFontForKind(void *a1)
{
  v13[13] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69C0B28];
  v12[0] = *MEMORY[0x1E69C0B38];
  v12[1] = v1;
  v13[0] = @"SF Soft Time";
  v13[1] = @"SF Soft Time";
  v2 = *MEMORY[0x1E69C0AE0];
  v12[2] = *MEMORY[0x1E69C0B30];
  v12[3] = v2;
  v13[2] = @"SF Rounded Time";
  v13[3] = @"New York Time";
  v3 = *MEMORY[0x1E69C0AF0];
  v12[4] = *MEMORY[0x1E69C0AD8];
  v12[5] = v3;
  v13[4] = @"New York Time";
  v13[5] = @"ADT Slab Time";
  v4 = *MEMORY[0x1E69C0B00];
  v12[6] = *MEMORY[0x1E69C0AE8];
  v12[7] = v4;
  v13[6] = @"ADT Slab Time";
  v13[7] = @"SF Stencil Time";
  v5 = *MEMORY[0x1E69C0B08];
  v12[8] = *MEMORY[0x1E69C0AF8];
  v12[9] = v5;
  v13[8] = @"SF Rail Time";
  v13[9] = @"ADT Slab Time";
  v6 = *MEMORY[0x1E69C0B10];
  v12[10] = *MEMORY[0x1E69C0B20];
  v12[11] = v6;
  v13[10] = @"New York Heavy";
  v13[11] = @"SF Soft Time";
  v12[12] = *MEMORY[0x1E69C0B18];
  v13[12] = @"New York Heavy";
  v7 = MEMORY[0x1E695DF20];
  v8 = a1;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:v12 count:13];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (!v10)
  {
    v10 = @"SF Soft Time";
  }

  return v10;
}

id NUAssertLogger_4208()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_355_4148);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

__CFString *PIParallaxStyleTonalityDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unspecified Key";
  }

  else
  {
    return off_1E82AA060[a1 - 1];
  }
}

uint64_t PIParallaxStyleTonalityFromMedianLuminance(double a1)
{
  v1 = 3;
  if (a1 < 0.67)
  {
    v1 = 2;
  }

  if (a1 < 0.33)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t PIParallaxStylePrefersVibrantClockForKind(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69C0AE0]])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E69C0AD8]] ^ 1;
  }

  return v2;
}

id NUAssertLogger_4463()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_885);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger_4511()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_887);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

__CFString *PIPosterSettlingEffectStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E82AA108[a1 - 1];
  }
}

__CFString *PIPosterSpatialPhotoStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E82AA130[a1 - 1];
  }
}

id NUAssertLogger_4772()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_50);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_4909()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_4920);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_5351()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_324);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C76EE710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5366(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_5651()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_125);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_5886()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_5941);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_6081()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_275);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_6299()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C76FD8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6586(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_6588()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C76FEC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak(va);
  objc_destroyWeak((v12 - 128));
  _Unwind_Resume(a1);
}

void sub_1C76FFF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1C7700F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_6863()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

double *GUTemp_to_xy(double *result, double *a2, double a3)
{
  if (a3 < 2000.0)
  {
    a3 = 2000.0;
  }

  v3 = 50000.0;
  if (a3 <= 50000.0)
  {
    v3 = a3;
  }

  v4 = 1000.0 / (v3 * 1.4388 / 1.438);
  if (v3 >= 4500.0)
  {
    v7 = v4 * v4;
    v8 = v4 * (v4 * v4);
    if (v3 >= 7000.0)
    {
      v5 = v7 * 1.9018 + v8 * -2.0064 + v4 * 0.24748;
      v6 = 0.23704;
    }

    else
    {
      v5 = v7 * 2.9678 + v8 * -4.607 + v4 * 0.09911;
      v6 = 0.244063;
    }
  }

  else
  {
    v5 = v4 * 1.0874 + v4 * v4 * -0.6734;
    v6 = 0.15259;
  }

  v9 = v5 + v6;
  if (v9 <= 0.35)
  {
    v10 = v9 * 2.87 + v9 * -3.0 * v9;
    v11 = -0.2751;
  }

  else
  {
    v10 = v9 * (v9 * -1.05) + v9 * (v9 * -1.3295) * v9 + v9 * 2.0;
    v11 = -0.15247;
  }

  *result = v9;
  *a2 = v10 + v11;
  return result;
}

double GUGetAdaptationMatrix(double *a1, double *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 * 0.2664 + *a1 * 0.8951 + v4 * -0.1614;
  v6 = v3 * 1.7135 + *a1 * -0.7502 + v4 * 0.0367;
  v7 = v3 * -0.0685 + *a1 * 0.0389 + v4 * 1.0296;
  v11 = 0;
  v14 = 0;
  v13 = 0u;
  v10 = 0u;
  v9 = 0.99631656 / v5;
  v12 = 1.02043099 / v6;
  v15 = 0.81832442 / v7;
  GUMatrixMatrix(GUGetAdaptationMatrix_Bradford_mtx, &v9, a2);

  return GUMatrixMatrix(a2, GUGetAdaptationMatrix_invBradford_mtx, a2);
}

double GUInvertMatrix(double *a1, double *a2)
{
  result = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = -(*a1 * v7);
  v12 = v5 * -(v8 * v6) + *a1 * v6 * v10 + v5 * v4 * v9 + -(v4 * v3) * v10 + v3 * v7 * v8 + v11 * v9;
  if (v12 != 0.0)
  {
    *a2 = (v6 * v10 - v9 * v7) / v12;
    a2[1] = (v9 * v5 - v3 * v10) / v12;
    a2[2] = (v3 * v7 - v6 * v5) / v12;
    a2[3] = (v10 * -v4 + v8 * v7) / v12;
    a2[4] = (v5 * -v8 + result * v10) / v12;
    a2[5] = (v11 + v4 * v5) / v12;
    a2[6] = (v4 * v9 - v8 * v6) / v12;
    a2[7] = (v9 * -result + v8 * v3) / v12;
    result = (result * v6 - v4 * v3) / v12;
    a2[8] = result;
  }

  return result;
}

double GUMatrixMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v7 * v13 + v4 * *a2 + v10 * v14;
  *a3 = v6 * v13 + *a1 * *a2 + v9 * v14;
  a3[1] = v21;
  a3[2] = v8 * v13 + v5 * v12 + v11 * v14;
  a3[3] = v6 * v16 + v3 * v15 + v9 * v17;
  a3[4] = v7 * v16 + v4 * v15 + v10 * v17;
  a3[5] = v8 * v16 + v5 * v15 + v11 * v17;
  a3[6] = v6 * v19 + v3 * v18 + v9 * v20;
  a3[7] = v7 * v19 + v4 * v18 + v10 * v20;
  result = v8 * v19 + v5 * v18 + v11 * v20;
  a3[8] = result;
  return result;
}

id NUAssertLogger_7006()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7026);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

double GUMatrixVector(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *a3 = v4 * a1[1] + *a2 * *a1 + v5 * a1[2];
  a3[1] = v4 * a1[4] + v3 * a1[3] + v5 * a1[5];
  result = v4 * a1[7] + v3 * a1[6] + v5 * a1[8];
  a3[2] = result;
  return result;
}

id NUAssertLogger_7107()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7130);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C77077C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NUAssertLogger_7300()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7361);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void CreateKeyframesFromHomographyDictionary(void *a1, CMTimeEpoch a2, uint64_t a3, void *a4, __int128 *a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v58 = a4;
  v8 = [v7 objectForKeyedSubscript:@"stabCropRect"];
  v9 = [v8 objectForKeyedSubscript:@"X"];
  v10 = [v9 integerValue];
  v11 = [v8 objectForKeyedSubscript:@"Y"];
  v12 = [v11 integerValue];
  v13 = [v8 objectForKeyedSubscript:@"Width"];
  v14 = [v13 integerValue];
  v52 = v8;
  v15 = v8;
  v16 = a3;
  v17 = [v15 objectForKeyedSubscript:@"Height"];
  v18 = [v17 integerValue];

  *&v85 = v10;
  *(&v85 + 1) = v12;
  *&v86 = v14;
  *(&v86 + 1) = v18;
  v83.value = 0;
  *&v83.timescale = 0;
  v83.epoch = a2;
  v84 = v16;
  NUPixelRectFlipYOrigin();
  v19 = v89;
  *a5 = v88;
  a5[1] = v19;
  v53 = v7;
  [v7 objectForKeyedSubscript:@"frameInstructions"];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v82 = 0u;
  v59 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v59)
  {
    *v20.i32 = v16;
    v21.i32[0] = 0;
    v21.f32[1] = v16;
    v21.i32[2] = 1.0;
    v57 = v21;
    v22 = vzip1q_s32(xmmword_1C7845CE0, v20);
    v22.i32[3] = 0;
    v56 = v22;
    v55 = *v80;
    do
    {
      v23 = 0;
      do
      {
        if (*v80 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v23;
        v24 = *(*(&v79 + 1) + 8 * v23);
        memset(&v83, 0, sizeof(v83));
        v25 = [v24 objectForKeyedSubscript:@"rawTime"];
        CMTimeMakeFromDictionary(&v83, v25);

        v26 = [v24 objectForKeyedSubscript:@"homography"];
        if ([v26 count] != 9)
        {
          v50 = [MEMORY[0x1E696AAA8] currentHandler];
          v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CreateKeyframesFromHomographyDictionary(NSDictionary *__strong, NUPixelSize, NSMutableArray<PIReframeKeyframe *> *__strong, NUPixelRect *)"}];
          [v50 handleFailureInFunction:v51 file:@"PIVideoStabilizeRequest.m" lineNumber:162 description:@"unexpected homography"];
        }

        v66 = [v26 objectAtIndexedSubscript:0];
        [v66 floatValue];
        v76 = v27;
        v65 = [v26 objectAtIndexedSubscript:1];
        [v65 floatValue];
        v72 = v28;
        v29 = [v26 objectAtIndexedSubscript:2];
        [v29 floatValue];
        v68 = v30;
        v31 = [v26 objectAtIndexedSubscript:3];
        [v31 floatValue];
        v64 = v32;
        v33 = [v26 objectAtIndexedSubscript:4];
        [v33 floatValue];
        v63 = v34;
        v35 = [v26 objectAtIndexedSubscript:5];
        [v35 floatValue];
        v62 = v36;
        v37 = [v26 objectAtIndexedSubscript:6];
        [v37 floatValue];
        v61 = v38;
        v39 = [v26 objectAtIndexedSubscript:7];
        [v39 floatValue];
        v60 = v40;
        v41 = [v26 objectAtIndexedSubscript:8];
        [v41 floatValue];
        v42 = v76;
        v42.i32[1] = v64;
        v42.i32[2] = v61;
        v77 = v42;
        v43 = v72;
        v43.i32[1] = v63;
        v43.i32[2] = v60;
        v73 = v43;
        v44 = v68;
        v44.i32[1] = v62;
        v44.i32[2] = v45;
        v69 = v44;

        v46 = 0;
        v85 = xmmword_1C7845CF0;
        v86 = xmmword_1C7845D00;
        v87 = v56;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        do
        {
          *(&v88 + v46) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77, COERCE_FLOAT(*(&v85 + v46))), v73, *(&v85 + v46), 1), v69, *(&v85 + v46), 2);
          v46 += 16;
        }

        while (v46 != 48);
        v47 = 0;
        v85 = v88;
        v86 = v89;
        v87 = v90;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        do
        {
          *(&v88 + v47) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C7845CF0, COERCE_FLOAT(*(&v85 + v47))), xmmword_1C7845D00, *(&v85 + v47), 1), v57, *(&v85 + v47), 2);
          v47 += 16;
        }

        while (v47 != 48);
        v74 = *&v89;
        v78 = *v90.i64;
        v70 = *&v88;
        v48 = [PIReframeKeyframe alloc];
        v88 = *&v83.value;
        *&v89 = v83.epoch;
        v49 = [(PIReframeKeyframe *)v48 initWithTime:&v88 homography:v70, v74, v78];
        [v58 addObject:v49];

        v23 = v67 + 1;
      }

      while (v67 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v59);
  }
}

_PIVideoStabilizeResult *PIVideoStabilizeResultFromHomographies(void *a1, CMTimeEpoch a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a1;
  v7 = [v5 array];
  v12 = 0u;
  v13 = 0u;
  CreateKeyframesFromHomographyDictionary(v6, a2, a3, v7, &v12);
  v8 = [_PIVideoStabilizeResult alloc];
  v11[0] = v12;
  v11[1] = v13;
  v9 = [(_PIVideoStabilizeResult *)v8 initWithKeyframes:v7 stabCropRect:v11 analysisType:0 rawHomographies:v6];

  return v9;
}

void sub_1C7708834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_7479()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_301);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C7709668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7505(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C770AC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C770BA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Block_object_dispose((v41 - 144), 8);
  _Unwind_Resume(a1);
}

void YIQFromRGB(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v67 = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
  }

  v15 = MEMORY[0x1E69B3D80];
  v16 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    v34 = *a1;
    v35 = a1[1];
    v36 = a1[2];
    *buf = 134218496;
    v56 = v34;
    v57 = 2048;
    v58 = v35;
    v59 = 2048;
    v60 = v36;
    _os_log_debug_impl(&dword_1C7694000, v16, OS_LOG_TYPE_DEBUG, "RGB = %f, %f, %f", buf, 0x20u);
  }

  else if (!a1)
  {
    v40 = NUAssertLogger_7479();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected non-NULL pixels passed in"];
      v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v56 = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v44 = NUAssertLogger_7479();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v48 = COERCE_DOUBLE(dispatch_get_specific(*v42));
        v49 = MEMORY[0x1E696AF00];
        v50 = *&v48;
        v51 = [v49 callStackSymbols];
        [v51 componentsJoinedByString:@"\n"];
        v52 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543618;
        v56 = v48;
        v57 = 2114;
        v58 = v52;
        _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      [v46 componentsJoinedByString:@"\n"];
      v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v56 = v47;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  if (a5 != 0.0)
  {
    v20 = a5;
    v21 = exp2f(v20);
    v18 = v18 / v21;
    v17 = v17 / v21;
    v19 = v19 / v21;
  }

  if (a6 != 1.0 && a7 != 0.0)
  {
    if (-(a7 - v18 * (a6 + a7)) >= 0.0)
    {
      v18 = -(a7 - v18 * (a6 + a7));
    }

    else
    {
      v18 = 0.0;
    }

    if (-(a7 - v17 * (a6 + a7)) >= 0.0)
    {
      v17 = -(a7 - v17 * (a6 + a7));
    }

    else
    {
      v17 = 0.0;
    }

    if (-(a7 - v19 * (a6 + a7)) >= 0.0)
    {
      v19 = -(a7 - v19 * (a6 + a7));
    }

    else
    {
      v19 = 0.0;
    }
  }

  v22 = pow(v18, 4.0);
  v23 = pow(v17, 4.0);
  v24 = pow(v19, 4.0);
  v25 = v23 * 0.404303581 + v22 * 0.592828095 + v24 * 0.00286814501;
  v26 = v23 * 0.843295753 + v22 * 0.0951450467 + v24 * 0.0615592338;
  v27 = v23 * 0.0696689114 + v22 * 0.0117029343 + v24 * 0.918628156;
  v28 = pow(v25, 0.25);
  v29 = pow(v26, 0.25);
  v54 = pow(v27, 0.25);
  if (*v14 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
  }

  v30 = v29 * -0.274453014 + v28 * 0.595716;
  v31 = v29 * -0.522590995 + v28 * 0.211456001;
  v32 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v56 = v28;
    v57 = 2048;
    v58 = v29;
    v59 = 2048;
    v60 = v54;
    _os_log_debug_impl(&dword_1C7694000, v32, OS_LOG_TYPE_DEBUG, "RGB = %f, %f, %f", buf, 0x20u);
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }
  }

  v53 = v29 * 0.587000012 + v28 * 0.298999995;
  v33 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    v37 = *a1;
    v38 = *(a1 + 1);
    v39 = *(a1 + 2);
    *buf = 134219264;
    v56 = v53 + v54 * 0.114;
    v57 = 2048;
    v58 = v30 + v54 * -0.321262985;
    v59 = 2048;
    v60 = v31 + v54 * 0.311134994;
    v61 = 2048;
    v62 = v37;
    v63 = 2048;
    v64 = v38;
    v65 = 2048;
    v66 = v39;
    _os_log_debug_impl(&dword_1C7694000, v33, OS_LOG_TYPE_DEBUG, "YIQ = %f, %f, %f from %f, %f, %f", buf, 0x3Eu);
  }

  *a2 = v53 + v54 * 0.114;
  *a3 = v30 + v54 * -0.321262985;
  *a4 = v31 + v54 * 0.311134994;
}

void sub_1C770D86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 256), 8);
  _Block_object_dispose((v69 - 208), 8);
  _Block_object_dispose((v69 - 160), 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_7848()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7864);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_8250()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_524);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C7714A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v71 - 224), 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose((v71 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8275(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_8454()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_186_8468);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_8835()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_8870);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_9496()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_179);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C7723D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9523(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_9605()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_236);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id getVCPMediaAnalysisServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMediaAnalysisServiceClass_softClass;
  v7 = getVCPMediaAnalysisServiceClass_softClass;
  if (!getVCPMediaAnalysisServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVCPMediaAnalysisServiceClass_block_invoke;
    v3[3] = &unk_1E82AC930;
    v3[4] = &v4;
    __getVCPMediaAnalysisServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C7728470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVCPMediaAnalysisServiceClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VCPMediaAnalysisService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPMediaAnalysisServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalysisServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PIPosterSettlingEffectLoader.m" lineNumber:37 description:{@"Unable to find class %s", "VCPMediaAnalysisService"}];

    __break(1u);
  }
}

void *MediaAnalysisLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82AAA38;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaAnalysisLibraryCore_frameworkLibrary;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PIPosterSettlingEffectLoader.m" lineNumber:36 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void getMediaAnalysisResultsKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMediaAnalysisResultsKeySymbolLoc_ptr;
  v9 = getMediaAnalysisResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultsKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v7[3] = dlsym(v1, "MediaAnalysisResultsKey");
    getMediaAnalysisResultsKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultsKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PIPosterSettlingEffectLoader.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1C7729688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisSettlingEffectResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisSettlingEffectResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisSettlingEffectResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMediaAnalysisResultAttributesKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr;
  v9 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultAttributesKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v7[3] = dlsym(v1, "MediaAnalysisResultAttributesKey");
    getMediaAnalysisResultAttributesKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultAttributesKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PIPosterSettlingEffectLoader.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1C772983C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectURLAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMediaAnalysisResultSettlingEffectStatusAttributeKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMediaAnalysisResultSettlingEffectStatusAttributeKeySymbolLoc_ptr;
  v9 = getMediaAnalysisResultSettlingEffectStatusAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultSettlingEffectStatusAttributeKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v7[3] = dlsym(v1, "MediaAnalysisResultSettlingEffectStatusAttributeKey");
    getMediaAnalysisResultSettlingEffectStatusAttributeKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectStatusAttributeKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PIPosterSettlingEffectLoader.m" lineNumber:45 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1C77299F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectFRCRecommendationAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMediaAnalysisPathConstraintsStabilizationResultsKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMediaAnalysisPathConstraintsStabilizationResultsKeySymbolLoc_ptr;
  v9 = getMediaAnalysisPathConstraintsStabilizationResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisPathConstraintsStabilizationResultsKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v7[3] = dlsym(v1, "MediaAnalysisPathConstraintsStabilizationResultsKey");
    getMediaAnalysisPathConstraintsStabilizationResultsKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisPathConstraintsStabilizationResultsKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PIPosterSettlingEffectLoader.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1C7729BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisPathConstraintsStabilizationResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisPathConstraintsStabilizationResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisPathConstraintsStabilizationResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultSettlingEffectStatusAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectStatusAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectStatusAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultAttributesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultAttributesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultAttributesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C772A6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultsStabilizationCropAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C772B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectMissingMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectStabilizationFailureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectVideoQualityGatingFailureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectMetadataIntegrityFailureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectFRCGatingFailureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultSettlingEffectStillTransitionGatingFailureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C772C204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_9946()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_9959);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C772E320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_10117()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_10170);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id drawCircle(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v40[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = MEMORY[0x1E695F648];
  v37 = *MEMORY[0x1E695FB10];
  v13 = v37;
  v14 = MEMORY[0x1E696AD98];
  v15 = a2;
  v16 = a1;
  v17 = [v14 numberWithDouble:a6 * 1.15];
  v40[0] = v17;
  v38 = *MEMORY[0x1E695FA78];
  v18 = v38;
  v19 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v40[1] = v19;
  v39 = *MEMORY[0x1E695FA70];
  v20 = [MEMORY[0x1E695F688] vectorWithCGPoint:{a4, a5}];
  v40[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v37 count:3];
  v22 = [v12 filterWithName:@"CICircleGenerator" withInputParameters:v21];

  v23 = [v22 outputImage];
  v24 = [v23 imageByCompositingOverImage:v16];

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  [v22 setValue:v25 forKey:v13];

  [v22 setValue:v15 forKey:v18];
  v26 = [v22 outputImage];
  v27 = [v26 imageByCompositingOverImage:v24];

  if (v11)
  {
    v28 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    v29 = createLabelImage(v11, v28, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
    CGAffineTransformMakeScale(&v36, a6 / 40.0, a6 / 40.0);
    v30 = [v29 imageByApplyingTransform:&v36];

    [v30 extent];
    CGAffineTransformMakeTranslation(&v36, a4 + v31 * -0.5, a5 - a6 + -5.0 - v32);
    v33 = [v30 imageByApplyingTransform:&v36];

    v34 = [v33 imageByCompositingOverImage:v27];

    v27 = v34;
  }

  return v27;
}

id createLabelImage(void *a1, void *a2, CGFloat a3, CGFloat a4)
{
  v7 = MEMORY[0x1E695F648];
  v8 = a2;
  v9 = a1;
  v10 = [v7 textImageGeneratorFilter];
  [v10 setText:v9];

  [v10 setFontName:@"Helvetica"];
  LODWORD(v11) = 1109393408;
  [v10 setFontSize:v11];
  v12 = [v10 outputImage];
  v13 = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
  [v12 extent];
  v15 = v14 + 4.0;
  [v12 extent];
  [v13 setExtent:{0.0, 0.0, v15, v16 + 4.0}];
  [v13 setColor:v8];

  [v13 setRadius:0.0];
  CGAffineTransformMakeTranslation(&v22, 2.0, 2.0);
  v17 = [v12 imageByApplyingTransform:&v22];

  v18 = [v13 outputImage];
  v19 = [v17 imageByCompositingOverImage:v18];

  CGAffineTransformMakeTranslation(&v22, a3, a4);
  v20 = [v19 imageByApplyingTransform:&v22];

  return v20;
}

id NUAssertLogger_10509()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_10277);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id imageDataOfRowAverages(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E695F648];
  v12 = a2;
  v13 = a1;
  v14 = [v11 rowAverageFilter];
  [v14 setInputImage:v12];

  [v14 setExtent:{a3, a4, a5, a6}];
  v15 = [v14 outputImage];
  [v15 extent];
  v17 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(4 * vcvtpd_s64_f64(v16))];
  v18 = [v17 mutableBytes];
  v19 = [v17 length];
  [v15 extent];
  [v13 render:v15 toBitmap:v18 rowBytes:v19 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:?];

  v20 = [v17 copy];

  return v20;
}

uint64_t PICinematicAudioIsRenderSupported()
{
  v0 = [MEMORY[0x1E69B3BF8] currentPlatform];
  v1 = [v0 mainDevice];
  if ([v1 family] < 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v0 supportsANE];
  }

  return v2;
}

id NUAssertLogger_10647()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_10673);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_10729()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_10795);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_11150()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger_11199()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

void sub_1C773F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11229(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_11514()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_11530);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_11562()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_11630);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C77433D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11641(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7744ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t XXH32(char *a1, unint64_t a2, unsigned int a3)
{
  v3 = &a1[a2];
  if (a2 < 0x10)
  {
    v13 = a3 + 374761393;
    v7 = a1;
  }

  else
  {
    v4 = a3 + 606290984;
    v5 = a3 - 2048144777;
    v6 = a3 + 1640531535;
    v7 = a1;
    do
    {
      HIDWORD(v9) = v4 - 2048144777 * *v7;
      LODWORD(v9) = HIDWORD(v9);
      v8 = v9 >> 19;
      v4 = -1640531535 * v8;
      HIDWORD(v9) = v5 - 2048144777 * *(v7 + 1);
      LODWORD(v9) = HIDWORD(v9);
      v10 = v9 >> 19;
      v5 = -1640531535 * v10;
      HIDWORD(v9) = a3 - 2048144777 * *(v7 + 2);
      LODWORD(v9) = HIDWORD(v9);
      v11 = v9 >> 19;
      a3 = -1640531535 * v11;
      HIDWORD(v9) = v6 - 2048144777 * *(v7 + 3);
      LODWORD(v9) = HIDWORD(v9);
      v12 = v9 >> 19;
      v6 = -1640531535 * v12;
      v7 += 16;
    }

    while (v7 <= v3 - 16);
    v13 = ((1013904226 * v8) | (v4 >> 31)) + 465361024 * v10 + (v5 >> 25) + 2006650880 * v11 + (a3 >> 20) - 423362560 * v12 + (v6 >> 14);
  }

  v14 = v13 + a2;
  if ((v7 + 4) <= v3)
  {
    do
    {
      v15 = v7 + 4;
      HIDWORD(v16) = v14 - 1028477379 * *v7;
      LODWORD(v16) = HIDWORD(v16);
      v14 = 668265263 * (v16 >> 15);
      v17 = (v7 + 8) > v3;
      v7 += 4;
    }

    while (!v17);
  }

  else
  {
    v15 = v7;
  }

  if (v15 < v3)
  {
    v18 = &a1[a2] - v15;
    do
    {
      v19 = *v15++;
      HIDWORD(v20) = v14 + 374761393 * v19;
      LODWORD(v20) = HIDWORD(v20);
      v14 = -1640531535 * (v20 >> 21);
      --v18;
    }

    while (v18);
  }

  v21 = -1028477379 * ((-2048144777 * (v14 ^ (v14 >> 15))) ^ ((-2048144777 * (v14 ^ (v14 >> 15))) >> 13));
  return v21 ^ HIWORD(v21);
}

unint64_t XXH64(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + a2;
  if (a2 < 0x20)
  {
    v13 = a3 + 0x27D4EB2F165667C5;
    v7 = a1;
  }

  else
  {
    v4 = a3 + 0x60EA27EEADC0B5D6;
    v5 = a3 - 0x3D4D51C2D82B14B1;
    v6 = a3 + 0x61C8864E7A143579;
    v7 = a1;
    do
    {
      v8 = __ROR8__(v4 - 0x3D4D51C2D82B14B1 * *v7, 33);
      v4 = 0x9E3779B185EBCA87 * v8;
      v9 = __ROR8__(v5 - 0x3D4D51C2D82B14B1 * *(v7 + 1), 33);
      v5 = 0x9E3779B185EBCA87 * v9;
      v10 = *(v7 + 3);
      v11 = __ROR8__(a3 - 0x3D4D51C2D82B14B1 * *(v7 + 2), 33);
      a3 = 0x9E3779B185EBCA87 * v11;
      v7 += 8;
      v12 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * v10, 33);
      v6 = 0x9E3779B185EBCA87 * v12;
    }

    while (v7 <= v3 - 32);
    v13 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((((0x3C6EF3630BD7950ELL * v8) | (v4 >> 63)) + 0x1BBCD8C2F5E54380 * v9 + (v5 >> 57) + 0x779B185EBCA87000 * v11 + (a3 >> 52) - 0x1939E850D5E40000 * v12 + (v6 >> 46)) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v8) | ((0xDEF35B010F796CA9 * v8) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v9) | ((0xDEF35B010F796CA9 * v9) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v11) | ((0xDEF35B010F796CA9 * v11) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v12) | ((0xDEF35B010F796CA9 * v12) >> 33))));
  }

  v14 = v13 + a2;
  if ((v7 + 2) <= v3)
  {
    do
    {
      v15 = v7 + 2;
      v14 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *v7) | ((0xC2B2AE3D27D4EB4FLL * *v7) >> 33))) ^ v14, 37);
      v16 = (v7 + 4) > v3;
      v7 += 2;
    }

    while (!v16);
  }

  else
  {
    v15 = v7;
  }

  if ((v15 + 1) <= v3)
  {
    v14 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * *v15++) ^ v14, 41);
  }

  if (v15 < v3)
  {
    v17 = a1 + a2 - v15;
    do
    {
      v18 = *v15;
      v15 = (v15 + 1);
      v14 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v18) ^ v14, 53);
      --v17;
    }

    while (v17);
  }

  v19 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v14 ^ (v14 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v14 ^ (v14 >> 33))) >> 29));
  return v19 ^ HIDWORD(v19);
}

uint64_t XXH32_reset(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = vadd_s32(vdup_n_s32(a2), 0x85EBCA7724234428);
  *(a1 + 20) = a2;
  *(a1 + 24) = a2 + 1640531535;
  *a1 = 0;
  *(a1 + 44) = 0;
  return 0;
}

uint64_t XXH64_reset(int64x2_t *a1, unint64_t a2)
{
  a1[1] = vaddq_s64(vdupq_n_s64(a2), xmmword_1C7845D60);
  a1[2].i64[0] = a2;
  a1[2].i64[1] = a2 + 0x61C8864E7A143579;
  a1->i64[0] = 0;
  a1->i64[1] = a2;
  a1[5].i32[0] = 0;
  return 0;
}

uint64_t XXH32_update(uint64_t a1, int32x4_t *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  *a1 += __n;
  v6 = *(a1 + 44);
  if (v6 + __n <= 0xF)
  {
    memcpy((a1 + v6 + 28), __src, __n);
    LODWORD(v7) = *(a1 + 44) + v3;
LABEL_11:
    *(a1 + 44) = v7;
    return 0;
  }

  v8 = (__src + __n);
  if (v6)
  {
    memcpy((a1 + 28 + v6), __src, (16 - v6));
    v9 = vmlaq_s32(*(a1 + 12), *(a1 + 28), vdupq_n_s32(0x85EBCA77));
    *(a1 + 12) = vmulq_s32(vsraq_n_u32(vshlq_n_s32(v9, 0xDuLL), v9, 0x13uLL), vdupq_n_s32(0x9E3779B1));
    v4 = (v4 + (16 - *(a1 + 44)));
    *(a1 + 44) = 0;
  }

  if (v4 <= &v8[-1])
  {
    v10 = *(a1 + 12);
    v11 = vdupq_n_s32(0x85EBCA77);
    v12 = vdupq_n_s32(0x9E3779B1);
    do
    {
      v13 = *v4++;
      v14 = vmlaq_s32(v10, v13, v11);
      v10 = vmulq_s32(vsraq_n_u32(vshlq_n_s32(v14, 0xDuLL), v14, 0x13uLL), v12);
    }

    while (v4 <= &v8[-1]);
    *(a1 + 12) = v10;
  }

  if (v4 < v8)
  {
    v7 = v8 - v4;
    memcpy((a1 + 28), v4, v7);
    goto LABEL_11;
  }

  return 0;
}

uint64_t XXH32_digest(uint64_t a1)
{
  v1 = (a1 + 28);
  v2 = *(a1 + 44);
  if (*a1 < 0x10uLL)
  {
    v3 = *(a1 + 8) + 374761393;
  }

  else
  {
    v3 = vaddvq_s32(vorrq_s8(vshlq_u32(*(a1 + 12), xmmword_1C7845D80), vshlq_u32(*(a1 + 12), xmmword_1C7845D70)));
  }

  v4 = v1 + v2;
  v5 = v3 + *a1;
  if (v2 >= 4)
  {
    do
    {
      v6 = (v1 + 1);
      HIDWORD(v7) = v5 - 1028477379 * *v1;
      LODWORD(v7) = HIDWORD(v7);
      v5 = 668265263 * (v7 >> 15);
      v8 = (v1 + 2) > v4;
      ++v1;
    }

    while (!v8);
  }

  else
  {
    v6 = (a1 + 28);
  }

  if (v6 < v4)
  {
    v9 = a1 + v2 - v6 + 28;
    do
    {
      v10 = *v6++;
      HIDWORD(v11) = v5 + 374761393 * v10;
      LODWORD(v11) = HIDWORD(v11);
      v5 = -1640531535 * (v11 >> 21);
      --v9;
    }

    while (v9);
  }

  v12 = -1028477379 * ((-2048144777 * (v5 ^ (v5 >> 15))) ^ ((-2048144777 * (v5 ^ (v5 >> 15))) >> 13));
  return v12 ^ HIWORD(v12);
}

uint64_t XXH64_update(uint64_t a1, char *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  *a1 += __n;
  v6 = *(a1 + 80);
  if (v6 + __n <= 0x1F)
  {
    memcpy((a1 + v6 + 48), __src, __n);
    LODWORD(v7) = *(a1 + 80) + v3;
LABEL_11:
    *(a1 + 80) = v7;
    return 0;
  }

  v8 = &__src[__n];
  if (v6)
  {
    memcpy((a1 + 48 + v6), __src, (32 - v6));
    v9 = __ROR8__(*(a1 + 24) - 0x3D4D51C2D82B14B1 * *(a1 + 56), 33);
    *(a1 + 16) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 16) - 0x3D4D51C2D82B14B1 * *(a1 + 48), 33);
    *(a1 + 24) = 0x9E3779B185EBCA87 * v9;
    v10 = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 40) - 0x3D4D51C2D82B14B1 * *(a1 + 72), 33);
    *(a1 + 32) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 32) - 0x3D4D51C2D82B14B1 * *(a1 + 64), 33);
    *(a1 + 40) = v10;
    v4 += (32 - *(a1 + 80));
    *(a1 + 80) = 0;
  }

  if (v4 + 32 <= v8)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    do
    {
      v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
      v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
      v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
      v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
      v4 += 32;
    }

    while (v4 <= v8 - 32);
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
    *(a1 + 40) = v13;
  }

  if (v4 < v8)
  {
    v7 = v8 - v4;
    memcpy((a1 + 48), v4, v7);
    goto LABEL_11;
  }

  return 0;
}

unint64_t XXH64_digest(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(a1 + 80);
  if (*a1 < 0x20uLL)
  {
    v3 = *(a1 + 8) + 0x27D4EB2F165667C5;
  }

  else
  {
    v3 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(*(a1 + 24), 57) + __ROR8__(*(a1 + 16), 63) + __ROR8__(*(a1 + 32), 52) + __ROR8__(*(a1 + 40), 46)) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 16)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 16)) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 24)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 24)) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 32)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 32)) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 40)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 40)) >> 33))));
  }

  v4 = v1 + v2;
  v5 = v3 + *a1;
  if (v2 >= 8)
  {
    do
    {
      v6 = (v1 + 1);
      v5 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *v1) | ((0xC2B2AE3D27D4EB4FLL * *v1) >> 33))) ^ v5, 37);
      v7 = (v1 + 2) > v4;
      ++v1;
    }

    while (!v7);
  }

  else
  {
    v6 = (a1 + 48);
  }

  if ((v6 + 1) <= v4)
  {
    v5 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * *v6++) ^ v5, 41);
  }

  if (v6 < v4)
  {
    v8 = a1 + v2 - v6 + 48;
    do
    {
      v9 = *v6;
      v6 = (v6 + 1);
      v5 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v9) ^ v5, 53);
      --v8;
    }

    while (v8);
  }

  v10 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v5 ^ (v5 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v5 ^ (v5 >> 33))) >> 29));
  return v10 ^ HIDWORD(v10);
}

id NUAssertLogger_11997()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_88);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t __Block_byref_object_copy__12053(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_12170()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

__CFString *PICIPerspectiveAutoCalcFailureReasonDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown_%lud", a1];
  }

  else
  {
    v1 = off_1E82AAD70[a1];
  }

  return v1;
}

uint64_t flashFired(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"Flash"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 shortValue] & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id apertureValue(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"FNumber"];
  if (v2)
  {
    v3 = v2;
LABEL_4:
    v4 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
    v5 = [v4 numberWithDouble:?];
    goto LABEL_5;
  }

  v3 = [v1 objectForKeyedSubscript:@"ApertureValue"];
  if (v3)
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

id shutterSpeedValue(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"ShutterSpeedValue"];
  if (v2 && (v3 = v2, [v1 objectForKeyedSubscript:@"ExposureTime"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v6 = [v1 objectForKeyedSubscript:@"ShutterSpeedValue"];
    [v6 doubleValue];
    v8 = v7;

    v5 = [MEMORY[0x1E696AD98] numberWithDouble:exp2(-v8)];
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:@"ExposureTime"];
  }

  v9 = v5;

  return v9;
}

id isoValue(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"ISOSpeedRatings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 count])
  {
    v2 = MEMORY[0x1E696AD98];
    v3 = [v1 objectAtIndex:0];
    [v3 doubleValue];
    v4 = [v2 numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NUAssertLogger_12487()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12500);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_12588()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12660);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_12725()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_44);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C77529B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  _Block_object_dispose((v25 - 120), 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getkSliderNetGatingMethodSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageHarmonizationKitLibrary();
  result = dlsym(v2, "kSliderNetGatingMethod");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSliderNetGatingMethodSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageHarmonizationKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ImageHarmonizationKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ImageHarmonizationKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82AAEA8;
    v6 = 0;
    ImageHarmonizationKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ImageHarmonizationKitLibraryCore_frameworkLibrary;
  if (!ImageHarmonizationKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageHarmonizationKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PISmartCopyPasteAutoCalculator.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getIHKSliderNetCPModelClass_block_invoke(uint64_t a1)
{
  ImageHarmonizationKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IHKSliderNetCPModel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIHKSliderNetCPModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIHKSliderNetCPModelClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PISmartCopyPasteAutoCalculator.m" lineNumber:26 description:{@"Unable to find class %s", "IHKSliderNetCPModel"}];

    __break(1u);
  }
}

uint64_t __ImageHarmonizationKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImageHarmonizationKitLibraryCore_frameworkLibrary = result;
  return result;
}

id NUAssertLogger_13001()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_311);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t __Block_byref_object_copy__13039(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PIStringFromIndexSet(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__13039;
  v13 = __Block_byref_object_dispose__13040;
  v14 = @"[";
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PIStringFromIndexSet_block_invoke;
  v6[3] = &unk_1E82AB058;
  v6[4] = v7;
  v6[5] = &v9;
  [v1 enumerateIndexesUsingBlock:v6];
  v2 = [v10[5] stringByAppendingString:@"]"];
  v3 = v10[5];
  v10[5] = v2;

  v4 = v10[5];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_1C7756A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void __PIStringFromIndexSet_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:{@", "}];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"%ld", a2];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t PIModelLoadingOptions(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 URLByAppendingPathComponent:@"model.specialization.bundle"];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x1E695E000];
    v12 = v5;
    v13 = [v11 standardUserDefaults];
    v14 = [v13 objectForKey:v12];

    if (v14)
    {
      v10 = [v14 localizedCaseInsensitiveContainsString:@"compiled"];
      if ([v14 localizedCaseInsensitiveContainsString:@"cpu"])
      {
        v10 |= 2uLL;
      }

      if ([v14 localizedCaseInsensitiveContainsString:@"gpu"])
      {
        v10 |= 4uLL;
      }

      if ([v14 localizedCaseInsensitiveContainsString:@"ane"])
      {
        v10 |= 8uLL;

        goto LABEL_13;
      }

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = a3;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_13:

  return v10;
}

void sub_1C7758B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v69 - 208), 8);
  _Block_object_dispose((v69 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1C7759ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NULogger_13745()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_763);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

id NUAssertLogger_13757()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_761);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_13971()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_14127()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14140);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_14911()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_14924);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C7774548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 240), 8);
  _Block_object_dispose((v15 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7775F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_15312()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t __Block_byref_object_copy__15325(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

char *___lightMapImageFromData_block_invoke(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PIParallaxStyleRecipe.m", 771, "x == 0");
  }

  if (a5)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PIParallaxStyleRecipe.m", 772, "y == 0");
  }

  if (*(a1 + 40) != a6)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PIParallaxStyleRecipe.m", 773, "width == lmWidth");
  }

  v8 = a7;
  if (*(a1 + 48) != a7)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PIParallaxStyleRecipe.m", 774, "height == lmHeight");
  }

  v11 = 2 * a6;
  result = [*(a1 + 32) bytes];
  v13 = result;
  if (v11 == a3)
  {
    v14 = *(a1 + 56);

    return memcpy(a2, result, v14);
  }

  else
  {
    for (; v8; --v8)
    {
      result = memcpy(a2, v13, v11);
      v13 += v11;
      a2 += a3;
    }
  }

  return result;
}

id NUAssertLogger_15642()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15688);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger_15744()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_143_15749);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

id NUAssertLogger_15869()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_288);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C777DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C777E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_16186()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16202);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_16450()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t OperationUsesLegacyFilter(void *a1)
{
  v1 = a1;
  v2 = [v1 mode];
  v3 = [v1 options];

  if (v2 != 2)
  {
    return 0;
  }

  v4 = +[PIGlobalSettings editSettings];
  v5 = [v4 objectForKey:@"useOldFilterForOldModelStrokes"];
  v6 = [v5 BOOLValue];
  if ((v3 & 0x100) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v3 >> 9) & 1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id NUAssertLogger_16994()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290_17014);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C778D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17069(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C778DC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C778DFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C778F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_17559()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_17595);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t PIRetouchModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kRepairModeDeclutter])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:kRepairModeObjectRemoval])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:kRepairModeRepair])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:kRepairModeClone])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

id PIRetouchModeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = &kRepairModeRepairML;
  }

  else
  {
    v1 = off_1E82AB6D0[a1];
  }

  return *v1;
}

id NUAssertLogger_17826()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_17861);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C7798094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17917(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_18063()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_18084);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void fixRedeye(void *a1, double a2)
{
  v199 = *MEMORY[0x1E69E9840];
  v193 = a1;
  v3 = [v193 format];
  v4 = [v3 bytesPerPixel];

  if (v4 != 8)
  {
    v147 = NUAssertLogger();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      v148 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer must be RGBA16 type for red eye repairs"];
      *buf = 138543362;
      v196 = v148;
      _os_log_error_impl(&dword_1C7694000, v147, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v149 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v151 = NUAssertLogger();
    v152 = os_log_type_enabled(v151, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v152)
      {
        v176 = dispatch_get_specific(*v149);
        v177 = [MEMORY[0x1E696AF00] callStackSymbols];
        v178 = [v177 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v196 = v176;
        v197 = 2114;
        v198 = v178;
        _os_log_error_impl(&dword_1C7694000, v151, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v152)
    {
      v153 = [MEMORY[0x1E696AF00] callStackSymbols];
      v154 = [v153 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v196 = v154;
      _os_log_error_impl(&dword_1C7694000, v151, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_181:
    __break(1u);
  }

  v5 = [v193 size];
  v7 = v6;
  v8 = [MEMORY[0x1E69B3BF0] R16];
  v189 = v8;
  v9 = [objc_alloc(MEMORY[0x1E69B3BA8]) initWithSize:v5 format:{v7, v8}];
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v11 = [v193 bytesAtPoint:{0, i}];
      v12 = [v9 mutableBytesAtPoint:{0, i}];
      if (v5 >= 1)
      {
        v13 = (v11 + 2);
        v14 = v5;
        do
        {
          v15 = *(v13 - 1);
          v16 = *v13;
          if (v15 > v16)
          {
            *v12 = (v15 << 10) / (v16 + 1024);
          }

          v13 += 4;
          ++v12;
          --v14;
        }

        while (v14);
      }
    }
  }

  v190 = v5;
  v17 = v5 / 3;
  v18 = v7 / 3;
  v19 = [v9 bytesAtPoint:{v17, v7 / 3}];
  v191 = v7;
  v20 = 2 * v7 / 3;
  v21 = *v19;
  if (v18 >= v20)
  {
    v24 = v18;
    v23 = v17;
    if (*v19)
    {
      goto LABEL_21;
    }

LABEL_101:
    v104 = 0;
    v105 = 0;
    goto LABEL_121;
  }

  v22 = 2 * v190 / 3;
  v23 = v17;
  v24 = v18;
  do
  {
    v25 = [v9 bytesAtPoint:{0, v18}];
    if (v17 < v22)
    {
      v26 = v17;
      do
      {
        v27 = *(v25 + 2 * v26);
        if (v21 < v27)
        {
          v24 = v18;
          v23 = v26;
        }

        if (v21 <= v27)
        {
          v21 = *(v25 + 2 * v26);
        }

        ++v26;
      }

      while (v22 != v26);
    }

    ++v18;
  }

  while (v18 != v20);
  if (!v21)
  {
    goto LABEL_101;
  }

LABEL_21:
  v188 = v9;
  v28 = [objc_alloc(MEMORY[0x1E69B3BA8]) initWithSize:v190 format:{v191, v8}];
  v29 = v9;
  v31 = [v28 size];
  if (v31 <= v23)
  {
    v155 = NUAssertLogger();
    if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
    {
      v156 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reddestx out of bounds"];
      *buf = 138543362;
      v196 = v156;
      _os_log_error_impl(&dword_1C7694000, v155, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v157 = MEMORY[0x1E69B38E8];
    v158 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v159 = NUAssertLogger();
    v160 = os_log_type_enabled(v159, OS_LOG_TYPE_ERROR);
    if (v158)
    {
      if (v160)
      {
        v179 = dispatch_get_specific(*v157);
        v180 = [MEMORY[0x1E696AF00] callStackSymbols];
        v181 = [v180 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v196 = v179;
        v197 = 2114;
        v198 = v181;
        _os_log_error_impl(&dword_1C7694000, v159, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

      goto LABEL_177;
    }

    if (v160)
    {
LABEL_163:
      v166 = [MEMORY[0x1E696AF00] callStackSymbols];
      v167 = [v166 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v196 = v167;
      _os_log_error_impl(&dword_1C7694000, v159, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_177:

    _NUAssertFailHandler();
    goto LABEL_181;
  }

  v32 = v30;
  if (v30 <= v24)
  {
    v161 = NUAssertLogger();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      v162 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reddesty out of bounds"];
      *buf = 138543362;
      v196 = v162;
      _os_log_error_impl(&dword_1C7694000, v161, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v163 = MEMORY[0x1E69B38E8];
    v164 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v159 = NUAssertLogger();
    v165 = os_log_type_enabled(v159, OS_LOG_TYPE_ERROR);
    if (v164)
    {
      if (v165)
      {
        v182 = dispatch_get_specific(*v163);
        v183 = [MEMORY[0x1E696AF00] callStackSymbols];
        v184 = [v183 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v196 = v182;
        v197 = 2114;
        v198 = v184;
        _os_log_error_impl(&dword_1C7694000, v159, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

      goto LABEL_177;
    }

    if (v165)
    {
      goto LABEL_163;
    }

    goto LABEL_177;
  }

  v33 = [v29 bytesAtPoint:{0, v24}];
  v34 = [v28 mutableBytesAtPoint:{0, v24}];
  if ((v23 & 0x8000000000000000) == 0)
  {
    v35 = v23;
    v36 = v21;
    do
    {
      if (v36 >= *(v33 + 2 * v35))
      {
        v36 = *(v33 + 2 * v35);
      }

      *(v34 + 2 * v35--) = v36;
    }

    while (v35 != -1);
  }

  if (v23 + 1 < v31)
  {
    v37 = ~v23 + v31;
    v38 = 2 * v23 + 2;
    v39 = (v34 + v38);
    v40 = (v33 + v38);
    do
    {
      v42 = *v40++;
      v41 = v42;
      if (v21 >= v42)
      {
        v21 = v41;
      }

      *v39++ = v21;
      --v37;
    }

    while (v37);
  }

  if (v24 >= 1)
  {
    v43 = v24;
    do
    {
      v44 = [v29 bytesAtPoint:{0, v43 - 1}];
      v45 = [v28 bytesAtPoint:{0, v43}];
      v46 = [v28 mutableBytesAtPoint:{0, v43 - 1}];
      if (v31 >= 1)
      {
        v47 = v31;
        do
        {
          v49 = *v44++;
          v48 = v49;
          v51 = *v45++;
          v50 = v51;
          if (v48 >= v51)
          {
            LOWORD(v48) = v50;
          }

          *v46++ = v48;
          --v47;
        }

        while (v47);
      }

      v52 = v43-- <= 1;
    }

    while (!v52);
  }

  v53 = v24 + 1;
  if (v24 + 1 < v32)
  {
    do
    {
      v54 = v24;
      v24 = v53;
      v55 = [v29 bytesAtPoint:{0, v53}];
      v56 = [v28 bytesAtPoint:{0, v54}];
      v57 = [v28 mutableBytesAtPoint:{0, v24}];
      if (v31 >= 1)
      {
        v58 = v31;
        do
        {
          v60 = *v56++;
          v59 = v60;
          v62 = *v55++;
          v61 = v62;
          if (v59 >= v62)
          {
            LOWORD(v59) = v61;
          }

          *v57++ = v59;
          --v58;
        }

        while (v58);
      }

      v53 = v24 + 1;
    }

    while (v24 + 1 != v32);
  }

  v194 = 0;
  do
  {
    if (v32 < 1)
    {
      v64 = 0;
    }

    else
    {
      v63 = 0;
      v64 = 0;
      do
      {
        v65 = [v29 bytesAtPoint:{0, v63}];
        v66 = [v28 bytesAtPoint:{0, v63}];
        v67 = [v28 mutableBytesAtPoint:{0, v63}];
        if (v31 >= 2)
        {
          v68 = v66 + 1;
          v69 = *v66;
          v70 = (v67 + 2);
          v71 = (v65 + 2);
          v72 = v31 - 1;
          do
          {
            v74 = *v71++;
            v73 = v74;
            if (v69 < v74)
            {
              v73 = v69;
            }

            v75 = *v68++;
            v69 = v75;
            if (v73 > v75)
            {
              *v70 = v73;
              ++v64;
              v69 = v73;
            }

            ++v70;
            --v72;
          }

          while (v72);
          v76 = v66[v31 - 1];
          v77 = v31 - 2;
          do
          {
            v78 = *(v65 + 2 * v77);
            if (v76 < v78)
            {
              v78 = v76;
            }

            v76 = v66[v77];
            if (v78 > v76)
            {
              *(v67 + 2 * v77) = v78;
              ++v64;
              v76 = v78;
            }

            v52 = v77-- <= 0;
          }

          while (!v52);
        }

        ++v63;
      }

      while (v63 != v32);
      if (v32 >= 2)
      {
        for (j = 1; j != v32; ++j)
        {
          v80 = [v29 bytesAtPoint:{0, j}];
          v81 = [v28 bytesAtPoint:{0, j - 1}];
          v82 = [v28 mutableBytesAtPoint:{0, j}];
          if (v31 >= 1)
          {
            v83 = v31;
            do
            {
              v85 = *v81++;
              v84 = v85;
              v87 = *v80++;
              v86 = v87;
              if (v87 < v84)
              {
                v84 = v86;
              }

              if (v84 > *v82)
              {
                *v82 = v84;
                ++v64;
              }

              ++v82;
              --v83;
            }

            while (v83);
          }
        }

        v88 = v32 - 2;
        do
        {
          v89 = [v29 bytesAtPoint:{0, v88}];
          v90 = [v28 bytesAtPoint:{0, v88 + 1}];
          v91 = [v28 mutableBytesAtPoint:{0, v88}];
          if (v31 >= 1)
          {
            v92 = v31;
            do
            {
              v94 = *v90++;
              v93 = v94;
              v96 = *v89++;
              v95 = v96;
              if (v96 < v93)
              {
                v93 = v95;
              }

              if (v93 > *v91)
              {
                *v91 = v93;
                ++v64;
              }

              ++v91;
              --v92;
            }

            while (v92);
          }

          v52 = v88-- <= 0;
        }

        while (!v52);
      }
    }

    if (v64 < (v31 * v32 / 128))
    {
      break;
    }

    v97 = v194++ >= 7;
  }

  while (!v97);

  v9 = v188;
  if (v191 < 1)
  {
    v99 = 0;
    v100 = 0x1E69B3000uLL;
    v101 = 0x1E69B3000uLL;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v100 = 0x1E69B3000;
    v101 = 0x1E69B3000;
    do
    {
      v102 = [v28 bytesAtPoint:{0, v98}];
      v103 = *v102;
      if (v103 <= v102[v190 - 1])
      {
        v103 = v102[v190 - 1];
      }

      if (v99 <= v103)
      {
        v99 = v103;
      }

      ++v98;
    }

    while (v191 != v98);
  }

  v106 = [v28 bytesAtPoint:{0, 0}];
  v107 = [v28 bytesAtPoint:{0, v191 - 1}];
  v108 = v190;
  if (v190 >= 1)
  {
    do
    {
      v110 = *v106++;
      v109 = v110;
      v112 = *v107++;
      v111 = v112;
      if (v109 <= v112)
      {
        v109 = v111;
      }

      if (v99 <= v109)
      {
        v99 = v109;
      }

      --v108;
    }

    while (v108);
  }

  if (v99 <= 0x2000)
  {
    if (v99 <= 0x200)
    {
      v104 = 512;
    }

    else
    {
      v104 = v99;
    }

    v113 = objc_alloc(*(v101 + 2984));
    v114 = [*(v100 + 3056) RG16];
    v105 = [v113 initWithSize:v190 format:{v191, v114}];

    if (v191 >= 1)
    {
      for (k = 0; k != v191; ++k)
      {
        v116 = [v29 bytesAtPoint:{0, k}];
        v117 = [v28 bytesAtPoint:{0, k}];
        v118 = [v105 mutableBytesAtPoint:{0, k}];
        if (v190 >= 1)
        {
          v119 = (v118 + 2);
          v120 = v190;
          do
          {
            v121 = *v117++;
            *(v119 - 1) = v121;
            v122 = *v116++;
            *v119 = v122;
            v119 += 2;
            --v120;
          }

          while (v120);
        }
      }
    }
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

LABEL_121:
  if (!v105)
  {
    goto LABEL_146;
  }

  v123 = v193;
  v192 = v105;
  v124 = v105;
  if (!v123)
  {
    v168 = NUAssertLogger();
    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      v169 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "repairBuffer != nil"];
      *buf = 138543362;
      v196 = v169;
      _os_log_error_impl(&dword_1C7694000, v168, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v170 = MEMORY[0x1E69B38E8];
    v171 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v172 = NUAssertLogger();
    v173 = os_log_type_enabled(v172, OS_LOG_TYPE_ERROR);
    if (v171)
    {
      if (v173)
      {
        v185 = dispatch_get_specific(*v170);
        v186 = [MEMORY[0x1E696AF00] callStackSymbols];
        v187 = [v186 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v196 = v185;
        v197 = 2114;
        v198 = v187;
        _os_log_error_impl(&dword_1C7694000, v172, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v173)
    {
      v174 = [MEMORY[0x1E696AF00] callStackSymbols];
      v175 = [v174 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v196 = v175;
      _os_log_error_impl(&dword_1C7694000, v172, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_181;
  }

  v125 = [v123 size];
  v127 = v126;
  v128 = 1.0;
  v129 = 1.0 - a2;
  if (1.0 - a2 < 0.01)
  {
    v129 = 0.01;
  }

  if (v129 <= 1.0)
  {
    v128 = v129;
  }

  v130 = vcvtd_n_u64_f64(v128, 0x11uLL);
  if (v130 <= 0x10000)
  {
    v131 = 0x10000 - v130;
  }

  else
  {
    v131 = 0;
  }

  if (v126 >= 1)
  {
    v132 = v125;
    v133 = 0;
    v134 = (16777216.0 / (v128 * v104));
    v135 = HIWORD(v130);
    do
    {
      v136 = v124;
      v137 = [v124 bytesAtPoint:{0, v133}];
      v138 = [v123 bytesAtPoint:{0, v133}];
      if (v132 >= 1)
      {
        v139 = (v137 + 2);
        v140 = v132;
        do
        {
          if (v104 < *(v139 - 1))
          {
            v141 = *v139;
            v97 = v141 >= v104;
            v142 = v141 - v104;
            if (!v97)
            {
              v142 = 0;
            }

            v143 = (v142 * v134) >> 8;
            if (v143 >= 0xFFFF)
            {
              v143 = 0xFFFF;
            }

            v144 = *v138;
            v145 = v138[1];
            if (v135)
            {
              v146 = v144 - v145;
            }

            else
            {
              v146 = v144 - v145 + (((v145 - ((v145 + ((((v145 * v145) >> 16) * v145) >> 16)) >> 1)) * ((v143 * v131) >> 16)) >> 16);
            }

            *v138 = v144 - ((v146 * v143) >> 16);
          }

          v138 += 4;
          v139 += 2;
          --v140;
        }

        while (v140);
      }

      ++v133;
      v124 = v136;
    }

    while (v133 != v127);
  }

  v105 = v192;
LABEL_146:
}

id NUAssertLogger(void)
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_18348);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_18502()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_18528);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void __getPNCropUtilitiesWrapperClass_block_invoke(uint64_t a1)
{
  PhotosIntelligenceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PNCropUtilitiesWrapper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPNCropUtilitiesWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPNCropUtilitiesWrapperClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PIPNCropUtilitiesWrapper.m" lineNumber:15 description:{@"Unable to find class %s", "PNCropUtilitiesWrapper"}];

    __break(1u);
  }
}

void *PhotosIntelligenceLibrary()
{
  v0 = PhotosIntelligenceLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosIntelligenceLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"PIPNCropUtilitiesWrapper.m" lineNumber:14 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

uint64_t PhotosIntelligenceLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PhotosIntelligenceLibraryCore_frameworkLibrary;
  v5 = PhotosIntelligenceLibraryCore_frameworkLibrary;
  if (!PhotosIntelligenceLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E82AB7C0;
    v7 = *off_1E82AB7D0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PhotosIntelligenceLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1C779DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PhotosIntelligenceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PhotosIntelligenceLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C779E410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1C779F8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28)
{
  operator delete(v30);
  operator delete(v29);

  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C779FAF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E82A9B88, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1C779FEBC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id NUAssertLogger_18854()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_97);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_19600()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_192);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C77A567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_19733()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_56);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NURenderLogger()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_58);
  }

  v1 = *MEMORY[0x1E69B3D88];

  return v1;
}

id NUAssertLogger_19851()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_19876);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id _lightMapImageFromData(void *a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 length];
  if (v8)
  {
    LODWORD(v9) = [v6 intValue];
    v10 = [v7 intValue];
    if (v9 && v10)
    {
      v9 = v9;
      v11 = v10;
    }

    else
    {
      v9 = vcvtmd_u64_f64(sqrt(vcvtd_n_f64_u64(v8, 1uLL)));
      v11 = v9;
    }

    if (v8 == (2 * v9 * v11))
    {
      v12 = *MEMORY[0x1E695F9F0];
      v21[0] = *MEMORY[0x1E695F9E8];
      v21[1] = v12;
      v22[0] = v5;
      v22[1] = @"PILocalLightHDR";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v14 = objc_alloc(MEMORY[0x1E695F658]);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___lightMapImageFromData_block_invoke_19927;
      v16[3] = &unk_1E82AB9E8;
      v18 = v9;
      v19 = v11;
      v17 = v5;
      v20 = v8;
      v8 = [v14 initWithImageProvider:v16 width:v9 height:v11 format:*MEMORY[0x1E695F8F0] colorSpace:0 options:v13];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id _scaledLightMapImage(void *a1, void *a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    [v3 extent];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v5 extent];
    v27.origin.x = v15;
    v27.origin.y = v16;
    v27.size.width = v17;
    v27.size.height = v18;
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    if (CGRectEqualToRect(v25, v27))
    {
      v6 = v3;
    }

    else
    {
      [v3 extent];
      v28.origin.x = 0.0;
      v28.origin.y = 0.0;
      v28.size.width = 1.0;
      v28.size.height = 1.0;
      if (CGRectEqualToRect(v26, v28))
      {
        v19 = [v3 imageByClampingToExtent];
        [v5 extent];
        v20 = [v19 imageByCroppingToRect:?];
      }

      else
      {
        v22[0] = @"inputSmallImage";
        v22[1] = @"inputSpatialSigma";
        v23[0] = v3;
        v23[1] = &unk_1F47245F8;
        v22[2] = @"inputLumaSigma";
        v23[2] = &unk_1F4724608;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
        v20 = [v5 imageByApplyingFilter:@"CIEdgePreserveUpsampleRGFilter" withInputParameters:v19];
      }

      v6 = v20;
    }
  }

  return v6;
}

char *___lightMapImageFromData_block_invoke_19927(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PILocalLightHDR.m", 54, "x == 0");
  }

  if (a5)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PILocalLightHDR.m", 55, "y == 0");
  }

  if (*(a1 + 40) != a6)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PILocalLightHDR.m", 56, "width == lmWidth");
  }

  v8 = a7;
  if (*(a1 + 48) != a7)
  {
    __assert_rtn("_lightMapImageFromData_block_invoke", "PILocalLightHDR.m", 57, "height == lmHeight");
  }

  v11 = 2 * a6;
  result = [*(a1 + 32) bytes];
  v13 = result;
  if (v11 == a3)
  {
    v14 = *(a1 + 56);

    return memcpy(a2, result, v14);
  }

  else
  {
    for (; v8; --v8)
    {
      result = memcpy(a2, v13, v11);
      v13 += v11;
      a2 += a3;
    }
  }

  return result;
}

uint64_t area_light_stats_from_histogram(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v30 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = fmin(v4 / 255.0, 1.0);
    v8 = *(a1 + 8 * v4);
    v5 = v5 + v8 * log(v7 + 0.00392156863);
    *a2 = v5;
    v6 = v6 + v8 * log(1.0 - v7 + 0.00392156863);
    *(a2 + 8) = v6;
    ++v4;
  }

  while (v4 != 256);
  *a2 = exp(v5);
  *(a2 + 8) = exp(v6);
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = 0;
  v13 = 1.0e-40;
  do
  {
    v13 = v13 + *(a1 + v12) + *(a1 + v12 + 8);
    v12 += 16;
  }

  while (v12 != 2048);
  v14 = 0;
  v15 = 0.0;
  do
  {
    v15 = v15 + *(a1 + v14);
    *&v29[v14] = v15 / v13;
    v14 += 8;
  }

  while (v14 != 2048);
  v16 = 0;
  v17 = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  do
  {
    v23 = *&v29[8 * v16];
    if (v23 >= 0.001 && v22 == 0.0)
    {
      v22 = v16 / 255.0;
    }

    if (v23 >= 0.02 && v21 == 0.0)
    {
      v21 = v16 / 255.0;
      *(a2 + 16) = v21;
    }

    if (v23 >= 0.1 && v20 == 0.0)
    {
      v20 = v16 / 255.0;
      *(a2 + 24) = v20;
    }

    if (v23 >= 0.25 && v19 == 0.0)
    {
      v19 = v16 / 255.0;
      *(a2 + 32) = v19;
    }

    if (v23 >= 0.5 && v18 == 0.0)
    {
      v18 = v16 / 255.0;
      *(a2 + 40) = v18;
    }

    if (v23 >= 0.98 && v17 == 0.0)
    {
      v17 = v16 / 255.0;
      *(a2 + 48) = v17;
    }

    if (v23 >= 1.0 && *(a2 + 72) == 0.0)
    {
      *(a2 + 72) = v16 / 255.0;
    }

    ++v16;
  }

  while (v16 != 256);
  *(a2 + 64) = v22 * ((sqrt(v22) * -0.65 + 1.0) * 0.85);
  v24 = 0.6 - v18 - v19;
  if (v11 >= 0.8 || *(a2 + 72) >= 1.0)
  {
    v25 = v24 * 0.9;
  }

  else
  {
    v25 = v24 + fmin(0.8 - v11, 0.2);
  }

  v26 = v18 + v19;
  if (v26 > 0.6)
  {
    if (v17 >= 1.0)
    {
      v27 = -0.4;
    }

    else
    {
      v27 = -0.7;
    }

    v25 = v26 + v27;
  }

  v28 = fmax(v25, 0.1);
  if (v21 <= 0.015 || v17 <= 0.95 || v18 <= 0.14)
  {
    if (v21 > 0.055)
    {
      v28 = -v28;
    }
  }

  else
  {
    v28 = -v28;
  }

  *(a2 + 56) = v28 * 0.68;
  return result;
}

id arealight_coeffs_from_stats(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * a2];
  v5 = [v4 mutableBytes];
  if (v2)
  {
    v12 = (v5 + 1);
    do
    {
      polyfit_stats(&v14, a1, v6, v7, v8, v9, v10, v11);
      v7.i32[0] = v15;
      v6 = (v14.f32[0] + 1.2) * 0.29412 * 255.0;
      *(v12 - 1) = llround(v6);
      *&v6 = *v7.i32 * 255.0;
      *v12 = llroundf(*v7.i32 * 255.0);
      v12 += 2;
      a1 += 80;
      --v2;
    }

    while (v2);
  }

  return v4;
}

id average_light_coeffs_from_stats(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2];
  v5 = [v4 mutableBytes];
  if (a2)
  {
    v12 = 0.0;
    v13 = a2;
    v14 = 0.0;
    do
    {
      polyfit_stats(&v16, a1, v6, v7, v8, v9, v10, v11);
      LODWORD(v6) = v16.i32[0];
      *v7.i32 = v17;
      v14 = v14 + v16.f32[0];
      v12 = v12 + v17;
      a1 += 80;
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0.0;
    v12 = 0.0;
  }

  *v5 = llround(((v14 / a2) + 1.2) * 0.29412 * 255.0);
  v5[1] = llroundf((v12 / a2) * 255.0);

  return v4;
}

float32_t polyfit_stats(float32x2_t *a1, uint64_t a2, double a3, int8x16_t a4, double a5, double a6, float32x4_t a7, double a8)
{
  v8 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0x3EDEB85200000000;
  v32 = 1065353216;
  v9 = *(a2 + 40);
  a7.i32[1] = -1075629261;
  if (v9 >= 0.435)
  {
    v10 = (v9 + -0.435) * -0.6 + 0.435;
  }

  else
  {
    v10 = (0.435 - v9) * 0.6 + 0.435;
  }

  v30[0] = 0;
  v11 = v10;
  *&v30[1] = v11;
  v30[2] = 1065353216;
  v12 = 0uLL;
  a4.i64[0] = 0;
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    a7.i32[0] = *(&v31 + v8 * 4);
    *a4.i32 = *a4.i32 + a7.f32[0];
    v15 = *&v30[v8];
    v16 = a7;
    *&v16.i32[1] = v15;
    v17 = vzip1q_s32(v16, v16);
    v17.i32[2] = a7.i32[0];
    v13 = v13 + (a7.f32[0] * v15);
    a7.f32[1] = a7.f32[0] * a7.f32[0];
    a7.f32[2] = a7.f32[0] * (a7.f32[0] * a7.f32[0]);
    v14 = v14 + v15;
    a7.f32[3] = a7.f32[0] * a7.f32[0];
    v12 = vmlaq_f32(v12, v17, a7);
    ++v8;
  }

  while (v8 != 3);
  __asm { FMOV            V4.4S, #3.0 }

  _Q4.i32[1] = a4.i32[0];
  _Q4.i64[1] = __PAIR64__(LODWORD(v14), v12.u32[0]);
  v23 = vextq_s8(vextq_s8(a4, a4, 4uLL), v12, 0xCuLL);
  v23.f32[3] = v13;
  *&a8 = v12.f32[0] / 3.0;
  *a4.i32 = *a4.i32 / 3.0;
  v24 = vmlsq_lane_f32(v23, _Q4, *a4.i8, 0);
  v25 = vmlsq_lane_f32(v12, _Q4, *&a8, 0);
  v26 = vmlsq_lane_f32(v25, v24, *&vdivq_f32(v25, v24), 1);
  v27 = vmlsq_laneq_f32(v24, v26, vdivq_f32(v24, v26), 2);
  v26.i64[0] = vextq_s8(v26, v26, 8uLL).u64[0];
  v28 = vzip2_s32(*v26.f32, *&vextq_s8(v27, v27, 8uLL));
  v26.i32[1] = v27.i32[1];
  *a1 = vdiv_f32(v28, *v26.f32);
  result = *(a2 + 48);
  a1[1].f32[0] = result;
  return result;
}

id getVCPMediaAnalysisServiceClass_20099()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMediaAnalysisServiceClass_softClass_20100;
  v7 = getVCPMediaAnalysisServiceClass_softClass_20100;
  if (!getVCPMediaAnalysisServiceClass_softClass_20100)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVCPMediaAnalysisServiceClass_block_invoke_20101;
    v3[3] = &unk_1E82AC930;
    v3[4] = &v4;
    __getVCPMediaAnalysisServiceClass_block_invoke_20101(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C77AA268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVCPMediaAnalysisServiceClass_block_invoke_20101(uint64_t a1)
{
  MediaAnalysisLibrary_20102();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VCPMediaAnalysisService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPMediaAnalysisServiceClass_softClass_20100 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalysisServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PIParallaxAsset.m" lineNumber:26 description:{@"Unable to find class %s", "VCPMediaAnalysisService"}];

    __break(1u);
  }
}

void *MediaAnalysisLibrary_20102()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_20112)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke_20113;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82ABA98;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_20112 = _sl_dlopen();
  }

  v0 = MediaAnalysisLibraryCore_frameworkLibrary_20112;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_20112)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PIParallaxAsset.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_20113()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_20112 = result;
  return result;
}

void sub_1C77AABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getMediaAnalysisResultsKey_20123()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMediaAnalysisResultsKeySymbolLoc_ptr_20140;
  v9 = getMediaAnalysisResultsKeySymbolLoc_ptr_20140;
  if (!getMediaAnalysisResultsKeySymbolLoc_ptr_20140)
  {
    v1 = MediaAnalysisLibrary_20102();
    v7[3] = dlsym(v1, "MediaAnalysisResultsKey");
    getMediaAnalysisResultsKeySymbolLoc_ptr_20140 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultsKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PIParallaxAsset.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1C77AAD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisSettlingEffectsGatingResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id NUAssertLogger_20125()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_185);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void *__getMediaAnalysisResultQualityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisResultQualityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultQualityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultsKeySymbolLoc_block_invoke_20141(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultsKeySymbolLoc_ptr_20140 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C77AB438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C77AB748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultAttributesKeySymbolLoc_block_invoke_20151(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisResultAttributesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultAttributesKeySymbolLoc_ptr_20150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisResultPetsBoundsAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisPetsResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisPetsResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisPetsResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisPetsFaceResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_20102();
  result = dlsym(v2, "MediaAnalysisPetsFaceResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisPetsFaceResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id NUAssertLogger_20290()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20325);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C77ACF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PIMsgImageBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C77AD4AC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C77AD794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20523(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C77ADC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__39(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C77AED1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MsgMatrix<double>::AppendRow<double>(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a1 != 3)
  {
    v17 = NUAssertLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "num == w"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v25;
        v30 = 2114;
        v31 = v27;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
LABEL_25:
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v4 = 0;
  v5 = *(a1 + 16);
  do
  {
    v6 = *(a1 + 24);
    if (v5 >= v6)
    {
      v7 = *(a1 + 8);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        goto LABEL_25;
      }

      v11 = v6 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v12);
      }

      v13 = (v5 - v7) >> 3;
      v14 = (8 * v9);
      v15 = (8 * v9 - 8 * v13);
      *v14 = *(a2 + v4);
      v5 = (v14 + 1);
      memcpy(v15, v7, v8);
      v16 = *(a1 + 8);
      *(a1 + 8) = v15;
      *(a1 + 16) = v5;
      *(a1 + 24) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = *(a2 + v4);
      v5 += 8;
    }

    *(a1 + 16) = v5;
    v4 += 8;
  }

  while (v4 != 24);
  ++*(a1 + 4);
}

uint64_t MsgMatrix<double>::operator()(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3 <= a2 || a1[1] <= a3)
  {
    v7 = NUAssertLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "xi < w && yi < h"];
      *buf = 138543362;
      v27 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v13 = dispatch_get_specific(*v9);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = v15;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
LABEL_17:
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v22;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_20:

    _NUAssertFailHandler();
    __break(1u);
  }

  v4 = a2 + v3 * a3;
  v5 = *(a1 + 1);
  if (v4 >= (*(a1 + 2) - v5) >> 3)
  {
    v16 = NUAssertLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "index < data.size()"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v19 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger();
    v20 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!v19)
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v20)
    {
      v23 = dispatch_get_specific(*v18);
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v27 = v23;
      v28 = 2114;
      v29 = v25;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  return v5 + 8 * v4;
}

void *MsgMatrix<double>::T(unsigned int *a1, unsigned int *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v4;
  a1[1] = v5;
  result = std::vector<double>::vector[abi:ne200100](a1 + 1, v5 * v4);
  v7 = a2[1];
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 1);
    v10 = *(a1 + 1);
    v11 = *a2;
    v12 = 8 * *a1;
    do
    {
      v13 = v9;
      v14 = v10;
      v15 = v11;
      if (v11)
      {
        do
        {
          v16 = *v13++;
          *v14 = v16;
          v14 = (v14 + v12);
          --v15;
        }

        while (v15);
      }

      ++v8;
      ++v10;
      v9 += v11;
    }

    while (v8 != v7);
  }

  return result;
}

void sub_1C77AF6A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id PIParallaxDefaultSpatialPhotoProducer()
{
  if (PIParallaxDefaultSpatialPhotoProducer_onceToken != -1)
  {
    dispatch_once(&PIParallaxDefaultSpatialPhotoProducer_onceToken, &__block_literal_global_20804);
  }

  v1 = defaultSpatialPhotoProducer;

  return v1;
}

void __PIParallaxDefaultSpatialPhotoProducer_block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getPNParallaxSpatialPhotoProducerClass_softClass;
  v8 = getPNParallaxSpatialPhotoProducerClass_softClass;
  if (!getPNParallaxSpatialPhotoProducerClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getPNParallaxSpatialPhotoProducerClass_block_invoke;
    v4[3] = &unk_1E82AC930;
    v4[4] = &v5;
    __getPNParallaxSpatialPhotoProducerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = defaultSpatialPhotoProducer;
  defaultSpatialPhotoProducer = v2;
}

void sub_1C77B109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPNParallaxSpatialPhotoProducerClass_block_invoke(uint64_t a1)
{
  if (!PhotosIntelligenceLibraryCore_frameworkLibrary_20806)
  {
    PhotosIntelligenceLibraryCore_frameworkLibrary_20806 = _sl_dlopen();
  }

  result = objc_getClass("PNParallaxSpatialPhotoProducer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPNParallaxSpatialPhotoProducerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosIntelligenceLibraryCore_block_invoke_20807()
{
  result = _sl_dlopen();
  PhotosIntelligenceLibraryCore_frameworkLibrary_20806 = result;
  return result;
}

void sub_1C77B2028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_20960()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20992);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

Class __getIHKFeatureVectorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ImageHarmonizationKitLibraryCore_frameworkLibrary_20972)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ImageHarmonizationKitLibraryCore_block_invoke_20973;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E82ABB18;
    v8 = 0;
    ImageHarmonizationKitLibraryCore_frameworkLibrary_20972 = _sl_dlopen();
  }

  if (!ImageHarmonizationKitLibraryCore_frameworkLibrary_20972)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageHarmonizationKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PISliderNetAdjustmentsRequest.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IHKFeatureVector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIHKFeatureVectorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PISliderNetAdjustmentsRequest.m" lineNumber:29 description:{@"Unable to find class %s", "IHKFeatureVector"}];

LABEL_10:
    __break(1u);
  }

  getIHKFeatureVectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ImageHarmonizationKitLibraryCore_block_invoke_20973()
{
  result = _sl_dlopen();
  ImageHarmonizationKitLibraryCore_frameworkLibrary_20972 = result;
  return result;
}

id NUAssertLogger_21137()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C77B707C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NUAssertLogger_21731()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_21765);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_21851()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_21835);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_22043()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_108);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t smart_tone_stats_from_histogram(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = a3 + a2;
  if (a3 + a2 >= 2)
  {
    v6 = result;
    v7 = 0;
    v8 = a2 + -1.0;
    *(a4 + 72) = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = fmin(v7 / v8, 1.0);
      v12 = v6[v7];
      v9 = v9 + v12 * log(v11 + 0.00392156863);
      *a4 = v9;
      v10 = v10 + v12 * log(1.0 - v11 + 0.00392156863);
      *(a4 + 8) = v10;
      ++v7;
    }

    while (v4 != v7);
    *a4 = exp(v9);
    *(a4 + 8) = exp(v10);
    result = MEMORY[0x1EEE9AC00](v38);
    v14 = (v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = 1.0e-40;
    v16 = v6;
    v17 = v4;
    do
    {
      v18 = *v16++;
      v15 = v15 + v18;
      --v17;
    }

    while (v17);
    v19 = 0.0;
    v20 = v14;
    v21 = v4;
    do
    {
      v22 = *v6++;
      v19 = v19 + v22;
      *v20++ = v19 / v15;
      --v21;
    }

    while (v21);
    v23 = 0;
    v24 = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 32) = 0u;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = v14[v23];
      if (v30 >= 0.001 && v29 == 0.0)
      {
        v29 = v23 / v8;
      }

      if (v30 >= 0.02 && v28 == 0.0)
      {
        v28 = v23 / v8;
        *(a4 + 16) = v28;
      }

      if (v30 >= 0.1 && v27 == 0.0)
      {
        v27 = v23 / v8;
        *(a4 + 24) = v27;
      }

      if (v30 >= 0.25 && v26 == 0.0)
      {
        v26 = v23 / v8;
        *(a4 + 32) = v26;
      }

      if (v30 >= 0.5 && v25 == 0.0)
      {
        v25 = v23 / v8;
        *(a4 + 40) = v25;
      }

      if (v30 >= 0.98 && v24 == 0.0)
      {
        v24 = v23 / v8;
        *(a4 + 48) = v24;
      }

      if (v30 >= 1.0 && *(a4 + 72) == 0.0)
      {
        *(a4 + 72) = v23 / v8;
      }

      ++v23;
    }

    while (v4 != v23);
    *(a4 + 64) = v29 * ((sqrt(v29) * -0.65 + 1.0) * 0.85);
    v31 = 0.6 - v25 - v26;
    v32 = *(a4 + 8);
    if (v32 >= 0.8 || *(a4 + 72) >= 1.0)
    {
      v33 = v31 * 0.9;
    }

    else
    {
      v33 = v31 + fmin(0.8 - v32, 0.2);
    }

    v34 = v25 + v26;
    if (v34 > 0.6)
    {
      if (v24 >= 1.0)
      {
        v35 = -0.4;
      }

      else
      {
        v35 = -0.7;
      }

      v33 = v34 + v35;
    }

    v36 = fmax(v33, 0.1);
    if (v28 <= 0.015 || v24 <= 0.95 || v25 <= 0.14)
    {
      v37 = -v36;
      if (v28 <= 0.055)
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = -v36;
    }

    *(a4 + 56) = v37 * 0.68;
  }

  return result;
}

id NUAssertLogger_22529()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_407);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NURenderLogger_22995()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
  }

  v1 = *MEMORY[0x1E69B3D88];

  return v1;
}

id NUAssertLogger_23757()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1260_23778);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_24177()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_411);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_24364()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_639);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger_24372()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_637);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

void sub_1C77D3928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24387(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C77D4E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose((v64 - 256), 8);
  _Block_object_dispose((v64 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1C77D9610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 224), 8);
  _Block_object_dispose((v51 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C77DDA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_24860()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_25023()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25036);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_25669()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger_25790()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_249);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

double smart_color_adjustments_from_stats(double *a1, double *a2, double result)
{
  *a1 = 0.0;
  a1[1] = 0.0;
  a1[2] = 0.0;
  v3 = a2[1];
  if (result == 0.0 || v3 >= 0.01)
  {
    v4 = 0.0;
    if (result + result > 1.0 - v3)
    {
      v4 = -(1.0 - v3 - result * 2.0) * 0.75;
    }

    if (result >= 0.0)
    {
      v5 = result / 3.0;
      result = result / (fmax(*a2, 0.5) * 3.0);
      if (*a2 <= 0.0)
      {
        result = v5;
      }
    }

    *a1 = fmin(fmax(result, -1.0), 1.0);
    if (a2[3] > 0.75 && *a2 < 0.65 && v3 > 0.9 && *a2 > 0.55)
    {
      v4 = -v4;
    }

    result = fmin(fmax(v4 * 0.5, -1.0), 1.0);
    a1[1] = result;
  }

  return result;
}

id NUAssertLogger_26053()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_183);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t __Block_byref_object_copy__26079(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_26400()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_128_26418);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NUAssertLogger_26558()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_95_26578);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t __Block_byref_object_copy__26627(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

float grainParams(float a1)
{
  if (a1 < 400.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 50.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = log10f(a1);
  v4 = log10f(flt_1C7845E60[v2]);
  return fmaxf(flt_1C7845E70[v2] + ((flt_1C7845E70[v2 + 1] - flt_1C7845E70[v2]) * ((v3 - v4) / (log10f(flt_1C7845E60[v2 + 1]) - v4))), 0.5);
}

id applyGrainParams(void *a1, float a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = grainParams(a2);
  v5 = v4;
  v7 = v6;
  v8 = [a1 imageByApplyingGaussianBlurWithSigma:v3];
  v16[0] = @"inputRadius";
  LODWORD(v9) = v5;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v16[1] = @"inputIntensity";
  v17[0] = v10;
  LODWORD(v11) = v7;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = [v8 imageByApplyingFilter:@"CIUnsharpMask" withInputParameters:v13];

  return v14;
}

unint64_t __generateNoiseImage_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6 != 1536)
  {
    __assert_rtn("generateNoiseImage_block_invoke", "PIPhotoGrainHDR.m", 226, "width==512*3");
  }

  if (a7 != 1536)
  {
    __assert_rtn("generateNoiseImage_block_invoke", "PIPhotoGrainHDR.m", 227, "height==512*3");
  }

  if (a4)
  {
    __assert_rtn("generateNoiseImage_block_invoke", "PIPhotoGrainHDR.m", 228, "x==0");
  }

  if (a5)
  {
    __assert_rtn("generateNoiseImage_block_invoke", "PIPhotoGrainHDR.m", 229, "y==0");
  }

  v7 = 0;
  v8 = a3 << 9;
  v9 = (a2 + 3);
  v10 = (a2 + (a3 << 10) + 1);
  v11 = 0uLL;
  v12 = xmmword_1C7845D60;
  do
  {
    v13 = 0;
    v18 = v10;
    v19 = v9;
    v20 = v7;
    v14 = 1536;
    do
    {
      __src = v7 - 261632 * (v13 / 0x1FF);
      v27 = v11;
      v26 = v11;
      v25 = *(&v11 + 1);
      v15 = &v9[v8];
      v23 = *(&v11 + 1);
      v21[1] = v11;
      v22 = v12;
      v24 = 0x61C8864E7A143579;
      v21[0] = 0;
      XXH64_update(v21, &__src, 8uLL);
      result = XXH64_digest(v21);
      v12 = xmmword_1C7845D60;
      v11 = 0uLL;
      *(v9 - 1) = result;
      *(v9 - 2) = result;
      *(v9 - 3) = result;
      *v9 = -1;
      v9 += 4;
      *(v15 - 1) = result;
      *(v15 - 2) = result;
      *(v15 - 3) = result;
      *v15 = -1;
      v10[1] = result;
      *v10 = result;
      ++v13;
      v7 += 512;
      *(v10 - 1) = result;
      v10[2] = -1;
      v10 += 4;
      --v14;
    }

    while (v14);
    v7 = v20 + 1;
    v9 = &v19[a3];
    v10 = &v18[a3];
  }

  while (v20 != 511);
  return result;
}

id NUAssertLogger_27086()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_27024);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

uint64_t __Block_byref_object_copy__27181(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7801BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPMediaAnalysisServiceClass_block_invoke_27201(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_27208)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MediaAnalysisLibraryCore_block_invoke_27209;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E82AC950;
    v8 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_27208 = _sl_dlopen();
  }

  if (!MediaAnalysisLibraryCore_frameworkLibrary_27208)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PISegmentation.m" lineNumber:32 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VCPMediaAnalysisService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalysisServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PISegmentation.m" lineNumber:33 description:{@"Unable to find class %s", "VCPMediaAnalysisService"}];

LABEL_10:
    __break(1u);
  }

  getVCPMediaAnalysisServiceClass_softClass_27200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_27209()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_27208 = result;
  return result;
}

void sub_1C7803120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_27345()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_27368);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id optionsForFormat(void *a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69B3CB0] currentSoftwareVersion];
  v3 = [v2 platform];
  v4 = [v2 buildNumber];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GU %@ %@", v3, v4];
  v38 = *MEMORY[0x1E696DF68];
  v39[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v7 = [MEMORY[0x1E69B3BF0] RGBAf];
  v8 = [v1 isEqualToPixelFormat:v7];

  if (v8)
  {
    v9 = *MEMORY[0x1E696DDF0];
    v36[0] = *MEMORY[0x1E696D890];
    v36[1] = v9;
    v37[0] = &unk_1F471F288;
    v37[1] = MEMORY[0x1E695E118];
    v10 = *MEMORY[0x1E696D448];
    v36[2] = *MEMORY[0x1E696DD50];
    v36[3] = v10;
    v11 = *MEMORY[0x1E696D450];
    v37[2] = MEMORY[0x1E695E118];
    v37[3] = v11;
    v36[4] = *MEMORY[0x1E696DF28];
    v37[4] = v6;
    v12 = MEMORY[0x1E695DF20];
    v13 = v37;
    v14 = v36;
    v15 = 5;
LABEL_10:
    v28 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    goto LABEL_11;
  }

  v16 = [MEMORY[0x1E69B3BF0] RGBA16];
  v17 = [v1 isEqualToPixelFormat:v16];

  if (v17)
  {
    v18 = *MEMORY[0x1E696DD50];
    v34[0] = *MEMORY[0x1E696D890];
    v34[1] = v18;
    v35[0] = &unk_1F471F2A0;
    v35[1] = MEMORY[0x1E695E118];
    v19 = *MEMORY[0x1E696DF28];
    v34[2] = *MEMORY[0x1E696D448];
    v34[3] = v19;
    v35[2] = *MEMORY[0x1E696D450];
    v35[3] = v6;
    v12 = MEMORY[0x1E695DF20];
    v13 = v35;
    v14 = v34;
LABEL_9:
    v15 = 4;
    goto LABEL_10;
  }

  v20 = [MEMORY[0x1E69B3BF0] ARGB8];
  v21 = [v1 isEqualToPixelFormat:v20];

  if (v21)
  {
    v22 = *MEMORY[0x1E696DD50];
    v32[0] = *MEMORY[0x1E696D890];
    v32[1] = v22;
    v33[0] = &unk_1F471F2B8;
    v33[1] = MEMORY[0x1E695E118];
    v23 = *MEMORY[0x1E696DF28];
    v32[2] = *MEMORY[0x1E696D448];
    v32[3] = v23;
    v33[2] = *MEMORY[0x1E696D450];
    v33[3] = v6;
    v12 = MEMORY[0x1E695DF20];
    v13 = v33;
    v14 = v32;
    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E69B3BF0] BGRA8];
  v25 = [v1 isEqualToPixelFormat:v24];

  if (v25)
  {
    v26 = *MEMORY[0x1E696DD50];
    v30[0] = *MEMORY[0x1E696D890];
    v30[1] = v26;
    v31[0] = &unk_1F471F2B8;
    v31[1] = MEMORY[0x1E695E118];
    v27 = *MEMORY[0x1E696DF28];
    v30[2] = *MEMORY[0x1E696D448];
    v30[3] = v27;
    v31[2] = *MEMORY[0x1E696D450];
    v31[3] = v6;
    v12 = MEMORY[0x1E695DF20];
    v13 = v31;
    v14 = v30;
    goto LABEL_9;
  }

  v28 = 0;
LABEL_11:

  return v28;
}

id NUAssertLogger_27584()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_389);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

id NULogger_27701()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
  }

  v1 = *MEMORY[0x1E69B3D80];

  return v1;
}

id NUAssertLogger_28143()
{
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_240);
  }

  v1 = *MEMORY[0x1E69B3D70];

  return v1;
}

void sub_1C780F89C(_Unwind_Exception *a1)
{
  if (STACK[0xB10])
  {
    operator delete(STACK[0xB10]);
  }

  v2 = &STACK[0xB00];
  v3 = -72;
  while (1)
  {
    v4 = *(v2 - 1);
    if (v4)
    {
      *v2 = v4;
      operator delete(v4);
    }

    v2 -= 3;
    v3 += 24;
    if (!v3)
    {
      if (STACK[0xAB0])
      {
        operator delete(STACK[0xAB0]);
      }

      if (STACK[0xA98])
      {
        operator delete(STACK[0xA98]);
      }

      if (STACK[0xA80])
      {
        operator delete(STACK[0xA80]);
      }

      if (STACK[0xA68])
      {
        operator delete(STACK[0xA68]);
      }

      _Unwind_Resume(a1);
    }
  }
}