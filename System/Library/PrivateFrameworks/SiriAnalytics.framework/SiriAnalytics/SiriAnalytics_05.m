uint64_t sub_1D98CEB68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D988AED8;

  return sub_1D98CE7E0(a1, v4);
}

uint64_t sub_1D98CEC3C()
{
  sub_1D98CEE80();
  result = sub_1D992B964();
  if (!v0)
  {
    v2 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6999BA8], v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D98CEDF4()
{
  result = qword_1ECB47B90;
  if (!qword_1ECB47B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B90);
  }

  return result;
}

id sub_1D98CEE48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 readBOOL];
  *v2 = 0;
  return result;
}

unint64_t sub_1D98CEE80()
{
  result = qword_1ECB47B88;
  if (!qword_1ECB47B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B88);
  }

  return result;
}

unint64_t sub_1D98CEED4()
{
  result = qword_1ECB47B98;
  if (!qword_1ECB47B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B98);
  }

  return result;
}

uint64_t sub_1D98CEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D98CEF68, 0, 0);
}

uint64_t sub_1D98CEF68()
{
  OUTLINED_FUNCTION_18();
  v3 = v0[2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v12 = v0[2];
    }

    v4 = sub_1D992BC94();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[4] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v0[5] = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](0);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      OUTLINED_FUNCTION_14_9(v6);
      OUTLINED_FUNCTION_0_38();
      sub_1D98D0A94(v9, v10, v11);
      OUTLINED_FUNCTION_7_13();
      sub_1D992B814();
      v4 = OUTLINED_FUNCTION_3_14();
    }

    return MEMORY[0x1EEE6DFA0](v4, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D98CF070()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  sub_1D98CFDCC(*(v0 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1D98CF0D8, 0, 0);
}

uint64_t sub_1D98CF0D8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  if (v1 + 1 == v2)
  {
    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v7)
    {
      v8 = *(v6 + 8 * v5 + 32);
    }

    else
    {
      v8 = MEMORY[0x1DA73A2C0](v5);
    }

    OUTLINED_FUNCTION_14_9(v8);
    OUTLINED_FUNCTION_0_38();
    sub_1D98D0A94(v9, v10, v11);
    OUTLINED_FUNCTION_7_13();
    v12 = sub_1D992B814();
    v13 = OUTLINED_FUNCTION_3_14(v12);

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1D98CF1B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_5_16(v6);

  return sub_1D98CEF48(v7, v8, v9, v10, v11);
}

void sub_1D98CF2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v3 + OBJC_IVAR___SiriAnalyticsTailToOSLog_underlying);
  if (v12)
  {
    v13 = sub_1D992B874();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;
    v14[5] = v12;

    sub_1D98C8F14(0, 0, v11, a3, v14);
  }
}

uint64_t sub_1D98CF39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D98CF3BC, 0, 0);
}

uint64_t sub_1D98CF3BC()
{
  OUTLINED_FUNCTION_18();
  v3 = v0[2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v12 = v0[2];
    }

    v4 = sub_1D992BC94();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[4] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v0[5] = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](0);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      OUTLINED_FUNCTION_14_9(v6);
      OUTLINED_FUNCTION_0_38();
      sub_1D98D0A94(v9, v10, v11);
      OUTLINED_FUNCTION_7_13();
      sub_1D992B814();
      v4 = OUTLINED_FUNCTION_4_17();
    }

    return MEMORY[0x1EEE6DFA0](v4, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D98CF4C4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  sub_1D98CFFE0(*(v0 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1D98CF52C, 0, 0);
}

uint64_t sub_1D98CF52C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  if (v1 + 1 == v2)
  {
    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_11_11();
    if (v7)
    {
      v8 = *(v6 + 8 * v5 + 32);
    }

    else
    {
      v8 = MEMORY[0x1DA73A2C0](v5);
    }

    OUTLINED_FUNCTION_14_9(v8);
    OUTLINED_FUNCTION_0_38();
    sub_1D98D0A94(v9, v10, v11);
    OUTLINED_FUNCTION_7_13();
    v12 = sub_1D992B814();
    v13 = OUTLINED_FUNCTION_4_17(v12);

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98CF650()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_5_16(v6);

  return sub_1D98CF39C(v7, v8, v9, v10, v11);
}

uint64_t sub_1D98CF720(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, void (*a6)(uint64_t))
{
  sub_1D986E35C(0, a4, a5);
  v8 = sub_1D992B7B4();
  v9 = a1;
  a6(v8);
}

id TailToOSLogShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TailToOSLogShim.init()()
{
  v1 = OBJC_IVAR___SiriAnalyticsTailToOSLog_underlying;
  type metadata accessor for TailToOSLog();
  swift_allocObject();
  sub_1D98CF8C8();
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TailToOSLogShim();
  return objc_msgSendSuper2(&v4, sel_init);
}

id TailToOSLogShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TailToOSLogShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D98CF8C8()
{
  v1 = sub_1D992BA34();
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = sub_1D992BB04();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v12 = sub_1D992B544();
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  v16 = byte_1ED8BFBD1;
  if (qword_1ECB47D48 != -1)
  {
    swift_once();
  }

  v17 = qword_1ECB496B8;
  v18 = sub_1D992B614();
  v19 = [v17 BOOLForKey_];

  if ((v16 & v19) == 1)
  {
    sub_1D986E35C(0, &qword_1ECB47928, 0x1E69E9620);
    sub_1D992B524();
    sub_1D98D0A94(&qword_1ECB47930, 255, MEMORY[0x1E69E8120]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D18, &qword_1D9933BA8);
    sub_1D98D0A30();
    sub_1D992BC44();
    (*(v4 + 104))(v9, *MEMORY[0x1E69E8098], v1);
    *(v0 + 16) = sub_1D992BB14();
    if (qword_1ECB47AE8 != -1)
    {
      OUTLINED_FUNCTION_1_24();
    }

    OUTLINED_FUNCTION_7_14();
    sub_1D986A454(v20, v21, v22, v23, v24, v25);
  }

  else
  {
    if (qword_1ECB47AE8 != -1)
    {
      OUTLINED_FUNCTION_1_24();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000030, 0x80000001D993B060);
    if (v16)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v16)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    MEMORY[0x1DA739C30](v26, v27);

    MEMORY[0x1DA739C30](0xD00000000000001DLL, 0x80000001D993B0A0);
    if (v19)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (v19)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    MEMORY[0x1DA739C30](v28, v29);

    OUTLINED_FUNCTION_7_14();
    sub_1D986A454(v30, v31, v32, v33, v34, v35);

    type metadata accessor for TailToOSLog();
    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98CFDCC(void *a1)
{
  v2 = [a1 logicalTimestamp];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 nanoSecondsSinceBoot];
    v5 = [v3 clockIdentifier];
    v6 = sub_1D992AE84();
    v18[1] = v18;
    v7 = OUTLINED_FUNCTION_6(v6);
    v9 = v8;
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1D992AE64();

    v13 = [a1 messageUUID];
    MEMORY[0x1EEE9AC00](v13);
    sub_1D992AE64();

    v14 = [a1 underlyingMessage];
    sub_1D98D07B8(v4, v18 - v12, v18 - v12, v14);

    v15 = *(v9 + 8);
    v15(v18 - v12, v6);
    v15(v18 - v12, v6);
    OUTLINED_FUNCTION_7();
  }

  else
  {
    sub_1D98D0268([a1 underlyingMessage]);
    OUTLINED_FUNCTION_7();
  }
}

void sub_1D98CFFE0(void *a1)
{
  v1 = [a1 unwrap];
  if (v1)
  {
    v2 = v1;
    sub_1D98D0268(v1);
  }
}

void sub_1D98D003C()
{
  v0 = sub_1D992AE84();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  sub_1D992B084();
  if (__swift_getEnumTagSinglePayload(v12, 1, v0) == 1)
  {
    sub_1D987625C(v12);
    v13 = sub_1D992B054();
    if (v13)
    {
      v14 = v13;
      sub_1D98D0268(v13);

      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  (*(v3 + 32))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v0);
  v15 = sub_1D992B0B4();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_1D992B154();

  v18 = sub_1D992B0B4();
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992B134();

  v21 = sub_1D992B054();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v22 = v21;
  sub_1D98D07B8(v17, v20, v6, v21);

  v23 = *(v3 + 8);
  v23(v20, v0);
  v23(v6, v0);
}

void sub_1D98D0268(void *a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_7_13();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 metadata];
    if (v5 && (v6 = v5, v7 = [v5 timestamp], v6, v7))
    {
      v47 = [v7 timestampInNanoseconds];

      v50 = v46;
      v51 = sub_1D992AE84();
      v8 = OUTLINED_FUNCTION_6(v51);
      v49 = v9;
      v11 = *(v10 + 64);
      MEMORY[0x1EEE9AC00](v8);
      v48 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v13 = OUTLINED_FUNCTION_9(v12);
      v15 = *(v14 + 64);
      v16 = MEMORY[0x1EEE9AC00](v13);
      v18 = v46 - v17;
      v19 = [v3 metadata];
      if (!v19 || (v20 = v19, v21 = [v19 timestamp], v20, !v21) || (v22 = objc_msgSend(v21, sel_clockIdentifier), v21, !v22))
      {

        __swift_storeEnumTagSinglePayload(v18, 1, 1, v51);
        goto LABEL_11;
      }

      sub_1D992BA04();

      v23 = v51;
      if (__swift_getEnumTagSinglePayload(v18, 1, v51) == 1)
      {

LABEL_11:
        sub_1D987625C(v18);
        goto LABEL_12;
      }

      v29 = v18;
      v30 = *(v49 + 32);
      v31 = v30(v48, v29, v23);
      v46[1] = v46;
      MEMORY[0x1EEE9AC00](v31);
      v32 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = [v3 metadata];
      if (!v35 || (v36 = v35, v37 = [v35 eventId], v36, !v37))
      {

        v39 = v51;
        (*(v49 + 8))(v48, v51);
        __swift_storeEnumTagSinglePayload(v34, 1, 1, v39);
        goto LABEL_27;
      }

      sub_1D992BA04();

      v38 = v51;
      if (__swift_getEnumTagSinglePayload(v34, 1, v51) == 1)
      {
        (*(v49 + 8))(v48, v38);

LABEL_27:
        sub_1D987625C(v34);
        goto LABEL_12;
      }

      v30(v32, v34, v38);
      v52 = &unk_1F552B1B8;
      v40 = swift_dynamicCastObjCProtocolConditional();
      if (v40)
      {
        v41 = [v40 innerEvent];
        if (v41)
        {
          v42 = v41;
          v43 = v48;
          sub_1D98D07B8(v47, v48, v32, v41);

          v44 = *(v49 + 8);
          v44(v32, v38);
          v44(v43, v38);
          goto LABEL_21;
        }
      }

      v45 = *(v49 + 8);
      v45(v32, v38);
      v45(v48, v38);
    }

    else
    {
    }
  }

LABEL_12:
  v24 = sub_1D98D09CC(a1);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 8200315;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE300000000000000;
  }

  if (qword_1ECB47AE8 != -1)
  {
    OUTLINED_FUNCTION_1_24();
  }

  swift_getObjectType();
  v53 = sub_1D992C104();
  v54 = v28;
  MEMORY[0x1DA739C30](32, 0xE100000000000000);
  MEMORY[0x1DA739C30](v26, v27);

  sub_1D986A454(v53, v54, 0xD000000000000061, 0x80000001D993AFB0, 0x293A5F286C696174, 0xE800000000000000);

LABEL_21:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98D07B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = sub_1D98D09CC(a4);
  v6 = v5;
  if (qword_1ECB47AE8 != -1)
  {
    OUTLINED_FUNCTION_1_24();
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 8200315;
  }

  sub_1D992BD64();
  v9 = sub_1D992BF34();
  v11 = v10;

  MEMORY[0x1DA739C30](15392, 0xE200000000000000);
  sub_1D992AE84();
  sub_1D98A19C4();
  v12 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v12);

  MEMORY[0x1DA739C30](540680254, 0xE400000000000000);
  swift_getObjectType();
  v13 = sub_1D992C104();
  MEMORY[0x1DA739C30](v13);

  MEMORY[0x1DA739C30](60, 0xE100000000000000);
  v14 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v14);

  MEMORY[0x1DA739C30](8254, 0xE200000000000000);
  MEMORY[0x1DA739C30](v8, v7);

  sub_1D986A454(v9, v11, 0xD000000000000061, 0x80000001D993AFB0, 0xD000000000000034, 0x80000001D993B020);
}

uint64_t sub_1D98D09CC(void *a1)
{
  v1 = [a1 formattedJsonBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992B624();

  return v3;
}

unint64_t sub_1D98D0A30()
{
  result = qword_1ECB47998;
  if (!qword_1ECB47998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48D18, &qword_1D9933BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47998);
  }

  return result;
}

uint64_t sub_1D98D0A94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D98D0AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = 0xE000000000000000;
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a3 + 49);
  do
  {
    v6 = *(v5 - 17);
    v7 = *(v5 - 9);
    v8 = *(v5 - 1);
    v9 = *v5;

    sub_1D992BD64();

    strcpy(v17, "ALTER TABLE ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x1DA739C30](a1, a2);
    MEMORY[0x1DA739C30](0x4C4F432044444120, 0xEC000000204E4D55);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x4C554E20544F4E20;
    }

    if (v9)
    {
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = 0xE90000000000004CLL;
    }

    v16 = v6;

    MEMORY[0x1DA739C30](32, 0xE100000000000000);
    v12 = 0xE400000000000000;
    v13 = 1415071060;
    switch(v8)
    {
      case 1:
        v12 = 0xE700000000000000;
        v13 = 0x434952454D554ELL;
        break;
      case 2:
        v12 = 0xE700000000000000;
        v13 = 0x52454745544E49;
        break;
      case 3:
        v13 = 1279346002;
        break;
      case 4:
        v13 = 1112493122;
        break;
      default:
        break;
    }

    MEMORY[0x1DA739C30](v13, v12);

    MEMORY[0x1DA739C30](v10, v11);

    MEMORY[0x1DA739C30](v16, v7);

    MEMORY[0x1DA739C30](2619, 0xE200000000000000);
    MEMORY[0x1DA739C30](v17[0], v17[1]);

    v5 += 24;
    --v3;
  }

  while (v3);
  return v18;
}

uint64_t sub_1D98D0D10(uint64_t *a1, int a2)
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

uint64_t sub_1D98D0D50(uint64_t result, int a2, int a3)
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

id sub_1D98D0D9C()
{
  v0 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v1 = [v0 Ledger];
  swift_unknownObjectRelease();
  v2 = [v1 TaskStatus];
  swift_unknownObjectRelease();
  v3 = [v2 source];
  return v2;
}

uint64_t sub_1D98D0E54(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000018;
  v3 = "CT:SiriAnalytics-1\n";
  v4 = "CT:SiriAnalytics-1\n";
  v5 = a1;
  v6 = 0xD000000000000018;
  switch(v5)
  {
    case 1:
      v4 = "com.apple.siri.telemetry";
      break;
    case 2:
      v4 = "com.apple.siri.unordered";
      v6 = 0xD00000000000001DLL;
      break;
    case 3:
      v4 = "com.apple.siri.ordered.joined";
      v6 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "com.apple.siri.telemetry";
      break;
    case 2:
      v3 = "com.apple.siri.unordered";
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      v3 = "com.apple.siri.ordered.joined";
      v2 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D992BF64();
  }

  return v8 & 1;
}

