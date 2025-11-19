uint64_t sub_266EB1A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[6] = a4;
  v31[7] = a5;
  v31[4] = a1;
  v31[5] = a2;
  v6 = sub_266EB8F68();
  v7 = OUTLINED_FUNCTION_0_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = *(v9 + 16);
  v17(v31 - v15, a3, v6);
  v18 = sub_266EB9178();
  v31[2] = v19;
  v31[3] = v18;
  sub_266EB9168();
  v31[1] = sub_266EB9158();
  v20 = [objc_opt_self() sharedInstance];
  if (qword_281327608 != -1)
  {
    swift_once();
  }

  v21 = qword_281327610;
  v22 = type metadata accessor for ButterflyRequestProcessor();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v33[3] = sub_266EB1DC4();
  v33[4] = &off_28787B068;
  v33[0] = v20;
  v26 = qword_281327650;
  v27 = *MEMORY[0x277D5CF40];
  v28 = sub_266EB9098();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *(v25 + qword_281327660) = 2;
  sub_266EB1E08(v33, v25 + qword_281327658);
  *(v25 + qword_281327648) = v21;
  v17(v14, v16, v6);
  sub_266EB1E08(v34, v32);

  v29 = sub_266EB90A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  (*(v9 + 8))(v16, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v29;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t type metadata accessor for ButterflyRequestProcessor()
{
  result = qword_2813274F0;
  if (!qword_2813274F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266EB1DC4()
{
  result = qword_2813274B0;
  if (!qword_2813274B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813274B0);
  }

  return result;
}

uint64_t sub_266EB1E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_266EB1F20(void *a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_266EB9098();
  v7 = OUTLINED_FUNCTION_0_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  (*(v9 + 104))(v13 - v12, *a3, v6);
  sub_266EB2008(v14, a1, a2);
  return (*(v9 + 8))(v14, v6);
}

uint64_t sub_266EB2008(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_266EB9098();
  v7 = OUTLINED_FUNCTION_0_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  if (qword_2813274C0 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v15 = sub_266EB91B8();
  __swift_project_value_buffer(v15, qword_281327620);
  v16 = a2;
  v17 = sub_266EB9198();
  v18 = sub_266EB9318();

  if (os_log_type_enabled(v17, v18))
  {
    v35 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v6;
    v36 = v33;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 2080;
    v21 = v16;
    v22 = sub_266EB9088();
    v24 = v9;
    v25 = v14;
    v26 = a1;
    v27 = sub_266EB2334(v22, v23, &v36);

    *(v19 + 14) = v27;
    a1 = v26;
    v14 = v25;
    v9 = v24;
    _os_log_impl(&dword_266EB0000, v17, v18, "ButterflyRequestProcessor handling message: %@, requestId: %s", v19, 0x16u);
    sub_266EB2554(v20);
    MEMORY[0x26D5F6FB0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v6 = v34;
    MEMORY[0x26D5F6FB0](v33, -1, -1);
    v28 = v19;
    a3 = v35;
    MEMORY[0x26D5F6FB0](v28, -1, -1);
  }

  (*(v9 + 16))(v14, a1, v6);
  v29 = qword_281327650;
  swift_beginAccess();
  (*(v9 + 40))(a3 + v29, v14, v6);
  swift_endAccess();
  v30 = sub_266EB9088();
  sub_266EB25BC(v30, v31);
}

void OUTLINED_FUNCTION_3()
{

  JUMPOUT(0x26D5F6FB0);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_266EB2334(a1, v9, va);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_266EB2334(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266EB2454(v11, 0, 0, 1, a1, a2);
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
    sub_266EB23F8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_266EB23F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266EB2454(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266EB84DC(a5, a6);
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
    result = sub_266EB93D8();
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

uint64_t sub_266EB2554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC998, &qword_266EB9CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266EB25BC(uint64_t a1, unint64_t a2)
{
  v5 = sub_266EB90B8();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  static ButterflyCallStateManager.isUserOnACall(_:_:completion:)(v5, a1, a2, sub_266EB3504, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_266EB266C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void static ButterflyCallStateManager.isUserOnACall(_:_:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_2813274C0 != -1)
  {
    swift_once();
  }

  v10 = sub_266EB91B8();
  __swift_project_value_buffer(v10, qword_281327620);

  v11 = sub_266EB9198();
  v12 = sub_266EB9318();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_266EB2334(a2, a3, v22);
    _os_log_impl(&dword_266EB0000, v11, v12, "Fetching isUserOnACall status for requestId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D5F6FB0](v14, -1, -1);
    MEMORY[0x26D5F6FB0](v13, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC978, &qword_266EB9C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266EB9C50;
    v16 = *MEMORY[0x277CEEFD0];
    *(inited + 32) = sub_266EB9228();
    *(inited + 40) = v17;
    sub_266EB29C8(inited);
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a5;

    v19 = sub_266EB92F8();
    v20 = sub_266EB9218();
    v22[4] = sub_266EB2F1C;
    v22[5] = v18;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_266EB2B6C;
    v22[3] = &block_descriptor;
    v21 = _Block_copy(v22);

    [a1 fetchContextsForKeys:v19 forRequestID:v20 includesNearbyDevices:0 completion:v21];
    _Block_release(v21);
  }
}

uint64_t sub_266EB2988()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266EB29C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC990, &qword_266EB9CA0);
  result = sub_266EB9388();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_266EB9428();

    sub_266EB9258();
    result = sub_266EB9448();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_266EB9418() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266EB2B6C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_266EB5F3C();
    v2 = sub_266EB9288();
  }

  v4(v2);
}

uint64_t sub_266EB2C24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_BOOL8))
{
  if (!a1)
  {
    goto LABEL_9;
  }

  result = sub_266EB5D84(a1);
  if (!result)
  {
    goto LABEL_9;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5F6BE0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(a1 + 32);
  }

  v10 = sub_266EB60AC(v9);
  if (!v10)
  {
LABEL_9:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = *MEMORY[0x277CEEFD0];
  v13 = sub_266EB9228();
  sub_266EB5CB4(v13, v14, v11, &v24);

  if (!*(&v25 + 1))
  {
LABEL_10:
    sub_266EB2E94(&v24);
    v18 = 0;
    goto LABEL_11;
  }

  sub_266EB6124(&v24, v26);
  sub_266EB23F8(v26, &v24);
  v15 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
  v16 = sub_266EB5D18(&v24);
  v17 = [v16 callState];

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v18 = v17 != 0;
LABEL_11:
  if (qword_2813274C0 != -1)
  {
    swift_once();
  }

  v19 = sub_266EB91B8();
  __swift_project_value_buffer(v19, qword_281327620);

  v20 = sub_266EB9198();
  v21 = sub_266EB9318();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v26[0] = v23;
    *v22 = 67109378;
    *(v22 + 4) = v18;
    *(v22 + 8) = 2080;
    *(v22 + 10) = sub_266EB2334(a2, a3, v26);
    _os_log_impl(&dword_266EB0000, v20, v21, "Retrieved isUserOnACall status: %{BOOL}d for requestId: %s", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D5F6FB0](v23, -1, -1);
    MEMORY[0x26D5F6FB0](v22, -1, -1);
  }

  return a4(v18);
}

uint64_t sub_266EB2E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC988, &qword_266EB9C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266EB2F28(uint64_t a1, uint64_t a2, char a3)
{
  v6._countAndFlagsBits = sub_266EB90C8();
  sub_266EB2F78(v6, a3);
}

void sub_266EB2F78(Swift::String endedFor, char a2)
{
  object = endedFor._object;
  countAndFlagsBits = endedFor._countAndFlagsBits;
  v5 = *(v2 + qword_281327660);
  if (v5 == 2)
  {
    if (qword_2813274C0 != -1)
    {
      swift_once();
    }

    v6 = sub_266EB91B8();
    __swift_project_value_buffer(v6, qword_281327620);

    oslog = sub_266EB9198();
    v7 = sub_266EB9328();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_266EB2334(countAndFlagsBits, object, &v12);
      _os_log_impl(&dword_266EB0000, oslog, v7, "Phone call state unknown at time of request completion requestId=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D5F6FB0](v9, -1, -1);
      MEMORY[0x26D5F6FB0](v8, -1, -1);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v2 + qword_281327648);
    SiriInCallInstrumentationUtil.logInvocationContext(endedFor:isCancelled:)(endedFor, a2 & 1);
  }
}

uint64_t ButterflyRequestProcessor.__deallocating_deinit()
{
  v0 = *ButterflyRequestProcessor.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return MEMORY[0x2821FE8D8]();
}

void sub_266EB317C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_266EB91F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + qword_281327660) = a1;
  if (qword_2813274C0 != -1)
  {
    swift_once();
  }

  v17 = sub_266EB91B8();
  __swift_project_value_buffer(v17, qword_281327620);
  v18 = sub_266EB9198();
  v19 = sub_266EB9318();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v13;
    v21 = v12;
    v22 = v11;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    v26 = v20;
    *v20 = 67109120;
    *(v20 + 4) = a1 & 1;
    _os_log_impl(&dword_266EB0000, v18, v19, "Phone call state retrieved: %{BOOL}d", v20, 8u);
    v27 = v26;
    a3 = v25;
    a4 = v24;
    a2 = v23;
    v11 = v22;
    v12 = v21;
    v13 = v32;
    MEMORY[0x26D5F6FB0](v27, -1, -1);
  }

  if (a1)
  {
    sub_266EB91D8();
    v28 = sub_266EB91E8();
    (*(v13 + 8))(v16, v12);
    v29 = sub_266EB92E8();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a2;
    v30[5] = a3;
    v30[6] = a4;
    v30[7] = v28;

    sub_266EB4704(0, 0, v11, &unk_266EB9B90, v30);
  }
}

uint64_t sub_266EB3440()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t ButterflyRequestProcessor.deinit()
{
  v0 = sub_266EB90D8();
  v1 = qword_281327650;
  v2 = sub_266EB9098();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_281327648);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_281327658));
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{
}

uint64_t sub_266EB35A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266EB35C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266EB3624()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC980, &qword_266EB9C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_266EB3744(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SICCall.init(isMuted:mediaType:status:participantCount:providerType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = BYTE4(a2) & 1;
  *(a6 + 12) = a3;
  *(a6 + 16) = BYTE4(a3) & 1;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  *(a6 + 28) = a5;
  *(a6 + 32) = BYTE4(a5) & 1;
  return result;
}

uint64_t sub_266EB3868(unint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    if (a1 > 20)
    {
      v2 = 6;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 > 10)
    {
      v2 = 5;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 > 5)
    {
      v2 = 4;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 > 2)
    {
      v2 = 3;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 == 2)
    {
      v2 = 2;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 == 1)
    {
      v2 = 1;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v4 = sub_266EB91B8();
      __swift_project_value_buffer(v4, qword_2800ECC50);
      v5 = sub_266EB9198();
      v6 = sub_266EB9328();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = a1;
        _os_log_impl(&dword_266EB0000, v5, v6, "Unknown participantCount=%d", v7, 8u);
        OUTLINED_FUNCTION_3();
      }
    }
  }

  v2 = 0;
  return v2 | ((HIDWORD(a1) & 1) << 32);
}

uint64_t sub_266EB39B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_2();
  v6(v5);
  if (v30)
  {
    sub_266EB35A8(&v29, v31);
    v7 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v8 = *(v7 + 24);
    v9 = OUTLINED_FUNCTION_2();
    v11 = v10(v9);
    if (qword_2800EC838 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_266EB91B8();
    __swift_project_value_buffer(v12, qword_2800ECC50);
    v13 = sub_266EB9198();
    v14 = sub_266EB9318();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134283521;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_266EB0000, v13, v14, "partcipantCount=%{private}ld", v15, 0xCu);
      OUTLINED_FUNCTION_3();
    }

    v16 = v32;
    v17 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v18 = (*(v17 + 8))(v16, v17);
    v19 = sub_266EB3C88(v31);
    v20 = v32;
    v21 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v22 = (*(v21 + 16))(v20, v21);
    result = sub_266EB3F9C(v22);
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v11 <= 0x7FFFFFFF)
    {
      v24 = result;
      v25 = v18 & 1;
      v26 = v32;
      v27 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v28 = (*(v27 + 32))(v26, v27);
      LODWORD(v26) = sub_266EB4164(v28);

      LOBYTE(v29) = 0;
      *a2 = v25;
      *(a2 + 4) = v19;
      *(a2 + 8) = 0;
      *(a2 + 12) = v24;
      *(a2 + 16) = 0;
      *(a2 + 20) = v11;
      *(a2 + 24) = 0;
      *(a2 + 28) = v26;
      *(a2 + 32) = 0;
      return __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }

    __break(1u);
  }

  else
  {
    result = sub_266EB43B4(&v29, &qword_2800EC930, &qword_266EB9AF8);
    *a2 = 2;
    *(a2 + 4) = 0;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    *(a2 + 16) = 0;
    *(a2 + 20) = 0;
    *(a2 + 24) = 0;
    *(a2 + 28) = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_266EB3C88(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = *(v2 + 48);
  v4 = OUTLINED_FUNCTION_2();
  v5(v4);
  if (!v33)
  {
    sub_266EB43B4(&v32, &qword_2800EC938, &qword_266EB9B00);
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = *(v20 + 32);
    v22 = OUTLINED_FUNCTION_2();
    v24 = v23(v22);
    LODWORD(v20) = [v24 supportsAudioAndVideo];
    v25 = [v24 supportsAudioOnly];
    v26 = v25;
    if (!v20)
    {

      return v26;
    }

    if (v25)
    {
      v27 = a1[3];
      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      v29 = (*(v28 + 40))(v27, v28);

      if (v29)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 2;
  }

  sub_266EB35A8(&v32, v35);
  v6 = v36;
  v7 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v8 = (*(v7 + 8))(v6, v7);
  if (v8 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    return 2;
  }

  if (v8 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    return 1;
  }

  else
  {
    if (v8)
    {
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v9 = sub_266EB91B8();
      __swift_project_value_buffer(v9, qword_2800ECC50);
      sub_266EB1E08(v35, &v32);
      v10 = sub_266EB9198();
      v11 = sub_266EB9328();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136315138;
        v14 = v33;
        v15 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, v33);
        (*(v15 + 8))(v14, v15);
        type metadata accessor for TUConversationAVMode(0);
        v16 = sub_266EB9238();
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1Tm(&v32);
        v19 = sub_266EB2334(v16, v18, &v31);

        *(v12 + 4) = v19;
        _os_log_impl(&dword_266EB0000, v10, v11, "Unknown TUConversationAVMode encountered avMode=%s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_3();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v32);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    return 0;
  }
}

uint64_t sub_266EB3F9C(uint64_t a1)
{
  v1 = a1;
  switch(a1)
  {
    case 0:
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v2 = sub_266EB91B8();
      __swift_project_value_buffer(v2, qword_2800ECC50);
      v3 = sub_266EB9198();
      v4 = sub_266EB9328();
      if (!os_log_type_enabled(v3, v4))
      {

        goto LABEL_16;
      }

      v1 = 2;
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266EB0000, v3, v4, "Encountered callStatus=idle mapping to disconnected", v5, 2u);
      OUTLINED_FUNCTION_3();

      break;
    case 1:
      return v1;
    case 2:
      v1 = 5;
      break;
    case 3:
      v1 = 4;
      break;
    case 4:
      v1 = 3;
      break;
    case 5:
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v6 = sub_266EB91B8();
      __swift_project_value_buffer(v6, qword_2800ECC50);
      v7 = sub_266EB9198();
      v8 = sub_266EB9318();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266EB0000, v7, v8, "Encountered callStatus=disconnecting mapping to connected", v9, 2u);
        OUTLINED_FUNCTION_3();
      }

      v1 = 1;
      break;
    case 6:
LABEL_16:
      v1 = 2;
      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

uint64_t sub_266EB4164(void *a1)
{
  if (![a1 isSystemProvider])
  {
    return 3;
  }

  if ([a1 isFaceTimeProvider])
  {
    return 2;
  }

  return [a1 isTelephonyProvider];
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266EB4278(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[33])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t sub_266EB42D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
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

uint64_t sub_266EB43B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266EB4440(uint64_t a1, unsigned int *a2)
{
  v4 = sub_266EB9098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *a2, v4);
  v9 = qword_281327650;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v9, v8, v4);
  swift_endAccess();
  v10 = sub_266EB90C8();
  sub_266EB25BC(v10, v11);
}

uint64_t sub_266EB4564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_266EB4588, 0, 0);
}