BOOL sub_1D98D0F74(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

uint64_t sub_1D98D0FD4(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *v2 <= a1 && v2[1] >= a1;
  v6 = v5;
  v5 = v4 >= a1;
  v7 = v4 <= a1;
  v8 = v5;
  if (*(v2 + 16) != 1)
  {
    v7 = v8;
  }

  if (*(v2 + 16))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1D98D101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1D992BB34();
  if (result)
  {
    v7 = result;
    sub_1D992B1A4();
    v8 = a5;
    v9 = sub_1D992BBD4();

    return v9 & 1;
  }

  return result;
}

uint64_t sub_1D98D108C()
{
  result = sub_1D992BB34();
  if (result)
  {
    v1 = result;
    sub_1D98E8704();
    v3 = v2;

    return v3 & 1;
  }

  return result;
}

uint64_t sub_1D98D10D8()
{
  v3 = sub_1D992AE84();
  v4 = OUTLINED_FUNCTION_3_15(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_24();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5_17(v9, v15);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_1D987625C(v2);
    v1 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_18();
    v11(v10);
    sub_1D992AE54();
    v12 = OUTLINED_FUNCTION_6_18();
    v13(v12);
  }

  return v1 & 1;
}

uint64_t sub_1D98D1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1D992AE84();
  v9 = OUTLINED_FUNCTION_3_15(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_24();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_5_17(v14, v20);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_1D987625C(v6);
    a5 = 0;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_4_18();
    v16(v15);
    sub_1D98E8494();
    v17 = OUTLINED_FUNCTION_6_18();
    v18(v17);
  }

  return a5 & 1;
}

uint64_t sub_1D98D1338(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D98D1950(v5, v23);
  if (v24)
  {
    if (v24 != 1)
    {
      sub_1D986D53C(v23, v20);
      v17 = v21;
      v18 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v16 = (*(v18 + 8))(a1, a2 & 1, a3, a4, v17, v18) ^ 1;
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v16 & 1;
    }

    v11 = *&v23[0];
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_1_25();
    v13 = sub_1D98D0F74(sub_1D98D1988, v12, v11);
  }

  else
  {
    v14 = *&v23[0];
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_1_25();
    v13 = sub_1D990B128(sub_1D98D19D0, v15, v14);
  }

  v16 = v13;

  return v16 & 1;
}

uint64_t sub_1D98D1494(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  return (*(v10 + 8))(a2, a3 & 1, a4, a5, v9, v10) & 1;
}

uint64_t sub_1D98D152C(int a1, int a2, int a3, id a4, uint64_t a5)
{
  v6 = [a4 getAnyEventType];

  return sub_1D98E8654(v6, a5);
}

uint64_t sub_1D98D1578(void *a1)
{
  v1 = a1;
  v2 = DUSchemaDUEvent.componentName.getter();

  return v2;
}

uint64_t DUSchemaDUEvent.componentName.getter()
{
  v1.super_class = MEMORY[0x1E69CEAC8];
  LODWORD(result) = objc_msgSendSuper2(&v1, sel_componentName);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

id DUSchemaDUEvent.getComponentId()()
{
  v4.super_class = MEMORY[0x1E69CEAC8];
  v1 = objc_msgSendSuper2(&v4, sel_getComponentId);
  if (!v1)
  {
    v2 = [v0 speechAudioRecord];
    v1 = [v2 interactionId];
  }

  return v1;
}

id sub_1D98D1678(void *a1)
{
  v1 = a1;
  v2 = DUSchemaDUEvent.getComponentId()();

  return v2;
}

uint64_t type metadata accessor for MessageOnClock()
{
  result = qword_1ECB48D20;
  if (!qword_1ECB48D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98D1730()
{
  result = sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimestampRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for TimestampRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D98D1880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98D18BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D98D1908(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t static DataClassificationTag.searchRequest(requestIdentifier:optedInToSearchSharing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = &type metadata for SearchRequestDataClassification;
  *(a3 + 32) = sub_1D98D1B7C();
  *a3 = a2;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  *v14 = 1;
  v17 = type metadata accessor for ComponentId(0);
  result = (*(v7 + 32))(&v15[*(v17 + 20)], v11, v6);
  v15[v16] = 1;
  *(a3 + 40) = v13 | 0x2000000000000000;
  return result;
}

unint64_t sub_1D98D1B7C()
{
  result = qword_1ECB47B58;
  if (!qword_1ECB47B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B58);
  }

  return result;
}

uint64_t static DataClassificationTag.searchRequest(componentName:uuid:joined:optedInToSearchSharing:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = &type metadata for SearchRequestDataClassification;
  *(a5 + 32) = sub_1D98D1B7C();
  *a5 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(type metadata accessor for ComponentId(0) + 20);
  v16 = sub_1D992AE84();
  result = (*(*(v16 - 8) + 16))(&v13[v15], a2, v16);
  *v13 = a1;
  v13[v14] = a3;
  *(a5 + 40) = v11 | 0x2000000000000000;
  return result;
}

unint64_t sub_1D98D1CB0(uint64_t a1)
{
  result = sub_1D98D1CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D98D1CD8()
{
  result = qword_1ECB47B60;
  if (!qword_1ECB47B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRequestDataClassification(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D98D1E08()
{
  OUTLINED_FUNCTION_12_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  sub_1D988C450(v2, v1);
  v9 = sub_1D992B874();
  v10 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v1);
  }

  else
  {
    sub_1D992B864();
    OUTLINED_FUNCTION_17_7();
    (*(v13 + 8))(v1, v9);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = v15;
    sub_1D992B814();
    OUTLINED_FUNCTION_14_10();
    if (v4)
    {
LABEL_6:
      sub_1D992B6B4();
      OUTLINED_FUNCTION_0_0();
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      *(v17 + 24) = v0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
      OUTLINED_FUNCTION_18_6();
      if (v18)
      {
        OUTLINED_FUNCTION_10_10();
      }

      OUTLINED_FUNCTION_9_10(v18);
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_20_4();

      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C30, &qword_1D9933238);
  OUTLINED_FUNCTION_18_6();
  if (v20)
  {
    OUTLINED_FUNCTION_11_12();
  }

  return swift_task_create();
}

uint64_t sub_1D98D2028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_0();
  sub_1D988C450(a3, v5);
  v14 = sub_1D992B874();
  v15 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v5);
  }

  else
  {
    sub_1D992B864();
    (*(*(v14 - 8) + 8))(v5, v14);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = v19;
    sub_1D992B814();
    OUTLINED_FUNCTION_14_10();
    if (a2)
    {
LABEL_6:
      sub_1D992B6B4();
      OUTLINED_FUNCTION_0_0();
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v18 | v20)
      {
        OUTLINED_FUNCTION_10_10();
      }

      else
      {
        v22 = 0;
      }

      OUTLINED_FUNCTION_9_10(v22);
      swift_task_create();
      OUTLINED_FUNCTION_20_4();

      return v20;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v18 | v20)
  {
    OUTLINED_FUNCTION_11_12();
  }

  return swift_task_create();
}

uint64_t sub_1D98D2268()
{
  OUTLINED_FUNCTION_12_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  sub_1D988C450(v2, v1);
  v9 = sub_1D992B874();
  v10 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v1);
  }

  else
  {
    sub_1D992B864();
    OUTLINED_FUNCTION_17_7();
    (*(v13 + 8))(v1, v9);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = v15;
    sub_1D992B814();
    OUTLINED_FUNCTION_14_10();
    if (v4)
    {
LABEL_6:
      sub_1D992B6B4();
      OUTLINED_FUNCTION_0_0();
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      *(v17 + 24) = v0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D40, &qword_1D9933F28);
      OUTLINED_FUNCTION_18_6();
      if (v18)
      {
        OUTLINED_FUNCTION_10_10();
      }

      OUTLINED_FUNCTION_9_10(v18);
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_20_4();

      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D40, &qword_1D9933F28);
  OUTLINED_FUNCTION_18_6();
  if (v20)
  {
    OUTLINED_FUNCTION_11_12();
  }

  return swift_task_create();
}

id SiriAnalyticsFirstUnlockObserver.__allocating_init(queue:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_20_4();
  return SiriAnalyticsFirstUnlockObserver.init(queue:)(v2);
}

id SiriAnalyticsFirstUnlockObserver.init(queue:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_queue] = a1;
  type metadata accessor for FirstUnlockObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_wrappedActor] = sub_1D98AF0C0(a1);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriAnalyticsFirstUnlockObserver();
  v3 = a1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D98D2590(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  sub_1D992B874();
  v9 = OUTLINED_FUNCTION_10();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a1;
  v13[6] = a2;

  sub_1D98D2028(0, 0, v2, &unk_1D9933EC0, v13);

  return sub_1D988C380(v2);
}

uint64_t sub_1D98D26A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_1D992B514();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = sub_1D992B544();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D98D27C4, 0, 0);
}

uint64_t sub_1D98D27C4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v0[22] = *(Strong + OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_wrappedActor);

    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_1D98D28D0;

    return sub_1D98AF8E4();
  }

  else
  {
    v5 = v0[20];
    v6 = v0[17];

    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D98D28D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D98D29D8, 0, 0);
}

uint64_t sub_1D98D29D8()
{
  v1 = v0[20];
  v2 = v0[19];
  v16 = v0[21];
  v17 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v15 = *&v16[OBJC_IVAR____TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver_queue];
  OUTLINED_FUNCTION_0_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v0[6] = sub_1D98D32F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D98F9B34;
  v0[5] = &block_descriptor_10;
  v9 = _Block_copy(v0 + 2);

  sub_1D992B534();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1D98D3338();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
  sub_1D98C2AEC();
  sub_1D992BC44();
  MEMORY[0x1DA739FA0](0, v1, v4, v9);
  _Block_release(v9);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v1, v17);

  v10 = v0[7];

  v11 = v0[20];
  v12 = v0[17];

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_1D98D2BC4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_13(v8);
  *v9 = v10;
  v9[1] = sub_1D989EB64;

  return sub_1D98D26A4(a1, v3, v4, v5, v6, v7);
}

id SiriAnalyticsFirstUnlockObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriAnalyticsFirstUnlockObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAnalyticsFirstUnlockObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98D2E64()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 16) = v1;
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D98D2F54;

  return v6(v0 + 32);
}

uint64_t sub_1D98D2F54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_1D98D3054(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D98D2F54;

  return v6(v2 + 32);
}

uint64_t sub_1D98D3148()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98D31D8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98D3268()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_6_16();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D98D32F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D98D3338()
{
  result = qword_1ED8BF418;
  if (!qword_1ED8BF418)
  {
    sub_1D992B514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BF418);
  }

  return result;
}

uint64_t RuntimeService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t RuntimeService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98D33D8()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_10_11();
  v1[20] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D98D34C0;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  OUTLINED_FUNCTION_5_18(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_4_19();
  [v4 fetchKillSwitchEnabledWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D98D34C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D98D3624;
  }

  else
  {
    v5 = sub_1D98D35C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98D35C0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D98D3624()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v3 = v0[21];
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v4 = *v2;
  v5 = v0[11];
  OUTLINED_FUNCTION_2_25();
  sub_1D98DCEB4(v6, v7, v8, v9, 0xD000000000000011, v10);

  v11 = OUTLINED_FUNCTION_8_11();

  return v12(v11);
}

uint64_t sub_1D98D3734(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1D98F1C38(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1D98EF8BC(v9, a2);
  }
}

uint64_t sub_1D98D37D0(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 176) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98D37E8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 176);
  v3 = sub_1D988CFCC();
  *(v0 + 160) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D98D3920;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D98D3734;
  *(v0 + 104) = &block_descriptor_3_0;
  *(v0 + 112) = v4;
  [v3 setKillSwitchEnabled:v2 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D98D3920()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D98D3A20;
  }

  else
  {
    v5 = sub_1D98D431C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98D3A20()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v3 = v0[21];
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v4 = *v2;
  v5 = v0[11];
  OUTLINED_FUNCTION_2_25();
  sub_1D98DCEB4(v6, v7, v8, v9, 0xD000000000000015, v10);

  v11 = OUTLINED_FUNCTION_8_11();

  return v12(v11);
}

uint64_t sub_1D98D3B44()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_10_11();
  v1[20] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D98D3C2C;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D48, qword_1D9934E00);
  OUTLINED_FUNCTION_5_18(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_4_19();
  [v4 purgeStagedMessagesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D98D3C2C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D98D3D2C;
  }

  else
  {
    v5 = sub_1D98D431C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D98D3D2C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  v3 = v0[21];
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v4 = *v2;
  v5 = v0[11];
  OUTLINED_FUNCTION_2_25();
  sub_1D98DCEB4(v6, v7, v8, v9, 0xD000000000000015, v10);

  v11 = OUTLINED_FUNCTION_8_11();

  return v12(v11);
}

uint64_t RuntimeService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of RuntimeService.killSwitchEnabled.getter()
{
  OUTLINED_FUNCTION_26();
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98D3FF0;

  return v6();
}

uint64_t sub_1D98D3FF0()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 16);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of RuntimeService.killSwitchEnabled(_:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(*v0 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D98D4320;

  return v8(v3);
}

uint64_t dispatch thunk of RuntimeService.purgeStagedMessages()()
{
  OUTLINED_FUNCTION_26();
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98D4320;

  return v6();
}

uint64_t sub_1D98D4324()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for BiomeSELFStreamProvider()) init];
  *(v0 + 24) = [objc_allocWithZone(SiriAnalyticsPrivateLearningStorageProvider) init];
  return v0;
}

uint64_t sub_1D98D4378(void *a1)
{
  v2 = v1;
  v4 = sub_1D98BB068();
  if (v4)
  {
    v5 = *(v1 + 16);
    sub_1D98F2DF0(a1);
    v6 = *(v2 + 24);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D992B034();
      [v7 storeOrderedAnyEvent_];
    }
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    v9 = sub_1D98DCE30();
    if (*(v9 + 24) == 1)
    {
      v10 = a1;
      v11 = sub_1D98BF59C(v10);
      v12 = *(v9 + 16);
      sub_1D986A454(v11, v13, 0xD00000000000006ELL, 0x80000001D993B320, 0x5F28646E65707061, 0xEA0000000000293ALL);
    }

    else
    {
    }
  }

  return v4 & 1;
}