uint64_t sub_266EB4588()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 48) = qword_281327658;
  sub_266EB92C8();
  *(v0 + 56) = sub_266EB92B8();
  v2 = sub_266EB9298();

  return MEMORY[0x2822009F8](sub_266EB4624, v2, v1);
}

uint64_t sub_266EB4624()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  sub_266EB39B4((v3 + v2), (v0 + 8));

  return MEMORY[0x2822009F8](sub_266EB4698, 0, 0);
}

uint64_t sub_266EB4698()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*(v0 + 16) + qword_281327648);
  SiriInCallInstrumentationUtil.logInvocationContext(occurringFor:at:callMetadata:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + 64));
  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_266EB4704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_266EB4F38(a3, v26 - v11);
  v13 = sub_266EB92E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_266EB4FD0(v12);
  }

  else
  {
    sub_266EB92D8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_266EB9298();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_266EB9248() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_266EB4FD0(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_266EB4FD0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_266EB4A38()
{
  v1 = qword_281327650;
  v2 = sub_266EB9098();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_281327648);

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_281327658));
}

uint64_t sub_266EB4AA8()
{
  result = sub_266EB9098();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_266EB4B80(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266EB4C78;

  return v7(a1);
}

uint64_t sub_266EB4C78()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_266EB4D88(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_0(v9);
  *v10 = v11;
  v10[1] = sub_266EB4E54;

  return sub_266EB4564(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_266EB4E54()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_266EB4F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266EB4FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266EB5038()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_0(v4);

  return v7(v6);
}

uint64_t sub_266EB50D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_0(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id sub_266EB51FC@<X0>(void *a1@<X8>)
{
  result = [v1 frontmostAudioOrVideoCall];
  v4 = result;
  if (result)
  {
    result = sub_266EB57AC(0, &qword_2800EC970, 0x277D6EDE0);
    v5 = &off_28787B078;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

char *sub_266EB5294()
{
  v1 = v0;
  if ([v0 isConversation])
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 activeConversationForCall_];

    if (v3)
    {
      v4 = [v3 activeRemoteParticipants];
      sub_266EB57AC(0, &qword_2800EC960, 0x277D6EEA8);
      sub_266EB575C(&qword_2800EC968, &qword_2800EC960, 0x277D6EEA8);
      v5 = sub_266EB9308();

      v1 = sub_266EB54F0(v5);

      result = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        return result;
      }

      __break(1u);
    }
  }

  if (qword_2800EC838 != -1)
  {
    swift_once();
  }

  v7 = sub_266EB91B8();
  __swift_project_value_buffer(v7, qword_2800ECC50);
  v8 = sub_266EB9198();
  v9 = sub_266EB9328();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_266EB0000, v8, v9, "Call not backed by conversation.  Using alternate partcipantCount method.", v10, 2u);
    MEMORY[0x26D5F6FB0](v10, -1, -1);
  }

  v11 = [v1 remoteParticipantHandles];
  sub_266EB57AC(0, &qword_2800EC950, 0x277D6EEE8);
  sub_266EB575C(&qword_2800EC958, &qword_2800EC950, 0x277D6EEE8);
  v12 = sub_266EB9308();

  v13 = sub_266EB54F0(v12);

  result = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266EB54F0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return MEMORY[0x2821FCF20](a1);
  }

  return MEMORY[0x2821FCF20](a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_266EB5510@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 activeConversationForCall_];

  if (v4)
  {
    result = sub_266EB57AC(0, &qword_2800EC948, 0x277D6EE60);
    v6 = &off_28787B0B0;
  }

  else
  {
    result = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

id sub_266EB5680()
{
  v1 = [v0 provider];

  return v1;
}

uint64_t sub_266EB575C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_266EB57AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266EB57AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_266EB57EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_266EB8F48();
  v6 = [v4 derivedIdentifierForComponentName:a1 fromSourceIdentifier:v5];

  if (v6)
  {
    sub_266EB8F58();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_266EB8F68();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t static ButterflyCallStateManager.isUserOnACall(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266EB58CC, 0, 0);
}

uint64_t sub_266EB58CC()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_266EB59D4;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 56, 0, 0, 0xD000000000000013, 0x8000000266EBAF20, sub_266EB5DA8, v2, v5);
}