uint64_t sub_1D98D44E0()
{
  sub_1D98D44B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98D4538(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_1D98BE6B0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_23_6();
  sub_1D987AF84();
  OUTLINED_FUNCTION_13_8();
  if (!v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

size_t sub_1D98D45A8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_1D98BE730(*(a1 + 16), 0);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_28_4();
  sub_1D987B090();
  OUTLINED_FUNCTION_13_8();
  if (!v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1D98D46AC(uint64_t a1, void (*a2)(void, void), void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_23_6();
  a3();
  OUTLINED_FUNCTION_13_8();
  if (!v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D98D472C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D98B9D0C(0, v1, 0);
  v2 = v26;
  result = sub_1D986C874(a1);
  v7 = result;
  v8 = v25;
  v9 = 0;
  v10 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v12 = *(*(a1 + 56) + 16 * v7);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v5;
        v23 = v6;
        result = sub_1D98B9D0C(v13 > 1, v14 + 1, 1);
        v6 = v23;
        v5 = v24;
        v10 = a1 + 64;
        v8 = v25;
      }

      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v12;
      v15 = 1 << *(a1 + 32);
      if (v7 >= v15)
      {
        goto LABEL_25;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 72 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1D988AD24(v7, v5, v6 & 1);
            v10 = a1 + 64;
            v8 = v25;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_1D988AD24(v7, v5, v6 & 1);
        v10 = a1 + 64;
        v8 = v25;
      }

LABEL_18:
      if (++v9 == v8)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D98D4968(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D98B9D0C(0, v1, 0);
  v2 = v26;
  result = sub_1D986C874(a1);
  v7 = result;
  v8 = v25;
  v9 = 0;
  v10 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v12 = *(*(a1 + 56) + 16 * v7 + 8);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v5;
        v23 = v6;
        result = sub_1D98B9D0C(v13 > 1, v14 + 1, 1);
        v6 = v23;
        v5 = v24;
        v10 = a1 + 64;
        v8 = v25;
      }

      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v12;
      v15 = 1 << *(a1 + 32);
      if (v7 >= v15)
      {
        goto LABEL_25;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 72 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1D988AD24(v7, v5, v6 & 1);
            v10 = a1 + 64;
            v8 = v25;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_1D988AD24(v7, v5, v6 & 1);
        v10 = a1 + 64;
        v8 = v25;
      }

LABEL_18:
      if (++v9 == v8)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1D98D4BA4()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_13();
  v58 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_24_5();
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();
  v17 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = v13[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v0 + v13[5]) = 0;
  *(v0 + v13[7]) = v3;
  OUTLINED_FUNCTION_1_27();
  sub_1D98D8990(v0, v1, v26);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
  v30 = v3;
  v31 = sub_1D98D7C44();
  sub_1D986B804(v1, &qword_1ECB48D50, &unk_1D9933FE0);
  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = *(v31 + 16);
  if (!v32)
  {

LABEL_9:
    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v0, v52);
    goto LABEL_10;
  }

  v54 = v0;
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D98B977C();
  v33 = v59;
  v34 = *(v5 + 80);
  OUTLINED_FUNCTION_28_4();
  v53[1] = v31;
  v36 = v31 + v35;
  OUTLINED_FUNCTION_0();
  v39 = v38;
  v57 = *(v40 + 64);
  v41 = *(v5 + 72);
  v42 = (v38 + 16);
  v55 = v38 + 32;
  v56 = v41;
  do
  {
    MEMORY[0x1EEE9AC00](v37);
    v44 = v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_8_12();
    v45 = v58;
    sub_1D98D8990(v36, v58, v46);
    (*v42)(v44, v45, v17);
    sub_1D98D8938(v45, v3);
    v59 = v33;
    v48 = *(v33 + 16);
    v47 = *(v33 + 24);
    v3 = (v48 + 1);
    if (v48 >= v47 >> 1)
    {
      OUTLINED_FUNCTION_14(v47);
      sub_1D98B977C();
      v33 = v59;
    }

    *(v33 + 16) = v3;
    v49 = *(v39 + 80);
    OUTLINED_FUNCTION_28_4();
    v37 = (*(v39 + 32))(v33 + v50 + *(v39 + 72) * v48, v44, v17);
    v36 += v56;
    --v32;
  }

  while (v32);
  OUTLINED_FUNCTION_0_39();
  sub_1D98D8938(v54, v51);

LABEL_10:
  OUTLINED_FUNCTION_7();
}

uint64_t Metastore.componentIdComprehension(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = sub_1D992AE84();
  OUTLINED_FUNCTION_5(v15);
  (*(v16 + 16))(v14, a1, v15);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  v20 = v8[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  *(v14 + v8[5]) = 0;
  *(v14 + v8[7]) = 0;
  OUTLINED_FUNCTION_1_27();
  sub_1D98D8990(v14, v7, v25);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);
  v29 = sub_1D98D7C44();
  sub_1D986B804(v7, &qword_1ECB48D50, &unk_1D9933FE0);
  if (v29)
  {
    type metadata accessor for ClockComponentIdComprehension();
    sub_1D98D50C0();
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  OUTLINED_FUNCTION_0_39();
  sub_1D98D8938(v14, v32);
  return v31;
}

void sub_1D98D50C0()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = 0;
  v3 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v153 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v137 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v141 = &v136 - v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v151 = &v136 - v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v136 - v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v136 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v136 - v22;
  v149 = *(v1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v146 = 0;
  v147 = v1;
  while (v149 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
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
LABEL_81:
      sub_1D992B1A4();
      sub_1D992BFC4();
      __break(1u);
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_11_13();
    v27 = v26 & ~v25;
    v29 = *(v28 + 72);
    OUTLINED_FUNCTION_7_16(v1 + v27 + v29 * v2);
    if (*(v23 + *(v3 + 20)))
    {
      OUTLINED_FUNCTION_2_26();
      sub_1D98D8938(v23, v30);
      ++v2;
    }

    else
    {
      sub_1D98AEF4C(v23, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156 = v24;
      v152 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = *(v24 + 16);
        sub_1D98B9CA4();
        v1 = v147;
        v24 = v156;
      }

      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_14(v33);
        sub_1D98B9CA4();
        v1 = v147;
        v24 = v156;
      }

      ++v2;
      *(v24 + 16) = v34 + 1;
      v20 = v152;
      sub_1D98AEF4C(v152, v24 + v27 + v34 * v29);
    }
  }

  v35 = *(v24 + 16);
  if (v35)
  {
    v156 = MEMORY[0x1E69E7CC0];
    sub_1D992BDC4();
    OUTLINED_FUNCTION_11_13();
    v38 = v24 + (v37 & ~v36);
    v40 = *(v39 + 72);
    v41 = v141;
    do
    {
      OUTLINED_FUNCTION_9_11();
      sub_1D98D8990(v38, v17, v42);
      *&v17[*(v3 + 24)];
      sub_1D98D8938(v17, &v156);
      sub_1D992BDA4();
      v43 = *(v156 + 16);
      sub_1D992BDD4();
      sub_1D992BDE4();
      sub_1D992BDB4();
      v38 += v40;
      --v35;
    }

    while (v35);

    v44 = v156;
    v1 = v147;
  }

  else
  {

    v44 = MEMORY[0x1E69E7CC0];
    v41 = v141;
  }

  sub_1D98B3DBC(v44);
  v136 = v45;
  v46 = sub_1D98D5B74(v1);
  v47 = MEMORY[0x1E69E7CC8];
  v158 = MEMORY[0x1E69E7CC8];
  v23 = v46 + 64;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v46 + 64);
  v51 = (v48 + 63) >> 6;
  v140 = v46;

  v52 = 0;
  v148 = xmmword_1D992FCB0;
  v145 = v47;
  v150 = v3;
  v139 = v23;
  v138 = v51;
  if (v50)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_77;
    }

    if (v53 >= v51)
    {
      break;
    }

    v50 = *(v23 + 8 * v53);
    ++v52;
    if (v50)
    {
      v52 = v53;
LABEL_23:
      while (2)
      {
        v142 = (v50 - 1) & v50;
        v143 = v52;
        v54 = (v52 << 9) | (8 * __clz(__rbit64(v50)));
        v55 = *(*(v140 + 48) + v54);
        v56 = *(*(v140 + 56) + v54);
        v57 = MEMORY[0x1E69E7CC8];
        v156 = MEMORY[0x1E69E7CC8];
        v152 = *(v56 + 16);
        swift_bridgeObjectRetain_n();
        v144 = v55;
        for (i = 0; v152 != i; ++i)
        {
          if (i >= *(v56 + 16))
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v59 = v154;
          v60 = (*(v153 + 80) + 32) & ~*(v153 + 80);
          v61 = *(v153 + 72);
          OUTLINED_FUNCTION_7_16(v56 + v60 + v61 * i);
          v62 = *(v59 + *(v3 + 24));
          v23 = sub_1D9889858();
          v64 = v57[2];
          v65 = (v63 & 1) == 0;
          if (__OFADD__(v64, v65))
          {
            goto LABEL_74;
          }

          v66 = v63;
          if (v57[3] < v64 + v65)
          {
            sub_1D98F0FEC();
            v57 = v156;
            v67 = sub_1D9889858();
            if ((v66 & 1) != (v68 & 1))
            {
              goto LABEL_81;
            }

            v23 = v67;
          }

          if (v66)
          {

            v69 = v57[7];
            sub_1D98AEF4C(v154, v151);
            v70 = *(v69 + 8 * v23);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            *(v69 + 8 * v23) = v70;
            if ((v71 & 1) == 0)
            {
              sub_1D98BDEE4(0, *(v70 + 16) + 1, 1, v70);
              v70 = v78;
              *(v69 + 8 * v23) = v78;
            }

            v73 = *(v70 + 16);
            v72 = *(v70 + 24);
            if (v73 >= v72 >> 1)
            {
              v79 = OUTLINED_FUNCTION_14(v72);
              sub_1D98BDEE4(v79, v73 + 1, 1, v70);
              v70 = v80;
              *(v69 + 8 * v23) = v80;
            }

            *(v70 + 16) = v73 + 1;
            sub_1D98AEF4C(v151, v70 + v60 + v73 * v61);
            v3 = v150;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A10, &qword_1D9932568);
            v74 = swift_allocObject();
            *(v74 + 16) = v148;
            sub_1D98AEF4C(v154, v74 + v60);
            v57[(v23 >> 6) + 8] |= 1 << v23;
            *(v57[6] + 8 * v23) = v62;
            *(v57[7] + 8 * v23) = v74;
            v75 = v57[2];
            v76 = __OFADD__(v75, 1);
            v77 = v75 + 1;
            if (v76)
            {
              goto LABEL_75;
            }

            v57[2] = v77;
          }
        }

        v81 = v146;
        v82 = sub_1D98D62C4(v57, &v158);
        v146 = v81;

        type metadata accessor for ComponentClusterMetadata();
        v83 = swift_allocObject();
        v23 = v144;
        sub_1D98D6CF0(v23, v82);
        v84 = v145;
        if ((v145 & 0xC000000000000001) != 0)
        {
          if (v145 < 0)
          {
            v85 = v145;
          }

          else
          {
            v85 = v145 & 0xFFFFFFFFFFFFFF8;
          }

          v86 = sub_1D992BC94();
          v41 = v141;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_80;
          }

          v84 = sub_1D98D84E8(v85, v86 + 1);
        }

        else
        {
          v41 = v141;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v156 = v84;
        sub_1D989E438(v83, v23);

        v145 = v156;
        v1 = v147;
        v23 = v139;
        v51 = v138;
        v50 = v142;
        v52 = v143;
        if (v142)
        {
          continue;
        }

        break;
      }
    }
  }

  v87 = MEMORY[0x1E69E7CC0];
  v88 = 0;
  v156 = sub_1D98D8B10(MEMORY[0x1E69E7CC0]);
  v157 = v89;
  while (v149 != v88)
  {
    if (v88 >= *(v1 + 16))
    {
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_11_13();
    v23 = v41;
    v92 = v91 & ~v90;
    v94 = *(v93 + 72);
    OUTLINED_FUNCTION_7_16(v1 + v92 + v94 * v88);
    v95 = *(v23 + *(v3 + 24));
    if (sub_1D992B174() == 1)
    {
      sub_1D98AEF4C(v23, v137);
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v155 = v87;
      if ((v97 & 1) == 0)
      {
        v98 = *(v87 + 16);
        sub_1D98B9CA4();
        v87 = v155;
      }

      v1 = v147;
      v100 = *(v87 + 16);
      v99 = *(v87 + 24);
      v23 = v100 + 1;
      if (v100 >= v99 >> 1)
      {
        OUTLINED_FUNCTION_14(v99);
        sub_1D98B9CA4();
        v1 = v147;
        v87 = v155;
      }

      ++v88;
      *(v87 + 16) = v23;
      sub_1D98AEF4C(v137, v87 + v92 + v100 * v94);
      v41 = v141;
    }

    else
    {
      OUTLINED_FUNCTION_2_26();
      sub_1D98D8938(v23, v96);
      ++v88;
      v1 = v147;
      v41 = v23;
    }
  }

  v155 = v87;

  v23 = v146;
  sub_1D98DA04C(&v155);
  if (!v23)
  {

    v101 = 0;
    v102 = v155;
    v103 = *(v155 + 16);
    v147 = v155;
    *&v148 = v103;
    while (1)
    {
      if (v101 == v148)
      {

        v131 = v158;
        v132 = v156;
        v133 = v157;
        type metadata accessor for ClockComponentIdComprehension();
        v134 = swift_allocObject();
        v135 = v145;
        v134[2] = v136;
        v134[3] = v135;
        v134[4] = v131;
        v134[5] = v132;
        v134[6] = v133;
        OUTLINED_FUNCTION_7();
        return;
      }

      if (v101 >= *(v102 + 16))
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_11_13();
      v107 = v106 + (v105 & ~v104);
      v109 = *(v108 + 72);
      v151 = v101;
      v110 = *(v107 + v109 * v101 + *(v3 + 24));
      v111 = sub_1D992AE84();
      v149 = &v136;
      v112 = OUTLINED_FUNCTION_6(v111);
      v114 = v113;
      v116 = *(v115 + 64);
      MEMORY[0x1EEE9AC00](v112);
      v117 = v110;
      sub_1D992B194();

      v119 = v156;
      v120 = *(v114 + 80);
      v121 = v157 + ((v120 + 32) & ~v120);
      v122 = *(v157 + 16);
      v154 = &v136 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v156)
      {
        break;
      }

      sub_1D98D968C(&v136 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v121, v122, (v119 + 16));
      v124 = v123;
      v126 = v125;

      if (v124)
      {
        goto LABEL_70;
      }

LABEL_71:
      v101 = v151 + 1;
      v130 = *(v114 + 8);
      v23 = v114 + 8;
      v130(v154, v111);
      v3 = v150;
      v102 = v147;
    }

    v152 = (v157 + ((v120 + 32) & ~v120));
    v127 = 0;
    while (v122 != v127)
    {
      v128 = MEMORY[0x1EEE9AC00](v118);
      (*(v114 + 16))(&v136 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), &v152[*(v114 + 72) * v127], v111, v128);
      sub_1D9882D14(&qword_1ED8BF058);
      v129 = sub_1D992B5F4();
      v118 = (*(v114 + 8))(&v136 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
      ++v127;
      if (v129)
      {
        goto LABEL_71;
      }
    }

    v126 = 0;
LABEL_70:
    sub_1D98D8EE8(v154, v126);
    goto LABEL_71;
  }

LABEL_82:

  __break(1u);
}