uint64_t sub_266EB59D4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_266EB5AEC, 0, 0);
}

uint64_t sub_266EB5B04(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC980, &qword_266EB9C90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  static ButterflyCallStateManager.isUserOnACall(_:_:completion:)(a2, a3, a4, sub_266EB5EC0, v14);
}

double sub_266EB5CB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266EB5F80(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_266EB23F8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_266EB5D18(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_266EB5D84(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FCF20](a1);
}

uint64_t getEnumTagSinglePayload for ButterflyCallStateManager(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ButterflyCallStateManager(_BYTE *result, int a2, int a3)
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

uint64_t sub_266EB5EC0()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC980, &qword_266EB9C90) - 8) + 80);

  return sub_266EB5C68();
}

unint64_t sub_266EB5F3C()
{
  result = qword_2813274A8;
  if (!qword_2813274A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813274A8);
  }

  return result;
}

unint64_t sub_266EB5F80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_266EB9428();
  sub_266EB9258();
  v6 = sub_266EB9448();

  return sub_266EB5FF8(a1, a2, v6);
}

unint64_t sub_266EB5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266EB9418() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266EB60AC(void *a1)
{
  v2 = [a1 serializedContextByKey];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266EB9208();

  return v3;
}

_OWORD *sub_266EB6124(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t ButterflyBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return ButterflyBridge.init(_:_:_:_:_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t ButterflyBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v8 = sub_266EB91B8();
  v9 = OUTLINED_FUNCTION_0_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v31 = sub_266EB9188();
  v17 = OUTLINED_FUNCTION_0_1(v31);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  sub_266EB6420();
  sub_266EB9138();
  v32 = a3;
  sub_266EB1E08(a3, v34);
  sub_266EB1E08(a6, v33);
  v25 = qword_2813274C0;
  swift_unknownObjectRetain();
  v26 = a5;
  if (v25 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v27 = __swift_project_value_buffer(v8, qword_281327620);
  (*(v11 + 16))(v16, v27, v8);
  v28 = sub_266EB90F8();

  sub_266EB6474();
  sub_266EB9118();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  (*(v19 + 8))(v24, v31);
  return v28;
}

unint64_t sub_266EB6420()
{
  result = qword_281327500;
  if (!qword_281327500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327500);
  }

  return result;
}

uint64_t sub_266EB6474()
{
  sub_266EB9038();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9028();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FB8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FC8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FA8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9078();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9058();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9018();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9008();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FF8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8F88();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8F98();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FE8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9048();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9068();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FD8();
  OUTLINED_FUNCTION_1_1();

  return sub_266EB90E8();
}

uint64_t ButterflyBridge.__deallocating_deinit()
{
  v0 = _s10SiriInCall15ButterflyBridgeCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for ButterflyBridge()
{
  result = qword_281327540;
  if (!qword_281327540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266EB6C24()
{
  sub_266EB6D0C();
  result = sub_266EB9368();
  qword_281327668 = result;
  return result;
}

id sub_266EB6C90()
{
  if (qword_281327510 != -1)
  {
    swift_once();
  }

  v1 = qword_281327668;

  return v1;
}

unint64_t sub_266EB6D0C()
{
  result = qword_2813274A0;
  if (!qword_2813274A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813274A0);
  }

  return result;
}

uint64_t sub_266EB6D50()
{
  v0 = sub_266EB91B8();
  __swift_allocate_value_buffer(v0, qword_2800ECC50);
  __swift_project_value_buffer(v0, qword_2800ECC50);
  return sub_266EB91A8();
}

uint64_t sub_266EB6DCC()
{
  v0 = sub_266EB91B8();
  __swift_allocate_value_buffer(v0, qword_281327620);
  __swift_project_value_buffer(v0, qword_281327620);
  if (qword_281327510 != -1)
  {
    swift_once();
  }

  v1 = qword_281327668;
  return sub_266EB91C8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void SiriInCallInstrumentationUtil.logInvocationContext(occurringFor:at:callMetadata:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *a4;
  v61 = *(a4 + 3);
  v62 = *(a4 + 1);
  v64 = a4[16];
  v65 = a4[8];
  v8 = *(a4 + 5);
  v63 = *(a4 + 7);
  v66 = a4[32];
  v67 = a4[24];
  if (qword_2800EC838 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_266EB91B8();
  __swift_project_value_buffer(v9, qword_2800ECC50);

  v10 = sub_266EB9198();
  v11 = sub_266EB9318();

  v60 = v7;
  if (os_log_type_enabled(v10, v11))
  {
    v56 = v8;
    v12 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v12 = 136316418;
    v13 = a1;
    *(v12 + 4) = sub_266EB2334(a1, a2, &v69);
    *(v12 + 12) = 2080;
    v14 = 1702195828;
    if ((v7 & 1) == 0)
    {
      v14 = 0x65736C6166;
    }

    v15 = 0xE500000000000000;
    if (v7)
    {
      v15 = 0xE400000000000000;
    }

    if (v7 == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    if (v7 == 2)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = v15;
    }

    v18 = sub_266EB2334(v16, v17, &v69);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    if (v64)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_266EB9348();
    }

    OUTLINED_FUNCTION_3_2(v26, v19, v20, v21, v22, v23, v24, v25, v56);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 24) = v18;
    *(v12 + 32) = 2080;
    a1 = v13;
    if (v65)
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_266EB9338();
    }

    v8 = v57;
    OUTLINED_FUNCTION_3_2(v34, v27, v28, v29, v30, v31, v32, v33, v57);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 34) = v18;
    *(v12 + 42) = 2080;
    if ((sub_266EB3868(v8 | (v67 << 32)) & 0x100000000) != 0)
    {
      v42 = 0;
    }

    else
    {
      v42 = SICSchemaSICParticipantCountBucket.debugDescription.getter();
    }

    OUTLINED_FUNCTION_3_2(v42, v35, v36, v37, v38, v39, v40, v41, v58);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 44) = v18;
    *(v12 + 52) = 2080;
    if (v66)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_266EB9358();
    }

    OUTLINED_FUNCTION_3_2(v50, v43, v44, v45, v46, v47, v48, v49, v59);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 54) = v18;
    _os_log_impl(&dword_266EB0000, v10, v11, "Emitting invocation context started instrumentation. requestId=%s isMuted=%s callStatus=%s mediaType=%s participants=%s providerType=%s", v12, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  else
  {
  }

  v51 = [objc_allocWithZone(MEMORY[0x277D5A678]) init];
  if (v51)
  {
    v52 = v51;
    v53 = [objc_allocWithZone(MEMORY[0x277D5A688]) init];
    if (v53)
    {
      v68 = v53;
      if ((v64 & 1) == 0)
      {
        [v53 setCallState_];
      }

      if ((v65 & 1) == 0)
      {
        [v68 setCallType_];
      }

      if ((v66 & 1) == 0)
      {
        [v68 setCallAppType_];
      }

      v70 = v67;
      v54 = sub_266EB3868(v8 | (v67 << 32));
      if ((v54 & 0x100000000) == 0)
      {
        [v68 setParticipantCountBucket_];
      }

      if (v60 != 2)
      {
        [v68 setIsMuted_];
      }

      [v52 setStartedOrChanged_];
      sub_266EB7C4C(a1, a2, a3);
      sub_266EB771C(v52, a1, a2, a3);

      v55 = v68;
    }

    else
    {
      v55 = v52;
    }
  }
}

Swift::Void __swiftcall SiriInCallInstrumentationUtil.logInvocationContext(endedFor:isCancelled:)(Swift::String endedFor, Swift::Bool isCancelled)
{
  object = endedFor._object;
  countAndFlagsBits = endedFor._countAndFlagsBits;
  v4 = sub_266EB91F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800EC838 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_266EB91B8();
  __swift_project_value_buffer(v9, qword_2800ECC50);

  v10 = sub_266EB9198();
  v11 = sub_266EB9318();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_266EB2334(countAndFlagsBits, object, &v24);
    *(v12 + 12) = 1024;
    *(v12 + 14) = isCancelled;
    _os_log_impl(&dword_266EB0000, v10, v11, "Emitting invocation context ended instrumentation. requestId=%s isCancelled=%{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D5A678]) init];
  if (v14)
  {
    v23 = v14;
    if (isCancelled)
    {
      v15 = [objc_allocWithZone(MEMORY[0x277D5A670]) init];
      if (v15)
      {
        v16 = v15;
        v17 = &selRef_setCancelled_;
LABEL_11:
        [v16 setExists_];
        [v23 *v17];

        sub_266EB91D8();
        v19 = sub_266EB91E8();
        (*(v5 + 8))(v8, v4);
        sub_266EB771C(v23, countAndFlagsBits, object, v19);

        return;
      }
    }

    else
    {
      v18 = [objc_allocWithZone(MEMORY[0x277D5A680]) init];
      if (v18)
      {
        v16 = v18;
        v17 = &selRef_setEnded_;
        goto LABEL_11;
      }
    }

    v20 = v23;
  }
}

uint64_t sub_266EB75D4()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedStream];
  v2 = [v0 sharedAnalytics];
  v3 = [v2 defaultMessageStream];

  type metadata accessor for SiriInCallInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  qword_281327610 = result;
  return result;
}