uint64_t sub_1D98D5B74(uint64_t a1)
{
  v40 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v2 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v39 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = a1 + v39;
  v11 = MEMORY[0x1E69E7CC8];
  v12 = *(v6 + 72);
  v37 = v12;
  v38 = &v36 - v7;
  while (1)
  {
    sub_1D98D8990(v10, v8, type metadata accessor for ComponentIdentifiersTable.Record);
    v13 = *&v8[*(v40 + 20)];
    if (!v13)
    {
      sub_1D98D8938(v8, type metadata accessor for ComponentIdentifiersTable.Record);
      goto LABEL_22;
    }

    v14 = v11[2];
    v15 = v13;
    if (v14 && (v16 = sub_1D9889858(), (v17 & 1) != 0))
    {
      v18 = *(v11[7] + 8 * v16);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1D98D8990(v8, v4, type metadata accessor for ComponentIdentifiersTable.Record);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D98BDEE4(0, *(v18 + 16) + 1, 1, v18);
      v18 = v33;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D98BDEE4(v19 > 1, v20 + 1, 1, v18);
      v18 = v34;
    }

    *(v18 + 16) = v20 + 1;
    sub_1D98AEF4C(v4, v18 + v39 + v20 * v12);
    swift_isUniquelyReferenced_nonNull_native();
    v41 = v11;
    v21 = v15;
    v22 = sub_1D9889858();
    if (__OFADD__(v11[2], (v23 & 1) == 0))
    {
      break;
    }

    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D88, &qword_1D99340D8);
    if (sub_1D992BE34())
    {
      v26 = sub_1D9889858();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_28;
      }

      v24 = v26;
    }

    v11 = v41;
    if (v25)
    {
      v28 = v41[7];
      v29 = *(v28 + 8 * v24);
      *(v28 + 8 * v24) = v18;
    }

    else
    {
      v41[(v24 >> 6) + 8] |= 1 << v24;
      *(v11[6] + 8 * v24) = v21;
      *(v11[7] + 8 * v24) = v18;
      v30 = v11[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_27;
      }

      v11[2] = v32;
    }

    v8 = v38;
    sub_1D98D8938(v38, type metadata accessor for ComponentIdentifiersTable.Record);
    v12 = v37;
LABEL_22:
    v10 += v12;
    if (!--v9)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1D992B1A4();
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98D5EE0(uint64_t a1)
{
  v2 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v41 - v6;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v50 = MEMORY[0x1E69E7CC8];
  v46 = *(a1 + 16);
  v42 = xmmword_1D992FCB0;
  v43 = a1;
  while (1)
  {
    if (v46 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v10 = *(v45 + 72);
    v48 = v7;
    v11 = a1 + v9 + v10 * v7;
    v12 = v49;
    sub_1D98D8990(v11, v49, type metadata accessor for ComponentIdentifiersTable.Record);
    v13 = sub_1D992AE84();
    v47 = &v41;
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    v16 = MEMORY[0x1EEE9AC00](v13);
    v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v18, v12, v13, v16);
    v20 = sub_1D9889568();
    v21 = v8[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v19;
    if (v8[3] < v23)
    {
      sub_1D98F1530(v23, 1);
      v8 = v50;
      v25 = sub_1D9889568();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*(v14 + 8))(v18, v13);
      v27 = v8[7];
      sub_1D98AEF4C(v49, v44);
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D98BDEE4(0, *(v28 + 16) + 1, 1, v28);
        v28 = v38;
        *(v27 + 8 * v20) = v38;
      }

      v30 = v48;
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D98BDEE4(v31 > 1, v32 + 1, 1, v28);
        v28 = v39;
        *(v27 + 8 * v20) = v39;
      }

      a1 = v43;
      v33 = v44;
      *(v28 + 16) = v32 + 1;
      sub_1D98AEF4C(v33, v28 + v9 + v32 * v10);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A10, &qword_1D9932568);
      v34 = swift_allocObject();
      *(v34 + 16) = v42;
      sub_1D98AEF4C(v49, v34 + v9);
      v8[(v20 >> 6) + 8] |= 1 << v20;
      (*(v14 + 32))(v8[6] + *(v14 + 72) * v20, v18, v13);
      *(v8[7] + 8 * v20) = v34;
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v8[2] = v37;
      a1 = v43;
      v30 = v48;
    }

    v7 = v30 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98D62C4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v73 = a2;
  v5 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v76 = *(v5 - 1);
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1E69E7CC8];
  v78 = MEMORY[0x1E69E7CC8];
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(a1 + 56) + v16);
    if (*(v17 + 16))
    {
      v75 = *(*(a1 + 48) + v16);
      sub_1D98D8990(v17 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), v8, type metadata accessor for ComponentIdentifiersTable.Record);
      v18 = &v8[v5[7]];
      if (v18[25] & 1) != 0 || (*(v18 + 2) & 1) != 0 || (v18[24])
      {
        sub_1D98D8938(v8, type metadata accessor for ComponentIdentifiersTable.Record);
      }

      else
      {
        v71 = *v18;
        v72 = v3;
        v70 = *(v18 + 2);
        v19 = *&v8[v5[6]];
        v20 = *&v8[v5[5]];
        if (v20)
        {
          v68 = *&v8[v5[5]];
          v69 = v19;
          v21 = *v73;
          if ((*v73 & 0xC000000000000001) != 0)
          {
            if (v21 >= 0)
            {
              v21 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v22 = v20;
            v23 = v75;

            v24 = sub_1D992BC94();
            if (__OFADD__(v24, 1))
            {
              goto LABEL_49;
            }

            v25 = sub_1D98D86D8(v21, v24 + 1);
            *v73 = v25;
          }

          else
          {
            v27 = v20;
            v28 = v75;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = *v73;
          v29 = v77;
          v30 = sub_1D9889858();
          v31 = v29[2];
          v67 = v32;
          v33 = (v32 & 1) == 0;
          v64 = v30;
          v65 = v31 + v33;
          if (__OFADD__(v31, v33))
          {
            goto LABEL_48;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48960, &unk_1D9932370);
          if (sub_1D992BE34())
          {
            v34 = sub_1D9889858();
            v36 = v67;
            if ((v67 & 1) != (v35 & 1))
            {
              goto LABEL_51;
            }
          }

          else
          {
            v34 = v64;
            v36 = v67;
          }

          v37 = v77;
          if (v36)
          {
            v38 = v77[7];
            v39 = *(v38 + 8 * v34);
            *(v38 + 8 * v34) = v68;
          }

          else
          {
            v77[(v34 >> 6) + 8] |= 1 << v34;
            v41 = v68;
            v40 = v69;
            *(v37[6] + 8 * v34) = v69;
            *(v37[7] + 8 * v34) = v41;
            v42 = v37[2];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_50;
            }

            v37[2] = v44;
            v45 = v40;
          }

          *v73 = v37;
        }

        else
        {
          v26 = v75;
        }

        sub_1D98D8938(v8, type metadata accessor for ComponentIdentifiersTable.Record);

        v46 = v74;
        v47 = *(v74 + 16);
        if (*(v74 + 24) <= v47)
        {
          sub_1D98F0E34(v47 + 1);
          v46 = v78;
        }

        v74 = v46;
        v48 = *(v46 + 40);
        v49 = sub_1D992BBC4();
        v50 = v74;
        v51 = v74 + 64;
        v52 = -1 << *(v74 + 32);
        v53 = v49 & ~v52;
        v54 = v53 >> 6;
        if (((-1 << v53) & ~*(v74 + 64 + 8 * (v53 >> 6))) == 0)
        {
          v56 = 0;
          v57 = (63 - v52) >> 6;
          v3 = v72;
          while (++v54 != v57 || (v56 & 1) == 0)
          {
            v58 = v54 == v57;
            if (v54 == v57)
            {
              v54 = 0;
            }

            v56 |= v58;
            v59 = *(v51 + 8 * v54);
            if (v59 != -1)
            {
              v55 = __clz(__rbit64(~v59)) + (v54 << 6);
              goto LABEL_44;
            }
          }

          goto LABEL_47;
        }

        v55 = __clz(__rbit64((-1 << v53) & ~*(v74 + 64 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
        v3 = v72;
LABEL_44:
        *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        *(v50[6] + 8 * v55) = v75;
        v60 = (v50[7] + 16 * v55);
        v61 = v70;
        *v60 = v71;
        v60[1] = v61;
        ++v50[2];
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return v74;
    }

    v11 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_1D992B1A4();
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98D67BC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v44 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v36[1] = v36;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D58, &unk_1D9934090);
  v39 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v38 = v36 - v7;
  v8 = (v4 + 63) >> 6;
  v40 = a1;

  v10 = 0;
  v37 = v3;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = v40;
    v14 = *(v40 + 48);
    v15 = sub_1D992AE84();
    v42 = *(v15 - 8);
    v41 = *(v42 + 72);
    v16 = v14 + v41 * v12;
    v17 = v38;
    (*(v42 + 16))(v38, v16, v15);
    *(v17 + *(v43 + 48)) = *(*(v13 + 56) + 8 * v12);
    type metadata accessor for ClockComponentIdComprehension();
    swift_bridgeObjectRetain_n();
    sub_1D98D50C0();
    v19 = v18;
    MEMORY[0x1EEE9AC00](v18);
    v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D98DB7FC(v17, v21);
    v22 = *(v2 + 16);
    if (*(v2 + 24) <= v22)
    {
      sub_1D98F12CC(v22 + 1, 1);
    }

    v2 = v44;
    v23 = *(v44 + 40);
    sub_1D9882D14(&qword_1ED8BF060);
    result = sub_1D992B5C4();
    v24 = v2 + 64;
    v25 = -1 << *(v2 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v2 + 64 + 8 * (v26 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v25) >> 6;
      while (++v27 != v31 || (v30 & 1) == 0)
      {
        v32 = v27 == v31;
        if (v27 == v31)
        {
          v27 = 0;
        }

        v30 |= v32;
        v33 = *(v24 + 8 * v27);
        if (v33 != -1)
        {
          v28 = v15;
          v29 = __clz(__rbit64(~v33)) + (v27 << 6);
          goto LABEL_20;
        }
      }

      goto LABEL_24;
    }

    v28 = v15;
    v29 = __clz(__rbit64((-1 << v26) & ~*(v2 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    v6 &= v6 - 1;
    v34 = *(v43 + 48);
    *(v24 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    (*(v42 + 32))(*(v2 + 48) + v29 * v41, v21, v28);
    *(*(v2 + 56) + 8 * v29) = v19;
    ++*(v2 + 16);
    v35 = *&v21[v34];

    v3 = v37;
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D98D6B60(void *a1)
{
  v3 = sub_1D98B113C(a1, *(v1 + 32));
  if (!v3)
  {
    v3 = a1;
  }

  v4 = v3;
  v5 = *(v1 + 24);
  if (!v5)
  {

    return 0;
  }

  v6 = sub_1D98B11E0(v3, v5);

  if (!v6)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1D98D6BC8(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v11[2] = v2;
  v11[3] = v3;
  v11[4] = a1;
  v4 = sub_1D98D910C(sub_1D98DB6F0, v11, v3);
  result = 0;
  if ((v6 & 1) == 0)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v3 + 16);
      if (v8 >= v7)
      {

        v9 = OUTLINED_FUNCTION_27();
        return sub_1D98DB728(v9, v10, v7, v8);
      }
    }

    __break(1u);
  }

  return result;
}

void *ClockComponentIdComprehension.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v5 = v0[5];
  v4 = v0[6];

  return v0;
}

uint64_t ClockComponentIdComprehension.__deallocating_deinit()
{
  ClockComponentIdComprehension.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98D6CF0(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = a1;
  sub_1D98D6D44(a2);
  v6 = v5;

  *(v2 + 24) = v6;
  return v2;
}

void sub_1D98D6D44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D68, &qword_1D99340B0);
    v2 = sub_1D992BEE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D992B1A4();
  v4 = MEMORY[0x1E69E6158];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = v2 + 64;

  v37 = a1;

  if (v3 == v4)
  {
    v24 = 0;
    while (v8)
    {
      v25 = v24;
LABEL_30:
      v26 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v27 = v26 | (v25 << 6);
      v39 = *(*(a1 + 56) + 16 * v27);
      v28 = *(*(a1 + 48) + 8 * v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D70, &qword_1D99340B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D78, &unk_1D99340C0);
      swift_dynamicCast();
      v29 = sub_1D9889858();
      v30 = v29;
      if (v31)
      {
        v32 = *(v2 + 48);
        v33 = *(v32 + 8 * v29);
        *(v32 + 8 * v29) = v28;

        *(*(v2 + 56) + 16 * v30) = v40;
        v24 = v25;
      }

      else
      {
        if (*(v2 + 16) >= *(v2 + 24))
        {
          goto LABEL_39;
        }

        *(v9 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        *(*(v2 + 48) + 8 * v29) = v28;
        *(*(v2 + 56) + 16 * v29) = v40;
        v34 = *(v2 + 16);
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_40;
        }

        *(v2 + 16) = v36;
        v24 = v25;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= ((v6 + 63) >> 6))
      {
LABEL_35:

        return;
      }

      v8 = *(v5 + 8 * v25);
      ++v24;
      if (v8)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= ((v6 + 63) >> 6))
      {
        goto LABEL_35;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
    v10 = v11;
LABEL_13:
    while (1)
    {
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v38 = *(*(v37 + 56) + 16 * v12);
      v13 = *(*(v37 + 48) + 8 * v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D70, &qword_1D99340B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D78, &unk_1D99340C0);
      swift_dynamicCast();
      v14 = *(v2 + 40);
      v15 = sub_1D992BBC4();
      v16 = -1 << *(v2 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v9 + 8 * (v17 >> 6))) == 0)
      {
        break;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v9 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      v8 &= v8 - 1;
      *(v9 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v2 + 48) + 8 * v19) = v13;
      *(*(v2 + 56) + 16 * v19) = v40;
      ++*(v2 + 16);
      if (!v8)
      {
        goto LABEL_9;
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
      v23 = *(v9 + 8 * v18);
      if (v23 != -1)
      {
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        goto LABEL_22;
      }
    }

LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1D98D70FC()
{
  v1 = *(v0 + 24);

  v3 = sub_1D98D472C(v2);

  sub_1D98D71B8(v3);
  v5 = v4;

  if ((v5 & 1) == 0)
  {

    v7 = sub_1D98D4968(v6);

    sub_1D98D71FC(v7);
  }

  return OUTLINED_FUNCTION_27();
}

unint64_t sub_1D98D71B8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1D98D71FC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D98D7240()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889858();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  result = *v4;
  v6 = v4[1];
  return result;
}

void sub_1D98D7290()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B48, &qword_1D9933FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9932820;
  v3 = *(v0 + 16);
  *(inited + 32) = v3;

  v4 = v3;
  v5 = sub_1D98D7330(v1, inited);

  swift_setDeallocating();
  sub_1D989943C();
  sub_1D98B3DBC(v5);
}

uint64_t sub_1D98D7330(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D9866E40(a2);
  v4 = *(a1 + 16);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_1D98EAE44(result);

    sub_1D98EB7A4(v7);

    sub_1D98EB6A0(v8);
    return v9;
  }

  return result;
}

uint64_t ComponentClusterMetadata.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ComponentClusterMetadata.__deallocating_deinit()
{
  ComponentClusterMetadata.deinit();

  return swift_deallocClassInstance();
}

void Metastore.saveComponentId(componentId:clusterIdentifier:timestampRange:onClock:)()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  if (sub_1D986AC54(0))
  {
    v20 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v20)
    {
      v69 = v19;
      v72 = v20;
      v21 = sub_1D992AE84();
      v71 = &v60;
      v22 = OUTLINED_FUNCTION_6(v21);
      v24 = v23;
      v26 = *(v25 + 64);
      MEMORY[0x1EEE9AC00](v22);
      OUTLINED_FUNCTION_13();
      v64 = v6;
      v29 = v28 - v27;
      v67 = v24;
      v62 = v10;
      v30 = *(v24 + 16);
      v30(v28 - v27, v2, v21);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v70 = &v60;
      v32 = *(v31 - 8);
      v61 = v8;
      v33 = *(v32 + 64);
      MEMORY[0x1EEE9AC00](v31 - 8);
      v63 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
      v34 = &v60 - v63;
      v35 = sub_1D992AE04();
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
      v65 = v29;
      v68 = v21;
      v30(v16, v29, v21);
      v66 = &v60;
      v40 = v61;
      v39 = v62;
      *&v16[v11[5]] = v61;
      *&v16[v11[6]] = v39;
      v41 = &v16[v11[7]];
      *v41 = v64;
      *(v41 + 1) = 0;
      *(v41 + 2) = v4;
      *(v41 + 12) = 0;
      OUTLINED_FUNCTION_0();
      v43 = v42;
      v45 = *(v44 + 64);
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_22_6();
      v64 = &v60;
      MEMORY[0x1EEE9AC00](v47);
      v48 = &v60 - v63;
      sub_1D98D88C8(v34, &v60 - v63);
      LODWORD(v33) = __swift_getEnumTagSinglePayload(v48, 1, v35);
      v49 = v40;
      v50 = v39;

      if (v33 == 1)
      {
        sub_1D992ADF4();
        sub_1D986B804(v34, &qword_1ECB48710, &qword_1D9931340);
        (*(v67 + 8))(v65, v68);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v35);
        v52 = v69;
        if (EnumTagSinglePayload != 1)
        {
          sub_1D986B804(v48, &qword_1ECB48710, &qword_1D9931340);
        }
      }

      else
      {
        sub_1D986B804(v34, &qword_1ECB48710, &qword_1D9931340);
        (*(v67 + 8))(v65, v68);
        (*(v43 + 32))(v30, v48, v35);
        v52 = v69;
      }

      (*(v43 + 32))(&v16[v11[8]], v30, v35);
      sub_1D98AEF4C(v16, v52);
      v53 = sub_1D98ADF28();
      v54 = sub_1D98B3B0C(&unk_1F5517F88);
      v73 = sub_1D98B3B0C(&unk_1F5518068);
      sub_1D98D81B4(v54);
      v55 = sub_1D98D4538(v73);
      v73 = 0xD000000000000015;
      v74 = 0x80000001D9937450;
      v75 = v53;
      v76 = &unk_1F5518068;
      v77 = v55;
      v56 = sub_1D990C31C();
      sub_1D987005C(v56, v57, v58);

      OUTLINED_FUNCTION_2_26();
      sub_1D98D8938(v52, v59);
    }
  }

  OUTLINED_FUNCTION_7();
}

unint64_t Metastore.componentIds(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D992FCB0;
  (*(v4 + 16))(v8 + v7, a1, v2);
  v9 = Metastore.componentIds(for:)(v8);

  return v9;
}

Swift::OpaquePointer_optional __swiftcall Metastore.componentIds(for:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();
  if (*(v3 + 16))
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v27 = v19[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    *(v1 + v19[5]) = v3;
    *(v1 + v19[7]) = 0;
    OUTLINED_FUNCTION_1_27();
    sub_1D98D8990(v1, v18, v32);
    OUTLINED_FUNCTION_76();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);

    v36 = sub_1D98D7C44();
    sub_1D986B804(v18, &qword_1ECB48D50, &unk_1D9933FE0);
    if (v36)
    {
      v53 = MEMORY[0x1E69E7CC0];
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = *(v4 + 24);
        v39 = *(v7 + 80);
        OUTLINED_FUNCTION_28_4();
        v41 = v36 + v40;
        v42 = *(v7 + 72);
        do
        {
          OUTLINED_FUNCTION_9_11();
          sub_1D98D8990(v41, v12, v43);
          *(v12 + v38);
          v44 = OUTLINED_FUNCTION_27();
          v46 = sub_1D98D8938(v44, v45);
          MEMORY[0x1DA739CE0](v46);
          v47 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
          {
            OUTLINED_FUNCTION_14(v47);
            sub_1D992B7D4();
          }

          sub_1D992B7F4();
          v41 += v42;
          --v37;
        }

        while (v37);
      }

      OUTLINED_FUNCTION_0_39();
      sub_1D98D8938(v1, v48);
    }

    else
    {
      OUTLINED_FUNCTION_0_39();
      sub_1D98D8938(v1, v49);
    }
  }

  OUTLINED_FUNCTION_7();
  result.value._rawValue = v50;
  result.is_nil = v51;
  return result;
}

uint64_t sub_1D98D7C44()
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);

  sub_1D98FD224(v5);
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1D987ED7C();
  objc_autoreleasePoolPop(v2);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

void Metastore.representativeIds(for:)()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v52 = OUTLINED_FUNCTION_6(v4);
  v53 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_24_5();
  v16 = OUTLINED_FUNCTION_5(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();
  v19 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  v26 = *(v25 + 72);
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D992FCB0;
  (*(v24 + 16))(v28 + v27, v3, v19);
  v29 = v15[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  *(v0 + v15[5]) = v28;
  *(v0 + v15[7]) = 0;
  OUTLINED_FUNCTION_1_27();
  sub_1D98D8990(v0, v1, v34);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v15);
  v38 = sub_1D98D7C44();
  sub_1D986B804(v1, &qword_1ECB48D50, &unk_1D9933FE0);
  if (v38)
  {
    v54 = MEMORY[0x1E69E7CC0];
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = *(v52 + 20);
      v41 = *(v53 + 80);
      OUTLINED_FUNCTION_28_4();
      v43 = v38 + v42;
      v45 = *(v44 + 72);
      do
      {
        OUTLINED_FUNCTION_8_12();
        sub_1D98D8990(v43, v10, v46);
        v47 = *(v10 + v40);
        v47;
        v48 = sub_1D98D8938(v10, v28);
        if (v47)
        {
          MEMORY[0x1DA739CE0](v48);
          v28 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v49 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v28 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_14(v49);
            sub_1D992B7D4();
          }

          sub_1D992B7F4();
        }

        v43 += v45;
        --v39;
      }

      while (v39);
    }

    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v0, v50);
  }

  else
  {
    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v0, v51);
  }

  OUTLINED_FUNCTION_7();
}

Swift::OpaquePointer_optional __swiftcall Metastore.componentIdComprehensions(for:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  if (*(a1._rawValue + 2))
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = v8[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    *(v15 + v8[5]) = a1;
    *(v15 + v8[7]) = 0;
    OUTLINED_FUNCTION_1_27();
    sub_1D98D8990(v15, v7, v25);
    OUTLINED_FUNCTION_76();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);

    v29 = sub_1D98D7C44();
    sub_1D986B804(v7, &qword_1ECB48D50, &unk_1D9933FE0);
    if (v29)
    {
      v30 = sub_1D98D5EE0(v29);
      v29 = sub_1D98D67BC(v30);
    }

    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v15, v31);
  }

  else
  {
    v29 = 0;
  }

  v32 = v29;
  result.value._rawValue = v32;
  result.is_nil = v12;
  return result;
}