uint64_t static SiriInCallInstrumentationUtil.sharedInstance.getter()
{
  if (qword_281327608 != -1)
  {
    swift_once();
  }
}

uint64_t SiriInCallInstrumentationUtil.__allocating_init(_:_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriInCallInstrumentationUtil.init(_:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_266EB771C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A8, &unk_266EB9DB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_266EB8F68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  sub_266EB8F38();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_266EB88DC(v13);
    if (qword_2800EC838 != -1)
    {
      swift_once();
    }

    v25 = sub_266EB91B8();
    __swift_project_value_buffer(v25, qword_2800ECC50);

    v26 = sub_266EB9198();
    v27 = sub_266EB9328();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_266EB2334(a2, a3, &v42);
      _os_log_impl(&dword_266EB0000, v26, v27, "RequestId=%s isn't in the right format of a uuid string", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x26D5F6FB0](v29, -1, -1);
      MEMORY[0x26D5F6FB0](v28, -1, -1);
    }
  }

  else
  {
    v39 = a4;
    v30 = *(v15 + 32);
    v30(v24, v13, v14);
    v31 = [objc_allocWithZone(MEMORY[0x277D5A660]) init];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x277D5A668]) init];
      if (v33)
      {
        v38 = v33;
        sub_266EB57EC(29, v11);
        if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
        {
          (*(v15 + 8))(v24, v14);

          sub_266EB88DC(v11);
        }

        else
        {
          v30(v22, v11, v14);
          sub_266EB8944();
          (*(v15 + 16))(v19, v22, v14);
          v34 = sub_266EB7BB0(v19);
          v35 = v38;
          [v38 setSicId_];

          [v32 setEventMetadata_];
          [v32 setSiriInCallInvocationContext_];
          [*(v41 + 16) emitMessage:v32 timestamp:v39];

          v36 = *(v15 + 8);
          v36(v22, v14);
          v36(v24, v14);
        }
      }

      else
      {
        (*(v15 + 8))(v24, v14);
      }
    }

    else
    {
      (*(v15 + 8))(v24, v14);
    }
  }
}