uint64_t sub_1D98D81B4(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  result = a1 + 56;
  v4 = v5;
  v6 = 1 << *(result - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v30 = v9;
  v31 = result;
  if ((v7 & v4) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(result + 8 * v10);
    ++v2;
    if (v8)
    {
      v2 = v10;
      do
      {
LABEL_9:
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = *(a1 + 48) + 24 * (v11 | (v2 << 6));
        v14 = *v12;
        v13 = *(v12 + 8);
        v34 = *(v12 + 17);
        v35 = *(v12 + 16);
        v15 = *v1;
        if (*(*v1 + 16))
        {
          v16 = *(v15 + 40);
          sub_1D992C074();

          sub_1D992B6D4();
          v17 = sub_1D992C0C4();
          v18 = v15 + 56;
          v19 = -1 << *(v15 + 32);
          v20 = v17 & ~v19;
          if ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            v22 = *(v15 + 48);
            do
            {
              v23 = v22 + 24 * v20;
              v24 = *(v23 + 16);
              v25 = *(v23 + 17);
              if (*v23 == v14 && *(v23 + 8) == v13)
              {
                if (v24 == v35 && v34 == v25)
                {
LABEL_33:
                  if (v34)
                  {
                    v29 = 256;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  v1 = v32;
                  sub_1D98EAEF0(v14, v13, v29 | v35);

                  goto LABEL_31;
                }
              }

              else if ((sub_1D992BF64() & 1) != 0 && v24 == v35 && ((v34 ^ v25) & 1) == 0)
              {
                goto LABEL_33;
              }

              v20 = (v20 + 1) & v21;
            }

            while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
          }
        }

        else
        {
        }

        if (v34)
        {
          v28 = 256;
        }

        else
        {
          v28 = 0;
        }

        v1 = v32;
        sub_1D98B6944(v36, v14, v13, v28 | v35);
LABEL_31:

        v9 = v30;
        result = v31;
      }

      while (v8);
    }
  }
}

void sub_1D98D8408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1D98BE730((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_1D992AE84() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1D98D84E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D60, &qword_1D99340A8);
    v2 = sub_1D992BED4();
    v17 = v2;
    sub_1D992BE54();
    while (1)
    {
      v3 = sub_1D992BE84();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_1D992B1A4();
      swift_dynamicCast();
      type metadata accessor for ComponentClusterMetadata();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D98F0CC0();
      }

      v2 = v17;
      v4 = *(v17 + 40);
      result = sub_1D992BBC4();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D98D86D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D80, &qword_1D99340D0);
    v2 = sub_1D992BED4();
    v17 = v2;
    sub_1D992BE54();
    while (1)
    {
      v3 = sub_1D992BE84();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_1D992B1A4();
      swift_dynamicCast();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D98F1160();
      }

      v2 = v17;
      v4 = *(v17 + 40);
      result = sub_1D992BBC4();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D98D88C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98D8938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D98D8990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_1D98D8B10(uint64_t a1)
{
  v6 = sub_1D98D98A4();
  result = sub_1D98D98AC(&v40, a1, 0, 1, v6);
  v8 = *(a1 + 16);
  v9 = v40;
  if (v40 != v8)
  {
    if ((v40 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v31 = result;
    v1 = sub_1D98DB598(0, v40, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      sub_1D992BF84();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_31;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_32;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    while (1)
    {
      sub_1D98D8408(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v41 = v31;
      v42 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_unknownObjectRelease();
    }

    v30[1] = sub_1D98DB598(v9, v8, a1);
    v32 = v16;
    v9 = v17;
    v8 = v18;

    v33 = v8 >> 1;
    while (1)
    {
      if (v9 == v33)
      {
        swift_unknownObjectRelease();

        return v41;
      }

      if (v9 >= v33)
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = sub_1D992AE84();
      v35 = v30;
      v19 = *(v3 - 8);
      v1 = v19;
      v2 = *(v19 + 72);
      v36 = v9;
      v20 = *(v19 + 64);
      v21 = MEMORY[0x1EEE9AC00](v3);
      v4 = *(v1 + 16);
      v22 = (v4)(v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      v23 = v41;
      a1 = v42 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v24 = v42[2];
      v34 = v1;
      v39 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v41)
      {
        break;
      }

      sub_1D98D968C(v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v24, (v23 + 16));
      a1 = v25;
      v8 = v26;

      if (a1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v9 = v36 + 1;
      (*(v34 + 8))(v39, v3);
    }

    v37 = v4;
    v38 = v2;
    v2 = (v1 + 8);
    v27 = v24 + 1;
    while (--v27)
    {
      v4 = v30;
      v1 = v38 + a1;
      v28 = MEMORY[0x1EEE9AC00](v22);
      v8 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37(v8, a1, v3, v28);
      sub_1D9882D14(&qword_1ED8BF058);
      v29 = sub_1D992B5F4();
      v22 = (*v2)(v8, v3);
      a1 = v1;
      if (v29)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
LABEL_25:
    a1 = &v41;
    sub_1D98D8EE8(v39, v8);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1D98D8EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  v12 = v3 + 1;
  v13 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v13 + 16);
    sub_1D98B977C();
    v13 = *v12;
  }

  v16 = *(v13 + 16);
  if (v16 >= *(v13 + 24) >> 1)
  {
    sub_1D98B977C();
    v13 = *v12;
  }

  *(v13 + 16) = v16 + 1;
  result = (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v11, v6);
  v3[1] = v13;
  v18 = *v3;
  if (!*v3)
  {
    if (v16 <= 0xE)
    {
      return result;
    }

    v19 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x1DA739450](*(v18 + 16) & 0x3FLL) <= v16)
  {
    v19 = *(v18 + 24) & 0x3FLL;
    if (v16 <= 0xE && !v19)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    v20 = MEMORY[0x1DA739470](v16 + 1);
    return sub_1D98D9270(v20, v19);
  }

  result = sub_1D98D91B0();
  if (*v3)
  {
    return sub_1D98D9208((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void *sub_1D98D910C(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_1D992AE84() - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98D91B0()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_1D992AF14();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D98D9208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_1D992AEB4();
}

uint64_t sub_1D98D9270(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_1D98D92B8(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t sub_1D98D92B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1DA739470](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x1DA739480]();
    sub_1D98D9330(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_1D98D9330(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  result = sub_1D992AE84();
  v6 = *(result - 8);
  v32 = *(a1 + 16);
  if (v32)
  {
    v7 = result;
    v8 = 0;
    v30 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 16);
    v10 = *(v6 + 72);
    v28 = *(v6 + 64);
    v29 = v9;
    v27 = v10;
    v31 = v6 + 16;
    v26 = (v6 + 8);
    while (1)
    {
      v11 = MEMORY[0x1EEE9AC00](result);
      v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29(v13, v30 + v27 * v8, v7, v11);
      v14 = *a2;
      sub_1D9882D14(&qword_1ED8BF060);
      result = sub_1D992B5C4();
      v15 = 1 << *a2;
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        break;
      }

      v18 = v17 & result;
      v19 = v33;
      v20 = sub_1D992AEA4();
      v22 = v21;
      v24 = v23;
      (*v26)(v13, v7);
      v34 = a2;
      v35 = v19;
      v36 = v18;
      v37 = v20;
      v38 = v22;
      v39 = v24;
      v40 = 0;
      while (v37)
      {
        sub_1D992AEF4();
      }

      result = sub_1D992AEE4();
      if (++v8 == v32)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D98D9518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    v6 = sub_1D992AE84();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = MEMORY[0x1EEE9AC00](v6);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v11, a2 + *(v12 + 72) * i, v6, v9);
    sub_1D9882D14(&qword_1ED8BF058);
    v13 = sub_1D992B5F4();
    (*(v7 + 8))(v11, v6);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D98D968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18[0] = a2;
  v5 = *a4;
  v6 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BF060);
  result = sub_1D992B5C4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1D992AEC4();
    v9 = v23;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    if ((v24 & 1) == 0)
    {
      do
      {
        v10 = *(v6 - 8);
        v11 = *(v10 + 64);
        v12 = MEMORY[0x1EEE9AC00](v8);
        v14 = v18 - v13;
        (*(v10 + 16))(v18 - v13, v18[0] + *(v15 + 72) * v9, v6, v12);
        sub_1D9882D14(&qword_1ED8BF058);
        v16 = sub_1D992B5F4();
        (*(v10 + 8))(v14, v6);
        if (v16)
        {
          break;
        }

        sub_1D992AEF4();
        v19 = v25;
        v20 = v26;
        v21 = v27;
        v22 = v28;
        v8 = sub_1D992AED4();
        v9 = v8;
      }

      while ((v17 & 1) == 0);
    }

    return v9;
  }

  return result;
}

uint64_t sub_1D98D98AC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1DA739470](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = MEMORY[0x1DA739480]();
    v14 = *(sub_1D992AE84() - 8);
    sub_1D98D9CB8(a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v8, (v13 + 16), v13 + 32);
    *a1 = v15;
  }

  else if (v8 >= 2)
  {
    v16 = *(sub_1D992AE84() - 8);
    sub_1D98D99E4(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v8);
    v13 = 0;
    *a1 = v17;
  }

  else
  {
    v13 = 0;
    *a1 = v8;
  }

  return v13;
}

void sub_1D98D99E4(uint64_t a1, uint64_t a2)
{
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D98B977C();
  v4 = 0;
  v5 = v31;
  v23 = a1;
  for (i = a2; ; a2 = i)
  {
    if (v4 == a2)
    {

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v28 = v4 + 1;
    v6 = sub_1D992AE84();
    v30 = &v22;
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = MEMORY[0x1EEE9AC00](v6);
    v27 = v10;
    v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *(v12 + 72);
    v14 = *(v7 + 16);
    v25 = v4;
    v26 = v14;
    v15 = (v14)(v11, a1 + v13 * v4, v6, v9);
    v16 = *(v5 + 16) + 1;
    v29 = v5;
    while (--v16)
    {
      v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_1D9882D14(&qword_1ED8BF058);
      v15 = sub_1D992B5F4();
      v5 += v13;
      if (v15)
      {
        (*(v7 + 8))(v11, v6);

        return;
      }
    }

    v18 = MEMORY[0x1EEE9AC00](v15);
    v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26(v20, v11, v6, v18);
    v31 = v29;
    v21 = *(v29 + 16);
    if (v21 >= *(v29 + 24) >> 1)
    {
      sub_1D98B977C();
    }

    (*(v7 + 8))(v11, v6);
    v5 = v31;
    *(v31 + 16) = v21 + 1;
    (*(v7 + 32))(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v21 * v13, v20, v6);
    v4 = v28;
    a1 = v23;
  }

  __break(1u);
}

uint64_t sub_1D98D9CB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v40 = a4;
  v57 = result;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a3;
    v5 = 0;
    v38 = a2;
    v37 = a3;
    while (2)
    {
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        v39 = v5 + 1;
        v6 = sub_1D992AE84();
        v7 = *(v6 - 8);
        v8 = v7[8];
        v9 = MEMORY[0x1EEE9AC00](v6);
        v44 = v10;
        v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = *(v12 + 72);
        v42 = v5;
        v48 = v13;
        v14 = v57 + v13 * v5;
        v15 = v7[2];
        v46 = v7 + 2;
        v47 = v14;
        v45 = v15;
        (v15)(v11, v9);
        v16 = *v4;
        sub_1D9882D14(&qword_1ED8BF060);
        result = sub_1D992B5C4();
        v17 = 1 << *v4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (!v18)
        {
          v20 = v19 & result;
          v21 = v40;
          v22 = sub_1D992AEA4();
          v24 = v23;
          v41 = v25;
          v43 = v7[1];
          v43(v11, v6);
          *&v49 = v4;
          *(&v49 + 1) = v21;
          *&v50 = v20;
          *(&v50 + 1) = v22;
          *&v51 = v24;
          *(&v51 + 1) = v41;
          v52 = 0;
          while (1)
          {
            v53 = v49;
            v54 = v50;
            v55 = v51;
            v56 = v52;
            v26 = sub_1D992AED4();
            if (v27)
            {
              break;
            }

            v28 = v44;
            v29 = MEMORY[0x1EEE9AC00](v26);
            v30 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
            v32 = v45;
            v33 = (v45)(v30, v57 + v31 * v48, v6, v29);
            v34 = MEMORY[0x1EEE9AC00](v33);
            v32(v30, v47, v6, v34);
            sub_1D9882D14(&qword_1ED8BF058);
            v35 = sub_1D992B5F4();
            v36 = v43;
            v43(v30, v6);
            v36(v30, v6);
            if (v35)
            {
              return 0;
            }

            sub_1D992AEF4();
          }

          result = sub_1D992AEE4();
          v5 = v39;
          v4 = v37;
          if (v39 != v38)
          {
            continue;
          }

          return 1;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D98DA04C(uint64_t *a1)
{
  v2 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D98DB714(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1D98DA0F4(v6);
  *a1 = v3;
}

void sub_1D98DA0F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D992BF24();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ComponentIdentifiersTable.Record(0);
        v6 = sub_1D992B7E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D98DA494(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D98DA224(0, v2, 1, a1);
  }
}

void sub_1D98DA224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v37 = v17;
    v31 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v35 = v19;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      do
      {
        sub_1D98D8990(v22, v16, type metadata accessor for ComponentIdentifiersTable.Record);
        sub_1D98D8990(v19, v12, type metadata accessor for ComponentIdentifiersTable.Record);
        v23 = *(v39 + 28);
        v24 = &v16[v23];
        if (v16[v23 + 25] & 1) != 0 || (*(v24 + 2))
        {
          v25 = 0;
        }

        else
        {
          v25 = *v24;
        }

        v26 = &v12[v23];
        if (v26[25] & 1) != 0 || (*(v26 + 2))
        {
          v27 = 0;
        }

        else
        {
          v27 = *v26;
        }

        sub_1D98D8938(v12, type metadata accessor for ComponentIdentifiersTable.Record);
        sub_1D98D8938(v16, type metadata accessor for ComponentIdentifiersTable.Record);
        if (v25 >= v27)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v28 = v38;
        sub_1D98AEF4C(v22, v38);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D98AEF4C(v28, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v36 + 1;
      v19 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D98DA494(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v136 = a1;
  v9 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v146 = *(v9 - 8);
  v10 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v153 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v144 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v143 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v130 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v130 - v26;
  v147 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v155 = *v136;
    if (!v155)
    {
      goto LABEL_154;
    }

    v5 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v123 = v29 + 16;
      v124 = *(v29 + 2);
      while (v124 >= 2)
      {
        if (!*v147)
        {
          goto LABEL_151;
        }

        v125 = v29;
        v29 += 16 * v124;
        v126 = *v29;
        v127 = &v123[2 * v124];
        v128 = v127[1];
        sub_1D98DAE90(*v147 + *(v146 + 72) * *v29, *v147 + *(v146 + 72) * *v127, *v147 + *(v146 + 72) * v128, v155);
        if (v5)
        {
          break;
        }

        if (v128 < v126)
        {
          goto LABEL_139;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_140;
        }

        *v29 = v126;
        *(v29 + 1) = v128;
        v129 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_141;
        }

        v124 = *v123 - 1;
        memmove(v127, v127 + 2, 16 * v129);
        *v123 = v124;
        v29 = v125;
      }

LABEL_122:

      return;
    }

LABEL_148:
    v29 = sub_1D98DB3A4(v29);
    goto LABEL_114;
  }

  v154 = v25;
  v132 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v140 = v28;
    if (v28 + 1 < v27)
    {
      v135 = v6;
      v32 = v28;
      v33 = *v147;
      v5 = *(v146 + 72);
      v148 = v28 + 1;
      v34 = v33 + v5 * v31;
      v35 = v133;
      v149 = v27;
      sub_1D98D8990(v34, v133, type metadata accessor for ComponentIdentifiersTable.Record);
      v36 = v134;
      sub_1D98D8990(v33 + v5 * v32, v134, type metadata accessor for ComponentIdentifiersTable.Record);
      v37 = *(v154 + 28);
      if ((*(v35 + v37 + 25) | *(v35 + v37 + 8)))
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v35 + v37);
      }

      LODWORD(v145) = (*(v36 + v37) > v38) & ~(*(v36 + v37 + 25) | *(v36 + v37 + 8));
      sub_1D98D8938(v36, type metadata accessor for ComponentIdentifiersTable.Record);
      sub_1D98D8938(v35, type metadata accessor for ComponentIdentifiersTable.Record);
      v39 = v149;
      v40 = v32 + 2;
      v150 = v5;
      v41 = v33 + v5 * (v32 + 2);
      while (1)
      {
        v42 = v40;
        if (++v148 >= v39)
        {
          break;
        }

        v43 = v143;
        v155 = v40;
        sub_1D98D8990(v41, v143, type metadata accessor for ComponentIdentifiersTable.Record);
        v5 = v144;
        sub_1D98D8990(v34, v144, type metadata accessor for ComponentIdentifiersTable.Record);
        v44 = *(v154 + 28);
        if ((*(v43 + v44 + 25) | *(v43 + v44 + 8)))
        {
          v45 = 0;
        }

        else
        {
          v45 = *(v43 + v44);
        }

        v46 = (v5 + v44);
        v47 = *v46;
        v48 = v29;
        v49 = *(v46 + 25) | v46[1];
        sub_1D98D8938(v5, type metadata accessor for ComponentIdentifiersTable.Record);
        sub_1D98D8938(v43, type metadata accessor for ComponentIdentifiersTable.Record);
        v42 = v155;
        v50 = v49 | (v47 <= v45);
        v29 = v48;
        v51 = v50 & 1;
        v41 += v150;
        v34 += v150;
        v40 = v155 + 1;
        v52 = v145 == v51;
        v39 = v149;
        if (v52)
        {
          goto LABEL_16;
        }
      }

      v148 = v39;
LABEL_16:
      v6 = v135;
      if (v145)
      {
        v31 = v148;
        v30 = v140;
        if (v148 < v140)
        {
          goto LABEL_145;
        }

        if (v140 < v148)
        {
          if (v39 >= v42)
          {
            v53 = v42;
          }

          else
          {
            v53 = v39;
          }

          v54 = v150 * (v53 - 1);
          v55 = v150 * v53;
          v56 = v140 * v150;
          v5 = v140;
          do
          {
            if (v5 != --v31)
            {
              v57 = *v147;
              if (!*v147)
              {
                goto LABEL_152;
              }

              sub_1D98AEF4C(v57 + v56, v139);
              v58 = v56 < v54 || v57 + v56 >= (v57 + v55);
              if (v58)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v56 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D98AEF4C(v139, v57 + v54);
              v30 = v140;
            }

            ++v5;
            v54 -= v150;
            v55 -= v150;
            v56 += v150;
          }

          while (v5 < v31);
          v31 = v148;
        }
      }

      else
      {
        v31 = v148;
        v30 = v140;
      }
    }

    v59 = v147[1];
    if (v31 < v59)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_144;
      }

      if (v31 - v30 < v132)
      {
        break;
      }
    }

LABEL_60:
    if (v31 < v30)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v120 = *(v29 + 2);
      sub_1D98BE188();
      v29 = v121;
    }

    v79 = *(v29 + 2);
    v80 = v79 + 1;
    if (v79 >= *(v29 + 3) >> 1)
    {
      sub_1D98BE188();
      v29 = v122;
    }

    *(v29 + 2) = v80;
    v81 = v29 + 32;
    v82 = &v29[16 * v79 + 32];
    v83 = v148;
    *v82 = v140;
    *(v82 + 1) = v83;
    v155 = *v136;
    if (!v155)
    {
      goto LABEL_153;
    }

    if (v79)
    {
      while (1)
      {
        v84 = v80 - 1;
        v85 = &v81[16 * v80 - 16];
        v86 = &v29[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v87 = *(v29 + 4);
          v88 = *(v29 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_80:
          if (v90)
          {
            goto LABEL_130;
          }

          v102 = *v86;
          v101 = *(v86 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_133;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_138;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v80 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v80 < 2)
        {
          goto LABEL_132;
        }

        v109 = *v86;
        v108 = *(v86 + 1);
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_95:
        if (v105)
        {
          goto LABEL_135;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_137;
        }

        if (v112 < v104)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v84 - 1 >= v80)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v147)
        {
          goto LABEL_150;
        }

        v116 = &v81[16 * v84 - 16];
        v117 = *v116;
        v118 = &v81[16 * v84];
        v119 = *(v118 + 1);
        sub_1D98DAE90(*v147 + *(v146 + 72) * *v116, *v147 + *(v146 + 72) * *v118, *v147 + *(v146 + 72) * v119, v155);
        if (v6)
        {
          goto LABEL_122;
        }

        if (v119 < v117)
        {
          goto LABEL_125;
        }

        v5 = *(v29 + 2);
        if (v84 > v5)
        {
          goto LABEL_126;
        }

        *v116 = v117;
        *(v116 + 1) = v119;
        if (v84 >= v5)
        {
          goto LABEL_127;
        }

        v80 = v5 - 1;
        memmove(&v81[16 * v84], v118 + 16, 16 * (v5 - 1 - v84));
        *(v29 + 2) = v5 - 1;
        if (v5 <= 2)
        {
          goto LABEL_109;
        }
      }

      v91 = &v81[16 * v80];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_128;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_129;
      }

      v98 = *(v86 + 1);
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_131;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_134;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_142;
        }

        if (v89 < v115)
        {
          v84 = v80 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v28 = v148;
    v27 = v147[1];
    if (v148 >= v27)
    {
      goto LABEL_112;
    }
  }

  v60 = v30 + v132;
  if (__OFADD__(v30, v132))
  {
    goto LABEL_146;
  }

  if (v60 >= v59)
  {
    v60 = v147[1];
  }

  if (v60 < v30)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v31 == v60)
  {
    goto LABEL_60;
  }

  v131 = v29;
  v135 = v6;
  v61 = *v147;
  v62 = *(v146 + 72);
  v63 = *v147 + v62 * (v31 - 1);
  v149 = -v62;
  v150 = v61;
  v64 = v30 - v31;
  v137 = v62;
  v138 = v60;
  v65 = v61 + v31 * v62;
  v66 = v154;
LABEL_46:
  v148 = v31;
  v141 = v65;
  v142 = v64;
  v67 = v64;
  v145 = v63;
  v68 = v63;
  while (1)
  {
    v155 = v67;
    v69 = v152;
    sub_1D98D8990(v65, v152, type metadata accessor for ComponentIdentifiersTable.Record);
    v5 = v153;
    sub_1D98D8990(v68, v153, type metadata accessor for ComponentIdentifiersTable.Record);
    v70 = *(v66 + 28);
    if ((*(v69 + v70 + 25) | *(v69 + v70 + 8)))
    {
      v71 = 0;
    }

    else
    {
      v71 = *(v69 + v70);
    }

    v72 = (v5 + v70);
    v73 = *v72;
    v74 = *(v72 + 2);
    v75 = *(v72 + 25);
    sub_1D98D8938(v5, type metadata accessor for ComponentIdentifiersTable.Record);
    sub_1D98D8938(v69, type metadata accessor for ComponentIdentifiersTable.Record);
    if ((v75 & 1) != 0 || (v74 & 1) != 0 || v73 <= v71)
    {
      v66 = v154;
LABEL_58:
      v31 = v148 + 1;
      v63 = v145 + v137;
      v64 = v142 - 1;
      v65 = v141 + v137;
      if (v148 + 1 == v138)
      {
        v31 = v138;
        v6 = v135;
        v29 = v131;
        v30 = v140;
        goto LABEL_60;
      }

      goto LABEL_46;
    }

    v66 = v154;
    v76 = v155;
    if (!v150)
    {
      break;
    }

    v77 = v151;
    sub_1D98AEF4C(v65, v151);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D98AEF4C(v77, v68);
    v68 += v149;
    v65 += v149;
    v58 = __CFADD__(v76, 1);
    v67 = v76 + 1;
    if (v58)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_1D98DAE90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_71;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v23 = v19 / v18;
  v66 = a1;
  v65 = a4;
  v24 = v21 / v18;
  v61 = v8;
  if (v19 / v18 >= v21 / v18)
  {
    v55 = a1;
    sub_1D98BEAE8(a2, v21 / v18, a4);
    v36 = a4 + v24 * v18;
    v37 = -v18;
    v38 = v36;
    v62 = a4;
    v54 = -v18;
LABEL_42:
    v59 = a2 + v37;
    v53 = v38;
    v63 = a2;
    while (1)
    {
      if (v36 <= a4)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_69;
      }

      if (a2 <= v55)
      {
        break;
      }

      v60 = a3;
      v57 = v38;
      v39 = v36 + v37;
      v40 = v56;
      sub_1D98D8990(v36 + v37, v56, type metadata accessor for ComponentIdentifiersTable.Record);
      v41 = v58;
      sub_1D98D8990(v59, v58, type metadata accessor for ComponentIdentifiersTable.Record);
      v42 = *(v8 + 28);
      if ((*(v40 + v42 + 25) | *(v40 + v42 + 8)))
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v40 + v42);
      }

      v44 = (v41 + v42);
      v45 = *v44;
      v46 = *(v44 + 2);
      v47 = *(v44 + 25);
      sub_1D98D8938(v41, type metadata accessor for ComponentIdentifiersTable.Record);
      sub_1D98D8938(v40, type metadata accessor for ComponentIdentifiersTable.Record);
      if ((v47 & 1) == 0 && (v46 & 1) == 0 && v45 > v43)
      {
        v37 = v54;
        a3 = v60 + v54;
        a4 = v62;
        if (v60 < v63 || a3 >= v63)
        {
          a2 = v59;
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v57;
        }

        else
        {
          v51 = v57;
          v38 = v57;
          v52 = v59;
          a2 = v59;
          v8 = v61;
          if (v60 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v52;
            v38 = v51;
          }
        }

        goto LABEL_42;
      }

      v37 = v54;
      v48 = v60 + v54;
      v49 = v60 < v36 || v48 >= v36;
      a4 = v62;
      if (v49)
      {
        v8 = v61;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v48;
        v36 = v39;
        v38 = v39;
        a2 = v63;
      }

      else
      {
        v38 = v39;
        v20 = v36 == v60;
        a3 = v60 + v54;
        v36 = v39;
        v8 = v61;
        a2 = v63;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v48;
          v36 = v39;
          v38 = v39;
        }
      }
    }

    v66 = a2;
    v64 = v53;
  }

  else
  {
    sub_1D98BEAE8(a1, v19 / v18, a4);
    v57 = a3;
    v58 = a4 + v23 * v18;
    v64 = v58;
    while (a4 < v58 && a2 < a3)
    {
      v63 = a2;
      v26 = v59;
      sub_1D98D8990(a2, v59, type metadata accessor for ComponentIdentifiersTable.Record);
      v62 = a4;
      v27 = v60;
      sub_1D98D8990(a4, v60, type metadata accessor for ComponentIdentifiersTable.Record);
      v28 = *(v8 + 28);
      if ((*(v26 + v28 + 25) | *(v26 + v28 + 8)))
      {
        v29 = 0;
      }

      else
      {
        v29 = *(v26 + v28);
      }

      v30 = (v27 + v28);
      v31 = *v30;
      v32 = *(v30 + 2);
      v33 = *(v30 + 25);
      sub_1D98D8938(v27, type metadata accessor for ComponentIdentifiersTable.Record);
      sub_1D98D8938(v26, type metadata accessor for ComponentIdentifiersTable.Record);
      if ((v33 & 1) != 0 || (v32 & 1) != 0 || v31 <= v29)
      {
        a4 = v62 + v18;
        if (a1 < v62 || a1 >= a4)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v63;
          a3 = v57;
        }

        else
        {
          a2 = v63;
          v8 = v61;
          a3 = v57;
          if (a1 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = a4;
      }

      else
      {
        a2 = v63 + v18;
        if (a1 < v63 || a1 >= a2)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v62;
        }

        else
        {
          v8 = v61;
          a4 = v62;
          if (a1 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a3 = v57;
      }

      a1 += v18;
      v66 = a1;
    }
  }

LABEL_69:
  sub_1D98DB3B8(&v66, &v65, &v64);
}

uint64_t sub_1D98DB3B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D98DB498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48B88, &qword_1D99340A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1D98DB598(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_1D992AE84() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D98DB640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_1D98D968C(a4, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1D98D9518(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_1D98DB728(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3;
  v4 = a2;
  v6 = *(a2 + 16);
  if (v6 < a3 || v6 < a4)
  {
    goto LABEL_10;
  }

  if (a4 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != a4 - a3)
  {
LABEL_12:
    v9 = (2 * a4) | 1;
    v10 = *(sub_1D992AE84() - 8);
    sub_1D98D8408(v4, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5, v9);
    v12 = v11;

    v4 = v12;
  }

  return v4;
}

uint64_t sub_1D98DB7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D58, &unk_1D9934090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return type metadata accessor for ComponentIdentifiersTable.Predicate(0);
}

uint64_t static RemoteRequestDataClassification.read(from:)()
{
  sub_1D98DBA4C();
  result = sub_1D992B964();
  if (!v0)
  {
    v2 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6999BA8], v2);
    return swift_willThrow();
  }

  return result;
}

id sub_1D98DBA14()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) readBOOL];
  *v1 = result;
  return result;
}

unint64_t sub_1D98DBA4C()
{
  result = qword_1ECB48D90;
  if (!qword_1ECB48D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48D90);
  }

  return result;
}

unint64_t sub_1D98DBAA4()
{
  result = qword_1ECB48D98;
  if (!qword_1ECB48D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48D98);
  }

  return result;
}

_BYTE *_s11ProtoFieldsOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D98DBC70()
{
  result = qword_1ECB48DA0;
  if (!qword_1ECB48DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DA0);
  }

  return result;
}

uint64_t sub_1D98DBCCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D98DBD0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D98DBD74(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a6 != a3)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = sub_1D992BF64();
  result = 0;
  if ((v9 & 1) != 0 && a6 == a3)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1D98DBDF4()
{
  sub_1D992C074();
  sub_1D992B6D4();
  return sub_1D992C0C4();
}

uint64_t sub_1D98DBE44()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D98DBDF4();
}

uint64_t sub_1D98DBE54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D992C074();
  sub_1D992B6D4();
  return sub_1D992C0C4();
}

uint64_t sub_1D98DBE9C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1D98DBD74(*a1, *(a1 + 8), v3 | *(a1 + 16), *a2, *(a2 + 8), v4 | *(a2 + 16));
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D98DBEF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D98DBF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D98DBF84()
{
  result = qword_1ED8BD830;
  if (!qword_1ED8BD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorageProtectionClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98DC0B8()
{
  result = qword_1ECB48DA8;
  if (!qword_1ECB48DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DA8);
  }

  return result;
}

uint64_t sub_1D98DC10C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MonotonicTimestamp();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = mach_absolute_time();
  v11 = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v7, &v11);
  v8 = *&v6[*(v3 + 28)];
  result = sub_1D98C7A84(v6);
  *a1 = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for MonotonicInterval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonotonicInterval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_1D98DC214()
{
  sub_1D992AE84();
  if (v0 <= 0x3F)
  {
    sub_1D98DC304(319, &qword_1ECB47A10, MEMORY[0x1E69CE6A0]);
    if (v1 <= 0x3F)
    {
      sub_1D986E35C(319, &qword_1ED8BF0B8, 0x1E69CF568);
      if (v2 <= 0x3F)
      {
        sub_1D98DC304(319, &qword_1ECB48050, MEMORY[0x1EEE78830]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D98DC304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D992BC04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D98DC358(uint64_t a1, uint64_t a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StagedMessage();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1D992B164();
    v8 = v7;
    v9 = v6;
    v10 = sub_1D992BBD4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1D986E35C(0, &unk_1ED8BD630, 0x1E69E58C0);
  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (sub_1D992BBD4())
  {
    v14 = v4[7];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DB0, &qword_1D9934440);
    v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v15 - 8);
    v18 = &v36 - v17;
    v20 = *(v19 + 56);
    sub_1D98D88C8(a1 + v14, &v36 - v17);
    sub_1D98D88C8(a2 + v14, &v18[v20]);
    v21 = sub_1D992AE04();
    if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v18[v20], 1, v21) == 1)
      {
        sub_1D986DEE4(v18, &qword_1ECB48710, &qword_1D9931340);
        return 1;
      }

      goto LABEL_13;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v23 - 8);
    v26 = &v36 - v25;
    sub_1D98D88C8(v18, &v36 - v25);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v18[v20], 1, v21);
    v28 = *(v21 - 8);
    v29 = v28;
    if (EnumTagSinglePayload == 1)
    {
      (*(v28 + 8))(v26, v21);
LABEL_13:
      sub_1D986DEE4(v18, &qword_1ECB48DB0, &qword_1D9934440);
      return 0;
    }

    v30 = *(v28 + 64);
    v31 = MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    v33 = &v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 32))(v33, &v18[v20], v21, v31);
    sub_1D98DC6A8();
    v34 = sub_1D992B5F4();
    v35 = *(v29 + 8);
    v35(v33, v21);
    v35(v26, v21);
    sub_1D986DEE4(v18, &qword_1ECB48710, &qword_1D9931340);
    if (v34)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D98DC6A8()
{
  result = qword_1ECB48DB8;
  if (!qword_1ECB48DB8)
  {
    sub_1D992AE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DB8);
  }

  return result;
}

char *sub_1D98DC6F4()
{
  result = SiriAnalyticsLoggingSubsystem;
  if (SiriAnalyticsLoggingSubsystem)
  {
    result = sub_1D992B604();
    if (v1)
    {
      qword_1ED8BFBB8 = result;
      unk_1ED8BFBC0 = v1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98DC9F8(uint64_t a1, void *a2, id *a3, uint64_t *a4)
{
  v8 = *(*(sub_1D992B2E4() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_2_27();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  sub_1D992B2F4();
  v10 = type metadata accessor for CustomLogger();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  result = sub_1D98DCD48(v4);
  *a4 = v13;
  return result;
}

void sub_1D98DCBEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (qword_1ED8BF528 == -1)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:

  sub_1D992B604();
  if (v5)
  {
    sub_1D98DD300();
    *a3 = sub_1D992BBF4();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1D98DCCAC()
{
  sub_1D98DD300();
  if (qword_1ED8BF528 != -1)
  {
    swift_once();
  }

  result = sub_1D992BBF4();
  qword_1ECB49668 = result;
  return result;
}

uint64_t sub_1D98DCD48(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly) = 0;
  v4 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger_logger;
  v5 = sub_1D992B2E4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  type metadata accessor for InternalOnlyLogger();
  v7 = swift_allocObject();

  sub_1D98DD07C(v8);
  (*(v6 + 8))(a1, v5);
  v9 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly) = v7;

  return v2;
}

uint64_t sub_1D98DCE30()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly;
  if (*(v0 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly);
  }

  else
  {
    v3 = v0;
    type metadata accessor for InternalOnlyLogger();
    v2 = swift_allocObject();

    sub_1D98DD07C(v4);
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D98DCEE4()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger_logger;
  v2 = sub_1D992B2E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomLogger()
{
  result = qword_1ED8BF620;
  if (!qword_1ED8BF620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98DCFE4()
{
  result = sub_1D992B2E4();
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

uint64_t sub_1D98DD07C(uint64_t a1)
{
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  *(v1 + 24) = byte_1ED8BFBD1;
  *(v1 + 16) = a1;
  return v1;
}

void sub_1D98DD0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_28(v5, v6, v7, v8, v9);
    sub_1D98DCEB4(0xD00000000000002CLL, v10, v11, v12, v14, v13);
  }
}

void sub_1D98DD144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_28(v5, v6, v7, v8, v9);
    sub_1D986A454(0xD000000000000037, v10, v11, v12, v14, v13);
  }
}

void sub_1D98DD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_28(v5, v6, v7, v8, v9);
    sub_1D986A454(0xD00000000000004ALL, v10, v11, v12, v14, v13);
  }
}

uint64_t sub_1D98DD1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t))
{
  if (*(v7 + 24) == 1)
  {
    v9 = a5();
    v10 = *(v7 + 16);
    a7(v9);
  }

  return result;
}

uint64_t sub_1D98DD2A4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D98DD300()
{
  result = qword_1ED8BF518;
  if (!qword_1ED8BF518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BF518);
  }

  return result;
}

void *sub_1D98DD344(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DC0, &qword_1D99344B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1D98DD3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98DD3E8, 0, 0);
}

uint64_t sub_1D98DD3E8()
{
  if ([*(v0 + 72) optedInToDataSharing])
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    v1 = *(v0 + 64);
    sub_1D98DCE30();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    sub_1D98DD1DC(0xD00000000000007FLL, 0x80000001D993B610, 0xD000000000000026, 0x80000001D993B690, sub_1D98DDB24, v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    sub_1D98DCE30();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    sub_1D98DD1DC(0xD00000000000007FLL, 0x80000001D993B610, 0xD000000000000026, 0x80000001D993B690, sub_1D98DDA74, v7);

    *(v0 + 40) = &type metadata for InternalPlatformClassifications;
    *(v0 + 48) = sub_1D98DDA7C();
    *(v0 + 56) = 0xA000000000000008;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    v9 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D98DD638, v9, v8);
  }
}

uint64_t sub_1D98DD638()
{
  sub_1D98DD7D4((*(v0 + 80) + 24), v0 + 16, *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D98DD6AC, 0, 0);
}

uint64_t sub_1D98DD6AC()
{
  sub_1D98DDAD0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D98DD70C()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000011, 0x80000001D993B720);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D993B740);
  return 0;
}

uint64_t sub_1D98DD7D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-1] - v11;
  v13 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v22 = &type metadata for DataClassificationTag;
  v23 = &protocol witness table for DataClassificationTag;
  v21[0] = swift_allocObject();
  sub_1D98DDB2C(a2, v21[0] + 16);
  sub_1D98FD694(v12, v21, a3, v14, v15, v16, v17, v18, v20, v21[0], v21[1], v21[2], v22, v23, v24, v25, v26, v27, v28, v29);
  sub_1D987625C(v12);
  sub_1D987625C(v9);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D98DD904()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D993B6C0);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000031, 0x80000001D993B6E0);
  return 0;
}

uint64_t sub_1D98DD9CC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D988AED8;

  return sub_1D98DD3C4(a1, v5, v4);
}

unint64_t sub_1D98DDA7C()
{
  result = qword_1ECB47B80;
  if (!qword_1ECB47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B80);
  }

  return result;
}

id UserHistoryPolicyShim.init(messageStaging:queue:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UserHistoryPolicy();
  v6 = swift_allocObject();
  v7 = a1;
  v8 = a2;
  sub_1D98DE13C(v7, v8);
  *&v3[OBJC_IVAR___SiriAnalyticsUserHistoryPolicy_historyPolicy] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for UserHistoryPolicyShim();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_1D98DDCDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D98D2268();

  return sub_1D988C380(v3);
}