id sub_266EB7BB0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266EB8F48();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_266EB8F68();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_266EB7C4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A8, &unk_266EB9DB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  v13 = sub_266EB8F68();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v71 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v71 - v22;
  sub_266EB8F38();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_266EB88DC(v12);
    if (qword_2800EC838 != -1)
    {
      swift_once();
    }

    v24 = sub_266EB91B8();
    __swift_project_value_buffer(v24, qword_2800ECC50);

    v25 = sub_266EB9198();
    v26 = sub_266EB9328();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v82 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_266EB2334(a1, a2, &v82);
      _os_log_impl(&dword_266EB0000, v25, v26, "RequestId=%s isn't in the right format of a uuid string", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D5F6FB0](v28, -1, -1);
      MEMORY[0x26D5F6FB0](v27, -1, -1);
    }

    return;
  }

  v79 = a3;
  v80 = v21;
  v29 = v14[4];
  v29(v23, v12, v13);
  sub_266EB57EC(29, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) != 1)
  {
    v36 = v80;
    v29(v80, v10, v13);
    sub_266EB8944();
    v78 = v14;
    v37 = v14[2];
    v37(v18, v36, v13);
    v38 = sub_266EB7BB0(v18);
    v37(v18, v23, v13);
    v39 = sub_266EB7BB0(v18);
    v40 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
    if (v40)
    {
      v41 = v40;
      v42 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v42)
      {
        v43 = v42;
        v44 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
        if (v44)
        {
          v45 = v44;
          v76 = v38;
          [v43 setUuid_];
          [v43 setComponent_];
          [v41 setSource_];
          v77 = v39;
          [v45 setUuid_];
          [v45 setComponent_];
          [v41 setTarget_];
          if (qword_2800EC838 != -1)
          {
            swift_once();
          }

          v46 = sub_266EB91B8();
          __swift_project_value_buffer(v46, qword_2800ECC50);
          v47 = v41;
          v48 = sub_266EB9198();
          v49 = sub_266EB9328();

          v50 = os_log_type_enabled(v48, v49);
          v51 = v78;
          v52 = v79;
          if (v50)
          {
            v53 = swift_slowAlloc();
            v73 = v53;
            v75 = swift_slowAlloc();
            v82 = v75;
            *v53 = 136315138;
            v54 = v47;
            v74 = v49;
            v55 = v54;
            v56 = [v54 description];
            v72 = v48;
            v57 = v56;
            v71 = sub_266EB9228();
            v58 = v47;
            v60 = v59;

            v61 = sub_266EB2334(v71, v60, &v82);
            v47 = v58;
            v52 = v79;

            v63 = v72;
            v62 = v73;
            *(v73 + 1) = v61;
            v64 = v62;
            _os_log_impl(&dword_266EB0000, v63, v74, "Emitting deprecated request link: %s", v62, 0xCu);
            v65 = v75;
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            MEMORY[0x26D5F6FB0](v65, -1, -1);
            MEMORY[0x26D5F6FB0](v64, -1, -1);
          }

          else
          {
          }

          [*(v81 + 16) emitMessage:v47 timestamp:v52];

LABEL_30:
          v70 = v51[1];
          v70(v80, v13);
          v70(v23, v13);
          return;
        }
      }

      else
      {
        v43 = v41;
      }
    }

    if (qword_2800EC838 != -1)
    {
      swift_once();
    }

    v66 = sub_266EB91B8();
    __swift_project_value_buffer(v66, qword_2800ECC50);
    v67 = sub_266EB9198();
    v68 = sub_266EB9328();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_266EB0000, v67, v68, "Failed to create RequestLink event for SiriInCall", v69, 2u);
      MEMORY[0x26D5F6FB0](v69, -1, -1);
    }

    v51 = v78;
    goto LABEL_30;
  }

  v30 = v14;
  sub_266EB88DC(v10);
  if (qword_2800EC838 != -1)
  {
    swift_once();
  }

  v31 = sub_266EB91B8();
  __swift_project_value_buffer(v31, qword_2800ECC50);

  v32 = sub_266EB9198();
  v33 = sub_266EB9328();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v82 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_266EB2334(a1, a2, &v82);
    _os_log_impl(&dword_266EB0000, v32, v33, "Unable to derive SIC component ID from RequestId=%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x26D5F6FB0](v35, -1, -1);
    MEMORY[0x26D5F6FB0](v34, -1, -1);
  }

  (v30[1])(v23, v13);
}