uint64_t sub_1D98DDDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D98DDE00, 0, 0);
}

uint64_t sub_1D98DDE00()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(v0 + 56) = *(Strong + OBJC_IVAR___SiriAnalyticsUserHistoryPolicy_historyPolicy);

    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_1D98DDF0C;

    return sub_1D98DE2DC(v4);
  }

  else
  {
    **(v0 + 40) = 2;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D98DDF0C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v7 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D98DE01C, 0, 0);
}

id UserHistoryPolicyShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserHistoryPolicyShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserHistoryPolicyShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98DE13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  type metadata accessor for UserHistoryDeletionRequestObserver();
  swift_allocObject();
  *(v3 + 120) = sub_1D990A378(a2);
  return v3;
}

uint64_t sub_1D98DE1C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D98DE954;

  return sub_1D98DDDE0(a1, v4, v5, v6);
}

uint64_t sub_1D98DE2F4()
{
  *(v0 + 24) = *(*(v0 + 16) + 120);
  type metadata accessor for UserHistoryDeletionRequestObserver();
  sub_1D98DE8FC();

  v2 = sub_1D992B814();

  return MEMORY[0x1EEE6DFA0](sub_1D98DE398, v2, v1);
}

uint64_t sub_1D98DE398()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[3];
  v2 = sub_1D990A544(&unk_1D99345F8, v0[2]);

  v3 = v0[1];

  return v3(v2 & 1);
}

uint64_t sub_1D98DE41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D98DE4AC;

  return sub_1D98DE590(v1);
}

uint64_t sub_1D98DE4AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D98DE5A8()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ECB47AC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  sub_1D98DCECC(0xD00000000000001FLL, 0x80000001D993B830, 0xD00000000000006BLL, 0x80000001D993B850, 0xD000000000000011, 0x80000001D993B8C0);
  *(v0 + 24) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D98DE694, 0, 0);
}

uint64_t sub_1D98DE694()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D98DE730;

  return sub_1D9901338();
}

uint64_t sub_1D98DE730()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D98DE814()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98DE844()
{
  sub_1D98DE814();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D98DE870()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D98DE4AC;

  return sub_1D98DE41C();
}

unint64_t sub_1D98DE8FC()
{
  result = qword_1ECB47B50;
  if (!qword_1ECB47B50)
  {
    type metadata accessor for UserHistoryDeletionRequestObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B50);
  }

  return result;
}

uint64_t static SearchRequestDataClassification.read(from:)()
{
  sub_1D98DEA98();
  result = sub_1D992B964();
  if (!v0)
  {
    v2 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6999BA8], v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D98DEA98()
{
  result = qword_1ECB47B70;
  if (!qword_1ECB47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B70);
  }

  return result;
}

unint64_t sub_1D98DEAF0()
{
  result = qword_1ECB47B68;
  if (!qword_1ECB47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B68);
  }

  return result;
}

_BYTE *_s14descr1F5516309C11ProtoFieldsOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D98DECBC()
{
  result = qword_1ECB48DD0;
  if (!qword_1ECB48DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DD0);
  }

  return result;
}

uint64_t sub_1D98DED30()
{
  result = type metadata accessor for LogicalClockStart(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LogicalClockEnd(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D98DEE0C()
{
  sub_1D992AE84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SiriAnalyticsLogicalClockEndedReason(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D98DEEC0()
{
  result = sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogicalClockType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98DF028()
{
  result = qword_1ECB48DD8;
  if (!qword_1ECB48DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InternalPlatformClassifications(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D98DF128(uint64_t a1)
{
  result = sub_1D98CEED4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D98DF154()
{
  result = qword_1ECB48DE0;
  if (!qword_1ECB48DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DE0);
  }

  return result;
}

id DataCollectionPolicyClockObserver.__allocating_init(siriConfiguration:metastore:metastoreQueue:)()
{
  OUTLINED_FUNCTION_1_29();
  v1 = objc_allocWithZone(v0);
  return DataCollectionPolicyClockObserver.init(siriConfiguration:metastore:metastoreQueue:)();
}

id DataCollectionPolicyClockObserver.init(siriConfiguration:metastore:metastoreQueue:)()
{
  OUTLINED_FUNCTION_1_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v5 = sub_1D98CE740(v3, v4);
  v6 = &v1[OBJC_IVAR___SiriAnalyticsDataCollectionPolicyClockObserver_dataCollectionPolicy];
  v6[3] = &type metadata for AllDataCollectionPolicies;
  v6[4] = &off_1F551A488;
  *v6 = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DataCollectionPolicyClockObserver();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1D98DF30C()
{
  OUTLINED_FUNCTION_1_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_1D992AE84();
  v10 = OUTLINED_FUNCTION_6(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v9, v15);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v8;
  (*(v12 + 32))(&v17[v16], &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v18 = &v17[(v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v1;
  *(v18 + 1) = v0;

  sub_1D98D2028(0, 0, v6, &unk_1D9934918, v17);

  return sub_1D988C380(v6);
}

uint64_t sub_1D98DF504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D98DF528, 0, 0);
}

uint64_t sub_1D98DF528()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D98B37DC(Strong + OBJC_IVAR___SiriAnalyticsDataCollectionPolicyClockObserver_dataCollectionPolicy, v0 + 16);

    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = *(v5 + 8);
    v13 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1D98DF6D4;
    v9 = *(v0 + 88);

    return v13(v9, v4, v5);
  }

  else
  {
    v11 = *(v0 + 104);
    (*(v0 + 96))();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D98DF6D4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D98DF7D0, 0, 0);
}

uint64_t sub_1D98DF7D0()
{
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 104);
  (*(v0 + 96))(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D98DF83C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D992AE84() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D988AED8;

  return sub_1D98DF504(a1, v7, v8, v9, v1 + v6, v11, v12);
}

id DataCollectionPolicyClockObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataCollectionPolicyClockObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataCollectionPolicyClockObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98DFBD0(uint64_t a1, char a2)
{
  v2 = a1;
  v69 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v63 = a2;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = a1 + 32;
    v7 = *(a1 + 16);
    do
    {
      sub_1D98DDB2C(v6, v67);
      sub_1D98B37DC(v67, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
      if (swift_dynamicCast())
      {
        v8 = v68;
        sub_1D98907D8(v68);
        sub_1D98DDAD0(v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v5 + 16);
          OUTLINED_FUNCTION_1();
          sub_1D98BDB08();
          v5 = v12;
        }

        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_14(v9);
          sub_1D98BDB08();
          v5 = v13;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 8 * v10 + 32) = v8;
      }

      else
      {
        sub_1D98DDAD0(v67);
      }

      v6 += 48;
      --v7;
    }

    while (v7);
    if (*(v5 + 16))
    {
      v14 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D98DDB2C(v4, v67);
        sub_1D98B37DC(v67, v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
        if (swift_dynamicCast() && (v65 & 1) != 0)
        {
          v15 = v68;
          sub_1D98907D8(v68);
          sub_1D98DDAD0(v67);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = *(v14 + 16);
            OUTLINED_FUNCTION_1();
            sub_1D98BDB08();
            v14 = v19;
          }

          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            OUTLINED_FUNCTION_14(v16);
            sub_1D98BDB08();
            v14 = v20;
          }

          *(v14 + 16) = v17 + 1;
          *(v14 + 8 * v17 + 32) = v15;
        }

        else
        {
          sub_1D98DDAD0(v67);
        }

        v4 += 48;
        --v3;
      }

      while (v3);
      v21 = (v5 + 16);
      goto LABEL_25;
    }

    v2 = a1;
  }

  else if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v63 = a2;
    v21 = (MEMORY[0x1E69E7CC0] + 16);
    v5 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (*(v14 + 16))
    {
      if (qword_1ED8BD6E0 != -1)
      {
        swift_once();
      }

      v22 = sub_1D98DCE30();
      if (*(v22 + 24) == 1)
      {

        v24 = sub_1D98E0308(v23);
        v25 = *(v22 + 16);
        sub_1D986A454(v24, v26, 0xD000000000000072, 0x80000001D993B970, 0xD00000000000001DLL, 0x80000001D993B9F0);
      }

      else
      {
      }

      v27 = *v21;
      if (*v21)
      {
        v28 = OUTLINED_FUNCTION_1_30();
        sub_1D98B9CEC(v28, v27, 0);
        v29 = 32;
        v30 = v67[0];
        do
        {
          v31 = *(v5 + v29);
          OUTLINED_FUNCTION_3();
          v32 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1D9933A20;
          *(v33 + 32) = v31;
          OUTLINED_FUNCTION_3();
          v34 = swift_allocObject();
          OUTLINED_FUNCTION_3();
          v35 = swift_allocObject();
          *(v35 + 16) = v14;
          *(v34 + 16) = v35 | 0x4000000000000000;
          *(v33 + 40) = v34 | 0x8000000000000000;
          *(v32 + 16) = v33;

          sub_1D98907D8(v31);
          v67[0] = v30;
          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          if (v37 >= v36 >> 1)
          {
            v38 = OUTLINED_FUNCTION_14(v36);
            sub_1D98B9CEC(v38, v37 + 1, 1);
            v30 = v67[0];
          }

          *(v30 + 16) = v37 + 1;
          *(v30 + 8 * v37 + 32) = v32 | 0x6000000000000000;
          v29 += 8;
          --v27;
        }

        while (v27);

        v5 = v30;
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
    }

    v39 = *(v5 + 16);
    if (v39)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1D98B9D2C();
      v40 = v67[0];
      if (v63)
      {
        v41 = 6;
      }

      else
      {
        v41 = 11;
      }

      v42 = 32;
      do
      {
        v43 = *(v5 + v42);
        sub_1D98907D8(v43);
        v67[0] = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          OUTLINED_FUNCTION_14(v44);
          sub_1D98B9D2C();
          v40 = v67[0];
        }

        *(v40 + 16) = v45 + 1;
        v46 = v40 + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v43;
        v42 += 8;
        --v39;
      }

      while (v39);
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v69 = v40;
    goto LABEL_72;
  }

  if (v3)
  {
    v47 = v2 + 32;
    v48 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D98DDB2C(v47, v67);
      sub_1D98B37DC(v67, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
      if (swift_dynamicCast() && (v65 & 1) == 0)
      {
        v49 = v68;
        sub_1D98907D8(v68);
        sub_1D98DDAD0(v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v48 + 16);
          OUTLINED_FUNCTION_1();
          sub_1D98BDB08();
          v48 = v53;
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          OUTLINED_FUNCTION_14(v50);
          sub_1D98BDB08();
          v48 = v54;
        }

        *(v48 + 16) = v51 + 1;
        *(v48 + 8 * v51 + 32) = v49;
      }

      else
      {
        sub_1D98DDAD0(v67);
      }

      v47 += 48;
      --v3;
    }

    while (v3);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  v55 = *(v48 + 16);
  if (v55)
  {
    OUTLINED_FUNCTION_1_30();
    sub_1D98B9D2C();
    v56 = 32;
    v57 = v67[0];
    do
    {
      v58 = *(v48 + v56);
      sub_1D98907D8(v58);
      v67[0] = v57;
      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_14(v59);
        sub_1D98B9D2C();
        v57 = v67[0];
      }

      *(v57 + 16) = v60 + 1;
      v61 = v57 + 16 * v60;
      *(v61 + 32) = 6;
      *(v61 + 40) = v58;
      v56 += 8;
      --v55;
    }

    while (v55);
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  sub_1D98EBFD0(v57);
  v40 = v69;
LABEL_72:
  if (!*(v40 + 16))
  {

    return 0;
  }

  return v40;
}

unint64_t sub_1D98E0308(uint64_t a1)
{
  sub_1D992BD64();

  v2 = MEMORY[0x1DA739D10](a1, &type metadata for TagPredicate);
  MEMORY[0x1DA739C30](v2);

  return 0xD00000000000002ELL;
}

_BYTE *storeEnumTagSinglePayload for DataCollectionPolicyResolver(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D98E046C(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for RootLogicalClock();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D992BDC4();
  v16 = *(v12 + 32);
  v17 = type metadata accessor for RootLogicalClockBuilder(0);
  __swift_storeEnumTagSinglePayload(&v15[v16], 1, 1, v17);
  v41 = v15;
  *v15 = a2;
  if (a2)
  {
    v18 = sub_1D992B344();
  }

  else
  {
    v18 = sub_1D992B334();
  }

  *(v41 + 1) = v18;
  v40 = v6;
  while (1)
  {
    sub_1D9902194(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      break;
    }

    sub_1D98E3E44(v6, v10);
    v19 = sub_1D992AE84();
    v42 = &v40;
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    v22 = MEMORY[0x1EEE9AC00](v19);
    v23 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(v20 + 16);
    v25 = v24(v23, v10, v19, v22);
    v26 = v7[5];
    v27 = MEMORY[0x1EEE9AC00](v25);
    v24(v23, &v10[v28], v19, v27);
    v29 = *&v10[v7[6]];
    v30 = &v10[v7[8]];
    v31 = v30[16];
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = *v30;
    }

    v33 = *&v10[v7[7]];
    v34 = *&v10[v7[9]];
    v35 = type metadata accessor for LogicalClockRecord();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1D98C5504(v23, v23, v29, v32, v31, v33, 0, v34, v31);

    sub_1D98E3DF4();
    sub_1D992BDA4();
    v38 = *(v43 + 16);
    sub_1D992BDD4();
    v6 = v40;
    sub_1D992BDE4();
    sub_1D992BDB4();
  }

  sub_1D98E3DF4();
  sub_1D98E3DA0(v6, &qword_1ECB48370, &qword_1D9934A50);
  return v43;
}

uint64_t sub_1D98E0810(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E0824()
{
  v1 = *(v0 + 24);
  v2 = sub_1D992AE84();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E08, &qword_1D9934AC8);
  sub_1D98B3748();
  v3 = sub_1D992B5B4();
  v4 = *(v1 + 32);
  *(v0 + 152) = v4;
  v5 = 1 << v4;
  v6 = -1;
  if (1 << v4 < 64)
  {
    v6 = ~(-1 << (1 << v4));
  }

  v7 = v6 & *(v1 + 56);
  v8 = *(v2 - 8);
  *(v0 + 48) = v8;
  *(v0 + 56) = *(v8 + 64);
  v9 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v0 + 80) = v3;
  *(v0 + 64) = v9;

  if (v7)
  {
    v10 = 0;
    v11 = *(v0 + 24);
  }

  else
  {
    v12 = 0;
    v11 = *(v0 + 24);
    do
    {
      v10 = v12 + 1;
      if (v12 + 1 >= (v5 + 63) >> 6)
      {

        v23 = *(v0 + 8);
        OUTLINED_FUNCTION_28_5();

        __asm { BRAA            X2, X16 }
      }

      v7 = *(v11 + 8 * v12++ + 64);
    }

    while (!v7);
  }

  *(v0 + 88) = v7;
  *(v0 + 96) = v10;
  v13 = *(v0 + 40);
  v14 = *(v11 + 48);
  v15 = OUTLINED_FUNCTION_12_11();
  v16(v15);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_25_5(v17);
  v19(v18);
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_7_17(v20);
  OUTLINED_FUNCTION_28_5();

  return sub_1D98E39A8();
}

uint64_t sub_1D98E0A40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 144) = v5;

  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}