uint64_t SiriInCallInstrumentationUtil.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SiriInCallInstrumentationUtil.__deallocating_deinit()
{
  SiriInCallInstrumentationUtil.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266EB84DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_266EB8528(a1, a2);
  sub_266EB8640(&unk_28787ADB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266EB8528(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_266EB9278())
  {
    result = sub_266EB8724(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266EB9398();
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
          result = sub_266EB93D8();
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

uint64_t sub_266EB8640(uint64_t result)
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

    result = sub_266EB8794(result, v8, 1, v3);
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

void *sub_266EB8724(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A0, &qword_266EB9DA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_266EB8794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A0, &qword_266EB9DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_266EB88DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A8, &unk_266EB9DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266EB8944()
{
  result = qword_2800EC9B0;
  if (!qword_2800EC9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EC9B0);
  }

  return result;
}

const char *SiriInCallFeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "blinded_sphinx";
  }

  else
  {
    return "blushing_phantom";
  }
}

uint64_t SiriInCallFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for SiriInCallFeatureFlag;
  v4[4] = sub_266EB8A24();
  LOBYTE(v4[0]) = v1;
  v2 = sub_266EB8F78();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

unint64_t sub_266EB8A24()
{
  result = qword_281327618;
  if (!qword_281327618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327618);
  }

  return result;
}

uint64_t SiriInCallFeatureFlag.description.getter()
{
  v1 = *v0;
  v10[1] = 0xE000000000000000;
  sub_266EB93A8();
  v2 = sub_266EB93B8();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  MEMORY[0x26D5F6A80](92, 0xE100000000000000);
  v5 = sub_266EB93B8();
  MEMORY[0x26D5F6A80](v5);

  MEMORY[0x26D5F6A80](0x64656C62616E6520, 0xE90000000000003DLL);
  v10[3] = &type metadata for SiriInCallFeatureFlag;
  v10[4] = sub_266EB8A24();
  v10[0] = v1;
  v6 = sub_266EB8F78();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (v6)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D5F6A80](v7, v8);

  return v11;
}

uint64_t SiriInCallFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_266EB9428();
  MEMORY[0x26D5F6C50](v1);
  return sub_266EB9448();
}

uint64_t sub_266EB8C64()
{
  v1 = *v0;
  sub_266EB9428();
  MEMORY[0x26D5F6C50](v1);
  return sub_266EB9448();
}

unint64_t sub_266EB8CAC()
{
  result = qword_2800EC9C0;
  if (!qword_2800EC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EC9C0);
  }

  return result;
}

unint64_t sub_266EB8D34(uint64_t a1)
{
  result = sub_266EB8D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266EB8D5C()
{
  result = qword_2800EC9C8;
  if (!qword_2800EC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EC9C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriInCallFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriInCallFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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